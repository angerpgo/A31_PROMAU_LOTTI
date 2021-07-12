unit GGA31MOVUBM;

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

  TA31MOVUBM = class(TELABORA)
    Label2: TRzLabel;
    v_sfoglia: TRzRapidFireButton;
    OpenDialog: TOpenDialog;
    XLSRead: TXLSReadWriteII5;
    Label4: TRzLabel;
    RzDBEditDescrizione_go4: trzdbeditdescrizione_go;
    v_log: TMemo;
    tmo_carico: TMyQuery_go;
    tmo_carico_ds: TMyDataSource;
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
    v_tmo_codice_carico: trzedit_go;
    v_progressivo: trznumericedit_go;
    RzLabel3: TRzLabel;
    mmt: TMyQuery_go;
    mmt_coll: TMyQuery_go;
    procedure v_confermaClick(Sender: TObject);
    procedure Panel4Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_sfogliaClick(Sender: TObject);
    procedure v_progressivoExit(Sender: TObject);
  protected
    procedure progressivo_controllo;
    procedure tma_codice_controllo(blocco: boolean);

    procedure nome_file_controllo;
    procedure importa_ubicazioni_da_xls;
    procedure aggiorna_ubicazioni(mmt: tmyquery_go; progressivo_mmt, riga_mmt: integer; art_codice, tub_codice, tipo_movimento: string; quantita: double);
    function controlla_dati(riga: integer): boolean;
  public
    art_codice_passato: string;

    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;
  end;

const
  FLD_ART_CODICE = 0;
  FLD_ART_DESCRIZIONE = 1;
  FLD_TUB_CODICE_01 = 2;
  FLD_QTA = 3;
  FLD_TUB_CODICE_02 = 4;

var
  A31MOVUBM: TA31MOVUBM;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE;

procedure TA31MOVUBM.controllo_campi;
begin
  nome_file_controllo;
end;

procedure TA31MOVUBM.visualizza_stampa_elabora;
begin

end;

procedure TA31MOVUBM.FormShow(Sender: TObject);
begin
  inherited;

  if arc.dit.fieldbyname('ubicazione_multipla').asstring <> 'si' then
  begin
    messaggio(000, 'non è stata attivata, in anagrafica ditta, la gestione dell''ubicazione multipla');
    close;
  end;

end;

procedure TA31MOVUBM.v_confermaClick(Sender: TObject);

begin
  tab_pagina2_abilitata := true;
  inherited;

  importa_ubicazioni_da_xls;
end;

procedure TA31MOVUBM.v_progressivoExit(Sender: TObject);
begin
  inherited;
  progressivo_controllo;
end;

procedure TA31MOVUBM.progressivo_controllo;
begin
  read_tabella(mmt, v_progressivo.Value);
  read_tabella(mmt_coll, mmt.fieldbyname('progressivo').asinteger);
end;

procedure TA31MOVUBM.v_sfogliaClick(Sender: TObject);
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

procedure TA31MOVUBM.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tma, v_tma_codice, blocco, nil, nil, nil);

  if tma.fieldbyname('tub_codice').asstring <> '' then
  begin
    messaggio(002, 'Magazzino con ubicazione fissa');
    fuoco(v_tma_codice);
    abort;
  end;

end;

procedure TA31MOVUBM.nome_file_controllo;
begin
  if v_nome_file.text = '' then
  begin
    messaggio(002, label2.caption);
    v_sfoglia.click;
    abort;
  end;
end;

procedure TA31MOVUBM.Panel4Enter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TA31MOVUBM.importa_ubicazioni_da_xls;
var
  progressivo_mmt, riga_mmt, riga: integer;
  tipo_movimento: string;
