unit GGA31IMPUBM;

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

  TA31IMPUBM = class(TELABORA)
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
    procedure aggiorna_ubicazioni(movmag: tmovmag; riga_mmt: integer; art_codice, tub_codice, tipo_movimento: string; quantita: double);
    function controlla_dati(riga: integer): boolean;
  public
    art_codice_passato: string;

    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;
  end;

const
  FLD_ART_CODICE = 0;
  FLD_ART_DESCRIZIONE = 1;
  FLD_TMA_CODICE = 2;
  FLD_TUB_CODICE = 3;
  FLD_QTA = 4;

var
  A31IMPUBM: TA31IMPUBM;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE;

procedure TA31IMPUBM.controllo_campi;
begin
  nome_file_controllo;
end;

procedure TA31IMPUBM.visualizza_stampa_elabora;
begin

end;

procedure TA31IMPUBM.FormShow(Sender: TObject);
begin
  inherited;

  if arc.dit.fieldbyname('ubicazione_multipla').asstring <> 'si' then
  begin
    messaggio(000, 'non è stata attivata, in anagrafica ditta, la gestione dell''ubicazione multipla');
    close;
  end;
  v_data.date := date;
end;

procedure TA31IMPUBM.v_confermaClick(Sender: TObject);
var
  movmag: tmovmag;

  progressivo_mmt, riga_mmt, riga: integer;
  tipo_movimento: string;
begin
  tab_pagina2_abilitata := true;
  inherited;

  importa_ubicazioni_da_xls;
end;

procedure TA31IMPUBM.v_sfogliaClick(Sender: TObject);
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

procedure TA31IMPUBM.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TA31IMPUBM.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tma, v_tma_codice, blocco, nil, nil, nil);

  if tma.fieldbyname('tub_codice').asstring <> '' then
  begin
    messaggio(002, 'Magazzino con ubicazione fissa');
    fuoco(v_tma_codice);
    abort;
  end;

end;

procedure TA31IMPUBM.v_tmo_codice_caricoExit(Sender: TObject);
begin
  inherited;
  tmo_codice_carico_controllo(true);
end;

procedure TA31IMPUBM.tmo_codice_carico_controllo(blocco: boolean);
begin
  tabella_controllo(false, tmo_carico, v_tmo_codice_carico, blocco, nil, nil, nil);
end;

procedure TA31IMPUBM.nome_file_controllo;
begin
  if v_nome_file.text = '' then
  begin
    messaggio(002, label2.caption);
    v_sfoglia.click;
    abort;
  end;
end;

procedure TA31IMPUBM.Panel4Enter(Sender: TObject);
begin
  inherited;
 //
end;

procedure TA31IMPUBM.importa_ubicazioni_da_xls;
var
  movmag: tmovmag;

  progressivo_mmt, riga_mmt, riga: integer;
  tipo_movimento: string;
