{ RRRRRR                  ReportBuilder Class Library                  BBBBB
  RR   RR                                                              BB   BB
  RRRRRR                 Digital Metaphors Corporation                 BB BB
  RR  RR                                                               BB   BB
  RR   RR                   Copyright (c) 1996-2008                   BBBBB   }

unit ppPrvDlg2;

interface

{$I ppIfDef.pas}

uses
  Windows, ComCtrls, SysUtils, Messages, Classes, Graphics, Controls, Forms, ExtCtrls, StdCtrls, Mask, Buttons,
  ppForms, ppTypes, ppProd, ppDevice, ppViewr, Dialogs, ppUtils, ppPreview,
  ppOutlineViewer,

  ppTBX,
  ppTBXStatusBars,
  ppTBXExtItems,

  ppToolbarTBX, ppComm, ppEndUsr,

 // INIZIO GO
 ppreport, Menus, DMARC;
 // FINE GO

type

  {@TppPrintPreview }

  TPrintPreview2 = class(TppCustomPreviewer)
    ppDesigner1: TppDesigner;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  	procedure FormShow(Sender: TObject);
    
  private
    FStatusBar: TppTBXStatusBar;
    FPreview: TppCustomPreview;

    //  INIZIO GO
    ingrandisci, rimpicciolisci, personalizza: TppTBXItem;
    //  FINE GO

    //  INIZIO GO
    procedure personalizza_Click(sender: tobject);
    procedure ingrandisci_Click(sender: tobject);
    procedure rimpicciolisci_Click(sender: tobject);
    //  FINE GO
    function GetAutoSearchButton: TppTBXItem;
    function GetAccessoryToolbar: TPanel;
    function GetCancelButton: TppTBXItem;
    function GetFirstButton: TppTBXItem;
    function GetLastButton: TppTBXItem;
    function GetNextButton: TppTBXItem;
    function GetEmailButton: TppTBXItem;
    function GetOutlineViewer: TppOutlineViewer;
    function GetPageNoEdit: TppTBXEditItem;
    function GetPageWidthButton: TppTBXItem;
    function GetPercent100Button: TppTBXItem;
    function GetPrintButton: TppTBXItem;
    function GetPriorButton: TppTBXItem;
    function GetSplitter: TSplitter;
    function GetTextSearchButton: TppTBXItem;
    function GetTextSearchToolbar: TPanel;
    function GetToolbar: TppToolbar;
    function GetWholePageButton: TppTBXItem;
    function GetZoomPercentageEdit: TppTBXEditItem;
    function GetStatusBar: TppTBXStatusBar;

  protected
    procedure Activate; override;
    function  GetViewer: TObject; override;
    procedure LanguageChanged; override;

    procedure PreviewCloseEvent(Sender: TObject);

    function UsingDefaultPreviewPlugIn: Boolean;
    function GetPreview: TppPreview;

  public
    procedure Init; override;

    property StatusBar: TppTBXStatusBar read GetStatusBar;

     // the following properties are declared for convenience to
    //  provide access to ui controls implemented by TppPreview.
    //  TppPreview is the default preview plug-in. If TppPreview or a descendant
    //  is not registered, then these properties will return nil.
    property AutoSearchButton: TppTBXItem read GetAutoSearchButton;
    property AccessoryToolbar: TPanel read GetAccessoryToolbar;
    property CancelButton: TppTBXItem read GetCancelButton;
    property FirstButton: TppTBXItem read GetFirstButton;
    property LastButton:  TppTBXItem read GetLastButton;
    property NextButton:  TppTBXItem read GetNextButton;
    property EmailButton: TppTBXItem read GetEmailButton;
    property OutlineViewer: TppOutlineViewer read GetOutlineViewer;
    property PageNoEdit: TppTBXEditItem read GetPageNoEdit;
    property PageWidthButton: TppTBXItem read GetPageWidthButton;
    property Percent100Button:   TppTBXItem read GetPercent100Button;
    property PrintButton: TppTBXItem read GetPrintButton;
    property PriorButton: TppTBXItem read GetPriorButton;
    property Splitter: TSplitter read GetSplitter;
    property TextSearchToolbar: TPanel read GetTextSearchToolbar;
    property TextSearchButton: TppTBXItem read GetTextSearchButton;
    property Toolbar: TppToolbar read GetToolbar;
    property WholePageButton: TppTBXItem read GetWholePageButton;
    property ZoomPercentageEdit: TppTBXEditItem read GetZoomPercentageEdit;


  end; {class, TppPrintPreview}

