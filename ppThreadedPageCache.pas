{ RRRRRR                  ReportBuilder Class Library                  BBBBB
  RR   RR                                                              BB   BB
  RRRRRR                 Digital Metaphors Corporation                 BB BB
  RR  RR                                                               BB   BB
  RR   RR                   Copyright (c) 1996-2010                    BBBBB   }

unit ppThreadedPageCache;

interface

{$I ppIfDef.pas}

{.$DEFINE ppCodeSite}

uses
  {$IFDEF ppCodeSite}CodeSiteLogging,{$ENDIF}
  Windows,
  SysUtils,
  Classes,
  SyncObjs,
  Forms,
  ExtCtrls,

    // GO GO GO
  Dialogs,
    // GO GO GO

  ppTypes,
  ppUtils,
  ppDevice,
  ppProd,

  ppPageCache,
  ppPageCacheFile;

type

  TppPageRequestThread = class;


  {TppThreadedPageCache

    Represents a page cache that can generate pages in a background thread. Used
    by TppViewer to implement page scrolling.

    The PageIncrement property specifies the number pages generated each time
    GeneratePages is called. For example, generate the first 100 pages, then
    the next 100 pages, etc until the last page is received.

    Call GeneratePages(myReport) to generate a report in a background thread. Pages
    are cached to a temp file.

    Use the Pages[] array property or the GetPage method to access cached page objects.

    The OnPageReceive event fires during page generation, as each page is received

    The OnComplete event first when threaded page generation completes

    The LastPageReceived property indicates whether all pages have been generated.

  }
  TppThreadedPageCache = class
  private
    FBusy: Boolean;
    FLastPageReceived: Boolean;
    FLock: TCriticalSection;
    FOnGenerateComplete: TNotifyEvent;
    FOnGenerateStart: TNotifyEvent;
    FOnGenerateCancel: TNotifyEvent;
    FOnPageReceive: TppPageEvent;
    FPageCache: TppPageCacheFile;
    FPageRequestThread: TppPageRequestThread;
    FExceptionTimer: TTimer;
    FExceptObject: Exception;
    procedure CreatePageRequestThread;
    function GetPageCount: Integer;

    procedure ehExceptionTimer(Sender: TObject);
    procedure ehPageRequestThread_ReceivePage(Sender, aPage: TObject);
    procedure ehPageRequestThread_GenerateStart(Sender: TObject);
    procedure ehPageRequestThread_GenerateComplete(Sender: TObject);
    procedure ehPageRequestThread_GenerateCancel(Sender: TObject);

  protected
    procedure SetFinalPagesOnly(aValue: Boolean);
    function  GetFinalPagesOnly: Boolean;

  public
    constructor Create; virtual;
    destructor Destroy; override;

    procedure Cancel;
    procedure Clear;
    procedure ClearFromPageNo(aPageNo: Integer);
    procedure GeneratePages(aReport: TppProducer); overload;
    procedure GeneratePages(aReport: TppProducer; aPageIncrement: Integer); overload;
    procedure GeneratePages(aReport: TppProducer; aPageIncrement, aDrawCommandClickIndex: Integer; aExpansionKey: string); overload;

    function GetPage(aPageNo: Integer; var aPage: TppPage): Boolean;

    property Busy: Boolean read FBusy;
    property LastPageReceived: Boolean read FLastPageReceived write FLastPageReceived;
    property PageCount: Integer read GetPageCount;
    property OnGenerateStart: TNotifyEvent read FOnGenerateStart write FOnGenerateStart;
    property OnGenerateComplete: TNotifyEvent read FOnGenerateComplete write FOnGenerateComplete;
    property OnGenerateCancel: TNotifyEvent read FOnGenerateCancel write FOnGenerateCancel;
    property OnPageReceive: TppPageEvent read FOnPageReceive write FOnPageReceive;
    property FinalPagesOnly: Boolean read GetFinalPagesOnly write SetFinalPagesOnly;

  end;


  {TppPageRequestThread}
  TppPageRequestThread = class(TThread)
  private
    FCancel: Boolean;
    FCancelEvent: TEvent;
    FDevice: TppDevice;
    FErrorMessage: String;
    FExceptionObject: Exception;
    FFinished: Boolean;
    FFirstRequest: Boolean;
    FOnPageReceive: TppPageEvent;
    FOnGenerateStart: TNotifyEvent;
    FOnGenerateComplete: TNotifyEvent;
    FOnGenerateCancel: TNotifyEvent;
    FPage: TObject;
    FPendingRequest: Boolean;
    FReport: TppProducer;
    FRequestEvent: TEvent;

    procedure ehDevice_PageReceive(Sender, aPage: TObject);
    procedure ehDevice_StartJob(Sender: TObject);
    procedure ehDevice_CancelJob(Sender: TObject);
    function GetPageRequest: TppPageRequest;

  protected
    procedure DoOnGenerateStart;
    procedure DoOnGenerateComplete;
    procedure DoOnGenerateCancel;
    procedure ehSynchronizedPageReceive;
    procedure Execute; override;
    procedure ExecuteReport;

  public
    constructor Create; virtual;
    destructor Destroy; override;

    procedure Cancel;
    procedure CancelAndTerminate;
    procedure GeneratePages(aReport: TppProducer);

    property ErrorMessage: String read FErrorMessage;
    property ExceptionObject: Exception read FExceptionObject;
    property PageRequest: TppPageRequest read GetPageRequest;
    property OnPageReceive: TppPageEvent read FOnPageReceive write FOnPageReceive;
    property OnGenerateStart: TNotifyEvent read FOnGenerateStart write FOnGenerateStart;
    property OnGenerateComplete: TNotifyEvent read FOnGenerateComplete write FOnGenerateComplete;
    property OnGenerateCancel: TNotifyEvent read FOnGenerateCancel write FOnGenerateCancel;

  end;


  {TppThreadedPageCacheDevice

    Use to generate report pages in a separate thread.

    Must assign the Report property.

    Set SinglePageMode to true, to work like normal TppDevice.


    Initially this device requests no pages (psNone). In the EndJob event,
    a timer is set, in the timer event, page generation is initiated.


    }
  TppThreadedPageCacheDevice = class(TppDevice)
  private
    FReport: TppProducer;
    FThreadedPageCache: TppThreadedPageCache;
    FThreadedRequestTimeer: TTimer;
    FSinglePageMode: Boolean;

    procedure ehThreadedRequestTimeer_Event(Sender: TObject);
    procedure SetSinglePageMode(const Value: Boolean);

  protected
    procedure ehPageCache_Complete(Sender: TObject);
    procedure ehPageCache_PageReceive(Sender, aPage: TObject);

    property PageCache: TppThreadedPageCache read FThreadedPageCache;
    property SinglePageMode: Boolean read FSinglePageMode write SetSinglePageMode;

  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;

    procedure EndJob; override;
    procedure ReceivePage(aPage: TppPage); override;

    property Report: TppProducer read FReport write FReport;

  end;