begin
  inherited;

  screen.cursor := crhourglass;
  XlsRead.filename := v_nome_file.text;
  XlsRead.Read;
  screen.cursor := crdefault;
  if XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, 1] <> v_tma_codice.text then
  begin
    messaggio(000, 'File Inventario magazzino [' + XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, 1] + '] <> da codice movimento magazzino [' + v_tma_codice.text + ']');
    exit;
  end;

  // carico
  movmag := tmovmag.create(arc.arcdit);
  movmag.tmo_codice := v_tmo_codice_carico.text;
  movmag.tma_codice := v_tma_codice.text;
  movmag.tmo_codice_collegato := '';
  movmag.tma_codice_collegato := '';
  movmag.data_registrazione := v_data.date;
  movmag.numero_documento := 0;
  movmag.serie_documento := '';
  movmag.data_documento := v_data.date;
  movmag.cfg_tipo := '';
  movmag.cfg_codice := '';
  movmag.ese_codice := esercizio;
  movmag.tva_codice := divisa_di_conto;
  movmag.cambio := 1;
  movmag.tipo_documento := '';
  movmag.documento_origine := '';
  movmag.doc_progressivo_origine := 0;
  movmag.progressivo_collegato := 0;
  movmag.descrizione := '';
  movmag.opt_progressivo := 0;
  movmag.olt_progressivo := 0;
  movmag.progressivo_collegato_dsb := 0;
  movmag.doc_riga_origine := 0;
  movmag.doc_riga_dettaglio_origine := 0;
  movmag.doc_riga_dettaglio_ult_origine := 0;
  movmag.cms_codice := '';
  movmag.tipologia := '';
  movmag.crea_mmt;

  progressivo_mmt := movmag.progressivo_mmt;

  mmr.close;
  mmr.sql.clear;
  mmr.sql.add('select * from mmr');
  mmr.sql.add('where');
  mmr.sql.add('progressivo=:progressivo and ');
  mmr.sql.add('riga=:riga');

  v_log.lines.clear;
  for riga := 1 to XlsRead.Sheets[0].LastRow do
  begin
    controllo_interrompi;

    xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga]);
    xlsRead.sheets[0].asstring[FLD_TUB_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_TUB_CODICE, riga]);
    XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, riga] := TRIM(xlsRead.sheets[0].asstring[FLD_tma_CODICE, riga]);
    if controlla_dati(riga) then
    begin

      ultima_riga.close;
      ultima_riga.parambyname('progressivo').asinteger := progressivo_mmt;
      ultima_riga.open;
      riga_mmt := ultima_riga.fieldbyname('riga').asinteger + 1;

      mmr.close;
      mmr.parambyname('progressivo').asinteger := movmag.progressivo_mmt;
      mmr.parambyname('riga').asinteger := riga_mmt;
      mmr.open;
      if mmr.eof then
      begin
        movmag.progressivo := progressivo_mmt;

        if tmo_carico.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          // storno attuale giacenza ubicazione
          ubm_giac.close;
          ubm_giac.parambyname('tma_codice').asstring := XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, riga];
          ubm_giac.parambyname('art_codice').asstring := XlsRead.Sheets[0].asstring[FLD_ART_CODICE, riga];
          ubm_giac.parambyname('tub_codice').asstring := XlsRead.Sheets[0].asstring[FLD_TUB_CODICE, riga];
          ubm_giac.open;

          riga_mmt := ultima_riga.fieldbyname('riga').asinteger + 1;
          movmag.riga := riga_mmt;
          movmag.art_codice := XlsRead.Sheets[0].asstring[FLD_ART_CODICE, riga];
          movmag.tma_codice_mmr := XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, riga];
          movmag.quantita := 0;
          movmag.tsm_codice := '';
          movmag.tsm_codice_art := '';
          movmag.importo_sconto := 0;
          movmag.prezzo := 0;
          movmag.importo := 0;
          movmag.importo_euro := 0;
          movmag.tipo_movimento := '';
          movmag.importo_spese := 0;
          movmag.importo_spese_euro := 0;
          movmag.descrizione_mmr := '';
          movmag.opt_tipo_articolo := '';
          movmag.olt_tipo_articolo := '';
          movmag.mmr_doc_riga_origine := 0;
          movmag.cms_codice_righe := '';
          movmag.tipologia_righe := '';

          if tmo_carico.fieldbyname('esistenza').asstring = 'incrementa' then
          begin
            movmag.descrizione_mmr := 'storno giacenza articolo ';
            movmag.quantita := ubm_giac.fieldbyname('quantita').asfloat * -1;
            movmag.crea_mmr;
            aggiorna_ubicazioni(movmag, riga_mmt, XlsRead.Sheets[0].asstring[FLD_ART_CODICE, riga], XlsRead.Sheets[0].asstring[FLD_TUB_CODICE, riga], 'decrementa', ubm_giac.fieldbyname('quantita').asfloat)
          end
          else
          begin
            movmag.descrizione_mmr := '';
            movmag.quantita := ubm_giac.fieldbyname('quantita').asfloat;
            movmag.crea_mmr;
            aggiorna_ubicazioni(movmag, riga_mmt, XlsRead.Sheets[0].asstring[FLD_ART_CODICE, riga], XlsRead.Sheets[0].asstring[FLD_TUB_CODICE, riga], 'incrementa', ubm_giac.fieldbyname('quantita').asfloat)
          end;

        end;

        riga_mmt := riga_mmt + 1;
        movmag.riga := riga_mmt;
        movmag.art_codice := XlsRead.Sheets[0].asstring[FLD_ART_CODICE, riga];
        movmag.tma_codice_mmr := XlsRead.Sheets[0].asstring[FLD_TMA_CODICE, riga];
        movmag.quantita := XlsRead.Sheets[0].asfloat[FLD_QTA, riga];
        movmag.tsm_codice := '';
        movmag.tsm_codice_art := '';
        movmag.importo_sconto := 0;
        movmag.prezzo := 0;
        movmag.importo := 0;
        movmag.importo_euro := 0;
        movmag.tipo_movimento := '';
        movmag.importo_spese := 0;
        movmag.importo_spese_euro := 0;
        movmag.descrizione_mmr := '';
        movmag.opt_tipo_articolo := '';
        movmag.olt_tipo_articolo := '';
        movmag.mmr_doc_riga_origine := 0;
        movmag.cms_codice_righe := '';
        movmag.tipologia_righe := '';

        movmag.crea_mmr;

      end
      else
      begin
        riga_mmt := mmr.fieldbyname('riga').asinteger;
        mmr.edit;
        mmr.fieldbyname('quantita').asfloat := mmr.fieldbyname('quantita').asfloat + XlsRead.Sheets[0].asfloat[FLD_QTA, riga];
        if tmo_carico.fieldbyname('esistenza').asstring = 'incrementa' then
        begin
          mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;
        end;
        if tmo_carico.fieldbyname('esistenza').asstring = 'decrementa' then
        begin
          mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
        end;

        mmr.post;
      end;
      // creo ubicazi
      aggiorna_ubicazioni(movmag, riga_mmt, XlsRead.Sheets[0].asstring[FLD_ART_CODICE, riga], XlsRead.Sheets[0].asstring[FLD_TUB_CODICE, riga], tmo_carico.fieldbyname('esistenza').asstring, XlsRead.Sheets[0].asfloat[FLD_QTA, riga])

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