var
  PrintPreview2: TPrintPreview2;
  
    //  INIZIO GO
const
  VK_PIU = 107;
  VK_MENO = 109;
  VK_PIU1 = 187;
  VK_MENO1 = 189;
  //  FINE GO

implementation

{$R *.DFM}
//  INIZIO GO
uses GGFORMBASE;
//  FINE GO

{ TppPrintPreview.FormCreate }

procedure TPrintPreview2.FormCreate(Sender: TObject);
begin
  //INIZIO GO
  ppdesigner1.inistoragename := cartella_temp + 'rbuilder.ini';
  //FINE GO

  FStatusBar := TppTBXStatusBar.Create(Self);
  FStatusBar.Parent := Self;
  FStatusBar.SimplePanel := False;
  FStatusBar.Align := alBottom;
  FStatusBar.Panels.Add;
  FStatusBar.Panels[0].Width := 275;

  {create the preview plug-in
    - the preview plug-in enables a custom preview class to be register for
      use with the Report Designer and this Preview dialog}
  FPreview := TppPreviewPlugIn.CreatePreviewPlugin(Self);

  FPreview.StatusBarTbx := FStatusBar;
  FPreview.OnClose := PreviewCloseEvent;

end;

{ TPrintPreview.FormDestroy}

procedure TPrintPreview2.FormDestroy(Sender: TObject);
begin
  FPreview.Free;
end;

{ TPrintPreview.FormClose}

procedure TPrintPreview2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (FPreview.Viewer.Busy) then
    Action := caNone
  else
    Action := caFree;
end;

{ TPrintPreview.Activate }