implementation

uses
  ActiveX;


constructor TppThreadedPageCache.Create;
begin

  inherited;

  FLock := TCriticalSection.Create;

  FPageCache := TppPageCacheFile.CreateTemp(ppGetTempPath);
  FPageCache.FinalPagesOnly := False;

  CreatePageRequestThread;

end;

destructor TppThreadedPageCache.Destroy;
begin

{$IFDEF ppCodeSite}CodeSite.EnterMethod('TppThreadedPageCache.Destroy');{$ENDIF}


//  CodeSite.Send('FPageRequestThread.CancelAndTerminate');

  FPageRequestThread.CancelAndTerminate;

  FPageRequestThread.OnPageReceive := nil;
  FPageRequestThread.OnGenerateStart := nil;
  FPageRequestThread.OnGenerateComplete := nil;

//  CodeSite.Send('FPageRequestThread.Free');
  FPageRequestThread.Free;
//  CodeSite.Send('FPageRequestThread := nil');
  FPageRequestThread := nil;

  FPageCache.Free;
  FPageCache := nil;

  FLock.Free;
  FLock := nil;

  inherited;

{$IFDEF ppCodeSite}CodeSite.ExitMethod('TppThreadedPageCache.Destroy');{$ENDIF}

end;

procedure TppThreadedPageCache.Cancel;
begin

  if FBusy then
    FPageRequestThread.Cancel;

  FBusy := False;

