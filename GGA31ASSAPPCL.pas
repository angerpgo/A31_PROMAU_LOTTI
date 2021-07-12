unit GGA31ASSAPPCL;

interface

uses
  windows, messages, sysutils, variants, classes, graphics, controls, forms,
  dialogs, gggesarc, db, query_go, myaccess, menus,
  comctrls, rztabs, toolwin, extctrls, stdctrls, dbctrls, mask,
  buttons, grids, dbgrids, rzdbgrid, rzspnedt,
  gggesgrd, zzcerca_prezzo, zzspesco, zztotven, rzlabel, rzpanel, rzdbedit, rzlistvw, rztreevw, rzdbchk,
  rzradchk, rzbutton, rzsplit, rzcmbobx, rzprgres, rzshelldialogs, rzdbcmbo, raizeedit_go,
  ZZDICINT,

  rzedit, dbaccess, memds, ZZPRODCONF, ZZCOLLI_CONFEZIONI, Vcl.WinXCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxCurrencyEdit, cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TA31ASSAPPCL = CLASS(TGESGRD)
    v_l_prezzo: trzlabel;
    v_quantita: trzdbnumericedit_go;
    progressbar: tprogressbar;
    pannello_parametri: trzpanel;
    label2: trzlabel;
    v_cli_codice: trzedit_go;
    panel1: trzpanel;
    label1: trzlabel;
    v_esistenza: trzdbnumericedit_go;
    label3: trzlabel;
    v_approntato: trzdbnumericedit_go;
    cli: tmyquery_go;
    approntato: tmyquery_go;
    art: tmyquery_go;
    testata_documento_evaso: tmyquery_go;
    riga_documento_evaso: tmyquery_go;
    label28: trzlabel;
    v_saldo_acconto_approntato: trzdbcombobox_go;
    totale_colli: tmyquery_go;
    ltm: tmyquery_go;
    ore: tmyquery_go;
    ors: tmyquery_go;
    ore_dettaglio: tmyquery_go;
    ovr: tmyquery_go;
    tool_saldo_acconto: ttoolbutton;
    tool_evasione: ttoolbutton;
    testata: tmyquery_go;
    righe: tmyquery_go;
    v_tdo_codice_approntamento: trzedit_go;
    v_tdo_descrizione_approntamento: trzdbeditdescrizione_go;
    label47: trzlabel;
    v_cli_descrizione1: trzdbeditdescrizione_go;
    cli_ds: tmydatasource;
    query_opt_rda_oar: tmyquery_go;
    tabella_ovr: tmyquery_go;
    cfg: tmyquery_go;
    importo_ordinato: tmyquery_go;
    pat: tmyquery_go;
    cpv: tmyquery_go;
    utntdo: tmyquery_go;
    iva_diversa: tmyquery_go;
    label4: trzlabel;
    v_numero_colli_approntato: TRzDBNumericEdit_go;
    v_numero_confezioni_approntato: TRzDBNumericEdit_go;
    label6: trzlabel;
    label7: trzlabel;
    v_ind_codice: trzedit_go;
    rzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    ind: tmyquery_go;
    ind_ds: tmydatasource;
    v_a_data_consegna: trzdatetimeedit_go;
    v_da_data_consegna: trzdatetimeedit_go;
    label9: trzlabel;
    v_numerazione: trzcheckbox;
    testata_esistente: TMyQuery_go;
    RzLabel1: TRzLabel;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    RzLabel2: TRzLabel;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    RzLabel3: TRzLabel;
    v_tum_quantita_approntata_base: TRzDBNumericEdit_go;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    RzLabel4: TRzLabel;
    RzDBEditDescrizione_go5: TRzDBEditDescrizione_go;
    ovt_tsp: TMyQuery_go;
    pkt: TMyQuery_go;
    v_selcms: TRzRapidFireButton;
    v_crea_documento: TRzRapidFireButton;
    v_generazione_massiva: TRzRapidFireButton;
    v_assegna_tutto: TRzRapidFireButton;
    v_automezzo: TRzRapidFireButton;
    v_cruscotto_articolo: TRzRapidFireButton;
    v_packing_list: TRzRapidFireButton;
    v_lettore: TRzRapidFireButton;
    v_lotti: TRzRapidFireButton;
    ubm: TMyQuery_go;
    v_ubicazioni: TRzRapidFireButton;
    v_ordine_produzione: TRzRapidFireButton;
    query_rda: TMyQuery_go;
    query_esiste_opt: TMyQuery_go;
    v_spedizione: TRzRapidFireButton;
    ovt_ds: TMyDataSource;
    ovt: TMyQuery_go;
    tdo: TMyQuery_go;
    ovt_update: TMyQuery_go;
    tool_etiart: TToolButton;
    RzLabel5: TRzLabel;
    tdo_ordine: TMyQuery_go;
    tdo_ordine_ds: TMyDataSource;
    RzLabel6: TRzLabel;
    v_tdo_codice_ordine: trzedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    Label5: TRzLabel;
    v_numero_ordine: trznumericedit_go;
    RzPanel1: TRzPanel;
    Label23: TRzLabel;
    trzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    Label35: TRzLabel;
    v_data_inizio_trasporto: trzdbdatetimeedit_go;
    v_ora_inizio_trasporto: trzdbnumericedit_go;
    v_minuto_inizio_trasporto: trzdbnumericedit_go;
    RzLabel7: TRzLabel;
    v_art_codice: trzedit_go;
    RzPanel2: TRzPanel;
    v_griglia2: TcxGrid;
    v_griglia2DB: TcxGridDBTableView;
    v_griglia2DBart_codice: TcxGridDBColumn;
    v_griglia2DBart_descrizione1: TcxGridDBColumn;
    v_griglia2DBtub_codice: TcxGridDBColumn;
    v_griglia2DBquantita: TcxGridDBColumn;
    v_griglia2DBBD: TcxGridDBBandedTableView;
    v_griglia2DBBDart_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDart_descrizione1: TcxGridDBBandedColumn;
    v_griglia2DBBDtcm_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDtub_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDquantita: TcxGridDBBandedColumn;
    v_griglia2Liv1: TcxGridLevel;
    a31ubm: TMyQuery_go;
    a31ubm_ds: TMyDataSource;
    v_griglia2DBBtsu_codice_01: TcxGridDBBandedColumn;
    v_griglia2DBBDtsu_codice_02: TcxGridDBBandedColumn;
    v_griglia2DBBDtsu_codice_03: TcxGridDBBandedColumn;
    v_griglia2DBBDtsu_codice_04: TcxGridDBBandedColumn;
    v_griglia2DBBDtsu_codice_05: TcxGridDBBandedColumn;
    v_griglia3: TcxGrid;
    v_griglia3DBBD: TcxGridDBBandedTableView;
    v_griglia3DBBDlotto: TcxGridDBBandedColumn;
    v_griglia3DBBDquantita: TcxGridDBBandedColumn;
    v_griglia3Liv1: TcxGridLevel;
    a31ltm_ds: TMyDataSource;
    a31ltm: TMyQuery_go;
    v_griglia3DBBDqta_prel: TcxGridDBBandedColumn;
    tool_missioni: TToolButton;
    procedure pannello_parametriexit(sender: tobject);
    procedure pannello_parametrienter(sender: tobject);
    procedure pannello_campienter(sender: tobject);
    procedure pannello_codiceenter(sender: tobject);
    procedure v_grigliakeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure v_quantitaexit(sender: tobject);
    procedure v_cli_codiceexit(sender: tobject);
    procedure v_grigliaenter(sender: tobject);
    procedure formcreate(sender: tobject);
    procedure v_tdo_codice_approntamentoexit(sender: tobject);
    procedure v_saldo_acconto_approntatoexit(sender: tobject);
    procedure v_grigliadblclick(sender: tobject);
    procedure v_lotticlick(sender: tobject);
    procedure pannello_codiceexit(sender: tobject);
    procedure v_grigliadrawcolumncell(sender: tobject; const rect: trect;
      datacol: integer; column: tcolumn; state: tgriddrawstate);
    procedure tool_saldo_accontoclick(sender: tobject);
    procedure tool_evasioneclick(sender: tobject);
    procedure v_grigliaexit(sender: tobject);
    procedure v_lettoreclick(sender: tobject);
    procedure v_saldo_acconto_approntatochange(sender: tobject);
    procedure v_packing_listclick(sender: tobject);
    procedure query_codiceafterscroll(dataset: tdataset);
    procedure v_cruscotto_articoloclick(sender: tobject);
    procedure pannello_campiexit(sender: tobject);
    procedure formkeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure v_quantitaenter(sender: tobject);
    procedure v_numero_ordineexit(sender: tobject);
    procedure v_crea_documentoclick(sender: tobject);
    procedure formdestroy(sender: tobject);
    procedure v_assegna_tuttoclick(sender: tobject);
    procedure formshow(sender: tobject);
    procedure v_generazione_massivaclick(sender: tobject);
    procedure v_ind_codiceenter(sender: tobject);
    procedure v_ind_codiceexit(sender: tobject);
    procedure v_cli_codiceenter(sender: tobject);
    procedure v_numero_ordineenter(sender: tobject);
    procedure v_a_data_consegnaexit(sender: tobject);
    procedure v_selcmsClick(Sender: TObject);
    procedure v_quantitaChange(Sender: TObject);
    procedure v_automezzoClick(Sender: TObject);
    procedure v_ubicazioniClick(Sender: TObject);
    procedure v_ordine_produzioneClick(Sender: TObject);
    procedure v_quantitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_spedizioneClick(Sender: TObject);
    procedure tool_etiartClick(Sender: TObject);
    procedure v_tdo_codice_ordineExit(Sender: TObject);
    procedure v_tdo_codice_ordineEnter(Sender: TObject);
    procedure v_numero_colli_approntatoExit(Sender: TObject);
    procedure v_numero_colli_approntatoEnter(Sender: TObject);
    procedure v_numero_confezioni_approntatoEnter(Sender: TObject);
    procedure v_numero_confezioni_approntatoExit(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure v_art_codiceEnter(Sender: TObject);
    procedure v_griglia3DBBDCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_art_codiceKeyPress(Sender: TObject; var Key: Char);
  protected
    dicint: tdicint;

    spesco: tspesco;
    cerca_prezzi: tcerca_prezzo;
    totven: ttotven;
    prodconf: tprodconf;

    tabella_controllo_tdo_approntamento: tmyquery_go;
    tabella_controllo_tdo_approntamento_ds: tmydatasource;
    vecchio_quantita: double;
    progressivo_evasione: integer;
    tdo_codice_evasione, tipo_documento_evasione, documento, documento_stampa: string;
    aggiorna_totale: boolean;
    sconto_massimo_art: double;
    listini_scaglioni: string;
    approntato_da_sscc, lettore_assappcl: string;
    lettore: boolean;
    tps_codice: string;

    selezione_cms_codice, da_cms_codice, a_cms_codice,
      selezione_cms_data, selezione_cms_data_chiusura, selezione_cms_data_consegna: string;
      selezione_cms_tcms_codice, da_cms_tcms_codice, a_cms_tcms_codice: string;
    selezione_cmt_codice, da_cmt_codice, a_cmt_codice, cmt_situazione: string;
    selezione_cms_responsabile, da_cms_responsabile, a_cms_responsabile: string;
    da_cms_data, a_cms_data, da_cms_data_chiusura, a_cms_data_chiusura, da_cms_data_consegna, a_cms_data_consegna: tdatetime;
    cms_chiusa: word;
    cms_codice_lista, cms_tcms_codice_lista, cmt_codice_lista: tstringlist;
    tasto_escape_cms, cms_eseguito: boolean;

    tipo_numerazione_evasione: string;

    cli_codice_passato: string;
    numero_ordine_passato: double;

    procedure call_selcms;
    procedure assegna_testo_query_codice;

    procedure cli_codice_controllo(blocco: boolean);
    procedure ind_codice_controllo(blocco: boolean);
    procedure esegui_gesordv;
    procedure aggiorna_totali(tipo: string);
    procedure tdo_codice_approntamento_controllo(blocco: boolean);
    procedure v_tdo_codice_ordine_controllo(blocco: boolean);
    procedure after_post_righe_evasione;
    procedure assegna_gen_codice_evasione;
    procedure assegna_tiv_codice_righe_evasione;
    procedure calcola_importo_evasione;
    procedure saldo_acconto_approntato_controllo;
    procedure esegui_lotti;
    procedure esegui_ubicazioni;
    procedure abilita_bottoni(flag: boolean);
    procedure assegna_hint_griglia;
    procedure saldo_acconto;
    procedure evasione;
    function assegna_approntato(quantita: double; gestione: boolean; controllo_quantita: boolean = true): double;
    procedure esegui_lettore;
    procedure esegui_query_codice; override;
    function fuori_fido(solo_fuori_fido: boolean): boolean;
    procedure creazione_documento(tipo: string);
    procedure totalizza_colli;
    procedure assegna_v_numerazione;

    procedure errore_commit_transazione;

    procedure eredita_documenti_collegati(tipo_documento_origine, tipo_documento_collegato: string; progressivo_origine, progressivo_collegato: integer);
    procedure assegna_giorno;

    function esiste_rda_opt: boolean;
    //modifica
    procedure cerca_ordine(testo: string);
    procedure assegna_lotti;
    procedure apri_lotti_ubm;
    procedure esegui_approntato;
    //modifica fine
  public

    cms_codice_passato: string;

    procedure assegna_codice; override;
    procedure inizializza_record; override;
    procedure controllo_cancella; override;
    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;
    procedure esci; override;
    procedure before_post; override;
    procedure after_post; override;
    procedure visualizza_descrizioni_tabella_lookup_collegato; override;
    procedure abilitazioni; override;
    procedure stampa; override;
    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
  end;

implementation

{$r *.dfm}


uses DMARC, GGLTTERLASINH, GGSTAAPPCL, ZZLIBRERIE, GGGESPKL, GGIMPALF, GGSCETSPAUT,
  ZZASSEGNA_IVA_VENDITE, GGGESVENC1, ZZCONTROLLO_TESTATE_EVASIONE, ZZASSEGNA_GIORNO_VENDITE;

// ******************************************************************************
// procedure e funzioni da personalizzare (verranno mantenute da inheritare)
// ******************************************************************************

procedure tA31ASSAPPCL.assegna_codice;
begin
  inherited;
  codice := vararrayof([query_codice.fieldbyname('progressivo').asfloat, query_codice.fieldbyname('riga').asinteger]);
end;

procedure tA31ASSAPPCL.inizializza_record;
begin
  inherited;
  // tabella['codice'] := codice;
end;

procedure tA31ASSAPPCL.controllo_campi;
begin
  saldo_acconto_approntato_controllo;
end;

procedure tA31ASSAPPCL.after_post;
begin
  if approntato_da_sscc <> 'si' then
  begin
    esegui_lotti;
    esegui_ubicazioni;
  end;
  inherited;
  if v_griglia.canfocus then
  begin
    fuoco(v_griglia);
  end;
end;

procedure tA31ASSAPPCL.before_post;
begin
  if (tabella.fieldbyname('evadere_approntato').asstring = '') and (tabella.fieldbyname('quantita_approntata').asfloat <> 0) then
  begin
    tabella.fieldbyname('evadere_approntato').asstring := 'si';
  end;
  if tabella.fieldbyname('quantita_approntata').asfloat = 0 then
  begin
    tabella.fieldbyname('saldo_acconto_approntato').asstring := '';
  end;
end;

procedure tA31ASSAPPCL.controllo_cancella;
begin
  inherited;
  messaggio(000, 'la cancellazione non è consentita');
  controllo_cancella_edit := false;
  exit;
end;

// ******************************************************************************
// gestione campi da inserire programma per programma ex novo
// ******************************************************************************

procedure tA31ASSAPPCL.pannello_parametriexit(sender: tobject);
begin
  inherited;

  cli_codice_controllo(true);
  ind_codice_controllo(true);
  tdo_codice_approntamento_controllo(true);
  v_tdo_codice_ordine_controllo(true);
  v_packing_list.enabled := true;
  esegui_query_codice;
  if lettore_assappcl = 'si' then
  begin
    esegui_lettore;
  end;
end;

procedure tA31ASSAPPCL.pannello_parametrienter(sender: tobject);
begin
  inherited;
  parte_attiva := 'pannello_parametri';
  v_packing_list.enabled := false;
end;

procedure tA31ASSAPPCL.visualizza_stampa_elabora;
begin
  cli_codice_controllo(false);
  ind_codice_controllo(false);
end;

procedure tA31ASSAPPCL.visualizza_descrizioni_tabella_lookup_collegato;
begin
  v_tdo_codice_ordine_controllo(false);
end;

procedure tA31ASSAPPCL.esci;
begin
  if parte_attiva = 'pannello_parametri' then
  begin
    close;
  end
  else if parte_attiva = 'pannello_codice' then
  begin
    fuoco(v_cli_codice);
  end
  else
  begin
    inherited;
  end;
end;

procedure tA31ASSAPPCL.cli_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cli, v_cli_codice, blocco, nil, nil, nil);
end;

procedure tA31ASSAPPCL.pannello_campienter(sender: tobject);
begin
  inherited;
  if (query_codice.fieldbyname('richiesta_accettazione').asstring = 'si') and (query_codice.fieldbyname('accettato').asstring = 'no') then
  begin
    messaggio(000, 'il documento necessita di accettazione per poter essere evaso');
    if v_griglia.canfocus then
    begin
      fuoco(v_griglia);
    end;
    abort;
  end
  else
  begin
    vecchio_quantita := tabella.fieldbyname('tum_quantita_approntata_base').asfloat;
    cifre_decimali_quantita := decimali_quantita_art(tabella.fieldbyname('art_codice').asstring);
    tool_f9.enabled := false;
  end;
end;

procedure tA31ASSAPPCL.pannello_codiceenter(sender: tobject);
begin
  inherited;
  tool_inserimento.enabled := false;
end;

procedure tA31ASSAPPCL.esegui_gesordv;
begin
  inherited;
  if query_codice.fieldbyname('progressivo').asfloat <> 0 then
  begin
    parametri_extra_programma_chiamato[29] := query_codice.fieldbyname('riga').asinteger;
    esegui_programma('GESORDV', query_codice.fieldbyname('progressivo').asinteger, true);
    esegui_query_codice;
  end;
end;

procedure tA31ASSAPPCL.v_grigliakeydown(sender: tobject; var key: word;
  shift: tshiftstate);
begin
  inherited;

  if (key = vk_f6) and (shift = []) then
  begin
    if query_codice.fieldbyname('art_codice').asstring <> '' then
    begin
      esegui_programma('CRUART', query_codice.fieldbyname('art_codice').asstring, true);
    end;
  end;
  if (key = vk_return) and (shift = []) then
  begin
    key := 0;
    if approntato_da_sscc = 'si' then
    begin
      //
    end
    else
    begin
      esegui_approntato;
    end;
  end;
  if (key = vk_delete) and (shift = []) then
  begin
    codice := vararrayof([tabella.fieldbyname('progressivo').asinteger, tabella.fieldbyname('riga').asinteger]);
    assegna_approntato(query_codice.fieldbyname('quantita_approntata').asfloat * -1, false);
  end;
end;

procedure tA31ASSAPPCL.v_ind_codiceenter(sender: tobject);
begin
  inherited;
  visarc_filtro_01 := v_cli_codice.text;
  variato_stringa := v_ind_codice.text;
end;

procedure tA31ASSAPPCL.v_ind_codiceexit(sender: tobject);
begin
  inherited;
  ind_codice_controllo(true);
  if controllo and (variato_stringa <> v_ind_codice.text) then
  begin
    esegui_query_codice;
  end;
end;

procedure tA31ASSAPPCL.ind_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, ind, v_cli_codice, v_ind_codice, blocco, nil, nil, nil);
end;