procedure TPrintPreview2.Activate;
begin

  {this is in Activate because we want it to fire after OnPreviewFormCreate
   and it's before Inherited to avoid caption flash.}
  if DisplayDocumentName then
    Caption := TppProducer(Report).PrinterSetup.DocumentName;

  inherited Activate;

end;

{ TPrintPreview.Init }

procedure TPrintPreview2.Init;
begin

  if (Report is TppProducer) then
    FPreview.Viewer.Report := TppProducer(Report);

  FPreview.BeforePreview;

end;

{ TPrintPreview.PreviewCloseEvent}

procedure TPrintPreview2.PreviewCloseEvent(Sender: TObject);
begin
  Close;
end;

{ TPrintPreview.LanguageChanged}

procedure TPrintPreview2.LanguageChanged;
begin

  Caption := ppLoadStr(23);

  FPreview.LanguageChanged;

end;
{ TPrintPreview.GetViewer }

function TPrintPreview2.GetViewer: TObject;
begin
  Result := FPreview.Viewer;
end;

{ TPrintPreview.FormKeyDown}

procedure TPrintPreview2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FPreview.KeyDown(Key, Shift);
//  INIZIO GO
  if ((key = vk_return) and (shift = [ssctrl])) or
    ((char(Key) = 'p') and (Shift = [ssctrl])) or ((char(Key) = 'P') and (Shift = [ssctrl])) or
    ((key = 107) and (shift = [ssctrl])) then
  begin
    key := 0;
    FPreview.Viewer.Print;
  end
  else if (key = vk_f12) and (ssctrl in shift) then
  begin
    key := 0;
    formbase.call_programma_f12;
  end
  else if (ssctrl in shift) then
  begin
    case Key of
      vk_home:
        begin
          FPreview.Viewer.FirstPage;
        end;
      vk_end:
        begin
          FPreview.Viewer.LastPage;
        end;
    end;
  end
  else
  begin
    case Key of
      vk_prior:
        begin
          FPreview.Viewer.PriorPage;
        end;
      vk_next:
        begin
          FPreview.Viewer.NextPage;
        end;
      vk_escape:
        begin
          close;
        end;
      vk_piu:
        begin
          ingrandisci_click(ingrandisci);
        end;
      vk_meno:
        begin
          rimpicciolisci_click(rimpicciolisci);
        end;
      vk_piu1:
        begin
          ingrandisci_click(ingrandisci);
        end;
      vk_meno1:
        begin
          rimpicciolisci_click(rimpicciolisci);
        end;
    end;
  end;
  //  FINE GO

end;

{******************************************************************************
 *
 ** I N I T I A L I Z A T I O N   /   F I N A L I Z A T I O N
 *
{******************************************************************************}

function TPrintPreview2.GetAccessoryToolbar: TPanel;
begin
  if UsingDefaultPreviewPlugin then
    Result := GetPreview.AccessoryToolbar
  else
    Result := nil;

end;

function TPrintPreview2.GetAutoSearchButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.AutoSearchButton
  else
    Result := nil;

end;

function TPrintPreview2.GetCancelButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.CancelButton
  else
    Result := nil;

end;

function TPrintPreview2.GetFirstButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.FirstButton
  else
    Result := nil;

end;

function TPrintPreview2.GetLastButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.LastButton
  else
    Result := nil;

end;

function TPrintPreview2.GetNextButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.NextButton
  else
    Result := nil;

end;

function TPrintPreview2.GetEmailButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.EmailButton
  else
    Result := nil;
    
end;

function TPrintPreview2.GetOutlineViewer: TppOutlineViewer;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.OutlineViewer
  else
    Result := nil;

end;

function TPrintPreview2.GetPageNoEdit: TppTBXEditItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.PageNoEdit
  else
    Result := nil;

end;

function TPrintPreview2.GetPageWidthButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.PageWidthButton
  else
    Result := nil;

end;

function TPrintPreview2.GetPercent100Button: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.Percent100Button
  else
    Result := nil;

end;

function TPrintPreview2.GetPreview: TppPreview;
begin
  if UsingDefaultPreviewPlugIn then
    Result := TppPreview(FPreview)
  else
    Result := nil;
end;

function TPrintPreview2.GetPrintButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.PrintButton
  else
    Result := nil;

end;

function TPrintPreview2.GetPriorButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.PriorButton
  else
    Result := nil;

end;

function TPrintPreview2.GetSplitter: TSplitter;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.Splitter
  else
    Result := nil;

end;

function TPrintPreview2.GetTextSearchButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.TextSearchButton
  else
    Result := nil;

end;

function TPrintPreview2.GetTextSearchToolbar: TPanel;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.TextSearchToolbar
  else
    Result := nil;


end;

function TPrintPreview2.GetToolbar: TppToolbar;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.Toolbar
  else
    Result := nil;

end;

function TPrintPreview2.GetWholePageButton: TppTBXItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.WholePageButton
  else
    Result := nil;

end;

function TPrintPreview2.GetZoomPercentageEdit: TppTBXEditItem;
begin
  if UsingDefaultPreviewPlugIn then
    Result := GetPreview.ZoomPercentageEdit
  else
    Result := nil;

end;

function TPrintPreview2.UsingDefaultPreviewPlugIn: Boolean;
begin
  Result := TppPreviewPlugIn.UsingDefaultPreviewClass;
end;

function TPrintPreview2.GetStatusBar: TppTBXStatusBar;
begin
  Result := FStatusBar;

end;

//  INIZIO GO

procedure TPrintPreview2.FormShow(Sender: TObject);
begin
  self.windowstate := wsmaximized;

  FPreview.Viewer.zoomsetting := zspercentage;

  Toolbar.BeginUpdate;

  Toolbar.AddSpacer();
  Toolbar.AddSpacer();

  ingrandisci := Toolbar.AddButton();
  ingrandisci.caption := 'Ingrandisci (+)';
  ingrandisci.onclick := ingrandisci_click;

  Toolbar.AddSpacer();

  rimpicciolisci := Toolbar.AddButton();
  rimpicciolisci.caption := 'Rimpicciolisci (-)';
  rimpicciolisci.onclick := rimpicciolisci_click;


  if supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si') then
  begin
    Toolbar.AddSpacer();
    Toolbar.AddSpacer();
    personalizza := Toolbar.AddButton();
    personalizza.caption := 'Personalizza';
    personalizza.OnClick := personalizza_click;
  end;

  Toolbar.EndUpdate;

  if tipo_anteprima = 'visualizza tutto il documento' then
  begin
    FPreview.Viewer.ZoomSetting := zsWholePage;
  end
  else if tipo_anteprima = 'visualizza a pieno video' then
  begin
    FPreview.Viewer.ZoomSetting := zsPageWidth;
  end
  else if tipo_anteprima = 'visualizza con dimensioni originali' then
  begin
    FPreview.Viewer.ZoomSetting := zs100Percent;
  end
  else
  begin
    FPreview.Viewer.ZoomSetting := zspercentage;
    try
      FPreview.Viewer.Zoompercentage := strtoint(copy(tipo_anteprima, 1, 2));
    except
      FPreview.Viewer.Zoompercentage := 100;
    end;
  end;

  if TextSearchToolbar.visible then
  begin
    TextSearchButton.Checked := true;
    TextSearchButton.Hint := ppLoadStr(1055);
    TextSearchButton.Hint := '';
  end
  else
  begin
    TextSearchButton.Checked := false;
    TextSearchButton.Hint := ppLoadStr(1054);
  end;

  WholePageButton.Checked := (FPreview.Viewer.ZoomSetting = zsWholePage);
  PageWidthButton.Checked := (FPreview.Viewer.ZoomSetting = zsPageWidth);
  Percent100Button.Checked := (FPreview.Viewer.ZoomSetting = zs100Percent);
end;

procedure TPrintPreview2.personalizza_Click(sender: tobject);
begin
  ppDesigner1.report := (FPreview.Viewer.report as tppreport);
  ppDesigner1.bringtofront;
  ppDesigner1.showmodal;

  close;
end;

procedure TPrintPreview2.ingrandisci_Click(sender: tobject);
var
  stringa: string;
  i: word;
begin
  if FPreview.Viewer.ZoomPercentage < 251 - 10 then
  begin
    stringa := trim(copy(ZoomPercentageedit.text, 1, pos('%', ZoomPercentageedit.text) - 1));
    i := strtoint(stringa) div 10;
    FPreview.Viewer.ZoomPercentage := (i + 1) * 10;
    ZoomPercentageedit.text := inttostr(FPreview.Viewer.ZoomPercentage) + '%';
  end;
end;

procedure TPrintPreview2.rimpicciolisci_Click(sender: tobject);
var
  stringa: string;
  i: word;
begin
  if FPreview.Viewer.ZoomPercentage > 39 then
  begin
    stringa := trim(copy(ZoomPercentageedit.text, 1, pos('%', ZoomPercentageedit.text) - 1));
    i := strtoint(stringa) div 10;
    FPreview.Viewer.ZoomPercentage := (i - 1) * 10;
    ZoomPercentageedit.text := inttostr(FPreview.Viewer.ZoomPercentage) + '%';
  end;
end;

//  FINE GO
initialization

  ppRegisterForm(TppCustomPreviewer, TPrintPreview2);

finalization

  ppUnRegisterForm(TppCustomPreviewer);

end.