end;

procedure TppThreadedPageCache.Clear;
begin

  FLock.Acquire;

  try

    FPageCache.Clear;
    FLastPageReceived := False;

  finally
    FLock.Release;

  end;

end;

procedure TppThreadedPageCache.ClearFromPageNo(aPageNo: Integer);
begin

  FLock.Acquire;

  try

    FPageCache.ClearFromPageNo(aPageNo);
    FLastPageReceived := False;

  finally
    FLock.Release;

  end;

end;

procedure TppThreadedPageCache.CreatePageRequestThread;
begin

  FPageRequestThread := TppPageRequestThread.Create;
  FPageRequestThread.OnPageReceive := ehPageRequestThread_ReceivePage;
  FPageRequestThread.OnGenerateComplete := ehPageRequestThread_GenerateComplete;
  FPageRequestThread.OnGenerateStart := ehPageRequestThread_GenerateStart;
  FPageRequestThread.OnGenerateCancel := ehPageRequestThread_GenerateCancel;
//  FPageRequestThread.FreeOnTerminate := True;

//  FPageRequestThread.PageRequest.PageSetting := psAll;
  FPageRequestThread.PageRequest.PageSetting := psIncremental;

end;

procedure TppThreadedPageCache.ehExceptionTimer(Sender: TObject);
begin
  FExceptionTimer.Free;
  FExceptionTimer := nil;

  try
    if FExceptObject <> nil then
    // GO GO GO
    begin
//      raise FExceptObject;
      showmessage('Anteprima non disponibile per il motivo dettagliato di seguito' + slinebreak + slinebreak +
       '[' + FExceptObject.Message + ']');
    end
    // GO GO GO
    else
      raise Exception.Create(FPageRequestThread.ErrorMessage);
  finally
    FExceptObject := nil;
  end;

end;

procedure TppThreadedPageCache.ehPageRequestThread_ReceivePage(Sender, aPage: TObject);
begin
  if not(TppPage(aPage).Final) and FinalPagesOnly then Exit;

  FLock.Acquire;

  // global flag used to stream drawcommand.OnClick refs
  gbBackGroundPreviewing := True;

  try
    FPageCache.AddPage(TppPage(aPage));

    FLastPageReceived := TppPage(aPage).LastPage;

  finally
    gbBackGroundPreviewing := False;
    FLock.Release;
  end;

  if Assigned(FOnPageReceive) then FOnPageReceive(Self, aPage);


end;

procedure TppThreadedPageCache.ehPageRequestThread_GenerateCancel(Sender: TObject);
begin
  if Assigned(FOnGenerateCancel) then FOnGenerateCancel(Self);

end;

type
  ExceptionClass = class of Exception;

procedure TppThreadedPageCache.ehPageRequestThread_GenerateComplete(Sender: TObject);
var
  lExceptionClass: ExceptionClass;
begin

{$IFDEF ppCodeSite}CodeSite.EnterMethod('TppThreadedPageCache.ehPageRequestThread_Complete');{$ENDIF}

  FBusy := False;

  if FPageRequestThread.FErrorMessage = '' then
    begin
      if Assigned(FOnGenerateComplete) then FOnGenerateComplete(Self)
    end
  else // if FPageRequestThread.FErrorMessage <> '' then
    begin
      // fire generation cancel event
      if Assigned(FOnGenerateCancel) then FOnGenerateCancel(Self);

      // create exception object of same class type
      if (FPageRequestThread.ExceptionObject is Exception) then
        begin
          lExceptionClass := ExceptionClass(FPageRequestThread.ExceptionObject.ClassType);
          FExceptObject := lExceptionClass.Create(FPageRequestThread.FErrorMessage);
        end;

      // exception needs to be re-raised from via timer
      FExceptionTimer := TTimer.Create(nil);
      FExceptionTimer.OnTimer := ehExceptionTimer;
      FExceptionTimer.Interval := 10;
    end;

