unit GGA31INVUBM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGELABORA, DB, query_go, MyAccess, Menus,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs, ToolWin,
  Mask, DBCtrls,
  Grids, dbgrids, RzDBGrid, MemDS, VirtualTable,
  RzButton, ZZMOVMAG, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres,
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, RzEdit, DBAccess,
  XLSSheetData5, XLSReadWriteII5;

type

  TA31INVUBM = class(TELABORA)
    Label2: TRzLabel;
    v_sfoglia: TRzRapidFireButton;
    OpenDialog: TOpenDialog;
    XLSRead: TXLSReadWriteII5;
    Label4: TRzLabel;
    v_tmo_codice_carico: trzedit_go;
    RzDBEditDescrizione_go4: trzdbeditdescrizione_go;
    v_log: TMemo;
    tmo_carico: TMyQuery_go;
    tmo_carico_ds: TMyDataSource;
    Label8: TRzLabel;
    v_data: trzdatetimeedit_go;
    mmr: TMyQuery_go;
    ubm: TMyQuery_go;
    ultima_riga: TMyQuery_go;
    v_nome_file: trzedit_go;
    v_tma_codice: trzedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    RzLabel1: TRzLabel;
    tma: TMyQuery_go;
    tma_ds: TMyDataSource;
    rzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    RzLabel2: TRzLabel;
    ubm_giac: TMyQuery_go;
    tub: TMyQuery_go;
    ltm: TMyQuery_go;
    lot: TMyQuery_go;
    a31etichette: TMyQuery_go;
    procedure v_confermaClick(Sender: TObject);
    procedure Panel4Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_sfogliaClick(Sender: TObject);
    procedure v_tmo_codice_caricoExit(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
  protected
    procedure tma_codice_controllo(blocco: boolean);
    procedure tmo_codice_carico_controllo(blocco: boolean);
    procedure nome_file_controllo;
    procedure importa_ubicazioni_da_xls;
    procedure cancella(nome_tabella: string);
    procedure aggiorna_ubicazioni(tub_codice: string; riga: integer; segno: integer);
    function controlla_dati(tub_codice: string; riga: integer): boolean;
    procedure crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
    procedure crea_lotto(art_codice, tma_codice: string; quantita: double);
  public
    art_codice_passato: string;

    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;
  end;

const
  FLD_ART_CODICE = 0;
  FLD_POS = 1;
  FLD_QTA = 2;
  FLD_LOTTO = 3;
  FLD_TMA_CODICE = 4;
  FLD_TSU1_CODICE = 5;
  FLD_TSU2_CODICE = 6;
  FLD_TSU3_CODICE = 7;
  FLD_TSU4_CODICE = 8;

var
  A31INVUBM: TA31INVUBM;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE;

procedure TA31INVUBM.controllo_campi;
begin
  nome_file_controllo;
end;

procedure TA31INVUBM.visualizza_stampa_elabora;
begin

end;

procedure TA31INVUBM.FormShow(Sender: TObject);
begin
  inherited;

  if arc.dit.fieldbyname('ubicazione_multipla').asstring <> 'si' then
  begin
    messaggio(000, 'non è stata attivata, in anagrafica ditta, la gestione dell''ubicazione multipla');
    close;
  end;
  v_data.date := date;
end;

procedure TA31INVUBM.v_confermaClick(Sender: TObject);
var
  movmag: tmovmag;

  progressivo_mmt, riga_mmt, riga: integer;
  tipo_movimento: string;
begin
  tab_pagina2_abilitata := true;
  inherited;

  importa_ubicazioni_da_xls;
end;

procedure TA31INVUBM.v_sfogliaClick(Sender: TObject);
begin
  inherited;
  opendialog.initialdir := cartella_root_installazione;
  opendialog.filter := 'File da importare (*.xls*)|*.xls*';
  opendialog.execute;

  if opendialog.filename <> '' then
  begin
    v_nome_file.text := opendialog.filename;
  end;

end;

procedure TA31INVUBM.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TA31INVUBM.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tma, v_tma_codice, blocco, nil, nil, nil);

  if tma.fieldbyname('tub_codice').asstring <> '' then
  begin
    messaggio(002, 'Magazzino con ubicazione fissa');
    fuoco(v_tma_codice);
    abort;
  end;

end;

procedure TA31INVUBM.v_tmo_codice_caricoExit(Sender: TObject);
begin
  inherited;
  tmo_codice_carico_controllo(true);
end;

procedure TA31INVUBM.tmo_codice_carico_controllo(blocco: boolean);
begin
  tabella_controllo(false, tmo_carico, v_tmo_codice_carico, blocco, nil, nil, nil);
end;

procedure TA31INVUBM.nome_file_controllo;
begin
  if v_nome_file.text = '' then
  begin
    messaggio(002, label2.caption);
    v_sfoglia.click;
    abort;
  end;
end;

procedure TA31INVUBM.Panel4Enter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TA31INVUBM.importa_ubicazioni_da_xls;
var
  movmag: tmovmag;

  progressivo_mmt, riga_mmt, riga: integer;
  tipo_movimento: string;
  tub_codice: string;