function TA31ASSAPPCL.assegna_approntato(quantita: double; gestione: boolean; controllo_quantita: boolean = true): double;
begin
  result := 0;
  if quantita <> 0 then
  begin
    if controllo_quantita and (quantita > tabella.fieldbyname('quantita').asfloat - tabella.fieldbyname('quantita_approntata').asfloat) then
    begin
      quantita := tabella.fieldbyname('quantita').asfloat - tabella.fieldbyname('quantita_approntata').asfloat;
    end;
    result := quantita;

    vecchio_quantita := tabella.fieldbyname('tum_quantita_approntata_base').asfloat;
    if tabella_edit(tabella) then
    begin
      if not gestione then
      begin
        tabella.fieldbyname('quantita_approntata').asfloat := arrotonda
          (tabella.fieldbyname('quantita_approntata').asfloat + quantita, decimali_max_quantita);
        tabella.fieldbyname('numero_colli_approntato').asinteger := tabella.fieldbyname('numero_colli').asinteger;
        tabella.fieldbyname('numero_confezioni_approntato').asinteger := tabella.fieldbyname('numero_confezioni').asinteger;
      end;
      if tabella.fieldbyname('quantita_approntata').asfloat = 0 then
      begin
        tabella.fieldbyname('saldo_acconto_approntato').asstring := '';
        tabella.fieldbyname('evadere_approntato').asstring := '';
        tabella.fieldbyname('numero_colli_approntato').asinteger := 0;
        tabella.fieldbyname('numero_confezioni_approntato').asinteger := 0;
      end
      else
      begin
        if arrotonda(tabella.fieldbyname('quantita_approntata').asfloat, 4) >= arrotonda(query_codice.fieldbyname('quantita').asfloat, 4) then
        begin
          tabella.fieldbyname('saldo_acconto_approntato').asstring := 'saldo';
          tabella.fieldbyname('evadere_approntato').asstring := 'si';
        end
        else
        begin
          tabella.fieldbyname('saldo_acconto_approntato').asstring := 'acconto';
          tabella.fieldbyname('evadere_approntato').asstring := 'no';
        end;
      end;
      tabella.post;
    end;

    query_opt_rda_oar.close;
    query_opt_rda_oar.parambyname('ovr_progressivo').asinteger := query_codice.fieldbyname('progressivo').asinteger;
    query_opt_rda_oar.parambyname('ovr_riga').asinteger := query_codice.fieldbyname('riga').asinteger;
    query_opt_rda_oar.parambyname('quantita').asfloat := tabella.fieldbyname('quantita').asfloat;
    query_opt_rda_oar.open;
    if not query_opt_rda_oar.isempty then
    begin
      messaggio(200, 'esiste un documento: ' + query_opt_rda_oar.fieldbyname('tipo_documento').asstring +
        ' non ancora evaso' + #13 + 'a fronte della riga ordine');
    end;
  end
  else
  begin
    if tabella.fieldbyname('quantita_approntata').asfloat = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('saldo_acconto_approntato').asstring := '';
        tabella.fieldbyname('evadere_approntato').asstring := '';
        tabella.fieldbyname('numero_colli_approntato').asinteger := 0;
        tabella.fieldbyname('numero_confezioni_approntato').asinteger := 0;
        tabella.post;
      end;

      // cancello i lotti assegnati

    end;
  end;
end;

procedure tA31ASSAPPCL.v_quantitaexit(sender: tobject);
begin
  inherited;
  if controllo then
  begin
    if arrotonda(v_quantita.value, 4) <> arrotonda(v_quantita.value, cifre_decimali_quantita) then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('quantita_approntata').asfloat := arrotonda
          (tabella.fieldbyname('quantita_approntata').asfloat, cifre_decimali_quantita);
      end;
    end;
    if (arrotonda(v_tum_quantita_approntata_base.value - vecchio_quantita + v_approntato.value, 4) > arrotonda(v_esistenza.value, 4)) and
      (v_tum_quantita_approntata_base.value <> 0) then
    begin
      messaggio(200, 'la quantità approntata totale è maggiore dell''esistenza');
    end;
    if arrotonda(v_quantita.value, 4) > arrotonda(query_codice.fieldbyname('quantita').asfloat, 4) then
    begin
      messaggio(200, 'la quantità approntata è maggiore della quantità in ordine');
    end;

    if arrotonda(variato_importo, 4) <> arrotonda(v_quantita.value, 4) then
    begin
      read_tabella(art, query_codice.fieldbyname('art_codice').asstring);
      assegna_colli_confezioni(tabella, art, 'quantita_approntata', 'numero_colli_approntato', 'numero_confezioni_approntato');

      if tabella_edit(tabella) then
      begin
        if (arrotonda(v_quantita.value, 4) < arrotonda(query_codice.fieldbyname('quantita').asfloat)) and (v_quantita.value <> 0) then
        begin
          tabella.fieldbyname('saldo_acconto_approntato').asstring := 'acconto';
        end
        else
        begin
          tabella.fieldbyname('saldo_acconto_approntato').asstring := 'saldo';
        end;
        if v_quantita.value = 0 then
        begin
          tabella.fieldbyname('evadere_approntato').asstring := '';
        end;
      end;
    end;
  end;
end;

procedure TA31ASSAPPCL.v_quantitaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (key = vk_f11) and (shift = []) then
  begin
    assegna_approntato(query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat, false);
  end;
end;

procedure TA31ASSAPPCL.v_art_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_art_codice.text;
end;

procedure TA31ASSAPPCL.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  if controllo and (variato_stringa <> v_art_codice.text) then
  begin
    cerca_ordine(v_art_codice.text);
    esegui_query_codice;

  end;
end;

procedure TA31ASSAPPCL.v_art_codiceKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    cerca_ordine(v_art_codice.text);
  end;
end;

procedure tA31ASSAPPCL.v_assegna_tuttoclick(sender: tobject);
begin
  inherited;

  salta_esegui_query_codice := true;
  query_codice.close;
  query_codice.open;
  while not query_codice.eof do
  begin
    assegna_approntato(arrotonda(query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat, 4), false);
    query_codice.next;
  end;
  salta_esegui_query_codice := false;
  esegui_query_codice;
end;

procedure TA31ASSAPPCL.v_automezzoClick(Sender: TObject);
var
  pr: tscetspaut;
begin
  inherited;

  pr := tscetspaut.create(nil);
  try
    if pr.esegui_form then
    begin
      pr.showmodal;
    end;
  finally
    if pr.tsp_codice <> '' then
    begin
      query_codice.first;
      while not query_codice.eof do
      begin
        ovt_tsp.close;
        ovt_tsp.parambyname('tsp_codice').asstring := pr.tsp_codice;
        ovt_tsp.parambyname('automezzo').asstring := pr.automezzo;
        ovt_tsp.parambyname('progressivo').asinteger := query_codice.fieldbyname('progressivo').asinteger;
        ovt_tsp.execsql;

        query_codice.next;
      end;
      esegui_query_codice;
    end;
    pr.free;
  end;
end;

procedure tA31ASSAPPCL.v_a_data_consegnaexit(sender: tobject);
begin
  inherited;
  if v_a_data_consegna.date = 0 then
  begin
    v_a_data_consegna.text := data_31_12_9999;
  end;
end;

procedure tA31ASSAPPCL.v_cli_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_cli_codice.text;
end;

procedure tA31ASSAPPCL.v_cli_codiceexit(sender: tobject);
var
  stringa: string;
begin
  inherited;
  cli_codice_controllo(true);
  if controllo and (variato_stringa <> v_cli_codice.text) then
  begin
    esegui_query_codice;
    if cli.fieldbyname('tdo_codice').asstring <> '' then
    begin
      tdo_codice_evasione := cli.fieldbyname('tdo_codice').asstring;
      v_tdo_codice_approntamento.text := tdo_codice_evasione;
      tdo_codice_approntamento_controllo(false);
      assegna_v_numerazione;
    end;

    if cli.fieldbyname('visualizza_note_assappcl').asstring = 'si' then
    begin
      stringa := '';
      if cli.fieldbyname('note').asstring <> '' then
      begin
        stringa := stringa + 'NOTE GENERALI' + #13 + cli.fieldbyname('note').asstring + #13 + #13;
        messaggio(100, stringa);
      end;
    end;
  end;
end;

procedure tA31ASSAPPCL.v_grigliaenter(sender: tobject);
begin
  inherited;

  abilita_campo(tool_etiart);
  abilita_campo(v_spedizione);
  v_assegna_tutto.enabled := true;
  v_lettore.enabled := true;
  v_cruscotto_articolo.enabled := true;
  v_automezzo.enabled := true;
  if not query_codice.isempty then
  begin
    tool_ctrl_f1.enabled := true;
  end;
  v_crea_documento.enabled := true;
  v_generazione_massiva.enabled := true;
  abilita_campo(v_ordine_produzione);
end;

procedure tA31ASSAPPCL.formcreate(sender: tobject);
begin
  dicint := tdicint.create('C');

  spesco := tspesco.create(arc.arcdit, arc.dit);
  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);
  totven := ttotven.create;
  prodconf := tprodconf.create;

  cms_codice_lista := tstringlist.create;
  cmt_codice_lista := tstringlist.create;

  tabella_controllo_tdo_approntamento := tmyquery_go.create(self);
  tabella_controllo_tdo_approntamento_ds := tmydatasource.create(self);
  tabella_controllo_tdo_approntamento_ds.dataset := tabella_controllo_tdo_approntamento;
  tabella_controllo_tdo_approntamento.connection := arc.arcdit;
  tabella_controllo_tdo_approntamento.sql.text := 'select * from tdo where codice = :codice';
  v_tdo_descrizione_approntamento.datasource := tabella_controllo_tdo_approntamento_ds;
  v_tdo_descrizione_approntamento.datafield := 'descrizione';
  listini_scaglioni := arc.dit.fieldbyname('listini_scaglioni').asstring;
  approntato_da_sscc := arc.dit.fieldbyname('approntato_da_sscc').asstring;
  lettore_assappcl := arc.dit.fieldbyname('lettore_assappcl').asstring;
  tdo_codice_evasione := arc.dit.fieldbyname('tdo_codice_approntamento').asstring;

  //secondo_campo_ordinamento := 'ovr.id';

  secondo_campo_ordinamento := 'data_documento,serie_documento,numero_documento,riga';

  pannello_extra := true;

  testo_query_codice := 'select ' +
    'ovt.cli_codice cli_codice, cli.descrizione1 cli_descrizione1, cli.descrizione2 cli_descrizione2, ' +
    'cli.via cli_via, cli.citta cli_citta, ovt.accettato, tdo.richiesta_accettazione, art.tipo_articolo, art.tub_codice, ' +
    'ovr.art_codice, concat(trim(ovr.descrizione1), '' '', ovr.descrizione2) ovr_descrizione, ovr.tum_codice, ' +
    'ovr.quantita - ovr.quantita_evasa quantita, ovr.tum_quantita_base - ovr.tum_quantita_evasa_base tum_quantita_base, ' +
    'ovr.quantita_approntata, ovr.tum_quantita_approntata_base, ' +
    'ovr.progressivo, ovr.riga, ovr.tma_codice, ovt.data_documento, ovt.numero_documento, ' +
    'ovt.serie_documento, ovr.data_consegna, art.lotti, evadere_approntato, ' +
    'rda.progressivo rda_progressivo, oar.progressivo oar_progressivo, opt.progressivo opt_progressivo, ' +
    'coalesce(mag.esistenza, 0) esistenza, coalesce(mag.approntato, 0) approntato, ' +
    '(mag.esistenza - mag.approntato) disponibilita_approntato, (mag.esistenza - mag.impegnato + mag.ordinato) disponibilita, ' +
    'ovr.numero_colli, ovr.numero_confezioni, ovr.numero_colli_approntato, ovr.numero_confezioni_approntato, ' +
    'ovr.tiv_codice, tiv.controllo_su_documenti, ovt.riferimento, ovt.indirizzo, ovr.cms_codice, ovr.tipologia, ovr.sequenza, ' +
    'ovt.tsp_codice, ovt.automezzo, tsp.descrizione tsp_descrizione, ovt.data_inizio_trasporto, ovt.ora_inizio_trasporto, ' +
    'ovt.minuto_inizio_trasporto, ovr.id ' +
    'from ovr ' +
    'inner join ovt on (ovt.progressivo = ovr.progressivo) ' +
    'inner join tdo on (tdo.codice = ovt.tdo_codice) ' +
    'inner join art on (art.codice = ovr.art_codice) ' +
    'inner join cli on (cli.codice = ovt.cli_codice) ' +
    'left join tsp on tsp.codice = ovt.tsp_codice ' +
    'left join tiv on tiv.codice = ovr.tiv_codice ' +
    'left join mag on mag.art_codice = ovr.art_codice and mag.tma_codice = ovr.tma_codice ' +
    'left join rda on rda.ovr_progressivo <> 0 and rda.ovr_progressivo = ovr.progressivo and rda.ovr_riga = ovr.riga ' +
    'and rda.situazione <> ''evaso'' and rda.situazione <> ''annullato'' ' +
    'left join oar on oar.ovr_progressivo <> 0 and oar.ovr_progressivo = ovr.progressivo and oar.ovr_riga = ovr.riga ' +
    'left join opt on opt.ovr_progressivo <> 0 and opt.ovr_progressivo = ovr.progressivo and opt.ovr_riga = ovr.riga ' +
    'where ovt.cli_codice = :cli_codice ' +
    'and ((ovr.data_consegna between :da_data_consegna and :a_data_consegna) or ovr.data_consegna is null) ' +
    'and ovr.quantita <> 0 ' +
    'and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')';

  assegna_testo_query_codice;

  inherited;

  v_tdo_codice_approntamento.text := tdo_codice_evasione;
  tdo_codice_approntamento_controllo(false);
  assegna_v_numerazione;

  // ordinamento := 'ovt.data_documento,ovt.numero_documento,ovr.sequenza';
  ordinamento := 'data_documento';
  no_inserimento_record := true;
  if approntato_da_sscc = 'si' then
  begin
    colore_control(pannello_campi, false);
    pannello_campi.enabled := false;
  end;
  v_quantita.decimalplaces := decimali_max_quantita;
  v_quantita.displayformat := formato_display_quantita_zero;

  v_tum_quantita_approntata_base.displayformat := formato_display_quantita_zero;

  v_esistenza.displayformat := formato_display_quantita_zero;
  v_approntato.displayformat := formato_display_quantita_zero;
end;

procedure tA31ASSAPPCL.v_crea_documentoclick(sender: tobject);
begin
  creazione_documento('cliente');
end;

procedure tA31ASSAPPCL.creazione_documento(tipo: string);
var
  numero_documento_evasione, numero_documento_evasione_precedente: integer;
  riga, i: word;
  data_documento, data_documento_evasione, data_documento_evasione_precedente: tdatetime;
  cli_codice, descrizione1, descrizione2, tva_codice, tiv_codice, listino_con_iva, tpa_codice,
    tsm_codice, tba_codice, via, cap, citta, provincia, tna_codice, tag_codice, tsm_codice_sconto,
    addebito_spese_fattura, codice_cup, codice_cig, indirizzo: string;
  testata_tablename: string;
  testata_nuova, salta_cliente, aggiungi: boolean;
  test_cli_codice: string;
  test_progressivo: integer;

  prezzo: double;
  tsm_codice_righe, tsm_codice_art: string;

  mantieni_tma_codice, vuoto: boolean;

  pr: timpalf;
