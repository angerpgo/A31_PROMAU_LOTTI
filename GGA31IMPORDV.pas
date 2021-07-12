unit GGA31IMPORDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGELABORA, MemDS, VirtualTable, DB, MyAccess, query_go,
  Menus, StdCtrls, Buttons, RzButton, ExtCtrls, ComCtrls, RzTabs, ToolWin,
  Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxLocalization, dateutils, RzSpnEdt, zzdistintabase, cxGridCustomTableView,
  ZZLIBRERIE_PROMAU, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, ZZDICINT, ZZTOTACQ, ZZTOTVEN, zzTIPINV,
  ZZPRZINV, ZZCERCA_PREZZO, ZZPROMAU, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  RzEdit, DBAccess, cxNavigator, (*XLSFonts5,*) XLSReadWriteII5, XLSSheetData5, DMARC;

type

  TA31IMPORDV = class(TELABORA)
    v_nome_file: TRzEdit_go;
    v_sfoglia: Trzbutton;
    xlsdialog: TRzopendialog;
    ovt: tmyquery_go;
    ovr: tmyquery_go;
    cpv: tmyquery_go;
    cli: tmyquery_go;
    Label1: TRzlabel;
    v_cli_codice: TRzEdit_go;
    v_cli_descrizione1: TRzDBEditDescrizione_go;
    cli_ds: tmydatasource;
    query_esiste_opt: tmyquery_go;
    opt: tmyquery_go;
    opr: tmyquery_go;
    mag: tmyquery_go;
    dsb: tmyquery_go;
    art_finiti: tmyquery_go;
    query_figlio: tmyquery_go;
    art: tmyquery_go;
    dsb_tma: tmyquery_go;
    mag_approntato: tmyquery_go;
    art_costo: tmyquery_go;
    frn_rda: tmyquery_go;
    opr_semilav: tmyquery_go;
    cxLocalizer1: TcxLocalizer;
    v_griglia_db: TcxGridDBTableView;
    v_griglia_liv1: TcxGridLevel;
    v_griglia: TcxGrid;
    v_griglia_dbtipo_riga: TcxGridDBColumn;
    v_griglia_dbart_codice: TcxGridDBColumn;
    v_griglia_dbriferimento: TcxGridDBColumn;
    v_griglia_dbpos_riga: TcxGridDBColumn;
    v_griglia_dbqta_01: TcxGridDBColumn;
    v_griglia_dbqta_02: TcxGridDBColumn;
    v_griglia_dbqta_03: TcxGridDBColumn;
    v_griglia_dbqta_04: TcxGridDBColumn;
    v_griglia_dbqta_05: TcxGridDBColumn;
    v_griglia_dbqta_06: TcxGridDBColumn;
    v_griglia_dbqta_07: TcxGridDBColumn;
    v_griglia_dbqta_08: TcxGridDBColumn;
    v_griglia_dbqta_09: TcxGridDBColumn;
    v_griglia_dbqta_10: TcxGridDBColumn;
    v_griglia_dbart_codice_cli: TcxGridDBColumn;
    v_griglia_dbqta_11: TcxGridDBColumn;
    v_griglia_dbqta_12: TcxGridDBColumn;
    v_griglia_dbqta_13: TcxGridDBColumn;
    v_griglia_dbqta_14: TcxGridDBColumn;
    v_griglia_dbqta_15: TcxGridDBColumn;
    v_controllo_ordini: TRzcheckbox;
    v_ordini_clienti: TRzcheckbox;
    v_ordini_produzione: TRzcheckbox;
    sor_go: tmyquery_go;
    sor_xls: tmyquery_go;
    query_sor: tmyquery_go;
    v_filtro: Trzbutton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    cxCellaModificata: TcxStyle;
    cxCellaNormale: TcxStyle;
    v_griglia_dbprogressivo: TcxGridDBColumn;
    Label2: TRzlabel;
    Label4: TRzlabel;
    Label5: TRzlabel;
    v_data_inizio_consegna: TRzDateTimeEdit_go;
    opc: tmyquery_go;
    Label6: TRzlabel;
    v_frn_codice: TRzEdit_go;
    v_frn_descrizione1: TRzDBEditDescrizione_go;
    frn_opt_ds: tmydatasource;
    frn_opt: tmyquery_go;
    corsi: tmyquery_go;
    ovt_c: tmyquery_go;
    Label7: TRzlabel;
    arc_cli: tmyquery_go;
    upd_opr: tmyquery_go;
    v_dispo: TRzcheckbox;
    v_visualizza_giacenze: TRzcheckbox;
    ovr_id: tmyquery_go;
    v_settimane: TRzSpinEdit;
    v_frn_anticipo: TRzSpinEdit;
    v_tdo_descrizione: TRzDBEditDescrizione_go;
    tdo_ds: TMyDataSource;
    tdo: TMyQuery_go;
    mag_tot: TMyQuery_go;
    xlsread: TXLSReadWriteII5;
    Label3: TRzLabel;
    v_tdo_codice: trzedit_go;
    v_griglia_dbqta_00: TcxGridDBColumn;
    assnum_cnt: TMyQuery_go;
    upd_ovr: TMyQuery_go;
    ins_sor: TMyQuery_go;
    sor_cms: TMyQuery_go;
    sor_articoli: TMyQuery_go;
    query_sor2: TMyQuery_go;
    query_pos: TMyQuery_go;
    ind: TMyQuery_go;
    GroupBox1: TGroupBox;
    v_cancella_oat_terzi_totale: TCheckBox;
    v_cancella_opt_totale: TCheckBox;
    v_cancella_ovt_totale: TCheckBox;
    query_righe: TMyQuery_go;
    procedure v_sfogliaClick(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_cli_codiceClick(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);
    procedure v_griglia_dbCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure v_filtroClick(Sender: TObject);
    procedure v_griglia_dbqta_01StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_02StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_03StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_04StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_05StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_06StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_07StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_08StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_09StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_10StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_11StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_12StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_13StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_14StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure v_griglia_dbqta_15StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure pannello_parametriExit(Sender: TObject);
    procedure v_frn_codiceExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_tdo_codiceExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  protected
    progressivo_lav: integer;
    progressivo_ovt: integer;
    riga: integer;

    quantita_evasa, quantita, disponibilita: double;

    art_codice_spese_extra, art_codice_spese_trasporto, art_codice_spese_bollo, art_codice_spese_incasso, art_codice_cassa_professionisti, art_codice_sconti_fattura, art_codice_sconto_cassa, gen_codice_ritenuta, tiv_codice_omaggi, listini_scaglioni, tiv_codice_spese_extra, tca_codice_spese_extra,
      tca_codice_trasporto, tiv_codice_spese_bollo, tca_codice_bollo, tiv_codice_spese_incasso,
      tiv_codice_cassa_professionisti, tca_codice_cassa_professionisti, tca_codice_spese_incasso, tca_codice_sconto_cassa, tca_codice_sconti_fattura, tca_codice, tcc_codice, tiv_codice, gen_codice, taq_codice_sconto_cassa, taq_codice_sconti_fattura: string;

    tmo_codice_finiti, tma_codice_finiti, tmo_codice_materie_prime, tma_codice_materie_prime, tda_codice_produzione_presso_terzi, art_codice_sconti_fattura_acq, art_codice_sconto_cassa_acq, costo_produzione, varia_dsb_ordp, tipo_esplosione, codice_finito: string;

    sconto_imponibile_lordo: string;
    sconto_massimo_art: double;
    blocco_sconto_massimo_art: string;

    numero_documento, numero_documento_precedente: integer;
    Data_precedente: TDatetime;

    progressivo_padre, numero_riga_padre: double;

    ovr_produzione, opr_produzione, ovr_ultimo, ovr_cancella, ovr_ritardi, cms_ultimo, cms, cmt, oat, oar, oar_produzione, oat_esistente, oar_ultimo, cpa, frn, lavorazioni, opc_gesorda, ins_promau_lav: tmyquery_go;

    Value: Variant;

    art_codice: string;
    art_esponente: string;
    contratto: string;
    rif_contratto: string;
    pos_riga: integer;
    prezzo_speciale: double;
    commessa_cliente: string;
    data_commessa: variant;

    qta_consegna: array [0 .. 11] of double;
    data_consegna: array [0 .. 11] of tdatetime;
    settimana_consegna: array [0 .. 11] of string;

    creazione_automatica: boolean;

    nome_file: string;
    nome_qta: string;
    nome_data_consegna: string;

    filtro_record: boolean;

    data_inizio: tdatetime;
    settimana_attuale: integer;

    id: integer;

    tipo_prezzo: string;

    dicint: tdicint;
    totacq: ttotacq;
    totven: ttotven;
    cerca_prezzi: tcerca_prezzo;
    tipinv: ttipinv;
    przinv: tprzinv;

    lista_articoli: tstringlist;

    procedure cli_codice_controllo(blocco: boolean);
    procedure tdo_codice_controllo(blocco: boolean);
    procedure frn_codice_controllo(blocco: boolean);
    procedure nome_file_controllo;
    procedure importa_ordini_xls;
    function assegna_valore(sheet: TXLSWorkSheet; colonna, riga: integer; default: variant): variant;

    procedure genera_ordini_clienti;
    procedure genera_ordini_produzione;

    function cerca_data_consegna(data_riga: tdatetime): integer;
    procedure calcola_data_consegna;

    procedure crea_distinta_base(tipo_documento, cli_codice, tdo_codice: string; data_documento: tdatetime; ovr_progressivo, ovr_riga, progressivo_origine, riga_origine: integer; art_codice, art_codice_semilavorato: string; quantita: double; data_consegna: tdatetime;
      cms_codice, cmt_codice, nota, opt_ritardo, opt_archivio, art_codice_semilav_forza, frn_codice_terzista: string);
    procedure esplosione_distinta(data_documento: tdatetime; ovr_progressivo, ovr_riga, opt_progressivo: integer; tipo_documento, nota, opt_tipo_esplosione, opt_formula, opt_art_codice, opt_tma_codice_finito, opt_frn_codice, opt_ritardo, opt_cms_codice, opt_tipologia, opt_tma_codice: string;
      opt_quantita: double; opt_data_documento, opt_data_consegna: tdatetime; gg_anticipo: double; art_codice_semilav_forza, frn_codice_terzista: string);
    function figlio(art_codice: string; data_documento: tdatetime): boolean;
    procedure assegna_livello_distinta(art_codice: string; quantita: double);
    procedure genera_sottolivelli(data_documento: tdatetime; opt_tipo_esplosione, semilavorato, art_codice, art_codice_semilavorato, tma_codice, note, cms_codice, tipologia: string; quantita: double; ovr_progressivo, ovr_riga, progressivo_origine, riga_origine: integer; data_consegna: tdatetime;
      opt_ritardo, art_codice_semilav_forza, frn_codice_terzista: string);
    function costo_unitario(art_codice: string): double;

    procedure crea_ovt(cli_codice, indirizzo, rif_contratto, cms_codice, commessa, art_codice_semilav, frn_codice_terzista: string; data_commessa: variant);
    procedure assegna_ovt_indirizzo;
    procedure crea_ovr(progressivo, riga: integer; cms_codice, tdo_codice, art_codice_semilav, frn_codice_terzista: string);
    procedure crea_dsb(art_codice: string; data_consegna: tdatetime; quantita: double; art_codice_semilav, frn_codice_terzista: string);
    procedure cerca_commessa(var cms_codice: string; tipologia, tdo_codice, art_codice, art_descrizione1: string; data_consegna: tdatetime);
    procedure crea_ordine_lavorazione_presso_terzi(frn_codice: string; data_consegna: tdatetime; gg_anticipo: double; quantita: double);
    procedure assegna_oat_indirizzo;

    procedure calcola_importo;

    procedure crea_ritardi_cliente(cli_codice, art_codice_finito, art_codice, frn_codice: string; quantita: double; data_consegna: tdatetime; cms_codice, tipologia, tipo_articolo: string);

    procedure visualizza_descrizioni(blocco: boolean);
    procedure controllo_campi; override;
    procedure controlla_ordini_da_cancellare(cms_codice, tipologia: string);
    procedure cancella_ritardi;
    procedure cancella_ordini_fornitori_terzi(art_codice, cms_codice: string; posizione: integer);
    procedure cancella_ordini_fornitori_terzi_totale;
    procedure cancella_ordini_produzione_totale;
    procedure cancella_ordini_clienti_totale;
    procedure cancella_rda_produzione(cms_codice: string; posizione: integer);
    procedure cancella_ordini_produzione(art_codice, cms_codice: string; posizione: integer; tdo_codice: string);
    procedure cancella_ordini_clienti(cms_codice,frn_codice_terzista: string; posizione: integer);
    procedure annulla_ordini_produzione(documento_origine: string; progressivo, riga: integer);
    procedure annulla_ordini_fornitori_terzi_parziali(art_codice, frn_codice, cms_codice, cmt_codice: string; data_consegna: tdatetime);

    procedure esplodi_cicli_lavorazione(opt_progressivo: integer; art_codice: string; quantita: double; var data_consegna: tdatetime; gg_anticipo: double);
    procedure esplodi_cicli_lavorazione_ritardi(art_codice: string; quantita: double; data_consegna: tdatetime; gg_anticipo: double);
    procedure scrivi_log(stringa: string);

    function controllo_quantita(art_codice, tma_codice_finiti, tipo_articolo: string; quantita, quantita_da_evadere: double): double;
    procedure scrivi_disponibilita(art_codice, tma_codice: string; disponibilita: double);
    procedure controlla_transazione;
    procedure azzera_ordini_produzione_ovr_progressivo;

    procedure assegna_numerazione(connessione: tmyconnection_go; codice_ditta, tipo, serie: string; data: tdatetime; var data_precedente: tdatetime; var progressivo, progressivo_precedente: integer; aggiorna: boolean; avviso: boolean = true);
    procedure cancella_testate_senza_righe;
    procedure inserisci_articolo_log(cli_codice, contratto: string; posizione: integer; art_codice, art_esponente, codice_controllo, testo_messaggio: string);
    procedure inserisci_articolo_ordine(tipo_documento, cli_codice, indirizzo, tlv_codice, contratto: string; posizione: integer; art_codice, art_codice_cliente, art_esponente, commessa_cliente, art_codice_semilav, frn_codice_terzista: string; data_riferimento: variant; prezzo_speciale: double);
  public
    tipo_documento: string;
    logfile: textfile;

    { Public declarations }
  end;

var
  A31IMPORDV: TA31IMPORDV;

const
  FLD_ART_CODICE = 0;
  FLD_ART_ESPONENTE = 1;
  FLD_ART_DESCRIZIONE = 2;
  FLD_QTA_CONS = 3;
  FLD_INDIRIZZO = 4;
  FLD_ART_CODICE_SEMILAV = 5;
  FLD_FRN_CODICE_TERZISTA = 6;
  //  FLD_QTA_ULTIMO_DDT = 5;
  //  FLD_NR_ULTIMO_DDT = 6;
  FLD_DATA_ULTIMO_DDT = 7;
  FLD_CONTRATTO = 8;
  FLD_POSIZIONE = 9;
  FLD_PREZZO_SPECIALE = 10;
  FLD_COMMESSA = 11;
  FLD_DATA_COMMESSA = 12;
  FLD_QTA_00 = 13;
  FLD_QTA_01 = 14;
  FLD_QTA_02 = 15;
  FLD_QTA_03 = 16;
  FLD_QTA_04 = 17;
  FLD_QTA_05 = 18;
  FLD_QTA_06 = 19;
  FLD_QTA_07 = 20;
  FLD_QTA_08 = 21;
  FLD_QTA_09 = 22;
  FLD_QTA_10 = 23;
  FLD_QTA_11 = 24;

implementation

uses zzPARSING, GGAVVISO;

{$r *.dfm}


procedure TA31IMPORDV.v_cli_codiceClick(Sender: TObject);
begin
  inherited;

  cli_codice_controllo(true);

end;

procedure TA31IMPORDV.v_cli_codiceExit(Sender: TObject);
begin
  inherited;

  if (arc.dit.fieldbyname('codice_nom_numerico').asstring = 'si') and (length(v_cli_codice.text) < 8) then
  begin
    v_cli_codice.text := setta_lunghezza(v_cli_codice.text, 8, true, '0');
  end;

  cli_codice_controllo(true);
end;

procedure TA31IMPORDV.cli_codice_controllo(blocco: boolean);
begin

  tabella_controllo(false, cli, v_cli_codice, blocco, nil, nil, nil);

  if v_cli_codice.text = '' then
  begin
    v_cli_codice.setfocus;
  end;

end;

procedure TA31IMPORDV.frn_codice_controllo(blocco: boolean);
begin

  tabella_controllo(false, frn_opt, v_frn_codice, blocco, nil, nil, nil);

  if v_frn_codice.text = '' then
  begin
    v_frn_codice.setfocus;
  end;

end;

procedure TA31IMPORDV.v_frn_codiceExit(Sender: TObject);
begin
  inherited;

  frn_codice_controllo(true);

end;

procedure TA31IMPORDV.nome_file_controllo;
begin

  if v_nome_file.text = '' then
  begin
    v_sfoglia.click;
  end;

end;

procedure TA31IMPORDV.pannello_parametriExit(Sender: TObject);
begin
  inherited;
  calcola_data_consegna;
end;

procedure TA31IMPORDV.visualizza_descrizioni(blocco: boolean);
begin
  cli_codice_controllo(blocco);
  tdo_codice_controllo(blocco);
  frn_codice_controllo(blocco);
end;

procedure TA31IMPORDV.controllo_campi;
begin
  cli_codice_controllo(true);
  tdo_codice_controllo(true);
  frn_codice_controllo(true);
  nome_file_controllo;
end;

procedure TA31IMPORDV.v_confermaClick(Sender: TObject);
begin

  controllo_campi;

  calcola_data_consegna;

  v_conferma.enabled := false;
  v_cli_codice.enabled := false;
  v_frn_codice.enabled := false;
  v_tdo_codice.enabled := false;
  v_controllo_ordini.enabled := false;
  v_ordini_clienti.enabled := false;
  v_ordini_produzione.enabled := false;
  screen.cursor := crhourglass;

  importa_ordini_xls;

  tab_pagina2_abilitata := true;
  inherited;

  screen.cursor := crdefault;
  v_conferma.enabled := true;
end;

procedure TA31IMPORDV.v_filtroClick(Sender: TObject);
begin
  inherited;
  if filtro_record then
  begin
    sor2.filter := 'utn_codice =' + quotedstr(utente);
    filtro_record := false;
  end
  else
  begin
    sor2.filter := 'utn_codice =' + quotedstr(utente) + ' and flag_quadra =' + quotedstr('no');
    filtro_record := true;
  end;

  sor2.refresh;
end;

procedure TA31IMPORDV.v_griglia_dbCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  Progressivo: integer;
  tipo_riga: string;

  aprogressivo: tcxcustomgridtableitem;
  atipo_riga: tcxcustomgridtableitem;

begin
  inherited;

  aprogressivo := (Sender as TcxGridDBTableView).GetColumnByFieldName('progressivo');
  atipo_riga := (Sender as TcxGridDBTableView).GetColumnByFieldName('tipo_riga');

  if (tipo_riga = 'ordine gestionale') and (Progressivo > 0) then
  begin
    esegui_programma('gesordv', progressivo, true);
  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_01StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := (Sender as TcxGridDBTableView).GetColumnByFieldName('qta_modificato_01');
  adata_consegna_mod := (Sender as TcxGridDBTableView).GetColumnByFieldName('data_consegna_modificata_01');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;
  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_02StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_02');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_02');

  AStyle := cxcellaNormale;

  if aqta_mod <> nil then
  begin

    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_03StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_03');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_03');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_04StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_04');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_04');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_05StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_05');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_05');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_06StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_06');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_06');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_07StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_07');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_07');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_08StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_08');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_08');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_09StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_09');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_09');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_10StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_10');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_10');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_11StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_11');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_11');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_12StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_12');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_12');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_13StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_13');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_13');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_14StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificato_14');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_14');

  if (aqta_mod <> nil) and (adata_consegna_mod <> nil) then
  begin
    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_griglia_dbqta_15StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aqta_mod: tcxcustomgridtableitem;
  adata_consegna_mod: tcxcustomgridtableitem;
begin
  inherited;

  aqta_mod := aRecord.GridView.FindItemByName('qta_modificata_15');
  adata_consegna_mod := aRecord.GridView.FindItemByName('data_consegna_modificata_15');

  if aqta_mod <> nil then
  begin

    AStyle := cxcellaNormale;
    if (aqta_mod.EditValue = 'si') or (adata_consegna_mod.EditValue = 'si') then
    begin
      AStyle := cxcellaModificata;
    end;

  end;

end;

procedure TA31IMPORDV.v_sfogliaClick(Sender: TObject);
begin
  inherited;
  if promau_path_file <> '' then
  begin
    //   xlsdialog.InitialDir := promau_path_file;
  end;

  if xlsdialog.execute then
  begin
    promau_path_file := ExtractFilePath(xlsdialog.FileName);
    v_nome_file.enabled := true;
    v_nome_file.text := xlsdialog.FileName;
    v_nome_file.enabled := false;

    xlsread.filename := v_nome_file.text;
    xlsread.read;
  end;

end;

procedure TA31IMPORDV.v_tdo_codiceExit(Sender: TObject);
begin
  inherited;
  tdo_codice_controllo(true);
end;

procedure TA31IMPORDV.tdo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tdo, v_tdo_codice, blocco, nil, nil, nil);

  if tdo.fieldbyname('tipo_documento').asstring <> 'ordine' then
  begin
    messaggio(000, 'Causale documento non valida.');
    v_tdo_codice.setfocus;
    abort;
  end;

end;

procedure TA31IMPORDV.importa_ordini_xls;
var
  i, j: integer;
  art_codice_finito, cms_codice, indirizzo, tlv_codice, tsm_codice, tsm_art_codice, testo_messaggio: string;
  art_codice_cliente, art_codice_semilav, frn_codice_terzista: string;
  prezzo: double;
  flag_continua: boolean;