begin
  inherited;

  screen.cursor := crhourglass;
  XlsRead.filename := v_nome_file.text;
  XlsRead.Read;
  screen.cursor := crdefault;

  // cancello  LTM

  cancella('ubm');
  cancella('ltp');
  cancella('ltm');
  cancella('lot');

  v_log.lines.clear;
  for riga := 1 to XlsRead.Sheets[0].LastRow do
  begin
    controllo_interrompi;

    xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga]);
    XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_TMA_CODICE, riga]);
    XlsRead.Sheets[0].asstring[FLD_TSU1_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_TSU1_CODICE, riga]);
    XlsRead.Sheets[0].asstring[FLD_TSU2_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_TSU2_CODICE, riga]);
    XlsRead.Sheets[0].asstring[FLD_TSU3_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_TSU3_CODICE, riga]);
    XlsRead.Sheets[0].asstring[FLD_TSU4_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_TSU4_CODICE, riga]);

    tub_codice := '';
    tub_codice := TUB_CODICE + XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, riga] + '_';
    tub_codice := TUB_CODICE + XlsRead.Sheets[0].asstring[FLD_TSU1_CODICE, riga] + '_';
    tub_codice := TUB_CODICE + XlsRead.Sheets[0].asstring[FLD_TSU2_CODICE, riga] + '_';
    tub_codice := TUB_CODICE + XlsRead.Sheets[0].asstring[FLD_TSU3_CODICE, riga] + '_';
    tub_codice := TUB_CODICE + XlsRead.Sheets[0].asstring[FLD_TSU4_CODICE, riga];

    if controlla_dati(tub_codice, riga) then
    begin

      aggiorna_ubicazioni(tub_codice, riga, 1);
      aggiorna_ubicazioni(xlsRead.sheets[0].asstring[FLD_POS, riga], riga, -1);
    end;

  end;
  ubm.close;
  mmr.close;

  if movmag.progressivo_mmt > 0 then
  begin
    codice_passato := movmag.progressivo_mmt;
    esegui_programma('GESMOV', codice_passato, true);
  end;
  v_log.Lines.SaveToFile(copy(v_nome_file.text, 1, length(v_nome_file.text) - 3) + '.log');
  Close;
end;

procedure TA31INVUBM.cancella(nome_tabella: string);
begin
  query.close;
  query.sql.clear;
  if nome_tabella = 'ubm' then
  begin
    query.sql.add('delete from ' + nome_tabella);
    query.sql.add('WHERE descrizione LIKE ''a31inv%'' ');
  end
  else
  begin
    query.sql.add('delete from ' + nome_tabella);
  end;
  query.ExecSQL;

end;

procedure TA31INVUBM.aggiorna_ubicazioni(tub_codice: string; riga: integer; segno: integer);
var
  progressivo: integer;
  lotto: string;
begin
  progressivo := arc.setta_valore_generatore(arc.arcdit, 'UBM_PROGRESSIVO');

  ubm.close;
  ubm.parambyname('progressivo').asinteger := progressivo;
  ubm.open;
  if ubm.eof then
  begin
    ubm.append;
    ubm.fieldbyname('progressivo').asinteger := progressivo;
    ubm.fieldbyname('data_registrazione').asdatetime := date;
    ubm.fieldbyname('art_codice').asstring := xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga];
    ubm.fieldbyname('descrizione').asstring := 'a31invubm';
    ubm.fieldbyname('doc_progressivo_origine').asinteger := 0;
    ubm.fieldbyname('doc_riga_origine').asinteger := 0;
    ubm.fieldbyname('art_codice').asstring := xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga];
    ubm.fieldbyname('tub_codice').asstring := tub_codice;
    ubm.fieldbyname('tmo_codice').asstring := v_tmo_codice_carico.text;
    if tmo_carico.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      if segno = 1 then
      begin
        ubm.fieldbyname('tipo_movimento').asstring := 'carico';
        ubm.fieldbyname('segno').asfloat := 1;
      end
      else
      begin
        ubm.fieldbyname('tipo_movimento').asstring := 'scarico';
        ubm.fieldbyname('segno').asfloat := -1;
      end;
    end
    else
    begin
      ubm.fieldbyname('tipo_movimento').asstring := 'scarico';
      ubm.fieldbyname('segno').asfloat := -1;
    end;
    ubm.post;

    crea_etichetta(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga], lotto, xlsRead.sheets[0].asstring[FLD_TMA_CODICE, riga], xlsRead.sheets[0].asfloat[FLD_QTA, riga]);

  end;
  ubm.edit;
  ubm.fieldbyname('quantita').asfloat := ubm.fieldbyname('quantita').asfloat + XlsRead.Sheets[0].asfloat[FLD_QTA, riga];
  ubm.post;
end;