{$IFDEF ppCodeSite}CodeSite.ExitMethod('TppThreadedPageCache.ehPageRequestThread_Complete');{$ENDIF}

end;

procedure TppThreadedPageCache.ehPageRequestThread_GenerateStart(Sender: TObject);
begin
  if Assigned(FOnGenerateStart) then FOnGenerateStart(Self);

end;

procedure TppThreadedPageCache.GeneratePages(aReport: TppProducer);
begin

  if FLastPageReceived then Exit;

  Cancel;

  // configure page request
  FPageRequestThread.PageRequest.PageSetting := psAll;
  FPageRequestThread.PageRequest.PageIncrement := -1;
  FPageRequestThread.PageRequest.PageRequested := PageCount + 1;
  FPageRequestThread.PageRequest.DrawCommandClickIndex := -1;
  FPageRequestThread.PageRequest.ExpansionKey := '';

  FBusy := True;

  FPageRequestThread.GeneratePages(aReport);

end;

procedure TppThreadedPageCache.GeneratePages(aReport: TppProducer; aPageIncrement: Integer);
begin
  if FLastPageReceived then Exit;

  Cancel;

  // configure page request
  FPageRequestThread.PageRequest.PageSetting := psIncremental;
  FPageRequestThread.PageRequest.PageIncrement := aPageIncrement;
  FPageRequestThread.PageRequest.PageRequested := PageCount + 1;
  FPageRequestThread.PageRequest.DrawCommandClickIndex := -1;
  FPageRequestThread.PageRequest.ExpansionKey := '';

  FBusy := True;

  FPageRequestThread.GeneratePages(aReport);
end;

procedure TppThreadedPageCache.GeneratePages(aReport: TppProducer; aPageIncrement, aDrawCommandClickIndex: Integer; aExpansionKey: string);
begin
  if FLastPageReceived then Exit;

  Cancel;

  // configure page request
  FPageRequestThread.PageRequest.PageSetting := psIncremental;
  FPageRequestThread.PageRequest.PageIncrement := aPageIncrement;
  FPageRequestThread.PageRequest.PageRequested := PageCount + 1;
  FPageRequestThread.PageRequest.DrawCommandClickIndex := aDrawCommandClickIndex;
  FPageRequestThread.PageRequest.ExpansionKey := aExpansionKey;

  FBusy := True;

  FPageRequestThread.GeneratePages(aReport);
end;

function TppThreadedPageCache.GetPage(aPageNo: Integer; var aPage: TppPage): Boolean;
begin

  Result := False;

  FLock.Acquire;

  try
    if (aPageNo <= FPageCache.Count) then
      Result := FPageCache.GetPageForPageNo(aPageNo, aPage);

  finally
    FLock.Release;

  end;

end;

function TppThreadedPageCache.GetPageCount: Integer;
begin

  FLock.Acquire;

  try
    Result := FPageCache.Count;

  finally
    FLock.Release;

  end;
end;

function TppThreadedPageCache.GetFinalPagesOnly: Boolean;
begin
  Result := FPageCache.FinalPagesOnly;

end;

procedure TppThreadedPageCache.SetFinalPagesOnly(aValue: Boolean);
begin
  FPageCache.FinalPagesOnly := aValue;

end;

constructor TppPageRequestThread.Create;
begin

  // create(suspended)
  inherited Create(True);

  FDevice := TppDevice.Create(nil);

  FDevice.FinalPagesOnly := False;
  FDevice.OnPageReceive := ehDevice_PageReceive;
  FDevice.OnStartJob := ehDevice_StartJob;
  FDevice.OnCancelJob := ehDevice_CancelJob;
  FDevice.Stackable := True;
  FDevice.PageRequest.PreviewPageCount := 10;
//  FDevice.StackName := 'Screen'; // do not localize

  FFirstRequest := True;

