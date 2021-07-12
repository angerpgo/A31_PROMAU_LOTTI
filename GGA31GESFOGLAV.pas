unit GGA31GESFOGLAV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGGESGRD, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.Buttons, RzSpnEdt, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, raizeedit_go, RzTabs, Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls,
  Vcl.ToolWin, RzDBEdit, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel;

type
  TA31GESFOGLAV = class(TGESGRD)
    Label5: TRzLabel;
    v_cli_codice: trzdbedit_go;
    v_cli_descrizione1: trzdbeditdescrizione_go;
    v_cli_citta: trzdbeditdescrizione_go;
    Label2: TRzLabel;
    v_art_codice: trzdbedit_go;
    v_art_descrizione1: trzdbeditdescrizione_go;
    v_art_descrizione2: trzdbeditdescrizione_go;
    Label7: TRzLabel;
    v_codice_articolo_cliente: trzdbedit_go;
    Label4: TRzLabel;
    v_data_consegna: trzdbdatetimeedit_go;
    v_l_tum_prezzo: TRzLabel;
    v_quantita_da_produrre: trzdbnumericedit_go;
    cli: TMyQuery_go;
    cli_ds: TMyDataSource;
    art: TMyQuery_go;
    art_ds: TMyDataSource;
    arcl: TMyQuery_go;
    MyDataSource1: TMyDataSource;
    RzLabel1: TRzLabel;
    v_a31art_esponente: trzdbedit_go;
    opt: TMyQuery_go;
    Label16: TRzLabel;
    v_situazione: trzdbedit_go;
    Label15: TRzLabel;
    v_quantita_evasa: trzdbnumericedit_go;
    procedure FormCreate(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure v_data_consegnaExit(Sender: TObject);
    procedure pannello_codiceEnter(Sender: TObject);
    procedure v_art_codiceEnter(Sender: TObject);
    procedure tool_ctrl_f1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_grigliaTitleClick(Column: TColumn);
  protected
    uscita_immediata: boolean;
    cli_codice_passato, art_codice_passato: string;
    progressivo: integer;
    ordinamento_precedente:string;
    procedure esegui_query_codice; override;
    procedure cli_codice_controllo(blocco: boolean);
    procedure cliart_controllo(blocco: boolean);
    procedure art_codice_controllo(blocco: boolean);
    procedure data_consegna_controllo;
  public
    { Public declarations }
    procedure visualizza_descrizioni; override;
    procedure assegna_codice; override;
    procedure controllo_codice; override;
    procedure controllo_campi; override;
    procedure controllo_cancella; override;
    procedure controllo_edit; override;

    procedure before_post; override;
    procedure before_delete; override;

    procedure after_post; override;
    procedure after_delete; override;

    procedure abilitazioni; override;

    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
  end;

var
  A31GESFOGLAV: TA31GESFOGLAV;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31GESFOGLAV.assegna_codice;
begin
  inherited;
  if progressivo_inserimento_record <> 0 then
  begin
    codice := progressivo_inserimento_record;
  end
  else
  begin
    codice := query_codice.fieldbyname('progressivo').asinteger;
  end;
end;

procedure TA31GESFOGLAV.controllo_codice;
begin
end;

procedure TA31GESFOGLAV.controllo_campi;
begin
  (*
    cli_codice_controllo(true);
    art_codice_controllo(true);
  *)
end;

procedure TA31GESFOGLAV.FormCreate(Sender: TObject);
begin
  testo_query_codice := 'select f.progressivo, f.cli_codice, cli.descrizione1 cli_descrizione1,  ' +
    'f.art_codice, art.descrizione1 art_descrizione1, ' +
    'f.codice_articolo_cliente, arcl.a31art_esponente, arcl.descrizione_articolo_cliente,  ' +
    'f.data_consegna, f.qta_da_produrre, f.data_ora_creazione '+
    'from a31foglav f ' +
    'left join cli on cli.codice = f.cli_codice ' +
    'left join art on art.codice = f.art_codice ' +
    'left join arcl on arcl.cli_codice = f.cli_codice and arcl.art_codice = f.art_codice and arcl.a31art_esponente=f.a31art_esponente ';

  inserisci_progressivo := true;

  inherited;

  // query_codice.parambyname('data_inizio').asdate := strtodate(data_31_12_9999);
  ordinamento := 'cli_codice';
  secondo_campo_ordinamento := 'art_codice, data_consegna';

  if importi_archivi = 'nascondi' then
  begin
    uscita_immediata := true;
  end;

end;

procedure TA31GESFOGLAV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_F1) and (Shift = [ssCtrl]) then
  begin
    tool_ctrl_f1.click;
  end
  else
  begin
    inherited;
  end;