begin

  nome_file := cartella_installazione + '..\log\' + formatdatetime('yyyy_mm_dd_hh_nn_ss', now) + '_ordini_cancella.log';

  assignfile(logfile, nome_file);
  rewrite(logfile);

  nome_tabella := 'promau_impordv_log';
  azzera_tabella(nome_tabella, sor1);

  nome_tabella := 'promau_impordv_articoli';
  azzera_tabella(nome_tabella, sor1);

  nome_tabella := 'promau_impordv_contratti';
  azzera_tabella(nome_tabella, sor1);

  nome_tabella := 'gesordp';
  azzera_tabella(nome_tabella, sor1);
  sor1.indexfieldnames := 'utn_codice,id,art_codice';

  nome_tabella := 'promau_impordv';
  azzera_tabella(nome_tabella, sor2);

  query_sor2.close;
  query_sor2.sql.clear;
  query_sor2.sql.add('select * from promau_impordv');
  query_sor2.sql.add('where');
  query_sor2.sql.add('utn_codice =:utn_codice and');
  query_sor2.sql.add('riferimento =:riferimento and');
  query_sor2.sql.add('pos_riga =:pos_riga and');
  query_sor2.sql.add('tipo_riga =:tipo_riga and');
  query_sor2.sql.add('art_codice_cli =:art_codice_cliente and');
  query_sor2.sql.add('art_esponente =:art_esponente and');
  query_sor2.sql.add('art_codice_semilav =:art_codice_semilav and');
  query_sor2.sql.add('frn_codice_terzista =:frn_codice_terzista');

  v_nome_file.enabled := true;
  v_nome_file.text := xlsdialog.filename;
  v_nome_file.enabled := false;

  writeln(logfile, '----------------------------------------------');
  writeln(logfile, 'nome file XLS importato: ' + v_nome_file.text + ' ' + formatdatetime('dd/mm/yyyy hh:nn:ss', now));
  writeln(logfile, '----------------------------------------------');

  with XlsRead do

    try
      Self.update;

      if true then
      begin
        lista_articoli.clear;

        for i := 1 to Sheets[0].Lastrow do
        begin
          // 1. riga intestazione
          // 2. riga intestazione devo memorizzare il piano di consegna ?????
          // 3. riga articoli
          Application.processmessages;

          controllo_interrompi;

          statusbar.panels[1].text := 'riga nr ' + inttostr(i) + '/' + inttostr(Sheets[0].Lastrow);

          if (i > 1) and (not v_controllo_ordini.checked) then
          begin
            break;
          end;

          if i = 1 then
          begin

            if (sheets[0].Asstring[FLD_QTA_01, i] = '0') then
            begin
              lista_articoli.add('settimana 1 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_02, i] = '0') then
            begin
              lista_articoli.add('settimana 2 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_03, i] = '0') then
            begin
              lista_articoli.add('settimana 3 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_04, i] = '0') then
            begin
              lista_articoli.add('settimana 4 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_05, i] = '0') then
            begin
              lista_articoli.add('settimana 5 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_06, i] = '0') then
            begin
              lista_articoli.add('settimana 6 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_07, i] = '0') then
            begin
              lista_articoli.add('settimana 7 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_08, i] = '0') then
            begin
              lista_articoli.add('settimana 8 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_09, i] = '0') then
            begin
              lista_articoli.add('settimana 9 =0');
            end;
            if (sheets[0].Asstring[FLD_QTA_10, i] = '0') then
            begin
              lista_articoli.add('settimana 10 =0');
            end;

            if (sheets[0].Asstring[FLD_QTA_11, i] = '0') then
            begin
              lista_articoli.add('settimana 11 =0');
            end;

            if lista_articoli.count > 0 then
            begin
              break;
            end;

            data_consegna[00] := date;
            data_consegna[01] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_01, 0], sheets[0].AsInteger[FLD_QTA_01, i], ditta, esercizio);
            data_consegna[02] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_02, 0], sheets[0].asinteger[FLD_QTA_02, i], ditta, esercizio);
            data_consegna[03] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_03, 0], sheets[0].asinteger[FLD_QTA_03, i], ditta, esercizio);
            data_consegna[04] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_04, 0], sheets[0].asinteger[FLD_QTA_04, i], ditta, esercizio);
            data_consegna[05] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_05, 0], sheets[0].asinteger[FLD_QTA_05, i], ditta, esercizio);
            data_consegna[06] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_06, 0], sheets[0].asinteger[FLD_QTA_06, i], ditta, esercizio);
            data_consegna[07] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_07, 0], sheets[0].asinteger[FLD_QTA_07, i], ditta, esercizio);
            data_consegna[08] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_08, 0], sheets[0].asinteger[FLD_QTA_08, i], ditta, esercizio);
            data_consegna[09] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_09, 0], sheets[0].asinteger[FLD_QTA_09, i], ditta, esercizio);
            data_consegna[10] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_10, 0], sheets[0].asinteger[FLD_QTA_10, i], ditta, esercizio);
            data_consegna[11] := calcola_consegna(sheets[0].AsInteger[FLD_QTA_11, 0], sheets[0].asinteger[FLD_QTA_11, i], ditta, esercizio);

            settimana_consegna[01] := inttostr(sheets[0].asinteger[FLD_QTA_01, i]);
            settimana_consegna[02] := inttostr(sheets[0].asinteger[FLD_QTA_02, i]);
            settimana_consegna[03] := inttostr(sheets[0].asinteger[FLD_QTA_03, i]);
            settimana_consegna[04] := inttostr(sheets[0].asinteger[FLD_QTA_04, i]);
            settimana_consegna[05] := inttostr(sheets[0].asinteger[FLD_QTA_05, i]);
            settimana_consegna[06] := inttostr(sheets[0].asinteger[FLD_QTA_06, i]);
            settimana_consegna[07] := inttostr(sheets[0].asinteger[FLD_QTA_07, i]);
            settimana_consegna[08] := inttostr(sheets[0].asinteger[FLD_QTA_08, i]);
            settimana_consegna[09] := inttostr(sheets[0].asinteger[FLD_QTA_09, i]);
            settimana_consegna[10] := inttostr(sheets[0].asinteger[FLD_QTA_10, i]);
            settimana_consegna[11] := inttostr(sheets[0].asinteger[FLD_QTA_11, i]);

          end
          else
          begin
            //------------------------------------------------------------------------
            // lettura riga
            //------------------------------------------------------------------------
            art_codice := assegna_valore(sheets[0], FLD_ART_CODICE, i, ''); // articolo
            art_esponente := trim(assegna_valore(sheets[0], FLD_ART_ESPONENTE, i, '')); // articolo

            indirizzo := assegna_valore(sheets[0], FLD_INDIRIZZO, i, '');
            if indirizzo = '0' then
            begin
              indirizzo := '';
            end;

            if art_codice = '' then
            begin
              break;
            end;

            contratto := assegna_valore(sheets[0], FLD_CONTRATTO, i, '');

            if (v_cli_codice.text = '00000814') and (length(art_codice) < 9) then
            begin
              art_codice := setta_lunghezza(art_codice, 9, true, '0');
            end;

            try
              pos_riga := assegna_valore(sheets[0], FLD_POSIZIONE, i, 0);
            except
              pos_riga := 0;
            end;

            try
              prezzo_speciale := assegna_valore(sheets[0], FLD_PREZZO_SPECIALE, i, 0);
            except
              prezzo_speciale := 0;
            end;

            try
              commessa_cliente := assegna_valore(sheets[0], FLD_COMMESSA, i, 0);
            except
              commessa_cliente := '';
            end;

            try
              data_commessa := assegna_valore(sheets[0], FLD_DATA_COMMESSA, i, 0);
            except
              data_commessa := null;
            end;
            //------------------------------------------------------------------------

            // --------------------------------------------------------------
            // modifica promau
            // 07.01.2012 se contratto = blank scarta la riga
            // --------------------------------------------------------------

            if contratto <> '' then
            begin

              qta_consegna[00] := assegna_valore(sheets[0], FLD_QTA_00, i, 0);
              qta_consegna[01] := assegna_valore(sheets[0], FLD_QTA_01, i, 0);
              qta_consegna[02] := assegna_valore(sheets[0], FLD_QTA_02, i, 0);
              qta_consegna[03] := assegna_valore(sheets[0], FLD_QTA_03, i, 0);
              qta_consegna[04] := assegna_valore(sheets[0], FLD_QTA_04, i, 0);
              qta_consegna[05] := assegna_valore(sheets[0], FLD_QTA_05, i, 0);
              qta_consegna[06] := assegna_valore(sheets[0], FLD_QTA_06, i, 0);
              qta_consegna[07] := assegna_valore(sheets[0], FLD_QTA_07, i, 0);
              qta_consegna[08] := assegna_valore(sheets[0], FLD_QTA_08, i, 0);
              qta_consegna[09] := assegna_valore(sheets[0], FLD_QTA_09, i, 0);
              qta_consegna[10] := assegna_valore(sheets[0], FLD_QTA_10, i, 0);
              qta_consegna[11] := assegna_valore(sheets[0], FLD_QTA_11, i, 0);

              // --------------------------------------------------------------
              // modifica promau
              // 24.04.2014 se qts = o ordine per magazzino secondo scorta minima
              // --------------------------------------------------------------

              //------------------------------------------------------------------------
              // se ordine promau cerco il codice articolo diretto
              //------------------------------------------------------------------------
              //promau_frn_codice
              flag_continua := true;

              if v_cli_codice.text = '00001651' then
              begin
                art_finiti.close;
                art_finiti.parambyname('codice').asstring := art_codice;
                art_finiti.open;
                if art_finiti.eof then
                begin
                  testo_messaggio := ' ***** contratto ' + contratto + ' ***** pos. ' + formatfloat('####0', pos_riga) + ' ** codice cliente [ ' + v_cli_codice.text + ' ] ' + ' ** articolo cliente [ ' + art_codice + ' ] non esiste in anagrafica articoli cliente ***** ';

                  inserisci_articolo_log(v_cli_codice.text, contratto, pos_riga, art_codice, '', 'articolo', testo_messaggio);
                  flag_continua := false;
                end

              end
              else
              begin

                art_finiti.close;
                art_finiti.parambyname('codice').asstring := art_codice;
                art_finiti.open;
                if art_finiti.fieldbyname('tcm_codice').asstring <> 'AVV' then
                begin

                  //------------------------------------------------------------------------
                  // ordine cliente
                  // cerco codice articoli cliente + esponente
                  //------------------------------------------------------------------------
                  arc_cli.close;
                  arc_cli.parambyname('cli_codice').asstring := v_cli_codice.text;
                  arc_cli.parambyname('codice_articolo_cliente').asstring := art_codice;
                  arc_cli.parambyname('art_esponente').asstring := trim(art_esponente);
                  arc_cli.open;
                  if arc_cli.eof then
                  begin
                    testo_messaggio := ' ***** contratto ' + contratto + ' ***** pos. ' + formatfloat('####0', pos_riga) + ' ** codice cliente [ ' + v_cli_codice.text + ' ] ' + ' ** articolo cliente [ ' + art_codice + ' ] ' + 'esponente [' + art_esponente +
                      '] non esiste in anagrafica articoli cliente ***** ';

                    inserisci_articolo_log(v_cli_codice.text, contratto, pos_riga, art_codice, art_esponente, 'articolo', testo_messaggio);
                    flag_continua := false;
                  end
                  else
                  begin
                    art_codice := arc_cli.fieldbyname('art_codice').asstring;
                    art_codice_cliente := arc_cli.fieldbyname('codice_articolo_cliente').asstring;
                  end;
                end
                else
                begin

                end;

              end;

              //------------------------------------------------------------------------
              // 09.09.2020 INSERITI ART CODICE SEMILAV
              // cerco se esiste il codice del semilavorato
              //------------------------------------------------------------------------
              art_codice_semilav := assegna_valore(sheets[0], FLD_ART_CODICE_SEMILAV, i, '');
              if art_codice_semilav <> '' then
              begin

                art_finiti.close;
                art_finiti.parambyname('codice').asstring := art_codice_semilav;
                art_finiti.open;

                if art_finiti.eof then
                begin
                  testo_messaggio := ' ***** contratto ' + contratto + ' ***** pos. ' + formatfloat('####0', pos_riga) + ' ** codice cliente [ ' + v_cli_codice.text + ' ] ' + ' ** articolo semilavorato [ ' + assegna_valore(sheets[0], FLD_ART_CODICE_SEMILAV, i, '') + ' ] non esiste in anagrafica articoli ***** ';

                  inserisci_articolo_log(v_cli_codice.text, contratto, pos_riga, art_codice_semilav, '', 'articolo', testo_messaggio);
                  flag_continua := false;
                end;
              end;
              //------------------------------------------------------------------------
              // 09.09.2020 INSERITI FRN CODICE TERZISTA
              //------------------------------------------------------------------------
              frn_codice_terzista := assegna_valore(sheets[0], FLD_FRN_CODICE_TERZISTA, i, '');
              if frn_codice_terzista <> '' then
              begin
                read_tabella(arc.arcdit, 'frn', 'codice', assegna_valore(sheets[0], FLD_FRN_CODICE_TERZISTA, i, ''));
                if archivio.eof then
                begin

                  testo_messaggio := ' ***** contratto ' + contratto + ' ***** pos. ' + formatfloat('####0', pos_riga) + ' ** codice cliente [ ' + v_cli_codice.text + ' ] ' + ' ** codice terzista [ ' + assegna_valore(sheets[0], FLD_FRN_CODICE_TERZISTA, i, '') + ' ] non esiste codice fornitore ***** ';

                  inserisci_articolo_log(v_cli_codice.text, contratto, pos_riga, art_finiti.parambyname('codice').asstring, '', 'articolo', testo_messaggio);

                  flag_continua := false;
                end;
              end;

              if flag_continua then
              begin
                inserisci_articolo_ordine(tipo_documento, v_cli_codice.text, indirizzo, tlv_codice, contratto, pos_riga, art_codice, art_codice_cliente, '', commessa_cliente, art_codice_semilav, frn_codice_terzista, data_commessa, prezzo_speciale)
              end;

            end; // if

          end // if = 1

        end // for

      end; // if

    finally
      Free
    end;

  // ----------------------------------------
  // cancellazione ordini clienti  - testate
  // ---------------------------------------
  query_sor2.close;
  sor2.close;
  sor2.open;

  if v_cancella_oat_terzi_totale.checked then
  begin
    cancella_ordini_fornitori_terzi_totale;
  end;

  if v_cancella_opt_totale.checked then
  begin
    cancella_ordini_produzione_totale;
  end;

  if v_cancella_ovt_totale.checked then
  begin
    cancella_ordini_clienti_totale;
  end;

  if v_dispo.checked then
  begin

    sor_cms.close;
    sor_cms.sql.clear;
    sor_cms.sql.add('select * from promau_impordv_contratti');
    sor_cms.sql.add('where');
    sor_cms.sql.add('utn_codice=:utn_codice');
    sor_cms.sql.add('order by contratto');
    sor_cms.parambyname('utn_codice').asstring := utente;
    sor_cms.open;
    while not sor_cms.eof do
    begin
      cms_codice := v_cli_codice.text + ' ' + sor_cms.fieldbyname('contratto').asstring;

      scrivi_log('-------------------------------------------------');
      scrivi_log('cancellazione ordini riferimento ' + cms_codice);
      scrivi_log('-------------------------------------------------');

      query_pos.close;
      query_pos.sql.clear;
      query_pos.sql.add('select distinct art_codice, contratto, posizione, frn_codice_terzista');
      query_pos.sql.add('from promau_impordv_articoli');
      query_pos.sql.add('where');
      query_pos.sql.add('utn_codice=:utn_codice and');
      query_pos.sql.add('contratto=:contratto');
      query_pos.sql.add('order by 1, 2, 3');
      query_pos.parambyname('utn_codice').asstring := utente;
      query_pos.parambyname('contratto').asstring := sor_cms.fieldbyname('contratto').asstring;
      query_pos.open;
      while not query_pos.eof do
      begin
        scrivi_log('-------------------------------------------------');
        scrivi_log('psozione  ' + query_pos.fieldbyname('posizione').asstring+ ' '+ query_pos.fieldbyname('frn_codice_terzista').asstring);
        scrivi_log('-------------------------------------------------');

        // --------------------------------------------------------------
        // modifica promau
        // 30.01.2012 la ricerca avviene per codice articoli cliente (arc)
        // --------------------------------------------------------------
        // read_tabella(arc.arcdit, 'art', 'codice_alternativo', art_codice);
        // --------------------------------------------------------------
        // 13.01.2015 cancellazione ordini per contratto e posizione
        // --------------------------------------------------------------
        cancella_rda_produzione(cms_codice, query_pos.fieldbyname('posizione').asinteger);

        // --------------------------------------
        // cancellazione ordini fornitore
        // --------------------------------------
        cancella_ordini_fornitori_terzi(query_pos.fieldbyname('art_codice').asstring, cms_codice, query_pos.fieldbyname('posizione').asinteger);

        // --------------------------------------
        // cancellazione ordini produzione
        // --------------------------------------
        cancella_ordini_produzione(query_pos.fieldbyname('art_codice').asstring, cms_codice, query_pos.fieldbyname('posizione').asinteger, v_tdo_codice.text);

        // --------------------------------------
        // cancellazione ordini clienti  - righe
        // --------------------------------------
        cancella_ordini_clienti(cms_codice, query_pos.fieldbyname('frn_codice_terzista').asstring, query_pos.fieldbyname('posizione').asinteger);

        // --------------------------------------
        // cancellazione ordini clienti  - righe
        // --------------------------------------
        cancella_ordini_clienti(cms_codice, '', query_pos.fieldbyname('posizione').asinteger);

        query_pos.next;
      end;
      sor_cms.next;

    end;

    cancella_ordini_clienti(cms_codice,'' , 0);
    cancella_ordini_fornitori_terzi('', cms_codice, 0);

    sor_cms.close;
    // ----------------------------------------
    // azzero opt riferimemnti righe ovr
    // ---------------------------------------
    azzera_ordini_produzione_ovr_progressivo;

  end; // if

  closefile(logfile);


  flag_continua := true;
  if lista_articoli.count > 0 then
  begin
    forcedirectories(cartella_installazione + '..\log\');

    nome_file := cartella_installazione + '..\log\' + formatdatetime('yyyy_mm_dd_hh_nn_ss', now) + '_ordini.log';

    if lista_articoli.count > 0 then
    begin

      assignfile(logfile, nome_file);
      rewrite(logfile);

      writeln(logfile, '***************************************************************************************');
      writeln(logfile, '******   ERRORI IMPORTAZIONE ORDINI CLIENTI DA FILE EXCEL *****************************');
      writeln(logfile, '***************************************************************************************');
      writeln(logfile, lista_articoli.text);
      writeln(logfile, '***************************************************************************************');

      closefile(logfile);
    end;

    if fileexists(nome_file) then
    begin
      esegui_effettivo('notepad.exe', nome_file);
    end;

    flag_continua := false;
    if messaggio(400, 'Vuoi continuare importazione') = 1 then
    begin
      flag_continua := true;
    end;
  end;

  // --------------------------------------------------
  // intestazione colonne con date di consegna
  // --------------------------------------------------
  for i := 1 to 15 do
  begin

    if i <= 11 then
    begin
      v_griglia_db.Columns[i + 5].Caption := datetostr(data_consegna[i]) + #13 + settimana_consegna[i];
    end
    else
    begin
      v_griglia_db.Columns[i + 5].Caption := '';
    end;

  end;

  // --------------------------------------
  // 06.03.2012 Paolo
  // annullamento tutti i ritardi
  // --------------------------------------
  if flag_continua then
  begin
    cancella_ritardi;

    genera_ordini_clienti;
    genera_ordini_produzione;

    v_griglia_db.ViewData.Collapse(true);
  end;
  // v_griglia_db.ViewData.Rows[0].Focused := true;

end;

procedure TA31IMPORDV.cancella_testate_senza_righe;
begin

  query.sql.clear;
  query.sql.add('DELETE FROM OAT');
  query.sql.add('WHERE (OAT.id_origine=99) AND  NOT EXISTS( SELECT PROGRESSIVO FROM OAR WHERE OAR.PROGRESSIVO=OAT.PROGRESSIVO) ');

  query.sql.clear;
  query.sql.add('DELETE FROM OVT');
  query.sql.add('WHERE (OVT.id_origine=99) AND NOT EXISTS( SELECT PROGRESSIVO FROM OVR WHERE OVR.PROGRESSIVO=OVT.PROGRESSIVO) ');

  controlla_transazione;
end;

procedure TA31IMPORDV.controlla_ordini_da_cancellare(cms_codice, tipologia: string);
begin

  query.close;
  query.sql.clear;
  query.sql.add('insert into a31ovt_da_cancellare(utn_codice, progressivo, tabella)');
  query.sql.add('select :utn_codice, opt.progressivo, ''opt'' ');
  query.sql.add('from opt ');
  query.sql.add('where ');
  query.sql.add('opt.cms_codice=:cms_codice and ');
  query.sql.add('opt.tipologia=:tipologia and ');
  query.sql.add('opt.a31tdo_codice =:tdo_codice and ');
  query.sql.add('opt.situazione in ( ''inserito'' ) and ');
  query.sql.add('opc.progressivo is null  ');
  query.parambyname('utn_codice').asstring := utente;
  query.parambyname('tdo_codice').asstring := promau_tdo_codice_ovt_pianificazione;
  query.parambyname('cms_codice').asstring := cms_codice;
  query.parambyname('tipologia').asstring := tipologia;
  query.execsql;

  controlla_transazione;
end;

procedure TA31IMPORDV.cancella_ritardi;
begin
  // -----------------------------------
  // cancello ritardi lavorazioni
  // -----------------------------------

  query.close;
  query.sql.clear;
  query.sql.add('delete from promau_ritardi_lavorazioni');
  query.sql.add('where');
  query.sql.add('progressivo in ( ');
  query.sql.add('select progressivo from promau_ritardi ');
  query.sql.add('where');
  query.sql.add('cli_codice=:cli_codice )');
  query.ParamByName('cli_codice').asstring := v_cli_codice.text;
  query.execsql;
  query.rowsaffected;

  controlla_transazione;


  // -----------------------------------
  // cancello ritardi ordini
  // -----------------------------------

  query.close;
  query.sql.clear;
  query.sql.add('delete from promau_ritardi');
  query.sql.add('where');
  query.sql.add('cli_codice=:cli_codice');
  query.ParamByName('cli_codice').asstring := v_cli_codice.text;
  query.execsql;

  controlla_transazione;

end;

procedure TA31IMPORDV.cancella_ordini_fornitori_terzi(art_codice, cms_codice: string;
  posizione:
  integer);
begin

  query.close;
  query.sql.clear;
  query.sql.add('delete from oar');
  query.sql.add('where');
  if cms_codice <> '' then
  begin
    query.sql.add('oar.cms_codice in ( select codice from cms where descrizione1 =:cms_codice ) and');
    query.sql.add('oar.tipologia=:tipologia and');
  end
  else if v_cancella_oat_terzi_totale.checked then
  begin
    query.sql.add('oar.art_codice=:art_codice and');
    query.sql.add('oar.cms_codice<>'' and');
    query.sql.add('oar.tipologia<>''  and');
  end
  else
  begin
    query.sql.add('oar.art_codice=:art_codice and');
    query.sql.add('oar.cms_codice='' and');
    query.sql.add('oar.tipologia=''  and');
  end;
  query.sql.add('oar.situazione=''inserito''  ');
  if cms_codice <> '' then
  begin
    query.parambyname('cms_codice').asstring := cms_codice;
    query.parambyname('tipologia').asstring := inttostr(posizione);
  end
  else
  begin
    query.parambyname('art_codice').asstring := art_codice;
  end;
  query.execsql;

  scrivi_log('cancellate righe ord frn ' + inttostr(query.rowsaffected));

  controlla_transazione;

  // -----------------------------------
  // cancello iva ordini non evase
  // -----------------------------------

  query.close;
  query.sql.clear;
  query.sql.add('delete from oai');
  query.sql.add('where');
  query.sql.add('oai.progressivo in ( ');
  query.sql.add('select oat.progressivo from oat ');
  query.sql.add('where');
  query.sql.add('oat.cms_codice in ( select codice from cms where descrizione1 =:cms_codice ) and');
  query.sql.add('oat.situazione =  ' + quotedstr('inserito') + '  ) and ');
  query.sql.add('not exists( select null from oar where oar.progressivo=oai.progressivo ) ');
  query.parambyname('cms_codice').asstring := cms_codice;
  query.execsql;

  controlla_transazione;

  // -----------------------------------
  // cancello testata ordini non evase
  // -----------------------------------
  try

    query.sql.clear;
    query.sql.add('delete from oat');
    query.sql.add('where');
    query.sql.add('oat.cms_codice in ( select codice from cms where descrizione1 =:cms_codice ) and');
    query.sql.add('oat.situazione =  ' + quotedstr('inserito') + ' and ');
    query.sql.add('not exists( select null from oar where oar.progressivo=oat.progressivo ) ');
    query.parambyname('cms_codice').asstring := cms_codice;
    query.execsql;

    scrivi_log('cancellate testate ord frn ' + inttostr(query.rowsaffected));

  except
  end;

  controlla_transazione;

  //---------------------------------------------------------------------------
  // se attivo chiusura/annullamento di tutti gli ordini aperti
  //---------------------------------------------------------------------------
  if v_cancella_oat_terzi_totale.checked then
  begin
    ovr_produzione.sql.add('select * from opt ');
    ovr_produzione.sql.add('where');
    ovr_produzione.sql.add('opt.progressivo =:progressivo ');

    query.sql.clear;
    query.sql.add('select * from oat');
    query.sql.add('where');
    query.sql.add('oat.situazione =  ' + quotedstr('evaso parziale'));
    query.sql.add('where');
    query.sql.add('oat.progressivo in (');
    query.sql.add('select distinct progressivo from oar ');
    query.sql.add('where oar.documento_origine=''produzione'' )');
    query.sql.add('order by oat.progressivo ');
    query.open;
    while not query.eof do
    begin
      query_righe.close;
      query_righe.sql.clear;
      query_righe.sql.add('select * from oar');
      query_righe.sql.add('where');
      query_righe.sql.add('progressivo=:progressivo and');
      query_righe.sql.add('doc_progressivo_origine=''produzione'' ');
      query_righe.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      query_righe.open;
      while not query_righe.eof do
      begin
        scrivi_log('annulla ordine fornitore c/terzi' + query_righe.fieldbyname('progressivo').asstring + ' ' + query_righe.fieldbyname('riga').asstring + ' ' + query_righe.fieldbyname('art_codice').asstring + ' ' + query_righe.fieldbyname('data_consegna').asstring);

        query_righe.edit;
        query_righe.fieldbyname('situazione').asstring := 'annulla';
        query_righe.post;

        ovr_produzione.close;
        ovr_produzione.parambyname('progressivo').asinteger := query_righe.fieldbyname('doc_progressivo_origine').asinteger;
        ovr_produzione.open;
        if not ovr_produzione.eof then
        begin
          scrivi_log('evade ordine produzione ' + ovr_produzione.fieldbyname('progressivo').asstring);

          ovr_produzione.edit;
          ovr_produzione.fieldbyname('situazione').asstring := 'evaso';
          ovr_produzione.post;
        end;
        ovr_produzione.close;

        // materiali ordini di produzione
        opr_produzione.parambyname('progressivo').asinteger := ovr_produzione.fieldbyname('progressivo').asinteger;
        opr_produzione.execsql;

        query_righe.next;
      end;

      query.next;
    end;
    query_righe.close;
    query.close;

    scrivi_log('evase testate ord fornitori c/terzi ' + inttostr(query.rowsaffected));

    controlla_transazione;
  end;

end;

procedure TA31IMPORDV.cancella_ordini_fornitori_terzi_totale;
begin

  query.close;
  query.sql.clear;
  query.sql.add('delete from oar');
  query.sql.add('where');
  query.sql.add('oar.documento_origine=''produzione'' and');
  query.sql.add('oar.situazione in ( ''inserito''  ) and  ');
  query.sql.add('oar.progressivo in ( select progressivo from oat where oat.progressivo=oar.progressivo ) ');
  query.execsql;

  controlla_transazione;

  scrivi_log('cancellate righe ord frn ' + inttostr(query.rowsaffected));

  query.sql.clear;
  query.sql.add('update oar');
  query.sql.add('set situazione=''evaso'' ');
  query.sql.add('where');
  query.sql.add('oar.documento_origine=''produzione'' and');
  query.sql.add('oar.situazione in ( ''evaso parziale''  ) and  ');
  query.sql.add('oar.progressivo in ( select progressivo from oat where oat.progressivo=oar.progressivo ) ');
  query.execsql;

  scrivi_log('cancellate righe ord frn ' + inttostr(query.rowsaffected));

  controlla_transazione;

  // -----------------------------------
  // cancello iva ordini non evase
  // -----------------------------------

  query.close;
  query.sql.clear;
  query.sql.add('delete from oai');
  query.sql.add('where');
  query.sql.add('oai.progressivo in ( ');
  query.sql.add('select distinct oar.progressivo from oar');
  query.sql.add('where');
  query.sql.add('oar.progresso=oai.progressivo and ');
  query.sql.add('oar.documento_origine=''produzione'' and');
  query.sql.add('oar.situazione in ( ''inserito'' ) )  ');
  query.execsql;

  controlla_transazione;

  // -----------------------------------
  // cancello testata ordini non evase
  // -----------------------------------
  try

    query.sql.clear;
    query.sql.add('delete from oat');
    query.sql.add('where');
    query.sql.add('oat.situazione in ( ''inserito'') and  ');
    query.sql.add('not exists( select distinct progressivo from oar where oar.progressivo=oat.progressivo and oar.documento_origine=''produzione'' ) ');
    query.execsql;

    controlla_transazione;

    scrivi_log('cancellate testate ord frn ' + inttostr(query.rowsaffected));

  except
  end;

  controlla_transazione;

  //---------------------------------------------------------------------------
  // se attivo chiusura/annullamento di tutti gli ordini aperti
  //---------------------------------------------------------------------------
  if v_cancella_opt_totale.checked then
  begin
    ovr_produzione.sql.add('select * from opt ');
    ovr_produzione.sql.add('where');
    ovr_produzione.sql.add('opt.progressivo =:progressivo ');

    query.sql.clear;
    query.sql.add('select * from oat');
    query.sql.add('where');
    query.sql.add('oat.situazione =  ' + quotedstr('evaso parziale'));
    query.sql.add('where');
    query.sql.add('oat.progressivo in (');
    query.sql.add('select distinct progressivo from oar ');
    query.sql.add('where oar.documento_origine=''produzione'' )');
    query.sql.add('order by oat.progressivo ');
    query.open;
    while not query.eof do
    begin
      query_righe.close;
      query_righe.sql.clear;
      query_righe.sql.add('select * from oar');
      query_righe.sql.add('where');
      query_righe.sql.add('progressivo=:progressivo and');
      query_righe.sql.add('doc_progressivo_origine=''produzione'' ');
      query_righe.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      query_righe.open;
      while not query_righe.eof do
      begin
        scrivi_log('annulla ordine fornitore c/terzi' + query_righe.fieldbyname('progressivo').asstring + ' ' + query_righe.fieldbyname('riga').asstring + ' ' + query_righe.fieldbyname('art_codice').asstring + ' ' + query_righe.fieldbyname('data_consegna').asstring);

        query_righe.edit;
        query_righe.fieldbyname('situazione').asstring := 'annulla';
        query_righe.post;

        ovr_produzione.close;
        ovr_produzione.parambyname('progressivo').asinteger := query_righe.fieldbyname('doc_progressivo_origine').asinteger;
        ovr_produzione.open;
        if not ovr_produzione.eof then
        begin
          scrivi_log('evade ordine produzione ' + ovr_produzione.fieldbyname('progressivo').asstring);

          ovr_produzione.edit;
          ovr_produzione.fieldbyname('situazione').asstring := 'evaso';
          ovr_produzione.post;
        end;
        ovr_produzione.close;

        query_righe.next;
      end;

      query.next;
    end;
    query_righe.close;
    query.close;

    scrivi_log('evase testate ord fornitori c/terzi ' + inttostr(query.rowsaffected));

    controlla_transazione;
  end;

end;

procedure TA31IMPORDV.annulla_ordini_fornitori_terzi_parziali(art_codice, frn_codice, cms_codice, cmt_codice: string;
  data_consegna:
  tdatetime);
begin

  query.close;

  //----------------------------------------------------------------------
  // RIGHE ORDINI A FORNITORE PARZIALI
  //----------------------------------------------------------------------

  oar.close;
  oar.sql.clear;
  oar.sql.add('select * from oar ');
  oar.sql.add('where ');
  oar.sql.add('oar.art_codice=:art_codice and');
  oar.sql.add('oar.cms_codice=:cms_codice and');
  oar.sql.add('oar.tipologia=:tipologia and');
  oar.sql.add('oar.situazione =''evaso parziale'' and');
  oar.sql.add('oar.data_consegna=:data_consegna and');
  oar.sql.add('exists ( select oat.progressivo from oat where oat.frn_codice=:frn_codice ) ');

  oar.parambyname('art_codice').asstring := art_codice;
  oar.parambyname('cms_codice').asstring := cms_codice;
  oar.parambyname('tipologia').asstring := cmt_codice;
  oar.parambyname('data_consegna').asdatetime := data_consegna;
  oar.parambyname('frn_codice').asstring := frn_codice;
  oar.open;
  while not oar.eof do
  begin
    oar.edit;
    oar.fieldbyname('situazione').asstring := 'annullata';
    oar.post;

    scrivi_log('frn :' + frn_codice + '  progressivo ' + oar.fieldbyname('progressivo').asstring + ' riga ' + oar.fieldbyname('riga').asstring + ' articolo ' + oar.fieldbyname('art_codice').asstring + ' qta' +
      floattostr(oar.fieldbyname('quantita').asfloat - oar.fieldbyname('quantita_evasa').asfloat) + ' situaz.' + oar.fieldbyname('situazione').asstring);
    oar.next;
  end;

  oar.close;
end;

procedure TA31IMPORDV.cancella_rda_produzione(cms_codice: string;
  posizione:
  integer);
begin

  // -----------------------------------
  // cancello righe ordini non evase
  // -----------------------------------

  query.close;
  query.sql.clear;
  query.sql.add('delete from rda');
  query.sql.add('where');
  query.sql.add('rda.cms_codice=( select codice from cms where descrizione1 = :cms_codice ) and');
  query.sql.add('rda.tipologia=:tipologia and');
  query.sql.add('rda.tipo_richiesta=:tipo_richiesta and');
  query.sql.add('rda.situazione=:situazione ');

  query.parambyname('cms_codice').asstring := cms_codice;
  query.parambyname('tipologia').asstring := inttostr(posizione);
  query.parambyname('tipo_richiesta').asstring := 'ordine produzione';
  query.parambyname('situazione').asstring := '';
  query.execsql;
  if query.rowsaffected > 0 then
  begin
    scrivi_log('cancellate rda ' + inttostr(query.rowsaffected));
  end;

  controlla_transazione;

end;

procedure TA31IMPORDV.cancella_ordini_produzione(art_codice, cms_codice: string;
  posizione:
  integer;
  tdo_codice:
  string);
var
  totale_opr, totale_opt: integer;
begin

  totale_opr := 0;
  totale_opt := 0;
  // -----------------------------------
  // cancello righe ordini non evase
  // -----------------------------------
  query.close;
  query.sql.clear;
  query.sql.add('select codice from cms');
  query.sql.add('where');
  query.sql.add('left(descrizione1,8) =:codice and ');
  query.sql.add('descrizione1 like :contratto ');
  query.parambyname('codice').asstring := copy(cms_codice, 1, 8);
  query.parambyname('contratto').asstring := '%' + copy(tdo_codice + '-' + cms_codice, 9, 40) + '%';
  query.open;

  if query.eof then
  begin
    query.parambyname('contratto').asstring := '%' + copy(cms_codice, 9, 40) + '%';
    query.open;
  end;

  cms_codice := query.fieldbyname('codice').asstring;

  query.close;
  query.sql.clear;
  query.sql.add('select * from opt');
  query.sql.add('where');
  if cms_codice <> '' then
  begin
    query.sql.add('(opt.cms_codice =:cms_codice ) and ');
    query.sql.add('(opt.tipologia  =:tipologia  ) and ');
  end
  else
  begin
    query.sql.add('(opt.art_codice =:art_codice ) and ');
    query.sql.add('(opt.cms_codice='' ) and');
    query.sql.add('(opt.tipologia=''  ) and');
  end;

  query.sql.add('(opt.situazione in ( ''inserito'', ''evaso parziale''  )) ');

  if cms_codice <> '' then
  begin
    query.parambyname('cms_codice').asstring := cms_codice;
    query.parambyname('tipologia').asstring := inttostr(posizione);
  end
  else
  begin
    query.parambyname('art_codice').asstring := art_codice;
  end;

  query.open;
  while not query.eof do
  begin

    if query.fieldbyname('situazione').asstring = 'inserito' then
    begin

      tabella_iva.close;
      tabella_iva.sql.clear;
      tabella_iva.sql.add('delete from opc');
      tabella_iva.sql.add('where');
      tabella_iva.sql.add('opc.progressivo =:progressivo ');
      tabella_iva.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      tabella_iva.execsql;

      controlla_transazione;

      tabella_iva.close;
      tabella_iva.sql.clear;
      tabella_iva.sql.add('delete from opr');
      tabella_iva.sql.add('where');
      tabella_iva.sql.add('opr.progressivo=:progressivo');
      tabella_iva.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      tabella_iva.execsql;

      totale_opr := totale_opr + tabella_iva.rowsaffected;

      controlla_transazione;
      // -----------------------------------
      // cancello testata ordini non evase
      // -----------------------------------
      tabella_iva.sql.clear;
      tabella_iva.sql.add('delete from opt');
      tabella_iva.sql.add('where');
      tabella_iva.sql.add('opt.progressivo=:progressivo');
      tabella_iva.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      tabella_iva.execsql;

      totale_opt := totale_opt + tabella_iva.rowsaffected;

      controlla_transazione;
    end
    else
    begin

      tabella_iva.close;
      tabella_iva.sql.clear;
      tabella_iva.sql.add('update opr');
      tabella_iva.sql.add('set situazione=''evaso'' ');
      tabella_iva.sql.add('where');
      tabella_iva.sql.add('opr.progressivo=:progressivo');
      tabella_iva.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      tabella_iva.execsql;

      totale_opr := totale_opr + tabella_iva.rowsaffected;

      query.edit;
      query.fieldbyname('situazione').asstring := 'evaso';
      query.post;

      totale_opt := totale_opt + 1;
    end;

    controlla_transazione;

    query.next;
  end;
  query.close;
  tabella_righe.close;

  scrivi_log('cancellate righe   prod ' + inttostr(totale_opr));
  scrivi_log('cancellate testate prod ' + inttostr(totale_opt));

end;

procedure TA31IMPORDV.cancella_ordini_produzione_totale;
begin

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('update opr');
  query_righe.sql.add('set situazione=''evaso'' ');
  query_righe.sql.add('where progressivo=:progressivo ');

  query.close;
  query.sql.clear;
  query.sql.add('select * from opt');
  query.sql.add('where');
  query.sql.add('opt.situazione <>''evaso'' ');
  query.sql.add('order by opt.progressivo');
  query.open;
  while not query.eof do
  begin
    query_righe.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
    query_righe.execsql;

    query.next;
  end;
  query.close;
  query.sql.clear;
  query.sql.add('update opt');
  query.sql.add('set situazione=''evaso'' ');
  query.sql.add('where');
  query.sql.add('opt.situazione <>''evaso'' ');
  query.execsql;

  controlla_transazione;

  query_righe.close;

end;

procedure TA31IMPORDV.cancella_ordini_clienti(cms_codice,frn_codice_terzista: string;  posizione:  integer);
var
  totale_ovr, totale_ovt: integer;
begin
  totale_ovr := 0;
  totale_ovt := 0;

  if posizione > 0 then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('select * from ovr');
    query.sql.add('where');
    query.sql.add('ovr.cms_codice in ( select codice from cms where descrizione1 = :cms_codice ) and ');
    query.sql.add('ovr.tipologia=:tipologia and ');
    query.sql.add('a31_frn_codice_terzista=:frn_codice_terzista and');
    query.sql.add('ovr.situazione in (' + quotedstr('inserito') + ' )');
    query.parambyname('cms_codice').asstring := cms_codice;
    query.parambyname('tipologia').asstring := inttostr(posizione);
    query.parambyname('frn_codice_terzista').asstring := frn_codice_terzista;
    query.open;
    while not query.eof do
    begin

      annulla_ordini_produzione('ordine ven', query.fieldbyname('progressivo').asinteger, query.fieldbyname('riga').asinteger);

      ovr_cancella.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      ovr_cancella.parambyname('riga').asinteger := query.fieldbyname('riga').asinteger;
      ovr_cancella.execsql;

      totale_ovr := totale_ovr + ovr_cancella.rowsaffected;
      query.next;
    end;

    query.close;
    query.sql.clear;
    query.sql.add('select * from ovr');
    query.sql.add('where');
    query.sql.add('ovr.cms_codice in ( select codice from cms where descrizione1 = :cms_codice ) and ');
    query.sql.add('ovr.tipologia=:tipologia and ');
    query.sql.add('a31_frn_codice_terzista=:frn_codice_terzista and');
    query.sql.add('ovr.situazione in (' + quotedstr('inserito') + ' )');
    query.parambyname('cms_codice').asstring := cms_codice;
    query.parambyname('tipologia').asstring := inttostr(posizione);
    query.parambyname('frn_codice_terzista').asstring := frn_codice_terzista;
    query.open;
    while not query.eof do
    begin

      annulla_ordini_produzione('ordine ven', query.fieldbyname('progressivo').asinteger, query.fieldbyname('riga').asinteger);

      ovr_cancella.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      ovr_cancella.parambyname('riga').asinteger := query.fieldbyname('riga').asinteger;
      ovr_cancella.execsql;

      totale_ovr := totale_ovr + ovr_cancella.rowsaffected;
      query.next;
    end;

    controlla_transazione;
  end
  else
  begin
    query.close;
    query.sql.clear;
    query.sql.add('delete from ovi');
    query.sql.add('where');
    query.sql.add('ovi.progressivo in ( ');
    query.sql.add('select ovt.progressivo from ovt where ');
    query.sql.add('ovt.cms_codice in ( select codice from cms where descrizione1 = :cms_codice  ) and ');
    query.sql.add('ovt.situazione in (' + quotedstr('inserito') + ' ) ) and ');
    query.sql.add('not exists ( select progressivo from ovr where ovr.progressivo=ovi.progressivo)  ');
    query.parambyname('cms_codice').asstring := cms_codice;
    query.execsql;

    controlla_transazione;

    // --------------------------------------
    // cancello ovt
    // --------------------------------------

    query.close;
    query.sql.clear;
    query.sql.add('delete from ovt');
    query.sql.add('where');
    query.sql.add('ovt.cms_codice in ( select codice from cms where descrizione1 = :cms_codice  ) and ');
    query.sql.add('ovt.situazione in (' + quotedstr('inserito') + ' ) and');
    query.sql.add('not exists ( select progressivo from ovr where ovr.progressivo=ovt.progressivo) and  ');
    query.sql.add('not exists ( select progressivo from ovi where ovi.progressivo=ovt.progressivo)  ');
    query.parambyname('cms_codice').asstring := cms_codice;
    query.execsql;

    totale_ovt := totale_ovt + ovr_cancella.rowsaffected;

    controlla_transazione;

  end;

  scrivi_log('cancellate righe   ord ven ' + inttostr(totale_ovr));
  scrivi_log('cancellate testate ord ven ' + inttostr(totale_ovt));

end;

procedure TA31IMPORDV.cancella_ordini_clienti_totale;
begin
  query.close;
  query.sql.clear;
  query.sql.add('update ovr');
  query.sql.add('set situazione = ''evaso'' ');
  query.sql.add('where');
  query.sql.add('ovr.situazione in ( ''inserito'', ''evaso parziale'' ) ');
  query.execsql;
  scrivi_log('cancellate righe ord cli ' + inttostr(query.rowsaffected));

  controlla_transazione;

  // -----------------------------------
  // cancello testata ordini non evase
  // -----------------------------------
  try

    query.sql.clear;
    query.sql.add('update ovt ');
    query.sql.add('set situazione = ''evaso'' ');
    query.sql.add('where');
    query.sql.add('ovt.situazione in ( ''inserito'', ''evaso parziale'' ) ');
    query.execsql;

    scrivi_log('evase testate ord cli ' + inttostr(query.rowsaffected));

  except
  end;

  controlla_transazione;
end;

procedure TA31IMPORDV.genera_ordini_clienti;
var
  i, riga: integer;
  rif_contratto_ovt: string;
  a31_frn_codice_terzista:string;
begin

  forcedirectories(cartella_installazione + '..\log\');

  nome_file := cartella_installazione + '..\log\' + formatdatetime('yyyy_mm_dd_hh_nn_ss', now) + '_ordini.log';
  assignfile(logfile, nome_file);
  rewrite(logfile);

  if lista_articoli.count > 0 then
  begin
    writeln(logfile, '***************************************************************************************');
    writeln(logfile, '******   ERRORI IMPORTAZIONE ORDINI CLIENTI DA FILE EXCEL *****************************');
    writeln(logfile, '***************************************************************************************');
    writeln(logfile, lista_articoli.text);
    writeln(logfile, '***************************************************************************************');
  end;

  i := 1;
  rif_contratto_ovt := '';
  rif_contratto := '';
  progressivo_lav := 0;
  progressivo_ovt := 0;

  // ----------------------------------------
  // loop articoli importati da excel
  // ----------------------------------------
  sor_articoli.close;
  sor_articoli.sql.clear;
  sor_articoli.sql.add('select');
  sor_articoli.sql.add('art.descrizione1 art_descrizione1,art.descrizione2 art_descrizione2,');
  sor_articoli.sql.add('art.tum_codice art_tum_codice,');
  sor_articoli.sql.add('art.tiv_codice_vendite art_tiv_codice_vendite, art.tca_codice  art_tca_codice, art.quantita_collo, art.pezzi_confezione,');
  sor_articoli.sql.add('ordv.*');
  sor_articoli.sql.add('from arc_ordinamento.promau_impordv_articoli ordv');
  sor_articoli.sql.add('inner join arc_' + ditta + '.art art on art.codice=ordv.art_codice');
  sor_articoli.sql.add('where');
  sor_articoli.sql.add('ordv.utn_codice=:utn_codice and ');
  sor_articoli.sql.add('ordv.cli_codice <>:cli_codice and');
  sor_articoli.sql.add('ordv.quantita >0 ');
  sor_articoli.sql.add('order by ordv.cli_codice, ordv.indirizzo, ordv.contratto, ordv.posizione, ordv.art_codice, ordv.data_consegna ');
  sor_articoli.parambyname('utn_codice').asstring := utente;
  sor_articoli.parambyname('cli_codice').asstring := PROMAU_FRN_CODICE;
  // sor_articoli.sql.savetofile('c:\temp\sor_articoli.sql');
  sor_articoli.open;
  while not sor_articoli.eof do
  begin

    application.processmessages;
    statusbar.panels[1].text := 'generazione ordini clienti ' + floattostr(i) + ' / ' + floattostr(sor_articoli.recordcount);

    controllo_interrompi;

    if rif_contratto+a31_frn_codice_terzista <> (sor_articoli.fieldbyname('cli_codice').asstring + ' ' + sor_articoli.fieldbyname('contratto').asstring) then
    begin
      if progressivo_ovt > 0 then
      begin
        totven.movven_testata(arc.arcdit, 'ordine', progressivo_ovt, false);
      end;

      progressivo_ovt := 0;
      rif_contratto := sor_articoli.fieldbyname('cli_codice').asstring + ' ' + sor_articoli.fieldbyname('contratto').asstring;
      a31_frn_codice_terzista := sor_articoli.fieldbyname('frn_codice_terzista').asstring;

      //-----------------------------------------------------------------------------
      // 27.04.2015 Paolo
      // se cliente 00001651 Promau genero direttamente ordine produzione
      //-----------------------------------------------------------------------------
      if sor_articoli.fieldbyname('cli_codice').asstring <> PROMAU_FRN_CODICE then
      begin
        crea_ovt(sor_articoli.fieldbyname('cli_codice').asstring, sor_articoli.fieldbyname('indirizzo').asstring, sor_articoli.fieldbyname('contratto').asstring, rif_contratto, sor_articoli.fieldbyname('commessa_cliente').asstring, sor_articoli.fieldbyname('art_codice_semilav').asstring, sor_articoli.fieldbyname('frn_codice_terzista').asstring,
          sor_articoli.fieldbyname('data_commessa').asvariant);
      end;

      riga := 10;
    end;

    if v_ordini_clienti.checked then
    begin

      if sor_articoli.fieldbyname('cli_codice').asstring <> PROMAU_FRN_CODICE then
      begin
        crea_ovr(ovt.fieldbyname('progressivo').asinteger, riga, rif_contratto, v_tdo_codice.text, sor_articoli.fieldbyname('art_codice_semilav').asstring, sor_articoli.fieldbyname('frn_codice_terzista').asstring);

        riga := riga + 10;
      end;

    end;
    i := i + 1;

    sor_articoli.next;
  end;

  if progressivo_ovt > 0 then
  begin
    totven.movven_testata(arc.arcdit, 'ordine', progressivo_ovt);
  end;

  closefile(logfile);

  if fileexists(nome_file) and (i > 1) then
  begin
    esegui_effettivo('notepad.exe', nome_file);
  end;

end;

procedure TA31IMPORDV.genera_ordini_produzione;
var
  i, riga: integer;
begin

  forcedirectories(cartella_installazione + '..\log\');

  nome_file := cartella_installazione + '..\log\' + formatdatetime('yyyy_mm_dd_hh_nn_ss', now) + '_ordini_prod.log';
  assignfile(logfile, nome_file);
  rewrite(logfile);

  i := 1;
  rif_contratto := '';
  progressivo_lav := 0;
  progressivo_ovt := 0;

  // ----------------------------------------
  // loop articoli importati da excel
  // ----------------------------------------

  //--------------------------------------------------------------------
  // 08.05.2019 Paolo SCARto articoli ACQ
  //--------------------------------------------------------------------

  sor_articoli.close;
  sor_articoli.sql.clear;
  sor_articoli.sql.add('select ordv.*, ');
  sor_articoli.sql.add('art.descrizione1 art_descrizione1, art.descrizione2 art_descrizione2, art.tum_codice art_tum_codice,');
  sor_articoli.sql.add('art.tiv_codice_vendite art_tiv_codice_vendite, art.tca_codice art_tca_codice');
  sor_articoli.sql.add('from arc_ordinamento.promau_impordv_articoli ordv');
  sor_articoli.sql.add('inner join arc_' + ditta + '.art on art.codice=ordv.art_codice');
  sor_articoli.sql.add('inner join arc_' + ditta + '.tcm on tcm.codice=art.tcm_codice');
  sor_articoli.sql.add('where');
  sor_articoli.sql.add('ordv.utn_codice=:utn_codice  and ');
  sor_articoli.sql.add('ordv.cli_codice =:cli_codice and ');
  sor_articoli.sql.add('ordv.quantita >0 and ');
  sor_articoli.sql.add('art.tcm_codice <>''ACQ'' ');
  sor_articoli.sql.add('order by ordv.cli_codice, ordv.indirizzo, ordv.contratto, ordv.posizione, ordv.art_codice, ordv.data_consegna ');

  sor_articoli.parambyname('utn_codice').asstring := utente;
  sor_articoli.parambyname('cli_codice').asstring := PROMAU_FRN_CODICE;
  sor_articoli.open;

  while not sor_articoli.eof do
  begin

    application.processmessages;
    statusbar.panels[1].text := 'generazione ordini produzione' + floattostr(i) + ' / ' + floattostr(sor_articoli.recordcount);

    controllo_interrompi;

    // ------------------------------------------
    // creo 1 ordine di produzione per ogni finito
    // ------------------------------------------

    art_finiti.close;
    art_finiti.parambyname('codice').asstring := sor_articoli.fieldbyname('art_codice').asstring;
    art_finiti.open;

    disponibilita := 0;
    mag_tot.close;
    mag_tot.parambyname('art_codice').asstring := sor_articoli.fieldbyname('art_codice').asstring;
    mag_tot.open;

    if not mag_tot.eof then
    begin
      disponibilita := (mag_tot.fieldbyname('esistenza').asfloat - mag_tot.fieldbyname('impegnato').asfloat + mag_tot.fieldbyname('ordinato').asfloat);
    end;



    // ----------------------------------
    // devo sommare la quantita della riga altrimenti mi raddoppia ordine prod.
    // ----------------------------------

    if v_visualizza_giacenze.checked then
    begin
      showmessage('esistenza ' + mag_tot.fieldbyname('esistenza').asstring + #13 + #10 + 'impegnato ' + mag_tot.fieldbyname('impegnato').asstring + #13 + #10 + 'ordinato ' + mag_tot.fieldbyname('ordinato').asstring + #13 + #10 + 'ovr quantita ' + sor_articoli.fieldbyname('quantita').asstring);
    end;

    quantita := sor_articoli.fieldbyname('quantita').asfloat;
    if (v_dispo.checked) and (quantita > 0) then
    begin
      quantita := controllo_quantita(sor_articoli.fieldbyname('art_codice').asstring, tma_codice_finiti, 'finito', 0, quantita);
      scrivi_log('articolo: ' + mag_tot.fieldbyname('art_codice').asstring + '  - quantità da produrre: ' + floattostr(quantita));
      scrivi_log('scorta minima: ' + mag_tot.fieldbyname('scorta_minima').asstring + ' scorta massima:' + mag_tot.fieldbyname('scorta_massima').asstring + ' lotto riordino:' + mag.fieldbyname('lotto_riordino').asstring);
      scrivi_log('--------------------------------------------------------------------------------------------------');
    end;

    if v_visualizza_giacenze.checked then
    begin
      showmessage('quantita ' + floattostr(quantita) + #13 + #10 + 'disponibilita ' + floattostr(quantita) + #13 + #10);
    end;

    if quantita > 0 then
    begin
      scrivi_log('genero ordine prod articolo:' + sor_articoli.fieldbyname('art_codice').asstring + ' quantita ' + floattostr(quantita));
      scrivi_log('--------------------------------------------------------------------------------------------------');

      crea_distinta_base('', '', '', now, 0, 0, 0, 0, sor_articoli.fieldbyname('art_codice').asstring, '', quantita, sor_articoli.fieldbyname('data_consegna').asdatetime, sor_articoli.fieldbyname('contratto').asstring, sor_articoli.fieldbyname('posizione').asstring,
        'ordine produzione generato da file excel (' + v_nome_file.text, 'no', '', sor_articoli.fieldbyname('art_codice_semilav').asstring, sor_articoli.fieldbyname('frn_codice_terzista').asstring);
    end // if
    else
    begin
      crea_distinta_base('', '', '', now, 0, 0, 0, 0, sor_articoli.fieldbyname('art_codice').asstring, '', quantita, sor_articoli.fieldbyname('data_consegna').asdatetime, sor_articoli.fieldbyname('contratto').asstring, sor_articoli.fieldbyname('posizione').asstring,
        'azzero ordine produzione generato da file excel (' + v_nome_file.text, 'no', '', sor_articoli.fieldbyname('art_codice_semilav').asstring, sor_articoli.fieldbyname('frn_codice_terzista').asstring);

    end;

    mag.close;

    i := i + 1;

    sor_articoli.next;
  end;

  closefile(logfile);

  if fileexists(nome_file) and (i > 1) then
  begin
    esegui_effettivo('notepad.exe', nome_file);
  end;

end;

function tA31IMPORDV.assegna_valore(sheet: TXLSWorkSheet;
  colonna, riga: integer;
  default:
  variant): variant;
begin

  try
    Result := sheet.asstring[colonna, riga];
    if Result = '' then
    begin
      Result := default;
    end
    else
    begin
      Result := sheet.asvariant[colonna, riga];
    end;

  except
  end;

end;

procedure TA31IMPORDV.crea_ovt(cli_codice, indirizzo, rif_contratto, cms_codice, commessa, art_codice_semilav, frn_codice_terzista: string;
  data_commessa: variant);
var
  numero_colonna, pos_riga: integer;
begin

  if v_ordini_clienti.checked then
  begin

    cerca_commessa(cms_codice, '*', v_tdo_codice.text, '', '', 0);

    ovt.close;
    ovt.parambyname('cli_codice').asstring := cli_codice;
    ovt.parambyname('riferimento').asstring := rif_contratto;
    ovt.open;
    if ovt.eof then
    begin
      scrivi_log('genera ordine ' + v_cli_codice.text + ' cms ' + rif_contratto);
      scrivi_log('---------------------------------------------------------------');

      ovt.append;

      read_tabella(arc.arcdit, 'tdo', 'codice', v_tdo_codice.text);
      ovt.fieldbyname('tdo_codice').asstring := archivio.fieldbyname('codice').asstring;
      ovt.fieldbyname('tco_codice').asstring := archivio.fieldbyname('tco_codice').asstring;
      ovt.fieldbyname('tdo_codice_differite').asstring := archivio.fieldbyname('tdo_codice_differite').asstring;

      progressivo_ovt := arc.setta_valore_generatore(tmyconnection_go(ovt.connection), 'ovt_progressivo');

      ovt.fieldbyname('progressivo').asinteger := progressivo_ovt;
      ovt.fieldbyname('data_documento').asdatetime := now;
      ovt.fieldbyname('data_validita').asdatetime := now;
      ovt.fieldbyname('tipo_documento').asstring := archivio.fieldbyname('tipo_documento').asstring;
      ovt.fieldbyname('serie_documento').asstring := archivio.fieldbyname('numerazione').asstring;
      ovt.fieldbyname('tmo_codice').asstring := archivio.fieldbyname('tmo_codice').asstring;
      ovt.fieldbyname('tma_codice').asstring := archivio.fieldbyname('tma_codice').asstring;
      data_precedente := 0;
      numero_documento := 0;
      numero_documento_precedente := 0;

      assegna_numerazione(arc.arcdit, ditta, 'ORDINI CLIENTI', ovt.fieldbyname('serie_documento').asstring, ovt.fieldbyname('data_documento').asdatetime, data_precedente, numero_documento, numero_documento_precedente, true);
      ovt.fieldbyname('numero_documento').asinteger := numero_documento;

      ovt.fieldbyname('riferimento').asstring := rif_contratto;
      if sor_articoli.fieldbyname('data_commessa').asdatetime <> 0 then
      begin
        ovt.fieldbyname('data_riferimento').asdatetime := sor_articoli.fieldbyname('data_commessa').asdatetime;
      end;

      read_tabella(arc.arcdit, 'tmo', 'codice', ovt.fieldbyname('tmo_codice').asstring);
      ovt.fieldbyname('cli_codice').asstring := v_cli_codice.text;

      if indirizzo <> '' then
      begin
        ovt.fieldbyname('indirizzo').asstring := indirizzo;
        assegna_ovt_indirizzo;
      end;

      read_tabella(arc.arcdit, 'nom', 'codice', ovt.fieldbyname('cli_codice').asstring);
      ovt.fieldbyname('tva_codice').asstring := archivio.fieldbyname('tva_codice').asstring;
      ovt.fieldbyname('cambio').asfloat := 1;

      read_tabella(arc.arcdit, 'cli', 'codice', ovt.fieldbyname('cli_codice').asstring);
      ovt.fieldbyname('tlv_codice').asstring := archivio.fieldbyname('tlv_codice').asstring;
      ovt.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
      ovt.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;
      tcc_codice := archivio.fieldbyname('tcc_codice').asstring;

      // ------------------------------------------
      // 22.07.2019
      // ------------------------------------------
      if archivio.fieldbyname('tiv_codice').asstring <> '' then
      begin
        ovt.fieldbyname('tiv_codice').asstring := archivio.fieldbyname('tiv_codice').asstring;
        dicint.assegna_tiv_codice(0, ovt);
      end;

      // ------------------------------------------

      // ------------------------------------------
      // parametri da tabella cliente
      // ------------------------------------------
      ovt.fieldbyname('listino_con_iva').asstring := 'no';
      ovt.fieldbyname('tpa_codice').asstring := archivio.fieldbyname('tpa_codice').asstring;
      ovt.fieldbyname('tag_codice').asstring := archivio.fieldbyname('tag_codice').asstring;
      if ovt.fieldbyname('tag_codice').asstring = '' then
      begin
        ovt.fieldbyname('tag_codice').asstring := '0';
      end;

      ovt.fieldbyname('iva_sospensione').asstring := archivio.fieldbyname('iva_sospensione').asstring;
      ovt.fieldbyname('addebito_spese_fattura').asstring := archivio.fieldbyname('addebito_spese_fattura').asstring;
      ovt.fieldbyname('spese_manuali').asstring := 'no';
      ovt.fieldbyname('iva_sospensione').asstring := 'no';

      ovt.fieldbyname('importo_spese_extra').asfloat := 0;
      ovt.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
      ovt.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;
      ovt.fieldbyname('tst_codice').asstring := archivio.fieldbyname('tst_codice').asstring;

      if archivio.fieldbyname('tiv_codice').asstring <> '' then
      begin
        if ovt.fieldbyname('data_documento').asdatetime <= archivio.fieldbyname('data_esenzione_iva').asdatetime then
        begin
          ovt.fieldbyname('tiv_codice').asstring := archivio.fieldbyname('tiv_codice').asstring;
        end;
      end;

      read_tabella(arc.arcdit, 'tpo', 'codice', ovt.fieldbyname('tpo_codice').asstring);
      ovt.fieldbyname('addebito_spese_trasporto').asstring := archivio.fieldbyname('addebito').asstring;

      ovt.fieldbyname('tva_codice').asstring := divisa_di_conto;
      ovt.fieldbyname('cambio').asfloat := 1;
      ovt.fieldbyname('ese_codice').asstring := esercizio;
      ovt.fieldbyname('situazione').asstring := 'inserito';

      ovt.fieldbyname('tiv_codice_spese_extra').asstring := tiv_codice_spese_extra;
      ovt.fieldbyname('tiv_codice_spese_bollo').asstring := tiv_codice_spese_bollo;
      ovt.fieldbyname('tiv_codice_spese_incasso').asstring := tiv_codice_spese_incasso;
      ovt.fieldbyname('tiv_codice_omaggi').asstring := tiv_codice_omaggi;

      cpv.params[0].asstring := tcc_codice;
      cpv.params[1].asstring := tca_codice;
      cpv.close;
      cpv.open;
      gen_codice := cpv.fieldbyname('gen_codice').asstring;

      cpv.params[0].asstring := tcc_codice;
      cpv.params[1].asstring := tca_codice_spese_extra;
      cpv.close;
      cpv.open;
      ovt.fieldbyname('gen_codice_spese_extra').asstring := cpv.fieldbyname('gen_codice').asstring;

      cpv.params[0].asstring := tcc_codice;
      cpv.params[1].asstring := tca_codice_trasporto;
      cpv.close;
      cpv.open;
      ovt.fieldbyname('gen_codice_trasporto').asstring := cpv.fieldbyname('gen_codice').asstring;

      cpv.params[0].asstring := tcc_codice;
      cpv.params[1].asstring := tca_codice_bollo;
      cpv.close;
      cpv.open;
      ovt.fieldbyname('gen_codice_bollo').asstring := cpv.fieldbyname('gen_codice').asstring;

      cpv.params[0].asstring := tcc_codice;
      cpv.params[1].asstring := tca_codice_spese_incasso;
      cpv.close;
      cpv.open;
      ovt.fieldbyname('gen_codice_incasso').asstring := cpv.fieldbyname('gen_codice').asstring;

      cpv.params[0].asstring := tcc_codice;
      cpv.params[1].asstring := tca_codice_sconto_cassa;
      cpv.close;
      cpv.open;
      ovt.fieldbyname('gen_codice_sconto_cassa').asstring := cpv.fieldbyname('gen_codice').asstring;

      cpv.params[0].asstring := tcc_codice;
      cpv.params[1].asstring := tca_codice_sconti_fattura;
      cpv.close;
      cpv.open;
      ovt.fieldbyname('gen_codice_sconti_fattura').asstring := cpv.fieldbyname('gen_codice').asstring;
      ovt.fieldbyname('cms_codice').asstring := cms_codice;
      ovt.fieldbyname('tipologia').asstring := '*';
      ovt.fieldbyname('id_origine').asinteger := 99;
      ovt.post;

    end
    else
    begin
      progressivo_ovt := ovt.fieldbyname('progressivo').asinteger;

      ovt.edit;
      ovt.fieldbyname('data_validita').asdatetime := now;

      if indirizzo <> ovt.fieldbyname('indirizzo').asstring then
      begin
        ovt.fieldbyname('indirizzo').asstring := indirizzo;
        assegna_ovt_indirizzo;
      end;
      ovt.fieldbyname('id_origine').asinteger := 99;
      ovt.post;
    end;

  end; // if

end;

function TA31IMPORDV.cerca_data_consegna(data_riga: tdatetime): integer;
var
  i: integer;
begin

  Result := 0;

  for i := 1 to 12 do
  begin

    if data_consegna[i] = data_riga then
    begin
      Result := i;
      break;
    end;

  end;

end;

procedure TA31IMPORDV.FormClose(Sender: TObject;
  var
  Action: TCloseAction);
begin
  inherited;
  arc.assnum_cnt.LockMode := lmPessimistic;
end;

procedure TA31IMPORDV.FormCreate(Sender: TObject);
begin
  inherited;
  promau_inizializza_variabili;

  tipo_documento := 'ordine';

  dicint := tdicint.create('C');
  totacq := ttotacq.create;
  totven := ttotven.create;
  tipinv := ttipinv.create;
  przinv := tprzinv.create;

  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);

  lista_articoli := tstringlist.create;

  filtro_record := false;

  v_tdo_codice.text := 'ORDV';

  ovr_produzione := tmyquery_go.create(self);
  ovr_produzione.connection := arc.arcdit;
  ovr_produzione.sql.add('select * from opt ');
  ovr_produzione.sql.add('where');
  ovr_produzione.sql.add('opt.documento_origine=''ordine ven'' and ');
  ovr_produzione.sql.add('opt.doc_progressivo_origine =:progressivo and ');
  ovr_produzione.sql.add('opt.doc_riga_origine=:riga ');

  opr_produzione := tmyquery_go.create(self);
  opr_produzione.connection := arc.arcdit;
  opr_produzione.sql.add('update opr ');
  opr_produzione.sql.add('set situazione=''evaso'' ');
  opr_produzione.sql.add('where');
  opr_produzione.sql.add('opr.progressivo=:progressivo');

  ovr_cancella := tmyquery_go.create(self);
  ovr_cancella.connection := arc.arcdit;
  ovr_cancella.sql.add('delete from ovr ');
  ovr_cancella.sql.add('where');
  ovr_cancella.sql.add('ovr.progressivo =:progressivo and ');
  ovr_cancella.sql.add('ovr.riga=:riga ');

  ovr_ritardi := tmyquery_go.create(self);
  ovr_ritardi.connection := arc.arcdit;
  ovr_ritardi.sql.add('select * from ovr ');
  ovr_ritardi.sql.add('where ');
  ovr_ritardi.sql.add('progressivo=:progressivo and');
  ovr_ritardi.sql.add('art_codice=:art_codice and');
  ovr_ritardi.sql.add('cms_codice=:cms_codice and');
  ovr_ritardi.sql.add('tipologia=:tipologia and');
  ovr_ritardi.sql.add('data_consegna<=:data_consegna and');
  ovr_ritardi.sql.add('situazione=''evaso parziale'' ');

  ovr_ultimo := tmyquery_go.create(self);
  ovr_ultimo.connection := arc.arcdit;
  ovr_ultimo.sql.add('select max(riga) riga from ovr where progressivo =:progressivo');

  cms_ultimo := tmyquery_go.create(self);
  cms_ultimo.connection := arc.arcdit;
  cms_ultimo.sql.add('select max(id) ultimo_cms from cms ');

  cms := tmyquery_go.create(self);
  cms.connection := arc.arcdit;
  cms.sql.add('select * from cms where descrizione1 = :descrizione1 ');

  cmt := tmyquery_go.create(self);
  cmt.connection := arc.arcdit;
  cmt.sql.add('select * from cmt where cms_codice =:cms_codice and tipologia=:tipologia ');

  oar_produzione := tmyquery_go.create(self);
  oar_produzione.connection := arc.arcdit;
  oar_produzione.sql.add('select * from oar');
  oar_produzione.sql.add('where ');
  oar_produzione.sql.add('oar.documento_origine=:documento_origine and ');
  oar_produzione.sql.add('oar.doc_progressivo_origine=:doc_progressivo_origine and');
  oar_produzione.sql.add('oar.doc_riga_origine=:doc_riga_origine');

  oat_esistente := tmyquery_go.create(self);
  oat_esistente.connection := arc.arcdit;
  oat_esistente.sql.add('select * from oat where frn_codice = :frn_codice and tda_codice=:tda_codice and situazione=:situazione');
  oat_esistente.sql.add('and stampato = '''' ');
  oat_esistente.sql.add('order by progressivo desc limit 1');

  oar_ultimo := tmyquery_go.create(self);
  oar_ultimo.connection := arc.arcdit;
  oar_ultimo.sql.text := 'select max(riga) riga from oar where progressivo=:progressivo';

  oat := tmyquery_go.create(self);
  oat.connection := arc.arcdit;
  oat.sql.text := 'select * from oat where frn_codice=:frn_codice and cms_codice=:cms_codice and tipologia=:tipologia and situazione in ( ''inserito'', ''evaso parziale'') ';

  oar := tmyquery_go.create(self);
  oar.connection := arc.arcdit;
  oar.sql.text := 'select * from oar where progressivo =:progressivo and cms_codice=:cms_codice and tipologia=:tipologia and art_codice=:art_codice and data_consegna=:data_consegna';

  cpa := tmyquery_go.create(self);
  cpa.connection := arc.arcdit;
  cpa.sql.text := 'select gen_codice from cpa';
  cpa.sql.add('where tcf_codice = :tcf_codice');
  cpa.sql.add('and taq_codice = :taq_codice');

  v_frn_codice.text := promau_frn_codice;

  frn := tmyquery_go.create(self);
  frn.connection := arc.arcdit;
  frn.sql.text := 'select * from frn';
  frn.sql.add('where codice = :codice');

  lavorazioni := tmyquery_go.create(self);
  lavorazioni.connection := arc.arcdit;
  lavorazioni.sql.add('select dsb.art_codice_figlio, dsb.quantita, art.descrizione1, art.descrizione2');
  lavorazioni.sql.add('from dsb');
  lavorazioni.sql.add('inner join art on art.codice = dsb.art_codice_figlio');
  lavorazioni.sql.add('where art_codice_padre = :art_codice_padre and art.tipo_articolo =:tipo_articolo');

  opc_gesorda := tmyquery_go.create(self);
  opc_gesorda.connection := arc.arcdit;
  opc_gesorda.sql.add('select fas.descrizione, opc.note');
  opc_gesorda.sql.add('from opc');
  opc_gesorda.sql.add('inner join fas on fas.codice = opc.fas_codice');
  opc_gesorda.sql.add('where opc.progressivo = :progressivo');
  opc_gesorda.sql.add('order by opc.sequenza');

  ins_promau_lav := tmyquery_go.create(self);
  ins_promau_lav.connection := arc.arcdit;
  ins_promau_lav.sql.add('insert into promau_ritardi_lavorazioni( progressivo, riga, sequenza, fas_codice, quantita, costo_consuntivo, data_consegna ) ');
  ins_promau_lav.sql.add('values ( :progressivo, :riga, :sequenza, :fas_codice, :quantita, :costo_consuntivo, :data_consegna ) ');

  // -----------------------------------------------
  // ordini vendita
  // -----------------------------------------------
  art_codice_spese_extra := arc.dit.fieldbyname('art_codice_spese_extra').asstring;
  art_codice_spese_trasporto := arc.dit.fieldbyname('art_codice_spese_trasporto').asstring;
  art_codice_spese_bollo := arc.dit.fieldbyname('art_codice_bollo').asstring;
  art_codice_spese_incasso := arc.dit.fieldbyname('art_codice_spese_incasso').asstring;
  art_codice_cassa_professionisti := arc.dit.fieldbyname('art_codice_cassa_professionisti').asstring;
  art_codice_sconti_fattura := arc.dit.fieldbyname('art_codice_sconti_fattura').asstring;
  art_codice_sconto_cassa := arc.dit.fieldbyname('art_codice_sconto_cassa').asstring;
  gen_codice_ritenuta := arc.dit.fieldbyname('gen_codice_ritenuta_acconto').asstring;
  tiv_codice_omaggi := arc.dit.fieldbyname('tiv_codice_omaggi_vendite').asstring;
  listini_scaglioni := arc.dit.fieldbyname('listini_scaglioni').asstring;

  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_spese_extra) then
  begin
    tiv_codice_spese_extra := archivio.fieldbyname('tiv_codice_vendite').asstring;
    tca_codice_spese_extra := archivio.fieldbyname('tca_codice').asstring;
  end;
  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_spese_trasporto) then
  begin
    tca_codice_trasporto := archivio.fieldbyname('tca_codice').asstring;
  end;
  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_spese_bollo) then
  begin
    tiv_codice_spese_bollo := archivio.fieldbyname('tiv_codice_vendite').asstring;
    tca_codice_bollo := archivio.fieldbyname('tca_codice').asstring;
  end;
  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_spese_incasso) then
  begin
    tiv_codice_spese_incasso := archivio.fieldbyname('tiv_codice_vendite').asstring;
    tca_codice_spese_incasso := archivio.fieldbyname('tca_codice').asstring;
  end;
  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_cassa_professionisti) then
  begin
    tiv_codice_cassa_professionisti := archivio.fieldbyname('tiv_codice_vendite').asstring;
    tca_codice_cassa_professionisti := archivio.fieldbyname('tca_codice').asstring;
  end;
  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_sconto_cassa) then
  begin
    tca_codice_sconto_cassa := archivio.fieldbyname('tca_codice').asstring;
  end;

  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_sconti_fattura) then
  begin
    tca_codice_sconti_fattura := archivio.fieldbyname('tca_codice').asstring;
  end;

  // -----------------------------------------------
  // ordini produzione
  // -----------------------------------------------

  tmo_codice_finiti := arc.dit.fieldbyname('tmo_codice_finiti').asstring;
  tma_codice_finiti := arc.dit.fieldbyname('tma_codice_finiti').asstring;
  tmo_codice_materie_prime := arc.dit.fieldbyname('tmo_codice_materie_prime').asstring;
  tma_codice_materie_prime := arc.dit.fieldbyname('tma_codice_materie_prime').asstring;
  tda_codice_produzione_presso_terzi := arc.dit.fieldbyname('tda_codice_produzione_presso_te').asstring;
  art_codice_sconti_fattura_acq := arc.dit.fieldbyname('art_codice_sconti_fattura_acq').asstring;
  art_codice_sconto_cassa_acq := arc.dit.fieldbyname('art_codice_sconto_cassa_acq').asstring;
  tiv_codice_omaggi := arc.dit.fieldbyname('tiv_codice_omaggi_acquisto').asstring;
  costo_produzione := arc.dit.fieldbyname('costo_produzione').asstring;
  varia_dsb_ordp := arc.dit.fieldbyname('varia_dsb_ordp').asstring;
  tipo_esplosione := arc.dit.fieldbyname('tipo_esplosione').asstring;
  if costo_produzione = 'ultimo costo' then
  begin
    costo_produzione := 'ultimo prezzo acquisto';
  end;

  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_sconto_cassa_acq, 'taq_codice') then
  begin
    taq_codice_sconto_cassa := archivio.fieldbyname('taq_codice').asstring;
  end;
  if read_tabella(arc.arcdit, 'art', 'codice', art_codice_sconti_fattura_acq, 'taq_codice') then
  begin
    taq_codice_sconti_fattura := archivio.fieldbyname('taq_codice').asstring;
  end;

  nome_tabella := 'gesordp_semilavorati';
  azzera_tabella(nome_tabella, sor);
  sor.indexfieldnames := 'utn_codice,art_codice';

  ins_sor.close;
  ins_sor.sql.clear;
  ins_sor.sql.add('insert into promau_impordv_log( utn_codice, utente_creazione, data_ora_creazione, utente, data_ora, cli_codice, art_codice_cliente,art_esponente, codice_controllo, messaggio ) ');
  ins_sor.sql.add('values( :utn_codice, :utente_creazione, :data_ora_creazione, :utente, :data_ora, :cli_codice, :art_codice_cliente, :art_esponente, :codice_controllo, :messaggio ) ');

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('select * from promau_impordv_log');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice and');
  query_sor.sql.add('cli_codice=:cli_codice and');
  query_sor.sql.add('art_codice_cliente=:art_codice and');
  query_sor.sql.add('art_esponente=:art_esponente and');
  query_sor.sql.add('codice_controllo=:codice_controllo');

  sor_cms.close;
  sor_cms.sql.clear;
  sor_cms.sql.add('select * from promau_impordv_contratti');
  sor_cms.sql.add('where');
  sor_cms.sql.add('utn_codice=:utn_codice and');
  sor_cms.sql.add('contratto=:contratto');

  sor_articoli.close;
  sor_articoli.sql.clear;
  sor_articoli.sql.add('select * from arc_ordinamento.promau_impordv_articoli');
  sor_articoli.sql.add('where');
  sor_articoli.sql.add('utn_codice=:utn_codice and');
  sor_articoli.sql.add('cli_codice=:cli_codice and');
  sor_articoli.sql.add('indirizzo=:indirizzo and');
  sor_articoli.sql.add('contratto=:contratto and');
  sor_articoli.sql.add('posizione=:posizione and');
  sor_articoli.sql.add('art_codice=:art_codice and ');
  sor_articoli.sql.add('data_consegna=:data_consegna and');
  sor_articoli.sql.add('art_codice_semilav=:art_codice_semilav and');
  sor_articoli.sql.add('frn_codice_terzista=:frn_codice_terzista ');
end;

procedure TA31IMPORDV.FormDestroy(Sender: TObject);
begin
  inherited;

  dicint.free;
  ovr_produzione.free;
  opr_produzione.free;
  ovr_cancella.free;
  ovr_ritardi.free;
  ovr_ultimo.free;
  cms_ultimo.free;
  cms.free;
  cmt.free;
  oar_produzione.free;
  oat_esistente.free;
  oar_ultimo.free;
  oat.free;
  oar.free;
  cpa.free;
  frn.free;
  lavorazioni.free;
  opc_gesorda.free;
  ins_promau_lav.free;
end;

procedure TA31IMPORDV.FormShow(Sender: TObject);
begin
  inherited;

  xlsdialog.InitialDir := copy(cartella_installazione, 1, length(cartella_installazione) - 4) + 'importa';

  visualizza_descrizioni(false);

  arc.assnum_cnt.LockMode := lmOptimistic;
end;

procedure TA31IMPORDV.crea_ovr(progressivo, riga: integer;
  cms_codice, tdo_codice, art_codice_semilav, frn_codice_terzista: string);
var
  id_ovr: integer;
  quantita_prec, prezzo, numero2, importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato: double;
  tsm_codice, tsm_codice_art: string;
begin

  cerca_commessa(cms_codice, sor_articoli.fieldbyname('posizione').asstring, tdo_codice, sor_articoli.fieldbyname('art_codice').asstring, sor_articoli.fieldbyname('art_descrizione1').asstring, sor_articoli.fieldbyname('data_consegna').asdatetime);

  //----------------------------------------------------------
  // 07.05.2015 Paolo
  // se ritardo annullo tutte le righe in stato evaso parziale
  // 14.07.2015
  // e gli ordini produzione e conto terzi
  //-----------------------------------------------------------
  if sor_articoli.fieldbyname('data_consegna').asdatetime = date then
  begin
    ovr_ritardi.close;
    ovr_ritardi.parambyname('progressivo').asinteger := progressivo;
    ovr_ritardi.parambyname('art_codice').asstring := sor_articoli.fieldbyname('art_codice').asstring;
    ovr_ritardi.parambyname('cms_codice').asstring := cms_codice;
    ovr_ritardi.parambyname('tipologia').asstring := sor_articoli.fieldbyname('posizione').asstring;
    ovr_ritardi.parambyname('data_consegna').asdatetime := sor_articoli.fieldbyname('data_consegna').asdatetime;
    ovr_ritardi.open;
    while not ovr_ritardi.eof do
    begin
      annulla_ordini_produzione('ordine ven', ovr_ritardi.fieldbyname('progressivo').asinteger, ovr_ritardi.fieldbyname('riga').asinteger);

      ovr_ritardi.next;
    end;

    upd_ovr.parambyname('progressivo').asinteger := progressivo;
    upd_ovr.parambyname('art_codice').asstring := sor_articoli.fieldbyname('art_codice').asstring;
    upd_ovr.parambyname('cms_codice').asstring := cms_codice;
    upd_ovr.parambyname('tipologia').asstring := sor_articoli.fieldbyname('posizione').asstring;
    upd_ovr.parambyname('data_consegna').asdatetime := sor_articoli.fieldbyname('data_consegna').asdatetime;
    upd_ovr.execsql;

    controlla_transazione;
  end; //

  ovr.close;
  ovr.sql.clear;
  ovr.sql.add('select * from ovr');
  ovr.sql.add('where');
  ovr.sql.add('progressivo=:progressivo and ');
  ovr.sql.add('art_codice=:art_codice and ');
  ovr.sql.add('cms_codice=:cms_codice and ');
  ovr.sql.add('tipologia=:tipologia and ');
  ovr.sql.add('a31_art_codice_semilav=:art_codice_semilav and ');
  ovr.sql.add('a31_frn_codice_terzista=:frn_codice_terzista and ');
  ovr.sql.add('situazione in ( ''evaso parziale'' ) ');

  ovr.parambyname('progressivo').asinteger := progressivo;
  ovr.parambyname('art_codice').asstring := sor_articoli.fieldbyname('art_codice').asstring;
  ovr.parambyname('cms_codice').asstring := cms_codice;
  ovr.parambyname('tipologia').asstring := sor_articoli.fieldbyname('posizione').asstring;
  ovr.parambyname('art_codice_semilav').asstring := sor_articoli.fieldbyname('frn_codice_terzista').asstring;
  ovr.parambyname('frn_codice_terzista').asstring := sor_articoli.fieldbyname('frn_codice_terzista').asstring;

  //  ovr.parambyname('data_consegna').asdatetime := sor_articoli.fieldbyname('data_consegna').asdatetime;
  ovr.open;

  quantita_evasa := ovr.fieldbyname('quantita_evasa').asfloat;

  while not ovr.eof do
  begin
    // ---------------------------------------------------------------------------
    // 07.03.2012 paolo
    // la riga con posizione se ripassata e risulta evasa
    // parziale deve essere chiusa e riapert una nuova riga per la nuova quantita
    // se evasa si riapre cmq una nuova riga
    // ---------------------------------------------------------------------------
    scrivi_log('annulla riga ordine prec ' + inttostr(progressivo) + v_cli_codice.text + ' cms ' + cms_codice + ' pos.:' + sor_articoli.fieldbyname('posizione').asstring);

    ovr.edit;
    ovr.fieldbyname('situazione').asstring := 'annullato';
    ovr.post;

    // ---------------------------------------------------------------------------
    // 14.07.2015 Paolo
    // annullo ordini pèrod e terzisti pianificazione
    // ---------------------------------------------------------------------------
    annulla_ordini_produzione('ordine ven', ovr.fieldbyname('progressivo').asinteger, ovr.fieldbyname('riga').asinteger);
    scrivi_log('---------------------------------------------------------------');

    // ---------------------------------------------------------------------------
    ovr.next;
  end;

  if sor_articoli.fieldbyname('quantita').asfloat > 0 then
  begin
    ovr.close;
    ovr.sql.clear;
    ovr.sql.add('select * from ovr');
    ovr.sql.add('where');
    ovr.sql.add('progressivo=:progressivo and ');
    ovr.sql.add('art_codice=:art_codice and ');
    ovr.sql.add('cms_codice=:cms_codice and ');
    ovr.sql.add('tipologia=:tipologia and ');
    ovr.sql.add('a31_frn_codice_terzista=:frn_codice_terzista and ');
    ovr.sql.add('data_consegna=:data_consegna and ');
    ovr.sql.add('situazione in ( ''inserito'', ''evaso parziale'' ) ');
    ovr.parambyname('progressivo').asinteger := progressivo;
    ovr.parambyname('art_codice').asstring := sor_articoli.fieldbyname('art_codice').asstring;
    ovr.parambyname('cms_codice').asstring := cms_codice;
    ovr.parambyname('tipologia').asstring := sor_articoli.fieldbyname('posizione').asstring;
    ovr.parambyname('data_consegna').asdatetime := sor_articoli.fieldbyname('data_consegna').asdatetime;
    ovr.open;

    //    if ovr.eof then
    begin
      ovr_ultimo.close;
      ovr_ultimo.parambyname('progressivo').asinteger := ovt.fieldbyname('progressivo').asinteger;
      ovr_ultimo.open;

      riga := ovr_ultimo.fieldbyname('riga').asinteger;
      riga := riga + 10;

      scrivi_log('aggiunta riga ordine articolo ' + sor_articoli.fieldbyname('art_codice').asstring + ' pos.:' + sor_articoli.fieldbyname('posizione').asstring);
      scrivi_log('---------------------------------------------------------------');

      ovr.append;
      ovr.fieldbyname('progressivo').asfloat := progressivo;

      ovr.fieldbyname('riga').asinteger := riga;
      ovr.fieldbyname('situazione').asstring := 'inserito';

      ovr.fieldbyname('art_codice').asstring := sor_articoli.fieldbyname('art_codice').asstring;
      ovr.fieldbyname('descrizione1').asstring := sor_articoli.fieldbyname('art_descrizione1').asstring;
      ovr.fieldbyname('descrizione2').asstring := sor_articoli.fieldbyname('art_descrizione2').asstring;

      ovr.fieldbyname('tma_codice').asstring := ovt.fieldbyname('tma_codice').asstring;
      ovr.fieldbyname('tum_codice').asstring := sor_articoli.fieldbyname('art_tum_codice').asstring;
      if ovt.fieldbyname('tiv_codice').asstring <> '' then
      begin
        ovr.fieldbyname('tiv_codice').asstring := ovt.fieldbyname('tiv_codice').asstring;
      end
      else
      begin
        ovr.fieldbyname('tiv_codice').asstring := sor_articoli.fieldbyname('art_tiv_codice_vendite').asstring;
      end;

      cpv.Close;
      cpv.ParamByName('tcc_codice').asstring := cli.fieldbyname('tcc_codice').asstring;
      cpv.ParamByName('tca_codice').asstring := sor_articoli.fieldbyname('art_tca_codice').asstring;
      cpv.open;

      ovr.fieldbyname('gen_codice').asstring := cpv.fieldbyname('gen_codice').asstring;

      ovr.fieldbyname('cms_codice').asstring := cms_codice;
      ovr.fieldbyname('tipologia').asstring := cmt.fieldbyname('tipologia').asstring;
      ovr.fieldbyname('data_consegna').asdatetime := sor_articoli.fieldbyname('data_consegna').asdatetime;
      ovr.fieldbyname('situazione').asstring := 'inserito';
      ovr.fieldbyname('note').asstring := 'pos.:' + sor_articoli.fieldbyname('posizione').asstring;
      if sor_articoli.fieldbyname('commessa_cliente').asstring <> '' then
      begin
        ovr.fieldbyname('note').asstring := ovr.fieldbyname('note').asstring + #13 + 'commessa:' + sor_articoli.fieldbyname('commessa_cliente').asstring;
      end;

      ovr.fieldbyname('id_origine').asinteger := sor_articoli.fieldbyname('posizione').asinteger;
      ovr.fieldbyname('a31_frn_codice_terzista').asstring := sor_articoli.fieldbyname('frn_codice_terzista').asstring;
      ovr.post;

      cpv.Close;

      id_ovr := ovr.fieldbyname('id').asinteger;
      quantita_prec := 0;
    end;
    (*
      else
      begin
      id_ovr := ovr.fieldbyname('id').asinteger;
      quantita_prec := ovr.fieldbyname('quantita').asfloat;
      end;
    *)
    ovr_id.close;
    ovr_id.parambyname('id').asinteger := id_ovr;
    ovr_id.open;

    ovr_id.edit;
    if ovr_id.fieldbyname('art_codice').asstring <> '' then
    begin
      scrivi_log('modifica riga ordine quantità (' + sor_articoli.fieldbyname('quantita').asstring + ') qta evasa' + ovr_id.fieldbyname('quantita_evasa').asstring);

      ovr_id.fieldbyname('quantita').asfloat := sor_articoli.fieldbyname('quantita').asfloat;

      if (sor_articoli.fieldbyname('quantita_collo').asfloat <> 0) then
      begin
        numero2 := arrotonda(ovr_id.fieldbyname('quantita').asfloat / sor_articoli.fieldbyname('quantita_collo').asfloat, 0);
        ovr_id.fieldbyname('numero_colli').asinteger := trunc(numero2);
      end;

      if (sor_articoli.fieldbyname('pezzi_confezione').asfloat <> 0) then
      begin
        numero2 := arrotonda(ovr_id.fieldbyname('quantita').asfloat / sor_articoli.fieldbyname('pezzi_confezione').asfloat, 0);
        ovr_id.fieldbyname('numero_confezioni').asinteger := trunc(numero2);
      end;

      if sor_articoli.fieldbyname('prezzo').asfloat = 0 then
      begin
        prezzo := promau_cerca_prezzo(ovt.fieldbyname('cli_codice').asstring, ovt.fieldbyname('indirizzo').asstring, ovt.fieldbyname('riferimento').asstring, ovr_id.fieldbyname('id_origine').asstring, ovr_id.fieldbyname('art_codice').asstring, ovt.fieldbyname('tlv_codice').asstring,
          tdo.fieldbyname('prezzo_proposto').asstring, tipo_documento, '', cifre_decimali_prezzo, tsm_codice, tsm_codice_art,
          ovt.fieldbyname('data_documento').asdatetime, ovr.fieldbyname('quantita').asfloat);
      end
      else
      begin
        prezzo := sor_articoli.fieldbyname('prezzo').asfloat;
      end;

      try
        ovr_id.fieldbyname('prezzo').asfloat := prezzo;
        ovr_id.fieldbyname('tsm_codice').asstring := tsm_codice;
        ovr_id.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
      except
      end;

      ovr_id.fieldbyname('importo').asfloat := (ovr_id.fieldbyname('quantita').asfloat * ovr_id.fieldbyname('prezzo').asfloat);
      ovr_id.fieldbyname('importo_euro').asfloat := ovr_id.fieldbyname('importo').asfloat;

      importo := ovr_id.fieldbyname('importo').asfloat;
      importo_euro := ovr_id.fieldbyname('importo_euro').asfloat;
      importo_iva := ovr_id.fieldbyname('importo_iva').asfloat;
      importo_iva_euro := ovr_id.fieldbyname('importo_iva_euro').asfloat;

      calcola_importo_documento(ovr_id.fieldbyname('quantita').asfloat, ovr_id.fieldbyname('prezzo').asfloat, ovt.fieldbyname('cambio').asfloat, ovr_id.fieldbyname('importo_sconto').asfloat, 'no', ovt.fieldbyname('listino_con_iva').asstring, codice_tum(ovr_id.fieldbyname('art_codice').asstring),
        ovr_id.fieldbyname('tiv_codice').asstring, '', '', importo, importo_euro, importo_iva,
        importo_iva_euro, importo_non_arrotondato);

      ovr_id.fieldbyname('importo').asfloat := importo;
      ovr_id.fieldbyname('importo_euro').asfloat := importo_euro;
      ovr_id.fieldbyname('importo_iva').asfloat := importo_iva;
      ovr_id.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;
      ovr_id.post;

      if v_ordini_produzione.checked then
      begin
        id := 0;

        art_finiti.close;
        art_finiti.parambyname('codice').asstring := ovr_id.fieldbyname('art_codice').asstring;
        art_finiti.open;

        //--------------------------------------------------------------------
        // 08.05.2019 Paolo
        // se TCM_CODICE <>'ACQ' creo ordine di produzione
        //--------------------------------------------------------------------
        // 18.09.2020 Paolo
        // se TCM_CODICE <>'AVV' creo ordine di produzione
        //--------------------------------------------------------------------

        if (art_finiti.fieldbyname('tcm_codice').asstring <> 'ACQ') and (art_finiti.fieldbyname('tcm_codice').asstring <> 'AVV') then
        begin
          disponibilita := 0;
          if v_dispo.checked then
          begin
            mag_tot.close;
            mag_tot.parambyname('art_codice').asstring := ovr_id.fieldbyname('art_codice').asstring;
            mag_tot.open;

            if not mag_tot.eof then
            begin
              disponibilita := (mag_tot.fieldbyname('esistenza').asfloat - mag_tot.fieldbyname('impegnato').asfloat + mag_tot.fieldbyname('ordinato').asfloat + ovr_id.fieldbyname('quantita').asfloat);
            end;

            // ----------------------------------
            // devo sommare la quantita della riga altrimenti mi raddoppia ordine prod.
            // ----------------------------------

            if v_visualizza_giacenze.checked then
            begin
              showmessage('esistenza ' + mag_tot.fieldbyname('esistenza').asstring + #13 + #10 + 'impegnato ' + mag_tot.fieldbyname('impegnato').asstring + #13 + #10 + 'ordinato ' + mag_tot.fieldbyname('ordinato').asstring + #13 + #10 + 'ovr quantita ' + ovr_id.fieldbyname('quantita').asstring +
                #13 + #10);
            end;

          end;

          quantita := ovr_id.fieldbyname('quantita').asfloat - ovr_id.fieldbyname('quantita_evasa').asfloat;

          if (v_dispo.checked) and (quantita > 0) then

          begin
            quantita := controllo_quantita(ovr_id.fieldbyname('art_codice').asstring, tma_codice_finiti, 'finito', ovr_id.fieldbyname('quantita').asfloat - quantita_prec, quantita);

            if v_visualizza_giacenze.checked then
            begin
              showmessage('quantita ' + floattostr(quantita) + #13 + #10 + 'disponibilita ' + floattostr(quantita) + #13 + #10);
            end;

            scrivi_log('articolo: ' + mag_tot.fieldbyname('art_codice').asstring + '  - quantità da produrre: ' + floattostr(quantita));
            scrivi_log('scorta minima: ' + mag_tot.fieldbyname('scorta_minima').asstring + ' scorta massima:' + mag_tot.fieldbyname('scorta_massima').asstring + ' lotto riordino:' + mag.fieldbyname('lotto_riordino').asstring);
            scrivi_log('--------------------------------------------------------------------------------------------------');
          end;

          if quantita > 0 then
          begin
            scrivi_log('genero ordine prod articolo:' + ovr_id.fieldbyname('art_codice').asstring + ' quantita ' + floattostr(quantita));
            scrivi_log('--------------------------------------------------------------------------------------------------');

            crea_distinta_base('ordine ven', ovt.fieldbyname('cli_codice').asstring, ovt.fieldbyname('tdo_codice').asstring, ovt.fieldbyname('data_documento').asdatetime, ovr_id.fieldbyname('progressivo').asinteger, ovr_id.fieldbyname('riga').asinteger, ovr_id.fieldbyname('progressivo').asinteger,
              ovr_id.fieldbyname('riga').asinteger, ovr_id.fieldbyname('art_codice').asstring, '', quantita,
              ovr_id.fieldbyname('data_consegna').asdatetime, ovr_id.fieldbyname('cms_codice').asstring, ovr_id.fieldbyname('tipologia').asstring, '', 'no', 'ordine cliente',
              art_codice_semilav, frn_codice_terzista);
          end;

        end;
      end;
    end; // if

    mag.close;
    mag_tot.close;
  end // if
  else
  begin
    quantita := sor_articoli.fieldbyname('quantita').asfloat;
    id_ovr := ovr.fieldbyname('id').asinteger;

    ovr_id.close;
    ovr_id.parambyname('id').asinteger := id_ovr;
    ovr_id.open;

    crea_distinta_base('ordine ven', ovt.fieldbyname('cli_codice').asstring, ovt.fieldbyname('tdo_codice').asstring, ovt.fieldbyname('data_documento').asdatetime, 0, 0, 0, 0, sor_articoli.fieldbyname('art_codice').asstring, '', quantita, sor_articoli.fieldbyname('data_consegna').asdatetime,
      sor_articoli.fieldbyname('cms_codice').asstring, sor_articoli.fieldbyname('posizione').asstring, '', 'no',
      'ordine cliente', sor_articoli.fieldbyname('art_codice_semilav').asstring, sor_articoli.fieldbyname('frn_codice_terzista').asstring);
  end;

end;

procedure TA31IMPORDV.crea_dsb(art_codice: string; data_consegna: tdatetime; quantita: double; art_codice_semilav, frn_codice_terzista: string);
begin

  art_finiti.close;
  art_finiti.parambyname('codice').asstring := art_codice;
  art_finiti.open;

  disponibilita := 0;
  if v_dispo.checked then
  begin
    mag_tot.close;
    mag_tot.parambyname('art_codice').asstring := art_codice;
    mag_tot.open;

    if not mag_tot.eof then
    begin
      disponibilita := (mag_tot.fieldbyname('esistenza').asfloat - mag_tot.fieldbyname('impegnato').asfloat + mag_tot.fieldbyname('ordinato').asfloat + quantita);
    end;

    // ----------------------------------
    // devo sommare la quantita della riga altrimenti mi raddoppia ordine prod.
    // ----------------------------------

    if v_visualizza_giacenze.checked then
    begin
      showmessage('esistenza ' + mag_tot.fieldbyname('esistenza').asstring + #13 + #10 + 'impegnato ' + mag_tot.fieldbyname('impegnato').asstring + #13 + #10 + 'ordinato ' + mag_tot.fieldbyname('ordinato').asstring + #13 + #10 + 'ovr quantita ' + ovr_id.fieldbyname('quantita').asstring + #13 + #10);
    end;

  end;

  if (v_dispo.checked) and (quantita > 0) then
  begin
    quantita := controllo_quantita(art_codice, tma_codice_finiti, 'finito', quantita, quantita);

    if v_visualizza_giacenze.checked then
    begin
      showmessage('quantita ' + floattostr(quantita) + #13 + #10 + 'disponibilita ' + floattostr(quantita) + #13 + #10);
    end;

    scrivi_log('articolo: ' + mag_tot.fieldbyname('art_codice').asstring + '  - quantità da produrre: ' + floattostr(quantita));
    scrivi_log('scorta minima: ' + mag_tot.fieldbyname('scorta_minima').asstring + ' scorta massima:' + mag_tot.fieldbyname('scorta_massima').asstring + ' lotto riordino:' + mag.fieldbyname('lotto_riordino').asstring);
    scrivi_log('--------------------------------------------------------------------------------------------------');
  end;

  if quantita > 0 then
  begin
    scrivi_log('genero ordine prod articolo:' + art_codice + ' quantita ' + floattostr(quantita));
    scrivi_log('--------------------------------------------------------------------------------------------------');

    crea_distinta_base('', '', '', now, 0, 0, 0, 0, art_codice, '', quantita, data_consegna, '', '', 'ordine produzione generato da file excel (' + v_nome_file.text, 'no', '', art_codice_semilav, frn_codice_terzista);
  end
  else
  begin
    crea_ordine_lavorazione_presso_terzi(art_finiti.fieldbyname('frn_codice').asstring, data_consegna, 0, quantita);
  end;

end;

procedure TA31IMPORDV.cerca_commessa
  (var cms_codice: string;
  tipologia, tdo_codice, art_codice, art_descrizione1: string;
  data_consegna: tdatetime);
var
  codice: string;
begin
  cms_ultimo.close;
  cms_ultimo.open;

  cms.close;
  cms.parambyname('descrizione1').asstring := cms_codice;
  cms.open;
  if cms.eof then
  begin
    cms.append;
    codice := setta_lunghezza(inttostr(cms_ultimo.fieldbyname('ultimo_cms').asinteger + 1), 20, true, '0');
  end
  else
  begin
    cms.edit;
    codice := cms.fieldbyname('codice').asstring;
  end;

  cms.fieldbyname('codice').asstring := codice;
  cms.fieldbyname('cli_codice').asstring := sor_articoli.fieldbyname('cli_codice').asstring;
  cms.fieldbyname('descrizione1').asstring := cms_codice;
  cms.fieldbyname('data_registrazione').asdatetime := now;
  cms.fieldbyname('data_consegna').asdatetime := data_consegna;
  cms.post;

  cms_codice := codice;

  cmt.close;
  cmt.parambyname('cms_codice').asstring := cms_codice;
  cmt.parambyname('tipologia').asstring := tipologia;
  cmt.open;
  if cmt.eof then
  begin
    cmt.append;
  end
  else
  begin
    cmt.edit;
  end;

  cmt.fieldbyname('cms_codice').asstring := cms.fieldbyname('codice').asstring;
  cmt.fieldbyname('tipologia').asstring := tipologia;
  cmt.fieldbyname('descrizione').asstring := art_codice + ' ' + art_descrizione1;
  cmt.post;

end;

procedure TA31IMPORDV.crea_distinta_base(tipo_documento, cli_codice, tdo_codice: string;
  data_documento: tdatetime;
  ovr_progressivo, ovr_riga, progressivo_origine, riga_origine: integer;
  art_codice, art_codice_semilavorato: string;
  quantita: double;
  data_consegna: tdatetime;
  cms_codice, cmt_codice, nota, opt_ritardo, opt_archivio, art_codice_semilav_forza, frn_codice_terzista: string);
var
  progressivo: integer;
  gg_anticipo: double;
  data_consegna_componenti: tdatetime;
  frn_codice: string;
begin
  if cli_codice <> '' then
  begin
    gg_anticipo := 7 * v_frn_anticipo.value;
  end;

  if sor_articoli.fieldbyname('ritardo').asstring = 'si' then
  begin
    gg_anticipo := 0;
    // data_consegna := (now - 1);
  end;
  data_consegna := data_consegna - gg_anticipo;
  data_consegna_componenti := data_consegna;

  dsb.close;
  dsb.parambyname('art_codice_padre').asstring := art_codice;
  dsb.parambyname('data_inizio').asdatetime := data_documento;
  dsb.parambyname('data_fine').asdatetime := data_documento;
  dsb.open;

  if not dsb.eof then
  begin
    creazione_automatica := true;

    art_finiti.close;
    art_finiti.parambyname('codice').asstring := art_codice;
    art_finiti.open;

    if quantita > 0 then
    begin
      progressivo := arc.setta_valore_generatore(arc.arcdit, 'OPT_PROGRESSIVO');

      // ----------------------------------------------------------
      // crea la testata
      // ----------------------------------------------------------
      opt.close;
      opt.parambyname('progressivo').asinteger := progressivo;
      opt.open;
      if opt.eof then
      begin
        scrivi_log('genera ordine prod. progressivo:' + inttostr(progressivo) + ' ' + art_codice + ' quantità:' + floattostr(quantita));
        scrivi_log('---------------------------------------------------------------');

        numero_documento_precedente := 0;
        numero_documento := 0;
        assegna_numerazione(arc.arcdit, ditta, 'ORDINI PRODUZIONE', '', date, data_precedente, numero_documento, numero_documento_precedente, true);

        opt.append;
        opt.fieldbyname('progressivo').asinteger := progressivo;
        opt.fieldbyname('a31cli_codice').asstring := cli_codice;
        opt.fieldbyname('a31tdo_codice').asstring := tdo_codice;
        if tipo_documento = 'ordine ven' then
        begin
          opt.fieldbyname('ovr_progressivo').asinteger := ovr_progressivo;
          opt.fieldbyname('ovr_riga').asinteger := ovr_riga;
        end;
        opt.fieldbyname('data_documento').Asdatetime := now;
        opt.fieldbyname('numero_documento').asinteger := numero_documento;

        opt.fieldbyname('tmo_codice_finiti').asstring := tmo_codice_finiti;
        opt.fieldbyname('tma_codice_finiti').asstring := art_finiti.fieldbyname('tma_codice_finiti').asstring;
        opt.fieldbyname('tmo_codice_materie_prime').asstring := tmo_codice_materie_prime;
        opt.fieldbyname('tma_codice_materie_prime').asstring := art_finiti.fieldbyname('tma_codice_finiti').asstring;
        // opt.fieldbyname('tda_codice_ordine').asstring := tda_codice_produzione_presso_terzi;

        opt.fieldbyname('art_codice').asstring := art_codice;
        opt.fieldbyname('art_codice_semilavorato').asstring := art_codice_semilavorato;
        opt.fieldbyname('formula').asstring := '';
        opt.fieldbyname('tipo_esplosione').asstring := tipo_esplosione;
        opt.fieldbyname('avanzamento_fasi').asstring := arc.dit.fieldbyname('avanzamento_fasi').asstring;
        if opt.fieldbyname('avanzamento_fasi').asstring = 'si' then
        begin
          // opt.fieldbyname('top_codice').asstring := tdo.fieldbyname('a31_tdo_codice').asstring;
        end;

        opt.fieldbyname('lot_codice').asstring := '';

        if not art_finiti.isempty then
        begin
          if art_finiti.fieldbyname('frn_codice').asstring <> v_frn_codice.text then
          begin
            opt.fieldbyname('avanzamento_fasi').asstring := 'no';
            opt.fieldbyname('frn_codice').asstring := art_finiti.fieldbyname('frn_codice').asstring;

            if art_finiti.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
            begin
              opt.fieldbyname('tma_codice_materie_prime').asstring := art_finiti.fieldbyname('tma_codice_conto_terzi').asstring;
            end;
          end;

          //----------------------------------------------------------------
          // 09.09.2020 terzista da file A31IMPORDV
          //----------------------------------------------------------------
          if (opt.FieldByName('art_codice').asstring = art_codice_semilav_forza) and (frn_codice_terzista <> '') then
          begin
            opt.fieldbyname('frn_codice').asstring := frn_codice_terzista;

            if frn_codice_terzista
              <> v_frn_codice.text then
            begin
              read_tabella(arc.arcdit, 'frn', 'codice', opt.fieldbyname('frn_codice').asstring);
              opt.fieldbyname('tma_codice_finiti').asstring := 'IN';
              opt.fieldbyname('tma_codice_materie_prime').asstring := archivio.fieldbyname('tma_codice_conto_terzi').asstring;
            end
            else
            begin
              opt.fieldbyname('tma_codice_finiti').asstring := art_finiti.fieldbyname('tma_codice_finiti').asstring;
              opt.fieldbyname('tma_codice_materie_prime').asstring := art_finiti.fieldbyname('tma_codice_finiti').asstring;

              if art_finiti.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
              begin
                opt.fieldbyname('tma_codice_materie_prime').asstring := art_finiti.fieldbyname('tma_codice_conto_terzi').asstring;
              end;
            end;
          end;

        end;
        opt.fieldbyname('quantita').asfloat := quantita;
        opt.fieldbyname('data_consegna').asdatetime := data_consegna;

        opt.fieldbyname('cms_codice').asstring := cms_codice;
        opt.fieldbyname('tipologia').asstring := cmt_codice;
        opt.fieldbyname('documento_origine').asstring := tipo_documento;
        opt.fieldbyname('doc_progressivo_origine').asinteger := progressivo_origine;
        opt.fieldbyname('doc_riga_origine').asinteger := riga_origine;
        opt.fieldbyname('descrizione').asstring := nota;

        opt.post;

        controlla_transazione;

        if opt.fieldbyname('frn_codice').asstring <> '' then
        begin
          crea_ordine_lavorazione_presso_terzi(opt.fieldbyname('frn_codice').asstring, data_consegna, gg_anticipo, quantita);
        end;

      end;

      if opt.fieldbyname('avanzamento_fasi').asstring = 'si' then
      begin
        esplodi_cicli_lavorazione(opt.fieldbyname('progressivo').asinteger, opt.fieldbyname('art_codice').asstring, opt.fieldbyname('quantita').asfloat, data_consegna_componenti, gg_anticipo);
      end;

    end
    else
    begin
      progressivo := 0;
      frn_codice := '';
      if art_finiti.fieldbyname('frn_codice').asstring <> v_frn_codice.text then
      begin
        frn_codice := art_finiti.fieldbyname('frn_codice').asstring;
        tma_codice_materie_prime := art_finiti.fieldbyname('tma_codice_conto_terzi').asstring;
        annulla_ordini_fornitori_terzi_parziali(art_codice, frn_codice, cms_codice, cmt_codice, data_consegna);
        tma_codice_materie_prime := arc.dit.fieldbyname('tma_codice_materie_prime').asstring;
      end;

      quantita := 0;

    end;

    if data_consegna_componenti < data_consegna then
    begin
      data_consegna_componenti := data_consegna_componenti + gg_anticipo;
    end;

    esplosione_distinta(data_documento, ovr_progressivo, ovr_riga, progressivo, tipo_documento, nota, tipo_esplosione, '', art_codice, art_finiti.fieldbyname('tma_codice_finiti').asstring, frn_codice, sor_articoli.fieldbyname('ritardo').asstring, cms_codice, cmt_codice, tma_codice_materie_prime,
      quantita, now, data_consegna_componenti, gg_anticipo, art_codice_semilav_forza, frn_codice_terzista);

    if (quantita > 0) and (data_consegna_componenti < data_consegna) then
    begin
      upd_opr.close;
      upd_opr.parambyname('a31data_consegna').asdatetime := data_consegna_componenti;
      upd_opr.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
      upd_opr.execsql;

      controlla_transazione;
    end;

  end;

end;

procedure TA31IMPORDV.esplosione_distinta(data_documento: tdatetime;
  ovr_progressivo, ovr_riga, opt_progressivo: integer;
  tipo_documento, nota, opt_tipo_esplosione, opt_formula, opt_art_codice, opt_tma_codice_finito, opt_frn_codice, opt_ritardo, opt_cms_codice, opt_tipologia, opt_tma_codice: string;
  opt_quantita: double; opt_data_documento, opt_data_consegna: tdatetime; gg_anticipo: double; art_codice_semilav_forza, frn_codice_terzista: string);
var
  query_semilav: tmyquery_go;

  stringa, valore: string;
  solo_materie_prime, salta_articolo: boolean;
  quantita, quantita_livello, valore_formula, disponibilita: double;
  i, riga: integer;
  salva_puntatore: TBookmark;
  lista_variabili, lista_valori: tstringlist;
begin
  // opt_data_consegna := opt_data_consegna - gg_anticipo;

  query_semilav := tmyquery_go.create(self);
  query_semilav.connection := arc.arcsor;
  query_semilav.sql.clear;
  query_semilav.sql.add('SELECT a.*, ');
  query_semilav.sql.add('date_add( a.data_consegna, interval (select sum(cla.gg_anticipo) from arc_' + ditta + '.cla cla where cla.art_codice=a.ART_CODICE)*-1 DAY ) data_effettiva ');
  query_semilav.sql.add('from arc_ordinamento.gesordp_semilavorati a ');
  query_semilav.sql.add('where');
  query_semilav.sql.add('utn_codice=:utn_codice and');
  query_semilav.sql.add('a.art_codice_finito=:art_codice_finito');
  query_semilav.sql.add('order by a.id');

  // carico il finito
  sor1.append;
  sor1.fieldbyname('utn_codice').asstring := utente;
  sor1.fieldbyname('art_codice_finito').asstring := '';
  sor1.fieldbyname('art_codice').asstring := opt_art_codice;
  sor1.fieldbyname('quantita').asfloat := opt_quantita;
  sor1.fieldbyname('utn_codice').asstring := utente;
  sor1.post;

  lista_variabili := tstringlist.create;
  lista_valori := tstringlist.create;

  if opt_formula <> '' then
  begin
    stringa := opt_formula;
    while pos(';', stringa) > 0 do
    begin
      valore := trim(copy(stringa, 1, pos(';', stringa) - 1));
      valore := stringreplace(valore, ',', '.', [rfreplaceall]);
      lista_variabili.add(trim(copy(valore, 1, pos('=', valore) - 1)));
      lista_valori.add(trim(copy(valore, pos('=', valore) + 1, length(valore))));

      stringa := copy(stringa, pos(';', stringa) + 1, length(stringa));
    end;
  end;

  // esplosione
  solo_materie_prime := false;

  while not solo_materie_prime do
  begin
    sor1.first;
    while not sor1.eof do
    begin
      id := id + 10;
      solo_materie_prime := true;

      if ((figlio(sor1.fieldbyname('art_codice').asstring, opt_data_documento)) and (opt_tipo_esplosione = 'tutti i livelli fino alle materie prime')) or (sor1.fieldbyname('art_codice').asstring = opt_art_codice) then
      begin
        solo_materie_prime := false;
        salva_puntatore := sor1.getbookmark;
        quantita := sor1.fieldbyname('quantita').asfloat;

        // -----------------------------------------------------------
        // esplode la distinta
        // -----------------------------------------------------------
        dsb.params[0].asstring := sor1.fieldbyname('art_codice').asstring;
        dsb.params[1].asdate := opt_data_documento;
        dsb.params[2].asdate := opt_data_documento;
        dsb.close;
        dsb.open;
        while not dsb.eof do
        begin
          if not sor1.locate('utn_codice;art_codice', vararrayof([utente, dsb.fieldbyname('art_codice_figlio').asstring]), []) then
          begin
            id := id + 10;

            sor1.append;
            //sor1.fieldbyname('id').asfloat := id;
            sor1.fieldbyname('utn_codice').asstring := utente;
            sor1.fieldbyname('art_codice_finito').asstring := dsb.fieldbyname('art_codice_padre').asstring;
            sor1.fieldbyname('art_codice').asstring := dsb.fieldbyname('art_codice_figlio').asstring;
            sor1.fieldbyname('quantita').asfloat := 0;

            sor1.fieldbyname('utn_codice').asstring := utente;
            sor1.post;
          end;
          sor1.edit;

          if (dsb.params[0].asstring = opt_art_codice) and (opt_formula <> '') and (dsb.fieldbyname('formula').asstring <> '') then
          begin
            stringa := dsb.fieldbyname('formula').asstring;
            for i := 0 to lista_variabili.count - 1 do
            begin
              stringa := stringreplace(stringa, lista_variabili[i], lista_valori[i], [rfreplaceall]);
            end;
            valore_formula := getformulavalue(stringa);
          end
          else
          begin
            valore_formula := 1;
          end;

          if dsb.fieldbyname('formula').asstring <> '' then
          begin
            sor1.fieldbyname('formula').asstring := dsb.fieldbyname('quantita').asstring + ' * ' + dsb.fieldbyname('formula').asstring;
          end;

          sor1.fieldbyname('quantita').asfloat := arrotonda(sor1.fieldbyname('quantita').asfloat + quantita * dsb.fieldbyname('quantita').asfloat * valore_formula, 4);

          sor1.fieldbyname('costo_unitario').asfloat := dsb.fieldbyname('prezzo').asfloat;
          if (arc.dit.fieldbyname('assegna_costo_gesordp').asstring = 'si') and (dsb.fieldbyname('prezzo').asfloat = 0) and (opt_frn_codice = '') then
          begin
            sor1.fieldbyname('costo_unitario').asfloat := costo_unitario(sor1.fieldbyname('art_codice').asstring);
          end;

          sor1.fieldbyname('note').asstring := dsb.fieldbyname('descrizione').asstring;

          sor1.fieldbyname('utn_codice').asstring := utente;

          if dsb.fieldbyname('tipo_articolo').asstring <> 'livello distinta' then
          begin
            sor1.post;
          end
          else
          begin
            quantita_livello := arrotonda(quantita * dsb.fieldbyname('quantita').asfloat * valore_formula, 4);
            sor1.cancel;
            assegna_livello_distinta(dsb.fieldbyname('art_codice_figlio').asstring, quantita_livello);
          end;

          dsb.next;
        end;

        sor1.gotobookmark(salva_puntatore);
        sor1.freebookmark(salva_puntatore);
        sor1.delete;

        sor1.first;
      end
      else
      begin
        // semilavorato
        if (figlio(sor1.fieldbyname('art_codice').asstring, opt_data_documento)) and (opt_tipo_esplosione = 'generazione ordini per tutti i semilavorati') then
        begin
          // ------------------------------------------------
          // 03.12.2013 Paolo
          // controllo a magazzino dei semilavorati
          // ------------------------------------------------

          //    quantita := controllo_quantita(sor1.fieldbyname('art_codice').asstring, tma_codice_finiti, 'semilavorato', opt_quantita, opt_quantita);
          if (v_dispo.checked) and (opt_quantita > 0) then
          begin
            quantita := controllo_quantita(sor1.fieldbyname('art_codice').asstring, tma_codice_finiti, 'semilavorato', sor1.fieldbyname('quantita').asfloat, sor1.fieldbyname('quantita').asfloat);

            scrivi_log('articolo: ' + mag_tot.fieldbyname('art_codice').asstring + '  - quantità da produrre: ' + floattostr(quantita));
            scrivi_log('scorta minima: ' + mag_tot.fieldbyname('scorta_minima').asstring + ' scorta massima:' + mag_tot.fieldbyname('scorta_massima').asstring + ' lotto riordino:' + mag_tot.fieldbyname('lotto_riordino').asstring);
            scrivi_log('--------------------------------------------------------------------------------------------------');
          end;

          sor.append;
          sor.fieldbyname('utn_codice').asstring := utente;
          sor.fieldbyname('art_codice').asstring := sor1.fieldbyname('art_codice').asstring;
          sor.fieldbyname('art_codice_finito').asstring := opt_art_codice;
          sor.fieldbyname('quantita').asfloat := quantita; //sor1.fieldbyname('quantita').asfloat;

          sor.fieldbyname('data_consegna').asdatetime := opt_data_consegna;

          sor.fieldbyname('utn_codice').asstring := utente;
          sor.post;

        end;

        sor1.next;
      end;

    end;

  end;

  // creo righe ordine

  riga := 0;
  sor1.first;
  while not sor1.eof do
  begin
    salta_articolo := false;
    read_tabella(art, sor1.fieldbyname('art_codice').asstring);
    if not(((art.fieldbyname('tipo_articolo').asstring = 'fiscale') and (sor1.fieldbyname('quantita').asfloat > 0)) or (art.fieldbyname('tipo_articolo').asstring = 'livello distinta')) then
    begin
      salta_articolo := true;
    end;

    if opt_quantita > 0 then
    begin
      if not salta_articolo then
      begin

        // --------------------------------------------------------
        // non è ritardo
        // --------------------------------------------------------
        opr.close;

        opr.parambyname('progressivo').asinteger := opt_progressivo;
        riga := riga + 1;
        opr.parambyname('riga').asinteger := riga;
        opr.parambyname('art_codice').asstring := sor1.fieldbyname('art_codice').asstring;
        opr.parambyname('tma_codice').asstring := opt.fieldbyname('tma_codice_materie_prime').asstring;

        if (read_tabella(dsb_tma, vararrayof([opt.fieldbyname('art_codice').asstring, opr.parambyname('art_codice').asstring, opt.fieldbyname('data_documento').asdatetime, opt.fieldbyname('data_documento').asdatetime]))) and (dsb_tma.fieldbyname('tma_codice').asstring <> '') then
        begin
          opr.parambyname('tma_codice').asstring := dsb_tma.fieldbyname('tma_codice').asstring;
        end;

        if art.fieldbyname('tum_codice_dsb').asstring = '' then
        begin
          opr.parambyname('quantita').asfloat := sor1.fieldbyname('quantita').asfloat;
        end
        else
        begin
          if art.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
          begin
            opr.parambyname('quantita').asfloat := arrotonda(sor1.fieldbyname('quantita').asfloat * art.fieldbyname('tum_coefficiente_dsb').asfloat, decimali_quantita(art.fieldbyname('tum_codice').asstring));
          end
          else
          begin
            opr.parambyname('quantita').asfloat := arrotonda(sor1.fieldbyname('quantita').asfloat / art.fieldbyname('tum_coefficiente_dsb').asfloat, decimali_quantita(art.fieldbyname('tum_codice').asstring));
          end;
        end;

        opr.parambyname('formula').asstring := sor1.fieldbyname('formula').asstring;

        opr.parambyname('costo_unitario').asfloat := sor1.fieldbyname('costo_unitario').asfloat;

        opr.parambyname('a31data_consegna').asdatetime := opt_data_consegna;

        if art.fieldbyname('tcn_codice').asstring <> '' then
        begin
          opr.parambyname('assistenza_tecnica').asstring := 'si';
        end
        else
        begin
          opr.parambyname('assistenza_tecnica').asstring := 'no';
        end;

        opr.parambyname('note').asstring := sor1.fieldbyname('note').asstring;

        progressivo_padre := 0;
        numero_riga_padre := 0;
        if opt.fieldbyname('tipo_esplosione').asstring <> 'tutti i livelli fino alle materie prime' then
        begin
          if figlio(sor1.fieldbyname('art_codice').asstring, opt_data_documento) then
          begin
            opr.parambyname('semilavorato').asstring := 'si';

            if opt.fieldbyname('tipo_esplosione').asstring = 'generazione ordini per tutti i semilavorati' then
            begin
              progressivo_padre := opr.parambyname('progressivo').asfloat;
              numero_riga_padre := opr.parambyname('riga').asinteger;
            end;

          end
          else
          begin
            opr.parambyname('semilavorato').asstring := 'no';
          end;
        end
        else
        begin
          opr.parambyname('semilavorato').asstring := 'no';
        end;

        if arc.dit.fieldbyname('assegnazione_produzione').asstring = 'si' then
        begin
          mag_approntato.close;
          mag_approntato.parambyname('art_codice').asstring := opr.parambyname('art_codice').asstring;
          mag_approntato.parambyname('tma_codice').asstring := opr.parambyname('tma_codice').asstring;
          mag_approntato.open;
          if (mag_approntato.fieldbyname('esistenza').asfloat - mag_approntato.fieldbyname('approntato').asfloat) >= opr.parambyname('quantita').asfloat then
          begin
            opr.parambyname('quantita_approntata').asfloat := opr.parambyname('quantita').asfloat;
          end
          else
          begin
            opr.parambyname('quantita_approntata').asfloat := 0;
          end;
        end
        else
        begin
          opr.parambyname('quantita_approntata').asfloat := 0;
        end;

        opr.execsql;

      end;
    end;
    controlla_transazione;

    sor1.delete;

  end;
  // ----------------------------------------------------------
  // ESPLODO i semilavorati
  // ----------------------------------------------------------
  query_semilav.close;
  query_semilav.parambyname('utn_codice').asstring := utente;
  query_semilav.parambyname('art_codice_finito').asstring := opt_art_codice;
  query_semilav.open;

  while not query_semilav.eof do
  begin
    application.processmessages;

    opr_semilav.close;
    opr_semilav.parambyname('progressivo').asinteger := opt_progressivo;
    opr_semilav.parambyname('art_codice').asstring := query_semilav.fieldbyname('art_codice').asstring;
    opr_semilav.open;

    genera_sottolivelli(data_documento, opt_tipo_esplosione, 'si', query_semilav.fieldbyname('art_codice').asstring, query_semilav.fieldbyname('art_codice_finito').asstring, opt_tma_codice_finito, opr.parambyname('note').asstring, opt_cms_codice, opt_tipologia,
      query_semilav.fieldbyname('quantita').asfloat, ovr_progressivo, ovr_riga, opr_semilav.fieldbyname('progressivo').asinteger,
      opr_semilav.fieldbyname('riga').asinteger, query_semilav.fieldbyname('data_consegna').asdatetime, opt_ritardo, art_codice_semilav_forza, frn_codice_terzista);

    query_semilav.delete;

  end;

  opr_semilav.close;
  query_semilav.close;

end;

function TA31IMPORDV.figlio(art_codice: string; data_documento: tdatetime): boolean;
begin
  query_figlio.close;
  query_figlio.parambyname('art_codice_padre').asstring := art_codice;
  query_figlio.parambyname('data_dal').asdate := data_documento;
  query_figlio.parambyname('data_al').asdate := data_documento;
  query_figlio.open;
  result := not query_figlio.eof;
end;

procedure TA31IMPORDV.assegna_livello_distinta(art_codice: string;
  quantita:
  double);
var
  dsb_livello: tmyquery_go;
  quantita_livello, valore_formula: double;
begin
  dsb_livello := tmyquery_go.create(nil);
  dsb_livello.connection := arc.arcdit;
  dsb_livello.sql.text := 'select dsb.*, art.tipo_articolo from dsb ' + 'inner join art on art.codice = dsb.art_codice_figlio ' + 'where art_codice_padre = :art_codice_padre ' + 'and (data_inizio <= :data_inizio or data_inizio is null) and data_fine >= :data_fine';
  dsb_livello.params[0].asstring := art_codice;
  dsb_livello.params[1].asdate := now;
  dsb_livello.params[2].asdate := now;
  dsb_livello.open;
  while not dsb_livello.eof do
  begin
    if not sor1.locate('utn_codice;art_codice', vararrayof([utente, dsb_livello.fieldbyname('art_codice_figlio').asstring]), []) then
    begin
      sor1.append;
      sor1.fieldbyname('utn_codice').asstring := utente;
      sor1.fieldbyname('art_codice_finito').asstring := dsb_livello.fieldbyname('art_codice_padre').asstring;
      sor1.fieldbyname('art_codice').asstring := dsb_livello.fieldbyname('art_codice_figlio').asstring;
      sor1.fieldbyname('quantita').asfloat := 0;

      sor1.fieldbyname('utn_codice').asstring := utente;
      sor1.post;
    end;
    sor1.edit;

    valore_formula := 1;

    if dsb_livello.fieldbyname('formula').asstring <> '' then
    begin
      sor1.fieldbyname('formula').asstring := dsb_livello.fieldbyname('quantita').asstring + ' * ' + dsb_livello.fieldbyname('formula').asstring;
    end;

    sor1.fieldbyname('quantita').asfloat := arrotonda(sor1.fieldbyname('quantita').asfloat + quantita * dsb_livello.fieldbyname('quantita').asfloat * valore_formula, 4);

    sor1.fieldbyname('costo_unitario').asfloat := dsb_livello.fieldbyname('prezzo').asfloat;
    if (arc.dit.fieldbyname('assegna_costo_gesordp').asstring = 'si') and (dsb_livello.fieldbyname('prezzo').asfloat = 0) and (tabella.fieldbyname('frn_codice').asstring = '') then
    begin
      sor1.fieldbyname('costo_unitario').asfloat := costo_unitario(sor1.fieldbyname('art_codice').asstring);
    end;

    sor1.fieldbyname('note').asstring := dsb_livello.fieldbyname('descrizione').asstring;

    sor1.fieldbyname('utn_codice').asstring := utente;

    if dsb_livello.fieldbyname('art_codice_figlio').asstring <> 'livello distinta' then
    begin
      sor1.post;
    end
    else
    begin
      quantita_livello := arrotonda(quantita * dsb_livello.fieldbyname('quantita').asfloat * valore_formula, 4);
      sor1.cancel;
      assegna_livello_distinta(dsb_livello.fieldbyname('art_codice_figlio').asstring, quantita_livello);
    end;

    dsb_livello.next;
  end;

  freeandnil(dsb_livello);
end;

procedure TA31IMPORDV.genera_sottolivelli(data_documento: tdatetime;
  opt_tipo_esplosione, semilavorato, art_codice, art_codice_semilavorato, tma_codice, note, cms_codice, tipologia: string;
  quantita: double;
  ovr_progressivo, ovr_riga, progressivo_origine, riga_origine: integer;
  data_consegna: tdatetime; opt_ritardo, art_codice_semilav_forza, frn_codice_terzista: string);
var
  stringa: string;
  disponibilita: double;
begin
  // genera sottolivelli

  disponibilita := 0;
  if creazione_automatica and (semilavorato = 'si') and (opt_tipo_esplosione = 'generazione ordini per tutti i semilavorati') then
  begin
    stringa := 'creazione ordine di produzione per il semilavorato: ' + art_codice;
    if art_codice_semilavorato <> '' then
    begin
      stringa := stringa + #13 + 'derivante dall''articolo: ' + art_codice_semilavorato;
    end;

    read_tabella(art, art_codice);
    if (art.fieldbyname('tum_codice').asstring <> art.fieldbyname('tum_codice_dsb').asstring) and (art.fieldbyname('tum_codice_dsb').asstring <> '') then
    begin

      if art.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
      begin
        quantita := arrotonda(quantita * art.fieldbyname('tum_coefficiente_dsb').asfloat, decimali_quantita(art.fieldbyname('tum_codice').asstring));
      end
      else
      begin
        quantita := arrotonda(quantita / art.fieldbyname('tum_coefficiente_dsb').asfloat, decimali_quantita(art.fieldbyname('tum_codice').asstring));
      end;
    end;

    // devo sommare l quantita della materia-prima dell'ordine di produzione memoirizzato nel padre altimenti sono in negativo);
    if (v_dispo.checked) and (quantita > 0) then
    begin
      quantita := controllo_quantita(art_codice, tma_codice, 'finito', quantita, quantita);

      scrivi_log('articolo: ' + mag_tot.fieldbyname('art_codice').asstring + '  - quantità da produrre: ' + floattostr(quantita));
      scrivi_log('scorta minima: ' + mag_tot.fieldbyname('scorta_minima').asstring + ' scorta massima:' + mag_tot.fieldbyname('scorta_massima').asstring + ' lotto riordino:' + mag.fieldbyname('lotto_riordino').asstring);
      scrivi_log('--------------------------------------------------------------------------------------------------');
    end;

    crea_distinta_base('ordine produzione', v_cli_codice.text, v_tdo_codice.text, data_documento, ovr_progressivo, ovr_riga, progressivo_origine, riga_origine, art_codice, art_codice_semilavorato, quantita, data_consegna, cms_codice, tipologia, stringa, opt_ritardo, 'semilavorati', art_codice_semilav_forza, frn_codice_terzista);

    mag.close;

  end;
end;

function TA31IMPORDV.costo_unitario(art_codice: string): double;
var
  data_prezzo: tdate;
  prezzo: double;
  tsm_codice, tsm_codice_art: string;
  sconto_massimo_art: double;
  blocco_sconto_massimo_art: string;
  valorizzazione: string;
begin
  data_prezzo := now;
  sconto_massimo_art := 0;
  blocco_sconto_massimo_art := '';

  art_costo.close;
  art_costo.parambyname('codice').asstring := art_codice;
  art_costo.open;

  frn_rda.close;
  frn_rda.parambyname('codice').asstring := art_costo.fieldbyname('frn_codice').asstring;
  frn_rda.open;

  cerca_prezzi.cerca_prezzo('F', art_costo.fieldbyname('frn_codice').asstring, '', 'ultimo prezzo acquisto', art_costo.fieldbyname('codice').asstring, '', 0, prezzo, tsm_codice, tsm_codice_art, data_prezzo, divisa_di_conto, 1, cifre_decimali_prezzo_acq, frn_rda.fieldbyname('tla_codice').asstring, 1,
    '', art_costo.fieldbyname('tum_codice').asstring);

  if prezzo = 0 then
  begin
    valorizzazione := tipinv.tipo_inventario('gestionale', art_codice);
    przinv.przinv(art_codice, '', valorizzazione, esercizio, now, 0, prezzo);
    tsm_codice := '';
    tsm_codice_art := '';
  end;

  result := prezzo;
end;

procedure TA31IMPORDV.crea_ordine_lavorazione_presso_terzi(frn_codice: string;
  data_consegna:
  tdatetime;
  gg_anticipo:
  double;
  quantita:
  double);
var
  data_prezzo: tdate;
  prezzo, prezzo_lavorazioni: double;
  tsm_codice, tsm_codice_art: string;
  data_precedente: tdatetime;
  progressivo_oat, riga, numero_documento, numero_documento_precedente: integer;

  tda_codice: string;

begin
  // 20.02.2018 Paolo
  // c/lavoro non creato per articoli ACQ/UTE
  read_tabella(arc.arcdit, 'art', 'codice', opt.fieldbyname('art_codice').asstring);

  data_consegna := data_consegna; //- gg_anticipo;
  if (quantita > 0) and (archivio.fieldbyname('tcm_codice').asstring <> 'ACQ') and (archivio.fieldbyname('tcm_codice').asstring <> 'UTE') and (archivio.fieldbyname('tcm_codice').asstring <> 'AVV') then
  begin
    if opt.fieldbyname('tda_codice_ordine').asstring = '' then
    begin
      tda_codice := arc.dit.fieldbyname('tda_codice_produzione_presso_te').asstring;
    end
    else
    begin
      tda_codice := opt.fieldbyname('tda_codice_ordine').asstring;
    end;

    if frn_codice <> arc.dit.fieldbyname('cli_codice_intra').asstring then
    begin

      //-------------------------------------------------------------
      // 13/07/2015 Paolo
      // se non esiste ordine a fornitore per contratto lo creo
      //-------------------------------------------------------------
      oat.close;
      oat.parambyname('frn_codice').asstring := frn_codice;
      oat.parambyname('cms_codice').asstring := opt.fieldbyname('cms_codice').asstring;
      oat.parambyname('tipologia').asstring := opt.fieldbyname('tipologia').asstring;
      oat.open;
      if (oat.eof) then
      // or
      //  ((not oat.eof) and (oat.fieldbyname('situazione').asstring = 'evaso')) or
      //  (opt.fieldbyname('cms_codice').asstring = '') then
      begin
        // crea testata ordine fornitore
        progressivo_oat := arc.setta_valore_generatore(arc.arcdit, 'oat_progressivo');

        oat.append;
        oat.fieldbyname('progressivo').asinteger := progressivo_oat;
        oat.fieldbyname('tipo_documento').asstring := 'ordine';
        oat.fieldbyname('situazione').asstring := 'inserito';
        oat.fieldbyname('stampato').asstring := 'stampato';
        oat.fieldbyname('tda_codice').asstring := tda_codice;
        oat.fieldbyname('data_registrazione').asdatetime := now;
        oat.fieldbyname('data_documento').asdatetime := now;
        read_tabella(arc.arcdit, 'tda', 'codice', oat.fieldbyname('tda_codice').asstring);
        oat.fieldbyname('serie_documento').asstring := archivio.fieldbyname('numerazione').asstring;
        oat.fieldbyname('tcd_codice_apertura').asstring := archivio.fieldbyname('tcd_codice_inizio').asstring;
        oat.fieldbyname('tcd_codice_chiusura').asstring := archivio.fieldbyname('tcd_codice_fine').asstring;

        data_precedente := 0;
        numero_documento := 0;
        numero_documento_precedente := 0;
        assegna_numerazione(arc.arcdit, ditta, 'ORDINI FORNITORI', oat.fieldbyname('serie_documento').asstring, oat.fieldbyname('data_registrazione').asdatetime, data_precedente, numero_documento, numero_documento_precedente, true);
        oat.fieldbyname('numero_documento').asinteger := numero_documento;
        oat.fieldbyname('tma_codice').asstring := '';

        oat.fieldbyname('frn_codice').asstring := frn_codice;
        read_tabella(arc.arcdit, 'frn', 'codice', oat.fieldbyname('frn_codice').asstring);
        oat.fieldbyname('tla_codice').asstring := archivio.fieldbyname('tla_codice').asstring;
        oat.fieldbyname('tpa_codice').asstring := archivio.fieldbyname('tpa_codice').asstring;
        sconto_imponibile_lordo := archivio.fieldbyname('sconto_imponibile_lordo').asstring;

        cpa.params[0].asstring := archivio.fieldbyname('tcf_codice').asstring;
        cpa.params[1].asstring := taq_codice_sconti_fattura;
        cpa.close;
        cpa.open;
        oat.fieldbyname('gen_codice_sconti_fattura').asstring := cpa.fieldbyname('gen_codice').asstring;

        cpa.params[0].asstring := archivio.fieldbyname('tcf_codice').asstring;
        cpa.params[1].asstring := taq_codice_sconto_cassa;
        cpa.close;
        cpa.open;
        oat.fieldbyname('gen_codice_sconto_cassa').asstring := cpa.fieldbyname('gen_codice').asstring;

        if archivio.fieldbyname('tiv_codice').asstring <> '' then
        begin
          if oat.fieldbyname('data_documento').asdatetime <= archivio.fieldbyname('data_esenzione_iva').asdatetime then
          begin
            oat.fieldbyname('tiv_codice').asstring := archivio.fieldbyname('tiv_codice').asstring;
          end;
        end;
        oat.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
        oat.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;

        if read_tabella(arc.arcdit, 'inf', 'frn_codice;indirizzo', vararrayof([oat.fieldbyname('frn_codice').asstring, oat.fieldbyname('frn_codice').asstring])) then
        begin
          assegna_oat_indirizzo;
        end;

        read_tabella(arc.arcdit, 'nom', 'codice', oat.fieldbyname('frn_codice').asstring);
        oat.fieldbyname('tva_codice').asstring := archivio.fieldbyname('tva_codice').asstring;
        oat.fieldbyname('cambio').asfloat := arrotonda(cambio(oat.fieldbyname('tva_codice').asstring, oat.fieldbyname('data_documento').asdatetime), 6);
        read_tabella(arc.arcdit, 'tva', 'codice', oat.fieldbyname('tva_codice').asstring);
        cifre_decimali_prezzo_acq := archivio.fieldbyname('decimali_prezzo_acq').asinteger;
        cifre_decimali_importo := archivio.fieldbyname('decimali_importo').asinteger;

        read_tabella(arc.arcdit, 'tpa', 'codice', oat.fieldbyname('tpa_codice').asstring);
        oat.fieldbyname('tsm_codice').asstring := archivio.fieldbyname('tsm_codice').asstring;

        read_tabella(arc.arcdit, 'tla', 'codice', oat.fieldbyname('tla_codice').asstring);
        oat.fieldbyname('listino_con_iva').asstring := archivio.fieldbyname('iva_inclusa').asstring;

        oat.fieldbyname('riferimento').asstring := 'Ordine produzione: ' + opt.fieldbyname('numero_documento').asstring;
        oat.fieldbyname('data_riferimento').asdatetime := opt.fieldbyname('data_documento').asdatetime;

        oat.fieldbyname('tiv_codice_omaggi').asstring := tiv_codice_omaggi;

        oat.fieldbyname('data_consegna').asdatetime := data_consegna;

        oat.fieldbyname('cms_codice').asstring := opt.fieldbyname('cms_codice').asstring;
        oat.fieldbyname('tipologia').asstring := opt.fieldbyname('tipologia').asstring;
        oat.fieldbyname('id_origine').asinteger := 99;
        oat.post;

        scrivi_log('genera ordine fornitore c/terzi ' + opt.fieldbyname('frn_codice').asstring + ' progressivo ' + oat.fieldbyname('progressivo').asstring);
      end;
      controlla_transazione;

      oar.close;
      oar.sql.clear;
      oar.sql.add('select * from oar ');
      oar.sql.add('where ');
      oar.sql.add('progressivo=:progressivo and');
      oar.sql.add('cms_codice=:cms_codice and');
      oar.sql.add('tipologia=:tipologia and');
      oar.sql.add('art_codice=:art_codice and');
      oar.sql.add('data_consegna=:data_consegna');

      oar.parambyname('progressivo').asinteger := oat.fieldbyname('progressivo').asinteger;
      oar.parambyname('cms_codice').asstring := opt.fieldbyname('cms_codice').asstring;
      oar.parambyname('tipologia').asstring := opt.fieldbyname('tipologia').asstring;
      oar.parambyname('art_codice').asstring := opt.fieldbyname('art_codice').asstring;
      oar.parambyname('data_consegna').asdatetime := data_consegna;
      oar.open;

      if (not oar.eof) and (oar.fieldbyname('situazione').asstring = 'evaso parziale') then
      begin
        oar.edit;
        oar.fieldbyname('situazione').asstring := 'annullata';
        oar.post;
      end;

      oar.append;

      // crea riga articolo (con descrizioni)
      oar_ultimo.close;
      oar_ultimo.parambyname('progressivo').asinteger := oat.fieldbyname('progressivo').asinteger;
      oar_ultimo.open;

      riga := oar_ultimo.fieldbyname('riga').asinteger;
      riga := riga + 10;

      oar.fieldbyname('progressivo').asfloat := oat.fieldbyname('progressivo').asinteger;
      oar.fieldbyname('riga').asinteger := riga;
      oar.fieldbyname('situazione').asstring := 'inserito';

      oar.fieldbyname('art_codice').asstring := opt.fieldbyname('art_codice').asstring;
      oar.fieldbyname('quantita').asfloat := opt.fieldbyname('quantita').asfloat;
      oar.fieldbyname('tipo_movimento').asstring := 'normale';
      oar.fieldbyname('tma_codice').asstring := oat.fieldbyname('tma_codice').asstring;

      read_tabella(arc.arcdit, 'art', 'codice', oar.fieldbyname('art_codice').asstring);
      oar.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
      oar.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
      oar.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice').asstring;
      oar.fieldbyname('tum_coefficiente').asfloat := 1;
      oar.fieldbyname('tum_quantita_base').asfloat := oar.fieldbyname('quantita').asfloat;
      oar.fieldbyname('tiv_codice').asstring := archivio.fieldbyname('tiv_codice_acquisti').asstring;
      if oat.fieldbyname('tiv_codice').asstring <> '' then
      begin
        oar.fieldbyname('tiv_codice').asstring := oat.fieldbyname('tiv_codice').asstring;
      end;

      data_prezzo := now;
      frn.params[0].asstring := oat.fieldbyname('frn_codice').asstring;
      frn.close;
      frn.open;
      read_tabella(arc.arcdit, 'art', 'codice', oar.fieldbyname('art_codice').asstring);

      cerca_prezzi.cerca_prezzo('F', oat.fieldbyname('frn_codice').asstring, '', 'listino acquisto', oar.fieldbyname('art_codice').asstring, oar.fieldbyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art, data_prezzo, oat.fieldbyname('tva_codice').asstring,
        oat.fieldbyname('cambio').asfloat, cifre_decimali_prezzo_acq, oat.fieldbyname('tla_codice').asstring, 1, '',
        oar.fieldbyname('tum_codice').asstring);

      oar.fieldbyname('prezzo').asfloat := prezzo;
      oar.fieldbyname('tsm_codice').asstring := tsm_codice;
      oar.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;

      if prezzo = 0 then
      begin
        prezzo_lavorazioni := 0;
        // -----------------------------------------------------
        // totale costo lavorazioni esterne
        // -----------------------------------------------------
        lavorazioni.close;
        lavorazioni.parambyname('art_codice_padre').asstring := opt.fieldbyname('art_codice').asstring;
        lavorazioni.parambyname('tipo_articolo').asstring := 'non fiscale';
        lavorazioni.open;
        if not lavorazioni.isempty then
        begin
          if lavorazioni.recordcount = 1 then
          begin
            oar.fieldbyname('note').asstring := 'LAVORAZIONE:';
          end
          else
          begin
            oar.fieldbyname('note').asstring := 'LAVORAZIONI:';
          end;
        end;

        while not lavorazioni.eof do
        begin
          cerca_prezzi.cerca_prezzo('F', oat.fieldbyname('frn_codice').asstring, '', 'listino acquisto', lavorazioni.fieldbyname('art_codice_figlio').asstring, oar.fieldbyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art, data_prezzo, oat.fieldbyname('tva_codice').asstring,
            oat.fieldbyname('cambio').asfloat, cifre_decimali_prezzo_acq, oat.fieldbyname('tla_codice').asstring, 1, '',
            oar.fieldbyname('tum_codice').asstring);
          prezzo_lavorazioni := arrotonda(prezzo_lavorazioni + prezzo * lavorazioni.fieldbyname('quantita').asfloat, cifre_decimali_prezzo_acq);

          oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13 + trim(lavorazioni.fieldbyname('descrizione1').asstring) + ' ' + trim(lavorazioni.fieldbyname('descrizione2').asstring); // + ' ' +
          // 'prezzo ' + floattostr(arrotonda(prezzo * lavorazioni.fieldbyname('quantita').asfloat, cifre_decimali_prezzo_acq)));

          lavorazioni.next;;
          prezzo := prezzo_lavorazioni;
          oar.fieldbyname('prezzo').asfloat := prezzo;
          oar.fieldbyname('tsm_codice').asstring := '';
          oar.fieldbyname('tsm_codice_art').asstring := '';

        end; // while

        // ------------------------------------------------------
        // note delle lavorazioni
        // ------------------------------------------------------
        opc_gesorda.close;
        opc_gesorda.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
        opc_gesorda.open;
        if not opc_gesorda.isempty then
        begin
          if oar.fieldbyname('note').asstring <> '' then
          begin
            oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13;
          end;

          while not opc_gesorda.eof do
          begin
            oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + #13 + 'tipo operazione: ' + opc_gesorda.fieldbyname('descrizione').asstring + #13;
            if opc_gesorda.fieldbyname('note').asstring <> '' then
            begin
              oar.fieldbyname('note').asstring := oar.fieldbyname('note').asstring + 'note' + #13 + opc_gesorda.fieldbyname('note').asstring + #13;
            end;

            opc_gesorda.next;
          end;
        end;

      end;
      calcola_importo;

      oar.fieldbyname('documento_origine').asstring := 'produzione';
      oar.fieldbyname('doc_progressivo_origine').asfloat := opt.fieldbyname('progressivo').asfloat;

      oar.fieldbyname('cms_codice').asstring := opt.fieldbyname('cms_codice').asstring;
      oar.fieldbyname('tipologia').asstring := opt.fieldbyname('tipologia').asstring;
      oar.fieldbyname('data_consegna').asdatetime := data_consegna;
      oar.fieldbyname('no_ordinato').asstring := 'si';
      oar.post;
      scrivi_log('genera riga ordine fornitore c/terzi progressivo ' + oat.fieldbyname('progressivo').asstring + ' riga ' + oar.fieldbyname('riga').asstring + ' ' + oar.fieldbyname('art_codice').asstring + ' qta ' + oar.fieldbyname('quantita').asstring);

      controlla_transazione;

      oar.close;
      oar.open;

      totacq.movacq_testata(arc.arcdit, 'ordine', oat.fieldbyname('progressivo').asinteger);
    end;

  end; // if fornitore <> da fornitore interno = produzione

end;

procedure TA31IMPORDV.assegna_oat_indirizzo;
begin
  oat.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
  oat.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
  oat.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
  oat.fieldbyname('via').asstring := archivio.fieldbyname('via').asstring;
  oat.fieldbyname('cap').asstring := archivio.fieldbyname('cap').asstring;
  oat.fieldbyname('citta').asstring := archivio.fieldbyname('citta').asstring;
  oat.fieldbyname('provincia').asstring := archivio.fieldbyname('provincia').asstring;
  oat.fieldbyname('tna_codice').asstring := archivio.fieldbyname('tna_codice').asstring;

  oat.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
  oat.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;
end;

procedure TA31IMPORDV.assegna_ovt_indirizzo;
begin
  if read_tabella(arc.arcdit, 'ind', 'cli_codice;indirizzo', vararrayof([ovt.fieldbyname('cli_codice').asstring, ovt.fieldbyname('indirizzo').asstring])) then
  begin
    ovt.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
    ovt.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
    ovt.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
    ovt.fieldbyname('via').asstring := archivio.fieldbyname('via').asstring;
    ovt.fieldbyname('cap').asstring := archivio.fieldbyname('cap').asstring;
    ovt.fieldbyname('citta').asstring := archivio.fieldbyname('citta').asstring;
    ovt.fieldbyname('provincia').asstring := archivio.fieldbyname('provincia').asstring;
    ovt.fieldbyname('tna_codice').asstring := archivio.fieldbyname('tna_codice').asstring;

    ovt.fieldbyname('tsp_codice').asstring := archivio.fieldbyname('tsp_codice').asstring;
    ovt.fieldbyname('tpo_codice').asstring := archivio.fieldbyname('tpo_codice').asstring;

  end;

end;

procedure TA31IMPORDV.calcola_importo;
var
  importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato: double;
begin
  importo := oar.fieldbyname('importo').asfloat;
  importo_euro := oar.fieldbyname('importo_euro').asfloat;
  importo_iva := oar.fieldbyname('importo_iva').asfloat;
  importo_iva_euro := oar.fieldbyname('importo_iva_euro').asfloat;

  calcola_importo_documento(oar.fieldbyname('quantita').asfloat, oar.fieldbyname('prezzo').asfloat, oat.fieldbyname('cambio').asfloat, oar.fieldbyname('importo_sconto').asfloat, sconto_imponibile_lordo, oat.fieldbyname('listino_con_iva').asstring, oar.fieldbyname('tum_codice').asstring,
    oar.fieldbyname('tiv_codice').asstring, oar.fieldbyname('tsm_codice').asstring,
    oar.fieldbyname('tsm_codice_art').asstring, importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato);

  if tabella_edit(oar) then
  begin
    oar.fieldbyname('importo').asfloat := importo;
    oar.fieldbyname('importo_euro').asfloat := importo_euro;
    oar.fieldbyname('importo_iva').asfloat := importo_iva;
    oar.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;
  end;
end;

procedure TA31IMPORDV.crea_ritardi_cliente(cli_codice, art_codice_finito, art_codice, frn_codice: string;
  quantita:
  double;
  data_consegna:
  tdatetime;
  cms_codice, tipologia, tipo_articolo: string);
var
  gg_anticipo: integer;
  riga: integer;
begin
  progressivo_lav := arc.setta_valore_generatore(arc.arcdit, 'PROMAU_RITARDI');

  read_tabella(art, art_codice);

  if art.fieldbyname('tum_codice_dsb').asstring <> '' then
  begin

    if art.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
    begin
      quantita := arrotonda(quantita * art.fieldbyname('tum_coefficiente_dsb').asfloat, decimali_quantita(art.fieldbyname('tum_codice').asstring));
    end
    else
    begin
      quantita := arrotonda(quantita / art.fieldbyname('tum_coefficiente_dsb').asfloat, decimali_quantita(art.fieldbyname('tum_codice').asstring));
    end;

  end; // if

  query.sql.clear;
  query.sql.add('insert into promau_ritardi( progressivo, cli_codice, art_codice_finito, art_codice, quantita, data_consegna, cms_codice, tipologia, tipo_articolo, frn_codice )');
  query.sql.add('values ( :progressivo, :cli_codice, :art_codice_finito, :art_codice, :quantita, :data_consegna, :cms_codice, :tipologia, :tipo_articolo, :frn_codice )');
  query.parambyname('progressivo').asinteger := progressivo_lav;
  query.parambyname('cli_codice').asstring := cli_codice;
  query.parambyname('art_codice_finito').asstring := art_codice_finito;
  query.parambyname('art_codice').asstring := art_codice;
  query.parambyname('quantita').asfloat := quantita;
  query.parambyname('data_consegna').asdatetime := data_consegna;
  query.parambyname('cms_codice').asstring := cms_codice;
  query.parambyname('tipologia').asstring := tipologia;
  query.parambyname('tipo_articolo').asstring := tipo_articolo;
  query.parambyname('frn_codice').asstring := frn_codice;

  query.execsql;

  controlla_transazione;
end;

procedure TA31IMPORDV.esplodi_cicli_lavorazione(opt_progressivo: integer;
  art_codice:
  string;
  quantita:
  double;
  var
  data_consegna: tdatetime;
  gg_anticipo: double);
var
  nr_gg_anticipo, costo: double;
begin

  nr_gg_anticipo := 0;

  opc.close;
  opc.sql.clear;
  opc.sql.add(' insert into opc ( ');
  opc.sql.add(' progressivo, sequenza, fas_codice, tipo_operazione, ');
  opc.sql.add(' note, situazione, costo_consuntivo, quantita, data_consegna ) ');
  opc.sql.add(' values ( ');
  opc.sql.add(' :progressivo, :sequenza, :fas_codice, :tipo_operazione, ');
  opc.sql.add(' :note, :situazione, :costo_consuntivo, :quantita, :data_consegna ) ');

  query.close;
  query.sql.clear;
  query.sql.add('select cla.*, fas.tipo_operazione fas_tipo_operazione, fas.costo_unitario from cla');
  query.sql.add('inner join fas on fas.codice= cla.fas_codice');
  query.sql.add('where');
  query.sql.add('cla.art_codice=:art_codice');
  query.sql.add('order by cla.sequenza desc,cla.fas_codice');
  query.parambyname('art_codice').asstring := art_codice;
  query.open;

  while not query.eof do
  begin
    application.processmessages;

    nr_gg_anticipo := nr_gg_anticipo + (gg_anticipo + query.fieldbyname('gg_anticipo').asfloat);

    opc.parambyname('progressivo').asinteger := opt_progressivo;
    try
      opc.parambyname('sequenza').asinteger := query.fieldbyname('sequenza').asinteger;
    except
      opc.parambyname('sequenza').asinteger := 10;
    end;

    opc.parambyname('fas_codice').asstring := query.fieldbyname('fas_codice').asstring;
    opc.parambyname('tipo_operazione').asstring := query.fieldbyname('tipo_operazione').asstring;
    opc.parambyname('note').asstring := query.fieldbyname('note').asstring;
    opc.parambyname('situazione').asstring := 'inserita';
    opc.parambyname('costo_consuntivo').asfloat := 0;

    costo := 0;

    if query.fieldbyname('fas_tipo_operazione').asstring = 'globale' then
    begin
      quantita := query.fieldbyname('quantita').asfloat;
      costo := arrotonda(quantita * query.fieldbyname('costo_unitario').asfloat, 6);
    end
    else if query.fieldbyname('fas_tipo_operazione').asstring = 'singola' then
    begin
      if query.fieldbyname('operatore').asstring = '*' then
      begin
        quantita := arrotonda(quantita * query.fieldbyname('quantita').asfloat, 4);
      end
      else
      begin
        quantita := arrotonda(quantita / query.fieldbyname('quantita').asfloat, 4);
      end;
      costo := arrotonda(quantita * query.fieldbyname('costo_unitario').asfloat, 6);
    end
    else if query.fieldbyname('fas_tipo_operazione').asstring = 'ignora' then
    begin
      quantita := 0;
      costo := 0
    end;

    opc.parambyname('quantita').asfloat := quantita;
    opc.parambyname('costo_consuntivo').asfloat := costo;

    opc.parambyname('data_consegna').asdatetime := data_consegna - nr_gg_anticipo;
    opc.execsql;

    query.next;
  end;

  controlla_transazione;

  data_consegna := data_consegna - nr_gg_anticipo;
end;

procedure TA31IMPORDV.esplodi_cicli_lavorazione_ritardi(art_codice: string;
  quantita: double;
  data_consegna: tdatetime;
  gg_anticipo: double);
var
  nr_gg_anticipo, costo: double;
begin

  nr_gg_anticipo := 0;
  // progressivo := arc.setta_valore_generatore(arc.arcdit, 'PROMAU_RITARDI_LAV');

  query.close;
  query.sql.clear;
  query.sql.add('select cla.*, fas.tipo_operazione fas_tipo_operazione , fas.costo_unitario from cla');
  query.sql.add('inner join fas on fas.codice= cla.fas_codice');
  query.sql.add('where');
  query.sql.add('cla.art_codice=:art_codice');
  query.sql.add('order by cla.sequenza desc,cla.fas_codice');

  query.parambyname('art_codice').asstring := art_codice;
  query.open;

  gg_anticipo := 0;
  riga := 0;
  while not query.eof do
  begin
    riga := riga + 1;

    nr_gg_anticipo := nr_gg_anticipo + (gg_anticipo + query.fieldbyname('gg_anticipo').asfloat);
    costo := 0;

    if query.fieldbyname('fas_tipo_operazione').asstring = 'globale' then
    begin
      quantita := query.fieldbyname('quantita').asfloat;
      costo := arrotonda(quantita * query.fieldbyname('costo_unitario').asfloat, 6);
    end
    else if query.fieldbyname('fas_tipo_operazione').asstring = 'singola' then
    begin
      if query.fieldbyname('operatore').asstring = '*' then
      begin
        quantita := arrotonda(quantita * query.fieldbyname('quantita').asfloat, 4);
      end
      else
      begin
        quantita := arrotonda(quantita / query.fieldbyname('quantita').asfloat, 4);
      end;
      costo := arrotonda(quantita * query.fieldbyname('costo_unitario').asfloat, 6);
    end
    else if query.fieldbyname('fas_tipo_operazione').asstring = 'ignora' then
    begin
      quantita := 0;
      costo := 0
    end;

    ins_promau_lav.parambyname('progressivo').asinteger := progressivo_lav;
    ins_promau_lav.parambyname('riga').asinteger := riga;
    ins_promau_lav.parambyname('sequenza').asinteger := query.fieldbyname('sequenza').asinteger;
    ins_promau_lav.parambyname('fas_codice').asstring := query.fieldbyname('fas_codice').asstring;
    ins_promau_lav.parambyname('quantita').asfloat := quantita;
    ins_promau_lav.parambyname('costo_consuntivo').asfloat := costo;
    ins_promau_lav.parambyname('data_consegna').asdatetime := data_consegna - nr_gg_anticipo;
    ins_promau_lav.execsql;

    query.next;
  end;

  controlla_transazione;
end;

procedure TA31IMPORDV.calcola_data_consegna;
begin

  settimana_attuale := calcola_settimana(date, ditta, esercizio, 0);
  data_inizio := calcola_consegna(0, settimana_attuale + trunc(v_settimane.value) + 1, ditta, esercizio);

  v_data_inizio_consegna.date := data_inizio;
end;

procedure TA31IMPORDV.scrivi_log(stringa: string);
begin
  writeln(logfile, stringa);
end;

function TA31IMPORDV.controllo_quantita(art_codice, tma_codice_finiti, tipo_articolo: string;
  quantita, quantita_da_evadere: double): double;
var
  disponibilita, nr_lotti: double;
  esistenza, lotto_riordino, qta_riordino, resto: integer;
begin

  mag.close;
  mag.parambyname('art_codice').asstring := art_codice;
  mag.parambyname('tma_codice').asstring := tma_codice_finiti;
  mag.open;

  mag_tot.close;
  mag_tot.parambyname('art_codice').asstring := art_codice;
  mag_tot.open;

  disponibilita := 0;
  esistenza := 0;
  if not mag_tot.eof then
  begin
    //----------------------------------------------------
    // 09.04.2015
    //----------------------------------------------------
    esistenza := mag_tot.fieldbyname('esistenza').asinteger;

    if (esistenza < 0) and (promau_esistenza_negativa = 'no') then
    begin
      esistenza := 0;
    end;

    disponibilita := (mag_tot.fieldbyname('esistenza').asfloat - mag_tot.fieldbyname('impegnato').asfloat + mag_tot.fieldbyname('ordinato').asfloat);

    if tipo_articolo = 'finito' then
    begin
      disponibilita := disponibilita + quantita;
    end;
  end;

  if (mag_tot.fieldbyname('scorta_minima').asinteger > 0) then
  begin
    quantita_da_evadere := Quantita_da_evadere + mag_tot.fieldbyname('scorta_minima').asinteger;
  end;

  scrivi_disponibilita(art_codice, tma_codice_finiti, disponibilita);

  if disponibilita >= quantita_da_evadere then
  begin
    quantita_da_evadere := 0;
  end
  else
  begin
    if disponibilita > 0 then
    begin
      quantita_da_evadere := quantita_da_evadere - (disponibilita); //+ quantita_da_evadere);
    end
    else if (esistenza > 0) and (disponibilita < 0) then
    begin
      quantita_da_evadere := quantita_da_evadere - (disponibilita);
    end;

  end;

  if (quantita_da_evadere > 0) and (mag_tot.fieldbyname('lotto_riordino').asinteger > 0) then
  begin
    if quantita_da_evadere < mag_tot.fieldbyname('lotto_riordino').asinteger then
    begin
      quantita_da_evadere := mag_tot.fieldbyname('lotto_riordino').asinteger;
    end;

    (*
      LOTTO MULTIPLO
      nr_lotti := int(quantita_da_evadere / mag_tot.fieldbyname('lotto_riordino').asinteger);
      lotto_riordino := mag_tot.fieldbyname('lotto_riordino').asinteger;
      qta_riordino := trunc(quantita_da_evadere);
      resto := lotto_riordino mod qta_riordino;
      if resto > 0 then
      begin
      nr_lotti := nr_lotti + 1;
      end;

      quantita_da_evadere := (nr_lotti * mag_tot.fieldbyname('lotto_riordino').asinteger);
    *)
  end;

  if ((disponibilita + quantita_da_evadere - quantita) > mag_tot.fieldbyname('scorta_massima').asinteger) and (mag_tot.fieldbyname('scorta_massima').asinteger > 0) then
  begin
    quantita_da_evadere := mag_tot.fieldbyname('scorta_massima').asinteger;
    if (mag_tot.fieldbyname('esistenza').asfloat + mag_tot.fieldbyname('ordinato').asfloat - mag_tot.fieldbyname('impegnato').asfloat) > 0 then
    begin
      quantita_da_evadere := quantita_da_evadere - (mag_tot.fieldbyname('esistenza').asfloat + mag_tot.fieldbyname('ordinato').asfloat - mag_tot.fieldbyname('impegnato').asfloat);
    end;
  end;

  Result := quantita_da_evadere;
end;

procedure TA31IMPORDV.scrivi_disponibilita(art_codice, tma_codice: string;
  disponibilita:
  double);
begin
  (*
    scrivi_log('---------------------------------------------------------------');
    scrivi_log('art ' + art_codice + ' mag.' + tma_codice);
    scrivi_log('---------------------------------------------------------------');
    scrivi_log('esistenza     impegnato   ordinato    disponibile   sottoscorta');
    scrivi_log('---------------------------------------------------------------');
    scrivi_log(
    mag.fieldbyname('esistenza').asstring + #9 + #9 +
    floatTostr(mag_tot.fieldbyname('impegnato').asfloat) + #9 + #9 +
    mag.fieldbyname('ordinato').asstring + #9 + #9 +
    floattostr(disponibilita) + #9 + #9 +
    mag.fieldbyname('scorta_minima').asstring);
  *)
  scrivi_log('---------------------------------------------------------------');
  scrivi_log('art ' + art_codice + ' proprietà');
  scrivi_log('---------------------------------------------------------------');
  scrivi_log('esistenza     impegnato   ordinato    disponibile   sottoscorta');
  scrivi_log('---------------------------------------------------------------');
  scrivi_log(mag_tot.fieldbyname('esistenza').asstring + #9 + #9 + floatTostr(mag_tot.fieldbyname('impegnato').asfloat) + #9 + #9 + mag_tot.fieldbyname('ordinato').asstring + #9 + #9 + floattostr(disponibilita) + #9 + #9 + mag_tot.fieldbyname('scorta_minima').asstring);

end;

procedure TA31IMPORDV.controlla_transazione;
begin
  screen.cursor := cursore;

  // salva transazioni aperte
  if arc.arcdit.intransaction then
  begin
    arc.arcdit.commit;
  end;
end;

procedure TA31IMPORDV.azzera_ordini_produzione_ovr_progressivo;
begin
  query.close;
  query.sql.clear;
  query.sql.add('delete from a31ovt_da_cancellare');
  query.sql.add('where ');
  query.sql.add('utn_codice=:utn_codice');
  query.parambyname('utn_codice').asstring := utente;
  query.execsql;

  query.close;
  query.sql.clear;
  query.sql.add('insert into a31ovt_da_cancellare( utn_codice, progressivo )');
  query.sql.add('select :utn_codice, opt.progressivo from opt');
  query.sql.add('left join ovr on ovr.progressivo=opt.OVR_PROGRESSIVO and ovr.riga=ovr.riga');
  query.sql.add('where');
  query.sql.add('ovr.progressivo is null');
  query.parambyname('utn_codice').asstring := utente;
  query.execsql;

  query.close;
  query.sql.clear;
  query.sql.add('update opt');
  query.sql.add('set ovr_progressivo=0, ovr_riga=0');
  query.sql.add('where');
  query.sql.add('opt.progressivo in (');
  query.sql.add('select progressivo from a31ovt_da_cancellare a');
  query.sql.add('where');
  query.sql.add('a.utn_codice=:utn_codice )');
  query.parambyname('utn_codice').asstring := utente;
  query.execsql;

  controlla_transazione;
end;

procedure TA31IMPORDV.assegna_numerazione(connessione: tmyconnection_go;
  codice_ditta, tipo, serie: string;
  data:
  tdatetime;
  var
  data_precedente: tdatetime;
  var
  progressivo, progressivo_precedente: integer;
  aggiorna: boolean;
  avviso:
  boolean = true);
var
  anno, mese, giorno: word;
begin
  decodedate(data, anno, mese, giorno);

  while true do
  begin

    try

      assnum_cnt.close;
      assnum_cnt.connection := connessione;

      if (tipo = 'DICHIARAZIONI INTRASTAT') or (tipo = 'CONFIGURAZIONE') or (tipo = 'FATTURAZIONE ELETTRONICA PA') or (copy(tipo, 1, 7) = 'CFGART-') or (tipo = 'REGISTRO COMMERCIALIZZAZIONE') or (copy(tipo, 1, 3) = 'SDA') then
      begin
        assnum_cnt.parambyname('anno').asstring := '';
      end
      else
      begin
        assnum_cnt.parambyname('anno').asstring := inttostr(anno);
      end;
      assnum_cnt.parambyname('tipo').asstring := tipo;
      assnum_cnt.parambyname('sottotipo').asstring := serie;
      assnum_cnt.open;
      if assnum_cnt.isempty then
      begin
        assnum_cnt.append;
        assnum_cnt.fieldbyname('tipo').asstring := tipo;
        if (tipo = 'DICHIARAZIONI INTRASTAT') or (tipo = 'CONFIGURAZIONE') or (tipo = 'FATTURAZIONE ELETTRONICA PA') or (copy(tipo, 1, 7) = 'CFGART-') or (tipo = 'REGISTRO COMMERCIALIZZAZIONE') or (copy(tipo, 1, 3) = 'SDA') then
        begin
          assnum_cnt.fieldbyname('anno').asstring := '';
        end
        else
        begin
          assnum_cnt.fieldbyname('anno').asstring := inttostr(anno);
        end;
        assnum_cnt.fieldbyname('sottotipo').asstring := serie;
        assnum_cnt.post;
      end;

      if assnum_cnt.fieldbyname('data_aggiornamento').asdatetime > data then
      begin
        if avviso then
        begin
          messaggio(000, 'l''ultimo progressivo è stato assegnato in data superiore rispetto a quella attuale'
            );
        end;
      end;

      assnum_cnt.edit;

      progressivo_precedente := strtoint(floattostr(assnum_cnt.fieldbyname('progressivo').asfloat));
      data_precedente := assnum_cnt.fieldbyname('data_aggiornamento').asdatetime;

      if progressivo = 0 then
      begin
        assnum_cnt.fieldbyname('progressivo').asfloat := arrotonda(assnum_cnt.fieldbyname('progressivo').asfloat + 1, 0);
        assnum_cnt.fieldbyname('data_aggiornamento').asdatetime := data;
        progressivo := strtoint(floattostr(assnum_cnt.fieldbyname('progressivo').asfloat));
      end
      else
      begin
        if not avviso then
        begin
          assnum_cnt.fieldbyname('progressivo').asfloat := strtofloat(inttostr(progressivo));
          assnum_cnt.fieldbyname('data_aggiornamento').asdatetime := data;
        end
        else
        begin
          if assnum_cnt.fieldbyname('progressivo').asinteger >= progressivo then
          begin
            if messaggio(304, msg_0019 + ' (' + inttostr(progressivo) + ')' + #13 + msg_0020 + ' (' + floattostr(assnum_cnt.fieldbyname('progressivo').asinteger) + ')' + #13 + #13 + msg_0021) = 1 then
            begin
              progressivo := trunc(assnum_cnt.fieldbyname('progressivo').asfloat + 1);
              assnum_cnt.fieldbyname('progressivo').asfloat := strtofloat(inttostr(progressivo));
              assnum_cnt.fieldbyname('data_aggiornamento').asdatetime := data;
            end;
          end
          else if assnum_cnt.fieldbyname('progressivo').asinteger + 1 <> progressivo then
          begin
            if messaggio(304, msg_0019 + ' (' + inttostr(progressivo) + ')' + #13 + msg_0022 + ' (' + floattostr(assnum_cnt.fieldbyname('progressivo').asinteger) + ')' + #13 + #13 + msg_0023) = 1 then
            begin
              assnum_cnt.fieldbyname('progressivo').asfloat := strtofloat(inttostr(progressivo));
              assnum_cnt.fieldbyname('data_aggiornamento').asdatetime := data;
              progressivo := strtoint(floattostr(assnum_cnt.fieldbyname('progressivo').asfloat));
            end
            else
            begin
              progressivo := trunc(arrotonda(assnum_cnt.fieldbyname('progressivo').asfloat + 1, 0));
              assnum_cnt.fieldbyname('progressivo').asfloat := arrotonda(assnum_cnt.fieldbyname('progressivo').asfloat + 1, 0);
              assnum_cnt.fieldbyname('data_aggiornamento').asdatetime := data;
            end;
          end
          else
          begin
            assnum_cnt.fieldbyname('progressivo').asfloat := strtofloat(inttostr(progressivo));
            assnum_cnt.fieldbyname('data_aggiornamento').asdatetime := data;
          end;
        end;
      end;

      if (aggiorna) and (progressivo <> 0) and (assnum_cnt.state <> dsbrowse) then
      begin
        assnum_cnt.post;
        break;
      end
      else
      begin
        assnum_cnt.cancel;
        break;
      end;

    except
    end;

  end; // while

  assnum_cnt.close;
  assnum_cnt.connection := arc.arcdit;
end;

procedure TA31IMPORDV.inserisci_articolo_log(cli_codice, contratto: string; posizione: integer;
  art_codice, art_esponente, codice_controllo, testo_messaggio: string);
begin
  query_sor.close;
  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.parambyname('cli_codice').asstring := cli_codice;
  query_sor.parambyname('art_codice').asstring := art_codice;
  query_sor.parambyname('art_esponente').asstring := art_esponente;
  query_sor.parambyname('codice_controllo').asstring := codice_controllo;
  query_sor.open;
  if query_sor.eof then
  begin
    ins_sor.parambyname('utn_codice').asstring := utente;
    ins_sor.parambyname('utente_creazione').asstring := utente;
    ins_sor.parambyname('data_ora_creazione').asdatetime := now;
    ins_sor.parambyname('utente').asstring := utente;
    ins_sor.parambyname('data_ora').asdatetime := now;
    ins_sor.parambyname('cli_codice').asstring := cli_codice;
    ins_sor.parambyname('art_codice_cliente').asstring := art_codice;
    ins_sor.parambyname('art_esponente').asstring := art_esponente;
    ins_sor.parambyname('codice_controllo').asstring := codice_controllo;
    ins_sor.parambyname('messaggio').asstring := testo_messaggio;
    ins_sor.execsql;

    lista_articoli.add(testo_messaggio);
  end;

  query_sor.close;

  controlla_transazione;
end;

procedure TA31IMPORDV.inserisci_articolo_ordine(tipo_documento, cli_codice, indirizzo, tlv_codice, contratto: string; posizione: integer;
  art_codice, art_codice_cliente, art_esponente, commessa_cliente, art_codice_semilav, frn_codice_terzista: string;
  data_riferimento: variant;
  prezzo_speciale: double);
var
  j, progressivo: integer;
  cms_codice, tipologia: string;
  prezzo: double;
  tsm_codice, tsm_codice_art, testo_messaggio: string;
  flag_aggiungi: boolean;
begin
  sor_cms.close;
  sor_cms.parambyname('utn_codice').asstring := utente;
  sor_cms.parambyname('contratto').asstring := contratto;
  sor_cms.open;
  if sor_cms.eof then
  begin
    sor_cms.append;
    sor_cms.fieldbyname('utn_codice').asstring := utente;
    sor_cms.fieldbyname('contratto').asstring := contratto;
    sor_cms.post;
  end;

  flag_aggiungi := true;

  if cli_codice = PROMAU_FRN_CODICE then
  begin
    art_esponente := '';
    cms_codice := '';
    posizione := 0;
  end
  else
  begin
    cms_codice := cli_codice + ' ' + contratto;

    if indirizzo <> '' then
    begin
      ind.close;
      ind.parambyname('cli_codice').asstring := cli_codice;
      ind.parambyname('indirizzo').asstring := indirizzo;
      ind.open;

      if ind.eof then
      begin
        flag_aggiungi := false;
        testo_messaggio := ' ***** pos. ' + formatfloat('####0', posizione) + ' ** codice cliente [ ' + v_cli_codice.text + ' ] ' + ' ** filiale [ ' + indirizzo + ' ] ' + ' ** riferimento [ ' + contratto + ' ] ' + ' ** articolo cliente [ ' + art_codice_cliente + ' ] - articolo promau [' + art_codice
          + '] filiale non esiste ***** ';

        inserisci_articolo_log(v_cli_codice.text, contratto, posizione, art_codice, indirizzo, 'filiale', testo_messaggio);
      end;
    end;
  end;

  if prezzo_speciale = 0 then
  begin
    read_tabella(arc.arcdit, 'tva', 'codice', cli.fieldbyname('tva_codice').asstring);
    cifre_decimali_prezzo := archivio.fieldbyname('decimali_prezzo').asinteger;

    //ovr_id.fieldbyname('tr1_codice').asstring
    prezzo := promau_cerca_prezzo(v_cli_codice.text, indirizzo, contratto, inttostr(posizione), art_codice, tlv_codice, tdo.fieldbyname('prezzo_proposto').asstring, tipo_documento, '', cifre_decimali_prezzo, tsm_codice, tsm_codice_art, date, 0);

    if (prezzo = 0) and (cli_codice <> promau_frn_codice) and flag_aggiungi then
    begin
      try
        flag_aggiungi := true;

        testo_messaggio := ' ***** pos. ' + formatfloat('####0', posizione) + ' ** codice cliente [ ' + v_cli_codice.text + ' ] ' + ' ** riferimento [ ' + contratto + ' ] ' + ' ** articolo cliente [ ' + art_codice_cliente + ' ] - articolo promau [' + art_codice + '] senza prezzo ' +
          floattostr(prezzo) + ' ***** ';

        inserisci_articolo_log(v_cli_codice.text, contratto, posizione, art_codice, '', 'prezzo', testo_messaggio);
      except
      end; // if

    end;
  end
  else
  begin
    prezzo := prezzo_speciale;
  end;

  dsb.close;
  dsb.parambyname('art_codice_padre').asstring := art_codice;
  dsb.parambyname('data_inizio').asdatetime := date;
  dsb.parambyname('data_fine').asdatetime := date;
  dsb.open;

  if dsb.eof then
  begin
    try
      flag_aggiungi := false;
      testo_messaggio := ' ***** pos. ' + formatfloat('####0', posizione) + ' ** codice cliente [ ' + v_cli_codice.text + ' ] ' + ' ** articolo cliente [ ' + art_codice_cliente + ' ] - articolo promau [' + art_codice + '] non esiste distinta base ***** ';
      inserisci_articolo_log(v_cli_codice.text, contratto, posizione, art_codice, '', 'dsb', testo_messaggio);
    except
    end;
  end;

  if flag_aggiungi then
  begin

    for j := 0 to 11 do
    begin

      if (qta_consegna[j] = 0) then //and (cli_codice = promau_frn_codice) then
      begin
        // prezzo := 0;
        flag_aggiungi := true;
      end
      else if (qta_consegna[j] > 0) then
      begin
        flag_aggiungi := true;
      end
      else
      begin
        flag_aggiungi := false;
      end;

      if flag_aggiungi then
      begin
        sor_articoli.close;
        sor_articoli.parambyname('utn_codice').asstring := utente;
        sor_articoli.parambyname('cli_codice').asstring := cli_codice;
        sor_articoli.parambyname('indirizzo').asstring := indirizzo;
        sor_articoli.parambyname('contratto').asstring := contratto;
        sor_articoli.parambyname('posizione').asinteger := posizione;
        sor_articoli.parambyname('art_codice').asstring := art_codice;
        sor_articoli.parambyname('data_consegna').asdatetime := data_consegna[j];
        sor_articoli.parambyname('art_codice_semilav').asstring := art_codice_semilav;
        sor_articoli.parambyname('frn_codice_terzista').asstring := frn_codice_terzista;

        sor_articoli.open;
        if sor_articoli.eof then
        begin
          sor_articoli.append;
          sor_articoli.fieldbyname('utn_codice').asstring := utente;
          sor_articoli.fieldbyname('data_ora_creazione').asdatetime := now;
          sor_articoli.fieldbyname('cli_codice').asstring := cli_codice;
          sor_articoli.fieldbyname('indirizzo').asstring := indirizzo;
          sor_articoli.fieldbyname('contratto').asstring := contratto;
          sor_articoli.fieldbyname('posizione').asinteger := posizione;
          sor_articoli.fieldbyname('art_codice').asstring := art_codice;
          sor_articoli.fieldbyname('art_codice_cliente').asstring := art_codice_cliente;
          sor_articoli.fieldbyname('art_esponente').asstring := art_esponente;
          sor_articoli.fieldbyname('quantita').asfloat := qta_consegna[j];
          sor_articoli.fieldbyname('data_consegna').asdatetime := data_consegna[j];
          if qta_consegna[j] > 0 then
          begin
            sor_articoli.fieldbyname('prezzo').asfloat := prezzo;
          end;
          sor_articoli.fieldbyname('commessa_cliente').asstring := commessa_cliente;
          sor_articoli.fieldbyname('data_commessa').asvariant := data_commessa;
          read_tabella(arc.arcdit, 'cms', 'descrizione1', cli_codice + ' ' + esercizio + ' ' + contratto);
          sor_articoli.fieldbyname('cms_codice').asstring := archivio.fieldbyname('codice').asstring;

          //09.09.2020
          sor_articoli.fieldbyname('art_codice_semilav').asstring := art_codice_semilav;
          sor_articoli.fieldbyname('frn_codice_terzista').asstring := frn_codice_terzista;

          if j = 0 then
          begin
            sor_articoli.fieldbyname('ritardo').asstring := 'si';
          end;

          sor_articoli.post;
        end;

        query_sor2.close;
        query_sor2.parambyname('utn_codice').asstring := utente;
        query_sor2.parambyname('riferimento').asstring := contratto;
        query_sor2.parambyname('pos_riga').asinteger := posizione;
        query_sor2.parambyname('tipo_riga').asstring := 'ordine cliente';
        query_sor2.parambyname('art_codice_cliente').asstring := art_codice_cliente;
        query_sor2.parambyname('art_esponente').asstring := art_esponente;
        query_sor2.parambyname('art_codice_semilav').asstring := art_codice_semilav;
        query_sor2.parambyname('frn_codice_terzista').asstring := frn_codice_terzista;

        query_sor2.open;
        if query_sor2.eof then
        begin
          query_sor2.append;
          progressivo := progressivo + 1;
        end
        else
        begin
          query_sor2.edit;
        end;

        nome_qta := 'qta_' + setta_lunghezza(inttostr(j), 2, true, '0');
        nome_data_consegna := 'data_consegna_' + setta_lunghezza(inttostr(j), 2, true, '0');
        query_sor2.fieldbyname('utn_codice').asstring := utente;
        query_sor2.fieldbyname('progressivo').asinteger := progressivo;
        query_sor2.fieldbyname('riferimento').asstring := contratto;
        query_sor2.fieldbyname('pos_riga').asinteger := posizione;
        query_sor2.fieldbyname('tipo_riga').asstring := 'ordine cliente';
        query_sor2.fieldbyname('art_codice').asstring := art_codice;
        query_sor2.fieldbyname('art_codice_cli').asstring := art_codice_cliente;
        query_sor2.fieldbyname('art_esponente').asstring := art_esponente;
        query_sor2.fieldbyname(nome_qta).asfloat := query_sor2.fieldbyname(nome_qta).asfloat + sor_articoli.fieldbyname('quantita').asfloat;
        query_sor2.fieldbyname(nome_data_consegna).asdatetime := sor_articoli.fieldbyname('data_consegna').asdatetime;
        query_sor2.fieldbyname('art_codice_semilav').asstring := art_codice_semilav;
        query_sor2.fieldbyname('frn_codice_terzista').asstring := frn_codice_terzista;
        query_sor2.post;
      end;

    end; // next
  end;
  dsb.close;
  sor_articoli.close;
end;

procedure TA31IMPORDV.annulla_ordini_produzione(documento_origine: string;
  progressivo, riga: integer);
begin

  ovr_produzione.close;
  ovr_produzione.sql.clear;
  if documento_origine = 'ordine ven' then
  begin
    ovr_produzione.sql.add('select * from opt ');
    ovr_produzione.sql.add('where');
    ovr_produzione.sql.add('opt.documento_origine=' + quotedstr(documento_origine) + ' and ');
    ovr_produzione.sql.add('opt.doc_progressivo_origine =:progressivo and ');
    ovr_produzione.sql.add('opt.doc_riga_origine=:riga ');

  end
  else
  begin
    ovr_produzione.sql.add('select * from opt ');
    ovr_produzione.sql.add('where');
    ovr_produzione.sql.add('opt.documento_origine=' + quotedstr(documento_origine) + ' and ');
    ovr_produzione.sql.add('opt.doc_progressivo_origine =:progressivo ');
  end;

  ovr_produzione.parambyname('progressivo').asinteger := progressivo;

  if documento_origine = 'ordine ven' then
  begin
    ovr_produzione.parambyname('riga').asinteger := riga;
  end;

  ovr_produzione.open;
  while not ovr_produzione.eof do
  begin

    if ovr_produzione.fieldbyname('frn_codice').asstring <> PROMAU_FRN_CODICE then
    begin
      scrivi_log('evado saldo ordine prod ' + ovr_produzione.fieldbyname('documento_origine').asstring + ' ' + ovr_produzione.fieldbyname('progressivo').asstring + ' ' + ovr_produzione.fieldbyname('art_codice').asstring + ' ' + ovr_produzione.fieldbyname('data_consegna').asstring);

      // materiali ordini di produzione
      opr_produzione.parambyname('progressivo').asinteger := ovr_produzione.fieldbyname('progressivo').asinteger;
      opr_produzione.execsql;

      // ordini di produzione
      ovr_produzione.edit;
      ovr_produzione.fieldbyname('situazione').asstring := 'evaso';
      ovr_produzione.post;

      oar_produzione.close;
      oar_produzione.parambyname('documento_origine').asstring := 'produzione';
      oar_produzione.parambyname('doc_progressivo_origine').asinteger := ovr_produzione.fieldbyname('progressivo').asinteger;
      oar_produzione.parambyname('doc_riga_origine').asinteger := 0;
      oar_produzione.open;
      if not oar_produzione.eof then
      begin
        scrivi_log('annulla ordine fornitore c/terzi' + oar_produzione.fieldbyname('progressivo').asstring + ' ' + oar_produzione.fieldbyname('riga').asstring + ' ' + oar_produzione.fieldbyname('art_codice').asstring + ' ' + oar_produzione.fieldbyname('data_consegna').asstring);

        oar_produzione.edit;
        oar_produzione.fieldbyname('situazione').asstring := 'annullato';
        oar_produzione.post;
      end;
    end;

    ovr_produzione.next;
  end;

  controlla_transazione;
end;

initialization

registerclass(tA31IMPORDV);

end.