{$IFDEF Delphi9}
  FRequestEvent := TEvent.Create();
  FCancelEvent := TEvent.Create();
{$ELSE}
  FRequestEvent := TSimpleEvent.Create();
  FCancelEvent := TSimpleEvent.Create();
{$ENDIF}

end;

destructor TppPageRequestThread.Destroy;
begin

  inherited;

  FDevice.Free;
  FDevice := nil;

  FRequestEvent.Free;
  FRequestEvent := nil;

  FCancelEvent.Free;
  FCancelEvent := nil;

end;

procedure TppPageRequestThread.Cancel;
begin

{$IFDEF ppCodeSite}CodeSite.EnterMethod('TppPageRequestThread.Cancel');{$ENDIF}

  FCancel := True;

{$IFDEF ppCodeSite}CodeSite.ExitMethod('TppPageRequestThread.Cancel');{$ENDIF}

end;

procedure TppPageRequestThread.CancelAndTerminate;
begin

{$IFDEF ppCodeSite}CodeSite.EnterMethod('TppPageRequestThread.CancelAndTerminate');{$ENDIF}

  Terminate;

  FCancel := True;

  // signal event, in case thread is waiting for a request
  if not(FFinished) then
    FRequestEvent.SetEvent;

{$IFDEF ppCodeSite}CodeSite.ExitMethod('TppPageRequestThread.CancelAndTerminate');{$ENDIF}

end;

procedure TppPageRequestThread.DoOnGenerateComplete;
begin
  if Assigned(FOnGenerateComplete) then FOnGenerateComplete(Self);

end;

procedure TppPageRequestThread.DoOnGenerateStart;
begin
  if Assigned(FOnGenerateStart) then FOnGenerateStart(Self);

end;

procedure TppPageRequestThread.DoOnGenerateCancel;
begin
  if Assigned(FOnGenerateCancel) then FOnGenerateCancel(Self);

end;

procedure TppPageRequestThread.Execute;
begin

{$IFDEF ppCodeSite}CodeSite.EnterMethod('TppPageRequestThread.Execute');{$ENDIF}

  while not(Terminated) do
    begin

      if FFirstRequest then
        FFirstRequest := False    // process first request
      else if FPendingRequest then
        FPendingRequest := False // process pending request
      else
        begin                   // wait for request
          // wait for a request
          FRequestEvent.ResetEvent;
          FRequestEvent.WaitFor(INFINITE);
        end;

      FPendingRequest := False;

      // execute report
      if not(Terminated) then
        ExecuteReport;

    end;

  FFinished := True;

{$IFDEF ppCodeSite}CodeSite.ExitMethod('TppPageRequestThread.Execute');{$ENDIF}

end;

procedure TppPageRequestThread.ExecuteReport;
begin

{$IFDEF ppCodeSite}CodeSite.EnterMethod('TppPageRequestThread.ExecuteReport');{$ENDIF}

  if FReport = nil then Exit;

  // connect device to publisher
  FDevice.Publisher := FReport.Publisher;
  FReport.EnableProcessMessages := False;

  try
    try
      // initialize COM for this thread
      ActiveX.CoInitialize(nil);

      // enable background generation, without requiring a separate database connection
      ppUtils.ppBeginBackgroundPrinting;

      // generate report
      FDevice.MakePageRequest;

    except

      on E: Exception do
        begin
          FExceptionObject := AcquireExceptionObject;
          FErrorMessage := E.Message;
          FReport.Cancel;
        end;

    end;

  finally
    // unitialize COM for this thread
    ActiveX.CoUnInitialize;

    // disable background generation, without requiring a separate database connection
    ppUtils.ppEndBackgroundPrinting;

    FReport.EnableProcessMessages := True;
    FReport := nil;
    FDevice.Publisher := nil;

    Synchronize(DoOnGenerateComplete);

    if (FExceptionObject <> nil) then
      begin
        ReleaseExceptionObject;
        FExceptionObject := nil;
      end;

  end;

