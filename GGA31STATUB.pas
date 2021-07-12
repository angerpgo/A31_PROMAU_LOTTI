unit GGA31STATUB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGSTAMPA, Data.DB, VirtualTable, ppVar,
  ppBands, ppClass, ppParameter, ppDesignLayer, ppCtrls, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, MyAccess, query_go,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, RzButton, Vcl.StdCtrls, RzCmboBx,
  raizeedit_go, Vcl.Buttons, RzSpnEdt, RzLabel, Vcl.ExtCtrls, RzPanel,
  Vcl.ToolWin, Vcl.Mask, RzEdit;

type
  TA31STATUB = class(TSTAMPA)
    v_da_codice_01: trzedit_go;
    v_da_codice_02: trzedit_go;
    v_da_codice_03: trzedit_go;
    v_da_codice_04: trzedit_go;
    v_da_codice_05: trzedit_go;
    v_a_codice_01: trzedit_go;
    v_a_codice_02: trzedit_go;
    v_a_codice_03: trzedit_go;
    v_a_codice_04: trzedit_go;
    v_a_codice_05: trzedit_go;
    l_da_codice_struttura: TRzLabel;
    RzLabel1: TRzLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    v_livello: trznumericedit_go;
    RzLabel2: TRzLabel;
    procedure v_confermaClick(Sender: TObject);
    procedure v_a_codice_01Exit(Sender: TObject);
    procedure v_a_codice_02Exit(Sender: TObject);
    procedure v_a_codice_03Exit(Sender: TObject);
    procedure v_a_codice_04Exit(Sender: TObject);
    procedure v_a_codice_05Exit(Sender: TObject);
  protected
    procedure controllo_a_codice_01;
    procedure controllo_a_codice_02;
    procedure controllo_a_codice_03;
    procedure controllo_a_codice_04;
    procedure controllo_a_codice_05;

    procedure controllo_campi; override;
  public

    procedure stampa; override;
  end;

var
  A31STATUB: TA31STATUB;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31STATUB.v_a_codice_01Exit(Sender: TObject);
begin
  inherited;
  controllo_a_codice_01;
end;

procedure TA31STATUB.v_a_codice_02Exit(Sender: TObject);
begin
  inherited;
  controllo_a_codice_02;
end;

procedure TA31STATUB.v_a_codice_03Exit(Sender: TObject);
begin
  inherited;
  controllo_a_codice_03;
end;

procedure TA31STATUB.v_a_codice_04Exit(Sender: TObject);
begin
  inherited;
  controllo_a_codice_04;
end;

procedure TA31STATUB.v_a_codice_05Exit(Sender: TObject);
begin
  inherited;
  controllo_a_codice_05
end;

procedure TA31STATUB.controllo_a_codice_01;
begin
  if v_a_codice_01.text = '' then
  begin
    v_a_codice_01.text := 'zzzz';
  end;

  if v_a_codice_01.text < v_da_codice_01.text then
  begin
    messaggio(000, '1 Liv non valido.');
    fuoco(v_a_codice_01);
  end;

end;

procedure TA31STATUB.controllo_a_codice_02;
begin
  if v_a_codice_02.text = '' then
  begin
    v_a_codice_02.text := 'zzzz';
  end;

  if v_a_codice_02.text < v_da_codice_02.text then
  begin
    messaggio(000, '2 Liv non valido.');
    fuoco(v_a_codice_02);
  end;

end;

procedure TA31STATUB.controllo_a_codice_03;
begin
  if v_a_codice_03.text = '' then
  begin
    v_a_codice_03.text := 'zzzz';
  end;

  if v_a_codice_03.text < v_da_codice_03.text then
  begin
    messaggio(000, '3 Liv non valido.');
    fuoco(v_a_codice_03);
  end;

end;

procedure TA31STATUB.controllo_a_codice_04;
begin
  if v_a_codice_04.text = '' then
  begin
    v_a_codice_04.text := 'zzzz';
  end;

  if v_a_codice_04.text < v_da_codice_04.text then
  begin
    messaggio(000, '4 Liv non valido.');
    fuoco(v_a_codice_04);
  end;

end;

procedure TA31STATUB.controllo_a_codice_05;
begin
  if v_a_codice_05.text = '' then
  begin
    v_a_codice_05.text := 'zzzz';
  end;

  if v_a_codice_05.text < v_da_codice_05.text then
  begin
    messaggio(000, '5 Liv non valido.');
    fuoco(v_a_codice_05);
  end;

end;

procedure TA31STATUB.v_confermaClick(Sender: TObject);
begin
  inherited;
  esegue_stampa;
end;

procedure TA31STATUB.controllo_campi;
begin
  inherited;
  controllo_a_codice_01;
  controllo_a_codice_02;
  controllo_a_codice_03;
  controllo_a_codice_04;
  controllo_a_codice_05;
end;

procedure TA31STATUB.stampa;
begin
  //  stampa nuova
  query.close;
  query.parambyname('livello').asfloat := v_livello.value;

  (*
    assegna_query_stampa;

    if pos('/*ORDER BY*/', query_stampa.sql.text) = 0 then
    begin
    ordinamento_query_stampa := 'order by t.codice_01,t.codice_02,t.codice_03,t.codice_04,t.codice_05,tub.codice ';
    query_stampa.sql.add(ordinamento_query_stampa);
    end;
    //  stampa nuova fine
  *)
  inherited;
end;


initialization

registerclass(ta31statub);

end.