begin
  inherited;

  data_documento := date;
  try
    pr := timpalf.create(nil);
    pr.v_form_caption := 'Assegnazione data documento';
    pr.v_descrizione_caption := 'data documento';
    pr.v_width_campo := 10;
    pr.valore_passato := data_documento;
    pr.tipo_campo := 'data';
    pr.decimali := 0;
    pr.input_visarc := false;
    pr.help := '[data documento]';
    pr.showmodal;
    if not pr.premuto_escape then
    begin
      data_documento := pr.valore_passato;
    end;
  finally
    freeandnil(pr);
  end;

  if (esercizio_chiuso = 'si') or (esercizio_chiuso_magazzino = 'si') then
  begin
    messaggio(000, 'l''esercizio è stato dichiarato chiuso (contabilità o magazzino)' + slinebreak +
      'il documento non verrà generato');
  end
  else if (data_documento < data_inizio) or (data_documento > data_fine) then
  begin
    messaggio(000, 'la data non è compresa nell''esercizio fiscale' + slinebreak +
      'il documento non verrà generato');
  end
  else
  begin
    data_documento_evasione := 0;
    numero_documento_evasione := 0;
    riga := 0;

    test_cli_codice := '';
    test_progressivo := 0;
    tva_codice := '';
    tiv_codice := '';
    listino_con_iva := '';
    indirizzo := '';
    tpa_codice := '';
    cli_codice := '';
    descrizione1 := '';
    descrizione2 := '';
    via := '';
    cap := '';
    citta := '';
    provincia := '';
    tna_codice := '';
    tag_codice := '';
    tba_codice := '';
    tsm_codice_sconto := '';
    addebito_spese_fattura := '';
    codice_cup := '';
    codice_cig := '';

    approntato.close;
    approntato.sql.clear;

    approntato.sql.add('select ovr.progressivo, ovr.riga');
    approntato.sql.add('from ovr');
    approntato.sql.add('inner join ovt on ovt.progressivo = ovr.progressivo');
    approntato.sql.add('inner join cli on cli.codice = ovt.cli_codice');
    approntato.sql.add('inner join art on art.codice = ovr.art_codice');
    approntato.sql.add('left join ind on ind.cli_codice = ovt.cli_codice and ind.indirizzo = ovt.indirizzo');
    if tipo = 'cliente' then
    begin
      approntato.sql.add('where ovt.cli_codice = ' + quotedstr(v_cli_codice.text));
      if v_ind_codice.text <> '' then
      begin
        approntato.sql.add('and ovt.indirizzo = ' + quotedstr(v_ind_codice.text));
      end;
    end
    else
    begin
      approntato.sql.add('where (cli.tps_codice = ' + quotedstr(tps_codice) + ' or ind.tps_codice = ' + quotedstr(tps_codice) + ')');
    end;
    approntato.sql.add('and ((ovr.data_consegna between :da_data_consegna and :a_data_consegna) or ovr.data_consegna is null)');
    approntato.sql.add('and ovr.quantita <> 0 and ovr.quantita_approntata <> 0');
    approntato.sql.add('and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')');
    approntato.sql.add('and ovr.evadere_approntato <> ''no''');

    if v_tdo_codice_ordine.text <> '' then
    begin
      approntato.sql.add('and ovt.tdo_codice = ' + quotedstr(v_tdo_codice_ordine.text));
    end;

    if v_numero_ordine.value <> 0 then
    begin
      approntato.sql.add('and ovt.numero_documento = ' + v_numero_ordine.text);
    end;

    approntato.sql.add('order by ovt.cli_codice, ovt.descrizione1, ovt.descrizione2, ovt.via, ovt.cap, ovt.citta, ovt.provincia, ovt.tna_codice,');
    approntato.sql.add('ovt.tva_codice, ovt.tiv_codice, ovt.listino_con_iva, ovt.tpa_codice, ovt.tsm_codice,');
    approntato.sql.add('ovt.tag_codice, ovt.tsm_codice_sconto, ovt.addebito_spese_fattura,');
    if (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') then
    begin
      approntato.sql.add('ovr.tiv_codice,');
    end;
    approntato.sql.add('ovr.progressivo, ovr.sequenza, ovr.riga');
    approntato.parambyname('da_data_consegna').asdate := v_da_data_consegna.date;
    approntato.parambyname('a_data_consegna').asdate := v_a_data_consegna.date;
    approntato.open;

    if approntato.eof then
    begin
      messaggio(200, 'non ci sono righe approntate da evadere');
    end
    else
    begin
      apri_transazione;
      try
        try
          iva_diversa.close;
          if tipo_documento_evasione = 'bolla' then
          begin
            testata.sql.text := 'select * from bvt where progressivo = :progressivo';
            righe.sql.text := 'select * from bvr where progressivo = :progressivo and riga = :riga';
            iva_diversa.sql.text := 'select bvr.id from bvr inner join tiv on tiv.codice = bvr.tiv_codice ' +
              'where (progressivo = :progressivo and bvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
              'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';
          end
          else if tipo_documento_evasione = 'corrispettivo' then
          begin
            testata.sql.text := 'select * from cvt where progressivo = :progressivo';
            righe.sql.text := 'select * from cvr where progressivo = :progressivo and riga = :riga';
            iva_diversa.sql.text := 'select cvr.id from cvr inner join tiv on tiv.codice = cvr.tiv_codice ' +
              'where (progressivo = :progressivo and cvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
              'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';
          end
          else if tipo_documento_evasione = 'ddt' then
          begin
            testata.sql.text := 'select * from dvt where progressivo = :progressivo';
            righe.sql.text := 'select * from dvr where progressivo = :progressivo and riga = :riga';
            iva_diversa.sql.text := 'select dvr.id from dvr inner join tiv on tiv.codice = dvr.tiv_codice ' +
              'where (progressivo = :progressivo and dvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
              'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';
          end
          else // fatture
          begin
            testata.sql.text := 'select * from fvt where progressivo = :progressivo';
            righe.sql.text := 'select * from fvr where progressivo = :progressivo and riga = :riga';
            iva_diversa.sql.text := 'select fvr.id from fvr inner join tiv on tiv.codice = fvr.tiv_codice ' +
              'where (progressivo = :progressivo and fvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
              'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';
          end;

          aggiorna_totale := false;
          while not approntato.eof do
          begin
            tabella_ovr.close;
            tabella_ovr.parambyname('progressivo').asinteger := approntato.fieldbyname('progressivo').asinteger;
            tabella_ovr.open;

            if test_progressivo <> approntato.fieldbyname('progressivo').asinteger then
            begin
              if (tabella_ovr.fieldbyname('spese_manuali_trasporto').asstring = 'si') and
                (tabella_ovr.fieldbyname('importo_spese_trasporto').asfloat <> 0) then
              begin
                messaggio(200, 'l''ordine n. ' + tabella_ovr.fieldbyname('numero_documento').asstring + ' del ' +
                  tabella_ovr.fieldbyname('data_documento').asstring + ' prevede l''addebito delle spese di trasporto manuali' + #13 + #13 +
                  'se vengono evasi più ordini con lo stesso documento le spese manuali totali andranno aggiornate manualmente');
              end;

              if (tabella_ovr.fieldbyname('spese_manuali_bollo').asstring = 'si') and
                (tabella_ovr.fieldbyname('importo_bollo').asfloat <> 0) then
              begin
                messaggio(200, 'l''ordine n. ' + tabella_ovr.fieldbyname('numero_documento').asstring + ' del ' +
                  tabella_ovr.fieldbyname('data_documento').asstring + ' prevede l''addebito delle spese bollo manuali' + #13 + #13 +
                  'se vengono evasi più ordini con lo stesso documento le spese manuali totali andranno aggiornate manualmente');
              end;

              if (tabella_ovr.fieldbyname('spese_manuali_incasso').asstring = 'si') and
                (tabella_ovr.fieldbyname('importo_spese_incasso').asfloat <> 0) then
              begin
                messaggio(200, 'l''ordine n. ' + tabella_ovr.fieldbyname('numero_documento').asstring + ' del ' +
                  tabella_ovr.fieldbyname('data_documento').asstring + ' prevede l''addebito delle spese di incasso manuali' + #13 + #13 +
                  'se vengono evasi più ordini con lo stesso documento le spese manuali totali andranno aggiornate manualmente');
              end;

              test_progressivo := approntato.fieldbyname('progressivo').asinteger;
            end;

            if test_cli_codice <> tabella_ovr.fieldbyname('cli_codice').asstring then
            begin
              cli.close;
              cli.params[0].asstring := tabella_ovr.fieldbyname('cli_codice').asstring;
              cli.open;

              // controllo fido
              salta_cliente := false;
              if read_tabella(arc.arcdit, 'tse', 'codice', cli.fieldbyname('tse_codice').asstring) then
              begin
                if archivio.fieldbyname('blocco').asstring = 'si' then
                begin
                  messaggio(000, 'il cliente [' + cli.fieldbyname('codice').asstring + '] è bloccato e non si possono inserire documenti di vendita' + #13 + #13 +
                    archivio.fieldbyname('descrizione').asstring);
                  salta_cliente := true;
                end
                else
                begin
                  if messaggio(304, 'il cliente [' + cli.fieldbyname('codice').asstring + '] ha memorizzato il seguente avviso' + #13 + #13 +
                    archivio.fieldbyname('descrizione').asstring + #13 + #13 +
                    'si vuole proseguire l''inserimento del documento?') <> 1 then
                  begin
                    salta_cliente := true;
                  end;
                end;
              end;
              if fuori_fido(false) then
              begin
                salta_cliente := true;
              end;
            end;

            if not salta_cliente then
            begin
              testata_nuova := false;

              tabella_righe.close;
              tabella_righe.parambyname('progressivo').asinteger := approntato.fieldbyname('progressivo').asinteger;
              tabella_righe.parambyname('riga').asinteger := approntato.fieldbyname('riga').asinteger;
              tabella_righe.open;

              if (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') and
                (tabella_righe.fieldbyname('tiv_codice').asstring <> '') then
              begin
                read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'controllo_su_documenti');
                iva_diversa.close;
                iva_diversa.parambyname('progressivo').asinteger := testata.parambyname('progressivo').asinteger;
                iva_diversa.parambyname('tiv_codice').asstring := tabella_righe.fieldbyname('tiv_codice').asstring;
                iva_diversa.parambyname('controllo_su_documenti').asstring := archivio.fieldbyname('controllo_su_documenti').asstring;
                iva_diversa.open;
              end;

              if test_cli_codice <> tabella_ovr.fieldbyname('cli_codice').asstring then
              begin
                testata_nuova := true;
              end;
              if (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'fattura immediata') or
                (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria') or
                (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'corrispettivi') then
              begin
                if (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') then
                begin
                  if (tva_codice <> tabella_ovr.fieldbyname('tva_codice').asstring) or
                    (tiv_codice <> tabella_ovr.fieldbyname('tiv_codice').asstring) or
                    (listino_con_iva <> tabella_ovr.fieldbyname('listino_con_iva').asstring) or
                    (indirizzo <> tabella_ovr.fieldbyname('indirizzo').asstring) or
                    (tpa_codice <> tabella_ovr.fieldbyname('tpa_codice').asstring) or
                    (tsm_codice <> tabella_ovr.fieldbyname('tsm_codice').asstring) or
                    (cli_codice <> tabella_ovr.fieldbyname('cli_codice').asstring) or
                    (tag_codice <> tabella_ovr.fieldbyname('tag_codice').asstring) or
                    (tba_codice <> tabella_ovr.fieldbyname('tba_codice').asstring) or
                    (tsm_codice_sconto <> tabella_ovr.fieldbyname('tsm_codice_sconto').asstring) or
                    (addebito_spese_fattura <> tabella_ovr.fieldbyname('addebito_spese_fattura').asstring) or
                    (codice_cup <> tabella_ovr.fieldbyname('codice_cup').asstring) or
                    (codice_cig <> tabella_ovr.fieldbyname('codice_cig').asstring) or
                    not iva_diversa.isempty then
                  begin
                    testata_nuova := true;
                  end;
                end
                else
                begin
                  if (tva_codice <> tabella_ovr.fieldbyname('tva_codice').asstring) or
                    (listino_con_iva <> tabella_ovr.fieldbyname('listino_con_iva').asstring) or
                    (indirizzo <> tabella_ovr.fieldbyname('indirizzo').asstring) or
                    (tpa_codice <> tabella_ovr.fieldbyname('tpa_codice').asstring) or
                    (tsm_codice <> tabella_ovr.fieldbyname('tsm_codice').asstring) or
                    (cli_codice <> tabella_ovr.fieldbyname('cli_codice').asstring) or
                    (tag_codice <> tabella_ovr.fieldbyname('tag_codice').asstring) or
                    (tba_codice <> tabella_ovr.fieldbyname('tba_codice').asstring) or
                    (tsm_codice_sconto <> tabella_ovr.fieldbyname('tsm_codice_sconto').asstring) or
                    (addebito_spese_fattura <> tabella_ovr.fieldbyname('addebito_spese_fattura').asstring) or
                    (codice_cup <> tabella_ovr.fieldbyname('codice_cup').asstring) or
                    (codice_cig <> tabella_ovr.fieldbyname('codice_cig').asstring) or
                    not iva_diversa.isempty then
                  begin
                    testata_nuova := true;
                  end;
                end;
              end
              else
              begin
                if (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') then
                begin
                  if (tva_codice <> tabella_ovr.fieldbyname('tva_codice').asstring) or
                    (tiv_codice <> tabella_ovr.fieldbyname('tiv_codice').asstring) or
                    (listino_con_iva <> tabella_ovr.fieldbyname('listino_con_iva').asstring) or
                    (indirizzo <> tabella_ovr.fieldbyname('indirizzo').asstring) or
                    (tpa_codice <> tabella_ovr.fieldbyname('tpa_codice').asstring) or
                    (tsm_codice <> tabella_ovr.fieldbyname('tsm_codice').asstring) or
                    (cli_codice <> tabella_ovr.fieldbyname('cli_codice').asstring) or
                    (descrizione1 <> tabella_ovr.fieldbyname('descrizione1').asstring) or
                    (descrizione2 <> tabella_ovr.fieldbyname('descrizione2').asstring) or
                    (via <> tabella_ovr.fieldbyname('via').asstring) or
                    (cap <> tabella_ovr.fieldbyname('cap').asstring) or
                    (citta <> tabella_ovr.fieldbyname('citta').asstring) or
                    (provincia <> tabella_ovr.fieldbyname('provincia').asstring) or
                    (tna_codice <> tabella_ovr.fieldbyname('tna_codice').asstring) or
                    (tag_codice <> tabella_ovr.fieldbyname('tag_codice').asstring) or
                    (tba_codice <> tabella_ovr.fieldbyname('tba_codice').asstring) or
                    (tsm_codice_sconto <> tabella_ovr.fieldbyname('tsm_codice_sconto').asstring) or
                    (addebito_spese_fattura <> tabella_ovr.fieldbyname('addebito_spese_fattura').asstring) or
                    (codice_cup <> tabella_ovr.fieldbyname('codice_cup').asstring) or
                    (codice_cig <> tabella_ovr.fieldbyname('codice_cig').asstring) or
                    not iva_diversa.isempty then
                  begin
                    testata_nuova := true;
                  end;
                end
                else
                begin
                  if (tva_codice <> tabella_ovr.fieldbyname('tva_codice').asstring) or
                    (listino_con_iva <> tabella_ovr.fieldbyname('listino_con_iva').asstring) or
                    (indirizzo <> tabella_ovr.fieldbyname('indirizzo').asstring) or
                    (tpa_codice <> tabella_ovr.fieldbyname('tpa_codice').asstring) or
                    (tsm_codice <> tabella_ovr.fieldbyname('tsm_codice').asstring) or
                    (cli_codice <> tabella_ovr.fieldbyname('cli_codice').asstring) or
                    (descrizione1 <> tabella_ovr.fieldbyname('descrizione1').asstring) or
                    (descrizione2 <> tabella_ovr.fieldbyname('descrizione2').asstring) or
                    (via <> tabella_ovr.fieldbyname('via').asstring) or
                    (cap <> tabella_ovr.fieldbyname('cap').asstring) or
                    (citta <> tabella_ovr.fieldbyname('citta').asstring) or
                    (provincia <> tabella_ovr.fieldbyname('provincia').asstring) or
                    (tna_codice <> tabella_ovr.fieldbyname('tna_codice').asstring) or
                    (tag_codice <> tabella_ovr.fieldbyname('tag_codice').asstring) or
                    (tba_codice <> tabella_ovr.fieldbyname('tba_codice').asstring) or
                    (tsm_codice_sconto <> tabella_ovr.fieldbyname('tsm_codice_sconto').asstring) or
                    (addebito_spese_fattura <> tabella_ovr.fieldbyname('addebito_spese_fattura').asstring) or
                    (codice_cup <> tabella_ovr.fieldbyname('codice_cup').asstring) or
                    (codice_cig <> tabella_ovr.fieldbyname('codice_cig').asstring) or
                    not iva_diversa.isempty then
                  begin
                    testata_nuova := true;
                  end;
                end;
              end;

              if testata_nuova then
              begin
                //aggiorna_totali(tipo);

                //  cerca documento in situazione "inserito" a cui accodare le righe
                testata_esistente.sql.clear;
                if tipo_documento_evasione = 'bolla' then
                begin
                  testata_esistente.sql.add('select bvt.progressivo, (select max(riga) from bvr where progressivo = bvt.progressivo) riga from bvt');
                end
                else if tipo_documento_evasione = 'corrispettivo' then
                begin
                  testata_esistente.sql.add('select cvt.progressivo, (select max(riga) from cvr where progressivo = cvt.progressivo) riga from cvt');
                end
                else if tipo_documento_evasione = 'ddt' then
                begin
                  testata_esistente.sql.add('select dvt.progressivo, (select max(riga) from dvr where progressivo = dvt.progressivo) riga from dvt');
                end
                else // fatture
                begin
                  testata_esistente.sql.add('select fvt.progressivo, (select max(riga) from fvr where progressivo = fvt.progressivo) riga from fvt');
                end;

                testata_esistente.sql.add('where cli_codice = ' + quotedstr(tabella_ovr.fieldbyname('cli_codice').asstring));
                testata_esistente.sql.add('and situazione = ''inserito''');
                testata_esistente.sql.add('and data_documento = :data_documento');
                testata_esistente.sql.add('and tdo_codice = ' + quotedstr(v_tdo_codice_approntamento.text));

                if (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'fattura immediata') or
                  (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria') or
                  (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'corrispettivi') then
                begin
                  if (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') then
                  begin
                    testata_esistente.sql.add('and codice_cup = ' + quotedstr(tabella_ovr.fieldbyname('codice_cup').asstring));
                    testata_esistente.sql.add('and codice_cig = ' + quotedstr(tabella_ovr.fieldbyname('codice_cig').asstring));
                    testata_esistente.sql.add('and tva_codice = ' + quotedstr(tabella_ovr.fieldbyname('tva_codice').asstring));
                    testata_esistente.sql.add('and tiv_codice = ' + quotedstr(tabella_ovr.fieldbyname('tiv_codice').asstring));
                    testata_esistente.sql.add('and listino_con_iva = ' + quotedstr(tabella_ovr.fieldbyname('listino_con_iva').asstring));
                    testata_esistente.sql.add('and indirizzo = ' + quotedstr(tabella_ovr.fieldbyname('indirizzo').asstring));
                    testata_esistente.sql.add('and tpa_codice = ' + quotedstr(tabella_ovr.fieldbyname('tpa_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice').asstring));
                    testata_esistente.sql.add('and tag_codice = ' + quotedstr(tabella_ovr.fieldbyname('tag_codice').asstring));
                    testata_esistente.sql.add('and tba_codice = ' + quotedstr(tabella_ovr.fieldbyname('tba_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice_sconto = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice_sconto').asstring));
                    testata_esistente.sql.add('and addebito_spese_fattura = ' + quotedstr(tabella_ovr.fieldbyname('addebito_spese_fattura').asstring));
                  end
                  else
                  begin
                    testata_esistente.sql.add('and codice_cup = ' + quotedstr(tabella_ovr.fieldbyname('codice_cup').asstring));
                    testata_esistente.sql.add('and codice_cig = ' + quotedstr(tabella_ovr.fieldbyname('codice_cig').asstring));
                    testata_esistente.sql.add('and tva_codice = ' + quotedstr(tabella_ovr.fieldbyname('tva_codice').asstring));
                    testata_esistente.sql.add('and listino_con_iva = ' + quotedstr(tabella_ovr.fieldbyname('listino_con_iva').asstring));
                    testata_esistente.sql.add('and indirizzo = ' + quotedstr(tabella_ovr.fieldbyname('indirizzo').asstring));
                    testata_esistente.sql.add('and tpa_codice = ' + quotedstr(tabella_ovr.fieldbyname('tpa_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice').asstring));
                    testata_esistente.sql.add('and tag_codice = ' + quotedstr(tabella_ovr.fieldbyname('tag_codice').asstring));
                    testata_esistente.sql.add('and tba_codice = ' + quotedstr(tabella_ovr.fieldbyname('tba_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice_sconto = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice_sconto').asstring));
                    testata_esistente.sql.add('and addebito_spese_fattura = ' + quotedstr(tabella_ovr.fieldbyname('addebito_spese_fattura').asstring));
                  end;
                end
                else
                begin
                  if (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') then
                  begin
                    testata_esistente.sql.add('and codice_cup = ' + quotedstr(tabella_ovr.fieldbyname('codice_cup').asstring));
                    testata_esistente.sql.add('and codice_cig = ' + quotedstr(tabella_ovr.fieldbyname('codice_cig').asstring));
                    testata_esistente.sql.add('and tva_codice = ' + quotedstr(tabella_ovr.fieldbyname('tva_codice').asstring));
                    testata_esistente.sql.add('and tiv_codice = ' + quotedstr(tabella_ovr.fieldbyname('tiv_codice').asstring));
                    testata_esistente.sql.add('and listino_con_iva = ' + quotedstr(tabella_ovr.fieldbyname('listino_con_iva').asstring));
                    testata_esistente.sql.add('and indirizzo = ' + quotedstr(tabella_ovr.fieldbyname('indirizzo').asstring));
                    testata_esistente.sql.add('and tpa_codice = ' + quotedstr(tabella_ovr.fieldbyname('tpa_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice').asstring));
                    testata_esistente.sql.add('and tag_codice = ' + quotedstr(tabella_ovr.fieldbyname('tag_codice').asstring));
                    testata_esistente.sql.add('and tba_codice = ' + quotedstr(tabella_ovr.fieldbyname('tba_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice_sconto = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice_sconto').asstring));
                    testata_esistente.sql.add('and addebito_spese_fattura = ' + quotedstr(tabella_ovr.fieldbyname('addebito_spese_fattura').asstring));
                    testata_esistente.sql.add('and descrizione1 = ' + quotedstr(tabella_ovr.fieldbyname('descrizione1').asstring));
                    testata_esistente.sql.add('and descrizione2 = ' + quotedstr(tabella_ovr.fieldbyname('descrizione2').asstring));
                    testata_esistente.sql.add('and via = ' + quotedstr(tabella_ovr.fieldbyname('via').asstring));
                    testata_esistente.sql.add('and cap = ' + quotedstr(tabella_ovr.fieldbyname('cap').asstring));
                    testata_esistente.sql.add('and citta = ' + quotedstr(tabella_ovr.fieldbyname('citta').asstring));
                    testata_esistente.sql.add('and provincia = ' + quotedstr(tabella_ovr.fieldbyname('provincia').asstring));
                    testata_esistente.sql.add('and tna_codice = ' + quotedstr(tabella_ovr.fieldbyname('tna_codice').asstring));
                  end
                  else
                  begin
                    testata_esistente.sql.add('and codice_cup = ' + quotedstr(tabella_ovr.fieldbyname('codice_cup').asstring));
                    testata_esistente.sql.add('and codice_cig = ' + quotedstr(tabella_ovr.fieldbyname('codice_cig').asstring));
                    testata_esistente.sql.add('and tva_codice = ' + quotedstr(tabella_ovr.fieldbyname('tva_codice').asstring));
                    testata_esistente.sql.add('and listino_con_iva = ' + quotedstr(tabella_ovr.fieldbyname('listino_con_iva').asstring));
                    testata_esistente.sql.add('and indirizzo = ' + quotedstr(tabella_ovr.fieldbyname('indirizzo').asstring));
                    testata_esistente.sql.add('and tpa_codice = ' + quotedstr(tabella_ovr.fieldbyname('tpa_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice').asstring));
                    testata_esistente.sql.add('and tag_codice = ' + quotedstr(tabella_ovr.fieldbyname('tag_codice').asstring));
                    testata_esistente.sql.add('and tba_codice = ' + quotedstr(tabella_ovr.fieldbyname('tba_codice').asstring));
                    testata_esistente.sql.add('and tsm_codice_sconto = ' + quotedstr(tabella_ovr.fieldbyname('tsm_codice_sconto').asstring));
                    testata_esistente.sql.add('and addebito_spese_fattura = ' + quotedstr(tabella_ovr.fieldbyname('addebito_spese_fattura').asstring));
                    testata_esistente.sql.add('and descrizione1 = ' + quotedstr(tabella_ovr.fieldbyname('descrizione1').asstring));
                    testata_esistente.sql.add('and descrizione2 = ' + quotedstr(tabella_ovr.fieldbyname('descrizione2').asstring));
                    testata_esistente.sql.add('and via = ' + quotedstr(tabella_ovr.fieldbyname('via').asstring));
                    testata_esistente.sql.add('and cap = ' + quotedstr(tabella_ovr.fieldbyname('cap').asstring));
                    testata_esistente.sql.add('and citta = ' + quotedstr(tabella_ovr.fieldbyname('citta').asstring));
                    testata_esistente.sql.add('and provincia = ' + quotedstr(tabella_ovr.fieldbyname('provincia').asstring));
                    testata_esistente.sql.add('and tna_codice = ' + quotedstr(tabella_ovr.fieldbyname('tna_codice').asstring));
                  end;
                end;
                testata_esistente.sql.add('limit 1');

                aggiorna_totali(tipo);

                aggiungi := false;
                if read_tabella(testata_esistente, variant(data_documento)) then
                begin
                  if messaggio(300, 'aggiungi righe sul documento già esistente con progressivo [' + testata_esistente.fieldbyname('progressivo').asstring + ']') = 1 then
                  begin
                    aggiungi := true;
                  end;
                end;
                if aggiungi then
                begin
                  read_tabella(testata, testata_esistente.fieldbyname('progressivo').asinteger);
                  progressivo_evasione := testata.fieldbyname('progressivo').asinteger;
                  riga := testata_esistente.fieldbyname('riga').asinteger;

                  if tipo_documento_evasione = 'bolla' then
                  begin
                    documento := 'GESBOLV';
                  end
                  else if tipo_documento_evasione = 'corrispettivo' then
                  begin
                    documento := 'GESCORV';
                  end
                  else if tipo_documento_evasione = 'ddt' then
                  begin
                    documento := 'GESDDTV';
                  end
                  else if tipo_documento_evasione = 'fattura immediata' then
                  begin
                    documento := 'GESFAIV';
                  end
                  else if tipo_documento_evasione = 'fattura accompagnatoria' then
                  begin
                    documento := 'GESFAAV';
                  end;

                  testata.edit;
                end
                else
                begin
                  testata.close;
                  testata.parambyname('progressivo').asinteger := 0;
                  testata.open;
                  testata.append;

                  for i := 0 to testata.fields.count - 1 do
                  begin
                    if (lowercase(testata.fields[i].fieldname) <> 'id') and (lowercase(testata.fields[i].fieldname) <> 'sequenza') then
                    begin
                      testata.fields[i].value := tabella_ovr.fieldbyname(testata.fields[i].fieldname).value;
                    end;
                  end;
                  if read_tabella(arc.arcdit, 'tpo', 'codice', testata.fieldbyname('tpo_codice').asstring) then
                  begin
                    testata.fieldbyname('addebito_spese_trasporto').asstring := archivio.fieldbyname('addebito').asstring;
                  end;

                  //  dati da cliente
                  testata.fieldbyname('tpa_codice').asstring := cli.fieldbyname('tpa_codice').asstring;
                  testata.fieldbyname('tag_codice').asstring := cli.fieldbyname('tag_codice').asstring;
                  testata.fieldbyname('tsp_codice').asstring := cli.fieldbyname('tsp_codice').asstring;
                  testata.fieldbyname('tst_codice').asstring := cli.fieldbyname('tst_codice').asstring;
                  testata.fieldbyname('tpo_codice').asstring := cli.fieldbyname('tpo_codice').asstring;
                  ////////////////////

                  testata.fieldbyname('numero_documento').asinteger := 0;

                  testata.fieldbyname('numero_colli').asinteger := 0;
                  testata.fieldbyname('numero_confezioni').asinteger := 0;
                  testata.fieldbyname('volume').asfloat := 0;
                  testata.fieldbyname('peso_lordo').asfloat := 0;
                  testata.fieldbyname('peso_netto').asfloat := 0;

                  testata.fieldbyname('tdo_codice').asstring := tdo_codice_evasione;
                  testata.fieldbyname('tmo_codice').asstring := tabella_controllo_tdo_approntamento.fieldbyname('tmo_codice').asstring;
                  testata.fieldbyname('data_documento').asdatetime := data_documento;
                  testata.fieldbyname('serie_documento').asstring := tabella_controllo_tdo_approntamento.fieldbyname('numerazione').asstring;
                  testata.fieldbyname('tcd_codice_apertura').asstring := tabella_controllo_tdo_approntamento.fieldbyname('tcd_codice_inizio').asstring;
                  testata.fieldbyname('tcd_codice_chiusura').asstring := tabella_controllo_tdo_approntamento.fieldbyname('tcd_codice_fine').asstring;
                  testata.fieldbyname('tdo_codice_differite').asstring := tabella_controllo_tdo_approntamento.fieldbyname('tdo_codice_differite').asstring;
                  testata.fieldbyname('tab_codice').asstring := tabella_controllo_tdo_approntamento.fieldbyname('tab_codice').asstring;

                  if (tabella_ovr.fieldbyname('tab_codice').asstring <> '') or
                    (tabella_ovr.fieldbyname('numero_colli').asinteger <> 0) or (testata.fieldbyname('numero_confezioni').asinteger <> 0) or
                    (tabella_ovr.fieldbyname('volume').asfloat <> 0) or (testata.fieldbyname('peso_lordo').asfloat <> 0) or
                    (tabella_ovr.fieldbyname('peso_netto').asfloat <> 0) then
                  begin
                    if messaggio(300, 'conferma i seguenti dati di spedizione' + #13 + #13 +
                      'aspetto dei beni: ' + tabella_ovr.fieldbyname('tab_codice').asstring + #13 +
                      'numero colli: ' + tabella_ovr.fieldbyname('numero_colli').asstring + #13 +
                      'numero confezioni: ' + tabella_ovr.fieldbyname('numero_confezioni').asstring + #13 +
                      'volume: ' + tabella_ovr.fieldbyname('volume').asstring + #13 +
                      'peso lordo: ' + tabella_ovr.fieldbyname('peso_lordo').asstring + #13 +
                      'peso netto: ' + tabella_ovr.fieldbyname('peso_netto').asstring) = 1 then
                    begin
                      testata.fieldbyname('tab_codice').asstring := tabella_ovr.fieldbyname('tab_codice').asstring;
                      testata.fieldbyname('numero_colli').asinteger := tabella_ovr.fieldbyname('numero_colli').asinteger;
                      testata.fieldbyname('numero_confezioni').asinteger := tabella_ovr.fieldbyname('numero_confezioni').asinteger;
                      testata.fieldbyname('volume').asfloat := tabella_ovr.fieldbyname('volume').asfloat;
                      testata.fieldbyname('peso_lordo').asfloat := tabella_ovr.fieldbyname('peso_lordo').asfloat;
                      testata.fieldbyname('peso_netto').asfloat := tabella_ovr.fieldbyname('peso_netto').asfloat;
                    end;
                  end;

                  if testata.fieldbyname('tdo_codice_differite').asstring <> '' then
                  begin
                    read_tabella(arc.arcdit, 'tdo', 'codice', testata.fieldbyname('tdo_codice_differite').asstring, 'tco_codice');
                    testata.fieldbyname('tco_codice').asstring := archivio.fieldbyname('tco_codice').asstring;
                  end
                  else
                  begin
                    testata.fieldbyname('tco_codice').asstring := tabella_controllo_tdo_approntamento.fieldbyname('tco_codice').asstring;
                  end;
                  if tipo_documento_evasione = 'bolla' then
                  begin
                    testata.fieldbyname('ese_codice').asstring := esercizio;
                    tipo_numerazione_evasione := 'BOLLE CLIENTI';
                    documento := 'GESBOLV';
                    documento_stampa := 'STABOLV';
                    testata_tablename := 'bvt';
                  end
                  else if tipo_documento_evasione = 'corrispettivo' then
                  begin
                    testata.fieldbyname('ese_codice').asstring := esercizio;
                    tipo_numerazione_evasione := 'CORRISPETTIVI CLIENTI';
                    documento := 'GESCORV';
                    documento_stampa := 'STACORV';
                    testata_tablename := 'cvt';
                  end
                  else if tipo_documento_evasione = 'ddt' then
                  begin
                    testata.fieldbyname('ese_codice').asstring := esercizio;
                    tipo_numerazione_evasione := 'DDT CLIENTI';
                    documento := 'GESDDTV';
                    documento_stampa := 'STADDTV';
                    testata_tablename := 'dvt';
                  end
                  else if tipo_documento_evasione = 'fattura immediata' then
                  begin
                    testata.fieldbyname('ese_codice').asstring := esercizio;
                    tipo_numerazione_evasione := 'FATTURE DI VENDITA';
                    documento := 'GESFAIV';
                    documento_stampa := 'STAFAIV';
                    testata.fieldbyname('tab_codice').asstring := '';
                    testata_tablename := 'fvt';
                  end
                  else if tipo_documento_evasione = 'fattura accompagnatoria' then
                  begin
                    testata.fieldbyname('ese_codice').asstring := esercizio;
                    tipo_numerazione_evasione := 'FATTURE DI VENDITA';
                    documento := 'GESFAAV';
                    documento_stampa := 'STAFAAV';
                    testata_tablename := 'fvt';
                  end;
                  testata.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(testata.connection), testata_tablename + '_PROGRESSIVO');
                  testata.parambyname('progressivo').asinteger := testata.fieldbyname('progressivo').asinteger;
                  progressivo_evasione := testata.fieldbyname('progressivo').asinteger;
                  data_documento_evasione := data_documento;
                  if v_numerazione.checked then
                  begin
                    progressivo_cnt := 0;
                    esiste_numerazione_cnt := true;
                    while esiste_numerazione_cnt do
                    begin
                      arc.assegna_numerazione(arc.arcdit, tipo_numerazione_evasione,
                        testata.fieldbyname('serie_documento').asstring, data_documento_evasione, progressivo_cnt);
                      testata.fieldbyname('numero_documento').asfloat := progressivo_cnt;
                      if arc.esistenza_documento(testata_tablename, testata.fieldbyname('serie_documento').asstring, '',
                        testata.fieldbyname('data_documento').asdatetime, testata.fieldbyname('numero_documento').asfloat,
                        testata.fieldbyname('progressivo').asinteger, testata.fieldbyname('revisione').asinteger) then
                      begin
                        progressivo_cnt := 0;
                      end
                      else
                      begin
                        esiste_numerazione_cnt := false;
                      end;
                    end;
                  end;

                  testata.fieldbyname('cambio').asfloat :=
                    cambio(testata.fieldbyname('tva_codice').asstring, testata.fieldbyname('data_documento').asdatetime);

                  dicint.assegna_tiv_codice(0, testata);

                  testata.fieldbyname('accettato').asstring := 'no';
                  testata.fieldbyname('situazione').asstring := 'inserito';
                  testata.fieldbyname('tipo_documento').asstring := tipo_documento_evasione;
                  testata.fieldbyname('stampato').asstring := '';
                  testata.fieldbyname('utn_codice_accettazione').asstring := '';
                  testata.fieldbyname('data_accettazione').asstring := '';
                  testata.fieldbyname('importo_totale').asfloat := 0;
                  testata.fieldbyname('importo_totale_euro').asfloat := 0;
                  testata.fieldbyname('importo_totale_iva').asfloat := 0;
                  testata.fieldbyname('importo_totale_imponibile').asfloat := 0;
                  testata.fieldbyname('importo_totale_imponibile_euro').asfloat := 0;
                  testata.fieldbyname('importo_evaso').asfloat := 0;
                  testata.fieldbyname('righe').asinteger := 0;
                  testata.fieldbyname('righe_evase').asinteger := 0;

                  spesco.p_tabella := testata;
                  spesco.assegna;
                  testata := spesco.p_tabella;

                  riga := 0;

                  (*
                    if testata.fieldbyname('tiv_codice').asstring <> '' then
                    begin
                    if (testata.fieldbyname('tiv_codice').asstring = cli.fieldbyname('tiv_codice').asstring) and
                    (testata.fieldbyname('data_documento').asdatetime > cli.fieldbyname('data_esenzione_iva').asdatetime) then
                    begin
                    testata.fieldbyname('tiv_codice').asstring := '';
                    end;
                    end;
                  *)
                end;

                if testata.fieldbyname('tipo_documento').asstring <> 'fattura immediata' then
                begin
                  if read_tabella(ind, vararrayof([testata.fieldbyname('cli_codice').asstring, testata.fieldbyname('indirizzo').asstring])) then
                  begin
                    if tabella_edit(testata) then
                    begin
                      testata.fieldbyname('consegna_lunedi').asstring := ind.fieldbyname('consegna_lunedi').asstring;
                      testata.fieldbyname('consegna_martedi').asstring := ind.fieldbyname('consegna_martedi').asstring;
                      testata.fieldbyname('consegna_mercoledi').asstring := ind.fieldbyname('consegna_mercoledi').asstring;
                      testata.fieldbyname('consegna_giovedi').asstring := ind.fieldbyname('consegna_giovedi').asstring;
                      testata.fieldbyname('consegna_venerdi').asstring := ind.fieldbyname('consegna_venerdi').asstring;
                      testata.fieldbyname('consegna_sabato').asstring := ind.fieldbyname('consegna_sabato').asstring;
                      testata.fieldbyname('consegna_domenica').asstring := ind.fieldbyname('consegna_domenica').asstring;
                    end;
                  end
                  else
                  begin
                    read_tabella(cli, testata.fieldbyname('cli_codice').asstring);
                    if tabella_edit(testata) then
                    begin
                      testata.fieldbyname('consegna_lunedi').asstring := cli.fieldbyname('consegna_lunedi').asstring;
                      testata.fieldbyname('consegna_martedi').asstring := cli.fieldbyname('consegna_martedi').asstring;
                      testata.fieldbyname('consegna_mercoledi').asstring := cli.fieldbyname('consegna_mercoledi').asstring;
                      testata.fieldbyname('consegna_giovedi').asstring := cli.fieldbyname('consegna_giovedi').asstring;
                      testata.fieldbyname('consegna_venerdi').asstring := cli.fieldbyname('consegna_venerdi').asstring;
                      testata.fieldbyname('consegna_sabato').asstring := cli.fieldbyname('consegna_sabato').asstring;
                      testata.fieldbyname('consegna_domenica').asstring := cli.fieldbyname('consegna_domenica').asstring;
                    end;
                  end;

                  assegna_giorno_vendite(testata);

                end;

                assegna_giorno;

                testata.post;
                testata.refresh;

                //  controllo coerenza campi ordine con documento di evasione
                mantieni_tma_codice := true;
                vuoto := true;
                controllo_evasione_ven(mantieni_tma_codice, vuoto, testata, tabella_ovr, cli, '');

                //  aggiorna packing list
                if read_tabella(pkt, testata.fieldbyname('cli_codice').asstring) then
                begin
                  pkt.edit;
                  pkt.fieldbyname('tipo_documento').asstring := tipo_documento_evasione;
                  pkt.fieldbyname('progressivo_documento').asinteger := testata.fieldbyname('progressivo').asinteger;
                  pkt.post;
                end;
              end;
              cli_codice := tabella_ovr.fieldbyname('cli_codice').asstring;
              tva_codice := tabella_ovr.fieldbyname('tva_codice').asstring;
              tiv_codice := tabella_ovr.fieldbyname('tiv_codice').asstring;
              listino_con_iva := tabella_ovr.fieldbyname('listino_con_iva').asstring;
              indirizzo := tabella_ovr.fieldbyname('indirizzo').asstring;
              tpa_codice := tabella_ovr.fieldbyname('tpa_codice').asstring;
              tsm_codice := tabella_ovr.fieldbyname('tsm_codice').asstring;
              descrizione1 := tabella_ovr.fieldbyname('descrizione1').asstring;
              descrizione2 := tabella_ovr.fieldbyname('descrizione2').asstring;
              via := tabella_ovr.fieldbyname('via').asstring;
              cap := tabella_ovr.fieldbyname('cap').asstring;
              citta := tabella_ovr.fieldbyname('citta').asstring;
              provincia := tabella_ovr.fieldbyname('provincia').asstring;
              tna_codice := tabella_ovr.fieldbyname('tna_codice').asstring;
              tag_codice := tabella_ovr.fieldbyname('tag_codice').asstring;
              tba_codice := tabella_ovr.fieldbyname('tba_codice').asstring;
              tsm_codice_sconto := tabella_ovr.fieldbyname('tsm_codice_sconto').asstring;
              addebito_spese_fattura := tabella_ovr.fieldbyname('addebito_spese_fattura').asstring;
              codice_cup := tabella_ovr.fieldbyname('codice_cup').asstring;
              codice_cig := tabella_ovr.fieldbyname('codice_cig').asstring;

              if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
                (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
              begin
                righe.close;
                righe.parambyname('progressivo').asinteger := 0;
                righe.parambyname('riga').asinteger := 0;
                righe.open;
                righe.append;

                art.close;
                art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
                art.open;
                for i := 0 to righe.fields.count - 1 do
                begin
                  if (lowercase(righe.fields[i].fieldname) <> 'id') and (lowercase(righe.fields[i].fieldname) <> 'sequenza') then
                  begin
                    righe.fields[i].value := tabella_righe.fieldbyname(righe.fields[i].fieldname).value;
                  end;
                end;
                riga := riga + 10;
                righe.fieldbyname('progressivo').asinteger := progressivo_evasione;
                righe.fieldbyname('riga').asinteger := riga;

                righe.fieldbyname('quantita_evasa').asfloat := 0;
                righe.fieldbyname('tum_quantita_evasa_base').asfloat := 0;

                if approntato_da_sscc = 'si' then
                begin
                  query_codice.locate('progressivo;riga', vararrayof([tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger]), []);
                  righe.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita_approntata').asfloat;
                  righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat;
                  righe.fieldbyname('saldo_acconto').asstring := tabella_righe.fieldbyname('saldo_acconto_approntato').asstring;
                end
                else
                begin
                  righe.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita_approntata').asfloat;
                  righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat;
                  righe.fieldbyname('saldo_acconto').asstring := tabella_righe.fieldbyname('saldo_acconto_approntato').asstring;

                  righe.fieldbyname('doc_quantita_approntata').asfloat := tabella_righe.fieldbyname('quantita_approntata').asfloat;
                  righe.fieldbyname('doc_tum_quantita_approntata_base').asfloat := tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat;
                  righe.fieldbyname('doc_saldo_acconto_approntato').asstring := tabella_righe.fieldbyname('saldo_acconto_approntato').asstring;
                end;
                righe.fieldbyname('numero_colli').asinteger := tabella_righe.fieldbyname('numero_colli_approntato').asinteger;
                righe.fieldbyname('numero_confezioni').asinteger := tabella_righe.fieldbyname('numero_confezioni_approntato').asinteger;

                righe.fieldbyname('doc_numero_colli_approntati').asinteger := tabella_righe.fieldbyname('numero_colli_approntato').asinteger;
                righe.fieldbyname('doc_numero_confezioni_approntate').asinteger := tabella_righe.fieldbyname('numero_confezioni_approntato').asinteger;

                if tabella_righe.fieldbyname('evadere_note').asstring = 'si' then
                begin
                  righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring;
                end;

                if (righe.fieldbyname('prezzo_bloccato').asstring = 'no') and (righe.fieldbyname('art_codice').asstring <> '') then
                begin
                  cerca_prezzi.cerca_prezzo('C', testata.fieldbyname('cli_codice').asstring, testata.fieldbyname('indirizzo').asstring,
                    tabella_controllo_tdo_approntamento.fieldbyname('prezzo_proposto').asstring, righe.fieldbyname('art_codice').asstring,
                    righe.fieldbyname('tma_codice').asstring, righe.fieldbyname('quantita').asfloat, prezzo, tsm_codice_righe, tsm_codice_art,
                    testata.fieldbyname('data_documento').asdatetime, testata.fieldbyname('tva_codice').asstring,
                    testata.fieldbyname('cambio').asfloat, 4, testata.fieldbyname('tlv_codice').asstring, 1,
                    righe.fieldbyname('tum_codice').asstring, testata.fieldbyname('tdo_codice').asstring,
                    righe.fieldbyname('numero_colli').asinteger, righe.fieldbyname('numero_confezioni').asinteger);

                  righe.fieldbyname('prezzo').asfloat := prezzo;
                  righe.fieldbyname('tsm_codice').asstring := tsm_codice_righe;
                  righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
                end;

                righe.fieldbyname('peso_netto_riga').asfloat := arrotonda
                  (art.fieldbyname('peso_netto').asfloat * righe.fieldbyname('tum_quantita_base').asfloat, 4);

                righe.fieldbyname('evadere_note').asstring := tabella_controllo_tdo_approntamento.fieldbyname('evadere_note').asstring;
                righe.fieldbyname('documento_origine').asstring := 'ordine' + ' ven';
                righe.fieldbyname('doc_progressivo_origine').asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
                righe.fieldbyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
                righe.fieldbyname('importo_iva').asfloat := 0;
                righe.fieldbyname('importo_iva_euro').asfloat := 0;
                righe.fieldbyname('situazione').asstring := 'inserito';
                righe.fieldbyname('quantita_approntata').asfloat := 0;
                righe.fieldbyname('tum_quantita_approntata_base').asfloat := 0;
                righe.fieldbyname('evadere_approntato').asstring := '';
                righe.fieldbyname('saldo_acconto_approntato').asstring := '';
                if righe.fieldbyname('art_codice').asstring <> '' then
                begin
                  assegna_tiv_codice_righe_evasione;
                  assegna_gen_codice_evasione;
                  calcola_importo_evasione;
                end;
                righe.parambyname('progressivo').asinteger := progressivo_evasione;
                righe.parambyname('riga').asinteger := riga;
                righe.post;
                righe.refresh;
                after_post_righe_evasione;
              end;
              aggiorna_totale := true;
            end;

            test_cli_codice := tabella_ovr.fieldbyname('cli_codice').asstring;
            approntato.next;
          end;

          commit_transazione;
        except
          on e: exception do
          begin
            rollback_transazione(e.message);
            errore_commit_transazione;
          end;
        end;
      finally
        chiudi_transazione;
      end;
    end;
    aggiorna_totali(tipo);
    esegui_query_codice;
    if query_codice.isempty then
    begin
      pannello_extra := true;
    end
    else
    begin
      pannello_extra := false;
    end;
  end;
  fuoco(v_cli_codice);
end;

procedure tA31ASSAPPCL.after_post_righe_evasione;
var
  documento_origine, lotti_documento: string;

  descrizione, gen_codice, cfg_tipo, cfg_codice, serie_documento: string;
  importo, importo_valuta, importo_dare, importo_avere, importo_dare_valuta, importo_avere_valuta, cambio: double;
  numero_documento: integer;
  data_registrazione, data_documento: tdatetime;
begin
  if trim(righe.fieldbyname('art_codice').asstring) <> '' then
  begin
    if righe.fieldbyname('documento_origine').asstring <> '' then
    begin
      testata_documento_evaso.sql.clear;
      riga_documento_evaso.sql.clear;
      if righe.fieldbyname('documento_origine').asstring = 'ordine ven' then
      begin
        documento_origine := 'ordine';
        testata_documento_evaso.sql.add('select ovt.tma_codice from ovt where progressivo = :progressivo');
        riga_documento_evaso.sql.add('select * from ovr where progressivo = :progressivo and riga = :riga');
      end
      else
      begin
        documento_origine := 'preventivo';
        testata_documento_evaso.sql.add('select pvt.tma_codice from pvt where progressivo = :progressivo');
        riga_documento_evaso.sql.add('select * from pvr where progressivo = :progressivo and riga = :riga');
      end;
      testata_documento_evaso.params[0].asfloat := righe.fieldbyname('doc_progressivo_origine').asfloat;
      testata_documento_evaso.close;
      testata_documento_evaso.open;
      if not testata_documento_evaso.eof then
      begin
        if documento_origine = 'ordine' then
        begin
          riga_documento_evaso.params[0].asfloat := righe.fieldbyname('doc_progressivo_origine').asfloat;
          riga_documento_evaso.params[1].asinteger := righe.fieldbyname('doc_riga_origine').asinteger;
          riga_documento_evaso.close;
          riga_documento_evaso.open;
          if not riga_documento_evaso.eof then
          begin
            riga_documento_evaso.edit;
            riga_documento_evaso.fieldbyname('quantita_approntata').asfloat := 0;
            riga_documento_evaso.fieldbyname('tum_quantita_approntata_base').asfloat := 0;
            riga_documento_evaso.fieldbyname('evadere_approntato').asstring := '';
            riga_documento_evaso.fieldbyname('saldo_acconto_approntato').asstring := '';
            riga_documento_evaso.fieldbyname('numero_colli_approntato').asinteger := 0;
            riga_documento_evaso.fieldbyname('numero_confezioni_approntato').asinteger := 0;
            riga_documento_evaso.post;
          end;
        end;
      end;
    end;

    // lotti
    lotti_documento := tabella_controllo_tdo_approntamento.fieldbyname('lotti').asstring;
    if approntato_da_sscc = 'si' then
    begin
      // aggiorna ovr evadere_approntato
      ovr.close;
      ovr.parambyname('progressivo').asinteger := query_codice.fieldbyname('progressivo').asinteger;
      ovr.parambyname('riga').asinteger := query_codice.fieldbyname('riga').asinteger;
      ovr.execsql;

      // assegna lotto
      ore.close;
      ore.parambyname('ovr_progressivo_assegnato').asinteger := query_codice.fieldbyname('progressivo').asinteger;
      ore.parambyname('ovr_riga_assegnata').asinteger := query_codice.fieldbyname('riga').asinteger;
      ore.open;
      ltm.close;
      ltm.open;
      while not ore.eof do
      begin
        ltm.append;
        ltm.fieldbyname('documento_origine').asstring := tipo_documento_evasione + ' ven';
        ltm.fieldbyname('doc_progressivo_origine').asinteger := righe.fieldbyname('progressivo').asinteger;
        ltm.fieldbyname('doc_riga_origine').asinteger := righe.fieldbyname('riga').asinteger;
        ltm.fieldbyname('art_codice').asstring := righe.fieldbyname('art_codice').asstring;
        ltm.fieldbyname('tma_codice').asstring := righe.fieldbyname('tma_codice').asstring;
        ltm.fieldbyname('lotto').asstring := ore.fieldbyname('lot_codice').asstring;
        ltm.fieldbyname('quantita').asfloat := ore.fieldbyname('quantita').asfloat;
        ltm.fieldbyname('esistenza').asstring := '';
        ltm.fieldbyname('cfg_tipo').asstring := 'C';
        ltm.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice').asstring;
        ltm.post;
        ore.next;
      end;
      // chiudi ors
      ore_dettaglio.close;
      ore_dettaglio.parambyname('ovr_progressivo_assegnato').asinteger := query_codice.fieldbyname('progressivo').asinteger;
      ore_dettaglio.parambyname('ovr_riga_assegnata').asinteger := query_codice.fieldbyname('riga').asinteger;
      ore_dettaglio.open;
      while not ore_dettaglio.eof do
      begin
        ors.close;
        ors.parambyname('documento_origine').asstring := tipo_documento_evasione + ' ven';
        ors.parambyname('doc_progressivo_origine').asinteger := righe.fieldbyname('progressivo').asinteger;
        ors.parambyname('doc_riga_origine').asinteger := righe.fieldbyname('riga').asinteger;
        ors.parambyname('quantita_scarico').asfloat := ore_dettaglio.fieldbyname('esistenza').asfloat;
        ors.parambyname('codice_sscc').asstring := ore_dettaglio.fieldbyname('codice_sscc').asstring;
        ors.parambyname('data_registrazione').asdatetime := testata.fieldbyname('data_documento').asdatetime;
        ors.execsql;
        ore_dettaglio.next;
      end;
    end
    else
    begin
      ltm.close;
      ltm.params[0].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      ltm.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
      ltm.open;
      while not ltm.eof do
      begin
        if (testata.fieldbyname('tma_codice').asstring = '') or (lotti_documento = 'no') then
        begin
          ltm.delete;
        end
        else
        begin
          ltm.edit;
          ltm.fieldbyname('data_registrazione').asdatetime := testata.fieldbyname('data_documento').asdatetime;
          ltm.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
          ltm.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
          ltm.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
          ltm.fieldbyname('tma_codice').asstring := righe.fieldbyname('tma_codice').asstring;
          ltm.fieldbyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
          ltm.fieldbyname('doc_progressivo_origine').asinteger := righe.fieldbyname('progressivo').asinteger;
          ltm.fieldbyname('doc_riga_origine').asinteger := righe.fieldbyname('riga').asinteger;
          read_tabella(arc.arcdit, 'tmo', 'codice', vararrayof([testata.fieldbyname('tmo_codice').asstring]), 'descrizione,esistenza');
          ltm.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;
          ltm.fieldbyname('descrizione').asstring := archivio.fieldbyname('descrizione').asstring;
          ltm.post;
          ltm.next;
        end;
      end;
    end;

    // analitica
    if tabella_controllo_tdo_approntamento.fieldbyname('analitica').asstring = 'si' then
    begin
      if read_tabella(arc.arcdit, 'gen', 'codice', righe.fieldbyname('gen_codice').asstring) then
      begin
        if read_tabella(arc.arcdit, 'tpc', 'codice_01;codice_02;codice_03;codice_04',
          vararrayof([archivio.fieldbyname('tpc_codice_01').asstring, '', '', ''])) then
        begin
          if archivio.fieldbyname('tipo').asstring = 'economico' then
          begin
            codice_passato := vararrayof([tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring + ' ven',
              righe.fieldbyname('progressivo').asfloat, righe.fieldbyname('riga').asinteger, 0]);

            data_registrazione := testata.fieldbyname('data_documento').asdatetime;
            gen_codice := righe.fieldbyname('gen_codice').asstring;
            cfg_tipo := 'C';
            cfg_codice := testata.fieldbyname('cli_codice').asstring;
            descrizione := '';
            numero_documento := testata.fieldbyname('numero_documento').asinteger;
            serie_documento := testata.fieldbyname('serie_documento').asstring;
            data_documento := testata.fieldbyname('data_documento').asdatetime;
            importo_dare := 0;
            importo_avere := 0;
            importo_dare_valuta := 0;
            importo_avere_valuta := 0;

            if righe.fieldbyname('tipo_movimento').asstring = 'normale' then
            begin
              if testata.fieldbyname('listino_con_iva').asstring = 'no' then
              begin
                importo := righe.fieldbyname('importo_euro').asfloat;
                importo_valuta := righe.fieldbyname('importo').asfloat;
              end
              else
              begin
                importo := arrotonda(righe.fieldbyname('importo_euro').asfloat - righe.fieldbyname('importo_iva_euro').asfloat);
                importo_valuta := arrotonda(righe.fieldbyname('importo').asfloat - righe.fieldbyname('importo_iva').asfloat);
              end;
            end
            else
            begin
              importo := 0;
              importo_valuta := 0;
            end;

            importo_avere := importo;
            importo_avere_valuta := importo_valuta;
            if read_tabella(arc.arcdit, 'tco', 'codice', testata.fieldbyname('tco_codice').asstring) then
            begin
              if archivio.fieldbyname('segno_registro_iva').asstring = 'decrementa' then
              begin
                importo_avere := importo_avere * -1;
                importo_avere_valuta := importo_avere_valuta * -1;
              end;
            end;

            esegui_carcem(codice_passato, data_registrazione, gen_codice, righe.fieldbyname('art_codice').asstring, cfg_tipo, cfg_codice,
              descrizione, esercizio, righe.fieldbyname('cen_codice').asstring, righe.fieldbyname('tvc_codice').asstring,
              numero_documento, serie_documento, data_documento, importo_dare, importo_avere, false, false,
              importo_dare_valuta, importo_avere_valuta, testata.fieldbyname('cambio').asfloat);
          end;
        end;
      end;
    end;

    //  ubicazioni
    if arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si' then
    begin
      ubm.close;
      if testata.fieldbyname('tmo_codice').asstring = '' then
      begin
        ubm.sql.text := 'delete from ubm where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine ' +
          'and doc_riga_origine = :doc_riga_origine';
      end
      else
      begin
        ubm.sql.text := 'update ubm set data_registrazione = :data_registrazione_righe, documento_origine = :documento_origine_righe, ' +
          'doc_progressivo_origine = :doc_progressivo_origine_righe, doc_riga_origine = :doc_riga_origine_righe ' +
          'where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine ' +
          'and doc_riga_origine = :doc_riga_origine';
        ubm.parambyname('data_registrazione_righe').asdate := testata.fieldbyname('data_documento').asdatetime;
        ubm.parambyname('documento_origine_righe').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
        ubm.parambyname('doc_progressivo_origine_righe').asinteger := righe.fieldbyname('progressivo').asinteger;
        ubm.parambyname('doc_riga_origine_righe').asinteger := righe.fieldbyname('riga').asinteger;
      end;
      ubm.parambyname('documento_origine').asstring := 'ordine' + ' ven';
      ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
      ubm.execsql;
    end;
  end;
end;

procedure tA31ASSAPPCL.aggiorna_totali(tipo: string);
begin
  if aggiorna_totale then
  begin
    if tabella_controllo_tdo_approntamento.fieldbyname('totalizza_quantita').asstring = 'si' then
    begin
      totalizza_colli;
      testata.refresh;
    end;
    totven.movven_testata(tmyconnection_go(testata.connection), tipo_documento_evasione, testata.fieldbyname('progressivo').asinteger);
    testata.refresh;
    if tipo = 'cliente' then
    begin
      esegui_programma(documento, progressivo_evasione, true);
    end;
  end;
end;

procedure tA31ASSAPPCL.totalizza_colli;
begin
  totale_colli.close;
  totale_colli.sql.clear;

  totale_colli.sql.add('select sum(numero_colli) totale_colli, sum(numero_confezioni) totale_confezioni,');
  totale_colli.sql.add('round(sum(quantita * volume), 4) volume, round(sum(quantita * peso_lordo), 4) peso_lordo,');
  totale_colli.sql.add('round(sum(quantita * peso_netto), 4) peso_netto');
  if tipo_documento_evasione = 'preventivo' then
  begin
    totale_colli.sql.add('from pvr');
  end
  else if tipo_documento_evasione = 'ordine' then
  begin
    totale_colli.sql.add('from ovr');
  end
  else if tipo_documento_evasione = 'bolla' then
  begin
    totale_colli.sql.add('from bvr');
  end
  else if tipo_documento_evasione = 'corrispettivo' then
  begin
    totale_colli.sql.add('from cvr');
  end
  else if (tipo_documento_evasione = 'ddt') or (tipo_documento_evasione = 'ddt fornitori') then
  begin
    totale_colli.sql.add('from dvr');
  end
  else
  begin
    totale_colli.sql.add('from fvr');
  end;
  totale_colli.sql.add('left outer join art on art.codice = art_codice');
  totale_colli.sql.add('where progressivo = :progressivo');
  totale_colli.parambyname('progressivo').asinteger := testata.fieldbyname('progressivo').asinteger;
  totale_colli.open;

  testata.edit;
  testata.fieldbyname('numero_colli').asinteger := totale_colli.fieldbyname('totale_colli').asinteger;
  testata.fieldbyname('numero_confezioni').asinteger := totale_colli.fieldbyname('totale_confezioni').asinteger;
  testata.fieldbyname('volume').asfloat := totale_colli.fieldbyname('volume').asfloat;
  testata.fieldbyname('peso_lordo').asfloat := totale_colli.fieldbyname('peso_lordo').asfloat;
  testata.fieldbyname('peso_netto').asfloat := totale_colli.fieldbyname('peso_netto').asfloat;

  arc.calcola_peso_lordo(testata);

  testata.post;
end;

procedure tA31ASSAPPCL.v_tdo_codice_approntamentoexit(sender: tobject);
begin
  inherited;
  tdo_codice_approntamento_controllo(true);
  if controllo then
  begin
    assegna_v_numerazione;
  end;
end;

procedure TA31ASSAPPCL.assegna_v_numerazione;
begin
  if tabella_controllo_tdo_approntamento.isempty or
    (tabella_controllo_tdo_approntamento.fieldbyname('numerazione_automatica').asstring = 'si') then
  begin
    v_numerazione.checked := true;
  end
  else
  begin
    v_numerazione.checked := false;
  end;
end;

procedure TA31ASSAPPCL.v_tdo_codice_ordineEnter(Sender: TObject);
begin
  inherited;

  variato_stringa := v_tdo_codice_ordine.text;
  visarc_filtro_01 := 'ordine';
end;

procedure TA31ASSAPPCL.v_tdo_codice_ordineExit(Sender: TObject);
begin
  inherited;
  v_tdo_codice_ordine_controllo(true);

  if controllo and (variato_stringa <> v_tdo_codice_ordine.text) then
  begin
    if tdo_ordine.fieldbyname('tdo_codice_evasione_diretta').asstring <> '' then
    begin
      v_tdo_codice_approntamento.text := tdo_ordine.fieldbyname('tdo_codice_evasione_diretta').asstring;
      tdo_codice_approntamento_controllo(false);
      assegna_v_numerazione;
    end;
    esegui_query_codice;
  end;
end;

procedure TA31ASSAPPCL.v_ubicazioniClick(Sender: TObject);
begin
  inherited;
  esegui_ubicazioni;
end;

procedure tA31ASSAPPCL.v_tdo_codice_ordine_controllo(blocco: boolean);
begin
  tabella_controllo(true, tdo_ordine, v_tdo_codice_ordine, blocco, nil, nil, nil);
end;

procedure tA31ASSAPPCL.tdo_codice_approntamento_controllo(blocco: boolean);
begin
  if controllo and blocco and (read_tabella(utntdo, utente)) and
    not utntdo.locate('tdo_codice', v_tdo_codice_approntamento.text, []) then
  begin
    messaggio(000, 'codice documento non utilizzabile dall''utente');
    if v_tdo_codice_approntamento.canfocus then
    begin
      v_tdo_codice_approntamento.setfocus;
    end;
    abort;
  end
  else
  begin
    tabella_controllo(false, tabella_controllo_tdo_approntamento, v_tdo_codice_approntamento, blocco, nil, nil, nil);

    if controllo and blocco and not tabella_controllo_tdo_approntamento.isempty then
    begin
      if (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'preventivo') or
        (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'ordine') or
        (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'ddt fornitori') or
        (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'nota credito') or
        (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'fattura differita') then
      begin
        messaggio(000, 'il tipo documento non è consentito');
        if v_tdo_codice_approntamento.canfocus then
        begin
          v_tdo_codice_approntamento.setfocus;
        end;
        abort;
      end
      else
      begin
        tipo_documento_evasione := tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring;
      end;
    end;
    tdo_codice_evasione := v_tdo_codice_approntamento.text;
  end;
end;

procedure tA31ASSAPPCL.assegna_gen_codice_evasione;
var
  tca_codice, tcc_codice: string;
begin
  if testata.fieldbyname('tco_codice').asstring <> '' then
  begin
    tca_codice := '';
    tcc_codice := '';
    tcc_codice := cli.fieldbyname('tcc_codice').asstring;
    read_tabella(arc.arcdit, 'art', 'codice', righe.fieldbyname('art_codice').asstring, 'tca_codice');
    tca_codice := archivio.fieldbyname('tca_codice').asstring;
    if read_tabella(cpv, vararrayof([v_tdo_codice_approntamento.text, tcc_codice, tca_codice])) then
    begin
      if righe.fieldbyname('gen_codice').asstring <> cpv.fieldbyname('gen_codice').asstring then
      begin
        righe.fieldbyname('gen_codice').asstring := cpv.fieldbyname('gen_codice').asstring;
      end;
      if righe.fieldbyname('tipo_movimento').asstring = 'omaggio' then
      begin
        if righe.fieldbyname('gen_codice_storno').asstring <> cpv.fieldbyname('gen_codice_omaggi').asstring then
        begin
          righe.fieldbyname('gen_codice_storno').asstring := cpv.fieldbyname('gen_codice_omaggi').asstring;
        end;
      end
      else if righe.fieldbyname('tipo_movimento').asstring = 'sconto merce' then
      begin
        if righe.fieldbyname('gen_codice_storno').asstring <> cpv.fieldbyname('gen_codice_sconti').asstring then
        begin
          righe.fieldbyname('gen_codice_storno').asstring := cpv.fieldbyname('gen_codice_sconti').asstring;
        end;
      end;
    end;
  end;
end;

procedure tA31ASSAPPCL.assegna_tiv_codice_righe_evasione;
begin
  if righe.fieldbyname('iva_bloccata').asstring = 'si' then
  begin
    righe.fieldbyname('tiv_codice').asstring := tabella_righe.fieldbyname('tiv_codice').asstring;
  end
  else
  begin
    read_tabella(arc.arcdit, 'art', 'codice', righe.fieldbyname('art_codice').asstring);

    righe.fieldbyname('tiv_codice').asstring := assegna_iva_vendite(archivio, cli, testata);
  end;
end;

procedure tA31ASSAPPCL.calcola_importo_evasione;
var
  importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato: double;
begin
  importo := righe.fieldbyname('importo').asfloat;
  importo_euro := righe.fieldbyname('importo_euro').asfloat;
  importo_iva := righe.fieldbyname('importo_iva').asfloat;
  importo_iva_euro := righe.fieldbyname('importo_iva_euro').asfloat;
  calcola_importo_documento(righe.fieldbyname('quantita').asfloat, righe.fieldbyname('prezzo').asfloat,
    testata.fieldbyname('cambio').asfloat, righe.fieldbyname('importo_sconto').asfloat,
    'no', testata.fieldbyname('listino_con_iva').asstring,
    codice_tum(righe.fieldbyname('art_codice').asstring), righe.fieldbyname('tiv_codice').asstring,
    righe.fieldbyname('tsm_codice').asstring, righe.fieldbyname('tsm_codice_art').asstring, importo,
    importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato);
  if tabella_edit(righe) then
  begin
    righe.fieldbyname('importo').asfloat := importo;
    righe.fieldbyname('importo_euro').asfloat := importo_euro;
    righe.fieldbyname('importo_iva').asfloat := importo_iva;
    righe.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;
  end;
end;

procedure tA31ASSAPPCL.v_saldo_acconto_approntatoexit(sender: tobject);
begin
  inherited;
  saldo_acconto_approntato_controllo;
end;

procedure tA31ASSAPPCL.v_selcmsClick(Sender: TObject);
begin
  inherited;
  call_selcms;
  esegui_query_codice;
end;

procedure TA31ASSAPPCL.v_spedizioneClick(Sender: TObject);
var
  pr: tgesvenc1;
  test_progressivo, ordini_modificati: integer;
  puntatore: tbookmark;
begin
  if query_codice.fieldbyname('progressivo').asinteger <> 0 then
  begin
    if query_codice.fieldbyname('quantita_approntata').asfloat = 0 then
    begin
      messaggio(200, 'la riga deve essere approntata');
    end
    else
    begin
      read_tabella(ovt, query_codice.fieldbyname('progressivo').asinteger);
      read_tabella(tdo, ovt.fieldbyname('tdo_codice').asstring);

      pr := tgesvenc1.create(nil);
      if pr.esegui_form then
      begin
        pr.cli_codice := v_cli_codice.text;
        pr.tabella := ovt;
        pr.tabella_ds := ovt_ds;
        pr.tipo_documento := tdo.fieldbyname('tipo_documento').asstring;
        pr.ind_obbligatoria := tdo.fieldbyname('ind_obbligatoria').asstring;
        pr.utilizzo := 'ASSAPPCL';
        pr.showmodal;
      end;

      if ovt.state = dsedit then
      begin
        ovt.post;
        puntatore := query_codice.bookmark;
        if messaggio(300, 'assegna i dati di spedizione modificati a tutti gli ordini approntati') = 1 then
        begin
          //query_codice.disablecontrols;
          query_codice.filter := 'quantita_approntata <> 0';
          query_codice.filtered := true;
          query_codice.first;
          test_progressivo := 0;
          ordini_modificati := 0;
          while not query_codice.eof do
          begin
            if (query_codice.fieldbyname('progressivo').asinteger <> test_progressivo) and
              (query_codice.fieldbyname('progressivo').asinteger <> ovt.fieldbyname('progressivo').asinteger) then
            begin
              ovt_update.close;
              ovt_update.parambyname('data_inizio_trasporto').value := ovt.fieldbyname('data_inizio_trasporto').value;
              ovt_update.parambyname('ora_inizio_trasporto').asinteger := ovt.fieldbyname('ora_inizio_trasporto').asinteger;
              ovt_update.parambyname('minuto_inizio_trasporto').asinteger := ovt.fieldbyname('minuto_inizio_trasporto').asinteger;
              ovt_update.parambyname('tsp_codice').asstring := ovt.fieldbyname('tsp_codice').asstring;
              ovt_update.parambyname('tst_codice').asstring := ovt.fieldbyname('tst_codice').asstring;
              ovt_update.parambyname('tpo_codice').asstring := ovt.fieldbyname('tpo_codice').asstring;
              ovt_update.parambyname('tab_codice').asstring := ovt.fieldbyname('tab_codice').asstring;
              ovt_update.parambyname('causale_trasporto').asstring := ovt.fieldbyname('causale_trasporto').asstring;
              ovt_update.parambyname('consegna_bartolini').asstring := ovt.fieldbyname('consegna_bartolini').asstring;
              ovt_update.parambyname('progressivo').asinteger := query_codice.fieldbyname('progressivo').asinteger;
              ovt_update.execsql;

              test_progressivo := query_codice.fieldbyname('progressivo').asinteger;
              inc(ordini_modificati);
            end;

            query_codice.next;
          end;
          //query_codice.enablecontrols;
          query_codice.filter := '';
          query_codice.filtered := false;

          messaggio(100, 'modificati ' + inttostr(ordini_modificati) + ' ordini');
        end;
        query_codice.refresh;
        query_codice.gotobookmark(puntatore);
      end;
      freeandnil(pr);
    end;
  end;
end;

procedure tA31ASSAPPCL.saldo_acconto_approntato_controllo;
begin
  if controllo then
  begin
    if (v_quantita.value <> 0) and (v_saldo_acconto_approntato.text = '') then
    begin
      messaggio(000, 'assegnare la modalità di evasione (acconto o saldo)');
      fuoco(v_saldo_acconto_approntato);
    end
    else
    begin
      if v_saldo_acconto_approntato.text = 'acconto' then
      begin
        if (v_quantita.value <> 0) and (v_quantita.value >= query_codice.fieldbyname('quantita').asfloat) then
        begin
          messaggio(000, 'l''evasione deve essere a saldo perchè la quantità evasa' + #13 +
            'è uguale o maggiore della quantità del documento che si sta evadendo');
          fuoco(v_saldo_acconto_approntato);
          abort;
        end;
      end;
    end;
  end;
end;

procedure tA31ASSAPPCL.v_generazione_massivaclick(sender: tobject);
var
  codice_visarc: variant;
begin
  codice_visarc := '';
  esegui_visarc(arc.arcdit, 'TPS', 'TPS', codice_visarc, '', '', '', '', '', 'gestps');
  if visarc_codice <> '' then
  begin
    tps_codice := codice_visarc;
    creazione_documento('zona');
  end;
  esegui_programma(documento_stampa, '', true);
end;

procedure TA31ASSAPPCL.v_griglia3DBBDCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  v_lotti.click;
end;

procedure tA31ASSAPPCL.v_grigliadblclick(sender: tobject);
begin
  inherited;
  esegui_gesordv;
end;

procedure tA31ASSAPPCL.stampa;
var
  pr: tstaappcl;
begin
  // inherited;
  if not query_codice.isempty then
  begin
    pr := tstaappcl.create(nil);
    if pr.esegui_form then
    begin
      pr.cli_codice := cli.fieldbyname('codice').asstring;
      pr.da_data_consegna := v_da_data_consegna.date;
      pr.a_data_consegna := v_a_data_consegna.date;
      if v_numero_ordine.value <> 0 then
      begin
        pr.ovr_progressivo := query_codice.fieldbyname('progressivo').asinteger;
      end;
      pr.ind_codice := v_ind_codice.text;
      pr.showmodal;
    end;
    pr.free;

    query_codice.first;
  end;
end;

procedure tA31ASSAPPCL.abilitazioni;
begin
  abilita_bottoni(true);
end;

procedure tA31ASSAPPCL.esegui_lotti;
var
  a31_ltm: tmyquery_go;
begin
  if not lettore and (query_codice.fieldbyname('lotti').asstring = 'si') then
  begin
    a31_ltm := tmyquery_go.create(nil);
    a31_ltm.Connection := arc.arcdit;
    a31_ltm.sql.add('select sum(quantita)-sum(a31_quantita) quantita from ltm ');
    a31_ltm.sql.add('where ');
    a31_ltm.sql.add('ltm.documento_origine=''ordine ven'' and ');
    a31_ltm.sql.add('ltm.doc_progressivo_origine=:doc_progressivo_origine and ');
    a31_ltm.sql.add('ltm.doc_riga_origine=:doc_riga_origine ');

    a31_ltm.parambyname('doc_progressivo_origine').asinteger := query_codice.fieldbyname('progressivo').asinteger;
    a31_ltm.parambyname('doc_riga_origine').asinteger := query_codice.fieldbyname('riga').asinteger;
    a31_ltm.open;

    if (a31_ltm.fieldbyname('quantita').asfloat = 0) then
    begin
      assegna_lotti;
      apri_lotti_ubm;
    end
    else
    begin
      codice_passato := vararrayof(['ordine ven', query_codice.fieldbyname('progressivo').asfloat,
        query_codice.fieldbyname('riga').asinteger, 0]);

      esegui_carltm(codice_passato, 0, 'C', v_cli_codice.text, query_codice.fieldbyname('art_codice').asstring, query_codice.fieldbyname('tma_codice').asstring,
        '', 'approntato', '', 0, 0, 'APPRONTATO', v_tum_quantita_approntata_base.value, 0, 0);
    end;
    a31_ltm.close;
    a31_ltm.free;

  end;

end;

procedure tA31ASSAPPCL.esegui_ubicazioni;
begin
  if query_codice.fieldbyname('tipo_articolo').asstring = 'fiscale' then
  begin
    codice_passato := vararrayof(['ordine ven', query_codice.fieldbyname('progressivo').asfloat,
      query_codice.fieldbyname('riga').asinteger]);

    esegui_carubm(codice_passato, query_codice.fieldbyname('art_codice').asstring, query_codice.fieldbyname('tub_codice').asstring,
      'impegnato', '', '', query_codice.fieldbyname('data_documento').asdatetime, v_tum_quantita_approntata_base.value);
  end;
end;

procedure tA31ASSAPPCL.abilita_bottoni(flag: boolean);
begin
  if parte_attiva = 'pannello_codice' then
  begin
    if (flag) and (query_codice.fieldbyname('lotti').asstring = 'si') then
    begin
      v_lotti.enabled := true;
    end
    else
    begin
      v_lotti.enabled := false;
    end;

    if (flag) and (arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si') then
    begin
      v_ubicazioni.enabled := true;
    end
    else
    begin
      v_ubicazioni.enabled := false;
    end;
  end;
end;

procedure tA31ASSAPPCL.v_lotticlick(sender: tobject);
begin
  inherited;
  esegui_lotti;
end;

procedure tA31ASSAPPCL.pannello_codiceexit(sender: tobject);
begin
  inherited;
  abilita_bottoni(false);
end;

procedure tA31ASSAPPCL.v_grigliadrawcolumncell(sender: tobject; const rect: trect;
  datacol: integer; column: tcolumn; state: tgriddrawstate);
begin
  inherited;
  if lowercase(column.fieldname) = 'evadere_approntato' then
  begin
    if query_codice.fieldbyname('evadere_approntato').asstring = '' then
    begin
      v_griglia.canvas.brush.color := clwindow;
      v_griglia.canvas.font.color := clblack;
    end;
    if query_codice.fieldbyname('evadere_approntato').asstring = 'no' then
    begin
      v_griglia.canvas.brush.color := clred;
      v_griglia.canvas.font.color := clblack;
    end;
    if query_codice.fieldbyname('evadere_approntato').asstring = 'si' then
    begin
      v_griglia.canvas.brush.color := cllime;
      v_griglia.canvas.font.color := clblack;
    end;
  end;

  if lowercase(column.fieldname) = 'quantita' then
  begin
    if query_codice.fieldbyname('rda_progressivo').value <> null then
    begin
      v_griglia.canvas.brush.color := cllime;
      v_griglia.canvas.font.color := clblack;
    end
    else if query_codice.fieldbyname('oar_progressivo').value <> null then
    begin
      v_griglia.canvas.brush.color := claqua;
      v_griglia.canvas.font.color := clblack;
    end
    else if query_codice.fieldbyname('opt_progressivo').value <> null then
    begin
      v_griglia.canvas.brush.color := clyellow;
      v_griglia.canvas.font.color := clblack;
    end;
  end;

  if lowercase(column.fieldname) = 'riga' then
  begin
    if query_codice.fieldbyname('quantita_approntata').asfloat <> 0 then
    begin
      v_griglia.canvas.brush.color := cllime;
      v_griglia.canvas.font.color := clblack;
    end;
  end;

  v_griglia.defaultdrawdatacell(rect, column.field, state);
end;

procedure tA31ASSAPPCL.assegna_hint_griglia;
begin
  tool_saldo_acconto.enabled := false;
  tool_evasione.enabled := false;
  if (query_codice.fieldbyname('quantita_approntata').asfloat <> 0) then
  begin
    if (tabella.fieldbyname('saldo_acconto_approntato').asstring = 'saldo') or
      ((tabella.fieldbyname('saldo_acconto_approntato').asstring = '') and
      (query_codice.fieldbyname('quantita_approntata').asfloat = query_codice.fieldbyname('quantita').asfloat)) then
    begin
      tool_saldo_acconto.enabled := true;
      tool_saldo_acconto.hint := 'evasione in acconto';
      tool_saldo_acconto.imageindex := 82;
    end
    else
    begin
      tool_saldo_acconto.enabled := true;
      tool_saldo_acconto.hint := 'evasione a saldo';
      tool_saldo_acconto.imageindex := 80;
    end;
    if (tabella.fieldbyname('evadere_approntato').asstring = 'si') or
      ((tabella.fieldbyname('evadere_approntato').asstring = '') and
      (query_codice.fieldbyname('quantita_approntata').asfloat = query_codice.fieldbyname('quantita').asfloat)) then
    begin
      tool_evasione.enabled := true;
      tool_evasione.hint := 'non evadere riga';
      tool_evasione.imageindex := 82;
    end
    else
    begin
      tool_evasione.enabled := true;
      tool_evasione.hint := 'evadere riga';
      tool_evasione.imageindex := 80;
    end;
  end;
  statusbar.panels[1].text := (screen.activecontrol as tcontrol).hint;
end;

procedure tA31ASSAPPCL.tool_saldo_accontoclick(sender: tobject);
begin
  inherited;
  saldo_acconto;
end;

procedure TA31ASSAPPCL.tool_etiartClick(Sender: TObject);
begin
  inherited;
  parametri_extra_programma_chiamato[0] := query_codice.fieldbyname('art_codice').asstring;
  parametri_extra_programma_chiamato[1] := query_codice.fieldbyname('quantita_approntata').asfloat;
  parametri_extra_programma_chiamato[2] := 0;
  esegui_programma('ETIART', '', true);
end;

procedure tA31ASSAPPCL.tool_evasioneclick(sender: tobject);
begin
  inherited;
  evasione;
end;

procedure tA31ASSAPPCL.saldo_acconto;
var
  ovr_progressivo, ovr_riga: integer;
begin
  ovr_progressivo := query_codice.fieldbyname('progressivo').asinteger;
  ovr_riga := query_codice.fieldbyname('riga').asinteger;

  if tabella_edit(tabella) then
  begin
    if tabella.fieldbyname('saldo_acconto_approntato').asstring = 'acconto' then
    begin
      tabella.fieldbyname('saldo_acconto_approntato').asstring := 'saldo';
    end
    else
    begin
      if query_codice.fieldbyname('quantita_approntata').asfloat < query_codice.fieldbyname('quantita').asfloat then
      begin
        tabella.fieldbyname('saldo_acconto_approntato').asstring := 'acconto';
      end;
    end;
    tabella.post;
  end;

  esegui_query_codice;
  query_codice.locate('progressivo;riga', vararrayof([ovr_progressivo, ovr_riga]), []);
end;

procedure tA31ASSAPPCL.evasione;
var
  ovr_progressivo, ovr_riga: integer;
begin
  ovr_progressivo := query_codice.fieldbyname('progressivo').asinteger;
  ovr_riga := query_codice.fieldbyname('riga').asinteger;

  if tabella_edit(tabella) then
  begin
    if tabella.fieldbyname('evadere_approntato').asstring <> 'si' then
    begin
      tabella.fieldbyname('evadere_approntato').asstring := 'si';
    end
    else
    begin
      tabella.fieldbyname('evadere_approntato').asstring := 'no';
    end;
    tabella.post;
  end;

  esegui_query_codice;
  query_codice.locate('progressivo;riga', vararrayof([ovr_progressivo, ovr_riga]), []);
end;

procedure tA31ASSAPPCL.v_grigliaexit(sender: tobject);
begin
  inherited;
  disabilita_campo(tool_etiart);
  disabilita_campo(v_spedizione);
  v_assegna_tutto.enabled := false;
  v_lettore.enabled := false;
  v_cruscotto_articolo.enabled := false;
  v_automezzo.enabled := false;
  tool_ctrl_f1.enabled := false;
  v_crea_documento.enabled := false;
  v_generazione_massiva.enabled := false;
  disabilita_campo(v_ordine_produzione);
end;

procedure tA31ASSAPPCL.v_lettoreclick(sender: tobject);
begin
  esegui_lettore;
end;

procedure tA31ASSAPPCL.esegui_lettore;
var
  pr: tltterlasinh;
  i: word;
  quantita, quantita_usata: double;
  puntatore: tbookmark;
  lista_art_codice, lista_codice_originale, lista_quantita, lista_prezzo, lista_codice_lotto, lista_data_scadenza: tstringlist;

  query_ltm: tmyquery_go;
begin
  inherited;

  lettore := true;

  lista_art_codice := tstringlist.create;
  lista_codice_originale := tstringlist.create;
  lista_quantita := tstringlist.create;
  lista_prezzo := tstringlist.create;
  lista_codice_lotto := tstringlist.create;
  lista_data_scadenza := tstringlist.create;

  pr := tltterlasinh.create(nil);
  if pr.esegui_form then
  begin
    pr.lista_art_codice := lista_art_codice;
    pr.lista_codice_originale := lista_codice_originale;
    pr.lista_quantita := lista_quantita;
    pr.lista_prezzo := lista_prezzo;
    pr.lista_codice_lotto := lista_codice_lotto;
    pr.lista_data_scadenza := lista_data_scadenza;
    pr.showmodal;
    if (pr.conferma = true) and (pr.lista_art_codice.count > 0) then
    begin
      lista_art_codice := pr.lista_art_codice;
      lista_codice_originale := pr.lista_codice_originale;
      lista_quantita := pr.lista_quantita;
      lista_prezzo := pr.lista_prezzo;
      lista_codice_lotto := pr.lista_codice_lotto;
      lista_data_scadenza := pr.lista_data_scadenza;
      for i := 0 to lista_art_codice.count - 1 do
      begin
        //if not read_tabella(arc.arcdit, 'art', 'codice', vararrayof([lista_art_codice[i]]), 'codice') then
        if not read_tabella(art, lista_art_codice[i]) then
        begin
          messaggio(200, 'il codice  ' + trim(lista_art_codice[i]) + '  non è presente nell''anagrafica articoli' + #13 +
            'la quantità corrispondente [' + trim(lista_quantita[i]) + '] non verrà assegnata');
        end
        else
        begin
          query_codice.filter := 'art_codice = ' + quotedstr(lista_art_codice[i]);
          query_codice.filtered := true;

          query_codice.first;
          if not query_codice.eof then
          begin
            while not query_codice.eof do
            begin
              if query_codice.fieldbyname('tum_quantita_base').asfloat <> query_codice.fieldbyname('tum_quantita_approntata_base').asfloat then
              begin
                puntatore := query_codice.getbookmark;

                quantita := strtofloat(lista_quantita[i]);
                if quantita >= query_codice.fieldbyname('tum_quantita_base').asfloat - query_codice.fieldbyname('tum_quantita_approntata_base').asfloat then
                begin
                  if tabella_edit(tabella) then
                  begin
                    quantita_usata := query_codice.fieldbyname('tum_quantita_base').asfloat - query_codice.fieldbyname('tum_quantita_approntata_base').asfloat;
                    quantita := quantita - quantita_usata;

                    tabella.fieldbyname('tum_quantita_approntata_base').asfloat := tabella.fieldbyname('tum_quantita_approntata_base').asfloat +
                      quantita_usata;

                    tabella.fieldbyname('quantita_approntata').asfloat := arrotonda
                      (tabella.fieldbyname('tum_quantita_approntata_base').asfloat * tabella.fieldbyname('quantita').asfloat / tabella.fieldbyname('tum_quantita_base').asfloat, 4);

                    assegna_colli_confezioni(tabella, art, 'quantita_approntata', 'numero_colli_approntato', 'numero_confezioni_approntato');

                    if quantita_usata = 0 then
                    begin
                      tabella.fieldbyname('evadere_approntato').asstring := '';
                    end
                    else if quantita_usata < query_codice.fieldbyname('quantita').asfloat then
                    begin
                      tabella.fieldbyname('saldo_acconto_approntato').asstring := 'acconto';
                    end
                    else
                    begin
                      tabella.fieldbyname('saldo_acconto_approntato').asstring := 'saldo';
                    end;

                    tabella.post;

                    if (query_codice.fieldbyname('lotti').asstring = 'si') and (lista_codice_lotto[i] <> '') then
                    begin
                      codice_passato := vararrayof(['ordine ven', query_codice.fieldbyname('progressivo').asfloat,
                        query_codice.fieldbyname('riga').asinteger, 0]);
                      esegui_carltm(codice_passato, query_codice.fieldbyname('numero_documento').asfloat, 'C', v_cli_codice.text,
                        query_codice.fieldbyname('art_codice').asstring, query_codice.fieldbyname('tma_codice').asstring, '', 'approntato',
                        query_codice.fieldbyname('serie_documento').asstring, date, query_codice.fieldbyname('data_documento').asdatetime,
                        'APPRONTATO', quantita_usata, 0, 0, lista_codice_lotto[i], true);
                    end;
                  end;
                end
                else
                begin
                  if tabella_edit(tabella) then
                  begin
                    tabella.fieldbyname('tum_quantita_approntata_base').asfloat := tabella.fieldbyname('tum_quantita_approntata_base').asfloat + quantita;

                    tabella.fieldbyname('quantita_approntata').asfloat := arrotonda
                      (tabella.fieldbyname('tum_quantita_approntata_base').asfloat * tabella.fieldbyname('quantita').asfloat / tabella.fieldbyname('tum_quantita_base').asfloat, 4);

                    assegna_colli_confezioni(tabella, art, 'quantita_approntata', 'numero_colli_approntato', 'numero_confezioni_approntato');

                    if quantita = 0 then
                    begin
                      tabella.fieldbyname('evadere_approntato').asstring := '';
                    end
                    else if quantita < query_codice.fieldbyname('quantita').asfloat then
                    begin
                      tabella.fieldbyname('saldo_acconto_approntato').asstring := 'acconto';
                    end
                    else
                    begin
                      tabella.fieldbyname('saldo_acconto_approntato').asstring := 'saldo';
                    end;

                    tabella.post;

                    if (query_codice.fieldbyname('lotti').asstring = 'si') and (lista_codice_lotto[i] <> '') then
                    begin
                      codice_passato := vararrayof(['ordine ven', query_codice.fieldbyname('progressivo').asfloat,
                        query_codice.fieldbyname('riga').asinteger, 0]);
                      esegui_carltm(codice_passato, query_codice.fieldbyname('numero_documento').asfloat, 'C', v_cli_codice.text,
                        query_codice.fieldbyname('art_codice').asstring, query_codice.fieldbyname('tma_codice').asstring, '', 'approntato',
                        query_codice.fieldbyname('serie_documento').asstring, date, query_codice.fieldbyname('data_documento').asdatetime,
                        'APPRONTATO', quantita, 0, 0, lista_codice_lotto[i], true);
                    end;

                    quantita := 0;
                  end;
                end;

                lista_quantita[i] := floattostr(quantita);

                if strtofloat(lista_quantita[i]) = 0 then
                begin
                  break;
                end;

                query_codice.gotobookmark(puntatore);
              end;

              query_codice.next;
            end;
            if strtofloat(lista_quantita[i]) > 0 then
            begin
              if messaggio(304, 'per l''articolo ' + lista_art_codice[i] + ' non è stata assegnata tutta la quantità del lettore' + #13 +
                'residuo di ' + lista_quantita[i] + #13 +
                'conferma per assegnarla comunque') = 1 then
              begin
                query_codice.gotobookmark(puntatore);
                assegna_approntato(strtofloat(lista_quantita[i]), false, false);

                if (query_codice.fieldbyname('lotti').asstring = 'si') and (lista_codice_lotto[i] <> '') then
                begin
                  query_ltm := tmyquery_go.create(nil);
                  query_ltm.connection := arc.arcdit;
                  query_ltm.sql.add('select * from ltm');
                  query_ltm.sql.add('where documento_origine = ''ordine ven'' and doc_progressivo_origine = :progressivo');
                  query_ltm.sql.add('and doc_riga_origine = :riga and art_codice = :art_codice and lotto = :lotto');
                  query_ltm.parambyname('progressivo').asinteger := query_codice.fieldbyname('progressivo').asinteger;
                  query_ltm.parambyname('riga').asinteger := query_codice.fieldbyname('riga').asinteger;
                  query_ltm.parambyname('art_codice').asstring := query_codice.fieldbyname('art_codice').asstring;
                  query_ltm.parambyname('lotto').asstring := lista_codice_lotto[i];
                  query_ltm.open;
                  if not query_ltm.isempty then
                  begin
                    query_ltm.edit;
                    query_ltm.fieldbyname('quantita').asfloat := query_ltm.fieldbyname('quantita').asfloat + strtofloat(lista_quantita[i]);
                    query_ltm.post;
                  end;
                  freeandnil(query_ltm);
                end;
              end;
            end;
          end
          else
          begin
            messaggio(200, 'il codice  ' + trim(lista_art_codice[i]) + '  non è presente nella lista selezionata' + #13 +
              'la quantità corrispondente [' + trim(lista_quantita[i]) + '] non verrà assegnata');
          end;

          query_codice.filter := '';
          query_codice.filtered := false;
        end;
      end;
      esegui_query_codice;
    end;
  end;

  lettore := false;

  freeandnil(lista_art_codice);
  freeandnil(lista_codice_originale);
  freeandnil(lista_quantita);
  freeandnil(lista_prezzo);
  freeandnil(lista_codice_lotto);
  freeandnil(lista_data_scadenza);

  pr.free;
end;

procedure tA31ASSAPPCL.v_saldo_acconto_approntatochange(sender: tobject);
begin
  inherited;
  if parte_attiva = 'pannello_campi' then
  begin
    if v_saldo_acconto_approntato.text = 'saldo' then
    begin
      tabella.fieldbyname('evadere_approntato').asstring := 'si';
    end;
  end;
end;

procedure tA31ASSAPPCL.v_packing_listclick(sender: tobject);
begin
  inherited;

  parametri_extra_programma_chiamato[0] := v_cli_codice.text;;
  if v_numero_ordine.value = 0 then
  begin
    parametri_extra_programma_chiamato[1] := 'assegnazione approntato';
    parametri_extra_programma_chiamato[2] := 0;
  end
  else
  begin
    parametri_extra_programma_chiamato[1] := 'ordine';
    parametri_extra_programma_chiamato[2] := query_codice.fieldbyname('progressivo').asinteger;
  end;

  esegui_programma('GESPKL', '', true);
end;

procedure tA31ASSAPPCL.query_codiceafterscroll(dataset: tdataset);
begin
  inherited;
  assegna_hint_griglia;
  apri_lotti_ubm;
end;

procedure tA31ASSAPPCL.esegui_query_codice;
var
  query_tdo, query_ind, query_numero: string;
  //modifica
  query_art: string;
  //modifica fine
begin
  assegna_testo_query_codice;

  if v_tdo_codice_ordine.text <> '' then
  begin
    query_tdo := 'and ovt.tdo_codice = ' + quotedstr(v_tdo_codice_ordine.text);
  end
  else
  begin
    query_tdo := '';
  end;

  if v_numero_ordine.value <> 0 then
  begin
    query_numero := 'and ovt.numero_documento = ' + v_numero_ordine.text;
  end
  else
  begin
    query_numero := '';
  end;

  if v_ind_codice.text <> '' then
  begin
    query_ind := 'and ovt.indirizzo = ' + quotedstr(v_ind_codice.text);
  end
  else
  begin
    query_ind := '';
  end;

  //modifica
  if v_art_codice.text <> '' then
  begin
    query_art := 'and ovr.art_codice = ' + quotedstr(v_art_codice.text);
  end
  else
  begin
    query_art := '';
  end;

  testo_query_codice_extra := query_tdo + ' ' + query_numero + ' ' + query_ind + ' ' + query_art;
  //modifica fine

  query_codice.parambyname('cli_codice').asstring := v_cli_codice.text;
  query_codice.parambyname('da_data_consegna').asdate := v_da_data_consegna.date;
  query_codice.parambyname('a_data_consegna').asdate := v_a_data_consegna.date;

  inherited;

  (v_griglia.columns.items[9].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia.columns.items[10].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia.columns.items[12].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia.columns.items[13].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia.columns.items[14].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia.columns.items[15].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia.columns.items[16].field as tintegerfield).displayformat := '#';
  (v_griglia.columns.items[17].field as tintegerfield).displayformat := '#';
  (v_griglia.columns.items[18].field as tintegerfield).displayformat := '#';
  (v_griglia.columns.items[19].field as tintegerfield).displayformat := '#';
end;

procedure tA31ASSAPPCL.v_cruscotto_articoloclick(sender: tobject);
begin
  inherited;

  if query_codice.fieldbyname('art_codice').asstring <> '' then
  begin
    esegui_programma('CRUART', query_codice.fieldbyname('art_codice').asstring, true);
  end;
end;

procedure tA31ASSAPPCL.pannello_campiexit(sender: tobject);
begin
  inherited;
  if tabella.state <> dsbrowse then
  begin
    assegna_approntato(v_quantita.value, true);
  end;
end;

procedure tA31ASSAPPCL.formkeydown(sender: tobject;
  var key: word; shift: tshiftstate);
var
  stringa: string;
begin
  if (key = vk_f3) and (shift = []) and (screen.activecontrol = v_quantita) then
  begin
    (*
      read_tabella(art, query_codice.fieldbyname('art_codice').asstring);
      assegna_colli_confezioni(tabella, art, 'quantita_approntata', 'numero_colli_approntato', 'numero_confezioni_approntato');
    *)
  end
  else if (key = vk_return) and (shift = [ssctrl]) and (parte_attiva = 'pannello_parametri') then
  begin
    key := 0;
    shift := [];
    if v_griglia.canfocus then
    begin
      if v_griglia.canfocus then
      begin
        v_griglia.setfocus;
      end;
    end;
  end
  else if (key = vk_return) and (shift = []) and (parte_attiva = 'pannello_codice') then
  begin
    // ESEGUI GRIGLIA
  end
  else
  begin
    inherited;
  end;
end;

procedure tA31ASSAPPCL.formshow(sender: tobject);
var
  rect: trect;
begin
  if parametri_extra_programma_chiamato[0] <> null then
  begin
    cli_codice_passato := parametri_extra_programma_chiamato[0];
  end;
  if parametri_extra_programma_chiamato[1] <> null then
  begin
    numero_ordine_passato := parametri_extra_programma_chiamato[1];
  end;

  inherited;

  self.windowstate := wsmaximized;

  v_cli_codice.text := cli_codice_passato;
  v_numero_ordine.value := numero_ordine_passato;
  visualizza_stampa_elabora;

  v_a_data_consegna.text := data_31_12_9999;

  systemparametersinfo(spi_getworkarea, 0, @rect, 0);
  pannello_codice.left := 0;
  pannello_codice.top := 40 + pannello_parametri.height;
  pannello_codice.width := rect.right - rect.left - pannello_bottoni_nuovi.width - 8;
  pannello_codice.height := rect.bottom - rect.top - pannello_codice.top - tab_control.height - statusbar.height - 65;

  v_art_codice.setfocus;
end;

procedure TA31ASSAPPCL.v_quantitaChange(Sender: TObject);
begin
  inherited;
  if (tabella.state = dsedit) and not lettore then
  begin
    tabella.fieldbyname('tum_quantita_approntata_base').asfloat := arrotonda
      (v_quantita.value * tabella.fieldbyname('tum_quantita_base').asfloat /
      tabella.fieldbyname('quantita').asfloat, cifre_decimali_quantita);
  end;
end;

procedure tA31ASSAPPCL.v_quantitaenter(sender: tobject);
begin
  inherited;
  variato_importo := arrotonda(v_quantita.value, 4);
end;

function tA31ASSAPPCL.fuori_fido(solo_fuori_fido: boolean): boolean;
var
  stringa: string;
  effetti, ordinato: double;
begin
  result := false;
  if (cli.fieldbyname('fido').asfloat <> 0) then
  begin
    cfg.params[0].asstring := v_cli_codice.text;
    cfg.close;
    cfg.open;
    if not cfg.eof then
    begin
      ordinato := 0;
      if arc.dit.fieldbyname('ordinato_fido').asstring = 'si' then
      begin
        importo_ordinato.parambyname('cli_codice').asstring := v_cli_codice.text;
        importo_ordinato.close;
        importo_ordinato.open;
        while not importo_ordinato.eof do
        begin
          ordinato := arrotonda(ordinato + importo_ordinato.fieldbyname('importo').asfloat);
          importo_ordinato.next;
        end;
      end;
      effetti := 0;
      pat.params[0].asstring := v_cli_codice.text;
      pat.params[1].asdate := now - 90;
      pat.close;
      pat.open;
      while not pat.eof do
      begin
        if (pat.fieldbyname('data_scadenza').asdatetime + pat.fieldbyname('giorni_rischio').asinteger) >= now then
        begin
          effetti := arrotonda(effetti + pat.fieldbyname('importo_dovuto_euro').asfloat);
        end;
        pat.next;
      end;
      if cli.fieldbyname('fido').asfloat <
        (cfg.fieldbyname('importo_saldo').asfloat + cfg.fieldbyname('importo_fatturare_fido').asfloat + ordinato + effetti) then
      begin
        stringa := 'il fido concesso al cliente [' + formatfloat(formato_display_importo, cli.fieldbyname('fido').asfloat) +
          '€] è stato superato di [' + formatfloat(formato_display_importo, cfg.fieldbyname('importo_saldo').asfloat + ordinato + effetti +
          cfg.fieldbyname('importo_fatturare_fido').asfloat - cli.fieldbyname('fido').asfloat) + '€]' + #13;
        if cfg.fieldbyname('importo_saldo').asfloat <> 0 then
        begin
          stringa := stringa + #13 + 'saldo contabile [' + formatfloat(',0.00', cfg.fieldbyname('importo_saldo').asfloat) + '€]';
        end;
        if cfg.fieldbyname('importo_fatturare_fido').asfloat <> 0 then
        begin
          stringa := stringa + #13 + 'documenti da fatturare [' + formatfloat(',0.00', cfg.fieldbyname('importo_fatturare_fido').asfloat) + '€]' + #13;
        end;
        if ordinato <> 0 then
        begin
          stringa := stringa + #13 + 'ordini da evadere [' + formatfloat(',0.00', ordinato) + '€]';
        end;
        if effetti <> 0 then
        begin
          stringa := stringa + #13 + 'effetti a rischio [' + formatfloat(',0.00', effetti) + '€]';
        end;
        messaggio(200, stringa);
        if arc.dit.fieldbyname('blocco_fuori_fido').asstring = 'si' then
        begin
          if (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria') or
            (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'fattura immediata') or
            (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'corrispettivo') or
            (tabella_controllo_tdo_approntamento.fieldbyname('tipo_documento').asstring = 'nota credito') or
            (tabella_controllo_tdo_approntamento.fieldbyname('tdo_codice_differite').asstring <> '') then
          begin
            result := true;
          end;
        end;
      end
      else if (arc.dit.fieldbyname('visualizza_fido_cliente_ven').asstring = 'si') and (cli.fieldbyname('fido').asfloat <> 0) and not solo_fuori_fido then
      begin
        stringa := 'il cliente ' + cli.fieldbyname('descrizione1').asstring + ' ha ancora disponibili [' +
          formatfloat(',0.00', cli.fieldbyname('fido').asfloat - (cfg.fieldbyname('importo_saldo').asfloat + ordinato + effetti +
          cfg.fieldbyname('importo_fatturare_fido').asfloat)) + '€]' + ' del fido concesso';
        stringa := stringa + #13 + 'fido [' + formatfloat(',0.00', cli.fieldbyname('fido').asfloat) + ']';
        if cfg.fieldbyname('importo_saldo').asfloat <> 0 then
        begin
          stringa := stringa + #13 + 'saldo contabile [' + formatfloat(',0.00', cfg.fieldbyname('importo_saldo').asfloat) + '€]';
        end;
        if cfg.fieldbyname('importo_fatturare_fido').asfloat <> 0 then
        begin
          stringa := stringa + #13 + 'documenti da fatturare [' + formatfloat(',0.00', cfg.fieldbyname('importo_fatturare_fido').asfloat) + '€]' + #13;
        end;
        if ordinato <> 0 then
        begin
          stringa := stringa + #13 + 'ordini da evadere [' + formatfloat(',0.00', ordinato) + '€]';
        end;
        if effetti <> 0 then
        begin
          stringa := stringa + #13 + 'effetti a rischio [' + formatfloat(',0.00', effetti) + '€]';
        end;
        messaggio(200, stringa);
      end;
    end;
  end;
end;

procedure TA31ASSAPPCL.v_numero_colli_approntatoEnter(Sender: TObject);
begin
  inherited;

  variato_importo := v_numero_colli_approntato.intvalue;
end;

procedure TA31ASSAPPCL.v_numero_colli_approntatoExit(Sender: TObject);
begin
  inherited;

  if variato_importo <> v_numero_colli_approntato.intvalue then
  begin
    read_tabella(art, query_codice.fieldbyname('art_codice').asstring);
    assegna_quantita_colli(tabella, art, tabella_controllo_tdo_approntamento, cifre_decimali_quantita,
      'numero_colli_approntato', 'numero_confezioni_approntato', 'quantita_approntata');

    (*
      read_tabella(art, query_codice.fieldbyname('art_codice').asstring);
      if (art.fieldbyname('quantita_collo').asfloat <> 0) and (v_numero_colli_approntato.value <> 0) then
      begin
      if tabella_edit(tabella) then
      begin
      tabella.fieldbyname('quantita_approntata').asfloat := arrotonda
      ((v_numero_colli_approntato.intvalue) * art.fieldbyname('quantita_collo').asfloat, cifre_decimali_quantita);

      v_quantitaexit(nil);
      end;
      end;
    *)
  end;
end;

procedure TA31ASSAPPCL.v_numero_confezioni_approntatoEnter(Sender: TObject);
begin
  inherited;

  variato_importo := v_numero_confezioni_approntato.intvalue;
end;

procedure TA31ASSAPPCL.v_numero_confezioni_approntatoExit(Sender: TObject);
begin
  inherited;

  if variato_importo <> v_numero_confezioni_approntato.intvalue then
  begin
    read_tabella(art, query_codice.fieldbyname('art_codice').asstring);
    assegna_quantita_confezioni(tabella, art, tabella_controllo_tdo_approntamento, cifre_decimali_quantita,
      'numero_colli_approntato', 'numero_confezioni_approntato', 'quantita_approntata');

    (*
      read_tabella(art, query_codice.fieldbyname('art_codice').asstring);
      if (art.fieldbyname('pezzi_confezione').asfloat <> 0) and (v_numero_confezioni_approntato.value <> 0) then
      begin
      if tabella_edit(tabella) then
      begin
      tabella.fieldbyname('quantita_approntata').asfloat := arrotonda
      ((v_numero_confezioni_approntato.intvalue) * art.fieldbyname('pezzi_confezione').asfloat, cifre_decimali_quantita);

      v_quantitaexit(nil);
      end;
      end;
    *)

  end;
end;

procedure tA31ASSAPPCL.v_numero_ordineenter(sender: tobject);
begin
  inherited;
  variato_importo := v_numero_ordine.value;
end;

procedure tA31ASSAPPCL.v_numero_ordineexit(sender: tobject);
begin
  inherited;
  if controllo and (variato_importo <> v_numero_ordine.value) then
  begin
    esegui_query_codice;
  end;
end;

procedure TA31ASSAPPCL.v_ordine_produzioneClick(Sender: TObject);
var
  prosegui: boolean;

  risultato: word;
  progressivo_opt: integer;
  tma_codice: string;
begin
  inherited;

  prosegui := true;
  if (query_codice.fieldbyname('quantita_approntata').asfloat >= query_codice.fieldbyname('quantita').asfloat) or
    (query_codice.fieldbyname('evadere_approntato').asstring = 'si') then
  begin
    if messaggio(304, 'la quantità approntata copre già l''ordinato' + #13 +
      'conferma per creare comunque l''ordine di produzione') <> 1 then
    begin
      prosegui := false;
    end;
  end;
  if prosegui and (query_codice.fieldbyname('evadere_approntato').asstring = 'si') then
  begin
    if messaggio(304, 'la riga è già stata disposta per l''evasione' + #13 +
      'conferma per creare comunque l''ordine di produzione') <> 1 then
    begin
      prosegui := false;
    end;
  end;

  if prosegui then
  begin
    if not esiste_rda_opt then
    begin
      if tabella.fieldbyname('tma_codice').asstring <> arc.dit.fieldbyname('tma_codice_finiti').asstring then
      begin
        risultato := messaggio(300, 'utilizzo del deposito dell''ordine [Sì] o quello standard [No]');
        if risultato = 1 then
        begin
          tma_codice := tabella.fieldbyname('tma_codice').asstring;
        end
        else
        begin
          tma_codice := arc.dit.fieldbyname('tma_codice_finiti').asstring;
        end;
      end
      else
      begin
        tma_codice := arc.dit.fieldbyname('tma_codice_finiti').asstring;
      end;

      if tabella.fieldbyname('configurazione').asinteger = 0 then
      begin
        risultato := messaggio(300, 'creazione ordine con modalità diretta [Sì] o con analisi struttura [No]');
        if risultato = 1 then
        begin
          parametri_extra_programma_chiamato[0] := tabella.fieldbyname('art_codice').asstring;
          parametri_extra_programma_chiamato[1] := tabella.fieldbyname('tum_quantita_base').asfloat -
            tabella.fieldbyname('tum_quantita_evasa_base').asfloat;
          parametri_extra_programma_chiamato[2] := tabella.fieldbyname('progressivo').asinteger;
          parametri_extra_programma_chiamato[3] := tabella.fieldbyname('riga').asinteger;
          parametri_extra_programma_chiamato[4] := tabella.fieldbyname('data_consegna').asdatetime;
          if tabella.fieldbyname('data_consegna').asdatetime = 0 then
          begin
            parametri_extra_programma_chiamato[4] := date;
          end;
          parametri_extra_programma_chiamato[5] := tabella.fieldbyname('note').asstring;
          parametri_extra_programma_chiamato[6] := tabella.fieldbyname('note_interne').asstring;
          parametri_extra_programma_chiamato[7] := tabella.fieldbyname('formula').asstring;
          parametri_extra_programma_chiamato[8] := tabella.fieldbyname('cms_codice').asstring;
          parametri_extra_programma_chiamato[9] := tabella.fieldbyname('tipologia').asstring;
          parametri_extra_programma_chiamato[10] := 'ordine ven';
          parametri_extra_programma_chiamato[11] := tabella.fieldbyname('progressivo').asinteger;
          parametri_extra_programma_chiamato[12] := tabella.fieldbyname('riga').asinteger;
          parametri_extra_programma_chiamato[13] := '';
          parametri_extra_programma_chiamato[14] := arc.dit.fieldbyname('tipo_esplosione').asstring;
          parametri_extra_programma_chiamato[15] := tabella.fieldbyname('lotto').asstring;
          parametri_extra_programma_chiamato[16] := tabella.fieldbyname('art_codice').asstring;
          parametri_extra_programma_chiamato[17] := tma_codice;
          parametri_extra_programma_chiamato[18] := 0;
          parametri_extra_programma_chiamato[19] := '';
          parametri_extra_programma_chiamato[20] := '';
          parametri_extra_programma_chiamato[21] := '';
          esegui_programma('GESORDP', 0, true);
          try
            progressivo_opt := parametri_extra_programma_chiamato[0];
          except
            progressivo_opt := 0;
          end;
          parametri_extra_programma_chiamato[0] := null;
        end
        else
        begin
          parametri_extra_programma_chiamato[0] := tabella.fieldbyname('progressivo').asinteger;
          parametri_extra_programma_chiamato[1] := tabella.fieldbyname('riga').asinteger;
          parametri_extra_programma_chiamato[2] := tabella.fieldbyname('art_codice').asstring;
          parametri_extra_programma_chiamato[3] := tabella.fieldbyname('tum_quantita_base').asfloat -
            tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat;
          parametri_extra_programma_chiamato[4] := tabella.fieldbyname('lotto').asstring;
          parametri_extra_programma_chiamato[5] := tma_codice;
          parametri_extra_programma_chiamato[6] := tabella.fieldbyname('formula').asstring;
          parametri_extra_programma_chiamato[7] := tabella.fieldbyname('cms_codice').asstring;
          parametri_extra_programma_chiamato[8] := tabella.fieldbyname('tipologia').asstring;
          parametri_extra_programma_chiamato[9] := tabella.fieldbyname('data_consegna').asdatetime;
          if tabella.fieldbyname('data_consegna').asdatetime = 0 then
          begin
            parametri_extra_programma_chiamato[9] := date;
          end;
          parametri_extra_programma_chiamato[10] := tabella.fieldbyname('cli_codice').asstring;
          esegui_programma('CREORDP', '', true);
          try
            progressivo_opt := parametri_extra_programma_chiamato[27];
          except
            progressivo_opt := 0;
          end;
          parametri_extra_programma_chiamato[27] := null;
        end;
      end
      else
      begin
        progressivo_opt := prodconf.genera_produzione_configurazioni(tabella.fieldbyname('progressivo').asinteger,
          tabella.fieldbyname('riga').asinteger, tabella.fieldbyname('configurazione').asinteger, tma_codice);
        if progressivo_opt <> 0 then
        begin
          esegui_programma('GESORDP', progressivo_opt, true);
        end;
      end;

      //  documenti collegati
      if progressivo_opt <> 0 then
      begin
        eredita_documenti_collegati('ordine', 'ordine produzione', tabella.fieldbyname('progressivo').asinteger, progressivo_opt);
      end;
    end;
  end;
end;

procedure tA31ASSAPPCL.formdestroy(sender: tobject);
begin
  inherited;

  freeandnil(dicint);

  cerca_prezzi.free;
  spesco.free;
  totven.free;
  freeandnil(prodconf);

  freeandnil(cms_codice_lista);
  freeandnil(cmt_codice_lista);
end;

procedure tA31ASSAPPCL.assegna_testo_query_codice;
begin
  testo_query_codice := copy(testo_query_codice, 1, pos('where', testo_query_codice) - 1);

  if cms_eseguito then
  begin
    testo_query_codice := testo_query_codice + ' ' +
      'inner join cms on cms.codice = ovr.cms_codice ' +
      'inner join cmt on cmt.cms_codice = ovr.cms_codice and cmt.tipologia = ovr.tipologia';
  end;

  testo_query_codice := testo_query_codice + ' ' +
    'where ovt.cli_codice = :cli_codice ' +
    'and ((ovr.data_consegna between :da_data_consegna and :a_data_consegna) or ovr.data_consegna is null) ' +
    'and ovr.quantita <> 0 ' +
    'and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')';

  if cms_eseguito then
  begin
    query_codice.sql.text := testo_query_codice;
    limcms_sql(query_codice, false, selezione_cms_codice, cms_codice_lista, cms_tcms_codice_lista,
      da_cms_codice, a_cms_codice, selezione_cms_responsabile, da_cms_responsabile, a_cms_responsabile,
      selezione_cms_data, selezione_cms_data_chiusura, selezione_cms_data_consegna,
      da_cms_data, a_cms_data, da_cms_data_chiusura, a_cms_data_chiusura, da_cms_data_consegna, a_cms_data_consegna, cms_chiusa,
      selezione_cms_tcms_codice, da_cms_tcms_codice, a_cms_tcms_codice,
      selezione_cmt_codice, da_cmt_codice, a_cmt_codice, cmt_situazione, cmt_codice_lista, true);
    testo_query_codice := query_codice.sql.text;
  end;
end;

procedure TA31ASSAPPCL.call_selcms;
begin
 esegui_selcms(selezione_cms_codice, da_cms_codice, a_cms_codice,
    selezione_cms_data, selezione_cms_data_chiusura, selezione_cms_data_consegna,
    selezione_cms_responsabile, da_cms_responsabile, a_cms_responsabile,
    da_cms_data, a_cms_data, da_cms_data_chiusura, a_cms_data_chiusura,
    da_cms_data_consegna, a_cms_data_consegna, cms_codice_lista, cms_tcms_codice_lista, cms_chiusa,
    selezione_cms_tcms_codice, da_cms_tcms_codice, a_cms_tcms_codice,
    selezione_cmt_codice, da_cmt_codice, a_cmt_codice, cms_codice_passato,
  cmt_codice_lista, cmt_situazione, tasto_escape_cms, cms_eseguito);
  if tasto_escape_cms then
  begin
    close;
    abort;
  end;
end;

procedure TA31ASSAPPCL.errore_commit_transazione;
begin
  arc.storna_numerazione(arc.arcdit, tipo_numerazione_evasione, testata.fieldbyname('serie_documento').asstring,
    testata.fieldbyname('data_documento').asdatetime, testata.fieldbyname('numero_documento').asinteger);
end;

procedure TA31ASSAPPCL.set_codice_archivio;
begin
  inherited;
  if screen.activecontrol = v_ind_codice then
  begin
    codice_archivio := vararrayof([v_cli_codice.text, v_ind_codice.text]);
  end;
end;

procedure TA31ASSAPPCL.get_codice_archivio;
begin
  if screen.activecontrol = v_ind_codice then
  begin
    v_ind_codice.text := codice_archivio[1];
  end;

  //visualizza_descrizioni;

  inherited;
end;

function TA31ASSAPPCL.esiste_rda_opt: boolean;
var
  stringa: string;
begin
  result := false;

  query_rda.close;
  query_rda.params[0].asfloat := tabella.fieldbyname('progressivo').asfloat;
  query_rda.params[1].asinteger := tabella.fieldbyname('riga').asinteger;
  query_rda.params[2].asfloat := tabella.fieldbyname('progressivo').asfloat;
  query_rda.params[3].asinteger := tabella.fieldbyname('riga').asinteger;
  query_rda.open;

  if not query_rda.isempty then
  begin
    messaggio(200, 'è già stata effettuata una richiesta d''acquisto per la riga ');
    result := true;
  end
  else
  begin
    query_esiste_opt.close;
    query_esiste_opt.params[0].asfloat := tabella.fieldbyname('progressivo').asfloat;
    query_esiste_opt.params[1].asinteger := tabella.fieldbyname('riga').asinteger;
    query_esiste_opt.open;
    if query_esiste_opt.fieldbyname('numero').asinteger <> 0 then
    begin
      if query_esiste_opt.fieldbyname('numero').asinteger = 1 then
      begin
        stringa := 'è già stato emesso 1 ordine di produzione ' + #13 +
          'per la quantità di ' + query_esiste_opt.fieldbyname('quantita').asstring;
      end
      else
      begin
        stringa := 'sono già stati emessi ' + query_esiste_opt.fieldbyname('numero').asstring +
          ' ordini di produzione ' + #13 +
          'per la quantità di ' + query_esiste_opt.fieldbyname('quantita').asstring;
      end;
      if messaggio(300, stringa + #13 + #13 + 'conferma l''operazione') <> 1 then
      begin
        result := true;
      end;
    end;
  end;
end;

procedure TA31ASSAPPCL.eredita_documenti_collegati(tipo_documento_origine, tipo_documento_collegato: string;
  progressivo_origine, progressivo_collegato: integer);
var
  dav, dav_nuovo: tmyquery_go;
begin
  if (copy(tipo_documento_origine, 1, 10) = 'preventivo') or (tipo_documento_origine = 'ordine') then
  begin

    dav := tmyquery_go.create(nil);
    dav.connection := arc.arcdit;
    dav_nuovo := tmyquery_go.create(nil);
    dav_nuovo.connection := arc.arcdit;

    if copy(tipo_documento_origine, 1, 10) = 'preventivo' then
    begin
      dav.sql.text := 'select * from pvd where progressivo = ' + inttostr(progressivo_origine);
    end
    else if tipo_documento_origine = 'ordine' then
    begin
      dav.sql.text := 'select * from ovd where progressivo = ' + inttostr(progressivo_origine);
    end;

    if tipo_documento_collegato = 'bolla' then
    begin
      dav_nuovo.sql.text := 'select * from bvd where progressivo = ' + inttostr(progressivo_collegato);
    end
    else if tipo_documento_collegato = 'corrispettivo' then
    begin
      dav_nuovo.sql.text := 'select * from cvd where progressivo = ' + inttostr(progressivo_collegato);
    end
    else if tipo_documento_collegato = 'ddt' then
    begin
      dav_nuovo.sql.text := 'select * from dvd where progressivo = ' + inttostr(progressivo_collegato);
    end
    else if tipo_documento_collegato = 'ordine' then
    begin
      dav_nuovo.sql.text := 'select * from ovd where progressivo = ' + inttostr(progressivo_collegato);
    end
    else if tipo_documento_collegato = 'ordine produzione' then
    begin
      dav_nuovo.sql.text := 'select * from opd where progressivo = ' + inttostr(progressivo_collegato);
    end
    else
    begin
      dav_nuovo.sql.text := 'select * from fvd where progressivo = ' + inttostr(progressivo_collegato);
    end;

    dav.open;
    dav_nuovo.open;

    while not dav.eof do
    begin
      if tipo_documento_collegato = 'ordine produzione' then
      begin
        if dav.fieldbyname('documento_produzione').asstring = 'si' then
        begin
          dav_nuovo.append;

          dav_nuovo.fieldbyname('progressivo').asinteger := progressivo_collegato;
          dav_nuovo.fieldbyname('riga').asinteger := dav.fieldbyname('riga').asinteger;
          dav_nuovo.fieldbyname('descrizione').asstring := dav.fieldbyname('descrizione').asstring;
          dav_nuovo.fieldbyname('pathname').asstring := dav.fieldbyname('pathname').asstring;

          dav_nuovo.post;
        end;

        dav.next;
      end
      else
      begin
        if dav.fieldbyname('documento_derivato').asstring = 'si' then
        begin
          dav_nuovo.append;

          dav_nuovo.fieldbyname('progressivo').asinteger := progressivo_collegato;
          dav_nuovo.fieldbyname('riga').asinteger := dav.fieldbyname('riga').asinteger;
          dav_nuovo.fieldbyname('descrizione').asstring := dav.fieldbyname('descrizione').asstring;
          dav_nuovo.fieldbyname('pathname').asstring := dav.fieldbyname('pathname').asstring;

          dav_nuovo.fieldbyname('documento_derivato').asstring := 'si';
          dav_nuovo.fieldbyname('documento_produzione').asstring := dav.fieldbyname('documento_produzione').asstring;

          dav_nuovo.post;
        end;

        dav.next;
      end;
    end;

    freeandnil(dav_nuovo);
    freeandnil(dav);
  end;
end;

procedure TA31ASSAPPCL.assegna_giorno;
var
  i, giorno: word;
  stringa: string;
begin
  inherited;

  stringa := '';
  if testata.fieldbyname('consegna_domenica').asstring = 'si' then
  begin
    stringa := stringa + '1';
  end
  else
  begin
    stringa := stringa + '0';
  end;

  if testata.fieldbyname('consegna_lunedi').asstring = 'si' then
  begin
    stringa := stringa + '1';
  end
  else
  begin
    stringa := stringa + '0';
  end;

  if testata.fieldbyname('consegna_martedi').asstring = 'si' then
  begin
    stringa := stringa + '1';
  end
  else
  begin
    stringa := stringa + '0';
  end;

  if testata.fieldbyname('consegna_mercoledi').asstring = 'si' then
  begin
    stringa := stringa + '1';
  end
  else
  begin
    stringa := stringa + '0';
  end;

  if testata.fieldbyname('consegna_giovedi').asstring = 'si' then
  begin
    stringa := stringa + '1';
  end
  else
  begin
    stringa := stringa + '0';
  end;

  if testata.fieldbyname('consegna_venerdi').asstring = 'si' then
  begin
    stringa := stringa + '1';
  end
  else
  begin
    stringa := stringa + '0';
  end;

  if testata.fieldbyname('consegna_sabato').asstring = 'si' then
  begin
    stringa := stringa + '1';
  end
  else
  begin
    stringa := stringa + '0';
  end;

  if stringa <> '0000000' then
  begin
    giorno := dayofweek(testata.fieldbyname('data_documento').asdatetime);

    i := 0;
    while giorno <> 0 do
    begin
      inc(i);
      inc(giorno);
      if giorno > 7 then
      begin
        giorno := 1;
      end;
      if stringa[giorno] = '1' then
      begin
        testata.fieldbyname('data_inizio_trasporto').asdatetime := testata.fieldbyname('data_documento').asdatetime + i;
        giorno := 0;
      end;
    end;
  end;
end;

//modifica
procedure TA31ASSAPPCL.assegna_lotti;
var
  lot_codice: string;
  query: tmyquery_go;
  ins_ltm: tmyquery_go;
  ins_ubm: tmyquery_go;
  qta_lotti: double;
begin
  apri_transazione();

  try
    try
      ins_ltm := tmyquery_go.create(nil);
      ins_ltm.Connection := arc.arcdit;
      ins_ltm.sql.add('insert into ltm(art_codice, lotto, tma_codice, data_registrazione, quantita, esistenza, documento_origine, doc_progressivo_origine, doc_riga_origine,');
      ins_ltm.sql.add('progressivo, quantita_entrate, quantita_uscite, cfg_tipo, cfg_codice, documento_origine_approntato, ');
      ins_ltm.sql.add('doc_progressivo_origine_approntato, doc_riga_origine_approntato )');
      ins_ltm.sql.add('values (:art_codice, :lotto, :tma_codice, :data_registrazione, :quantita, :esistenza, :documento_origine, :doc_progressivo_origine, :doc_riga_origine, ');
      ins_ltm.sql.add(':progressivo, :quantita_entrate, :quantita_uscite, :cfg_tipo, :cfg_codice, :documento_origine_approntato, ');
      ins_ltm.sql.add(':doc_progressivo_origine_approntato, :doc_riga_origine_approntato )');

      ins_ubm := tmyquery_go.create(nil);
      ins_ubm.Connection := arc.arcdit;

      query := tmyquery_go.create(nil);
      query.Connection := arc.arcdit;
      query.sql.add('select');
      query.sql.add('lot.art_codice,lot.lotto, lot.data_ora_creazione, lot.esistenza ');
      query.sql.add('from lot ');
      query.sql.add('where ');
      query.sql.add('lot.art_codice=:art_codice and ');
      query.sql.add('lot.chiuso=''no'' ');
      query.sql.add('order by lot.data_ora_creazione');
      query.parambyname('art_codice').asstring := query_codice.fieldbyname('art_codice').asstring;
      query.open;
      if query.eof then
      begin
        messaggio(000, 'Lotti per articolo [' + query_codice.fieldbyname('art_codice').asstring + ']');
        exit;
      end;

      while qta_lotti < query_codice.fieldbyname('quantita').asfloat do
      begin
        ins_ltm.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
        ins_ltm.parambyname('lotto').asstring := query.fieldbyname('lotto').asstring;
        ins_ltm.parambyname('tma_codice').asstring := query_codice.fieldbyname('tma_codice').asstring;
        ins_ltm.parambyname('data_registrazione').asdatetime := date;
        ins_ltm.parambyname('quantita').asinteger := query.fieldbyname('esistenza').asinteger;
        ins_ltm.parambyname('esistenza').asstring := 'approntato';
        ins_ltm.parambyname('documento_origine').asstring := 'ordine ven';
        ins_ltm.parambyname('doc_progressivo_origine').asinteger := query_codice.fieldbyname('progressivo').asinteger;
        ins_ltm.parambyname('doc_riga_origine').asinteger := query_codice.fieldbyname('riga').asinteger;
        ins_ltm.parambyname('progressivo').asinteger := arc.setta_valore_generatore(arc.arcdit, 'LTM_PROGRESSIVO');
        ins_ltm.parambyname('quantita_entrate').asinteger := 0;
        ins_ltm.parambyname('quantita_uscite').asinteger := 0;
        ins_ltm.parambyname('cfg_tipo').asstring := 'C';
        ins_ltm.parambyname('cfg_codice').asstring := query_codice.fieldbyname('cli_codice').asstring;
        ins_ltm.parambyname('documento_origine_approntato').asstring := 'ordine ven';
        ins_ltm.parambyname('doc_progressivo_origine_approntato').asinteger := query_codice.fieldbyname('progressivo').asinteger;
        ins_ltm.parambyname('doc_riga_origine_approntato').asinteger := query_codice.fieldbyname('riga').asinteger;
        ins_ltm.execsql;

        qta_lotti := qta_lotti + query.fieldbyname('esistenza').asfloat;
        query.next;
      end;
      commit_transazione();
    except
      on e: exception do
      begin
        messaggio(000, 'Errore transazione ' + E.message);
        arc.arcdit.Rollback;
      end
    end;

  finally
    chiudi_transazioni;

    query.free;
    ins_ltm.free;
    ins_ubm.free;
  end;
end;

procedure TA31ASSAPPCL.apri_lotti_ubm;
begin
  a31ubm.close;
  a31ubm.parambyname('progressivo').asinteger := query_codice.fieldbyname('progressivo').asinteger;
  a31ubm.parambyname('riga').asinteger := query_codice.fieldbyname('riga').asinteger;
  a31ubm.open;

  a31ltm.close;
  a31ltm.parambyname('progressivo').asinteger := query_codice.fieldbyname('progressivo').asinteger;
  a31ltm.parambyname('riga').asinteger := query_codice.fieldbyname('riga').asinteger;
  a31ltm.open;

end;

procedure TA31ASSAPPCL.esegui_approntato;
begin
  codice := vararrayof([tabella.fieldbyname('progressivo').asinteger, tabella.fieldbyname('riga').asinteger]);

  if query_codice.fieldbyname('disponibilita_approntato').asfloat <= 0 then
  begin
    if messaggio(300, 'non c''è disponibilità per l''approntamento' + #13 + 'conferma per approntare comunque tutta la quantità in ordine') = 1 then
    begin
      assegna_approntato(query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat, false);
    end;
  end
  else
  begin
    if query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat <
      query_codice.fieldbyname('disponibilita_approntato').asfloat then
    begin
      assegna_approntato(query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat, false);
    end
    else
    begin
      assegna_approntato(query_codice.fieldbyname('disponibilita_approntato').asfloat, false);
    end;
  end;
end;

procedure TA31ASSAPPCL.cerca_ordine(testo: string);
var
  col, progressivo, riga: integer;
  a31_ovr: tmyquery_go;
begin
  inherited;

  testo := strtran(testo, #13, '', true);
  col := pos('#', testo);
  if col > 0 then
  begin
    progressivo := strtoint(copy(testo, 1, col - 1));
    riga := strtoint(copy(testo, col + 1, length(testo)));

    a31_ovr := tmyquery_go.create(nil);
    a31_ovr.connection := arc.arcdit;
    a31_ovr.sql.add('select ovt.cli_codice, ovt.numero_documento, ovr.art_codice ');
    a31_ovr.sql.add('from ovr ');
    a31_ovr.sql.add('inner join ovt on ovt.progressivo=ovr.progressivo ');
    a31_ovr.sql.add('where ');
    a31_ovr.sql.add('ovr.progressivo=:progressivo and ');
    a31_ovr.sql.add('ovr.riga=:riga ');
    a31_ovr.parambyname('progressivo').asinteger := progressivo;
    a31_ovr.parambyname('riga').asinteger := riga;
    a31_ovr.open;

    if not a31_ovr.eof then
    begin
      v_numero_ordine.value := a31_ovr.fieldbyname('numero_documento').asfloat;
      v_art_codice.text := a31_ovr.fieldbyname('art_codice').asstring;
      v_cli_codice.text := a31_ovr.fieldbyname('cli_codice').asstring;

      esegui_query_codice;

      tabella.locate('progressivo;riga', vararrayof([progressivo, riga]), []);
      esegui_approntato;

      a31_ovr.close;
      a31_ovr.free;
    end;
  end;

end;
//modifica fine

initialization

registerclass(tA31ASSAPPCL);

end.