end;

procedure TA31GESFOGLAV.visualizza_descrizioni;
begin
  cli_codice_controllo(false);
  art_codice_controllo(false);
  cliart_controllo(false);
end;

procedure TA31GESFOGLAV.v_cli_codiceExit(Sender: TObject);
begin
  inherited;
  cli_codice_controllo(true);
end;

procedure TA31GESFOGLAV.cli_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cli, v_cli_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESFOGLAV.controllo_cancella;
begin
  inherited;
end;

procedure TA31GESFOGLAV.controllo_edit;
begin
  inherited;
end;

procedure TA31GESFOGLAV.after_post;
begin
  inherited;
end;

procedure TA31GESFOGLAV.before_delete;
begin
  inherited;
  progressivo := tabella.fieldbyname('progressivo').asinteger;
end;

procedure TA31GESFOGLAV.before_post;
begin
  inherited;
end;

procedure TA31GESFOGLAV.after_delete;
begin
  inherited;
  opt.close;
  opt.parambyname('a31foglav_progressivo').asinteger := progressivo;
  opt.execsql;
end;

procedure TA31GESFOGLAV.v_art_codiceEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_cli_codice.text;
end;

procedure TA31GESFOGLAV.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
  if controllo then
  begin
    cliart_controllo(true);
  end;
end;

procedure TA31GESFOGLAV.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, art, v_art_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESFOGLAV.v_data_consegnaExit(Sender: TObject);
begin
  inherited;
  data_consegna_controllo;
end;

procedure TA31GESFOGLAV.v_grigliaTitleClick(Column: TColumn);
begin
  ordinamento_precedente := ordinamento;
  inherited;
end;

procedure TA31GESFOGLAV.data_consegna_controllo;
begin
  if controllo then
  begin
    if v_data_consegna.date = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_consegna').asdatetime := date;
      end;
    end;
  end;
end;

procedure TA31GESFOGLAV.cliart_controllo(blocco: boolean);
begin
  tabella_controllo(false, arcl, v_cli_codice, v_art_codice, false, tab_control, tab_pagina1, nil);
  if blocco then
  begin
    tabella_edit(tabella);
    tabella.fieldbyname('codice_articolo_cliente').asstring := arcl.fieldbyname('codice_articolo_cliente').asstring;
    tabella.fieldbyname('a31art_esponente').asstring := arcl.fieldbyname('a31art_esponente').asstring;
  end;
end;

procedure TA31GESFOGLAV.abilitazioni;
begin
  //
end;

(*
  procedure TA31FOGLAV.v_grigliaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  begin
  inherited;
  if (not v_griglia.focused) and (not query_codice.isempty) then
  begin
  if (gdSelected in State) then
  begin
  with v_griglia.Canvas do
  begin
  with v_griglia.Canvas do
  begin
  brush.color := clgraytext;
  font.color := clblack;
  end;
  end;
  end;
  end;

  v_griglia.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
*)
procedure TA31GESFOGLAV.get_codice_archivio;
begin
  visualizza_descrizioni;

  inherited;
end;

procedure TA31GESFOGLAV.pannello_codiceEnter(Sender: TObject);
begin
  inherited;
  tool_ctrl_f1.enabled := true;
  if uscita_immediata then
  begin
    close;
  end;
end;

procedure TA31GESFOGLAV.set_codice_archivio;
begin
  inherited;
end;

procedure TA31GESFOGLAV.tool_ctrl_f1Click(Sender: TObject);
begin
  programma_stampa := 'A31STAFOGLAV';
  parametri_extra_programma_chiamato[0] := query_codice.fieldbyname('progressivo').asinteger;
  inherited;

end;

procedure TA31GESFOGLAV.esegui_query_codice;
begin
  if ordinamento = ordinamento_precedente then
  begin
    ordinamento := ordinamento + ' desc';
  end;
  query_codice.open;

  inherited;

  (v_griglia.columns.items[7].field as tfloatfield).displayformat := ',0;-,0;#';
end;

initialization

registerclass(tA31GESFOGLAV);

end.