begin
  inherited;

  screen.cursor := crhourglass;
  XlsRead.filename := v_nome_file.text;
  XlsRead.Read;
  screen.cursor := crdefault;
  (*
    if XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, 1] <> v_tma_codice.text then
    begin
    messaggio(000, 'File Inventario magazzino [' + XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, 1] + '] <> da codice movimento magazzino [' + v_tma_codice.text + ']');
    exit;
    end;
  *)

  query.close;
  query.sql.clear;
  query.sql.add('delete from ubm');
  query.sql.add('where');
  query.sql.add('documento_origine=:documento_origine and');
  query.sql.add('doc_progressivo_origine=:progressivo');
  query.parambyname('documento_origine').asstring := 'movimenti magazzino';
  query.parambyname('progressivo').asinteger := progressivo_mmt;
  query.execsql;


  v_log.lines.clear;
  for riga := 1 to XlsRead.Sheets[0].LastRow do
  begin
    controllo_interrompi;

    xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga]);
    xlsRead.sheets[0].asstring[FLD_TUB_CODICE_01, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_TUB_CODICE_01, riga]);
    if controlla_dati(riga) then
    begin

      aggiorna_ubicazioni(
        mmt,
        mmt.fieldbyname('progressivo').asinteger,
        riga,
        xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga],
        xlsRead.sheets[0].asstring[FLD_TUB_CODICE_01, riga],
        mmt.fieldbyname('esistenza').asstring,
        xlsRead.sheets[0].asfloat[FLD_QTA, riga]);

    end;

  end;
  ubm.close;
  mmr.close;

  codice_passato := mmt.fieldbyname('progressivo').asinteger;
  esegui_programma('GESMOV', codice_passato, true);

  v_log.Lines.SaveToFile(copy(v_nome_file.text, 1, length(v_nome_file.text) - 3) + '.log');
  Close;
end;

procedure TA31MOVUBM.aggiorna_ubicazioni(mmt: tmyquery_go; progressivo_mmt, riga_mmt: integer; art_codice, tub_codice, tipo_movimento: string; quantita: double);
begin

  ubm.close;
  ubm.parambyname('progressivo').asinteger := progressivo_mmt;
  ubm.parambyname('riga').asinteger := riga_mmt;
  ubm.parambyname('art_codice').asstring := art_codice;
  ubm.parambyname('tub_codice').asstring := tub_codice;
  ubm.open;
  if ubm.eof then
  begin
    ubm.append;
    ubm.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(ubm.connection), 'ubm_progressivo');
    ubm.fieldbyname('data_registrazione').asdatetime := mmt.fieldbyname('data_registrazione').asdatetime;
    ubm.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
    ubm.fieldbyname('doc_progressivo_origine').asinteger := progressivo_mmt;
    ubm.parambyname('riga').asinteger := riga_mmt;
    ubm.fieldbyname('doc_riga_origine').asinteger := riga_mmt;
    ubm.fieldbyname('art_codice').asstring := art_codice;
    ubm.fieldbyname('tub_codice').asstring := tub_codice;
    ubm.fieldbyname('tmo_codice').asstring := mmt.fieldbyname('tmo_codice').asstring;
    if tipo_movimento = 'incrementa' then
    begin
      ubm.fieldbyname('tipo_movimento').asstring := 'carico';
      ubm.fieldbyname('segno').asfloat := 1;
    end
    else
    begin
      ubm.fieldbyname('tipo_movimento').asstring := 'scarico';
      ubm.fieldbyname('segno').asfloat := -1;
    end;
    ubm.post;
  end;
  ubm.edit;
  ubm.fieldbyname('quantita').asfloat := quantita;
  ubm.post;
end;

function TA31MOVUBM.controlla_dati(riga: integer): boolean;
begin
  result := true;
  if not read_tabella(arc.arcdit, 'art', 'codice', trim(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga])) then
  begin
    v_log.lines.add(' riga ' + inttostr(riga) + ' articolo ' + trim(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga]) + ' non esiste.');
    result := false;
  end;
  if not read_tabella(arc.arcdit, 'tub', 'codice', trim(xlsRead.sheets[0].asstring[FLD_TUB_CODICE_01, riga])) then
  begin
    v_log.lines.add(' riga ' + inttostr(riga) + ' articolo ' + xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga] + ' ubicazione ' + trim(xlsRead.sheets[0].asstring[FLD_TUB_CODICE_01, riga]) + ' ubicazione non esiste.');
    result := false;
  end;

  v_log.lines.add(' riga ' + inttostr(riga) + ' corretta --------------------');

end;

initialization

registerclass(TA31MOVUBM);

end.