procedure TA31IMPUBM.aggiorna_ubicazioni(movmag: tmovmag; riga_mmt: integer; art_codice, tub_codice, tipo_movimento: string; quantita: double);
begin

  ubm.close;
  ubm.parambyname('progressivo').asinteger := movmag.progressivo_mmt;
  ubm.parambyname('riga').asinteger := riga_mmt;
  ubm.parambyname('art_codice').asstring := art_codice;
  ubm.parambyname('tub_codice').asstring := tub_codice;
  ubm.open;
  if ubm.eof then
  begin
    ubm.append;
    ubm.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(ubm.connection), 'ubm_progressivo');
    ubm.fieldbyname('data_registrazione').asdatetime := movmag.data_registrazione;
    ubm.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
    ubm.fieldbyname('doc_progressivo_origine').asinteger := movmag.progressivo_mmt;
    ubm.parambyname('riga').asinteger := riga_mmt;
    ubm.fieldbyname('doc_riga_origine').asinteger := riga_mmt;
    ubm.fieldbyname('art_codice').asstring := art_codice;
    ubm.fieldbyname('tub_codice').asstring := tub_codice;
    ubm.fieldbyname('tmo_codice').asstring := movmag.tmo_codice;
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
  ubm.fieldbyname('quantita').asfloat := ubm.fieldbyname('quantita').asfloat + quantita;
  ubm.post;
end;

function TA31IMPUBM.controlla_dati(riga: integer): boolean;
begin
  result := true;
  if not read_tabella(arc.arcdit, 'art', 'codice', trim(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga])) then
  begin
    v_log.lines.add(' riga ' + inttostr(riga) + ' articolo ' + trim(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga]) + ' non esiste.');
    result := false;
  end;
  if not read_tabella(arc.arcdit, 'tub', 'codice', trim(xlsRead.sheets[0].asstring[FLD_TUB_CODICE, riga])) then
  begin
    v_log.lines.add(' riga ' + inttostr(riga) + ' articolo ' + trim(xlsRead.sheets[0].asstring[FLD_ART_CODICE, riga]) + ' ubicazione non esiste.');
    result := false;
  end;

  v_log.lines.add(' riga ' + inttostr(riga) + ' corretta --------------------');

end;

initialization

registerclass(TA31IMPUBM);

end.