{$IFDEF ppCodeSite}CodeSite.ExitMethod('TppPageRequestThread.ExecuteReport');{$ENDIF}

end;

procedure TppPageRequestThread.ehDevice_PageReceive(Sender, aPage: TObject);
begin

  if (TppPage(aPage).Final) and not(FDevice.IsRequestedPage) then Exit;

  if Terminated then
    FReport.Cancel
//    raise ECancelError.Create('Terminate')
  else if FCancel then
    FReport.Cancel
  else if Assigned(FOnPageReceive) then
    begin
      FPage := aPage;
      Synchronize(ehSynchronizedPageReceive);
    end;

end;

procedure TppPageRequestThread.ehDevice_StartJob(Sender: TObject);
begin
  Synchronize(DoOnGenerateStart);

end;

procedure TppPageRequestThread.ehDevice_CancelJob(Sender: TObject);
begin
  Synchronize(DoOnGenerateCancel);

end;

procedure TppPageRequestThread.ehSynchronizedPageReceive;
begin
  if Assigned(FOnPageReceive) then FOnPageReceive(Self, FPage);
  FPage := nil;
end;

procedure TppPageRequestThread.GeneratePages(aReport: TppProducer);
begin

  // force printer DC to be created in main thread
  // fixes an issue when a screen DC is created in one thread and use in another
  if (aReport = nil) or (aReport.Printer.DC = 0) then Exit;

  FReport := aReport;
  FCancel := False;
  FErrorMessage := '';

  // cancel if needed
  if FReport.Printing then
    FReport.Cancel;

  FPendingRequest := True;

  {start thread execution}
  if FFirstRequest then
{$IFDEF Delphi14}
  Start
{$ELSE}
  Resume
{$ENDIF}
  else
    FRequestEvent.SetEvent;

end;

function TppPageRequestThread.GetPageRequest: TppPageRequest;
begin
  Result := FDevice.PageRequest;
end;



constructor TppThreadedPageCacheDevice.Create(aOwner: TComponent);
begin

  inherited;

  FThreadedPageCache := TppThreadedPageCache.Create;
  FThreadedPageCache.OnGenerateComplete := ehPageCache_Complete;
  FThreadedPageCache.OnPageReceive := ehPageCache_PageReceive;

  PageRequest.PageSetting := psNone;

  FThreadedRequestTimeer := TTimer.Create(nil);
  FThreadedRequestTimeer.Enabled := False;
  FThreadedRequestTimeer.OnTimer := ehThreadedRequestTimeer_Event;


end;

destructor TppThreadedPageCacheDevice.Destroy;
begin
  inherited;

  FThreadedPageCache.Free;
  FThreadedPageCache := nil;

  FThreadedRequestTimeer.Free;
  FThreadedRequestTimeer := nil;
end;

procedure TppThreadedPageCacheDevice.ehPageCache_Complete(Sender: TObject);
begin
  // testing
//  messagebeep(0);
end;

procedure TppThreadedPageCacheDevice.ehPageCache_PageReceive(Sender, aPage: TObject);
begin
  // update status, scrollbar range, pageview etc.
end;

procedure TppThreadedPageCacheDevice.ehThreadedRequestTimeer_Event(Sender: TObject);
begin
  FThreadedRequestTimeer.Enabled := False;

  if (FReport <> nil) then
    FThreadedPageCache.GeneratePages(FReport);

end;

procedure TppThreadedPageCacheDevice.EndJob;
begin
  inherited;

  // set timer to generate pages in thread
  if (GetCurrentThreadID = MainThreadID) and not(FSinglePageMode) then
    FThreadedRequestTimeer.Enabled := True;

end;

procedure TppThreadedPageCacheDevice.ReceivePage(aPage: TppPage);
begin

  // implement single page more logic here
 // do not call inherited
  //  inherited;

end;

procedure TppThreadedPageCacheDevice.SetSinglePageMode(const Value: Boolean);
begin
  FSinglePageMode := Value;
  if FSinglePageMode then
    PageRequest.PageSetting := psSinglePage
  else
    PageRequest.PageSetting := psNone;
end;



end.