function TA31INVUBM.controlla_dati(tub_codice: string; riga: integer): boolean;
begin
  result := true;
  if not read_tabella(arc.arcdit, 'art', 'codice', trim(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga])) then
  begin
    v_log.lines.add(' riga ' + inttostr(riga) + ' articolo ' + xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga] + ' non esiste.');
    result := false;
  end;
  if not read_tabella(tub, tub_codice) then
  begin
    tub.append;
    tub.fieldbyname('codice').asstring := tub_codice;
    tub.fieldbyname('descrizione').asstring := tub_codice;
    tub.fieldbyname('codice_alternativo').asstring := xlsRead.sheets[0].asstring[FLD_POS, riga];
    tub.fieldbyname('ubicazione_unica').asstring := 'no';
    tub.fieldbyname('tma_codice').asstring := xlsRead.sheets[0].asstring[FLD_TMA_CODICE, riga];
    tub.fieldbyname('a31tsu_codice_01').asstring := xlsRead.sheets[0].asstring[FLD_TMA_CODICE, riga];
    tub.fieldbyname('a31tsu_codice_02').asstring := xlsRead.sheets[0].asstring[FLD_TSU1_CODICE, riga];
    tub.fieldbyname('a31tsu_codice_03').asstring := xlsRead.sheets[0].asstring[FLD_TSU2_CODICE, riga];
    tub.fieldbyname('a31tsu_codice_04').asstring := xlsRead.sheets[0].asstring[FLD_TSU3_CODICE, riga];
    tub.fieldbyname('a31tsu_codice_05').asstring := xlsRead.sheets[0].asstring[FLD_TSU4_CODICE, riga];
    tub.post;

    v_log.lines.add(' riga ' + inttostr(riga) + ' articolo ' + trim(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga]) + ' ubicazione non esiste.');
    result := false;
  end;

  v_log.lines.add(' riga ' + inttostr(riga) + ' corretta --------------------');

end;

procedure TA31INVUBM.crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(arc.arcdit, 'A31ETICHETTE_PROGRESSIVO');
  end;

  a31etichette.close;
  a31etichette.parambyname('progressivo').asinteger := progressivo;
  a31etichette.open;
  if a31etichette.eof then
  begin
    a31etichette.append;
    a31etichette.fieldbyname('progressivo').asinteger := progressivo;
    a31etichette.fieldbyname('cli_codice').asstring := ''; //query.fieldbyname('cli_codice').asstring;
    a31etichette.fieldbyname('art_codice').asstring := art_codice;
    a31etichette.fieldbyname('tma_codice').asstring := tma_codice;
    a31etichette.fieldbyname('frn_codice').asstring := 'ZZZZ'; //query.fieldbyname('cli_codice').asstring;
    a31etichette.fieldbyname('codice_articolo_cliente').asstring := ''; //query.fieldbyname('codice_articolo_cliente').asstring;
    a31etichette.fieldbyname('data_produzione').asdatetime := strtodate('31/05/2021');
    a31etichette.fieldbyname('quantita').asfloat := quantita;
    a31etichette.fieldbyname('numero_etichette').asfloat := 1;
    a31etichette.fieldbyname('documento_origine').asstring := 'a31invubm';
    a31etichette.fieldbyname('doc_progressivo_origine').asinteger := 0;
    a31etichette.fieldbyname('doc_riga_origine').asinteger := 0;
    a31etichette.post;
  end;

  a31etichette.close;
  a31etichette.open;
  lotto := a31etichette.fieldbyname('lot_codice').asstring;

end;

procedure TA31INVUBM.crea_lotto(art_codice, tma_codice: string; quantita: double);
var
  progressivo: integer;
  lotto: string;
begin
  query.close;
  query.sql.clear;
  query.sql.add('select F_A31_PROMAU_ASSEGNA_LOT_CODICE(:utn_codice,'''', :art_codice, :tma_codice) lotto ');
  query.parambyname('utn_codice').asstring := utente;
  query.parambyname('art_codice').asstring := art_codice;
  query.parambyname('tma_codice').asstring := tma_codice;
  query.open;

  lotto := query.fieldbyname('lotto').asstring;

  progressivo := 1;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(tmyconnection_go(ltm.connection), 'LTM_PROGRESSIVO');
  end;

  //  read_tabella(xxr);

  ltm.close;
  ltm.parambyname('progressivo').asinteger := progressivo;
  ltm.open;
  if ltm.eof then
  begin
    ltm.append;
    ltm.fieldbyname('progressivo').asinteger := progressivo;
    ltm.fieldbyname('art_codice').asstring := art_codice;
    ltm.fieldbyname('lotto').asstring := lotto;
    ltm.fieldbyname('tma_codice').asstring := tma_codice;
    ltm.fieldbyname('documento_origine').asstring := '';
    ltm.fieldbyname('doc_progressivo_origine').asinteger := 0;
    ltm.fieldbyname('doc_riga_origine').asinteger := 0;
    ltm.fieldbyname('data_registrazione').asdatetime := date;
    ltm.fieldbyname('quantita').asfloat := quantita;

    if tmo_carico.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      ltm.fieldbyname('quantita_entrate').asfloat := quantita;
    end
    else
    begin
      ltm.fieldbyname('quantita_uscite').asfloat := quantita;
    end;
    ltm.post;
  end;

end;

initialization

registerclass(TA31INVUBM);

end.
