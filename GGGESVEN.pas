//------------------------------------------------------------------
// griglia righe
//------------------------------------------------------------------
// aggiunto codice articolo cliente prima di codice articolo
//------------------------------------------------------------------
// 08.07.2019 GESTIONE CONTO LAVORO
//------------------------------------------------------------------
//
unit GGGESVEN;

interface

uses
  windows, messages, sysutils, variants, classes, graphics, controls, forms, dialogs, gggesdoc, db, query_go, myaccess,
  menus, zzcrea_documento_derivato, grids, dbgrids, rzdbgrid, stdctrls, mask, zzrma, comctrls, rztabs, toolwin,
  buttons, extctrls, dbctrls, dmarc, rzspnedt, ggformbase, zzcerca_prezzo, zzspesco, zznca, memds, idglobalprotocols,
  virtualtable, zzcalsca, zzprodconf, zzraee, zzqtamin, zztotven, zzprovv, zztipinv, zzvaldsb, zzprzinv, zzmovmag,
  zzconai, rzlabel, rzpanel, rzdbedit, rzlistvw, rztreevw, rzdbchk, rzradchk, rzbutton, rzsplit, rzcmbobx, ZZDICINT,
  rzprgres, rzshelldialogs, rzdbcmbo, raizeedit_go, rzedit, dbaccess, ZZCLASMS, ZZFABBISOGNO_DINAMICO, ZZCOLLI_CONFEZIONI,
  CREncryption, Vcl.WinXCtrls;

type
  thackdbgrid = class(trzdbgrid_go);

type
  TGESVEN = class(TGESDOC)
    Label_revisione: trzlabel;
    label4: trzlabel;
    v_tdo_codice: trzdbedit_go;
    v_numero_documento: trzdbnumericedit_go;
    label11: trzlabel;
    v_serie_documento: trzdbedit_go;
    tab_testata_magazzino: trztabsheet;
    label9: trzlabel;
    v_tmo_codice: trzdbedit_go;
    label3: trzlabel;
    v_tma_codice: trzdbedit_go;
    label7: trzlabel;
    v_tma_codice_collegato: trzdbedit_go;
    tab_testata_finanziario: trztabsheet;
    label20: trzlabel;
    v_codice_abi: trzdbedit_go;
    label21: trzlabel;
    v_codice_cab: trzdbedit_go;
    label42: trzlabel;
    v_tba_codice: trzdbedit_go;
    label22: trzlabel;
    v_tmo_codice_collegato: trzdbedit_go;
    tab_testata_spedizione: trztabsheet;
    label23: trzlabel;
    v_tsp_codice: trzdbedit_go;
    label25: trzlabel;
    v_tpo_codice: trzdbedit_go;
    label27: trzlabel;
    v_tst_codice: trzdbedit_go;
    label29: trzlabel;
    v_tab_codice: trzdbedit_go;
    label31: trzlabel;
    v_numero_colli: trzdbnumericedit_go;
    label32: trzlabel;
    v_volume: trzdbnumericedit_go;
    label33: trzlabel;
    v_peso_lordo: trzdbnumericedit_go;
    label34: trzlabel;
    v_peso_netto: trzdbnumericedit_go;
    tab_testata_destinazione: trztabsheet;
    label37: trzlabel;
    v_indirizzo: trzdbedit_go;
    label38: trzlabel;
    v_descrizione1: trzdbedit_go;
    label39: trzlabel;
    v_descrizione2: trzdbedit_go;
    label41: trzlabel;
    v_via: trzdbedit_go;
    label40: trzlabel;
    v_cap: trzdbedit_go;
    label43: trzlabel;
    v_citta: trzdbedit_go;
    label44: trzlabel;
    v_provincia: trzdbedit_go;
    tab_testata_riferimento: trztabsheet;
    label45: trzlabel;
    v_tag_codice: trzdbedit_go;
    label47: trzlabel;
    v_tiv_codice: trzdbedit_go;
    label49: trzlabel;
    v_riferimento: trzdbedit_go;
    label50: trzlabel;
    v_data_riferimento: trzdbdatetimeedit_go;
    label51: trzlabel;
    v_tcd_codice_apertura: trzdbedit_go;
    label53: trzlabel;
    v_tcd_codice_chiusura: trzdbedit_go;
    label55: trzlabel;
    v_tna_codice: trzdbedit_go;
    tab_testata_sconto_acconto_spese: trztabsheet;
    label19: trzlabel;
    v_art_codice: trzdbedit_go;
    v_l_quantita: trzlabel;
    v_quantita: trzdbnumericedit_go;
    v_l_prezzo: trzlabel;
    v_prezzo: trzdbnumericedit_go;
    v_l_tsm_codice_righe: trzlabel;
    v_tsm_codice_righe: trzdbedit_go;
    v_l_tipo_movimento: trzlabel;
    v_tipo_movimento: trzdbcombobox_go;
    v_l_importo: trzlabel;
    v_importo: trzdbnumericedit_go;
    v_l_colli: trzlabel;
    v_numero_colli_riga: trzdbnumericedit_go;
    v_l_confezioni: trzlabel;
    v_numero_confezioni: trzdbnumericedit_go;
    v_addebito_spese_fattura: trzdbcheckbox;
    esistenza_deposito: tmyquery_go;
    esistenza_deposito_ds: tmydatasource;
    esistenza_totale: tmyquery_go;
    esistenza_totale_ds: tmydatasource;
    label63: trzlabel;
    v_conto_corrente: trzdbedit_go;
    label64: trzlabel;
    v_cin: trzdbedit_go;
    label65: trzlabel;
    cmm: tmyquery_go;
    tdo: tmyquery_go;
    v_rettifica_intra: trzdbcheckbox;
    cli: tmyquery_go;
    ind: tmyquery_go;
    ltm: tmyquery_go;
    cfg: tmyquery_go;
    pat: tmyquery_go;
    art: tmyquery_go;
    testata_documento_evaso: tmyquery_go;
    label71: trzlabel;
    v_tna_codice_intra: trzdbedit_go;
    tool_evasione: ttoolbutton;
    riga_documento_evaso: tmyquery_go;
    saldo_acconto: tmyquery_go;
    cpv: tmyquery_go;
    duplica_righe: tmyquery_go;
    v_mese_rettifica_intra: trzdbnumericedit_go;
    v_trimestre_rettifica_intra: trzdbnumericedit_go;
    v_anno_rettifica_intra: trzdbnumericedit_go;
    label28: trzlabel;
    v_saldo_acconto: trzdbcombobox_go;
    label26: trzlabel;
    v_iban: trzdbedit_go;
    label30: trzlabel;
    v_bic: trzdbedit_go;
    frn: tmyquery_go;
    mmt: tmyquery_go;
    mmr: tmyquery_go;
    label1: trzlabel;
    v_data_consegna_righe: trzdbdatetimeedit_go;
    label72: trzlabel;
    v_descrizione1_riga: trzdbedit_go;
    v_descrizione2_riga: trzdbedit_go;
    lcr: tmyquery_go;
    label58: trzlabel;
    v_tsm_codice_sconto: trzdbedit_go;
    groupbox3: tgroupbox;
    label48: trzlabel;
    v_importo_spese_extra: trzdbnumericedit_go;
    label61: trzlabel;
    v_importo_spese_incasso: trzdbnumericedit_go;
    v_GroupBox_professionisti: TGroupBox;
    label52: trzlabel;
    v_percentuale_cassa_professionist: trzdbnumericedit_go;
    v_importo_cassa_professionisti: trzdbnumericedit_go;
    v_fattura_professionisti: trzdbcheckbox;
    label59: trzlabel;
    v_importo_sconto: trzdbnumericedit_go;
    label36: trzlabel;
    v_tpe_codice: trzdbedit_go;
    label70: trzlabel;
    v_importo_ritenuta: trzdbnumericedit_go;
    v_spese_manuali: trzdbcheckbox;
    v_ritenuta_manuale: trzdbcheckbox;
    panel5: trzpanel;
    label67: trzlabel;
    label68: trzlabel;
    v_importo_sconto_finale: trzdbnumericedit_go;
    v_importo_sconto_cassa: trzdbnumericedit_go;
    label60: trzlabel;
    v_importo_spese_trasporto: trzdbnumericedit_go;
    label62: trzlabel;
    v_importo_bollo: trzdbnumericedit_go;
    tool_richiesta_acquisto: ttoolbutton;
    label46: trzlabel;
    v_nostro_riferimento: trzdbedit_go;
    v_tsm_codice_art: trzdbedit_go;
    totale_colli: tmyquery_go;
    totalizza_quantita: tmyquery_go;
    label13: trzlabel;
    v_data_documento: trzdbdatetimeedit_go;
    label10: trzlabel;
    label74: trzlabel;
    v_tcc_codice: trzdbedit_go;
    query_opt: tmyquery_go;
    label76: trzlabel;
    art_preventivi_ordini: tmyquery_go;
    label75: trzlabel;
    v_data_inizio_conteggio: trzdbdatetimeedit_go;
    label35: trzlabel;
    v_data_inizio_trasporto: trzdbdatetimeedit_go;
    v_ora_inizio_trasporto: trzdbnumericedit_go;
    v_minuto_inizio_trasporto: trzdbnumericedit_go;
    label77: trzlabel;
    v_causale_trasporto: trzdbedit_go;
    cnt: tmyquery_go;
    cnf: tmyquery_go;
    opt_configurazione: tmyquery_go;
    tool_documenti_allegati: ttoolbutton;
    v_data_fine_competenza: trzdbdatetimeedit_go;
    label79: trzlabel;
    v_data_inizio_competenza: trzdbdatetimeedit_go;
    msg: tmyquery_go;
    spd: tmyquery_go;
    controllo_documenti_evasi: tmyquery_go;
    v_esistenza: trzrapidfirebutton;
    v_scadenziario_manuale: trzdbcheckbox;
    totalizza_margine: tmyquery_go;
    cas: tmyquery_go;
    lct: tmyquery_go;
    label78: trzlabel;
    v_numero_confezioni_totali: trzdbnumericedit_go;
    query_referenze_attive: tmyquery_go;
    query_sct: tmyquery_go;
    query_totalizza: tmyquery_go;
    query_abilita_rda: tmyquery_go;
    prv: tmyquery_go;
    label14: trzlabel;
    v_importo_incassato: trzdbnumericedit_go;
    importo_ordinato: tmyquery_go;
    equ: tmyquery_go;
    query_addebito: tmyquery_go;
    ors: tmyquery_go;
    rda: tmyquery_go;
    dav: tmyquery_go;
    oar: tmyquery_go;
    opt: tmyquery_go;
    tool_ordine_produzione: ttoolbutton;
    testata: tmyquery_go;
    righe: tmyquery_go;
    tr0: tmyquery_go;
    v_l_cli_codice: trzlabel;
    v_cli_codice: trzdbedit_go;
    panel9: trzpanel;
    v_l_saldo_cliente: trzlabel;
    v_saldo_cliente: trznumericedit_go;
    cli_ds: tmydatasource;
    v_cli_descrizione1: trzdbeditdescrizione_go;
    tdo_ds: tmydatasource;
    v_tdo_descrizione: trzdbeditdescrizione_go;
    tlv: tmyquery_go;
    tlv_ds: tmydatasource;
    label6: trzlabel;
    label2: trzlabel;
    label5: trzlabel;
    label15: trzlabel;
    label16: trzlabel;
    label69: trzlabel;
    label57: trzlabel;
    label8: trzlabel;
    v_tlv_codice: trzdbedit_go;
    v_tpa_codice: trzdbedit_go;
    v_tsm_codice: trzdbedit_go;
    v_tva_codice: trzdbedit_go;
    v_cambio: trzdbnumericedit_go;
    panel7: trzpanel;
    dbcheckbox1: trzdbcheckbox;
    v_data_consegna: trzdbdatetimeedit_go;
    v_data_validita: trzdbdatetimeedit_go;
    v_non_fatturare: trzdbcheckbox;
    v_oscillazione_cambio: trzdbcheckbox;
    panel1: trzpanel;
    v_l_esercizio: trzlabel;
    v_iva_sospensione: trzdbcheckbox;
    v_intra: trzdbcheckbox;
    v_esercizio: trzdbedit_go;
    v_fattura_pro_forma: trzdbcheckbox;
    v_tlv_descrizione: trzdbeditdescrizione_go;
    tpa: tmyquery_go;
    tpa_ds: tmydatasource;
    v_tpa_descrizione: trzdbeditdescrizione_go;
    tva: tmyquery_go;
    tva_ds: tmydatasource;
    v_tva_descrizione: trzdbeditdescrizione_go;
    t_tsm_descrizione: trzdbeditdescrizione_go;
    tsm: tmyquery_go;
    tsm_ds: tmydatasource;
    query_rda: tmyquery_go;
    cancella_iva: tmyquery_go;
    v_tba_descrizione: trzdbeditdescrizione_go;
    tba: tmyquery_go;
    tba_ds: tmydatasource;
    tna: tmyquery_go;
    tna_ds: tmydatasource;
    v_tna_descrizione: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go3: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go4: trzdbeditdescrizione_go;
    tmo: tmyquery_go;
    tmo_ds: tmydatasource;
    tma: tmyquery_go;
    tma_ds: tmydatasource;
    tmo_collegato: tmyquery_go;
    tmo_collegato_ds: tmydatasource;
    tma_collegato: tmyquery_go;
    tma_collegato_ds: tmydatasource;
    art_ds: tmydatasource;
    rzdbeditdescrizione_go6: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go7: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go8: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go9: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go10: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go11: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go12: trzdbeditdescrizione_go;
    tag: tmyquery_go;
    tag_ds: tmydatasource;
    tiv: tmyquery_go;
    tiv_ds: tmydatasource;
    tcc: tmyquery_go;
    tcc_ds: tmydatasource;
    tcd_apertura: tmyquery_go;
    tcd_apertura_ds: tmydatasource;
    tcd_chiusura: tmyquery_go;
    tcd_chiusura_ds: tmydatasource;
    tna_intra: tmyquery_go;
    tna_intra_ds: tmydatasource;
    rzdbeditdescrizione_go13: trzdbeditdescrizione_go;
    tsp: tmyquery_go;
    tsp_ds: tmydatasource;
    tst: tmyquery_go;
    tst_ds: tmydatasource;
    tpo: tmyquery_go;
    tpo_ds: tmydatasource;
    tab: tmyquery_go;
    tab_ds: tmydatasource;
    rzdbeditdescrizione_go14: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go15: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go16: trzdbeditdescrizione_go;
    tsm_sconto: tmyquery_go;
    tsm_sconto_ds: tmydatasource;
    tpe: tmyquery_go;
    tpe_ds: tmydatasource;
    rzdbeditdescrizione_go17: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go18: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go19: trzdbeditdescrizione_go;
    tsm_righe: tmyquery_go;
    tsm_righe_ds: tmydatasource;
    rzdbeditdescrizione_go20: trzdbeditdescrizione_go;
    tsm_art: tmyquery_go;
    tsm_art_ds: tmydatasource;
    label17: trzlabel;
    v_stampato: trzdbedit_go;
    rzdbeditdescrizione_go21: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go22: trzdbeditdescrizione_go;
    abi: tmyquery_go;
    abi_ds: tmydatasource;
    cab: tmyquery_go;
    cab_ds: tmydatasource;
    tmo_01: tmyquery_go;
    v_competenza_anno_precedente: trzdbcheckbox;
    art_01: tmyquery_go;
    utn: tmyquery_go;
    v_no_fattura: trzdbcheckbox;
    tool_sequenza: ttoolbutton;
    v_giorno: trzedit_go;
    label81: trzlabel;
    v_contatto_commerciale: trzdbedit_go;
    v_stampa_solo_destinazione: trzdbcheckbox;
    query_esiste_opt: tmyquery_go;
    art_barcode: tmyquery_go;
    lot: tmyquery_go;
    label82: trzlabel;
    v_cms_codice: trzdbedit_go;
    rzdbeditdescrizione_go23: trzdbeditdescrizione_go;
    label83: trzlabel;
    v_tipologia: trzdbedit_go;
    rzdbeditdescrizione_go24: trzdbeditdescrizione_go;
    cms: tmyquery_go;
    cms_ds: tmydatasource;
    cmt: tmyquery_go;
    cmt_ds: tmydatasource;
    neg: tmyquery_go;
    cem: tmyquery_go;
    query_cem: tmyquery_go;
    cor: tmyquery_go;
    fatcor: tmyquery_go;
    label84: trzlabel;
    v_codice_contratto: trzdbedit_go;
    cot: tmyquery_go;
    cod: tmyquery_go;
    corsi: tmyquery_go;
    supero: tmyquery_go;
    kit: tmyquery_go;
    esistenza_principale: tmyquery_go;
    esistenza_principale_ds: tmydatasource;
    sal: tmyquery_go;
    label87: trzlabel;
    v_tag_codice_ca: trzdbedit_go;
    rzdbeditdescrizione_go25: trzdbeditdescrizione_go;
    tag_ca_ds: tmydatasource;
    tag_ca: tmyquery_go;
    eseguita_evasione: tmyquery_go;
    label24: trzlabel;
    rzdbeditdescrizione_go5: trzdbeditdescrizione_go;
    label88: trzlabel;
    label89: trzlabel;
    v_importo_sconto_righe: trzdbnumericedit_go;
    v_tum_codice: trzdbedit_go;
    bvr_dvr: tmyquery_go;
    tum: tmyquery_go;
    gen: tmyquery_go;
    v_l_descrizione_primanota: trzlabel;
    v_descrizione_primanota: trzdbedit_go;
    frn_rda: tmyquery_go;
    v_totale_progressivo: trzdbcheckbox;
    cnf_totale: tmyquery_go;
    tab_testata_note: trztabsheet;
    v_note: trzdbmemo_go;
    accessori_equivalenti: tmyquery_go;
    v_varia_tsm_codice: trzbitbtn;
    v_varia_tsm_codice_art: trzbitbtn;
    v_revisione: trzdbnumericedit_go;
    label54: trzlabel;
    v_tipo_appalto: trzdbcombobox_go;
    label56: trzlabel;
    v_e_mail_conoscenza: trzdbedit_go;
    v_note_righe: trzdbmemo_go;
    v_scadenze: trzrapidfirebutton;
    nom: tmyquery_go;
    art_doppi: tmyquery_go;
    tool_gesccf: ttoolbutton;
    ccf: tmyquery_go;
    tool_invia_excel: ttoolbutton;
    tabella_virtuale: tvirtualtable;
    tabella_virtualedata_documento: tdatefield;
    tabella_virtualenumero_documento: tfloatfield;
    tabella_virtualenostro_codice: tstringfield;
    tabella_virtualedescrizione: tstringfield;
    tabella_virtualevostro_codice: tstringfield;
    tabella_virtualeum: tstringfield;
    tabella_virtualequantita: tfloatfield;
    tabella_virtualeprezzo: tfloatfield;
    tabella_virtualepercentuale_sconto_01: tfloatfield;
    tabella_virtualepercentuale_sconto_02: tfloatfield;
    tabella_virtualeimporto_sconto: tfloatfield;
    tabella_virtuale_ds: tmydatasource;
    label91: trzlabel;
    v_codice_cup: trzdbedit_go;
    label92: trzlabel;
    v_codice_cig: trzdbedit_go;
    label93: trzlabel;
    v_via_01: trzdbedit_go;
    utntdo: tmyquery_go;
    tab_testata_analitica: trztabsheet;
    label95: trzlabel;
    v_cen_codice: trzdbedit_go;
    label96: trzlabel;
    v_tvc_codice: trzdbedit_go;
    rzdbeditdescrizione_go26: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go27: trzdbeditdescrizione_go;
    cen: tmyquery_go;
    cen_ds: tmydatasource;
    tvc: tmyquery_go;
    tvc_ds: tmydatasource;
    spese_trasporto_giornaliere: tmyquery_go;
    iva_diversa: tmyquery_go;
    iva_diversa_evadi: tmyquery_go;
    ngt: tmyquery_go;
    box_esistenza_disponibilita: TGroupBox;
    v_esistenza_deposito: trzdbnumericedit_go;
    v_esistenza_totale: trzdbnumericedit_go;
    v_esistenza_principale: trzdbnumericedit_go;
    groupbox4: tgroupbox;
    rxdbcalcedit1: trzdbnumericedit_go;
    rxdbcalcedit2: trzdbnumericedit_go;
    rxdbcalcedit3: trzdbnumericedit_go;
    v_spese_manuali_bollo: trzdbcheckbox;
    v_spese_manuali_trasporto: trzdbcheckbox;
    v_spese_manuali_incasso: trzdbcheckbox;
    label90: trzlabel;
    v_consegna_bartolini: trzdbcombobox_go;
    artp: tmyquery_go;
    v_chiusura_commessa: trzdbcheckbox;
    v_chiusura_sottocommessa: trzdbcheckbox;
    art_quantita: tmyquery_go;
    groupbox6: tgroupbox;
    v_analitica_sconto_cassa: trzrapidfirebutton;
    v_analitica_sconto_finale: trzrapidfirebutton;
    v_analitica_spese_trasporto: trzrapidfirebutton;
    v_analitica_spese_bollo: trzrapidfirebutton;
    v_analitica_spese_extra: trzrapidfirebutton;
    v_analitica_spese_incasso: trzrapidfirebutton;
    rmr: tmyquery_go;
    v_gestione_alimentari: trzdbcheckbox;
    v_stampa_prezzo: TRzDBCheckBox;
    v_art_codice_barcode: TRzEdit_go;
    v_soggetto_addebito_enasarco: TRzDBCheckBox;
    RzLabel1: TRzLabel;
    v_iva_bloccata: TRzDBCheckBox;
    tve: TMyQuery_go;
    RzLabel2: TRzLabel;
    v_punto_vendita: TRzDBEdit_go;
    pvvr: TMyQuery_go;
    RzLabel3: TRzLabel;
    v_importo_enasarco: TRzDBNumericEdit_go;
    revisione_conai: TMyQuery_go;
    RzLabel10: TRzLabel;
    v_tconai_codice: TRzDBEdit_go;
    RzDBEditDescrizione_go39: TRzDBEditDescrizione_go;
    tconai_01: TMyQuery_go;
    tconai_01_ds: TMyDataSource;
    v_no_conai: TRzDBCheckBox;
    RzLabel4: TRzLabel;
    v_tipo_imballaggio: TRzDBCombobox_go;
    esistenza_cls: TMyQuery_go;
    tdocli: TMyQuery_go;
    v_bloccato: TRzRapidFireButton;
    v_totalizza: TRzRapidFireButton;
    v_evasione_documento: TRzRapidFireButton;
    v_consolida: TRzRapidFireButton;
    v_analitica: TRzRapidFireButton;
    v_commesse: TRzRapidFireButton;
    v_conto_terzi: TRzRapidFireButton;
    v_lotti: TRzRapidFireButton;
    v_accessori: TRzRapidFireButton;
    v_distinta_base: TRzRapidFireButton;
    v_lettore: TRzRapidFireButton;
    v_gestione_collegato: TRzRapidFireButton;
    v_evadi_riga_documento: TRzRapidFireButton;
    v_annulla_riga_documento: TRzRapidFireButton;
    v_situazione_riga_documento: TRzDBEdit_go;
    Label18: TRzLabel;
    v_situazione: TRzDBEdit_go;
    v_l_accettato: TRzLabel;
    v_accettato: TRzDBEdit_go;
    v_pagper: TRzRapidFireButton;
    v_scheda_trasporto: TRzRapidFireButton;
    v_revisione_documento: TRzRapidFireButton;
    v_log_revisione: TRzRapidFireButton;
    v_packing_list: TRzRapidFireButton;
    v_sda: TRzRapidFireButton;
    v_creast: TRzRapidFireButton;
    v_evadere: TRzRapidFireButton;
    v_tutte: TRzRapidFireButton;
    v_annulla_rda: TRzRapidFireButton;
    v_acconto: TRzRapidFireButton;
    v_non_conformita: TRzRapidFireButton;
    RzLabel5: TRzLabel;
    v_annulla_documento: TRzRapidFireButton;
    ind_01: TMyQuery_go;
    v_documenti_acquisto: TRzRapidFireButton;
    v_formula: TRzRapidFireButton;
    prvm: TMyQuery_go;
    v_etiart: TRzRapidFireButton;
    v_configurazione: TRzRapidFireButton;
    RzLabel8: TRzLabel;
    v_dati_bancari: trzdbmemo_go;
    tab_pannello_bottoni_nuovi_storni: TRzTabSheet;
    v_storno_evasione: TRzRapidFireButton;
    v_storno_consolidamento: TRzRapidFireButton;
    v_storno_differite: TRzRapidFireButton;
    v_assappcl: TRzRapidFireButton;
    RzLabel20: TRzLabel;
    v_cli_codice_fatturazione: trzdbedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    cli_fatturazione: TMyQuery_go;
    cli_fatturazione_ds: TMyDataSource;
    trzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    RzLabel9: TRzLabel;
    v_modifica_provvigioni: TRzRapidFireButton;
    RzLabel11: TRzLabel;
    v_ind_codice_fatturazione: trzdbedit_go;
    trzdbeditdescrizione_go3: trzdbeditdescrizione_go;
    ind_fatturazione: TMyQuery_go;
    ind_fatturazione_ds: TMyDataSource;
    v_chiusura_documento_origine: TRzDBCheckBox;
    v_chiudi_documento: TRzRapidFireButton;
    v_ricevuto_certificazione: TRzDBCheckBox;
    RzLabel12: TRzLabel;
    v_data_certificazione: trzdbdatetimeedit_go;
    cnl: TMyQuery_go;
    v_cmr: TRzRapidFireButton;
    v_ubicazioni: TRzRapidFireButton;
    ubm: TMyQuery_go;
    v_preventivo_cliente: TRzRapidFireButton;
    GroupBox_consegna: TGroupBox;
    v_consegna_lunedi: TRzDBCheckBox;
    v_consegna_martedi: TRzDBCheckBox;
    v_consegna_mercoledi: TRzDBCheckBox;
    v_consegna_giovedi: TRzDBCheckBox;
    v_consegna_venerdi: TRzDBCheckBox;
    v_consegna_sabato: TRzDBCheckBox;
    v_consegna_domenica: TRzDBCheckBox;
    v_documenti_collegati: TRzRapidFireButton;
    v_provvigioni_multilivello: TRzRapidFireButton;
    RzLabel13: TRzLabel;
    v_committente: trzdbedit_go;
    RzLabel14: TRzLabel;
    v_giorni_consegna: trzdbnumericedit_go;
    v_situazione_acconto: TRzRapidFireButton;
    v_artp: TRzRapidFireButton;
    RzLabel7: TRzLabel;
    v_importo_acconto: trzdbnumericedit_go;
    v_versato_acconto: TRzDBCheckBox;
    query_sct_qc: TMyQuery_go;
    tdo_conto_vendita: TMyQuery_go;
    v_contratto: TRzDBCheckBox;
    fido_scadenziario: TMyQuery_go;
    tool_eticlive: TToolButton;

    RzLabel15: TRzLabel;
    v_lti_progressivo: trzdbnumericedit_go;
    v_cfg_tipo: trzedit_go;
    lti: TMyQuery_go;
    v_stampa_immagine: TRzDBCheckBox;
    camdoc: TMyQuery_go;
    v_l_quantita_residua: TRzLabel;
    v_quantita_residua: trzdbnumericedit_go;
    RzLabel16: TRzLabel;
    v_tma_codice_righe: trzdbedit_go;
    trzdbeditdescrizione_go4: trzdbeditdescrizione_go;
    RzLabel17: TRzLabel;
    v_tiv_codice_righe: trzdbedit_go;
    trzdbeditdescrizione_go5: trzdbeditdescrizione_go;
    RzLabel18: TRzLabel;
    v_gen_codice_righe: trzdbedit_go;
    trzdbeditdescrizione_go6: trzdbeditdescrizione_go;
    tma_righe: TMyQuery_go;
    tma_righe_ds: TMyDataSource;
    tiv_righe: TMyQuery_go;
    tiv_righe_ds: TMyDataSource;
    gen_righe: TMyQuery_go;
    gen_righe_ds: TMyDataSource;
    iat: TMyQuery_go;
    v_revisione_precedente: TRzRapidFireButton;
    v_crea_ast: TRzRapidFireButton;
    v_tse_colore_priorita: trzedit_go;
    RzLabel19: TRzLabel;
    v_situazione_sdi: trzdbedit_go;
    RzLabel21: TRzLabel;
    v_no_sdi: TRzDBCheckBox;
    tool_ordine_produzione_globale: TToolButton;
    v_incasso_saldo: TRzDBCheckBox;
    v_storno_sdi: TRzRapidFireButton;
    query_dit: TMyQuery_go;
    fvt: TMyQuery_go;
    v_fatture_collegate: TRzRapidFireButton;
    v_tag_fe_righe: TRzRapidFireButton;
    v_tag_fe_testata: TRzRapidFireButton;
    v_data_competenza_iva: trzdbdatetimeedit_go;
    RzLabel6: TRzLabel;
    v_setta_esito_sdi: TRzRapidFireButton;
    fvt_esito_sdi: TMyQuery_go;
    v_reso_scontrino: TRzRapidFireButton;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    RzPanel9: TRzPanel;
    v_no_impegnato: TRzDBCheckBox;
    v_no_magazzino: TRzDBCheckBox;
    popupmenu_etichette: TPopupMenu;
    etichettearticoli1: TMenuItem;
    etichettedocumento1: TMenuItem;
    pannello_esito_sdi: TRzPanel;
    v_codice_esito_sdi: trzdbedit_go;
    RzRapidFireButton1: TRzRapidFireButton;
    RzRapidFireButton2: TRzRapidFireButton;
    dim: TMyQuery_go;
    v_percentuale_ecobonus: trzdbnumericedit_go;
    RzLabel22: TRzLabel;
    tool_orda: TToolButton;
    v_fvtddt: TRzRapidFireButton;
    Label86: TRzLabel;
    v_IMPORTO_TOTALE_IMPONIBILE: trzdbnumericedit_go;
    Label85: TRzLabel;
    v_IMPORTO_TOTALE: trzdbnumericedit_go;

    procedure pannello_campienter(sender: tobject);
    procedure v_tdo_codiceenter(sender: tobject);
    procedure v_numero_documentoenter(sender: tobject);
    procedure v_data_documentoenter(sender: tobject);
    procedure v_cli_codiceenter(sender: tobject);
    procedure pannello_codiceenter(sender: tobject);
    procedure formcreate(sender: tobject);
    procedure v_tdo_codiceexit(sender: tobject);
    procedure v_tmo_codiceexit(sender: tobject);
    procedure v_tma_codiceexit(sender: tobject);
    procedure v_tma_codice_collegatoexit(sender: tobject);
    procedure v_numero_documentoexit(sender: tobject);
    procedure v_data_documentoexit(sender: tobject);
    procedure v_cli_codiceexit(sender: tobject);
    procedure v_tlv_codiceexit(sender: tobject);
    procedure v_tpa_codiceexit(sender: tobject);
    procedure v_tsm_codiceexit(sender: tobject);
    procedure v_tva_codiceexit(sender: tobject);
    procedure v_codice_cabenter(sender: tobject);
    procedure v_tba_codiceexit(sender: tobject);
    procedure v_codice_abiexit(sender: tobject);
    procedure v_codice_cabexit(sender: tobject);
    procedure v_tmo_codice_collegatoexit(sender: tobject);
    procedure v_indirizzoenter(sender: tobject);
    procedure v_indirizzoexit(sender: tobject);
    procedure v_tna_codiceexit(sender: tobject);
    procedure v_tag_codiceexit(sender: tobject);
    procedure v_tiv_codiceexit(sender: tobject);
    procedure v_tcd_codice_aperturaexit(sender: tobject);
    procedure v_tcd_codice_chiusuraexit(sender: tobject);
    procedure v_tsp_codiceexit(sender: tobject);
    procedure v_tst_codiceexit(sender: tobject);
    procedure v_tpo_codiceexit(sender: tobject);
    procedure v_tab_codiceexit(sender: tobject);
    procedure v_griglia_righeexit(sender: tobject);
    procedure v_griglia_righeenter(sender: tobject);
    procedure v_tsm_codice_scontoexit(sender: tobject);
    procedure pannello_righeenter(sender: tobject);
    procedure v_prezzoenter(sender: tobject);
    procedure v_art_codiceexit(sender: tobject);
    procedure v_numero_confezioniexit(sender: tobject);
    procedure v_quantitaexit(sender: tobject);
    procedure v_prezzoexit(sender: tobject);
    procedure v_tsm_codice_righeexit(sender: tobject);
    procedure v_importoexit(sender: tobject);
    procedure v_cambioexit(sender: tobject);
    procedure pannello_codiceexit(sender: tobject);
    procedure v_ora_inizio_trasportoexit(sender: tobject);
    procedure v_minuto_inizio_trasportoexit(sender: tobject);
    procedure formshow(sender: tobject);
    procedure v_gestione_collegatoclick(sender: tobject);
    procedure v_commesseclick(sender: tobject);
    procedure v_lotticlick(sender: tobject);
    procedure v_tna_codice_intraexit(sender: tobject);
    procedure v_griglia_righekeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure tool_evasioneclick(sender: tobject);
    procedure pannello_campiexit(sender: tobject);
    procedure v_numero_colli_rigaexit(sender: tobject);
    procedure v_totalizzaclick(sender: tobject);
    procedure v_progressivoenter(sender: tobject);
    procedure v_tipo_movimentoexit(sender: tobject);
    procedure v_importo_ritenutaexit(sender: tobject);
    procedure v_art_codicechange(sender: tobject);
    procedure v_rettifica_intraexit(sender: tobject);
    procedure v_rettifica_intraclick(sender: tobject);
    procedure v_mese_rettifica_intraexit(sender: tobject);
    procedure v_trimestre_rettifica_intraexit(sender: tobject);
    procedure v_anno_rettifica_intraexit(sender: tobject);
    procedure v_esistenza_depositochange(sender: tobject);
    procedure v_esistenza_totalechange(sender: tobject);
    procedure pannello_righeexit(sender: tobject);
    procedure v_saldo_accontoexit(sender: tobject);
    procedure v_prezzokeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure v_importo_scontoexit(sender: tobject);
    procedure v_conto_correnteexit(sender: tobject);
    procedure v_cli_codicekeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure pannello_griglia_righeexit(sender: tobject);
    procedure v_conto_terziclick(sender: tobject);
    procedure v_accessoriclick(sender: tobject);
    procedure v_codice_abikeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure v_art_codicekeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure v_distinta_baseclick(sender: tobject);
    procedure v_descrizione1exit(sender: tobject);
    procedure v_viaexit(sender: tobject);
    procedure v_cittaexit(sender: tobject);
    procedure v_addebito_spese_fatturaclick(sender: tobject);
    procedure v_addebito_spese_fatturaexit(sender: tobject);
    procedure v_spese_manualiclick(sender: tobject);
    procedure v_spese_manualiexit(sender: tobject);
    procedure v_fattura_pro_formaexit(sender: tobject);
    procedure v_situazionechange(sender: tobject);
    procedure v_fattura_professionisticlick(sender: tobject);
    procedure v_fattura_professionistiexit(sender: tobject);
    procedure v_tpe_codiceexit(sender: tobject);
    procedure tool_richiesta_acquistoclick(sender: tobject);
    procedure v_annulla_riga_documentoclick(sender: tobject);
    procedure v_tva_codicechange(sender: tobject);
    procedure tabella_dsstatechange(sender: tobject);
    procedure v_tsm_codice_artexit(sender: tobject);
    procedure v_provinciaexit(sender: tobject);
    procedure v_data_inizio_trasportokeydown(sender: tobject;
      var key: word; shift: tshiftstate);
    procedure v_evadi_riga_documentoclick(sender: tobject);
    procedure v_evasione_documentoclick(sender: tobject);
    procedure v_tcc_codiceexit(sender: tobject);
    procedure v_configurazioneclick(sender: tobject);

    procedure tool_documenti_allegaticlick(sender: tobject);
    procedure v_esistenzaclick(sender: tobject);
    procedure v_consolidaclick(sender: tobject);
    procedure formkeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure v_annulla_rdaclick(sender: tobject);
    procedure v_lettoreclick(sender: tobject);
    procedure v_annulla_documentoclick(sender: tobject);
    procedure formdestroy(sender: tobject);
    procedure tool_ordine_produzioneclick(sender: tobject);
    procedure v_sdaclick(sender: tobject);
    procedure v_packing_listclick(sender: tobject);
    procedure tool_inserisce_righeclick(sender: tobject);
    procedure pannello_griglia_righeenter(sender: tobject);
    procedure tool_f2click(sender: tobject);
    procedure v_ibanexit(sender: tobject);
    procedure v_art_codiceenter(sender: tobject);
    procedure v_tmo_codiceenter(sender: tobject);
    procedure v_tpa_codiceenter(sender: tobject);
    procedure v_tva_codiceenter(sender: tobject);
    procedure v_tlv_codiceenter(sender: tobject);
    procedure v_tpo_codiceenter(sender: tobject);
    procedure v_numero_confezionienter(sender: tobject);
    procedure v_quantitaenter(sender: tobject);
    procedure v_tsm_codice_righeenter(sender: tobject);
    procedure v_importoenter(sender: tobject);
    procedure v_numero_colli_rigaenter(sender: tobject);
    procedure v_tipo_movimentoenter(sender: tobject);
    procedure v_saldo_accontoenter(sender: tobject);
    procedure v_tsm_codice_artenter(sender: tobject);
    procedure v_documenti_acquistoclick(sender: tobject);
    procedure tool_sequenzaclick(sender: tobject);
    procedure v_data_documentochange(sender: tobject);
    procedure v_griglia_righedrawcolumncell(sender: tobject;
      const rect: trect; datacol: integer; column: tcolumn;
      state: tgriddrawstate);
    procedure v_bloccatoclick(sender: tobject);
    procedure v_cms_codiceexit(sender: tobject);
    procedure v_tipologiaenter(sender: tobject);
    procedure v_tipologiaexit(sender: tobject);
    procedure v_evadereclick(sender: tobject);
    procedure v_tutteclick(sender: tobject);
    procedure v_cms_codiceenter(sender: tobject);
    procedure assegna_filtro_evadere;
    procedure v_analiticaclick(sender: tobject);
    procedure v_codice_contrattoexit(sender: tobject);
    procedure tool_f4click(sender: tobject);
    procedure v_formulaclick(sender: tobject);
    procedure v_scheda_trasportoclick(sender: tobject);
    procedure v_esistenza_principalechange(sender: tobject);
    procedure v_tag_codice_caexit(sender: tobject);
    procedure v_importo_sconto_righeenter(sender: tobject);
    procedure v_importo_sconto_righeexit(sender: tobject);
    procedure v_tum_codiceexit(sender: tobject);
    procedure v_tum_codiceenter(sender: tobject);
    procedure v_varia_tsm_codiceclick(sender: tobject);
    procedure v_varia_tsm_codice_artclick(sender: tobject);
    procedure v_pagperclick(sender: tobject);
    procedure v_revisione_documentoclick(sender: tobject);
    procedure v_log_revisioneclick(sender: tobject);
    procedure v_causale_trasportoenter(sender: tobject);
    procedure v_scadenzeclick(sender: tobject);
    procedure tool_gesccfclick(sender: tobject);
    procedure tool_invia_excelclick(sender: tobject);
    procedure v_creastclick(sender: tobject);
    procedure v_non_conformitaclick(sender: tobject);
    procedure v_cen_codiceexit(sender: tobject);
    procedure v_tvc_codiceexit(sender: tobject);
    procedure v_importo_spese_trasportoexit(sender: tobject);
    procedure v_cambioenter(sender: tobject);
    procedure v_tsp_codiceenter(sender: tobject);
    procedure v_accontoclick(sender: tobject);
    procedure v_spese_manuali_trasportoclick(sender: tobject);
    procedure v_spese_manuali_bolloclick(sender: tobject);
    procedure v_spese_manuali_incassoclick(sender: tobject);
    procedure v_spese_manuali_trasportoexit(sender: tobject);
    procedure v_spese_manuali_bolloexit(sender: tobject);
    procedure v_spese_manuali_incassoexit(sender: tobject);
    procedure tool_ins_righeclick(sender: tobject);
    procedure v_analitica_sconto_finaleclick(sender: tobject);
    procedure v_analitica_spese_extraclick(sender: tobject);
    procedure v_analitica_sconto_cassaclick(sender: tobject);
    procedure v_analitica_spese_trasportoclick(sender: tobject);
    procedure v_analitica_spese_bolloclick(sender: tobject);
    procedure v_analitica_spese_incassoclick(sender: tobject);
    procedure v_griglia_righeKeyPress(Sender: TObject; var Key: Char);
    procedure v_ritenuta_manualeClick(Sender: TObject);
    procedure v_prezzoChange(Sender: TObject);
    procedure v_tsm_codice_righeChange(Sender: TObject);
    procedure v_tsm_codice_artChange(Sender: TObject);
    procedure v_importo_sconto_righeChange(Sender: TObject);
    procedure v_importoChange(Sender: TObject);
    procedure v_tipo_movimentoChange(Sender: TObject);
    procedure v_punto_venditaEnter(Sender: TObject);
    procedure v_punto_venditaExit(Sender: TObject);
    procedure v_riferimentoExit(Sender: TObject);
    procedure v_data_riferimentoExit(Sender: TObject);
    procedure v_contatto_commercialeExit(Sender: TObject);
    procedure v_nostro_riferimentoExit(Sender: TObject);
    procedure v_descrizione1_rigaExit(Sender: TObject);
    procedure v_descrizione2_rigaExit(Sender: TObject);
    procedure v_data_consegnaExit(Sender: TObject);
    procedure v_data_consegna_righeExit(Sender: TObject);
    procedure v_tconai_codiceExit(Sender: TObject);
    procedure v_tconai_codiceEnter(Sender: TObject);
    procedure v_provvigioni_multilivelloClick(Sender: TObject);
    procedure v_bottone_dati_extra_righeClick(Sender: TObject);
    procedure v_etiartClick(Sender: TObject);
    procedure v_storno_evasioneClick(Sender: TObject);
    procedure v_storno_consolidamentoClick(Sender: TObject);
    procedure v_storno_differiteClick(Sender: TObject);
    procedure v_assappclClick(Sender: TObject);
    procedure v_cli_codice_fatturazioneExit(Sender: TObject);
    procedure v_modifica_provvigioniClick(Sender: TObject);
    procedure v_ind_codice_fatturazioneExit(Sender: TObject);
    procedure v_ind_codice_fatturazioneEnter(Sender: TObject);
    procedure v_chiudi_documentoClick(Sender: TObject);
    procedure v_cli_codice_fatturazioneEnter(Sender: TObject);
    procedure v_importo_scontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_cmrClick(Sender: TObject);
    procedure v_ubicazioniClick(Sender: TObject);
    procedure v_preventivo_clienteClick(Sender: TObject);
    procedure avviso_durc;
    procedure v_documenti_collegatiClick(Sender: TObject);
    procedure v_situazione_accontoClick(Sender: TObject);
    procedure tool_invio_messaggioClick(Sender: TObject);
    procedure v_artpClick(Sender: TObject);
    procedure tabella_righeBeforePost(DataSet: TDataSet);
    procedure tabella_righeBeforeDelete(DataSet: TDataSet);
    procedure tool_eticliveClick(Sender: TObject);
    procedure v_lti_progressivoEnter(Sender: TObject);
    procedure v_lti_progressivoExit(Sender: TObject);
    procedure v_noteDblClick(Sender: TObject);
    procedure v_data_inizio_conteggioExit(Sender: TObject);
    procedure v_tma_codice_righeExit(Sender: TObject);
    procedure v_tiv_codice_righeExit(Sender: TObject);
    procedure v_gen_codice_righeExit(Sender: TObject);
    procedure v_revisione_precedenteClick(Sender: TObject);
    procedure v_crea_astClick(Sender: TObject);
    procedure tool_ordine_produzione_globaleClick(Sender: TObject);
    procedure v_storno_sdiClick(Sender: TObject);
    procedure v_fatture_collegateClick(Sender: TObject);
    procedure v_tag_fe_testataClick(Sender: TObject);
    procedure v_tag_fe_righeClick(Sender: TObject);
    procedure v_setta_esito_sdiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v_reso_scontrinoClick(Sender: TObject);
    procedure etichettedocumento1Click(Sender: TObject);
    procedure etichettearticoli1Click(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
    procedure v_tsm_codice_righeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tsm_codice_artKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tsm_codiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tsm_codice_scontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzRapidFireButton2Click(Sender: TObject);
    procedure tool_ordaClick(Sender: TObject);
    procedure tool_ctrl_f1Click(Sender: TObject);
    procedure v_fvtddtClick(Sender: TObject);
  protected

    dicint: tdicint;

    spesco: tspesco;
    movmag: tmovmag;
    cerca_prezzi: tcerca_prezzo;
    crea_documento_derivato: tcrea_documento_derivato;
    rma: trma;
    nca: tnca;
    calsca: tcalsca;
    prodconf: tprodconf;
    raee: traee;
    qtamin: tqtamin;
    totven: ttotven;
    provv: tprovv;
    tipinv: ttipinv;
    valdsb: tvaldsb;
    przinv: tprzinv;
    conai: tconai;
    clasms: tclasms;
    fabdin: tfabdin;

    quantita_base_contratti, quantita_omaggio_contratti: integer;
    art_codice_contratti, tsm_codice_contratti: string;

    evasione_preventivo_ordine, aggiorna_totali_testata, aggiorna_totali_colli: boolean;
    generatore, art_codice_evasione_preventivo_ordine: string;

    analitica, commesse, lotti, conto_terzi, esegui_dati_riga, valorizzazione_gestionale: string;
    tdo_codice, cli_codice_gescas, ind_codice_gescas, stampa_immediata, blocco_fuori_fido: string;
    data_documento, data_precedente: tdatetime;
    numero_documento, numero_documento_precedente: double;
    art_codice_spese_extra, art_codice_spese_trasporto, art_codice_spese_bollo, art_codice_spese_incasso,
      art_codice_cassa_professionisti, art_codice_sconto_cassa, art_codice_sconti_fattura: string;
    tca_codice_trasporto, tca_codice_bollo, tca_codice_incasso,
      tca_codice_spese_extra, tca_spese_extra, tca_codice_sconto_cassa, tca_codice_sconti_fattura: string;
    tiv_codice_spese_extra, tiv_codice_spese_bollo, tiv_codice_spese_incasso,
      tiv_codice_omaggi, gen_codice_ritenuta, tco_codice_ritenuta,
      tiv_codice_cassa_professionisti, tca_codice_cassa_professionisti: string;
    avviso_fuori_fido: boolean;
    controllo_articolo_livello_superiore: string;

    vecchio_serie_documento, vecchio_tsm_codice_sconto, vecchio_tiv_codice, vecchio_tcc_codice, vecchio_tag_codice,
      vecchio_tag_codice_ca, vecchio_tsm_codice, vecchio_tma_codice, vecchio_tmo_codice, vecchio_tma_codice_collegato,
      vecchio_tmo_codice_collegato, vecchio_tpa_codice, vecchio_tst_codice, vecchio_accettato, vecchio_tpo_codice,
      vecchio_listino_con_iva, vecchio_cli_codice, vecchio_oscillazione_cambio, vecchio_cms_codice_testata,
      vecchio_tipologia_testata, vecchio_tlv_codice, vecchio_cen_codice, vecchio_tvc_codice, vecchio_punto_vendita,
      vecchio_tipo_imballaggio, vecchio_iva_bloccata: string;
    vecchio_numero_documento: double;
    vecchio_sequenza: integer;
    vecchio_data_documento, vecchio_data_inizio_competenza, vecchio_data_fine_competenza, vecchio_data_consegna: tdatetime;
    vecchio_cambio, vecchio_totale_documento, vecchio_importo_sconto: double;
    pezzi_confezione: integer;
    tipo_prezzo: string;

    vecchio_art_codice, vecchio_tsm_codice_righe, vecchio_tsm_codice_art, vecchio_tipo_movimento,
      vecchio_gen_codice_righe, vecchio_tiv_codice_righe, vecchio_saldo_acconto, vecchio_situazione_righe,
      vecchio_cms_codice, vecchio_tipologia, vecchio_tma_codice_righe: string;
    vecchio_numero_colli, vecchio_numero_confezioni: integer;
    vecchio_quantita, vecchio_quantita_base, vecchio_prezzo, vecchio_importo_sconto_righe, vecchio_importo,
      vecchio_quantita_approntata, vecchio_importo_euro, vecchio_importo_iva_euro, vecchio_importo_iva: double;

    gesvencl_eseguito, tasto_ins_numero_documento: boolean;

    gestione_descrizione1, gestione_descrizione2, gestione_numero_colli, gestione_tipo_movimento,
      controllo_quantita, controllo_prezzo, gestione_quantita, gestione_prezzo, gestione_sconto_cliente,
      gestione_tum_codice, gestione_importo, gestione_data_consegna, gestione_numero_confezioni,
      cli_codice_potenziali: string;

    inserimento_fattura_differita: boolean;

    sce_lista_multiselezione: tstringlist;
    sce_lista_multiselezione_quantita: tstringlist;

    pagina_destinazione, pagina_riferimento, pagina_incasso, pagina_magazzino,
      pagina_spedizione, pagina_sconto, pagina_note, pagina_analitica: boolean;
    pagina_destinazione_chiusura, pagina_riferimento_chiusura, pagina_incasso_chiusura, pagina_magazzino_chiusura,
      pagina_spedizione_chiusura, pagina_sconto_chiusura, pagina_note_chiusura, pagina_analitica_chiusura: boolean;
    pagina_destinazione_chiusura_attivare, pagina_riferimento_chiusura_attivare, pagina_incasso_chiusura_attivare,
      pagina_magazzino_chiusura_attivare, pagina_spedizione_chiusura_attivare, pagina_sconto_chiusura_attivare,
      pagina_note_chiusura_attivare, pagina_analitica_chiusura_attivare: boolean;
    documento_chiuso: boolean;

    percentuale_cassa_professionist: double;
    tpe_codice: string;

    cancella_documenti_vendita_evasi, tipo_documento_evasione: string;

    mmt_progressivo_evaso: integer;
    stampa_configurazioni, prezzi_configurazione: string;

    sconto_massimo, sconto_massimo_art: double;
    blocco_sconto_massimo, password_sconto_massimo: string;

    scorporo_eseguito: boolean;
    gestione_valuta: string;

    esiste_cli: boolean;

    codice_lotto_matricola_singolo, gestione_lotto_singolo: string;

    controllo_documenti_livello_superiore: string;
    calcolo_margine: string;

    listini_scaglioni: string;
    gestione_configurazione: string;

    tdo_codice_conto_vendita: string;
    genera_rda_ordini_vendita: string;
    ordinato_fido: string;
    documento_modificato: boolean;
    controllo_equivalenti: string;
    consolidamento: string;
    progressivo_documento_evadere: integer;
    tipo_documento_evadere: string;
    visualizza_fido_cliente_ven: string;

    stampa_immediata_etichette: string;
    approntato_da_sscc: string;
    totalizzazione_quantita, totalizzazione_colli: string;
    avviso_differite, storno_differite: boolean;

    riga_drag_drop, sequenza_drag_drop: integer;
    pr_cli_codice_potenziali: string;

    bloccato_click, esiste_documento_analitica: boolean;

    tabella_scadenze: array of scadenze;

    progressivo_rma: integer;

    cli_codice_fido: string;

    progressivo_nca: integer;
    tac_codice_nca: string;

    prezzo: double;
    tsm_codice, tsm_codice_art: string;
    importo_sconto: double;

    tma_codice_agente: string;
    lettore: boolean;
    blocco_modifica_prezzi_vendita: boolean;
    vending: boolean;

    tipo_numerazione: string;

    approntato_totale: boolean;

    ultimo_cms_codice, ultimo_tipologia: string;

    visualizzato_messaggio: boolean;

    variato_provvigioni: boolean;
    forzatura_modifica_cancellazione: boolean;
    eseguito_gesdocgri: boolean;

    ripristina_lotti: boolean;
    tma_codice_passato: string;

    assegna_pvv: boolean;
    lavorazione_vetrerie: boolean;

    procedure tdo_codice_controllo(blocco: boolean);
    procedure numero_documento_controllo;
    procedure data_documento_controllo;
    procedure cli_codice_controllo(blocco: boolean);

    procedure tlv_codice_controllo(blocco: boolean);
    procedure tpa_codice_controllo(blocco: boolean);
    procedure tsm_codice_controllo(blocco: boolean);
    procedure tva_codice_controllo(blocco: boolean);

    procedure indirizzo_controllo(blocco: boolean);
    procedure tna_codice_controllo(blocco: boolean);
    procedure descrizione1_controllo;
    procedure via_controllo;
    procedure citta_controllo;
    procedure tna_codice_intra_controllo(blocco: boolean);

    procedure v_data_inizio_conteggio_controllo;
    procedure tag_codice_controllo(blocco: boolean);
    procedure tag_codice_ca_controllo(blocco: boolean);
    procedure v_lti_progressivo_controllo(blocco: boolean);
    procedure tiv_codice_controllo(blocco: boolean);
    procedure tcc_codice_controllo(blocco: boolean);
    procedure tcd_codice_apertura_controllo(blocco: boolean);
    procedure tcd_codice_chiusura_controllo(blocco: boolean);

    procedure codice_abi_controllo(blocco: boolean);
    procedure codice_cab_controllo(blocco: boolean);
    procedure conto_corrente_controllo;
    procedure tba_codice_controllo(blocco: boolean);
    procedure tmo_codice_controllo(blocco: boolean);
    procedure tma_codice_controllo(blocco: boolean);
    procedure tmo_codice_collegato_controllo(blocco: boolean);
    procedure tma_codice_collegato_controllo(blocco: boolean);
    procedure tsp_codice_controllo(blocco: boolean);
    procedure tst_codice_controllo(blocco: boolean);
    procedure tpo_codice_controllo(blocco: boolean);
    procedure tab_codice_controllo(blocco: boolean);
    procedure tsm_codice_sconto_controllo(blocco: boolean);
    procedure tpe_codice_controllo(blocco: boolean);
    procedure ora_inizio_trasporto_controllo;
    procedure minuto_inizio_trasporto_controllo;
    procedure tconai_codice_controllo(blocco: boolean);
    procedure cen_codice_controllo(blocco: boolean);
    procedure tvc_codice_controllo(blocco: boolean);
    procedure cli_codice_fatturazione_controllo(blocco: boolean);
    procedure ind_codice_fatturazione_controllo(blocco: boolean);

    procedure art_codice_controllo(blocco: boolean);
    procedure tum_codice_controllo(blocco: boolean);
    procedure quantita_controllo;
    procedure tsm_codice_righe_controllo(blocco: boolean); virtual;
    procedure tsm_codice_art_controllo(blocco: boolean); virtual;
    procedure tma_codice_righe_controllo(blocco: boolean);
    procedure gen_codice_righe_controllo(blocco: boolean);
    procedure tiv_codice_righe_controllo(blocco: boolean);
    procedure cms_codice_controllo(blocco: boolean);
    procedure tipologia_controllo(blocco: boolean);

    procedure tma_codice_righe_controllo_post;
    procedure tiv_codice_righe_controllo_post;
    procedure gen_codice_righe_controllo_post;

    procedure assegna_tdo_codice;
    procedure assegna_cli_codice;
    procedure assegna_art_codice;
    procedure assegna_listino_con_iva;
    procedure assegna_data_consegna_validita;
    procedure assegna_tmo_codice;
    procedure assegna_cambio;
    procedure assegna_indirizzo;
    procedure assegna_ind;
    procedure assegna_tcd_codice;
    procedure assegna_tsm_codice;

    procedure assegna_tlv_codice;
    procedure assegna_tpa_codice;
    procedure assegna_tma_codice;
    procedure assegna_tva_codice;
    procedure assegna_tiv_codice;
    //procedure assegna_tcc_codice;
    procedure assegna_intra;
    procedure assegna_iva_sospensione;
    procedure assegna_addebito_spese_fattura;
    procedure assegna_addebito_spese_trasporto;
    procedure assegna_tag_codice;
    procedure assegna_tsp_codice;
    procedure assegna_tst_codice;
    procedure assegna_tpo_codice;
    procedure assegna_giorno_consegna;
    procedure assegna_tna_codice_intra;
    procedure assegna_tsm_codice_sconto;
    procedure assegna_decimali;
    procedure assegna_decimali_quantita;
    procedure assegna_gen_codice(righe: tmyquery_go = nil);
    procedure assegna_provvigioni(righe: tmyquery_go = nil);
    procedure assegna_tiv_codice_righe(righe: tmyquery_go = nil);
    procedure assegna_valore_intra;
    procedure assegna_valore_spese;
    procedure assegna_valore_spese_manuali;
    procedure assegna_valore_spese_automatiche;
    procedure assegna_valore_fattura_pro_forma;
    procedure assegna_bartolini;
    procedure assegna_tconai_codice;
    procedure assegna_conai;
    procedure assegna_cli_codice_fatturazione;
    procedure assegna_valore_cli_codice_fatturazione;

    procedure abilita_bloccato;
    procedure abilita_tipo_documento;
    procedure abilita_tipo_documento_bolle_ddt;
    procedure abilita_bottoni(flag: boolean);
    procedure abilita_bottoni_analitica(flag: boolean);
    procedure abilita_art_codice;
    procedure abilita_intra;
    procedure abilita_spese_manuali;
    procedure abilita_spese;
    procedure abilita_pro_forma;
    procedure abilita_fattura_pro_forma;
    procedure abilita_dati_fattura_professionisti;
    procedure abilita_ritenuta_manuale;
    procedure abilita_sda(flag: boolean);
    procedure abilita_tma_codice;
    procedure abilita_bottone_dati_extra_testata;
    procedure abilita_tma_codice_righe;
    procedure abilita_tiv_codice_righe;
    procedure abilita_gen_codice_righe;

    procedure attiva_importo;

    procedure assegna_valore_tma_codice;
    procedure assegna_valore_tmo_codice_collegato;
    procedure assegna_valore_tma_codice_collegato;
    procedure assegna_valore_prezzo;
    procedure assegna_valore_tsm_codice_righe;
    procedure assegna_valore_cambio;
    procedure assegna_valore_art_codice;
    procedure assegna_valore_tlv_codice;
    procedure assegna_valore_tpa_codice;
    procedure assegna_valore_tsm_codice;
    procedure assegna_valore_indirizzo;
    procedure assegna_valore_tag_codice;
    procedure assegna_valore_tag_codice_ca;
    procedure assegna_valore_tiv_codice;
    procedure assegna_valore_tcc_codice;
    procedure assegna_valore_codice_abi;
    procedure assegna_valore_codice_cab;
    procedure assegna_valore_tba_codice;
    procedure assegna_valore_tmo_codice;
    procedure assegna_valore_tma_codice_ordine;
    procedure assegna_valore_tma_codice_collegato_ordine;
    procedure assegna_valore_tsp_codice;
    procedure assegna_valore_tst_codice;
    procedure assegna_valore_tpo_codice;
    procedure assegna_valore_addebito_spese_fattura;
    procedure assegna_valore_tma_codice_righe;
    procedure assegna_valore_fattura_professionisti;

    procedure attiva_esiste(flag: boolean);

    procedure calcola_quantita_confezioni;
    procedure calcola_quantita_colli;
    procedure calcola_importo(righe: tmyquery_go = nil);
    procedure esegui_analitica(tipo: string); overload;
    procedure esegui_analitica(analitica_gen_codice, analitica_documento_origine, analitica_art_codice,
      analitica_descrizione, analitica_tipo_movimento: string;
      analitica_doc_progressivo_origine, analitica_progressivo, analitica_riga: integer;
      analitica_importo_euro, analitica_importo_iva_euro, analitica_importo_valuta, analitica_importo_iva_valuta: double;
      cen_codice, tvc_codice: string; tiv_codice: string = ''); overload;
    procedure esegui_commesse;
    procedure esegui_lotti;
    procedure esegui_ubicazioni;
    procedure esegui_ubicazioni_magazzino(tmo_codice, tma_codice: string);
    procedure esegui_gesven02;
    procedure aggiorna_archivi_collegati;
    procedure aggiorna_archivi_collegati_righe;
    procedure gestisci_collegato;
    procedure controllo_quantita_evasa;
    procedure controllo_numero_colli_evasi;
    procedure controllo_numero_confezioni_evase;
    procedure evasione_documento(tipo_documento_evasione: string);
    procedure evasione_documento_nota_credito_fattura;
    procedure saldo_acconto_controllo;
    procedure abilita_storni(flag: boolean);
    procedure tipo_movimento_controllo;
    procedure mese_rettifica_intra_controllo;
    procedure trimestre_rettifica_intra_controllo;
    procedure anno_rettifica_intra_controllo;

    procedure aggiorna_magazzino(tmo_codice: string; collegato: boolean);
    procedure aggiorna_magazzino_dettaglio(collegato: boolean);
    procedure cancella_magazzino(tmo_codice: string);
    procedure cancella_magazzino_dettaglio;
    procedure abilita_campi_opzionali(flag: boolean);

    procedure crea_conto_terzi;
    procedure varia_conto_terzi;

    procedure assegna_utn_codice_accettazione;

    procedure assegna_gestioni;
    procedure esegui_esistenza(tma_codice: string);
    procedure esegui_controllo_esistenza;
    procedure cerca_prezzo; virtual;
    procedure cerca_prezzo_documento(tipo: string; righe: tmyquery_go);
    procedure provincia_controllo;
    procedure controllo_rda_oar_opt(operazione: string);
    procedure riga_ordine_modificata(operazione, tipo_file, utente_origine: string);
    procedure controllare_documenti_livello_superiore;
    procedure variata_quantita;
    procedure esegui_configurazione(click: boolean = false);
    procedure memorizza_rda(data_consegna: tdate; descrizione: string; listino_diverso: boolean;
      quantita: double; manuale: boolean = false);
    procedure abilita_annulla_rda;
    procedure totalizza_colli(modalita: string);
    procedure variato_articolo;
    procedure annulla_riga_documento;
    procedure storna_annulla_riga_documento;

    procedure stampa_etichette;
    procedure genera_tabella_etichette;

    procedure esegui_conai(funzione: string; testata_documento, righe_documento: tmyquery_go;
      art_codice: string; quantita: double);
    procedure esegui_bottone_dati_extra_testata; override;
    procedure esegui_bottone_dati_extra_righe; override;
    procedure esegui_query_righe; override;
    procedure processa_quantita;
    procedure aggiornalotto(aarticolo: string; alotto: string; adatascad: tdate);
    procedure crea_kit;
    procedure assegna_contratto_scalare;
    procedure esegui_formula;
    procedure esegui_scheda_trasporto;
    procedure aggiorna_condizioni_cliente;

    procedure varia_tsm_codice(sconto: word; ts3_codice, tsm_codice: string);
    procedure assegna_contatto_commerciale;
    procedure duplica_configurazione;
    procedure crea_record_rma;
    procedure assegnazione_globale_tipo_documento;
    //procedure assegna_prezzo_netto(query_prezzo_netto: tmyquery_go);
    procedure crea_record_ncr;
    procedure crea_listino_vendita;
    procedure controllo_blocco_modifica_prezzi_vendita(sender: tobject);
    procedure v_punto_vendita_controllo(blocco: boolean);
    procedure assegna_tum_quantita_base;
    procedure assegna_peso_netto;
    procedure esegui_vuoti_resi;

    procedure assegna_query_navigazione; override;

    procedure azzera_vecchio_testata; override;
    procedure assegna_vecchio_testata; override;
    procedure azzera_vecchio_righe; override;
    procedure assegna_vecchio_righe; override;
    procedure eredita_documenti_collegati(tipo_documento_origine, tipo_documento_collegato: string; progressivo_origine, progressivo_collegato: integer);
    procedure aggiungi_righe_lettore(lista_art_codice, lista_codice_originale, lista_quantita,
      lista_prezzo, lista_codice_lotto, lista_data_scadenza, lista_descrizione1, lista_descrizione2: tstringlist);
    procedure esegui_gesdocgri;
    procedure approntamento_riga;
    procedure assegna_articolo_potenziale;

    function controllo_accettazione: boolean;
    function controllo_esercizio_situazione(operazione: string = ''): boolean;
    function controllo_situazione_righe: boolean;
    function fuori_fido(solo_fuori_fido: boolean): boolean;
    function controllo_cancella_situazione_righe: boolean;
    function controllo_ordini_preventivi: boolean;
    function esiste_rda_opt: boolean;
    function conferma_tabindex: boolean; override;
    function esercizio_diverso: boolean;
    function reso_cliente: boolean;
    function selezione_stampa: string;
    //function controllo_situazione_iniziale: boolean;
  public
    tipo_documento: string;

    cli_codice_passato: string;

    procedure abilita_pannello_campi(attivo: boolean); override;

    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
    procedure controllo_campi; override;
    procedure controllo_campi_righe; override;
    procedure controllo_cancella; override;
    procedure controllo_edit; override;
    procedure controllo_cancella_righe; override;
    procedure controllo_edit_righe; override;

    procedure visualizza_descrizioni; override;
    procedure visualizza_descrizioni_righe; override;
    procedure abilitazioni; override;
    procedure abilitazioni_righe; override;
    procedure before_delete; override;
    procedure before_post; override;
    procedure after_post; override;
    procedure after_delete; override;
    procedure before_post_righe; override;
    procedure after_post_righe; override;
    procedure refresh; override;
    procedure before_delete_righe; override;
    procedure abilita_pannello_righe(attivo: boolean); override;
    procedure stampa; override;
    procedure duplica; override;
    procedure cancella; override;

    procedure assegna_righe(accoda: word); override;
    procedure assegna_dataset; override;
    procedure annulla_dataset; override;
  end;

var
  gesven: tgesven;

implementation

{$r *.dfm}


uses GGGESVEN02, GGGESVEN01, GGULTPRZ, GGGESVEN03, GGSCELTM, GGVISDOCAV, GGVISCONT, GGEVARMA, GGVISARTCLI, GGVISARTVEN,
  GGSCEACC, GGSCEDSB, GGVISLSV, GGVISLSA, GGNTVENACQ, GGEVADOCV, GGMOVLCT, GGFORMULADSB, GGVISFATNC, GGARCVEN, GGIMPALF,
  GGGESDAV, GGLTTERLASINH, GGANAEQU, GGVISDOCEV, GGVISLCT, GGETIART, ZZLIBRERIE, GGVISARTCTC, GGVISTOTDOC, GGDUPORDV,
  GGGESSCHTRS, GGETICOL, GGASSTSM, GGPAGPER, GGANAREV, GGVISRIF, GGSCEFADV, GGMAIL, ZZPARSING, ZZTMA_TAG, GGVISBCF,
  GGGESMTRCOPLET, GGGENTNT, GGGESVUODOC, GGGESPRVM, GGEVADOCVNCFT, ZZASSEGNA_IVA_VENDITE, GGGESCMR, GGGESDOCRD,
  GGGESDOCGRI, ZZASSEGNA_PREZZO_NETTO, ZZCREA_DOCUMENTI_VENDITA, GGNOTE, ZZASSEGNA_GIORNO_VENDITE, GGCREORDPV,
  GGGESDOCRDNC, GGGESTAGTDT, GGGESTAGTDR, GGRIFRESO, GGVISARTFRN, GGLAVVET, GGARFACQ, GGCREAORDA,
  GGSTAPREVINT, GGSTAPREVCLI, GGSTAORDVINT, GGSTAORDVCLI, GGFVTDDT;

var
  iban: tiban;

procedure tgesven.controllo_campi;
begin
  tdo_codice_controllo(true);
  numero_documento_controllo;
  data_documento_controllo;
  cli_codice_controllo(true);
  tlv_codice_controllo(true);
  tpa_codice_controllo(true);
  tsm_codice_controllo(true);
  tva_codice_controllo(true);
  tna_codice_controllo(true);
  indirizzo_controllo(true);
  descrizione1_controllo;
  via_controllo;
  citta_controllo;
  tag_codice_controllo(true);
  tag_codice_ca_controllo(true);
  v_lti_progressivo_controllo(true);
  tiv_codice_controllo(true);
  tcc_codice_controllo(true);
  tcd_codice_apertura_controllo(true);
  tcd_codice_chiusura_controllo(true);
  provincia_controllo;
  tna_codice_intra_controllo(true);
  v_data_inizio_conteggio_controllo;
  mese_rettifica_intra_controllo;
  trimestre_rettifica_intra_controllo;
  anno_rettifica_intra_controllo;
  codice_abi_controllo(true);
  codice_cab_controllo(true);
  conto_corrente_controllo;
  tba_codice_controllo(true);
  tmo_codice_controllo(true);
  tma_codice_controllo(true);
  tmo_codice_collegato_controllo(true);
  tma_codice_collegato_controllo(true);
  cms_codice_controllo(true);
  tipologia_controllo(true);
  tsp_codice_controllo(true);
  tst_codice_controllo(true);
  tpo_codice_controllo(true);
  tab_codice_controllo(true);
  tsm_codice_sconto_controllo(true);
  tpe_codice_controllo(true);
  ora_inizio_trasporto_controllo;
  minuto_inizio_trasporto_controllo;
  tconai_codice_controllo(true);
  cen_codice_controllo(true);
  tvc_codice_controllo(true);
  v_punto_vendita_controllo(true);
  cli_codice_fatturazione_controllo(true);
  ind_codice_fatturazione_controllo(true);
end;

procedure tgesven.controllo_campi_righe;
begin
  art_codice_controllo(true);
  tum_codice_controllo(true);
  quantita_controllo;
  saldo_acconto_controllo;
  tsm_codice_righe_controllo(true);
  tsm_codice_art_controllo(true);
  tipo_movimento_controllo;
  tma_codice_righe_controllo(true);
  tiv_codice_righe_controllo(true);
  gen_codice_righe_controllo(true);
end;

procedure tgesven.visualizza_descrizioni;
begin
  tdo_codice_controllo(false);

  cli_codice_controllo(false);
  tlv_codice_controllo(false);
  tpa_codice_controllo(false);
  tsm_codice_controllo(false);
  tva_codice_controllo(false);

  indirizzo_controllo(false);
  tna_codice_controllo(false);

  tag_codice_controllo(false);
  tag_codice_ca_controllo(false);
  tiv_codice_controllo(false);
  tcc_codice_controllo(false);
  tcd_codice_apertura_controllo(false);
  tcd_codice_chiusura_controllo(false);
  tna_codice_intra_controllo(false);

  codice_abi_controllo(false);
  codice_cab_controllo(false);
  tba_codice_controllo(false);

  tmo_codice_controllo(false);
  tma_codice_controllo(false);
  tmo_codice_collegato_controllo(false);
  tma_codice_collegato_controllo(false);
  cms_codice_controllo(false);
  tipologia_controllo(false);

  tsp_codice_controllo(false);
  tst_codice_controllo(false);
  tpo_codice_controllo(false);
  tab_codice_controllo(false);

  tsm_codice_sconto_controllo(false);
  tpe_codice_controllo(false);

  tconai_codice_controllo(false);

  cen_codice_controllo(false);
  tvc_codice_controllo(false);
  cli_codice_fatturazione_controllo(false);
  ind_codice_fatturazione_controllo(false);

  if visarc_stampa then
  begin
    visarc_stampa := false;
    stampa;
  end;
end;

procedure tgesven.visualizza_descrizioni_righe;
begin
  art_codice_controllo(false);
  tum_codice_controllo(false);
  tsm_codice_righe_controllo(false);
  tsm_codice_art_controllo(false);
  tma_codice_righe_controllo(false);
  tiv_codice_righe_controllo(false);
  gen_codice_righe_controllo(false);
end;

procedure tgesven.refresh;
begin
  if parte_attiva = 'pannello_campi' then
  begin
    if v_revisione.value = 0 then
    begin
      arc.storna_numerazione(arc.arcdit, tipo_numerazione, v_serie_documento.text, v_data_documento.date, progressivo_cnt);
    end;
  end;

  inherited;
end;

procedure tgesven.before_delete;
var
  prosegui: boolean;

  vuodoc, fvtddt: tmyquery_go;
begin
  prosegui := true;

  if (tabella.fieldbyname('situazione_sdi').asstring <> 'in attesa invio') and
    ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
  begin
    messaggio(000, 'documento non cancellabile perché inviato a SDI' + slinebreak +
      'situazione [' + tabella.fieldbyname('situazione_sdi').asstring + ']' + slinebreak +
      'esito [' + tabella.fieldbyname('codice_esito_sdi').asstring + ']');
    prosegui := false;
  end;

  if not prosegui then
  begin
    tabella.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_progressivo);
    abort;
  end
  else
  begin
    vuodoc := tmyquery_go.create(nil);
    vuodoc.connection := arc.arcdit;
    vuodoc.sql.text := 'delete from vuodoc where cfg_tipo = ''C'' and documento_origine = :documento_origine ' +
      'and doc_progressivo_origine = :progressivo';
    vuodoc.parambyname('documento_origine').asstring := tipo_documento;
    vuodoc.parambyname('progressivo').asinteger := v_progressivo.intvalue;
    vuodoc.execsql;
    freeandnil(vuodoc);

    fvtddt := tmyquery_go.create(nil);
    fvtddt.connection := arc.arcdit;
    fvtddt.sql.text := 'delete from fvtddt where progressivo = :progressivo';
    fvtddt.parambyname('progressivo').asinteger := v_progressivo.intvalue;
    fvtddt.execsql;
    freeandnil(fvtddt);

    cli_codice_fido := tabella.fieldbyname('cli_codice').asstring;

    documento_modificato := true;

    // ripristina numerazione
    arc.storna_numerazione(arc.arcdit, tipo_numerazione, tabella.fieldbyname('serie_documento').asstring,
      tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('numero_documento').asfloat);

    cancella_iva.close;
    cancella_iva.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    cancella_iva.execsql;

    cem.close;
    cem.sql.clear;
    cem.sql.add('select * from cem');
    cem.sql.add('where documento_origine = :codice0');
    cem.sql.add('and doc_progressivo_origine = :codice2 and doc_riga_origine > 900000');
    cem.params[0].asstring := tipo_documento + ' ven';
    cem.params[1].asfloat := tabella.fieldbyname('progressivo').asfloat;
    cem.open;
    if not cem.eof then
    begin
      messaggio(000, 'i movimenti della contabilità analitica' + #13 +
        'collegati alla testata del documento verranno cancellati');
    end;
    while not cem.eof do
    begin
      cem.delete;
    end;

    if tdo.fieldbyname('ttc_codice').asstring <> '' then
    begin
      ccf.close;
      if tipo_documento = 'ddt fornitori' then
      begin
        ccf.parambyname('oggetto_contatto').asstring := 'fornitore';
      end
      else
      begin
        ccf.parambyname('oggetto_contatto').asstring := 'cliente';
      end;
      ccf.parambyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
      ccf.parambyname('ttc_codice').asstring := tdo.fieldbyname('ttc_codice').asstring;
      ccf.parambyname('documento_collegato').asstring := tipo_documento;
      ccf.parambyname('doc_progressivo_collegato').asinteger := tabella.fieldbyname('progressivo').asinteger;
      ccf.open;
      if not ccf.isempty then
      begin
        messaggio(200, 'il documento è collegato ad un contatto di cui verrà eseguita la gestione');
        esegui_programma('GESCCF', vararrayof([tabella.fieldbyname('cli_codice').asstring, '']), true);
      end;
    end;

    inherited;
  end;
end;

(*
  function tgesven.controllo_situazione_iniziale: boolean;
  begin
  read_tabella(query_situazione_iniziale, tabella.fieldbyname('progressivo').asinteger);
  if query_situazione_iniziale.fieldbyname('situazione').asstring <> situazione_iniziale then
  begin
  situazione_iniziale := query_situazione_iniziale.fieldbyname('situazione').asstring;
  messaggio(000, 'la situazione del documento è stata modificata da un altro utente' + #13 +
  'non è possibile confermare l''operazione effettuata');
  result := false;
  end
  else
  begin
  result := true;
  end;
  end;
*)

procedure tgesven.before_post;
var
  errore, prosegui: boolean;
begin
  prosegui := true;

  if tma_codice_passato <> '' then
  begin
    tabella.fieldbyname('tma_codice').asstring := tma_codice_passato;
    tma_codice_passato := '';
  end;

  if (tabella.fieldbyname('situazione_sdi').asstring <> 'in attesa invio') and
    ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
  begin
    messaggio(000, 'documento non modificabile perché inviato a SDI' + slinebreak +
      'situazione [' + tabella.fieldbyname('situazione_sdi').asstring + ']' + slinebreak +
      'esito [' + tabella.fieldbyname('codice_esito_sdi').asstring + ']');
    prosegui := false;
  end;

  if not prosegui then
  begin
    tabella.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_progressivo);
    abort;
  end
  else
  begin
    assegna_giorno_vendite(tabella);

    if (not esiste) and (tipo_documento <> 'ddt fornitori') then
    begin
      // aggiorna cliente su documento da evadere se potenziale
      if pr_cli_codice_potenziali <> '' then
      begin
        pr_cli_codice_potenziali := '';

        if testata_documento_evaso.active then
        begin
          testata_documento_evaso.edit;
          testata_documento_evaso.fieldbyname('cli_codice').asstring := v_cli_codice.text;
          testata_documento_evaso.post;
        end;
      end;
      //

      tdo_codice := tabella.fieldbyname('tdo_codice').asstring;
      data_documento := tabella.fieldbyname('data_documento').asdatetime;

      // spese sconti iva automatici
      spesco.p_tabella := tabella;
      spesco.assegna;
      tabella := spesco.p_tabella;

      if tabella.fieldbyname('tco_codice').asstring <> '' then
      begin
        errore := false;

        tabella.fieldbyname('gen_codice_ritenuta').asstring := gen_codice_ritenuta;
        tabella.fieldbyname('tco_codice_ritenuta').asstring := tco_codice_ritenuta;

        if tabella.fieldbyname('gen_codice_spese_extra').asstring = '' then
        begin
          messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
            'va inserito il sottoconto di competenza delle spese varie nell''archivio -cpv-' + #13 + #13 +
            'eseguire il programma di gestione [GESCPV]');
          tab_control.activepage := tab_pagina1;
          v_cli_codice.setfocus;
          errore := true;
        end;

        if tabella.fieldbyname('gen_codice_trasporto').asstring = '' then
        begin
          messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
            'va inserito il sottoconto di competenza delle spese di trasporto nell''archivio -cpv-' + #13 + #13 +
            'verrà eseguito il programma di gestione');
          tab_control.activepage := tab_pagina1;
          v_cli_codice.setfocus;
          errore := true;
        end;

        if tabella.fieldbyname('gen_codice_bollo').asstring = '' then
        begin
          messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
            'va inserito il sottoconto di competenza delle spese bollo nell''archivio -cpv-' + #13 + #13 +
            'eseguire il programma di gestione [GESCPV]');
          tab_control.activepage := tab_pagina1;
          v_cli_codice.setfocus;
          errore := true;
        end;

        if tabella.fieldbyname('gen_codice_incasso').asstring = '' then
        begin
          messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
            'va inserito il sottoconto di competenza delle spese incasso nell''archivio -cpv-' + #13 + #13 +
            'eseguire il programma di gestione [GESCPV]');
          tab_control.activepage := tab_pagina1;
          v_cli_codice.setfocus;
          errore := true;
        end;

        if tabella.fieldbyname('gen_codice_sconto_cassa').asstring = '' then
        begin
          messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
            'va inserito il sottoconto di competenza dello sconto cassa nell''archivio -cpv-' + #13 + #13 +
            'eseguire il programma di gestione [GESCPV]');
          tab_control.activepage := tab_pagina1;
          v_cli_codice.setfocus;
          errore := true;
        end;

        if tabella.fieldbyname('gen_codice_sconti_fattura').asstring = '' then
        begin
          messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
            'va inserito il sottoconto di competenza degli sconti fattura nell''archivio -cpv-' + #13 + #13 +
            'eseguire il programma di gestione [GESCPV]');
          tab_control.activepage := tab_pagina1;
          v_cli_codice.setfocus;
          errore := true;
        end;

        if tabella.fieldbyname('fattura_professionisti').asstring = 'si' then
        begin
          cpv.close;
          cpv.parambyname('tcc_codice').asstring := cli.fieldbyname('tcc_codice').asstring;
          cpv.parambyname('tca_codice').asstring := tca_codice_cassa_professionisti;
          cpv.parambyname('tdo_codice').asstring := tabella.fieldbyname('tdo_codice').asstring;
          cpv.open;
          if cpv.eof then
          begin
            messaggio(000, 'poichè nella causale del documento è previsto l''aggiornamento contabile' + #13 +
              'va inserito il sottoconto di competenza della cassa previdenza nell''archivio -cpv-' + #13 + #13 +
              'eseguire il programma di gestione [GESCPV]');
            tab_control.activepage := tab_pagina1;
            v_cli_codice.setfocus;
            errore := true;
          end
          else
          begin
            tabella.fieldbyname('gen_codice_cassa_professionisti').asstring := cpv.fieldbyname('gen_codice').asstring;
          end;
        end;

        if errore then
        begin
          abort;
        end;
      end;

      if tabella.fieldbyname('fattura_professionisti').asstring = 'si' then
      begin
        tabella.fieldbyname('tiv_codice_cassa_professionisti').asstring := tiv_codice_cassa_professionisti;
      end;

      if tabella.fieldbyname('tiv_codice').asstring <> '' then
      begin
        read_tabella(arc.arcdit, 'tna', 'codice', cli.fieldbyname('nom_tna_codice').asstring, 'codice_iso');
        if archivio.fieldbyname('codice_iso').asstring <> 'IT' then
        begin
          tabella.fieldbyname('tiv_codice_spese_extra').asstring := tabella.fieldbyname('tiv_codice').asstring;
          (*
            if tabella.fieldbyname('spese_manuali_bollo').asstring = 'no' then
            begin
            tabella.fieldbyname('tiv_codice_spese_bollo').asstring := tabella.fieldbyname('tiv_codice').asstring;
            end;
          *)
          tabella.fieldbyname('tiv_codice_spese_incasso').asstring := tabella.fieldbyname('tiv_codice').asstring;
        end;
      end;
    end;

    assegna_valore_tma_codice;
    assegna_valore_tma_codice_collegato;
    assegna_valore_cambio;

    assegna_valore_tlv_codice;
    assegna_valore_tpa_codice;
    assegna_valore_tsm_codice;
    assegna_valore_indirizzo;
    assegna_valore_indirizzo;
    assegna_valore_tag_codice;
    assegna_valore_tag_codice_ca;
    assegna_valore_tiv_codice;
    assegna_valore_codice_abi;
    assegna_valore_codice_cab;
    assegna_valore_tba_codice;
    assegna_valore_tma_codice_ordine;
    assegna_valore_tmo_codice;
    assegna_valore_tmo_codice_collegato;
    assegna_valore_tma_codice_collegato_ordine;
    assegna_valore_tsp_codice;
    assegna_valore_tst_codice;
    assegna_valore_tpo_codice;
    assegna_valore_addebito_spese_fattura;
    assegna_valore_intra;
    assegna_valore_spese;
    assegna_valore_spese_manuali;
    assegna_valore_fattura_pro_forma;
    assegna_valore_fattura_professionisti;
    assegna_valore_tcc_codice;
    assegna_valore_cli_codice_fatturazione;

    if (tabella.fieldbyname('accettato').asstring = 'si') and (vecchio_accettato = 'si') and
      (tabella.fieldbyname('situazione').asstring <> 'evaso') then
    begin
      assegna_utn_codice_accettazione;
    end;

    if (vecchio_tiv_codice <> tabella.fieldbyname('tiv_codice').asstring) then
    begin
      if tabella.fieldbyname('tiv_codice').asstring <> '' then
      begin
        read_tabella(arc.arcdit, 'tna', 'codice', cli.fieldbyname('nom_tna_codice').asstring, 'codice_iso');
        if archivio.fieldbyname('codice_iso').asstring <> 'IT' then
        begin
          tabella.fieldbyname('tiv_codice_spese_extra').asstring := tabella.fieldbyname('tiv_codice').asstring;
          (*
            if tabella.fieldbyname('spese_manuali_bollo').asstring = 'no' then
            begin
            tabella.fieldbyname('tiv_codice_spese_bollo').asstring := tabella.fieldbyname('tiv_codice').asstring;
            end;
          *)
          tabella.fieldbyname('tiv_codice_spese_incasso').asstring := tabella.fieldbyname('tiv_codice').asstring;
        end;
      end;
    end;

    inherited;
  end;
end;

procedure tgesven.assegna_utn_codice_accettazione;
begin
  if messaggio(300, 'conferma l''annullamento dell''accettazione del documento in seguito alla modifica') = 1 then
  begin
    tabella.fieldbyname('accettato').asstring := 'no';
    tabella.fieldbyname('utn_codice_accettazione').asstring := '';
    tabella.fieldbyname('data_accettazione').value := null;
  end;
end;

procedure tgesven.after_delete;
begin
  //tven.movven_fido(tmyconnection_go(tabella.connection), cli_codice_fido);

  documento_modificato := false;
  aggiorna_totali_testata := false;
end;

procedure tgesven.after_post;
var
  eseguito_modifica: boolean;
  tma_codice_controllo: string;

  i: word;
  pagamenti_origine, pagamenti_evasione, chiusura_cms: tmyquery_go;
  stessa_data: boolean;

  provvigioni, provvigioni_ca, importo_provvigioni: double;
  conteggio_su_margine: string;
begin
  documento_modificato := true;

  //situazione_iniziale := tabella.fieldbyname('situazione').asstring;

  if esiste then
  begin
    tabella_righe.disablecontrols;

    aggiorna_totali_testata := true;

    eseguito_modifica := false;

    if (vecchio_data_documento <> tabella.fieldbyname('data_documento').asdatetime) or
      (vecchio_serie_documento <> tabella.fieldbyname('serie_documento').asstring) or
      (vecchio_numero_documento <> tabella.fieldbyname('numero_documento').asfloat) or
      (vecchio_cli_codice <> tabella.fieldbyname('cli_codice').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(100, 'essendo variati i riferimenti del documento' + #13 +
        'verranno aggiornati gli archivi collegati');

      aggiorna_archivi_collegati;
    end;

    if (vecchio_cli_codice <> tabella.fieldbyname('cli_codice').asstring) then
    begin
      aggiorna_totali_testata := true;
      eseguito_modifica := true;

      messaggio(100, 'essendo cambiato il codice intestatario documento' + #13 +
        'vengono aggiornati i dati collegati di tutte le righe non evase' + #13 +
        '(provvigioni e contropartite di vendita)');

      if (cms.fieldbyname('cli_codice').asstring <> '') and
        (cms.fieldbyname('cli_codice').asstring <> tabella.fieldbyname('cli_codice').asstring) then
      begin
        messaggio(200, 'il cliente intestatario della commessa presente nel documento' + #13 +
          'è diverso dal nuovo cliente del documento');
      end;

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
            (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
          begin
            art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
            art.close;
            art.open;
            if not art.eof then
            begin
              assegna_vecchio_righe;
              if tabella_edit(tabella_righe) then
              begin
                assegna_provvigioni;
                assegna_gen_codice;
                tabella_righe.post;
              end;
            end;
          end;
        end;
        tabella_righe.next;
      end;
    end;

    if (vecchio_tlv_codice <> tabella.fieldbyname('tlv_codice').asstring) then
    begin
      if messaggio(300, 'essendo cambiato il codice listino è possibile ricalcolare' + #13 +
        'i prezzi e gli importi di tutte le righe non evase' + #13 +
        'conferma per effettuare la modifica') = 1 then
      begin
        eseguito_modifica := true;

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if ((tipo_documento = 'preventivo') or (tipo_documento = 'ordine') and
              ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
              (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
              or
              ((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) then
            begin
              assegna_vecchio_righe;
              if tabella_edit(tabella_righe) then
              begin

                cerca_prezzo_documento('', tabella_righe);

                tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
                tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
                tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
                tabella_righe.fieldbyname('importo_sconto').asfloat := importo_sconto;

                calcola_importo;

                tabella_righe.post;
              end;
            end;
          end;

          tabella_righe.next;
        end;
        tabella_righe.first;
      end;
    end;

    if (vecchio_tag_codice <> tabella.fieldbyname('tag_codice').asstring) or
      (vecchio_tag_codice_ca <> tabella.fieldbyname('tag_codice_ca').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(100, 'essendo cambiati i codici agenti' + #13 +
        'vengono ricalcolate le provvigioni di tutte le righe non evase');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
            (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
          begin
            art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
            art.close;
            art.open;
            if not art.eof then
            begin
              assegna_vecchio_righe;
              if tabella_edit(tabella_righe) then
              begin
                assegna_provvigioni;
                tabella_righe.post;
              end;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_tma_codice <> tabella.fieldbyname('tma_codice').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(100, 'essendo cambiato il codice deposito' + #13 +
        'viene riassegnato il deposito a tutte le righe non assegnate' + #13 +
        'e a quelle a cui era stato assegnato il deposito modificato');

      tma_codice_controllo := vecchio_tma_codice;
      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if (tabella.fieldbyname('tma_codice').asstring = '') or (tabella_righe.fieldbyname('tma_codice').asstring = tma_codice_controllo) then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
              esiste_righe := true;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_tma_codice_collegato <> tabella.fieldbyname('tma_codice_collegato').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(100, 'essendo cambiato il codice del deposito collegato' + #13 +
        'viene riassegnato il deposito collegato a tutte le righe non assegnate' + #13 +
        'e a quelle a cui era stato assegnato il deposito collegato modificato');

      tma_codice_controllo := vecchio_tma_codice_collegato;
      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if tabella_righe.fieldbyname('tma_codice_collegato').asstring = tma_codice_controllo then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;
              esiste_righe := true;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_tiv_codice <> tabella.fieldbyname('tiv_codice').asstring) then
    begin
      eseguito_modifica := true;
      aggiorna_totali_testata := true;

      messaggio(100, 'essendo cambiato il codice I.V.A. vengono ricalcolati' + #13 +
        'gli importi lordi di tutte le righe non evase e con iva non bloccata');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if tabella_righe.fieldbyname('iva_bloccata').asstring <> 'si' then
          begin
            if ((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine') and
              ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
              (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
              or
              ((copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine')) then
            begin
              art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
              art.close;
              art.open;
              if not art.eof then
              begin
                assegna_vecchio_righe;
                if tabella_edit(tabella_righe) then
                begin
                  assegna_tiv_codice_righe;
                  calcola_importo;
                  tabella_righe.post;
                end;
              end;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_tcc_codice <> tabella.fieldbyname('tcc_codice').asstring) and (tabella.fieldbyname('tco_codice').asstring <> '') then
    begin
      eseguito_modifica := true;

      messaggio(100, 'essendo cambiata la categoria contabile' + #13 +
        'viene cambiata la contropartite delle righe');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
          art.close;
          art.open;
          if not art.eof then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              assegna_gen_codice;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_listino_con_iva <> tabella.fieldbyname('listino_con_iva').asstring) then
    begin
      eseguito_modifica := true;
      aggiorna_totali_testata := true;

      messaggio(100, 'essendo cambiato il tipo listino vengono ricalcolati i totali del documento');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if ((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine') and
            ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
            (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
            or
            ((copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine')) then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              calcola_importo;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_cambio <> tabella.fieldbyname('cambio').asfloat) then
    begin
      eseguito_modifica := true;
      aggiorna_totali_testata := true;

      messaggio(100, 'essendo cambiato il valore del cambio vengono ricalcolati i totali del documento');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if ((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine') and
            ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
            (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')))
            or
            ((copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine')) then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              calcola_importo;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_oscillazione_cambio <> tabella.fieldbyname('oscillazione_cambio').asstring) and
      (tabella.fieldbyname('oscillazione_cambio').asstring = 'no') then
    begin
      eseguito_modifica := true;
      aggiorna_totali_testata := true;

      messaggio(100, 'essendo cambiata la gestione dell''oscillazione cambio' + #13 +
        'vengono azzerati i riferimenti inseriti sulle righe');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
            (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('tva_codice').asstring := '';
              tabella_righe.fieldbyname('percentuale_oscillazione_cambio').asfloat := 0;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if (vecchio_data_inizio_competenza <> tabella.fieldbyname('data_inizio_competenza').asdatetime) then
    begin
      if (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
      begin
        eseguito_modifica := true;

        messaggio(100, 'essendo cambiata la data inizio competenza' + #13 +
          'vengono aggiornate tutte le righe con date corrispondenti');

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if tabella_righe.fieldbyname('data_inizio_competenza').asdatetime = vecchio_data_inizio_competenza then
            begin
              assegna_vecchio_righe;
              tabella_righe.edit;
              tabella_righe.fieldbyname('data_inizio_competenza').asstring := tabella.fieldbyname('data_inizio_competenza').asstring;
              tabella_righe.post;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_data_fine_competenza <> tabella.fieldbyname('data_fine_competenza').asdatetime) then
    begin
      if (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
      begin
        eseguito_modifica := true;

        messaggio(100, 'essendo cambiata la data fine competenza' + #13 +
          'vengono aggiornate tutte le righe con date corrispondenti');

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if tabella_righe.fieldbyname('data_fine_competenza').asdatetime = vecchio_data_fine_competenza then
            begin
              assegna_vecchio_righe;
              tabella_righe.edit;
              tabella_righe.fieldbyname('data_fine_competenza').asstring := tabella.fieldbyname('data_fine_competenza').asstring;
              tabella_righe.post;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_data_consegna <> tabella.fieldbyname('data_consegna').asdatetime) and (tipo_documento = 'ordine') then
    begin
      eseguito_modifica := true;

      if messaggio(300, 'è cambiata la data consegna' + #13 +
        'conferma per aggiornate le righe') = 1 then
      begin
        stessa_data := true;
        if messaggio(300, 'conferma per modificare anche le righe con data diversa') = 1 then
        begin
          stessa_data := false;
        end;

        tabella_righe.close;
        tabella_righe.open;
        while not tabella_righe.eof do
        begin
          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
            begin
              if not stessa_data or (tabella_righe.fieldbyname('data_consegna').asdatetime = vecchio_data_consegna) then
              begin
                assegna_vecchio_righe;
                tabella_righe.edit;
                tabella_righe.fieldbyname('data_consegna').asstring := tabella.fieldbyname('data_consegna').asstring;
                tabella_righe.post;
              end;
            end;
          end;

          tabella_righe.next;
        end;
      end;
    end;

    if (vecchio_cms_codice_testata <> tabella.fieldbyname('cms_codice').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il codice commessa viene riassegnata' + #13 +
        'la commessa a tutte le righe a cui era stata assegnata la commessa modificata');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if tabella_righe.fieldbyname('cms_codice').asstring = vecchio_cms_codice_testata then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
      tabella_righe.first;
    end;

    if (vecchio_tipologia_testata <> tabella.fieldbyname('tipologia').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiato il codice sottocommessa viene riassegnata' + #13 +
        'la sottocommessa a tutte le righe a cui era stata assegnata la sottocommessa modificata');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if tabella_righe.fieldbyname('tipologia').asstring = vecchio_tipologia_testata then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
      tabella_righe.first;
    end;

    if (vecchio_tipo_imballaggio <> tabella.fieldbyname('tipo_imballaggio').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(200, 'essendo cambiata la tipologia imballaggio viene riassegnata' + #13 +
        'la tipologia a tutte le righe a cui era stata assegnata la tipologia modificata');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if tabella_righe.fieldbyname('tipo_imballaggio').asstring = vecchio_tipo_imballaggio then
          begin
            assegna_vecchio_righe;
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('tipo_imballaggio').asstring := tabella.fieldbyname('tipo_imballaggio').asstring;
              tabella_righe.post;
            end;
          end;
        end;

        tabella_righe.next;
      end;
      tabella_righe.first;
    end;

    if (vecchio_iva_bloccata <> tabella.fieldbyname('iva_bloccata').asstring) then
    begin
      eseguito_modifica := true;

      messaggio(100, 'essendo cambiato lo stato dell''iva bloccata ' + #13 +
        'vengono modificate tutte le righe non evase');

      tabella_righe.close;
      tabella_righe.open;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
            (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
          begin
            if tabella_righe.fieldbyname('iva_bloccata').asstring = vecchio_iva_bloccata then
            begin
              assegna_vecchio_righe;
              if tabella_edit(tabella_righe) then
              begin
                tabella_righe.fieldbyname('iva_bloccata').asstring := tabella.fieldbyname('iva_bloccata').asstring;
                tabella_righe.post;
              end;
            end;
          end;
        end;

        tabella_righe.next;
      end;
    end;

    if eseguito_modifica then
    begin
      tabella_righe.first;
    end;
    tabella_righe.enablecontrols;
  end
  else
  begin
    if (tabella.fieldbyname('tipo_documento').asstring = 'bolla') or
      (tabella.fieldbyname('tipo_documento').asstring = 'ddt') or
      (tabella.fieldbyname('tipo_documento').asstring = 'ddt fornitori') or
      (tabella.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria') then
    begin
      if (tsp.fieldbyname('tipo').asstring = 'vettore') and (tdo.fieldbyname('scheda_trasporto').asstring = 'si') then
      begin
        esegui_scheda_trasporto;
      end;
    end;

    if progressivo_documento_evadere <> 0 then
    begin
      pagamenti_origine := tmyquery_go.create(nil);
      pagamenti_origine.connection := arc.arcdit;
      pagamenti_evasione := tmyquery_go.create(nil);
      pagamenti_evasione.connection := arc.arcdit;

      if tipo_documento = 'ordine' then
      begin
        pagamenti_evasione.sql.text := 'select * from ovp where progressivo = :progressivo';
      end
      else if tipo_documento = 'bolla' then
      begin
        pagamenti_evasione.sql.text := 'select * from bvp where progressivo = :progressivo';
      end
      else if tipo_documento = 'corrispettivo' then
      begin
        pagamenti_evasione.sql.text := 'select * from cvp where progressivo = :progressivo';
      end
      else if tipo_documento = 'ddt' then
      begin
        pagamenti_evasione.sql.text := 'select * from dvp where progressivo = :progressivo';
      end
      else
      begin
        pagamenti_evasione.sql.text := 'select * from fvp where progressivo = :progressivo';
      end;

      if copy(tipo_documento_evadere, 1, 10) = 'preventivo' then
      begin
        pagamenti_origine.sql.text := 'select * from pvp where progressivo = :progressivo';
      end
      else if tipo_documento_evadere = 'ordine' then
      begin
        pagamenti_origine.sql.text := 'select * from ovp where progressivo = :progressivo';
      end
      else if tipo_documento_evadere = 'ddt' then
      begin
        pagamenti_origine.sql.text := 'select * from dvp where progressivo = :progressivo';
      end
      else
      begin
        pagamenti_origine.sql.text := 'select * from fvp where progressivo = 0';
      end;

      // pagamenti personalizzati
      pagamenti_origine.close;
      try
        pagamenti_origine.parambyname('progressivo').asinteger := progressivo_documento_evadere;
      except
      end;
      pagamenti_origine.open;
      if not pagamenti_origine.isempty then
      begin
        messaggio(100, 'evasione pagamento personalizzato');

        pagamenti_evasione.open;
        while not pagamenti_origine.eof do
        begin
          pagamenti_evasione.append;

          for i := 0 to pagamenti_origine.fieldcount - 1 do
          begin
            if (lowercase(pagamenti_origine.fields[i].fieldname) <> 'id') then
            begin
              pagamenti_evasione.fieldbyname(pagamenti_origine.fields[i].fieldname).value := pagamenti_origine.fields[i].value;
            end;
          end;
          pagamenti_evasione.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;

          pagamenti_evasione.post;

          pagamenti_origine.next;
        end;
      end;

      pagamenti_origine.free;
      pagamenti_evasione.free;

      //  documenti allegati
      if tdo.fieldbyname('eredita_allegati').asstring = 'si' then
      begin
        duplica_documenti_allegati(tipo_documento_evadere, tipo_documento, progressivo_documento_evadere, 0,
          tabella.fieldbyname('progressivo').asinteger, 0);
      end;

      //  documenti collegati
      eredita_documenti_collegati(tipo_documento_evadere, tipo_documento, progressivo_documento_evadere, tabella.fieldbyname('progressivo').asinteger);
    end;

    //  provvigioni multilivello
    if (arc.dit.fieldbyname('provvigioni_multilivello').asstring = 'si') and (tipo_documento = 'ordine') then
    begin
      //  nazione
      if ind.fieldbyname('tna_codice').asstring <> '' then
      begin
        read_tabella(arc.arcdit, 'tna', 'codice', ind.fieldbyname('tna_codice').asstring, 'tag_codice');
      end
      else
      begin
        read_tabella(arc.arcdit, 'tna', 'codice', cli.fieldbyname('nom_tna_codice').asstring, 'tag_codice');
      end;
      if archivio.fieldbyname('tag_codice').asstring <> '' then
      begin
        if not read_tabella(prvm, vararrayof([tabella.fieldbyname('progressivo').asinteger, archivio.fieldbyname('tag_codice').asstring])) then
        begin
          provv.assegna_provvigioni(archivio.fieldbyname('tag_codice').asstring,
            tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
            cli.fieldbyname('tp1_codice').asstring, '', '', 'normale', tabella.fieldbyname('tlv_codice').asstring,
            0, 0, 0, 0, provvigioni, provvigioni_ca, importo_provvigioni, conteggio_su_margine, tabella.fieldbyname('data_documento').asdatetime);

          prvm.append;
          prvm.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
          prvm.fieldbyname('tag_codice').asstring := archivio.fieldbyname('tag_codice').asstring;
          prvm.fieldbyname('percentuale').asfloat := provvigioni;
          prvm.post;
        end;
      end;

      //  zona
      if ind.fieldbyname('tzo_codice').asstring <> '' then
      begin
        read_tabella(arc.arcdit, 'tzo', 'codice', ind.fieldbyname('tzo_codice').asstring, 'tag_codice');
      end
      else
      begin
        read_tabella(arc.arcdit, 'tzo', 'codice', cli.fieldbyname('tzo_codice').asstring, 'tag_codice');
      end;
      if archivio.fieldbyname('tag_codice').asstring <> '' then
      begin
        if not read_tabella(prvm, vararrayof([tabella.fieldbyname('progressivo').asinteger, archivio.fieldbyname('tag_codice').asstring])) then
        begin
          provv.assegna_provvigioni(archivio.fieldbyname('tag_codice').asstring,
            tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
            cli.fieldbyname('tp1_codice').asstring, '', '', 'normale', tabella.fieldbyname('tlv_codice').asstring,
            0, 0, 0, 0, provvigioni, provvigioni_ca, importo_provvigioni, conteggio_su_margine, tabella.fieldbyname('data_documento').asdatetime);

          prvm.append;
          prvm.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
          prvm.fieldbyname('tag_codice').asstring := archivio.fieldbyname('tag_codice').asstring;
          prvm.fieldbyname('percentuale').asfloat := provvigioni;
          prvm.post;
        end;
      end;

      //  area
      read_tabella(arc.arcdit, 'tar', 'codice', cli.fieldbyname('tar_codice').asstring, 'tag_codice');
      if archivio.fieldbyname('tag_codice').asstring <> '' then
      begin
        if not read_tabella(prvm, vararrayof([tabella.fieldbyname('progressivo').asinteger, archivio.fieldbyname('tag_codice').asstring])) then
        begin
          provv.assegna_provvigioni(archivio.fieldbyname('tag_codice').asstring,
            tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
            cli.fieldbyname('tp1_codice').asstring, '', '', 'normale', tabella.fieldbyname('tlv_codice').asstring,
            0, 0, 0, 0, provvigioni, provvigioni_ca, importo_provvigioni, conteggio_su_margine, tabella.fieldbyname('data_documento').asdatetime);

          prvm.append;
          prvm.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
          prvm.fieldbyname('tag_codice').asstring := archivio.fieldbyname('tag_codice').asstring;
          prvm.fieldbyname('percentuale').asfloat := provvigioni;
          prvm.post;
        end;
      end;

      //  agente cli
      if cli.fieldbyname('tag_codice').asstring <> '' then
      begin
        if not read_tabella(prvm, vararrayof([tabella.fieldbyname('progressivo').asinteger, cli.fieldbyname('tag_codice').asstring])) then
        begin
          provv.assegna_provvigioni(cli.fieldbyname('tag_codice').asstring,
            tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
            cli.fieldbyname('tp1_codice').asstring, '', '', 'normale', tabella.fieldbyname('tlv_codice').asstring,
            0, 0, 0, 0, provvigioni, provvigioni_ca, importo_provvigioni, conteggio_su_margine, tabella.fieldbyname('data_documento').asdatetime);

          prvm.append;
          prvm.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
          prvm.fieldbyname('tag_codice').asstring := cli.fieldbyname('tag_codice').asstring;
          prvm.fieldbyname('percentuale').asfloat := provvigioni;
          prvm.post;
        end;
      end;

      //  secondo agente cli
      if cli.fieldbyname('tag_codice_01').asstring <> '' then
      begin
        if not read_tabella(prvm, vararrayof([tabella.fieldbyname('progressivo').asinteger, cli.fieldbyname('tag_codice_01').asstring])) then
        begin
          provv.assegna_provvigioni(cli.fieldbyname('tag_codice_01').asstring,
            tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
            cli.fieldbyname('tp1_codice').asstring, '', '', 'normale', tabella.fieldbyname('tlv_codice').asstring,
            0, 0, 0, 0, provvigioni, provvigioni_ca, importo_provvigioni, conteggio_su_margine, tabella.fieldbyname('data_documento').asdatetime);

          prvm.append;
          prvm.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
          prvm.fieldbyname('tag_codice').asstring := cli.fieldbyname('tag_codice_01').asstring;
          prvm.fieldbyname('percentuale').asfloat := provvigioni;
          prvm.post;
        end;
      end;
    end;
  end;
  assegna_vecchio_testata;

  if (tabella.fieldbyname('cms_codice').asstring <> '') and
    ((tabella.fieldbyname('chiusura_commessa').asstring = 'si') or (tabella.fieldbyname('chiusura_sottocommessa').asstring = 'si')) then
  begin
    chiusura_cms := tmyquery_go.create(nil);
    chiusura_cms.connection := arc.arcdit;
    if tabella.fieldbyname('chiusura_commessa').asstring = 'si' then
    begin
      chiusura_cms.sql.text := 'update cms set chiusa = ''si'', data_chiusura = :data_chiusura where codice = :cms_codice';
      chiusura_cms.parambyname('data_chiusura').asdate := tabella.fieldbyname('data_documento').asdatetime;
      chiusura_cms.parambyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
      chiusura_cms.execsql;
    end
    else if tabella.fieldbyname('chiusura_sottocommessa').asstring = 'si' then
    begin
      chiusura_cms.sql.text := 'update cmt set chiusa = ''si'', data_chiusura = :data_chiusura where cms_codice = :cms_codice and tipologia = :cmt_codice';
      chiusura_cms.parambyname('data_chiusura').asdate := tabella.fieldbyname('data_documento').asdatetime;
      chiusura_cms.parambyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
      chiusura_cms.parambyname('cmt_codice').asstring := tabella.fieldbyname('tipologia').asstring;
      chiusura_cms.execsql;
    end;

    chiusura_cms.free;
  end;

  inherited;
end;

procedure tgesven.before_post_righe;
var
  importo_netto: double;
  prezzo_inventario: double;
  valorizzazione: string;
  prosegui: boolean;

  pr: timpalf;
begin
  prosegui := true;

  if (tabella.fieldbyname('situazione_sdi').asstring <> 'in attesa invio') and
    ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
  begin
    messaggio(000, 'documento non modificabile perché inviato a SDI' + slinebreak +
      'situazione [' + tabella.fieldbyname('situazione_sdi').asstring + ']' + slinebreak +
      'esito [' + tabella.fieldbyname('codice_esito_sdi').asstring + ']');
    prosegui := false;
  end;

  if not prosegui then
  begin
    tabella_righe.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_griglia_righe);
    abort;
  end
  else
  begin
    inherited;

    tma_codice_righe_controllo_post;
    tiv_codice_righe_controllo_post;
    gen_codice_righe_controllo_post;

    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      if (tabella_righe.fieldbyname('cms_codice').asstring <> tabella.fieldbyname('cms_codice').asstring) and
        (tabella.fieldbyname('cms_codice').asstring <> '') and (tabella_righe.fieldbyname('art_codice').asstring <> '') then
      begin
        messaggio(200, 'il codice commessa della riga è diverso da quello della testata documento');
      end;

      if (tabella.fieldbyname('situazione').asstring = 'evaso') and
        not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine')) then
      begin
        tabella_righe.fieldbyname('situazione').asstring := 'evaso';
      end;

      calcola_importo;
      if (calcolo_margine = 'si') and (tabella_righe.fieldbyname('costo_unitario').asfloat = 0) then
      begin
        valorizzazione := valorizzazione_gestionale;
        przinv.przinv(tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
          valorizzazione, esercizio, tabella.fieldbyname('data_documento').asdatetime, tabella_righe.fieldbyname('tum_quantita_base').asfloat,
          prezzo_inventario, 'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');

        tabella_righe.fieldbyname('costo_unitario').asfloat := prezzo_inventario;
      end;
    end
    else
    begin
      tabella_righe.fieldbyname('data_consegna').value := null;
      tabella_righe.fieldbyname('cms_codice').asstring := '';
      tabella_righe.fieldbyname('tipologia').asstring := '';
      tabella_righe.fieldbyname('tma_codice').asstring := '';
      tabella_righe.fieldbyname('data_inizio_competenza').asstring := '';
      tabella_righe.fieldbyname('data_fine_competenza').asstring := '';
      tabella_righe.fieldbyname('tum_quantita_base').asfloat := 0;
      tabella_righe.fieldbyname('cen_codice').asstring := '';
      tabella_righe.fieldbyname('tvc_codice').asstring := '';
    end;

    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and (tabella_righe.fieldbyname('prezzo_netto_listino').asfloat <> 0) then
    begin
      if sconto_massimo <> 0 then
      begin
        importo_netto := arrotonda(tabella_righe.fieldbyname('quantita').asfloat * tabella_righe.fieldbyname('prezzo_netto_listino').asfloat);
        if arrotonda(importo_netto * (100 - sconto_massimo) / 100) > arrotonda(tabella_righe.fieldbyname('importo').asfloat) then
        begin
          messaggio(100, 'è stato applicato uno sconto superiore al massimo consentito');
          if blocco_sconto_massimo = 'si' then
          begin
            if password_sconto_massimo = '' then
            begin
              v_art_codice.setfocus;
              abort;
            end
            else
            begin
              pr := timpalf.create(nil);
              pr.v_form_caption := 'Password per accettazione vendita';
              pr.v_descrizione_caption := 'password';
              pr.v_width_campo := 08;
              pr.valore_passato := '';
              pr.tipo_campo := 'alfa';
              pr.campo_password := true;
              pr.showmodal;

              if pr.valore_passato <> password_sconto_massimo then
              begin
                pr.free;
                v_art_codice.setfocus;
                abort;
              end
              else
              begin
                pr.free;
              end;
            end;
          end;
        end;
      end;
    end;
    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and (tdo.fieldbyname('controllo_costo').asstring = 'si') then
    begin
      arc.controllo_prezzo_costo(tabella_righe.fieldbyname('art_codice').asstring,
        tabella_righe.fieldbyname('importo').asfloat, tabella_righe.fieldbyname('tum_quantita_base').asfloat);
    end;

    assegna_valore_art_codice;
    assegna_valore_prezzo;
    assegna_valore_tsm_codice_righe;
    assegna_valore_tma_codice_righe;

    if variato_provvigioni then
    begin
      assegna_provvigioni;
    end;

    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and (tabella_righe.fieldbyname('tma_codice').asstring = '') and
      (tabella.fieldbyname('tma_codice').asstring <> '') then
    begin
      tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
    end;

    if not esiste_righe and art.active and (tabella_righe.fieldbyname('art_codice').asstring <> '') and
      (art.fieldbyname('arv_id').asinteger <> 0) then
    begin
      esegui_formula;
    end;

    if (gestione_configurazione = 'si') and (not esiste_righe) and not art.isempty then
    begin
      if art.fieldbyname('gestione_configurazione').asstring = 'si' then
      begin
        esegui_configurazione;
      end;
    end;

    if tabella_righe.fieldbyname('importo').asfloat <> 0 then
    begin
      tabella_righe.fieldbyname('no_fattura').asstring := 'no';
    end;

    if not esiste_righe and (tipo_documento <> 'ddt fornitori') and not tlv.isempty and (tlv.fieldbyname('prezzo_comprensivo_raee').asstring = 'si') and
      (art.fieldbyname('art_codice_raee').asstring <> '') and
      (((tipo_documento <> 'preventivo nominativi') and (cli.fieldbyname('applicabilita_conai').asstring = 'si')) or
      ((tipo_documento = 'preventivo nominativi') and (nom.fieldbyname('applicabilita_conai').asstring = 'si'))) and
      (not tr0.isempty) then
    begin
      raee.scorporo_raee(tr0, tabella, tabella_righe, data_documento);
      calcola_importo;
    end;

    if (tabella_righe.fieldbyname('descrizione1').asstring = '') and (tabella_righe.fieldbyname('totale_progressivo').asstring = 'si') then
    begin
      tabella_righe.fieldbyname('descrizione1').asstring := '------------------------------';
    end;

    if (tipo_documento <> 'preventivo') and (tipo_documento <> 'ddt fornitori') and
      (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') and
      (tabella_righe.fieldbyname('tiv_codice').asstring <> '') then
    begin
      read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'controllo_su_documenti');
      iva_diversa.close;
      iva_diversa.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
      iva_diversa.parambyname('tiv_codice').asstring := tabella_righe.fieldbyname('tiv_codice').asstring;
      iva_diversa.parambyname('controllo_su_documenti').asstring := archivio.fieldbyname('controllo_su_documenti').asstring;
      iva_diversa.open;
      if not iva_diversa.isempty then
      begin
        if messaggio(304, 'sono presenti righe con aliquota iva non compatibile con quella dell''articolo in gestione' + #13 +
          'proseguire con l''inserimento della riga') <> 1 then
        begin
          v_art_codice.setfocus;
          abort;
        end;
      end;
    end;

    read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);
    if art.fieldbyname('tipo_articolo').asstring <> 'fuori listino' then
    begin
      tabella_righe.fieldbyname('artp_codice').asstring := '';
    end;

    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and (tdo.fieldbyname('controllo_importo').asstring = 'si') then
    begin
      if tabella_righe.fieldbyname('importo').asfloat = 0 then
      begin
        messaggio(200, 'l''importo della riga del documento è zero');
      end;
    end;

    if vending and (tabella_righe.fieldbyname('punto_vendita').asstring = '') then
    begin
      messaggio(000, 'non è impostato l''impianto');
      abort;
    end;
  end;
end;

procedure tgesven.esegui_formula;
var
  pr: tformuladsb;
  stringa, variabile, valore: string;
begin
  pr := tformuladsb.create(nil);
  pr.art_codice := v_art_codice.text;
  pr.formula := tabella_righe.fieldbyname('formula').asstring;
  pr.showmodal;
  tabella_righe.fieldbyname('formula').asstring := pr.formula;
  stringa := trim(pr.formula);
  pr.free;

  // rimpiazza valori nella descrizione
  while pos(';', stringa) > 0 do
  begin
    variabile := trim(copy(stringa, 1, pos('=', stringa) - 1));
    valore := trim(copy(stringa, pos('=', stringa) + 1, pos(';', stringa) - pos('=', stringa) - 1));

    tabella_righe.fieldbyname('descrizione1').asstring := stringreplace(tabella_righe.fieldbyname('descrizione1').asstring, '<' + variabile + '>', valore, [rfreplaceall]);
    tabella_righe.fieldbyname('descrizione2').asstring := stringreplace(tabella_righe.fieldbyname('descrizione2').asstring, '<' + variabile + '>', valore, [rfreplaceall]);

    stringa := trim(copy(stringa, pos(';', stringa) + 1, length(stringa)));
  end;
end;

procedure tgesven.after_post_righe;
var
  riga_mmr: integer;
  tabelle_collegate, bvt_dvt: tmyquery_go;
  quantita_rda: double;

  //  lavorazione vetrerie
  superficie, quantita, divisore_dimensioni: double;
  dimensione, dimensione1, dimensione2: double;
  tipo_lavorazione: string;
begin
  inherited;

  documento_modificato := true;
  if tabella_righe.fieldbyname('cms_codice').asstring <> '' then
  begin
    ultimo_cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
    ultimo_tipologia := tabella_righe.fieldbyname('tipologia').asstring;
  end;

  aggiorna_totali_testata := true;
  aggiorna_totali_colli := true;

  // aggiornamenti vari
  if esiste_righe then
  begin
    if trim(vecchio_art_codice) <> '' then
    begin
      if (trim(vecchio_art_codice) <> tabella_righe.fieldbyname('art_codice').asstring) or
        (arrotonda(vecchio_quantita, 4) <> tabella_righe.fieldbyname('quantita').asfloat) then
      begin
        controllo_rda_oar_opt('modificata');
      end;

      if tabella_righe.fieldbyname('situazione').asstring = 'annullato' then
      begin
        ltm.close;
        ltm.sql.clear;
        ltm.sql.add('delete from ltm');
        ltm.sql.add('where documento_origine = :codice0');
        ltm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
        ltm.params[0].asstring := tipo_documento + ' ven';
        ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ltm.execsql;
      end
      else
      begin
        if (vecchio_gen_codice_righe <> tabella_righe.fieldbyname('gen_codice').asstring) then
        begin
          cmm.close;
          cmm.sql.clear;
          cmm.sql.add('select * from cmm');
          cmm.sql.add('where documento_origine = :codice0');
          cmm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
          cmm.params[0].asstring := tipo_documento + ' ven';
          cmm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          cmm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
          cmm.open;
          cmm.first;
          if not cmm.eof then
          begin
            messaggio(100, 'essendo variata la contropartita vendite' + #13 +
              'i movimenti delle commesse collegati verranno cancellati' + #13 + #13 +
              'ricaricarli nuovamente');
          end;
          while not cmm.eof do
          begin
            cmm.delete;
          end;
          cmm.close;

          cem.close;
          cem.sql.clear;
          cem.sql.add('select * from cem');
          cem.sql.add('where documento_origine = :codice0');
          cem.sql.add('and doc_progressivo_origine = :codice2 and doc_riga_origine = :codice3');
          cem.params[0].asstring := tipo_documento + ' ven';
          cem.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          cem.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
          cem.open;
          cem.first;
          if not cem.eof then
          begin
            messaggio(100, 'essendo variata la contropartita vendite' + #13 +
              'i movimenti della contabilità analitica collegati verranno cancellati' + #13 + #13 +
              'ricaricarli nuovamente');
          end;
          while not cem.eof do
          begin
            cem.delete;
          end;
          cem.close;
        end
        else
        begin
          if (vecchio_art_codice <> tabella_righe.fieldbyname('art_codice').asstring) or
            (arrotonda(vecchio_importo_euro) <> arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat)) or
            (vecchio_cms_codice <> tabella_righe.fieldbyname('cms_codice').asstring) or
            (vecchio_tipologia <> tabella_righe.fieldbyname('tipologia').asstring) or
            (arrotonda(vecchio_quantita, 4) <> arrotonda(tabella_righe.fieldbyname('quantita').asfloat, 4)) then
          begin
            if (arrotonda(vecchio_importo_euro) <> arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat)) then
            begin
              cem.sql.clear;
              cem.sql.add('select * from cem');
              cem.sql.add('where documento_origine = :codice0');
              cem.sql.add('and doc_progressivo_origine = :codice2');
              cem.sql.add('and doc_riga_origine = :codice3 limit 1');
              cem.params[0].asstring := tipo_documento + ' ven';
              cem.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
              cem.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
              cem.close;
              cem.open;
              if not cem.eof then
              begin
                messaggio(100, 'essendo variato l''importo della riga ' +
                  inttostr(tabella_righe.fieldbyname('riga').asinteger) +
                  '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
                  'è necessario riallineare l''archivio della contabilità analitica');
                esegui_analitica('righe');
              end;
            end;

            cmm.sql.clear;
            cmm.sql.add('select * from cmm');
            cmm.sql.add('where documento_origine = :codice0');
            cmm.sql.add('and doc_progressivo_origine = :codice2');
            cmm.sql.add('and doc_riga_origine = :codice3 limit 1');
            cmm.params[0].asstring := tipo_documento + ' ven';
            cmm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            cmm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            cmm.close;
            cmm.open;

            if not cmm.eof then
            begin
              messaggio(100, 'essendo variati il codice articolo, la commessa, la quantita o l''importo della riga ' +
                inttostr(tabella_righe.fieldbyname('riga').asinteger) +
                '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
                'è necessario riallineare l''archivio commesse');
              esegui_commesse;
            end;
          end;
        end;

        if (vecchio_art_codice <> tabella_righe.fieldbyname('art_codice').asstring) then
        begin
          ltm.close;
          ltm.sql.clear;
          ltm.sql.add('select * from ltm');
          ltm.sql.add('where documento_origine = :codice0');
          ltm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
          ltm.params[0].asstring := tipo_documento + ' ven';
          ltm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
          ltm.open;
          ltm.first;
          if not ltm.eof then
          begin
            if art.fieldbyname('lotti').asstring = 'si' then
            begin
              messaggio(100, 'essendo variato l''articolo della riga' + #13 +
                'i movimenti dei lotti collegati verranno cancellati' + #13 + #13 +
                'ricaricarli nuovamente');
            end
            else
            begin
              messaggio(100, 'essendo variato l''articolo della riga' + #13 +
                'i movimenti dei lotti collegati verranno cancellati');
            end;
          end;
          while not ltm.eof do
          begin
            ltm.delete;
          end;
          ltm.close;

          //  ubicazioni
          ubm.close;
          ubm.sql.text := 'delete from ubm where documento_origine = :documento_origine and ' +
            'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
          ubm.parambyname('documento_origine').asstring := tipo_documento + ' ven';
          ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
          ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
          ubm.execsql;
          esegui_ubicazioni;
        end
        else if arrotonda(vecchio_quantita, 4) <> arrotonda(tabella_righe.fieldbyname('quantita').asfloat, 4) then
        begin
          ltm.close;
          ltm.sql.clear;
          ltm.sql.add('select * from ltm');
          ltm.sql.add('where documento_origine = :codice0');
          ltm.sql.add('and doc_progressivo_origine = :codice2');
          ltm.sql.add('and doc_riga_origine = :codice3 limit 1');
          ltm.params[0].asstring := tipo_documento + ' ven';
          ltm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
          ltm.open;

          if not ltm.eof then
          begin
            messaggio(200, 'essendo variata la quantità della riga ' +
              inttostr(tabella_righe.fieldbyname('riga').asinteger) +
              '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
              'è necessario riallineare l''archivio lotti');
            esegui_lotti;
          end;

          //  ubicazioni
          if arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si' then
          begin
            ubm.close;
            ubm.sql.text := 'select * from ubm where documento_origine = :documento_origine and ' +
              'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
            ubm.parambyname('documento_origine').asstring := tipo_documento + ' ven';
            ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
            ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
            ubm.open;
            if not ubm.eof then
            begin
              messaggio(200, 'essendo variata la quantità della riga ' +
                inttostr(tabella_righe.fieldbyname('riga').asinteger) +
                '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
                'è necessario riallineare l''archivio delle ubicazioni');
              esegui_ubicazioni;
            end;
          end;

          if (vecchio_art_codice <> tabella_righe.fieldbyname('art_codice').asstring) then
          begin
            lcr.close;
            lcr.sql.clear;
            lcr.sql.add('select * from lcr');
            lcr.sql.add('where documento_origine = :codice0');
            lcr.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            lcr.params[0].asstring := tipo_documento + ' ven';
            lcr.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            lcr.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            lcr.open;
            lcr.first;
            if not lcr.eof then
            begin
              messaggio(200, 'essendo variato l''articolo della riga' + #13 +
                'i movimenti delle lavorazioni conto terzi collegati verranno cancellati' + #13 + #13 +
                'ricaricarli nuovamente');
            end;
            while not lcr.eof do
            begin
              lcr.delete;
            end;
            crea_conto_terzi;
            lcr.close;
          end;
        end
        else
        begin
          if arrotonda(vecchio_quantita, 4) <> arrotonda(tabella_righe.fieldbyname('quantita').asfloat, 4) then
          begin
            lcr.sql.clear;
            lcr.sql.add('select * from lcr');
            lcr.sql.add('where documento_origine = :codice0');
            lcr.sql.add('and doc_progressivo_origine = :codice2');
            lcr.sql.add('and doc_riga_origine = :codice3 limit 1');
            lcr.params[0].asstring := tipo_documento + ' ven';
            lcr.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            lcr.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            lcr.close;
            lcr.open;

            if not lcr.eof then
            begin
              messaggio(200, 'essendo variata la quantità della riga ' +
                inttostr(tabella_righe.fieldbyname('riga').asinteger) +
                '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring + #13 +
                'è necessario riallineare l''archivio delle lavorazioni conto terzi');
              varia_conto_terzi;
            end;
            lcr.close;
          end;
        end;
      end;

      if vecchio_tma_codice_righe <> tabella_righe.fieldbyname('tma_codice').asstring then
      begin
        ltm.close;
        ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
        ltm.params[0].asstring := tipo_documento + ' ven';
        ltm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
        ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ltm.open;
        if not ltm.eof then
        begin
          messaggio(200, 'essendo variato il codice deposito della riga' + #13 +
            'verranno aggiornati i movimenti dell''archivio lotti');
          ltm.first;
          while not ltm.eof do
          begin
            ltm.edit;
            ltm.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
            ltm.post;
            ltm.next;
          end;
        end;
        ltm.close;
      end;
    end;
  end
  else
  begin
    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      if (tabella.fieldbyname('situazione').asstring = 'evaso') and
        not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine')) then
      begin
        // crea movimento di magazzino
        if tabella.fieldbyname('tmo_codice').asstring <> '' then
        begin
          mmr.sql.clear;
          mmr.sql.add('select max(riga) riga');
          mmr.sql.add('from mmr');
          mmr.sql.add('where progressivo = :progressivo');
          mmr.params[0].asinteger := mmt_progressivo_evaso;
          mmr.close;
          mmr.open;
          if not mmr.eof then
          begin
            riga_mmr := mmr.fieldbyname('riga').asinteger;
          end
          else
          begin
            riga_mmr := 0;
          end;

          movmag.progressivo := mmt_progressivo_evaso;
          movmag.riga := riga_mmr + 1;
          movmag.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
          movmag.tma_codice_mmr := tabella_righe.fieldbyname('tma_codice').asstring;
          movmag.quantita := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
          movmag.tsm_codice := tabella_righe.fieldbyname('tsm_codice').asstring;
          movmag.tsm_codice_art := tabella_righe.fieldbyname('tsm_codice_art').asstring;
          movmag.importo_sconto := tabella_righe.fieldbyname('importo_sconto').asfloat;

          if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
          begin
            movmag.prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
            movmag.importo := tabella_righe.fieldbyname('importo').asfloat;
            movmag.importo_euro := tabella_righe.fieldbyname('importo_euro').asfloat;
          end
          else
          begin
            read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale');
            // movmag.prezzo := arrotonda(tabella_righe.fieldbyname('prezzo').asfloat / (1 + archivio.fieldbyname('percentuale').asfloat / 100));
            movmag.prezzo := arc.scorporo(tabella_righe.fieldbyname('prezzo').asfloat, archivio.fieldbyname('percentuale').asfloat, decimali_max_prezzo);
            movmag.importo := arrotonda(tabella_righe.fieldbyname('importo').asfloat - tabella_righe.fieldbyname('importo_iva').asfloat);
            movmag.importo_euro := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat - tabella_righe.fieldbyname('importo_iva_euro').asfloat);
          end;

          movmag.tipo_movimento := tabella_righe.fieldbyname('tipo_movimento').asstring;
          movmag.importo_spese := 0;
          movmag.importo_spese_euro := 0;
          movmag.descrizione_mmr := '';
          movmag.opt_tipo_articolo := '';
          movmag.olt_tipo_articolo := '';
          movmag.mmr_doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
          movmag.cms_codice_righe := tabella_righe.fieldbyname('cms_codice').asstring;
          movmag.tipologia_righe := tabella_righe.fieldbyname('tipologia').asstring;

          movmag.crea_mmr;

          esegui_ubicazioni_magazzino(tabella.fieldbyname('tmo_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring);
        end;
      end;

      esegui_commesse;
      esegui_analitica('righe');
      if copy(tipo_documento, 1, 10) <> 'preventivo' then
      begin
        esegui_lotti;
      end;
      esegui_ubicazioni;
      crea_conto_terzi;

      if (tipo_documento = 'ordine') and (genera_rda_ordini_vendita = 'si') then
      begin
        quantita_rda := fabdin.fabbisogno
          (tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
          tabella_righe.fieldbyname('tum_quantita_base').asfloat - tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat,
          tabella_righe.fieldbyname('id').asinteger, 0);
        if quantita_rda > 0 then
        begin
          memorizza_rda(tabella_righe.fieldbyname('data_consegna').asdatetime, '', true, quantita_rda);
        end;
      end;

      crea_record_rma;
    end;

    if tdo.fieldbyname('avviso_presenza_documenti').asstring = 'si' then
    begin
      if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
        ((art.fieldbyname('descrizione_archivio_collega_01').asstring <> '') or
        (art.fieldbyname('descrizione_archivio_collega_02').asstring <> '') or
        (art.fieldbyname('descrizione_archivio_collegato_03').asstring <> '') or
        (art.fieldbyname('descrizione_archivio_collegato_04').asstring <> '')) then
      begin
        messaggio(100, 'l''articolo ha in anagrafica archivi collegati' + #13 +
          'per inserirli come allegati nel documento in gestione utilizzare il bottone sulla toolbar');
      end;
    end;
  end;

  // creazione non conformità
  if progressivo_nca <> 0 then
  begin
    crea_record_ncr;
  end;

  if (tdo.fieldbyname('aggiorna_listini').asstring <> 'nessuno') and (tabella_righe.fieldbyname('prezzo').asfloat <> 0) then
  begin
    crea_listino_vendita;
  end;

  if tabella_righe.fieldbyname('art_codice').asstring <> '' then
  begin
    if (gestione_lotto_singolo = 'si') and (codice_lotto_matricola_singolo <> '') and (v_quantita.value <> 0) then
    begin
      ltm.sql.clear;
      ltm.sql.text := 'select * from ltm where progressivo = :progressivo';
      ltm.open;
      ltm.append;

      ltm.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(ltm.connection), 'ltm_progressivo');
      ltm.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
      ltm.fieldbyname('lotto').asstring := codice_lotto_matricola_singolo;
      ltm.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
      ltm.fieldbyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      ltm.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
      ltm.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
      read_tabella(tmo_01, v_tmo_codice.text);
      ltm.fieldbyname('esistenza').asstring := tmo_01.fieldbyname('esistenza').asstring;
      ltm.fieldbyname('documento_origine').asstring := tipo_documento + ' ven';
      ltm.fieldbyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
      if tipo_documento = 'ddt fornitori' then
      begin
        ltm.fieldbyname('cfg_tipo').asstring := 'F';
      end
      else
      begin
        ltm.fieldbyname('cfg_tipo').asstring := 'C';
      end;
      ltm.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
      ltm.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
      ltm.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
      ltm.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;

      ltm.post;
      codice_lotto_matricola_singolo := '';
    end;

    // aggiorna movimento di magazzino documento evaso
    if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') and
      (tabella.fieldbyname('tmo_codice').asstring <> '') then
    begin
      aggiorna_magazzino(tabella.fieldbyname('tmo_codice').asstring, false);

      if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
      begin
        aggiorna_magazzino(tabella.fieldbyname('tmo_codice_collegato').asstring, true);
      end;
    end;
  end;

  if (tabella.fieldbyname('accettato').asstring = 'si') and
    (tabella.fieldbyname('situazione').asstring <> 'evaso') then
  begin
    if tabella_edit(tabella) then
    begin
      assegna_utn_codice_accettazione;
      no_eventi_post := true;
      tabella.post;
    end;
  end;

  // conai
  if esiste_righe then
  begin
    esegui_conai('aggiorna', tabella, tabella_righe, vecchio_art_codice, vecchio_quantita_base);
  end
  else
  begin
    if not duplicazione_documento then
    begin
      esegui_conai('inserisci', tabella, tabella_righe, '', 0);
    end;
  end;

  // vuoti
  if not esiste_righe then
  begin
    if (tdo.fieldbyname('esecuzione_vuoti').asstring = 'si') and (art.fieldbyname('vuo_codice').asstring <> '') then
    begin
      esegui_vuoti_resi;
    end;
  end;

  if (vecchio_sequenza <> 0) and (vecchio_sequenza <> tabella_righe.fieldbyname('sequenza').asinteger) and
    (v_griglia_righe.columns[1].title.color = cllime) then
  begin
    esegui_query_righe;
  end;

  if not esiste_righe and (tabella_righe.fieldbyname('kit').asstring = 'no') and art.active and (art.fieldbyname('kit').asstring = 'si') then
  begin
    crea_kit;
  end;

  if (tipo_documento = 'fattura differita') and (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
  begin
    if messaggio(300, 'modifica automatica del documento di origine della fattura differita' + #13 +
      'per allinearlo alle modifiche apportate alla fattura' + #13 +
      'la variazione potrebbe causare modifiche sul documento di origine non riscontrabili sulla fattura') = 1 then
    begin
      bvr_dvr.close;
      if tabella_righe.fieldbyname('documento_origine').asstring = 'bolla ven' then
      begin
        bvr_dvr.sql.text := 'select * from bvr where progressivo = :progressivo and riga = :riga';
      end
      else
      begin
        bvr_dvr.sql.text := 'select * from dvr where progressivo = :progressivo and riga = :riga';
      end;
      bvr_dvr.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
      bvr_dvr.parambyname('riga').asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
      bvr_dvr.open;
      if bvr_dvr.isempty then
      begin
        messaggio(200, 'la riga del documento di origine non esiste');
      end
      else
      begin
        bvr_dvr.edit;

        bvr_dvr.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
        bvr_dvr.fieldbyname('numero_colli').asinteger := tabella_righe.fieldbyname('numero_colli').asinteger;
        bvr_dvr.fieldbyname('numero_confezioni').asinteger := tabella_righe.fieldbyname('numero_confezioni').asinteger;
        bvr_dvr.fieldbyname('tum_codice').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
        bvr_dvr.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
        bvr_dvr.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
        bvr_dvr.fieldbyname('prezzo').asfloat := tabella_righe.fieldbyname('prezzo').asfloat;
        bvr_dvr.fieldbyname('tsm_codice').asstring := tabella_righe.fieldbyname('tsm_codice').asstring;
        bvr_dvr.fieldbyname('tsm_codice_art').asstring := tabella_righe.fieldbyname('tsm_codice_art').asstring;
        bvr_dvr.fieldbyname('importo_sconto').asfloat := tabella_righe.fieldbyname('importo_sconto').asfloat;
        bvr_dvr.fieldbyname('importo').asfloat := tabella_righe.fieldbyname('importo').asfloat;
        bvr_dvr.fieldbyname('importo_euro').asfloat := tabella_righe.fieldbyname('importo_euro').asfloat;
        bvr_dvr.fieldbyname('tipo_movimento').asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;
        bvr_dvr.fieldbyname('importo_iva').asfloat := tabella_righe.fieldbyname('importo_iva').asfloat;
        bvr_dvr.fieldbyname('importo_iva_euro').asfloat := tabella_righe.fieldbyname('importo_iva_euro').asfloat;
        bvr_dvr.fieldbyname('tiv_codice').asstring := tabella_righe.fieldbyname('tiv_codice').asstring;
        bvr_dvr.fieldbyname('gen_codice').asstring := tabella_righe.fieldbyname('gen_codice').asstring;
        bvr_dvr.fieldbyname('gen_codice_storno').asstring := tabella_righe.fieldbyname('gen_codice_storno').asstring;
        bvr_dvr.fieldbyname('percentuale_provvigioni').asfloat := tabella_righe.fieldbyname('percentuale_provvigioni').asfloat;
        bvr_dvr.fieldbyname('percentuale_provvigioni_ca').asfloat := tabella_righe.fieldbyname('percentuale_provvigioni_ca').asfloat;
        bvr_dvr.fieldbyname('importo_statistico_intra').asfloat := tabella_righe.fieldbyname('importo_statistico_intra').asfloat;
        bvr_dvr.fieldbyname('prezzo_netto').asfloat := tabella_righe.fieldbyname('prezzo_netto').asfloat;
        bvr_dvr.fieldbyname('prezzo_netto_listino').asfloat := tabella_righe.fieldbyname('prezzo_netto_listino').asfloat;
        bvr_dvr.fieldbyname('descrizione1').asstring := tabella_righe.fieldbyname('descrizione1').asstring;
        bvr_dvr.fieldbyname('descrizione2').asstring := tabella_righe.fieldbyname('descrizione2').asstring;

        bvr_dvr.post;

        if tabella_righe.fieldbyname('documento_origine').asstring = 'bolla ven' then
        begin
          totven.movven_testata(tmyconnection_go(tabella.connection), 'bolla', bvr_dvr.fieldbyname('progressivo').asinteger);
        end
        else
        begin
          totven.movven_testata(tmyconnection_go(tabella.connection), 'ddt', bvr_dvr.fieldbyname('progressivo').asinteger);
        end;

        // aggiornamento manuale archivi collegati
        tabelle_collegate := tmyquery_go.create(nil);
        tabelle_collegate.connection := arc.arcdit;

        bvt_dvt := tmyquery_go.create(nil);
        bvt_dvt.connection := arc.arcdit;
        if tabella_righe.fieldbyname('documento_origine').asstring = 'bolla ven' then
        begin
          bvt_dvt.sql.text := 'select * from bvt where progressivo = :progressivo';
        end
        else
        begin
          bvt_dvt.sql.text := 'select * from dvt where progressivo = :progressivo';
        end;
        bvt_dvt.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
        bvt_dvt.open;

        // analitica
        tabelle_collegate.close;
        tabelle_collegate.sql.text := 'select progressivo from cem ' +
          'where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine ' +
          'and doc_riga_origine = :doc_riga_origine';
        tabelle_collegate.parambyname('documento_origine').asstring := tabella_righe.fieldbyname('documento_origine').asstring;
        tabelle_collegate.parambyname('doc_progressivo_origine').asinteger := bvr_dvr.fieldbyname('progressivo').asinteger;
        tabelle_collegate.parambyname('doc_riga_origine').asinteger := bvr_dvr.fieldbyname('riga').asinteger;
        tabelle_collegate.open;
        if not tabelle_collegate.isempty then
        begin
          messaggio(100, 'il documento di origine ha un movimento analitica collegato' + #13 +
            'la sua modifica va eseguita manualmente');
          esegui_carcem(vararrayof([tabella_righe.fieldbyname('documento_origine').asstring,
            bvr_dvr.fieldbyname('progressivo').asinteger, bvr_dvr.fieldbyname('riga').asinteger]),
            bvt_dvt.fieldbyname('data_documento').asdatetime, bvr_dvr.fieldbyname('gen_codice').asstring,
            bvr_dvr.fieldbyname('art_codice').asstring, 'C', bvt_dvt.fieldbyname('cli_codice').asstring, '', esercizio,
            bvt_dvt.fieldbyname('numero_documento').asfloat, bvr_dvr.fieldbyname('cms_codice').asstring,
            bvt_dvt.fieldbyname('data_documento').asdatetime, 0, bvr_dvr.fieldbyname('importo_euro').asfloat, true, false,
            0, bvr_dvr.fieldbyname('importo').asfloat, bvt_dvt.fieldbyname('cambio').asfloat);
        end;

        // commesse
        tabelle_collegate.close;
        tabelle_collegate.sql.text := 'select progressivo from cmm ' +
          'where documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :doc_progressivo_origine ' +
          'and doc_riga_origine = :doc_riga_origine';
        tabelle_collegate.parambyname('documento_origine').asstring := tabella_righe.fieldbyname('documento_origine').asstring;
        tabelle_collegate.parambyname('doc_progressivo_origine').asinteger := bvr_dvr.fieldbyname('progressivo').asinteger;
        tabelle_collegate.parambyname('doc_riga_origine').asinteger := bvr_dvr.fieldbyname('riga').asinteger;
        tabelle_collegate.open;
        if not tabelle_collegate.isempty then
        begin
          messaggio(100, 'il documento di origine ha un movimento commesse collegato' + #13 +
            'la sua modifica va eseguita manualmente');
          esegui_carcmm(vararrayof([tabella_righe.fieldbyname('documento_origine').asstring,
            bvr_dvr.fieldbyname('progressivo').asinteger, bvr_dvr.fieldbyname('riga').asinteger]),
            'C', bvt_dvt.fieldbyname('cli_codice').asstring, bvr_dvr.fieldbyname('art_codice').asstring,
            bvt_dvt.fieldbyname('serie_documento').asstring, bvr_dvr.fieldbyname('descrizione1').asstring,
            bvr_dvr.fieldbyname('descrizione1').asstring,
            bvr_dvr.fieldbyname('tipo_movimento').asstring, bvt_dvt.fieldbyname('data_documento').asdatetime,
            bvt_dvt.fieldbyname('data_documento').asdatetime, bvr_dvr.fieldbyname('importo_euro').asfloat,
            bvt_dvt.fieldbyname('numero_documento').asfloat, bvr_dvr.fieldbyname('cms_codice').asstring,
            bvr_dvr.fieldbyname('tipologia').asstring, bvr_dvr.fieldbyname('tum_quantita_base').asfloat, true);
        end;

        // magazzino
        tabelle_collegate.close;
        tabelle_collegate.sql.text := 'select mmr.* from mmr ' +
          'inner join mmt on mmt.progressivo = mmr.progressivo ' +
          'where mmt.documento_origine = :documento_origine ' +
          'and mmt.doc_progressivo_origine = :doc_progressivo_origine ' +
          'and mmr.doc_riga_origine = :doc_riga_origine';
        tabelle_collegate.parambyname('documento_origine').asstring := tabella_righe.fieldbyname('documento_origine').asstring;
        tabelle_collegate.parambyname('doc_progressivo_origine').asinteger := bvr_dvr.fieldbyname('progressivo').asinteger;
        tabelle_collegate.parambyname('doc_riga_origine').asinteger := bvr_dvr.fieldbyname('riga').asinteger;
        tabelle_collegate.open;
        if not tabelle_collegate.isempty then
        begin
          if messaggio(300, 'modifica automatica del movimento di magazzino collegato') = 1 then
          begin
            tabelle_collegate.edit;

            tabelle_collegate.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
            tabelle_collegate.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
            tabelle_collegate.fieldbyname('prezzo').asfloat := tabella_righe.fieldbyname('prezzo').asfloat;
            tabelle_collegate.fieldbyname('tsm_codice').asstring := tabella_righe.fieldbyname('tsm_codice').asstring;
            tabelle_collegate.fieldbyname('tsm_codice_art').asstring := tabella_righe.fieldbyname('tsm_codice_art').asstring;
            tabelle_collegate.fieldbyname('importo_sconto').asfloat := tabella_righe.fieldbyname('importo_sconto').asfloat;
            tabelle_collegate.fieldbyname('importo').asfloat := tabella_righe.fieldbyname('importo').asfloat;
            tabelle_collegate.fieldbyname('importo_euro').asfloat := tabella_righe.fieldbyname('importo_euro').asfloat;
            tabelle_collegate.fieldbyname('tipo_movimento').asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;

            tabelle_collegate.post;
          end;
        end;

        bvt_dvt.free;
        tabelle_collegate.free;
      end;
    end;
  end;

  // lavorazioni vetrerie
  if not esiste_righe then
  begin
    if (art.fieldbyname('gestione_dimensioni').asstring = 'si') and lavorazione_vetrerie then
    begin
      tabella_righe.refresh;

      tipo_lavorazione := art.fieldbyname('lavorazione_vetrerie').asstring;
      divisore_dimensioni := art.fieldbyname('divisore_dimensioni').asfloat;
      lavorazione_vetrerie := false;

      dim.close;
      if tipo_documento = 'bolla' then
      begin
        dim.sql.text := 'select * from bvr where progressivo = :progressivo';
      end
      else if tipo_documento = 'corrispettivo' then
      begin
        dim.sql.text := 'select * from cvr where progressivo = :progressivo';
      end
      else if copy(tipo_documento, 1, 3) = 'ddt' then
      begin
        dim.sql.text := 'select * from dvr where progressivo = :progressivo';
      end
      else if (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito') then
      begin
        dim.sql.text := 'select * from fvr where progressivo = :progressivo';
      end
      else if tipo_documento = 'ordine' then
      begin
        dim.sql.text := 'select * from ovr where progressivo = :progressivo';
      end
      else if copy(tipo_documento, 1, 10) = 'preventivo' then
      begin
        dim.sql.text := 'select * from pvr where progressivo = :progressivo';
      end;
      dim.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      dim.open;

      dim.append;
      dim.fieldbyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      dim.fieldbyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger + 1;
      dim.fieldbyname('art_codice').asstring := arc.dit.fieldbyname('art_codice_lavorazione_dimensioni').asstring;

      art.close;
      art.params[0].asstring := dim.fieldbyname('art_codice').asstring;
      art.open;

      dim.fieldbyname('descrizione1').asstring := art.fieldbyname('descrizione1').asstring;
      dim.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;
      if art.fieldbyname('tum_codice_vendite').asstring <> '' then
      begin
        dim.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_vendite').asstring;
      end
      else
      begin
        dim.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
      end;
      cifre_decimali_quantita := decimali_quantita_art(dim.fieldbyname('art_codice').asstring);

      quantita := 0;
      if tipo_lavorazione = 'superficie' then
      begin
        superficie := calcola_quantita_dimensioni(art, tabella_righe);

        quantita := quantita + arrotonda(superficie, cifre_decimali_quantita);

        dim.fieldbyname('note').asstring := 'articolo: ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
          tabella_righe.fieldbyname('descrizione1').asstring + #13 +
          'dimensioni: ' + tabella_righe.fieldbyname('dimensione1').asstring + ' x ' +
          tabella_righe.fieldbyname('dimensione2').asstring + slinebreak +
          'lavorazione: ' + tipo_lavorazione;
      end
      else
      begin
        //  perimetro
        dimensione := 2;
        dimensione1 := tabella_righe.fieldbyname('dimensione1').asfloat;
        dimensione2 := tabella_righe.fieldbyname('dimensione2').asfloat;

        if tipo_lavorazione = 'semiperimetro' then
        begin
          dimensione := 1;
        end
        else if tipo_lavorazione = 'dimensione1' then
        begin
          dimensione := 1;
          dimensione2 := 0;
        end
        else if tipo_lavorazione = 'doppia dimensione1' then
        begin
          dimensione := 2;
          dimensione2 := 0;
        end
        else if tipo_lavorazione = 'dimensione2' then
        begin
          dimensione := 1;
          dimensione1 := 0;
        end
        else if tipo_lavorazione = 'doppia dimensione2' then
        begin
          dimensione := 2;
          dimensione1 := 0;
        end;
        quantita := quantita + tabella_righe.fieldbyname('numero_colli').asinteger * dimensione *
          (arrotonda(dimensione1, 0, 2) / divisore_dimensioni +
          arrotonda(dimensione2, 0, 2) / divisore_dimensioni);

        dim.fieldbyname('note').asstring := 'articolo: ' + tabella_righe.fieldbyname('art_codice').asstring + ' ' +
          tabella_righe.fieldbyname('descrizione1').asstring + slinebreak +
          'dimensioni: ' + tabella_righe.fieldbyname('dimensione1').asstring + ' x ' +
          tabella_righe.fieldbyname('dimensione2').asstring + slinebreak +
          'lavorazione: ' + tipo_lavorazione;
      end;

      dim.fieldbyname('quantita').asfloat := quantita;

      read_tabella(arc.arcdit, 'art', 'codice', dim.fieldbyname('art_codice').asstring);
      if tipo_documento <> 'ddt fornitori' then
      begin
        cerca_prezzo_documento('', dim);

        dim.fieldbyname('prezzo').asfloat := prezzo;
        dim.fieldbyname('tsm_codice').asstring := tsm_codice;
        dim.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
        dim.fieldbyname('importo_sconto').asfloat := importo_sconto;

        assegna_prezzo_netto(decimali_max_prezzo, tag.fieldbyname('prezzo_netto_sconti').asstring, dim);
      end;

      dim.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
      dim.fieldbyname('tipo_movimento').asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;
      dim.fieldbyname('data_consegna').value := tabella_righe.fieldbyname('data_consegna').value;
      dim.fieldbyname('cms_codice').asstring := tabella_righe.fieldbyname('cms_codice').asstring;
      dim.fieldbyname('tipologia').asstring := tabella_righe.fieldbyname('tipologia').asstring;
      dim.fieldbyname('situazione').asstring := tabella_righe.fieldbyname('situazione').asstring;

      assegna_tiv_codice_righe(dim);
      assegna_gen_codice(dim);
      calcola_importo(dim);
      assegna_provvigioni(dim);

      dim.post;

      tabella_righe.refresh;
    end;
  end;
end;

procedure tgesven.crea_listino_vendita;
var
  prezzo: double;
  tipo_listino: string;
begin
  tipo_listino := '';
  codice_archivio := '';
  prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
  if (prezzo = 0) or (tabella_righe.fieldbyname('tum_codice').asstring <> art.fieldbyname('tum_codice').asstring) then
  begin
    try
      prezzo := tabella_righe.fieldbyname('importo').asfloat / tabella_righe.fieldbyname('tum_quantita_base').asfloat;
    except
      prezzo := 0;
    end;
  end;

  if crea_listino_cliente(tabella.fieldbyname('cli_codice').asstring,
    tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tsm_codice').asstring,
    tabella_righe.fieldbyname('tsm_codice_art').asstring, tdo.fieldbyname('aggiorna_listini').asstring,
    prezzo, tipo_listino, codice_archivio, tabella.fieldbyname('data_documento').asdatetime,
    tabella.fieldbyname('tlv_codice').asstring) then
  begin
    if tipo_listino = 'cls interattivo' then
    begin
      parametri_extra_programma_chiamato[0] := 'C';
      parametri_extra_programma_chiamato[1] := tabella.fieldbyname('cli_codice').asstring;
      parametri_extra_programma_chiamato[2] := tabella_righe.fieldbyname('art_codice').asstring;
      esegui_programma('GESCLS', codice_archivio, true);
    end
    else if tipo_listino = 'lsv interattivo' then
    begin
      esegui_programma('GESLSV', codice_archivio, true);
    end;
  end;
end;

procedure tgesven.aggiorna_magazzino(tmo_codice: string; collegato: boolean);
begin
  mmt.sql.clear;
  mmt.sql.add('select *');
  mmt.sql.add('from mmt');
  mmt.sql.add('where documento_origine = :documento_origine');
  mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
  mmt.sql.add('and tmo_codice = :tmo_codice');
  mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' ven';
  mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  mmt.params[2].asstring := tmo_codice;
  mmt.close;
  mmt.open;
  if not mmt.eof then
  begin
    mmr.close;
    mmr.sql.clear;
    mmr.sql.add('select *');
    mmr.sql.add('from mmr');
    mmr.sql.add('where progressivo = :progressivo');
    mmr.sql.add('and doc_riga_origine = :doc_riga_origine');
    mmr.params[0].asinteger := mmt.fieldbyname('progressivo').asinteger;
    mmr.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    mmr.open;

    aggiorna_magazzino_dettaglio(collegato);
  end;
end;

procedure tgesven.aggiorna_magazzino_dettaglio(collegato: boolean);
begin
  if not mmr.eof then
  begin
    mmr.edit;
    if not collegato then
    begin
      mmr.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
      mmr.fieldbyname('cms_codice').asstring := tabella_righe.fieldbyname('cms_codice').asstring;
      mmr.fieldbyname('tipologia').asstring := tabella_righe.fieldbyname('tipologia').asstring;
    end
    else
    begin
      if tabella_righe.fieldbyname('tma_codice_collegato').asstring <> '' then
      begin
        mmr.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice_collegato').asstring;
      end
      else
      begin
        mmr.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;
      end;
    end;
    mmr.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
    mmr.fieldbyname('quantita_entrate').asfloat := 0;
    mmr.fieldbyname('quantita_uscite').asfloat := 0;
    read_tabella(tmo_01, mmt.fieldbyname('tmo_codice').asstring);
    if tmo_01.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;
    end;
    if tmo_01.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
    end;

    if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
    begin
      mmr.fieldbyname('prezzo').asfloat := tabella_righe.fieldbyname('prezzo').asfloat;
      mmr.fieldbyname('importo').asfloat := tabella_righe.fieldbyname('importo').asfloat;
      mmr.fieldbyname('importo_euro').asfloat := tabella_righe.fieldbyname('importo_euro').asfloat;
    end
    else
    begin
      read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale');
      // mmr.fieldbyname('prezzo').asfloat := arrotonda(tabella_righe.fieldbyname('prezzo').asfloat / (1 + archivio.fieldbyname('percentuale').asfloat / 100));
      mmr.fieldbyname('prezzo').asfloat := arc.scorporo(tabella_righe.fieldbyname('prezzo').asfloat, archivio.fieldbyname('percentuale').asfloat, decimali_max_prezzo);
      mmr.fieldbyname('importo').asfloat := arrotonda(tabella_righe.fieldbyname('importo').asfloat - tabella_righe.fieldbyname('importo_iva').asfloat);
      mmr.fieldbyname('importo_euro').asfloat := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat - tabella_righe.fieldbyname('importo_iva_euro').asfloat);
    end;

    mmr.fieldbyname('tsm_codice').asstring := tabella_righe.fieldbyname('tsm_codice').asstring;
    mmr.fieldbyname('tsm_codice_art').asstring := tabella_righe.fieldbyname('tsm_codice_art').asstring;
    mmr.fieldbyname('importo_sconto').asfloat := tabella_righe.fieldbyname('importo_sconto').asfloat;
    mmr.fieldbyname('tipo_movimento').asstring := tabella_righe.fieldbyname('tipo_movimento').asstring;

    mmr.post;

    esegui_ubicazioni_magazzino(mmt.fieldbyname('tmo_codice').asstring, mmr.fieldbyname('tma_codice').asstring);
  end;
end;

procedure tgesven.cancella_magazzino(tmo_codice: string);
begin
  mmt.sql.clear;
  mmt.sql.add('select *');
  mmt.sql.add('from mmt');
  mmt.sql.add('where documento_origine = :documento_origine');
  mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
  mmt.sql.add('and tmo_codice = :tmo_codice');
  mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' ven';
  mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  mmt.params[2].asstring := tmo_codice;
  mmt.close;
  mmt.open;
  if not mmt.eof then
  begin
    mmr.close;
    mmr.sql.clear;
    mmr.sql.add('select *');
    mmr.sql.add('from mmr');
    mmr.sql.add('where progressivo = :progressivo');
    mmr.sql.add('and doc_riga_origine = :doc_riga_origine');
    mmr.params[0].asinteger := mmt.fieldbyname('progressivo').asinteger;
    mmr.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    mmr.open;

    cancella_magazzino_dettaglio;
  end;
end;

procedure tgesven.cancella_magazzino_dettaglio;
begin
  if not mmr.eof then
  begin
    mmr.delete;

    mmr.close;
    mmr.sql.clear;
    mmr.sql.add('select *');
    mmr.sql.add('from mmr');
    mmr.sql.add('where progressivo = :progressivo');
    mmr.params[0].asfloat := mmt.fieldbyname('progressivo').asfloat;
    mmr.open;
    if mmr.eof then
    begin
      mmt.delete;
    end;
  end;
end;

procedure tgesven.before_delete_righe;
var
  progressivo: integer;
  prosegui, approntato: boolean;
  tabella_consegna_diretta, ovr, ltm_ordini, cmsfr: tmyquery_go;
begin
  prosegui := true;

  if (tabella.fieldbyname('situazione_sdi').asstring <> 'in attesa invio') and
    ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
  begin
    messaggio(000, 'documento non cancellabile perché inviato a SDI' + slinebreak +
      'situazione [' + tabella.fieldbyname('situazione_sdi').asstring + ']' + slinebreak +
      'esito [' + tabella.fieldbyname('codice_esito_sdi').asstring + ']');
    prosegui := false;
  end;

  if not prosegui then
  begin
    tabella.cancel;
    tabella.refresh;
    tabella_righe.refresh;
    fuoco(v_griglia_righe);
    abort;
  end
  else
  begin
    inherited;

    prosegui := true;
    if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
    begin
      if (controllo) and (tabella_righe.fieldbyname('saldo_acconto').asstring = 'acconto') then
      begin
        saldo_acconto.close;
        saldo_acconto.sql.clear;
        saldo_acconto.sql.add('select situazione');
        if tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo ven' then
        begin
          saldo_acconto.sql.add('from pvr');
        end
        else if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine ven' then
        begin
          saldo_acconto.sql.add('from ovr');
        end
        else
        begin
          saldo_acconto.sql.add('from dvr');
        end;
        saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
        saldo_acconto.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
        saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
        saldo_acconto.open;

        if ((saldo_acconto.fieldbyname('situazione').asstring = 'consolidato') and
          (tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven')) or
          (saldo_acconto.fieldbyname('situazione').asstring = 'evaso') then
        begin
          prosegui := false;
          messaggio(000, 'la riga di origine del documento è evasa a saldo' + #13 +
            'prima va gestita la riga che ha eseguito l''evasione a saldo del documento');
        end;
      end;

      if tabella_righe.fieldbyname('documento_origine').asstring = 'spedizioni' then
      begin
        prosegui := false;
        messaggio(200, 'operazione non consentita per i documenti generati dalla gestione spedizionieri' + #13 +
          'utilizzare il programma DELFATSP');
      end;
    end;

    if prosegui then
    begin
      documento_modificato := true;

      if tabella_righe.fieldbyname('situazione').asstring <> 'annullato' then
      begin
        read_tabella(arc.arcdit, 'tmo', 'codice', vararrayof([tabella.fieldbyname('tmo_codice').asstring]), 'tmo_codice_dsb');
        if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') and
          (archivio.fieldbyname('tmo_codice_dsb').asstring <> '') and (tabella.fieldbyname('tmo_codice').asstring <> '') then
        begin
          messaggio(000, 'poichè il documento prevede lo scarico automatico della distinta base' + #13 +
            'non è possibile eseguire la cancellazione in situazione di [evaso]' + #13 +
            'eseguire lo storno per riportare la situazione a [inserito]');
          abort;
        end
        else
        begin
          aggiorna_totali_testata := true;
          aggiorna_totali_colli := true;

          if (tabella.fieldbyname('accettato').asstring = 'si') and
            (tabella.fieldbyname('situazione').asstring <> 'evaso') then
          begin
            if tabella_edit(tabella) then
            begin
              assegna_utn_codice_accettazione;
              no_eventi_post := true;
              tabella.post;
            end;
          end;

          if tabella_righe.fieldbyname('art_codice').asstring <> '' then
          begin
            // tabella.cancel;

            controllo_rda_oar_opt('cancellata');

            cmm.sql.clear;
            cmm.sql.add('select * from cmm');
            cmm.sql.add('where documento_origine = :codice0 ');
            cmm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            cmm.params[0].asstring := tipo_documento + ' ven';
            cmm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            cmm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            cmm.close;
            cmm.open;
            cmm.first;
            if not cmm.eof then
            begin
              visualizzato_messaggio := true;
              if ripeti_messaggio <> 'no' then
              begin
                messaggio(100, 'i movimenti delle commesse collegati verranno cancellati');
              end;
            end;
            while not cmm.eof do
            begin
              cmm.delete;
            end;

            cem.sql.clear;
            cem.sql.add('select * from cem');
            cem.sql.add('where documento_origine = :documento_origine');
            cem.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :riga');
            cem.params[0].asstring := tipo_documento + ' ven';
            cem.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            cem.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            cem.close;
            cem.open;
            cem.first;
            if not cem.eof then
            begin
              visualizzato_messaggio := true;
              if ripeti_messaggio <> 'no' then
              begin
                messaggio(100, 'i movimenti della contabilità analitica collegati verranno cancellati');
              end;
            end;
            while not cem.eof do
            begin
              cem.delete;
            end;

            ltm.close;
            ltm.sql.clear;
            ltm.sql.add('select * from ltm');
            ltm.sql.add('where documento_origine = :codice0 ');
            ltm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            ltm.params[0].asstring := tipo_documento + ' ven';
            ltm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            ltm.open;
            if not ltm.eof then
            begin
              visualizzato_messaggio := true;

              //  ripristina approntato lotti su ordini
              //ripristina_lotti := false;
              ltm_ordini := tmyquery_go.create(nil);
              ltm_ordini.connection := arc.arcdit;
              if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine ven' then
              begin
                ltm_ordini.sql.add('select tdo.lotti, ovt.data_documento, ovt.serie_documento, ovt.numero_documento');
                ltm_ordini.sql.add('from ovr inner join ovt on ovt.progressivo = ovr.progressivo');
                ltm_ordini.sql.add('inner join tdo on tdo.codice = ovt.tdo_codice');
                ltm_ordini.sql.add('where ovr.progressivo = :progressivo and ovr.riga = :riga');
                ltm_ordini.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
                ltm_ordini.parambyname('riga').asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
                ltm_ordini.open;
              end
              else
              begin
                ltm_ordini.sql.add('select ''lotti'' where 1=2');
              end;

              if ripeti_messaggio <> 'no' then
              begin
                if ltm_ordini.isempty then
                begin
                  messaggio(100, 'i movimenti dei lotti collegati verranno cancellati');
                end
                else
                begin
                  if messaggio(300, 'conferma per ripristinare l''impegno del lotto sull''ordine') = 1 then
                  begin
                    ripristina_lotti := true;
                  end
                  else
                  begin
                    ripristina_lotti := false;
                  end;
                end;
              end;
              while not ltm.eof do
              begin
                if ripristina_lotti then
                begin
                  ltm.edit;
                  ltm.fieldbyname('numero_documento').asfloat := ltm_ordini.fieldbyname('numero_documento').asfloat;
                  ltm.fieldbyname('serie_documento').asstring := ltm_ordini.fieldbyname('serie_documento').asstring;
                  ltm.fieldbyname('data_documento').asdatetime := ltm_ordini.fieldbyname('data_documento').asdatetime;
                  ltm.fieldbyname('documento_origine').asstring := ltm.fieldbyname('documento_origine_approntato').asstring;
                  ltm.fieldbyname('doc_progressivo_origine').asinteger := ltm.fieldbyname('doc_progressivo_origine_approntato').asinteger;
                  ltm.fieldbyname('doc_riga_origine').asinteger := ltm.fieldbyname('doc_riga_origine_approntato').asinteger;
                  ltm.fieldbyname('esistenza').asstring := 'approntato';
                  ltm.post;
                  ltm.next;
                end
                else
                begin
                  ltm.delete;
                end;
              end;
              freeandnil(ltm_ordini);
            end;

            //  ubicazioni
            ubm.close;
            ubm.sql.text := 'delete from ubm where documento_origine = :documento_origine and ' +
              'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
            ubm.parambyname('documento_origine').asstring := tipo_documento + ' ven';
            ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
            ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
            ubm.execsql;

            // rma
            if (tipo_documento = 'ddt fornitori') or ((tipo_documento = 'ddt') or
              (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'nota credito')) then
            begin
              rma.modulo := 'vendite';
              rma.tipo_documento := tipo_documento;
              rma.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
              rma.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;

              rma.cancella_rmr;
            end;

            lcr.sql.clear;
            lcr.sql.add('select * from lcr');
            lcr.sql.add('where documento_origine = :codice0 ');
            lcr.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            lcr.params[0].asstring := tipo_documento + ' ven';
            lcr.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
            lcr.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
            lcr.close;
            lcr.open;
            lcr.first;
            if not lcr.eof then
            begin
              visualizzato_messaggio := true;
              if ripeti_messaggio <> 'no' then
              begin
                messaggio(100, 'i movimenti delle lavorazioni conto terzi collegati verranno cancellati');
              end;
            end;
            while not lcr.eof do
            begin
              lcr.delete;
            end;

            if approntato_da_sscc = 'si' then
            begin
              ors.close;
              ors.parambyname('documento_origine').asstring := tipo_documento + ' ven';
              ors.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
              ors.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
              ors.open;
              if not ors.eof then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'i movimenti di scarico sscc verranno cancellati');
                end;
              end;
              while not ors.eof do
              begin
                ors.delete;
              end;
            end;

            if tabella_righe.fieldbyname('documento_origine').asstring = 'lavorazione conto terzi' then
            begin
              lct.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              lct.close;
              lct.open;
              if not lct.isempty then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'la lavorazione conto terzi collegata verrà aggiornata');
                end;
                lct.edit;
                lct.fieldbyname('fatturato').asstring := 'no';
                lct.post;
              end;
            end;

            if (tipo_documento = 'preventivo') and
              (tabella_righe.fieldbyname('documento_origine').asstring = 'assistenza tecnica') then
            begin
              iat.close;
              iat.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              iat.execsql;
            end;

            if tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo assistenza' then
            begin
              cas.close;
              cas.sql.text := 'select * from cat where progressivo = :progressivo';
              cas.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              cas.open;
              if not cas.isempty then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'il preventivo di assistenza tecnica collegato verrà aggiornato');
                end;
                cas.edit;
                cas.fieldbyname('data_punti').value := null;
                cas.fieldbyname('importo_punti_utilizzato').asfloat := 0;
                cas.fieldbyname('situazione').asstring := 'chiusa';
                cas.post;
              end;
            end;

            if tabella_righe.fieldbyname('documento_origine').asstring = 'chiamata assistenza' then
            begin
              cas.close;
              cas.sql.text := 'select * from cat where progressivo = :progressivo';
              cas.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              cas.open;
              if not cas.isempty then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'la chiamata di assistenza tecnica collegata verrà aggiornata');
                end;
                cas.edit;
                cas.fieldbyname('data_punti').value := null;
                cas.fieldbyname('importo_punti_utilizzato').asfloat := 0;
                cas.fieldbyname('situazione').asstring := 'chiusa';

                cas.post;
              end;

              cas.close;
              cas.sql.text := 'update car set cli_codice_punti = '''', data_punti = null, importo_punti_utilizzato = 0, ' +
                'situazione = '''' where progressivo = :progressivo';
              cas.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              cas.execsql;
            end;

            if tabella_righe.fieldbyname('documento_origine').asstring = 'consuntivo assistenza' then
            begin
              cas.close;
              cas.sql.text := 'select * from car where progressivo = :progressivo and riga = :riga';
              cas.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              cas.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
              cas.open;
              if not cas.isempty then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'il consuntivo di assistenza tecnica collegato verrà aggiornato');
                end;
                cas.edit;
                cas.fieldbyname('cli_codice_punti').asstring := '';
                cas.fieldbyname('data_punti').value := null;
                cas.fieldbyname('importo_punti_utilizzato').asfloat := 0;
                cas.fieldbyname('situazione').asstring := 'inserita';
                cas.post;
              end;
            end;

            if tabella_righe.fieldbyname('documento_origine').asstring = 'stato avanzamento commesse' then
            begin
              sal.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              sal.close;
              sal.open;
              if not sal.isempty then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'lo stato avanzamento commesse collegato verrà aggiornato');
                end;
                sal.edit;
                sal.fieldbyname('situazione').asstring := 'inserito';
                sal.post;
              end;
            end;

            if tabella_righe.fieldbyname('documento_origine').asstring = 'commesse programmate' then
            begin
              cmsfr := tmyquery_go.create(nil);
              cmsfr.connection := arc.arcdit;
              cmsfr.sql.text := 'select * from cmsfr where progressivo = :progressivo and riga = :riga';
              cmsfr.params[0].asinteger := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
              cmsfr.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
              cmsfr.open;
              if not cmsfr.isempty then
              begin
                visualizzato_messaggio := true;
                if ripeti_messaggio <> 'no' then
                begin
                  messaggio(100, 'lo stato della rata di fatturazione collegata verrà aggiornato');
                end;
                cmsfr.edit;
                cmsfr.fieldbyname('situazione').asstring := 'inserito';
                cmsfr.post;
              end;
              freeandnil(cmsfr);
            end;

            // aggiorna movimento di magazzino documento evaso
            if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') and
              (tabella.fieldbyname('tmo_codice').asstring <> '') then
            begin
              cancella_magazzino(tabella.fieldbyname('tmo_codice').asstring);

              if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
              begin
                cancella_magazzino(tabella.fieldbyname('tmo_codice_collegato').asstring);
              end;
            end;

            // cancella configurazione se documento (vale per ordini) non deriva da altri
            if (tabella_righe.fieldbyname('documento_origine').asstring = '') and (tabella_righe.fieldbyname('configurazione').asinteger <> 0) then
            begin
              cnf.close;
              cnf.params[0].asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
              cnf.open;
              while not cnf.eof do
              begin
                cnf.delete;
              end;

              cnl.close;
              cnl.params[0].asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
              cnl.open;
              while not cnl.eof do
              begin
                cnl.delete;
              end;
            end;
          end;
        end;

        // cancella non conformità
        nca.modulo_origine := 'ven';
        nca.documento_origine := tipo_documento;
        nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
        nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
        nca.cancella_ncr;
      end;

      if esiste_righe then
      begin
        esegui_conai('cancella', tabella, tabella_righe, '', 0);
      end;

      if pos(' consegna diretta', tabella_righe.fieldbyname('documento_origine').asstring) > 0 then
      begin
        tabella_consegna_diretta := tmyquery_go.create(nil);
        try
          tabella_consegna_diretta.connection := arc.arcdit;
          if copy(tabella_righe.fieldbyname('documento_origine').asstring, 1, 3) = 'ddt' then
          begin
            tabella_consegna_diretta.sql.text := 'update dar set selezione_visdocav = ''no'' ';
          end
          else
          begin
            tabella_consegna_diretta.sql.text := 'update far set selezione_visdocav = ''no'' ';
          end;
          tabella_consegna_diretta.sql.text := tabella_consegna_diretta.sql.text +
            ' where progressivo = ' + tabella_righe.fieldbyname('doc_progressivo_origine').asstring +
            ' and riga = ' + tabella_righe.fieldbyname('doc_riga_origine').asstring;
          tabella_consegna_diretta.execsql;
        finally
          tabella_consegna_diretta.free;
        end;
      end;

      //  ripristina quantità approntata
      approntato := false;
      if approntato_totale then
      begin
        approntato := true;
      end
      else
      begin
        if (tabella_righe.fieldbyname('documento_origine').asstring = 'ordine ven') and
          (tabella_righe.fieldbyname('doc_quantita_approntata').asfloat <> 0) then
        begin
          if messaggio(300, 'ripristina la quantità approntata dell''ordine al valore antecedente alla creazione del documento in gestione') = 1 then
          begin
            approntato := true;
          end;
        end;
      end;
      if approntato then
      begin
        ovr := tmyquery_go.create(nil);
        try
          ovr.connection := arc.arcdit;
          ovr.sql.text := 'update ovr set quantita_approntata = :quantita_approntata, ' +
            'tum_quantita_approntata_base = :tum_quantita_approntata_base, ' +
            'saldo_acconto_approntato = :saldo_acconto_approntato, ' +
            'numero_colli_approntato = :numero_colli_approntato, ' +
            'numero_confezioni_approntato = :numero_confezioni_approntato, ' +
            'evadere_approntato = ''si'' ' +
            ' where progressivo = ' + tabella_righe.fieldbyname('doc_progressivo_origine').asstring +
            ' and riga = ' + tabella_righe.fieldbyname('doc_riga_origine').asstring;
          ovr.parambyname('quantita_approntata').asfloat := tabella_righe.fieldbyname('doc_quantita_approntata').asfloat;
          ovr.parambyname('tum_quantita_approntata_base').asfloat := tabella_righe.fieldbyname('doc_tum_quantita_approntata_base').asfloat;
          ovr.parambyname('saldo_acconto_approntato').asstring := tabella_righe.fieldbyname('doc_saldo_acconto_approntato').asstring;
          ovr.parambyname('numero_colli_approntato').asinteger := tabella_righe.fieldbyname('doc_numero_colli_approntati').asinteger;
          ovr.parambyname('numero_confezioni_approntato').asinteger := tabella_righe.fieldbyname('doc_numero_confezioni_approntate').asinteger;
          ovr.execsql;
        finally
          ovr.free;
        end;
      end;

      if visualizzato_messaggio and (ripeti_messaggio = 'testata') then
      begin
        if messaggio(304, 'ripetere i messaggi di avviso per le altre righe') <> 1 then
        begin
          ripeti_messaggio := 'no';
        end
        else
        begin
          ripeti_messaggio := 'si';
        end;
      end;
    end
    else
    begin
      abort;
    end;
  end;
end;

// ******************************************************************************
// gestione campi
// ******************************************************************************

procedure tgesven.pannello_campienter(sender: tobject);
begin
  inherited;

  if esiste and (tipo_documento = 'ordine') and
    (tabella.fieldbyname('situazione').asstring <> 'evaso') and
    (tabella.fieldbyname('situazione').asstring <> 'annullato') then
  begin
    abilita_campo(tool_orda);
  end
  else
  begin
    disabilita_campo(tool_orda);
  end;

  if esiste and ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
  begin
    abilita_campo(v_tag_fe_testata);
  end
  else
  begin
    disabilita_campo(v_tag_fe_testata);
  end;

  if tipo_documento = 'nota credito' then
  begin
    if esiste then
    begin
      abilita_campo(v_fatture_collegate);
    end
    else
    begin
      disabilita_campo(v_fatture_collegate);
    end;
  end
  else
  begin
    disabilita_campo(v_fatture_collegate);
  end;

  disabilita_campo(v_documenti_collegati);
  ripristina_lotti := false;

  if tabella.fieldbyname('revisione').asinteger = 0 then
  begin
    disabilita_campo(v_revisione_precedente);
  end
  else
  begin
    abilita_campo(v_revisione_precedente);
  end;

  eseguito_gesdocgri := false;

  if esiste and
    ((tipo_documento = 'bolla') or (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') or (tipo_documento = 'fattura accompagnatoria')) then
  begin
    abilita_campo(v_cmr);
  end
  else
  begin
    disabilita_campo(v_cmr);
  end;

  if esiste then
  begin
    abilita_campo(v_totalizza);
  end
  else
  begin
    disabilita_campo(v_totalizza);
  end;

  if esiste and (tipo_documento = 'ordine') then
  begin
    abilita_campo(v_situazione_acconto);
  end
  else
  begin
    disabilita_campo(v_situazione_acconto);
  end;

  abilita_bottoni_analitica(true);
  ultimo_cms_codice := '';
  ultimo_tipologia := '';
  approntato_totale := false;

  if ((tipo_documento = 'bolla') or (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori')) and
    ((tabella.fieldbyname('situazione').asstring = 'evaso') or (tabella.fieldbyname('situazione').asstring = 'evaso parziale')) then
  begin
    abilita_campo(v_chiudi_documento);
  end
  else
  begin
    disabilita_campo(v_chiudi_documento);
  end;

  if tipo_documento = 'preventivo nominativi' then
  begin
    abilita_campo(v_preventivo_cliente);
  end
  else
  begin
    disabilita_campo(v_preventivo_cliente);
  end;

  if esiste then
  begin
    tool_invia_excel.enabled := true;

    if (tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or (tipo_documento = 'ddt') or
      (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'ordine') then
    begin
      v_packing_list.enabled := true;
    end
    else
    begin
      v_packing_list.enabled := false;
    end;

    abilita_sda(true);
  end
  else
  begin
    tool_invia_excel.enabled := false;
    abilita_sda(false);
  end;
  abilita_bottone_dati_extra_testata;

  if esiste then
  begin
    tool_gesccf.enabled := true;
  end
  else
  begin
    tool_gesccf.enabled := false;
  end;

  if esiste and (supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si')) then
  begin
    v_bloccato.enabled := true;
  end
  else
  begin
    v_bloccato.enabled := false;
  end;

  if esiste and (tipo_documento = 'ordine') and
    ((tabella.fieldbyname('situazione').asstring = 'inserito') or (tabella.fieldbyname('situazione').asstring = 'evaso parziale')) then
  begin
    v_assappcl.enabled := true;
  end
  else
  begin
    v_assappcl.enabled := false;
  end;

  if esiste and (copy(tipo_documento, 1, 10) = 'preventivo') then
  begin
    v_log_revisione.enabled := true;
    if tabella.fieldbyname('situazione').asstring = 'inserito' then
    begin
      v_revisione_documento.enabled := true;
    end
    else
    begin
      read_tabella(revisione_conai, tabella.fieldbyname('progressivo').asinteger);
      if revisione_conai.fieldbyname('numero_righe').asinteger > 0 then
      begin
        v_revisione_documento.enabled := false;
      end
      else
      begin
        v_revisione_documento.enabled := true;
      end;
    end;
  end;

  if esiste and
    ((tabella.fieldbyname('tipo_documento').asstring = 'bolla') or
    (tabella.fieldbyname('tipo_documento').asstring = 'ddt') or
    (tabella.fieldbyname('tipo_documento').asstring = 'ddt fornitori') or
    (tabella.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria')) then
  begin
    if tsp.fieldbyname('tipo').asstring = 'vettore' then
    begin
      v_scheda_trasporto.enabled := true;
    end
    else
    begin
      v_scheda_trasporto.enabled := false;
    end;
  end
  else
  begin
    v_scheda_trasporto.enabled := false;
  end;

  if esiste and (tipo_documento <> 'ddt fornitori') then
  begin
    if (((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'evaso')) or
      ((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine') and (tabella.fieldbyname('situazione').asstring <> 'consolidato')) then
    begin
      v_pagper.enabled := true;
    end
    else
    begin
      v_pagper.enabled := false;
    end;
  end
  else
  begin
    v_pagper.enabled := false;
  end;

  if esiste and (tabella.fieldbyname('tipo_documento').asstring <> tipo_documento) then
  begin
    messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
    abilita_codice;
  end
  else
  begin
    if (tabella.fieldbyname('situazione').asstring <> 'evaso') and
      ((tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo')) then
    begin
      v_annulla_documento.enabled := true;
    end
    else
    begin
      v_annulla_documento.enabled := false;
    end;

    abilita_storni(true);
    attiva_esiste(false);
    abilita_tipo_documento;
    v_esistenza.enabled := false;

    if not esiste then
    begin
      tdo_codice_controllo(true);
    end;

    numero_documento := 0;
    numero_documento_precedente := 0;
    data_precedente := 0;

    if esiste then
    begin
      if tipo_documento <> 'fattura differita' then
      begin
        tool_f7.enabled := true;
      end;

      if ((tabella.fieldbyname('situazione').asstring = 'inserito') or (tabella.fieldbyname('situazione').asstring = 'evaso parziale')) and
        ((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) then
      begin
        v_evasione_documento.enabled := true;
      end
      else if (tabella.fieldbyname('situazione').asstring = 'evaso') and (tabella.fieldbyname('tipo_documento').asstring = 'corrispettivo') then
      begin
        v_evasione_documento.enabled := true;
      end
      else if (tabella.fieldbyname('situazione').asstring = 'evaso') and (tdo.fieldbyname('tdo_codice_differite').asstring <> '') and
        (tabella.fieldbyname('tipo_documento').asstring = 'ddt') then
      begin
        tdo_conto_vendita.close;
        v_evasione_documento.enabled := true;
      end
      else if (tabella.fieldbyname('situazione').asstring = 'evaso') and (tdo.fieldbyname('tdo_codice_differite').asstring = '') and
        (tabella.fieldbyname('tipo_documento').asstring = 'ddt') then
      begin
        if read_tabella(tdo_conto_vendita, tabella.fieldbyname('tdo_codice').asstring) then
        begin
          v_evasione_documento.enabled := true;
        end
        else
        begin
          v_evasione_documento.enabled := false;
        end;
      end
      else
      begin
        v_evasione_documento.enabled := false;
      end;
    end
    else
    begin
      v_evasione_documento.enabled := false;
    end;

    inserimento_fattura_differita := false;
  end;

  if esiste and ((tipo_documento = 'bolla') and (tabella.fieldbyname('tdo_codice_differite').asstring <> '')) or
    (tipo_documento = 'corrispettivo') or
    ((tipo_documento = 'ddt') and (tabella.fieldbyname('tdo_codice_differite').asstring <> '')) or
    (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') then
  begin
    v_creast.enabled := true;
  end
  else
  begin
    v_creast.enabled := false;
  end;
end;

procedure tgesven.abilita_storni(flag: boolean);
var
  corrispettivo: boolean;
begin
  if parte_attiva = 'pannello_campi' then
  begin
    tab_pannello_bottoni_nuovi_storni.color := clbtnface;

    if flag then
    begin
      if ((tipo_documento = 'ddt') or (tipo_documento = 'bolla') or (tipo_documento = 'ddt fornitori') or
        (tipo_documento = 'corrispettivo') or
        (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
        (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
        (v_situazione.text = 'evaso') then
      begin
        tab_pannello_bottoni_nuovi_storni.color := claqua;

        v_storno_evasione.enabled := true;
      end
      else
      begin
        v_storno_evasione.enabled := false;
      end;

      if ((tipo_documento = 'corrispettivo') or (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
        (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
        (v_situazione.text = 'consolidato') then
      begin
        tab_pannello_bottoni_nuovi_storni.color := clfuchsia;

        v_storno_evasione.enabled := false;
        v_storno_consolidamento.enabled := true;
      end
      else
      begin
        v_storno_consolidamento.enabled := false;
      end;

      corrispettivo := false;
      if (tipo_documento = 'fattura immediata') then
      begin
        fatcor.close;
        fatcor.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
        fatcor.open;
        if not fatcor.isempty then
        begin
          corrispettivo := true;
        end;
      end;

      if ((tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito') or corrispettivo) and
        (v_situazione.text = 'inserito') then
      begin
        tab_pannello_bottoni_nuovi_storni.color := cllime;

        v_storno_differite.enabled := true;
      end
      else
      begin
        v_storno_differite.enabled := false;
      end;

      if ((tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
        (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito') or
        (tipo_documento = 'corrispettivo')) and
        (v_situazione.text = 'evaso') then
      begin
        v_consolida.enabled := true;
      end
      else
      begin
        v_consolida.enabled := false;
      end;

      if (tabella.fieldbyname('situazione_sdi').asstring = 'in attesa invio') or
        (tabella.fieldbyname('situazione_sdi').asstring = '') then
      begin
        disabilita_campo(v_storno_sdi);
      end
      else
      begin
        v_storno_evasione.enabled := false;
        v_storno_differite.enabled := false;

        if ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
        begin
          abilita_campo(v_storno_sdi);
        end
        else
        begin
          disabilita_campo(v_storno_sdi);
        end;
      end;

      if (tabella.fieldbyname('situazione').asstring = 'consolidato') and
        (tabella.fieldbyname('situazione_sdi').asstring <> 'inviato') then
      begin
        abilita_campo(v_setta_esito_sdi);
      end
      else
      begin
        disabilita_campo(v_setta_esito_sdi);
      end;
    end
    else
    begin
      tab_pannello_bottoni_nuovi_storni.color := clbtnface;

      v_storno_evasione.enabled := false;
      v_storno_consolidamento.enabled := false;
      v_storno_differite.enabled := false;
      v_consolida.enabled := false;
      disabilita_campo(v_storno_sdi);
      disabilita_campo(v_setta_esito_sdi);
    end;
  end
  else
  begin
    tab_pannello_bottoni_nuovi_storni.color := clbtnface;

    v_storno_evasione.enabled := false;
    v_storno_consolidamento.enabled := false;
    v_storno_differite.enabled := false;
    v_consolida.enabled := false;
    disabilita_campo(v_storno_sdi);
    disabilita_campo(v_setta_esito_sdi);
  end;
end;

procedure tgesven.assegna_decimali;
begin
  cifre_decimali_prezzo := decimali_prezzo(v_tva_codice.text);
  cifre_decimali_importo := decimali_importo(v_tva_codice.text);
end;

procedure tgesven.v_tdo_codiceenter(sender: tobject);
begin
  inherited;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  variato_stringa := v_tdo_codice.text;
  visarc_filtro_01 := tipo_documento;

  if utntdo.isempty then
  begin
    v_tdo_codice.lookcollvisname := 'TDV';
  end
  else
  begin
    v_tdo_codice.lookcollvisname := 'TDOUTN';
    visarc_filtro_02 := utente;
  end;
end;

procedure tgesven.v_numero_documentoenter(sender: tobject);
begin
  inherited;

  if tdo.fieldbyname('numerazione_fiscale').asstring = 'si' then
  begin
    assegna_numerazione_enter(arc.arcdit, tabella, v_data_documento.date, tipo_numerazione, v_serie_documento.text, v_numero_documento, 'numero_documento');
  end;
end;

procedure tgesven.v_data_documentoenter(sender: tobject);
begin
  inherited;
  variato_data := v_data_documento.date;
  if esiste and (tabella.fieldbyname('revisione').asinteger <> 0) then
  begin
    selectnext(v_data_documento, true, true);
  end;
end;

procedure tgesven.v_cli_codiceenter(sender: tobject);
begin
  inherited;

  assegna_pvv := false;
  variato_stringa := v_cli_codice.text;
  if (not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ddt fornitori'))) and (not esiste) then
  begin
    v_cli_codice.hint := 'codice cliente [F4 F5 F6] [F9=documenti da evadere]';
  end
  else if tipo_documento = 'preventivo nominativi' then
  begin
    v_cli_codice.hint := 'codice nominativo [F4 F5 F6]';
  end
  else
  begin
    v_cli_codice.hint := 'codice cliente [F4 F5 F6]';
  end;

  if (tipo_documento <> 'preventivo nominativi') and (tipo_documento <> 'ddt fornitori') and not esiste then
  begin
    v_cli_codice.hint := v_cli_codice.hint + ' [F10=elenco impianti]';
  end;
  avviso_fuori_fido := false;
end;

procedure tgesven.pannello_codiceenter(sender: tobject);
var
  totale_quantita, tum_totale_quantita_base: double;
  totale_colli: integer;

  stringa, stringa_righe, lista: string;
  allegati: tstringlist;
  righe: tmyquery_go;

  pr: tdupordv;
begin
  visualizzato_messaggio := false;
  riga_drag_drop := 0;
  sequenza_drag_drop := 0;

  if storno_differite then
  begin
    tabella.refresh;
  end;
  storno_differite := false;

  documento_chiuso := false;

  tool_documenti_allegati.enabled := true;
  progressivo_documento_evadere := 0;
  tipo_documento_evadere := '';

  avviso_differite := false;

  if (aggiorna_totali_testata) and (v_progressivo.value <> 0) and
    (tabella.fieldbyname('situazione').asstring <> 'consolidato') then
  begin
    if (tabella.fieldbyname('stampato').asstring <> '') and tabella_edit(tabella) then
    begin
      if tdo.fieldbyname('avvisi_documento_stampato_cliente').asstring = 'si' then
      begin
        messaggio(100, 'poichè il documento è stato modificato viene resettata la situazione di "stampato" per il cliente');
      end;
      tabella.fieldbyname('stampato').asstring := '';
      tabella.post;
    end;

    if (aggiorna_totali_colli) and ((totalizzazione_quantita = 'si') or (totalizzazione_colli = 'si')) then
    begin
      if tabella_edit(tabella) then
      begin
        totalizza_colli('automatica');
        no_eventi_post := true;
        tabella.post;
      end;
    end;

    totven.movven_testata(tmyconnection_go(tabella.connection), tipo_documento, tabella.fieldbyname('progressivo').asinteger);

    if arc.dit.fieldbyname('tiv_codice_vendita_controllo').asstring <> '' then
    begin
      abilitazioni;
    end;

    no_scroll := true;
    tabella.refresh;
    if tdo.fieldbyname('tiv_codice_agevolata').asstring <> '' then
    begin
      tabella_righe.refresh;
    end;

    if not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'nota credito') or (tipo_documento = 'fattura differita')) then
    begin
      if v_situazione.text = 'inserito' then
      begin
        query_sct.close;
        query_sct.parambyname('cli_codice').asstring := v_cli_codice.text;
        query_sct.parambyname('data_inizio').asdate := v_data_documento.date;
        query_sct.parambyname('data_fine').asdate := v_data_documento.date;
        query_sct.open;
        if not query_sct.isempty then
        begin
          totale_colli := trunc(v_numero_colli.value);
          totale_quantita := 0;
          tum_totale_quantita_base := 0;
          query_totalizza.close;
          query_totalizza.sql.clear;
          query_totalizza.sql.add('select sum(numero_colli) numero_colli, sum(quantita) quantita, sum(tum_quantita_base) tum_quantita_base');
          if tipo_documento = 'ordine' then
          begin
            query_totalizza.sql.add('from ovr');
          end
          else if tipo_documento = 'bolla' then
          begin
            query_totalizza.sql.add('from bvr');
          end
          else if tipo_documento = 'corrispettivo' then
          begin
            query_totalizza.sql.add('from cvr');
          end
          else if tipo_documento = 'ddt' then
          begin
            query_totalizza.sql.add('from dvr');
          end
          else if (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') then
          begin
            query_totalizza.sql.add('from fvr');
          end;
          query_totalizza.sql.add('where progressivo = :progressivo');
          query_totalizza.sql.add('and tipo_movimento = ''normale''');
          query_totalizza.sql.add('group by progressivo');
          query_totalizza.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
          query_totalizza.open;
          if not query_totalizza.isempty then
          begin
            totale_quantita := query_totalizza.fieldbyname('quantita').asfloat;
            tum_totale_quantita_base := query_totalizza.fieldbyname('tum_quantita_base').asfloat;
            if totale_colli = 0 then
            begin
              totale_colli := query_totalizza.fieldbyname('numero_colli').asinteger;
            end;
          end;

          query_sct_qc.close;
          query_sct_qc.sql.clear;
          if query_sct.fieldbyname('colli').asinteger <> 0 then
          begin
            query_sct_qc.sql.add('select');
            query_sct_qc.sql.add('case when sctscc.id is null then sct.colli else sctscc.colli end colli,');
            query_sct_qc.sql.add('case when sctscc.id is null then sct.tsm_codice_colli else sctscc.tsm_codice end tsm_codice,');
            query_sct_qc.sql.add('case');
            query_sct_qc.sql.add('when sctscc.id is null then (select tsm.descrizione from tsm where tsm.codice = sct.tsm_codice_colli)');
            query_sct_qc.sql.add('else (select tsm.descrizione from tsm where tsm.codice = sctscc.tsm_codice)');
            query_sct_qc.sql.add('end descrizione,');
            query_sct_qc.sql.add('case');
            query_sct_qc.sql.add('when sctscc.id is null then coalesce((select tsm.percentuale_totale from tsm where tsm.codice = sct.tsm_codice_colli), 100)');
            query_sct_qc.sql.add('else coalesce((select tsm.percentuale_totale from tsm where tsm.codice = sctscc.tsm_codice), 100)');
            query_sct_qc.sql.add('end percentuale');
            query_sct_qc.sql.add('from sct');
            query_sct_qc.sql.add('left join sctscc on sctscc.id_sct = sct.id and :colli >= sctscc.colli');
            query_sct_qc.sql.add('where sct.id = :id');
            query_sct_qc.sql.add('order by sctscc.colli desc');
            query_sct_qc.sql.add('limit 1');
            query_sct_qc.parambyname('id').asinteger := query_sct.fieldbyname('id').asinteger;
            query_sct_qc.parambyname('colli').asfloat := totale_colli;
            query_sct_qc.open;

            if totale_colli >= query_sct_qc.fieldbyname('colli').asinteger then
            begin
              if (query_sct_qc.fieldbyname('percentuale').asfloat < tsm_sconto.fieldbyname('percentuale_totale').asfloat) or
                tsm_sconto.isempty then
              begin
                messaggio(200, 'raggiunta la condizione di sconto colli' + #13 +
                  'numero colli del documento: ' + inttostr(query_totalizza.fieldbyname('numero_colli').asinteger) + '  -  ' +
                  'numero minimo colli previsti: ' + inttostr(query_sct_qc.fieldbyname('colli').asinteger) + #13 +
                  'sconto previsto: ' + query_sct_qc.fieldbyname('descrizione').asstring);

                if tabella_edit(tabella) then
                begin
                  tabella.fieldbyname('tsm_codice_sconto').asstring := query_sct_qc.fieldbyname('tsm_codice').asstring;
                  tsm_codice_sconto_controllo(false);
                  tabella.post;
                end;
                totven.movven_testata(tmyconnection_go(tabella.connection), tipo_documento, tabella.fieldbyname('progressivo').asinteger);
                tabella.refresh;
              end;
            end;
          end
          else if query_sct.fieldbyname('quantita').asfloat <> 0 then
          begin
            query_sct_qc.sql.add('select');
            query_sct_qc.sql.add('case when sctscq.id is null then sct.quantita else sctscq.quantita end quantita,');
            query_sct_qc.sql.add('case when sctscq.id is null then sct.tsm_codice_quantita else sctscq.tsm_codice end tsm_codice,');
            query_sct_qc.sql.add('case');
            query_sct_qc.sql.add('when sctscq.id is null then (select tsm.descrizione from tsm where tsm.codice = sct.tsm_codice_quantita)');
            query_sct_qc.sql.add('else (select tsm.descrizione from tsm where tsm.codice = sctscq.tsm_codice)');
            query_sct_qc.sql.add('end descrizione,');
            query_sct_qc.sql.add('case');
            query_sct_qc.sql.add('when sctscq.id is null then coalesce((select tsm.percentuale_totale from tsm where tsm.codice = sct.tsm_codice_quantita), 100)');
            query_sct_qc.sql.add('else coalesce((select tsm.percentuale_totale from tsm where tsm.codice = sctscq.tsm_codice), 100)');
            query_sct_qc.sql.add('end percentuale');
            query_sct_qc.sql.add('from sct');
            query_sct_qc.sql.add('left join sctscq on sctscq.id_sct = sct.id and :quantita >= sctscq.quantita');
            query_sct_qc.sql.add('where sct.id = :id');
            query_sct_qc.sql.add('order by sctscq.quantita desc');
            query_sct_qc.sql.add('limit 1');
            query_sct_qc.parambyname('id').asinteger := query_sct.fieldbyname('id').asinteger;
            query_sct_qc.parambyname('quantita').asfloat := tum_totale_quantita_base;
            query_sct_qc.open;

            if tum_totale_quantita_base >= query_sct_qc.fieldbyname('quantita').asinteger then
            begin
              if (query_sct_qc.fieldbyname('percentuale').asfloat < tsm_sconto.fieldbyname('percentuale_totale').asfloat) or
                tsm_sconto.isempty then
              begin
                messaggio(200, 'raggiunta la condizione di sconto quantità' + #13 +
                  'quantità del documento: ' + formatfloat(formato_display_quantita, query_totalizza.fieldbyname('tum_quantita_base').asfloat) + '  -  ' +
                  'quantità minima prevista: ' + formatfloat(formato_display_quantita, query_sct_qc.fieldbyname('quantita').asfloat) + #13 +
                  'sconto previsto: ' + query_sct_qc.fieldbyname('descrizione').asstring);
                if tabella_edit(tabella) then
                begin
                  tabella.fieldbyname('tsm_codice_sconto').asstring := query_sct_qc.fieldbyname('tsm_codice').asstring;
                  tsm_codice_sconto_controllo(false);
                  tabella.post;
                end;
                totven.movven_testata(tmyconnection_go(tabella.connection), tipo_documento, tabella.fieldbyname('progressivo').asinteger);
                tabella.refresh;
              end;
            end;
          end;
        end;
      end;
    end;

    no_scroll := false;

    if not avviso_fuori_fido then
    begin
      fuori_fido(true);
      avviso_fuori_fido := false;
    end;

    if (documento_modificato) and (tabella.fieldbyname('situazione').asstring = 'evaso') and
      ((tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or (tipo_documento = 'ddt') or
      (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
      (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) then
    begin
      if messaggio(304, 'il documento già evaso è stato modificato' + #13 +
        'lo si vuole ristampare?') = 1 then
      begin
        tool_ctrl_f1.enabled := true;
        stampa;
      end;
    end;

    //vending
    if vending then
    begin
      allegati := tstringlist.create;

      righe := tmyquery_go.create(nil);
      righe.connection := arc.arcdit;
      righe.sql.text := 'select ovr.art_codice, concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione, ' +
        'ovr.quantita from ovr inner join art on art.codice = ovr.art_codice ' +
        'where progressivo = :progressivo and ovr.situazione = ''inserito'' and art.tvend_codice <> '''' ' +
        'order by sequenza';
      righe.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
      righe.open;
      if not righe.isempty and (messaggio(300, 'invia comunicazione all''agente vending') = 1) then
      begin
        stringa_righe := '';
        while not righe.eof do
        begin
          stringa_righe := stringa_righe + #13 + righe.fieldbyname('art_codice').asstring + ' ' +
            righe.fieldbyname('art_descrizione').asstring + ' ' + righe.fieldbyname('quantita').asstring;

          righe.next;
        end;

        stringa := cli.fieldbyname('cli_descrizione').asstring + #13 +
          'filiale:' + #13 + tabella.fieldbyname('via').asstring + ' ' + tabella.fieldbyname('citta').asstring + #13 +
          'articoli :' + stringa_righe;

        lista := tag.fieldbyname('user_e_mail').asstring;
        read_tabella(tve, ditta);
        if (tve.fieldbyname('invio_mail').asstring = 'si') and (tag.fieldbyname('user_e_mail').asstring <> '') then
        begin
          arc.invia_messaggio(false, 'Ordine OCS', '', stringa, lista, allegati, '', '', '', '', 0, 0);
        end;
        if (tve.fieldbyname('invio_mail').asstring = 'si') and (tag.fieldbyname('cellulare').asstring <> '') then
        begin
          clasms := tclasms.create(arc.dit.fieldbyname('utente_sms').asstring,
            arc.dit.fieldbyname('password_sms').asstring, arc.dit.fieldbyname('identificativo_sms').asstring);
          while length(stringa) > 160 do
          begin
            clasms.invia_sms(tag.fieldbyname('cellulare').asstring, copy(stringa, 1, 160), tag.fieldbyname('descrizione').asstring);
            stringa := copy(stringa, 161, length(stringa));
          end;
          clasms.invia_sms(tag.fieldbyname('cellulare').asstring, stringa, tag.fieldbyname('descrizione').asstring);
          clasms.free;
        end;
      end;
      allegati.free;
      righe.free;
    end;
  end;

  documento_modificato := false;

  if (not esiste_documento) and (stampa_immediata = 'si') and (esiste) then
  begin
    if not tabella_righe.isempty then
    begin
      tool_ctrl_f1.enabled := true;
      stampa;
    end;
  end
  else if (not esiste_documento) and (stampa_immediata_etichette = 'si') and (esiste) then
  begin
    stampa_etichette;
  end;

  if (not esiste_documento) and (esiste) then
  begin
    if not tabella_righe.isempty and (tdo.fieldbyname('duplica_ordini_clienti').asstring = 'si') then
    begin
      pr := tdupordv.create(nil);
      try
        if pr.esegui_form then
        begin
          pr.codice := tabella.fieldbyname('progressivo').asinteger;
          pr.showmodal;
        end;
      finally
        pr.free;
      end;
    end;
  end;

  inherited;

  stampa_immediata := 'no';

  tab_control.activepage := tab_pagina1;
  v_tdo_codice.enabled := false;
  v_tdo_codice.color := clbtnface;

  if v_progressivo.value <> 0 then
  begin
    attiva_esiste(true);
  end;

  aggiorna_totali_testata := false;
  aggiorna_totali_colli := false;
  v_esistenza.enabled := false;

  if (v_progressivo.value <> 0) and (tabella.fieldbyname('tipo_documento').asstring = 'ordine') and
    (tabella.fieldbyname('codice_contratto').asstring <> '') then
  begin
    supero.close;
    supero.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    supero.parambyname('codice_contratto').asstring := tabella.fieldbyname('codice_contratto').asstring;
    supero.parambyname('data').asdate := tabella.fieldbyname('data_documento').asdatetime;
    supero.open;
    if supero.fieldbyname('importo_contratto').asfloat < supero.fieldbyname('importo_venduto').asfloat then
    begin
      messaggio(100, 'l''importo venduto [' + formatfloat(formato_display_importo, supero.fieldbyname('importo_venduto').asfloat) +
        '] è superiore dell''importo contrattuale del periodo [' + formatfloat(formato_display_importo, supero.fieldbyname('importo_contratto').asfloat) + ']');
    end;
  end;
end;

procedure tgesven.formcreate(sender: tobject);
var
  vendite_ridimensiona_griglia: string;
  esistenza_checked, scorta_minima_checked, scorta_massima_checked, impegnato_checked, ordinato_checked: boolean;
begin
  if (tipo_documento = 'fattura differita') or (tipo_documento = 'fattura immediata') or
    (tipo_documento = 'nota credito') or (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
  begin
    disabilita_campo(groupbox_consegna);
  end;

  if tipo_documento <> 'fattura immediata' then
  begin
    disabilita_campo(v_fvtddt);
  end;

  read_tabella(tve, ditta);

  if not(supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si')) then
  begin
    v_bloccato.enabled := false;
  end;

  aggiorna_consolidato := false;
  forzatura_modifica_cancellazione := false;

  // filtro codici documento per utente
  read_tabella(utntdo, utente);

  dicint := tdicint.create('C');

  iban := tiban.create;
  spesco := tspesco.create(arc.arcdit, arc.dit);
  movmag := tmovmag.create(arc.arcdit);
  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);
  crea_documento_derivato := tcrea_documento_derivato.create;
  rma := trma.create;
  nca := tnca.create;
  calsca := tcalsca.create;
  prodconf := tprodconf.create;
  raee := traee.create;
  qtamin := tqtamin.create;
  totven := ttotven.create;
  provv := tprovv.create;
  tipinv := ttipinv.create;
  valdsb := tvaldsb.create;
  przinv := tprzinv.create;
  conai := tconai.create;

  if arc.dit.fieldbyname('rda_esistenza_oc').asstring = 'si' then
  begin
    esistenza_checked := true;
  end
  else
  begin
    esistenza_checked := false;
  end;
  if arc.dit.fieldbyname('rda_scorta_minima_oc').asstring = 'si' then
  begin
    scorta_minima_checked := true;
  end
  else
  begin
    scorta_minima_checked := false;
  end;
  if arc.dit.fieldbyname('rda_scorta_massima_oc').asstring = 'si' then
  begin
    scorta_massima_checked := true;
  end
  else
  begin
    scorta_massima_checked := false;
  end;
  if arc.dit.fieldbyname('rda_impegnato_oc').asstring = 'si' then
  begin
    impegnato_checked := true;
  end
  else
  begin
    impegnato_checked := false;
  end;
  if arc.dit.fieldbyname('rda_ordinato_oc').asstring = 'si' then
  begin
    ordinato_checked := true;
  end
  else
  begin
    ordinato_checked := false;
  end;
  fabdin := tfabdin.create(esistenza_checked, scorta_minima_checked, scorta_massima_checked, impegnato_checked, ordinato_checked);

  query_rda.sql.text :=
    'select ''rda'' archivio, art_codice, rda.progressivo, rda.situazione, 0 riga, quantita ' +
    'from rda ' +
    'where tipo_richiesta = ''ordini clienti'' and rda.ovr_progressivo = :ovr_progressivo and rda.ovr_riga = :ovr_riga ' +
    'union all ' +
    'select ''oar'' archivio, art_codice, oar.progressivo, oar.situazione, oar.riga, quantita ' +
    'from oar ' +
    'where oar.ovr_tipo = ''cliente'' and oar.ovr_progressivo = :ovr_progressivo and oar.ovr_riga = :ovr_riga';

  read_tabella(tr0, ditta);

  campi_navigatore := 'data_documento,data;numero_documento,numero;tdo_codice,documento;cli_codice,intestatario';

  // tab_control.ActivePage := tab_pagina1;

  sce_lista_multiselezione := tstringlist.create;
  sce_lista_multiselezione_quantita := tstringlist.create;

  evasione_preventivo_ordine := false;
  art_codice_evasione_preventivo_ordine := '';
  inserimento_fattura_differita := false;

  // abilita importi
  if importi_vendite = 'nascondi' then
  begin
    v_totalizza.visible := false;
  end;

  if tipo_documento = 'ddt fornitori' then
  begin
    if importi_acquisti = 'nascondi' then
    begin
      v_l_prezzo.visible := false;
      v_prezzo.visible := false;

      v_l_tsm_codice_righe.visible := false;
      v_tsm_codice_righe.visible := false;
      v_tsm_codice_art.visible := false;

      label89.visible := false;
      v_importo_sconto_righe.visible := false;

      v_l_tipo_movimento.visible := false;
      v_tipo_movimento.visible := false;

      v_l_importo.visible := false;
      v_importo.visible := false;

      v_analitica.visible := false;
      v_commesse.visible := false;
      v_conto_terzi.visible := false;
      v_bottone_dati_extra_testata.visible := false;
      v_consolida.visible := false;
      v_pagper.visible := false;

      label85.visible := false;
      label86.visible := false;
      v_importo_totale_imponibile.visible := false;
      v_importo_totale.visible := false;

      rzdbeditdescrizione_go19.visible := false;
      rzdbeditdescrizione_go20.visible := false;

      v_griglia_righe.columns[7].visible := false;
      v_griglia_righe.columns[8].visible := false;
      v_griglia_righe.columns[9].visible := false;
      v_griglia_righe.columns[10].visible := false;
      v_griglia_righe.columns[11].visible := false;
    end
    else if importi_acquisti = 'visualizza' then
    begin
      v_pagper.visible := false;

      v_l_prezzo.enabled := false;
      v_prezzo.enabled := false;

      v_l_tsm_codice_righe.enabled := false;
      v_tsm_codice_righe.enabled := false;
      v_tsm_codice_art.enabled := false;
      v_importo_sconto_righe.enabled := false;

      v_l_tipo_movimento.enabled := false;
      v_tipo_movimento.enabled := false;

      v_l_importo.enabled := false;
      v_importo.enabled := false;
    end;
  end
  else
  begin
    if importi_vendite = 'nascondi' then
    begin
      v_l_prezzo.visible := false;
      v_prezzo.visible := false;

      v_l_tsm_codice_righe.visible := false;
      v_tsm_codice_righe.visible := false;
      v_tsm_codice_art.visible := false;

      label89.visible := false;
      v_importo_sconto_righe.visible := false;

      v_l_tipo_movimento.visible := false;
      v_tipo_movimento.visible := false;

      v_l_importo.visible := false;
      v_importo.visible := false;

      v_analitica.visible := false;
      v_commesse.visible := false;
      v_conto_terzi.visible := false;
      v_bottone_dati_extra_testata.visible := false;
      v_consolida.visible := false;
      v_pagper.visible := false;

      label85.visible := false;
      label86.visible := false;
      v_importo_totale_imponibile.visible := false;
      v_importo_totale.visible := false;

      rzdbeditdescrizione_go19.visible := false;
      rzdbeditdescrizione_go20.visible := false;

      v_griglia_righe.columns[7].visible := false;
      v_griglia_righe.columns[8].visible := false;
      v_griglia_righe.columns[9].visible := false;
      v_griglia_righe.columns[10].visible := false;
      v_griglia_righe.columns[11].visible := false;
    end
    else if importi_vendite = 'visualizza' then
    begin
      v_pagper.visible := false;

      v_l_prezzo.enabled := false;
      v_prezzo.enabled := false;

      v_l_tsm_codice_righe.enabled := false;
      v_tsm_codice_righe.enabled := false;
      v_tsm_codice_art.enabled := false;
      v_importo_sconto_righe.enabled := false;

      v_l_tipo_movimento.enabled := false;
      v_tipo_movimento.enabled := false;

      v_l_importo.enabled := false;
      v_importo.enabled := false;
    end;
  end;

  art_codice_spese_extra := '';
  art_codice_spese_trasporto := '';
  art_codice_spese_bollo := '';
  art_codice_spese_incasso := '';
  art_codice_sconto_cassa := '';
  art_codice_sconti_fattura := '';

  data_documento := now;

  tdo_codice := '';
  gestione_lotto_singolo := arc.dit.fieldbyname('gestione_lotto_singolo').asstring;
  art_codice_spese_extra := arc.dit.fieldbyname('art_codice_spese_extra').asstring;
  art_codice_spese_trasporto := arc.dit.fieldbyname('art_codice_spese_trasporto').asstring;
  art_codice_spese_bollo := arc.dit.fieldbyname('art_codice_bollo').asstring;
  art_codice_spese_incasso := arc.dit.fieldbyname('art_codice_spese_incasso').asstring;
  art_codice_cassa_professionisti := arc.dit.fieldbyname('art_codice_cassa_professionisti').asstring;
  percentuale_cassa_professionist := arc.dit.fieldbyname('percentuale_cassa_professionist').asfloat;
  art_codice_sconto_cassa := arc.dit.fieldbyname('art_codice_sconto_cassa').asstring;
  art_codice_sconti_fattura := arc.dit.fieldbyname('art_codice_sconti_fattura').asstring;
  blocco_fuori_fido := arc.dit.fieldbyname('blocco_fuori_fido').asstring;
  gen_codice_ritenuta := arc.dit.fieldbyname('gen_codice_ritenuta_acconto').asstring;
  tco_codice_ritenuta := arc.dit.fieldbyname('tco_codice_ritenuta_acconto').asstring;
  tiv_codice_omaggi := arc.dit.fieldbyname('tiv_codice_omaggi_vendite').asstring;
  tpe_codice := arc.dit.fieldbyname('tpe_codice').asstring;
  cancella_documenti_vendita_evasi := arc.dit.fieldbyname('cancella_documenti_vendita_eva').asstring;
  stampa_configurazioni := arc.dit.fieldbyname('stampa_configurazioni').asstring;
  prezzi_configurazione := arc.dit.fieldbyname('prezzi_configurazione').asstring;
  gestione_valuta := arc.dit.fieldbyname('gestione_valuta').asstring;
  listini_scaglioni := arc.dit.fieldbyname('listini_scaglioni').asstring;
  valorizzazione_gestionale := arc.dit.fieldbyname('valorizzazione_gestionale').asstring;
  genera_rda_ordini_vendita := arc.dit.fieldbyname('genera_rda_ordini_vendita').asstring;
  ordinato_fido := arc.dit.fieldbyname('ordinato_fido').asstring;
  controllo_equivalenti := arc.dit.fieldbyname('controllo_equivalenti').asstring;
  vendite_ridimensiona_griglia := arc.dit.fieldbyname('vendite_ridimensiona_griglia').asstring;
  cli_codice_potenziali := arc.dit.fieldbyname('cli_codice_potenziali').asstring;

  if (arc.dit.fieldbyname('visualizza_saldo_cliente_ven').asstring = 'no') or (importi_vendite = 'nascondi') then
  begin
    v_l_saldo_cliente.visible := false;
    v_saldo_cliente.visible := false;
  end;
  visualizza_fido_cliente_ven := arc.dit.fieldbyname('visualizza_fido_cliente_ven').asstring;
  approntato_da_sscc := arc.dit.fieldbyname('approntato_da_sscc').asstring;

  if gestione_valuta = 'no' then
  begin
    v_tva_codice.tabstop := false;
    v_cambio.tabstop := false;
  end;

  filtro_base := '';
  if (arc.dit.fieldbyname('filtro_fatture_vendita').asstring = 'si') or
    (arc.utn.fieldbyname('tag_filtro').asstring = 'si') then
  begin
    if arc.dit.fieldbyname('filtro_fatture_vendita').asstring = 'si' then
    begin
      filtro_base := 'tipo_documento = ' + quotedstr(tipo_documento);
    end;
    if arc.utn.fieldbyname('tag_filtro').asstring = 'si' then
    begin
      if filtro_base = '' then
      begin
        filtro_base := filtro_base + ' tag_codice = ' + quotedstr(arc.utn.fieldbyname('tag_codice').asstring);
      end
      else
      begin
        filtro_base := filtro_base + ' and tag_codice = ' + quotedstr(arc.utn.fieldbyname('tag_codice').asstring);
      end;
    end;

    tabella.filter := filtro_base;
    tabella.filtered := true;
  end;

  assegnazione_globale_tipo_documento;

  inherited;

  if vendite_ridimensiona_griglia = 'si' then
  begin
    tool_altezza_righe.down := true;
    tool_altezza_righeclick(tool_altezza_righe);
  end;

  v_annulla_riga_documento.enabled := false;
  v_evadi_riga_documento.enabled := false;
  v_evasione_documento.enabled := false;

  v_prezzo.decimalplaces := decimali_max_prezzo;
  v_prezzo.displayformat := formato_display_prezzo_zero;

  v_quantita.decimalplaces := decimali_max_quantita;
  v_quantita.displayformat := formato_display_quantita_zero;

  v_esistenza_deposito.displayformat := formato_display_quantita_zero;
  v_esistenza_totale.displayformat := formato_display_quantita_zero;
  v_esistenza_principale.displayformat := formato_display_quantita_zero;

  incremento_righe := 10;
  ordinamento_righe := 'sequenza';

  if (tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo') then
  begin
    v_evadere.enabled := true;
    v_tutte.enabled := true;
  end;

  if tipo_documento = 'ordine' then
  begin
    read_tabella(arc.arcdit, 'tcr', 'codice', ditta, 'art_codice, tsm_codice');
    art_codice_contratti := archivio.fieldbyname('art_codice').asstring;
    tsm_codice_contratti := archivio.fieldbyname('tsm_codice').asstring;
  end;

  tab_control.ActivePage := tab_pagina1;
end;

procedure tgesven.assegnazione_globale_tipo_documento;
var
  query_righe_sql: string;
begin
  // assegna tipo documento
  query_righe_sql := 'select xxx.*, concat(trim(xxx.descrizione1), '' '', coalesce(xxx.descrizione2, '''')) art_descrizione, ' +
    'case when xxx.situazione = ''evaso'' or xxx.situazione = ''annullato'' or xxx.situazione = ''revisionato'' or xxx.situazione = ''consolidato'' then 0.0 ' +
    'else xxx.quantita - xxx.quantita_evasa end quantita_residua, art.codice_alternativo, ' +
    'art.margine_01, art.colore_margine_01, art.margine_02, art.colore_margine_02, art.margine_03, art.colore_margine_03, ' +
    'art.margine_04, art.colore_margine_04, art.margine_05, art.colore_margine_05, art.margine_06, art.colore_margine_06 ';

  //modifica
  query_righe_sql := query_righe_sql + ', arcl.codice_articolo_cliente';
  //modifica fine

  if tipo_documento = 'ordine' then
  begin
    if arc.dit.fieldbyname('avanzamento_ordini_ven').asstring = 'si' then
    begin
      query_righe_sql := query_righe_sql + ', ' +
        'case ' +
        'when exists(select id from rda where rda.tipo_richiesta = ''ordini clienti'' and rda.ovr_progressivo = xxx.progressivo and rda.ovr_riga = xxx.riga ' +
        'and rda.situazione <> ''evaso'' and rda.situazione <> ''annullato'' and rda.autorizzata = ''si'') then ''autorizzata'' ' +
        'when exists(select id from rda where rda.ovr_progressivo = xxx.progressivo and rda.ovr_riga = xxx.riga ' +
        'and tipo_richiesta = ''ordini clienti'' ' +
        'and rda.situazione <> ''evaso'' and rda.situazione <> ''annullato'' and rda.situazione <> ''revisionato'') then ''si'' ' +
        'else ''no'' end rda, ' +

        'case when exists(select id from oar where oar.ovr_progressivo = xxx.progressivo and oar.ovr_riga = xxx.riga) then ''si'' ' +
        'else ''no'' end oar, ' +

        'case when exists(select id from opt where opt.documento_origine = ''ordine ven'' ' +
        'and opt.doc_progressivo_origine = xxx.progressivo and opt.doc_riga_origine = xxx.riga) then ''si'' ' +
        'else ''no'' end opt';
    end;
  end;
  //modifica
  query_righe_sql := query_righe_sql + ' ' + 'from xxx left join art on art.codice = xxx.art_codice ' + 'left join xxt on xxt.progressivo = xxx.progressivo ' + 'left join arcl on arcl.art_codice = xxx.art_codice and arcl.cli_codice=xxt.cli_codice ' + 'where xxx.progressivo = :progressivo';
  //modifica fine

  if tipo_documento = 'ordine' then
  begin
    generatore := 'ovt';
    tdo_codice := arc.dit.fieldbyname('tdo_codice_ordini').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select ovt.* from ovt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = ovt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'ovr', [rfreplaceall]);
    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'ovt', [rfreplaceall]);
    //modifica fine
    cancella_iva.sql.text := 'delete from ovi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from ovr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'ovr', [rfreplaceall]);
    iva_diversa.sql.text := 'select ovr.id from ovr inner join tiv on tiv.codice = ovr.tiv_codice ' +
      'where (progressivo = :progressivo and ovr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    cli_ds.dataset := cli;
  end
  else if tipo_documento = 'bolla' then
  begin
    generatore := 'bvt';
    tdo_codice := arc.dit.fieldbyname('tdo_codice_bolle').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select bvt.* from bvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = bvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'bvr', [rfreplaceall]);
    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'bvt', [rfreplaceall]);
    //modifica fine
    cancella_iva.sql.text := 'delete from bvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from bvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'bvr', [rfreplaceall]);
    iva_diversa.sql.text := 'select bvr.id from bvr inner join tiv on tiv.codice = bvr.tiv_codice ' +
      'where (progressivo = :progressivo and bvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    cli_ds.dataset := cli;
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    generatore := 'dvt';

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select dvt.* from dvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = dvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'dvr', [rfreplaceall]);

    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'dvt', [rfreplaceall]);
    //modifica fine

    cancella_iva.sql.text := 'delete from dvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from dvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'dvr', [rfreplaceall]);
    iva_diversa.sql.text := 'select dvr.id from dvr inner join tiv on tiv.codice = dvr.tiv_codice ' +
      'where (progressivo = :progressivo and dvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    if tipo_documento = 'ddt' then
    begin
      cli_ds.dataset := cli;
      tdo_codice := arc.dit.fieldbyname('tdo_codice_ddt').asstring;
    end
    else
    begin
      cli_ds.dataset := frn;
      v_l_cli_codice.caption := 'codice fornitore';
      v_cli_codice.lookcollpopupmenu := arc.pop_arc_frn;
      v_cli_codice.lookcolltable := 'FRN';
      v_cli_codice.lookcollvisname := 'FRN';
      v_cli_codice.hint := 'codice fornitore [F4 F5 F6]';

      v_indirizzo.lookcollprogram := 'GESINF';
      v_indirizzo.lookcolltable := 'INF';
      v_indirizzo.lookcollvisname := 'INFFRN';
    end;
  end
  else if tipo_documento = 'fattura accompagnatoria' then
  begin
    generatore := 'fvt';
    tdo_codice := arc.dit.fieldbyname('tdo_codice_fatture_accompagna').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select fvt.* from fvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = fvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'fvr', [rfreplaceall]);
    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'fvt', [rfreplaceall]);
    //modifica fine
    cancella_iva.sql.text := 'delete from fvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from fvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'fvr', [rfreplaceall]);
    iva_diversa.sql.text := 'select fvr.id from fvr inner join tiv on tiv.codice = fvr.tiv_codice ' +
      'where (progressivo = :progressivo and fvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    cli_ds.dataset := cli;
  end
  else if tipo_documento = 'fattura differita' then
  begin
    generatore := 'fvt';

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select fvt.* from fvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = fvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'fvr', [rfreplaceall]);
    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'fvt', [rfreplaceall]);
    //modifica fine
    cancella_iva.sql.text := 'delete from fvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from fvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'fvr', [rfreplaceall]);
    iva_diversa.sql.text := 'select fvr.id from fvr inner join tiv on tiv.codice = fvr.tiv_codice ' +
      'where (progressivo = :progressivo and fvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    cli_ds.dataset := cli;
  end
  else if tipo_documento = 'fattura immediata' then
  begin
    generatore := 'fvt';
    tdo_codice := arc.dit.fieldbyname('tdo_codice_fatture_immediate').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select fvt.* from fvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = fvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'fvr', [rfreplaceall]);
    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'fvt', [rfreplaceall]);
    //modifica fine

    cancella_iva.sql.text := 'delete from fvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from fvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'fvr', [rfreplaceall]);
    iva_diversa.sql.text := 'select fvr.id from fvr inner join tiv on tiv.codice = fvr.tiv_codice ' +
      'where (progressivo = :progressivo and fvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    cli_ds.dataset := cli;
  end
  else if tipo_documento = 'nota credito' then
  begin
    generatore := 'fvt';
    tdo_codice := arc.dit.fieldbyname('tdo_codice_note_credito').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select fvt.* from fvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = fvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'fvr', [rfreplaceall]);
    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'fvt', [rfreplaceall]);
    //modifica fine
    cancella_iva.sql.text := 'delete from fvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from fvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'fvr', [rfreplaceall]);
    iva_diversa.sql.text := 'select fvr.id from fvr inner join tiv on tiv.codice = fvr.tiv_codice ' +
      'where (progressivo = :progressivo and fvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    cli_ds.dataset := cli;
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    generatore := 'cvt';
    tdo_codice := arc.dit.fieldbyname('tdo_codice_corrispettivi').asstring;

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select cvt.* from cvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = cvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'cvr', [rfreplaceall]);
    cancella_iva.sql.text := 'delete from cvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from cvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'cvr', [rfreplaceall]);
    iva_diversa.sql.text := 'select cvr.id from cvr inner join tiv on tiv.codice = cvr.tiv_codice ' +
      'where (progressivo = :progressivo and cvr.tiv_codice <> :tiv_codice and tiv.controllo_su_documenti = ''si'') ' +
      'or (progressivo = :progressivo and tiv.controllo_su_documenti <> :controllo_su_documenti)';

    cli_ds.dataset := cli;
  end
  else if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    generatore := 'pvt';

    tabella.close;
    tabella.sql.clear;
    tabella.sql.add('select pvt.* from pvt');
    if not utntdo.isempty then
    begin
      tabella.sql.add('left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = pvt.tdo_codice');
    end;
    tabella.sql.add('where progressivo = :progressivo');
    if not utntdo.isempty then
    begin
      tabella.sql.add('and utntdo.tdo_codice is not null');
    end;

    tabella_righe.sql.text := stringreplace(query_righe_sql, 'xxx', 'pvr', [rfreplaceall]);
    //modifica
    tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, 'xxt', 'pvt', [rfreplaceall]);
    //modifica fine
    cancella_iva.sql.text := 'delete from pvi where progressivo = :progressivo';
    eseguita_evasione.sql.text := 'select id from pvr where progressivo = :progressivo and documento_origine <> ''''';
    art_doppi.sql.text := stringreplace(art_doppi.sql.text, 'xxx', 'pvr', [rfreplaceall]);

    if tipo_documento = 'preventivo' then
    begin
      tdo_codice := arc.dit.fieldbyname('tdo_codice_preventivi').asstring;
      cli_ds.dataset := cli;
      v_l_cli_codice.caption := 'codice cliente';
      v_cli_codice.lookcollpopupmenu := arc.pop_arc_cli;
      v_cli_codice.lookcolltable := 'CLI';
      v_cli_codice.lookcollvisname := 'CLI';
      v_cli_codice.hint := 'codice CLIENTE [F4 F5 F6]';

      v_indirizzo.lookcollprogram := 'GESIND';
      v_indirizzo.lookcolltable := 'IND';
      v_indirizzo.lookcollvisname := 'INDCLI';
    end
    else
    begin
      cli_ds.dataset := nom;
      v_l_cli_codice.caption := 'codice nominativo';
      v_cli_codice.lookcollpopupmenu := arc.pop_arc_nom;
      v_cli_codice.lookcolltable := 'NOM';
      v_cli_codice.lookcollvisname := 'NOM';
      v_cli_codice.hint := 'codice nominativo [F4 F5 F6]';

      v_indirizzo.lookcollprogram := '';
      v_indirizzo.lookcolltable := '';
      v_indirizzo.lookcollvisname := '';
    end;

    v_stampa_solo_destinazione.visible := false;
  end;

  if not utntdo.isempty then
  begin
    if not utntdo.locate('tdo_codice', tdo_codice, []) then
    begin
      tdo_codice := '';
    end;
  end;

  if tipo_documento <> 'nota credito' then
  begin
    v_competenza_anno_precedente.visible := false;
  end;

  // codici documento per utente
  read_tabella(utn, utente);
  if tipo_documento = 'ordine' then
  begin
    if utn.fieldbyname('tdo_codice_ordini').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_ordini').asstring;
    end;
  end
  else if tipo_documento = 'bolla' then
  begin
    if utn.fieldbyname('tdo_codice_bolle').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_bolle').asstring;
    end;
  end
  else if tipo_documento = 'ddt' then
  begin
    if utn.fieldbyname('tdo_codice_ddt').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_ddt').asstring;
    end;
  end
  else if tipo_documento = 'fattura accompagnatoria' then
  begin
    if utn.fieldbyname('tdo_codice_fatture_accompagna').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_fatture_accompagna').asstring;
    end;
  end
  else if tipo_documento = 'fattura immediata' then
  begin
    if utn.fieldbyname('tdo_codice_fatture_immediate').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_fatture_immediate').asstring;
    end;
  end
  else if tipo_documento = 'nota credito' then
  begin
    if utn.fieldbyname('tdo_codice_note_credito').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_note_credito').asstring;
    end;
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    if utn.fieldbyname('tdo_codice_corrispettivi').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_corrispettivi').asstring;
    end;
  end
  else if tipo_documento = 'preventivo' then
  begin
    if utn.fieldbyname('tdo_codice_preventivi').asstring <> '' then
    begin
      tdo_codice := utn.fieldbyname('tdo_codice_preventivi').asstring;
    end;
  end;

  if (tipo_documento <> 'ordine') and (copy(tipo_documento, 1, 10) <> 'preventivo') then
  begin
    label1.visible := false;
    v_data_consegna_righe.visible := false;
  end;
  if (tipo_documento = 'ddt') or (tipo_documento = 'corrispettivo')
    or (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'bolla') then
  begin
    v_contratto.visible := true;
  end;

  if generatore <> 'fvt' then
  begin
    disabilita_campo(v_data_competenza_iva);
  end;
end;

procedure tgesven.assegna_tdo_codice;
begin
  if not tdo.eof then
  begin
    controllo_documenti_livello_superiore := tdo.fieldbyname('controllo_documenti_livello_sup').asstring;
    tabella.fieldbyname('serie_documento').asstring := tdo.fieldbyname('numerazione').asstring;
    if tabella.fieldbyname('tipo_documento').asstring <> tdo.fieldbyname('tipo_documento').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tipo_documento').asstring := tdo.fieldbyname('tipo_documento').asstring;
      end;
    end;

    if tabella.fieldbyname('tdo_codice_differite').asstring <> tdo.fieldbyname('tdo_codice_differite').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tdo_codice_differite').asstring := tdo.fieldbyname('tdo_codice_differite').asstring;
      end;
    end;

    if tabella.fieldbyname('tdo_codice_differite').asstring <> '' then
    begin
      read_tabella(arc.arcdit, 'tdo', 'codice', tabella.fieldbyname('tdo_codice_differite').asstring);
      if tabella.fieldbyname('tco_codice').asstring <> archivio.fieldbyname('tco_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tco_codice').asstring := archivio.fieldbyname('tco_codice').asstring;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tco_codice').asstring <> tdo.fieldbyname('tco_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tco_codice').asstring := tdo.fieldbyname('tco_codice').asstring;
        end;
      end;
    end;

    if copy(tabella.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_immagine').asstring := tdo.fieldbyname('immagine_articolo').asstring;
      end;
    end;
    if tabella.fieldbyname('tipo_documento').asstring = 'ordine' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('stampa_immagine').asstring := tdo.fieldbyname('immagine_articolo_ordini').asstring;
      end;
    end;

    if tabella.fieldbyname('tmo_codice').asstring <> tdo.fieldbyname('tmo_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice').asstring := tdo.fieldbyname('tmo_codice').asstring;
        tmo_codice_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tma_codice').asstring <> tdo.fieldbyname('tma_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := tdo.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end;
    if copy(tabella.fieldbyname('tipo_documento').asstring, 1, 10) <> 'preventivo' then
    begin
      if (tabella.fieldbyname('tma_codice').asstring = '') and (arc.utn.fieldbyname('tma_codice').asstring <> '') then
      begin
        tabella.fieldbyname('tma_codice').asstring := arc.utn.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end;

    tabella.fieldbyname('fattura_professionisti').asstring := tdo.fieldbyname('fattura_professionisti').asstring;
    if tabella.fieldbyname('fattura_professionisti').asstring = 'si' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('percentuale_cassa_professionist').asfloat := percentuale_cassa_professionist;
        tabella.fieldbyname('tpe_codice').asstring := tpe_codice;
      end;
    end;

    if tabella.fieldbyname('tab_codice').asstring <> tdo.fieldbyname('tab_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tab_codice').asstring := tdo.fieldbyname('tab_codice').asstring;
        tab_codice_controllo(false);
      end;
    end;

    if tabella.fieldbyname('cen_codice').asstring <> tdo.fieldbyname('cen_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cen_codice').asstring := tdo.fieldbyname('cen_codice').asstring;
      end;
    end;

    if tabella.fieldbyname('tvc_codice').asstring <> tdo.fieldbyname('tvc_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tvc_codice').asstring := tdo.fieldbyname('tvc_codice').asstring;
      end;
    end;

    if tabella.fieldbyname('chiusura_documento_origine').asstring <> tdo.fieldbyname('chiusura_documento_origine').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('chiusura_documento_origine').asstring := tdo.fieldbyname('chiusura_documento_origine').asstring;
      end;
    end;

    if tabella.fieldbyname('iva_bloccata').asstring <> tdo.fieldbyname('iva_bloccata').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('iva_bloccata').asstring := tdo.fieldbyname('iva_bloccata').asstring;
      end;
    end;

    assegna_data_consegna_validita;
    assegna_tmo_codice;
    assegna_tcd_codice;

    salta_cartelle_tab_control := true;

    if tdo.fieldbyname('pagina_destinazione').asstring = 'si' then
    begin
      pagina_destinazione := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_destinazione := false;
    end;
    if tdo.fieldbyname('pagina_riferimento').asstring = 'si' then
    begin
      pagina_riferimento := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_riferimento := false;
    end;
    if tdo.fieldbyname('pagina_incasso').asstring = 'si' then
    begin
      pagina_incasso := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_incasso := false;
    end;
    if tdo.fieldbyname('pagina_magazzino').asstring = 'si' then
    begin
      pagina_magazzino := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_magazzino := false;
    end;
    if tdo.fieldbyname('pagina_spedizione').asstring = 'si' then
    begin
      pagina_spedizione := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_spedizione := false;
    end;
    if tdo.fieldbyname('pagina_note').asstring = 'si' then
    begin
      pagina_note := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_note := false;
    end;
    if tdo.fieldbyname('pagina_sconti').asstring = 'si' then
    begin
      pagina_sconto := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_sconto := false;
    end;
    if tdo.fieldbyname('pagina_analitica').asstring = 'si' then
    begin
      pagina_analitica := true;
      salta_cartelle_tab_control := false;
    end
    else
    begin
      pagina_analitica := false;
    end;

    if tdo.fieldbyname('pagina_riferimento_chiusura').asstring = 'si' then
    begin
      pagina_riferimento_chiusura := true;
    end
    else
    begin
      pagina_riferimento_chiusura := false;
    end;
    if tdo.fieldbyname('pagina_incasso_chiusura').asstring = 'si' then
    begin
      pagina_incasso_chiusura := true;
    end
    else
    begin
      pagina_incasso_chiusura := false;
    end;
    if tdo.fieldbyname('pagina_magazzino_chiusura').asstring = 'si' then
    begin
      pagina_magazzino_chiusura := true;
    end
    else
    begin
      pagina_magazzino_chiusura := false;
    end;
    if tdo.fieldbyname('pagina_destinazione_chiusura').asstring = 'si' then
    begin
      pagina_destinazione_chiusura := true;
    end
    else
    begin
      pagina_destinazione_chiusura := false;
    end;
    if tdo.fieldbyname('pagina_spedizione_chiusura').asstring = 'si' then
    begin
      pagina_spedizione_chiusura := true;
    end
    else
    begin
      pagina_spedizione_chiusura := false;
    end;
    if tdo.fieldbyname('pagina_sconti_chiusura').asstring = 'si' then
    begin
      pagina_sconto_chiusura := true;
    end
    else
    begin
      pagina_sconto_chiusura := false;
    end;
    if tdo.fieldbyname('pagina_note_chiusura').asstring = 'si' then
    begin
      pagina_note_chiusura := true;
    end
    else
    begin
      pagina_note_chiusura := false;
    end;
    if tdo.fieldbyname('pagina_analitica_chiusura').asstring = 'si' then
    begin
      pagina_analitica_chiusura := true;
    end
    else
    begin
      pagina_analitica_chiusura := false;
    end;
  end;
end;

procedure TGESVEN.assegna_data_consegna_validita;
begin
  if (copy(tipo_documento, 1, 10) = 'preventivo') and (tdo.fieldbyname('giorni_validita_preventivo').asinteger <> 0) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('data_validita').asdatetime := tabella.fieldbyname('data_documento').asdatetime +
        tdo.fieldbyname('giorni_validita_preventivo').asinteger;
    end;
  end;

  if (tipo_documento = 'ordine') and (tdo.fieldbyname('giorni_consegna_ordini').asinteger <> 0) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('data_consegna').asdatetime := tabella.fieldbyname('data_documento').asdatetime +
        tdo.fieldbyname('giorni_consegna_ordini').asinteger;
    end;
  end;
end;

procedure tgesven.assegna_tmo_codice;
begin
  if read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice').asstring) then
  begin
    if (tabella.fieldbyname('tma_codice').asstring <> archivio.fieldbyname('tma_codice').asstring) and
      (archivio.fieldbyname('tma_codice').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := archivio.fieldbyname('tma_codice').asstring;
        assegna_valore_tma_codice_ordine;
        tma_codice_controllo(false);
      end;
    end;

    read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice').asstring);
    if tabella.fieldbyname('tmo_codice_collegato').asstring <> archivio.fieldbyname('tmo_codice_collegato').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice_collegato').asstring := archivio.fieldbyname('tmo_codice_collegato').asstring;
        assegna_valore_tmo_codice_collegato;
        tmo_codice_collegato_controllo(false);
      end;
    end;

    read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice').asstring);
    if tabella.fieldbyname('tma_codice_collegato').asstring <> archivio.fieldbyname('tma_codice_collegato').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice_collegato').asstring := archivio.fieldbyname('tma_codice_collegato').asstring;
        assegna_valore_tma_codice_collegato;
        tma_codice_collegato_controllo(false);
      end;
    end;

    if (tabella.fieldbyname('tmo_codice_collegato').asstring <> '') and (tabella.fieldbyname('tma_codice_collegato').asstring = '') then
    begin
      read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice_collegato').asstring);
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice_collegato').asstring := archivio.fieldbyname('tma_codice').asstring;
        assegna_valore_tma_codice_collegato;
        tma_codice_collegato_controllo(false);
      end;
    end;
  end;
end;

procedure tgesven.assegna_tcd_codice;
begin
  if not tdo.eof then
  begin
    if tabella.fieldbyname('tcd_codice_apertura').asstring <> tdo.fieldbyname('tcd_codice_inizio').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_apertura').asstring := tdo.fieldbyname('tcd_codice_inizio').asstring;
        tcd_codice_apertura_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tcd_codice_chiusura').asstring <> tdo.fieldbyname('tcd_codice_fine').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcd_codice_chiusura').asstring := tdo.fieldbyname('tcd_codice_fine').asstring;
        tcd_codice_chiusura_controllo(false);
      end;
    end;
  end;
end;

procedure tgesven.v_tdo_codiceexit(sender: tobject);
begin
  inherited;
  tdo_codice_controllo(true);
  if controllo then
  begin
    if v_tdo_codice.text <> variato_stringa then
    begin
      if (variato_stringa <> '') and (tabella.fieldbyname('numero_documento').asfloat <> 0) then
      begin
        messaggio(000, 'non è consentito modificare il codice documento' + #13 +
          'perché ha il numero documento già assegnato' + #13 +
          'uscire dal documento con [ESC] e ricaricarlo');
        if tabella_edit(tabella) then
        begin
          tabella.cancel;
          tdo_codice_controllo(false);
          fuoco(v_tdo_codice);
          abort;
        end;
      end
      else
      begin
        assegna_tdo_codice;
        abilita_tipo_documento;
        tabella.fieldbyname('numero_documento').asfloat := 0;
      end;

      //  controlli flag collegati
      if (tdo.fieldbyname('commesse').asstring = 'si') and (tdo.fieldbyname('tco_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale contabile');
        fuoco(v_tdo_codice);
        abort;
      end;

      if (tdo.fieldbyname('analitica').asstring = 'si') and (tdo.fieldbyname('tco_analitica').asstring = 'si') then
      begin
        messaggio(000, 'la gestione della contabilità analitica è presente anche nella causale contabile');
        fuoco(v_tdo_codice);
        abort;
      end;

      if (tdo.fieldbyname('commesse').asstring = 'si') and (tdo.fieldbyname('d_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale della fattura differita');
        fuoco(v_tdo_codice);
        abort;
      end;

      if (tdo.fieldbyname('analitica').asstring = 'si') and (tdo.fieldbyname('d_analitica').asstring = 'si') then
      begin
        messaggio(000, 'la gestione della contabilità analitica è presente anche nella causale della fattura differita');
        fuoco(v_tdo_codice);
        abort;
      end;

      if (tdo.fieldbyname('commesse').asstring = 'si') and (tdo.fieldbyname('c_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale contabile della fattura differita');
        fuoco(v_tdo_codice);
        abort;
      end;

      if (tdo.fieldbyname('analitica').asstring = 'si') and (tdo.fieldbyname('c_analitica').asstring = 'si') then
      begin
        messaggio(000, 'la gestione della contabilità analitica è presente anche nella causale contabile della fattura differita');
        fuoco(v_tdo_codice);
        abort;
      end;

      if (tdo.fieldbyname('commesse').asstring = 'si') and (tdo.fieldbyname('tmo_commesse').asstring = 'si') then
      begin
        messaggio(000, 'la gestione commesse è presente anche nella causale dei movimenti di magazzino');
        fuoco(v_tdo_codice);
        abort;
      end;

      if (tdo.fieldbyname('lotti').asstring = 'si') and (tdo.fieldbyname('tmo_lotti').asstring = 'si') then
      begin
        messaggio(000, 'la gestione dei lottti/matricole è presente anche nella causale dei movimenti di magazzino');
        fuoco(v_tdo_codice);
        abort;
      end;
    end;
  end;
end;

procedure tgesven.tdo_codice_controllo(blocco: boolean);
begin
  if controllo and blocco and not utntdo.isempty and (v_tdo_codice.text <> '') and
    not utntdo.locate('tdo_codice', v_tdo_codice.text, []) then
  begin
    messaggio(000, 'codice documento non utilizzabile dall''utente');
    if not fuoco(v_tdo_codice) then
    begin
      abilita_codice;
    end;
    abort;
  end
  else
  begin
    tabella_controllo(false, tdo, v_tdo_codice, blocco, tab_control, tab_pagina1, tabella);

    if (controllo) and (not tdo.isempty) then
    begin
      if (arc.utn.fieldbyname('corrispondenza_serie_documenti').asstring = 'si') and
        (arc.utn.fieldbyname('tma_codice').asstring <> tdo.fieldbyname('numerazione').asstring) and
        (tdo.fieldbyname('numerazione_fiscale').asstring = 'si') and
        not((tipo_documento = 'preventivo') or (tipo_documento = 'ordine')) then
      begin
        messaggio(000, 'codice documento non utilizzabile dall''utente' + #13 +
          'perché il numero di serie non corrisponde al deposito');
        if not fuoco(v_tdo_codice) then
        begin
          abilita_codice;
        end;
        abort;
      end
      else
      begin
        if tdo.fieldbyname('visualizza_disponibilita_ordini').asstring = 'si' then
        begin
          box_esistenza_disponibilita.caption := 'disponibilità deposito totale e principale';
          v_esistenza_deposito.datafield := 'disponibilita';
          v_esistenza_principale.datafield := 'disponibilita';
          v_esistenza_totale.datafield := 'disponibilita';
        end
        else
        begin
          box_esistenza_disponibilita.caption := 'esistenza deposito totale e principale';
          v_esistenza_deposito.datafield := 'esistenza';
          v_esistenza_principale.datafield := 'esistenza';
          v_esistenza_totale.datafield := 'esistenza';
        end;

        if tdo.fieldbyname('note_visibili').asstring = 'no' then
        begin
          v_note_righe.visible := false;
        end
        else
        begin
          v_note_righe.visible := true;
        end;

        if tdo.fieldbyname('titolo_colli').asstring = '' then
        begin
          v_l_colli.caption := 'colli';
        end
        else
        begin
          v_l_colli.caption := tdo.fieldbyname('titolo_colli').asstring;
        end;
        if tdo.fieldbyname('titolo_confezioni').asstring = '' then
        begin
          v_l_confezioni.caption := 'confez.';
        end
        else
        begin
          v_l_confezioni.caption := tdo.fieldbyname('titolo_confezioni').asstring;
        end;

        esegui_dati_riga := tdo.fieldbyname('esegui_dati_riga').asstring;
        stampa_immediata := tdo.fieldbyname('stampa_immediata').asstring;
        analitica := tdo.fieldbyname('analitica').asstring;
        if not v_analitica.visible then
        begin
          analitica := 'no';
        end;
        commesse := tdo.fieldbyname('commesse').asstring;
        lotti := tdo.fieldbyname('lotti').asstring;
        if tipo_documento <> 'ddt fornitori' then
        begin
          conto_terzi := tdo.fieldbyname('conto_terzi').asstring;
        end
        else
        begin
          conto_terzi := 'no';
        end;
        calcolo_margine := tdo.fieldbyname('calcolo_margine').asstring;
        tipo_prezzo := tdo.fieldbyname('prezzo_proposto').asstring;

        gestione_descrizione1 := tdo.fieldbyname('gestione_descrizione1').asstring;
        gestione_descrizione2 := tdo.fieldbyname('gestione_descrizione2').asstring;
        gestione_numero_colli := tdo.fieldbyname('gestione_numero_colli').asstring;
        gestione_numero_confezioni := tdo.fieldbyname('gestione_numero_confezioni').asstring;
        gestione_quantita := tdo.fieldbyname('gestione_quantita').asstring;
        gestione_prezzo := tdo.fieldbyname('gestione_prezzo').asstring;
        gestione_sconto_cliente := tdo.fieldbyname('gestione_sconto_cliente').asstring;
        gestione_tum_codice := tdo.fieldbyname('gestione_tum_codice').asstring;
        gestione_tipo_movimento := tdo.fieldbyname('gestione_tipo_movimento').asstring;
        gestione_importo := tdo.fieldbyname('gestione_importo').asstring;
        gestione_data_consegna := 'si';
        controllo_quantita := tdo.fieldbyname('controllo_quantita').asstring;
        controllo_prezzo := tdo.fieldbyname('controllo_prezzo').asstring;
        controllo_articolo_livello_superiore := tdo.fieldbyname('controllo_articolo_livello_sup').asstring;
        gestione_configurazione := tdo.fieldbyname('gestione_configurazione').asstring;
        tdo_codice_conto_vendita := tdo.fieldbyname('tdo_codice_conto_vendita').asstring;
        consolidamento := tdo.fieldbyname('consolidamento').asstring;
        stampa_immediata_etichette := tdo.fieldbyname('stampa_immediata_etichette').asstring;
        totalizzazione_quantita := tdo.fieldbyname('totalizza_quantita').asstring;
        totalizzazione_colli := tdo.fieldbyname('totalizza_colli').asstring;

        if blocco then
        begin
          if tdo.fieldbyname('tipo_documento').asstring <> tipo_documento then
          begin
            messaggio(000, 'il tipo documento selezionato ' + '"' + tdo.fieldbyname('tipo_documento').asstring + '"' + #13 +
              'non è utilizzabile per gestire il documento: ' + tipo_documento);
            tab_control.activepage := tab_pagina1;
            if (esiste) or (screen.activecontrol = v_progressivo) then
            begin
              abilita_codice;
              abort;
            end
            else
            begin
              if v_tdo_codice.canfocus then
              begin
                v_tdo_codice.setfocus;
              end;
              abort;
            end;
          end;
        end;
        if not tdo.eof then
        begin
          if tdo.fieldbyname('deposito_modificabile').asstring = 'no' then
          begin
            v_tma_codice.readonly := true;
            v_tma_codice_collegato.readonly := true;
          end
          else
          begin
            v_tma_codice.readonly := false;
            v_tma_codice_collegato.readonly := false;
          end;

          if tdo.fieldbyname('gestione_data_documento').asstring = 'no' then
          begin
            v_data_documento.tabstop := false;
          end
          else
          begin
            v_data_documento.tabstop := true;
          end;

          if tdo.fieldbyname('fattura_professionisti').asstring = 'si' then
          begin
            v_fattura_professionisti.enabled := true;
          end
          else
          begin
            v_fattura_professionisti.enabled := false;
          end;
          abilita_dati_fattura_professionisti;

          if (tdo.fieldbyname('gestione_numero_documento').asstring = 'no') then
          //(tdo.fieldbyname('numerazione_fiscale').asstring = 'no') then
          begin
            v_numero_documento.tabstop := false;
          end
          else
          begin
            v_numero_documento.tabstop := true;
          end;

          if tdo.fieldbyname('gestione_tlv_codice').asstring = 'no' then
          begin
            v_tlv_codice.tabstop := false;
          end
          else
          begin
            v_tlv_codice.tabstop := true;
          end;

          if tdo.fieldbyname('gestione_tpa_codice').asstring = 'no' then
          begin
            v_tpa_codice.tabstop := false;
          end
          else
          begin
            v_tpa_codice.tabstop := true;
          end;

          if tdo.fieldbyname('gestione_tsm_codice').asstring = 'no' then
          begin
            v_tsm_codice.tabstop := false;
          end
          else
          begin
            v_tsm_codice.tabstop := true;
          end;

          if tdo.fieldbyname('gestione_tva_codice').asstring = 'no' then
          begin
            v_tva_codice.tabstop := false;
            v_cambio.tabstop := false;
          end
          else
          begin
            v_tva_codice.tabstop := true;
            v_cambio.tabstop := true;
            if gestione_valuta = 'no' then
            begin
              v_tva_codice.tabstop := false;
              v_cambio.tabstop := false;
            end;
          end;

          if tdo.fieldbyname('gestione_data').asstring = 'no' then
          begin
            v_data_consegna.tabstop := false;
            v_data_validita.tabstop := false;
          end
          else
          begin
            v_data_consegna.tabstop := true;
            v_data_validita.tabstop := true;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_tmo_codiceexit(sender: tobject);
var
  prosegui: boolean;
  ltm: tmyquery_go;
begin
  inherited;

  if controllo then
  begin
    tmo_codice_controllo(true);
    if (tdo.fieldbyname('commesse').asstring = 'si') and (tmo.fieldbyname('commesse').asstring = 'si') then
    begin
      messaggio(000, 'la gestione commesse è presente anche nella causale del documento');
      fuoco(v_tmo_codice);
      abort;
    end;

    if (tdo.fieldbyname('lotti').asstring = 'si') and (tmo.fieldbyname('lotti').asstring = 'si') then
    begin
      messaggio(000, 'la gestione dei lottti/matricole è presente anche nella causale del documento');
      fuoco(v_tmo_codice);
      abort;
    end;

    if (tdo.fieldbyname('d_commesse').asstring = 'si') and (tmo.fieldbyname('commesse').asstring = 'si') then
    begin
      messaggio(000, 'la gestione commesse è presente anche nella causale della fattura differita');
      fuoco(v_tmo_codice);
      abort;
    end;

    if (tdo.fieldbyname('d_lotti').asstring = 'si') and (tmo.fieldbyname('lotti').asstring = 'si') then
    begin
      messaggio(000, 'la gestione dei lottti/matricole è presente anche nella causale della fattura differita');
      fuoco(v_tmo_codice);
      abort;
    end;

    prosegui := true;
    if (v_tmo_codice.text <> variato_stringa) and (variato_stringa <> '') then
    begin
      ltm := tmyquery_go.create(nil);
      ltm.connection := arc.arcdit;
      ltm.sql.add('select id from ltm where documento_origine = ' + quotedstr(tipo_documento + ' ven'));
      ltm.sql.add('and doc_progressivo_origine = ' + v_progressivo.text);
      ltm.open;
      if not ltm.isempty then
      begin
        messaggio(000, 'non è possibile modificare la causale perché sono stati movimenti i lotti');
        prosegui := false;
        tabella.cancel;
        ltm.free;
      end;
    end;

    if prosegui then
    begin
      if controllo then
      begin
        if v_tmo_codice.text <> variato_stringa then
        begin
          assegna_tmo_codice;

          if esiste and not tabella_righe.isempty then
          begin
            messaggio(200, 'verificare i movimenti collegati delle righe del documento' + #13 +
              'potrebbero necessitare di correzioni manuali' + #13 +
              'a causa della variazione del codice movimento');
          end;
        end;
        assegna_valore_tma_codice;
      end;
    end;
  end;
end;

procedure tgesven.tmo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo, v_tmo_codice, blocco, tab_control, tab_testata_magazzino, tabella);
end;

procedure tgesven.azzera_vecchio_testata;
begin
  vecchio_numero_documento := 0;
  vecchio_serie_documento := '';
  vecchio_data_documento := 0;
  vecchio_tsm_codice := '';
  vecchio_cambio := 0;
  vecchio_tiv_codice := '';
  vecchio_tcc_codice := '';
  vecchio_tag_codice := '';
  vecchio_tag_codice_ca := '';
  vecchio_iva_bloccata := '';
  vecchio_tsm_codice_sconto := '';
  vecchio_importo_sconto := 0;
  vecchio_tma_codice := '';
  vecchio_tmo_codice := '';
  vecchio_tmo_codice_collegato := '';
  vecchio_tma_codice_collegato := '';
  vecchio_tpa_codice := '';
  vecchio_tst_codice := '';
  vecchio_tpo_codice := '';
  vecchio_listino_con_iva := '';
  vecchio_cli_codice := '';
  vecchio_tlv_codice := '';
  vecchio_accettato := '';
  vecchio_totale_documento := 0;
  vecchio_oscillazione_cambio := '';
  vecchio_data_inizio_competenza := 0;
  vecchio_data_fine_competenza := 0;
  vecchio_data_consegna := 0;
  vecchio_cms_codice_testata := '';
  vecchio_tipologia_testata := '';
  vecchio_tipo_imballaggio := '';
end;

procedure tgesven.assegna_vecchio_testata;
begin
  vecchio_numero_documento := tabella.fieldbyname('numero_documento').asfloat;
  vecchio_serie_documento := tabella.fieldbyname('serie_documento').asstring;
  vecchio_data_documento := tabella.fieldbyname('data_documento').asdatetime;
  vecchio_tsm_codice := tabella.fieldbyname('tsm_codice').asstring;
  vecchio_cambio := tabella.fieldbyname('cambio').asfloat;
  vecchio_tiv_codice := tabella.fieldbyname('tiv_codice').asstring;
  vecchio_tcc_codice := tabella.fieldbyname('tcc_codice').asstring;
  vecchio_tag_codice := tabella.fieldbyname('tag_codice').asstring;
  vecchio_tag_codice_ca := tabella.fieldbyname('tag_codice_ca').asstring;
  vecchio_iva_bloccata := tabella.fieldbyname('iva_bloccata').asstring;
  vecchio_tsm_codice_sconto := tabella.fieldbyname('tsm_codice_sconto').asstring;
  vecchio_importo_sconto := tabella.fieldbyname('importo_sconto').asfloat;
  vecchio_tma_codice := tabella.fieldbyname('tma_codice').asstring;
  vecchio_tmo_codice := tabella.fieldbyname('tmo_codice').asstring;
  vecchio_tmo_codice_collegato := tabella.fieldbyname('tmo_codice_collegato').asstring;
  vecchio_tma_codice_collegato := tabella.fieldbyname('tma_codice_collegato').asstring;
  vecchio_tpa_codice := tabella.fieldbyname('tpa_codice').asstring;
  vecchio_tpo_codice := tabella.fieldbyname('tpo_codice').asstring;
  vecchio_tst_codice := tabella.fieldbyname('tst_codice').asstring;
  vecchio_listino_con_iva := tabella.fieldbyname('listino_con_iva').asstring;
  vecchio_cli_codice := tabella.fieldbyname('cli_codice').asstring;
  vecchio_tlv_codice := tabella.fieldbyname('tlv_codice').asstring;
  vecchio_accettato := tabella.fieldbyname('accettato').asstring;
  vecchio_totale_documento := tabella.fieldbyname('importo_totale_euro').asfloat;
  vecchio_oscillazione_cambio := tabella.fieldbyname('oscillazione_cambio').asstring;
  vecchio_data_inizio_competenza := tabella.fieldbyname('data_inizio_competenza').asdatetime;
  vecchio_data_fine_competenza := tabella.fieldbyname('data_fine_competenza').asdatetime;
  vecchio_data_consegna := tabella.fieldbyname('data_consegna').asdatetime;
  vecchio_cms_codice_testata := tabella.fieldbyname('cms_codice').asstring;
  vecchio_tipologia_testata := tabella.fieldbyname('tipologia').asstring;
  vecchio_tipo_imballaggio := tabella.fieldbyname('tipo_imballaggio').asstring;;
end;

procedure tgesven.attiva_esiste(flag: boolean);
begin
  if flag then
  begin
    v_tva_codice.enabled := false;
    v_cambio.enabled := false;

    v_tva_codice.color := clbtnface;
    v_cambio.color := clbtnface;
  end
  else
  begin
    if tipo_documento = 'ddt fornitori' then
    begin
      v_tlv_codice.enabled := false;
      v_tlv_codice.color := clbtnface;

      v_tva_codice.enabled := false;
      v_cambio.enabled := false;

      v_tva_codice.color := clbtnface;
      v_cambio.color := clbtnface;
    end
    else
    begin
      v_tlv_codice.enabled := true;
      v_tlv_codice.color := clwindow;

      if (copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine') or
        (tabella.fieldbyname('situazione').asstring = 'inserito') then
      begin
        v_tva_codice.enabled := true;
        v_cambio.enabled := true;

        v_tva_codice.color := clwindow;
        v_cambio.color := clwindow;
      end
      else
      begin
        v_tva_codice.enabled := false;
        v_cambio.enabled := false;

        v_tva_codice.color := clbtnface;
        v_cambio.color := clbtnface;
      end;
    end;
  end;
end;

procedure tgesven.abilitazioni;
var
  query: tmyquery_go;
begin
  abilita_tipo_documento_bolle_ddt;
  abilita_intra;
  abilita_spese_manuali;
  abilita_spese;
  abilita_pro_forma;
  abilita_fattura_pro_forma;
  abilita_dati_fattura_professionisti;
  abilita_ritenuta_manuale;
  abilita_bloccato;
  abilita_tma_codice;
  if arc.dit.fieldbyname('tiv_codice_vendita_controllo').asstring <> '' then
  begin
    query := tmyquery_go.create(nil);
    query.connection := arc.arcdit;
    query.sql.text := 'select count(*) righe from ' + tabella_righe_tablename +
      ' where progressivo = ' + tabella.fieldbyname('progressivo').asstring +
      ' and art_codice <> '''' and tiv_codice <> ' + quotedstr(arc.dit.fieldbyname('tiv_codice_vendita_controllo').asstring);
    try
      query.open;
      if query.fieldbyname('righe').asinteger <> 0 then
      begin
        tab_testata_riferimento.color := clred;
      end
      else
      begin
        tab_testata_riferimento.color := clbtnface;
      end;
    except
      tab_testata_riferimento.color := clbtnface;
    end;
    query.free;
  end;

  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    if fileexists(cartella_file + '\' + 'preventivi' + '\' +
      tabella.fieldbyname('progressivo').asstring + '.rtf') then
    begin
      tab_testata_note.color := cllime;
    end
    else
    begin
      tab_testata_note.color := clbtnface;
    end;
  end;
end;

procedure tgesven.abilita_bottone_dati_extra_testata;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    v_bottone_dati_extra_testata.enabled := false;
  end
  else
  begin
    v_bottone_dati_extra_testata.enabled := true;
  end;
end;

procedure tgesven.assegna_valore_tma_codice;
begin
  if tabella.fieldbyname('tmo_codice').asstring = '' then
  begin
    if tipo_documento <> 'ordine' then
    begin
      if tabella.fieldbyname('tma_codice').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tma_codice').asstring := '';
          tma_codice_controllo(false);
        end;
      end;
    end;

    if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice_collegato').asstring := '';
        tmo_codice_collegato_controllo(false);
      end;
    end;

    if tabella.fieldbyname('tma_codice_collegato').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice_collegato').asstring := '';
        tma_codice_collegato_controllo(false);
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tma_codice_collegato;
begin
  if controllo then
  begin
    if tabella.fieldbyname('tmo_codice_collegato').asstring = '' then
    begin
      if tabella.fieldbyname('tma_codice_collegato').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tma_codice_collegato').asstring := '';
          tma_codice_collegato_controllo(false);
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_tma_codiceexit(sender: tobject);
begin
  inherited;
  tma_codice_controllo(true);
  if controllo then
  begin
    assegna_valore_tma_codice;
  end;
end;

procedure tgesven.tma_codice_controllo(blocco: boolean);
begin
  if (trim(v_tma_codice.text) = '') and (trim(v_tmo_codice.text) = '') then
  begin
    tma.close;
    tma.params[0].value := null;
    tma.open;
  end
  else
  begin
    tabella_controllo(false, tma, v_tma_codice, blocco, tab_control, tab_testata_magazzino, tabella);
  end;
end;

procedure tgesven.v_tma_codice_collegatoexit(sender: tobject);
begin
  inherited;
  tma_codice_collegato_controllo(true);
end;

procedure TGESVEN.v_tma_codice_righeExit(Sender: TObject);
begin
  inherited;
  tma_codice_righe_controllo(true);
end;

procedure tgesven.tma_codice_collegato_controllo(blocco: boolean);
begin
  if (trim(v_tma_codice_collegato.text) = '') and (trim(v_tmo_codice_collegato.text) = '') then
  begin
    tma_collegato.close;
    tma_collegato.params[0].value := null;
    tma_collegato.open;
  end
  else
  begin
    tabella_controllo(false, tma_collegato, v_tma_codice_collegato, blocco, tab_control, tab_testata_magazzino, tabella);
  end;
end;

procedure tgesven.v_numero_documentoexit(sender: tobject);
var
  documento: string;
begin
  inherited;

  if controllo then
  begin
    if tdo.fieldbyname('numerazione_fiscale').asstring = 'si' then
    begin
      numero_documento_controllo;

      if copy(tipo_documento, 1, 10) = 'preventivo' then
      begin
        documento := 'pvt';
      end
      else if tipo_documento = 'ordine' then
      begin
        documento := 'ovt';
      end
      else if tipo_documento = 'corrispettivo' then
      begin
        documento := 'cvt';
      end
      else if tipo_documento = 'bolla' then
      begin
        documento := 'bvt';
      end
      else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
      begin
        documento := 'dvt';
      end
      else
      begin
        documento := 'fvt';
      end;

      if arc.esistenza_documento(documento, v_serie_documento.text, '', v_data_documento.date,
        v_numero_documento.value, v_progressivo.intvalue, v_revisione.intvalue) then
      begin
        if v_numero_documento.canfocus then
        begin
          v_numero_documento.setfocus;
        end;
        abort;
      end
      else
      begin
        assegna_numerazione_exit(arc.arcdit, tabella, v_data_documento.date, tipo_numerazione, v_serie_documento.text,
          v_numero_documento, 'numero_documento');
      end;
    end;
  end;
end;

procedure tgesven.numero_documento_controllo;
begin
  if controllo then
  begin
    if v_numero_documento.value = 0 then
    begin
      if (tdo.fieldbyname('gestione_numero_documento').asstring = 'no') or
        (tdo.fieldbyname('numerazione_fiscale').asstring = 'no') then
      begin
        //  salta
      end
      else
      begin
        messaggio(002, label10.caption);
        tab_control.activepage := tab_pagina1;
        v_numero_documento.setfocus;
        abort;
      end;
    end;
  end;
end;

procedure tgesven.v_data_documentoexit(sender: tobject);
begin
  inherited;
  data_documento_controllo;
  if controllo then
  begin
    if variato_data <> v_data_documento.date then
    begin
      assegna_cambio;
      assegna_data_consegna_validita;
    end;
    if v_data_documento.date > now then
    begin
      messaggio(000, 'data superiore a quella attuale');
    end;
  end;
end;

procedure tgesven.data_documento_controllo;
begin
  if controllo then
  begin
    if v_data_documento.date = 0 then
    begin
      messaggio(002, label13.caption);
      tab_control.activepage := tab_pagina1;
      v_data_documento.setfocus;
      abort;
    end
    else
    begin
      if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') and (tabella.state <> dsbrowse) then
      begin
        if (v_data_documento.date < data_inizio) or (v_data_documento.date > data_bilancio) then
        begin
          messaggio(000, 'data fuori dai limiti dell''esercizio fiscale');
          v_data_documento.setfocus;
          abort;
        end
        else if (v_data_documento.date < data_inizio) or (v_data_documento.date > data_fine) then
        begin
          if messaggio(304, 'data fuori dagli estremi dell''esercizio') <> 1 then
          begin
            v_data_documento.setfocus;
            abort;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.assegna_cambio;
var
  valore_cambio: double;
begin
  if not esiste_documento then
  begin
    if not tva.isempty then
    begin
      valore_cambio := cambio(v_tva_codice.text, v_data_documento.date);
      if arrotonda(tabella.fieldbyname('cambio').asfloat, 6) <> arrotonda(valore_cambio, 6) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cambio').asfloat := valore_cambio;
          assegna_valore_cambio;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('cambio').asfloat <> 1 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cambio').asfloat := 1;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_cli_codiceexit(sender: tobject);
var
  stringa: string;
  ordini_evasi: tmyquery_go;
  prosegui: boolean;
  vuodoc, scaduto: tmyquery_go;

  pr: tnote;
begin
  inherited;

  cli_codice_controllo(true);
  if controllo then
  begin
    prosegui := true;

    if variato_stringa <> v_cli_codice.text then
    begin
      if (read_tabella(arc.arcdit, 'tse', 'codice', cli.fieldbyname('tse_codice').asstring)) then
      begin
        if archivio.fieldbyname('blocco').asstring = 'si' then
        begin
          messaggio(000, 'il cliente è bloccato e non si possono inserire documenti di vendita' + #13 + #13 +
            archivio.fieldbyname('descrizione').asstring);
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('cli_codice').asstring := '';
          end;
          fuoco(v_cli_codice);
          prosegui := false;
          abort;
        end
        else
        begin
          if messaggio(304, 'il cliente ha memorizzato il seguente avviso' + #13 + #13 +
            archivio.fieldbyname('descrizione').asstring + #13 + #13 +
            'si vuole proseguire l''inserimento del documento?') <> 1 then
          begin
            if tabella_edit(tabella) then
            begin
              tabella.fieldbyname('cli_codice').asstring := '';
            end;
            fuoco(v_cli_codice);
            prosegui := false;
            abort;
          end;
        end;
      end;

      if fuori_fido(false) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cli_codice').asstring := '';
          cli_codice_controllo(false);
        end;
        fuoco(v_cli_codice);
        prosegui := false;
        abort;
      end;

      if read_tabella(tdocli, vararrayof([tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('tipo_documento').asstring])) then
      begin
        if tdocli.fieldbyname('tdo_codice').asstring <> v_tdo_codice.text then
        begin
          messaggio(100, 'per il cliente si dovrebbe utilizzare il codice documento [' +
            tdocli.fieldbyname('tdo_codice').asstring + ']');
        end;
      end
      else if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') then
      begin
        if (cli.fieldbyname('tdo_codice').asstring <> '') and
          (cli.fieldbyname('tdo_codice').asstring <> v_tdo_codice.text) then
        begin
          messaggio(100, 'per il cliente si dovrebbe utilizzare il codice documento [' +
            cli.fieldbyname('tdo_codice').asstring + ']');
        end;
      end;

      //  visualizzazione note
      stringa := '';
      if (cli.fieldbyname('visualizza_note').asstring = 'si') or (cli.fieldbyname('note_ven').asstring = 'si') then
      begin
        if cli.fieldbyname('note').asstring <> '' then
        begin
          stringa := stringa + '----NOTE GENERALI----' + slinebreak + cli.fieldbyname('note').asstring + slinebreak + slinebreak;
        end;
      end;

      if (cli.fieldbyname('visualizza_note').asstring = 'si') or (cli.fieldbyname('note_amministrazione_ven').asstring = 'si') then
      begin
        if cli.fieldbyname('note_amministrazione').asstring <> '' then
        begin
          stringa := stringa + '----NOTE AMMINISTRAZIONE----' + slinebreak + cli.fieldbyname('note_amministrazione').asstring + slinebreak + slinebreak;
        end;
      end;

      if (cli.fieldbyname('visualizza_note').asstring = 'si') or (cli.fieldbyname('note_commerciale_ven').asstring = 'si') then
      begin
        if cli.fieldbyname('note_commerciale').asstring <> '' then
        begin
          stringa := stringa + '----NOTE COMMERCIALI----' + slinebreak + cli.fieldbyname('note_commerciale').asstring;
        end;
      end;

      if stringa <> '' then
      begin
        messaggio(100, stringa);
      end;
    end;

    if cli.fieldbyname('visualizza_scaduto_vendite').asstring = 'si' then
    begin
      scaduto := tmyquery_go.create(nil);
      scaduto.connection := tabella.connection;
      scaduto.sql.add('select sum(pat.importo_saldo) scaduto from pat');
      scaduto.sql.add('where pat.cfg_tipo = ''C'' and pat.cfg_codice = :cli_codice');
      scaduto.sql.add('and pat.data_scadenza < current_date');
      scaduto.parambyname('cli_codice').asstring := v_cli_codice.text;
      scaduto.open;
      if scaduto.fieldbyname('scaduto').asfloat > 0 then
      begin
        messaggio(100, 'importo scaduto:  ' + formatfloat(',0.00', scaduto.fieldbyname('scaduto').asfloat));
      end;

      freeandnil(scaduto);
    end;

    if esiste and (variato_stringa <> v_cli_codice.text) then
    begin
      vuodoc := tmyquery_go.create(nil);
      vuodoc.connection := arc.arcdit;
      vuodoc.sql.text := 'select id from vuodoc where cfg_tipo = ''C'' and documento_origine = :documento_origine ' +
        'and doc_progressivo_origine = :progressivo';
      vuodoc.parambyname('documento_origine').asstring := tipo_documento;
      vuodoc.parambyname('progressivo').asinteger := v_progressivo.intvalue;
      vuodoc.open;
      if not vuodoc.isempty and (cli.fieldbyname('gestione_vuoti').asstring = 'no') then
      begin
        messaggio(000, 'non è possibile cambiare l''intestatario del documento perché sono gestiti i vuoti' + #13 +
          'ed il nuovo intestatario non li gestisce');
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cli_codice').asstring := '';
        end;
        fuoco(v_cli_codice);
        abort;
      end;
      freeandnil(vuodoc);
    end;
  end;

  if prosegui then
  begin
    if (tipo_documento <> 'preventivo nominativi') and
      (((tipo_documento <> 'ddt fornitori') and (cli.fieldbyname('informativa_privacy').asstring = 'assente con avviso')) or
      ((tipo_documento = 'ddt fornitori') and (frn.fieldbyname('informativa_privacy').asstring = 'assente con avviso'))) then
    begin
      messaggio(100, 'nominativo con informativa per la privacy assente');
    end;

    if tipo_documento = 'ddt fornitori' then
    begin
      if variato_stringa <> v_cli_codice.text then
      begin
        if esiste_documento then
        begin
          eseguita_evasione.close;
          eseguita_evasione.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
          eseguita_evasione.open;
          if not eseguita_evasione.isempty then
          begin
            messaggio(200, 'il documento ha evaso documenti di livello superiore' + #13 +
              'la variazione dell''intestatario non è possibile');
            if tabella_edit(tabella) then
            begin
              tabella.fieldbyname('cli_codice').asstring := '';
            end;
            abort;
          end;
        end;
        if not frn.eof then
        begin
          assegna_cli_codice;
        end;
      end;
    end
    else
    begin
      if variato_stringa <> v_cli_codice.text then
      begin
        if not cli.isempty or ((tipo_documento = 'preventivo nominativi') and not nom.isempty) then
        begin
          assegna_cli_codice;
        end;
        if esiste_documento then
        begin
          eseguita_evasione.close;
          eseguita_evasione.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
          eseguita_evasione.open;
          if not eseguita_evasione.isempty then
          begin
            messaggio(200, 'il documento ha evaso documenti di livello superiore' + #13 +
              'la variazione dell''intestatario non è possibile');
            tabella.cancel;
            abort;
          end
          else
          begin
            if messaggio(300, 'aggiornamento delle condizioni commerciali del nuovo cliente') = 1 then
            begin
              aggiorna_condizioni_cliente;
            end;
          end;
        end;
      end;
    end;

    if not esiste and (tdo.fieldbyname('avviso_ordini_aperti').asstring = 'si') then
    begin
      ordini_evasi := tmyquery_go.create(nil);
      ordini_evasi.connection := arc.arcdit;
      if tipo_documento = 'ordine' then
      begin
        ordini_evasi.sql.text := 'select count(*) numero_ordini from ovt ' +
          'where situazione <> ''evaso'' and situazione <> ''annullato'' and stampato <> ''stampato'' ' +
          'and cli_codice = ' + quotedstr(v_cli_codice.text);
      end
      else if copy(tipo_documento, 1, 10) = 'preventivo' then
      begin
        ordini_evasi.sql.text := 'select count(*) numero_ordini from pvt ' +
          'where situazione <> ''evaso'' and situazione <> ''annullato'' and stampato <> ''stampato'' ' +
          'and cli_codice = ' + quotedstr(v_cli_codice.text);
      end
      else if tipo_documento = 'bolla' then
      begin
        ordini_evasi.sql.text := 'select count(*) numero_ordini from bvt ' +
          'where situazione = ''inserito'' and cli_codice = ' + quotedstr(v_cli_codice.text);
      end
      else if tipo_documento = 'corrispettivo' then
      begin
        ordini_evasi.sql.text := 'select count(*) numero_ordini from cvt ' +
          'where situazione = ''inserito'' and cli_codice = ' + quotedstr(v_cli_codice.text);
      end
      else if copy(tipo_documento, 1, 3) = 'ddt' then
      begin
        ordini_evasi.sql.text := 'select count(*) numero_ordini from dvt ' +
          'where situazione = ''inserito'' and cli_codice = ' + quotedstr(v_cli_codice.text);
      end
      else if copy(tipo_documento, 1, 7) = 'fattura' then
      begin
        ordini_evasi.sql.text := 'select count(*) numero_ordini from fvt ' +
          'where tipo_documento <> ''nota credito'' and situazione = ''inserito'' and cli_codice = ' + quotedstr(v_cli_codice.text);
      end
      else if tipo_documento = 'nota credito' then
      begin
        ordini_evasi.sql.text := 'select count(*) numero_ordini from fvt ' +
          'where tipo_documento = ''nota credito'' and situazione = ''inserito'' and cli_codice = ' + quotedstr(v_cli_codice.text);
      end;
      ordini_evasi.open;
      if ordini_evasi.fieldbyname('numero_ordini').asinteger <> 0 then
      begin
        messaggio(200, 'sono presenti, per il cliente, ' + ordini_evasi.fieldbyname('numero_ordini').asstring + ' documenti dello stesso tipo non evasi');
      end;
      ordini_evasi.free;
    end;

    if (controllo_documenti_livello_superiore = 'si') and (not esiste) and (variato_stringa <> v_cli_codice.text) then
    begin
      if not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ddt fornitori')) then
      begin
        controllo_documenti_evasi.sql.clear;
        if tipo_documento = 'ordine' then
        begin
          controllo_documenti_evasi.sql.add('select * from pvt where cli_codice = :cli_codice');
          controllo_documenti_evasi.sql.add('and (situazione = ''inserito'' or situazione = ''evaso parziale'')');
        end
        else if (tipo_documento = 'fattura immediata') and (tdo_codice_conto_vendita <> '') then
        begin
          controllo_documenti_evasi.sql.add('select * from dvt where cli_codice = :cli_codice');
          controllo_documenti_evasi.sql.add('and (situazione = ''evaso'' or situazione = ''consolidato parziale'')');
          controllo_documenti_evasi.sql.add('and tdo_codice = ' + quotedstr(tdo_codice_conto_vendita));
          controllo_documenti_evasi.sql.add('and data_documento > :data_documento');
          controllo_documenti_evasi.parambyname('data_documento').asdate := v_data_documento.date - 400;
        end
        else
        begin
          controllo_documenti_evasi.sql.add('select * from ovt where cli_codice = :cli_codice');
          controllo_documenti_evasi.sql.add('and (situazione = ''inserito'' or situazione = ''evaso parziale'')');
        end;
        controllo_documenti_evasi.params[0].asstring := trim(v_cli_codice.text);
        controllo_documenti_evasi.close;
        controllo_documenti_evasi.open;
        if not controllo_documenti_evasi.isempty then
        begin
          controllare_documenti_livello_superiore;
        end;
      end;
    end;

    if (tdo.fieldbyname('fattura_professionisti').asstring = 'si') and (cli.fieldbyname('ritenuta_acconto').asstring = 'no') then
    begin
      messaggio(000, 'il cliente non è soggetto a ritenuta d''acconto' + #13 + 'attivarlo nel programma GESNOM (Gestione nominativi)');
      if v_cli_codice.canfocus then
      begin
        v_cli_codice.setfocus;
      end;
      abort;
    end;
  end;

  if tipo_documento = 'ddt fornitori' then
  begin
    tab_controlexit(tab_control);
  end;
end;

function tgesven.fuori_fido(solo_fuori_fido: boolean): boolean;
var
  stringa: string;
  effetti, ordinato: double;
  differita: boolean;
begin
  result := false;
  differita := false;

  if tipo_documento <> 'nota credito' then
  begin
    if (tabella.fieldbyname('tco_codice').asstring <> '') or ((tipo_documento = 'ordine') and (ordinato_fido = 'si')) then
    begin
      //  controllo fido scadenziario
      if cli.fieldbyname('giorni_fido_scadenziario').asinteger <> 0 then
      begin
        fido_scadenziario.close;
        fido_scadenziario.parambyname('cli_codice').asstring := cli.fieldbyname('codice').asstring;
        fido_scadenziario.parambyname('giorni').asstring := cli.fieldbyname('giorni_fido_scadenziario').asstring;
        fido_scadenziario.parambyname('data').asdate := tabella.fieldbyname('data_documento').asdatetime;
        fido_scadenziario.open;
        if fido_scadenziario.fieldbyname('importo').asfloat > cli.fieldbyname('importo_fido_scadenziario').asfloat then
        begin
          avviso_fuori_fido := true;
          stringa := 'l''importo del fido sullo scadenziario concesso al cliente per [' +
            cli.fieldbyname('giorni_fido_scadenziario').asstring + ' giorni]  [' +
            cli.fieldbyname('importo_fido_scadenziario').asstring + '€] è stato superato di [' +
            floattostr(fido_scadenziario.fieldbyname('importo').asfloat - cli.fieldbyname('importo_fido_scadenziario').asfloat) + '€]';

          messaggio(200, stringa);
          if blocco_fuori_fido = 'si' then
          begin
            //  non blocca gli ordini
            if tabella.fieldbyname('tco_codice').asstring <> '' then
            begin
              if solo_fuori_fido then
              begin
                if not differita then
                begin
                  fuori_fido(true);
                end;
              end;
              result := true;
            end;
          end;
        end;
      end;

      if (cli.fieldbyname('fido').asfloat <> 0) then
      begin
        cfg.close;
        cfg.params[0].asstring := v_cli_codice.text;
        cfg.open;
        if not cfg.eof then
        begin
          ordinato := 0;
          if ordinato_fido = 'si' then
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
          pat.close;
          pat.params[0].asstring := v_cli_codice.text;
          pat.params[1].asdate := v_data_documento.date - 90;
          pat.open;
          while not pat.eof do
          begin
            if (pat.fieldbyname('data_scadenza').asdatetime + pat.fieldbyname('giorni_rischio').asinteger) >=
              v_data_documento.date then
            begin
              effetti := arrotonda(effetti + pat.fieldbyname('importo_dovuto_euro').asfloat);
            end;

            pat.next;
          end;

          if cli.fieldbyname('fido').asfloat <
            (cfg.fieldbyname('importo_saldo').asfloat + cfg.fieldbyname('importo_fatturare_fido').asfloat + ordinato + effetti) then
          begin
            avviso_fuori_fido := true;
            stringa := 'il fido concesso al cliente [' + formatfloat(formato_display_importo, cli.fieldbyname('fido').asfloat) +
              '€] è stato superato di [' + formatfloat(formato_display_importo, cfg.fieldbyname('importo_saldo').asfloat + ordinato + effetti +
              cfg.fieldbyname('importo_fatturare_fido').asfloat - cli.fieldbyname('fido').asfloat) + '€]' + #13;

            if cfg.fieldbyname('importo_saldo').asfloat <> 0 then
            begin
              stringa := stringa + #13 + 'saldo contabile [' + formatfloat(formato_display_importo, cfg.fieldbyname('importo_saldo').asfloat) + '€]';
            end;
            if cfg.fieldbyname('importo_fatturare_fido').asfloat <> 0 then
            begin
              stringa := stringa + #13 + 'documenti da fatturare [' + formatfloat(formato_display_importo, cfg.fieldbyname('importo_fatturare_fido').asfloat) + '€]' + #13;
            end;
            if ordinato <> 0 then
            begin
              stringa := stringa + #13 + 'ordini da evadere [' + formatfloat(formato_display_importo, ordinato) + '€]';
            end;
            if effetti <> 0 then
            begin
              stringa := stringa + #13 + 'effetti a rischio [' + formatfloat(formato_display_importo, effetti) + '€]';
            end;

            messaggio(200, stringa);
            if blocco_fuori_fido = 'si' then
            begin
              if tabella.fieldbyname('situazione').asstring = 'inserito' then
              begin
                //  non blocca gli ordini
                if tabella.fieldbyname('tco_codice').asstring <> '' then
                begin
                  if solo_fuori_fido then
                  begin
                    tabella_righe.refresh;
                    if not tabella_righe.isempty then
                    begin
                      messaggio(100, 'cancellazione ultima riga documento');
                      tabella_righe.last;
                      if (tipo_documento = 'fattura differita') and (tabella_righe.fieldbyname('documento_origine').asstring <> '') then
                      begin
                        messaggio(200, 'non si possono cancellare righe della fattura differita' + slinebreak +
                          'perché derivano da DDT');
                        differita := true;
                      end
                      else
                      begin
                        tabella_righe.delete;
                        totven.movven_testata(tmyconnection_go(tabella.connection), tipo_documento, tabella.fieldbyname('progressivo').asinteger);
                      end;
                    end;
                    if not differita then
                    begin
                      fuori_fido(true);
                    end;
                  end;
                  result := true;
                end;
              end
              else
              begin
                messaggio(200, 'la situazione del fido non è aggiornabile automaticamente perché il documento è già stato elaborato');
              end;
            end;
          end
          else if (visualizza_fido_cliente_ven = 'si') and (cli.fieldbyname('fido').asfloat <> 0) and not solo_fuori_fido then
          begin
            stringa := 'il cliente ha ancora disponibili [' +
              formatfloat(formato_display_importo, cli.fieldbyname('fido').asfloat - (cfg.fieldbyname('importo_saldo').asfloat + ordinato + effetti +
              cfg.fieldbyname('importo_fatturare_fido').asfloat)) + '€]' + ' del fido concesso';

            stringa := stringa + #13 + 'fido [' + formatfloat(formato_display_importo, cli.fieldbyname('fido').asfloat) + ']';
            if cfg.fieldbyname('importo_saldo').asfloat <> 0 then
            begin
              stringa := stringa + #13 + 'saldo contabile [' + formatfloat(formato_display_importo, cfg.fieldbyname('importo_saldo').asfloat) + '€]';
            end;
            if cfg.fieldbyname('importo_fatturare_fido').asfloat <> 0 then
            begin
              stringa := stringa + #13 + 'documenti da fatturare [' + formatfloat(formato_display_importo, cfg.fieldbyname('importo_fatturare_fido').asfloat) + '€]' + #13;
            end;
            if ordinato <> 0 then
            begin
              stringa := stringa + #13 + 'ordini da evadere [' + formatfloat(formato_display_importo, ordinato) + '€]';
            end;
            if effetti <> 0 then
            begin
              stringa := stringa + #13 + 'effetti a rischio [' + formatfloat(formato_display_importo, effetti) + '€]';
            end;

            messaggio(200, stringa);
          end;
        end;
      end
      else
      begin
        avviso_fuori_fido := true;
      end;
    end;
  end;
end;

procedure tgesven.cli_codice_controllo(blocco: boolean);
var
  cli_codice: string;
begin
  if tabella.fieldbyname('tipo_documento').asstring = 'ddt fornitori' then
  begin
    cli.close;
    cli.params[0].value := null;
    cli.open;

    cli_ds.dataset := frn;
    tabella_controllo(false, frn, v_cli_codice, blocco, tab_control, tab_pagina1, tabella);

    nom.params[0].asstring := v_cli_codice.text;
    nom.close;
    nom.open;

    v_saldo_cliente.color := clbtnface;
  end
  else if tabella.fieldbyname('tipo_documento').asstring = 'preventivo nominativi' then
  begin
    frn.close;
    frn.params[0].value := null;
    frn.open;

    if not esiste and read_tabella(cli, v_cli_codice.text) and (tipo_documento = 'preventivo nominativi') then
    begin
      messaggio(000, 'esiste già un cliente con il codice indicato' + #13 +
        'utilizzare la gestione preventivi clienti per caricare il documento');
      fuoco(v_cli_codice);
      abort;
    end
    else
    begin
      cli.close;
      cli.params[0].value := null;
      cli.open;

      cli_ds.dataset := nom;
      tabella_controllo(false, nom, v_cli_codice, blocco, tab_control, tab_pagina1, tabella);

      if controllo and not nom.isempty then
      begin
        if (arc.utn.fieldbyname('tag_filtro').asstring = 'si') and
        //(nom.fieldbyname('tag_codice').asstring <> '') and
          (nom.fieldbyname('tag_codice').asstring <> arc.utn.fieldbyname('tag_codice').asstring) then
        begin
          messaggio(000, 'il nominativo ha assegnato un altro agente');
          fuoco(v_cli_codice);
          abort;
        end;
      end;
    end;

    v_saldo_cliente.color := clbtnface;
  end
  else
  begin
    frn.close;
    frn.params[0].value := null;
    frn.open;

    cli_ds.dataset := cli;
    tabella_controllo(false, cli, v_cli_codice, blocco, tab_control, tab_pagina1, tabella);

    if controllo and not cli.isempty then
    begin
      if blocco and (arc.utn.fieldbyname('tag_filtro').asstring = 'si') and
        (cli.fieldbyname('tag_codice').asstring <> arc.utn.fieldbyname('tag_codice').asstring) then
      begin
        messaggio(000, 'il cliente ha assegnato un altro agente');
        fuoco(v_cli_codice);
        abort;
      end
      else
      begin
        cli_codice := tabella.fieldbyname('cli_codice').asstring;
        (*
          if tabella.fieldbyname('cli_codice_fatturazione').asstring <> '' then
          begin
          cli_codice := tabella.fieldbyname('cli_codice_fatturazione').asstring;
          end
          else
          begin
          cli_codice := tabella.fieldbyname('cli_codice').asstring;
          end;
        *)
        if read_tabella(arc.arcdit, 'cfg', 'cfg_tipo;cfg_codice', vararrayof(['C', cli_codice])) then
        begin
          v_saldo_cliente.value := archivio.fieldbyname('importo_saldo').asfloat;
          if archivio.fieldbyname('importo_saldo').asfloat > 0 then
          begin
            v_saldo_cliente.color := clred;
          end
          else if archivio.fieldbyname('importo_saldo').asfloat < 0 then
          begin
            v_saldo_cliente.color := cllime;
          end
          else
          begin
            v_saldo_cliente.color := clyellow;
          end;
        end
        else
        begin
          v_saldo_cliente.value := 0;
          v_saldo_cliente.color := clyellow;
        end;

        if cli.fieldbyname('colore_priorita').asinteger = 0 then
        begin
          v_saldo_cliente.color := clbtnface;
          v_tse_colore_priorita.color := clbtnface;
        end
        else
        begin
          v_saldo_cliente.color := cli.fieldbyname('colore_priorita').asinteger;
          v_tse_colore_priorita.color := cli.fieldbyname('colore_priorita').asinteger;
        end;
      end;
    end
    else
    begin
      v_saldo_cliente.value := 0;
      v_saldo_cliente.color := clbtnface;
    end;

    nom.close;
    nom.params[0].asstring := v_cli_codice.text;
    nom.open;
  end;
end;

procedure tgesven.assegna_tlv_codice;
begin
  if tipo_documento = 'preventivo nominativi' then
  begin
    if tabella.fieldbyname('tlv_codice').asstring <> arc.dit.fieldbyname('tlv_codice_cli').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tlv_codice').asstring := arc.dit.fieldbyname('tlv_codice_cli').asstring;
        assegna_valore_tlv_codice;
        tlv_codice_controllo(false);
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('tlv_codice').asstring <> cli.fieldbyname('tlv_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tlv_codice').asstring := cli.fieldbyname('tlv_codice').asstring;
        assegna_valore_tlv_codice;
        tlv_codice_controllo(false);
      end;
    end;
  end;
  assegna_listino_con_iva;
end;

procedure tgesven.assegna_tpa_codice;
begin
  esiste_cli := true;
  if tipo_documento = 'ddt fornitori' then
  begin
    esiste_cli := false;
  end;

  if esiste_cli then
  begin
    if (not ind.eof) and (tabella.fieldbyname('tpa_codice').asstring <> ind.fieldbyname('tpa_codice').asstring) and
      (ind.fieldbyname('tpa_codice').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpa_codice').asstring := ind.fieldbyname('tpa_codice').asstring;
        tpa_codice_controllo(false);
      end;
    end
    else
    begin
      if tabella.fieldbyname('tpa_codice').asstring <> cli.fieldbyname('tpa_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tpa_codice').asstring := cli.fieldbyname('tpa_codice').asstring;
          assegna_valore_tpa_codice;
          tpa_codice_controllo(false);
        end;
      end;
    end;
  end;

  assegna_tsm_codice;
end;

procedure tgesven.assegna_tconai_codice;
begin
  esiste_cli := true;
  if tipo_documento = 'ddt fornitori' then
  begin
    esiste_cli := false;
  end;

  if esiste_cli then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('tconai_codice').asstring := cli.fieldbyname('tconai_codice').asstring;
      tconai_codice_controllo(false);
    end;
  end;

  assegna_conai;
end;

procedure tgesven.assegna_tva_codice;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    if tabella.fieldbyname('tva_codice').asstring <> frn.fieldbyname('nom_tva_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tva_codice').asstring := frn.fieldbyname('nom_tva_codice').asstring;
        tva_codice_controllo(false);
      end;
    end;
  end
  else if tipo_documento = 'preventivo nominativi' then
  begin
    if tabella.fieldbyname('tva_codice').asstring <> nom.fieldbyname('tva_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tva_codice').asstring := nom.fieldbyname('tva_codice').asstring;
        tva_codice_controllo(false);
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('tva_codice').asstring <> cli.fieldbyname('nom_tva_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tva_codice').asstring := cli.fieldbyname('nom_tva_codice').asstring;
        tva_codice_controllo(false);
      end;
    end;
  end;
  assegna_decimali;
  assegna_cambio;
  assegna_valore_cambio;
end;

procedure tgesven.assegna_tiv_codice;
var
  lti_progressivo: variant;
begin
  dicint.assegna_tiv_codice(0, tabella);
  assegna_valore_tiv_codice;
  tiv_codice_controllo(false);
end;

(*
  procedure tgesven.assegna_tcc_codice;
  begin
  esiste_cli := true;
  if tipo_documento = 'ddt fornitori' then
  begin
  esiste_cli := false;
  end;

  if esiste_cli then
  begin
  if (tabella.fieldbyname('tcc_codice').asstring <> cli.fieldbyname('tcc_codice').asstring) and
  (tabella.fieldbyname('tcc_codice').asstring <> '') then
  begin
  if tabella_edit(tabella) then
  begin
  tabella.fieldbyname('tcc_codice').asstring := cli.fieldbyname('tcc_codice').asstring;
  assegna_valore_tcc_codice;
  tcc_codice_controllo(false);
  end;
  end;
  if (tabella.fieldbyname('tcc_codice').asstring <> ind.fieldbyname('tcc_codice').asstring) and
  (ind.fieldbyname('tcc_codice').asstring <> '') then
  begin
  if tabella_edit(tabella) then
  begin
  tabella.fieldbyname('tcc_codice').asstring := ind.fieldbyname('tcc_codice').asstring;
  assegna_valore_tcc_codice;
  tcc_codice_controllo(false);
  end;
  end;
  end;
  end;
*)

procedure tgesven.assegna_intra;
begin
  if (tipo_documento = 'ddt fornitori') or (tipo_documento = 'corrispettivo') then
  begin
    if tabella.fieldbyname('intra').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('intra').asstring := 'no';
      end;
    end;
  end
  else
  begin
    if tipo_documento = 'preventivo nominativi' then
    begin
      read_tabella(arc.arcdit, 'tna', 'codice', nom.fieldbyname('tna_codice').asstring, 'intra');
    end
    else
    begin
      read_tabella(arc.arcdit, 'tna', 'codice', cli.fieldbyname('nom_tna_codice').asstring, 'intra');
    end;

    if tabella.fieldbyname('intra').asstring <> archivio.fieldbyname('intra').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('intra').asstring := archivio.fieldbyname('intra').asstring;
      end;
    end;
  end;
  abilita_intra;
end;

procedure tgesven.assegna_iva_sospensione;
var
  iva_sospensione: string;
begin
  if arc.dit.fieldbyname('iva_sospensione').asstring = 'si' then
  begin
    iva_sospensione := 'si';
  end
  else
  begin
    iva_sospensione := cli.fieldbyname('iva_sospensione').asstring;
  end;

  if tabella.fieldbyname('iva_sospensione').asstring <> iva_sospensione then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('iva_sospensione').asstring := iva_sospensione;
      if arc.dit.fieldbyname('iva_sospensione').asstring = 'si' then
      begin
        arc.escludi_tco_tna_iva_sospensione(tabella, tabella.fieldbyname('cli_codice').asstring);
      end;
      if tipo_documento = 'preventivo nominativi' then
      begin
        tabella.fieldbyname('iva_sospensione').asstring := 'no';
      end;
    end;
  end;

  if tabella.fieldbyname('iva_sospensione').asstring = 'si' then
  begin
    if read_tabella(arc.arcdit, 'tco', 'codice', tabella.fieldbyname('tco_codice').asstring) then
    begin
      if archivio.fieldbyname('gestione_partite').asstring = 'no' then
      begin
        messaggio(000, 'il documento prevede la gestione dell''iva con esigibilità differita (iva di cassa)' + #13 + #13 +
          'va utilizzata una causale contabile per il documento che preveda la gestione partite' + #13 +
          'per effettuare in automatico il conteggio della liquidazione iva');
        tab_control.activepage := tab_pagina1;
        v_tdo_codice.setfocus;
        abort;
      end;
    end;
  end;
end;

procedure tgesven.assegna_addebito_spese_fattura;
begin
  esiste_cli := true;
  if tipo_documento = 'ddt fornitori' then
  begin
    esiste_cli := false;
  end;

  if esiste_cli then
  begin

    //if (tabella.fieldbyname('addebito_spese_fattura').asstring <> cli.fieldbyname('addebito_spese_fattura').asstring) then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('addebito_spese_fattura').asstring := cli.fieldbyname('addebito_spese_fattura').asstring;
        tabella.fieldbyname('spese_manuali_trasporto').asstring := cli.fieldbyname('spese_manuali_trasporto').asstring;
        tabella.fieldbyname('spese_manuali_bollo').asstring := cli.fieldbyname('spese_manuali_bollo').asstring;
        tabella.fieldbyname('spese_manuali_incasso').asstring := cli.fieldbyname('spese_manuali_incasso').asstring;

        if (tabella.fieldbyname('spese_manuali_trasporto').asstring = 'si') or
          (tabella.fieldbyname('spese_manuali_bollo').asstring = 'si') or
          (tabella.fieldbyname('spese_manuali_incasso').asstring = 'si') then
        begin
          tabella.fieldbyname('addebito_spese_fattura').asstring := 'si';
        end;

        if tipo_documento = 'nota credito' then
        begin
          tabella.fieldbyname('addebito_spese_fattura').asstring := 'si';
          tabella.fieldbyname('spese_manuali_trasporto').asstring := 'si';
          tabella.fieldbyname('spese_manuali_bollo').asstring := 'no';
          tabella.fieldbyname('spese_manuali_incasso').asstring := 'si';
        end;

        assegna_valore_addebito_spese_fattura;
      end;
    end;
  end;
end;

procedure tgesven.assegna_indirizzo;
var
  assegnato_ind: boolean;
  cli_codice, ind_codice: variant;
begin
  assegnato_ind := false;
  if tipo_documento = 'ddt fornitori' then
  begin
    if read_tabella(arc.arcdit, 'inf', 'frn_codice;indirizzo', vararrayof([v_cli_codice.text, frn.fieldbyname('inf_codice').asstring])) then
    begin
      if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('indirizzo').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
          assegna_valore_indirizzo;
        end;
      end;
    end
    else if read_tabella(arc.arcdit, 'inf', 'frn_codice;indirizzo', vararrayof([v_cli_codice.text, v_cli_codice.text])) then
    begin
      if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('indirizzo').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
          assegna_valore_indirizzo;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('indirizzo').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('indirizzo').asstring := '';
        end;
      end;
    end;
  end
  else
  begin
    if assegna_pvv then
    begin
      assegna_pvv := false;

      codice_archivio := '';
      esegui_visarc(arc.arcdit, 'PVV', 'PVVVEN', codice_archivio, v_cli_codice.text, v_indirizzo.text, '', '', '', '');
      read_tabella(arc.arcdit, 'pvvr', 'punto_vendita', codice_archivio);
      if tabella.fieldbyname('punto_vendita').asstring <> archivio.fieldbyname('punto_vendita').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('punto_vendita').asstring := archivio.fieldbyname('punto_vendita').asstring;
        end;
      end;
      if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('ind_codice').asstring then
      begin
        ind_codice := archivio.fieldbyname('ind_codice').asstring;
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('indirizzo').asstring := ind_codice;
        end;
      end;
    end
    else
    begin
      if (read_tabella(arc.arcdit, 'ind', 'cli_codice;indirizzo', vararrayof([v_cli_codice.text, cli.fieldbyname('ind_codice').asstring]))) and
        (archivio.fieldbyname('obsoleto').asstring = 'no') then
      begin
        assegnato_ind := true;
        if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('indirizzo').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
            assegna_valore_indirizzo;
          end;
        end;
      end
      else if (read_tabella(arc.arcdit, 'ind', 'cli_codice;indirizzo', vararrayof([v_cli_codice.text, v_cli_codice.text]))) and
        (archivio.fieldbyname('obsoleto').asstring = 'no') then
      begin
        assegnato_ind := true;
        if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('indirizzo').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('indirizzo').asstring := archivio.fieldbyname('indirizzo').asstring;
            assegna_valore_indirizzo;
          end;
        end;
      end
      else
      begin
        if tabella.fieldbyname('indirizzo').asstring <> '' then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('indirizzo').asstring := '';
          end;
        end;
      end;
      if not assegnato_ind then
      begin
        if read_tabella(ind_01, v_cli_codice.text) then
        begin
          if messaggio(304, 'il cliente ha presenti filiali come luogo di destinazione merce' + slinebreak +
            'e non ne è stata assegnata nessuna' + slinebreak + slinebreak +
            'conferma per eseguire l''assegnazione') = 1 then
          begin
            tab_control.activepage := tab_testata_destinazione;
            fuoco(v_indirizzo);
            cli_codice := tabella.fieldbyname('cli_codice').asstring;
            set_codice_archivio;
            esegui_visarc(arc.arcdit, 'IND', 'INDCLI', codice_archivio, cli_codice, '', '', '', '', '');
            get_codice_archivio;
          end;
        end;
      end;
    end;
  end;
  assegna_ind;
end;

procedure tgesven.assegna_ind;
begin
  ind.close;
  ind.params[0].asstring := tabella.fieldbyname('cli_codice').asstring;
  ind.params[1].asstring := tabella.fieldbyname('indirizzo').asstring;
  ind.open;
  if not ind.eof then
  begin
    if tabella.fieldbyname('descrizione1').asstring <> ind.fieldbyname('descrizione1').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione1').asstring := ind.fieldbyname('descrizione1').asstring;
      end;
    end;

    if tabella.fieldbyname('descrizione2').asstring <> ind.fieldbyname('descrizione2').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione2').asstring := ind.fieldbyname('descrizione2').asstring;
      end;
    end;

    if tabella.fieldbyname('via').asstring <> ind.fieldbyname('via').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('via').asstring := ind.fieldbyname('via').asstring;
      end;
    end;

    if tabella.fieldbyname('cap').asstring <> ind.fieldbyname('cap').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cap').asstring := ind.fieldbyname('cap').asstring;
      end;
    end;

    if tabella.fieldbyname('citta').asstring <> ind.fieldbyname('citta').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('citta').asstring := ind.fieldbyname('citta').asstring;
      end;
    end;

    if tabella.fieldbyname('provincia').asstring <> ind.fieldbyname('provincia').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('provincia').asstring := ind.fieldbyname('provincia').asstring;
      end;
    end;

    if tabella.fieldbyname('tna_codice').asstring <> ind.fieldbyname('tna_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tna_codice').asstring := ind.fieldbyname('tna_codice').asstring;
        tna_codice_controllo(false);
      end;
    end;

    if tipo_documento <> 'ddt fornitori' then
    begin
      if tabella.fieldbyname('via_01').asstring <> ind.fieldbyname('via_01').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('via_01').asstring := ind.fieldbyname('via_01').asstring;
        end;
      end;

      if (tabella.fieldbyname('codice_cup').asstring <> ind.fieldbyname('codice_cup').asstring) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('codice_cup').asstring := ind.fieldbyname('codice_cup').asstring;
          tna_codice_controllo(false);
        end;
      end;

      if (tabella.fieldbyname('codice_cig').asstring <> ind.fieldbyname('codice_cig').asstring) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('codice_cig').asstring := ind.fieldbyname('codice_cig').asstring;
          tna_codice_controllo(false);
        end;
      end;

      //assegna_tpa_codice;
      assegna_tiv_codice;
      //assegna_tcc_codice;
      //assegna_tag_codice;
      //assegna_tst_codice;
      assegna_tna_codice_intra;
      //assegna_tma_codice;

      if (tabella.fieldbyname('tpa_codice').asstring <> ind.fieldbyname('tpa_codice').asstring) and
        (ind.fieldbyname('tpa_codice').asstring <> '') then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tpa_codice').asstring := ind.fieldbyname('tpa_codice').asstring;
        end;
        assegna_valore_tpa_codice;
      end;

      if (tabella.fieldbyname('tcc_codice').asstring <> ind.fieldbyname('tcc_codice').asstring) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tcc_codice').asstring := ind.fieldbyname('tcc_codice').asstring;
        end;
        assegna_valore_tcc_codice;
      end;

      if (tabella.fieldbyname('tag_codice').asstring <> ind.fieldbyname('tag_codice').asstring) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tag_codice').asstring := ind.fieldbyname('tag_codice').asstring;
        end;
        assegna_valore_tag_codice;
      end;

      if (tabella.fieldbyname('tst_codice').asstring <> ind.fieldbyname('tst_codice').asstring) then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tst_codice').asstring := ind.fieldbyname('tst_codice').asstring;
        end;
        assegna_valore_tst_codice;
      end;

      if (tabella.fieldbyname('tma_codice').asstring <> ind.fieldbyname('tma_codice').asstring) and
        (ind.fieldbyname('tma_codice').asstring <> '') then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tma_codice').asstring := ind.fieldbyname('tma_codice').asstring;
        end;
      end;

      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('consegna_lunedi').asstring := ind.fieldbyname('consegna_lunedi').asstring;
        tabella.fieldbyname('consegna_martedi').asstring := ind.fieldbyname('consegna_martedi').asstring;
        tabella.fieldbyname('consegna_mercoledi').asstring := ind.fieldbyname('consegna_mercoledi').asstring;
        tabella.fieldbyname('consegna_giovedi').asstring := ind.fieldbyname('consegna_giovedi').asstring;
        tabella.fieldbyname('consegna_venerdi').asstring := ind.fieldbyname('consegna_venerdi').asstring;
        tabella.fieldbyname('consegna_sabato').asstring := ind.fieldbyname('consegna_sabato').asstring;
        tabella.fieldbyname('consegna_domenica').asstring := ind.fieldbyname('consegna_domenica').asstring;
      end;
    end;

    //assegna_tsp_codice;
    //assegna_tpo_codice;
    //assegna_giorno_consegna;

    if tabella.fieldbyname('tsp_codice').asstring <> ind.fieldbyname('tsp_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsp_codice').asstring := ind.fieldbyname('tsp_codice').asstring;
      end;
      assegna_valore_tsp_codice;
    end;

    if tabella.fieldbyname('tpo_codice').asstring <> ind.fieldbyname('tpo_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpo_codice').asstring := ind.fieldbyname('tpo_codice').asstring;
      end;
      assegna_valore_tpo_codice;
      assegna_addebito_spese_trasporto;
    end;
  end
  else
  begin
    if tabella.fieldbyname('descrizione1').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione1').asstring := '';
      end;
    end;

    if tabella.fieldbyname('descrizione2').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('descrizione2').asstring := '';
      end;
    end;

    if tabella.fieldbyname('via').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('via').asstring := '';
      end;
    end;

    if tabella.fieldbyname('via_01').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('via_01').asstring := '';
      end;
    end;

    if tabella.fieldbyname('cap').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cap').asstring := '';
      end;
    end;

    if tabella.fieldbyname('citta').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('citta').asstring := '';
      end;
    end;

    if tabella.fieldbyname('provincia').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('provincia').asstring := '';
      end;
    end;

    if tabella.fieldbyname('tna_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tna_codice').asstring := '';
        tna_codice_controllo(false);
      end;
    end;

    if tabella.fieldbyname('codice_cup').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_cup').asstring := '';
      end;
    end;

    if tabella.fieldbyname('codice_cig').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_cig').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_tag_codice;
begin
  esiste_cli := true;
  if tipo_documento = 'ddt fornitori' then
  begin
    esiste_cli := false;
  end;

  if esiste_cli then
  begin
    if arc.utn.fieldbyname('tag_filtro').asstring = 'si' then
    begin
      if tabella.fieldbyname('tag_codice').asstring <> arc.utn.fieldbyname('tag_codice').asstring then
      begin
        tabella.fieldbyname('tag_codice').asstring := arc.utn.fieldbyname('tag_codice').asstring;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tag_codice').asstring <> cli.fieldbyname('tag_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tag_codice').asstring := cli.fieldbyname('tag_codice').asstring;
          assegna_valore_tag_codice;
          tag_codice_controllo(false);
        end;
      end;
      if tabella.fieldbyname('tag_codice_ca').asstring <> cli.fieldbyname('tag_codice_01').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tag_codice_ca').asstring := cli.fieldbyname('tag_codice_01').asstring;
          assegna_valore_tag_codice_ca;
          tag_codice_ca_controllo(false);
        end;
      end;

      if not ind.eof then
      begin
        if tabella.fieldbyname('tag_codice').asstring <> ind.fieldbyname('tag_codice').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tag_codice').asstring := ind.fieldbyname('tag_codice').asstring;
            assegna_valore_tag_codice;
            tag_codice_controllo(false);
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.assegna_tsp_codice;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    if tabella.fieldbyname('tsp_codice').asstring <> frn.fieldbyname('tsp_codice').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsp_codice').asstring := frn.fieldbyname('tsp_codice').asstring;
        assegna_valore_tsp_codice;
        tsp_codice_controllo(false);
      end;
    end;
  end
  else
  begin
    if tipo_documento = 'preventivo nominativi' then
    begin
      if tabella.fieldbyname('tsp_codice').asstring <> arc.dit.fieldbyname('tsp_codice_cli').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tsp_codice').asstring := arc.dit.fieldbyname('tsp_codice_cli').asstring;
          tsp_codice_controllo(false);
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tsp_codice').asstring <> cli.fieldbyname('tsp_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tsp_codice').asstring := cli.fieldbyname('tsp_codice').asstring;
          assegna_valore_tsp_codice;
          tsp_codice_controllo(false);
        end;
      end;
      if not ind.eof then
      begin
        if tabella.fieldbyname('tsp_codice').asstring <> ind.fieldbyname('tsp_codice').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tsp_codice').asstring := ind.fieldbyname('tsp_codice').asstring;
            assegna_valore_tsp_codice;
            tsp_codice_controllo(false);
          end;
        end;
      end;
    end;
  end;
  //avviso_durc;
end;

procedure tgesven.assegna_tsm_codice_sconto;
begin
  if (tipo_documento <> 'ddt fornitori') and (tipo_documento <> 'preventivo nominativi') then
  begin
    if tabella.fieldbyname('tsm_codice_sconto').asstring <> cli.fieldbyname('tsm_codice_finale').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsm_codice_sconto').asstring := cli.fieldbyname('tsm_codice_finale').asstring;
        tsm_codice_sconto_controllo(false);
      end;
    end;
  end;
end;

procedure tgesven.assegna_tst_codice;
begin
  esiste_cli := true;
  if tipo_documento = 'ddt fornitori' then
  begin
    esiste_cli := false;
  end;

  if esiste_cli then
  begin
    if tipo_documento = 'preventivo nominativi' then
    begin
      if tabella.fieldbyname('tst_codice').asstring <> arc.dit.fieldbyname('tst_codice_cli').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tst_codice').asstring := arc.dit.fieldbyname('tst_codice_cli').asstring;
          tst_codice_controllo(false);
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tst_codice').asstring <> cli.fieldbyname('tst_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tst_codice').asstring := cli.fieldbyname('tst_codice').asstring;
          assegna_valore_tst_codice;
          tst_codice_controllo(false);
        end;
      end;
      if not ind.eof then
      begin
        if tabella.fieldbyname('tst_codice').asstring <> ind.fieldbyname('tst_codice').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tst_codice').asstring := ind.fieldbyname('tst_codice').asstring;
            assegna_valore_tst_codice;
            tst_codice_controllo(false);
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.assegna_tpo_codice;
begin
  if tipo_documento = 'preventivo nominativi' then
  begin
    if tabella.fieldbyname('tpo_codice').asstring <> arc.dit.fieldbyname('tpo_codice_cli').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpo_codice').asstring := arc.dit.fieldbyname('tpo_codice_cli').asstring;
        tst_codice_controllo(false);
      end;
    end;
  end
  else
  begin
    if tipo_documento = 'ddt fornitori' then
    begin
      if tabella.fieldbyname('tpo_codice').asstring <> frn.fieldbyname('tpo_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tpo_codice').asstring := frn.fieldbyname('tpo_codice').asstring;
          assegna_valore_tpo_codice;
          tpo_codice_controllo(false);
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tpo_codice').asstring <> cli.fieldbyname('tpo_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tpo_codice').asstring := cli.fieldbyname('tpo_codice').asstring;
          assegna_valore_tpo_codice;
          tpo_codice_controllo(false);
        end;
      end;
    end;
    if not ind.eof then
    begin
      if tabella.fieldbyname('tpo_codice').asstring <> ind.fieldbyname('tpo_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tpo_codice').asstring := ind.fieldbyname('tpo_codice').asstring;
          assegna_valore_tpo_codice;
          tpo_codice_controllo(false);
        end;
      end;
    end;
  end;
  assegna_addebito_spese_trasporto;
end;

procedure TGESVEN.assegna_giorno_consegna;
begin
  if not((tipo_documento = 'fattura differita') or (tipo_documento = 'fattura immediata') or (tipo_documento = 'ddt fornitori') or
    (tipo_documento = 'nota credito') or (tipo_documento = 'ordine') or (tipo_documento = 'preventivo')) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('consegna_lunedi').asstring := cli.fieldbyname('consegna_lunedi').asstring;
      tabella.fieldbyname('consegna_martedi').asstring := cli.fieldbyname('consegna_martedi').asstring;
      tabella.fieldbyname('consegna_mercoledi').asstring := cli.fieldbyname('consegna_mercoledi').asstring;
      tabella.fieldbyname('consegna_giovedi').asstring := cli.fieldbyname('consegna_giovedi').asstring;
      tabella.fieldbyname('consegna_venerdi').asstring := cli.fieldbyname('consegna_venerdi').asstring;
      tabella.fieldbyname('consegna_sabato').asstring := cli.fieldbyname('consegna_sabato').asstring;
      tabella.fieldbyname('consegna_domenica').asstring := cli.fieldbyname('consegna_domenica').asstring;
    end;

    if not ind.eof then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('consegna_lunedi').asstring := ind.fieldbyname('consegna_lunedi').asstring;
        tabella.fieldbyname('consegna_martedi').asstring := ind.fieldbyname('consegna_martedi').asstring;
        tabella.fieldbyname('consegna_mercoledi').asstring := ind.fieldbyname('consegna_mercoledi').asstring;
        tabella.fieldbyname('consegna_giovedi').asstring := ind.fieldbyname('consegna_giovedi').asstring;
        tabella.fieldbyname('consegna_venerdi').asstring := ind.fieldbyname('consegna_venerdi').asstring;
        tabella.fieldbyname('consegna_sabato').asstring := ind.fieldbyname('consegna_sabato').asstring;
        tabella.fieldbyname('consegna_domenica').asstring := ind.fieldbyname('consegna_domenica').asstring;
      end;
    end;
  end;
end;

procedure tgesven.assegna_tna_codice_intra;
begin
  if tipo_documento <> 'ddt fornitori' then
  begin
    if tabella.fieldbyname('intra').asstring = 'si' then
    begin
      if tabella.fieldbyname('tna_codice_intra').asstring <> cli.fieldbyname('nom_tna_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tna_codice_intra').asstring := cli.fieldbyname('nom_tna_codice').asstring;
        end;
      end;
      if tabella.fieldbyname('tna_codice').asstring <> '' then
      begin
        if tabella.fieldbyname('tna_codice_intra').asstring <> tabella.fieldbyname('tna_codice').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tna_codice_intra').asstring := tabella.fieldbyname('tna_codice').asstring;
          end;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tna_codice_intra').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tna_codice_intra').asstring := '';
        end;
      end;
    end;
    tna_codice_intra_controllo(false);
  end;
end;

procedure tgesven.assegna_listino_con_iva;
begin
  if not tlv.isempty then
  begin
    if esiste then
    begin
      if tabella.fieldbyname('listino_con_iva').asstring <> tlv.fieldbyname('iva_inclusa').asstring then
      begin
        if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
        begin
          messaggio(000, 'il listino precedente prevedeva la gestione al netto dell''I.V.A. mentre l''attuale no' + #13 + #13 +
            'è possibile modificarlo prima di memorizzare la testata del documento');
        end
        else
        begin
          messaggio(000, 'il listino precedente prevedeva la gestione al lordo dell''I.V.A. mentre l''attuale no' + #13 + #13 +
            'è possibile modificarlo prima di memorizzare la testata del documento');
        end;
      end;
    end;
    if tabella.fieldbyname('listino_con_iva').asstring <> tlv.fieldbyname('iva_inclusa').asstring then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('listino_con_iva').asstring := tlv.fieldbyname('iva_inclusa').asstring;
      end;
    end;
  end
  else
  begin
    if tabella.fieldbyname('listino_con_iva').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('listino_con_iva').asstring := 'no';
      end;
    end;
  end;
end;

procedure tgesven.assegna_tsm_codice;
begin
  if tipo_documento <> 'fattura differita' then
  begin
    if not tpa.isempty then
    begin
      if tabella.fieldbyname('tsm_codice').asstring <> tpa.fieldbyname('tsm_codice').asstring then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tsm_codice').asstring := tpa.fieldbyname('tsm_codice').asstring;
          assegna_valore_tsm_codice;
          tsm_codice_controllo(false);
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('tsm_codice').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tsm_codice').asstring := '';
          tsm_codice_controllo(false);
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_tlv_codiceexit(sender: tobject);
begin
  inherited;
  tlv_codice_controllo(true);
  if controllo and (variato_stringa <> v_tlv_codice.text) then
  begin
    assegna_listino_con_iva;
  end;
end;

procedure tgesven.tlv_codice_controllo(blocco: boolean);
begin
  if v_tlv_codice.enabled then
  begin
    tabella_controllo(false, tlv, v_tlv_codice, blocco, tab_control, tab_pagina1, tabella);
  end
  else
  begin
    if (tipo_documento = 'ddt fornitori') or (tipo_documento = 'fattura differita') then
    begin
      tlv.close;
      tlv.params[0].value := null;
      tlv.open;
    end
    else
    begin
      tabella_controllo(true, tlv, v_tlv_codice, false, tab_control, tab_pagina1, tabella);
    end;
  end;
end;

procedure tgesven.v_tpa_codiceexit(sender: tobject);
begin
  inherited;
  tpa_codice_controllo(true);
  if controllo then
  begin
    if v_tpa_codice.text <> variato_stringa then
    begin
      assegna_tsm_codice;
      if variato_stringa <> '' then
      begin
        messaggio(100, 'poiché la modifica del codice pagamento' + #13 +
          'potrebbe portare alla vazione delle spese automatiche di incasso' + #13 +
          'viene attivata la pagina delle spese per eventuali modifiche');

        tab_control.activepage := tab_testata_sconto_acconto_spese;
        if v_spese_manuali_incasso.canfocus then
        begin
          v_spese_manuali_incasso.setfocus;
        end;
      end;
    end;
  end;
end;

procedure tgesven.tpa_codice_controllo(blocco: boolean);
begin
  if v_tpa_codice.enabled then
  begin
    tabella_controllo(false, tpa, v_tpa_codice, blocco, tab_control, tab_pagina1, tabella);
  end
  else
  begin
    tpa.close;
    tpa.params[0].value := null;
    tpa.open;
  end;
end;

procedure tgesven.v_tsm_codiceexit(sender: tobject);
begin
  inherited;
  tsm_codice_controllo(true);
end;

procedure TGESVEN.v_tsm_codiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;
end;

procedure tgesven.tsm_codice_controllo(blocco: boolean);
begin
  if v_tsm_codice.enabled then
  begin
    tabella_controllo(true, tsm, v_tsm_codice, blocco, tab_control, tab_pagina1, tabella);
  end
  else
  begin
    tabella_controllo(true, tsm, v_tsm_codice, blocco, tab_control, tab_pagina1, tabella);

    (*
      tsm.close;
      tsm.params[0].value := null;
      tsm.open;
    *)
  end;
end;

procedure tgesven.v_tva_codiceexit(sender: tobject);
begin
  inherited;
  tva_codice_controllo(true);

  if controllo then
  begin
    if v_tva_codice.text <> variato_stringa then
    begin
      assegna_decimali;
      assegna_cambio;
      assegna_valore_cambio;
    end;
  end;
end;

procedure tgesven.v_tvc_codiceexit(sender: tobject);
begin
  inherited;
  tvc_codice_controllo(true);
end;

procedure TGESVEN.v_ubicazioniClick(Sender: TObject);
begin
  inherited;

  esegui_ubicazioni;
end;

procedure tgesven.tva_codice_controllo(blocco: boolean);
begin
  if v_tva_codice.enabled then
  begin
    tabella_controllo(false, tva, v_tva_codice, blocco, tab_control, tab_pagina1, tabella);
  end
  else
  begin
    if tipo_documento = 'ddt fornitori' then
    begin
      tva.close;
      tva.params[0].value := null;
      tva.open;
    end
    else
    begin
      tabella_controllo(false, tva, v_tva_codice, false, tab_control, tab_pagina1, tabella);
    end;
  end;
end;

procedure tgesven.v_codice_cabenter(sender: tobject);
begin
  inherited;
  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_codice_abi.text;
end;

procedure tgesven.v_tba_codiceexit(sender: tobject);
begin
  inherited;
  tba_codice_controllo(true);
end;

procedure tgesven.tba_codice_controllo(blocco: boolean);
begin
  if v_tba_codice.enabled then
  begin
    if controllo then
    begin
      tabella_controllo(true, tba, v_tba_codice, blocco, tab_control, tab_testata_finanziario, tabella);
    end;
  end
  else
  begin
    tabella_controllo(true, tba, v_tba_codice, blocco, tab_control, tab_testata_finanziario, tabella);
  end;
end;

procedure tgesven.v_codice_abiexit(sender: tobject);
begin
  inherited;
  codice_abi_controllo(true);
end;

procedure tgesven.v_codice_cabexit(sender: tobject);
begin
  inherited;
  codice_cab_controllo(true);
end;

procedure tgesven.v_codice_contrattoexit(sender: tobject);
begin
  inherited;
  if controllo and (v_codice_contratto.text <> '') then
  begin
    cot.close;
    cot.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    cot.parambyname('codice_contratto').asstring := v_codice_contratto.text;
    cot.parambyname('data').asdate := tabella.fieldbyname('data_documento').asdatetime;
    cot.parambyname('tcr_codice').asstring := ditta;
    cot.open;
    if cot.isempty then
    begin
      messaggio(000, 'il contratto di riferimento non esiste');
      v_codice_contratto.setfocus;
      abort;
    end
    else
    begin
      if cot.fieldbyname('contratto_elenco_cli_for').asstring = 'si' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('contratto_elenco_cli_for').asstring := cot.fieldbyname('contratto_elenco_cli_for').asstring;
        end;
      end;
      if cot.fieldbyname('pagamento_elenco_cli_for').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('pagamento_elenco_cli_for').asstring := cot.fieldbyname('pagamento_elenco_cli_for').asstring;
        end;
      end;
      if cot.fieldbyname('tipo_contratto').asstring = 'fattura anticipata' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tiv_codice').asstring := cot.fieldbyname('tiv_codice').asstring;
        end;
      end;
    end;
  end;
end;

procedure tgesven.codice_abi_controllo(blocco: boolean);
begin
  tabella_controllo(true, abi, v_codice_abi, blocco, tab_control, tab_testata_finanziario, tabella);
end;

procedure tgesven.codice_cab_controllo(blocco: boolean);
begin
  if v_codice_abi.text = '' then
  begin
    tabella_controllo(true, cab, v_codice_abi, v_codice_cab, blocco, tab_control, tab_testata_finanziario, tabella);
  end
  else
  begin
    tabella_controllo(false, cab, v_codice_abi, v_codice_cab, blocco, tab_control, tab_testata_finanziario, tabella);
  end;
end;

procedure tgesven.set_codice_archivio;
begin
  inherited;
  if screen.activecontrol = v_codice_abi then
  begin
    codice_archivio := vararrayof([v_codice_abi.text, v_codice_cab.text]);
  end;
  if screen.activecontrol = v_codice_cab then
  begin
    codice_archivio := vararrayof([v_codice_abi.text, v_codice_cab.text]);
  end;
  if screen.activecontrol = v_tipologia then
  begin
    codice_archivio := vararrayof([v_cms_codice.text, v_tipologia.text]);
  end;
  if screen.activecontrol = v_indirizzo then
  begin
    codice_archivio := vararrayof([v_cli_codice.text, v_indirizzo.text]);
  end;
  if screen.activecontrol = v_ind_codice_fatturazione then
  begin
    codice_archivio := vararrayof([v_cli_codice.text, v_ind_codice_fatturazione.text]);
  end;
end;

procedure tgesven.v_formulaclick(sender: tobject);
begin
  inherited;
  if tabella_edit(tabella_righe) then
  begin
    esegui_formula;
    tabella_righe.post;
  end;
  v_griglia_righe.setfocus;
end;

procedure tgesven.get_codice_archivio;
begin
  if screen.activecontrol = v_codice_abi then
  begin
    if (tabella.fieldbyname('codice_abi').asstring <> codice_archivio[0]) or
      (tabella.fieldbyname('codice_cab').asstring <> codice_archivio[1]) then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_abi').asstring := codice_archivio[0];
        tabella.fieldbyname('codice_cab').asstring := codice_archivio[1];
      end;
    end;
  end;

  if screen.activecontrol = v_causale_trasporto then
  begin
    if variato_stringa <> codice_archivio then
    begin
      if read_tabella(arc.arcdit, 'ttr', 'codice', codice_archivio, 'descrizione') then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('causale_trasporto').asstring := archivio.fieldbyname('descrizione').asstring;
        end;
      end;
    end;
  end;

  if screen.activecontrol = v_indirizzo then
  begin
    if tabella.fieldbyname('indirizzo').asstring <> codice_archivio[1] then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('indirizzo').asstring := codice_archivio[1];
      end;
    end;
  end;

  if screen.activecontrol = v_ind_codice_fatturazione then
  begin
    if tabella.fieldbyname('ind_codice_fatturazione').asstring <> codice_archivio[1] then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('ind_codice_fatturazione').asstring := codice_archivio[1];
      end;
    end;
  end;

  visualizza_descrizioni;

  inherited;
end;

procedure tgesven.v_tmo_codice_collegatoexit(sender: tobject);
begin
  inherited;
  tmo_codice_collegato_controllo(true);
  if controllo then
  begin
    assegna_valore_tma_codice_collegato;
  end;
end;

procedure tgesven.tmo_codice_collegato_controllo(blocco: boolean);
begin
  tabella_controllo(true, tmo_collegato, v_tmo_codice_collegato, blocco, tab_control, tab_testata_magazzino, tabella);
end;

procedure tgesven.v_indirizzoenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_indirizzo.text;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_cli_codice.text;
end;

procedure tgesven.v_indirizzoexit(sender: tobject);
begin
  inherited;
  indirizzo_controllo(true);
  if controllo then
  begin
    if v_indirizzo.text <> variato_stringa then
    begin
      if messaggio(300, 'aggiornamento delle condizioni della nuova filiale') = 1 then
      begin
        if v_indirizzo.text <> '' then
        begin
          assegna_ind;
        end
        else
        begin
          aggiorna_condizioni_cliente;
        end;
      end;
    end;
    (*
      if tipo_documento <> 'ddt fornitori' then
      begin
      assegna_tag_codice;
      assegna_tst_codice;
      end;

      assegna_tsp_codice;
      assegna_tpo_codice;
      assegna_giorno_consegna;
    *)
  end;
end;

procedure TGESVEN.v_ind_codice_fatturazioneEnter(Sender: TObject);
begin
  inherited;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_cli_codice.text;
end;

procedure TGESVEN.v_ind_codice_fatturazioneExit(Sender: TObject);
begin
  inherited;
  ind_codice_fatturazione_controllo(true);
end;

procedure tgesven.ind_codice_fatturazione_controllo(blocco: boolean);
begin
  if abilita_campo(v_ind_codice_fatturazione, true) then
  begin
    if tipo_documento <> 'ddt fornitori' then
    begin
      tabella_controllo(true, ind_fatturazione, v_cli_codice, v_ind_codice_fatturazione, blocco, tab_control, tab_testata_analitica, tabella);
    end;
  end;
end;

procedure tgesven.indirizzo_controllo(blocco: boolean);
begin
  if v_indirizzo.enabled then
  begin
    if tipo_documento <> 'ddt fornitori' then
    begin
      tabella_controllo(true, ind, v_cli_codice, v_indirizzo, blocco, tab_control, tab_testata_destinazione, tabella);

      if controllo and (tdo.fieldbyname('ind_obbligatoria').asstring = 'si') and (tabella.fieldbyname('indirizzo').asstring = '') then
      begin
        messaggio(000, 'la filiale è obbligatoria');
        tab_control.activepage := tab_testata_destinazione;
        fuoco(v_indirizzo);
      end;
    end;
  end;
end;

procedure tgesven.v_tna_codiceexit(sender: tobject);
begin
  inherited;
  tna_codice_controllo(true);
end;

procedure tgesven.tna_codice_controllo(blocco: boolean);
begin
  if v_tna_codice.enabled then
  begin
    tabella_controllo(true, tna, v_tna_codice, blocco, tab_control, tab_testata_destinazione, tabella);
  end;
end;

procedure tgesven.v_tag_codiceexit(sender: tobject);
begin
  inherited;
  tag_codice_controllo(true);
end;

procedure tgesven.tag_codice_controllo(blocco: boolean);
begin
  if v_tag_codice.enabled then
  begin
    tabella_controllo(false, tag, v_tag_codice, blocco, tab_control, tab_testata_riferimento, tabella);
  end
  else
  begin
    tag.close;
    tag.params[0].value := null;
    tag.open;
  end;
end;

procedure tgesven.v_tag_codice_caexit(sender: tobject);
begin
  inherited;
  tag_codice_ca_controllo(true);
end;

procedure TGESVEN.v_tag_fe_righeClick(Sender: TObject);
var
  pr: tgestagtdr;
begin
  inherited;

  pr := tgestagtdr.create(nil);
  pr.codice := tabella_righe.fieldbyname('id').asinteger;
  pr.showmodal;

  freeandnil(pr);
end;

procedure TGESVEN.v_tag_fe_testataClick(Sender: TObject);
var
  pr: tgestagtdt;
begin
  inherited;

  pr := tgestagtdt.create(nil);
  pr.codice := tabella.fieldbyname('id').asinteger;
  pr.showmodal;

  freeandnil(pr);
end;

procedure tgesven.tag_codice_ca_controllo(blocco: boolean);
begin
  if tdo.fieldbyname('tag_codice_ca_obbligatorio').asstring = 'no' then
  begin
    tabella_controllo(true, tag_ca, v_tag_codice_ca, blocco, tab_control, tab_testata_riferimento, tabella);
  end
  else
  begin
    tabella_controllo(false, tag_ca, v_tag_codice_ca, blocco, tab_control, tab_testata_riferimento, tabella);
  end;
end;

procedure tgesven.v_tiv_codiceexit(sender: tobject);
begin
  inherited;
  tiv_codice_controllo(true);
end;

procedure TGESVEN.v_tiv_codice_righeExit(Sender: TObject);
begin
  inherited;
  tiv_codice_righe_controllo(true);
end;

procedure tgesven.tiv_codice_controllo(blocco: boolean);
begin
  if v_tiv_codice.enabled then
  begin
    tabella_controllo(true, tiv, v_tiv_codice, blocco, tab_control, tab_testata_riferimento, tabella);
  end
  else
  begin
    tiv.close;
    tiv.params[0].value := null;
    tiv.open;
  end;
end;

procedure tgesven.v_tcd_codice_aperturaexit(sender: tobject);
begin
  inherited;
  tcd_codice_apertura_controllo(true);
end;

procedure tgesven.tcd_codice_apertura_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_apertura, v_tcd_codice_apertura, blocco, tab_control, tab_testata_riferimento, tabella);
end;

procedure tgesven.v_tcd_codice_chiusuraexit(sender: tobject);
begin
  inherited;
  tcd_codice_chiusura_controllo(true);
end;

procedure TGESVEN.v_tconai_codiceEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_tconai_codice.text;
end;

procedure TGESVEN.v_tconai_codiceExit(Sender: TObject);
begin
  inherited;
  tconai_codice_controllo(true);
  if variato_stringa <> v_tconai_codice.text then
  begin
    assegna_conai;
  end;
end;

procedure TGESVEN.tconai_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tconai_01, v_tconai_codice, blocco, tab_control, tab_testata_note, tabella);
end;

procedure TGESVEN.assegna_conai;
begin
  if tabella_edit(tabella) then
  begin
    if tconai_01.fieldbyname('non_applicabile').asstring = 'si' then
    begin
      tabella.fieldbyname('no_conai').asstring := 'si';
    end
    else
    begin
      tabella.fieldbyname('no_conai').asstring := 'no';
    end;
  end;
end;

procedure TGESVEN.assegna_cli_codice_fatturazione;
begin
  if tipo_documento <> 'preventivo nominativi' then
  begin
    if tabella_edit(tabella) then
    begin
      if tabella.fieldbyname('cli_codice_fatturazione').asstring <> cli.fieldbyname('cli_codice_fatturazione').asstring then
      begin
        tabella.fieldbyname('cli_codice_fatturazione').asstring := cli.fieldbyname('cli_codice_fatturazione').asstring;
      end;
    end;
  end;
end;

procedure tgesven.tcd_codice_chiusura_controllo(blocco: boolean);
begin
  tabella_controllo(true, tcd_chiusura, v_tcd_codice_chiusura, blocco, tab_control, tab_testata_riferimento, tabella);
end;

procedure tgesven.v_tsp_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tsp_codice.text;
end;

procedure tgesven.v_tsp_codiceexit(sender: tobject);
begin
  inherited;
  tsp_codice_controllo(true);
  if controllo then
  begin
    avviso_durc;
    if variato_stringa <> v_tsp_codice.text then
    begin
      assegna_addebito_spese_trasporto;
    end;
  end;
end;

procedure tgesven.avviso_durc;
begin
  if (tdo.fieldbyname('durc_obbligatorio').asstring = 'si') and
    (tsp.fieldbyname('tipo').asstring = 'vettore') and (tsp.fieldbyname('data_scadenza_durc').asdatetime <> 0) and
    (tsp.fieldbyname('data_scadenza_durc').asdatetime < tabella.fieldbyname('data_documento').asdatetime) then
  begin
    messaggio(200, 'la data di validità del DURC dello spedizioniere [' + tsp.fieldbyname('data_scadenza_durc').asstring + '] è scaduta');
  end;
end;

procedure tgesven.tsp_codice_controllo(blocco: boolean);
begin
  if v_tsp_codice.enabled then
  begin
    if tipo_documento = 'fattura differita' then
    begin
      tabella_controllo(true, tsp, v_tsp_codice, blocco, tab_control, tab_testata_spedizione, tabella);
    end
    else
    begin
      tabella_controllo(false, tsp, v_tsp_codice, blocco, tab_control, tab_testata_spedizione, tabella);
    end;
  end
  else
  begin
    tabella_controllo(true, tsp, v_tsp_codice, blocco, tab_control, tab_testata_spedizione, tabella);
  end;
end;

procedure tgesven.v_tst_codiceexit(sender: tobject);
begin
  inherited;
  tst_codice_controllo(true);
end;

procedure tgesven.tst_codice_controllo(blocco: boolean);
begin
  if v_tst_codice.enabled then
  begin
    tabella_controllo(false, tst, v_tst_codice, blocco, tab_control, tab_testata_spedizione, tabella);
  end
  else
  begin
    tabella_controllo(true, tst, v_tst_codice, blocco, tab_control, tab_testata_spedizione, tabella);
  end;
end;

procedure tgesven.v_tpo_codiceexit(sender: tobject);
begin
  inherited;
  tpo_codice_controllo(true);
  if controllo then
  begin
    if variato_stringa <> v_tpo_codice.text then
    begin
      assegna_addebito_spese_trasporto;
    end;
  end;
end;

procedure tgesven.assegna_addebito_spese_trasporto;
begin
  if read_tabella(arc.arcdit, 'tpo', 'codice', v_tpo_codice.text) then
  begin
    if tsp.fieldbyname('tipo').asstring = 'destinatario' then
    begin
      if tabella.fieldbyname('addebito_spese_trasporto').asstring <> 'no' then
      begin
        tabella.fieldbyname('addebito_spese_trasporto').asstring := 'no';
      end;
    end
    else
    begin
      if (tabella.fieldbyname('addebito_spese_trasporto').asstring <> archivio.fieldbyname('addebito').asstring) then
      begin
        tabella.fieldbyname('addebito_spese_trasporto').asstring := archivio.fieldbyname('addebito').asstring;
      end;
    end;
  end;
end;

procedure tgesven.tpo_codice_controllo(blocco: boolean);
begin
  if v_tpo_codice.enabled then
  begin
    if tipo_documento = 'fattura differita' then
    begin
      tabella_controllo(true, tpo, v_tpo_codice, blocco, tab_control, tab_testata_spedizione, tabella);
    end
    else
    begin
      tabella_controllo(false, tpo, v_tpo_codice, blocco, tab_control, tab_testata_spedizione, tabella);
    end;
  end
  else
  begin
    tpo.close;
    tpo.params[0].value := null;
    tpo.open;
  end;
end;

procedure tgesven.v_tab_codiceexit(sender: tobject);
begin
  inherited;
  tab_codice_controllo(true);
end;

procedure tgesven.tab_codice_controllo(blocco: boolean);
begin
  if v_tab_codice.enabled then
  begin
    tabella_controllo(true, tab, v_tab_codice, blocco, tab_control, tab_testata_spedizione, tabella);
  end;
end;

procedure tgesven.abilita_bottoni_analitica(flag: boolean);
begin
  if flag and esiste and (analitica = 'si') then
  begin
    v_analitica_sconto_cassa.enabled := false;
    v_analitica_sconto_finale.enabled := false;
    v_analitica_spese_trasporto.enabled := false;
    v_analitica_spese_bollo.enabled := false;
    v_analitica_spese_incasso.enabled := false;
    v_analitica_spese_extra.enabled := false;

    if tabella.fieldbyname('importo_sconto_cassa').asfloat <> 0 then
    begin
      v_analitica_sconto_cassa.enabled := true;
    end;
    if (tabella.fieldbyname('importo_sconto_finale').asfloat + tabella.fieldbyname('importo_sconto').asfloat) <> 0 then
    begin
      v_analitica_sconto_finale.enabled := true;
    end;
    if tabella.fieldbyname('importo_spese_trasporto').asfloat <> 0 then
    begin
      v_analitica_spese_trasporto.enabled := true;
    end;
    if tabella.fieldbyname('importo_bollo').asfloat <> 0 then
    begin
      v_analitica_spese_bollo.enabled := true;
    end;
    if tabella.fieldbyname('importo_spese_incasso').asfloat <> 0 then
    begin
      v_analitica_spese_incasso.enabled := true;
    end;
    if tabella.fieldbyname('importo_spese_extra').asfloat <> 0 then
    begin
      v_analitica_spese_extra.enabled := true;
    end;
  end
  else
  begin
    v_analitica_sconto_cassa.enabled := false;
    v_analitica_sconto_finale.enabled := false;
    v_analitica_spese_trasporto.enabled := false;
    v_analitica_spese_bollo.enabled := false;
    v_analitica_spese_incasso.enabled := false;
    v_analitica_spese_extra.enabled := false;
  end;
end;

procedure tgesven.v_griglia_righeexit(sender: tobject);
begin
  inherited;

  disabilita_campo(v_totalizza);
  disabilita_campo(v_crea_ast);

  v_acconto.enabled := false;
  v_non_conformita.enabled := false;

  tool_sequenza.down := false;
  tool_sequenza.enabled := false;

  v_gestione_collegato.enabled := false;
  v_lettore.enabled := false;

  (*
    if (screen.activecontrol.parent is trztabsheet) then
    begin
    tool_f8.enabled := false;
    tabella.cancel;
    end;
  *)

  abilita_bottoni(false);
  tool_evasione.enabled := false;
  tool_evasione.hint := '';
  tool_richiesta_acquisto.enabled := false;
  tool_ordine_produzione.enabled := false;
  v_etiart.enabled := false;

  disabilita_campo(v_documenti_collegati);

  sconto_massimo_art := 0;
end;

procedure tgesven.v_griglia_righeenter(sender: tobject);
begin
  inherited;

  if esiste then
  begin
    abilita_campo(v_totalizza);
    if (tipo_documento = 'ordine') or (tipo_documento = 'bolla') or (tipo_documento = 'ddt') or
      (tipo_documento = 'fattura accompagnatoria') then
    begin
      abilita_campo(v_crea_ast);
    end
    else
    begin
      disabilita_campo(v_crea_ast);
    end;
  end
  else
  begin
    disabilita_campo(v_totalizza);
    disabilita_campo(v_crea_ast);
  end;

  if tipo_documento = 'ddt fornitori' then
  begin
    v_non_conformita.enabled := true;
  end
  else
  begin
    v_non_conformita.enabled := false;
  end;

  tool_sequenza.enabled := true;

  variato_provvigioni := false;

  abilita_art_codice;
  abilita_bottoni(true);
  v_etiart.enabled := true;

  if tabella.fieldbyname('situazione').asstring = 'inserito' then
  begin
    v_lettore.enabled := true;
  end
  else
  begin
    v_lettore.enabled := false;
  end;

  if not tabella_righe.isempty and
    ((tipo_documento = 'bolla') or (tipo_documento = 'bolla') or (tipo_documento = 'fattura immediata')) then
  begin
    abilita_campo(v_documenti_collegati);
  end
  else
  begin
    disabilita_campo(v_documenti_collegati);
  end;

  attiva_esiste(false);
  attiva_importo;

  tool_evasione.enabled := false;
  if tipo_documento = 'ordine' then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'evasione preventivo [F9] ' + hint_evadi_documento;
  end
  else if (tipo_documento = 'fattura immediata') and (tdo_codice_conto_vendita <> '') then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'evasione ddt conto vendita [F9] ' + hint_evadi_documento;
  end
  else if ((tipo_documento = 'ddt') or (tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or
    (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
    (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and (v_situazione.text = 'inserito') then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'evasione ordine [F9] ' + hint_evadi_documento;
  end
  else if (tipo_documento = 'ddt') and (tdo.fieldbyname('conto_terzi').asstring = 'si') then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'evasione conto lavoro [F9] ' + hint_evadi_documento;
  end
  else if tipo_documento = 'ddt fornitori' then
  begin
    tool_evasione.enabled := true;
    tool_evasione.hint := 'restituzione da conto vendita / visione ' + hint_evadi_documento;
  end
  else if tipo_documento = 'nota credito' then
  begin
    if tabella.fieldbyname('situazione').asstring = 'inserito' then
    begin
      tool_evasione.enabled := true;
      tool_evasione.hint := 'evasione d.d.t. reso da clienti' + hint_evadi_documento;
    end;
  end;

  esistenza_deposito.close;
  esistenza_totale.close;
  esistenza_principale.close;

  v_esistenza.enabled := true;

  inserimento_fattura_differita := false;

  if evasione_preventivo_ordine then
  begin
    tabella_righe.cancel;
    evasione_documento('articolo');
    evasione_preventivo_ordine := false;
    art_codice_evasione_preventivo_ordine := '';
  end;

  if not esiste_documento and not eseguito_gesdocgri and (tdo.fieldbyname('usa_griglia_input').asstring = 'si') then
  begin
    eseguito_gesdocgri := true;
    esegui_gesdocgri;
  end;
end;

procedure tgesven.v_tsm_codice_scontoexit(sender: tobject);
begin
  tsm_codice_sconto_controllo(true);
end;

procedure TGESVEN.v_tsm_codice_scontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;
end;

procedure tgesven.tsm_codice_sconto_controllo(blocco: boolean);
begin
  if v_tsm_codice_sconto.enabled then
  begin
    tabella_controllo(true, tsm_sconto, v_tsm_codice_sconto, blocco, tab_control, tab_testata_sconto_acconto_spese, tabella);
  end
  else
  begin
    tsm_sconto.close;
    tsm_sconto.params[0].value := null;
    tsm_sconto.open;
  end;
end;

procedure tgesven.abilita_bottoni(flag: boolean);
begin
  if (flag) and (parte_attiva = 'griglia_righe') then
  begin
    if tipo_documento <> 'ddt fornitori' then
    begin
      abilita_campo(v_modifica_provvigioni);
    end;

    // lotti
    if (((tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') or (tipo_documento = 'bolla') or
      (tipo_documento = 'nota credito') or
      (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
      (tipo_documento = 'corrispettivo')) and (trim(v_tmo_codice.text) <> '')) or (tipo_documento = 'ordine') then
    begin
      if not art.eof then
      begin
        if (art.fieldbyname('lotti').asstring = 'si') and (lotti = 'si') then
        begin
          if (tipo_documento = 'ordine') and (tabella_righe.fieldbyname('situazione').asstring <> 'inserito') then
          begin
            v_lotti.enabled := false;
          end
          else
          begin
            v_lotti.enabled := true;
          end;
        end
        else
        begin
          v_lotti.enabled := false;
        end;
      end;
    end
    else
    begin
      v_lotti.enabled := false;
    end;

    // analitica
    if analitica = 'si' then
    begin
      v_analitica.enabled := true;
    end
    else
    begin
      v_analitica.enabled := false;
    end;

    // commesse
    if (commesse = 'si') and (tipo_documento <> 'ordine') then
    begin
      v_commesse.enabled := true;
    end
    else
    begin
      v_commesse.enabled := false;
    end;

    // conto terzi
    if conto_terzi = 'si' then
    begin
      v_conto_terzi.enabled := true;
    end
    else
    begin
      v_conto_terzi.enabled := false;
    end;

    // accessori
    if (tipo_documento = 'ddt fornitori') or (v_art_codice.text = '') then
    begin
      v_accessori.enabled := false;
    end
    else
    begin
      v_accessori.enabled := true;
    end;

    // distinta base
    if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
    begin
      v_distinta_base.enabled := true;
    end
    else
    begin
      v_distinta_base.enabled := false;
    end;

    // configurazione
    if (tipo_documento = 'ddt fornitori') or (v_art_codice.text = '') then
    begin
      v_configurazione.font.color := clwindowtext;
      v_configurazione.enabled := false;
    end
    else
    begin
      if (tabella_righe.fieldbyname('situazione').asstring = 'consolidato') or (tabella_righe.fieldbyname('situazione').asstring = 'consolidato parziale') or
        ((tabella_righe.fieldbyname('situazione').asstring = 'evaso') and ((copy(tipo_documento, 1, 10) = 'preventivo') or
        (tipo_documento = 'ordine'))) then
      begin
        v_configurazione.font.color := clwindowtext;
        v_configurazione.enabled := false;
      end
      else
      begin
        v_configurazione.enabled := true;
        if tabella_righe.fieldbyname('configurazione').asinteger <> 0 then
        begin
          v_configurazione.font.color := clred;
        end
        else
        begin
          v_configurazione.font.color := clwindowtext;
        end;
      end;
    end;

    // richiesta acquisto
    if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') and (tipo_documento = 'ordine') then
    begin
      //tool_richiesta_acquisto.enabled := true;
      tool_ordine_produzione.enabled := true;
    end
    else
    begin
      //tool_richiesta_acquisto.enabled := false;
      tool_ordine_produzione.enabled := false;
    end;
    tool_richiesta_acquisto.enabled := true;

    // annulla riga
    if (copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine') then
    begin
      if (esiste_righe) and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') and
        (tabella_righe.fieldbyname('art_codice').asstring <> '') then
      begin
        v_evadi_riga_documento.enabled := false;
        v_annulla_riga_documento.enabled := true;
        v_annulla_riga_documento.caption := 'annulla';
      end
      else if (esiste_righe) and (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') and
        (tabella_righe.fieldbyname('art_codice').asstring <> '') then
      begin
        v_annulla_riga_documento.enabled := false;
        v_evadi_riga_documento.enabled := true;
      end
      else if (esiste_righe) and (tabella_righe.fieldbyname('situazione').asstring = 'annullato') and
        (tabella_righe.fieldbyname('art_codice').asstring <> '') then
      begin
        v_annulla_riga_documento.enabled := true;
        v_annulla_riga_documento.caption := 'storno annullamento';
      end
      else
      begin
        v_evadi_riga_documento.enabled := false;
        v_annulla_riga_documento.enabled := false;
      end;
    end;

    // documenti di acquisto
    if ((copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') and (tipo_documento <> 'ddt fornitori')) and
      (tabella.fieldbyname('situazione').asstring = 'inserito') then
    begin
      v_documenti_acquisto.enabled := true;
    end
    else
    begin
      v_documenti_acquisto.enabled := false;
    end;

    // formula
    if art.active and (art.fieldbyname('arv_id').asinteger <> 0) then
    begin
      v_formula.enabled := true;
    end
    else
    begin
      v_formula.enabled := false;
    end;

    //  ubicazioni
    if (arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si') and (tabella.fieldbyname('tmo_codice').asstring <> '') and
      (tabella_righe.fieldbyname('situazione').asstring = 'inserito') and (art.fieldbyname('tipo_articolo').asstring = 'fiscale') then
    begin
      abilita_campo(v_ubicazioni);
    end
    else
    begin
      disabilita_campo(v_ubicazioni);
    end;
  end
  else
  begin
    disabilita_campo(v_modifica_provvigioni);
    v_commesse.enabled := false;
    v_conto_terzi.enabled := false;
    v_analitica.enabled := false;
    v_lotti.enabled := false;
    v_accessori.enabled := false;
    v_configurazione.enabled := false;
    v_distinta_base.enabled := false;
    tool_richiesta_acquisto.enabled := false;
    tool_ordine_produzione.enabled := false;
    v_annulla_riga_documento.enabled := false;
    v_evadi_riga_documento.enabled := false;
    v_documenti_acquisto.enabled := false;

    v_formula.enabled := false;

    disabilita_campo(v_ubicazioni);
    //disabilita_campo(v_crea_ast);
  end;
end;

procedure tgesven.pannello_righeenter(sender: tobject);
var
  anno, mese, giorno: word;
begin
  inherited;

  lavorazione_vetrerie := false;
  blocco_modifica_prezzi_vendita := false;

  progressivo_rma := 0;
  progressivo_nca := 0;
  tac_codice_nca := '';

  if esiste_righe and ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
  begin
    abilita_campo(v_tag_fe_righe);
  end
  else
  begin
    disabilita_campo(v_tag_fe_righe);
  end;

  if esiste_righe then
  begin
    tool_f7.enabled := true;
    if (tdo.fieldbyname('note_visibili').asstring = 'no') then
    begin
      if tabella_righe.fieldbyname('note').asstring <> '' then
      begin
        v_note_righe.visible := true;
      end
      else
      begin
        v_note_righe.visible := false;
      end;
    end
    else
    begin
      v_note_righe.visible := true;
    end;

    if arc.utn.fieldbyname('blocco_modifica_prezzi_vendita').asstring = 'si' then
    begin
      cerca_prezzo_documento('', tabella_righe);
    end;
  end
  else
  begin
    tool_f7.enabled := false;
    if (tdo.fieldbyname('note_visibili').asstring = 'no') then
    begin
      v_note_righe.visible := false;
    end
    else
    begin
      v_note_righe.visible := true;
    end;

    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('iva_bloccata').asstring := tabella.fieldbyname('iva_bloccata').asstring;
      tabella_righe.fieldbyname('soggetto_addebito_enasarco').asstring := tabella.fieldbyname('soggetto_addebito_enasarco').asstring;
      if tabella.fieldbyname('soggetto_addebito_enasarco').asstring = 'si' then
      begin
        decodedate(tabella.fieldbyname('data_documento').asdatetime, anno, mese, giorno);
        tabella_righe.fieldbyname('tea_codice').asstring := inttostr(anno);
      end;
      tabella_righe.fieldbyname('punto_vendita').asstring := tabella.fieldbyname('punto_vendita').asstring;
      tabella_righe.fieldbyname('tipo_imballaggio').asstring := tabella.fieldbyname('tipo_imballaggio').asstring;
    end;
  end;
  codice_lotto_matricola_singolo := '';

  abilita_tma_codice_righe;
  abilita_tiv_codice_righe;
  abilita_gen_codice_righe;

  assegna_gestioni;

  assegna_decimali_quantita;
  attiva_importo;

  scorporo_eseguito := false;

  if tlv.isempty then
  begin
    sconto_massimo := 0;
    blocco_sconto_massimo := '';
    password_sconto_massimo := '';
  end
  else
  begin
    sconto_massimo := tlv.fieldbyname('sconto_massimo').asfloat;
    blocco_sconto_massimo := tlv.fieldbyname('blocco_sconto_massimo').asstring;
    password_sconto_massimo := tlv.fieldbyname('password_sconto_massimo').asstring;
  end;
end;

procedure tgesven.azzera_vecchio_righe;
begin
  vecchio_sequenza := 0;
  vecchio_art_codice := '';
  vecchio_tma_codice_righe := '';
  vecchio_numero_colli := 0;
  vecchio_numero_confezioni := 0;
  vecchio_quantita := 0;
  vecchio_quantita_base := 0;
  vecchio_quantita_approntata := 0;
  vecchio_prezzo := 0;
  vecchio_tsm_codice_righe := '';
  vecchio_tsm_codice_art := '';
  vecchio_importo_sconto_righe := 0;
  vecchio_tipo_movimento := '';
  vecchio_importo := 0;
  vecchio_importo_euro := 0;
  vecchio_importo_iva := 0;
  vecchio_importo_iva_euro := 0;
  vecchio_gen_codice_righe := '';
  vecchio_tiv_codice_righe := '';
  vecchio_saldo_acconto := '';
  vecchio_situazione_righe := '';
  vecchio_cms_codice := '';
  vecchio_tipologia := '';
end;

procedure tgesven.assegna_vecchio_righe;
begin
  vecchio_sequenza := tabella_righe.fieldbyname('sequenza').asinteger;
  vecchio_art_codice := tabella_righe.fieldbyname('art_codice').asstring;
  vecchio_tma_codice_righe := tabella_righe.fieldbyname('tma_codice').asstring;
  vecchio_numero_colli := tabella_righe.fieldbyname('numero_colli').asinteger;
  vecchio_numero_confezioni := tabella_righe.fieldbyname('numero_confezioni').asinteger;
  vecchio_quantita := tabella_righe.fieldbyname('quantita').asfloat;
  vecchio_quantita_base := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
  vecchio_quantita_approntata := tabella_righe.fieldbyname('quantita_approntata').asfloat;
  vecchio_prezzo := tabella_righe.fieldbyname('prezzo').asfloat;
  vecchio_tsm_codice_righe := tabella_righe.fieldbyname('tsm_codice').asstring;
  vecchio_tsm_codice_art := tabella_righe.fieldbyname('tsm_codice_art').asstring;
  vecchio_importo_sconto_righe := tabella_righe.fieldbyname('importo_sconto').asfloat;
  vecchio_tipo_movimento := tabella_righe.fieldbyname('tipo_movimento').asstring;
  vecchio_importo := tabella_righe.fieldbyname('importo').asfloat;
  vecchio_importo_euro := tabella_righe.fieldbyname('importo_euro').asfloat;
  vecchio_importo_iva := tabella_righe.fieldbyname('importo_iva').asfloat;
  vecchio_importo_iva_euro := tabella_righe.fieldbyname('importo_iva_euro').asfloat;
  vecchio_gen_codice_righe := tabella_righe.fieldbyname('gen_codice').asstring;
  vecchio_tiv_codice_righe := tabella_righe.fieldbyname('tiv_codice').asstring;
  vecchio_saldo_acconto := tabella_righe.fieldbyname('saldo_acconto').asstring;
  vecchio_situazione_righe := tabella_righe.fieldbyname('situazione').asstring;
  vecchio_cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
  vecchio_tipologia := tabella_righe.fieldbyname('tipologia').asstring;
end;

procedure tgesven.abilitazioni_righe;
begin
  esistenza_deposito.close;
  esistenza_totale.close;
  esistenza_principale.close;

  abilita_art_codice;

  abilita_tma_codice_righe;
  abilita_tiv_codice_righe;
  abilita_gen_codice_righe;

  attiva_importo;
  abilita_bottoni(true);

  if tabella_righe.fieldbyname('documento_origine').asstring = '' then
  begin
    v_gestione_collegato.enabled := false;
  end
  else
  begin
    v_gestione_collegato.enabled := true;
  end;

  // if (screen.activecontrol = v_griglia_righe) and (genera_rda_ordini_vendita = 'si') then
  if screen.activecontrol = v_griglia_righe then
  begin
    abilita_annulla_rda;
  end;

  if esiste and (tipo_documento = 'fattura immediata') and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') then
  begin
    v_acconto.enabled := true;
  end
  else
  begin
    v_acconto.enabled := false;
  end;

  if fileexists(cartella_file + '\' + 'preventivi' + '\' +
    tabella_righe.fieldbyname('progressivo').asstring + '-' + tabella_righe.fieldbyname('riga').asstring + '.rtf') then
  begin
    v_note_righe.readonlycolor := cllime;
  end
  else
  begin
    v_note_righe.readonlycolor := clbtnface;
  end;
end;

procedure tgesven.abilita_annulla_rda;
begin
  query_abilita_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_abilita_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_abilita_rda.close;
  query_abilita_rda.open;
  if query_abilita_rda.isempty then
  begin
    v_annulla_rda.enabled := false;
  end
  else
  begin
    v_annulla_rda.enabled := true;
  end;
end;

procedure TGESVEN.v_preventivo_clienteClick(Sender: TObject);
var
  cli_codice, tdo_codice: variant;
  esiste_numerazione_cnt: boolean;
  progressivo_cnt: double;
begin
  inherited;

  cli_codice := '';
  esegui_visarc(arc.arcdit, 'CLI', 'CLI', cli_codice, '', '', '', '', '', '');
  if cli_codice <> '' then
  begin
    tdo_codice := '';
    esegui_visarc(arc.arcdit, 'TDO', 'TDV', tdo_codice, 'preventivo', '', '', '', '', '');
    if tdo_codice <> '' then
    begin
      messaggio(100, 'vengono modificati data, numero e serie documento');

      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cli_codice').asstring := cli_codice;
        tabella.fieldbyname('indirizzo').asstring := '';

        tabella.fieldbyname('tdo_codice').asstring := tdo_codice;
        read_tabella(arc.arcdit, 'tdo', 'codice', tdo_codice);

        tabella.fieldbyname('tipo_documento').asstring := archivio.fieldbyname('tipo_documento').asstring;
        tabella.fieldbyname('serie_documento').asstring := archivio.fieldbyname('numerazione').asstring;
        tabella.fieldbyname('data_documento').asdatetime := date;

        esiste_numerazione_cnt := true;
        while esiste_numerazione_cnt do
        begin
          arc.assegna_numerazione(arc.arcdit, 'PREVENTIVI CLIENTI', tabella.fieldbyname('serie_documento').asstring,
            tabella.fieldbyname('data_documento').asdatetime, progressivo_cnt, true, false);
          tabella.fieldbyname('numero_documento').asfloat := progressivo_cnt;

          if arc.esistenza_documento('pvt', tabella.fieldbyname('serie_documento').asstring, '',
            tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('numero_documento').asfloat,
            tabella.fieldbyname('progressivo').asinteger) then
          begin
            progressivo_cnt := 0;
          end
          else
          begin
            esiste_numerazione_cnt := false;
          end;
        end;

        tabella.post;
      end;

      tabella.cancel;

      esci;
    end;
  end;
end;

procedure TGESVEN.v_prezzoChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure tgesven.v_prezzoenter(sender: tobject);
begin
  inherited;
  variato_importo := arrotonda(v_prezzo.value, 6);
  if (v_quantita.value <> 0) and (v_prezzo.value = 0) then
  begin
    cerca_prezzo;
    calcola_importo;
  end;
end;

procedure tgesven.v_art_codiceexit(sender: tobject);
var
  stringa: string;
  evasione: boolean;

  prosegui: boolean;
  fvr: tmyquery_go;
begin
  inherited;

  abilita_tma_codice_righe;
  abilita_tiv_codice_righe;
  abilita_gen_codice_righe;

  disabilita_campo(v_artp);

  if controllo then
  begin
    prosegui := true;
    if not esiste_righe and (tipo_documento = 'nota credito') and (v_art_codice.text <> '') then
    begin
      fvr := tmyquery_go.create(nil);
      fvr.connection := arc.arcdit;
      fvr.sql.text := 'select id from fvr where left(documento_origine, 7) = ''fattura'' ' +
        'and progressivo = ' + tabella.fieldbyname('progressivo').asstring;
      fvr.open;
      if not fvr.isempty then
      begin
        messaggio(200, 'il documento è stato utilizzato per l''accredito automatico di fatture' + #13 +
          'e non può contenere altri tipi di accredito');
        prosegui := false;
      end;
      freeandnil(fvr);
    end;

    if not prosegui then
    begin
      fuoco(v_art_codice);
      abort;
    end
    else
    begin
      if not esiste_righe and (v_art_codice.text <> '') then
      begin
        if tdo.fieldbyname('controllo_accessori_equivalenti').asstring = 'si' then
        begin
          accessori_equivalenti.close;
          accessori_equivalenti.parambyname('art_codice').asstring := v_art_codice.text;
          accessori_equivalenti.open;
          if accessori_equivalenti.fieldbyname('accessori').asstring = 'si' then
          begin
            messaggio(100, 'sono presenti accessori per l''articolo');
          end;
          if accessori_equivalenti.fieldbyname('equivalenti').asstring = 'si' then
          begin
            messaggio(100, 'sono presenti articoli equivalenti per l''articolo');
          end;
        end;
      end;

      if (cli.fieldbyname('presenza_articoli').asstring = 'si') then
      begin
        query_referenze_attive.parambyname('cli_codice').asstring := v_cli_codice.text;
        query_referenze_attive.parambyname('art_codice').asstring := v_art_codice.text;
        query_referenze_attive.close;
        query_referenze_attive.open;
        if query_referenze_attive.isempty then
        begin
          if messaggio(300, 'l''articolo non è mai stato ordinato precedentemente dal cliente' + #13 +
            'proseguire nell''inserimento della riga documento') <> 1 then
          begin
            v_art_codice.setfocus;
            abort;
          end;
        end;
      end;
      if (tabella_righe.fieldbyname('situazione').asstring <> 'inserito') and
        (v_art_codice.text <> vecchio_art_codice) then
      begin
        messaggio(000, 'non è consentito variare il codice articolo per un documento già processato');
        v_art_codice.setfocus;
        abort;
      end
      else
      begin
        if trim(v_art_codice.text) = '' then
        begin
          if not esiste_righe then
          begin
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('art_codice').asstring := '';
            end;
          end;

          esistenza_deposito.close;
          esistenza_totale.close;
          esistenza_principale.close;

          abilita_art_codice;
          assegna_valore_art_codice;
        end
        else
        begin
          esegui_esistenza(tabella_righe.fieldbyname('tma_codice').asstring);

          art_codice_controllo(true);

          if ((tabella_righe.state = dsinsert) or (variato_stringa <> v_art_codice.text)) and not art.isempty then
          begin
            variato_articolo;
          end;
          // end;
        end;
      end;

      if tdo.fieldbyname('controllo_articoli_doppi').asstring = 'si' then
      begin
        art_doppi.close;
        art_doppi.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
        art_doppi.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
        art_doppi.parambyname('art_codice').asstring := v_art_codice.text;
        art_doppi.open;
        if not art_doppi.isempty then
        begin
          messaggio(200, 'l''articolo è già stato inserito alla riga ' + art_doppi.fieldbyname('riga').asstring);
        end;
      end;

      if not esiste_righe and (lot_codice_fisso <> '') then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('lotto').asstring := lot_codice_fisso;
        end;
      end;

      if (not esiste_righe) and (v_art_codice.text <> '') and (art.fieldbyname('visualizza_note_vendite').asstring = 'si') and
        (art.fieldbyname('note').asstring <> '') then
      begin
        messaggio(100, art.fieldbyname('note').asstring);
      end;

      if (v_art_codice.text <> '') and (art.fieldbyname('input_descrizione').asstring = 'si') then
      begin
        v_descrizione1_riga.setfocus;
      end;

      if (controllo_articolo_livello_superiore = 'si') and (not esiste_righe) and (trim(v_art_codice.text) <> '') then
      begin
        art_preventivi_ordini.sql.clear;

        if (tipo_documento = 'ordine') then
        begin
          art_preventivi_ordini.sql.add('select pvt.tipo_documento, pvr.art_codice, pvr.quantita, pvr.prezzo,');
          art_preventivi_ordini.sql.add('pvr.tsm_codice, pvr.tsm_codice_art, pvr.importo_sconto, pvr.importo');
          art_preventivi_ordini.sql.add('from pvr');
          art_preventivi_ordini.sql.add('inner join pvt on pvt.progressivo = pvr.progressivo');
          art_preventivi_ordini.sql.add('where pvr.art_codice = :art_codice');
          art_preventivi_ordini.sql.add('and (pvr.situazione = ''inserito'' or pvr.situazione = ''evaso parziale'')');
          art_preventivi_ordini.sql.add('and pvt.cli_codice = :cli_codice');
          art_preventivi_ordini.sql.add('and (pvt.data_validita >= :data_documento or pvt.data_validita is null)');

          art_preventivi_ordini.parambyname('data_documento').asdate := v_data_documento.date;
        end
        else
        begin
          art_preventivi_ordini.sql.add('select ovt.tipo_documento, ovr.art_codice, ovr.quantita, ovr.prezzo,');
          art_preventivi_ordini.sql.add('ovr.tsm_codice, ovr.tsm_codice_art, ovr.importo_sconto, ovr.importo');
          art_preventivi_ordini.sql.add('from ovr');
          art_preventivi_ordini.sql.add('inner join ovt on ovt.progressivo = ovr.progressivo');
          art_preventivi_ordini.sql.add('where ovr.art_codice = :art_codice');
          art_preventivi_ordini.sql.add('and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')');
          art_preventivi_ordini.sql.add('and ovt.cli_codice = :cli_codice');

          art_preventivi_ordini.sql.add('union all');

          art_preventivi_ordini.sql.add('select pvt.tipo_documento, pvr.art_codice, pvr.quantita, pvr.prezzo,');
          art_preventivi_ordini.sql.add('pvr.tsm_codice, pvr.tsm_codice_art, pvr.importo_sconto, pvr.importo');
          art_preventivi_ordini.sql.add('from pvr');
          art_preventivi_ordini.sql.add('inner join pvt on pvt.progressivo = pvr.progressivo');
          art_preventivi_ordini.sql.add('where pvr.art_codice = :art_codice');
          art_preventivi_ordini.sql.add('and (pvr.situazione = ''inserito'' or pvr.situazione = ''evaso parziale'')');
          art_preventivi_ordini.sql.add('and pvt.cli_codice = :cli_codice');
          art_preventivi_ordini.sql.add('and (pvt.data_validita >= :data_documento or pvt.data_validita is null)');

          art_preventivi_ordini.parambyname('data_documento').asdate := v_data_documento.date;
        end;

        art_preventivi_ordini.close;
        art_preventivi_ordini.parambyname('art_codice').asstring := v_art_codice.text;
        art_preventivi_ordini.parambyname('cli_codice').asstring := v_cli_codice.text;
        art_preventivi_ordini.open;
        if not art_preventivi_ordini.eof then
        begin
          evasione := false;
          stringa := 'documenti del cliente non ancora evasi per l''articolo ' + v_art_codice.text + slinebreak;
          while not art_preventivi_ordini.eof do
          begin
            stringa := stringa + slinebreak + art_preventivi_ordini.fieldbyname('tipo_documento').asstring + '  ' +
              'qtà: ' + art_preventivi_ordini.fieldbyname('quantita').asstring + ' ' +
              'prz: ' + art_preventivi_ordini.fieldbyname('prezzo').asstring + ' ' +
              'sc: ' + art_preventivi_ordini.fieldbyname('tsm_codice').asstring + ' ' +
              art_preventivi_ordini.fieldbyname('tsm_codice_art').asstring + ' ' +
              formatfloat('#.##', art_preventivi_ordini.fieldbyname('importo_sconto').asfloat) + ' ' +
              'imp: ' + formatfloat('#.##', art_preventivi_ordini.fieldbyname('importo').asfloat);

            art_preventivi_ordini.next;
          end;

          stringa := stringa + slinebreak + slinebreak + 'conferma per eseguire l''evasione';

          if messaggio(300, stringa) = 1 then
          begin
            evasione := true;
          end;

          if evasione then
          begin
            variato_stringa := v_art_codice.text;

            evasione_preventivo_ordine := true;
            art_codice_evasione_preventivo_ordine := v_art_codice.text;
            tabella_righe.cancel;
            tasto_esc := true;
            esci;
          end;
        end;
      end;

      //  tenere questo pezzo per ultimo (per lettura barcode keypress in griglia)
      if not esiste_righe then
      begin
        if letto_barcode_articolo then
        begin
          if tabella_edit(tabella_righe) then
          begin
            if arc.dit.fieldbyname('barcode_quantita_unitaria').asstring = 'si' then
            begin
              if quantita_barcode_articolo <> 0 then
              begin
                tabella_righe.fieldbyname('quantita').asfloat := quantita_barcode_articolo;

                variato_importo := 0;
                processa_quantita;

                cerca_prezzo;
                calcola_importo;
                pannello_righeexit(pannello_righe);
                v_griglia_righe.setfocus;
              end;
            end;
          end;
        end
        else if codice_barre_quantita <> 0 then
        begin
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('quantita').asfloat := codice_barre_quantita;
            cerca_prezzo;
            calcola_importo;
            pannello_righeexit(pannello_righe);
            v_griglia_righe.setfocus;
          end;
        end;

      end;
      if not esiste_righe and (v_art_codice.text <> '') and (tdo.fieldbyname('esistenza_cls').asstring = 'si') then
      begin
        esistenza_cls.close;
        esistenza_cls.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
        esistenza_cls.parambyname('art_codice').asstring := v_art_codice.text;
        esistenza_cls.open;
        if esistenza_cls.isempty then
        begin
          if messaggio(304, 'l''articolo non esiste nei listini sconti clienti' + #13 +
            'confermare per proseguire') <> 1 then
          begin
            fuoco(v_art_codice);
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.variato_articolo;
var
  importo_netto: double;
  prezzo_inventario: double;
  valorizzazione: string;
begin
  variato_provvigioni := true;

  if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
  begin
    messaggio(000, 'prestare attenzione alla variazione del codice articolo' + #13 +
      'la riga fa riferimento ad un ' + tabella_righe.fieldbyname('documento_origine').asstring);
  end;

  abilita_art_codice;
  assegna_art_codice;
  assegna_tum_quantita_base;
  esegui_controllo_esistenza;

  assegna_tiv_codice_righe;
  assegna_gen_codice;

  if (art.fieldbyname('tipo_articolo').asstring = 'fuori listino') and (tabella_righe.fieldbyname('artp_codice').asstring <> '') then
  begin
    artp.close;
    artp.parambyname('codice').asstring := tabella_righe.fieldbyname('artp_codice').asstring;
    artp.open;
    tabella_righe.fieldbyname('descrizione1').asstring := artp.fieldbyname('descrizione1').asstring;
    tabella_righe.fieldbyname('descrizione2').asstring := artp.fieldbyname('descrizione2').asstring;
    tabella_righe.fieldbyname('tum_codice').asstring := artp.fieldbyname('tum_codice').asstring;
    tabella_righe.fieldbyname('tiv_codice').asstring := artp.fieldbyname('tiv_codice_vendite').asstring;
    tabella_righe.fieldbyname('prezzo').asfloat := artp.fieldbyname('prezzo_acquisto').asfloat;
    tabella_righe.fieldbyname('tsm_codice').asstring := artp.fieldbyname('tsm_codice').asstring;
  end;

  cerca_prezzo;

  calcola_importo;
  assegna_provvigioni;
  attiva_importo;

  visualizza_descrizioni_righe;
end;

procedure tgesven.assegna_peso_netto;
begin
  if art.fieldbyname('peso_netto').asfloat <> 0 then
  begin
    tabella_righe.fieldbyname('peso_netto_riga').asfloat := arrotonda
      (art.fieldbyname('peso_netto').asfloat * tabella_righe.fieldbyname('tum_quantita_base').asfloat, 4);
  end;
end;

procedure tgesven.assegna_tum_quantita_base;
var
  decimali: word;
begin
  if tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_vendite').asstring then
  begin
    if tabella_edit(tabella_righe) then
    begin
      decimali := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
      if art.fieldbyname('operazione_coefficiente_ven').asstring = '*' then
      begin
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat *
          art.fieldbyname('tum_coefficiente_vendite').asfloat, decimali);
      end
      else
      begin
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat /
          art.fieldbyname('tum_coefficiente_vendite').asfloat, decimali);
      end;
    end;
  end
  else if (tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_acquisti').asstring) and
    (tipo_documento = 'ddt fornitori') then
  begin
    if tabella_edit(tabella_righe) then
    begin
      decimali := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
      if art.fieldbyname('operazione_coefficiente_acq').asstring = '*' then
      begin
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat *
          art.fieldbyname('tum_coefficiente_acquisti').asfloat, decimali);
      end
      else
      begin
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda(tabella_righe.fieldbyname('quantita').asfloat /
          art.fieldbyname('tum_coefficiente_acquisti').asfloat, decimali);
      end;
    end;
  end
  else
  begin
    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
    end;
  end;
  assegna_peso_netto;
end;

procedure tgesven.cerca_prezzo;
var
  prezzo_cot: boolean;
  cambia_prezzo: boolean;
begin
  cambia_prezzo := false;
  prezzo_cot := false;
  if tabella.fieldbyname('codice_contratto').asstring <> '' then
  begin
    prezzo_cot := true;
    if v_art_codice.text <> '' then
    begin
      cerca_prezzo_documento('', tabella_righe);
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
        tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
        tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
        tabella_righe.fieldbyname('importo_sconto').asfloat := importo_sconto;
      end;

      tsm_codice := '';
      quantita_base_contratti := 0;
      quantita_omaggio_contratti := 0;

      cod.close;
      cod.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
      cod.parambyname('codice_contratto').asstring := tabella.fieldbyname('codice_contratto').asstring;

      // articolo
      cod.parambyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
      cod.parambyname('tcm_codice').asstring := '';
      cod.parambyname('tgm_codice').asstring := '';
      cod.parambyname('tsa_codice').asstring := '';
      cod.parambyname('ts3_codice').asstring := '';
      cod.open;

      if not cod.isempty then
      begin
        tsm_codice := cod.fieldbyname('tsm_codice').asstring;
        quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
        quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
      end
      else
      begin
        cod.close;
        cod.parambyname('art_codice').asstring := '';
        cod.parambyname('tcm_codice').asstring := art.fieldbyname('tcm_codice').asstring;
        cod.parambyname('tgm_codice').asstring := '';
        cod.parambyname('tsa_codice').asstring := '';
        cod.parambyname('ts3_codice').asstring := '';
        cod.open;
        if not cod.isempty then
        begin
          tsm_codice := cod.fieldbyname('tsm_codice').asstring;
          quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
          quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
        end
        else
        begin
          cod.close;
          cod.parambyname('art_codice').asstring := '';
          cod.parambyname('tcm_codice').asstring := '';
          cod.parambyname('tgm_codice').asstring := art.fieldbyname('tgm_codice').asstring;
          cod.parambyname('tsa_codice').asstring := '';
          cod.parambyname('ts3_codice').asstring := '';
          cod.open;
          if not cod.isempty then
          begin
            tsm_codice := cod.fieldbyname('tsm_codice').asstring;
            quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
            quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
          end
          else
          begin
            cod.close;
            cod.parambyname('art_codice').asstring := '';
            cod.parambyname('tcm_codice').asstring := '';
            cod.parambyname('tgm_codice').asstring := '';
            cod.parambyname('tsa_codice').asstring := art.fieldbyname('tsa_codice').asstring;
            cod.parambyname('ts3_codice').asstring := '';
            cod.open;
            if not cod.isempty then
            begin
              tsm_codice := cod.fieldbyname('tsm_codice').asstring;
              quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
              quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
            end
            else
            begin
              cod.close;
              cod.parambyname('art_codice').asstring := '';
              cod.parambyname('tcm_codice').asstring := '';
              cod.parambyname('tgm_codice').asstring := '';
              cod.parambyname('tsa_codice').asstring := '';
              cod.parambyname('ts3_codice').asstring := art.fieldbyname('ts3_codice').asstring;
              cod.open;
              if not cod.isempty then
              begin
                tsm_codice := cod.fieldbyname('tsm_codice').asstring;
                quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
                quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
              end
              else
              begin
                if tabella.fieldbyname('nostro_riferimento').asstring <> '' then
                begin
                  messaggio(200, 'non esistono condizioni contrattuali specifiche per l''articolo' + #13 +
                    'verranno applicate le condizioni normali di vendita');
                  prezzo_cot := false;
                end;
              end;
            end;
          end;
        end;
      end;

      tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;

      // verifica corsi
      if cod.fieldbyname('corso_formazione').asstring = 'si' then
      begin
        corsi.close;
        corsi.parambyname('art_codice').asstring := cod.parambyname('art_codice').asstring;
        corsi.parambyname('tcm_codice').asstring := cod.parambyname('tcm_codice').asstring;
        corsi.parambyname('tgm_codice').asstring := cod.parambyname('tgm_codice').asstring;
        corsi.parambyname('tsa_codice').asstring := cod.parambyname('tsa_codice').asstring;
        corsi.parambyname('ts3_codice').asstring := cod.parambyname('ts3_codice').asstring;
        corsi.parambyname('anno').asinteger := cod.fieldbyname('anno').asinteger;
        corsi.open;
        if corsi.fieldbyname('numero_corsi').asinteger >= cod.fieldbyname('numero_corsi').asinteger then
        begin
          messaggio(000, 'già erogati ' + inttostr(corsi.fieldbyname('numero_corsi').asinteger) + ' corsi ' +
            'a fronte dei ' + inttostr(cod.fieldbyname('numero_corsi').asinteger) + ' previsti contrattualmente');
          v_art_codice.setfocus;
          abort;
        end;
      end;
    end
    else
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := 0;
        tabella_righe.fieldbyname('tsm_codice').asstring := '';
      end;
    end;

    tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
    tsm_codice_righe_controllo(false);
    tsm_codice_art_controllo(false);
  end;

  if not prezzo_cot then
  begin
    if tipo_documento = 'ddt fornitori' then
    begin
      frn_rda.close;
      frn_rda.parambyname('codice').asstring := art.fieldbyname('frn_codice').asstring;
      frn_rda.open;

      cerca_prezzo_documento('fornitore', tabella_righe);
    end
    else
    begin
      cerca_prezzo_documento('', tabella_righe);
    end;

    if not esiste_righe then
    begin
      cambia_prezzo := true;
    end
    else
    begin
      if esiste_righe and
        ((tabella_righe.fieldbyname('prezzo').asfloat <> prezzo) or
        (tabella_righe.fieldbyname('tsm_codice').asstring <> tsm_codice) or
        (tabella_righe.fieldbyname('tsm_codice_art').asstring <> tsm_codice_art) or
        (tabella_righe.fieldbyname('importo_sconto').asfloat <> importo_sconto)) then
      begin
        if messaggio(304, 'le condizioni di vendita sono variate rispetto a quelle memorizzate in precedenza' + #13 +
          'conferma per assegnare le nuove condizioni' + #13 +
          'la variazione comporterà comunque il ricalcolo delle provvigioni') = 1 then
        begin
          cambia_prezzo := true;
        end;
      end;
    end;
    if cambia_prezzo then
    begin
      try
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
          tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
          tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
          tabella_righe.fieldbyname('importo_sconto').asfloat := importo_sconto;

          assegna_prezzo_netto(decimali_max_prezzo, tag.fieldbyname('prezzo_netto_sconti').asstring, tabella_righe);
        end;
      except
      end;
      tsm_codice_righe_controllo(false);
      tsm_codice_art_controllo(false);
    end;
  end;
end;

procedure tgesven.assegna_decimali_quantita;
begin
  if not art.eof then
  begin
    cifre_decimali_quantita := decimali_quantita_art(art.fieldbyname('codice').asstring);
  end;
end;

procedure tgesven.art_codice_controllo(blocco: boolean);
begin
  if blocco and esiste_righe and (vecchio_art_codice <> v_art_codice.text) and (tdo.fieldbyname('rma').asstring = 'si') then
  begin
    messaggio(000, 'nei documenti che gestiscono le RMA non è consentito variare il codice articolo' + #13 +
      'cancellare la riga e ricaricarla');
    v_art_codice.setfocus;
    abort;
  end
  else
  begin
    if trim(v_art_codice.text) = '' then
    begin
      art.close;
      art.params[0].asstring := v_art_codice.text;
      art.open;

      if controllo then
      begin
        esistenza_deposito.close;
        esistenza_totale.close;
        esistenza_principale.close;
      end;
    end
    else
    begin
      tabella_controllo(false, art, v_art_codice, blocco, nil, nil, tabella_righe);

      if controllo then
      begin
        if blocco then
        begin
          if copy(tipo_documento, 1, 10) <> 'preventivo' then
          begin
            if art.fieldbyname('tipo_articolo').asstring = 'fuori listino' then
            begin
              messaggio(000, 'gli articoli fuori listino sono consentiti solo nei preventivi');
              v_art_codice.setfocus;
              abort;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.esegui_esistenza(tma_codice: string);
begin
  esistenza_deposito.close;
  esistenza_deposito.parambyname('art_codice').asstring := v_art_codice.text;
  esistenza_deposito.parambyname('tma_codice').asstring := tma_codice;
  esistenza_deposito.parambyname('tdo_codice').asstring := v_tdo_codice.text;
  esistenza_deposito.open;

  esistenza_totale.close;
  esistenza_totale.parambyname('art_codice').asstring := v_art_codice.text;
  esistenza_totale.parambyname('tdo_codice').asstring := v_tdo_codice.text;
  esistenza_totale.open;

  esistenza_principale.close;
  esistenza_principale.parambyname('art_codice').asstring := v_art_codice.text;
  esistenza_principale.parambyname('tma_codice').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
  esistenza_principale.parambyname('tdo_codice').asstring := v_tdo_codice.text;
  esistenza_principale.open;
end;

procedure tgesven.esegui_controllo_esistenza;
var
  prosegui, mancante: boolean;
  tma_codice: string;

  pr: tanaequ;
begin
  if tabella_righe.fieldbyname('tma_codice').asstring <> '' then
  begin

    prosegui := true;

    if (tipo_documento = 'ordine') and (tabella_righe.fieldbyname('tma_codice').asstring <> '') then
    begin
      tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
    end
    else
    begin
      if tmo.fieldbyname('esistenza').asstring = 'decrementa' then
      begin
        tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
      end
      else if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
      begin
        read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice_collegato').asstring);
        if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
        begin
          tma_codice := tabella_righe.fieldbyname('tma_codice_collegato').asstring;
        end
        else
        begin
          prosegui := false;
        end;
      end
      else
      begin
        prosegui := false;
      end;
    end;

    if prosegui then
    begin
      if ((tdo.fieldbyname('controllo_esistenza').asstring = 'si') or (tdo.fieldbyname('blocco_mancanza_esistenza').asstring = 'si') or
        (tdo.fieldbyname('controllo_sottoscorta').asstring = 'si')) and (art.fieldbyname('tipo_articolo').asstring = 'fiscale') and
        (art.fieldbyname('kit').asstring = 'no') and
        (tabella_righe.fieldbyname('tum_quantita_base').asfloat <> 0) and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') then
      begin
        mancante := false;

        esegui_esistenza(tma_codice);
        read_tabella(art_quantita, vararrayof([tabella.fieldbyname('progressivo').asinteger, v_art_codice.text, tabella_righe.fieldbyname('tma_codice').asstring,
          tabella_righe.fieldbyname('riga').asinteger]));

        if (esistenza_deposito.active) and
          (arrotonda(esistenza_deposito.fieldbyname('esistenza').asfloat, 6) <
          arrotonda(art_quantita.fieldbyname('quantita').asfloat + tabella_righe.fieldbyname('tum_quantita_base').asfloat)) then
        begin
          mancante := true;
          if (tdo.fieldbyname('blocco_mancanza_esistenza').asstring = 'si') or (tdo.fieldbyname('controllo_esistenza').asstring = 'si') then
          begin
            messaggio(000, 'l''esistenza dell''articolo [' + esistenza_deposito.fieldbyname('esistenza').asstring +
              '] nel deposito [' + tma_codice + '] è inferiore alla quantità dell''articolo nel documento [' +
              formatfloat(formato_display_quantita, art_quantita.fieldbyname('quantita').asfloat +
              tabella_righe.fieldbyname('tum_quantita_base').asfloat) + ']');
            if tdo.fieldbyname('blocco_mancanza_esistenza').asstring = 'si' then
            begin
              if tabella_edit(tabella_righe) then
              begin
                tabella_righe.fieldbyname('quantita').asfloat := 0;
                tabella_righe.fieldbyname('tum_quantita_base').asfloat := 0;
              end;
              fuoco(v_quantita);
              abort;
            end;
          end;
        end;

        // controllo disponibilità
        if not mancante and (esistenza_deposito.active) and (tdo.fieldbyname('controllo_esistenza').asstring = 'si') and
          (esistenza_deposito.fieldbyname('esistenza').asfloat - esistenza_deposito.fieldbyname('impegnato').asfloat <= 0) then
        begin
          messaggio(200, 'l''esistenza [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('esistenza').asfloat) +
            '] al netto dell''impegnato [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('impegnato').asfloat) +
            '] nel deposito [' + tabella_righe.fieldbyname('tma_codice').asstring + '] è negativa o uguale a zero');
        end;

        // controllo sottoscorta
        if not mancante and (esistenza_deposito.active) and (tdo.fieldbyname('controllo_sottoscorta').asstring = 'si') and
          (esistenza_deposito.fieldbyname('esistenza').asfloat <= esistenza_deposito.fieldbyname('scorta_minima').asfloat) then
        begin
          messaggio(200, 'l''esistenza [' + formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('esistenza').asfloat) +
            '] nel deposito [' + tabella_righe.fieldbyname('tma_codice').asstring + '] è inferiore o uguale alla scorta minima [' +
            formatfloat(formato_display_quantita, esistenza_deposito.fieldbyname('scorta_minima').asfloat) + ']');
        end;

        if (mancante) and (controllo_equivalenti = 'si') then
        begin
          equ.close;
          equ.parambyname('art_codice').asstring := v_art_codice.text;
          equ.open;
          if not equ.isempty then
          begin
            pr := tanaequ.create(nil);
            if pr.esegui_form then
            begin
              pr.art_codice := v_art_codice.text;
              pr.tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
              pr.showmodal;
              if pr.art_codice_assegnato <> '' then
              begin
                if tabella_edit(tabella_righe) then
                begin
                  tabella_righe.fieldbyname('art_codice').asstring := pr.art_codice_assegnato;
                  art_codice_controllo(false);
                end;
                esegui_esistenza(tma_codice);
                variato_articolo;
              end;
            end;
            pr.free;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.calcola_importo(righe: tmyquery_go = nil);
var
  importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato: double;
begin
  if righe = nil then
  begin
    righe := tabella_righe;
  end;

  importo := righe.fieldbyname('importo').asfloat;
  importo_euro := righe.fieldbyname('importo_euro').asfloat;
  importo_iva := righe.fieldbyname('importo_iva').asfloat;
  importo_iva_euro := righe.fieldbyname('importo_iva_euro').asfloat;

  calcola_importo_documento(righe.fieldbyname('quantita').asfloat, righe.fieldbyname('prezzo').asfloat,
    tabella.fieldbyname('cambio').asfloat, righe.fieldbyname('importo_sconto').asfloat,
    'no', tabella.fieldbyname('listino_con_iva').asstring, codice_tum(righe.fieldbyname('art_codice').asstring),
    righe.fieldbyname('tiv_codice').asstring, righe.fieldbyname('tsm_codice').asstring,
    righe.fieldbyname('tsm_codice_art').asstring, importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato);

  if tabella_edit(tabella_righe) then
  begin
    righe.fieldbyname('importo').asfloat := importo;
    righe.fieldbyname('importo_euro').asfloat := importo_euro;
    righe.fieldbyname('importo_iva').asfloat := importo_iva;
    righe.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;
  end;
end;

procedure tgesven.v_numero_confezioniexit(sender: tobject);
var
  quantita: double;
begin
  inherited;
  if controllo then
  begin
    if variato_importo <> v_numero_confezioni.value then
    begin
      controllo_numero_confezioni_evase;

      calcola_quantita_confezioni;

      quantita := calcola_quantita_dimensioni(art, tabella_righe);
      if quantita <> 0 then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('quantita').asfloat := quantita;
        end;
      end;

      assegna_tum_quantita_base;
      esegui_controllo_esistenza;
    end;
  end;
end;

procedure tgesven.calcola_quantita_confezioni;
var
  variato_qta: double;
begin
  if not art.eof then
  begin
    variato_qta := tabella_righe.fieldbyname('quantita').asfloat;
    assegna_quantita_confezioni(tabella_righe, art, tdo, decimali_quantita_art(v_art_codice.text),
      'numero_colli', 'numero_confezioni', 'quantita');

    if tabella_righe.fieldbyname('quantita').asfloat <> variato_qta then
    begin
      controllo_quantita_evasa;
      cerca_prezzo;
      assegna_valore_prezzo;
      calcola_importo;
    end;
  end;
end;

procedure tgesven.v_quantitaexit(sender: tobject);
begin
  processa_quantita;
  if arc.dit.fieldbyname('modalita_kit').asstring <> 'kit' then
  begin
    if controllo and esiste_righe and (tabella_righe.fieldbyname('kit').asstring = 'pf') and
      (tabella_righe.fieldbyname('quantita').asfloat <> 0) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := 0;
      end;
    end;
  end;
end;

procedure tgesven.processa_quantita;
var
  annulla_variazione: boolean;
  pr: tsceltm;
  decimali: word;
  quantita_minima: double;
begin
  inherited;
  quantita_controllo;

  if controllo then
  begin
    if arrotonda(variato_importo, 4) <> arrotonda(v_quantita.value, 4) then
    begin
      variato_provvigioni := true;
    end;

    quantita_minima := qtamin.controllo_quantita_minima('C', tabella.fieldbyname('cli_codice').asstring, tabella_righe.fieldbyname('art_codice').asstring,
      tabella_righe.fieldbyname('quantita').asfloat);

    if not((tipo_documento = 'ddt fornitori') or (tipo_documento = 'nota credito') or (tabella_righe.fieldbyname('quantita').asfloat = 0)) and
      (quantita_minima <> 0) then
    begin
      messaggio(200, 'la quantità è inferiore alla quantità minima prevista [' + floattostr(quantita_minima) + ']');
    end;

    if art.fieldbyname('lotto_vendita').asfloat <> 0 then
    begin
      if arrotonda(v_quantita.value, 4) < arrotonda(art.fieldbyname('lotto_vendita').asfloat, 4) then
      begin
        messaggio(200, 'la quantità è inferiore al lotto di vendita: ' + formatfloat(formato_display_quantita, art.fieldbyname('lotto_vendita').asfloat));
      end;
    end;

    if arrotonda(v_quantita.value, 4) <> arrotonda(v_quantita.value, cifre_decimali_quantita) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := arrotonda
          (tabella_righe.fieldbyname('quantita').asfloat, cifre_decimali_quantita);
      end;
    end;

    if arrotonda(variato_importo, 4) <> arrotonda(v_quantita.value, 4) then
    begin
      variata_quantita;
      esegui_controllo_esistenza;
      annulla_variazione := false;
      if (approntato_da_sscc = 'si') and (esiste_righe) then
      begin
        ors.close;
        ors.parambyname('documento_origine').asstring := tipo_documento + ' ven';
        ors.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ors.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ors.open;
        if not ors.isempty then
        begin
          messaggio(000, 'la quantità non è modificabile perchè deriva da un approntamento sscc' + #13 +
            'cancellare la riga e rieseguire l''approntamento sscc');
          annulla_variazione := true;
        end;
      end;
      if annulla_variazione then
      begin
        tabella_righe.cancel;
        abort;
      end;
    end;

    if (trim(v_tmo_codice.text) <> '') and (trim(v_art_codice.text) <> '') and (not esiste_righe) then
    begin
      if (art.fieldbyname('lotti').asstring = 'si') and (lotti = 'si') and (gestione_lotto_singolo = 'si') then
      begin
        pr := tsceltm.create(nil);
        if pr.esegui_form then
        begin
          pr.art_codice := trim(v_art_codice.text);

          pr.quantita := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
          pr.lotto := codice_lotto_matricola_singolo;
          pr.tma_codice := trim(v_tma_codice.text);
          pr.tmo_codice := trim(v_tmo_codice.text);
          pr.cifre_decimali_quantita := cifre_decimali_quantita;
          pr.esiste_righe := esiste_righe;
          pr.showmodal;

          if pr.lotto <> codice_lotto_matricola_singolo then
          begin
            codice_lotto_matricola_singolo := pr.lotto;
          end;
          if tabella_edit(tabella_righe) then
          begin
            if tabella_righe.fieldbyname('tum_codice').asstring = art.fieldbyname('tum_codice_vendite').asstring then
            begin
              decimali := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
              if art.fieldbyname('operazione_coefficiente_ven').asstring = '/' then
              begin
                tabella_righe.fieldbyname('quantita').asfloat := arrotonda(pr.quantita *
                  art.fieldbyname('tum_coefficiente_vendite').asfloat, decimali);
              end
              else
              begin
                tabella_righe.fieldbyname('quantita').asfloat := arrotonda(pr.quantita /
                  art.fieldbyname('tum_coefficiente_vendite').asfloat, decimali);
              end;
            end
            else
            begin
              tabella_righe.fieldbyname('quantita').asfloat := pr.quantita;
            end;
            tabella_righe.fieldbyname('tum_quantita_base').asfloat := pr.quantita;
          end;
          controllo_quantita_evasa;
          assegna_valore_prezzo;
          calcola_importo;
          saldo_acconto_controllo;
        end;
        pr.free;
      end;
    end;
  end;
end;

procedure tgesven.quantita_controllo;
begin
  if controllo and (v_art_codice.text <> '') then
  begin
    if (tdo.fieldbyname('rma').asstring = 'si') and (v_quantita.value <> 1) and
      (arc.dit.fieldbyname('controllo_quantita_rma').asstring = 'si') then
    begin
      if messaggio(304, 'la quantità RMA non è unitaria' + #13 +
        'conferma per proseguire') <> 1 then
      begin
        if v_quantita.canfocus then
        begin
          v_quantita.setfocus;
        end;
        abort;
      end;
    end
    else
    begin
      if (v_quantita.value > 0) and (tabella_righe.fieldbyname('quantita_evasa').asfloat <> 0) and
        (v_quantita.value < tabella_righe.fieldbyname('quantita_evasa').asfloat) then
      begin
        messaggio(000, 'quantità inferiore alla quantità evasa');
        v_quantita.setfocus;
        abort;
      end
      else if (controllo_quantita = 'si') and (v_quantita.value = 0) and (v_importo.value = 0) then
      begin
        if messaggio(304, 'la quantità del documento è zero' + #13 +
          'si vuole proseguire ugualmente?') <> 1 then
        begin
          v_quantita.setfocus;
          abort;
        end;
      end;
    end;
  end;
end;

procedure tgesven.variata_quantita;
var
  numero1, numero2: double;
begin
  cerca_prezzo;

  assegna_tum_quantita_base;

  controllo_quantita_evasa;
  assegna_valore_prezzo;
  calcola_importo;
  saldo_acconto_controllo;

  if not art.eof then
  begin
    assegna_colli_confezioni(tabella_righe, art, 'quantita', 'numero_colli', 'numero_confezioni');

    if (tabella_righe.fieldbyname('numero_colli').asinteger <> 0) then
    begin
      controllo_numero_colli_evasi;
    end;

    if (tabella_righe.fieldbyname('numero_confezioni').asinteger <> 0) then
    begin
      controllo_numero_confezioni_evase;
    end;

    (*
      if (art.fieldbyname('quantita_collo').asfloat <> 0) then
      begin
      if tabella_edit(tabella_righe) then
      begin
      numero1 := v_quantita.value / art.fieldbyname('quantita_collo').asfloat;
      numero2 := arrotonda(v_quantita.value / art.fieldbyname('quantita_collo').asfloat, 0, 2);
      tabella_righe.fieldbyname('numero_colli').asinteger := trunc(numero2);
      end;
      if numero1 <> numero2 then
      begin
      messaggio(100, 'il numero colli non contiene la quantità intera');
      end;
      end;
      if (art.fieldbyname('pezzi_confezione').asfloat <> 0) then
      begin
      if tabella_edit(tabella_righe) then
      begin
      numero1 := v_quantita.value / art.fieldbyname('pezzi_confezione').asfloat;
      numero2 := arrotonda(v_quantita.value / art.fieldbyname('pezzi_confezione').asfloat, 0, 2);
      tabella_righe.fieldbyname('numero_confezioni').asinteger := trunc(numero2);
      end;
      if numero1 <> numero2 then
      begin
      messaggio(100, 'il numero confezioni non contiene la quantità intera');
      end;
      controllo_numero_confezioni_evase;
      end;
    *)
  end;
end;

procedure tgesven.controllo_quantita_evasa;
begin
end;

procedure tgesven.controllo_numero_colli_evasi;
begin
  if tabella_righe.fieldbyname('numero_colli').asinteger < tabella_righe.fieldbyname('numero_colli_evasi').asinteger then
  begin
    messaggio(000, 'il numero colli digitato [' + inttostr(tabella_righe.fieldbyname('numero_colli').asinteger) +
      '] è inferiore al numero_colli già evaso della riga [' +
      inttostr(tabella_righe.fieldbyname('numero_colli_evasi').asinteger) + ']');
    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('numero_colli').asinteger := vecchio_numero_colli;
    end;
  end
end;

procedure tgesven.controllo_numero_confezioni_evase;
begin
  if tabella_righe.fieldbyname('numero_confezioni').asinteger < tabella_righe.fieldbyname('numero_confezioni_evase').asinteger then
  begin
    messaggio(000, 'il numero confezioni digitato [' + inttostr(tabella_righe.fieldbyname('numero_confezioni').asinteger) +
      '] è inferiore al numero_confezioni già evaso della riga [' +
      inttostr(tabella_righe.fieldbyname('numero_confezioni_evase').asinteger) + ']');
    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('numero_confezioni').asinteger := vecchio_numero_confezioni;
    end;
  end
end;

procedure tgesven.assegna_valore_prezzo;
begin
end;

procedure tgesven.assegna_valore_tsm_codice_righe;
begin
  if controllo then
  begin
    if v_prezzo.value = 0 then
    begin
      if trim(v_tsm_codice_righe.text) <> '' then
      begin
        tabella_righe.fieldbyname('tsm_codice').asstring := '';
        calcola_importo;
      end;
      if trim(v_tsm_codice_art.text) <> '' then
      begin
        tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
        calcola_importo;
      end;
      if tabella_righe.fieldbyname('importo_sconto').asfloat <> 0 then
      begin
        tabella_righe.fieldbyname('importo_sconto').asfloat := 0;
        calcola_importo;
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tma_codice_righe;
begin
  if controllo then
  begin
    if trim(v_art_codice.text) = '' then
    begin
      tabella_righe.fieldbyname('tma_codice').asstring := '';
    end;
  end;
end;

procedure tgesven.v_prezzoexit(sender: tobject);
begin
  inherited;
  if controllo then
  begin
    if variato_importo <> v_prezzo.value then
    begin
      variato_provvigioni := true;
    end;

    if v_prezzo.enabled then
    begin
      if (controllo_prezzo = 'si') and (v_prezzo.value = 0) and (v_importo.value = 0) then
      begin
        messaggio(200, 'il prezzo inserito è zero');
      end;
    end;

    if arrotonda(v_prezzo.value, decimali_max_prezzo) <> arrotonda(v_prezzo.value, cifre_decimali_prezzo) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := arrotonda
          (tabella_righe.fieldbyname('prezzo').asfloat, cifre_decimali_prezzo);
      end;
    end;

    assegna_valore_prezzo;
    assegna_valore_tsm_codice_righe;

    if (variato_importo <> 0) and (v_prezzo.value = 0) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo').asfloat := 0;
      end;
    end;

    if arrotonda(variato_importo, decimali_max_prezzo) <> arrotonda(v_prezzo.value, decimali_max_prezzo) then
    begin
      calcola_importo;
    end;

    attiva_importo;
  end;
end;

procedure tgesven.attiva_importo;
begin
  if (v_prezzo.value <> 0) or (v_art_codice.text = '') then
  begin
    v_importo.enabled := false;
    v_importo.color := clbtnface;
  end
  else
  begin
    if parte_attiva = 'pannello_righe' then
    begin
      if tipo_documento <> 'ddt fornitori' then
      begin
        if importi_vendite = 'visualizza' then
        begin
          v_importo.enabled := false;
          v_importo.color := clbtnface;
        end
        else
        begin
          v_importo.enabled := true;
          v_importo.color := clwindow;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_tsm_codice_righeexit(sender: tobject);
begin
  inherited;

  if variato_stringa <> v_tsm_codice_righe.text then
  begin
    variato_provvigioni := true;
  end;

  if v_tsm_codice_righe.enabled then
  begin
    if controllo then
    begin
      assegna_valore_tsm_codice_righe;
      tsm_codice_righe_controllo(true);
      if variato_stringa <> v_tsm_codice_righe.text then
      begin
        calcola_importo;
      end;
    end;
  end;
end;

procedure TGESVEN.v_tsm_codice_righeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;
end;

procedure tgesven.tsm_codice_righe_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsm_righe, v_tsm_codice_righe, blocco, nil, nil, tabella_righe);
end;

procedure tgesven.v_importoexit(sender: tobject);
begin
  inherited;
  if controllo then
  begin
    if arrotonda(v_importo.value, 2) <> arrotonda(v_importo.value, cifre_decimali_importo) then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo').asfloat := arrotonda
          (tabella_righe.fieldbyname('importo').asfloat, cifre_decimali_importo);
      end;
    end;

    if arrotonda(variato_importo, 2) <> arrotonda(v_importo.value, 2) then
    begin
      if variato_importo <> v_importo.value then
      begin
        variato_provvigioni := true;
      end;

      calcola_importo;
      saldo_acconto_controllo;
    end;
  end;
end;

procedure tgesven.assegna_gen_codice(righe: tmyquery_go = nil);
var
  tca_codice, tcc_codice: string;
begin
  if righe = nil then
  begin
    righe := tabella_righe;
  end;

  if tabella.fieldbyname('tco_codice').asstring <> '' then
  begin
    tca_codice := '';
    tcc_codice := '';
    tcc_codice := cli.fieldbyname('tcc_codice').asstring;
    if tabella.fieldbyname('tcc_codice').asstring <> '' then
    begin
      tcc_codice := tabella.fieldbyname('tcc_codice').asstring;
    end;

    tca_codice := art.fieldbyname('tca_codice').asstring;
    if read_tabella(cpv, vararrayof([tabella.fieldbyname('tdo_codice').asstring, tcc_codice, tca_codice])) then
    begin
      if righe.fieldbyname('gen_codice').asstring <> cpv.fieldbyname('gen_codice').asstring then
      begin
        if tabella_edit(tabella_righe) then
        begin
          righe.fieldbyname('gen_codice').asstring := cpv.fieldbyname('gen_codice').asstring;
        end;
      end;
      if v_tipo_movimento.text = 'omaggio' then
      begin
        if righe.fieldbyname('gen_codice_storno').asstring <> cpv.fieldbyname('gen_codice_omaggi').asstring then
        begin
          if tabella_edit(tabella_righe) then
          begin
            righe.fieldbyname('gen_codice_storno').asstring := cpv.fieldbyname('gen_codice_omaggi').asstring;
          end;
        end;
      end
      else if v_tipo_movimento.text = 'sconto merce' then
      begin
        if righe.fieldbyname('gen_codice_storno').asstring <> cpv.fieldbyname('gen_codice_sconti').asstring then
        begin
          if tabella_edit(tabella_righe) then
          begin
            righe.fieldbyname('gen_codice_storno').asstring := cpv.fieldbyname('gen_codice_sconti').asstring;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if tabella_edit(tabella_righe) then
    begin
      righe.fieldbyname('gen_codice').asstring := '';
      righe.fieldbyname('gen_codice_storno').asstring := '';
    end;
  end;
end;

procedure tgesven.assegna_provvigioni(righe: tmyquery_go = nil);
var
  provvigioni, provvigioni_ca, importo_provvigioni: double;
  conteggio_su_margine: string;
begin
  if righe = nil then
  begin
    righe := tabella_righe;
  end;

  if arc.dit.fieldbyname('provvigioni_multilivello').asstring = 'no' then
  begin
    if not((righe.fieldbyname('art_codice').asstring = '') or (tipo_documento = 'ddt fornitori') or
      ((tipo_documento = 'ddt') or (tipo_documento = 'bolle')) and (tabella.fieldbyname('tdo_codice_differite').asstring = '')) then
    begin
      provv.assegna_provvigioni(tabella.fieldbyname('tag_codice').asstring,
        tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
        cli.fieldbyname('tp1_codice').asstring, righe.fieldbyname('art_codice').asstring,
        art.fieldbyname('tp2_codice').asstring, righe.fieldbyname('tipo_movimento').asstring,
        tabella.fieldbyname('tlv_codice').asstring,
        righe.fieldbyname('tum_quantita_base').asfloat, righe.fieldbyname('prezzo').asfloat,
        righe.fieldbyname('prezzo_netto').asfloat, righe.fieldbyname('importo').asfloat,
        provvigioni, provvigioni_ca, importo_provvigioni, conteggio_su_margine, tabella.fieldbyname('data_documento').asdatetime);

      if righe.fieldbyname('conteggio_su_margine').asstring <> conteggio_su_margine then
      begin
        if tabella_edit(tabella_righe) then
        begin
          righe.fieldbyname('conteggio_su_margine').asstring := conteggio_su_margine;
        end;
      end;

      if righe.fieldbyname('percentuale_provvigioni').asfloat <> provvigioni then
      begin
        if tabella_edit(tabella_righe) then
        begin
          righe.fieldbyname('percentuale_provvigioni').asfloat := provvigioni;
        end;
      end;

      if righe.fieldbyname('importo_provvigioni').asfloat <> importo_provvigioni then
      begin
        if tabella_edit(tabella_righe) then
        begin
          righe.fieldbyname('importo_provvigioni').asfloat := importo_provvigioni;
        end;
      end;

      if tabella.fieldbyname('tag_codice_ca').asstring = '' then
      begin
        if righe.fieldbyname('percentuale_provvigioni_ca').asfloat <> provvigioni_ca then
        begin
          if tabella_edit(tabella_righe) then
          begin
            righe.fieldbyname('percentuale_provvigioni_ca').asfloat := provvigioni_ca;
          end;
        end;
      end
      else
      begin
        provv.assegna_provvigioni(tabella.fieldbyname('tag_codice_ca').asstring,
          tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
          cli.fieldbyname('tp1_codice').asstring, righe.fieldbyname('art_codice').asstring,
          art.fieldbyname('tp2_codice').asstring, righe.fieldbyname('tipo_movimento').asstring,
          tabella.fieldbyname('tlv_codice').asstring,
          righe.fieldbyname('tum_quantita_base').asfloat, righe.fieldbyname('prezzo').asfloat,
          righe.fieldbyname('prezzo_netto').asfloat, righe.fieldbyname('importo').asfloat,
          provvigioni, provvigioni_ca, importo_provvigioni, conteggio_su_margine, tabella.fieldbyname('data_documento').asdatetime);

        if righe.fieldbyname('percentuale_provvigioni_ca').asfloat <> provvigioni then
        begin
          if tabella_edit(tabella_righe) then
          begin
            righe.fieldbyname('percentuale_provvigioni_ca').asfloat := provvigioni;
          end;
        end
      end;
    end;
    variato_provvigioni := false;
  end;
end;

procedure tgesven.assegna_tiv_codice_righe(righe: tmyquery_go = nil);
var
  tiv_codice: string;
begin
  tiv_codice := assegna_iva_vendite(art, cli, tabella);

  if righe = nil then
  begin
    righe := tabella_righe;
  end;

  if righe.fieldbyname('tiv_codice').asstring <> tiv_codice then
  begin
    if tabella_edit(righe) then
    begin
      righe.fieldbyname('tiv_codice').asstring := tiv_codice;
    end;
  end;
end;

procedure tgesven.tiv_codice_righe_controllo;
begin
  tabella_controllo(true, tiv_righe, v_tiv_codice_righe, blocco, nil, nil, tabella_righe);
end;

procedure tgesven.tiv_codice_righe_controllo_post;
begin
  if not v_tiv_codice_righe.readonly then
  begin
    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
      (tabella_righe.fieldbyname('tiv_codice').asstring = '') then
    begin
      messaggio(000, 'non è stato assegnato il codice iva vendite dell''articolo');
      fuoco(v_tiv_codice_righe);
      abort;
    end;
  end;
end;

procedure tgesven.tma_codice_righe_controllo;
begin
  tabella_controllo(true, tma_righe, v_tma_codice_righe, blocco, nil, nil, tabella_righe);
end;

procedure tgesven.tma_codice_righe_controllo_post;
begin
  if not v_tma_codice_righe.readonly then
  begin
    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
      (tabella_righe.fieldbyname('tma_codice').asstring = '') then
    begin
      messaggio(000, 'non è stato assegnato il codice deposito della riga');
      fuoco(v_tma_codice_righe);
      abort;
    end;
  end;
end;

procedure tgesven.gen_codice_righe_controllo;
begin
  tabella_controllo(true, gen_righe, v_gen_codice_righe, blocco, nil, nil, tabella_righe);
end;

procedure tgesven.gen_codice_righe_controllo_post;
begin
  if not v_gen_codice_righe.readonly then
  begin
    if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
      (tabella_righe.fieldbyname('gen_codice').asstring = '') then
    begin
      messaggio(000, 'non è stato assegnato il codice contropartita vendite dell''articolo');
      fuoco(v_gen_codice_righe);
      abort;
    end;
    if (tabella_righe.fieldbyname('tipo_movimento').asstring = 'omaggio') or
      (tabella_righe.fieldbyname('tipo_movimento').asstring = 'sconto merce') then
    begin
      if tabella_righe.fieldbyname('gen_codice_storno').asstring = '' then
      begin
        messaggio(000, 'non è stato assegnato il codice contropartita di storno' + #13 +
          'dell''omaggio o dello sconto merce' + #13 + #13 +
          'inserirlo nei dati aggiuntivi della riga');
        esegui_gesven02;
        fuoco(v_descrizione1);
        abort;
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_cambio;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('cambio').asfloat <> 1 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cambio').asfloat := 1;
      end;
    end;
  end
  else if v_tva_codice.text = divisa_di_conto then
  begin
    if v_cambio.value <> 1 then
    begin
      if tabella.fieldbyname('cambio').asfloat <> 1 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('cambio').asfloat := 1;
        end;
      end;
    end;
  end
  else
  begin
    if v_cambio.value = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cambio').asfloat := 1;
      end;
    end;
  end;
end;

procedure tgesven.v_cambioenter(sender: tobject);
begin
  inherited;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_tva_codice.text;
end;

procedure tgesven.v_cambioexit(sender: tobject);
begin
  inherited;
  if controllo then
  begin
    assegna_valore_cambio;
  end;
end;

procedure tgesven.v_causale_trasportoenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_causale_trasporto.text;
end;

procedure tgesven.v_cen_codiceexit(sender: tobject);
begin
  inherited;
  cen_codice_controllo(true);
end;

procedure TGESVEN.v_chiudi_documentoClick(Sender: TObject);
var
  prosegui: boolean;

  pr: timpalf;
begin
  inherited;

  if (tabella.fieldbyname('tdo_codice_differite').asstring <> '') and (tabella.fieldbyname('non_fatturare').asstring = 'no') then
  begin
    messaggio(200, 'il documento prevedere la fatturazione differita e non è settato il flag "no fattura"' + slinebreak +
      'spuntare il flag per procedere alla chiusura del documento');
  end
  else
  begin
    if messaggio(300, 'l''operazione di chiusura documento non è reversibile' + #13 + 'conferma per proseguire') = 1 then
    begin
      forzatura_modifica_cancellazione := true;

      prosegui := true;
      if tdo.fieldbyname('password_chiusura_documento').asstring <> '' then
      begin
        pr := timpalf.create(nil);
        pr.v_form_caption := 'Password per chiusura documento';
        pr.v_descrizione_caption := 'password';
        pr.v_width_campo := 20;
        pr.valore_passato := '';
        pr.tipo_campo := 'alfa';
        pr.campo_password := true;
        pr.showmodal;
        if pr.valore_passato <> tdo.fieldbyname('password_chiusura_documento').asstring then
        begin
          prosegui := false;
        end;
        pr.free;
      end;

      if prosegui then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('situazione').asstring := 'consolidato';
          tabella.post;
        end;
        tabella_righe.first;
        while not tabella_righe.eof do
        begin
          if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') or (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
          begin
            tabella_righe.edit;
            tabella_righe.fieldbyname('situazione').asstring := 'consolidato';
            tabella_righe.fieldbyname('note_interne').asstring := tabella_righe.fieldbyname('note_interne').asstring + #13 +
              'chiusura automatica eseguita dall''utente ' + utente + ' il ' + formatdatetime('dd/mm/yyyy hh:nn:ss', now);
            tabella_righe.post;
          end;

          tabella_righe.next;
        end;
        tabella_righe.first;
      end;
      forzatura_modifica_cancellazione := false;
    end;
  end;

  abilita_codice;
end;

procedure tgesven.cen_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cen, v_cen_codice, blocco, tab_control, tab_testata_analitica, tabella);
end;

procedure tgesven.tvc_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tvc, v_tvc_codice, blocco, tab_control, tab_testata_analitica, tabella);
end;

procedure tgesven.abilita_pannello_campi(attivo: boolean);
begin
  inherited;
  if ((tabella.fieldbyname('tipo_documento').asstring = 'ddt') or (tipo_documento = 'ddt fornitori') or
    (tabella.fieldbyname('tipo_documento').asstring = 'bolla')) and (tabella.fieldbyname('tdo_codice_differite').asstring = '') then
  begin
    v_addebito_spese_fattura.enabled := false;
  end
  else
  begin
    v_addebito_spese_fattura.enabled := true;
  end;
end;

procedure tgesven.abilita_tipo_documento;
begin
  v_non_fatturare.visible := false;
  v_data_inizio_competenza.enabled := false;
  v_data_fine_competenza.enabled := false;
  v_oscillazione_cambio.enabled := false;
  v_chiusura_commessa.enabled := false;
  v_chiusura_sottocommessa.enabled := false;
  v_stampa_prezzo.enabled := false;

  v_data_fine_competenza.color := clbtnface;
  v_data_inizio_competenza.color := clbtnface;

  //FRANCESCA
  if tipo_documento = 'fattura accompagnatoria' then
  begin
    v_data_inizio_competenza.enabled := true;
    v_data_inizio_competenza.color := clwindow;
    v_data_fine_competenza.enabled := true;
    v_data_fine_competenza.color := clwindow;
  end;

  v_tsm_codice.enabled := true;
  v_tsm_codice.color := clwindow;

  abilita_campo(v_tconai_codice);
  abilita_campo(v_no_conai);
  abilita_campo(v_tipo_imballaggio);
  abilita_campo(v_cli_codice_fatturazione);

  if not((tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
    (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) then
  begin
    rzlabel19.visible := false;
    v_situazione_sdi.visible := false;
    rzlabel21.visible := false;
    v_codice_esito_sdi.visible := false;

    v_storno_sdi.visible := false;
    v_setta_esito_sdi.visible := false;
  end;

  if copy(tipo_documento, 1, 7) = 'fattura' then
  begin
    abilita_campo(v_importo_incassato);
    abilita_campo(v_incasso_saldo);
  end
  else
  begin
    disabilita_campo(v_importo_incassato);
    disabilita_campo(v_incasso_saldo);
  end;

  if (tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo') then
  begin
    abilita_campo(v_importo_acconto);
    abilita_campo(v_versato_acconto);
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'bolla') then
  begin
    abilita_campo(v_importo_acconto);
    disabilita_campo(v_versato_acconto);
  end
  else
  begin
    disabilita_campo(v_importo_acconto);
    disabilita_campo(v_versato_acconto);
  end;

  if (tipo_documento = 'bolla') or (tipo_documento = 'ddt') or (copy(tipo_documento, 1, 7) = 'fattura') then
  begin
    v_chiusura_commessa.enabled := true;
    v_chiusura_sottocommessa.enabled := true;
  end;

  if (tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo') then
  begin
    v_l_accettato.visible := true;
    v_accettato.visible := true;
  end
  else
  begin
    if tabella.fieldbyname('situazione').asstring <> 'inserito' then
    // if esiste then
    begin
      v_tmo_codice.enabled := false;
      v_tmo_codice_collegato.enabled := false;
      v_tma_codice.enabled := false;
      v_tma_codice_collegato.enabled := false;

      v_tmo_codice.color := clbtnface;
      v_tmo_codice_collegato.color := clbtnface;
      v_tma_codice.color := clbtnface;
      v_tma_codice_collegato.color := clbtnface;
    end
    else
    begin
      v_tmo_codice.enabled := true;
      v_tmo_codice_collegato.enabled := true;
      v_tma_codice.enabled := true;
      v_tma_codice_collegato.enabled := true;

      v_tmo_codice.color := clwindow;
      v_tmo_codice_collegato.color := clwindow;
      v_tma_codice.color := clwindow;
      v_tma_codice_collegato.color := clwindow;
    end;
  end;

  if (tipo_documento = 'ddt') or (tipo_documento = 'bolla') or (tipo_documento = 'ddt fornitori') then
  begin
    abilita_tipo_documento_bolle_ddt;
  end
  else if tipo_documento = 'ordine' then
  begin
    v_data_validita.enabled := false;
    v_tmo_codice.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;

    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_minuto_inizio_trasporto.enabled := false;
    v_causale_trasporto.enabled := false;
    v_oscillazione_cambio.enabled := true;

    if (gen_codice_ritenuta = '') or (tco_codice_ritenuta = '') then
    begin
      v_fattura_professionisti.enabled := false;
      v_soggetto_addebito_enasarco.enabled := false;
      v_importo_enasarco.enabled := false;
      v_percentuale_cassa_professionist.enabled := false;
      v_importo_cassa_professionisti.enabled := false;
      v_tpe_codice.enabled := false;
      v_importo_ritenuta.enabled := false;
      v_ricevuto_certificazione.enabled := false;
      v_data_certificazione.enabled := false;

      v_importo_enasarco.color := clbtnface;
      v_percentuale_cassa_professionist.color := clbtnface;
      v_importo_cassa_professionisti.color := clbtnface;
      v_tpe_codice.color := clbtnface;
      v_importo_ritenuta.color := clbtnface;
      v_data_certificazione.color := clbtnface;
    end
    else
    begin
      v_fattura_professionisti.enabled := true;
      v_soggetto_addebito_enasarco.enabled := true;
      v_importo_enasarco.enabled := true;
      v_percentuale_cassa_professionist.enabled := true;
      v_importo_cassa_professionisti.enabled := true;
      v_tpe_codice.enabled := true;
      v_importo_ritenuta.enabled := true;
      v_ricevuto_certificazione.enabled := true;
      v_data_certificazione.enabled := true;

      v_importo_enasarco.color := clwindow;
      v_percentuale_cassa_professionist.color := clwindow;
      v_importo_cassa_professionisti.color := clwindow;
      v_tpe_codice.color := clwindow;
      v_importo_ritenuta.color := clwindow;
      v_data_certificazione.color := clwindow;
    end;

    v_data_validita.color := clbtnface;
    // v_mese_rettifica_intra.color := clbtnface;
    // v_trimestre_rettifica_intra.color := clbtnface;
    // v_anno_rettifica_intra.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;

    v_data_inizio_trasporto.color := clbtnface;
    v_ora_inizio_trasporto.color := clbtnface;
    v_minuto_inizio_trasporto.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
  end
  else if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    // v_data_consegna.enabled := false;
    // v_mese_rettifica_intra.enabled := false;
    // v_trimestre_rettifica_intra.enabled := false;
    // v_anno_rettifica_intra.enabled := false;
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_tab_codice.enabled := false;
    v_numero_colli.enabled := false;
    v_numero_confezioni_totali.enabled := false;
    v_volume.enabled := false;
    v_peso_lordo.enabled := false;
    v_peso_netto.enabled := false;
    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_minuto_inizio_trasporto.enabled := false;
    v_causale_trasporto.enabled := false;
    v_fattura_professionisti.enabled := false;
    v_soggetto_addebito_enasarco.enabled := false;
    v_importo_enasarco.enabled := false;
    v_percentuale_cassa_professionist.enabled := false;
    v_importo_cassa_professionisti.enabled := false;
    v_tpe_codice.enabled := false;
    v_importo_ritenuta.enabled := false;
    v_ricevuto_certificazione.enabled := false;
    v_data_certificazione.enabled := false;

    // v_data_consegna.color := clbtnface;
    // v_mese_rettifica_intra.color := clbtnface;
    // v_trimestre_rettifica_intra.color := clbtnface;
    // v_anno_rettifica_intra.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
    v_tab_codice.color := clbtnface;
    v_numero_colli.color := clbtnface;
    v_numero_confezioni_totali.color := clbtnface;
    v_volume.color := clbtnface;
    v_peso_lordo.color := clbtnface;
    v_peso_netto.color := clbtnface;
    v_data_inizio_trasporto.color := clbtnface;
    v_ora_inizio_trasporto.color := clbtnface;
    v_minuto_inizio_trasporto.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
    v_importo_enasarco.color := clbtnface;
    v_percentuale_cassa_professionist.color := clbtnface;
    v_importo_cassa_professionisti.color := clbtnface;
    v_tpe_codice.color := clbtnface;
    v_importo_ritenuta.color := clbtnface;
    v_data_certificazione.color := clbtnface;
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_tna_codice_intra.enabled := false;
    // v_mese_rettifica_intra.enabled := false;
    // v_trimestre_rettifica_intra.enabled := false;
    // v_anno_rettifica_intra.enabled := false;
    v_scadenziario_manuale.enabled := false;
    v_codice_abi.enabled := false;
    v_codice_cab.enabled := false;
    v_tba_codice.enabled := false;
    v_conto_corrente.enabled := false;
    v_cin.enabled := false;
    v_iban.enabled := false;
    v_bic.enabled := false;
    //v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_minuto_inizio_trasporto.enabled := false;
    v_causale_trasporto.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_fattura_professionisti.enabled := false;
    v_soggetto_addebito_enasarco.enabled := false;
    v_importo_enasarco.enabled := false;
    v_percentuale_cassa_professionist.enabled := false;
    v_importo_cassa_professionisti.enabled := false;
    v_tpe_codice.enabled := false;
    v_importo_ritenuta.enabled := false;
    v_ricevuto_certificazione.enabled := false;
    v_data_certificazione.enabled := false;
    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_tna_codice_intra.color := clbtnface;
    // v_mese_rettifica_intra.color := clbtnface;
    // v_trimestre_rettifica_intra.color := clbtnface;
    // v_anno_rettifica_intra.color := clbtnface;
    v_codice_abi.color := clbtnface;
    v_codice_cab.color := clbtnface;
    v_tba_codice.color := clbtnface;
    v_conto_corrente.color := clbtnface;
    v_cin.color := clbtnface;
    v_iban.color := clbtnface;
    v_bic.color := clbtnface;
    //v_data_inizio_trasporto.color := clbtnface;
    v_ora_inizio_trasporto.color := clbtnface;
    v_minuto_inizio_trasporto.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
    v_importo_enasarco.color := clbtnface;
    v_percentuale_cassa_professionist.color := clbtnface;
    v_importo_cassa_professionisti.color := clbtnface;
    v_tpe_codice.color := clbtnface;
    v_importo_ritenuta.color := clbtnface;
    v_data_certificazione.color := clbtnface;
  end
  else if tipo_documento = 'fattura differita' then
  begin
    disabilita_campo(v_tva_codice);
    disabilita_campo(v_cambio);

    v_tsm_codice.enabled := false;
    v_tsm_codice.color := clbtnface;

    v_cli_codice.readonly := true;
    v_cli_codice.color := clwindow;

    v_tlv_codice.enabled := false;

    v_tpa_codice.enabled := true;
    if arc.utn.fieldbyname('tag_filtro').asstring <> 'si' then
    begin
      v_tag_codice.enabled := true;
    end;

    v_tiv_codice.enabled := false;
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_tna_codice_intra.enabled := false;
    // v_mese_rettifica_intra.enabled := false;
    // v_trimestre_rettifica_intra.enabled := false;
    // v_anno_rettifica_intra.enabled := false;
    v_scadenziario_manuale.enabled := true;
    // v_codice_abi.enabled := false;
    // v_codice_cab.enabled := false;
    // v_tba_codice.enabled := false;
    v_conto_corrente.enabled := false;
    v_cin.enabled := false;
    v_iban.enabled := false;
    v_bic.enabled := false;
    v_tmo_codice.enabled := false;
    v_tma_codice.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_tst_codice.enabled := false;

    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_minuto_inizio_trasporto.enabled := false;
    v_causale_trasporto.enabled := false;
    v_tsm_codice_sconto.enabled := false;
    v_fattura_professionisti.enabled := false;
    v_soggetto_addebito_enasarco.enabled := false;
    v_importo_enasarco.enabled := false;
    v_percentuale_cassa_professionist.enabled := false;
    v_importo_cassa_professionisti.enabled := false;
    v_tpe_codice.enabled := false;
    v_importo_ritenuta.enabled := false;
    v_ricevuto_certificazione.enabled := false;
    v_data_certificazione.enabled := false;

    v_tlv_codice.color := clbtnface;

    v_tpa_codice.color := clwindow;
    if arc.utn.fieldbyname('tag_filtro').asstring <> 'si' then
    begin
      v_tag_codice.color := clwindow;
    end;

    v_tiv_codice.color := clbtnface;
    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_tna_codice_intra.color := clbtnface;
    // v_mese_rettifica_intra.color := clbtnface;
    // v_trimestre_rettifica_intra.color := clbtnface;
    // v_anno_rettifica_intra.color := clbtnface;
    // v_codice_abi.color := clbtnface;
    // v_codice_cab.color := clbtnface;
    // v_tba_codice.color := clbtnface;
    v_conto_corrente.color := clbtnface;
    v_cin.color := clbtnface;
    v_iban.color := clbtnface;
    v_bic.color := clbtnface;
    v_tmo_codice.color := clbtnface;
    v_tma_codice.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
    v_tst_codice.color := clbtnface;
    v_data_inizio_trasporto.color := clbtnface;
    v_ora_inizio_trasporto.color := clbtnface;
    v_minuto_inizio_trasporto.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
    v_tsm_codice_sconto.color := clbtnface;
    // v_importo_spese_extra.color := clbtnface;
    // v_importo_bollo.color := clbtnface;
    // v_importo_spese_trasporto.color := clbtnface;
    // v_importo_spese_incasso.color := clbtnface;
    v_importo_enasarco.color := clbtnface;
    v_percentuale_cassa_professionist.color := clbtnface;
    v_importo_cassa_professionisti.color := clbtnface;
    v_tpe_codice.color := clbtnface;
    v_importo_ritenuta.color := clbtnface;
    v_data_certificazione.color := clbtnface;
  end
  else if tipo_documento = 'fattura accompagnatoria' then
  begin
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;
    v_fattura_professionisti.enabled := false;
    v_soggetto_addebito_enasarco.enabled := false;
    v_importo_enasarco.enabled := false;
    v_percentuale_cassa_professionist.enabled := false;
    v_importo_cassa_professionisti.enabled := false;
    v_tpe_codice.enabled := false;
    v_importo_ritenuta.enabled := false;
    v_ricevuto_certificazione.enabled := false;
    v_data_certificazione.enabled := false;

    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
    v_importo_enasarco.color := clbtnface;
    v_percentuale_cassa_professionist.color := clbtnface;
    v_importo_cassa_professionisti.color := clbtnface;
    v_tpe_codice.color := clbtnface;
    v_importo_ritenuta.color := clbtnface;
    v_data_certificazione.color := clbtnface;
  end
  else if (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
  begin
    v_data_inizio_competenza.enabled := true;
    v_data_inizio_competenza.color := clwindow;
    v_data_fine_competenza.enabled := true;
    v_data_fine_competenza.color := clwindow;
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_tsp_codice.enabled := false;
    v_tst_codice.enabled := false;
    v_tpo_codice.enabled := false;
    v_tab_codice.enabled := false;
    v_numero_colli.enabled := false;
    v_numero_confezioni_totali.enabled := false;
    v_volume.enabled := false;
    v_peso_lordo.enabled := false;
    v_peso_netto.enabled := false;
    v_data_inizio_trasporto.enabled := false;
    v_ora_inizio_trasporto.enabled := false;
    v_minuto_inizio_trasporto.enabled := false;
    v_causale_trasporto.enabled := false;
    v_tmo_codice_collegato.enabled := false;
    v_tma_codice_collegato.enabled := false;

    if (gen_codice_ritenuta = '') or (tco_codice_ritenuta = '') then
    begin
      v_fattura_professionisti.enabled := false;
      v_soggetto_addebito_enasarco.enabled := false;
      v_importo_enasarco.enabled := false;
      v_percentuale_cassa_professionist.enabled := false;
      v_importo_cassa_professionisti.enabled := false;
      v_tpe_codice.enabled := false;
      v_importo_ritenuta.enabled := false;
      v_ricevuto_certificazione.enabled := false;
      v_data_certificazione.enabled := false;

      v_importo_enasarco.color := clbtnface;
      v_percentuale_cassa_professionist.color := clbtnface;
      v_importo_cassa_professionisti.color := clbtnface;
      v_tpe_codice.color := clbtnface;
      v_importo_ritenuta.color := clbtnface;
      v_data_certificazione.color := clbtnface;
    end
    else
    begin
      v_fattura_professionisti.enabled := true;
      v_soggetto_addebito_enasarco.enabled := true;
      v_importo_enasarco.enabled := true;
      v_percentuale_cassa_professionist.enabled := true;
      v_importo_cassa_professionisti.enabled := true;
      v_tpe_codice.enabled := true;
      v_importo_ritenuta.enabled := true;
      v_ricevuto_certificazione.enabled := true;
      v_data_certificazione.enabled := true;

      v_importo_enasarco.color := clwindow;
      v_percentuale_cassa_professionist.color := clwindow;
      v_importo_cassa_professionisti.color := clwindow;
      v_tpe_codice.color := clwindow;
      v_importo_ritenuta.color := clwindow;
      v_data_certificazione.color := clwindow;
    end;

    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_tsp_codice.color := clbtnface;
    v_tst_codice.color := clbtnface;
    v_tpo_codice.color := clbtnface;
    v_tab_codice.color := clbtnface;
    v_numero_colli.color := clbtnface;
    v_numero_confezioni_totali.color := clbtnface;
    v_volume.color := clbtnface;
    v_peso_lordo.color := clbtnface;
    v_peso_netto.color := clbtnface;
    v_data_inizio_trasporto.color := clbtnface;
    v_ora_inizio_trasporto.color := clbtnface;
    v_minuto_inizio_trasporto.color := clbtnface;
    v_causale_trasporto.color := clbtnface;
    v_tmo_codice_collegato.color := clbtnface;
    v_tma_codice_collegato.color := clbtnface;
  end;

  if tipo_documento <> 'ordine' then
  begin
    v_codice_contratto.enabled := false;
    v_codice_contratto.color := clbtnface;
  end;

  if tipo_documento = 'ddt fornitori' then
  begin
    disabilita_campo(v_gestione_alimentari);
    disabilita_campo(v_ind_codice_fatturazione);
  end
  else
  begin
    abilita_campo(v_gestione_alimentari);
    abilita_campo(v_ind_codice_fatturazione);
  end;

  if (tipo_documento = 'ddt fornitori') or (tipo_documento = 'preventivo nominativi') then
  begin
    disabilita_campo(v_cli_codice_fatturazione);
  end;

  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    abilita_campo(v_giorni_consegna);
  end
  else
  begin
    disabilita_campo(v_giorni_consegna);
  end;
end;

procedure tgesven.abilita_tipo_documento_bolle_ddt;
begin
  if (tipo_documento = 'ddt') or (tipo_documento = 'bolla') or (tipo_documento = 'ddt fornitori') then
  begin
    // v_mese_rettifica_intra.enabled := false;
    // v_trimestre_rettifica_intra.enabled := false;
    // v_anno_rettifica_intra.enabled := false;
    v_data_consegna.enabled := false;
    v_data_validita.enabled := false;
    v_fattura_professionisti.enabled := false;
    v_soggetto_addebito_enasarco.enabled := false;
    v_importo_enasarco.enabled := false;
    v_percentuale_cassa_professionist.enabled := false;
    v_importo_cassa_professionisti.enabled := false;
    v_tpe_codice.enabled := false;
    v_importo_ritenuta.enabled := false;
    v_ricevuto_certificazione.enabled := false;
    v_data_certificazione.enabled := false;
    v_tipo_appalto.enabled := true;
    v_stampa_prezzo.enabled := true;

    // v_mese_rettifica_intra.color := clbtnface;
    // v_trimestre_rettifica_intra.color := clbtnface;
    // v_anno_rettifica_intra.color := clbtnface;
    v_data_consegna.color := clbtnface;
    v_data_validita.color := clbtnface;
    v_importo_enasarco.color := clbtnface;
    v_percentuale_cassa_professionist.color := clbtnface;
    v_importo_cassa_professionisti.color := clbtnface;
    v_tpe_codice.color := clbtnface;
    v_data_certificazione.color := clbtnface;
    v_importo_ritenuta.color := clbtnface;
    v_tipo_appalto.color := clwindow;

    if tipo_documento = 'ddt fornitori' then
    begin
      v_stampa_prezzo.enabled := false;
      v_tpa_codice.enabled := false;
      v_tsm_codice.enabled := false;
      v_tva_codice.enabled := false;
      v_cambio.enabled := false;
      v_tag_codice.enabled := false;
      v_tag_codice_ca.enabled := false;
      v_tiv_codice.enabled := false;
      v_data_inizio_conteggio.enabled := false;
      v_scadenziario_manuale.enabled := false;
      v_codice_abi.enabled := false;
      v_codice_cab.enabled := false;
      v_tba_codice.enabled := false;
      v_conto_corrente.enabled := false;
      v_cin.enabled := false;
      v_iban.enabled := false;
      v_bic.enabled := false;
      v_tsm_codice_sconto.enabled := false;
      v_importo_sconto.enabled := false;
      v_addebito_spese_fattura.enabled := false;
      // v_spese_manuali.enabled := false;
      v_spese_manuali_trasporto.enabled := false;
      v_spese_manuali_bollo.enabled := false;
      v_spese_manuali_incasso.enabled := false;
      v_tst_codice.enabled := false;
      v_tipo_appalto.enabled := false;
      disabilita_campo(v_tconai_codice);
      disabilita_campo(v_no_conai);
      disabilita_campo(v_tipo_imballaggio);

      v_tpa_codice.color := clbtnface;
      v_tsm_codice.color := clbtnface;
      v_tva_codice.color := clbtnface;
      v_cambio.color := clbtnface;
      v_tag_codice.color := clbtnface;
      v_tag_codice_ca.color := clbtnface;
      v_tiv_codice.color := clbtnface;
      v_data_inizio_conteggio.color := clbtnface;
      v_codice_abi.color := clbtnface;
      v_codice_cab.color := clbtnface;
      v_tba_codice.color := clbtnface;
      v_conto_corrente.color := clbtnface;
      v_cin.color := clbtnface;
      v_iban.color := clbtnface;
      v_bic.color := clbtnface;
      v_tsm_codice_sconto.color := clbtnface;
      v_importo_sconto.color := clbtnface;
      v_tst_codice.color := clbtnface;
      v_tipo_appalto.color := clbtnface;
    end
    else
    begin
      if tabella.fieldbyname('situazione').asstring <> 'consolidato' then
      begin
        if arc.utn.fieldbyname('consenti_no_fattura').asstring = 'si' then
        begin
          v_non_fatturare.visible := true;
        end;
      end
      else
      begin
        v_non_fatturare.visible := false;
      end;

      v_tlv_codice.enabled := true;
      v_tpa_codice.enabled := true;
      v_tsm_codice.enabled := true;
      if not esiste then
      begin
        v_tva_codice.enabled := true;
        v_cambio.enabled := true;
      end;
      if arc.utn.fieldbyname('tag_filtro').asstring <> 'si' then
      begin
        v_tag_codice.enabled := true;
      end;
      v_tiv_codice.enabled := true;
      v_data_inizio_conteggio.enabled := true;
      v_scadenziario_manuale.enabled := true;
      v_codice_abi.enabled := true;
      v_codice_cab.enabled := true;
      v_tba_codice.enabled := true;
      v_conto_corrente.enabled := true;
      v_cin.enabled := true;
      v_iban.enabled := true;
      v_bic.enabled := true;
      v_tsm_codice_sconto.enabled := true;
      v_importo_sconto.enabled := true;
      v_addebito_spese_fattura.enabled := true;
      v_spese_manuali_trasporto.enabled := true;
      v_spese_manuali_bollo.enabled := true;
      v_spese_manuali_incasso.enabled := true;
      v_tlv_codice.color := clwindow;
      v_tpa_codice.color := clwindow;
      v_tsm_codice.color := clwindow;
      if not esiste then
      begin
        v_tva_codice.color := clwindow;
        v_cambio.color := clwindow;
      end;
      if arc.utn.fieldbyname('tag_filtro').asstring <> 'si' then
      begin
        v_tag_codice.color := clwindow;
      end;
      v_tiv_codice.color := clwindow;
      v_data_inizio_conteggio.color := clwindow;
      v_codice_abi.color := clwindow;
      v_codice_cab.color := clwindow;
      v_tba_codice.color := clwindow;
      v_conto_corrente.color := clwindow;
      v_cin.color := clwindow;
      v_iban.color := clwindow;
      v_bic.color := clwindow;
      v_tsm_codice_sconto.color := clwindow;
      v_importo_sconto.color := clwindow;
    end;

    if tabella.fieldbyname('situazione').asstring <> 'inserito' then
    // if esiste then
    begin
      v_tmo_codice.enabled := false;
      v_tmo_codice_collegato.enabled := false;
      v_tma_codice.enabled := false;
      v_tma_codice_collegato.enabled := false;

      v_tmo_codice.color := clbtnface;
      v_tmo_codice_collegato.color := clbtnface;
      v_tma_codice.color := clbtnface;
      v_tma_codice_collegato.color := clbtnface;
    end
    else
    begin
      v_tmo_codice.enabled := true;
      v_tmo_codice_collegato.enabled := true;
      v_tma_codice.enabled := true;
      v_tma_codice_collegato.enabled := true;

      v_tmo_codice.color := clwindow;
      v_tmo_codice_collegato.color := clwindow;
      v_tma_codice.color := clwindow;
      v_tma_codice_collegato.color := clwindow;
    end;
  end;

  if (tabella.fieldbyname('tipo_documento').asstring = 'ddt') or (tabella.fieldbyname('tipo_documento').asstring = 'bolla') then
  begin
    v_l_cli_codice.caption := 'codice cliente';
  end
  else if tabella.fieldbyname('tipo_documento').asstring = 'ddt fornitori' then
  begin
    v_l_cli_codice.caption := 'codice fornitore';
  end;
end;

procedure tgesven.pannello_codiceexit(sender: tobject);
var
  prosegui: boolean;
begin
  if (tipo_documento = 'fattura differita') and (v_progressivo.value = 0) then
  begin
    messaggio(000, 'non è consentito inserire direttamente le fatture differite' + slinebreak +
      'vanno generate con il programma [GENFADV]');
    abilita_codice;
  end
  else
  begin
    inherited;

    prosegui := true;
    if esiste then
    begin
      if not utntdo.isempty and (v_tdo_codice.text <> '') and
        not utntdo.locate('tdo_codice', v_tdo_codice.text, []) then
      begin
        messaggio(000, 'codice documento non utilizzabile dall''utente');
        abilita_codice;
        prosegui := false;
        abort;
      end;
    end;
    if prosegui then
    begin
      if torna_progressivo then
      begin
        abilita_codice;
      end
      else
      begin
        tool_documenti_allegati.enabled := false;

        if not esiste then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('modificato').asstring := 'si';
            tabella.fieldbyname('tdo_codice').asstring := tdo_codice;
            tabella.fieldbyname('data_documento').asdatetime := data_documento;
            if tdo_codice <> '' then
            begin
              if not utntdo.isempty and (v_tdo_codice.text <> '') and
                not utntdo.locate('tdo_codice', v_tdo_codice.text, []) then
              begin
                messaggio(000, 'codice documento non utilizzabile dall''utente');
                abilita_codice;
                abort;
              end
              else
              begin
                v_tdo_codice.enabled := true;
                v_tdo_codice.color := clwindow;

                tdo_codice_controllo(true);
                assegna_tdo_codice;
                abilita_tipo_documento;
                selectnext(v_tdo_codice, true, true);
              end;
            end
            else
            begin
              v_tdo_codice.enabled := true;
              v_tdo_codice.color := clwindow;
              v_tdo_codice.setfocus;
            end;

            if cli_codice_passato <> '' then
            begin
              tabella.fieldbyname('cli_codice').asstring := cli_codice_passato;
              cli_codice_controllo(false);
              if not cli.eof then
              begin
                assegna_cli_codice;
              end;
            end;

            if cli_codice_gescas <> '' then
            begin
              tabella.fieldbyname('cli_codice').asstring := cli_codice_gescas;
              cli_codice_controllo(false);
              if not cli.eof then
              begin
                assegna_cli_codice;
              end;
            end;
            if ind_codice_gescas <> '' then
            begin
              tabella.fieldbyname('indirizzo').asstring := ind_codice_gescas;
              indirizzo_controllo(false);
              if not ind.eof then
              begin
                assegna_ind;
              end;
            end;

            tabella.fieldbyname('ese_codice').asstring := esercizio;
          end;
        end
        else
        begin
          assegna_decimali;
        end;

        if arc.utn.fieldbyname('tag_filtro').asstring = 'si' then
        begin
          if not esiste then
          begin
            if tabella_edit(tabella) then
            begin
              tabella.fieldbyname('tag_codice').asstring := arc.utn.fieldbyname('tag_codice').asstring;
            end;
          end;
        end;

        abilita_pro_forma;
      end;
    end;
  end;
end;

procedure tgesven.v_ora_inizio_trasportoexit(sender: tobject);
begin
  inherited;
  ora_inizio_trasporto_controllo;
end;

procedure tgesven.ora_inizio_trasporto_controllo;
begin
  if controllo then
  begin
    if v_ora_inizio_trasporto.value > 24 then
    begin
      messaggio(002, label35.caption);
      v_ora_inizio_trasporto.setfocus;
      abort;
    end
  end;
end;

procedure tgesven.minuto_inizio_trasporto_controllo;
begin
  if controllo then
  begin
    if v_minuto_inizio_trasporto.value > 59 then
    begin
      messaggio(002, label35.caption);
      v_minuto_inizio_trasporto.setfocus;
      abort;
    end
  end;
end;

procedure tgesven.v_minuto_inizio_trasportoexit(sender: tobject);
begin
  inherited;
  minuto_inizio_trasporto_controllo;
end;

procedure tgesven.formshow(sender: tobject);
var
  errore: boolean;
begin
  errore := false;

  if ritenute_clienti then
  begin
    v_ricevuto_certificazione.visible := false;
    v_data_certificazione.visible := false;
    rzlabel12.visible := false;
  end;

  if (arc.utn.fieldbyname('tag_codice').asstring <> '') and
    (arc.utn.fieldbyname('tag_filtro').asstring = 'si') then
  begin
    disabilita_campo(v_tag_codice);
  end;

  if not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine')) then
  begin
    v_stampa_immagine.visible := false;
  end;

  if (tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or
    (tipo_documento = 'ddt') or (copy(tipo_documento, 1, 7) = 'fattura') or
    (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
  begin
    abilita_campo(tool_eticlive);
  end
  else
  begin
    disabilita_campo(tool_eticlive);
  end;

  if parametri_extra_programma_chiamato[0] <> null then
  begin
    tdo_codice := parametri_extra_programma_chiamato[0];
  end;
  if parametri_extra_programma_chiamato[1] <> null then
  begin
    cli_codice_gescas := parametri_extra_programma_chiamato[1];
    ind_codice_gescas := parametri_extra_programma_chiamato[2];
  end;
  if parametri_extra_programma_chiamato[3] <> null then
  begin
    tma_codice_passato := parametri_extra_programma_chiamato[3];
  end;

  inherited;

  if (arc.dit.fieldbyname('provvigioni_multilivello').asstring <> 'si') or (tipo_documento <> 'ordine') then
  begin
    disabilita_campo(v_provvigioni_multilivello);
  end;

  if tipo_documento = 'fattura immediata' then
  begin
    // v_fattura_pro_forma.visible := true;
  end;

  if not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine') or (tipo_documento = 'ddt')) then
  begin
    v_l_quantita_residua.visible := false;
    v_quantita_residua.visible := false;
  end;

  if (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
    (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito') or (tipo_documento = 'ddt fornitori') then
  begin
    v_no_fattura.visible := false;
  end;

  if not((tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
    (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) then
  begin
    v_descrizione_primanota.enabled := false;

    v_descrizione_primanota.color := clbtnface;
  end;

  abilita_tipo_documento;

  art_quantita.close;
  art_quantita.sql.clear;
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    art_quantita.sql.add('select sum(tum_quantita_base) quantita from pvr where progressivo = :progressivo');
    art_quantita.sql.add('and art_codice = :art_codice and tma_codice = :tma_codice and riga <> :riga and situazione = ''inserito''');
    tipo_numerazione := 'PREVENTIVI CLIENTI';
  end
  else if tipo_documento = 'ordine' then
  begin
    art_quantita.sql.add('select sum(tum_quantita_base) quantita from ovr where progressivo = :progressivo');
    art_quantita.sql.add('and art_codice = :art_codice and tma_codice = :tma_codice and riga <> :riga and situazione = ''inserito''');
    tipo_numerazione := 'ORDINI CLIENTI';
  end
  else if tipo_documento = 'bolla' then
  begin
    art_quantita.sql.add('select sum(tum_quantita_base) quantita from bvr where progressivo = :progressivo');
    art_quantita.sql.add('and art_codice = :art_codice and tma_codice = :tma_codice and riga <> :riga and situazione = ''inserito''');
    tipo_numerazione := 'BOLLE CLIENTI';
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    art_quantita.sql.add('select sum(tum_quantita_base) quantita from cvr where progressivo = :progressivo');
    art_quantita.sql.add('and art_codice = :art_codice and tma_codice = :tma_codice and riga <> :riga and situazione = ''inserito''');
    tipo_numerazione := 'CORRISPETTIVI CLIENTI';
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    art_quantita.sql.add('select sum(tum_quantita_base) quantita from dvr where progressivo = :progressivo');
    art_quantita.sql.add('and art_codice = :art_codice and tma_codice = :tma_codice and riga <> :riga and situazione = ''inserito''');
    tipo_numerazione := 'DDT CLIENTI';
  end
  else
  begin
    art_quantita.sql.add('select sum(tum_quantita_base) quantita from fvr where progressivo = :progressivo');
    art_quantita.sql.add('and art_codice = :art_codice and tma_codice = :tma_codice and riga <> :riga and situazione = ''inserito''');
    tipo_numerazione := 'FATTURE DI VENDITA';
  end;

  ind.sql.clear;
  if tipo_documento = 'ddt fornitori' then
  begin
    v_l_saldo_cliente.visible := false;
    v_saldo_cliente.visible := false;

    ind.sql.add('select * from inf');
    ind.sql.add('where frn_codice = :frn_codice and indirizzo = :indirizzo');
  end
  else
  begin
    ind.sql.add('select * from ind');
    ind.sql.add('where cli_codice = :cli_codice and indirizzo = :indirizzo');
  end;

  if art_codice_spese_trasporto = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo delle spese trasporto' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli vendite, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_spese_incasso = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo delle spese incasso' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli vendite, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_spese_bollo = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo delle spese bollo' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli vendite, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_spese_extra = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo delle spese extra' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli vendite, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_cassa_professionisti = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo della cassa previdenza' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli vendite, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_sconto_cassa = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo dello sconto cassa' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli vendite, prima cartella, il valore mancante');
    errore := true;
  end;
  if art_codice_sconti_fattura = '' then
  begin
    messaggio(000, 'manca in anagrafica ditta il codice articolo degli sconti fattura' + #13 + #13 +
      'eseguire il programma di gestione anagrafica ditta [GESDIT] per inserire' + #13 +
      'nella sezione degli vendite, prima cartella, il valore mancante');
    errore := true;
  end;

  if errore then
  begin
    close;
  end
  else
  begin
    if read_tabella(art_01, art_codice_spese_extra) then
    begin
      tiv_codice_spese_extra := art_01.fieldbyname('tiv_codice_vendite').asstring;
      tca_codice_spese_extra := art_01.fieldbyname('tca_codice').asstring;
    end;
    if read_tabella(art_01, art_codice_spese_trasporto) then
    begin
      tca_codice_trasporto := art_01.fieldbyname('tca_codice').asstring;
    end;
    if read_tabella(art_01, art_codice_spese_bollo) then
    begin
      tiv_codice_spese_bollo := art_01.fieldbyname('tiv_codice_vendite').asstring;
      tca_codice_bollo := art_01.fieldbyname('tca_codice').asstring;
    end;

    if read_tabella(art_01, art_codice_spese_incasso) then
    begin
      tiv_codice_spese_incasso := art_01.fieldbyname('tiv_codice_vendite').asstring;
      tca_codice_incasso := art_01.fieldbyname('tca_codice').asstring;
    end;
    if read_tabella(art_01, art_codice_cassa_professionisti) then
    begin
      tiv_codice_cassa_professionisti := art_01.fieldbyname('tiv_codice_vendite').asstring;
      tca_codice_cassa_professionisti := art_01.fieldbyname('tca_codice').asstring;
    end;
    if read_tabella(art_01, art_codice_sconto_cassa) then
    begin
      tca_codice_sconto_cassa := art_01.fieldbyname('tca_codice').asstring;
    end;
    if read_tabella(art_01, art_codice_sconti_fattura) then
    begin
      tca_codice_sconti_fattura := art_01.fieldbyname('tca_codice').asstring;
    end;
  end;

  tma_codice_agente := assegna_tma_tag;

  if arc.dit.fieldbyname('gestione_alimentari').asstring = 'si' then
  begin
    v_gestione_alimentari.visible := true;
  end
  else
  begin
    v_gestione_alimentari.visible := false;
  end;

  if tipo_documento = 'ordine' then
  begin
    abilita_campo(tool_ordine_produzione_globale);
  end
  else
  begin
    disabilita_campo(tool_ordine_produzione_globale);
  end;
end;

procedure tgesven.abilita_art_codice;
begin
  if (parte_attiva = 'griglia_righe') or (parte_attiva = 'pannello_righe') then
  begin
    if (v_art_codice.text = '') or
      (esiste_righe and art.active and (art.fieldbyname('kit').asstring = 'si') and
      (arc.dit.fieldbyname('modalita_kit').asstring <> 'kit')) then
    begin
      v_numero_colli_riga.enabled := false;
      v_numero_confezioni.enabled := false;
      v_tum_codice.enabled := false;
      v_quantita.enabled := false;
      v_saldo_acconto.enabled := false;
      v_prezzo.enabled := false;
      v_tsm_codice_righe.enabled := false;
      v_tsm_codice_art.enabled := false;
      v_importo_sconto_righe.enabled := false;
      v_tipo_movimento.enabled := false;
      v_importo.enabled := false;
      v_data_consegna_righe.enabled := false;
      v_totale_progressivo.enabled := true;

      v_numero_colli_riga.color := clbtnface;
      v_numero_confezioni.color := clbtnface;
      v_tum_codice.color := clbtnface;
      v_quantita.color := clbtnface;
      v_saldo_acconto.color := clbtnface;
      v_prezzo.color := clbtnface;
      v_tsm_codice_righe.color := clbtnface;
      v_tsm_codice_art.color := clbtnface;
      v_importo_sconto_righe.color := clbtnface;
      v_tipo_movimento.color := clbtnface;
      v_importo.color := clbtnface;
      v_data_consegna_righe.color := clbtnface;
    end
    else
    begin
      v_numero_colli_riga.enabled := true;
      v_numero_confezioni.enabled := true;
      v_tum_codice.enabled := true;
      if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
      begin
        v_tum_codice.enabled := false;
      end;
      v_quantita.enabled := true;
      v_data_consegna_righe.enabled := true;
      v_totale_progressivo.enabled := false;
      if importi_vendite = 'visualizza' then
      begin
        v_prezzo.enabled := false;
        v_tsm_codice_righe.enabled := false;
        v_tsm_codice_art.enabled := false;
        v_importo_sconto_righe.enabled := false;
        v_tipo_movimento.enabled := false;
        v_importo.enabled := false;

        v_prezzo.color := clbtnface;
        v_tsm_codice_righe.color := clbtnface;
        v_tsm_codice_art.color := clbtnface;
        v_importo_sconto_righe.color := clbtnface;
        v_tipo_movimento.color := clbtnface;
        v_importo.color := clbtnface;
      end
      else
      begin
        v_prezzo.enabled := true;
        v_tsm_codice_righe.enabled := true;
        v_tsm_codice_art.enabled := true;
        v_importo_sconto_righe.enabled := true;
        v_tipo_movimento.enabled := true;
        v_importo.enabled := true;

        v_prezzo.color := clwindow;
        v_tsm_codice_righe.color := clwindow;
        v_tsm_codice_art.color := clwindow;
        v_importo_sconto_righe.color := clwindow;
        v_tipo_movimento.color := clwindow;
        v_importo.color := clwindow;
      end;

      v_numero_colli_riga.color := clwindow;
      v_numero_confezioni.color := clwindow;
      v_tum_codice.color := clwindow;
      v_quantita.color := clwindow;
      v_data_consegna_righe.color := clwindow;

      if (tabella_righe.fieldbyname('documento_origine').asstring <> '') and (tabella_righe.fieldbyname('documento_origine').asstring <> 'lavorazione') and
        ((tipo_documento <> 'fattura differita') or ((tipo_documento = 'fattura differita') and
        ((tabella_righe.fieldbyname('documento_origine').asstring = 'ordine ven') or (tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo ven')))) then
      begin
        v_saldo_acconto.enabled := true;
        v_saldo_acconto.color := clwindow;
      end
      else
      begin
        v_saldo_acconto.enabled := false;
        v_saldo_acconto.color := clbtnface;
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_art_codice;
begin
  if tabella_righe.fieldbyname('art_codice').asstring = '' then
  begin
    if v_numero_colli_riga.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_colli').asinteger := 0;
      end;
    end;
    if v_numero_confezioni.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_confezioni').asinteger := 0;
      end;
    end;
    if v_quantita.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := 0;
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := 0;
      end;
    end;
    if v_tum_codice.text <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := '';
      end;
    end;
    if v_prezzo.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('prezzo_netto').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo_netto').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('prezzo_netto_listino').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('prezzo_netto_listino').asfloat := 0;
      end;
    end;
    if v_importo.value <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_euro').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_euro').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_iva').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_iva').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_iva_euro').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_iva_euro').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('percentuale_provvigioni').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('percentuale_provvigioni').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('percentuale_provvigioni_ca').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('percentuale_provvigioni_ca').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_provvigioni').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_provvigioni').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_provvigioni_ca').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_provvigioni_ca').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_percentuale_provvigioni').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_percentuale_provvigioni').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_percentuale_provv_ca').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_percentuale_provv_ca').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_statistico_intra').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_statistico_intra').asfloat := 0;
      end;
    end;
    if trim(tabella_righe.fieldbyname('gen_codice').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('gen_codice').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('gen_codice_storno').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('gen_codice_storno').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tiv_codice').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tiv_codice').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tsm_codice').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tsm_codice').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tsm_codice_art').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('tipo_movimento').asstring) <> 'normale' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tipo_movimento').asstring := 'normale';
      end;
    end;
    if trim(tabella_righe.fieldbyname('saldo_acconto').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('saldo_acconto').asstring := '';
      end;
    end;
    if trim(tabella_righe.fieldbyname('data_consegna').asstring) <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('data_consegna').asstring := '';
      end;
    end;
    if tabella_righe.fieldbyname('quantita_evasa').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita_evasa').asfloat := 0;
        tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_evaso').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_evaso').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('importo_sconto_evaso').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('importo_sconto_evaso').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('numero_colli_evasi').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_colli_evasi').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('numero_confezioni_evase').asfloat <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('numero_confezioni_evase').asfloat := 0;
      end;
    end;
    if tabella_righe.fieldbyname('cms_codice').asstring <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('cms_codice').asstring := '';
      end;
    end;
    if tabella_righe.fieldbyname('tipologia').asstring <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('tipologia').asstring := '';
      end;
    end;
  end
  else
  begin
    if tabella_righe.fieldbyname('totale_progressivo').asstring <> 'no' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('totale_progressivo').asstring := 'no';
      end;
    end;
  end;
end;

procedure tgesven.esegui_analitica(tipo: string);
begin
  if tipo = 'righe' then
  begin
    esiste_documento_analitica := esiste_righe;
    esegui_analitica(tabella_righe.fieldbyname('gen_codice').asstring, tabella_righe.fieldbyname('documento_origine').asstring,
      tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('descrizione1').asstring,
      tabella_righe.fieldbyname('tipo_movimento').asstring, tabella_righe.fieldbyname('doc_progressivo_origine').asinteger,
      tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger,
      tabella_righe.fieldbyname('importo_euro').asfloat, tabella_righe.fieldbyname('importo_iva_euro').asfloat,
      tabella_righe.fieldbyname('importo').asfloat, tabella_righe.fieldbyname('importo_iva').asfloat,
      tabella_righe.fieldbyname('cen_codice').asstring, tabella_righe.fieldbyname('tvc_codice').asstring,
      tabella_righe.fieldbyname('tiv_codice').asstring);
  end
  else if tipo = 'spese_trasporto' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_trasporto').asstring, '', '', 'Spese trasporto', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900001,
      arrotonda(tabella.fieldbyname('importo_spese_trasporto').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
      tabella.fieldbyname('importo_spese_trasporto').asfloat, 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end
  else if tipo = 'spese_bollo' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_bollo').asstring, '', '', 'Spese bollo', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900002,
      arrotonda(tabella.fieldbyname('importo_bollo').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
      tabella.fieldbyname('importo_bollo').asfloat, 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end
  else if tipo = 'spese_incasso' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_incasso').asstring, '', '', 'Spese incasso', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900003,
      arrotonda(tabella.fieldbyname('importo_spese_incasso').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
      tabella.fieldbyname('importo_spese_incasso').asfloat, 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end
  else if tipo = 'spese_extra' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_spese_extra').asstring, '', '', 'Spese extra', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900004,
      arrotonda(tabella.fieldbyname('importo_spese_extra').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
      tabella.fieldbyname('importo_spese_extra').asfloat, 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end
  else if tipo = 'sconto_cassa' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_sconto_cassa').asstring, '', '', 'Sconto cassa', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900005,
      arrotonda(tabella.fieldbyname('importo_sconto_cassa').asfloat / tabella.fieldbyname('cambio').asfloat), 0,
      tabella.fieldbyname('importo_sconto_cassa').asfloat, 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end
  else if tipo = 'sconto_finale' then
  begin
    esiste_documento_analitica := esiste;
    esegui_analitica(tabella.fieldbyname('gen_codice_sconti_fattura').asstring, '', '', 'Sconti finali', 'normale', 0,
      tabella.fieldbyname('progressivo').asinteger, 900006,
      arrotonda((tabella.fieldbyname('importo_sconto').asfloat + tabella.fieldbyname('importo_sconto_finale').asfloat) /
      tabella.fieldbyname('cambio').asfloat), 0,
      (tabella.fieldbyname('importo_sconto').asfloat + tabella.fieldbyname('importo_sconto_finale').asfloat), 0,
      tabella.fieldbyname('cen_codice').asstring, tabella.fieldbyname('tvc_codice').asstring);
  end;
end;

procedure tgesven.esegui_analitica(analitica_gen_codice, analitica_documento_origine, analitica_art_codice,
  analitica_descrizione, analitica_tipo_movimento: string;
  analitica_doc_progressivo_origine, analitica_progressivo, analitica_riga: integer;
  analitica_importo_euro, analitica_importo_iva_euro, analitica_importo_valuta, analitica_importo_iva_valuta: double;
  cen_codice, tvc_codice: string;
  tiv_codice:
  string = '');
var
  descrizione, gen_codice, cfg_tipo, cfg_codice, serie_documento: string;
  importo, importo_dare, importo_avere, importo_valuta, importo_dare_valuta, importo_avere_valuta: double;
  numero_documento: double;
  data_registrazione, data_documento: tdatetime;

  esiste_cem: boolean;
begin
  if analitica = 'si' then
  begin
    gen.close;
    gen.parambyname('gen_codice').asstring := analitica_gen_codice;
    gen.open;
    if gen.fieldbyname('tipo').asstring = 'patrimoniale' then
    begin
      messaggio(200, 'aggiornamento analitica non eseguibile perché' + #13 +
        'il sottoconto contabile è patrimoniale');
    end
    else
    begin
      esiste_cem := false;
      if analitica_documento_origine <> '' then
      begin
        query_cem.close;
        query_cem.sql.clear;

        if analitica_documento_origine = 'ddt ven' then
        begin
          query_cem.sql.add('select tdo.analitica');
          query_cem.sql.add('from dvt');
          query_cem.sql.add('inner join tdo on tdo.codice = dvt.tdo_codice');
          query_cem.sql.add('where dvt.progressivo = :progressivo');
          query_cem.parambyname('progressivo').asinteger := analitica_doc_progressivo_origine;
        end;

        if query_cem.sql.text <> '' then
        begin
          query_cem.open;
          if query_cem.fieldbyname('analitica').asstring = 'si' then
          begin
            messaggio(100, 'il ddt di origine della fattura' + #13 +
              'prevede già la gestione della contabilibità analitica' + #13 +
              'i collegamenti vanno gestiti nel documento di orgine');
            esiste_cem := true;
          end;
        end;
      end;

      if not esiste_cem then
      begin
        codice_passato := vararrayof([tipo_documento + ' ven', analitica_progressivo, analitica_riga, 0]);

        data_registrazione := v_data_documento.date;
        gen_codice := analitica_gen_codice;
        cfg_tipo := 'C';
        cfg_codice := v_cli_codice.text;
        descrizione := v_descrizione1_riga.text;
        numero_documento := v_numero_documento.value;
        serie_documento := v_serie_documento.text;
        data_documento := v_data_documento.date;
        importo_dare := 0;
        importo_avere := 0;
        importo_dare_valuta := 0;
        importo_avere_valuta := 0;

        if v_tipo_movimento.text = 'normale' then
        begin
          if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
          begin
            importo := analitica_importo_euro;
            importo_valuta := analitica_importo_valuta;
          end
          else
          begin
            importo := analitica_importo_euro - analitica_importo_iva_euro;
            importo_valuta := analitica_importo_valuta - analitica_importo_iva_valuta;
          end;
        end
        else
        begin
          importo := 0;
          importo_valuta := 0;
        end;

        importo_avere := importo;
        importo_avere_valuta := importo_valuta;
        if read_tabella(arc.arcdit, 'tco', 'codice', tabella.fieldbyname('tco_codice').asstring) then
        begin
          if archivio.fieldbyname('segno_registro_iva').asstring = 'decrementa' then
          begin
            importo_avere := importo_avere * -1;
            importo_avere_valuta := importo_avere_valuta * -1;
          end;
        end;
        if (analitica_riga = 900005) or (analitica_riga = 900006) then
        begin
          importo_avere := importo_avere * -1;
          importo_dare := importo_dare * -1;
          importo_avere_valuta := importo_avere_valuta * -1;
          importo_dare_valuta := importo_dare_valuta * -1;
        end;

        esegui_carcem(codice_passato, data_registrazione, gen_codice, analitica_art_codice, cfg_tipo, cfg_codice,
          descrizione, esercizio, cen_codice, tvc_codice, numero_documento, serie_documento, data_documento,
          importo_dare, importo_avere, esiste_documento_analitica, false,
          importo_dare_valuta, importo_avere_valuta, tabella.fieldbyname('cambio').asfloat);
      end;
    end;
  end;
end;

procedure tgesven.esegui_lotti;
var
  cfg_tipo: string;
begin
  if not lettore and (v_quantita.value <> 0) then
  begin
    codice_passato := vararrayof([tipo_documento + ' ven', tabella_righe.fieldbyname('progressivo').asfloat,
      tabella_righe.fieldbyname('riga').asinteger, 0]);

    if not art.eof then
    begin
      if (art.fieldbyname('lotti').asstring = 'si') and (lotti = 'si') then
      begin
        if (not esiste_righe) and (gestione_lotto_singolo = 'si') then
        begin
          // già eseguita dopo input quantita
        end
        else
        begin
          if tipo_documento = 'ddt fornitori' then
          begin
            cfg_tipo := 'F';
          end
          else
          begin
            cfg_tipo := 'C';
          end;

          if tipo_documento = 'ordine' then
          begin
            esegui_carltm(codice_passato, trunc(v_numero_documento.value),
              cfg_tipo, v_cli_codice.text, v_art_codice.text, tabella_righe.fieldbyname('tma_codice').asstring, '',
              'approntato', v_serie_documento.text, v_data_documento.date, v_data_documento.date, 'APPRONTATO',
              tabella_righe.fieldbyname('tum_quantita_base').asfloat, 0, 0, tabella_righe.fieldbyname('lotto').asstring);
          end
          else if (trim(v_tmo_codice.text) <> '') and (trim(v_art_codice.text) <> '') then
          begin
            read_tabella(arc.arcdit, 'tmo', 'codice', v_tmo_codice.text, 'descrizione,esistenza');
            esegui_carltm(codice_passato, trunc(v_numero_documento.value),
              cfg_tipo, v_cli_codice.text, v_art_codice.text, tabella_righe.fieldbyname('tma_codice').asstring, v_tmo_codice.text,
              archivio.fieldbyname('esistenza').asstring, v_serie_documento.text, v_data_documento.date, v_data_documento.date,
              archivio.fieldbyname('descrizione').asstring, tabella_righe.fieldbyname('tum_quantita_base').asfloat, 0, 0,
              tabella_righe.fieldbyname('lotto').asstring, false, esiste_righe);
          end;
        end;
      end;
    end;
  end;
end;

procedure TGESVEN.esegui_ubicazioni;
begin
  inherited;

  if (arc.dit.fieldbyname('ubicazione_multipla').asstring = 'si') and (tabella.fieldbyname('tmo_codice').asstring <> '') and
    (art.fieldbyname('tipo_articolo').asstring = 'fiscale') and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') then
  begin
    if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> 0 then
    begin
      codice_passato := vararrayof([tabella.fieldbyname('tipo_documento').asstring + ' ven',
        tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger]);

      esegui_carubm(codice_passato, tabella_righe.fieldbyname('art_codice').asstring, art.fieldbyname('tub_codice').asstring, 'impegnato',
        tabella.fieldbyname('tmo_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
        tabella.fieldbyname('data_documento').asdatetime, tabella_righe.fieldbyname('tum_quantita_base').asfloat);
    end;
  end;
end;

procedure TGESVEN.esegui_ubicazioni_magazzino(tmo_codice, tma_codice: string);
var
  tipo_movimento: string;
  riga: integer;
begin
  inherited;

  tipo_movimento := '';

  read_tabella(arc.arcdit, 'tmo', 'codice', tmo_codice, 'esistenza');
  if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
  begin
    tipo_movimento := 'carico';
  end;
  if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
  begin
    tipo_movimento := 'scarico';
  end;

  read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring, 'tub_codice');
  if tabella_righe.fieldbyname('tum_quantita_base').asfloat <> 0 then
  begin
    if movmag.riga <> 0 then
    begin
      riga := movmag.riga;
    end
    else
    begin
      riga := movmag.riga_mmr;
    end;
    codice_passato := vararrayof(['movimenti magazzino', movmag.progressivo, riga]);

    esegui_carubm(codice_passato, tabella_righe.fieldbyname('art_codice').asstring, archivio.fieldbyname('tub_codice').asstring,
      tipo_movimento, tmo_codice, tma_codice,
      tabella.fieldbyname('data_documento').asdatetime, tabella_righe.fieldbyname('tum_quantita_base').asfloat);
  end;
end;

procedure tgesven.aggiorna_archivi_collegati;
var
  vuodoc: tmyquery_go;
begin
  apri_transazione;
  try
    try
      if (vecchio_cli_codice <> tabella.fieldbyname('cli_codice').asstring) or
        (vecchio_data_documento <> tabella.fieldbyname('data_documento').asdatetime) then
      begin
        vuodoc := tmyquery_go.create(nil);
        vuodoc.connection := arc.arcdit;
        vuodoc.sql.text := 'select * from vuodoc where cfg_tipo = ''C'' and documento_origine = :documento_origine ' +
          'and doc_progressivo_origine = :progressivo';
        vuodoc.parambyname('documento_origine').asstring := tipo_documento;
        vuodoc.parambyname('progressivo').asinteger := v_progressivo.intvalue;
        vuodoc.open;
        if not vuodoc.isempty then
        begin
          vuodoc.edit;
          vuodoc.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
          vuodoc.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
          vuodoc.post;
        end;
        freeandnil(vuodoc);
      end;

      tabella_righe.disablecontrols;

      tabella_righe.first;
      while not tabella_righe.eof do
      begin
        aggiorna_archivi_collegati_righe;

        tabella_righe.next;
      end;

      commit_transazione;
    except
      on e: exception do
      begin
        rollback_transazione(e.message);
      end;
    end;
  finally
    tabella_righe.first;
    tabella_righe.enablecontrols;

    chiudi_transazione;
  end;
end;

procedure tgesven.aggiorna_archivi_collegati_righe;
begin
  cem.close;
  cem.sql.clear;
  cem.sql.add('select * from cem');
  cem.sql.add('where documento_origine = :tipo_documento');
  cem.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :doc_riga');
  cem.params[0].asstring := tipo_documento + ' ven';
  cem.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  cem.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
  cem.open;
  cem.first;
  while not cem.eof do
  begin
    cem.edit;
    cem.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    cem.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    cem.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    cem.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    cem.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    cem.post;

    cem.next;
  end;

  cmm.close;
  cmm.sql.clear;
  cmm.sql.add('select * from cmm');
  cmm.sql.add('where documento_origine = :tipo_documento');
  cmm.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :doc_riga');
  cmm.params[0].asstring := tipo_documento + ' ven';
  cmm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  cmm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
  cmm.open;
  cmm.first;
  while not cmm.eof do
  begin
    cmm.edit;
    cmm.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    cmm.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    cmm.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    cmm.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    cmm.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    cmm.post;

    cmm.next;
  end;

  ltm.close;
  ltm.sql.clear;
  ltm.sql.add('select * from ltm');
  ltm.sql.add('where documento_origine = :tipo_documento');
  ltm.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :doc_riga');
  ltm.params[0].asstring := tipo_documento + ' ven';
  ltm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
  ltm.open;
  ltm.first;
  while not ltm.eof do
  begin
    ltm.edit;
    ltm.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    ltm.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    ltm.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    ltm.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    ltm.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    ltm.post;

    ltm.next;
  end;

  //  ubicazioni
  ubm.close;
  ubm.sql.text := 'update ubm set data_registrazione = :data_registrazione where documento_origine = :documento_origine and ' +
    'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
  ubm.parambyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
  ubm.parambyname('documento_origine').asstring := tipo_documento + ' ven';
  ubm.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  ubm.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  ubm.execsql;

  lcr.close;
  lcr.sql.clear;
  lcr.sql.add('select * from lcr');
  lcr.sql.add('where documento_origine = :tipo_documento');
  lcr.sql.add('and doc_progressivo_origine = :progressivo and doc_riga_origine = :doc_riga');
  lcr.params[0].asstring := tipo_documento + ' ven';
  lcr.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  lcr.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
  lcr.open;
  lcr.first;
  while not lcr.eof do
  begin
    lcr.edit;
    lcr.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    lcr.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    lcr.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    lcr.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    lcr.fieldbyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    lcr.post;

    lcr.next;
  end;

  if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') then
  begin
    if (tabella.fieldbyname('situazione').asstring = 'evaso') and (tabella.fieldbyname('tmo_codice').asstring <> '') then
    begin
      mmt.sql.clear;
      mmt.sql.add('select *');
      mmt.sql.add('from mmt');
      mmt.sql.add('where documento_origine = :documento_origine');
      mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
      mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' ven';
      mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
      mmt.close;
      mmt.open;
      while not mmt.eof do
      begin
        mmt.edit;

        mmt.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
        mmt.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
        mmt.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
        mmt.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
        mmt.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;

        mmt.post;

        mmt.next;
      end;
    end;
  end;

  rmr.close;
  rmr.parambyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
  if tipo_documento = 'ddt fornitori' then
  begin
    rmr.parambyname('documento_origine').asstring := 'ddt a fornitore';
  end
  else if tipo_documento = 'ddt' then
  begin
    rmr.parambyname('documento_origine').asstring := 'ddt a cliente';
  end
  else if copy(tipo_documento, 1, 7) = 'fattura' then
  begin
    rmr.parambyname('documento_origine').asstring := 'fattura a cliente';
  end
  else if tipo_documento = 'nota credito' then
  begin
    rmr.parambyname('documento_origine').asstring := 'n.credito cliente';
  end;
  rmr.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  rmr.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  rmr.execsql;
end;

procedure tgesven.esegui_gesven02;
var
  pr: tgesven02;
begin
  pr := tgesven02.create(nil);
  if pr.esegui_form then
  begin
    pr.programma_chiamante := 'gesven';
    pr.progressivo := tabella_righe.fieldbyname('progressivo').asinteger;
    pr.riga := tabella_righe.fieldbyname('riga').asinteger;
    pr.tipo_documento := tipo_documento;
    pr.tipo_movimento := tabella_righe.fieldbyname('tipo_movimento').asstring;
    pr.tco_codice := tabella.fieldbyname('tco_codice').asstring;
    pr.tdo_codice_differite := tabella.fieldbyname('tdo_codice_differite').asstring;
    pr.art_codice := v_art_codice.text;
    pr.tag_codice := v_tag_codice.text;
    pr.tag_codice_ca := v_tag_codice_ca.text;
    pr.cli_codice := v_cli_codice.text;
    pr.ind_codice := v_indirizzo.text;
    pr.form_chiamante := self;
    pr.showmodal;
  end;
  pr.free;

  if vecchio_tiv_codice_righe <> tabella_righe.fieldbyname('tiv_codice').asstring then
  begin
    calcola_importo;
  end;
end;

procedure tgesven.controllo_cancella;
begin
  inherited;

  if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
  begin
    messaggio(000, 'il documento è bloccato');
    controllo_cancella_edit := false;
    exit;
  end
  else if (tipo_documento = 'nota credito') and reso_cliente then
  begin
    controllo_cancella_edit := false;
    exit;
  end
  else
  begin
    if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') then
      begin
        if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_vendita_evasi = 'no') then
        begin
          messaggio(000, 'non è consentita la cancellazione dei documenti evasi' + #13 +
            'eseguire la procedura di storno');
          controllo_cancella_edit := false;
          exit;
        end
        else if controllo_esercizio_situazione('cancella') then
        begin
          controllo_cancella_edit := false;
          exit;
        end
        else if tipo_documento = 'fattura differita' then
        begin
          messaggio(000, 'per cancellare la fattura differita eseguire l''operazione di storno');
          controllo_cancella_edit := false;
          exit;
        end;
      end
      else
      begin
        if controllo_ordini_preventivi then
        begin
          controllo_cancella_edit := false;
          exit;
        end
      end;
    end;
  end;
end;

procedure tgesven.controllo_edit;
begin
  inherited;

  if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
  begin
    messaggio(000, 'il documento è bloccato');
    controllo_cancella_edit := false;
    exit;
  end
  else
  begin
    if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      if not forzatura_modifica_cancellazione then
      begin
        if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') then
        begin
          if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_vendita_evasi = 'no') then
          begin
            messaggio(000, 'non è consentita la modifica dei documenti evasi' + #13 +
              'eseguire la procedura di storno');
            controllo_cancella_edit := false;
            exit;
          end
          else if controllo_esercizio_situazione then
          begin
            controllo_cancella_edit := false;
            exit;
          end;
        end
        else
        begin
          if controllo_ordini_preventivi then
          begin
            controllo_cancella_edit := false;
            exit;
          end
        end;
      end;
    end;
  end;
end;

procedure tgesven.controllo_cancella_righe;
begin
  inherited;

  if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
  begin
    messaggio(000, 'il documento è bloccato');
    controllo_cancella_edit := false;
    exit;
  end
  else if (tipo_documento = 'nota credito') and reso_cliente then
  begin
    controllo_cancella_edit := false;
    exit;
  end
  else
  begin
    if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') then
      begin
        if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_vendita_evasi = 'no') then
        begin
          messaggio(000, 'non è consentita la cancellazione dei documenti evasi' + #13 +
            'eseguire la procedura di storno');
          controllo_cancella_edit := false;
          exit;
        end
        else if controllo_esercizio_situazione('cancella') then
        begin
          controllo_cancella_edit := false;
          tabella_righe.cancel;
          exit;
        end
        else if (tipo_documento = 'fattura differita') and
          ((tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven') or (tabella_righe.fieldbyname('documento_origine').asstring = 'bolla ven')) then
        begin
          messaggio(000, 'per variare i dati delle fatture differite' + #13 +
            'eseguire l''operazione di storno e variare il documento di origine');
          controllo_cancella_edit := false;
          exit;
          (*
            end
            else if (tipo_documento = 'nota credito') and (copy(tabella_righe.fieldbyname('documento_origine').asstring, 1, 7) = 'fattura') then
            begin
            messaggio(000, 'non è consentita la cancellazione delle note credito emesse a fronte di fatture clienti');
            controllo_cancella_edit := false;
            exit;
          *)
        end
        else if (tipo_documento = 'nota credito') and (tabella_righe.fieldbyname('documento_origine').asstring = 'ddt clienti acq') then
        begin
          if messaggio(304, 'per variare i dati delle note credito emesse a fronte di ddt da clienti' + #13 +
            'è consigliabile eseguire l''operazione di storno e variare il documento di origine' + #13 + #13 +
            'la cancellazione di tutte le righe non effettuerà la variazione dello stato del documento di origine' + #13 + #13 +
            'conferma per effettuare la cancellazione') <> 1 then
          begin
            controllo_cancella_edit := false;
          end;
          exit;
        end
        else if (tipo_documento = 'fattura immediata') and (copy(tabella_righe.fieldbyname('documento_origine').asstring, 1, 12) = 'contr.punti ') then
        begin
          messaggio(200, 'le fatture generate dalla gestione degli importi prepagati di assistenza tecnica ' + #13 +
            'vanno stornate dal programma di generazione delle fattura (GESPTI)');

          begin
            controllo_cancella_edit := false;
          end;
          exit;
        end
        else if (tipo_documento = 'fattura immediata') and (tabella_righe.fieldbyname('documento_origine').asstring = 'buoni negozio') then
        begin
          messaggio(200, 'le fatture generate dalla gestione dei buoni negozio ' + #13 +
            'vanno stornate dal programma di generazione delle fattura (GESBNG)');

          begin
            controllo_cancella_edit := false;
          end;
          exit;
        end;
      end
      else
      begin
        if controllo_ordini_preventivi then
        begin
          controllo_cancella_edit := false;
          exit;
        end;

        if controllo_cancella_situazione_righe then
        begin
          controllo_cancella_edit := false;
          exit;
        end;
      end;
    end;
  end;
end;

function tgesven.reso_cliente: boolean;
var
  reso: tmyquery_go;
begin
  reso := tmyquery_go.create(nil);
  reso.connection := arc.arcdit;
  reso.sql.add('select fvr.id from fvr');
  reso.sql.add('where fvr.progressivo = :progressivo and fvr.documento_origine = ''ddt clienti acq''');
  reso.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  reso.open;
  result := not reso.eof;

  if result then
  begin
    messaggio(000, 'la nota credito è stata emessa a fronte di un DDT cliente' + slinebreak +
      'per annullarla eseguire l''operazione di storno');
  end;

  freeandnil(reso);
end;

procedure tgesven.controllo_edit_righe;
begin
  inherited;

  if (tabella.fieldbyname('bloccato').asstring = 'si') and not bloccato_click then
  begin
    messaggio(000, 'il documento è bloccato');
    controllo_cancella_edit := false;
    exit;
  end
  else
  begin
    if esiste and (tipo_documento <> tabella.fieldbyname('tipo_documento').asstring) then
    begin
      messaggio(000, 'il tipo documento selezionato non è gestibile con il programma utilizzato');
      controllo_cancella_edit := false;
      exit;
    end
    else
    begin
      if not(screen.activecontrol.name = 'v_costo_unitario') or not forzatura_modifica_cancellazione then
      begin
        if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') then
        begin
          if (tabella.fieldbyname('situazione').asstring = 'evaso') and (cancella_documenti_vendita_evasi = 'no') then
          begin
            messaggio(000, 'non è consentita la modifica dei documenti evasi' + #13 +
              'eseguire la procedura di storno');
            controllo_cancella_edit := false;
            exit;
          end
          else if controllo_esercizio_situazione then
          begin
            controllo_cancella_edit := false;
            exit;
          end
          else if (tipo_documento = 'fattura differita') and (not avviso_differite) and
            ((tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven') or
            (tabella_righe.fieldbyname('documento_origine').asstring = 'bolla ven')) then
          begin
            avviso_differite := true;
            messaggio(000, 'per variare i dati delle fatture differite' + #13 +
              'eseguire l''operazione di storno e variare il documento di origine');
            controllo_cancella_edit := false;
            exit;
          end
          else if (tipo_documento = 'nota credito') and (tabella_righe.fieldbyname('documento_origine').asstring = 'ddt clienti acq') then
          begin
            messaggio(000, 'per variare i dati delle note credito emesse a fronte di ddt da clienti' + #13 +
              'è consigliabile eseguire l''operazione di storno e variare il documento di origine');
            exit;
          end;
        end
        else
        begin
          if controllo_ordini_preventivi then
          begin
            controllo_cancella_edit := false;
            exit;
          end;

          if controllo_situazione_righe then
          begin
            controllo_cancella_edit := false;
            exit;
          end;
        end;
      end;
    end;
  end;
end;

function tgesven.controllo_esercizio_situazione(operazione: string = ''): boolean;
begin
  result := false;

  if (tabella.fieldbyname('situazione_sdi').asstring <> 'in attesa invio') and
    ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
  begin
    messaggio(000, 'documento non modificabile perché inviato a SDI' + slinebreak +
      'situazione [' + tabella.fieldbyname('situazione_sdi').asstring + ']' + slinebreak +
      'esito [' + tabella.fieldbyname('codice_esito_sdi').asstring + ']');
    result := true;
    exit;
  end
  else
  begin
    if esiste then
    begin
      if not((tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo')) then
      begin
        if tabella.fieldbyname('ese_codice').asstring <> esercizio then
        begin
          messaggio(000, 'documento non modificabile perché' + #13 +
            'l''esercizio è diverso da quello attivo');
          result := true;
          exit;
        end
        else if (esercizio_chiuso = 'si') or (esercizio_chiuso_magazzino = 'si') then
        begin
          messaggio(000, 'documento non modificabile perché' + #13 +
            'l''esercizio contabile o quello di magazzino sono stati dichiarati chiusi');
          result := true;
          exit;
        end;
      end;

      if (tabella.fieldbyname('situazione').asstring = 'consolidato') or (tabella.fieldbyname('situazione').asstring = 'consolidato parziale') then
      begin
        if (operazione = 'cancella') or
          not((screen.activecontrol = v_riferimento) or (screen.activecontrol = v_data_riferimento) or
          (screen.activecontrol = v_contatto_commerciale) or (screen.activecontrol = v_nostro_riferimento) or
          (screen.activecontrol = v_descrizione1_riga) or (screen.activecontrol = v_descrizione2_riga) or
          (screen.activecontrol.name = 'v_descrizione_gesven02')) then
        begin
          messaggio(000, 'documento non modificabile perché è già stato consolidato' + #13 +
            'per poterlo modificare va eseguita la procedura di storno' + #13 +
            'o la cancellazione della riga del documento derivato');
          result := true;
          exit;
        end
        else
        begin
          aggiorna_consolidato := true;
        end;
      end;

      if (tabella_righe.state <> dsbrowse) and
        ((tabella_righe.fieldbyname('situazione').asstring = 'consolidato') or
        (tabella_righe.fieldbyname('situazione').asstring = 'consolidato parziale')) then
      begin
        if (operazione = 'cancella') or
          not((screen.activecontrol = v_descrizione1_riga) or (screen.activecontrol = v_descrizione2_riga) or
          (screen.activecontrol.name = 'v_descrizione_gesven02')) then
        begin
          messaggio(000, 'riga documento non modificabile perché è già stata consolidata' + #13 +
            'per poterla modificare va eseguita la procedura di storno' + #13 +
            'o la cancellazione della riga del documento derivato');
          result := true;
          exit;
        end
        else
        begin
          aggiorna_consolidato := true;
        end;
      end;
    end;
  end;
end;

function tgesven.controllo_ordini_preventivi: boolean;
begin
  result := false;

  if esiste_documento then
  begin
    if (tabella.fieldbyname('situazione').asstring = 'evaso') then
    begin
      if messaggio(304, 'il documento è già stato evaso, si conferma l''operazione') <> 1 then
      begin
        result := true;
      end;
    end
    else if (tabella.fieldbyname('situazione').asstring = 'evaso parziale') then
    begin
      if messaggio(304, 'il documento è già stato parzialmente evaso, si conferma l''operazione') <> 1 then
      begin
        result := true;
      end;
    end
    else if (tabella.fieldbyname('situazione').asstring = 'annullato') then
    begin
      messaggio(200, 'il documento è stato annullato e quindi non è modificabile');
      result := true;
    end
    else if (tabella.fieldbyname('situazione').asstring = 'revisionato') then
    begin
      messaggio(200, 'il documento è stato revisionato e quindi non è modificabile');
      result := true;
    end
    else if (tabella.fieldbyname('stampato').asstring <> '') then
    begin
      if tdo.fieldbyname('avvisi_documento_stampato_cliente').asstring = 'si' then
      begin
        if messaggio(300, 'il documento è già stato stampato per il cliente' + #13 +
          'confermare per proseguire con la modifica') <> 1 then
        begin
          result := true;
        end;
      end;
    end;

    if not result then
    begin
      if tdo.fieldbyname('controllo_revisione').asstring = 'si' then
      begin
        if (screen.activecontrol.name <> 'v_trv_codice') and (screen.activecontrol.name <> 'v_note_revisione') then
        begin
          if messaggio(300, 'la modifica del documento richiede la creazione di una revisione' + #13 +
            'si conferma la modifica') = 1 then
          begin
            result := false;
          end
          else
          begin
            result := true;
          end;
        end;
      end;
    end;
  end;
end;

function tgesven.controllo_situazione_righe: boolean;
begin
  result := false;

  if esiste then
  begin
    if (tabella_righe.fieldbyname('situazione').asstring <> 'inserito') then
    begin
      if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') then
      begin
        messaggio(000, 'riga non modificabile perché è già stata evasa' + #13 +
          'per poterla modificare va eseguita la opportuna procedura di storno' + #13 +
          'del documento utilizzato per l''evasione');
        result := true;
      end
      else if (tabella_righe.fieldbyname('situazione').asstring = 'annullato') then
      begin
        messaggio(000, 'riga non modificabile perché annullata');
        result := true;
      end
      else if (tabella_righe.fieldbyname('situazione').asstring = 'revisionato') then
      begin
        messaggio(000, 'riga non modificabile perché revisionata');
        result := true;
      end;
    end
    else if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
    begin
      visualizzato_messaggio := true;
      if ripeti_messaggio <> 'no' then
      begin
        messaggio(000, 'il documento deriva da un documento' + #13 +
          tabella_righe.fieldbyname('documento_origine').asstring + #13 + #13 +
          'la variazione interesserà anche il documento di origine');
      end;
    end;
  end;
end;

function tgesven.controllo_cancella_situazione_righe: boolean;
var
  blocco_cancella: boolean;
  cancella_conai: tmyquery_go;
begin
  result := false;

  if esiste then
  begin
    if controllo_ordini_preventivi then
    begin
      result := true;
    end
    else
    begin
      if (tabella_righe.fieldbyname('situazione').asstring = 'evaso') or
        (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
      begin
        blocco_cancella := true;
        if ((tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo')) and
          (tabella_righe.fieldbyname('riga_origine_conai').asinteger <> 0) then
        begin
          cancella_conai := tmyquery_go.create(nil);
          cancella_conai.connection := tabella.connection;
          cancella_conai.sql.text := 'select situazione from ovr where progressivo = :progressivo and riga = :riga';
          read_tabella(cancella_conai,
            vararrayof([tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga_origine_conai').asinteger]));
          if cancella_conai.fieldbyname('situazione').asstring = 'inserito' then
          begin
            blocco_cancella := false;
          end;
          freeandnil(cancella_conai);
        end;

        if blocco_cancella then
        begin
          messaggio(000, 'riga non cancellabile perché è già stata evasa' + #13 +
            'per poterla cancellare va eseguita la opportuna procedura di storno' + #13 +
            'del documento utilizzato per l''evasione');
          result := true;
        end;
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
      begin
        visualizzato_messaggio := true;
        if ripeti_messaggio <> 'no' then
        begin
          messaggio(000, 'il documento deriva da un documento' + #13 +
            tabella_righe.fieldbyname('documento_origine').asstring + #13 + #13 +
            'la variazione interesserà anche il documento di origine');
        end;
      end;
    end;
  end;
end;

procedure tgesven.abilita_pannello_righe(attivo: boolean);
begin
  inherited;
  abilita_campi_opzionali(attivo);
end;

procedure tgesven.abilita_campi_opzionali(flag: boolean);
begin
  if not flag then
  begin
    v_descrizione1_riga.enabled := false;
    v_descrizione1_riga.color := clbtnface;

    v_descrizione2_riga.enabled := false;
    v_descrizione2_riga.color := clbtnface;

    v_numero_colli_riga.enabled := false;
    v_numero_colli_riga.color := clbtnface;

    v_numero_confezioni.enabled := false;
    v_numero_confezioni.color := clbtnface;

    v_tum_codice.enabled := false;
    v_tum_codice.color := clbtnface;

    v_tipo_movimento.enabled := false;
    v_tipo_movimento.color := clbtnface;
  end
  else
  begin
    if trim(v_art_codice.text) <> '' then
    begin
      v_descrizione1_riga.enabled := true;
      v_descrizione1_riga.color := clwindow;

      v_descrizione2_riga.enabled := true;
      v_descrizione2_riga.color := clwindow;

      v_numero_colli_riga.enabled := true;
      v_numero_colli_riga.color := clwindow;

      v_numero_confezioni.enabled := true;
      v_numero_confezioni.color := clwindow;

      v_tum_codice.enabled := true;
      v_tum_codice.color := clwindow;

      v_tipo_movimento.enabled := false;
      v_tipo_movimento.color := clwindow;
    end
    else
    begin
      v_descrizione1_riga.enabled := true;
      v_descrizione1_riga.color := clwindow;

      v_descrizione2_riga.enabled := true;
      v_descrizione2_riga.color := clwindow;

      v_numero_colli_riga.enabled := false;
      v_numero_colli_riga.color := clbtnface;

      v_numero_confezioni.enabled := false;
      v_numero_confezioni.color := clbtnface;

      v_tum_codice.enabled := false;
      v_tum_codice.color := clbtnface;

      v_tipo_movimento.enabled := false;
      v_tipo_movimento.color := clbtnface;
    end;
  end;
end;

procedure tgesven.gestisci_collegato;
var
  pr: tgesmtrcoplet;
begin
  parametri_extra_programma_chiamato[29] := tabella_righe.fieldbyname('doc_riga_origine').asinteger;
  if tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESPREV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESORDV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'bolla ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESBOLV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'corrispettivo ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESCORV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESDDTV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'fattura accompagnatoria ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESFAAV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'fattura differita ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESFADV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'fattura immediata ven' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESFAIV', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt acq' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESDDTA', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'contratto assistenza' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESAST', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'assistenza tecnica' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESIAST', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'produzione' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESORDP', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'lavorazione' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESORDL', codice_passato, false);
  end
  else if copy(tabella_righe.fieldbyname('documento_origine').asstring, 1, 12) = 'contr.punti ' then
  begin
    codice_passato := vararrayof([copy(tabella_righe.fieldbyname('documento_origine').asstring, 13, 08),
      copy(tabella_righe.fieldbyname('documento_origine').asstring, 21, 10)]);
    esegui_programma('GESPTI', codice_passato, false);
  end
  else if (tabella_righe.fieldbyname('documento_origine').asstring = 'chiamata assistenza') or
    (tabella_righe.fieldbyname('documento_origine').asstring = 'consuntivo assistenza') or
    (tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo assistenza') then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESCAS', codice_passato, false);
  end
  else if (tabella_righe.fieldbyname('documento_origine').asstring = 'costo copie assistenza') then
  begin
    parametri_extra_programma_chiamato[29] := null;
    pr := tgesmtrcoplet.create(nil);
    pr.codice := vararrayof([tabella_righe.fieldbyname('doc_progressivo_origine').asstring, 0]);
    pr.showmodal;
    pr.free;
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'spedizioni' then
  begin
    if tabella_righe.fieldbyname('doc_progressivo_origine').asinteger <> 0 then
    begin
      codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asinteger;
      esegui_programma('GESSPD', codice_passato, false);
    end
    else
    begin
      messaggio(100, 'riga derivata dal raggruppamento di spedizioni diverse');
    end;
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'lavorazione conto terzi' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESLCT', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'stato avanzamento commesse' then
  begin
    codice_passato := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
    esegui_programma('GESSAL', codice_passato, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt clienti acq' then
  begin
    esegui_programma('GESDDTC', tabella_righe.fieldbyname('doc_progressivo_origine').asinteger, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'riparazioni conto terzi' then
  begin
    esegui_programma('GESRIPCT', tabella_righe.fieldbyname('doc_progressivo_origine').asinteger, false);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'vendita negozio' then
  begin
    messaggio(100, 'fattura generata dalla gestione negozio');
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'documento web' then
  begin
    esegui_programma('GESDOCW', tabella_righe.fieldbyname('doc_progressivo_origine').asinteger, true);
  end
end;

procedure TGESVEN.v_gen_codice_righeExit(Sender: TObject);
begin
  inherited;
  gen_codice_righe_controllo(true);
end;

procedure TGESVEN.v_fvtddtClick(Sender: TObject);
var
  pr: tfvtddt;
begin
  pr := tfvtddt.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := vararrayof([v_progressivo.text, 0, '']);
    pr.showmodal;
  end;
  pr.free;
end;

procedure tgesven.v_gestione_collegatoclick(sender: tobject);
begin
  inherited;
  gestisci_collegato;
end;

procedure tgesven.assegna_valore_tlv_codice;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    if tabella.fieldbyname('tlv_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tlv_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tpa_codice;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    if tabella.fieldbyname('tpa_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpa_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tsm_codice;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    if tabella.fieldbyname('tsm_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsm_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_indirizzo;
begin
end;

procedure tgesven.assegna_valore_tag_codice;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('tag_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tag_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tag_codice_ca;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('tag_codice_ca').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tag_codice_ca').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tiv_codice;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('tiv_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tiv_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tcc_codice;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('tcc_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tcc_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_codice_abi;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('codice_abi').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_abi').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_codice_cab;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('codice_cab').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_cab').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tba_codice;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('tba_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tba_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tmo_codice;
begin
  if (tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo') then
  begin
    if tabella.fieldbyname('tmo_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tmo_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tma_codice_ordine;
begin
  if (copy(tipo_documento, 1, 10) = 'preventivo') then
  begin
    if tabella.fieldbyname('tma_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tmo_codice_collegato;
begin
end;

procedure tgesven.assegna_valore_tma_codice_collegato_ordine;
begin
end;

procedure tgesven.assegna_valore_tsp_codice;
begin
  if (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
  begin
    if tabella.fieldbyname('tsp_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tsp_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tst_codice;
begin
  if (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
  begin
    if tabella.fieldbyname('tst_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tst_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_cli_codice_fatturazione;
begin
  if (tipo_documento = 'ddt fornitori') or (tipo_documento = 'preventivo nominativi') then
  begin
    if tabella.fieldbyname('cli_codice_fatturazione').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('cli_codice_fatturazione').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_tpo_codice;
begin
  if (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
  begin
    if tabella.fieldbyname('tpo_codice').asstring <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tpo_codice').asstring := '';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_addebito_spese_fattura;
begin
  if (tipo_documento = 'ddt fornitori') then
  begin
    if tabella.fieldbyname('addebito_spese_fattura').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('addebito_spese_fattura').asstring := 'no';
      end;
    end;
  end;
end;

procedure tgesven.assegna_valore_intra;
begin
  if controllo then
  begin
    if v_intra.checked then
    begin
      if not((tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito')) then
      begin
        if tabella.fieldbyname('rettifica_intra').asstring <> 'no' then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('rettifica_intra').asstring := 'no';
          end;
        end;
      end;
      if tabella.fieldbyname('rettifica_intra').asstring = 'no' then
      begin
        if tabella.fieldbyname('mese_rettifica_intra').asinteger <> 0 then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('mese_rettifica_intra').asinteger := 0;
          end;
        end;
        if tabella.fieldbyname('trimestre_rettifica_intra').asinteger <> 0 then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('trimestre_rettifica_intra').asinteger := 0;
          end;
        end;
        if tabella.fieldbyname('anno_rettifica_intra').asinteger <> 0 then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('anno_rettifica_intra').asinteger := 0;
          end;
        end;
      end;
    end
    else
    begin
      if tabella.fieldbyname('rettifica_intra').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('rettifica_intra').asstring := 'no';
        end;
      end;
      if tabella.fieldbyname('mese_rettifica_intra').asinteger <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('mese_rettifica_intra').asinteger := 0;
        end;
      end;
      if tabella.fieldbyname('trimestre_rettifica_intra').asinteger <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('trimestre_rettifica_intra').asinteger := 0;
        end;
      end;
      if tabella.fieldbyname('anno_rettifica_intra').asinteger <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('anno_rettifica_intra').asinteger := 0;
        end;
      end;
    end;
  end;
end;

procedure tgesven.abilita_intra;
begin
  if v_intra.checked then
  begin
    v_tna_codice_intra.enabled := true;
    v_tna_codice_intra.color := clwindow;
    if (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
    begin
      v_rettifica_intra.enabled := true;
    end;
  end
  else
  begin
    v_tna_codice_intra.enabled := false;
    // v_mese_rettifica_intra.enabled := false;
    // v_trimestre_rettifica_intra.enabled := false;
    // v_anno_rettifica_intra.enabled := false;
    v_rettifica_intra.enabled := false;

    v_tna_codice_intra.color := clbtnface;
    // v_mese_rettifica_intra.color := clbtnface;
    // v_trimestre_rettifica_intra.color := clbtnface;
    // v_anno_rettifica_intra.color := clbtnface;
  end;
end;

procedure tgesven.v_commesseclick(sender: tobject);
begin
  inherited;
  esegui_commesse;
end;

procedure tgesven.esegui_commesse;
var
  cfg_tipo, tipo_movimento: string;
  quantita, importo: double;
begin
  if (commesse = 'si') and (tipo_documento <> 'ordine') then
  begin
    gen.close;
    gen.parambyname('gen_codice').asstring := tabella_righe.fieldbyname('gen_codice').asstring;
    gen.open;
    if (gen.fieldbyname('tipo').asstring = 'patrimoniale') and (arc.dit.fieldbyname('commesse_patrimoniali').asstring <> 'si') then
    begin
      messaggio(200, 'aggiornamento commesse non eseguibile perché' + #13 +
        'il sottoconto contabile è patrimoniale');
    end
    else
    begin
      codice_passato := vararrayof([tipo_documento + ' ven', tabella_righe.fieldbyname('progressivo').asfloat,
        tabella_righe.fieldbyname('riga').asinteger, 0]);

      quantita := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
      if v_tipo_movimento.text = 'normale' then
      begin
        if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
        begin
          importo := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat);
        end
        else
        begin
          importo := arrotonda(tabella_righe.fieldbyname('importo_euro').asfloat -
            tabella_righe.fieldbyname('importo_iva_euro').asfloat);
        end;
      end
      else
      begin
        importo := 0;
      end;

      if read_tabella(arc.arcdit, 'tco', 'codice', tabella.fieldbyname('tco_codice').asstring, 'segno_registro_iva') then
      begin
        tipo_movimento := 'ricavo';
        if archivio.fieldbyname('segno_registro_iva').asstring = 'decrementa' then
        begin
          quantita := quantita * -1;
          importo := importo * -1;
        end;
      end
      else
      begin
        if read_tabella(arc.arcdit, 'tmo', 'codice', tabella.fieldbyname('tmo_codice').asstring, 'esistenza') then
        begin
          if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
          begin
            tipo_movimento := 'costo';
            quantita := quantita * -1;
            importo := importo * -1;
          end
          else
          begin
            tipo_movimento := 'costo';
          end;
        end
        else
        begin
          tipo_movimento := 'costo';
        end;
      end;

      if tipo_documento = 'ddt fornitori' then
      begin
        cfg_tipo := 'F';
      end
      else
      begin
        cfg_tipo := 'C';
      end;

      esegui_carcmm(codice_passato, cfg_tipo, v_cli_codice.text,
        v_art_codice.text, v_serie_documento.text, v_descrizione1_riga.text, v_descrizione1_riga.text, tipo_movimento,
        v_data_documento.date, v_data_documento.date, importo, v_numero_documento.value,
        tabella_righe.fieldbyname('cms_codice').asstring, tabella_righe.fieldbyname('tipologia').asstring,
        quantita, esiste_righe);
    end;
  end;
end;

procedure tgesven.v_log_revisioneclick(sender: tobject);
var
  pr: tanarev;
begin
  inherited;
  pr := tanarev.create(nil);
  pr.modulo := 'vendite';
  pr.tipo_documento := tabella.fieldbyname('tipo_documento').asstring;
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  if tabella.fieldbyname('progressivo_origine_revisione').asinteger <> 0 then
  begin
    pr.progressivo_origine_revisione := tabella.fieldbyname('progressivo_origine_revisione').asinteger;
  end
  else
  begin
    pr.progressivo_origine_revisione := tabella.fieldbyname('progressivo').asinteger;
  end;
  pr.showmodal;
  pr.free;
end;

procedure tgesven.v_lotticlick(sender: tobject);
begin
  inherited;
  esegui_lotti;
end;

function tgesven.esercizio_diverso: boolean;
begin
  if (tabella.fieldbyname('ese_codice').asstring <> esercizio) and
    (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') then
  begin
    messaggio(000, 'esercizio del documento diverso da quello attivo');
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

procedure tgesven.stampa;
var
  prosegui: boolean;
  salva_programma_stampa: string;
begin
  prosegui := true;

  if (tabella.fieldbyname('tipo_documento').asstring = 'corrispettivo') and
    (tabella.fieldbyname('situazione').asstring = 'inserito') and
    (tabella.fieldbyname('importo_totale_imponibile').asfloat < 0) and
    (tdo.fieldbyname('emissione_scontrino').asstring = 'si') then
  begin
    if (data_scontrino_reso = 0) or (numero_scontrino_reso = '') then
    begin
      if messaggio(304, 'non sono stati indicati i riferimenti' + slinebreak +
        'dello scontrino di vendita' + slinebreak + slinebreak +
        'conferma per proseguire comunque') <> 1 then
      begin
        prosegui := false;
      end;
    end;
  end;

  if esercizio_diverso then
  begin
    if ((tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or (copy(tipo_documento, 1, 3) = 'ddt') or
      (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) and
      (tabella.fieldbyname('situazione').asstring = 'inserito') then
    begin
      prosegui := false;
    end;
  end;

  if prosegui then
  begin
    if not tabella_righe.isempty then
    begin
      aggiorna_dcm('azzera', progressivo_confermato);

      tdo_codice_controllo(true);

      codice_archivio := v_progressivo.value;
      salva_programma_stampa := programma_stampa;
      if tabella.fieldbyname('fattura_professionisti').asstring = 'si' then
      begin
        if tipo_documento = 'fattura immediata' then
        begin
          programma_stampa := 'STAFAIVP';
        end
        else if tipo_documento = 'nota credito' then
        begin
          programma_stampa := 'STANOCVP';
        end
        else if tipo_documento = 'ordine' then
        begin
          programma_stampa := 'STAORDVP';
        end;
      end;

      if stampa_immediata_etichette = 'si' then
      begin
        if messaggio(300, 'stampa etichette?') = 1 then
        begin
          stampa_etichette;
        end;
      end;

      inherited;

      programma_stampa := salva_programma_stampa;

      tabella.refresh;
      tabella_righe.refresh;

      if (consolidamento = 'si') and (tabella.fieldbyname('situazione').asstring = 'evaso') then
      begin
        codice_passato := vararrayof([tipo_documento, v_progressivo.value, consolidamento]);
        parametri_extra_programma_chiamato[0] := true;
        esegui_programma('CONDOCV', codice_passato, true);
      end;
    end;
  end;
end;

procedure tgesven.v_tna_codice_intraexit(sender: tobject);
begin
  inherited;
  tna_codice_intra_controllo(true);
end;

procedure tgesven.tna_codice_intra_controllo(blocco: boolean);
begin
  if v_tna_codice_intra.enabled then
  begin
    tabella_controllo(true, tna_intra, v_tna_codice_intra, blocco, tab_control, tab_testata_riferimento, tabella);
  end;
end;

procedure tgesven.v_griglia_righekeydown(sender: tobject;
  var
  key: word;
  shift:
  tshiftstate);
var
  query_rma: tmyquery_go;
begin
  if ((key = vk_f8) and (shift = [ssctrl])) then
  begin
    esegui_gesdocgri;
  end
  else
  begin
    if ((key = vk_insert) and (shift = [ssctrl])) or
      ((key = vk_return) and (shift = [])) or
      ((key = vk_insert) and (shift = [ssalt])) then
    begin
      if not((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine')) then
      begin
        if tabella.fieldbyname('situazione').asstring = 'evaso' then
        begin
          if tabella.fieldbyname('tmo_codice_collegato').asstring <> '' then
          begin
            messaggio(000, 'non è possibile inserire righe in un documento con movimenti collegati');
            v_griglia_righe.setfocus;
            abort;
          end
          else
          begin
            if tabella.fieldbyname('tmo_codice').asstring <> '' then
            begin
              mmt.sql.clear;
              mmt.sql.add('select *');
              mmt.sql.add('from mmt');
              mmt.sql.add('where documento_origine = :documento_origine');
              mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
              mmt.params[0].asstring := tabella.fieldbyname('tipo_documento').asstring + ' ven';
              mmt.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
              mmt.close;
              mmt.open;
              if mmt.eof then
              begin
                mmt_progressivo_evaso := 0;
                messaggio(000, 'non è possibile inserire righe in un documento già evaso senza righe');
                v_griglia_righe.setfocus;
                abort;
              end
              else
              begin
                mmt_progressivo_evaso := mmt.fieldbyname('progressivo').asinteger;
              end;
            end;
          end;
        end;
      end;
    end;

    inherited;

    if (key = vk_f9) and (shift = [ssctrl]) then
    begin
      if (tipo_documento = 'nota credito') and (tabella.fieldbyname('iva_sospensione').asstring = 'no') then
      begin
        evasione_documento_nota_credito_fattura;
        tabella_righe.refresh;
      end
    end;

    if (key = vk_f9) and (shift = []) then
    begin
      if (tipo_documento = 'ordine') or not controllo_esercizio_situazione then
      begin
        if tdo_codice_conto_vendita <> '' then
        begin
          evasione_documento('ddt');
        end
        else
        begin
          if tipo_documento = 'ordine' then
          begin
            evasione_documento('preventivo');
          end
          else if ((tipo_documento = 'ddt') or (tipo_documento = 'bolla') or
            (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura immediata') or
            (tipo_documento = 'corrispettivo') or (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito')) and
            (v_situazione.text = 'inserito') then
          begin
            evasione_documento('ordine');
          end
          else if tipo_documento = 'ddt fornitori' then
          begin
            evasione_documento('ddt fornitori');
          end;
        end;

        tabella_righe.refresh;
      end;
    end;

    if (key = vk_f7) and (shift = [ssctrl]) then
    begin
      query_rma := tmyquery_go.create(nil);
      query_rma.connection := arc.arcdit;
      query_rma.sql.text := 'select progressivo, riga from rmr where documento_origine = :documento_origine ' +
        'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';

      if tipo_documento = 'ddt fornitori' then
      begin
        query_rma.parambyname('documento_origine').asstring := 'ddt a fornitore';
      end
      else if tipo_documento = 'ddt' then
      begin
        query_rma.parambyname('documento_origine').asstring := 'ddt a cliente';
      end
      else if tipo_documento = 'nota credito' then
      begin
        query_rma.parambyname('documento_origine').asstring := 'n.credito cliente';
      end
      else if copy(tipo_documento, 1, 7) = 'fattura' then
      begin
        query_rma.parambyname('documento_origine').asstring := 'fattura a cliente';
      end;
      query_rma.parambyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      query_rma.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
      query_rma.open;
      if query_rma.isempty then
      begin
        messaggio(100, 'non esiste una RMA collegata');
      end
      else
      begin
        parametri_extra_programma_chiamato[29] := query_rma.fieldbyname('riga').asinteger;
        esegui_programma('GESRMA', query_rma.fieldbyname('progressivo').asinteger, true);
      end;

      query_rma.free;
    end;

    if (key = vk_f2) and (shift = [ssctrl]) then
    begin
      codice_archivio := vararrayof(['', '']);
      if tipo_documento = 'ddt fornitori' then
      begin
        esegui_visarc(arc.arcdit, 'ARF', 'ARFFRN', codice_archivio, tabella.fieldbyname('cli_codice').asstring, '', '', '', '', '');
      end
      else
      begin
        esegui_visarc(arc.arcdit, 'ARC', 'ARCLCLI', codice_archivio, tabella.fieldbyname('cli_codice').asstring, '', '', '', '', '');
      end;
      if codice_archivio[1] <> '' then
      begin
        assegna_righe(1);
        v_art_codice.text := codice_archivio[1];
        variato_stringa := '';
        v_art_codiceexit(v_art_codice);
        abilita_pannello_righe(true);
      end;
    end;

    //  caricamento vuoti
    if (key = vk_f5) and (shift = [ssctrl]) then
    begin
      if art.fieldbyname('vuo_codice').asstring <> '' then
      begin
        esegui_vuoti_resi;
      end;
    end;
  end;
end;

procedure TGESVEN.esegui_gesdocgri;
var
  pr: tgesdocgri;
  ultima_riga: integer;
  prosegui: boolean;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    messaggio(200, 'funzione non prevista per i ddt fornitori');
  end
  else if (tabella.fieldbyname('situazione').asstring <> 'inserito') then
  begin
    messaggio(200, 'la situazione del documento [' + tabella.fieldbyname('situazione').asstring +
      '] non consente la gestione');
  end
  else
  begin
    prosegui := true;

    if tabella.fieldbyname('stampato').asstring <> '' then
    begin
      if tdo.fieldbyname('avvisi_documento_stampato_cliente').asstring = 'si' then
      begin
        if messaggio(300, 'il documento è già stato stampato per il cliente' + #13 +
          'confermare per proseguire con la modifica') <> 1 then
        begin
          prosegui := false;
        end;
      end;
    end;

    if prosegui then
    begin
      pr := tgesdocgri.create(nil);
      pr.prg_codice := programma;
      pr.nome_tabella := tabella_righe_tablename;
      pr.cfg_codice := tabella.fieldbyname('cli_codice').asstring;
      pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr.tipo_prezzo := tipo_prezzo;
      pr.modulo := 'vendite';
      pr.testata := tabella;
      pr.solo_righe_documento := tdo.fieldbyname('solo_righe_documento').asstring;

      pr.showmodal;

      if not pr.premuto_escape and not pr.docgri.isempty then
      begin
        tabella_righe.disablecontrols;
        tabella_righe.last;
        ultima_riga := tabella_righe.fieldbyname('riga').asinteger;

        apri_transazione;
        try
          try
            pr.docgri.first;
            while not pr.docgri.eof do
            begin
              if pr.docgri.fieldbyname('riga').asinteger <> 0 then
              begin
                tabella_righe.locate('riga', pr.docgri.fieldbyname('riga').asinteger, []);

                assegna_vecchio_righe;

                if (pr.docgri.fieldbyname('quantita').asfloat = 0) or
                  (pr.docgri.fieldbyname('cancellata').asstring = 'si') then
                begin
                  cancella_righe;
                end
                else if (tabella_righe.fieldbyname('descrizione1').asstring <> pr.docgri.fieldbyname('descrizione1').asstring) or
                  (tabella_righe.fieldbyname('descrizione2').asstring <> pr.docgri.fieldbyname('descrizione2').asstring) or
                  (tabella_righe.fieldbyname('numero_colli').asinteger <> pr.docgri.fieldbyname('numero_colli').asinteger) or
                  (tabella_righe.fieldbyname('numero_confezioni').asinteger <> pr.docgri.fieldbyname('numero_confezioni').asinteger) or
                  (tabella_righe.fieldbyname('tum_codice').asstring <> pr.docgri.fieldbyname('tum_codice').asstring) or
                  (tabella_righe.fieldbyname('quantita').asfloat <> pr.docgri.fieldbyname('quantita').asfloat) or
                  (tabella_righe.fieldbyname('prezzo').asfloat <> pr.docgri.fieldbyname('prezzo').asfloat) or
                  (tabella_righe.fieldbyname('prezzo_netto').asfloat <> pr.docgri.fieldbyname('prezzo_netto').asfloat) or
                  (tabella_righe.fieldbyname('prezzo_netto_listino').asfloat <> pr.docgri.fieldbyname('prezzo_netto_listino').asfloat) or
                  (tabella_righe.fieldbyname('tsm_codice').asstring <> pr.docgri.fieldbyname('tsm_codice').asstring) or
                  (tabella_righe.fieldbyname('tsm_codice_art').asstring <> pr.docgri.fieldbyname('tsm_codice_art').asstring) or
                  (tabella_righe.fieldbyname('importo_sconto').asfloat <> pr.docgri.fieldbyname('importo_sconto').asfloat) or
                  (tabella_righe.fieldbyname('tipo_movimento').asstring <> pr.docgri.fieldbyname('tipo_movimento').asstring) or
                  (tabella_righe.fieldbyname('importo').asfloat <> pr.docgri.fieldbyname('importo').asfloat) or
                  (tabella_righe.fieldbyname('tiv_codice').asstring <> pr.docgri.fieldbyname('tiv_codice').asstring) or
                  (tabella_righe.fieldbyname('data_consegna').asdatetime <> pr.docgri.fieldbyname('data_consegna').asdatetime) then
                begin
                  if (tabella_righe.fieldbyname('quantita').asfloat <> pr.docgri.fieldbyname('quantita').asfloat) or
                    (tabella_righe.fieldbyname('prezzo').asfloat <> pr.docgri.fieldbyname('prezzo').asfloat) or
                    (tabella_righe.fieldbyname('prezzo_netto').asfloat <> pr.docgri.fieldbyname('prezzo_netto').asfloat) or
                    (tabella_righe.fieldbyname('prezzo_netto_listino').asfloat <> pr.docgri.fieldbyname('prezzo_netto_listino').asfloat) or
                    (tabella_righe.fieldbyname('tsm_codice').asstring <> pr.docgri.fieldbyname('tsm_codice').asstring) or
                    (tabella_righe.fieldbyname('tsm_codice_art').asstring <> pr.docgri.fieldbyname('tsm_codice_art').asstring) or
                    (tabella_righe.fieldbyname('importo_sconto').asfloat <> pr.docgri.fieldbyname('importo_sconto').asfloat) or
                    (tabella_righe.fieldbyname('tipo_movimento').asstring <> pr.docgri.fieldbyname('tipo_movimento').asstring) or
                    (tabella_righe.fieldbyname('importo').asfloat <> pr.docgri.fieldbyname('importo').asfloat) then
                  begin
                    variato_provvigioni := true;
                  end;

                  if tabella_edit(tabella_righe) then
                  begin
                    tabella_righe.fieldbyname('descrizione1').asstring := pr.docgri.fieldbyname('descrizione1').asstring;
                    tabella_righe.fieldbyname('descrizione2').asstring := pr.docgri.fieldbyname('descrizione2').asstring;
                    tabella_righe.fieldbyname('numero_colli').asinteger := pr.docgri.fieldbyname('numero_colli').asinteger;
                    tabella_righe.fieldbyname('numero_confezioni').asinteger := pr.docgri.fieldbyname('numero_confezioni').asinteger;
                    tabella_righe.fieldbyname('tum_codice').asstring := pr.docgri.fieldbyname('tum_codice').asstring;

                    if tabella_righe.fieldbyname('quantita').asfloat <> 0 then
                    begin
                      tabella_righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('tum_quantita_base').asfloat *
                        pr.docgri.fieldbyname('quantita').asfloat / tabella_righe.fieldbyname('quantita').asfloat;
                    end
                    else
                    begin
                      tabella_righe.fieldbyname('tum_quantita_base').asfloat := 0;
                    end;

                    tabella_righe.fieldbyname('quantita').asfloat := pr.docgri.fieldbyname('quantita').asfloat;
                    tabella_righe.fieldbyname('prezzo').asfloat := pr.docgri.fieldbyname('prezzo').asfloat;
                    tabella_righe.fieldbyname('prezzo_netto').asfloat := pr.docgri.fieldbyname('prezzo_netto').asfloat;
                    tabella_righe.fieldbyname('prezzo_netto_listino').asfloat := pr.docgri.fieldbyname('prezzo_netto_listino').asfloat;
                    tabella_righe.fieldbyname('tsm_codice').asstring := pr.docgri.fieldbyname('tsm_codice').asstring;
                    tabella_righe.fieldbyname('tsm_codice_art').asstring := pr.docgri.fieldbyname('tsm_codice_art').asstring;
                    tabella_righe.fieldbyname('importo_sconto').asfloat := pr.docgri.fieldbyname('importo_sconto').asfloat;
                    tabella_righe.fieldbyname('tipo_movimento').asstring := pr.docgri.fieldbyname('tipo_movimento').asstring;
                    tabella_righe.fieldbyname('importo').asfloat := pr.docgri.fieldbyname('importo').asfloat;
                    tabella_righe.fieldbyname('importo_euro').asfloat := pr.docgri.fieldbyname('importo_euro').asfloat;
                    tabella_righe.fieldbyname('importo_iva').asfloat := pr.docgri.fieldbyname('importo_iva').asfloat;
                    tabella_righe.fieldbyname('importo_iva_euro').asfloat := pr.docgri.fieldbyname('importo_iva_euro').asfloat;
                    tabella_righe.fieldbyname('tiv_codice').asstring := pr.docgri.fieldbyname('tiv_codice').asstring;
                    tabella_righe.fieldbyname('data_consegna').asdatetime := pr.docgri.fieldbyname('data_consegna').asdatetime;
                    if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
                    begin
                      tabella_righe.fieldbyname('data_consegna').value := null;
                    end;

                    assegna_provvigioni;
                    scrivi_record_righe;
                  end;
                end;
              end
              else
              begin
                if pr.docgri.fieldbyname('cancellata').asstring = 'no' then
                begin
                  azzera_vecchio_righe;

                  ultima_riga := ultima_riga + incremento_righe;

                  tabella_righe.append;

                  tabella_righe.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
                  tabella_righe.fieldbyname('riga').asinteger := ultima_riga;

                  tabella_righe.fieldbyname('art_codice').asstring := pr.docgri.fieldbyname('art_codice').asstring;
                  tabella_righe.fieldbyname('descrizione1').asstring := pr.docgri.fieldbyname('descrizione1').asstring;
                  tabella_righe.fieldbyname('descrizione2').asstring := pr.docgri.fieldbyname('descrizione2').asstring;
                  tabella_righe.fieldbyname('numero_colli').asinteger := pr.docgri.fieldbyname('numero_colli').asinteger;
                  tabella_righe.fieldbyname('numero_confezioni').asinteger := pr.docgri.fieldbyname('numero_confezioni').asinteger;
                  tabella_righe.fieldbyname('tum_codice').asstring := pr.docgri.fieldbyname('tum_codice').asstring;
                  tabella_righe.fieldbyname('quantita').asfloat := pr.docgri.fieldbyname('quantita').asfloat;

                  read_tabella(art, pr.docgri.fieldbyname('art_codice').asstring);
                  assegna_tum_quantita_base;
                  if tabella_righe.fieldbyname('tum_quantita_base').asfloat = 0 then
                  begin
                    tabella_righe.fieldbyname('tum_quantita_base').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
                  end;

                  tabella_righe.fieldbyname('prezzo').asfloat := pr.docgri.fieldbyname('prezzo').asfloat;
                  tabella_righe.fieldbyname('prezzo_netto').asfloat := pr.docgri.fieldbyname('prezzo_netto').asfloat;
                  tabella_righe.fieldbyname('prezzo_netto_listino').asfloat := pr.docgri.fieldbyname('prezzo_netto_listino').asfloat;
                  tabella_righe.fieldbyname('tsm_codice').asstring := pr.docgri.fieldbyname('tsm_codice').asstring;
                  tabella_righe.fieldbyname('tsm_codice_art').asstring := pr.docgri.fieldbyname('tsm_codice_art').asstring;
                  tabella_righe.fieldbyname('importo_sconto').asfloat := pr.docgri.fieldbyname('importo_sconto').asfloat;
                  tabella_righe.fieldbyname('tipo_movimento').asstring := pr.docgri.fieldbyname('tipo_movimento').asstring;
                  tabella_righe.fieldbyname('importo').asfloat := pr.docgri.fieldbyname('importo').asfloat;
                  tabella_righe.fieldbyname('importo_euro').asfloat := pr.docgri.fieldbyname('importo_euro').asfloat;
                  tabella_righe.fieldbyname('importo_iva').asfloat := pr.docgri.fieldbyname('importo_iva').asfloat;
                  tabella_righe.fieldbyname('importo_iva_euro').asfloat := pr.docgri.fieldbyname('importo_iva_euro').asfloat;
                  tabella_righe.fieldbyname('tiv_codice').asstring := pr.docgri.fieldbyname('tiv_codice').asstring;
                  tabella_righe.fieldbyname('data_consegna').asdatetime := pr.docgri.fieldbyname('data_consegna').asdatetime;
                  if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
                  begin
                    tabella_righe.fieldbyname('data_consegna').value := null;
                  end;

                  tabella_righe.fieldbyname('iva_bloccata').asstring := tabella.fieldbyname('iva_bloccata').asstring;

                  assegna_provvigioni;
                  scrivi_record_righe;
                end;
              end;

              pr.docgri.delete;
            end;

            commit_transazione;
          except
            on e: exception do
            begin
              rollback_transazione(e.message);
            end;
          end;
        finally
          tabella_righe.enablecontrols;
          chiudi_transazione;

          abilita_pannello_righe(true);
        end;
        tabella_righe.refresh;
      end;

      freeandnil(pr);
    end;
  end;
end;

procedure TGESVEN.esegui_vuoti_resi;
var
  pr: tgesvuodoc;
begin
  if ((tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or (tipo_documento = 'ddt') or
    (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura differita')) and
    (art.fieldbyname('vuo_codice').asstring <> '') and (art.fieldbyname('vuo_codice').asstring <> '') then
  begin
    if ((tipo_documento = 'corrispettivo') or (copy(tipo_documento, 1, 7) = 'fattura')) and
      (tabella.fieldbyname('situazione').asstring = 'consolidato') then
    begin
      messaggio(000, 'documento consolidato' + slinebreak + 'operazione non consentita');
    end
    else
    begin
      pr := tgesvuodoc.create(nil);
      pr.vuo_codice := art.fieldbyname('vuo_codice').asstring;
      pr.documento_origine := tipo_documento;
      pr.doc_progressivo_origine := tabella.fieldbyname('progressivo').asinteger;
      pr.cfg_tipo := 'C';
      pr.cfg_codice := tabella.fieldbyname('cli_codice').asstring;
      pr.data := tabella.fieldbyname('data_documento').asdatetime;
      pr.showmodal;

      pr.free;
    end;
  end;
end;

procedure TGESVEN.v_griglia_righeKeyPress(Sender: TObject; var Key: Char);
var
  pr: timpalf;
  codice_barre: string;
  assegnato: boolean;
begin
  codice_barre := '';
  if ((key >= ' ') and (key <= 'z')) then
  begin
    pr := timpalf.create(nil);
    pr.v_form_caption := 'Lettura codice a barre';
    pr.v_descrizione_caption := 'barcode';
    pr.input_visarc := true;
    pr.help := '';
    pr.valore_passato := char(key);
    pr.tipo_campo := 'alfa';
    pr.v_width_campo := 30;
    pr.decimali := 0;
    pr.showmodal;

    if not pr.premuto_escape then
    begin
      codice_barre := pr.valore_passato;
    end;
    pr.free;

    if codice_barre <> '' then
    begin
      assegnato := false;
      v_art_codice_barcode.text := codice_barre;
      tabella_controllo(false, art, v_art_codice_barcode, true, nil, nil, nil);
      if art.isempty then
      begin
        codice_archivio := '';
        esegui_visarc(arc.arcdit, 'ART', 'ART', codice_archivio, '', '', '', '', '', '');
        codice_barre := codice_archivio;
        v_art_codice_barcode.text := codice_barre;
        tabella_controllo(false, art, v_art_codice_barcode, true, nil, nil, nil);
        if not art.isempty then
        begin
          assegnato := true;
        end;
      end
      else
      begin
        assegnato := true;
      end;

      if assegnato then
      begin
        assegna_righe(1);
        v_art_codice.text := codice_barre;
        variato_stringa := '';
        v_art_codiceexit(v_art_codice);
        abilita_pannello_righe(true);
      end
      else
      begin
        messaggio(200, 'codice articolo non trovato');
        codice_barre := '';
      end;
    end;
  end;
  if codice_barre = '' then
  begin
    inherited;
  end;
end;

procedure tgesven.esegui_conai(funzione: string;
  testata_documento, righe_documento: tmyquery_go;
  art_codice: string;
  quantita:
  double);
var
  query_conai: tmyquery_go;
begin
  if (not tr0.isempty) and (testata_documento.fieldbyname('no_conai').asstring <> 'si') and
    (righe_documento.fieldbyname('art_codice').asstring <> '') then
  begin
    if (funzione = 'aggiorna') and (tabella_righe.fieldbyname('documento_origine').asstring <> '') and (tipo_documento <> 'ordine') then
    begin
      query_conai := tmyquery_go.create(nil);
      query_conai.connection := arc.arcdit;
      if tipo_documento = 'bolla' then
      begin
        query_conai.sql.text := 'select * from bvr where progressivo = :progressivo and riga_origine_conai = :riga';
      end
      else if tipo_documento = 'corrispettivo' then
      begin
        query_conai.sql.text := 'select * from cvr where progressivo = :progressivo and riga_origine_conai = :riga';
      end
      else if tipo_documento = 'ddt' then
      begin
        query_conai.sql.text := 'select * from dvr where progressivo = :progressivo and riga_origine_conai = :riga';
      end
      else
      begin
        query_conai.sql.text := 'select * from fvr where progressivo = :progressivo and riga_origine_conai = :riga';
      end;
      query_conai.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
      query_conai.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
      query_conai.open;
      while not query_conai.eof do
      begin
        query_conai.edit;
        if vecchio_quantita <> 0 then
        begin
          query_conai.fieldbyname('quantita').asfloat := query_conai.fieldbyname('quantita').asfloat *
            tabella_righe.fieldbyname('quantita').asfloat / vecchio_quantita;
          query_conai.fieldbyname('tum_quantita_base').asfloat := query_conai.fieldbyname('quantita').asfloat;
        end;
        query_conai.post;
        query_conai.next;
      end;
      query_conai.free;
    end
    else
    begin
      conai.gestione_conai(testata_documento.fieldbyname('tipo_documento').asstring, funzione, art_codice,
        testata_documento.fieldbyname('tcc_codice').asstring, testata_documento.fieldbyname('tdo_codice').asstring,
        quantita, testata_documento.fieldbyname('data_documento').asdatetime, tr0, cli, righe_documento);
    end;
    esegui_query_righe;
  end;
end;

procedure TGESVEN.tool_eticliveClick(Sender: TObject);
begin
  inherited;

  if (tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or
    (tipo_documento = 'ddt') or (copy(tipo_documento, 1, 7) = 'fattura') or
    (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
  begin
    parametri_extra_programma_chiamato[1] := tipo_documento;
    parametri_extra_programma_chiamato[2] := tabella.fieldbyname('progressivo').asinteger;
    esegui_programma('ETICLIVE', '', true);
  end;
end;

procedure tgesven.tool_evasioneclick(sender: tobject);
begin
  inherited;
  if tdo_codice_conto_vendita <> '' then
  begin
    evasione_documento('ddt');
  end
  else
  begin
    if tipo_documento = 'ordine' then
    begin
      evasione_documento('preventivo');
    end
    else
    begin
      evasione_documento('ordine');
    end;
  end;
end;

procedure tgesven.evasione_documento_nota_credito_fattura;
var
  pr: tevadocvncft;

  maxriga: tmyquery_go;
  riga: integer;

  fvr: tmyquery_go;
begin
  fvr := tmyquery_go.create(nil);
  fvr.connection := arc.arcdit;
  fvr.sql.text := 'select id from fvr where art_codice <> '''' and left(documento_origine, 07) <> ''fattura'' ' +
    'and progressivo = ' + tabella.fieldbyname('progressivo').asstring;
  fvr.open;
  if not fvr.isempty then
  begin
    messaggio(200, 'il documento è stato utilizzato per l''accredito di documenti di reso clienti' + #13 +
      'e non può essere utilizzato per l''accredito automatico di fatture');
  end
  else
  begin
    fvr.close;
    fvr.sql.text := 'select distinct doc_progressivo_origine from fvr where progressivo = ' + tabella.fieldbyname('progressivo').asstring;
    fvr.open;

    maxriga := tmyquery_go.create(nil);
    maxriga.connection := arc.arcdit;
    maxriga.sql.text := 'select max(riga) riga from fvr where progressivo = ' + tabella.fieldbyname('progressivo').asstring;
    maxriga.open;
    riga := maxriga.fieldbyname('riga').asinteger;
    freeandnil(maxriga);

    try
      pr := tevadocvncft.create(nil);
      pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr.doc_progressivo_origine := fvr.fieldbyname('doc_progressivo_origine').asinteger;
      pr.riga := riga;
      pr.cli_codice := tabella.fieldbyname('cli_codice').asstring;
      pr.tva_codice := tabella.fieldbyname('tva_codice').asstring;
      pr.showmodal;
    finally
      freeandnil(pr);
    end;

    tabella_righe.refresh;
    if tabella_righe.isempty then
    begin
      v_griglia_righe.selectedindex := 0;
    end
    else
    begin
      v_griglia_righe.selectedindex := 1;
    end;
    v_griglia_righe.selectedindex := 0;

    tabella.refresh;

    aggiorna_totali_testata := true;
    aggiorna_totali_colli := true;

    if tabella_righe.fieldbyname('riga').asinteger = 0 then
    begin
      abilita_pannello_righe(false);
    end
    else
    begin
      abilita_pannello_righe(true);
    end;

    abilita_bottoni(true);
    visualizza_descrizioni;
  end;
  freeandnil(fvr);
end;

procedure TGESVEN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  numero_scontrino_reso := '';
  data_scontrino_reso := 0;
end;

procedure tgesven.evasione_documento(tipo_documento_evasione: string);
var
  pr: tevadocv;
  pr1: tscefadv;

  fvr: tmyquery_go;
begin
  if tool_evasione.enabled then
  begin
    if (tipo_documento <> 'ordine') and (tabella.fieldbyname('situazione').asstring <> 'inserito') then
    begin
      messaggio(300, 'il documento è già evaso e non è possibile effettuare aggiunte' + #13 +
        'eseguire lo storno dell''evasione');
    end
    else
    begin
      if tipo_documento = 'nota credito' then
      begin
        fvr := tmyquery_go.create(nil);
        fvr.connection := arc.arcdit;
        fvr.sql.text := 'select id from fvr where left(documento_origine, 7) = ''fattura'' ' +
          'and progressivo = ' + tabella.fieldbyname('progressivo').asstring;
        fvr.open;
        if not fvr.isempty then
        begin
          messaggio(200, 'il documento è stato utilizzato per l''accredito automatico di fatture' + #13 +
            'e non può essere utilizzato per l''accredito di documenti di reso clienti');
        end
        else
        begin
          pr1 := tscefadv.create(nil);
          if pr1.esegui_form then
          begin
            pr1.progressivo := tabella.fieldbyname('progressivo').asinteger;
            pr1.cli_codice := tabella.fieldbyname('cli_codice').asstring;
            pr1.tipo_documento := tipo_documento;

            query_presenti_righe.close;
            query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
            query_presenti_righe.open;
            pr1.riga_fvr := query_presenti_righe.fieldbyname('ultima_riga').asinteger;
            query_presenti_righe.close;

            pr1.showmodal;
          end;
          pr1.free;
          aggiorna_totali_testata := true;
        end;
        freeandnil(fvr);
      end
      else
      begin
        codice_passato := vararrayof([tabella_righe.fieldbyname('progressivo').asfloat, 0]);

        pr := tevadocv.create(nil);
        if pr.esegui_form then
        begin
          pr.codice := codice_passato;
          pr.tipo_documento := tipo_documento;
          pr.progressivo := trunc(v_progressivo.value);
          if tipo_documento_evasione = 'articolo' then
          begin
            tipo_documento_evasione := 'ordine';
            pr.art_codice_evasione := art_codice_evasione_preventivo_ordine;
          end;
          pr.tipo_documento_evasione := tipo_documento_evasione;
          pr.gestione_descrizione1 := gestione_descrizione1;
          pr.gestione_descrizione2 := gestione_descrizione2;
          pr.gestione_numero_colli := gestione_numero_colli;
          pr.gestione_numero_confezioni := gestione_numero_confezioni;
          pr.gestione_quantita := gestione_quantita;
          pr.gestione_prezzo := gestione_prezzo;
          pr.gestione_sconto_cliente := gestione_sconto_cliente;
          // .gestione_tum_codice := gestione_tum_codice;
          pr.gestione_tipo_movimento := gestione_tipo_movimento;
          pr.gestione_importo := gestione_importo;
          pr.gestione_data_consegna := gestione_data_consegna;
          pr.controllo_quantita := controllo_quantita;
          pr.controllo_prezzo := controllo_prezzo;
          pr.tdo_codice_conto_vendita := tdo_codice_conto_vendita;
          tabella_righe.first;
          if tabella_righe.fieldbyname('riga').asinteger = 0 then
          begin
            pr.vuoto := true;
          end
          else
          begin
            pr.vuoto := false;
          end;
          pr.progressivo_documento_evadere := progressivo_documento_evadere;
          pr.tipo_documento_evadere := tipo_documento_evadere;
          pr.tipo_prezzo := tipo_prezzo;
          pr.showmodal;
        end;
        pr.free;

        tabella_righe.refresh;
        if tabella_righe.isempty then
        begin
          v_griglia_righe.selectedindex := 0;
        end
        else
        begin
          v_griglia_righe.selectedindex := 1;
        end;
        v_griglia_righe.selectedindex := 0;

        tabella.refresh;

        aggiorna_totali_testata := true;
        aggiorna_totali_colli := true;

        if tabella_righe.fieldbyname('riga').asinteger = 0 then
        begin
          abilita_pannello_righe(false);
        end
        else
        begin
          abilita_pannello_righe(true);
        end;

        abilita_bottoni(true);
        visualizza_descrizioni;
      end;
    end;
  end
  else
  begin
    messaggio(100, 'il documento in gestione non prevede l''evasione' + #13 +
      'di un documento di livello superiore');
  end;
end;

procedure tgesven.pannello_campiexit(sender: tobject);
var
  componente: twincontrol;
begin
  disabilita_campo(tool_orda);
  disabilita_campo(v_tag_fe_testata);
  disabilita_campo(v_fatture_collegate);
  disabilita_campo(v_totalizza);
  abilita_bottoni_analitica(false);
  abilita_sda(false);
  disabilita_campo(v_chiudi_documento);
  disabilita_campo(v_cmr);
  disabilita_campo(v_preventivo_cliente);
  disabilita_campo(v_situazione_acconto);
  disabilita_campo(v_revisione_precedente);

  tool_invia_excel.enabled := false;
  v_log_revisione.enabled := false;
  v_revisione_documento.enabled := false;
  v_scheda_trasporto.enabled := false;
  v_evasione_documento.enabled := false;
  tool_f7.enabled := false;
  abilita_storni(false);
  v_annulla_documento.enabled := false;
  v_bloccato.enabled := false;
  v_pagper.enabled := false;
  tool_gesccf.enabled := false;
  v_creast.enabled := false;
  v_packing_list.enabled := false;

  if pagina_riferimento_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_riferimento;
    assegna_fuoco(tab_testata_riferimento, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;

    pagina_riferimento_chiusura_attivare := false;
  end
  else if pagina_incasso_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_finanziario;
    assegna_fuoco(tab_testata_finanziario, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;

    pagina_incasso_chiusura_attivare := false;
  end
  else if pagina_magazzino_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_magazzino;
    assegna_fuoco(tab_testata_magazzino, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;

    pagina_magazzino_chiusura_attivare := false;
  end
  else if pagina_destinazione_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_destinazione;
    assegna_fuoco(tab_testata_destinazione, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;
    pagina_destinazione_chiusura_attivare := false;
  end
  else if pagina_spedizione_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_spedizione;
    assegna_fuoco(tab_testata_spedizione, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;

    pagina_spedizione_chiusura_attivare := false;
  end
  else if pagina_sconto_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_sconto_acconto_spese;
    assegna_fuoco(tab_testata_sconto_acconto_spese, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;

    pagina_sconto_chiusura_attivare := false;
  end
  else if pagina_note_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_note;
    assegna_fuoco(tab_testata_note, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;

    pagina_note_chiusura_attivare := false;
  end
  else if pagina_analitica_chiusura_attivare then
  begin
    tab_control.activepage := tab_testata_analitica;
    assegna_fuoco(tab_testata_analitica, componente);
    if componente <> nil then
    begin
      if componente.canfocus then
      begin
        componente.setfocus;
      end;
    end;

    pagina_analitica_chiusura_attivare := false;
  end
  else
  begin
    if controllo then
    begin
      //assegna_modalita_inserimento_documento(true);
    end;

    if documento_chiuso then
    begin
      blocco_setfocus := true;
    end;

    inherited;

    if documento_chiuso then
    begin
      abilita_codice;
    end
    else
    begin
      if controllo then
      begin
        pannello_griglia_righe.enabled := true;
        v_griglia_righe.enabled := true;
        v_griglia_righe.setfocus;
      end;
    end;
  end;
end;

procedure tgesven.v_storno_evasioneclick(sender: tobject);
var
  pr: timpalf;
  esegui: boolean;
  password_storno_evasione: string;
begin
  if not esercizio_diverso then
  begin
    inherited;
    esegui := true;

    password_storno_evasione := '';
    if tipo_documento = 'bolla' then
    begin
      password_storno_evasione := arc.dit.fieldbyname('pswd_storno_bolla_ven').asstring;
    end;
    if tipo_documento = 'corrispettivo' then
    begin
      password_storno_evasione := arc.dit.fieldbyname('pswd_storno_corrispettivo_ven').asstring;
    end;
    if tipo_documento = 'ddt' then
    begin
      password_storno_evasione := arc.dit.fieldbyname('pswd_storno_ddt_ven').asstring;
    end;
    if (tipo_documento = 'fattura accompagnatoria') or (tipo_documento = 'fattura differita') or
      (tipo_documento = 'fattura immediata') or (tipo_documento = 'nota credito') then
    begin
      password_storno_evasione := arc.dit.fieldbyname('pswd_storno_fatture_ven').asstring;
    end;
    if password_storno_evasione = '' then
    begin
      password_storno_evasione := password_storno_evasione_vendite;
    end;
    if password_storno_evasione <> '' then
    begin
      pr := timpalf.create(nil);
      pr.v_form_caption := 'Password per storno evasione';
      pr.v_descrizione_caption := 'password';
      pr.v_width_campo := 10;
      pr.valore_passato := '';
      pr.tipo_campo := 'alfa';
      pr.campo_password := true;
      pr.showmodal;

      if pr.premuto_escape then
      begin
        esegui := false;
      end
      else if pr.valore_passato <> password_storno_evasione then
      begin
        messaggio(000, 'password errata');
        esegui := false;
      end;
      pr.free;
    end;
    if esegui then
    begin
      codice_passato := vararrayof([v_progressivo.value, tipo_documento]);
      esegui_programma('STOEVAV', codice_passato, true);
      tabella.refresh;
      tabella_righe.refresh;
    end;
    abilita_codice;
  end;
end;

procedure TGESVEN.v_storno_sdiClick(Sender: TObject);
var
  pr: timpalf;
  crittografia: tmyencryptor;
begin
  inherited;

  if (tabella.fieldbyname('codice_esito_sdi').asstring = '') or
    (tabella.fieldbyname('codice_esito_sdi').asstring = 'scartata') or
    (tabella.fieldbyname('codice_esito_sdi').asstring = 'rifiutata') then
  begin
    pr := timpalf.create(nil);
    pr.v_form_caption := 'Richiesta password SDI';
    pr.v_descrizione_caption := 'password sdi';
    pr.v_width_campo := 60;
    pr.valore_passato := '';
    pr.tipo_campo := 'alfa';
    pr.campo_password := true;
    pr.showmodal;

    crittografia := tmyencryptor.create(nil);
    crittografia.dataheader := ehNone;
    crittografia.encryptionalgorithm := eaTripleDES;
    crittografia.password := 'GESTIONALEOPEN';

    query_dit.encryption.encryptor := crittografia;

    read_tabella(query_dit, ditta);

    if query_dit.fieldbyname('password_sdi').asstring = pr.valore_passato then
    begin
      fvt.close;
      fvt.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
      fvt.execsql;

      tabella.refresh;
      abilita_codice;
    end
    else
    begin
      messaggio(200, 'password errata');
    end;

    freeandnil(pr);
    freeandnil(crittografia);

    tab_pannello_bottoni_nuovi.activepageindex := 0;
  end
  else
  begin
    messaggio(200, 'l''esito dell''inivio a SDI [' +
      tabella.fieldbyname('codice_esito_sdi').asstring + '] non consente lo storno');
  end;
end;

procedure tgesven.v_storno_consolidamentoclick(sender: tobject);
var
  pr: timpalf;
  esegui: boolean;
begin
  if not esercizio_diverso then
  begin
    inherited;
    esegui := true;

    if (tabella.fieldbyname('situazione_sdi').asstring <> 'in attesa invio') and
      ((copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito')) then
    begin
      messaggio(000, 'storno non effettuabile perché inviato a SDI' + slinebreak +
        'situazione [' + tabella.fieldbyname('situazione_sdi').asstring + ']' + slinebreak +
        'esito [' + tabella.fieldbyname('codice_esito_sdi').asstring + ']');
      esegui := false;
    end;

    if tipo_documento = 'corrispettivo' then
    begin
      cor.close;
      cor.parambyname('doc_progressivo_origine').asinteger := tabella.fieldbyname('progressivo').asinteger;
      cor.open;
      if not cor.isempty then
      begin
        messaggio(000, 'per il documento è stata generata una fattura' + #13 + 'stornare la fattura collegata');
        esegui := false;
      end;
    end;

    if esegui then
    begin
      if password_storno_consolidamento_vendite <> '' then
      begin
        pr := timpalf.create(nil);
        pr.v_form_caption := 'Password per storno consolidamento';
        pr.v_descrizione_caption := 'password';
        pr.v_width_campo := 10;
        pr.valore_passato := '';
        pr.tipo_campo := 'alfa';
        pr.campo_password := true;
        pr.showmodal;

        if pr.premuto_escape then
        begin
          esegui := false;
        end
        else if pr.valore_passato <> password_storno_consolidamento_vendite then
        begin
          messaggio(000, 'password errata');
          esegui := false;
        end;
        pr.free;
      end;
      if esegui then
      begin
        codice_passato := vararrayof([v_progressivo.value, tipo_documento]);
        esegui_programma('STOCONV', codice_passato, true);
        tabella.refresh;
        tabella_righe.refresh;
      end;

      abilita_codice;
    end;
  end;
end;

procedure tgesven.v_numero_colli_rigaexit(sender: tobject);
var
  quantita: double;
begin
  inherited;

  if controllo then
  begin
    if variato_importo <> v_numero_colli_riga.value then
    begin
      variato_importo := 0;

      controllo_numero_colli_evasi;

      calcola_quantita_colli;

      quantita := calcola_quantita_dimensioni(art, tabella_righe);
      if quantita <> 0 then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('quantita').asfloat := quantita;
        end;
      end;

      assegna_tum_quantita_base;
      esegui_controllo_esistenza;
    end;
  end;
end;

procedure tgesven.calcola_quantita_colli;
var
  variato_qta: double;
begin
  if not art.eof then
  begin

    variato_qta := tabella_righe.fieldbyname('quantita').asfloat;
    assegna_quantita_colli(tabella_righe, art, tdo, decimali_quantita_art(v_art_codice.text),
      'numero_colli', 'numero_confezioni', 'quantita');

    if tabella_righe.fieldbyname('quantita').asfloat <> variato_qta then
    begin
      controllo_quantita_evasa;
      cerca_prezzo;
      assegna_valore_prezzo;
      calcola_importo;
    end;
  end;
end;

procedure tgesven.v_totalizzaclick(sender: tobject);
var
  valorizzazione, stringa, stringa_cnf: string;
  calcola_margine: boolean;
  totale_costo, totale_importo, prezzo_inventario: double;
  margine, importo_costo_materiale, importo_costo_manodopera, importo_ricavo_materiale, importo_ricavo_manodopera: double;
  ovr_progressivo, ovr_riga: integer;

  margine_kit, righe_cnf, margine_cnf: tmyquery_go;

  pr: tvistotdoc;
begin
  inherited;

  margine_kit := tmyquery_go.create(nil);
  margine_kit.connection := arc.arcdit;

  if tabella.state <> dsbrowse then
  begin
    messaggio(000, 'il documento non è stato memorizzato');
  end
  else
  begin
    totalizza_quantita.close;
    totalizza_quantita.sql.clear;

    totalizza_quantita.sql.add('select sum(numero_colli) totale_colli, sum(numero_confezioni) totale_confezioni,');
    totalizza_quantita.sql.add('sum(volume) volume, sum(peso_lordo) peso_lordo, sum(peso_netto) peso_netto,');
    totalizza_quantita.sql.add('sum(quantita) quantita, sum(tum_quantita_base) tum_quantita_base');
    totalizza_quantita.sql.add('from ');
    totalizza_quantita.sql.add('(select numero_colli, numero_confezioni, quantita, tum_quantita_base,');
    totalizza_quantita.sql.add('round(tum_quantita_base * volume, 4) volume, round(tum_quantita_base * peso_lordo, 4) peso_lordo,');
    totalizza_quantita.sql.add('case');
    totalizza_quantita.sql.add('when peso_netto_riga <> 0 then peso_netto_riga');
    totalizza_quantita.sql.add('when tum.quantita_peso = ''si'' then quantita');
    totalizza_quantita.sql.add('when tum_art.quantita_peso = ''si'' then tum_quantita_base');
    totalizza_quantita.sql.add('else round(tum_quantita_base * peso_netto, 4)');
    totalizza_quantita.sql.add('end peso_netto');

    if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      totalizza_quantita.sql.add('from pvr');
    end
    else if tipo_documento = 'ordine' then
    begin
      totalizza_quantita.sql.add('from ovr');
    end
    else if tipo_documento = 'bolla' then
    begin
      totalizza_quantita.sql.add('from bvr');
    end
    else if tipo_documento = 'corrispettivo' then
    begin
      totalizza_quantita.sql.add('from cvr');
    end
    else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
    begin
      totalizza_quantita.sql.add('from dvr');
    end
    else
    begin
      totalizza_quantita.sql.add('from fvr');
    end;

    totalizza_quantita.sql.add('inner join art on art.codice = art_codice');

    if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      totalizza_quantita.sql.add('inner join tum on tum.codice = pvr.tum_codice');
      totalizza_quantita.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
    end
    else if tipo_documento = 'ordine' then
    begin
      totalizza_quantita.sql.add('inner join tum on tum.codice = ovr.tum_codice');
      totalizza_quantita.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
    end
    else if tipo_documento = 'bolla' then
    begin
      totalizza_quantita.sql.add('inner join tum on tum.codice = bvr.tum_codice');
      totalizza_quantita.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
    end
    else if tipo_documento = 'corrispettivo' then
    begin
      totalizza_quantita.sql.add('inner join tum on tum.codice = cvr.tum_codice');
      totalizza_quantita.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
    end
    else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
    begin
      totalizza_quantita.sql.add('inner join tum on tum.codice = dvr.tum_codice');
      totalizza_quantita.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
    end
    else
    begin
      totalizza_quantita.sql.add('inner join tum on tum.codice = fvr.tum_codice');
      totalizza_quantita.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
    end;

    totalizza_quantita.sql.add('where progressivo = :progressivo and situazione <> ''annullato''');

    if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      totalizza_quantita.sql.add('and pvr.kit <> ''pf''');
    end
    else if tipo_documento = 'ordine' then
    begin
      totalizza_quantita.sql.add('and ovr.kit <> ''pf''');
    end
    else if tipo_documento = 'bolla' then
    begin
      totalizza_quantita.sql.add('and bvr.kit <> ''pf''');
    end
    else if tipo_documento = 'corrispettivo' then
    begin
      totalizza_quantita.sql.add('and cvr.kit <> ''pf''');
    end
    else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
    begin
      totalizza_quantita.sql.add('and dvr.kit <> ''pf''');
    end
    else
    begin
      totalizza_quantita.sql.add('and fvr.kit <> ''pf''');
    end;
    totalizza_quantita.sql.add(') as q');

    totalizza_quantita.params[0].asfloat := v_progressivo.value;
    totalizza_quantita.open;

    if (tabella.fieldbyname('situazione').asstring <> 'consolidato') then
    begin
      totven.movven_testata(tmyconnection_go(tabella.connection), tipo_documento, tabella.fieldbyname('progressivo').asinteger);
      tabella.refresh;
    end;

    calcola_margine := false;

    if calcolo_margine = 'no' then
    begin
      if v_tva_codice.text = divisa_di_conto then
      begin
        if tabella.fieldbyname('importo_ritenuta').asfloat = 0 then
        begin
          messaggio(100, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 + #13 +
            'totale quantità: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('quantita').asfloat) + #13 +
            'totale quantità base: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('tum_quantita_base').asfloat) + #13 + #13 +
            'totale peso lordo: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('volume').asfloat) + #13 + #13 +
            'totale peso lordo testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume testata: ' + formatfloat(',0.000000', tabella.fieldbyname('volume').asfloat));
        end
        else
        begin
          messaggio(100, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 +
            'totale da incassare: ' + formatfloat(formato_display_importo, arrotonda(tabella.fieldbyname('importo_totale').asfloat) -
            tabella.fieldbyname('importo_ritenuta').asfloat));
        end;
      end
      else
      begin
        if tabella.fieldbyname('importo_ritenuta').asfloat = 0 then
        begin
          messaggio(100, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 + #13 + #13 +
            'totale imponibile documento in euro: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile_euro').asfloat) + #13 + #13 +
            'totale documento con iva in euro: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_euro').asfloat) + #13 + #13 + #13 +
            'totale quantità: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('quantita').asfloat) + #13 +
            'totale quantità base: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('tum_quantita_base').asfloat) + #13 + #13 +
            'totale peso lordo: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('volume').asfloat) + #13 + #13 +
            'totale peso lordo testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume testata: ' + formatfloat(',0.000000', tabella.fieldbyname('volume').asfloat));
        end
        else
        begin
          messaggio(100, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 + #13 + #13 +
            'totale imponibile documento in euro: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile_euro').asfloat) + #13 + #13 +
            'totale documento con iva in euro: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_euro').asfloat) + #13 + #13 +
            'totale da incassare: ' + formatfloat(formato_display_importo, arrotonda(tabella.fieldbyname('importo_totale').asfloat) -
            tabella.fieldbyname('importo_ritenuta').asfloat));
        end;
      end;
    end
    else
    begin
      if v_tva_codice.text = divisa_di_conto then
      begin
        if tabella.fieldbyname('importo_ritenuta').asfloat = 0 then
        begin
          if messaggio(300, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 + #13 +
            'totale quantità: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('quantita').asfloat) + #13 +
            'totale quantità base: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('tum_quantita_base').asfloat) + #13 + #13 +
            'totale peso lordo: ' + formatfloat(formato_display_importo, totalizza_quantita.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto: ' + formatfloat(formato_display_importo, totalizza_quantita.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume: ' + formatfloat(formato_display_importo, totalizza_quantita.fieldbyname('volume').asfloat) + #13 + #13 + #13 +
            'totale peso lordo testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume testata: ' + formatfloat(',0.000000', tabella.fieldbyname('volume').asfloat) + #13 + #13 +
            'esegui calcolo margine di contribuzione?') = 1 then
          begin
            calcola_margine := true;
          end;
        end
        else
        begin
          if messaggio(300, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 +
            'totale da incassare: ' + formatfloat(formato_display_importo, arrotonda(tabella.fieldbyname('importo_totale').asfloat) -
            tabella.fieldbyname('importo_ritenuta').asfloat) + #13 + #13 +
            'esegui calcolo margine di contribuzione?') = 1 then
          begin
            calcola_margine := true;
          end;
        end;
      end
      else
      begin
        if tabella.fieldbyname('importo_ritenuta').asfloat = 0 then
        begin
          if messaggio(300, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 + #13 + #13 +
            'totale imponibile documento in euro: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile_euro').asfloat) + #13 + #13 +
            'totale documento con iva in euro: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_euro').asfloat) + #13 + #13 + #13 +
            'totale quantità: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('quantita').asfloat) + #13 +
            'totale quantità base: ' + formatfloat(formato_display_quantita, totalizza_quantita.fieldbyname('tum_quantita_base').asfloat) + #13 + #13 +
            'totale peso lordo: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume: ' + formatfloat(',0.000000', totalizza_quantita.fieldbyname('volume').asfloat) + #13 + #13 + #13 +
            'totale peso lordo testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_lordo').asfloat) + #13 +
            'totale peso netto testata: ' + formatfloat(',0.000000', tabella.fieldbyname('peso_netto').asfloat) + #13 +
            'totale volume testata: ' + formatfloat(',0.000000', tabella.fieldbyname('volume').asfloat) + #13 + #13 +
            'esegui calcolo margine di contribuzione?') = 1 then
          begin
            calcola_margine := true;
          end;
        end
        else
        begin
          if messaggio(300, 'totale imponibile documento: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile').asfloat) + #13 + #13 +
            'totale merce: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_merce').asfloat) + #13 + #13 +
            'totale documento con iva: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale').asfloat) + ' ' +
            tabella.fieldbyname('tva_codice').asstring + #13 + #13 + #13 + #13 +
            'totale imponibile documento in euro: ' +
            formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_imponibile_euro').asfloat) + #13 + #13 +
            'totale documento con iva in euro: ' + formatfloat(formato_display_importo, tabella.fieldbyname('importo_totale_euro').asfloat) + #13 + #13 +
            'totale da incassare: ' + formatfloat(formato_display_importo, arrotonda(tabella.fieldbyname('importo_totale').asfloat) -
            tabella.fieldbyname('importo_ritenuta').asfloat) + #13 + #13 +
            'esegui calcolo margine di contribuzione?') = 1 then
          begin
            calcola_margine := true;
          end;
        end;
      end;
    end;

    if calcola_margine then
    begin
      totale_costo := 0;
      totale_importo := 0;

      totalizza_margine.close;
      totalizza_margine.sql.clear;
      totalizza_margine.sql.add('select progressivo, riga, documento_origine, doc_progressivo_origine,');
      totalizza_margine.sql.add('doc_riga_origine, art_codice, tma_codice, quantita, costo_unitario, kit,');
      totalizza_margine.sql.add('case');
      totalizza_margine.sql.add('when tipo_movimento = ''normale'' then');
      if tabella.fieldbyname('listino_con_iva').asstring = 'si' then
      begin
        totalizza_margine.sql.add('(importo_euro - importo_iva_euro)');
      end
      else
      begin
        totalizza_margine.sql.add('importo_euro');
      end;
      totalizza_margine.sql.add('else 0');
      totalizza_margine.sql.add('end importo_euro');
      if copy(tipo_documento, 1, 10) = 'preventivo' then
      begin
        totalizza_margine.sql.add('from pvr');
      end
      else if tipo_documento = 'ordine' then
      begin
        totalizza_margine.sql.add('from ovr');
      end
      else if tipo_documento = 'bolla' then
      begin
        totalizza_margine.sql.add('from bvr');
      end
      else if tipo_documento = 'corrispettivo' then
      begin
        totalizza_margine.sql.add('from cvr');
      end
      else if tipo_documento = 'ddt' then
      begin
        totalizza_margine.sql.add('from dvr');
      end
      else
      begin
        totalizza_margine.sql.add('from fvr');
      end;
      totalizza_margine.sql.add('where progressivo = :progressivo');
      totalizza_margine.sql.add('and art_codice <> ''''');
      totalizza_margine.sql.add('and situazione <> ''annullato''');
      totalizza_margine.sql.add('and situazione <> ''revisionato''');
      if arc.dit.fieldbyname('modalita_kit').asstring = 'kit' then
      begin
        totalizza_margine.sql.add('and kit <> ''mp''');
      end;
      totalizza_margine.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
      totalizza_margine.open;
      while not totalizza_margine.eof do
      begin
        prezzo_inventario := 0;
        ovr_progressivo := 0;
        ovr_riga := 0;
        if tipo_documento = 'ordine' then
        begin
          ovr_progressivo := totalizza_margine.fieldbyname('progressivo').asinteger;
          ovr_riga := totalizza_margine.fieldbyname('riga').asinteger;
        end
        else
        begin
          if totalizza_margine.fieldbyname('documento_origine').asstring = 'ordine ven' then
          begin
            read_tabella(arc.arcdit, 'ovr', 'progressivo;riga', vararrayof([totalizza_margine.fieldbyname('doc_progressivo_origine').asinteger,
              totalizza_margine.fieldbyname('doc_riga_origine').asinteger]), 'progressivo, riga');
            if not archivio.eof then
            begin
              ovr_progressivo := archivio.fieldbyname('progressivo').asinteger;
              ovr_riga := archivio.fieldbyname('riga').asinteger;
            end;
          end;
        end;

        if not((ovr_progressivo = 0) or (ovr_riga = 0)) then
        begin
          if read_tabella(arc.arcdit, 'oar', 'ovr_tipo;ovr_progressivo;ovr_riga', vararrayof(['cliente', ovr_progressivo, ovr_riga]), 'quantita, importo') then
          begin
            try
              prezzo_inventario := archivio.fieldbyname('importo').asfloat / archivio.fieldbyname('quantita').asfloat;
            except
              prezzo_inventario := 0;
            end;
          end
          else if read_tabella(arc.arcdit, 'opt', 'ovr_progressivo;ovr_riga', vararrayof([ovr_progressivo, ovr_riga]), 'progressivo') then
          begin
            prezzo_inventario := valdsb.calcola_costo_produzione(archivio.fieldbyname('progressivo').asinteger, 0, false);
          end;
        end;

        if prezzo_inventario = 0 then
        begin
          if totalizza_margine.fieldbyname('costo_unitario').asfloat <> 0 then
          begin
            prezzo_inventario := totalizza_margine.fieldbyname('costo_unitario').asfloat;
          end
          else
          begin
            if (arc.dit.fieldbyname('modalita_kit').asstring = 'kit') and
              (totalizza_margine.fieldbyname('kit').asstring = 'pf') then
            begin
              margine_kit.close;
              margine_kit.sql.clear;
              margine_kit.sql.add('select progressivo, riga, documento_origine, doc_progressivo_origine,');
              margine_kit.sql.add('doc_riga_origine, art_codice, tma_codice, quantita, importo_euro, costo_unitario, kit');
              if copy(tipo_documento, 1, 10) = 'preventivo' then
              begin
                margine_kit.sql.add('from pvr');
              end
              else if tipo_documento = 'ordine' then
              begin
                margine_kit.sql.add('from ovr');
              end
              else if tipo_documento = 'bolla' then
              begin
                margine_kit.sql.add('from bvr');
              end
              else if tipo_documento = 'corrispettivo' then
              begin
                margine_kit.sql.add('from cvr');
              end
              else if tipo_documento = 'ddt' then
              begin
                margine_kit.sql.add('from dvr');
              end
              else
              begin
                margine_kit.sql.add('from fvr');
              end;
              margine_kit.sql.add('where progressivo = :progressivo and riga_origine_kit = :riga');
              margine_kit.sql.add('and art_codice <> ''''');
              margine_kit.sql.add('and situazione <> ''annullato''');
              margine_kit.sql.add('and situazione <> ''revisionato''');
              margine_kit.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
              margine_kit.parambyname('riga').asinteger := totalizza_margine.fieldbyname('riga').asinteger;
              margine_kit.open;
              while not margine_kit.eof do
              begin
                if margine_kit.fieldbyname('costo_unitario').asfloat <> 0 then
                begin
                  prezzo_inventario := margine_kit.fieldbyname('costo_unitario').asfloat;
                end
                else
                begin
                  valorizzazione := valorizzazione_gestionale;
                  przinv.przinv(margine_kit.fieldbyname('art_codice').asstring, margine_kit.fieldbyname('tma_codice').asstring,
                    valorizzazione, esercizio, v_data_documento.date, margine_kit.fieldbyname('quantita').asfloat, prezzo_inventario,
                    'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
                end;
                totale_costo := arrotonda(totale_costo + prezzo_inventario * margine_kit.fieldbyname('quantita').asfloat);
                prezzo_inventario := 0;

                margine_kit.next;
              end;
            end
            else
            begin
              valorizzazione := valorizzazione_gestionale;
              przinv.przinv(totalizza_margine.fieldbyname('art_codice').asstring, totalizza_margine.fieldbyname('tma_codice').asstring,
                valorizzazione, esercizio, v_data_documento.date, totalizza_margine.fieldbyname('quantita').asfloat, prezzo_inventario,
                'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
            end;
          end;
        end;

        totale_costo := arrotonda(totale_costo + prezzo_inventario * totalizza_margine.fieldbyname('quantita').asfloat);
        totale_importo := arrotonda(totale_importo + totalizza_margine.fieldbyname('importo_euro').asfloat);

        totalizza_margine.next;
      end;

      stringa := 'totale imponibile venduto ' + #9 + ': ' + formatfloat(formato_display_importo, totale_importo) + #13 +
        'totale costo ' + #9 + ': ' + formatfloat(formato_display_importo, totale_costo) + #13 + #13 +
        'valore margine ' + #9 + ': ' + formatfloat(formato_display_importo, arrotonda(totale_importo - totale_costo));
      if totale_importo <> 0 then
      begin
        stringa := stringa + #13 + '% margine ' + #9 + ': ' + formatfloat(formato_display_percentuale, arrotonda((totale_importo - totale_costo) * 100 / totale_importo));
      end;
      if totale_costo <> 0 then
      begin
        stringa := stringa + #13 + '% ricarico: ' + #9 + ': ' + formatfloat(formato_display_percentuale, arrotonda((totale_importo - totale_costo) * 100 / totale_costo));
      end;

      if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
      begin
        importo_costo_manodopera := 0;
        importo_costo_materiale := 0;
        importo_ricavo_manodopera := 0;
        importo_ricavo_materiale := 0;
        margine := 0;
        stringa_cnf := '';

        righe_cnf := tmyquery_go.create(nil);
        righe_cnf.connection := arc.arcdit;

        margine_cnf := tmyquery_go.create(nil);
        margine_cnf.connection := arc.arcdit;

        righe_cnf.sql.add('select configurazione');
        righe_cnf.sql.add('from x2x2 where x2x2.progressivo = :progressivo and x2x2.configurazione <> 0');
        if tipo_documento = 'ordine' then
        begin
          righe_cnf.sql.text := stringreplace(righe_cnf.sql.text, 'x2x2', 'ovr', [rfreplaceall]);
        end
        else
        begin
          righe_cnf.sql.text := stringreplace(righe_cnf.sql.text, 'x2x2', 'pvr', [rfreplaceall]);
        end;

        read_tabella(righe_cnf, tabella.fieldbyname('progressivo').asinteger);
        if not righe_cnf.isempty then
        begin
          while not righe_cnf.eof do
          begin
            margine_cnf.sql.clear;
            margine_cnf.sql.add('select');

            margine_cnf.sql.add('(select');
            margine_cnf.sql.add('case');
            margine_cnf.sql.add('when x1x1.listino_con_iva = ''si'' then r.importo_euro - r.importo_iva_euro');
            margine_cnf.sql.add('else r.importo_euro');
            margine_cnf.sql.add('end');
            margine_cnf.sql.add('from x2x2 r');
            margine_cnf.sql.add('where r.configurazione = :configurazione) importo_ricavo,');

            margine_cnf.sql.add('(select round(sum(quantita * costo_unitario), 2)');
            margine_cnf.sql.add('from');
            (*
              margine_cnf.sql.add('inner join fas on fas.codice = cnl.fas_codice');
              margine_cnf.sql.add('left join frn on cnl.frn_codice = frn.codice');
              margine_cnf.sql.add('left join lsa on lsa.tla_codice = frn.tla_codice and lsa.art_codice = fas.art_codice');
              margine_cnf.sql.add('and current_date between lsa.data_inizio and lsa.data_fine');
              margine_cnf.sql.add('where cnl.configurazione = :configurazione) importo_costo_manodopera,');
            *)
            margine_cnf.sql.add('(select cnl.importo, cnl.quantita,');
            margine_cnf.sql.add('case when cnl.costo_unitario <> 0 then cnl.costo_unitario else lsa.prezzo end costo_unitario');
            margine_cnf.sql.add('from cnl');
            margine_cnf.sql.add('inner join fas on fas.codice = cnl.fas_codice');
            margine_cnf.sql.add('left join frn on cnl.frn_codice = frn.codice');
            margine_cnf.sql.add('left join lsa on lsa.tla_codice = frn.tla_codice and lsa.art_codice = fas.art_codice');
            margine_cnf.sql.add('and current_date between lsa.data_inizio and lsa.data_fine');
            margine_cnf.sql.add('where cnl.configurazione = :configurazione)');
            margine_cnf.sql.add('as query) importo_costo_manodopera,');

            margine_cnf.sql.add('(select round(sum(quantita * costo_unitario), 2)');
            margine_cnf.sql.add('from');
            margine_cnf.sql.add('(select cnf.quantita,');
            margine_cnf.sql.add('case when cnf.costo_unitario <> 0 then cnf.costo_unitario');
            margine_cnf.sql.add('else');
            margine_cnf.sql.add('(select prezzo from lsa where lsa.art_codice = art.codice and');
            margine_cnf.sql.add('lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and');
            margine_cnf.sql.add('current_date between lsa.data_inizio and lsa.data_fine)');
            margine_cnf.sql.add('end costo_unitario');
            margine_cnf.sql.add('from cnf');
            margine_cnf.sql.add('inner join art on art.codice = cnf.art_codice');
            margine_cnf.sql.add('where cnf.configurazione = :configurazione)');
            margine_cnf.sql.add('as query) importo_costo_materiale,');

            margine_cnf.sql.add('(select round(sum(cnl.prezzo * cnl.quantita), 2)');
            margine_cnf.sql.add('from cnl');
            margine_cnf.sql.add('where cnl.configurazione = :configurazione) importo_ricavo_manodopera,');

            margine_cnf.sql.add('(select round(sum(cnf.prezzo * cnf.quantita), 2)');
            margine_cnf.sql.add('from cnf');
            margine_cnf.sql.add('where cnf.configurazione = :configurazione) importo_ricavo_materiale');

            margine_cnf.sql.add('from x2x2');
            margine_cnf.sql.add('inner join x1x1 on x1x1.progressivo = x2x2.progressivo');
            margine_cnf.sql.add('where x2x2.progressivo = :progressivo');
            margine_cnf.sql.add('and x2x2.configurazione = :configurazione');

            if tipo_documento = 'ordine' then
            begin
              margine_cnf.sql.text := stringreplace(margine_cnf.sql.text, 'x1x1', 'ovt', [rfreplaceall]);
              margine_cnf.sql.text := stringreplace(margine_cnf.sql.text, 'x2x2', 'ovr', [rfreplaceall]);
            end
            else
            begin
              margine_cnf.sql.text := stringreplace(margine_cnf.sql.text, 'x1x1', 'pvt', [rfreplaceall]);
              margine_cnf.sql.text := stringreplace(margine_cnf.sql.text, 'x2x2', 'pvr', [rfreplaceall]);
            end;

            margine_cnf.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
            margine_cnf.parambyname('configurazione').asinteger := righe_cnf.fieldbyname('configurazione').asinteger;
            margine_cnf.open;

            importo_costo_manodopera := importo_costo_manodopera + margine_cnf.fieldbyname('importo_costo_manodopera').asfloat;
            importo_costo_materiale := importo_costo_materiale + margine_cnf.fieldbyname('importo_costo_materiale').asfloat;
            importo_ricavo_manodopera := importo_ricavo_manodopera + margine_cnf.fieldbyname('importo_ricavo_manodopera').asfloat;
            importo_ricavo_materiale := importo_ricavo_materiale + margine_cnf.fieldbyname('importo_ricavo_materiale').asfloat;

            righe_cnf.next;
          end;

          totale_costo := importo_costo_manodopera + importo_costo_materiale;
          totale_importo := importo_ricavo_manodopera + importo_ricavo_materiale;
          try
            margine := arrotonda((totale_importo - totale_costo) * 100 / totale_costo, 2);
          except
            margine := 0;
          end;

          stringa_cnf := #13 + #13 + '-------dettaglio configurazione-------' + #13;
          stringa_cnf := stringa_cnf +
            'costo manodopera ' + #09 + formatfloat(formato_display_importo, importo_costo_manodopera) + #13 +
            'costo materiale ' + #09 + #09 + formatfloat(formato_display_importo, importo_costo_materiale) + #13 +
            'totale costo ' + #09 + #09 + formatfloat(formato_display_importo, totale_costo) + #13 + #13 +
            'ricavo manodopera ' + #09 + formatfloat(formato_display_importo, importo_ricavo_manodopera) + #13 +
            'ricavo materiale ' + #09 + #09 + formatfloat(formato_display_importo, importo_ricavo_materiale) + #13 +
            'totale ricavo ' + #09 + #09 + formatfloat(formato_display_importo, totale_importo) + #13 + #13 +
            'profitto ' + #09 + #09 + #09 + formatfloat(formato_display_importo, totale_importo - totale_costo) + #13 +
            'margine % ' + #09 + #09 + formatfloat(formato_display_percentuale, margine);

          stringa := stringa + stringa_cnf;

          freeandnil(righe_cnf);
          freeandnil(margine_cnf);
        end;
      end;

      messaggio(100, stringa);

      if (tabella.fieldbyname('situazione').asstring <> 'consolidato') then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('importo_costo_euro').asfloat := totale_costo;
          no_eventi_post := true;
          tabella.post;
        end;
      end;
    end;
  end;

  margine_kit.free;

  if arc.utn.fieldbyname('importi_vendite').asstring <> 'nascondi' then
  begin
    pr := tvistotdoc.create(nil);
    if pr.esegui_form then
    begin
      pr.nome_tabella := tabella_righe_tablename;
      pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr.showmodal;
    end;
    pr.free;
  end;
end;

procedure tgesven.v_progressivoenter(sender: tobject);
begin
  if tipo_documento = 'fattura differita' then
  begin
    //modalita_inserimento_documento := false;
  end;

  inherited;

  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    v_progressivo.lookuptable := 'PVT';
    v_progressivo.lookupvisname := 'PVT';
  end
  else if tipo_documento = 'ordine' then
  begin
    v_progressivo.lookuptable := 'OVT';
    v_progressivo.lookupvisname := 'OVT';
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    v_progressivo.lookuptable := 'DVT';
    v_progressivo.lookupvisname := 'DVT';
  end
  else if tipo_documento = 'bolla' then
  begin
    v_progressivo.lookuptable := 'BVT';
    v_progressivo.lookupvisname := 'BVT';
  end
  else if (tipo_documento = 'fattura immediata') or (tipo_documento = 'fattura accompagnatoria') or
    (tipo_documento = 'fattura differita') or (tipo_documento = 'nota credito') then
  begin
    v_progressivo.lookuptable := 'FVT';
    v_progressivo.lookupvisname := 'FVT';
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    v_progressivo.lookuptable := 'CVT';
    v_progressivo.lookupvisname := 'CVT';
  end;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  if arc.dit.fieldbyname('filtro_fatture_vendita').asstring = 'si' then
  begin
    visarc_filtro_01 := tipo_documento;
  end;
  if arc.utn.fieldbyname('tag_filtro').asstring = 'si' then
  begin
    visarc_filtro_02 := arc.utn.fieldbyname('tag_codice').asstring;
  end;
end;

procedure TGESVEN.saldo_acconto_controllo;
begin
  if (tabella_righe.fieldbyname('documento_origine').asstring <> '') and
    (copy(tabella_righe.fieldbyname('documento_origine').asstring, 1, 7) <> 'fattura') then
  begin
    if controllo then
    begin
      saldo_acconto.close;
      saldo_acconto.sql.clear;
      saldo_acconto.sql.add('select quantita, importo, quantita_evasa, importo_evaso');
      if tabella_righe.fieldbyname('documento_origine').asstring = 'preventivo ven' then
      begin
        saldo_acconto.sql.add('from pvr');
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ordine ven' then
      begin
        saldo_acconto.sql.add('from ovr');
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt ven' then
      begin
        saldo_acconto.sql.add('from dvr');
      end
      else if tabella_righe.fieldbyname('documento_origine').asstring = 'ddt acq' then
      begin
        saldo_acconto.sql.add('from dar');
      end;
      saldo_acconto.sql.add('where progressivo = :progressivo and riga = :riga');
      saldo_acconto.params[0].asfloat := tabella_righe.fieldbyname('doc_progressivo_origine').asfloat;
      saldo_acconto.params[1].asinteger := tabella_righe.fieldbyname('doc_riga_origine').asinteger;

      if tabella_righe.fieldbyname('saldo_acconto').asstring = 'acconto' then
      begin
        saldo_acconto.open;

        if (saldo_acconto.fieldbyname('quantita').asfloat <> 0) and
          ((saldo_acconto.fieldbyname('quantita_evasa').asfloat - vecchio_quantita +
          tabella_righe.fieldbyname('quantita').asfloat) >= saldo_acconto.fieldbyname('quantita').asfloat) then
        begin
          messaggio(000, 'la quantità residua del documento che si sta evadendo è zero' + #13 +
            'l''evasione deve essere a saldo');
          if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
          begin
            v_saldo_acconto.setfocus;
            abort;
          end;
        end;

        if saldo_acconto.fieldbyname('quantita').asfloat = 0 then
        begin
          if (saldo_acconto.fieldbyname('importo_evaso').asfloat - vecchio_importo +
            tabella_righe.fieldbyname('importo').asfloat) >=
            saldo_acconto.fieldbyname('importo').asfloat then
          begin
            messaggio(000, 'l''importo residuo del documento che si sta evadendo è zero' + #13 +
              'l''evasione deve essere a saldo');
            if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
            begin
              v_saldo_acconto.setfocus;
              abort;
            end;
          end;
        end;
      end
      else if tabella_righe.fieldbyname('saldo_acconto').asstring = 'saldo' then
      begin
        saldo_acconto.open;

        if (saldo_acconto.fieldbyname('quantita').asfloat <> 0) and
          (tabella_righe.fieldbyname('documento_origine').asstring = 'ddt acq') and
          ((saldo_acconto.fieldbyname('quantita_evasa').asfloat - vecchio_quantita +
          tabella_righe.fieldbyname('quantita').asfloat) < saldo_acconto.fieldbyname('quantita').asfloat) then
        begin
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('saldo_acconto').asstring := 'acconto';
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_tipo_movimentoexit(sender: tobject);
begin
  inherited;
  tipo_movimento_controllo;
  if controllo then
  begin
    if variato_stringa <> v_tipo_movimento.text then
    begin
      assegna_gen_codice;
      variato_provvigioni := true;
    end;
  end;
end;

procedure tgesven.tipo_movimento_controllo;
begin
  if controllo then
  begin
    if (v_tipo_movimento.text = 'omaggio') and (tabella.fieldbyname('tco_codice').asstring <> '') and
      (tabella.fieldbyname('tiv_codice_omaggi').asstring = '') then
    begin
      messaggio(000, 'non è possibile gestire gli omaggi se non si carica in anagrafica ditta' + #13 +
        'il codice iva omaggi per effettuare il giroconto contabile');
      v_tipo_movimento.setfocus;
      abort;
    end;

    if ((v_tipo_movimento.text = 'omaggio') or (v_tipo_movimento.text = 'sconto merce')) and
      (tabella_righe.fieldbyname('importo').asfloat = 0) then
    begin
      messaggio(000, 'per le righe omaggio e sconto merce va indicato il prezzo normale di vendita');
      v_tipo_movimento.setfocus;
      abort;
    end;
  end;
end;

procedure tgesven.v_importo_ritenutaexit(sender: tobject);
begin
  inherited;
  if controllo then
  begin
    if arrotonda(v_importo_ritenuta.value, 2) <> arrotonda(v_importo_ritenuta.value, cifre_decimali_importo) then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_ritenuta').asfloat := arrotonda
          (tabella.fieldbyname('importo_ritenuta').asfloat, cifre_decimali_importo);
      end;
    end;

    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      if v_importo_ritenuta.value <> 0 then
      begin
        if (gen_codice_ritenuta = '') or (tco_codice_ritenuta = '') then
        begin
          messaggio(000, 'in anagrafica ditta non sono presenti il sottoconto e la causale' + #13 +
            'necessari per eseguire lo storno contabile');
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_storno_differiteclick(sender: tobject);
var
  pr: timpalf;
  esegui: boolean;
  controllo_nota_credito: tmyquery_go;
begin
  if not esercizio_diverso then
  begin
    inherited;
    esegui := true;

    if esegui then
    begin
      if tipo_documento = 'fattura differita' then
      begin
        if cli.fieldbyname('riepilogo_fattura').asstring = 'articolo' then
        begin
          messaggio(200, 'il cliente ha la gestione della fatturazione differita per articolo' + #13 + #13 +
            'vanno stornate tutte le fatture differite generate per il cliente' + #13 +
            'per evitare incoerenze sulle bolle e sui ddt evasi');
        end;
        if cli.fieldbyname('riepilogo_fattura').asstring = 'ordine' then
        begin
          messaggio(200, 'il cliente ha la gestione della fatturazione differita per ordine' + #13 + #13 +
            'vanno stornate tutte le fatture differite generate per il cliente' + #13 +
            'per evitare incoerenze sulle bolle e sui ddt evasi');
        end;
      end;

      if password_storno_differita_vendite <> '' then
      begin
        pr := timpalf.create(nil);
        pr.v_form_caption := 'Password per storno fattura differita';
        pr.v_descrizione_caption := 'password';
        pr.v_width_campo := 10;
        pr.valore_passato := '';
        pr.tipo_campo := 'alfa';
        pr.campo_password := true;
        pr.showmodal;

        if pr.premuto_escape then
        begin
          esegui := false;
        end
        else if pr.valore_passato <> password_storno_differita_vendite then
        begin
          messaggio(000, 'password errata');
          esegui := false;
        end;
        pr.free;
      end;
      if esegui then
      begin
        codice_passato := vararrayof([v_progressivo.value, '']);
        esegui_programma('STOFADV', codice_passato, true);
      end;
      documento_chiuso := true;
      storno_differite := true;
      abilita_codice;
      tabella.refresh;
      tabella_righe.refresh;
    end;
  end;
end;

procedure tgesven.assegna_cli_codice;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    assegna_tsp_codice;
    assegna_tpo_codice;
    assegna_tva_codice;

    if (tdo.fieldbyname('conto_terzi').asstring = 'si') and (frn.fieldbyname('tma_codice_conto_terzi').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end
    else if (tdo.fieldbyname('conto_terzi').asstring = 'no') and (frn.fieldbyname('tma_codice_consegna').asstring <> '') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := frn.fieldbyname('tma_codice_consegna').asstring;
      end;
    end;
    assegna_indirizzo;
  end
  else
  begin
    assegna_tma_codice;
    assegna_tlv_codice;
    assegna_tva_codice;
    assegna_intra;
    assegna_iva_sospensione;

    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('importo_spese_incasso').asfloat := 0;
      tabella.fieldbyname('importo_bollo').asfloat := 0;
      tabella.fieldbyname('importo_spese_trasporto').asfloat := 0;
    end;
    assegna_addebito_spese_fattura;

    assegna_tpa_codice;
    assegna_tiv_codice;
    assegna_tag_codice;
    assegna_tsp_codice;
    assegna_tst_codice;
    assegna_tpo_codice;
    assegna_giorno_consegna;
    assegna_tna_codice_intra;
    assegna_tsm_codice_sconto;
    assegna_tconai_codice;
    assegna_cli_codice_fatturazione;

    if (copy(tipo_documento, 1, 7) = 'fattura') and (v_addebito_spese_fattura.checked) then
    begin
      if tabella_edit(tabella) then
      begin
        if read_tabella(arc.arcdit, 'svf', 'cli_codice', vararrayof([cli.fieldbyname('codice').asstring]), 'importo_spese') then
        begin
          tabella.fieldbyname('importo_spese_extra').asfloat := archivio.fieldbyname('importo_spese').asfloat;
        end
        else
        begin
          tabella.fieldbyname('importo_spese_extra').asfloat := 0;
        end;
      end;
    end;

    if tabella.fieldbyname('fattura_professionisti').asstring = 'si' then
    begin
      tabella.fieldbyname('soggetto_addebito_enasarco').asstring := cli.fieldbyname('soggetto_addebito_enasarco').asstring;
    end
    else
    begin
      tabella.fieldbyname('soggetto_addebito_enasarco').asstring := 'no';
    end;

    if (tipo_documento = 'ordine') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('oscillazione_cambio').asstring := cli.fieldbyname('oscillazione_cambio').asstring;
      end;
    end;

    if (tipo_documento = 'ordine') or (tipo_documento = 'preventivo') then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('contatto_commerciale').asstring := cli.fieldbyname('contatto_commerciale').asstring;
      end;
    end;

    assegna_bartolini;

    if (arc.dit.fieldbyname('gestione_alimentari').asstring = 'si') and
      (cli.fieldbyname('escluso_gestione_alimentari').asstring = 'no') then
    begin
      tabella.fieldbyname('gestione_alimentari').asstring := 'si';
    end
    else
    begin
      tabella.fieldbyname('gestione_alimentari').asstring := 'no';
    end;
    assegna_indirizzo;
  end;
end;

procedure tgesven.assegna_bartolini;
begin
  if tabella_edit(tabella) then
  begin
    tabella.fieldbyname('consegna_bartolini').asstring := cli.fieldbyname('consegna_bartolini').asstring;
  end;
end;

procedure tgesven.assegna_tma_codice;
begin
  if copy(tipo_documento, 1, 10) <> 'preventivo' then
  begin
    if tma_codice_agente <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tma_codice').asstring := tma_codice_agente;
      end;
    end
    else
    begin
      if not tdo.isempty then
      begin
        if (tdo.fieldbyname('conto_terzi').asstring = 'si') and (cli.fieldbyname('tma_codice_conto_terzi').asstring <> '') then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tma_codice').asstring := cli.fieldbyname('tma_codice_conto_terzi').asstring;
          end;
        end
        else if (tdo.fieldbyname('conto_terzi').asstring = 'no') and (cli.fieldbyname('tma_codice_consegna').asstring <> '') then
        begin
          if (arc.utn.fieldbyname('tma_codice').asstring = '') or (tipo_documento = 'ordine') then
          begin
            if tabella_edit(tabella) then
            begin
              tabella.fieldbyname('tma_codice').asstring := cli.fieldbyname('tma_codice_consegna').asstring;
            end;
          end;
        end;
      end;

      if not ind.isempty then
      begin
        if (ind.fieldbyname('tma_codice').asstring <> '') and
          (ind.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstring) then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tma_codice').asstring := ind.fieldbyname('tma_codice').asstring;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.assegna_art_codice;
var
  quantita: double;
begin
  if tabella_edit(tabella_righe) then
  begin
    tabella_righe.fieldbyname('descrizione1').asstring := art.fieldbyname('descrizione1').asstring;
    tabella_righe.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;

    if tipo_documento = 'ddt fornitori' then
    begin
      if art.fieldbyname('tum_codice_acquisti').asstring <> '' then
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_acquisti').asstring;
      end
      else
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
      end;
    end
    else
    begin
      if art.fieldbyname('tum_codice_vendite').asstring <> '' then
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_vendite').asstring;
      end
      else
      begin
        tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
      end;
    end;

    tabella_righe.fieldbyname('tipo_movimento').asstring := art.fieldbyname('tipo_vendita').asstring;
    if tdo.fieldbyname('note_art').asstring = 'si' then
    begin
      tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note').asstring;
      if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_01').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_01').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_02').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_02').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_03').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_03').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_04').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_04').asstring;
      end
      else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_05').asstring then
      begin
        tabella_righe.fieldbyname('note').asstring := art.fieldbyname('note_lingua_05').asstring;
      end;
    end;
    tabella_righe.fieldbyname('tim_codice').asstring := art.fieldbyname('tim_codice').asstring;

    if v_oscillazione_cambio.checked then
    begin
      tabella_righe.fieldbyname('tva_codice').asstring := art.fieldbyname('tva_codice').asstring;
      tabella_righe.fieldbyname('percentuale_oscillazione_cambio').asfloat := art.fieldbyname('percentuale_oscillazione_cambio').asfloat;
    end;

    if not esiste_righe and (art.fieldbyname('gestione_dimensioni').asstring = 'si') then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('dimensione1').asfloat := art.fieldbyname('valore_dimensione1').asfloat;
        tabella_righe.fieldbyname('dimensione2').asfloat := art.fieldbyname('valore_dimensione2').asfloat;
        tabella_righe.fieldbyname('dimensione3').asfloat := art.fieldbyname('valore_dimensione3').asfloat;
      end;
    end;
  end;

  assegna_decimali_quantita;
  calcola_quantita_colli;
  calcola_quantita_confezioni;
  if esiste_righe then
  begin
    quantita := calcola_quantita_dimensioni(art, tabella_righe);
    if quantita <> 0 then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := quantita;
      end;
    end;
  end;
end;

procedure TGESVEN.v_artpClick(Sender: TObject);
(*
  var
  codice_visarc: variant;
*)
begin
  inherited;

  (*
    codice_visarc := '';
    esegui_visarc(arc.arcdit, 'ARTP', 'ARTP', codice_visarc, '', '', '', '', '', '');
    if codice_visarc <> '' then
    begin
    parametri_extra_programma_chiamato[29] := codice_visarc;
    esegui_programma('GESARTP', parametri_extra_programma_chiamato[29], true);
    if parametri_extra_programma_chiamato[29] <> null then
    begin
    codice_visarc := parametri_extra_programma_chiamato[29];
    if tabella_edit(tabella_righe) then
    begin
    tabella_righe.fieldbyname('art_codice').asstring := parametri_extra_programma_chiamato[29];
    art_codice_controllo(false);
    fuoco(v_art_codice);
    end;
    parametri_extra_programma_chiamato[29] := null;
    end;
    end;
  *)

  assegna_articolo_potenziale;
end;

procedure TGESVEN.assegna_articolo_potenziale;
begin
  if arc.dit.fieldbyname('art_codice_potenziale').asstring <> '' then
  begin
    if (copy(tipo_documento, 1, 10) = 'preventivo') and (tabella_righe.fieldbyname('situazione').asstring = 'inserito') then
    begin
      codice_archivio := '';
      esegui_visarc(arc.arcdit, 'ARTP', 'ARTP', codice_archivio, '', '', '', '', '', '');
      if codice_archivio <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          artp.close;
          artp.parambyname('codice').asstring := codice_archivio;
          artp.open;
          tabella_righe.fieldbyname('art_codice').asstring := arc.dit.fieldbyname('art_codice_potenziale').asstring;
          tabella_righe.fieldbyname('artp_codice').asstring := artp.fieldbyname('codice').asstring;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_art_codicechange(sender: tobject);
begin
  inherited;
  if screen.activecontrol = v_art_codice then
  begin
    abilita_art_codice;
    assegna_gestioni;
  end;
end;

procedure tgesven.duplica;
var
  i: word;
  nuovo_progressivo: integer;
  riga: integer;
  tdo_codice_duplica: variant;
  tmo_codice_origine, tmo_codice_collegato_origine, tma_codice_origine, tma_codice_collegato_origine: string;

  mantieni_prezzi, documento_origine, duplicazione_documento_diverso, filtro_tabella: boolean;

  pr: timpalf;
  ind, j: word;

  salva_progressivo: integer;
  salva_tipo_documento: string;
  salva_riga: integer;
begin
  if (esercizio_chiuso = 'no') and (esercizio_chiuso_magazzino = 'no') then
  begin
    if not fuori_fido(false) then
    begin
      if (parte_attiva = 'pannello_righe') and (tabella_righe.fieldbyname('riga').asinteger <> 0) then
      begin
        if (tabella.fieldbyname('situazione').asstring = 'consolidato') or (tabella.fieldbyname('situazione').asstring = 'annullato') then
        begin
          messaggio(200, 'il documento è consolidato o annullato e non si possono aggiungere righe');
        end
        else if (tabella.fieldbyname('situazione').asstring <> 'inserito') and (tipo_documento <> 'ordine') and (tipo_documento <> 'preventivo') then
        begin
          messaggio(200, 'il documento deve essere in situazione di inserito per poter aggiungere righe');
        end
        else
        begin
          if tabella_righe.state <> dsbrowse then
          begin
            messaggio(200, 'riga non duplicabile perché in modifica');
          end
          else
          begin
            pr := timpalf.create(nil);

            pr.v_form_caption := 'duplicazione righe';
            pr.v_descrizione_caption := 'numero righe (0=nessuna)';
            pr.v_width_campo := 10;
            pr.valore_passato := 1;
            pr.tipo_campo := 'numero';
            pr.decimali := 0;
            pr.showmodal;

            try
              if pr.valore_passato > 0 then
              begin
                ind := pr.valore_passato;
              end
              else
              begin
                ind := 0;
              end;
            except
              ind := 0;
            end;
            pr.free;
            if ind > 0 then
            begin
              salva_riga := tabella_righe.fieldbyname('riga').asinteger;
              duplica_righe.sql.clear;
              duplica_righe.sql.add('select * from ' + tabella_righe_tablename + ' where progressivo = :progressivo and riga = :riga');
              duplica_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
              duplica_righe.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
              duplica_righe.close;
              duplica_righe.open;

              for j := 1 to ind do
              begin
                query_presenti_righe.close;
                query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
                query_presenti_righe.open;
                riga := query_presenti_righe.fieldbyname('ultima_riga').asinteger;
                riga := riga + incremento_righe;

                esiste_righe := false;
                tabella_righe.append;
                for i := 0 to tabella_righe.fields.count - 1 do
                begin
                  if (lowercase(tabella_righe.fields[i].fieldname) <> 'id') then
                  begin
                    try
                      tabella_righe.fields[i].value := duplica_righe.fieldbyname(tabella_righe.fields[i].fieldname).value;
                    except
                    end;
                  end;
                end;
                tabella_righe.fieldbyname('riga').asinteger := riga;
                tabella_righe.fieldbyname('sequenza').asinteger := riga;
                if tabella_righe.fieldbyname('riga_origine_conai').asinteger = 0 then
                begin
                  tabella_righe.fieldbyname('situazione').asstring := 'inserito';
                end;
                tabella_righe.fieldbyname('documento_origine').asstring := '';
                tabella_righe.fieldbyname('doc_progressivo_origine').asfloat := 0;
                tabella_righe.fieldbyname('doc_riga_origine').asinteger := 0;
                tabella_righe.fieldbyname('configurazione').asinteger := 0;
                tabella_righe.fieldbyname('numero_colli_evasi').asinteger := 0;
                tabella_righe.fieldbyname('numero_confezioni_evase').asinteger := 0;
                tabella_righe.fieldbyname('quantita_evasa').asfloat := 0;
                tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat := 0;
                tabella_righe.fieldbyname('quantita_approntata').asfloat := 0;
                tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat := 0;
                tabella_righe.fieldbyname('importo_evaso').asfloat := 0;
                tabella_righe.fieldbyname('importo_sconto_evaso').asfloat := 0;
                tabella_righe.fieldbyname('cat_progressivo').asinteger := 0;

                tabella_righe.fieldbyname('evadere_approntato').asstring := '';
                tabella_righe.fieldbyname('evadoc_numero_colli').asinteger := 0;
                tabella_righe.fieldbyname('evadoc_numero_confezioni').asinteger := 0;
                tabella_righe.fieldbyname('evadoc_quantita').asfloat := 0;
                tabella_righe.fieldbyname('evadoc_prezzo').asfloat := 0;
                tabella_righe.fieldbyname('evadoc_tsm_codice').asstring := '';
                tabella_righe.fieldbyname('evadoc_tsm_codice_art').asstring := '';
                tabella_righe.fieldbyname('evadoc_importo_sconto').asfloat := 0;
                tabella_righe.fieldbyname('evadoc_importo').asfloat := 0;
                tabella_righe.fieldbyname('evadoc_saldo_acconto').asstring := '';
                tabella_righe.fieldbyname('evadoc_data_consegna').value := null;

                tabella_righe.fieldbyname('id_ecommerce').asstring := '';

                duplica_configurazione;

                tabella_righe.post;

                //se è un preventivo copia l'eventuale file rtf
                if copy(tipo_documento, 1, 10) = 'preventivo' then
                begin
                  if fileexists(cartella_file + '\' + 'preventivi' + '\' + inttostr(tabella.fieldbyname('progressivo').asinteger)
                    + '-' + inttostr(salva_riga) + '.rtf') then
                  begin
                    CopyFileTo(cartella_file + '\' + 'preventivi' + '\' + inttostr(tabella.fieldbyname('progressivo').asinteger)
                      + '-' + inttostr(salva_riga) + '.rtf',
                      cartella_file + '\' + 'preventivi' + '\' + inttostr(tabella.fieldbyname('progressivo').asinteger)
                      + '-' + inttostr(riga) + '.rtf');
                  end;
                end;
              end;

              v_griglia_righe.setfocus;
            end;
          end;
        end;
      end
      else
      begin
        inherited;

        if duplicazione_documento then
        begin
          aggiorna_dcm('azzera', progressivo_confermato);

          if messaggio(300, 'conferma per mantenere i prezzi e gli sconti del documento' + #13 +
            'in caso contrario verranno aggiornati alle condizioni in vigore alla data odierna') = 1 then
          begin
            mantieni_prezzi := true;
          end
          else
          begin
            mantieni_prezzi := false;
          end;

          duplicazione_documento_diverso := false;
          if (tipo_documento = 'ddt fornitori') or (tipo_documento = 'preventivo nominativi') or
            (messaggio(300, 'duplica usando lo stesso tipo di documento') = 1) then
          begin
            tdo_codice_duplica := tabella.fieldbyname('tdo_codice').asstring;
            esegui_visarc(arc.arcdit, 'TDO', 'TDV', tdo_codice_duplica,
              tabella.fieldbyname('tipo_documento').asstring, '', '', '', '', '');
          end
          else
          begin
            tdo_codice_duplica := '';
            esegui_visarc(arc.arcdit, 'TDO', 'TDVD', tdo_codice_duplica,
              tabella.fieldbyname('tipo_documento').asstring, 'ddt fornitori', 'preventivo nominativi', '', '', '');

            duplicazione_documento_diverso := true;
          end;

          if tdo_codice_duplica <> '' then
          begin
            duplica_righe.sql.clear;
            duplica_righe.sql.add('select * from ' + tabella_righe_tablename + ' where progressivo = :progressivo');
            duplica_righe.params[0].asfloat := tabella.fieldbyname('progressivo').asfloat;
            duplica_righe.close;
            duplica_righe.open;

            setlength(tabella_copia, tabella.fields.count);
            for i := 0 to tabella.fields.count - 1 do
            begin
              tabella_copia[i] := tabella.fields[i].value;
            end;

            esiste := false;
            esiste_documento := false;

            salva_progressivo := tabella.fieldbyname('progressivo').asinteger;
            salva_tipo_documento := tipo_documento;
            read_tabella(arc.arcdit, 'tdo', 'codice', tdo_codice_duplica, 'tipo_documento');
            tipo_documento := archivio.fieldbyname('tipo_documento').asstring;

            tabella.close;
            filtro_tabella := tabella.filtered;
            tabella.filtered := false;

            tabella_righe.close;

            tabella.parambyname('progressivo').asinteger := 0;
            tabella_righe.parambyname('progressivo').asinteger := 0;

            if salva_tipo_documento <> tipo_documento then
            begin
              assegnazione_globale_tipo_documento;
            end;

            tabella.open;
            tabella_righe.open;

            (*
              apri_transazione;
              try
              try
            *)

            tabella.append;
            for i := 0 to tabella.fields.count - 1 do
            begin
              if lowercase(tabella.fields[i].fieldname) <> 'id' then
              begin
                try
                  tabella.fields[i].value := tabella_copia[i];
                except
                end;
              end;
            end;

            tabella.fieldbyname('situazione_sdi').asstring := 'in attesa invio';
            tabella.fieldbyname('id_sdi').asstring := '';
            tabella.fieldbyname('codice_esito_sdi').asstring := '';
            tabella.fieldbyname('messaggio_esito_sdi').asstring := '';
            tabella.fieldbyname('stato_conservazione_sdi').asstring := '';
            tabella.fieldbyname('tag_riferimento_sdi').asstring := '';
            tabella.fieldbyname('incasso_saldo').asstring := 'no';
            tabella.fieldbyname('data_competenza_iva').value := null;

            if tabella.fieldbyname('ese_codice').asstring <> '' then
            begin
              tabella.fieldbyname('ese_codice').asstring := esercizio;
            end;

            (*
              tmo_codice_origine := tabella.fieldbyname('tmo_codice').asstring;
              tmo_codice_collegato_origine := tabella.fieldbyname('tmo_codice_collegato').asstring;
              tma_codice_origine := tabella.fieldbyname('tma_codice').asstring;
              tma_codice_collegato_origine := tabella.fieldbyname('tma_codice_collegato').asstring;
            *)

            tabella.fieldbyname('tdo_codice').asstring := tdo_codice_duplica;
            read_tabella(tdo, tabella.fieldbyname('tdo_codice').asstring);
            assegna_tdo_codice;
            if tabella.fieldbyname('tco_codice').asstring <> '' then
            begin
              tabella.fieldbyname('gen_codice_ritenuta').asstring := gen_codice_ritenuta;
              tabella.fieldbyname('tco_codice_ritenuta').asstring := tco_codice_ritenuta;
            end;

            if tdo.fieldbyname('commesse').asstring = 'no' then
            begin
              tabella.fieldbyname('cms_codice').asstring := '';
              tabella.fieldbyname('tipologia').asstring := '';
            end;

            (*
              if (tmo_codice_origine <> '') and (tabella.fieldbyname('tmo_codice').asstring = '') then
              begin
              tabella.fieldbyname('tmo_codice').asstring := tmo_codice_origine;
              end;
              if (tmo_codice_collegato_origine <> '') and (tabella.fieldbyname('tmo_codice_collegato').asstring = '') then
              begin
              tabella.fieldbyname('tmo_codice_collegato').asstring := tmo_codice_collegato_origine;
              end;
              if (tma_codice_origine <> '') and (tabella.fieldbyname('tma_codice').asstring = '') then
              begin
              tabella.fieldbyname('tma_codice').asstring := tma_codice_origine;
              end;
              if (tma_codice_collegato_origine <> '') and (tabella.fieldbyname('tma_codice_collegato').asstring = '') then
              begin
              tabella.fieldbyname('tma_codice_collegato').asstring := tma_codice_collegato_origine;
              end;
            *)

            tabella.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(tabella.connection), generatore + '_progressivo');
            nuovo_progressivo := tabella.fieldbyname('progressivo').asinteger;
            tabella.fieldbyname('data_documento').asdatetime := date;
            tabella.fieldbyname('numero_documento').asfloat := 0;
            tabella.fieldbyname('situazione').asstring := 'inserito';
            tabella.fieldbyname('stampato').asstring := '';
            tabella.fieldbyname('righe').asinteger := 0;
            tabella.fieldbyname('righe_evase').asinteger := 0;
            tabella.fieldbyname('righe_annullate').asinteger := 0;
            tabella.fieldbyname('importo_evaso').asfloat := 0;
            tabella.fieldbyname('revisione').asinteger := 0;
            tabella.fieldbyname('data_inizio_trasporto').value := null;
            tabella.fieldbyname('ora_inizio_trasporto').asinteger := 0;
            tabella.fieldbyname('minuto_inizio_trasporto').asinteger := 0;
            tabella.fieldbyname('importo_incassato').asfloat := 0;
            tabella.fieldbyname('importo_acconto').asfloat := 0;
            tabella.fieldbyname('utn_codice_accettazione').asstring := '';
            tabella.fieldbyname('accettato').asstring := 'no';
            tabella.fieldbyname('data_accettazione').value := null;

            tabella.fieldbyname('id_ecommerce').asstring := '';
            tabella.fieldbyname('id_vtiger').asinteger := 0;

            tabella.fieldbyname('situazione_sdi').asstring := 'in attesa invio';
            tabella.fieldbyname('codice_esito_sdi').asstring := '';

            //  modifiche varie nel caso di tipi documento diversi
            if salva_tipo_documento <> tipo_documento then
            begin
              if (tipo_documento <> 'fattura immediata') and (tipo_documento <> 'nota credito') then
              begin
                read_tabella(cli, tabella.fieldbyname('cli_codice').asstring);
                if tabella.fieldbyname('tsp_codice').asstring = '' then
                begin
                  tabella.fieldbyname('tsp_codice').asstring := cli.fieldbyname('tsp_codice').asstring;
                end;

                if tabella.fieldbyname('tst_codice').asstring = '' then
                begin
                  tabella.fieldbyname('tst_codice').asstring := cli.fieldbyname('tst_codice').asstring;
                end;

                if tabella.fieldbyname('tpo_codice').asstring = '' then
                begin
                  tabella.fieldbyname('tpo_codice').asstring := cli.fieldbyname('tpo_codice').asstring;
                end;
              end
              else
              begin
                tabella.fieldbyname('data_inizio_trasporto').value := null;
                tabella.fieldbyname('ora_inizio_trasporto').asinteger := 0;
                tabella.fieldbyname('minuto_inizio_trasporto').asinteger := 0;
                tabella.fieldbyname('tsp_codice').asstring := '';
                tabella.fieldbyname('tst_codice').asstring := '';
                tabella.fieldbyname('tpo_codice').asstring := '';
              end;

              if (tipo_documento <> 'ordine') and (tipo_documento <> 'preventivo') then
              begin
                tabella.fieldbyname('data_consegna').value := null;

                if tipo_documento <> 'preventivo' then
                begin
                  tabella.fieldbyname('data_validita').value := null;
                end;
              end;

              if tipo_documento = 'ordine' then
              begin
                tabella.fieldbyname('tmo_codice').asstring := '';
                tabella.fieldbyname('tmo_codice_collegato').asstring := '';
              end;

              if tipo_documento = 'preventivo' then
              begin
                tabella.fieldbyname('tmo_codice').asstring := '';
                tabella.fieldbyname('tmo_codice_collegato').asstring := '';
                tabella.fieldbyname('tma_codice').asstring := '';
                tabella.fieldbyname('tma_codice_collegato').asstring := '';
              end;
            end;
            //  occhio al blocco del documento in modifica da altri utemnti
            //  modifiche varie nel caso di tipi documento diversi fine

            tmo_codice_origine := tabella.fieldbyname('tmo_codice').asstring;
            tmo_codice_collegato_origine := tabella.fieldbyname('tmo_codice_collegato').asstring;
            tma_codice_origine := tabella.fieldbyname('tma_codice').asstring;
            tma_codice_collegato_origine := tabella.fieldbyname('tma_codice_collegato').asstring;

            if duplicazione_documento_diverso then
            begin
              tabella.fieldbyname('nostro_riferimento').asstring := 'duplica ' +
                salva_tipo_documento + ' ' + inttostr(salva_progressivo);
            end;

            no_eventi_post := true;

            read_tabella(cli, tabella.fieldbyname('cli_codice').asstring);
            tabella.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;

            if copy(tabella.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
            begin
              tabella.fieldbyname('data_validita').asdatetime := tabella.fieldbyname('data_documento').asdatetime +
                tdo.fieldbyname('giorni_validita_preventivo').asinteger;
            end;

            tabella.post;

            //read_tabella(tabella, tabella.parambyname('progressivo').asinteger);

            progressivo_confermato := nuovo_progressivo;
            aggiorna_dcm('edit', progressivo_confermato);

            while not duplica_righe.eof do
            begin
              esiste_righe := false;
              tabella_righe.append;
              for i := 0 to tabella_righe.fields.count - 1 do
              begin
                if (lowercase(tabella_righe.fields[i].fieldname) <> 'id') then
                begin
                  try
                    tabella_righe.fields[i].value := duplica_righe.fieldbyname(tabella_righe.fields[i].fieldname).value;
                  except
                  end;
                end;
              end;

              if tdo.fieldbyname('commesse').asstring = 'no' then
              begin
                tabella_righe.fieldbyname('cms_codice').asstring := '';
                tabella_righe.fieldbyname('tipologia').asstring := '';
              end;

              if salva_tipo_documento <> tipo_documento then
              begin
                if tma_codice_origine <> '' then
                begin
                  tabella_righe.fieldbyname('tma_codice').asstring := tma_codice_origine;
                end;
                if tabella.fieldbyname('tmo_codice').asstring = '' then
                begin
                  tabella_righe.fieldbyname('tma_codice').asstring := '';
                end;
                if tma_codice_collegato_origine <> '' then
                begin
                  tabella_righe.fieldbyname('tma_codice_collegato').asstring := tma_codice_collegato_origine;
                end;
                if tabella.fieldbyname('tmo_codice_collegato').asstring = '' then
                begin
                  tabella_righe.fieldbyname('tma_codice_collegato').asstring := '';
                end;
              end;

              tabella_righe.fieldbyname('progressivo').asinteger := nuovo_progressivo;
              if tabella_righe.fieldbyname('riga_origine_conai').asinteger = 0 then
              begin
                tabella_righe.fieldbyname('situazione').asstring := 'inserito';
              end;

              tabella_righe.fieldbyname('documento_origine').asstring := '';
              tabella_righe.fieldbyname('doc_progressivo_origine').asfloat := 0;
              tabella_righe.fieldbyname('doc_riga_origine').asinteger := 0;

              tabella_righe.fieldbyname('configurazione').asinteger := 0;
              tabella_righe.fieldbyname('numero_colli_evasi').asinteger := 0;
              tabella_righe.fieldbyname('numero_confezioni_evase').asinteger := 0;
              tabella_righe.fieldbyname('quantita_evasa').asfloat := 0;
              tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat := 0;
              tabella_righe.fieldbyname('quantita_approntata').asfloat := 0;
              tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat := 0;
              tabella_righe.fieldbyname('importo_evaso').asfloat := 0;
              tabella_righe.fieldbyname('importo_sconto_evaso').asfloat := 0;
              tabella_righe.fieldbyname('cat_progressivo').asinteger := 0;

              tabella_righe.fieldbyname('evadere_approntato').asstring := '';
              tabella_righe.fieldbyname('evadoc_numero_colli').asinteger := 0;
              tabella_righe.fieldbyname('evadoc_numero_confezioni').asinteger := 0;
              tabella_righe.fieldbyname('evadoc_quantita').asfloat := 0;
              tabella_righe.fieldbyname('evadoc_prezzo').asfloat := 0;
              tabella_righe.fieldbyname('evadoc_tsm_codice').asstring := '';
              tabella_righe.fieldbyname('evadoc_tsm_codice_art').asstring := '';
              tabella_righe.fieldbyname('evadoc_importo_sconto').asfloat := 0;
              tabella_righe.fieldbyname('evadoc_importo').asfloat := 0;
              tabella_righe.fieldbyname('evadoc_saldo_acconto').asstring := '';
              tabella_righe.fieldbyname('evadoc_data_consegna').value := null;

              tabella_righe.fieldbyname('id_ecommerce').asstring := '';

              if not mantieni_prezzi then
              begin
                cerca_prezzo;
                calcola_importo;
                assegna_provvigioni;
              end;

              if tdo.fieldbyname('tco_codice').asstring <> '' then
              begin
                visualizza_descrizioni_righe;
                assegna_gen_codice;
              end;

              duplica_configurazione;

              //  modifiche varie nel caso di tipi documento diversi
              if salva_tipo_documento <> tipo_documento then
              begin
                if tipo_documento = 'bolla' then
                begin
                  tabella_righe.fieldbyname('data_consegna').value := null;
                end;
              end;
              //  occhio al blocco del documento in modifica da altri utemnti
              //  modifiche varie nel caso di tipi documento diversi

              tabella_righe.post;

              //se è un preventivo copia l'eventuale file rtf
              if (copy(tipo_documento, 1, 10) = 'preventivo') and (copy(salva_tipo_documento, 1, 10) = 'preventivo') then
              begin
                if fileexists(cartella_file + '\' + 'preventivi' + '\' + inttostr(salva_progressivo) + '-' +
                  inttostr(duplica_righe.fieldbyname('riga').asinteger) + '.rtf') then
                begin
                  CopyFileTo(cartella_file + '\' + 'preventivi' + '\' + inttostr(salva_progressivo) + '-'
                    + inttostr(duplica_righe.fieldbyname('riga').asinteger) + '.rtf',
                    cartella_file + '\' + 'preventivi' + '\' + inttostr(nuovo_progressivo) + '-'
                    + inttostr(tabella_righe.fieldbyname('riga').asinteger) + '.rtf');
                end;
              end;

              duplica_righe.next;
            end;

            totven.movven_testata(tmyconnection_go(tabella.connection), tipo_documento, nuovo_progressivo);

            (*
              commit_transazione;
              except
              on e: exception do
              begin
              rollback_transazione(e.message);
              end;
              end;
              finally
              chiudi_transazione;
              end;
            *)

            //se è un preventivo copia l'eventuale file rtf
            if (copy(tipo_documento, 1, 10) = 'preventivo') and (copy(salva_tipo_documento, 1, 10) = 'preventivo') then
            begin
              if fileexists(cartella_file + '\' + 'preventivi' + '\' + floattostr(salva_progressivo) + '.rtf') then
              begin
                CopyFileTo(cartella_file + '\' + 'preventivi' + '\' + floattostr(salva_progressivo) + '.rtf',
                  cartella_file + '\' + 'preventivi' + '\' + floattostr(nuovo_progressivo) + '.rtf');
              end;
            end;

            if salva_tipo_documento = tipo_documento then
            begin
              messaggio(100, 'il documento è stato duplicato con il progressivo. ' + inttostr(nuovo_progressivo));

              tabella.close;
              tabella.parambyname('progressivo').asinteger := nuovo_progressivo;
              tabella.open;

              esiste := true;
              esiste_documento := true;
            end
            else
            begin
              if tipo_documento = 'bolla' then
              begin
                esegui_programma('GESBOLV', nuovo_progressivo, true);
              end
              else if tipo_documento = 'corrispettivo' then
              begin
                esegui_programma('GESCORV', nuovo_progressivo, true);
              end
              else if tipo_documento = 'ddt' then
              begin
                esegui_programma('GESDDTV', nuovo_progressivo, true);
              end
              else if tipo_documento = 'fattura accompagnatoria' then
              begin
                esegui_programma('GESFAAV', nuovo_progressivo, true);
              end
              else if tipo_documento = 'fattura immediata' then
              begin
                esegui_programma('GESFAIV', nuovo_progressivo, true);
              end
              else if tipo_documento = 'nota credito' then
              begin
                esegui_programma('GESNOCV', nuovo_progressivo, true);
              end
              else if tipo_documento = 'ordine' then
              begin
                esegui_programma('GESORDV', nuovo_progressivo, true);
              end
              else if tipo_documento = 'preventivo' then
              begin
                esegui_programma('GESPREV', nuovo_progressivo, true);
              end;

              tipo_documento := salva_tipo_documento;

              tabella.close;
              tabella.filtered := filtro_tabella;
              tabella_righe.close;

              assegnazione_globale_tipo_documento;

              tabella.parambyname('progressivo').asinteger := salva_progressivo;
              tabella_righe.parambyname('progressivo').asinteger := salva_progressivo;;

              tabella.open;
              tabella_righe.open;
            end;
          end;

          abilita_codice;
        end;
      end;
    end;
  end
  else
  begin
    messaggio(200, 'operazione non consentita per un esercizio chiuso');
  end;
end;

procedure tgesven.duplica_configurazione;
var
  i: word;
  cnf, cnf_originale: tmyquery_go;
  cnl, cnl_originale: tmyquery_go;
begin
  if (duplica_righe.fieldbyname('configurazione').asinteger <> 0) and
    (tdo.fieldbyname('gestione_configurazione').asstring = 'si') then
  begin
    if messaggio(300, 'duplica configurazione per l''articolo: ' + duplica_righe.fieldbyname('art_codice').asstring + #13 +
      duplica_righe.fieldbyname('descrizione1').asstring + #13 +
      duplica_righe.fieldbyname('descrizione2').asstring) = 1 then
    begin
      cnt.close;
      cnt.open;
      if cnt.eof then
      begin
        cnt.append;
        cnt.fieldbyname('anno').asstring := '';
        cnt.fieldbyname('tipo').asstring := 'CONFIGURAZIONE';
        cnt.fieldbyname('sottotipo').asstring := '';
        cnt.post;
        cnt.close;
        cnt.open;
      end;
      cnt.edit;

      cnt.fieldbyname('progressivo').asfloat := arrotonda
        (cnt.fieldbyname('progressivo').asfloat + 1, 0);
      cnt.fieldbyname('data_aggiornamento').asdatetime := now;

      cnt.post;

      tabella_righe.fieldbyname('configurazione').asinteger := trunc(cnt.fieldbyname('progressivo').asfloat);

      cnf := tmyquery_go.create(nil);
      cnf_originale := tmyquery_go.create(nil);
      cnf.connection := arc.arcdit;
      cnf_originale.connection := arc.arcdit;
      cnf.sql.text := 'select * from cnf where configurazione = :configurazione';
      cnf_originale.sql.text := 'select * from cnf where configurazione = :configurazione order by sequenza';

      cnf_originale.parambyname('configurazione').asinteger := duplica_righe.fieldbyname('configurazione').asinteger;
      cnf_originale.open;
      cnf.open;

      while not cnf_originale.eof do
      begin
        cnf.append;
        for i := 0 to cnf_originale.fields.count - 1 do
        begin
          cnf.fields[i].value := cnf_originale.fields[i].value;
        end;
        cnf.fieldbyname('id').asinteger := 0;
        cnf.fieldbyname('configurazione').asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
        cnf.post;

        cnf_originale.next;
      end;

      cnf.free;
      cnf_originale.free;

      //  cnl
      cnl := tmyquery_go.create(nil);
      cnl_originale := tmyquery_go.create(nil);
      cnl.connection := arc.arcdit;
      cnl_originale.connection := arc.arcdit;
      cnl.sql.text := 'select * from cnl where configurazione = :configurazione';
      cnl_originale.sql.text := 'select * from cnl where configurazione = :configurazione order by sequenza';

      cnl_originale.parambyname('configurazione').asinteger := duplica_righe.fieldbyname('configurazione').asinteger;
      cnl_originale.open;
      cnl.open;

      while not cnl_originale.eof do
      begin
        cnl.append;
        for i := 0 to cnl_originale.fields.count - 1 do
        begin
          cnl.fields[i].value := cnl_originale.fields[i].value;
        end;
        cnl.fieldbyname('id').asinteger := 0;
        cnl.fieldbyname('configurazione').asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
        cnl.post;

        cnl_originale.next;
      end;

      cnl.free;
      cnl_originale.free;
    end;
  end;
end;

procedure tgesven.v_rettifica_intraexit(sender: tobject);
begin
  inherited;
  assegna_valore_intra;
end;

procedure tgesven.v_revisione_documentoclick(sender: tobject);
var
  i: word;
  vecchio_progressivo, nuovo_progressivo: integer;
  aggiorna_revisione_testata, aggiorna_revisione: tmyquery_go;
  data_documento: tdate;
begin
  if tabella.state <> dsbrowse then
  begin
    messaggio(200, 'documento non revisionabile perché in modifica');
  end
  else
  begin
    if messaggio(300, 'la revisione è un''operazione non ripristinabile' + #13 +
      'conferma per eseguire la revisione') = 1 then
    begin
      aggiorna_revisione_testata := tmyquery_go.create(nil);
      aggiorna_revisione_testata.connection := arc.arcdit;

      aggiorna_revisione := tmyquery_go.create(nil);
      aggiorna_revisione.connection := arc.arcdit;

      vecchio_progressivo := tabella.fieldbyname('progressivo').asinteger;

      apri_transazione;
      try
        try
          duplica_righe.close;
          duplica_righe.sql.clear;
          duplica_righe.sql.add('select * from ' + tabella_righe_tablename + ' where progressivo = :progressivo');
          duplica_righe.sql.add('and situazione <> ''annullato''');
          duplica_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
          duplica_righe.open;

          setlength(tabella_copia, tabella.fields.count);
          for i := 0 to tabella.fields.count - 1 do
          begin
            tabella_copia[i] := tabella.fields[i].value;
          end;

          data_documento := tabella.fieldbyname('data_ora_creazione').asdatetime;

          esiste := false;
          esiste_documento := false;
          tabella.append;
          for i := 0 to tabella.fields.count - 1 do
          begin
            if (lowercase(tabella.fields[i].fieldname) <> 'id')
              and (lowercase(tabella.fields[i].fieldname) <> 'id_vtiger')
              and (lowercase(tabella.fields[i].fieldname) <> 'id_ecommerce')
              and (lowercase(tabella.fields[i].fieldname) <> 'codice_ecommerce')
              and (lowercase(tabella.fields[i].fieldname) <> 'id_ecommerce_immagine')
              and (lowercase(tabella.fields[i].fieldname) <> 'id_origine') then
            begin
              try
                tabella.fields[i].value := tabella_copia[i];
              except
              end;
            end;
          end;

          tabella.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(tabella.connection), generatore + '_progressivo');
          if tabella.fieldbyname('progressivo_origine_revisione').asinteger = 0 then
          begin
            tabella.fieldbyname('progressivo_origine_revisione').asinteger := vecchio_progressivo;
          end;
          tabella.fieldbyname('revisione').asinteger := tabella.fieldbyname('revisione').asinteger + 1;
          tabella.fieldbyname('trv_codice').asstring := '';
          if tabella.fieldbyname('note_revisione').asstring = '' then
          begin
            tabella.fieldbyname('note_revisione').asstring := 'revisione ' + tabella.fieldbyname('revisione').asstring + ' in data: ' + formatdatetime('dd/mm/yyyy', now);
          end
          else
          begin
            tabella.fieldbyname('note_revisione').asstring := tabella.fieldbyname('note_revisione').asstring +
              #13#10 + #13#10 + 'revisione ' + tabella.fieldbyname('revisione').asstring + ' in data: ' + formatdatetime('dd/mm/yyyy', now);
          end;

          tabella.fieldbyname('stampato').asstring := '';

          read_tabella(tdo, tabella.fieldbyname('tdo_codice').asstring);
          if copy(tabella.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
          begin
            tabella.fieldbyname('data_validita').asdatetime := tabella.fieldbyname('data_documento').asdatetime +
              tdo.fieldbyname('giorni_validita_preventivo').asinteger;
          end;

          tabella.post;

          //se è un preventivo copia l'eventuale file rtf
          if copy(tabella.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
          begin
            if fileexists(cartella_file + '\' + 'preventivi' + '\' + inttostr(vecchio_progressivo) + '.rtf') then
            begin
              CopyFileTo(cartella_file + '\' + 'preventivi' + '\' + inttostr(vecchio_progressivo) + '.rtf',
                cartella_file + '\' + 'preventivi' + '\' + inttostr(tabella.fieldbyname('progressivo').asinteger) + '.rtf');
            end;
          end;

          nuovo_progressivo := tabella.fieldbyname('progressivo').asinteger;

          while not duplica_righe.eof do
          begin
            if duplica_righe.fieldbyname('riga_origine_conai').asinteger = 0 then
            begin
              esiste_righe := false;
              tabella_righe.append;
              for i := 0 to tabella_righe.fields.count - 1 do
              begin
                if (lowercase(tabella_righe.fields[i].fieldname) <> 'id') then
                begin
                  try
                    tabella_righe.fields[i].value := duplica_righe.fieldbyname(tabella_righe.fields[i].fieldname).value;
                  except
                  end;
                end;
              end;

              duplica_configurazione;

              //tabella_righe.fieldbyname('configurazione').asinteger := 0;
              tabella_righe.fieldbyname('progressivo').asinteger := nuovo_progressivo;
              tabella_righe.post;

              //se è un preventivo copia l'eventuale file rtf
              if copy(tabella.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
              begin
                if fileexists(cartella_file + '\' + 'preventivi' + '\' + inttostr(vecchio_progressivo) + '-'
                  + inttostr(tabella_righe.fieldbyname('riga').asinteger) + '.rtf') then
                begin
                  CopyFileTo(cartella_file + '\' + 'preventivi' + '\' + inttostr(vecchio_progressivo) + '-'
                    + inttostr(tabella_righe.fieldbyname('riga').asinteger) + '.rtf',
                    cartella_file + '\' + 'preventivi' + '\' + inttostr(tabella.fieldbyname('progressivo').asinteger) + '-'
                    + inttostr(tabella_righe.fieldbyname('riga').asinteger) + '.rtf');
                end;
              end;
            end;

            duplica_righe.next;
          end;

          totven.movven_testata(tmyconnection_go(tabella.connection), tipo_documento, nuovo_progressivo);

          aggiorna_revisione.sql.text := 'update ' + tabella_righe_tablename + ' set situazione = ''revisionato'' ' +
            'where progressivo = :progressivo';
          aggiorna_revisione.parambyname('progressivo').asinteger := vecchio_progressivo;
          aggiorna_revisione.execsql;

          aggiorna_revisione_testata.sql.text := 'update ' + tabella_tablename + ' set data_revisione = current_date ' +
            'where progressivo = :progressivo';
          aggiorna_revisione_testata.parambyname('progressivo').asinteger := vecchio_progressivo;
          aggiorna_revisione_testata.execsql;

          commit_transazione('transazione non eseguita');
        except
          on e: exception do
          begin
            rollback_transazione(e.message);
          end;
        end;
      finally
        chiudi_transazione;
        aggiorna_revisione_testata.free;
        aggiorna_revisione.free;
      end;

      tabella.close;
      tabella.parambyname('progressivo').asinteger := nuovo_progressivo;
      tabella.open;

      esiste := true;
      esiste_documento := true;

      abilita_codice;
    end;
  end;
end;

procedure TGESVEN.v_revisione_precedenteClick(Sender: TObject);
var
  rev: tmyquery_go;
begin
  inherited;

  rev := tmyquery_go.create(nil);
  rev.connection := tabella.connection;
  rev.sql.add('select progressivo from pvt');
  rev.sql.add('where cli_codice = :cli_codice and data_documento = :data_documento');
  rev.sql.add('and numero_documento = :numero_documento and serie_documento = :serie_documento');
  rev.sql.add('and revisione = :revisione');

  rev.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
  rev.parambyname('data_documento').asdate := tabella.fieldbyname('data_documento').asdatetime;
  rev.parambyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
  rev.parambyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
  rev.parambyname('revisione').asinteger := tabella.fieldbyname('revisione').asinteger - 1;

  rev.open;
  if not rev.isempty then
  begin
    documento_chiuso := true;
    tabella.refresh;
    abilita_codice;
    read_tabella(tabella, rev.fieldbyname('progressivo').asinteger);
  end;

  freeandnil(rev);
end;

procedure TGESVEN.v_riferimentoExit(Sender: TObject);
begin
  inherited;
  if aggiorna_consolidato then
  begin
    aggiorna_consolidato := false;
    abilita_codice;
  end;
end;

procedure TGESVEN.v_ritenuta_manualeClick(Sender: TObject);
begin
  inherited;
  abilita_ritenuta_manuale;
end;

procedure TGESVEN.abilita_ritenuta_manuale;
begin
  if v_ritenuta_manuale.checked then
  begin
    v_importo_enasarco.enabled := true;
    v_importo_enasarco.color := clwindow;

    v_importo_cassa_professionisti.enabled := true;
    v_importo_cassa_professionisti.color := clwindow;

    v_importo_ritenuta.enabled := true;
    v_importo_ritenuta.color := clwindow;

    v_ricevuto_certificazione.enabled := true;

    v_data_certificazione.enabled := true;
    v_data_certificazione.color := clwindow;
  end
  else
  begin
    v_importo_enasarco.enabled := false;
    v_importo_enasarco.color := clbtnface;

    v_importo_cassa_professionisti.enabled := false;
    v_importo_cassa_professionisti.color := clbtnface;

    v_importo_ritenuta.enabled := false;
    v_importo_ritenuta.color := clbtnface;

    v_ricevuto_certificazione.enabled := false;

    v_data_certificazione.enabled := false;
    v_data_certificazione.color := clbtnface;
  end;
end;

procedure TGESVEN.v_reso_scontrinoClick(Sender: TObject);
var
  pr: trifreso;
begin
  inherited;
  if tab_pannello_bottoni_nuovi.activepage = tab_pannello_bottoni_nuovi_storni then
  begin
    if (tabella.fieldbyname('tipo_documento').asstring = 'corrispettivo') and
      (tabella.fieldbyname('situazione').asstring = 'inserito') and
      (tabella.fieldbyname('importo_totale_imponibile').asfloat < 0) and
      (tdo.fieldbyname('emissione_scontrino').asstring = 'si') then
    begin
      pr := trifreso.create(nil);
      pr.tipo_documento := 'corrispettivo';
      pr.v_data_scontrino_reso.date := data_scontrino_reso;
      pr.v_numero_scontrino_reso.text := numero_scontrino_reso;
      pr.showmodal;
      data_scontrino_reso := pr.v_data_scontrino_reso.date;
      numero_scontrino_reso := pr.v_numero_scontrino_reso.text;
      freeandnil(pr);
    end
    else
    begin
      messaggio(200, 'il documento deve essere un corrispettivo' + slinebreak +
        'di reso (importo negativo');
    end;
  end;
end;

procedure tgesven.v_rettifica_intraclick(sender: tobject);
begin
  inherited;
  abilita_intra;
end;

procedure tgesven.v_mese_rettifica_intraexit(sender: tobject);
begin
  inherited;
  mese_rettifica_intra_controllo;
end;

procedure tgesven.v_trimestre_rettifica_intraexit(sender: tobject);
begin
  inherited;
  trimestre_rettifica_intra_controllo;
end;

procedure tgesven.v_anno_rettifica_intraexit(sender: tobject);
begin
  inherited;
  anno_rettifica_intra_controllo;
end;

procedure tgesven.mese_rettifica_intra_controllo;
begin
  if controllo then
  begin
    if (v_mese_rettifica_intra.value <> 0) and
      ((v_mese_rettifica_intra.value < 1) or (v_mese_rettifica_intra.value > 12)) then
    begin
      messaggio(002, label65.caption);
      v_mese_rettifica_intra.setfocus;
      abort;
    end;
  end;
end;

procedure tgesven.trimestre_rettifica_intra_controllo;
begin
  if controllo then
  begin
    if (v_trimestre_rettifica_intra.value <> 0) and
      ((v_trimestre_rettifica_intra.value < 1) or (v_trimestre_rettifica_intra.value > 4)) then
    begin
      messaggio(002, label65.caption);
      v_trimestre_rettifica_intra.setfocus;
      abort;
    end;
  end;
end;

procedure tgesven.anno_rettifica_intra_controllo;
begin
  if controllo then
  begin
    if (v_anno_rettifica_intra.value <> 0) and
      (v_anno_rettifica_intra.value < 2003) then
    begin
      messaggio(002, label65.caption);
      v_anno_rettifica_intra.setfocus;
      abort;
    end;
  end;
end;

procedure tgesven.v_esistenza_depositochange(sender: tobject);
begin
  inherited;
  if v_esistenza_deposito.value > 0 then
  begin
    v_esistenza_deposito.color := cllime;
  end
  else if v_esistenza_deposito.value < 0 then
  begin
    v_esistenza_deposito.color := clred;
  end
  else
  begin
    v_esistenza_deposito.color := clyellow;
  end;
end;

procedure tgesven.v_esistenza_totalechange(sender: tobject);
begin
  inherited;
  if v_esistenza_totale.value > 0 then
  begin
    v_esistenza_totale.color := cllime;
  end
  else if v_esistenza_totale.value < 0 then
  begin
    v_esistenza_totale.color := clred;
  end
  else
  begin
    v_esistenza_totale.color := clyellow;
  end;
end;

procedure TGESVEN.v_etiartClick(Sender: TObject);
var
  pr: tetiart;

  singola_riga: boolean;
begin
  if messaggio(304, 'conferma per generare etichette per la singola riga') = 1 then
  begin
    parametri_extra_programma_chiamato[0] := tabella_righe.fieldbyname('art_codice').asstring;
    parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('quantita').asfloat;
    try
      parametri_extra_programma_chiamato[2] := arrotonda(tabella_righe.fieldbyname('importo').asfloat /
        tabella_righe.fieldbyname('quantita').asfloat, decimali_prezzo_euro);
    except
      parametri_extra_programma_chiamato[2] := 0;
    end;
    parametri_extra_programma_chiamato[10] := tabella.fieldbyname('cli_codice').asstring;
    esegui_programma('ETIART', '', true);
  end
  else
  begin
    genera_tabella_etichette;
    pr := tetiart.create(nil);
    if pr.esegui_form then
    begin
      pr.tabella_ordinamento_gestioni := nome_tabella;
      pr.stampa_lotto_etichette := tdo.fieldbyname('stampa_lotto_etichette').asstring;
      pr.origine := 'vendite';
      pr.showmodal;
    end;
    pr.free;
    sor.close;
  end;
end;

procedure tgesven.pannello_righeexit(sender: tobject);
var
  pr: tgesven03;
begin
  tool_f7.enabled := false;
  if controllo then
  begin
    if (tipo_documento = 'ordine') and (tabella_righe.fieldbyname('art_codice').asstring <> '') and
      (art.fieldbyname('tva_codice').asstring <> '') and (v_oscillazione_cambio.checked) then
    begin
      pr := tgesven03.create(nil);
      if pr.esegui_form then
      begin
        pr.form_chiamante := self;
        pr.showmodal;
      end;
      pr.free;
    end;

    if (esegui_dati_riga = 'si') or (not art.isempty and (art.fieldbyname('gestione_dati_extra').asstring = 'si')) then
    begin
      esegui_gesven02;
    end;
  end;

  inherited;

  disabilita_campo(v_tag_fe_righe);
  v_gestione_collegato.enabled := false;
end;

procedure tgesven.v_saldo_accontoexit(sender: tobject);
begin
  inherited;
  if controllo then
  begin
    if (variato_stringa <> v_saldo_acconto.text) and (tabella_righe.fieldbyname('situazione').asstring <> 'inserito') then
    begin
      messaggio(000, 'non è possibile variare lo stato per una riga già elaborata');
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.cancel;
      end;
    end;
  end;
  saldo_acconto_controllo;
end;

procedure tgesven.v_scadenzeclick(sender: tobject);
var
  i: word;
  data_pagamento: tdate;
  stringa: string;
  pagamento: tmyquery_go;
begin
  inherited;
  if tipo_documento <> 'ddt fornitori' then
  begin
    pagamento := tmyquery_go.create(nil);
    pagamento.connection := arc.arcdit;
    if tipo_documento = 'bolla' then
    begin
      pagamento.sql.text := 'select * from bvp where progressivo = :progressivo order by rata';
    end
    else if tipo_documento = 'corrispettivo' then
    begin
      pagamento.sql.text := 'select * from cvp where progressivo = :progressivo order by rata';
    end
    else if tipo_documento = 'ddt' then
    begin
      pagamento.sql.text := 'select * from dvp where progressivo = :progressivo order by rata';
    end
    else if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      pagamento.sql.text := 'select * from pvp where progressivo = :progressivo order by rata';
    end
    else if tipo_documento = 'ordine' then
    begin
      pagamento.sql.text := 'select * from ovp where progressivo = :progressivo order by rata';
    end
    else
    begin
      pagamento.sql.text := 'select * from fvp where progressivo = :progressivo order by rata';
    end;
    pagamento.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    pagamento.open;

    data_pagamento := tabella.fieldbyname('data_inizio_conteggio').asdatetime;
    if data_pagamento = 0 then
    begin
      data_pagamento := tabella.fieldbyname('data_documento').asdatetime;
    end;

    if pagamento.isempty then
    begin
      read_tabella(arc.arcdit, 'tpa', 'codice', tabella.fieldbyname('tpa_codice').asstring, 'numero_rate');
      setlength(tabella_scadenze, archivio.fieldbyname('numero_rate').asinteger);
    end
    else
    begin
      setlength(tabella_scadenze, pagamento.recordcount);
    end;
    calsca.calsca('C', tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('tva_codice').asstring,
      tabella.fieldbyname('tpa_codice').asstring, tabella.fieldbyname('importo_totale').asfloat, 0,
      tabella.fieldbyname('importo_totale_iva').asfloat, 0,
      data_pagamento, tabella_scadenze, pagamento);

    pagamento.free;

    stringa := '';
    for i := 0 to length(tabella_scadenze) - 1 do
    begin
      stringa := stringa + formatdatetime('dd/mm/yyyy', tabella_scadenze[i].data_scadenza) + '   ' +
        formatfloat(formato_display_importo, tabella_scadenze[i].importo_scadenza) + #13;
    end;
    messaggio(100, stringa);
  end
  else
  begin
    messaggio(200, 'funzione non attiva per questo tipo documento');
  end;
end;

procedure tgesven.v_scheda_trasportoclick(sender: tobject);
begin
  inherited;
  esegui_scheda_trasporto;
end;

procedure tgesven.esegui_scheda_trasporto;
var
  pr: tgesschtrs;
begin
  pr := tgesschtrs.create(nil);
  if pr.esegui_form then
  begin
    pr.progressivo := trunc(v_progressivo.value);
    pr.tipo_documento := tipo_documento;
    pr.showmodal;
  end;
  pr.free;
end;

procedure tgesven.v_prezzokeydown(sender: tobject;
  var
  key: word;
  shift:
  tshiftstate);
var
  pr: tultprz;
  pr1: tvislsa;
  pr2: tvislsv;

  scorpora: boolean;
  prezzo, prezzo_netto, prezzo_netto_iva: double;
begin
  inherited;
  if (key = vk_f11) and (shift = []) then
  begin
    if not scorporo_eseguito then
    begin
      if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
      begin
        scorpora := true;
      end
      else
      begin
        scorpora := false;
      end;
      if tabella_edit(tabella_righe) then
      begin
        if read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale') then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := arrotonda
            (v_prezzo.value / (1 + archivio.fieldbyname('percentuale').asfloat / 100), decimali_max_prezzo);
        end;
      end;
      calcola_importo;
      scorporo_eseguito := true;
    end;
  end;

  if (key = vk_f11) and (shift = [ssctrl]) then
  begin
    pr := tultprz.create(nil);
    if pr.esegui_form then
    begin
      pr.tipo_modulo := 'vendite';
      pr.programma_chiamante := programma;
      pr.cfg_codice := v_cli_codice.text;
      pr.art_codice := v_art_codice.text;
      pr.tipo_documento := tipo_documento;
      pr.progressivo := v_progressivo.value;
      pr.riga := tabella_righe.fieldbyname('riga').asinteger;
      pr.modificabile := true;
      if (tabella.fieldbyname('situazione').asstring = 'consolidato') or (tipo_documento = 'fattura differita') then
      begin
        pr.modificabile := false;
      end;
      pr.showmodal;
      if pr.modificato then
      begin
        try
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('prezzo').asfloat := pr.prezzo;
            tabella_righe.fieldbyname('tsm_codice').asstring := pr.tsm_codice;
            tabella_righe.fieldbyname('tsm_codice_art').asstring := pr.tsm_codice_art;
          end;
          calcola_importo;
        except
        end;
      end;
    end;
    pr.free;
  end;

  if (key = vk_f11) and (shift = [ssshift]) then
  begin
    if tabella_righe.fieldbyname('quantita').asfloat = 0 then
    begin
      prezzo := tabella_righe.fieldbyname('importo').asfloat;
    end
    else
    begin
      prezzo := tabella_righe.fieldbyname('importo').asfloat / tabella_righe.fieldbyname('quantita').asfloat;
    end;
    read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale');
    if tabella.fieldbyname('listino_con_iva').asstring = 'si' then
    begin
      prezzo_netto_iva := prezzo;
      prezzo_netto := prezzo_netto_iva / (1 + archivio.fieldbyname('percentuale').asfloat / 100);
    end
    else
    begin
      prezzo_netto := prezzo;
      prezzo_netto_iva := prezzo_netto * (1 + archivio.fieldbyname('percentuale').asfloat / 100);
    end;
    messaggio(100, 'prezzo netto: ' + formatfloat(',0.0000;-,0.0000;#', prezzo_netto) + slinebreak +
      'prezzo netto con iva: ' + formatfloat(',0.0000;-,0.0000;#', prezzo_netto_iva));
  end;

  if (key = vk_f7) and (shift = [ssctrl]) and not esiste_righe then
  begin
    query_addebito.close;
    query_addebito.sql.clear;
    query_addebito.sql.add('select sum(importo) importo');
    if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      query_addebito.sql.add('from pvr');
    end
    else if tipo_documento = 'ordine' then
    begin
      query_addebito.sql.add('from ovr');
    end
    else if tipo_documento = 'bolla' then
    begin
      query_addebito.sql.add('from bvr');
    end
    else if tipo_documento = 'corrispettivo' then
    begin
      query_addebito.sql.add('from cvr');
    end
    else if tipo_documento = 'ddt' then
    begin
      query_addebito.sql.add('from dvr');
    end
    else
    begin
      query_addebito.sql.add('from fvr');
    end;
    query_addebito.sql.add('where progressivo = :progressivo and riga < :riga');

    query_addebito.parambyname('progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
    query_addebito.parambyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
    query_addebito.open;

    tabella_righe.fieldbyname('importo').asfloat := arrotonda
      (query_addebito.fieldbyname('importo').asfloat * v_prezzo.value / 100, cifre_decimali_importo);

    tabella_righe.fieldbyname('numero_colli').asfloat := 0;
    tabella_righe.fieldbyname('numero_confezioni').asfloat := 0;
    tabella_righe.fieldbyname('quantita').asfloat := 0;
    tabella_righe.fieldbyname('tum_quantita_base').asfloat := 0;
    tabella_righe.fieldbyname('prezzo').asfloat := 0;
    tabella_righe.fieldbyname('tsm_codice').asstring := '';
    tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
    attiva_importo;
    calcola_importo;
    v_importo.setfocus;
  end;

  if (key = vk_f8) and (shift = [ssctrl]) then
  begin
    pr := tultprz.create(nil);
    if pr.esegui_form then
    begin
      pr.tipo_modulo := 'articoli';
      pr.programma_chiamante := '';
      pr.cfg_codice := '';
      pr.art_codice := trim(v_art_codice.text);
      pr.progressivo := 0;
      pr.showmodal;
    end;
    pr.free;
  end;

  if (key = vk_f9) and (shift = [ssctrl]) then
  begin
    pr1 := tvislsa.create(nil);
    if pr1.esegui_form then
    begin
      pr1.art_codice := v_art_codice.text;
      pr1.data_validita := date;
      if tipo_documento = 'ddt fornitori' then
      begin
        pr1.modificabile := true;
      end
      else
      begin
        pr1.modificabile := false;
      end;
      pr1.showmodal;
      if pr1.modificato then
      begin
        try
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('prezzo').asfloat := pr1.prezzo;
            tabella_righe.fieldbyname('tsm_codice').asstring := pr1.tsm_codice_art;
            tsm_codice_righe_controllo(false);
            tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
          end;
          calcola_importo;
        except
        end;
      end;
    end;
    pr1.free;
  end;

  if (key = vk_f10) and (shift = [ssctrl]) then
  begin
    pr2 := tvislsv.create(nil);
    if pr2.esegui_form then
    begin
      pr2.art_codice := v_art_codice.text;
      pr2.data_validita := v_data_documento.date;
      pr2.aggiorna := false;
      pr2.modificabile := true;
      pr2.sconto_imponibile_lordo := 'no';
      pr2.tipo_documento := 'vendite';
      pr2.listino_con_iva := tabella.fieldbyname('listino_con_iva').asstring;
      pr2.showmodal;

      if pr2.modificato then
      begin
        try
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('prezzo').asfloat := pr2.prezzo;
            // tabella_righe.fieldbyname('tsm_codice_art').asstring := pr2.tsm_codice_art;
            tabella_righe.fieldbyname('tsm_codice').asstring := pr2.tsm_codice_art;
            tsm_codice_righe_controllo(false);
          end;
          calcola_importo;
          assegna_prezzo_netto(decimali_max_prezzo, tag.fieldbyname('prezzo_netto_sconti').asstring, tabella_righe);

          sconto_massimo := pr2.sconto_massimo;
          blocco_sconto_massimo := pr2.blocco_sconto_massimo;
          password_sconto_massimo := pr2.password_sconto_massimo;
        except
        end;
      end;
    end;
    pr2.free;
  end;
end;

procedure tgesven.v_importo_scontoexit(sender: tobject);
begin
  inherited;
  if controllo then
  begin
    if arrotonda(v_importo_sconto.value, 2) <> arrotonda(v_importo_sconto.value, cifre_decimali_importo) then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_sconto').asfloat := arrotonda
          (tabella.fieldbyname('importo_sconto').asfloat, cifre_decimali_importo);
      end;
    end;
  end;
end;

procedure TGESVEN.v_importo_scontoKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
begin
  inherited;

  if (key = vk_f9) and (shift = []) and (tabella.state = dsedit) and (v_importo_sconto.value <> 0) then
  begin
    tabella.fieldbyname('importo_sconto').asfloat := arrotonda(tabella.fieldbyname('importo_totale_imponibile').asfloat *
      v_importo_sconto.value / 100);
  end;
end;

procedure TGESVEN.v_importo_sconto_righeChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure tgesven.v_importo_sconto_righeenter(sender: tobject);
begin
  inherited;
  variato_importo := arrotonda(v_importo_sconto_righe.value);
end;

procedure tgesven.v_importo_sconto_righeexit(sender: tobject);
var
  valore: double;
begin
  inherited;

  if variato_importo <> v_importo_sconto_righe.value then
  begin
    variato_provvigioni := true;
  end;
  if v_importo_sconto_righe.enabled then
  begin
    if controllo then
    begin
      assegna_valore_tsm_codice_righe;
      if arrotonda(variato_importo) <> arrotonda(v_importo_sconto_righe.value) then
      begin
        valore := 0;
        if tabella_righe.fieldbyname('quantita').asfloat <> 0 then
        begin
          valore := arrotonda(v_importo_sconto_righe.value / tabella_righe.fieldbyname('quantita').asfloat, 6);
        end;
        if arrotonda(valore * tabella_righe.fieldbyname('quantita').asfloat) <> arrotonda(v_importo_sconto_righe.value) then
        begin
          messaggio(000, 'l''importo dello sconto non è un multiplo della quantità' + slinebreak +
            'e potrebbe non essere compatibile con le specifiche della fattura elettronica');
          fuoco(v_importo_sconto_righe);
          abort;
        end;

        calcola_importo;
      end;
    end;
  end;
end;

procedure tgesven.v_importo_spese_trasportoexit(sender: tobject);
begin
  inherited;
  if controllo and (cli.fieldbyname('spese_trasporto_giornaliere').asstring = 'si') then
  begin
    spese_trasporto_giornaliere.close;
    spese_trasporto_giornaliere.parambyname('cli_codice').asstring := v_cli_codice.text;
    spese_trasporto_giornaliere.parambyname('data_documento').asdate := v_data_documento.date;
    spese_trasporto_giornaliere.parambyname('progressivo').asinteger := trunc(v_progressivo.value);
    spese_trasporto_giornaliere.open;
    if not spese_trasporto_giornaliere.isempty then
    begin
      messaggio(200, 'per il cliente sono già state addebitate spese di trasporto nella giornata');
    end;
  end;
end;

procedure TGESVEN.v_contatto_commercialeExit(Sender: TObject);
begin
  inherited;
  if aggiorna_consolidato then
  begin
    aggiorna_consolidato := false;
    abilita_codice;
  end;
end;

procedure tgesven.v_conto_correnteexit(sender: tobject);
begin
  inherited;
  conto_corrente_controllo;
end;

procedure tgesven.conto_corrente_controllo;
begin
  if trim(v_conto_corrente.text) <> '' then
  begin
    if length(trim(v_conto_corrente.text)) <> 12 then
    begin
      messaggio(000, 'il conto corrente deve essere di 12 caratteri');
      v_conto_corrente.setfocus;
      abort;
    end;
  end;
end;

procedure tgesven.v_cli_codicekeydown(sender: tobject;
  var
  key: word;
  shift:
  tshiftstate);
var
  ind_codice: string;
begin
  inherited;
  if (key = vk_f9) and (shift = []) and (not esiste) and (screen.activecontrol = v_cli_codice) and (trim(v_cli_codice.text) <> '') then
  begin
    controllare_documenti_livello_superiore;
  end;

  if (tipo_documento <> 'preventivo nominativi') and (tipo_documento <> 'ddt fornitori') and not esiste then
  begin
    if (key = vk_f10) and (shift = []) then
    begin
      assegna_pvv := true;

      (*
        codice_archivio := '';
        esegui_visarc(arc.arcdit, 'PVV', 'PVVVEN', codice_archivio, v_cli_codice.text, v_indirizzo.text, '', '', '', '');
        read_tabella(arc.arcdit, 'pvvr', 'punto_vendita', codice_archivio);
        if tabella.fieldbyname('punto_vendita').asstring <> archivio.fieldbyname('punto_vendita').asstring then
        begin
        if tabella_edit(tabella) then
        begin
        tabella.fieldbyname('punto_vendita').asstring := archivio.fieldbyname('punto_vendita').asstring;
        end;
        end;
        if tabella.fieldbyname('indirizzo').asstring <> archivio.fieldbyname('ind_codice').asstring then
        begin
        ind_codice := archivio.fieldbyname('ind_codice').asstring;
        //selectnext(v_cli_codice, true, true);
        if tabella_edit(tabella) then
        begin
        tabella.fieldbyname('indirizzo').asstring := ind_codice;
        //assegna_ind;
        end;
        end;
      *)
      selectnext(v_cli_codice, true, true);
    end;
  end;
end;

procedure TGESVEN.v_cli_codice_fatturazioneEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_cli_codice_fatturazione.text;
end;

procedure TGESVEN.v_cli_codice_fatturazioneExit(Sender: TObject);
begin
  inherited;

  cli_codice_fatturazione_controllo(true);

  (*
    if variato_stringa <> v_cli_codice_fatturazione.text then
    begin
    if cli_fatturazione.fieldbyname('tiv_codice').asstring <> '' then
    begin
    if tabella.fieldbyname('data_documento').asdatetime <= cli_fatturazione.fieldbyname('data_esenzione_iva').asdatetime then
    begin
    if tabella.fieldbyname('tiv_codice').asstring <> cli_fatturazione.fieldbyname('tiv_codice').asstring then
    begin
    if tabella_edit(tabella) then
    begin
    tabella.fieldbyname('tiv_codice').asstring := cli_fatturazione.fieldbyname('tiv_codice').asstring;
    assegna_valore_tiv_codice;
    tiv_codice_controllo(false);
    end;
    end;
    end;
    end
    else
    begin
    if tabella.fieldbyname('tiv_codice').asstring <> cli_fatturazione.fieldbyname('tiv_codice').asstring then
    begin
    if tabella_edit(tabella) then
    begin
    tabella.fieldbyname('tiv_codice').asstring := cli_fatturazione.fieldbyname('tiv_codice').asstring;
    assegna_valore_tiv_codice;
    tiv_codice_controllo(false);
    end;
    end;
    end;
    end;
  *)
end;

procedure TGESVEN.cli_codice_fatturazione_controllo(blocco: boolean);
begin
  tabella_controllo(true, cli_fatturazione, v_cli_codice_fatturazione, blocco, tab_control, tab_testata_analitica, tabella);
end;

procedure tgesven.controllare_documenti_livello_superiore;
var
  pr: tvisdocev;

  stringa, campo: string;
begin
  if copy(tipo_documento, 1, 10) <> 'preventivo' then
  begin
    if codice_nom_numerico = 'si' then
    begin
      v_cli_codice.text := setta_lunghezza(v_cli_codice.text, 8, true, '0');
    end;

    pr := tvisdocev.create(nil);
    if pr.esegui_form then
    begin
      pr.tipo_modulo := 'vendite';
      if ((tipo_documento = 'fattura immediata') and (tdo_codice_conto_vendita <> '')) or
        ((tipo_documento = 'bolla') and (tdo_codice_conto_vendita <> '')) then
      begin
        pr.tipo_documento_evasione := 'ddt';
        pr.tdo_codice_conto_vendita := tdo_codice_conto_vendita;
      end
      else if (tipo_documento = 'ordine') or (v_cli_codice.text = cli_codice_potenziali) then
      begin
        pr.tipo_documento_evasione := 'preventivo';
      end
      else if tipo_documento = 'ddt fornitori' then
      begin
        pr.tipo_documento_evasione := 'ddt fornitori';
      end
      else if tipo_documento = 'nota credito' then
      begin
        pr.tipo_documento_evasione := 'ddt clienti';
      end
      else
      begin
        pr.tipo_documento_evasione := 'ordine';
      end;
      pr.cli_frn_codice := v_cli_codice.text;
      if v_cli_codice.text = cli_codice_potenziali then
      begin
        pr_cli_codice_potenziali := cli_codice_potenziali;
      end
      else
      begin
        pr.cli_codice_potenziali := '';
      end;
      pr.showmodal;

      if pr.progressivo <> 0 then
      begin
        testata_documento_evaso.sql.clear;
        if (tipo_documento = 'fattura immediata') and (tdo_codice_conto_vendita <> '') then
        begin
          testata_documento_evaso.sql.add('select * from dvt where progressivo = :progressivo');
        end
        else if tipo_documento = 'ordine' then
        begin
          testata_documento_evaso.sql.add('select * from pvt where progressivo = :progressivo');
        end
        else
        begin
          if pr.tipo_documento = 'ordine' then
          begin
            testata_documento_evaso.sql.add('select * from ovt where progressivo = :progressivo');
          end
          else
          begin
            testata_documento_evaso.sql.add('select * from pvt where progressivo = :progressivo');
          end;
        end;
        progressivo_documento_evadere := pr.progressivo;
        tipo_documento_evadere := pr.tipo_documento;
        testata_documento_evaso.params[0].asfloat := pr.progressivo;
        testata_documento_evaso.close;
        testata_documento_evaso.open;
        if not testata_documento_evaso.eof then
        begin
          tabella.fieldbyname('tlv_codice').asstring := testata_documento_evaso.fieldbyname('tlv_codice').asstring;
          tabella.fieldbyname('listino_con_iva').asstring := testata_documento_evaso.fieldbyname('listino_con_iva').asstring;
          tabella.fieldbyname('tpa_codice').asstring := testata_documento_evaso.fieldbyname('tpa_codice').asstring;
          tabella.fieldbyname('data_inizio_conteggio').asdatetime := testata_documento_evaso.fieldbyname('data_inizio_conteggio').asdatetime;
          tabella.fieldbyname('tsm_codice').asstring := testata_documento_evaso.fieldbyname('tsm_codice').asstring;
          tabella.fieldbyname('tva_codice').asstring := testata_documento_evaso.fieldbyname('tva_codice').asstring;
          tabella.fieldbyname('lti_progressivo').asinteger := testata_documento_evaso.fieldbyname('lti_progressivo').asinteger;
          tabella.fieldbyname('tiv_codice').asstring := testata_documento_evaso.fieldbyname('tiv_codice').asstring;
          tabella.fieldbyname('tcc_codice').asstring := testata_documento_evaso.fieldbyname('tcc_codice').asstring;
          tabella.fieldbyname('tag_codice').asstring := testata_documento_evaso.fieldbyname('tag_codice').asstring;
          tabella.fieldbyname('tag_codice_ca').asstring := testata_documento_evaso.fieldbyname('tag_codice_ca').asstring;
          tabella.fieldbyname('riferimento').asstring := testata_documento_evaso.fieldbyname('riferimento').asstring;
          tabella.fieldbyname('data_riferimento').value := testata_documento_evaso.fieldbyname('data_riferimento').value;
          tabella.fieldbyname('nostro_riferimento').asstring := testata_documento_evaso.fieldbyname('nostro_riferimento').asstring;
          tabella.fieldbyname('contatto_commerciale').asstring := testata_documento_evaso.fieldbyname('contatto_commerciale').asstring;
          tabella.fieldbyname('committente').asstring := testata_documento_evaso.fieldbyname('committente').asstring;
          tabella.fieldbyname('tsp_codice').asstring := testata_documento_evaso.fieldbyname('tsp_codice').asstring;
          tabella.fieldbyname('consegna_bartolini').asstring := testata_documento_evaso.fieldbyname('consegna_bartolini').asstring;
          tabella.fieldbyname('tst_codice').asstring := testata_documento_evaso.fieldbyname('tst_codice').asstring;
          tabella.fieldbyname('tab_codice').asstring := testata_documento_evaso.fieldbyname('tab_codice').asstring;
          tabella.fieldbyname('tpo_codice').asstring := testata_documento_evaso.fieldbyname('tpo_codice').asstring;
          tabella.fieldbyname('intra').asstring := testata_documento_evaso.fieldbyname('intra').asstring;
          tabella.fieldbyname('codice_abi').asstring := testata_documento_evaso.fieldbyname('codice_abi').asstring;
          tabella.fieldbyname('codice_cab').asstring := testata_documento_evaso.fieldbyname('codice_cab').asstring;
          tabella.fieldbyname('tba_codice').asstring := testata_documento_evaso.fieldbyname('tba_codice').asstring;
          tabella.fieldbyname('conto_corrente').asstring := testata_documento_evaso.fieldbyname('conto_corrente').asstring;
          tabella.fieldbyname('cin').asstring := testata_documento_evaso.fieldbyname('cin').asstring;
          tabella.fieldbyname('iban').asstring := testata_documento_evaso.fieldbyname('iban').asstring;
          tabella.fieldbyname('bic').asstring := testata_documento_evaso.fieldbyname('bic').asstring;
          if tipo_documento <> 'ordine' then
          begin
            tabella.fieldbyname('tma_codice').asstring := testata_documento_evaso.fieldbyname('tma_codice').asstring;
          end;
          if testata_documento_evaso.fieldbyname('tma_codice').asstring <> '' then
          begin
            if (tabella.fieldbyname('tma_codice').asstring <> '') and
              (tabella.fieldbyname('tma_codice').asstring <> testata_documento_evaso.fieldbyname('tma_codice').asstring) then
            begin
              if messaggio(300, 'il deposito già impostato sul documento [' + tabella.fieldbyname('tma_codice').asstring + ']' + #13 +
                'è diverso da quello del documento da evadere [' + testata_documento_evaso.fieldbyname('tma_codice').asstring + ']' + #13 +
                'lo si vuole rimpiazzare?') = 1 then
              begin
                tabella.fieldbyname('tma_codice').asstring := testata_documento_evaso.fieldbyname('tma_codice').asstring;
              end;
            end;
          end;
          tabella.fieldbyname('iva_sospensione').asstring := testata_documento_evaso.fieldbyname('iva_sospensione').asstring;
          tabella.fieldbyname('addebito_spese_fattura').asstring := testata_documento_evaso.fieldbyname('addebito_spese_fattura').asstring;
          tabella.fieldbyname('spese_manuali_trasporto').asstring := testata_documento_evaso.fieldbyname('spese_manuali_trasporto').asstring;
          tabella.fieldbyname('spese_manuali_bollo').asstring := testata_documento_evaso.fieldbyname('spese_manuali_bollo').asstring;
          tabella.fieldbyname('spese_manuali_incasso').asstring := testata_documento_evaso.fieldbyname('spese_manuali_incasso').asstring;
          tabella.fieldbyname('addebito_spese_trasporto').asstring := testata_documento_evaso.fieldbyname('addebito_spese_trasporto').asstring;
          // tabella.fieldbyname('spese_manuali').asstring := testata_documento_evaso.fieldbyname('spese_manuali').asstring;
          tabella.fieldbyname('spese_manuali_trasporto').asstring := testata_documento_evaso.fieldbyname('spese_manuali_trasporto').asstring;
          tabella.fieldbyname('spese_manuali_bollo').asstring := testata_documento_evaso.fieldbyname('spese_manuali_bollo').asstring;
          tabella.fieldbyname('spese_manuali_incasso').asstring := testata_documento_evaso.fieldbyname('spese_manuali_incasso').asstring;
          tabella.fieldbyname('importo_spese_extra').asfloat := testata_documento_evaso.fieldbyname('importo_spese_extra').asfloat;

          if tabella.fieldbyname('spese_manuali_trasporto').asstring = 'si' then
          begin
            tabella.fieldbyname('importo_spese_trasporto').asfloat := testata_documento_evaso.fieldbyname('importo_spese_trasporto').asfloat;
          end;
          if tabella.fieldbyname('spese_manuali_bollo').asstring = 'si' then
          begin
            tabella.fieldbyname('importo_bollo').asfloat := testata_documento_evaso.fieldbyname('importo_bollo').asfloat;
          end;
          if tabella.fieldbyname('spese_manuali_incasso').asstring = 'si' then
          begin
            tabella.fieldbyname('importo_spese_incasso').asfloat := testata_documento_evaso.fieldbyname('importo_spese_incasso').asfloat;
          end;
          tabella.fieldbyname('indirizzo').asstring := testata_documento_evaso.fieldbyname('indirizzo').asstring;
          tabella.fieldbyname('descrizione1').asstring := testata_documento_evaso.fieldbyname('descrizione1').asstring;
          tabella.fieldbyname('descrizione2').asstring := testata_documento_evaso.fieldbyname('descrizione2').asstring;
          tabella.fieldbyname('via').asstring := testata_documento_evaso.fieldbyname('via').asstring;
          tabella.fieldbyname('via_01').asstring := testata_documento_evaso.fieldbyname('via_01').asstring;
          tabella.fieldbyname('cap').asstring := testata_documento_evaso.fieldbyname('cap').asstring;
          tabella.fieldbyname('citta').asstring := testata_documento_evaso.fieldbyname('citta').asstring;
          tabella.fieldbyname('provincia').asstring := testata_documento_evaso.fieldbyname('provincia').asstring;
          tabella.fieldbyname('tna_codice').asstring := testata_documento_evaso.fieldbyname('tna_codice').asstring;
          tabella.fieldbyname('tna_codice_intra').asstring := testata_documento_evaso.fieldbyname('tna_codice_intra').asstring;
          tabella.fieldbyname('tsm_codice_sconto').asstring := testata_documento_evaso.fieldbyname('tsm_codice_sconto').asstring;
          tabella.fieldbyname('data_inizio_conteggio').asstring := testata_documento_evaso.fieldbyname('data_inizio_conteggio').asstring;
          tabella.fieldbyname('scadenziario_manuale').asstring := testata_documento_evaso.fieldbyname('scadenziario_manuale').asstring;
          tabella.fieldbyname('codice_contratto').asstring := testata_documento_evaso.fieldbyname('codice_contratto').asstring;
          tabella.fieldbyname('cms_codice').asstring := testata_documento_evaso.fieldbyname('cms_codice').asstring;
          tabella.fieldbyname('tipologia').asstring := testata_documento_evaso.fieldbyname('tipologia').asstring;
          tabella.fieldbyname('contratto_elenco_cli_for').asstring := testata_documento_evaso.fieldbyname('contratto_elenco_cli_for').asstring;
          tabella.fieldbyname('pagamento_elenco_cli_for').asstring := testata_documento_evaso.fieldbyname('pagamento_elenco_cli_for').asstring;
          tabella.fieldbyname('note').asstring := testata_documento_evaso.fieldbyname('note').asstring;
          tabella.fieldbyname('codice_cup').asstring := testata_documento_evaso.fieldbyname('codice_cup').asstring;
          tabella.fieldbyname('codice_cig').asstring := testata_documento_evaso.fieldbyname('codice_cig').asstring;
          tabella.fieldbyname('cen_codice').asstring := testata_documento_evaso.fieldbyname('cen_codice').asstring;
          tabella.fieldbyname('tvc_codice').asstring := testata_documento_evaso.fieldbyname('tvc_codice').asstring;
          tabella.fieldbyname('punto_vendita').asstring := testata_documento_evaso.fieldbyname('punto_vendita').asstring;
          tabella.fieldbyname('tconai_codice').asstring := testata_documento_evaso.fieldbyname('tconai_codice').asstring;
          tabella.fieldbyname('no_conai').asstring := testata_documento_evaso.fieldbyname('no_conai').asstring;
          tabella.fieldbyname('tipo_imballaggio').asstring := testata_documento_evaso.fieldbyname('tipo_imballaggio').asstring;
          tabella.fieldbyname('percentuale_ecobonus').asinteger := testata_documento_evaso.fieldbyname('percentuale_ecobonus').asinteger;

          if tipo_documento = 'ordine' then
          begin
            tabella.fieldbyname('importo_acconto').asfloat := testata_documento_evaso.fieldbyname('importo_acconto').asfloat;
            tabella.fieldbyname('versato_acconto').asstring := testata_documento_evaso.fieldbyname('versato_acconto').asstring;
          end;
          if copy(tipo_documento, 1, 7) = 'fattura' then
          begin
            tabella.fieldbyname('importo_incassato').asfloat := testata_documento_evaso.fieldbyname('importo_incassato').asfloat;
            tabella.fieldbyname('incasso_saldo').asstring := testata_documento_evaso.fieldbyname('incasso_saldo').asstring;
          end;

          if testata_documento_evaso.fieldbyname('situazione').asstring = 'inserito' then
          begin
            if testata_documento_evaso.fieldbyname('importo_sconto').asfloat <> 0 then
            begin
              if messaggio(300, 'nel documento di origine è previsto uno sconto in valore assoluto di ' +
                testata_documento_evaso.fieldbyname('importo_sconto').asstring + ' ' + testata_documento_evaso.fieldbyname('tva_codice').asstring + #13 +
                'conferma per assegnarlo al documento derivato') = 1 then
              begin
                tabella.fieldbyname('importo_sconto').asfloat := testata_documento_evaso.fieldbyname('importo_sconto').asfloat;
              end;
            end;
          end;

          if tipo_documento = 'ordine' then
          begin
            tabella.fieldbyname('data_consegna').asstring := testata_documento_evaso.fieldbyname('data_consegna').asstring;
          end;

          assegna_cambio;

          visualizza_descrizioni;
          avviso_durc;

          variato_stringa := v_cli_codice.text;

          //  campi personalizzati da passare
          if read_tabella(camdoc, vararrayof(['vendite', pr.tipo_documento_evasione,
            'vendite', tipo_documento])) then
          begin
            stringa := trim(camdoc.fieldbyname('campi_testata').asstring);
            while pos(';', stringa) > 0 do
            begin
              campo := copy(stringa, 1, pos(';', stringa) - 1);
              tabella.fieldbyname(campo).value := testata_documento_evaso.fieldbyname(campo).value;
              stringa := trim(copy(stringa, pos(';', stringa) + 1, length(stringa)));
            end;
            if stringa <> '' then
            begin
              tabella.fieldbyname(stringa).value := testata_documento_evaso.fieldbyname(stringa).value;
            end;
          end;
          //
        end;
      end;
    end;
    pr.free;
  end;
end;

procedure TGESVEN.eredita_documenti_collegati(tipo_documento_origine, tipo_documento_collegato: string;
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

          if tipo_documento = 'ordine' then
          begin
            dav_nuovo.fieldbyname('documento_derivato').asstring := 'si';
            dav_nuovo.fieldbyname('documento_produzione').asstring := dav.fieldbyname('documento_produzione').asstring;
          end;

          dav_nuovo.post;
        end;

        dav.next;
      end;
    end;

    freeandnil(dav_nuovo);
    freeandnil(dav);
  end;
end;

procedure tgesven.pannello_griglia_righeexit(sender: tobject);
var
  componente: twincontrol;
begin
  inherited;

  tool_documenti_allegati.enabled := false;

  if not esiste_righe then
  begin
    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('data_consegna').asstring := tabella.fieldbyname('data_consegna').asstring;
      tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
      tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;

      tabella_righe.fieldbyname('prezzo_bloccato').asstring := tdo.fieldbyname('prezzo_bloccato').asstring;
      tabella_righe.fieldbyname('evadere_note').asstring := tdo.fieldbyname('evadere_note').asstring;

      tabella_righe.fieldbyname('stampa_configurazioni').asstring := stampa_configurazioni;
      tabella_righe.fieldbyname('prezzi_configurazione').asstring := prezzi_configurazione;

      tabella_righe.fieldbyname('data_inizio_competenza').asstring := tabella.fieldbyname('data_inizio_competenza').asstring;
      tabella_righe.fieldbyname('data_fine_competenza').asstring := tabella.fieldbyname('data_fine_competenza').asstring;

      tabella_righe.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
      tabella_righe.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;
      if ultimo_cms_codice <> '' then
      begin
        tabella_righe.fieldbyname('cms_codice').asstring := ultimo_cms_codice;
        tabella_righe.fieldbyname('tipologia').asstring := ultimo_tipologia;
      end;

      tabella_righe.fieldbyname('note_art').asstring := tdo.fieldbyname('note_come_descrizioni').asstring;

      tabella_righe.fieldbyname('cen_codice').asstring := tabella.fieldbyname('cen_codice').asstring;
      tabella_righe.fieldbyname('tvc_codice').asstring := tabella.fieldbyname('tvc_codice').asstring;

      if tdo.fieldbyname('rma').asstring = 'si' then
      begin
        tabella_righe.fieldbyname('quantita').asfloat := 1;
        tabella_righe.fieldbyname('tum_quantita_base').asfloat := 1;
      end;
    end;
  end;

  if (controllo) and (not esiste_documento) and ((screen.activecontrol = v_progressivo) or (screen.activecontrol = v_bottone_nuovo)) then
  begin
    documento_chiuso := true;

    if pagina_riferimento_chiusura then
    begin
      pagina_riferimento_chiusura_attivare := true;
    end;
    if pagina_incasso_chiusura then
    begin
      pagina_incasso_chiusura_attivare := true;
    end;
    if pagina_magazzino_chiusura then
    begin
      pagina_magazzino_chiusura_attivare := true;
    end;
    if pagina_destinazione_chiusura then
    begin
      pagina_destinazione_chiusura_attivare := true;
    end;
    if pagina_spedizione_chiusura then
    begin
      pagina_spedizione_chiusura_attivare := true;
    end;
    if pagina_sconto_chiusura then
    begin
      pagina_sconto_chiusura_attivare := true;
    end;
    if pagina_note_chiusura then
    begin
      pagina_note_chiusura_attivare := true;
    end;
    if pagina_analitica_chiusura then
    begin
      pagina_analitica_chiusura_attivare := true;
    end;

    if (pagina_riferimento_chiusura) then
    begin
      tab_control.activepage := tab_testata_riferimento;
      assegna_fuoco(tab_testata_riferimento, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_riferimento_chiusura_attivare := false;
    end
    else if (pagina_incasso_chiusura) then
    begin
      tab_control.activepage := tab_testata_finanziario;
      assegna_fuoco(tab_testata_finanziario, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_incasso_chiusura_attivare := false;
    end
    else if (pagina_magazzino_chiusura) then
    begin
      tab_control.activepage := tab_testata_magazzino;
      assegna_fuoco(tab_testata_magazzino, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_magazzino_chiusura_attivare := false;
    end
    else if (pagina_destinazione_chiusura) then
    begin
      tab_control.activepage := tab_testata_destinazione;
      assegna_fuoco(tab_testata_destinazione, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_destinazione_chiusura_attivare := false;
    end
    else if (pagina_spedizione_chiusura) then
    begin
      tab_control.activepage := tab_testata_spedizione;
      assegna_fuoco(tab_testata_spedizione, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_spedizione_chiusura_attivare := false;
    end
    else if (pagina_sconto_chiusura) then
    begin
      tab_control.activepage := tab_testata_sconto_acconto_spese;
      assegna_fuoco(tab_testata_sconto_acconto_spese, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_sconto_chiusura_attivare := false;
    end
    else if (pagina_note_chiusura) then
    begin
      tab_control.activepage := tab_testata_note;
      assegna_fuoco(tab_testata_note, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_note_chiusura_attivare := false;
    end
    else if (pagina_analitica_chiusura) then
    begin
      tab_control.activepage := tab_testata_analitica;
      assegna_fuoco(tab_testata_analitica, componente);
      if componente <> nil then
      begin
        if componente.canfocus then
        begin
          componente.setfocus;
        end;
      end;
      pagina_analitica_chiusura_attivare := false;
    end;
  end;
end;

procedure tgesven.v_conto_terziclick(sender: tobject);
begin
  inherited;
  lcr.close;
  lcr.sql.clear;
  lcr.sql.add('select * from lcr');
  lcr.sql.add('where documento_origine = :codice0');
  lcr.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
  lcr.params[0].asstring := tipo_documento + ' ven';
  lcr.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
  lcr.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
  lcr.open;
  lcr.first;
  if lcr.eof then
  begin
    crea_conto_terzi;
  end
  else
  begin
    varia_conto_terzi;
  end;
end;

procedure tgesven.v_creastclick(sender: tobject);
begin
  inherited;

  parametri_extra_programma_chiamato[28] := tipo_documento;
  parametri_extra_programma_chiamato[29] := tabella.fieldbyname('progressivo').asstring;
  esegui_programma('CREAST', '', true);
end;

procedure TGESVEN.v_crea_astClick(Sender: TObject);
var
  mtr_codice: string;

  att_progressivo, riga: integer;
  mtr, att, atr, esiste_att, esiste_atr, ultima_atr, tat, atrc: tmyquery_go;
begin
  inherited;

  if tabella_righe.fieldbyname('configurazione').asinteger = 0 then
  begin
    messaggio(200, 'non è presente la configurazione della riga');
  end
  else
  begin
    mtr := tmyquery_go.create(nil);
    mtr.connection := tabella.connection;
    mtr.sql.text := 'select * from mtr where codice = :codice';

    att := tmyquery_go.create(nil);
    att.connection := tabella.connection;
    att.sql.text := 'select * from att where progressivo = :progressivo';

    atr := tmyquery_go.create(nil);
    atr.connection := tabella.connection;
    atr.sql.text := 'select * from atr where progressivo = :progressivo and riga = :riga';

    atrc := tmyquery_go.create(nil);
    atrc.connection := tabella.connection;
    atrc.sql.text := 'select * from atrc where id_atr = :progressivo and art_codice = :art_codice';

    ultima_atr := tmyquery_go.create(nil);
    ultima_atr.connection := tabella.connection;
    ultima_atr.sql.text := 'select max(riga) riga from atr where progressivo = :progressivo';

    esiste_att := tmyquery_go.create(nil);
    esiste_att.connection := tabella.connection;
    esiste_att.sql.text := 'select progressivo from att where cli_codice = :cli_codice and ind_codice = :ind_codice';

    esiste_att := tmyquery_go.create(nil);
    esiste_att.connection := tabella.connection;
    esiste_att.sql.text := 'select progressivo from att where cli_codice = :cli_codice and ind_codice = :ind_codice';

    tat := tmyquery_go.create(nil);
    tat.connection := tabella.connection;
    tat.sql.text := 'select * from tat where codice = :codice';
    read_tabella(tat, ditta);

    esiste_atr := tmyquery_go.create(nil);
    esiste_atr.connection := tabella.connection;
    esiste_atr.sql.text := 'select progressivo, riga from atr where documento_origine = :documento_origine ' +
      'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
    esiste_atr.parambyname('documento_origine').asstring := tabella.fieldbyname('tipo_documento').asstring;
    esiste_atr.parambyname('doc_progressivo_origine').asinteger := tabella.fieldbyname('progressivo').asinteger;
    esiste_atr.parambyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
    esiste_atr.open;
    if not esiste_atr.isempty then
    begin
      messaggio(200, 'è già stata creata la configurazione' + slinebreak +
        'di assistenza tecnica per la riga del documento' + slinebreak +
        'progressivo [' + esiste_atr.fieldbyname('progressivo').asstring + ']  ' +
        'riga [' + esiste_atr.fieldbyname('riga').asstring + ']');
    end
    else
    begin
      parametri_extra_programma_chiamato[0] := 'assistenza tecnica';
      parametri_extra_programma_chiamato[28] := tabella_righe.fieldbyname('lotto').asstring;
      parametri_extra_programma_chiamato[29] := tabella_righe.fieldbyname('art_codice').asstring;
      esegui_programma('GESMTR', '', true);
      if parametri_extra_programma_chiamato[0] <> null then
      begin
        mtr_codice := parametri_extra_programma_chiamato[0];
        parametri_extra_programma_chiamato[0] := null;
      end;

      if read_tabella(mtr, mtr_codice) then
      begin
        att.close;
        att.open;

        atr.close;
        atr.open;

        esiste_att.close;
        esiste_att.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
        esiste_att.parambyname('ind_codice').asstring := tabella.fieldbyname('indirizzo').asstring;
        esiste_att.open;

        if not esiste_att.isempty then
        begin
          att_progressivo := esiste_att.fieldbyname('progressivo').asinteger;
        end
        else
        begin
          att.append;

          att_progressivo := arc.setta_valore_generatore(tmyconnection_go(att.connection), 'ATT_PROGRESSIVO');
          att.fieldbyname('progressivo').asinteger := att_progressivo;
          att.parambyname('progressivo').asinteger := att_progressivo;
          att.fieldbyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
          att.fieldbyname('ind_codice').asstring := tabella.fieldbyname('indirizzo').asstring;
          att.fieldbyname('tlv_codice').asstring := tat.fieldbyname('tlv_codice_cliente').asstring;
          att.fieldbyname('tpa_codice').asstring := tat.fieldbyname('tpa_codice_cliente').asstring;
          att.fieldbyname('tag_codice').asstring := tat.fieldbyname('tag_codice_cliente').asstring;

          att.post;
        end;

        ultima_atr.close;
        ultima_atr.parambyname('progressivo').asinteger := att_progressivo;
        ultima_atr.open;
        if ultima_atr.isempty then
        begin
          riga := 1;
        end
        else
        begin
          riga := ultima_atr.fieldbyname('riga').asinteger + 1;
        end;

        atr.append;

        atr.fieldbyname('progressivo').asinteger := att_progressivo;
        atr.fieldbyname('riga').asinteger := riga;
        atr.parambyname('progressivo').asinteger := att_progressivo;
        atr.parambyname('riga').asinteger := atr.fieldbyname('riga').asinteger;
        atr.fieldbyname('mtr_codice').asstring := mtr_codice;
        atr.fieldbyname('numero_impianti').asinteger := trunc(tabella_righe.fieldbyname('quantita').asfloat);
        atr.fieldbyname('tns_codice').asstring := tat.fieldbyname('tns_codice_cliente').asstring;
        atr.fieldbyname('tcn_codice').asstring := tat.fieldbyname('tcn_codice_cliente').asstring;
        atr.fieldbyname('data_installazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
        if mtr.fieldbyname('mesi_garanzia').asinteger <> 0 then
        begin
          atr.fieldbyname('data_fine_garanzia').asdatetime := incmonth(tabella.fieldbyname('data_documento').asdatetime, mtr.fieldbyname('mesi_garanzia').asinteger) - 1;
        end
        else
        begin
          atr.fieldbyname('data_fine_garanzia').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
        end;
        atr.fieldbyname('data_inizio_contratto').asdatetime := atr.fieldbyname('data_installazione').asdatetime;
        read_tabella(arc.arcdit, 'tcn', 'codice', tat.fieldbyname('tcn_codice_cliente').asstring);
        atr.fieldbyname('data_fine_contratto').asdatetime :=
          incmonth(atr.fieldbyname('data_installazione').asdatetime, archivio.fieldbyname('mesi_durata').asinteger) - 1;
        atr.fieldbyname('documento_origine').asstring := tabella.fieldbyname('tipo_documento').asstring;
        atr.fieldbyname('doc_progressivo_origine').asinteger := tabella.fieldbyname('progressivo').asinteger;
        atr.fieldbyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;

        atr.post;
        atr.refresh;

        atrc.open;

        read_tabella(cnf, tabella_righe.fieldbyname('configurazione').asinteger);
        while not cnf.eof do
        begin
          atrc.append;
          atrc.fieldbyname('id_atr').asinteger := atr.fieldbyname('id').asinteger;
          atrc.fieldbyname('art_codice').asstring := cnf.fieldbyname('art_codice').asstring;
          atrc.fieldbyname('quantita').asfloat := cnf.fieldbyname('quantita').asfloat;
          atrc.fieldbyname('data_installazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
          atrc.fieldbyname('data_fine_validita').asstring := data_31_12_9999;
          atrc.post;

          cnf.next;
        end;

        parametri_extra_programma_chiamato[29] := atr.fieldbyname('riga').asinteger;
        esegui_programma('GESAST', atr.fieldbyname('progressivo').asinteger, true);
      end
      else
      begin
        messaggio(200, 'matricola non creata');
      end;
    end;

    freeandnil(mtr);
    freeandnil(att);
    freeandnil(atr);
    freeandnil(atrc);
    freeandnil(esiste_att);
    freeandnil(esiste_atr);
    freeandnil(ultima_atr);
    freeandnil(tat);
  end;
end;

procedure tgesven.crea_conto_terzi;
var
  pr: tmovlct;
begin
  if not art.eof then
  begin
    if tdo.fieldbyname('conto_terzi').asstring = 'si' then
    begin
      codice_passato := vararrayof([tipo_documento + ' ven', tabella_righe.fieldbyname('progressivo').asfloat,
        tabella_righe.fieldbyname('riga').asinteger]);

      pr := tmovlct.create(nil);
      if pr.esegui_form then
      begin
        pr.codice := codice_passato;
        pr.data_registrazione := tabella.fieldbyname('data_documento').asdatetime;
        pr.cli_codice := tabella.fieldbyname('cli_codice').asstring;
        pr.data_documento := tabella.fieldbyname('data_documento').asdatetime;
        pr.serie_documento := tabella.fieldbyname('serie_documento').asstring;
        pr.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
        pr.tipo_documento := tipo_documento;
        pr.documento_origine := tipo_documento + ' ven';
        pr.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asfloat;
        pr.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
        pr.partita_cliente := 0;

        pr.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
        pr.quantita := tabella_righe.fieldbyname('quantita').asfloat;
        pr.esiste_riga := esiste_righe;

        pr.showmodal;

        if pr.quantita_partita <> 0 then
        begin
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('quantita').asfloat := pr.quantita_partita;
          end;
          variata_quantita;

          lcr.close;
          lcr.sql.clear;
          lcr.sql.add('select lct.numero_documento, lct.serie_documento, lct.data_documento, lct.riferimento from lcr');
          lcr.sql.add('inner join lct on lct.progressivo = lcr.progressivo');
          lcr.sql.add('where lcr.documento_origine = :codice0 ');
          lcr.sql.add('and lcr.doc_progressivo_origine = :codice1 and lcr.doc_riga_origine = :codice2');
          lcr.params[0].asstring := tipo_documento + ' ven';
          lcr.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
          lcr.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
          lcr.open;

          //if not lcr.isempty then
          while not lcr.eof do
          begin
            if tabella_righe.fieldbyname('note').asstring <> '' then
            begin
              tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + slinebreak;
            end;
            tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring +
              'vostro documento ' + lcr.fieldbyname('numero_documento').asstring;
            if lcr.fieldbyname('serie_documento').asstring <> '' then
            begin
              tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + '/' +
                lcr.fieldbyname('serie_documento').asstring;
            end;
            tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + ' del ' +
              lcr.fieldbyname('data_documento').asstring;
            if lcr.fieldbyname('riferimento').asstring <> '' then
            begin
              tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 +
                'riferimento ' + lcr.fieldbyname('riferimento').asstring;
            end;

            lcr.next;
          end;

          esiste_righe := true;
          tabella_righe.post;
        end;
      end;
      pr.free;
    end;
  end;
end;

procedure tgesven.varia_conto_terzi;
var
  pr: tmovlct;
begin
  codice_passato := vararrayof([tipo_documento + ' ven', tabella_righe.fieldbyname('progressivo').asfloat,
    tabella_righe.fieldbyname('riga').asinteger, 0, 0]);

  pr := tmovlct.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := codice_passato;
    pr.art_codice := v_art_codice.text;
    pr.quantita := v_quantita.value;
    pr.showmodal;
  end;
  pr.free;
end;

procedure tgesven.v_accessoriclick(sender: tobject);
var
  pr: tsceacc;

  i, riga: integer;
  quantita: double;
  descrizione, tipo_movimento, cms_codice, cmt_codice: string;
  data_consegna: tdatetime;
  sceacc_note, sceacc_prezzo: boolean;
begin
  inherited;
  pr := tsceacc.create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := v_art_codice.text;
    sce_lista_multiselezione.clear;
    pr.lista_multiselezione := sce_lista_multiselezione;
    pr.showmodal;

    sceacc_prezzo := pr.v_prezzo.checked;
    sceacc_note := pr.v_note.checked;

    if sce_lista_multiselezione.count > 0 then
    begin
      quantita := v_quantita.value;
      tipo_movimento := v_tipo_movimento.text;
      data_consegna := v_data_consegna_righe.date;
      cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
      cmt_codice := tabella_righe.fieldbyname('tipologia').asstring;

      query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
      query_presenti_righe.close;
      query_presenti_righe.open;
      i := trunc(query_presenti_righe.fieldbyname('ultima_riga').asinteger / incremento_righe);
      riga := i * incremento_righe;

      if sceacc_note then
      begin
        riga := riga + incremento_righe;
        tabella_righe.append;

        tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
        tabella_righe.fieldbyname('riga').asinteger := riga;

        tabella_righe.fieldbyname('note').asstring := '__________ACCESSORI__________';

        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin

          read_tabella(arc.arcdit, 'art', 'codice', sce_lista_multiselezione[i]);
          descrizione := sce_lista_multiselezione[i] + ' - ' +
            archivio.fieldbyname('descrizione1').asstring + ' ' +
            archivio.fieldbyname('descrizione2').asstring + ' ' +
            archivio.fieldbyname('tum_codice').asstring + ' ';
          read_tabella(arc.arcdit, 'acc', 'art_codice;art_codice_accessorio',
            vararrayof([pr.art_codice, sce_lista_multiselezione[i]]));
          descrizione := descrizione + formatfloat(formato_display_quantita, arrotonda(archivio.fieldbyname('quantita').asfloat * quantita, 4));

          tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 +
            descrizione;
        end;

        tabella_righe.post;
      end
      else
      begin
        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin
          riga := riga + incremento_righe;

          tabella_righe.append;

          tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
          tabella_righe.fieldbyname('riga').asinteger := riga;
          tabella_righe.fieldbyname('art_codice').asstring := sce_lista_multiselezione[i];
          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          tabella_righe.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
          tabella_righe.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
          if archivio.fieldbyname('tum_codice_vendite').asstring <> '' then
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice_vendite').asstring;
          end
          else
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice').asstring;
          end;

          cifre_decimali_quantita := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
          read_tabella(arc.arcdit, 'acc', 'art_codice;art_codice_accessorio',
            vararrayof([pr.art_codice, tabella_righe.fieldbyname('art_codice').asstring]));
          tabella_righe.fieldbyname('quantita').asfloat := arrotonda
            (archivio.fieldbyname('quantita').asfloat * quantita, cifre_decimali_quantita);

          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          if archivio.fieldbyname('tum_codice_vendite').asstring <> '' then
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice_vendite').asstring;
          end
          else
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice').asstring;
          end;
          if tipo_documento <> 'ddt fornitori' then
          begin
            if sceacc_prezzo then
            begin
              cerca_prezzo_documento('', tabella_righe);

              tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
              tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
              tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
              tabella_righe.fieldbyname('importo_sconto').asfloat := importo_sconto;
            end
            else
            begin
              tabella_righe.fieldbyname('prezzo').asfloat := 0;
              tabella_righe.fieldbyname('tsm_codice').asstring := '';
              tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
              tabella_righe.fieldbyname('importo_sconto').asfloat := 0;
            end;
          end;

          tabella_righe.fieldbyname('tipo_movimento').asstring := tipo_movimento;
          tabella_righe.fieldbyname('data_consegna').asdatetime := data_consegna;
          if data_consegna = 0 then
          begin
            tabella_righe.fieldbyname('data_consegna').asstring := '';
          end;
          tabella_righe.fieldbyname('cms_codice').asstring := cms_codice;
          tabella_righe.fieldbyname('tipologia').asstring := cmt_codice;

          art.close;
          art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
          art.open;

          assegna_tiv_codice_righe;
          assegna_gen_codice;
          calcola_importo;
          assegna_provvigioni;

          tabella_righe.post;
        end;
      end;
    end;
  end;
  pr.free;
end;

procedure tgesven.v_accontoclick(sender: tobject);
var
  i: integer;
  pr: tvisdocev;
  ovt, ovr, ovr_art: tmyquery_go;
begin
  inherited;

  if tabella_righe.fieldbyname('documento_origine').asstring <> '' then
  begin
    messaggio(200, 'non è consentito utilizzare una riga di evasione documento come acconto');
  end
  else
  begin
    pr := tvisdocev.create(nil);
    try
      if pr.esegui_form then
      begin
        pr.tipo_modulo := 'vendite';
        pr.tipo_documento_evasione := 'ordine';
        pr.tipo_documento := 'ordine';
        pr.cli_frn_codice := v_cli_codice.text;
        pr.showmodal;

        if pr.progressivo <> 0 then
        begin
          ovt := tmyquery_go.create(nil);
          ovr := tmyquery_go.create(nil);
          ovr_art := tmyquery_go.create(nil);

          ovt.connection := arc.arcdit;
          ovr.connection := arc.arcdit;
          ovr_art.connection := arc.arcdit;

          ovt.sql.text := 'select max(x2x2.riga) riga, ' +
            '(select max(x3x3.rata) from x3x3 where x3x3.progressivo = x2x2.progressivo) ovp_rata ' +
            'from x2x2 where x2x2.progressivo = :progressivo';
          ovr.sql.text := 'select * from x2x2 where progressivo = :progressivo and riga = :riga';
          ovr_art.sql.text := 'select id from x2x2 where progressivo = :progressivo and art_codice = :art_codice';

          if pr.tipo_documento_selezionato = 'ordine' then
          begin
            ovt.sql.text := stringreplace(ovt.sql.text, 'x2x2', 'ovr', [rfreplaceall]);
            ovt.sql.text := stringreplace(ovt.sql.text, 'x3x3', 'ovp', [rfreplaceall]);

            ovr.sql.text := stringreplace(ovr.sql.text, 'x2x2', 'ovr', [rfreplaceall]);
            ovr_art.sql.text := stringreplace(ovr_art.sql.text, 'x2x2', 'ovr', [rfreplaceall]);
          end
          else
          begin
            ovt.sql.text := stringreplace(ovt.sql.text, 'x2x2', 'pvr', [rfreplaceall]);
            ovt.sql.text := stringreplace(ovt.sql.text, 'x3x3', 'pvp', [rfreplaceall]);

            ovr.sql.text := stringreplace(ovr.sql.text, 'x2x2', 'pvr', [rfreplaceall]);
            ovr_art.sql.text := stringreplace(ovr_art.sql.text, 'x2x2', 'pvr', [rfreplaceall]);
          end;

          ovr_art.parambyname('progressivo').asinteger := pr.progressivo;
          ovr_art.parambyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
          ovr_art.open;
          if ovr_art.isempty or (not ovr_art.isempty and (
            messaggio(304, 'nel documento è già presente una riga con il codice articolo utilizzato per l''acconto' + #13 +
            'conferma per inserirlo comunque') = 1)) then
          begin
            ovt.parambyname('progressivo').asinteger := pr.progressivo;
            ovt.open;

            if ovt.fieldbyname('ovp_rata').asinteger <> 0 then
            begin
              messaggio(100, 'è presente un pagamento personalizzato, verificare l''importo');
            end;

            ovr.open;

            ovr.append;
            for i := 0 to ovr.fields.count - 1 do
            begin
              if lowercase(ovr.fields[i].fieldname) <> 'id' then
              begin
                try
                  ovr.fields[i].value := tabella_righe.fieldbyname(ovr.fields[i].fieldname).value;
                except
                end;
              end;
            end;
            ovr.fieldbyname('progressivo').asinteger := pr.progressivo;
            ovr.fieldbyname('riga').asinteger := ovt.fieldbyname('riga').asinteger + 10;
            ovr.fieldbyname('sequenza').asinteger := ovt.fieldbyname('riga').asinteger + 10;

            ovr.fieldbyname('quantita').asfloat := 0;
            ovr.fieldbyname('tum_quantita_base').asfloat := 0;
            ovr.fieldbyname('prezzo').asfloat := 0;

            ovr.fieldbyname('importo').asfloat := ovr.fieldbyname('importo').asfloat * -1;
            ovr.fieldbyname('importo_euro').asfloat := ovr.fieldbyname('importo_euro').asfloat * -1;
            ovr.fieldbyname('evadere_note').asstring := 'si';
            ovr.fieldbyname('note_art').asstring := 'si';
            ovr.fieldbyname('quantita_approntata').asfloat := 0;
            ovr.fieldbyname('tum_quantita_approntata_base').asfloat := 0;
            if arc.dit.fieldbyname('commesse_patrimoniali').asstring = 'no' then
            begin
              if read_tabella(arc.arcdit, 'gen', 'codice', tabella_righe.fieldbyname('gen_codice').asstring) then
              begin
                if read_tabella(arc.arcdit, 'tpc', 'codice_01;codice_02',
                  vararrayof([archivio.fieldbyname('tpc_codice_01').asstring, ''])) then
                begin
                  if archivio.fieldbyname('tipo').asstring = 'patrimoniale' then
                  begin
                    ovr.fieldbyname('cms_codice').asstring := '';
                    ovr.fieldbyname('tipologia').asstring := '';
                  end;
                end;
              end;
            end;

            if ovr.fieldbyname('note').asstring <> '' then
            begin
              ovr.fieldbyname('note').asstring := ovr.fieldbyname('note').asstring + #13;
            end;
            ovr.fieldbyname('note').asstring := ovr.fieldbyname('note').asstring +
              'DEDOTTA FATTURA DI ACCONTO n. ' + tabella.fieldbyname('numero_documento').asstring;
            if tabella.fieldbyname('serie_documento').asstring <> '' then
            begin
              ovr.fieldbyname('note').asstring := ovr.fieldbyname('note').asstring + '/' + tabella.fieldbyname('serie_documento').asstring;
            end;
            ovr.fieldbyname('note').asstring := ovr.fieldbyname('note').asstring + ' del ' +
              formatdatetime('dd/mm/yyyy', tabella.fieldbyname('data_documento').asdatetime);
            ovr.fieldbyname('cambio_acconto').asfloat := tabella.fieldbyname('cambio').asfloat;

            ovr.post;

            if pr.tipo_documento_selezionato = 'ordine' then
            begin
              totven.movven_testata(tmyconnection_go(ovr.connection), 'ordine', ovr.fieldbyname('progressivo').asinteger);
            end
            else
            begin
              totven.movven_testata(tmyconnection_go(ovr.connection), 'preventivo', ovr.fieldbyname('progressivo').asinteger);
            end;

            parametri_extra_programma_chiamato[29] := ovr.fieldbyname('riga').asinteger;
            if pr.tipo_documento_selezionato = 'ordine' then
            begin
              esegui_programma('GESORDV', ovr.fieldbyname('progressivo').asinteger, true);
            end
            else
            begin
              esegui_programma('GESPREV', ovr.fieldbyname('progressivo').asinteger, true);
            end;

            if tabella_edit(tabella_righe) then
            begin
              if pr.tipo_documento_selezionato = 'ordine' then
              begin
                tabella_righe.fieldbyname('documento_origine').asstring := 'ordine ven';
              end
              else
              begin
                tabella_righe.fieldbyname('documento_origine').asstring := 'preventivo ven';
              end;
              tabella_righe.fieldbyname('doc_progressivo_origine').asinteger := ovr.fieldbyname('progressivo').asinteger;
              tabella_righe.fieldbyname('doc_riga_origine').asinteger := ovr.fieldbyname('riga').asinteger;
              tabella_righe.post;
            end;
          end;

          ovr_art.free;
          ovr.free;
          ovt.free;
        end;
      end;
    finally
      pr.free;
    end;
  end;
end;

procedure tgesven.v_codice_abikeydown(sender: tobject;
  var
  key: word;
  shift:
  tshiftstate);
var
  pr: tvisbcf;
begin
  inherited;
  if (key = vk_f11) and (shift = [ssctrl]) then
  begin
    pr := tvisbcf.create(nil);
    if pr.esegui_form then
    begin
      if tipo_documento = 'ddt fornitori' then
      begin
        pr.cfg_tipo := 'F';
      end
      else
      begin
        pr.cfg_tipo := 'C';
      end;
      pr.cfg_codice := v_cli_codice.text;
      pr.showmodal;
    end;
    if pr.riferimento <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_abi').asstring := pr.codice_abi;
        tabella.fieldbyname('codice_cab').asstring := pr.codice_cab;
        tabella.fieldbyname('conto_corrente').asstring := pr.conto_corrente;
        tabella.fieldbyname('cin').asstring := pr.cin;
        tabella.fieldbyname('iban').asstring := pr.iban;
        tabella.fieldbyname('bic').asstring := pr.bic;
        codice_abi_controllo(false);
        codice_cab_controllo(false);
      end;
    end;
    pr.free;
  end;
end;

procedure tgesven.v_art_codicekeydown(sender: tobject;
  var
  key: word;
  shift:
  tshiftstate);
var
  pr: tanaequ;
  pr1: tultprz;
  pr_vislct: tvislct;
  visartctc: tvisartctc;
  visartcli: tvisartcli;
  pr2: tvisartven;
  pr3: tvisartfrn;

  art_codice: string;
  codice_archivio: variant;

  arcven: tarcven;
  arfacq: tarfacq;
begin
  inherited;
  if (key = vk_f9) and (shift = []) then
  begin
    if tipo_documento = 'ddt fornitore' then
    begin
      arfacq := tarfacq.create(nil);
      arfacq.frn_codice := v_cli_codice.text;
      arfacq.codice_articolo_fornitore := v_art_codice.text;
      arfacq.showmodal;

      if arfacq.art_codice <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := arfacq.art_codice;
        end;
      end;
      arfacq.free;
    end
    else
    begin
      arcven := tarcven.create(nil);
      arcven.cli_codice := v_cli_codice.text;
      arcven.codice_articolo_cliente := v_art_codice.text;
      arcven.showmodal;

      if arcven.art_codice <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := arcven.art_codice;
        end;
      end;
      arcven.free;
    end;
  end;

  if (key = vk_f8) and (shift = [ssctrl]) and
    (v_art_codice.text <> '') then
  begin
    pr := tanaequ.create(nil);
    if pr.esegui_form then
    begin
      pr.art_codice := v_art_codice.text;
      if tabella_righe.fieldbyname('tma_codice').asstring <> '' then
      begin
        pr.tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
      end
      else
      begin
        pr.tma_codice := v_tma_codice.text;
      end;
      pr.showmodal;
      if pr.art_codice_assegnato <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := pr.art_codice_assegnato;
        end;
        selectnext(v_art_codice, true, true);
      end;
    end;
    pr.free;
  end;

  if (key = vk_f8) and (shift = [ssalt]) and (tipo_documento = 'ddt fornitori') then
  begin
    nca.art_codice := v_art_codice.text;
    nca.tnc_codice := '';

    if esiste_righe then
    begin
      nca.modulo_origine := 'ven';
      nca.documento_origine := tipo_documento;
      nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
      nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
    end
    else
    begin
      nca.modulo_origine := '';
      nca.documento_origine := '';
      nca.doc_progressivo_origine := 0;
      nca.doc_riga_origine := 0;
    end;
    nca.assegna_nct;

    if nca.progressivo <> 0 then
    begin
      progressivo_nca := nca.progressivo;
      tac_codice_nca := nca.tac_codice;
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('art_codice').asstring := nca.art_codice;
        tabella_righe.fieldbyname('quantita').asfloat := nca.quantita_non_conforme;
      end;
    end
    else
    begin
      progressivo_nca := 0;
      tac_codice_nca := '';
    end;
  end;

  if (key = vk_f9) and (shift = [ssctrl]) then
  begin
    pr1 := tultprz.create(nil);
    if pr1.esegui_form then
    begin
      pr1.tipo_modulo := 'articoli';
      pr1.programma_chiamante := '';
      pr1.cfg_codice := '';
      pr1.art_codice := v_art_codice.text;
      pr1.progressivo := 0;
      pr1.modificabile := false;
      pr1.showmodal;
    end;
    pr1.free;
  end;

  if (key = vk_f9) and (shift = [ssshift]) then
  begin
    pr_vislct := tvislct.create(nil);
    if pr_vislct.esegui_form then
    begin
      pr_vislct.cli_codice := v_cli_codice.text;
      pr_vislct.art_codice := v_art_codice.text;
      pr_vislct.showmodal;

      if pr_vislct.art_codice <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := pr_vislct.art_codice;
        end;
      end;

      if (pr_vislct.quantita <> 0) and (pr_vislct.quantita <> v_quantita.value) then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('quantita').asfloat := pr_vislct.quantita;
        end;
      end;
    end;
    pr_vislct.free;
  end;

  if (key = vk_f11) and (shift = [ssctrl]) then
  begin
    pr1 := tultprz.create(nil);
    if pr1.esegui_form then
    begin
      pr1.tipo_modulo := 'vendite';
      pr1.programma_chiamante := programma;
      pr1.cfg_codice := v_cli_codice.text;
      pr1.art_codice := v_art_codice.text;
      pr1.tipo_documento := tipo_documento;
      pr1.progressivo := v_progressivo.value;
      pr1.riga := tabella_righe.fieldbyname('riga').asinteger;
      pr1.modificabile := true;
      if (tipo_documento = 'ddt') or (tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or
        (tipo_documento = 'fattura immediata') or (tipo_documento = 'fattura accompagnatoria') or
        (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') or
        (tipo_documento = 'nota credito') then
      begin
        if tabella.fieldbyname('situazione').asstring = 'consolidato' then
        begin
          pr1.modificabile := false;
        end;
        pr1.showmodal;
        if pr1.modificato then
        begin
          try
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('prezzo').asfloat := pr1.prezzo;
              tabella_righe.fieldbyname('tsm_codice').asstring := pr1.tsm_codice;
              tabella_righe.fieldbyname('tsm_codice_art').asstring := pr1.tsm_codice_art;
            end;
            calcola_importo;
          except
          end;
        end;
      end;
    end;
    pr1.free;
  end;

  if (key = vk_f4) and (shift = [ssshift]) then
  begin
    if tipo_documento <> 'ddt fornitore' then
    begin
      visartctc := tvisartctc.create(nil);
      visartctc.cli_codice := tabella.fieldbyname('cli_codice').asstring;
      visartctc.showmodal;
      if visartctc.art_codice <> '' then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := visartctc.art_codice;
        end;
        art_codice_controllo(false);
      end;
      visartctc.free;
    end;
  end;

  if (key = vk_f7) and (shift = [ssctrl]) then
  begin
    assegna_articolo_potenziale;
  end;

  if (key = vk_f4) and (shift = [ssalt]) then
  begin
    visartcli := tvisartcli.create(nil);
    visartcli.tlv_codice := tabella.fieldbyname('tlv_codice').asstring;
    visartcli.cli_codice := tabella.fieldbyname('cli_codice').asstring;
    visartcli.art_codice_passato := tabella_righe.fieldbyname('art_codice').asstring;
    visartcli.data_documento := tabella.fieldbyname('data_documento').asdatetime;
    visartcli.showmodal;
    if visartcli.art_codice <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('art_codice').asstring := visartcli.art_codice;
      end;
    end;
    visartcli.free;
    key := 0;
    shift := [];
  end;

  if (key = vk_f2) and (shift = [ssctrl]) then
  begin
    codice_archivio := vararrayof(['', '']);
    if tipo_documento = 'ddt fornitori' then
    begin
      esegui_visarc(arc.arcdit, 'ARF', 'ARFFRN', codice_archivio, tabella.fieldbyname('cli_codice').asstring, '', '', '', '', '');
    end
    else
    begin
      esegui_visarc(arc.arcdit, 'ARC', 'ARCLCLI', codice_archivio, tabella.fieldbyname('cli_codice').asstring, '', '', '', '', '');
    end;
    if codice_archivio[1] <> '' then
    begin
      if tabella_edit(tabella_righe) then
      begin
        tabella_righe.fieldbyname('art_codice').asstring := codice_archivio[1];
      end;
    end;
    key := 0;
    shift := [];
  end;

  if ((char(key) = 'A') or (char(key) = 'a')) and (shift = [ssctrl]) then
  begin
    pr2 := tvisartven.create(nil);
    try
      if pr2.esegui_form then
      begin
        pr2.showmodal;
        if pr2.art_codice <> '' then
        begin
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('art_codice').asstring := pr2.art_codice;
          end;
          selectnext(v_art_codice, true, true);
        end;
      end;
    finally
      pr2.free;
    end;
  end;

  if ((char(key) = 'F') or (char(key) = 'f')) and (shift = [ssctrl]) and (v_art_codice.text <> '') and
    (tipo_documento <> 'ddt fornitori') then
  begin
    pr3 := tvisartfrn.create(nil);
    try
      if pr3.esegui_form then
      begin
        pr3.codice_articolo_fornitore := v_art_codice.text;
        pr3.tipo_prezzo := tipo_prezzo;
        pr3.tabella := tabella;
        pr3.tabella_righe := tabella_righe;
        pr3.showmodal;
        if pr3.art_codice <> '' then
        begin
          if tabella_edit(tabella_righe) then
          begin
            tabella_righe.fieldbyname('art_codice').asstring := pr3.art_codice;
          end;
          selectnext(v_art_codice, true, true);
        end;
      end;
    finally
      pr3.free;
    end;
  end;
end;

procedure TGESVEN.v_assappclClick(Sender: TObject);
begin
  if messaggio(304, 'conferma per approntamento automatico') = 1 then
  begin
    if parte_attiva = 'griglia_righe' then
    begin
      if (tabella_righe.fieldbyname('art_codice').asstring <> '') and
        (tabella_righe.fieldbyname('tma_codice').asstring <> '') then
      begin
        read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);
        if messaggio(300, 'conferma approntamento riga selezionata') = 1 then
        begin
          approntamento_riga;
        end;
      end;
    end
    else
    begin
      if tabella.state <> dsbrowse then
      begin
        messaggio(200, 'il documento non deve essere in gestione');
      end
      else if (tabella.fieldbyname('situazione').asstring = 'inserito') or
        (tabella.fieldbyname('situazione').asstring = 'evaso parziale') then
      begin
        if messaggio(300, 'conferma approntamento di tutte le riga dell''ordine') = 1 then
        begin
          tabella_righe.first;
          while not tabella_righe.eof do
          begin
            approntamento_riga;

            tabella_righe.next;
          end;
          tabella_righe.first;
        end;
      end;
    end;
  end
  else
  begin
    parametri_extra_programma_chiamato[0] := tabella.fieldbyname('cli_codice').asstring;
    parametri_extra_programma_chiamato[1] := tabella.fieldbyname('numero_documento').asfloat;
    esegui_programma('ASSAPPCL', '', true);
  end;
end;

procedure TGESVEN.v_descrizione2_rigaExit(Sender: TObject);
begin
  inherited;
  if aggiorna_consolidato then
  begin
    aggiorna_consolidato := false;
    if v_griglia_righe.canfocus then
    begin
      v_griglia_righe.setfocus;
    end;
  end;
end;

// fattura differita

procedure tgesven.assegna_righe(accoda: word);
begin
  if tipo_documento = 'fattura differita' then
  begin
    inserimento_fattura_differita := true;
  end
  else
  begin
    inserimento_fattura_differita := false;
  end;

  inherited;
end;
// fine fattura differita

procedure tgesven.v_distinta_baseclick(sender: tobject);
var
  pr: tscedsb;

  i, riga: word;
  quantita: double;
  tipo_movimento, cms_codice, cmt_codice: string;
  data_consegna: tdatetime;
begin
  inherited;
  pr := tscedsb.create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := v_art_codice.text;
    pr.data_documento := v_data_documento.date;
    sce_lista_multiselezione.clear;
    sce_lista_multiselezione_quantita.clear;
    pr.lista_multiselezione := sce_lista_multiselezione;
    pr.lista_multiselezione_quantita := sce_lista_multiselezione_quantita;
    pr.showmodal;

    if sce_lista_multiselezione.count > 0 then
    begin
      quantita := v_quantita.value;
      tipo_movimento := v_tipo_movimento.text;
      data_consegna := v_data_consegna_righe.date;
      cms_codice := tabella_righe.fieldbyname('cms_codice').asstring;
      cmt_codice := tabella_righe.fieldbyname('tipologia').asstring;

      query_presenti_righe.close;
      query_presenti_righe.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
      query_presenti_righe.open;
      i := trunc(query_presenti_righe.fieldbyname('ultima_riga').asinteger / incremento_righe);
      riga := i * incremento_righe;

      if pr.modalita_inserimento = 0 then
      begin
        riga := riga + incremento_righe;

        tabella_righe.append;

        tabella_righe.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
        tabella_righe.fieldbyname('riga').asinteger := riga;

        tabella_righe.fieldbyname('note').asstring := '__________COMPONENTI__________';

        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin
          read_tabella(arc.arcdit, 'art', 'codice', sce_lista_multiselezione[i]);
          tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 +
            sce_lista_multiselezione[i] + ' - ' +
            archivio.fieldbyname('descrizione1').asstring + ' ' +
            archivio.fieldbyname('descrizione2').asstring + ' ' +
            archivio.fieldbyname('tum_codice').asstring + ' ' +
            formatfloat(formato_display_quantita, arrotonda(quantita * strtofloat(sce_lista_multiselezione_quantita[i]), 4));
        end;

        tabella_righe.post;
      end
      else
      begin
        for i := 0 to sce_lista_multiselezione.count - 1 do
        begin
          riga := riga + incremento_righe;

          tabella_righe.append;

          tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
          tabella_righe.fieldbyname('riga').asinteger := riga;
          tabella_righe.fieldbyname('art_codice').asstring := sce_lista_multiselezione[i];
          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          tabella_righe.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
          tabella_righe.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
          if archivio.fieldbyname('tum_codice_vendite').asstring <> '' then
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice_vendite').asstring;
          end
          else
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice').asstring;
          end;

          cifre_decimali_quantita := decimali_quantita_art(tabella_righe.fieldbyname('art_codice').asstring);
          tabella_righe.fieldbyname('quantita').asfloat := arrotonda
            (strtofloat(sce_lista_multiselezione_quantita[i]) * quantita, cifre_decimali_quantita);

          read_tabella(arc.arcdit, 'art', 'codice', tabella_righe.fieldbyname('art_codice').asstring);
          if tipo_documento <> 'ddt fornitori' then
          begin
            cerca_prezzo_documento('', tabella_righe);

            tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
            tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
            tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
            tabella_righe.fieldbyname('importo_sconto').asfloat := importo_sconto;

            assegna_prezzo_netto(decimali_max_prezzo, tag.fieldbyname('prezzo_netto_sconti').asstring, tabella_righe);
          end;

          tabella_righe.fieldbyname('tipo_movimento').asstring := tipo_movimento;
          tabella_righe.fieldbyname('data_consegna').asdatetime := data_consegna;
          if data_consegna = 0 then
          begin
            tabella_righe.fieldbyname('data_consegna').asstring := '';
          end;
          tabella_righe.fieldbyname('cms_codice').asstring := cms_codice;
          tabella_righe.fieldbyname('tipologia').asstring := cmt_codice;

          art.close;
          art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
          art.open;

          assegna_tiv_codice_righe;
          assegna_gen_codice;
          calcola_importo;
          assegna_provvigioni;

          tabella_righe.post;
        end;
      end;
    end;
  end;
  pr.free;
end;

procedure tgesven.v_descrizione1exit(sender: tobject);
begin
  inherited;
  descrizione1_controllo;
end;

procedure TGESVEN.v_descrizione1_rigaExit(Sender: TObject);
begin
  inherited;
  if aggiorna_consolidato then
  begin
    aggiorna_consolidato := false;
    if v_griglia_righe.canfocus then
    begin
      v_griglia_righe.setfocus;
    end;
  end;
end;

procedure tgesven.descrizione1_controllo;
begin
end;

procedure tgesven.v_varia_tsm_codiceclick(sender: tobject);
var
  pr: tasstsm;

  ignora: boolean;
  ts3_codice, tsm_codice: string;
begin
  inherited;
  pr := tasstsm.create(nil);
  if pr.esegui_form then
  begin
    pr.showmodal;
    ts3_codice := pr.ts3_codice;
    tsm_codice := pr.tsm_codice;
    ignora := pr.ignora;
  end;
  pr.free;

  if not ignora then
  begin
    varia_tsm_codice(1, ts3_codice, tsm_codice);
    abilita_codice;
  end;
end;

procedure tgesven.v_varia_tsm_codice_artclick(sender: tobject);
var
  pr: tasstsm;

  ignora: boolean;
  ts3_codice, tsm_codice: string;
begin
  inherited;
  pr := tasstsm.create(nil);
  if pr.esegui_form then
  begin
    pr.showmodal;

    ts3_codice := pr.ts3_codice;
    tsm_codice := pr.tsm_codice;
    ignora := pr.ignora;
  end;
  pr.free;

  if not ignora then
  begin
    varia_tsm_codice(2, ts3_codice, tsm_codice);
    abilita_codice;
  end;
end;

procedure tgesven.varia_tsm_codice(sconto: word;
  ts3_codice, tsm_codice: string);
var
  art_tsm: tmyquery_go;
begin
  art_tsm := tmyquery_go.create(nil);
  art_tsm.connection := arc.arcdit;
  art_tsm.sql.text := 'select ts3_codice from art where codice = :codice';

  tabella_righe.disablecontrols;
  tabella_righe.first;
  while not tabella_righe.eof do
  begin
    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      art_tsm.close;
      art_tsm.parambyname('codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
      art_tsm.open;
      if not art_tsm.isempty and
        ((art_tsm.fieldbyname('ts3_codice').asstring = ts3_codice) or (ts3_codice = '')) then
      begin
        tabella_righe.edit;
        if sconto = 1 then
        begin
          tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
        end
        else
        begin
          tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice;
        end;
        calcola_importo;
        assegna_provvigioni;
        tabella_righe.post;
      end;
    end;

    tabella_righe.next;
  end;
  tabella_righe.first;
  tabella_righe.enablecontrols;
  art_tsm.free;
end;

procedure tgesven.v_viaexit(sender: tobject);
begin
  inherited;
  via_controllo;
end;

procedure tgesven.via_controllo;
begin
end;

procedure tgesven.v_cittaexit(sender: tobject);
begin
  inherited;
  citta_controllo;
end;

procedure tgesven.citta_controllo;
begin
end;

procedure tgesven.assegna_gestioni;
begin
  if trim(v_art_codice.text) <> '' then
  begin
    if (gestione_descrizione1 = 'no') then
    begin
      v_descrizione1_riga.tabstop := false;
    end
    else
    begin
      v_descrizione1_riga.tabstop := true;
    end;

    if gestione_descrizione2 = 'no' then
    begin
      v_descrizione2_riga.tabstop := false;
    end
    else
    begin
      v_descrizione2_riga.tabstop := true;
    end;

    if gestione_numero_colli = 'no' then
    begin
      v_numero_colli_riga.tabstop := false;
    end
    else
    begin
      v_numero_colli_riga.tabstop := true;
    end;

    if gestione_numero_confezioni = 'no' then
    begin
      v_numero_confezioni.tabstop := false;
    end
    else
    begin
      v_numero_confezioni.tabstop := true;
    end;

    if gestione_tum_codice = 'no' then
    begin
      v_tum_codice.tabstop := false;
    end
    else
    begin
      v_tum_codice.tabstop := true;
    end;

    if gestione_quantita = 'no' then
    begin
      v_quantita.tabstop := false;
    end
    else
    begin
      v_quantita.tabstop := true;
    end;

    if gestione_prezzo = 'no' then
    begin
      v_prezzo.tabstop := false;
    end
    else
    begin
      v_prezzo.tabstop := true;
    end;

    if gestione_sconto_cliente = 'no' then
    begin
      v_tsm_codice_righe.tabstop := false;
      v_tsm_codice_art.tabstop := false;
      v_importo_sconto_righe.tabstop := false;
    end
    else
    begin
      v_tsm_codice_righe.tabstop := true;
      v_tsm_codice_art.tabstop := true;
      v_importo_sconto_righe.tabstop := true;
    end;

    if gestione_tipo_movimento = 'no' then
    begin
      v_tipo_movimento.tabstop := false;
    end
    else
    begin
      v_tipo_movimento.tabstop := true;
    end;

    if gestione_importo = 'no' then
    begin
      v_importo.tabstop := false;
    end
    else
    begin
      v_importo.tabstop := true;
    end;

    if gestione_data_consegna = 'no' then
    begin
      v_data_consegna_righe.tabstop := false;
    end
    else
    begin
      v_data_consegna_righe.tabstop := true;
    end;
  end
  else
  begin
    v_descrizione1_riga.tabstop := true;
    v_descrizione2_riga.tabstop := true;
    v_numero_colli_riga.tabstop := false;
    v_numero_confezioni.tabstop := false;
    v_quantita.tabstop := false;
    v_tsm_codice_righe.tabstop := false;
    v_tsm_codice_art.tabstop := false;
    v_prezzo.tabstop := false;
    v_tipo_movimento.tabstop := false;
    v_importo.tabstop := false;
    v_data_consegna_righe.tabstop := false;
  end;
end;

procedure tgesven.v_addebito_spese_fatturaclick(sender: tobject);
begin
  inherited;
  abilita_spese_manuali;
end;

procedure tgesven.abilita_spese_manuali;
begin
  if (v_addebito_spese_fattura.checked) then // and (tipo_documento <> 'fattura differita') then
  begin
    // v_spese_manuali.enabled := true;
    v_spese_manuali_trasporto.enabled := true;
    v_spese_manuali_bollo.enabled := true;
    v_spese_manuali_incasso.enabled := true;
    v_importo_spese_extra.enabled := true;
    v_importo_spese_extra.color := clwindow;
  end
  else
  begin
    // v_spese_manuali.enabled := false;
    v_spese_manuali_trasporto.enabled := false;
    v_spese_manuali_bollo.enabled := false;
    v_spese_manuali_incasso.enabled := false;
    v_importo_spese_extra.enabled := false;
    v_importo_spese_extra.color := clbtnface;
  end;
end;

procedure tgesven.v_addebito_spese_fatturaexit(sender: tobject);
begin
  inherited;
  assegna_valore_spese;
end;

procedure tgesven.assegna_valore_spese;
begin
  if not v_addebito_spese_fattura.checked then
  begin
    if tabella.fieldbyname('spese_manuali_trasporto').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('spese_manuali_trasporto').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('spese_manuali_bollo').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('spese_manuali_bollo').asstring := 'no';
      end;
    end;
    if tabella.fieldbyname('spese_manuali_incasso').asstring <> 'no' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('spese_manuali_incasso').asstring := 'no';
      end;
    end;

    if tabella.fieldbyname('importo_spese_extra').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('importo_spese_extra').asfloat := 0;
      end;
    end;

    assegna_valore_spese_automatiche;
  end;
end;

procedure tgesven.assegna_valore_spese_automatiche;
begin
  if controllo then
  begin
    if not v_spese_manuali_bollo.checked then
    begin
      if tabella.fieldbyname('importo_bollo').asfloat <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('importo_bollo').asfloat := 0;
        end;
      end;
    end;

    if not v_spese_manuali_trasporto.checked then
    begin
      if tabella.fieldbyname('importo_spese_trasporto').asfloat <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('importo_spese_trasporto').asfloat := 0;
        end;
      end;
    end;

    if not v_spese_manuali_incasso.checked then
    begin
      if tabella.fieldbyname('importo_spese_incasso').asfloat <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('importo_spese_incasso').asfloat := 0;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_spese_manualiclick(sender: tobject);
begin
  inherited;
  abilita_spese;
end;

procedure tgesven.abilita_spese;
begin
  if v_spese_manuali_trasporto.checked then
  begin
    v_importo_spese_trasporto.enabled := true;
    v_importo_spese_trasporto.color := clwindow;
  end
  else
  begin
    v_importo_spese_trasporto.enabled := false;
    v_importo_spese_trasporto.color := clbtnface;
  end;
  if v_spese_manuali_bollo.checked then
  begin
    v_importo_bollo.enabled := true;
    v_importo_bollo.color := clwindow;
  end
  else
  begin
    v_importo_bollo.enabled := false;
    v_importo_bollo.color := clbtnface;
  end;
  if v_spese_manuali_incasso.checked then
  begin
    v_importo_spese_incasso.enabled := true;
    v_importo_spese_incasso.color := clwindow;
  end
  else
  begin
    v_importo_spese_incasso.enabled := false;
    v_importo_spese_incasso.color := clbtnface;
  end;
end;

procedure tgesven.v_spese_manualiexit(sender: tobject);
begin
  inherited;
  assegna_valore_spese_manuali;
end;

procedure tgesven.v_spese_manuali_bolloclick(sender: tobject);
begin
  inherited;
  abilita_spese;
end;

procedure tgesven.v_spese_manuali_bolloexit(sender: tobject);
begin
  inherited;
  assegna_valore_spese_manuali;
end;

procedure tgesven.v_spese_manuali_incassoclick(sender: tobject);
begin
  inherited;
  abilita_spese;
end;

procedure tgesven.v_spese_manuali_incassoexit(sender: tobject);
begin
  inherited;
  assegna_valore_spese_manuali;
end;

procedure tgesven.v_spese_manuali_trasportoclick(sender: tobject);
begin
  inherited;
  abilita_spese;
end;

procedure tgesven.v_spese_manuali_trasportoexit(sender: tobject);
begin
  inherited;
  assegna_valore_spese_manuali;
end;

procedure tgesven.assegna_valore_spese_manuali;
begin
  // if not (v_spese_manuali.checked or v_addebito_spese_fattura.checked) then
  if not v_addebito_spese_fattura.checked then
  begin
    assegna_valore_spese_automatiche;
  end;
end;

procedure tgesven.v_fattura_pro_formaexit(sender: tobject);
begin
  inherited;
  assegna_valore_fattura_pro_forma;
end;

procedure TGESVEN.v_fatture_collegateClick(Sender: TObject);
var
  pr: tgesdocrdnc;
begin
  inherited;

  pr := tgesdocrdnc.create(nil);
  pr.codice := vararrayof([tabella.fieldbyname('id').asstring, '', 0, 0]);
  pr.showmodal;
  freeandnil(pr);
end;

procedure tgesven.abilita_pro_forma;
begin
end;

procedure tgesven.abilita_fattura_pro_forma;
begin
end;

procedure tgesven.assegna_valore_fattura_pro_forma;
begin
end;

procedure tgesven.v_situazionechange(sender: tobject);
begin
  inherited;
  // abilita_pro_forma;
end;

procedure TGESVEN.v_situazione_accontoClick(Sender: TObject);
var
  pat: tmyquery_go;
begin
  inherited;

  pat := tmyquery_go.create(nil);
  pat.connection := arc.arcdit;
  pat.sql.text := 'select progressivo from pat where progressivo_ordine_acconto = :progressivo';
  if read_tabella(pat, tabella.fieldbyname('progressivo').asinteger) then
  begin
    esegui_programma('GESPAR', pat.fieldbyname('progressivo').asinteger, true);
  end
  else
  begin
    messaggio(100, 'nessun acconto collegato all''ordine');
  end;
  freeandnil(pat);
end;

procedure tgesven.v_fattura_professionisticlick(sender: tobject);
begin
  inherited;
  abilita_dati_fattura_professionisti;
end;

procedure tgesven.abilita_dati_fattura_professionisti;
begin
  if v_fattura_professionisti.checked then
  begin
    v_ritenuta_manuale.enabled := true;

    v_groupbox_professionisti.enabled := true;
    colore_control(v_groupbox_professionisti, true);
  end
  else
  begin
    v_ritenuta_manuale.enabled := false;

    colore_control(v_groupbox_professionisti, false);
    v_groupbox_professionisti.enabled := false;
  end;
end;

procedure tgesven.v_fattura_professionistiexit(sender: tobject);
begin
  inherited;
  assegna_valore_fattura_professionisti;
end;

procedure tgesven.assegna_valore_fattura_professionisti;
begin
  if controllo then
  begin
    if not v_fattura_professionisti.checked then
    begin
      if tabella.fieldbyname('ritenuta_manuale').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('ritenuta_manuale').asstring := 'no';
        end;
      end;

      if tabella.fieldbyname('soggetto_addebito_enasarco').asstring <> 'no' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('soggetto_addebito_enasarco').asstring := 'no';
        end;
      end;

      if tabella.fieldbyname('percentuale_cassa_professionist').asfloat <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('percentuale_cassa_professionist').asfloat := 0;
        end;
      end;

      if tabella.fieldbyname('importo_cassa_professionisti').asfloat <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('importo_cassa_professionisti').asfloat := 0;
        end;
      end;

      if tabella.fieldbyname('tpe_codice').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('tpe_codice').asstring := '';
        end;
      end;

      if tabella.fieldbyname('importo_ritenuta').asfloat <> 0 then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('importo_ritenuta').asfloat := 0;
        end;
      end;
    end
    else
    begin
      if (not cli.isempty) and (cli.fieldbyname('ritenuta_acconto').asstring <> 'si') then
      begin
        if tabella.fieldbyname('tpe_codice').asstring <> '' then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tpe_codice').asstring := '';
          end;
        end;

        if tabella.fieldbyname('importo_ritenuta').asfloat <> 0 then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('importo_ritenuta').asfloat := 0;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_tpe_codiceexit(sender: tobject);
begin
  inherited;
  tpe_codice_controllo(true);
end;

procedure tgesven.tpe_codice_controllo(blocco: boolean);
begin
  if controllo then
  begin
    if v_tpe_codice.enabled then
    begin
      if (not cli.isempty) and (cli.fieldbyname('nom_partita_iva').asstring = '') then
      begin
        tpe.close;
        tpe.params[0].value := null;
        tpe.open;
      end
      else
      begin
        tabella_controllo(true, tpe, v_tpe_codice, blocco, tab_control, tab_testata_sconto_acconto_spese, tabella);
      end;
    end
    else
    begin
      tpe.close;
      tpe.params[0].value := null;
      tpe.open;
    end;
  end;
end;

procedure tgesven.tool_richiesta_acquistoclick(sender: tobject);
var
  pr: tntvenacq;
  prosegui: boolean;
  quantita_rda: double;
begin
  inherited;

  prosegui := true;

  if not((tabella_righe.fieldbyname('situazione').asstring = 'inserito') and (tipo_documento = 'ordine')) then
  begin
    //  creazione RDA a quantità zero per documenti extra ordini inseriti
    if messaggio(300, 'conferma creazione RDA con quantità = 0 (zero)') = 1 then
    begin
      memorizza_rda(tabella_righe.fieldbyname('data_consegna').asdatetime, '', false, 0, true);
    end;
  end
  else
  begin
    if cli.fieldbyname('blocco').asstring = 'si' then
    begin
      if messaggio(304, 'il cliente è bloccato' + #13 + #13 +
        'conferma per emettere richiesta di acquisto') <> 1 then
      begin
        prosegui := false;
      end;
    end;

    if prosegui then
    begin
      if tabella_righe.fieldbyname('configurazione').asinteger = 0 then
      begin
        quantita_rda := fabdin.fabbisogno
          (tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
          tabella_righe.fieldbyname('tum_quantita_base').asfloat - tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat -
          tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat, tabella_righe.fieldbyname('id').asinteger, 0);
        if quantita_rda <= 0 then
        begin
          prosegui := false;
          if messaggio(304, 'in base ai parametri impostati non va generata nessuna richiesta d''acquisto' + #13 +
            'conferma per effettuare comunque la richiesta d''acquisto [' +
            floattostr(tabella_righe.fieldbyname('tum_quantita_base').asfloat - tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat -
            tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat) + ']') = 1 then
          begin
            quantita_rda := tabella_righe.fieldbyname('tum_quantita_base').asfloat -
              tabella_righe.fieldbyname('tum_quantita_evasa_base').asfloat - tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat;
            prosegui := true;
          end;
        end;

        if prosegui then
        begin
          if controllo_accettazione then
          begin
            if not esiste_rda_opt then
            begin
              pr := tntvenacq.create(nil);
              try
                pr.showmodal;

                if not pr.premuto_escape then
                begin
                  memorizza_rda(pr.data_consegna, pr.descrizione, pr.listino_diverso, quantita_rda);
                  messaggio(100, 'la richiesta d''acquisto per la riga d''ordine è stata effettuata correttamente');
                end;
              finally
                pr.free;
              end;
            end;
          end;
        end;
      end
      else
      begin
        messaggio(000, 'non è possibile emettere una richiesta d''acquisto per una riga d''ordine' + #13 +
          'per cui è stata gestita una configurazione' + #13 + 'va emesso un ordine di produzione');
      end;
      esegui_query_righe;
    end;
  end;
end;

function tgesven.controllo_accettazione: boolean;
begin
  result := true;
  if (tdo.fieldbyname('richiesta_accettazione').asstring = 'si') and
    (tabella.fieldbyname('accettato').asstring = 'no') then
  begin
    result := false;
    messaggio(000, 'il documento richiede l''accettazione prima di essere elaborato');
  end;
end;

procedure TGESVEN.tool_ordaClick(Sender: TObject);
var
  pr: tcreaorda;
begin
  inherited;
  pr := tcreaorda.create(nil);
  pr.progressivo_origine := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;
  freeandnil(pr);
  tabella_righe.refresh;
end;

procedure tgesven.tool_ordine_produzioneclick(sender: tobject);
var
  risultato: word;
  progressivo_opt: integer;
  tma_codice: string;
begin
  inherited;

  if controllo_accettazione then
  begin
    if not esiste_rda_opt then
    begin
      if tabella_righe.fieldbyname('tma_codice').asstring <> arc.dit.fieldbyname('tma_codice_finiti').asstring then
      begin
        risultato := messaggio(300, 'utilizzo del deposito dell''ordine [Sì] o quello standard [No]');
        if risultato = 1 then
        begin
          tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
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

      if tabella_righe.fieldbyname('configurazione').asinteger = 0 then
      begin
        risultato := messaggio(300, 'creazione ordine con modalità diretta [Sì] o con analisi struttura [No]');
        if risultato = 1 then
        begin
          parametri_extra_programma_chiamato[0] := tabella_righe.fieldbyname('art_codice').asstring;
          if query_esiste_opt.active then
          begin
            parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('tum_quantita_base').asfloat -
              query_esiste_opt.fieldbyname('quantita').asfloat;
          end
          else
          begin
            parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
          end;
          parametri_extra_programma_chiamato[2] := tabella_righe.fieldbyname('progressivo').asinteger;
          parametri_extra_programma_chiamato[3] := tabella_righe.fieldbyname('riga').asinteger;
          parametri_extra_programma_chiamato[4] := tabella_righe.fieldbyname('data_consegna').asdatetime;
          if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
          begin
            parametri_extra_programma_chiamato[4] := tabella.fieldbyname('data_documento').asdatetime;
          end;
          parametri_extra_programma_chiamato[5] := tabella_righe.fieldbyname('note').asstring;
          parametri_extra_programma_chiamato[6] := tabella_righe.fieldbyname('note_interne').asstring;
          parametri_extra_programma_chiamato[7] := tabella_righe.fieldbyname('formula').asstring;
          parametri_extra_programma_chiamato[8] := tabella_righe.fieldbyname('cms_codice').asstring;
          parametri_extra_programma_chiamato[9] := tabella_righe.fieldbyname('tipologia').asstring;
          parametri_extra_programma_chiamato[10] := 'ordine ven';
          parametri_extra_programma_chiamato[11] := tabella_righe.fieldbyname('progressivo').asinteger;
          parametri_extra_programma_chiamato[12] := tabella_righe.fieldbyname('riga').asinteger;
          parametri_extra_programma_chiamato[13] := '';
          parametri_extra_programma_chiamato[14] := arc.dit.fieldbyname('tipo_esplosione').asstring;
          parametri_extra_programma_chiamato[15] := tabella_righe.fieldbyname('lotto').asstring;
          parametri_extra_programma_chiamato[16] := tabella_righe.fieldbyname('art_codice').asstring;
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
          parametri_extra_programma_chiamato[0] := tabella_righe.fieldbyname('progressivo').asinteger;
          parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('riga').asinteger;
          parametri_extra_programma_chiamato[2] := tabella_righe.fieldbyname('art_codice').asstring;
          parametri_extra_programma_chiamato[3] := tabella_righe.fieldbyname('tum_quantita_base').asfloat -
            query_esiste_opt.fieldbyname('quantita').asfloat;
          parametri_extra_programma_chiamato[4] := tabella_righe.fieldbyname('lotto').asstring;
          parametri_extra_programma_chiamato[5] := tma_codice;
          parametri_extra_programma_chiamato[6] := tabella_righe.fieldbyname('formula').asstring;
          parametri_extra_programma_chiamato[7] := tabella_righe.fieldbyname('cms_codice').asstring;
          parametri_extra_programma_chiamato[8] := tabella_righe.fieldbyname('tipologia').asstring;
          parametri_extra_programma_chiamato[9] := tabella_righe.fieldbyname('data_consegna').asdatetime;
          if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
          begin
            parametri_extra_programma_chiamato[9] := tabella.fieldbyname('data_documento').asdatetime;
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
        progressivo_opt := prodconf.genera_produzione_configurazioni(tabella_righe.fieldbyname('progressivo').asinteger,
          tabella_righe.fieldbyname('riga').asinteger, tabella_righe.fieldbyname('configurazione').asinteger, tma_codice);
        if progressivo_opt <> 0 then
        begin
          esegui_programma('GESORDP', progressivo_opt, true);
        end;
      end;

      //  documenti collegati
      if progressivo_opt <> 0 then
      begin
        eredita_documenti_collegati('ordine', 'ordine produzione', tabella_righe.fieldbyname('progressivo').asinteger, progressivo_opt);
      end;
    end;

    esegui_query_righe;
  end;

  (*
    //  modifica SOSTEC ANNNULLATA
    var
    risultato: word;
    progressivo_opt: integer;
    tma_codice: string;

    automatici: tmyquery_go;
    esiste_automatici: boolean;
    numero_ordini_automatici: word;
    begin
    inherited;

    if controllo_accettazione then
    begin
    //  controllo presenza articoli con generazione automatica
    automatici := tmyquery_go.create(nil);
    automatici.connection := tabella.connection;
    automatici.sql.add('select ovr.riga from ovr');
    automatici.sql.add('inner join art on art.codice = ovr.art_codice');
    automatici.sql.add('where ovr.progressivo = ' + tabella_righe.fieldbyname('progressivo').asstring);
    automatici.sql.add('and art.ordini_produzione_automatici = ''si''');
    automatici.sql.add('and exists(select id from dsb where dsb.art_codice_padre = ovr.art_codice)');
    automatici.open;

    esiste_automatici := false;

    if automatici.recordcount > 0 then
    begin
    if messaggio(300, 'crea ordini di produzione automatici per tutti gli articoli abilitati [Si]' + slinebreak +
    'oppure solo per la riga selezionata [No]') <> 1 then
    begin
    automatici.close;
    automatici.sql.clear;
    automatici.sql.add('select ovr.riga from ovr');
    automatici.sql.add('where ovr.progressivo = ' + tabella_righe.fieldbyname('progressivo').asstring);
    automatici.sql.add('and ovr.riga = ' + tabella_righe.fieldbyname('riga').asstring);
    automatici.open;
    end
    else
    begin
    esiste_automatici := true;
    end;
    end
    else
    begin
    automatici.close;
    automatici.sql.clear;
    automatici.sql.add('select ovr.riga from ovr');
    automatici.sql.add('where ovr.progressivo = ' + tabella_righe.fieldbyname('progressivo').asstring);
    automatici.sql.add('and ovr.riga = ' + tabella_righe.fieldbyname('riga').asstring);
    automatici.open;
    end;

    numero_ordini_automatici := 0;

    tabella_righe.disablecontrols;
    tabella_righe.first;
    while not tabella_righe.eof do
    begin
    automatici.first;

    while not automatici.eof do
    begin
    if tabella_righe.fieldbyname('riga').asinteger = automatici.fieldbyname('riga').asinteger then
    begin
    if not esiste_rda_opt then
    begin
    if tabella_righe.fieldbyname('tma_codice').asstring <> arc.dit.fieldbyname('tma_codice_finiti').asstring then
    begin
    risultato := messaggio(300, 'utilizzo del deposito dell''ordine [Sì] o quello standard [No]');
    if risultato = 1 then
    begin
    tma_codice := tabella_righe.fieldbyname('tma_codice').asstring;
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

    if tabella_righe.fieldbyname('configurazione').asinteger = 0 then
    begin
    if esiste_automatici = true then
    begin
    //  tabella_righe.fieldbyname('configurazione').asinteger normalmente = 0
    progressivo_opt := prodconf.genera_produzione_configurazioni(tabella_righe.fieldbyname('progressivo').asinteger,
    tabella_righe.fieldbyname('riga').asinteger, tabella_righe.fieldbyname('configurazione').asinteger, tma_codice);
    inc(numero_ordini_automatici);
    end
    else
    begin
    risultato := messaggio(300, 'articolo [' + tabella_righe.fieldbyname('art_codice').asstring + ' - ' +
    tabella_righe.fieldbyname('descrizione1').asstring + ' ' + tabella_righe.fieldbyname('descrizione2').asstring +
    ']' + slinebreak + 'creazione ordine con modalità diretta [Sì] o con analisi struttura [No]');

    if risultato = 1 then
    begin
    parametri_extra_programma_chiamato[0] := tabella_righe.fieldbyname('art_codice').asstring;
    if query_esiste_opt.active then
    begin
    parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('tum_quantita_base').asfloat -
    query_esiste_opt.fieldbyname('quantita').asfloat;
    end
    else
    begin
    parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('tum_quantita_base').asfloat;
    end;
    parametri_extra_programma_chiamato[2] := tabella_righe.fieldbyname('progressivo').asinteger;
    parametri_extra_programma_chiamato[3] := tabella_righe.fieldbyname('riga').asinteger;
    parametri_extra_programma_chiamato[4] := tabella_righe.fieldbyname('data_consegna').asdatetime;
    if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
    begin
    parametri_extra_programma_chiamato[4] := tabella.fieldbyname('data_documento').asdatetime;
    end;
    parametri_extra_programma_chiamato[5] := tabella_righe.fieldbyname('note').asstring;
    parametri_extra_programma_chiamato[6] := tabella_righe.fieldbyname('note_interne').asstring;
    parametri_extra_programma_chiamato[7] := tabella_righe.fieldbyname('formula').asstring;
    parametri_extra_programma_chiamato[8] := tabella_righe.fieldbyname('cms_codice').asstring;
    parametri_extra_programma_chiamato[9] := tabella_righe.fieldbyname('tipologia').asstring;
    parametri_extra_programma_chiamato[10] := 'ordine ven';
    parametri_extra_programma_chiamato[11] := tabella_righe.fieldbyname('progressivo').asinteger;
    parametri_extra_programma_chiamato[12] := tabella_righe.fieldbyname('riga').asinteger;
    parametri_extra_programma_chiamato[13] := '';
    parametri_extra_programma_chiamato[14] := arc.dit.fieldbyname('tipo_esplosione').asstring;
    parametri_extra_programma_chiamato[15] := tabella_righe.fieldbyname('lotto').asstring;
    parametri_extra_programma_chiamato[16] := tabella_righe.fieldbyname('art_codice').asstring;
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
    parametri_extra_programma_chiamato[0] := tabella_righe.fieldbyname('progressivo').asinteger;
    parametri_extra_programma_chiamato[1] := tabella_righe.fieldbyname('riga').asinteger;
    parametri_extra_programma_chiamato[2] := tabella_righe.fieldbyname('art_codice').asstring;
    parametri_extra_programma_chiamato[3] := tabella_righe.fieldbyname('tum_quantita_base').asfloat -
    query_esiste_opt.fieldbyname('quantita').asfloat;
    parametri_extra_programma_chiamato[4] := tabella_righe.fieldbyname('lotto').asstring;
    parametri_extra_programma_chiamato[5] := tma_codice;
    parametri_extra_programma_chiamato[6] := tabella_righe.fieldbyname('formula').asstring;
    parametri_extra_programma_chiamato[7] := tabella_righe.fieldbyname('cms_codice').asstring;
    parametri_extra_programma_chiamato[8] := tabella_righe.fieldbyname('tipologia').asstring;
    parametri_extra_programma_chiamato[9] := tabella_righe.fieldbyname('data_consegna').asdatetime;
    if tabella_righe.fieldbyname('data_consegna').asdatetime = 0 then
    begin
    parametri_extra_programma_chiamato[9] := tabella.fieldbyname('data_documento').asdatetime;
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
    end;
    end
    else
    begin
    progressivo_opt := prodconf.genera_produzione_configurazioni(tabella_righe.fieldbyname('progressivo').asinteger,
    tabella_righe.fieldbyname('riga').asinteger, tabella_righe.fieldbyname('configurazione').asinteger, tma_codice);

    if progressivo_opt <> 0 then
    begin
    esegui_programma('GESORDP', progressivo_opt, true);
    end;
    end;

    //  documenti collegati
    if progressivo_opt <> 0 then
    begin
    eredita_documenti_collegati('ordine', 'ordine produzione', tabella_righe.fieldbyname('progressivo').asinteger, progressivo_opt);
    end;
    end;

    break;
    end;

    automatici.next;
    end;

    tabella_righe.next;
    end;
    tabella_righe.enablecontrols;

    freeandnil(automatici);

    if numero_ordini_automatici <> 0 then
    begin
    messaggio(100, 'generati ordini automatici per [' + inttostr(numero_ordini_automatici) + '] articoli');
    end;

    esegui_query_righe;
    end;
  *)
end;

procedure TGESVEN.tool_ordine_produzione_globaleClick(Sender: TObject);
var
  pr: tcreordpv;
begin
  inherited;

  pr := tcreordpv.create(nil);
  pr.progressivo := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;
  freeandnil(pr);
end;

function tgesven.esiste_rda_opt: boolean;
var
  stringa: string;
begin
  result := false;

  query_rda.close;
  query_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_rda.open;

  if not query_rda.isempty then
  begin
    messaggio(200, 'articolo [' + tabella_righe.fieldbyname('art_codice').asstring + ' - ' +
      tabella_righe.fieldbyname('descrizione1').asstring + ' ' + tabella_righe.fieldbyname('descrizione2').asstring + slinebreak +
      'è già stata effettuata una richiesta d''acquisto per la riga ');
    result := true;
  end
  else
  begin
    query_esiste_opt.close;
    query_esiste_opt.params[0].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
    query_esiste_opt.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    query_esiste_opt.open;
    if query_esiste_opt.fieldbyname('numero').asinteger <> 0 then
    begin
      stringa := 'articolo [' + tabella_righe.fieldbyname('art_codice').asstring + ' - ' +
        tabella_righe.fieldbyname('descrizione1').asstring + ' ' + tabella_righe.fieldbyname('descrizione2').asstring +
        ']' + slinebreak;

      if query_esiste_opt.fieldbyname('numero').asinteger = 1 then
      begin
        stringa := stringa + 'è già stato emesso 1 ordine di produzione ' + #13 +
          'per la quantità di ' + query_esiste_opt.fieldbyname('quantita').asstring;
      end
      else
      begin
        stringa := stringa + 'sono già stati emessi ' + query_esiste_opt.fieldbyname('numero').asstring +
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

procedure TGESVEN.etichettearticoli1Click(Sender: TObject);
begin
  inherited;
  v_etiartClick(nil);
end;

procedure TGESVEN.etichettedocumento1Click(Sender: TObject);
begin
  inherited;
  tool_eticliveClick(nil);
end;

procedure tgesven.memorizza_rda(data_consegna: tdate;
  descrizione:
  string;
  listino_diverso:
  boolean;
  quantita:
  double;
  manuale:
  boolean = false);
var
  stringa: string;

  sconto_massimo_art: double;
  valorizzazione: string;

  prezzo, importo_sconto: double;
  tsm_codice, tsm_codice_art: string;
begin
  rda.close;
  rda.open;

  rda.append;

  rda.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(rda.connection), 'rda_progressivo');
  rda.fieldbyname('art_codice_richiesta').asstring := tabella_righe.fieldbyname('art_codice').asstring;
  rda.fieldbyname('art_descrizione1_richiesta').asstring := tabella_righe.fieldbyname('descrizione1').asstring;
  rda.fieldbyname('art_descrizione2_richiesta').asstring := tabella_righe.fieldbyname('descrizione2').asstring;

  read_tabella(arc.arcdit, 'tma', 'codice', tabella_righe.fieldbyname('tma_codice').asstring, 'tma_codice_carorda_opr');
  if archivio.fieldbyname('tma_codice_carorda_opr').asstring <> '' then
  begin
    rda.fieldbyname('tma_codice_richiesta').asstring := archivio.fieldbyname('tma_codice_carorda_opr').asstring;
  end
  else
  begin
    rda.fieldbyname('tma_codice_richiesta').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
  end;

  rda.fieldbyname('quantita_richiesta').asfloat := quantita;
  rda.fieldbyname('utn_codice_richiesta').asstring := utente;

  if manuale then
  begin
    rda.fieldbyname('tipo_richiesta').asstring := 'manuale';
  end
  else
  begin
    rda.fieldbyname('art_note_richiesta').asstring := tabella_righe.fieldbyname('note').asstring;;
    rda.fieldbyname('data_consegna_richiesta').asstring := tabella_righe.fieldbyname('data_consegna').asstring;

    rda.fieldbyname('tipo_richiesta').asstring := 'ordini clienti';
    rda.fieldbyname('ovr_progressivo').asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
    rda.fieldbyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;

    read_tabella(arc.arcdit, 'cli', 'codice', v_cli_codice.text);

    stringa := '';
    if listino_diverso then
    begin
      cerca_prezzi.cerca_prezzo('C', tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
        tdo.fieldbyname('prezzo_proposto').asstring, tabella_righe.fieldbyname('art_codice').asstring,
        tabella_righe.fieldbyname('tma_codice').asstring, tabella_righe.fieldbyname('quantita').asfloat, prezzo, tsm_codice, tsm_codice_art,
        tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('tva_codice').asstring,
        tabella.fieldbyname('cambio').asfloat, cifre_decimali_prezzo, tabella.fieldbyname('tlv_codice').asstring,
        1, tabella_righe.fieldbyname('tum_codice').asstring, tabella.fieldbyname('tdo_codice').asstring, importo_sconto, true,
        tabella_righe.fieldbyname('numero_colli').asinteger, tabella_righe.fieldbyname('numero_confezioni').asinteger, false);

      if (tabella_righe.fieldbyname('prezzo').asfloat <> prezzo) or (tabella_righe.fieldbyname('tsm_codice').asstring <> tsm_codice) or
        (tabella_righe.fieldbyname('tsm_codice_art').asstring <> tsm_codice_art) or (tabella_righe.fieldbyname('importo_sconto').asfloat <> importo_sconto) then
      begin
        descrizione := '****** LISTINO MODIFICATO ******' + slinebreak + descrizione;
        stringa := 'prezzo vendita ' + tabella_righe.fieldbyname('prezzo').asstring + '  listino ' + floattostr(prezzo) + slinebreak +
          'sconto principale ' + tabella_righe.fieldbyname('tsm_codice').asstring + '  listino ' + tsm_codice + slinebreak +
          'sconto secondario ' + tabella_righe.fieldbyname('tsm_codice_art').asstring + '  listino ' + tsm_codice_art + slinebreak +
          'importo sconto ' + tabella_righe.fieldbyname('importo_sconto').asstring + '  listino ' + floattostr(importo_sconto);
      end;
    end;
    if stringa <> '' then
    begin
      stringa := stringa + slinebreak + slinebreak;
    end;
    stringa := stringa + 'cliente: ' + archivio.fieldbyname('descrizione1').asstring + ' città: ' +
      archivio.fieldbyname('citta').asstring + slinebreak +
      'numero ordine: ' + tabella.fieldbyname('numero_documento').asstring;
    if tabella.fieldbyname('serie_documento').asstring <> '' then
    begin
      stringa := stringa + '/' + tabella.fieldbyname('serie_documento').asstring;
    end;
    stringa := stringa + ' del: ' + tabella.fieldbyname('data_documento').asstring + slinebreak +
      'data consegna: ' + tabella_righe.fieldbyname('data_consegna').asstring;
    if tabella.fieldbyname('riferimento').asstring <> '' then
    begin
      stringa := stringa + slinebreak + 'riferimento: ' + tabella.fieldbyname('riferimento').asstring;
    end;

    rda.fieldbyname('note_richiesta').asstring := stringa;
    if trim(descrizione) <> '' then
    begin
      rda.fieldbyname('note_richiesta').asstring := descrizione + slinebreak + rda.fieldbyname('note_richiesta').asstring;
    end;
    if tabella.fieldbyname('nostro_riferimento').asstring <> '' then
    begin
      rda.fieldbyname('note_richiesta').asstring := 'nostro riferimento: ' + tabella.fieldbyname('nostro_riferimento').asstring + slinebreak +
        rda.fieldbyname('note_richiesta').asstring;
    end;
    rda.fieldbyname('nostro_riferimento').asstring := tabella.fieldbyname('nostro_riferimento').asstring;

    rda.fieldbyname('cms_codice').asstring := tabella_righe.fieldbyname('cms_codice').asstring;
    rda.fieldbyname('tipologia').asstring := tabella_righe.fieldbyname('tipologia').asstring;

    sconto_massimo_art := 0;
  end;

  if data_consegna <> 0 then
  begin
    rda.fieldbyname('data_consegna_richiesta').asdatetime := data_consegna;
  end;

  frn_rda.close;
  frn_rda.parambyname('codice').asstring := art.fieldbyname('frn_codice').asstring;
  frn_rda.open;

  prezzo := 0;
  importo_sconto := 0;
  tsm_codice := '';
  tsm_codice_art := '';

  tipo_prezzo := 'listino acquisto';
  cerca_prezzo_documento('fornitore', tabella_righe);
  tipo_prezzo := tdo.fieldbyname('prezzo_proposto').asstring;

  if prezzo = 0 then
  begin
    valorizzazione := tipinv.tipo_inventario('gestionale', tabella_righe.fieldbyname('art_codice').asstring);
    przinv.przinv(tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring,
      valorizzazione, esercizio, now, 0, prezzo,
      'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
    tsm_codice := '';
    tsm_codice_art := '';
    importo_sconto := 0;
  end;

  rda.fieldbyname('prezzo_costo').asfloat := arrotonda
    (prezzo * sconto(tsm_codice) * sconto(tsm_codice_art) / 10000, cifre_decimali_prezzo_acq);
  if arc.dit.fieldbyname('richiesta_autorizzazione_rda').asstring = 'no' then
  begin
    rda.fieldbyname('autorizzata').asstring := 'si';
  end
  else
  begin
    rda.fieldbyname('autorizzata').asstring := 'no';
  end;

  rda.post;
  abilita_annulla_rda;
end;

procedure tgesven.v_annulla_riga_documentoclick(sender: tobject);
begin
  inherited;

  if v_annulla_riga_documento.caption = 'annulla' then
  begin
    annulla_riga_documento;
  end
  else
  begin
    storna_annulla_riga_documento;
  end;
end;

procedure tgesven.annulla_riga_documento;
begin
  if messaggio(304, 'conferma l''annullamento della riga d''ordine' + #13 +
    'numero ' + inttostr(tabella_righe.fieldbyname('riga').asinteger) +
    '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring +
    '  quantità ' + formatfloat(formato_display_quantita, tabella_righe.fieldbyname('quantita').asfloat)) = 1 then
  begin
    controllo_rda_oar_opt('annullata');

    aggiorna_totali_testata := true;
    aggiorna_totali_colli := true;

    tabella_righe.edit;

    tabella_righe.fieldbyname('quantita_approntata').asfloat := 0;
    tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat := 0;
    tabella_righe.fieldbyname('situazione').asstring := 'annullato';

    tabella_righe.post;
  end;
end;

procedure tgesven.storna_annulla_riga_documento;
begin
  if messaggio(304, 'conferma lo storno dell''annullamento della riga d''ordine' + #13 +
    'numero ' + inttostr(tabella_righe.fieldbyname('riga').asinteger) +
    '  codice articolo ' + tabella_righe.fieldbyname('art_codice').asstring +
    '  quantità ' + formatfloat(formato_display_quantita, tabella_righe.fieldbyname('quantita').asfloat)) = 1 then
  begin
    aggiorna_totali_testata := true;
    aggiorna_totali_colli := true;

    tabella_righe.edit;

    tabella_righe.fieldbyname('situazione').asstring := 'inserito';

    tabella_righe.post;
  end;
end;

procedure tgesven.v_tva_codicechange(sender: tobject);
begin
  inherited;
  if not v_tva_codice.focused and tabella.active and not no_scroll then
  begin
    tva_codice_controllo(false);
  end;

  if v_tva_codice.text = divisa_di_conto then
  begin
    v_cambio.enabled := false;
    v_cambio.color := clbtnface;
  end
  else
  begin
    v_cambio.enabled := true;
    v_cambio.color := clwindow;
  end;
end;

procedure tgesven.tabella_dsstatechange(sender: tobject);
begin
  inherited;
  if tabella_ds.state = dsbrowse then
  begin
    abilita_storni(true);
  end
  else
  begin
    abilita_storni(false);
  end;
end;

procedure TGESVEN.tabella_righeBeforeDelete(DataSet: TDataSet);
var
  data_letture: string;
  data: tdatetime;
begin
  if tabella_righe.fieldbyname('documento_origine').asstring = 'costo copie assistenza' then
  begin
    arc.arcdit.execsql(
      'update mtrcoplet set superate_copie_contratto = '''' where id = ' + tabella_righe.fieldbyname('doc_riga_origine').asstring);
  end
  else if tabella_righe.fieldbyname('documento_origine').asstring = 'contratto assistenza' then
  begin
    data_letture := copy(tabella_righe.fieldbyname('note').asstring,
      pos('Lettura attuale del ', tabella_righe.fieldbyname('note').asstring) + 20, 10);

    if trystrtodate(data_letture, data) then
    begin
      arc.arcdit.execsql(
        'update mtrcoplet inner join mtrcop on mtrcop.id = mtrcoplet.id_mtrcop set superate_copie_contratto = '''' where '
        + 'mtrcoplet.data between (' + quotedstr(formatdatetime('yyyy-mm-dd', data)) + ' - interval 12 day) and ('
        + quotedstr(formatdatetime('yyyy-mm-dd', data)) + ' + interval 12 day)' +
        ' and mtrcop.mtr_codice in (select mtr_codice from atr where progressivo = ' +
        tabella_righe.fieldbyname('doc_progressivo_origine').asstring + ')');
    end;
  end;

  inherited;
end;

procedure TGESVEN.tabella_righeBeforePost(DataSet: TDataSet);
begin
  inherited;

  if tabella_righe.fieldbyname('art_codice').asstring <> '' then
  begin
    if (tabella.fieldbyname('tmo_codice').asstring <> '') and (tabella_righe.fieldbyname('tma_codice').asstring = '') then
    begin
      messaggio(000, 'manca il codice deposito sulla riga del documento' + slinebreak +
        'la riga non verrà memorizzata');
      abort;
    end;
  end;
end;

procedure tgesven.v_tsm_codice_artexit(sender: tobject);
begin
  inherited;
  if variato_stringa <> v_tsm_codice_art.text then
  begin
    variato_provvigioni := true;
  end;

  if v_tsm_codice_art.enabled then
  begin
    if controllo then
    begin
      assegna_valore_tsm_codice_righe;
      tsm_codice_art_controllo(true);
      if variato_stringa <> v_tsm_codice_art.text then
      begin
        calcola_importo;
      end;
    end;
  end;
end;

procedure TGESVEN.v_tsm_codice_artKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) and (shift = [ssctrl]) then
  begin
    arc.sconti_percentuale(screen.activecontrol);
    selectnext(screen.activecontrol, true, true);
  end;
end;

procedure tgesven.tsm_codice_art_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsm_art, v_tsm_codice_art, blocco, nil, nil, tabella_righe);
end;

procedure tgesven.totalizza_colli(modalita: string);
begin
  totale_colli.close;
  totale_colli.sql.clear;

  totale_colli.sql.add('select sum(numero_colli) totale_colli, sum(numero_confezioni) totale_confezioni,');
  totale_colli.sql.add('sum(volume) volume, sum(peso_lordo) peso_lordo, sum(peso_netto) peso_netto ');
  totale_colli.sql.add('from ');
  totale_colli.sql.add('(select numero_colli, numero_confezioni,');
  totale_colli.sql.add('round(tum_quantita_base * volume, 4) volume, round(tum_quantita_base * peso_lordo, 4) peso_lordo,');
  totale_colli.sql.add('case');
  totale_colli.sql.add('when peso_netto_riga <> 0 then peso_netto_riga');
  totale_colli.sql.add('when tum.quantita_peso = ''si'' then quantita');
  totale_colli.sql.add('when tum_art.quantita_peso = ''si'' then tum_quantita_base');
  totale_colli.sql.add('else round(tum_quantita_base * peso_netto, 4)');
  totale_colli.sql.add('end peso_netto');
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    totale_colli.sql.add('from pvr');
  end
  else if tipo_documento = 'ordine' then
  begin
    totale_colli.sql.add('from ovr');
  end
  else if tipo_documento = 'bolla' then
  begin
    totale_colli.sql.add('from bvr');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    totale_colli.sql.add('from cvr');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    totale_colli.sql.add('from dvr');
  end
  else
  begin
    totale_colli.sql.add('from fvr');
  end;
  totale_colli.sql.add('inner join art on art.codice = art_codice');

  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    totale_colli.sql.add('inner join tum on tum.codice = pvr.tum_codice');
    totale_colli.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
  end
  else if tipo_documento = 'ordine' then
  begin
    totale_colli.sql.add('inner join tum on tum.codice = ovr.tum_codice');
    totale_colli.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
  end
  else if tipo_documento = 'bolla' then
  begin
    totale_colli.sql.add('inner join tum on tum.codice = bvr.tum_codice');
    totale_colli.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    totale_colli.sql.add('inner join tum on tum.codice = cvr.tum_codice');
    totale_colli.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    totale_colli.sql.add('inner join tum on tum.codice = dvr.tum_codice');
    totale_colli.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
  end
  else
  begin
    totale_colli.sql.add('inner join tum on tum.codice = fvr.tum_codice');
    totale_colli.sql.add('inner join tum tum_art on tum_art.codice = art.tum_codice');
  end;

  totale_colli.sql.add('where progressivo = :progressivo and situazione <> ''annullato''');

  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    totale_colli.sql.add('and pvr.kit <> ''pf''');
  end
  else if tipo_documento = 'ordine' then
  begin
    totale_colli.sql.add('and ovr.kit <> ''pf''');
  end
  else if tipo_documento = 'bolla' then
  begin
    totale_colli.sql.add('and bvr.kit <> ''pf''');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    totale_colli.sql.add('and cvr.kit <> ''pf''');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    totale_colli.sql.add('and dvr.kit <> ''pf''');
  end
  else
  begin
    totale_colli.sql.add('and fvr.kit <> ''pf''');
  end;
  totale_colli.sql.add(') as q');

  totale_colli.parambyname('progressivo').asinteger := trunc(v_progressivo.value);

  totale_colli.open;
  if ((totalizzazione_colli = 'si') or (modalita = 'manuale'))
    and (totale_colli.fieldbyname('totale_colli').asinteger <> 0) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('numero_colli').asinteger := totale_colli.fieldbyname('totale_colli').asinteger;
    end;
  end;
  if ((totalizzazione_colli = 'si') or (modalita = 'manuale'))
    and (totale_colli.fieldbyname('totale_confezioni').asinteger <> 0) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('numero_confezioni').asinteger := totale_colli.fieldbyname('totale_confezioni').asinteger;
    end;
  end;

  if ((totalizzazione_quantita = 'si') or (modalita = 'manuale'))
    and (totale_colli.fieldbyname('volume').asfloat <> 0) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('volume').asfloat := totale_colli.fieldbyname('volume').asfloat;
    end;
  end;
  if ((totalizzazione_quantita = 'si') or (modalita = 'manuale'))
    and (totale_colli.fieldbyname('peso_lordo').asfloat <> 0) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('peso_lordo').asfloat := totale_colli.fieldbyname('peso_lordo').asfloat;
    end;
  end;
  if ((totalizzazione_quantita = 'si') or (modalita = 'manuale'))
    and (totale_colli.fieldbyname('peso_netto').asfloat <> 0) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('peso_netto').asfloat := totale_colli.fieldbyname('peso_netto').asfloat;
    end;
  end;

  if (totalizzazione_quantita = 'si') or (modalita = 'manuale') then
  begin
    arc.calcola_peso_lordo(tabella);
  end;
end;

procedure tgesven.v_provinciaexit(sender: tobject);
begin
  inherited;
  provincia_controllo;
end;

procedure TGESVEN.v_provvigioni_multilivelloClick(Sender: TObject);
var
  pr: tgesprvm;
begin
  inherited;

  if parte_attiva = 'pannello_codice' then
  begin
    messaggio(200, 'confermare il progressivo');
  end
  else
  begin
    if not esiste then
    begin
      messaggio(200, 'memorizzare il documento');
    end
    else
    begin
      pr := tgesprvm.create(nil);
      try
        if pr.esegui_form then
        begin
          pr.codice := vararrayof([tabella.fieldbyname('progressivo').asstring, '']);
          pr.showmodal;
        end;
      finally
        pr.free;
      end;
    end;
  end;
end;

procedure TGESVEN.v_punto_venditaEnter(Sender: TObject);
begin
  inherited;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_cli_codice.text;
  visarc_filtro_02 := v_indirizzo.text;
end;

procedure TGESVEN.v_punto_venditaExit(Sender: TObject);
begin
  inherited;
  v_punto_vendita_controllo(true);
  if not pvvr.isempty and (v_punto_vendita.text <> '') then
  begin
    if (pvvr.fieldbyname('cli_codice').asstring <> tabella.fieldbyname('cli_codice').asstring) or
      (pvvr.fieldbyname('ind_codice').asstring <> tabella.fieldbyname('indirizzo').asstring) then
    begin
      messaggio(000, 'il cliente o la filiale dell''impianto non corrispondono a quelli del documento');
      if v_punto_vendita.canfocus then
      begin
        v_punto_vendita.setfocus;
        abort;
      end;
    end;
  end;
end;

procedure TGESVEN.v_punto_vendita_controllo(blocco: boolean);
begin
  if vending then
  begin
    tabella_controllo(false, pvvr, v_punto_vendita, blocco, tab_control, tab_testata_analitica, tabella);
  end
  else
  begin
    tabella_controllo(true, pvvr, v_punto_vendita, blocco, tab_control, tab_testata_analitica, tabella);
  end;
end;

procedure tgesven.provincia_controllo;
begin
end;

procedure TGESVEN.v_data_inizio_conteggioExit(Sender: TObject);
begin
  inherited;
  v_data_inizio_conteggio_controllo;
end;

procedure tgesven.v_data_inizio_conteggio_controllo;
begin
  if controllo then
  begin
    if (v_data_inizio_conteggio.date <> 0) and (v_data_inizio_conteggio.date < v_data_documento.date) then
    begin
      messaggio(200, 'la data di inizio conteggio è inferiore alla data documento');
    end;
  end;
end;

procedure tgesven.v_data_inizio_trasportokeydown(sender: tobject;
  var
  key: word;
  shift:
  tshiftstate);
var
  ora, minuto, secondo, millisecondo: word;
begin
  inherited;
  if (key = vk_f11) and (shift = []) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('data_inizio_trasporto').asdatetime := now;
      if tabella.fieldbyname('data_inizio_trasporto').asdatetime < tabella.fieldbyname('data_documento').asdatetime then
      begin
        tabella.fieldbyname('data_inizio_trasporto').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
      end;
      decodetime(now, ora, minuto, secondo, millisecondo);
      tabella.fieldbyname('ora_inizio_trasporto').asinteger := ora;
      tabella.fieldbyname('minuto_inizio_trasporto').asinteger := minuto;
    end;
  end;
end;

procedure TGESVEN.v_data_riferimentoExit(Sender: TObject);
begin
  inherited;
  if aggiorna_consolidato then
  begin
    aggiorna_consolidato := false;
    abilita_codice;
  end;
end;

procedure tgesven.v_evadi_riga_documentoclick(sender: tobject);
begin
  inherited;
  if messaggio(304, 'conferma dell''evasione della riga del documento a saldo') = 1 then
  begin
    tabella_righe.edit;

    tabella_righe.fieldbyname('quantita_approntata').asfloat := 0;
    tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat := 0;
    tabella_righe.fieldbyname('situazione').asstring := 'evaso';

    tabella_righe.post;

    aggiorna_totali_testata := true;

    tabella.refresh;

    abilita_bottoni(true);
  end;
end;

procedure tgesven.v_evasione_documentoclick(sender: tobject);
var
  tdo_codice: variant;
  documento, tdo_codice_evasione, tipo_numerazione_evasione: string;
  progressivo_evasione: integer;
  numero_documento_evasione, numero_documento_evasione_precedente: double;
  riga, i: word;
  data_documento_evasione, data_documento_evasione_precedente: tdatetime;
  codice_visarc: variant;
  generatore_evasione: string;
  prosegui: boolean;

  pagamenti_origine, pagamenti_evasione, articolo_conai, cor_consolidato: tmyquery_go;
begin
  inherited;

  if (copy(tipo_documento, 1, 10) <> 'preventivo') and (tipo_documento <> 'ordine') and
    ((date < data_inizio) or (date > data_fine)) then
  begin
    messaggio(000, 'la data odierna fuori dai limiti dell''esercizio fiscale');
  end
  else
  begin
    if (copy(tipo_documento, 1, 10) = 'preventivo') and (tabella.fieldbyname('data_validita').asdatetime < date) and
      (tabella.fieldbyname('data_validita').asdatetime <> 0) then
    begin
      messaggio(200, 'superata la data di validità del preventivo [' + tabella.fieldbyname('data_validita').asstring + ']');
    end;

    prosegui := true;
    if (read_tabella(arc.arcdit, 'tse', 'codice', cli.fieldbyname('tse_codice').asstring)) then
    begin
      if archivio.fieldbyname('blocco').asstring = 'si' then
      begin
        messaggio(000, 'il cliente è bloccato e non si possono inserire documenti di vendita' + #13 + #13 +
          archivio.fieldbyname('descrizione').asstring);
        prosegui := false;
        tab_control.activepage := tab_pagina1;
        v_cli_codice.setfocus;
        abort;
      end
      else
      begin
        if messaggio(304, 'il cliente ha memorizzato il seguente avviso' + #13 + #13 +
          archivio.fieldbyname('descrizione').asstring + #13 + #13 +
          'si vuole proseguire l''inserimento del documento?') <> 1 then
        begin
          prosegui := false;
          tab_control.activepage := tab_pagina1;
          v_cli_codice.setfocus;
          abort;
        end;
      end;
    end;

    if prosegui then
    begin
      if (tdo.fieldbyname('richiesta_accettazione').asstring = 'si') and
        (tabella.fieldbyname('accettato').asstring = 'no') then
      begin
        messaggio(000, 'il documento necessita di accettazione per poter essere evaso');
      end
      else
      begin
        if tdo.fieldbyname('tdo_codice_evasione_diretta').asstring = '' then
        begin
          prosegui := false;

          if (tipo_documento = 'ddt') and (tdo.fieldbyname('tdo_codice_differite').asstring <> '') then
          begin
            //  codice evasione ddt vendita
            prosegui := true;
            tdo_codice_evasione := tdo.fieldbyname('tdo_codice_differite').asstring;
          end
          else
            if (tipo_documento = 'ddt') and not tdo_conto_vendita.isempty then
          begin
            //  codice evasione ddt conto vendita
            prosegui := true;
            tdo_codice := tdo_conto_vendita.fieldbyname('codice').asstring;
            tdo_codice_evasione := tdo_conto_vendita.fieldbyname('codice').asstring;
            if tdo_conto_vendita.recordcount <> 1 then
            begin
              esegui_visarc(arc.arcdit, 'TDO', 'TDVCV', tdo_codice, 'fattura immediata', tabella.fieldbyname('tdo_codice').asstring, '', '', '', '');
              tdo_codice_evasione := tdo_codice;
            end;
          end
          else
          begin
            tdo_codice_evasione := '';
            esegui_visarc(arc.arcdit, 'TDO', 'TDV', tdo_codice, '', '', '', '', '', '');

            tdo_codice_evasione := tdo_codice;
            read_tabella(arc.arcdit, 'tdo', 'codice', tdo_codice_evasione);
            if tipo_documento = 'preventivo' then
            begin
              if (archivio.fieldbyname('tipo_documento').asstring = 'ordine') or
                (archivio.fieldbyname('tipo_documento').asstring = 'bolla') or
                (archivio.fieldbyname('tipo_documento').asstring = 'corrispettivo') or
                (archivio.fieldbyname('tipo_documento').asstring = 'ddt') or
                (archivio.fieldbyname('tipo_documento').asstring = 'fattura immediata') or
                (archivio.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria') then
              begin
                prosegui := true;
              end;
            end
            else if tipo_documento = 'ordine' then
            begin
              if (archivio.fieldbyname('tipo_documento').asstring = 'bolla') or
                (archivio.fieldbyname('tipo_documento').asstring = 'corrispettivo') or
                (archivio.fieldbyname('tipo_documento').asstring = 'ddt') or
                (archivio.fieldbyname('tipo_documento').asstring = 'fattura immediata') or
                (archivio.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria') then
              begin
                prosegui := true;
              end;
            end;
          end;
        end
        else
        begin
          tdo_codice_evasione := tdo.fieldbyname('tdo_codice_evasione_diretta').asstring;
          prosegui := true;
        end;

        if not prosegui then
        begin
          messaggio(200, 'tipo documento non utilizzabile per l''evasione');
        end
        else
        begin
          read_tabella(arc.arcdit, 'tdo', 'codice', tdo_codice_evasione, 'tmo_codice, tma_codice');
          if (archivio.fieldbyname('tmo_codice').asstring <> '') and
            (archivio.fieldbyname('tma_codice').asstring = '') and
            (tabella.fieldbyname('tma_codice').asstring = '') then
          begin
            messaggio(000, 'il codice documento prevede la movimentazione di magazzino' + slinebreak +
              'mentre nel documento manca il codice deposito' + slinebreak +
              'il codice deposito verrà assegnato dal codice del documenti di evasione' + slinebreak +
              'oppure richiesto interattivamente');
          end;

          if (tipo_documento = 'preventivo') or not controllo_esercizio_situazione then
          begin
            if messaggio(304, 'confermi l''evasione totale del documento?') = 1 then
            begin
              prosegui := true;
              if (cli.fieldbyname('singolo_codice_iva_documenti').asstring = 'si') and
                (tipo_documento = 'preventivo') or (tipo_documento = 'ordine') then
              begin
                iva_diversa_evadi.close;
                iva_diversa_evadi.sql.clear;
                iva_diversa_evadi.sql.add('select distinct x1x1.tiv_codice');
                iva_diversa_evadi.sql.add('from x1x1');
                iva_diversa_evadi.sql.add('inner join tiv on tiv.codice = x1x1.tiv_codice');
                iva_diversa_evadi.sql.add('where x1x1.progressivo = :progressivo and tiv.controllo_su_documenti = ''si''');

                if tipo_documento = 'preventivo' then
                begin
                  iva_diversa_evadi.sql.text := stringreplace(iva_diversa_evadi.sql.text, 'x1x1', 'pvr', [rfreplaceall]);
                end
                else
                begin
                  iva_diversa_evadi.sql.text := stringreplace(iva_diversa_evadi.sql.text, 'x1x1', 'ovr', [rfreplaceall]);
                end;
                iva_diversa_evadi.parambyname('progressivo').asinteger := tabella.parambyname('progressivo').asinteger;
                iva_diversa_evadi.open;
                if iva_diversa_evadi.recordcount > 1 then
                begin
                  messaggio(200, 'non è possibile evadere il documento perché sono presenti codici iva non compatibili');
                  prosegui := false;
                end
                else
                begin
                  iva_diversa_evadi.close;
                  iva_diversa_evadi.sql.clear;
                  iva_diversa_evadi.sql.add('select distinct tiv.controllo_su_documenti');
                  iva_diversa_evadi.sql.add('from x1x1');
                  iva_diversa_evadi.sql.add('inner join tiv on tiv.codice = x1x1.tiv_codice');
                  iva_diversa_evadi.sql.add('where x1x1.progressivo = :progressivo');

                  if tipo_documento = 'preventivo' then
                  begin
                    iva_diversa_evadi.sql.text := stringreplace(iva_diversa_evadi.sql.text, 'x1x1', 'pvr', [rfreplaceall]);
                  end
                  else
                  begin
                    iva_diversa_evadi.sql.text := stringreplace(iva_diversa_evadi.sql.text, 'x1x1', 'ovr', [rfreplaceall]);
                  end;
                  iva_diversa_evadi.parambyname('progressivo').asinteger := tabella.parambyname('progressivo').asinteger;
                  iva_diversa_evadi.open;
                  if iva_diversa_evadi.recordcount > 1 then
                  begin
                    messaggio(200, 'non è possibile evadere il documento perché sono presenti codici iva non compatibili');
                    prosegui := false;
                  end;
                end;
              end;

              if prosegui then
              begin
                v_evasione_documento.enabled := false;

                crea_documento_derivato.testata_origine := tabella;
                crea_documento_derivato.righe_origine := tabella_righe;
                crea_documento_derivato.cli := cli;
                crea_documento_derivato.tag := tag;
                crea_documento_derivato.tr0 := tr0;
                crea_documento_derivato.tdo_codice_evasione := tdo_codice_evasione;
                if (cli.fieldbyname('tdo_codice').asstring <> '') and
                  (cli.fieldbyname('tdo_codice').asstring <> tdo_codice_evasione) then
                begin
                  if messaggio(300, 'il cliente ha memorizzato in anagrafica un codice documento' + #13#10 +
                    'diverso da quello standard di evasione diretta dei documenti: [' +
                    cli.fieldbyname('tdo_codice').asstring + ']' + #13#10 + #13#10 +
                    'confermare per utilizzarlo invece dello standard') = 1 then
                  begin
                    crea_documento_derivato.tdo_codice_evasione := cli.fieldbyname('tdo_codice').asstring;
                  end;
                end;
                crea_documento_derivato.incremento_righe := incremento_righe;
                crea_documento_derivato.crea_documento_derivato;

                //  eredita documenti collegati
                eredita_documenti_collegati(tipo_documento, crea_documento_derivato.tipo_documento, tabella.fieldbyname('progressivo').asinteger, crea_documento_derivato.progressivo_evasione);

                esegui_programma(crea_documento_derivato.documento, crea_documento_derivato.progressivo_evasione, true);

                if not avviso_fuori_fido then
                begin
                  fuori_fido(true);
                  avviso_fuori_fido := false;
                end;

                abilita_codice;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.v_tcc_codiceexit(sender: tobject);
begin
  inherited;
  tcc_codice_controllo(true);
end;

procedure tgesven.tcc_codice_controllo(blocco: boolean);
begin
  if v_tcc_codice.enabled then
  begin
    tabella_controllo(true, tcc, v_tcc_codice, blocco, tab_control, tab_testata_riferimento, tabella);
  end
  else
  begin
    tcc.close;
    tcc.params[0].value := null;
    tcc.open;
  end;
end;

procedure tgesven.controllo_rda_oar_opt(operazione: string);
var
  stringa: string;
begin
  if tipo_documento = 'ordine' then
  begin
    query_rda.close;
    query_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
    query_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
    query_rda.open;
    while not query_rda.eof do
    begin
      if query_rda.fieldbyname('archivio').asstring = 'rda' then
      begin
        messaggio(100, 'la riga ' + operazione + ' è presente nell''archivio' + #13 +
          'delle richieste di approvvigionamento' + #13 +
          'in situazione [' + query_rda.fieldbyname('situazione').asstring + ']' + #13 +
          'con articolo ' + query_rda.fieldbyname('art_codice').asstring +
          '  e quantità ' + query_rda.fieldbyname('quantita').asstring + slinebreak + slinebreak +
          'la richiesta d''acquisto verrà cancellata');
        rda.close;
        rda.parambyname('progressivo').asinteger := query_rda.fieldbyname('progressivo').asinteger;
        rda.open;
        if not rda.isempty then
        begin
          rda.delete;
        end;
      end
      else if query_rda.fieldbyname('archivio').asstring = 'oar' then
      //        (query_rda.fieldbyname('ovr_riga_cnf').asinteger = 0) then
      begin
        messaggio(100, 'per la riga ' + operazione + ' è stato emesso un ordine di acquisto ' + #13 +
          'con il progressivo: ' + inttostr(query_rda.fieldbyname('progressivo').asinteger) + #13 +
          'in situazione [' + query_rda.fieldbyname('situazione').asstring + ']' + #13 + #13 +
          'con articolo ' + query_rda.fieldbyname('art_codice').asstring +
          '  e quantità ' + query_rda.fieldbyname('quantita').asstring + slinebreak + slinebreak +
          'l''ordine emesso a fornitore non è più congruente con l''ordine del cliente.' + slinebreak + slinebreak +
          'Valutare come gestire la situazione');

        oar.close;
        oar.parambyname('progressivo').asinteger := query_rda.fieldbyname('progressivo').asinteger;
        oar.parambyname('riga').asinteger := query_rda.fieldbyname('riga').asinteger;
        oar.open;
        if not oar.isempty then
        begin
          oar.edit;

          if oar.fieldbyname('note_interne').asstring <> '' then
          begin
            oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring + #13;
          end;
          oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring +
            'l''ordine è stato emesso a fronte del documento' + #13 +
            oar.fieldbyname('ovr_tipo').asstring + #13 +
            'progressivo: ' + inttostr(oar.fieldbyname('ovr_progressivo').asinteger) + #13 +
            'riga: ' + inttostr(oar.fieldbyname('ovr_riga').asinteger) + #13 +
            'che è stata ' + operazione;
          if operazione = 'modificata' then
          begin
            if vecchio_art_codice <> v_art_codice.text then
            begin
              oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring + #13 +
                'vecchio codice articolo: ' + vecchio_art_codice + #13 +
                'nuovo codice articolo: ' + v_art_codice.text;
            end;
            if arrotonda(vecchio_quantita, 4) <> arrotonda(v_quantita.value, 4) then
            begin
              oar.fieldbyname('note_interne').asstring := oar.fieldbyname('note_interne').asstring + #13 +
                'vecchia quantità: ' + formatfloat(formato_display_quantita, vecchio_quantita) + #13 +
                'nuova quantità: ' + formatfloat(formato_display_quantita, v_quantita.value);
            end;
          end;

          (*
            oar.fieldbyname('ovr_tipo').asstring := '';
            oar.fieldbyname('ovr_progressivo').asinteger := 0;
            oar.fieldbyname('ovr_riga').asinteger := 0;
          *)

          oar.post;

          riga_ordine_modificata(operazione, 'oar', oar.fieldbyname('utente').asstring);
        end;
      end;

      query_rda.next;
    end;
    query_rda.close;

    query_opt.close;
    query_opt.params[0].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
    query_opt.params[1].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    query_opt.open;
    while not query_opt.eof do
    begin
      stringa := 'per la riga ' + operazione + ' è stato emesso un ordine di produzione ' + slinebreak +
        'con il progressivo: ' + inttostr(query_opt.fieldbyname('progressivo').asinteger) + slinebreak +
        'in situazione [' + query_opt.fieldbyname('situazione').asstring + ']' + slinebreak + slinebreak;
      if operazione = 'modificata' then
      begin
        stringa := stringa + 'verra eseguito il programma di gestione dell''ordine di produzione' + slinebreak +
          'per allineare le modifiche eseguite sul documento';
      end
      else
      begin
        stringa := stringa + 'il riferimento verrà cancellato';
      end;
      messaggio(100, stringa);

      opt.close;
      opt.parambyname('progressivo').asinteger := query_opt.fieldbyname('progressivo').asinteger;
      opt.open;
      if not opt.isempty then
      begin
        if operazione = 'modificata' then
        begin
          esegui_programma('GESORDP', opt.fieldbyname('progressivo').asinteger, true);
        end
        else
        begin
          opt.edit;

          if opt.fieldbyname('descrizione').asstring <> '' then
          begin
            opt.fieldbyname('descrizione').asstring := opt.fieldbyname('descrizione').asstring + #13;
          end;
          opt.fieldbyname('descrizione').asstring := opt.fieldbyname('descrizione').asstring +
            'l''ordine è stato emesso a fronte dell''ordine cliente' + #13 +
            'progressivo: ' + opt.fieldbyname('doc_progressivo_origine').asstring + #13 +
            'riga: ' + opt.fieldbyname('doc_riga_origine').asstring + #13 +
            'che è stata ' + operazione;
          if operazione = 'modificata' then
          begin
            if vecchio_art_codice <> v_art_codice.text then
            begin
              opt.fieldbyname('descrizione').asstring := opt.fieldbyname('descrizione').asstring + #13 +
                'vecchio codice articolo: ' + vecchio_art_codice + #13 +
                'nuovo codice articolo: ' + v_art_codice.text;
            end;
            if arrotonda(vecchio_quantita, 4) <> arrotonda(v_quantita.value, 4) then
            begin
              opt.fieldbyname('descrizione').asstring := opt.fieldbyname('descrizione').asstring + #13 +
                'vecchia quantità: ' + formatfloat(formato_display_quantita, vecchio_quantita) + #13 +
                'nuova quantità: ' + formatfloat(formato_display_quantita, v_quantita.value);
            end;
          end;

          opt.fieldbyname('documento_origine').asstring := '';
          opt.fieldbyname('doc_progressivo_origine').asinteger := 0;
          opt.fieldbyname('doc_riga_origine').asinteger := 0;
          opt.fieldbyname('ovr_progressivo').asinteger := 0;
          opt.fieldbyname('ovr_riga').asinteger := 0;

          riga_ordine_modificata(operazione, 'opt', opt.fieldbyname('utente').asstring);

          opt.post;
        end;
      end;

      query_opt.next;
    end;

    query_opt.close;
  end;
end;

procedure tgesven.riga_ordine_modificata(operazione, tipo_file, utente_origine: string);
begin
  msg.open;
  msg.append;

  msg.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(msg.connection), 'MSG_PROGRESSIVO');
  msg.parambyname('progressivo').asinteger := msg.fieldbyname('progressivo').asinteger;
  msg.fieldbyname('utn_codice_destinatario').asstring := utente_origine;
  msg.fieldbyname('data_invio').asdatetime := now;
  if tipo_file = 'oar' then
  begin
    msg.fieldbyname('descrizione').asstring := operazione + ' riga ordine: ' + tabella_righe.fieldbyname('progressivo').asstring +
      '/' + tabella_righe.fieldbyname('riga').asstring + ' ordinata in: ' +
      oar.fieldbyname('progressivo').asstring + '/' + oar.fieldbyname('riga').asstring;
  end
  else if tipo_file = 'opt' then
  begin
    msg.fieldbyname('descrizione').asstring := operazione + ' riga ordine: ' + tabella_righe.fieldbyname('progressivo').asstring +
      '/' + tabella_righe.fieldbyname('riga').asstring + ' in produzione in: ' +
      opt.fieldbyname('progressivo').asstring;
  end;
  msg.fieldbyname('letto').asstring := 'no';
  msg.fieldbyname('mittente').asstring := utente;
  msg.post;
  msg.refresh;

  //  msg risp
  invio_msg_risp(msg, msg.fieldbyname('descrizione').asstring, true);
end;

procedure TGESVEN.RzRapidFireButton1Click(Sender: TObject);
begin
  inherited;
  if (tabella.fieldbyname('id_sdi').asstring <> '') or
    (tabella.fieldbyname('messaggio_esito_sdi').asstring <> '') then
  begin
    messaggio(100, 'id sdi ' + slinebreak + tabella.fieldbyname('id_sdi').asstring + slinebreak + slinebreak +
      'messaggio sdi' + slinebreak +
      tabella.fieldbyname('messaggio_esito_sdi').asstring);
  end;
end;

procedure TGESVEN.RzRapidFireButton2Click(Sender: TObject);
begin
  inherited;
  if v_ritenuta_manuale.checked and (v_tpe_codice.text <> '') then
  begin
    messaggio(100, 'calcolo ritenuta sul totale imponibile [' +
      formatfloat(',0.00;-,0.00;0.00', tabella.fieldbyname('importo_totale_imponibile').asfloat) + ']');
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('importo_ritenuta').asfloat := arrotonda
        (tabella.fieldbyname('importo_totale_imponibile').asfloat *
        (100 - tpe.fieldbyname('abbattimento_irpef').asfloat) * tpe.fieldbyname('percentuale_ritenuta').asfloat / 10000);
      fuoco(v_importo_ritenuta);
    end;
  end
  else
  begin
    messaggio(200, 'deve essere attivata l''assegnazione manuale' + slinebreak +
      'e assegnato un codice ritenuta');
  end;
end;

procedure tgesven.v_esistenza_principalechange(sender: tobject);
begin
  inherited;
  if v_esistenza_principale.value > 0 then
  begin
    v_esistenza_principale.color := cllime;
  end
  else if v_esistenza_principale.value < 0 then
  begin
    v_esistenza_principale.color := clred;
  end
  else
  begin
    v_esistenza_principale.color := clyellow;
  end;
end;

procedure tgesven.v_configurazioneclick(sender: tobject);
begin
  inherited;

  if gestione_configurazione = 'si' then
  begin
    if art.fieldbyname('gestione_configurazione').asstring = 'si' then
    begin
      esegui_configurazione(true);
    end
    else
    begin
      messaggio(100, 'l''articolo non prevede la gestione delle configurazioni');
    end;
  end
  else
  begin
    messaggio(100, 'il codice documento non prevede la gestione delle configurazioni');
  end;
end;

procedure tgesven.esegui_configurazione(click: boolean = false);
var
  prezzo, importo_iniziale, importo_finale, costo: double;
  esiste_cnf, forzatura_prezzo, prosegui: boolean;
begin
  importo_iniziale := 0;

  if tabella_righe.fieldbyname('configurazione').asinteger = 0 then
  begin
    cnt.close;
    cnt.open;
    if cnt.eof then
    begin
      cnt.append;
      cnt.fieldbyname('anno').asstring := '';
      cnt.fieldbyname('tipo').asstring := 'CONFIGURAZIONE';
      cnt.fieldbyname('sottotipo').asstring := '';
      cnt.post;
      cnt.close;
      cnt.open;
    end;
    cnt.edit;

    cnt.fieldbyname('progressivo').asfloat := arrotonda
      (cnt.fieldbyname('progressivo').asfloat + 1, 0);
    cnt.fieldbyname('data_aggiornamento').asdatetime := now;

    cnt.post;

    tabella_righe.edit;
    tabella_righe.fieldbyname('configurazione').asinteger := trunc(cnt.fieldbyname('progressivo').asfloat);
    if click then
    begin
      tabella_righe.post;
    end;

    esiste_cnf := false;
  end
  else
  begin
    esiste_cnf := true;
  end;

  if arc.dit.fieldbyname('configurazione_come_note').asstring = 'si' then
  begin
    cnf_totale.close;
    cnf_totale.params[0].asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
    cnf_totale.open;
    importo_iniziale := cnf_totale.fieldbyname('importo').asfloat;
  end;

  prezzo := 0;
  costo := 0;
  forzatura_prezzo := false;
  codice_passato := vararrayof([tabella_righe.fieldbyname('configurazione').asinteger, 0]);
  esegui_carcnf(codice_passato, esiste_cnf, v_cli_codice.text, v_indirizzo.text, v_tlv_codice.text,
    v_tva_codice.text, v_art_codice.text, tabella_righe.fieldbyname('tma_codice').asstring,
    v_data_documento.date, v_cambio.value, tabella_righe.fieldbyname('tum_quantita_base').asfloat,
    prezzo, costo, tipo_prezzo, forzatura_prezzo, tipo_documento,
    tag.fieldbyname('prezzo_netto_sconti').asstring, v_tdo_codice.text,
    tabella.fieldbyname('listino_con_iva').asstring,
    tabella_righe.fieldbyname('progressivo').asinteger, tabella_righe.fieldbyname('riga').asinteger);

  cnf.close;
  cnf.params[0].asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
  cnf.open;

  cnl.close;
  cnl.params[0].asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
  cnl.open;

  if cnf.eof and cnl.eof then
  begin
    tabella_righe.edit;
    tabella_righe.fieldbyname('configurazione').asinteger := 0;
    v_configurazione.font.color := clwindowtext;
    if click then
    begin
      tabella_righe.post;
    end;
  end
  else
  begin
    if arc.dit.fieldbyname('configurazione_come_note').asstring = 'si' then
    begin
      cnf_totale.close;
      cnf_totale.params[0].asinteger := tabella_righe.fieldbyname('configurazione').asinteger;
      cnf_totale.open;
      importo_finale := cnf_totale.fieldbyname('importo').asfloat;

      if tabella_edit(tabella_righe) then
      begin
        //tabella_righe.fieldbyname('prezzo').asfloat := 0;

        tabella_righe.fieldbyname('prezzo').asfloat := importo_finale;

        tabella_righe.fieldbyname('tsm_codice').asstring := '';
        tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
        tabella_righe.fieldbyname('importo_sconto').asfloat := 0;
        (*
          tabella_righe.fieldbyname('importo').asfloat := tabella_righe.fieldbyname('importo').asfloat +
          arrotonda(tabella_righe.fieldbyname('quantita').asfloat * (importo_finale - importo_iniziale));
        *)

        prosegui := true;
        if trim(tabella_righe.fieldbyname('note').asstring) <> '' then
        begin
          if messaggio(304, 'sono già presenti le seguenti note' + #13 + #13 +
            tabella_righe.fieldbyname('note').asstring + #13 + #13 +
            'conferma per aggiungere configurazione') <> 1 then
          begin
            prosegui := false;
          end;
        end;

        if prosegui then
        begin
          while not cnf.eof do
          begin
            read_tabella(arc.arcdit, 'art', 'codice', cnf.fieldbyname('art_codice').asstring, 'descrizione1, descrizione2');
            tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 +
              trim(archivio.fieldbyname('descrizione1').asstring) + ' ' + archivio.fieldbyname('descrizione2').asstring;

            cnf.next;
          end;
        end;

        calcola_importo;

        if tabella_righe.fieldbyname('quantita').asfloat = 0 then
        begin
          tabella_righe.fieldbyname('costo_unitario').asfloat := costo;
        end
        else
        begin
          tabella_righe.fieldbyname('costo_unitario').asfloat := costo / tabella_righe.fieldbyname('quantita').asfloat;
        end;

        if click then
        begin
          tabella_righe.post;
        end;
      end;
    end
    else
    begin
      if tabella_edit(tabella_righe) then
      begin
        if tabella_righe.fieldbyname('quantita').asfloat = 0 then
        begin
          tabella_righe.fieldbyname('costo_unitario').asfloat := costo;
        end
        else
        begin
          tabella_righe.fieldbyname('costo_unitario').asfloat := costo / tabella_righe.fieldbyname('quantita').asfloat;
        end;

        if click then
        begin
          tabella_righe.post;
        end;
      end;

      v_configurazione.font.color := clred;
      if (tabella_righe.fieldbyname('importo').asfloat = 0) or (forzatura_prezzo) then
      begin
        if tabella_righe.fieldbyname('quantita').asfloat = 0 then
        begin
          aggiorna_totali_testata := true;
          aggiorna_totali_colli := true;

          tabella_righe.edit;
          tabella_righe.fieldbyname('prezzo').asfloat := 0;
          tabella_righe.fieldbyname('tsm_codice').asstring := '';
          tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
          tabella_righe.fieldbyname('importo_sconto').asfloat := 0;
          tabella_righe.fieldbyname('importo').asfloat := prezzo;
          calcola_importo;
          assegna_provvigioni;
          if click then
          begin
            tabella_righe.post;
          end;
        end
        else
        begin
          if (prezzo <> 0) and (arrotonda(prezzo, cifre_decimali_prezzo) <> arrotonda(tabella_righe.fieldbyname('prezzo').asfloat, cifre_decimali_prezzo)) then
          begin
            aggiorna_totali_testata := true;
            aggiorna_totali_colli := true;

            tabella_righe.edit;
            tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
            calcola_importo;
            assegna_provvigioni;
            if click then
            begin
              tabella_righe.post;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.annulla_dataset;
begin
  inherited;

  esistenza_deposito_ds.dataset := nil;
  esistenza_totale_ds.dataset := nil;
end;

procedure tgesven.assegna_dataset;
begin
  inherited;

  esistenza_deposito_ds.dataset := esistenza_deposito;
  esistenza_totale_ds.dataset := esistenza_totale;
end;

procedure tgesven.approntamento_riga;
var
  mag: tmyquery_go;
  quantita: double;
begin
  if tabella_righe.state <> dsbrowse then
  begin
    messaggio(200, 'la riga non deve essere in gestione');
  end
  else if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') or
    (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale') then
  begin
    if art.fieldbyname('tipo_articolo').asstring = 'fiscale' then
    begin
      quantita := 0;

      mag := tmyquery_go.create(nil);
      mag.connection := arc.arcdit;
      mag.sql.text := 'select (esistenza - approntato) disponibilita from mag ' +
        'where art_codice = :art_codice and tma_codice = :tma_codice';
      read_tabella(mag, vararrayof([tabella_righe.fieldbyname('art_codice').asstring, tabella_righe.fieldbyname('tma_codice').asstring]));

      if mag.fieldbyname('disponibilita').asfloat <= 0 then
      begin
        if messaggio(304, 'articolo [' + tabella_righe.fieldbyname('art_codice').asstring + '  ' +
          tabella_righe.fieldbyname('descrizione1').asstring + ']' + slinebreak + slinebreak +
          'non c''è disponibilità per l''approntamento' + slinebreak +
          'conferma per approntare comunque tutta la quantità in ordine') = 1 then
        begin
          quantita := tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat -
            tabella_righe.fieldbyname('quantita_approntata').asfloat;
        end;
      end
      else
      begin
        if (tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat -
          tabella_righe.fieldbyname('quantita_approntata').asfloat) < mag.fieldbyname('disponibilita').asfloat then
        begin
          quantita := tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat -
            tabella_righe.fieldbyname('quantita_approntata').asfloat;
        end
        else
        begin
          quantita := mag.fieldbyname('disponibilita').asfloat;
        end;
      end;

      freeandnil(mag);

      if quantita > 0 then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('quantita_approntata').asfloat := quantita;
          tabella_righe.fieldbyname('tum_quantita_approntata_base').asfloat := arrotonda
            (quantita * tabella_righe.fieldbyname('tum_quantita_base').asfloat / tabella_righe.fieldbyname('quantita').asfloat, 4);

          if quantita <> tabella_righe.fieldbyname('quantita').asfloat - tabella_righe.fieldbyname('quantita_evasa').asfloat then
          begin
            tabella_righe.fieldbyname('evadere_approntato').asstring := 'no';
          end
          else
          begin
            tabella_righe.fieldbyname('evadere_approntato').asstring := 'si';
          end;

          tabella_righe.post;
        end;
      end;
    end;
  end;
end;

procedure TGESVEN.tool_ctrl_f1Click(Sender: TObject);
begin
  if selezione_stampa = 'standard' then
  begin
    inherited;
  end;
end;

function tgesven.selezione_stampa: string;
var
  pr: timpalf;
  pr1: tstaprevint;
  pr2: tstaprevcli;
  pr3: tstaordvint;
  pr4: tstaordvcli;
begin
  result := 'standard';

  if ((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine')) and
    (tdo.fieldbyname('stampa_standard_preventivo').asstring = 'no') then
  begin
    pr := timpalf.create(nil);
    pr.v_form_caption := 'Tipo stampa "stile capitolato"';
    pr.v_descrizione_caption := 'modalità stampa';
    pr.v_width_campo := 30;
    pr.valore_passato := 'standard;stampa interna;stampa per cliente';
    pr.tipo_campo := 'combo';
    pr.showmodal;
    result := pr.valore_passato;
    freeandnil(pr);
  end;

  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    if result = 'stampa interna' then
    begin
      pr1 := tstaprevint.create(nil);
      pr1.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr1.showmodal;
      freeandnil(pr1);
    end;

    if result = 'stampa per cliente' then
    begin
      pr2 := tstaprevcli.create(nil);
      pr2.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr2.showmodal;
      freeandnil(pr2);
    end;
  end;

  if tipo_documento = 'ordine' then
  begin
    if result = 'stampa interna' then
    begin
      pr3 := tstaordvint.create(nil);
      pr3.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr3.showmodal;
      freeandnil(pr3);
    end;

    if result = 'stampa per cliente' then
    begin
      pr4 := tstaordvcli.create(nil);
      pr4.progressivo := tabella.fieldbyname('progressivo').asinteger;
      pr4.showmodal;
      freeandnil(pr4);
    end;
  end;
end;

procedure tgesven.tool_documenti_allegaticlick(sender: tobject);
var
  pr: tgesdav;
begin
  inherited;

  if v_progressivo.value <> 0 then
  begin
    pr := tgesdav.create(nil);
    if pr.esegui_form then
    begin
      pr.progressivo := trunc(v_progressivo.value);
      if parte_attiva = 'griglia_righe' then
      begin
        pr.riga_origine := tabella_righe.fieldbyname('riga').asinteger;
      end;
      pr.tipo_documento := tipo_documento;
      if screen.activecontrol = v_griglia_righe then
      begin
        pr.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
      end;
      pr.showmodal;
    end;
    pr.free;
  end;
end;

procedure tgesven.v_esistenzaclick(sender: tobject);
var
  totale_costo: double;
  stringa: string;
begin
  inherited;
  esegui_esistenza(tabella_righe.fieldbyname('tma_codice').asstring);
  if (importi_vendite <> 'nascondi') and (calcolo_margine = 'si') then
  begin
    if v_quantita.value <> 0 then
    begin
      totale_costo := tabella_righe.fieldbyname('tum_quantita_base').asfloat * tabella_righe.fieldbyname('costo_unitario').asfloat;
      stringa := 'ricarico articolo = ' + formatfloat(formato_display_importo, arrotonda(v_importo.value - totale_costo));
    end
    else
    begin
      totale_costo := tabella_righe.fieldbyname('costo_unitario').asfloat;
      stringa := 'ricarico articolo = ' + formatfloat(formato_display_importo, arrotonda(v_importo.value - totale_costo));
    end;

    if v_importo.value <> 0 then
    begin
      stringa := stringa + #13 + '% margine ' + #9 + ': ' + formatfloat(formato_display_percentuale, arrotonda((v_importo.value - totale_costo) * 100 / v_importo.value));
    end;
    if totale_costo <> 0 then
    begin
      stringa := stringa + #13 + '% ricarico: ' + #9 + ': ' + formatfloat(formato_display_percentuale, arrotonda((v_importo.value - totale_costo) * 100 / totale_costo));
    end;

    messaggio(300, stringa);
  end;
end;

(*
  procedure TGESVEN.assegna_giorno;
  var
  i, giorno: word;
  stringa: string;
  begin
  inherited;

  stringa := '';
  if v_consegna_domenica.checked then
  begin
  stringa := stringa + '1';
  end
  else
  begin
  stringa := stringa + '0';
  end;

  if v_consegna_lunedi.checked then
  begin
  stringa := stringa + '1';
  end
  else
  begin
  stringa := stringa + '0';
  end;

  if v_consegna_martedi.checked then
  begin
  stringa := stringa + '1';
  end
  else
  begin
  stringa := stringa + '0';
  end;

  if v_consegna_mercoledi.checked then
  begin
  stringa := stringa + '1';
  end
  else
  begin
  stringa := stringa + '0';
  end;

  if v_consegna_giovedi.checked then
  begin
  stringa := stringa + '1';
  end
  else
  begin
  stringa := stringa + '0';
  end;

  if v_consegna_venerdi.checked then
  begin
  stringa := stringa + '1';
  end
  else
  begin
  stringa := stringa + '0';
  end;

  if v_consegna_sabato.checked then
  begin
  stringa := stringa + '1';
  end
  else
  begin
  stringa := stringa + '0';
  end;

  if stringa <> '0000000' then
  begin
  giorno := dayofweek(tabella.fieldbyname('data_documento').asdatetime);

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
  tabella.fieldbyname('data_inizio_trasporto').asdatetime := tabella.fieldbyname('data_documento').asdatetime + i;
  giorno := 0;
  end;
  end;
  end;
  end;
*)

procedure tgesven.v_consolidaclick(sender: tobject);
begin
  if not esercizio_diverso then
  begin
    inherited;
    codice_passato := vararrayof([tipo_documento, v_progressivo.value, '']);
    esegui_programma('CONDOCV', codice_passato, true);
    tabella.refresh;
    tabella_righe.refresh;

    abilita_codice;
  end;
end;

procedure tgesven.assegna_contatto_commerciale;
var
  pr: tvisrif;
begin
  pr := tvisrif.create(nil);
  if pr.esegui_form then
  begin
    pr.nom_codice := v_cli_codice.text;
    pr.showmodal;

    if pr.descrizione <> '' then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('contatto_commerciale').asstring := pr.descrizione;
      end;
    end;
  end;
  pr.free;
end;

procedure tgesven.formkeydown(sender: tobject;
  var
  key: word;
  shift:
  tshiftstate);
var
  pr: timpalf;
  pr1: tvisfatnc;
  pr2: tlavvet;
  pr4: tevarma;
  i: word;
  tcd_codice, lingua: string;

  progressivo_modello: variant;
  eticol: teticol;
begin
  if (key = vk_f1) and (shift = [ssctrl]) then
  begin
    if selezione_stampa = 'standard' then
    begin
      stampa;
    end;
  end
  else
  begin
    if (parte_attiva = 'pannello_codice') and (key = vk_f2) and (shift = [ssshift, ssctrl]) then
    begin
      if (tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or (tipo_documento = 'ddt') or
        (tipo_documento = 'ddt fornitori') or (tipo_documento = 'fattura accompagnatoria') then
      begin
        eticol := teticol.create(nil);
        if eticol.esegui_form then
        begin
          eticol.tipo_documento := tabella.fieldbyname('tipo_documento').asstring;
          eticol.data_documento := tabella.fieldbyname('data_documento').asdatetime;
          eticol.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
          eticol.serie_documento := tabella.fieldbyname('serie_documento').asstring;
          eticol.showmodal;
        end;
        eticol.free;
      end;
    end;

    if (screen.activecontrol = v_bottone_nuovo) or (screen.activecontrol = v_progressivo) then
    begin
      if ((key = vk_f2) and (shift = [ssctrl])) then
      begin
        progressivo_modello := 0;
        if tipo_documento = 'preventivo nominativi' then
        begin
          esegui_visarc(arc.arcdit, 'PVT', 'PVTMODNOM', progressivo_modello, tipo_documento, 'si', '', '', '', '');
        end
        else if tipo_documento = 'preventivo' then
        begin
          esegui_visarc(arc.arcdit, 'PVT', 'PVTMOD', progressivo_modello, tipo_documento, 'si', '', '', '', '');
        end
        else if tipo_documento = 'ordine' then
        begin
          esegui_visarc(arc.arcdit, 'OVT', 'OVTMOD', progressivo_modello, tipo_documento, 'si', '', '', '', '');
        end;

        if progressivo_modello <> 0 then
        begin
          read_tabella(tabella, progressivo_modello);
          selectnext(screen.activecontrol, true, true);
        end;
      end;
    end;

    if (screen.activecontrol.parent = tab_testata_spedizione) and (key = vk_f11) and (shift = []) then
    begin
      totalizza_colli('manuale');
    end
    else if (screen.activecontrol = v_contatto_commerciale) and (key = vk_f4) and (shift = []) then
    begin
      assegna_contatto_commerciale;
    end
    else if (screen.activecontrol = v_quantita) then
    begin
      if (key = vk_f1) and (shift = [ssshift]) then
      begin
        pr := timpalf.create(nil);
        pr.v_form_caption := 'formula libera';
        pr.v_descrizione_caption := 'formula';
        pr.v_width_campo := 80;
        pr.valore_passato := '';
        pr.tipo_campo := 'alfa';
        pr.showmodal;
        if pr.valore_passato <> '' then
        begin
          try
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('formula').asstring := pr.valore_passato;
              tabella_righe.fieldbyname('quantita').asfloat := getformulavalue(pr.valore_passato);
            end;
          except
          end;
        end;
        pr.free;
      end
      else if (key = vk_f2) and (shift = [ssshift]) then
      begin
        if art.fieldbyname('lavorazione_vetrerie').asstring <> 'nessuna' then
        begin
          pr2 := tlavvet.create(nil);
          pr2.lavorazione_vetrerie := art.fieldbyname('lavorazione_vetrerie').asstring;
          pr2.testo_query := tabella_righe.sql.text;
          pr2.progressivo := tabella_righe.fieldbyname('progressivo').asinteger;
          pr2.showmodal;
          if pr2.quantita <> 0 then
          begin
            if tabella_edit(tabella_righe) then
            begin
              tabella_righe.fieldbyname('quantita').asfloat := pr2.quantita;
              tabella_righe.fieldbyname('note').asstring := pr2.note;
            end;
          end;
          pr2.free;
        end;
      end
      else
      begin
        inherited;
      end;
    end
    else
    begin
      if (key = vk_delete) and (shift = [ssctrl]) and (screen.activecontrol = v_griglia_righe) and
        (v_griglia_righe.selectedrows.count > 1) then
      begin
        for i := 0 to v_griglia_righe.selectedrows.count - 1 do
        begin
          v_griglia_righe.datasource.dataset.gotobookmark(pointer(v_griglia_righe.selectedrows.items[i]));
          cancella_record_righe;
        end;
        v_griglia_righe.selectedrows.clear;
      end
      else
      begin
        if (key = vk_f6) and (shift = [ssctrl]) and (screen.activecontrol = v_griglia_righe) and (tabella_righe.fieldbyname('art_codice').asstring <> '') then
        begin
          key := 0;
          esegui_programma('CRUART', tabella_righe.fieldbyname('art_codice').asstring, true);
        end
        else if (key = vk_f4) and (shift = []) and (screen.activecontrol = v_note) then
        begin
          key := 0;
          codice_archivio := '';
          esegui_visarc(arc.arcdit, 'TCD', 'TCD', codice_archivio, '', '', '', '', '', 'gestcd');
          if codice_archivio <> '' then
          begin
            read_tabella(arc.arcdit, 'nom', 'codice', tabella.fieldbyname('cli_codice').asstring);
            lingua := archivio.fieldbyname('lingua').asstring;
            tcd_codice := codice_archivio;
            if read_tabella(arc.arcdit, 'tcd', 'codice', tcd_codice) then
            begin
              if tabella_edit(tabella) then
              begin
                if lingua = lingua_nominativi then
                begin
                  tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
                    archivio.fieldbyname('note').asstring;
                end
                else if lingua = arc.lin.fieldbyname('lingua_01').asstring then
                begin
                  tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
                    archivio.fieldbyname('note_lingua_01').asstring;
                end
                else if lingua = arc.lin.fieldbyname('lingua_02').asstring then
                begin
                  tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
                    archivio.fieldbyname('note_lingua_02').asstring;
                end
                else if lingua = arc.lin.fieldbyname('lingua_03').asstring then
                begin
                  tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
                    archivio.fieldbyname('note_lingua_03').asstring;
                end
                else if lingua = arc.lin.fieldbyname('lingua_04').asstring then
                begin
                  tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
                    archivio.fieldbyname('note_lingua_04').asstring;
                end
                else if lingua = arc.lin.fieldbyname('lingua_05').asstring then
                begin
                  tabella.fieldbyname('note').asstring := tabella.fieldbyname('note').asstring + #13 +
                    archivio.fieldbyname('note_lingua_05').asstring;
                end;
              end;
            end;
          end;
        end
        else
        begin
          if (screen.activecontrol = v_griglia_righe) then
          begin
            if (key = vk_f1) and (shift = []) and v_analitica.enabled then
            begin
              esegui_analitica('righe');
            end
            else if (key = vk_f2) and (shift = []) and v_commesse.enabled then
            begin
              esegui_commesse;
            end
            else if (key = vk_f3) and (shift = []) and v_conto_terzi.enabled then
            begin
              v_conto_terziclick(nil);
            end
            else if (key = vk_f4) and (shift = []) and v_lotti.enabled then
            begin
              esegui_lotti;
            end
            else if (key = vk_f5) and (shift = []) and v_accessori.enabled then
            begin
              v_accessoriclick(nil);
            end
            else if (key = vk_f6) and (shift = []) and v_distinta_base.enabled then
            begin
              v_distinta_baseclick(nil);
            end
            else if (key = vk_f7) and (shift = []) and v_configurazione.enabled then
            begin
              key := 0;
              v_configurazioneclick(nil);
            end
            else if (key = vk_f8) and (shift = []) and v_lettore.enabled then
            begin
              v_lettoreclick(nil);
            end
            else if (key = vk_f11) and (shift = []) and v_documenti_acquisto.enabled then
            begin
              v_documenti_acquistoclick(nil);
            end;
          end;

          if (screen.activecontrol = v_art_codice) and (key = vk_f9) and (shift = [ssalt]) and
            ((tipo_documento = 'ddt fornitori') or (tipo_documento = 'ddt') or (tipo_documento = 'fattura accompagnatoria') or
            (tipo_documento = 'nota credito')) and
            not esiste_righe and (tdo.fieldbyname('rma').asstring = 'si') then
          begin
            pr4 := tevarma.create(nil);
            pr4.modulo := 'vendite';
            pr4.tipo_documento := tipo_documento;
            pr4.cfg_codice := tabella.fieldbyname('cli_codice').asstring;
            pr4.art_codice := v_art_codice.text;
            pr4.showmodal;
            if pr4.progressivo <> 0 then
            begin
              progressivo_rma := pr4.progressivo;
              if tabella_edit(tabella_righe) then
              begin
                tabella_righe.fieldbyname('art_codice').asstring := pr4.art_codice;

                if tabella_righe.fieldbyname('note').asstring = '' then
                begin
                  tabella_righe.fieldbyname('note').asstring := pr4.note_documento;
                end
                else
                begin
                  tabella_righe.fieldbyname('note').asstring := tabella_righe.fieldbyname('note').asstring + #13 + #13 +
                    pr4.note_documento;
                end;

                if tabella_righe.fieldbyname('note_interne').asstring = '' then
                begin
                  tabella_righe.fieldbyname('note_interne').asstring := pr4.note_interne;
                end
                else
                begin
                  tabella_righe.fieldbyname('note_interne').asstring := tabella_righe.fieldbyname('note_interne').asstring + #13 + #13 +
                    pr4.note_interne;
                end;
              end;
            end;
            pr4.free;
          end;

          if (screen.activecontrol = v_codice_contratto) and (key = vk_f4) and (shift = []) then
          begin
            assegna_contratto_scalare;
          end
          else
          begin
            if screen.activecontrol = v_art_codice then
            begin
              if (key = vk_return) and (shift = []) then
              begin
                selectnext(v_art_codice, true, true);
              end;
            end;
            if (((key = vk_insert) and (shift = [])) or
              ((key = vk_return) and (shift = []))) and (screen.activecontrol = v_progressivo) then
            begin
              v_tdo_codice.enabled := true;
              v_tdo_codice.color := clwindow;

              if tipo_documento = 'fattura differita' then
              begin
                messaggio(000, 'non è consentito inserire direttamente le fatture differite' + #13#10 +
                  'vanno generate con il programma [GESFADV]');
                v_tdo_codice.enabled := false;
                v_tdo_codice.color := clbtnface;
                tabella.cancel;
                abilita_codice;
                abort;
              end
              else
              begin
                inherited;
              end;
            end
            else
            begin
              inherited;
            end;
          end;
        end;
      end;
    end;

    if (screen.activecontrol = v_indirizzo) then
    begin
      if ((key = vk_f4) and (shift = [ssshift])) then
      begin
        progressivo_modello := '';
        esegui_visarc(arc.arcdit, 'NOM', 'NOM', progressivo_modello, '', '', '', '', '', '');

        if progressivo_modello <> '' then
        begin
          if tabella_edit(tabella) then
          begin
            read_tabella(arc.arcdit, 'nom', 'codice', progressivo_modello);
            variato_stringa := '';
            tabella.fieldbyname('indirizzo').asstring := '';
            tabella.fieldbyname('descrizione1').asstring := archivio.fieldbyname('descrizione1').asstring;
            tabella.fieldbyname('descrizione2').asstring := archivio.fieldbyname('descrizione2').asstring;
            tabella.fieldbyname('via').asstring := archivio.fieldbyname('via').asstring;
            tabella.fieldbyname('via_01').asstring := archivio.fieldbyname('via_01').asstring;
            tabella.fieldbyname('cap').asstring := archivio.fieldbyname('cap').asstring;
            tabella.fieldbyname('citta').asstring := archivio.fieldbyname('citta').asstring;
            tabella.fieldbyname('provincia').asstring := archivio.fieldbyname('provincia').asstring;
            tabella.fieldbyname('tna_codice').asstring := archivio.fieldbyname('tna_codice').asstring;
            visualizza_descrizioni;
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.assegna_contratto_scalare;
var
  pr: tviscont;
begin
  pr := tviscont.create(nil);
  if pr.esegui_form then
  begin
    pr.cli_codice := v_cli_codice.text;
    pr.data_documento := v_data_documento.date;
    pr.showmodal;

    if pr.riferimento <> v_codice_contratto.text then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('codice_contratto').asstring := pr.riferimento;
      end;
    end;
  end;
  pr.free;
end;

procedure tgesven.v_annulla_rdaclick(sender: tobject);
begin
  inherited;
  query_rda.close;
  query_rda.parambyname('ovr_progressivo').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
  query_rda.parambyname('ovr_riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
  query_rda.open;
  while not query_rda.eof do
  begin
    if query_rda.fieldbyname('archivio').asstring = 'rda' then
    begin
      rda.close;
      rda.parambyname('progressivo').asinteger := query_rda.fieldbyname('progressivo').asinteger;
      rda.open;
      if not rda.isempty then
      begin
        rda.delete;
        messaggio(100, 'richiesta d''acquisto annullata');
      end;
    end;
    query_rda.next;
  end;
  tabella_righe.refresh;
  abilita_annulla_rda;
end;

procedure tgesven.v_lettoreclick(sender: tobject);
var
  pr: tltterlasinh;

  i, riga: word;
  lista_art_codice, lista_codice_originale, lista_quantita, lista_prezzo, lista_codice_lotto,
    lista_data_scadenza, lista_descrizione1, lista_descrizione2: tstringlist;
  cfg_tipo: string;

  numero1, numero2: double;
begin
  inherited;

  lettore := true;

  lista_art_codice := tstringlist.create;
  lista_codice_originale := tstringlist.create;
  lista_quantita := tstringlist.create;
  lista_prezzo := tstringlist.create;
  lista_codice_lotto := tstringlist.create;
  lista_data_scadenza := tstringlist.create;
  lista_descrizione1 := tstringlist.create;
  lista_descrizione2 := tstringlist.create;

  pr := tltterlasinh.create(nil);
  if pr.esegui_form then
  begin
    pr.lista_art_codice := lista_art_codice;
    pr.lista_codice_originale := lista_codice_originale;
    pr.lista_quantita := lista_quantita;
    pr.lista_prezzo := lista_prezzo;
    pr.lista_codice_lotto := lista_codice_lotto;
    pr.lista_data_scadenza := lista_data_scadenza;
    pr.lista_descrizione1 := lista_descrizione1;
    pr.lista_descrizione2 := lista_descrizione2;
    pr.showmodal;
    if (pr.conferma = true) and (pr.lista_art_codice.count > 0) then
    begin
      aggiungi_righe_lettore(lista_art_codice, lista_codice_originale, lista_quantita,
        lista_prezzo, lista_codice_lotto, lista_data_scadenza, lista_descrizione1, lista_descrizione2);
    end;
  end;

  lettore := false;

  freeandnil(lista_art_codice);
  freeandnil(lista_codice_originale);
  freeandnil(lista_quantita);
  freeandnil(lista_prezzo);
  freeandnil(lista_codice_lotto);
  freeandnil(lista_data_scadenza);
  freeandnil(lista_descrizione1);
  freeandnil(lista_descrizione2);
  pr.free;
end;

procedure tgesven.aggiungi_righe_lettore(lista_art_codice, lista_codice_originale, lista_quantita,
  lista_prezzo, lista_codice_lotto, lista_data_scadenza, lista_descrizione1, lista_descrizione2: tstringlist);
var
  i, riga: word;
  cfg_tipo: string;

  numero1, numero2: double;
begin
  inherited;

  if lista_art_codice.count > 0 then
  begin
    parte_attiva := 'pannello_righe';
    tool_f8.enabled := true;
    // programma in sola lettura
    if (arc_prg.fieldbyname('abr_id').asinteger <> 0) then
    begin
      tool_f8.enabled := false;
    end;

    query_presenti_righe.close;
    query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
    query_presenti_righe.open;
    riga := query_presenti_righe.fieldbyname('ultima_riga').asinteger;

    for i := 0 to lista_art_codice.count - 1 do
    begin
      if not read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'id') then
      begin
        messaggio(000, 'il codice  ' + trim(lista_art_codice[i]) + '  non è presente nell''anagrafica articoli' + #13 +
          'la riga della quantità di  ' + trim(lista_quantita[i]) + '  non verrà generata ' + #13 +
          'il movimento va caricato manualmente dopo aver creato il nuovo articolo');
      end
      else
      begin
        esiste_righe := false;
        tabella_righe.append;

        tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
        riga := riga + incremento_righe;
        tabella_righe.fieldbyname('riga').asinteger := riga;
        tabella_righe.fieldbyname('art_codice').asstring := lista_art_codice[i];
        read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);

        tabella_righe.fieldbyname('quantita').asfloat := strtofloat(lista_quantita[i]);

        if tipo_documento = 'ddt fornitori' then
        begin
          if art.fieldbyname('tum_codice_acquisti').asstring <> '' then
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_acquisti').asstring;
          end
          else
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
          end;
        end
        else if art.fieldbyname('tum_codice_vendite').asstring <> '' then
        begin
          tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_vendite').asstring;
          if art.fieldbyname('operazione_coefficiente_ven').asstring = '*' then
          begin
            tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda
              (tabella_righe.fieldbyname('quantita').asfloat *
              art.fieldbyname('tum_coefficiente_vendite').asfloat,
              decimali_quantita(art.fieldbyname('codice').asstring));
          end
          else
          begin
            tabella_righe.fieldbyname('tum_quantita_base').asfloat := arrotonda
              (tabella_righe.fieldbyname('quantita').asfloat /
              art.fieldbyname('tum_coefficiente_vendite').asfloat,
              decimali_quantita(art.fieldbyname('codice').asstring));
          end;
        end
        else
        begin
          tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
          tabella_righe.fieldbyname('tum_quantita_base').asfloat := strtofloat(lista_quantita[i]);
        end;

        if assigned(lista_codice_originale) then
        begin
          if lista_codice_originale[i] <> '' then
          begin
            tabella_righe.fieldbyname('descrizione2').asstring := lista_codice_originale[i];
          end;
        end;

        if assigned(lista_prezzo) then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := strtofloat(lista_prezzo[i]);
        end;

        assegna_art_codice;
        assegna_tiv_codice_righe;
        assegna_gen_codice;

        if not art.eof then
        begin
          assegna_colli_confezioni(tabella_righe, art, 'quantita', 'numero_colli', 'numero_confezioni');

          if (tabella_righe.fieldbyname('numero_colli').asinteger <> 0) then
          begin
            controllo_numero_colli_evasi;
          end;

          if (tabella_righe.fieldbyname('numero_confezioni').asinteger <> 0) then
          begin
            controllo_numero_confezioni_evase;
          end;

          (*
            if (art.fieldbyname('quantita_collo').asfloat <> 0) then
            begin
            if tabella_edit(tabella_righe) then
            begin
            numero1 := v_quantita.value / art.fieldbyname('quantita_collo').asfloat;
            numero2 := arrotonda(v_quantita.value / art.fieldbyname('quantita_collo').asfloat, 0);
            tabella_righe.fieldbyname('numero_colli').asinteger := trunc(numero2);
            end;
            end;
            if (art.fieldbyname('pezzi_confezione').asfloat <> 0) then
            begin
            if tabella_edit(tabella_righe) then
            begin
            numero1 := v_quantita.value / art.fieldbyname('pezzi_confezione').asfloat;
            numero2 := arrotonda(v_quantita.value / art.fieldbyname('pezzi_confezione').asfloat, 0);
            tabella_righe.fieldbyname('numero_confezioni').asinteger := trunc(numero2);
            end;
            end;
          *)
        end;

        if assigned(lista_descrizione1) and assigned(lista_descrizione2) then
        begin
          if (lista_descrizione1[i] <> '') or (lista_descrizione2[i] <> '') then
          begin
            tabella_righe.fieldbyname('descrizione1').asstring := lista_descrizione1[i];
            tabella_righe.fieldbyname('descrizione2').asstring := lista_descrizione2[i];
          end;
        end;

        tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
        tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;

        art.close;
        art.params[0].asstring := v_art_codice.text;
        art.open;

        tabella_righe.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
        tabella_righe.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

        tabella_righe.fieldbyname('cen_codice').asstring := tabella.fieldbyname('cen_codice').asstring;
        tabella_righe.fieldbyname('tvc_codice').asstring := tabella.fieldbyname('tvc_codice').asstring;

        if tabella_righe.fieldbyname('prezzo').asfloat = 0 then
        begin
          cerca_prezzo;
        end;
        calcola_importo;

        assegna_provvigioni;
        scrivi_record_righe;

        if assigned(lista_codice_lotto) then
        begin
          if lista_codice_lotto[i] <> '' then
          begin
            if tipo_documento = 'ddt fornitori' then
            begin
              cfg_tipo := 'F';
            end
            else
            begin
              cfg_tipo := 'C';
            end;
            arc.crea_ltm_lettore(lista_art_codice[i], lista_codice_lotto[i], tabella.fieldbyname('tma_codice').asstring,
              tabella_righe.fieldbyname('tum_quantita_base').asstring, lista_data_scadenza[i],
              tipo_documento + ' ven', tmo.fieldbyname('esistenza').asstring,
              cfg_tipo, tabella.fieldbyname('cli_codice').asstring,
              tabella.fieldbyname('serie_documento').asstring, tabella.fieldbyname('progressivo').asinteger,
              riga, tabella.fieldbyname('numero_documento').asfloat,
              tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('data_documento').asdatetime);
            abilita_bottoni(true);
          end;
        end;
      end;
    end;
    esiste_righe := true;

    parte_attiva := 'griglia_righe';
    tool_f8.enabled := false;

    pannello_righe.enabled := true;
    colore_control(pannello_righe, true);
  end;
end;

procedure tgesven.v_annulla_documentoclick(sender: tobject);
begin
  inherited;
  tabella_righe.first;
  while not tabella_righe.eof do
  begin
    if tabella_righe.fieldbyname('situazione').asstring = 'inserito' then
    begin
      annulla_riga_documento;
    end;

    tabella_righe.next;
  end;
end;

procedure tgesven.genera_tabella_etichette;
begin
  nome_tabella := 'ETIARTMO';
  azzera_tabella(nome_tabella, sor);
  sor.indexfieldnames := 'utn_codice;riga';

  if tdo.fieldbyname('stampa_lotto_etichette').asstring = 'si' then
  begin
    ltm.close;
    ltm.sql.text := 'select * from ltm where documento_origine = :documento_origine ' +
      'and doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';
  end;

  tabella_righe.disablecontrols;
  tabella_righe.first;
  while not tabella_righe.eof do
  begin
    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      art.close;
      art.parambyname('codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
      art.open;

      if tdo.fieldbyname('stampa_lotto_etichette').asstring = 'si' then
      begin
        ltm.close;
        ltm.params[0].asstring := tipo_documento + ' ven';
        ltm.params[1].asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
        ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
        ltm.open;
      end;

      if (tdo.fieldbyname('stampa_lotto_etichette').asstring = 'no') or ltm.isempty then
      begin
        sor.append;
        sor.fieldbyname('codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
        sor.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
        sor.fieldbyname('art_descrizione1').asstring := tabella_righe.fieldbyname('descrizione1').asstring;
        sor.fieldbyname('art_descrizione2').asstring := tabella_righe.fieldbyname('descrizione2').asstring;
        sor.fieldbyname('art_tum_codice').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
        sor.fieldbyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
        sor.fieldbyname('colli').asinteger := tabella_righe.fieldbyname('numero_colli').asinteger;
        sor.fieldbyname('confezioni').asinteger := tabella_righe.fieldbyname('numero_confezioni').asinteger;
        if art.fieldbyname('etichetta_singola').asstring = 'si' then
        begin
          sor.fieldbyname('etichette').asinteger := 1;
        end
        else
        begin
          sor.fieldbyname('etichette').asinteger := trunc(tabella_righe.fieldbyname('quantita').asinteger);
        end;
        sor.fieldbyname('modulo').asstring := 'vendite';
        sor.fieldbyname('tipo_documento').asstring := tabella.fieldbyname('tipo_documento').asstring;
        sor.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
        sor.fieldbyname('cfg_tipo').asstring := 'C';
        sor.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;

        sor.fieldbyname('utn_codice').asstring := utente;
        sor.post;
      end
      else
      begin
        while not ltm.eof do
        begin
          sor.append;
          sor.fieldbyname('codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
          sor.fieldbyname('quantita').asfloat := ltm.fieldbyname('quantita').asfloat;
          sor.fieldbyname('art_descrizione1').asstring := tabella_righe.fieldbyname('descrizione1').asstring;
          sor.fieldbyname('art_descrizione2').asstring := tabella_righe.fieldbyname('descrizione2').asstring;
          sor.fieldbyname('art_tum_codice').asstring := tabella_righe.fieldbyname('tum_codice').asstring;
          sor.fieldbyname('riga').asinteger := tabella_righe.fieldbyname('riga').asinteger;
          sor.fieldbyname('colli').asinteger := tabella_righe.fieldbyname('numero_colli').asinteger;
          sor.fieldbyname('confezioni').asinteger := tabella_righe.fieldbyname('numero_confezioni').asinteger;
          if art.fieldbyname('etichetta_singola').asstring = 'si' then
          begin
            sor.fieldbyname('etichette').asinteger := 1;
          end
          else
          begin
            sor.fieldbyname('etichette').asinteger := trunc(ltm.fieldbyname('quantita').asinteger);
          end;
          sor.fieldbyname('modulo').asstring := 'vendite';
          sor.fieldbyname('tipo_documento').asstring := tabella.fieldbyname('tipo_documento').asstring;
          sor.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
          sor.fieldbyname('cfg_tipo').asstring := 'C';
          sor.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;

          sor.fieldbyname('lot_codice').asstring := ltm.fieldbyname('lotto').asstring;
          sor.fieldbyname('utn_codice').asstring := utente;
          sor.post;

          ltm.next;
        end;
      end;
    end;

    tabella_righe.next;
  end;
  tabella_righe.first;
  tabella_righe.enablecontrols;
end;

procedure tgesven.stampa_etichette;
var
  pr: tetiart;
begin
  genera_tabella_etichette;
  pr := tetiart.create(nil);
  if pr.esegui_form then
  begin
    pr.tabella_ordinamento_gestioni := nome_tabella;
    pr.stampa_lotto_etichette := tdo.fieldbyname('stampa_lotto_etichette').asstring;
    pr.origine := 'vendite';
    pr.showmodal;
  end;
  pr.free;
  sor.close;
end;

procedure tgesven.formdestroy(sender: tobject);
begin
  inherited;

  freeandnil(dicint);

  freeandnil(iban);
  freeandnil(spesco);
  freeandnil(movmag);
  freeandnil(cerca_prezzi);
  freeandnil(crea_documento_derivato);
  freeandnil(rma);
  freeandnil(nca);
  freeandnil(calsca);
  freeandnil(prodconf);
  freeandnil(raee);
  freeandnil(qtamin);
  freeandnil(totven);
  freeandnil(provv);
  freeandnil(tipinv);
  freeandnil(valdsb);
  freeandnil(przinv);
  freeandnil(conai);
  freeandnil(fabdin);

  freeandnil(sce_lista_multiselezione);
  freeandnil(sce_lista_multiselezione_quantita);
end;

procedure tgesven.v_sdaclick(sender: tobject);
var
  gentnt: tgentnt;
  tnt: tmyquery_go;
begin
  inherited;
  if tsp.fieldbyname('tipo_corriere').asstring = 'sda' then
  begin
    codice_passato := vararrayof([tipo_documento, v_progressivo.value, '']);
    esegui_programma('GENSDA', codice_passato, true);
  end
  else if tsp.fieldbyname('tipo_corriere').asstring = 'bartolini' then
  begin
    codice_passato := vararrayof([tipo_documento, v_progressivo.value, '']);
    esegui_programma('GENBARTO', codice_passato, true);
  end
  else if tsp.fieldbyname('tipo_corriere').asstring = 'tnt' then
  begin
    tnt := tmyquery_go.create(nil);
    tnt.connection := arc.arcdit;
    tnt.sql.text := 'select progressivo from tnr where documento_origine = ' + quotedstr(tabella.fieldbyname('tipo_documento').asstring) + ' ' +
      'and doc_progressivo_origine = ' + tabella.fieldbyname('progressivo').asstring;
    tnt.open;
    if not tnt.isempty then
    begin
      messaggio(000, 'documento già assegnato alla spedizione TNT con progressivo ' + tnt.fieldbyname('progressivo').asstring);
    end
    else
    begin
      if tabella.fieldbyname('numero_documento').asfloat = 0 then
      begin
        messaggio(000, 'manca il numero documento' + #13 + 'assegnarlo manualmente o stampandolo');
      end
      else if tabella.fieldbyname('numero_colli').asinteger = 0 then
      begin
        messaggio(000, 'non è stato definito il numero colli da spedire');
      end
      else
      begin
        gentnt := tgentnt.create(nil);
        gentnt.codice := vararrayof([tipo_documento, v_progressivo.intvalue]);
        gentnt.showmodal;
        gentnt.free;
      end;
    end;

    freeandnil(tnt);
  end
  else
  begin
    messaggio(200, 'il tipo di corriere non è sda o bartolini o tnt')
  end
end;

procedure TGESVEN.v_setta_esito_sdiClick(Sender: TObject);
var
  pr, pr1: timpalf;
  crittografia: tmyencryptor;
begin
  inherited;

  pr := timpalf.create(nil);
  pr.v_form_caption := 'Richiesta password SDI';
  pr.v_descrizione_caption := 'password sdi';
  pr.v_width_campo := 60;
  pr.valore_passato := '';
  pr.tipo_campo := 'alfa';
  pr.campo_password := true;
  pr.showmodal;

  crittografia := tmyencryptor.create(nil);
  crittografia.dataheader := ehnone;
  crittografia.encryptionalgorithm := eatripledes;
  crittografia.password := 'GESTIONALEOPEN';

  query_dit.encryption.encryptor := crittografia;

  read_tabella(query_dit, ditta);

  if query_dit.fieldbyname('password_sdi').asstring = pr.valore_passato then
  begin
    pr1 := timpalf.create(nil);
    pr1.v_form_caption := 'id SDI originale';
    pr1.v_descrizione_caption := 'id sdi';
    pr1.v_width_campo := 40;
    pr1.valore_passato := '';
    pr1.tipo_campo := 'alfa';
    pr1.campo_password := false;
    pr1.showmodal;

    fvt_esito_sdi.close;
    fvt_esito_sdi.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    fvt_esito_sdi.parambyname('id_sdi').asstring := pr1.valore_passato;
    fvt_esito_sdi.execsql;

    freeandnil(pr1);

    tabella.refresh;
    abilita_codice;
  end
  else
  begin
    messaggio(200, 'password errata');
  end;

  freeandnil(pr);
  freeandnil(crittografia);

  tab_pannello_bottoni_nuovi.activepageindex := 0;
end;

procedure tgesven.v_packing_listclick(sender: tobject);
begin
  inherited;

  parametri_extra_programma_chiamato[0] := v_cli_codice.text;;
  parametri_extra_programma_chiamato[1] := tipo_documento;
  parametri_extra_programma_chiamato[2] := v_progressivo.intvalue;
  esegui_programma('GESPKL', '', true);
end;

procedure tgesven.v_pagperclick(sender: tobject);
var
  pr: tpagper;
begin
  pr := tpagper.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := vararrayof([v_progressivo.text, '']);
    pr.modulo := 'vendite';
    pr.tipo_documento := tipo_documento;
    pr.totale_documento := tabella.fieldbyname('importo_totale').asfloat;
    if (((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'evaso')) or
      (((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'consolidato')) then
    begin
      pr.modificabile := true;
    end
    else
    begin
      pr.modificabile := false;
    end;
    pr.showmodal;
  end;
  pr.free;
end;

function tgesven.conferma_tabindex: boolean;
begin
  inherited;

  result := false;
  if ((tab_control.tabindex = 0) and (pagina_riferimento)) or
    ((tab_control.tabindex = 1) and (pagina_incasso)) or
    ((tab_control.tabindex = 2) and (pagina_magazzino)) or
    ((tab_control.tabindex = 3) and (pagina_destinazione)) or
    ((tab_control.tabindex = 4) and (pagina_spedizione)) or
    ((tab_control.tabindex = 5) and (pagina_sconto)) or
    ((tab_control.tabindex = 6) and (pagina_note)) or
    ((tab_control.tabindex = 7) and (pagina_analitica)) then
  begin
    result := true;
  end;
end;

procedure tgesven.tool_inserisce_righeclick(sender: tobject);
var
  key: word;
begin
  // inherited; disabilitato apposta
  key := vk_insert;
  v_griglia_righekeydown(tool_inserisce_righe, key, [ssctrl]);
end;

procedure tgesven.tool_ins_righeclick(sender: tobject);
var
  tasto: word;
begin
  // inherited;
  tasto := vk_return;
  v_griglia_righekeydown(v_griglia_righe, tasto, []);
end;

procedure tgesven.tool_invia_excelclick(sender: tobject);
var
  richiesta: tmyquery_go;
  i: word;
  pr: tmail;
  nome_file, nom_email_effettivo, testo_mail, stringa: string;
  lista_allegati: tstringlist;
begin
  inherited;

  lista_allegati := tstringlist.create;

  richiesta := tmyquery_go.create(nil);
  richiesta.connection := arc.arcdit;
  richiesta.sql.text := 'select x1x1.data_documento, x1x1.numero_documento,' +
    'x2x2.art_codice nostro_codice, concat(trim(x2x2.descrizione1), '' '', x2x2.descrizione2) descrizione, ' +
    '(select codice_articolo_cliente from arcl ' +
    'where arcl.art_codice = x2x2.art_codice and arcl.cli_codice = :cli_codice limit 1) vostro_codice, ' +
    'x2x2.tum_codice um, x2x2.quantita, x2x2.prezzo, 100 - tsm_01.percentuale_totale percentuale_sconto_01, ' +
    '100 - tsm_02.percentuale_totale percentuale_sconto_02, x2x2.importo_sconto ' +
    'from x2x2 inner join x1x1 on x1x1.progressivo = x2x2.progressivo ' +
    'left join tsm tsm_01 on tsm_01.codice = x2x2.tsm_codice ' +
    'left join tsm tsm_02 on tsm_02.codice = x2x2.tsm_codice_art ' +
    'where x1x1.progressivo = :progressivo';
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x1x1', 'pvt', [rfreplaceall]);
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x2x2', 'pvr', [rfreplaceall]);
  end
  else if tipo_documento = 'ordine' then
  begin
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x1x1', 'ovt', [rfreplaceall]);
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x2x2', 'ovr', [rfreplaceall]);
  end
  else if tipo_documento = 'bolla' then
  begin
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x1x1', 'bvt', [rfreplaceall]);
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x2x2', 'bvr', [rfreplaceall]);
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x1x1', 'cvt', [rfreplaceall]);
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x2x2', 'cvr', [rfreplaceall]);
  end
  else if copy(tipo_documento, 1, 3) = 'ddt' then
  begin
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x1x1', 'dvt', [rfreplaceall]);
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x2x2', 'dvr', [rfreplaceall]);
  end
  else
  begin
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x1x1', 'fvt', [rfreplaceall]);
    richiesta.sql.text := stringreplace(richiesta.sql.text, 'x2x2', 'fvr', [rfreplaceall]);
  end;

  richiesta.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  richiesta.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
  richiesta.open;

  tabella_virtuale.open;
  tabella_virtuale.clear;
  while not richiesta.eof do
  begin
    tabella_virtuale.append;
    for i := 0 to richiesta.fieldcount - 1 do
    begin
      tabella_virtuale.fieldbyname(richiesta.fields[i].fieldname).value := richiesta.fields[i].value;
    end;

    tabella_virtuale.post;

    richiesta.next;
  end;

  nome_file := cartella_root_installazione + 'esporta\' + tipo_documento + '_cliente_progressivo_' +
    tabella.fieldbyname('progressivo').asstring + '.xlsx';
  arc.xlstxt(tabella_virtuale, 'xls', nome_file);

  richiesta.free;

  pr := tmail.create(nil);
  pr.conoscenza_ccn := '';
  pr.conoscenza := '';
  pr.pec := false;
  pr.nom_codice := tabella.fieldbyname('cli_codice').asstring;
  read_tabella(arc.arcdit, 'nom', 'codice', tabella.fieldbyname('cli_codice').asstring, '*');

  testo_mail := tdo.fieldbyname('testo_mail_excel').asstring;
  if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_01').asstring then
  begin
    testo_mail := tdo.fieldbyname('testo_mail_excel_lingua_01').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_02').asstring then
  begin
    testo_mail := tdo.fieldbyname('testo_mail_excel_lingua_02').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_03').asstring then
  begin
    testo_mail := tdo.fieldbyname('testo_mail_excel_lingua_03').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_04').asstring then
  begin
    testo_mail := tdo.fieldbyname('testo_mail_excel_lingua_04').asstring;
  end
  else if nom.fieldbyname('lingua').asstring = arc.lin.fieldbyname('lingua_05').asstring then
  begin
    testo_mail := tdo.fieldbyname('testo_mail_excel_lingua_05').asstring;
  end;

  pr.v_intestatario.text :=
    trim(archivio.fieldbyname('descrizione1').asstring) + ' ' +
    archivio.fieldbyname('citta').asstring;
  pr.v_indirizzo.itemindex := 0;
  if archivio.fieldbyname('e_mail_amministrazione').asstring <> '' then
  begin
    pr.v_indirizzo.items.add('AMMINISTRAZIONE (NOMINATIVO)');
    pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
  end;
  if archivio.fieldbyname('e_mail_vendite').asstring <> '' then
  begin
    pr.v_indirizzo.items.add('VENDITE (NOMINATIVO)');
    pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
  end;
  if copy(tipo_documento, 1, 7) = 'fattura' then
  begin
    if archivio.fieldbyname('e_mail_fatture').asstring <> '' then
    begin
      pr.v_indirizzo.items.add('FATTURE (NOMINATIVO)');
      pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
    end;
  end;
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    if archivio.fieldbyname('e_mail_preventivi_clienti').asstring <> '' then
    begin
      pr.v_indirizzo.items.add('PREVENTIVI CLIENTI (NOMINATIVO)');
      pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
    end;
  end;
  if tipo_documento = 'ordine' then
  begin
    if archivio.fieldbyname('e_mail_ordini_clienti').asstring <> '' then
    begin
      pr.v_indirizzo.items.add('ORDINI CLIENTI (NOMINATIVO)');
      pr.v_indirizzo.itemindex := pr.v_indirizzo.items.count - 1;
    end;
  end;

  // senza filiale
  read_tabella(arc.arcdit, 'nml', 'nom_codice;ind_codice',
    vararrayof([tabella.fieldbyname('cli_codice').asstring, '']),
    'descrizione, mansione, email');
  while not archivio.eof do
  begin
    pr.v_indirizzo.items.add(uppercase(archivio.fieldbyname('descrizione').asstring + '  ' +
      archivio.fieldbyname('mansione').asstring));
    archivio.next;
  end;

  if pr.v_indirizzo.items.count > 0 then
  begin
    pr.v_oggetto.text := 'Dettaglio prodotti ' + tipo_documento + '  n. ' + tabella.fieldbyname('numero_documento').asstring +
      ' del ' + datetostr(tabella.fieldbyname('data_documento').asdatetime);
    pr.v_testo.text := testo_mail;
    pr.showmodal;

    if pr.confermato then
    begin
      read_tabella(arc.arcdit, 'nom', 'codice', tabella.fieldbyname('cli_codice').asstring, '*');
      if pr.v_indirizzo.text = 'AMMINISTRAZIONE (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_amministrazione').asstring;
      end
      else if pr.v_indirizzo.text = 'VENDITE (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_vendite').asstring;
      end
      else if pr.v_indirizzo.text = 'FATTURE (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_fatture').asstring;
      end
      else if pr.v_indirizzo.text = 'PREVENTIVI CLIENTI (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_preventivi_clienti').asstring;
      end
      else if pr.v_indirizzo.text = 'ORDINI CLIENTI (NOMINATIVO)' then
      begin
        nom_email_effettivo := archivio.fieldbyname('e_mail_ordini_clienti').asstring;
      end
      else
      begin
        read_tabella(arc.arcdit, 'nml', 'nom_codice', tabella.fieldbyname('cli_codice').asstring, 'descrizione, mansione, email, email_pec');
        while not archivio.eof do
        begin
          if (uppercase(archivio.fieldbyname('descrizione').asstring + '  ' + archivio.fieldbyname('mansione').asstring)) =
            pr.v_indirizzo.text then
          begin
            nom_email_effettivo := archivio.fieldbyname('email').asstring;
            break;
          end;
          archivio.next;
        end;
      end;

      lista_allegati.add(nome_file);
      arc.invia_messaggio(pr.v_pec.checked, pr.v_oggetto.text, pr.v_conoscenza.text, pr.v_testo.text,
        nom_email_effettivo, lista_allegati, tdo.fieldbyname('user_host').asstring,
        tdo.fieldbyname('user_id').asstring, tdo.fieldbyname('user_password').asstring,
        tdo.fieldbyname('user_e_mail').asstring, tdo.fieldbyname('porta_smtp').asinteger, 0, pr.v_conoscenza_ccn.text,
        tdo.fieldbyname('no_tls').asstring, tdo.fieldbyname('usa_tlsv1').asstring);
    end;
  end
  else
  begin
    messaggio(200, 'intestatario senza indirizzo email');
  end;

  freeandnil(lista_allegati);
  pr.free;
end;

procedure TGESVEN.tool_invio_messaggioClick(Sender: TObject);
begin
  if tdo.fieldbyname('messaggio_interattivo').asstring = 'si' then
  begin
    messaggio_interattivo_modulo_documento := 'vendita';
    messaggio_interattivo_tipo_documento := tipo_documento + ' [' + ditta + ']';
    messaggio_interattivo_progressivo_documento := tabella.fieldbyname('progressivo').asinteger;
  end;

  inherited;
end;

procedure tgesven.esegui_bottone_dati_extra_testata;
var
  pr: tgesven01;
begin
  pr := tgesven01.create(nil);
  if pr.esegui_form then
  begin
    pr.tipo_documento := tipo_documento;
    pr.progressivo := v_progressivo.value;
    pr.tdo_codice_differite := tabella.fieldbyname('tdo_codice_differite').asstring;
    pr.form_chiamante := self;
    pr.showmodal;
    if pr.aggiorna_totali_testata then
    begin
      aggiorna_totali_testata := true;
    end;
  end;
  pr.free;
end;

procedure tgesven.esegui_bottone_dati_extra_righe;
begin
  esegui_gesven02;
end;

procedure tgesven.pannello_griglia_righeenter(sender: tobject);
begin
  if (tdo.fieldbyname('note_visibili').asstring = 'no') then
  begin
    v_note_righe.visible := false;
  end
  else
  begin
    v_note_righe.visible := true;
  end;

  inherited;
  if not tabella_righe.isempty then
  begin
    tool_documenti_allegati.enabled := true;
  end;
end;

procedure tgesven.tool_f2click(sender: tobject);
begin
  // visarc_filtro_01 := tipo_documento;
  inherited;
end;

procedure tgesven.tool_f4click(sender: tobject);
begin
  if screen.activecontrol = v_codice_contratto then
  begin
    assegna_contratto_scalare;
  end
  else if screen.activecontrol = v_contatto_commerciale then
  begin
    assegna_contatto_commerciale;
  end
  else
  begin
    inherited;
  end;
end;

procedure tgesven.tool_gesccfclick(sender: tobject);
var
  i: word;
  gesccf: tmyquery_go;
begin
  inherited;

  gesccf := tmyquery_go.create(nil);
  gesccf.connection := arc.arcdit;
  if tipo_documento = 'ddt fornitori' then
  begin
    gesccf.sql.text := 'select progressivo from ccf where oggetto_contatto = ''fornitore'' and documento_collegato =  ' +
      quotedstr(tipo_documento) + ' and doc_progressivo_collegato = ' + tabella.fieldbyname('progressivo').asstring;
  end
  else if tipo_documento = 'preventivo nominativi' then
  begin
    gesccf.sql.text := 'select progressivo from ccf where oggetto_contatto = ''potenziale'' and documento_collegato =  ' +
      quotedstr(tipo_documento) + ' and doc_progressivo_collegato = ' + tabella.fieldbyname('progressivo').asstring;
  end
  else
  begin
    gesccf.sql.text := 'select progressivo from ccf where oggetto_contatto = ''cliente'' and documento_collegato =  ' +
      quotedstr(tipo_documento) + ' and doc_progressivo_collegato = ' + tabella.fieldbyname('progressivo').asstring;
  end;
  gesccf.open;
  if not gesccf.isempty then
  begin
    if gesccf.recordcount > 1 then
    begin
      messaggio(100, 'sono presenti ' + inttostr(gesccf.recordcount) + ' contatti collegati al documento');
    end;
    esegui_programma('GESCCF', vararrayof([v_cli_codice.text, gesccf.fieldbyname('progressivo').asinteger]), true);
  end
  else
  begin
    messaggio(200, 'non ci sono contatti collegati al documento');
  end;

  gesccf.free;
end;

procedure tgesven.v_ibanexit(sender: tobject);
begin
  inherited;
  if trim(v_iban.text) <> '' then
  begin
    if not iban.controlla_iban(string(v_iban.text)) then
    begin
      messaggio(100, 'il codice iban inserito non è corretto');
    end;
  end;
end;

procedure tgesven.esegui_query_righe;
begin
  inherited;

  (v_griglia_righe.columns.items[0].field as tintegerfield).displayformat := '#';
  (v_griglia_righe.columns.items[1].field as tintegerfield).displayformat := '#';
  //modifica
  (v_griglia_righe.columns.items[5].field as tintegerfield).displayformat := '#';
  (v_griglia_righe.columns.items[6].field as tintegerfield).displayformat := '#';
  (v_griglia_righe.columns.items[7].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columns.items[8].field as tfloatfield).displayformat := formato_display_prezzo_zero;
  (v_griglia_righe.columns.items[11].field as tfloatfield).displayformat := formato_display_importo_zero;
  (v_griglia_righe.columns.items[12].field as tfloatfield).displayformat := formato_display_importo_zero;
  //modifica fine
end;

procedure tgesven.v_art_codiceenter(sender: tobject);
begin
  inherited;

  variato_stringa := v_art_codice.text;
  abilita_art_codice;
  lot_codice_fisso := '';
  abilita_campo(v_artp);
end;

procedure tgesven.v_tmo_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tmo_codice.text;
end;

procedure tgesven.v_tpa_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tpa_codice.text;
end;

procedure tgesven.v_tva_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tva_codice.text;
end;

procedure tgesven.v_tlv_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tlv_codice.text;
end;

procedure tgesven.v_tpo_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tpo_codice.text;
end;

procedure tgesven.v_numero_confezionienter(sender: tobject);
begin
  inherited;
  variato_importo := v_numero_confezioni.value;
end;

procedure tgesven.v_quantitaenter(sender: tobject);
var
  vd3_codice, modulo: string;
  dimensione1, dimensione2, dimensione3: double;
  quantita: double;
begin
  inherited;

  variato_importo := arrotonda(v_quantita.value, 4);

  if (art.fieldbyname('codice_barre_peso').asstring <> 'no') and (codice_barre_quantita <> 0) then
  begin
    if tabella_edit(tabella_righe) then
    begin
      tabella_righe.fieldbyname('quantita').asfloat := codice_barre_quantita;
    end;
  end;

  dimensione1 := tabella_righe.fieldbyname('dimensione1').asfloat;
  dimensione2 := tabella_righe.fieldbyname('dimensione2').asfloat;
  dimensione3 := tabella_righe.fieldbyname('dimensione3').asfloat;
  modulo := 'vendita';
  if art.fieldbyname('lavorazione_vetrerie').asstring = 'nessuna' then
  begin
    modulo := '';
  end;
  lavorazione_vetrerie := false;
  if gestione_dimensioni(art, tabella_righe, lavorazione_vetrerie, modulo) then
  begin
    if not esiste_righe or (dimensione1 <> tabella_righe.fieldbyname('dimensione1').asfloat) or
      (dimensione2 <> tabella_righe.fieldbyname('dimensione2').asfloat) or
      (dimensione3 <> tabella_righe.fieldbyname('dimensione3').asfloat) or
      (vecchio_numero_colli <> tabella_righe.fieldbyname('numero_colli').asinteger) or
      (vecchio_numero_confezioni <> tabella_righe.fieldbyname('numero_confezioni').asinteger) then
    begin
      quantita := calcola_quantita_dimensioni(art, tabella_righe);
      if quantita <> 0 then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('quantita').asfloat := quantita;
        end;
        variata_quantita;
      end;
    end;
  end;

  if tipo_documento = 'ddt fornitori' then
  begin
    vd3_codice := '';
  end
  else
  begin
    vd3_codice := cli.fieldbyname('vd3_codice').asstring;
  end;
end;

procedure TGESVEN.v_tsm_codice_righeChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure tgesven.v_tsm_codice_righeenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tsm_codice_righe.text;
end;

procedure TGESVEN.v_importoChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure tgesven.v_importoenter(sender: tobject);
begin
  inherited;
  variato_importo := arrotonda(v_importo.value);
end;

procedure tgesven.v_non_conformitaclick(sender: tobject);
begin
  inherited;
  nca.data_registrazione := tabella.fieldbyname('data_documento').asdatetime;
  nca.art_codice := tabella_righe.fieldbyname('art_codice').asstring;
  nca.frn_codice := '';
  nca.quantita_lotto := tabella_righe.fieldbyname('quantita').asfloat;
  nca.modulo_origine := 'ven';
  nca.documento_origine := tabella.fieldbyname('tipo_documento').asstring;
  nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
  nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;
  nca.crea_nct;
end;

procedure TGESVEN.v_nostro_riferimentoExit(Sender: TObject);
begin
  inherited;
  if aggiorna_consolidato then
  begin
    aggiorna_consolidato := false;
    abilita_codice;
  end;
end;

procedure TGESVEN.v_noteDblClick(Sender: TObject);
var
  note: string;
begin
  inherited;

  note := v_note.text;
  arc.edit_note(note, 'note', tabella);
end;

procedure tgesven.v_numero_colli_rigaenter(sender: tobject);
begin
  inherited;
  variato_importo := v_numero_colli_riga.value;
end;

procedure TGESVEN.v_tipo_movimentoChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure tgesven.v_tipo_movimentoenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tipo_movimento.text;
end;

procedure tgesven.v_saldo_accontoenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_saldo_acconto.text;
end;

procedure TGESVEN.v_tsm_codice_artChange(Sender: TObject);
begin
  inherited;
  controllo_blocco_modifica_prezzi_vendita(sender);
end;

procedure tgesven.controllo_blocco_modifica_prezzi_vendita(sender: tobject);
begin
  if blocco_modifica_prezzi_vendita and (screen.activecontrol = sender) then
  begin
    messaggio(200, 'l''utente non è autorizzato a modificare gli importi del documento');
    if tabella_edit(tabella_righe) then
    begin
      if screen.activecontrol = v_prezzo then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := variato_importo;
      end;
      if screen.activecontrol = v_tsm_codice_righe then
      begin
        tabella_righe.fieldbyname('tsm_codice').asstring := variato_stringa;
      end;
      if screen.activecontrol = v_tsm_codice_art then
      begin
        tabella_righe.fieldbyname('tsm_codice_art').asstring := vecchio_tsm_codice_art;
      end;
      if screen.activecontrol = v_importo_sconto_righe then
      begin
        tabella_righe.fieldbyname('importo_sconto').asfloat := variato_importo;
      end;
      if screen.activecontrol = v_tipo_movimento then
      begin
        tabella_righe.fieldbyname('tipo_movimento').asstring := variato_stringa;
        v_tipo_movimento.itemindex := v_tipo_movimento.indexof(variato_stringa);
      end;
      if screen.activecontrol = v_importo then
      begin
        tabella_righe.fieldbyname('importo').asfloat := variato_importo;
      end;
    end;

    if sender is trzdbnumericedit_go then
    begin
      if trzdbnumericedit_go(sender).canfocus then
      begin
        trzdbnumericedit_go(sender).setfocus;
      end;
    end
    else if sender is trzdbedit_go then
    begin
      if trzdbedit_go(sender).canfocus then
      begin
        trzdbedit_go(sender).setfocus;
      end;
    end
    else if sender is trzdbcombobox_go then
    begin
      if trzdbcombobox_go(sender).canfocus then
      begin
        trzdbcombobox_go(sender).setfocus;
      end;
    end;
  end;
end;

procedure tgesven.v_tsm_codice_artenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tsm_codice_art.text;
end;

procedure tgesven.v_documenti_acquistoclick(sender: tobject);
var
  i: word;
  riga: integer;
  imponibile: double;
  frn_codice: string;

  lista_art_codice, lista_frn_codice, lista_quantita, lista_documento, lista_tipo_documento,
    lista_progressivo, lista_riga: tstringlist;
  pr: tvisdocav;
begin
  inherited;

  frn_codice := '';

  lista_art_codice := tstringlist.create;
  lista_frn_codice := tstringlist.create;
  lista_quantita := tstringlist.create;
  lista_documento := tstringlist.create;
  lista_tipo_documento := tstringlist.create;
  lista_progressivo := tstringlist.create;
  lista_riga := tstringlist.create;

  pr := tvisdocav.create(nil);

  try
    if pr.esegui_form then
    begin
      pr.cli_codice := v_cli_codice.text;
      pr.lista_art_codice := lista_art_codice;
      pr.lista_frn_codice := lista_frn_codice;
      pr.lista_quantita := lista_quantita;
      pr.lista_documento := lista_documento;
      pr.lista_tipo_documento := lista_tipo_documento;
      pr.lista_progressivo := lista_progressivo;
      pr.lista_riga := lista_riga;
      pr.showmodal;

      if lista_art_codice.count > 0 then
      begin
        parte_attiva := 'pannello_righe';
        tool_f8.enabled := true;
        // programma in sola lettura
        if (arc_prg.fieldbyname('abr_id').asinteger <> 0) then
        begin
          tool_f8.enabled := false;
        end;

        query_presenti_righe.close;
        query_presenti_righe.params[0].asinteger := tabella.fieldbyname('progressivo').asinteger;
        query_presenti_righe.open;
        riga := query_presenti_righe.fieldbyname('ultima_riga').asinteger;

        for i := 0 to lista_art_codice.count - 1 do
        begin
          if lista_frn_codice[i] <> frn_codice then
          begin
            tabella_righe.append;

            tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
            riga := riga + incremento_righe;
            tabella_righe.fieldbyname('riga').asinteger := riga;

            tabella_righe.fieldbyname('descrizione1').asstring := '----------------------------------------';
            read_tabella(arc.arcdit, 'frn', 'codice', lista_frn_codice[i], 'descrizione1, descrizione2, via, citta');
            tabella_righe.fieldbyname('note').asstring := 'merce consegnata per ns. ordine e conto da:' + #13 +
              trim(archivio.fieldbyname('descrizione1').asstring) + ' ' + archivio.fieldbyname('descrizione2').asstring + #13 +
              archivio.fieldbyname('via').asstring + #13 +
              archivio.fieldbyname('citta').asstring + #13 + lista_documento[i];

            scrivi_record_righe;

            frn_codice := lista_frn_codice[i];
          end;

          tabella_righe.append;

          tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
          riga := riga + incremento_righe;
          tabella_righe.fieldbyname('riga').asinteger := riga;
          tabella_righe.fieldbyname('art_codice').asstring := lista_art_codice[i];
          read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);
          tabella_righe.fieldbyname('descrizione1').asstring := art.fieldbyname('descrizione1').asstring;
          tabella_righe.fieldbyname('descrizione2').asstring := art.fieldbyname('descrizione2').asstring;
          if art.fieldbyname('tum_codice_vendite').asstring <> '' then
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_vendite').asstring;
          end
          else
          begin
            tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
          end;

          assegna_tiv_codice_righe;
          assegna_gen_codice;

          read_tabella(arc.arcdit, 'tiv', 'codice', tabella_righe.fieldbyname('tiv_codice').asstring, 'percentuale');
          if tabella.fieldbyname('listino_con_iva').asstring = 'no' then
          begin
            tabella_righe.fieldbyname('importo_iva').asfloat :=
              arrotonda(tabella_righe.fieldbyname('importo').asfloat * archivio.fieldbyname('percentuale').asfloat / 100);
            tabella_righe.fieldbyname('importo_iva_euro').asfloat := tabella_righe.fieldbyname('importo_iva').asfloat;
          end
          else
          begin
            // imponibile := arrotonda(tabella_righe.fieldbyname('importo').asfloat / (1 + archivio.fieldbyname('percentuale').asfloat / 100));
            imponibile := arc.scorporo(tabella_righe.fieldbyname('importo').asfloat, archivio.fieldbyname('percentuale').asfloat);
            tabella_righe.fieldbyname('importo_iva').asfloat := arrotonda(tabella_righe.fieldbyname('importo').asfloat - imponibile);
            tabella_righe.fieldbyname('importo_iva_euro').asfloat := tabella_righe.fieldbyname('importo_iva').asfloat;
          end;

          tabella_righe.fieldbyname('quantita').asfloat := strtofloat(lista_quantita[i]);
          tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
          tabella_righe.fieldbyname('tma_codice_collegato').asstring := tabella.fieldbyname('tma_codice_collegato').asstring;

          art.params[0].asstring := v_art_codice.text;
          art.close;
          art.open;

          cerca_prezzo;
          calcola_importo;

          tabella_righe.fieldbyname('documento_origine').asstring := lista_tipo_documento[i] + ' consegna diretta';
          tabella_righe.fieldbyname('doc_progressivo_origine').asstring := lista_progressivo[i];
          tabella_righe.fieldbyname('doc_riga_origine').asstring := lista_riga[i];

          scrivi_record_righe;
        end;

        tabella_righe.append;

        tabella_righe.fieldbyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asfloat;
        riga := riga + incremento_righe;
        tabella_righe.fieldbyname('riga').asinteger := riga;

        tabella_righe.fieldbyname('descrizione1').asstring := '----------------------------------------';
        scrivi_record_righe;

        parte_attiva := 'griglia_righe';
        tool_f8.enabled := false;

        pannello_righe.enabled := true;
        colore_control(pannello_righe, true);
      end;
    end;
  finally
    freeandnil(lista_art_codice);
    freeandnil(lista_frn_codice);
    freeandnil(lista_quantita);
    freeandnil(lista_documento);
    freeandnil(lista_tipo_documento);
    freeandnil(lista_progressivo);
    freeandnil(lista_riga);
    pr.free;
  end;
end;

procedure TGESVEN.v_documenti_collegatiClick(Sender: TObject);
var
  pr: tgesdocrd;
begin
  inherited;

  pr := tgesdocrd.create(nil);
  pr.codice := vararrayof([tabella_righe.fieldbyname('id').asstring, '', 0, 0]);
  pr.tipo_documento := trim(copy(tipo_documento, 1, 7));
  pr.showmodal;
  freeandnil(pr);
end;

procedure tgesven.tool_sequenzaclick(sender: tobject);
var
  sequenza: integer;
begin
  inherited;
  if tool_sequenza.down then
  begin
    if tabella_righe.fieldbyname('situazione').asstring <> 'inserito' then
    begin
      messaggio(000, 'riga non selezionabile perchè già movimentata');
      tool_sequenza.down := false;
    end
    else
    begin
      riga_drag_drop := tabella_righe.fieldbyname('riga').asinteger;
      sequenza_drag_drop := tabella_righe.fieldbyname('sequenza').asinteger;

      tool_sequenza.hint := 'sposta la riga selezionata [riga ' + inttostr(riga_drag_drop) + '  sequenza ' + inttostr(sequenza_drag_drop) + '] dopo quella attiva';
    end;
  end
  else
  begin
    if (tabella_righe.fieldbyname('riga').asinteger <> riga_drag_drop) or (tabella_righe.fieldbyname('sequenza').asinteger <> sequenza_drag_drop) then
    begin
      sequenza := tabella_righe.fieldbyname('sequenza').asinteger;
      if tabella_righe.locate('progressivo;riga', vararrayof([tabella.parambyname('progressivo').asinteger,
        riga_drag_drop]), []) then
      begin
        tabella_righe.edit;
        tabella_righe.fieldbyname('sequenza').asinteger := sequenza + 1;
        tabella_righe.post;
        esegui_query_righe;
      end;

      tool_sequenza.hint := 'seleziona la riga attiva per spostamento';
    end
    else
    begin
      messaggio(100, 'riga identica a quella selezionata');
    end;
  end;
end;

procedure TGESVEN.v_data_consegnaExit(Sender: TObject);
begin
  inherited;
  if (v_data_consegna.date <> 0) and (v_data_consegna.date < v_data_documento.date) then
  begin
    messaggio(200, 'data consegna inferiore alla data documento');
  end;
end;

procedure TGESVEN.v_data_consegna_righeExit(Sender: TObject);
begin
  inherited;
  if (v_data_consegna_righe.date <> 0) and (v_data_consegna_righe.date < v_data_documento.date) then
  begin
    messaggio(200, 'data consegna inferiore alla data documento');
  end;
end;

procedure tgesven.v_data_documentochange(sender: tobject);
begin
  inherited;
  v_giorno.text := formatdatetime('ddd', v_data_documento.date);
end;

procedure tgesven.v_griglia_righedrawcolumncell(sender: tobject;
  const rect: trect; datacol: integer; column: tcolumn; state: tgriddrawstate);
var
  margine: integer;
begin
  try
    if (lowercase(column.fieldname) = 'importo') then
    begin
      if (tabella_righe.fieldbyname('costo_unitario').asfloat <> 0) and
        (tabella_righe.fieldbyname('margine_01').asinteger <> 0) then
      begin
        try
          margine := trunc((tabella_righe.fieldbyname('importo_euro').asfloat -
            (tabella_righe.fieldbyname('costo_unitario').asfloat * tabella_righe.fieldbyname('quantita').asfloat)) * 100 /
            tabella_righe.fieldbyname('importo_euro').asfloat);

          if margine <= tabella_righe.fieldbyname('margine_01').asinteger then
          begin
            v_griglia_righe.canvas.brush.color := tabella_righe.fieldbyname('colore_margine_01').asinteger;
            v_griglia_righe.canvas.font.color := clblack;
          end
          else if margine <= tabella_righe.fieldbyname('margine_02').asinteger then
          begin
            v_griglia_righe.canvas.brush.color := tabella_righe.fieldbyname('colore_margine_02').asinteger;
            v_griglia_righe.canvas.font.color := clblack;
          end
          else if margine <= tabella_righe.fieldbyname('margine_03').asinteger then
          begin
            v_griglia_righe.canvas.brush.color := tabella_righe.fieldbyname('colore_margine_03').asinteger;
            v_griglia_righe.canvas.font.color := clblack;
          end
          else if margine <= tabella_righe.fieldbyname('margine_04').asinteger then
          begin
            v_griglia_righe.canvas.brush.color := tabella_righe.fieldbyname('colore_margine_04').asinteger;
            v_griglia_righe.canvas.font.color := clblack;
          end
          else if margine <= tabella_righe.fieldbyname('margine_05').asinteger then
          begin
            v_griglia_righe.canvas.brush.color := tabella_righe.fieldbyname('colore_margine_05').asinteger;
            v_griglia_righe.canvas.font.color := clblack;
          end
          else if margine <= tabella_righe.fieldbyname('margine_06').asinteger then
          begin
            v_griglia_righe.canvas.brush.color := tabella_righe.fieldbyname('colore_margine_06').asinteger;
            v_griglia_righe.canvas.font.color := clblack;
          end;
        except
        end;
      end;
    end;

    if (lowercase(column.fieldname) = 'tipo_movimento') and (tabella_righe.state <> dsinsert) and
      ((tabella_righe.fieldbyname('situazione').asstring = 'inserito') or (tabella_righe.fieldbyname('situazione').asstring = 'evaso parziale')) then
    begin
      if tabella_righe.fieldbyname('oar').value = 'si' then
      begin
        v_griglia_righe.canvas.brush.color := claqua;
        v_griglia_righe.canvas.font.color := clblack;
      end
      else if tabella_righe.fieldbyname('rda').value = 'si' then
      begin
        v_griglia_righe.canvas.brush.color := cllime;
        v_griglia_righe.canvas.font.color := clblack;
      end
      else if tabella_righe.fieldbyname('rda').value = 'autorizzata' then
      begin
        v_griglia_righe.canvas.brush.color := clfuchsia;
        v_griglia_righe.canvas.font.color := clblack;
      end
      else if tabella_righe.fieldbyname('opt').value = 'si' then
      begin
        v_griglia_righe.canvas.brush.color := clyellow;
        v_griglia_righe.canvas.font.color := clblack;
      end;
    end;

    if (lowercase(column.fieldname) = 'situazione') and
      ((tipo_documento = 'ordine') or (copy(tipo_documento, 1, 10) = 'preventivo')) then
    begin
      if tabella_righe.fieldbyname('situazione').value = 'evaso' then
      begin
        v_griglia_righe.canvas.brush.color := cllime;
        v_griglia_righe.canvas.font.color := clblack;
      end
      else if tabella_righe.fieldbyname('situazione').value = 'evaso parziale' then
      begin
        v_griglia_righe.canvas.brush.color := claqua;
        v_griglia_righe.canvas.font.color := clblack;
      end
      else if tabella_righe.fieldbyname('situazione').value = 'annullato' then
      begin
        v_griglia_righe.canvas.brush.color := clred;
        v_griglia_righe.canvas.font.color := clblack;
      end;
    end;
  except
  end;

  inherited;
end;

procedure tgesven.v_bloccatoclick(sender: tobject);
begin
  inherited;
  if not tabella.isempty then
  begin
    bloccato_click := true;

    if tabella_edit(tabella) then
    begin
      if tabella.fieldbyname('bloccato').asstring = 'si' then
      begin
        tabella.fieldbyname('bloccato').asstring := 'no';
      end
      else
      begin
        tabella.fieldbyname('bloccato').asstring := 'si';
      end;
      tabella.post;
    end;

    bloccato_click := false;

    abilita_bloccato;
    abilita_codice;
  end;
end;

procedure TGESVEN.v_bottone_dati_extra_righeClick(Sender: TObject);
begin
  inherited;

  if aggiorna_consolidato then
  begin
    aggiorna_consolidato := false;
    if v_griglia_righe.canfocus then
    begin
      v_griglia_righe.setfocus;
    end;
  end;
end;

procedure tgesven.abilita_bloccato;
begin
  if tabella.fieldbyname('bloccato').asstring = 'si' then
  begin
    v_bloccato.caption := 'bloccato';
    v_bloccato.hint := 'sblocca il documento';
  end
  else
  begin
    v_bloccato.caption := 'libero';
    v_bloccato.hint := 'blocca il documento';
  end;
end;

procedure tgesven.abilita_sda(flag: boolean);
begin
  if flag then
  begin
    if ((tipo_documento = 'bolla') or (tipo_documento = 'corrispettivo') or (tipo_documento = 'ddt') or
      (tipo_documento = 'fattura accompagnatoria')
      or ((tipo_documento = 'ddt fornitori') and (tsp.fieldbyname('tipo_corriere').asstring = 'bartolini')))
      and (tabella.fieldbyname('situazione').asstring <> 'inserito') then
    begin
      v_sda.enabled := true;
    end
    else
    begin
      v_sda.enabled := false;
    end;
  end
  else
  begin
    v_sda.enabled := false;
  end;
end;

procedure tgesven.abilita_tma_codice;
begin
  if tma_codice_agente <> '' then
  begin
    v_tma_codice.enabled := false;
    v_tma_codice.color := clbtnface;
  end;
end;

procedure tgesven.aggiornalotto(aarticolo: string;
  alotto:
  string;
  adatascad:
  tdate);
begin
  lot.sql.clear;
  lot.sql.add('select * from lot where  art_codice=''' + aarticolo + ''' and lotto=''' + alotto + '''');
  lot.open;
  if lot.recordcount = 0 then
  begin
    lot.sql.clear;
    lot.sql.add('select * from lot');
    lot.open;
    lot.append;
    lot.fieldbyname('art_codice').asstring := aarticolo;
    lot.fieldbyname('lotto').asstring := alotto;
    lot.fieldbyname('descrizione').asstring := alotto;
    lot.fieldbyname('data_scadenza').asdatetime := adatascad;
    lot.fieldbyname('chiuso').asstring := 'no';
    lot.fieldbyname('utente').asstring := '';
    lot.fieldbyname('data_ora').asdatetime := now;
    lot.fieldbyname('esistenza').asinteger := 0;
    lot.fieldbyname('utente_creazione').asstring := '';
    lot.post;
  end;
  ltm.close;
  ltm.sql.clear;
  ltm.sql.add('select * from ltm');
  ltm.sql.add('where');
  ltm.sql.add('art_codice =''' + tabella_righe.fieldbyname('art_codice').asstring + ''' and');
  ltm.sql.add('doc_progressivo_origine=' + tabella_righe.fieldbyname('progressivo').asstring + ' and');
  ltm.sql.add('doc_riga_origine=' + tabella_righe.fieldbyname('riga').asstring + ' and');
  ltm.sql.add('documento_origine=''' + tipo_documento + ' ven' + ''' and');
  ltm.sql.add('lotto=''' + alotto + '''');
  ltm.open;
  if ltm.recordcount = 0 then
  begin
    ltm.sql.clear;
    ltm.sql.text := 'select * from ltm where progressivo = :progressivo';
    ltm.open;
    ltm.append;
    ltm.fieldbyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
    ltm.fieldbyname('lotto').asstring := alotto;
    ltm.fieldbyname('tma_codice').asstring := tabella_righe.fieldbyname('tma_codice').asstring;
    ltm.fieldbyname('doc_progressivo_origine').asinteger := tabella_righe.fieldbyname('progressivo').asinteger;
    ltm.fieldbyname('data_registrazione').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    ltm.fieldbyname('quantita').asfloat := tabella_righe.fieldbyname('quantita').asfloat;
    read_tabella(arc.arcdit, 'tmo', 'codice', v_tmo_codice.text);
    if adatascad <> 0 then
    begin
      /// //
    end;
    ltm.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;
    ltm.fieldbyname('documento_origine').asstring := tipo_documento + ' ven';
    ltm.fieldbyname('doc_riga_origine').asinteger := tabella_righe.fieldbyname('riga').asinteger;
    if tipo_documento = 'ddt fornitori' then
    begin
      ltm.fieldbyname('cfg_tipo').asstring := 'F';
    end
    else
    begin
      ltm.fieldbyname('cfg_tipo').asstring := 'C';
    end;
    ltm.fieldbyname('cfg_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    ltm.fieldbyname('data_documento').asdatetime := tabella.fieldbyname('data_documento').asdatetime;
    ltm.fieldbyname('serie_documento').asstring := tabella.fieldbyname('serie_documento').asstring;
    ltm.fieldbyname('numero_documento').asfloat := tabella.fieldbyname('numero_documento').asfloat;
    ltm.post;
  end
  else
  begin
    ltm.sql.clear;
    ltm.sql.add('update ltm');
    ltm.sql.add('set quantita =' + tabella_righe.fieldbyname('quantita').asstring);
    ltm.sql.add('where');
    ltm.sql.add('art_codice =''' + tabella_righe.fieldbyname('art_codice').asstring + ''' and');
    ltm.sql.add('doc_progressivo_origine=' + tabella_righe.fieldbyname('progressivo').asstring + ' and');
    ltm.sql.add('doc_riga_origine=' + tabella_righe.fieldbyname('riga').asstring + ' and');
    ltm.sql.add('documento_origine=''' + tipo_documento + ' ven' + ''' and');
    ltm.sql.add('lotto=''' + alotto + '''');
    ltm.execsql;
  end;
end;

procedure tgesven.v_cms_codiceexit(sender: tobject);
begin
  inherited;
  cms_codice_controllo(true);

  if controllo and (cms.fieldbyname('chiusa').asstring = 'si') then
  begin
    messaggio(200, 'la commessa è chiusa');
  end;
  if controllo and (variato_stringa <> v_cms_codice.text) then
  begin
    if (cms.fieldbyname('cli_codice').asstring <> v_cli_codice.text) and
      (tipo_documento <> 'ddt fornitori') and (tipo_documento <> 'preventivo nominativi') then
    begin
      messaggio(200, 'il cliente intestatario della commessa è diverso da quello del documento');
    end
    else
    begin
      tabella.fieldbyname('tipologia').asstring := cms.fieldbyname('cmt_codice').asstring;
      tipologia_controllo(false);

      if (cms.fieldbyname('tma_codice').asstring <> '') and
        (cms.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstring) and
        ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
      begin
        if messaggio(300, 'aggiorna il deposito principale per adeguarlo a quello della commessa') = 1 then
        begin
          tabella.fieldbyname('tma_codice').asstring := cms.fieldbyname('tma_codice').asstring;
          tma_codice_controllo(false);
        end;
      end
      else
      begin
        if (cmt.fieldbyname('tma_codice').asstring <> '') and
          (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstring) then
        begin
          if messaggio(300, 'aggiorna il deposito principale per adeguarlo a quello della sottocommessa') = 1 then
          begin
            tabella.fieldbyname('tma_codice').asstring := cmt.fieldbyname('tma_codice').asstring;
            tma_codice_controllo(false);
          end;
        end;
      end;
    end;
  end;
end;

procedure tgesven.cms_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cms, v_cms_codice, blocco, tab_control, tab_testata_magazzino, tabella);
end;

procedure tgesven.v_tipologiaenter(sender: tobject);
begin
  inherited;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_cms_codice.text;
  variato_stringa := v_tipologia.text;
end;

procedure tgesven.v_tipologiaexit(sender: tobject);
begin
  inherited;
  tipologia_controllo(true);

  if controllo and (variato_stringa <> v_tipologia.text) then
  begin
    if (cmt.fieldbyname('tma_codice').asstring <> '') and
      (cmt.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstring) then
    begin
      if messaggio(300, 'aggiorna il deposito principale per adeguarlo a quello della sottocommessa') = 1 then
      begin
        tabella.fieldbyname('tma_codice').asstring := cmt.fieldbyname('tma_codice').asstring;
        tma_codice_controllo(false);
      end;
    end;
  end;
end;

procedure tgesven.tipologia_controllo(blocco: boolean);
begin
  if (v_cms_codice.text = '') and (v_tipologia.text = '') then
  begin
    tabella_controllo(true, cmt, v_cms_codice, v_tipologia, blocco, tab_control, tab_testata_magazzino, tabella);
  end
  else
  begin
    tabella_controllo(false, cmt, v_cms_codice, v_tipologia, blocco, tab_control, tab_testata_magazzino, tabella);
  end;
end;

procedure tgesven.v_evadereclick(sender: tobject);
begin
  inherited;
  assegna_filtro_evadere;
  esegui_query_righe;
end;

procedure tgesven.v_tum_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_tum_codice.text;
end;

procedure tgesven.v_tum_codiceexit(sender: tobject);
begin
  inherited;
  tum_codice_controllo(true);
  if variato_stringa <> v_tum_codice.text then
  begin
    if controllo then
    begin
      if (v_tum_codice.text <> art.fieldbyname('tum_codice').asstring) and
        (v_tum_codice.text <> art.fieldbyname('tum_codice_vendite').asstring) then
      begin
        messaggio(200, 'l''unità di misura non è presente in anagrafica articolo' + #13 +
          'verranno assegnati la quantità base uguale alla quantità di vendita ed il prezzo dell''unità base');
      end;
    end;
    assegna_tum_quantita_base;
    cerca_prezzo;

    variato_provvigioni := true;
    assegna_valore_prezzo;
    assegna_valore_tsm_codice_righe;
    calcola_importo;
  end;
end;

procedure tgesven.tum_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tum, v_tum_codice, blocco, nil, nil, tabella_righe);
end;

procedure tgesven.v_tutteclick(sender: tobject);
begin
  inherited;
  assegna_filtro_evadere;
  esegui_query_righe;
end;

procedure tgesven.assegna_filtro_evadere;
begin
  if v_evadere.down then
  begin
    if tipo_documento = 'ordine' then
    begin
      if pos(' and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'') ', tabella_righe.sql.text) = 0 then
      begin
        tabella_righe.sql.text := copy(tabella_righe.sql.text, 1, pos('order by ', tabella_righe.sql.text) - 1) +
          ' and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'') ' +
          copy(tabella_righe.sql.text, pos('order by ', tabella_righe.sql.text), length(tabella_righe.sql.text));
      end;
    end
    else if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      if pos(' and (pvr.situazione = ''inserito'' or pvr.situazione = ''evaso parziale'') ', tabella_righe.sql.text) = 0 then
      begin
        tabella_righe.sql.text := copy(tabella_righe.sql.text, 1, pos('order by ', tabella_righe.sql.text) - 1) +
          ' and (pvr.situazione = ''inserito'' or pvr.situazione = ''evaso parziale'') ' +
          copy(tabella_righe.sql.text, pos('order by ', tabella_righe.sql.text), length(tabella_righe.sql.text));
      end;
    end;
  end
  else
  begin
    if tipo_documento = 'ordine' then
    begin
      tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, ' and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'') ', '', []);
    end
    else if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      tabella_righe.sql.text := stringreplace(tabella_righe.sql.text, ' and (pvr.situazione = ''inserito'' or pvr.situazione = ''evaso parziale'') ', '', []);
    end;
  end;
end;

procedure TGESVEN.v_cmrClick(Sender: TObject);
var
  pr: tgescmr;
begin
  inherited;

  parametri_extra_programma_chiamato[0] := tipo_documento;

  pr := tgescmr.create(nil);
  pr.codice := tabella.fieldbyname('progressivo').asinteger;
  pr.showmodal;

  freeandnil(pr);
end;

procedure tgesven.v_cms_codiceenter(sender: tobject);
begin
  inherited;
  variato_stringa := v_cms_codice.text;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := 'si';
  visarc_filtro_02 := v_cli_codice.text;

  if tipo_documento = 'ddt fornitori' then
  begin
    v_cms_codice.lookcollvisname := 'CMS';
  end
  else
  begin
    v_cms_codice.lookcollvisname := 'CMS000';
  end;
end;

procedure tgesven.v_analiticaclick(sender: tobject);
begin
  inherited;
  if tabella.fieldbyname('ese_codice').asstring <> esercizio then
  begin
    messaggio(000, 'l''esercizio del documento è diverso dall''esercizio attivo');
  end
  else
  begin
    esegui_analitica('righe');
  end;
end;

procedure tgesven.v_analitica_sconto_cassaclick(sender: tobject);
begin
  inherited;
  esegui_analitica('sconto_cassa');
end;

procedure tgesven.v_analitica_sconto_finaleclick(sender: tobject);
begin
  inherited;
  esegui_analitica('sconto_finale');
end;

procedure tgesven.v_analitica_spese_bolloclick(sender: tobject);
begin
  inherited;
  esegui_analitica('spese_bollo');
end;

procedure tgesven.v_analitica_spese_extraclick(sender: tobject);
begin
  inherited;
  esegui_analitica('spese_extra');
end;

procedure tgesven.v_analitica_spese_incassoclick(sender: tobject);
begin
  inherited;
  esegui_analitica('spese_incasso');
end;

procedure tgesven.v_analitica_spese_trasportoclick(sender: tobject);
begin
  inherited;
  esegui_analitica('spese_trasporto');
end;

procedure tgesven.crea_kit;
var
  quantita: double;
  riga_origine, riga: integer;
  tipo_movimento, tca_codice, tcc_codice, tsm_codice, tsm_codice_art: string;
  data_consegna: variant;

  kit_duplicato: boolean;
  prezzo_kit, importo_sconto_kit: double;
  tsm_codice_kit, tsm_codice_art_kit: string;
begin
  kit.close;
  kit.parambyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
  kit.open;

  riga_origine := tabella_righe.fieldbyname('riga').asinteger;
  riga := tabella_righe.fieldbyname('riga').asinteger;
  quantita := tabella_righe.fieldbyname('quantita').asfloat;
  tipo_movimento := tabella_righe.fieldbyname('tipo_movimento').asstring;
  tsm_codice := tabella_righe.fieldbyname('tsm_codice').asstring;
  tsm_codice_art := tabella_righe.fieldbyname('tsm_codice_art').asstring;
  data_consegna := tabella_righe.fieldbyname('data_consegna').value;

  // aggiorna riga kit prodotto finito
  tabella_righe.locate('progressivo;riga', vararrayof([tabella.fieldbyname('progressivo').asinteger, riga_origine]), []);
  tabella_righe.edit;

  kit_duplicato := false;
  if arc.dit.fieldbyname('modalita_kit').asstring <> 'kit' then
  begin
    if art.fieldbyname('prezzo_kit_duplicato').asstring = 'si' then
    begin
      kit_duplicato := true;
      prezzo_kit := tabella_righe.fieldbyname('prezzo').asfloat;
      importo_sconto_kit := tabella_righe.fieldbyname('importo_sconto').asfloat;
      tsm_codice_kit := tabella_righe.fieldbyname('tsm_codice').asstring;
      tsm_codice_art_kit := tabella_righe.fieldbyname('tsm_codice_art').asstring;
    end;

    tabella_righe.fieldbyname('descrizione2').asstring := 'qtà: ' + formatfloat(formato_display_quantita, quantita);
    tabella_righe.fieldbyname('tsm_codice').asstring := '';
    tabella_righe.fieldbyname('tsm_codice_art').asstring := '';
    tabella_righe.fieldbyname('quantita_kit').asfloat := quantita;
    tabella_righe.fieldbyname('quantita').asfloat := 0;
    tabella_righe.fieldbyname('tum_quantita_base').asfloat := 0;
    tabella_righe.fieldbyname('prezzo').asfloat := 0;
    tabella_righe.fieldbyname('importo_sconto').asfloat := 0;
    tabella_righe.fieldbyname('importo').asfloat := 0;
    tabella_righe.fieldbyname('importo_euro').asfloat := 0;
    tabella_righe.fieldbyname('importo_iva').asfloat := 0;
    tabella_righe.fieldbyname('importo_iva_euro').asfloat := 0;
  end;

  tabella_righe.fieldbyname('kit').asstring := 'pf';
  scrivi_record_righe;

  // articoli
  while not kit.eof do
  begin
    tabella_righe.append;

    riga := riga + incremento_righe;
    tabella_righe.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    tabella_righe.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    tabella_righe.fieldbyname('riga').asinteger := riga;
    // usato variabile già presente che non era mai referenziata
    tabella_righe.fieldbyname('riga_origine_kit').asfloat := riga_origine;

    tabella_righe.fieldbyname('art_codice').asstring := kit.fieldbyname('art_codice_componente').asstring;
    tabella_righe.fieldbyname('descrizione1').asstring := kit.fieldbyname('art_descrizione1').asstring;
    tabella_righe.fieldbyname('descrizione2').asstring := kit.fieldbyname('art_descrizione2').asstring;
    tabella_righe.fieldbyname('tiv_codice').asstring := kit.fieldbyname('tiv_codice').asstring;
    if tabella.fieldbyname('tiv_codice').asstring <> '' then
    begin
      tabella_righe.fieldbyname('tiv_codice').asstring := tabella.fieldbyname('tiv_codice').asstring;
    end;
    tabella_righe.fieldbyname('quantita').asfloat := arrotonda
      (kit.fieldbyname('quantita').asfloat * quantita, decimali_quantita(kit.fieldbyname('tum_codice').asstring));
    // tabella_righe.fieldbyname('prezzo').asfloat := kit.fieldbyname('prezzo').asfloat;

    tabella_righe.fieldbyname('tma_codice').asstring := tabella.fieldbyname('tma_codice').asstring;
    tabella_righe.fieldbyname('cms_codice').asstring := tabella.fieldbyname('cms_codice').asstring;
    tabella_righe.fieldbyname('tipologia').asstring := tabella.fieldbyname('tipologia').asstring;

    tabella_righe.fieldbyname('kit').asstring := 'mp';
    tabella_righe.fieldbyname('tipo_movimento').asstring := tipo_movimento;
    tabella_righe.fieldbyname('data_consegna').value := data_consegna;

    art.params[0].asstring := tabella_righe.fieldbyname('art_codice').asstring;
    art.close;
    art.open;
    if art.fieldbyname('tum_codice_vendite').asstring <> '' then
    begin
      tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice_vendite').asstring;
    end
    else
    begin
      tabella_righe.fieldbyname('tum_codice').asstring := art.fieldbyname('tum_codice').asstring;
    end;

    if tabella.fieldbyname('tco_codice').asstring <> '' then
    begin
      tca_codice := '';
      tcc_codice := '';
      tcc_codice := cli.fieldbyname('tcc_codice').asstring;
      if tabella.fieldbyname('tcc_codice').asstring <> '' then
      begin
        tcc_codice := tabella.fieldbyname('tcc_codice').asstring;
      end;

      tca_codice := art.fieldbyname('tca_codice').asstring;
      if read_tabella(cpv, vararrayof([tabella.fieldbyname('tdo_codice').asstring, tcc_codice, tca_codice])) then
      begin
        tabella_righe.fieldbyname('gen_codice').asstring := cpv.fieldbyname('gen_codice').asstring;
        if tabella_righe.fieldbyname('tipo_movimento').asstring = 'omaggio' then
        begin
          tabella_righe.fieldbyname('gen_codice_storno').asstring := cpv.fieldbyname('gen_codice_omaggi').asstring;
        end
        else
        begin
          tabella_righe.fieldbyname('gen_codice_storno').asstring := cpv.fieldbyname('gen_codice_sconti').asstring;
        end;
      end;
    end;

    if arc.dit.fieldbyname('modalita_kit').asstring <> 'kit' then
    begin
      if kit_duplicato then
      begin
        tabella_righe.fieldbyname('prezzo').asfloat := prezzo_kit;
        tabella_righe.fieldbyname('importo_sconto').asfloat := importo_sconto_kit;
        tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice_kit;
        tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art_kit;
      end
      else
      begin
        cerca_prezzo;
        if kit.fieldbyname('prezzo').asfloat <> 0 then
        begin
          tabella_righe.fieldbyname('prezzo').asfloat := kit.fieldbyname('prezzo').asfloat;
        end;
        if kit.fieldbyname('tsm_codice').asstring <> '' then
        begin
          tabella_righe.fieldbyname('tsm_codice_art').asstring := kit.fieldbyname('tsm_codice').asstring;
        end;

        if tsm_codice <> '' then
        begin
          tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
        end;
        if tsm_codice_art <> '' then
        begin
          tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
        end;
      end;

      calcola_importo;
      assegna_provvigioni;
    end;

    esegui_controllo_esistenza;
    scrivi_record_righe;

    kit.next;
  end;
  // riga ---------------
  tabella_righe.append;

  riga := riga + incremento_righe;
  tabella_righe.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
  tabella_righe.fieldbyname('riga').asinteger := riga;

  tabella_righe.fieldbyname('art_codice').asstring := '';
  tabella_righe.fieldbyname('descrizione1').asstring := '----------------------------------------';

  scrivi_record_righe;
end;

procedure tgesven.aggiorna_condizioni_cliente;
begin
  apri_transazione;
  try
    try
      memorizza;

      parte_attiva := 'pannello_righe';
      tabella_righe.first;
      tabella_righe.disablecontrols;
      while not tabella_righe.eof do
      begin
        if tabella_righe.fieldbyname('art_codice').asstring <> '' then
        begin
          assegna_vecchio_righe;
          if tabella_edit(tabella_righe) then
          begin
            cerca_prezzo_documento('', tabella_righe);

            tabella_righe.fieldbyname('prezzo').asfloat := prezzo;
            tabella_righe.fieldbyname('tsm_codice').asstring := tsm_codice;
            tabella_righe.fieldbyname('tsm_codice_art').asstring := tsm_codice_art;
            tabella_righe.fieldbyname('importo_sconto').asfloat := importo_sconto;
            assegna_prezzo_netto(decimali_max_prezzo, tag.fieldbyname('prezzo_netto_sconti').asstring, tabella_righe);

            calcola_importo;

            memorizza;
          end;
        end;

        tabella_righe.next;
      end;

      commit_transazione;
    except
      on e: exception do
      begin
        rollback_transazione(e.message);
      end;
    end;
  finally
    tabella_righe.enablecontrols;
    chiudi_transazione;
  end;
  //abilita_codice;
end;

procedure tgesven.crea_record_rma;
var
  tipo_documento_rma: string;
begin
  if tdo.fieldbyname('rma').asstring = 'si' then
  begin
    ltm.close;
    ltm.sql.clear;
    ltm.sql.add('select lotto from ltm');
    ltm.sql.add('where documento_origine = :codice0');
    ltm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
    ltm.params[0].asstring := tipo_documento + ' ven';
    ltm.params[1].asfloat := tabella_righe.fieldbyname('progressivo').asfloat;
    ltm.params[2].asinteger := tabella_righe.fieldbyname('riga').asinteger;
    ltm.open;
    if (tipo_documento = 'ddt fornitori') then
    begin
      tipo_documento_rma := 'ddt a fornitore';

      rma.progressivo := progressivo_rma;
      rma.intestatario := 'fornitore';
      rma.tipo_documento := tipo_documento_rma;
      rma.cfg_codice := tabella.fieldbyname('cli_codice').asstring;
      rma.documento_origine := tipo_documento_rma;
      rma.data_documento := tabella.fieldbyname('data_documento').asdatetime;
      rma.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
      rma.serie_documento := tabella.fieldbyname('serie_documento').asstring;
      rma.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
      rma.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;

      if ltm.isempty then
      begin
        rma.lot_codice := '';
      end
      else
      begin
        rma.lot_codice := ltm.fieldbyname('lotto').asstring;
      end;
      rma.crea_rmr;
    end
    else if (tipo_documento = 'ddt') or (tipo_documento = 'fattura accompagnatoria') or
      (tipo_documento = 'nota credito') then
    begin
      if progressivo_rma <> 0 then
      begin
        if tipo_documento = 'ddt' then
        begin
          tipo_documento_rma := 'ddt a cliente';
        end
        else if tipo_documento = 'nota credito' then
        begin
          tipo_documento_rma := 'n.credito cliente';
        end
        else
        begin
          tipo_documento_rma := 'fattura a cliente';
        end;

        rma.progressivo := progressivo_rma;
        rma.intestatario := 'cliente';
        rma.tipo_documento := tipo_documento_rma;
        rma.cfg_codice := tabella.fieldbyname('cli_codice').asstring;
        rma.documento_origine := tipo_documento_rma;
        rma.data_documento := tabella.fieldbyname('data_documento').asdatetime;
        rma.numero_documento := tabella.fieldbyname('numero_documento').asfloat;
        rma.serie_documento := tabella.fieldbyname('serie_documento').asstring;
        rma.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
        rma.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;

        if ltm.isempty then
        begin
          rma.lot_codice := '';
        end
        else
        begin
          rma.lot_codice := ltm.fieldbyname('lotto').asstring;
        end;
        rma.crea_rmr;
      end;
    end;
  end;
end;

(*
  procedure tgesven.assegna_prezzo_netto(query_prezzo_netto: tmyquery_go);
  begin
  if tabella_edit(query_prezzo_netto) then
  begin
  query_prezzo_netto.fieldbyname('prezzo_netto_listino').asfloat := arrotonda
  (query_prezzo_netto.fieldbyname('prezzo').asfloat * sconto(query_prezzo_netto.fieldbyname('tsm_codice').asstring) *
  sconto(query_prezzo_netto.fieldbyname('tsm_codice_art').asstring) / 10000, decimali_max_prezzo);

  if tag.fieldbyname('prezzo_netto_sconti').asstring = 'si' then
  begin
  query_prezzo_netto.fieldbyname('prezzo_netto').asfloat := query_prezzo_netto.fieldbyname('prezzo').asfloat;
  end
  else
  begin
  if query_prezzo_netto.fieldbyname('quantita').asfloat <> 0 then
  begin
  query_prezzo_netto.fieldbyname('prezzo_netto').asfloat := arrotonda
  ((query_prezzo_netto.fieldbyname('prezzo').asfloat * sconto(query_prezzo_netto.fieldbyname('tsm_codice').asstring) *
  sconto(query_prezzo_netto.fieldbyname('tsm_codice_art').asstring) / 10000) -
  query_prezzo_netto.fieldbyname('importo_sconto').asfloat / query_prezzo_netto.fieldbyname('quantita').asfloat, decimali_max_prezzo);
  end
  else
  begin
  query_prezzo_netto.fieldbyname('prezzo_netto').asfloat := arrotonda
  ((query_prezzo_netto.fieldbyname('prezzo').asfloat * sconto(query_prezzo_netto.fieldbyname('tsm_codice').asstring) *
  sconto(query_prezzo_netto.fieldbyname('tsm_codice_art').asstring) / 10000) - query_prezzo_netto.fieldbyname('importo_sconto').asfloat,
  decimali_max_prezzo);
  end;
  end;
  end;
  end;
*)

procedure tgesven.cerca_prezzo_documento(tipo: string; righe: tmyquery_go);
begin
  if (righe.fieldbyname('kit').asstring = 'mp') and (arc.dit.fieldbyname('modalita_kit').asstring = 'kit') then
  begin
    prezzo := 0;
    importo_sconto := 0;
    tsm_codice := '';
    tsm_codice_art := '';
  end
  else
  begin
    if tipo = '' then
    begin
      cerca_prezzi.cerca_prezzo('C', tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring,
        tipo_prezzo, righe.fieldbyname('art_codice').asstring, righe.fieldbyname('tma_codice').asstring,
        righe.fieldbyname('quantita').asfloat, prezzo, tsm_codice, tsm_codice_art,
        tabella.fieldbyname('data_documento').asdatetime, tabella.fieldbyname('tva_codice').asstring,
        tabella.fieldbyname('cambio').asfloat, cifre_decimali_prezzo, tabella.fieldbyname('tlv_codice').asstring,
        1, righe.fieldbyname('tum_codice').asstring, tabella.fieldbyname('tdo_codice').asstring, importo_sconto, true,
        righe.fieldbyname('numero_colli').asinteger, righe.fieldbyname('numero_confezioni').asinteger);
    end
    else if tipo = 'evasione' then
    begin
      cerca_prezzi.cerca_prezzo('C', testata.fieldbyname('cli_codice').asstring, testata.fieldbyname('indirizzo').asstring,
        tipo_prezzo, righe.fieldbyname('art_codice').asstring, righe.fieldbyname('tma_codice').asstring,
        righe.fieldbyname('quantita').asfloat, prezzo, tsm_codice, tsm_codice_art, testata.fieldbyname('data_documento').asdatetime,
        testata.fieldbyname('tva_codice').asstring, testata.fieldbyname('cambio').asfloat, cifre_decimali_prezzo,
        testata.fieldbyname('tlv_codice').asstring, 1, righe.fieldbyname('tum_codice').asstring, testata.fieldbyname('tdo_codice').asstring,
        importo_sconto, true, righe.fieldbyname('numero_colli').asinteger, righe.fieldbyname('numero_confezioni').asinteger);
    end
    else if tipo = 'fornitore' then
    begin
      cerca_prezzi.cerca_prezzo('F', art.fieldbyname('frn_codice').asstring, '', tipo_prezzo, art.fieldbyname('codice').asstring,
        righe.fieldbyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art,
        date, divisa_di_conto, 1, cifre_decimali_prezzo_acq, frn_rda.fieldbyname('tla_codice').asstring,
        1, art.fieldbyname('tum_codice').asstring, '', importo_sconto, false);
    end;

    if (arc.utn.fieldbyname('blocco_modifica_prezzi_vendita').asstring = 'si') and (prezzo <> 0) then
    begin
      blocco_modifica_prezzi_vendita := true;
    end
    else
    begin
      blocco_modifica_prezzi_vendita := false;
    end;
  end;
end;

procedure tgesven.crea_record_ncr;
begin
  nca.progressivo := progressivo_nca;
  nca.data_registrazione := tabella.fieldbyname('data_documento').asdatetime;
  nca.tac_codice := tac_codice_nca;
  nca.modulo_origine := 'ven';
  nca.documento_origine := tipo_documento;
  nca.doc_progressivo_origine := tabella_righe.fieldbyname('progressivo').asinteger;
  nca.doc_riga_origine := tabella_righe.fieldbyname('riga').asinteger;

  nca.crea_ncr;
  progressivo_nca := 0;
end;

procedure tgesven.cancella;
var
  approntato: tmyquery_go;
begin
  // controllo se la fattura deriva da vendita negozio
  if tipo_documento = 'fattura immediata' then
  begin
    neg.close;
    neg.parambyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
    neg.open;
  end
  else
  begin
    neg.close;
  end;

  if not approntato_totale then
  begin
    approntato := tmyquery_go.create(nil);
    approntato.connection := arc.arcdit;
    approntato.sql.text := 'select id from ' + tabella_righe_tablename +
      ' where progressivo = ' + tabella.fieldbyname('progressivo').asstring +
      ' and doc_quantita_approntata <> 0';
    approntato.open;
    if approntato.recordcount > 0 then
    begin
      if messaggio(300, 'ripristina la quantità approntata di tutte le righe dell''ordine al valore antecedente alla creazione del documento in gestione') = 1 then
      begin
        approntato_totale := true;
      end;
    end;
    approntato.free;
  end;

  inherited;

  if not neg.isempty then
  begin
    ngt.close;
    ngt.parambyname('progressivo').asinteger := neg.fieldbyname('doc_progressivo_origine').asinteger;
    ngt.execsql;
  end;
end;

procedure TGESVEN.assegna_query_navigazione;
begin
  inherited;

  if not utntdo.isempty then
  begin
    tabella_primo.sql.text := copy(tabella_primo.sql.text, 1, pos('where ', tabella_primo.sql.text) - 1) +
      'left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = ' +
      tabella_tablename + '.tdo_codice ' +
      copy(tabella_primo.sql.text, pos('where ', tabella_primo.sql.text),
      pos('order by', tabella_primo.sql.text) - pos('where ', tabella_primo.sql.text)) + ' ' +
      'and utntdo.tdo_codice is not null ' +
      copy(tabella_primo.sql.text, pos('order by ', tabella_primo.sql.text) - 1, length(tabella_primo.sql.text));

    tabella_ultimo.sql.text := copy(tabella_ultimo.sql.text, 1, pos('where ', tabella_ultimo.sql.text) - 1) +
      'left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = ' +
      tabella_tablename + '.tdo_codice ' +
      copy(tabella_ultimo.sql.text, pos('where ', tabella_ultimo.sql.text),
      pos('order by', tabella_ultimo.sql.text) - pos('where ', tabella_ultimo.sql.text)) + ' ' +
      'and utntdo.tdo_codice is not null ' +
      copy(tabella_ultimo.sql.text, pos('order by ', tabella_ultimo.sql.text) - 1, length(tabella_ultimo.sql.text));

    tabella_successivo.sql.text := copy(tabella_successivo.sql.text, 1, pos('where ', tabella_successivo.sql.text) - 1) +
      'left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = ' +
      tabella_tablename + '.tdo_codice ' +
      copy(tabella_successivo.sql.text, pos('where ', tabella_successivo.sql.text),
      pos('order by', tabella_successivo.sql.text) - pos('where ', tabella_successivo.sql.text)) + ' ' +
      'and utntdo.tdo_codice is not null ' +
      copy(tabella_successivo.sql.text, pos('order by ', tabella_successivo.sql.text) - 1, length(tabella_successivo.sql.text));

    tabella_precedente.sql.text := copy(tabella_precedente.sql.text, 1, pos('where ', tabella_precedente.sql.text) - 1) +
      'left join utntdo on utntdo.utn_codice = ' + quotedstr(utente) + ' and utntdo.tdo_codice = ' +
      tabella_tablename + '.tdo_codice ' +
      copy(tabella_precedente.sql.text, pos('where ', tabella_precedente.sql.text),
      pos('order by', tabella_precedente.sql.text) - pos('where ', tabella_precedente.sql.text)) + ' ' +
      'and utntdo.tdo_codice is not null ' +
      copy(tabella_precedente.sql.text, pos('order by ', tabella_precedente.sql.text) - 1, length(tabella_precedente.sql.text));
  end;
end;

procedure TGESVEN.v_modifica_provvigioniClick(Sender: TObject);
var
  pr: timpalf;
begin
  inherited;

  pr := timpalf.create(nil);
  pr.v_form_caption := 'Variazione provvigioni';
  pr.v_descrizione_caption := 'nuova percentuale provvigioni';
  pr.v_width_campo := 16;
  pr.valore_passato := 0;
  pr.tipo_campo := 'numero';
  pr.formattare := true;
  pr.decimali := 2;
  pr.campo_password := false;
  pr.showmodal;

  if not pr.premuto_escape and (pr.valore_passato <> 0) then
  begin
    tabella_righe.first;
    tabella_righe.disablecontrols;

    while not tabella_righe.eof do
    begin
      if (tabella_righe.fieldbyname('situazione').asstring = 'inserito') and
        (tabella_righe.fieldbyname('art_codice').asstring <> '') then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('percentuale_provvigioni').asfloat := pr.valore_passato;

          tabella_righe.post;
        end;
      end;

      tabella_righe.next;
    end;

    messaggio(100, 'aggiornamento terminato');

    tabella_righe.first;
    tabella_righe.enablecontrols;
  end;

  freeandnil(pr);
end;

procedure TGESVEN.v_lti_progressivoEnter(Sender: TObject);
begin
  inherited;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := 'C';
  visarc_filtro_02 := v_cli_codice.text;

  variato_importo := v_lti_progressivo.value;
end;

procedure TGESVEN.v_lti_progressivoExit(Sender: TObject);
begin
  inherited;

  if variato_importo <> v_lti_progressivo.value then
  begin
    if v_lti_progressivo.intvalue = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('tiv_codice').asstring := '';
        assegna_valore_tiv_codice;
        tiv_codice_controllo(false);
      end;
    end
    else
    begin
      v_lti_progressivo_controllo(true);
      dicint.assegna_tiv_codice(v_lti_progressivo.intvalue, tabella);
      assegna_valore_tiv_codice;
      tiv_codice_controllo(false);
    end;
  end;
end;

procedure TGESVEN.v_lti_progressivo_controllo(blocco: boolean);
begin
  inherited;

  tabella_controllo(true, lti, v_lti_progressivo, v_cfg_tipo, v_cli_codice, blocco, tab_control, tab_testata_riferimento, tabella);
end;

procedure TGESVEN.abilita_tma_codice_righe;
begin
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    disabilita_campo(v_tma_codice_righe);
  end
  else
  begin
    if v_tma_codice.text = '' then
    begin
      disabilita_campo(v_tma_codice_righe);
    end
    else
    begin
      abilita_campo(v_tma_codice_righe);

      if v_art_codice.text = '' then
      begin
        disabilita_campo(v_tma_codice_righe);
      end
      else
      begin
        abilita_campo(v_tma_codice_righe);
        v_tma_codice_righe.tabstop := false;
      end;
    end;
  end;
end;

procedure TGESVEN.abilita_tiv_codice_righe;
begin
  if tipo_documento = 'ddt fornitori' then
  begin
    disabilita_campo(v_tiv_codice_righe);
  end
  else
  begin
    if ((tipo_documento = 'ddt') or (tipo_documento = 'bolla')) and (tabella.fieldbyname('tdo_codice_differite').asstring = '') then
    begin
      disabilita_campo(v_tiv_codice_righe);
    end
    else
    begin
      abilita_campo(v_tiv_codice_righe);
      v_tiv_codice_righe.tabstop := false;

      if v_art_codice.text = '' then
      begin
        disabilita_campo(v_tiv_codice_righe);
      end
      else
      begin
        abilita_campo(v_tiv_codice_righe);
        v_tiv_codice_righe.tabstop := false;
      end;
    end;
  end;
end;

procedure TGESVEN.abilita_gen_codice_righe;
begin
  if tabella.fieldbyname('tco_codice').asstring = '' then
  begin
    disabilita_campo(v_gen_codice_righe);
  end
  else
  begin
    abilita_campo(v_gen_codice_righe);
    v_gen_codice_righe.tabstop := false;

    if v_art_codice.text = '' then
    begin
      disabilita_campo(v_gen_codice_righe);
    end
    else
    begin
      abilita_campo(v_gen_codice_righe);
      v_gen_codice_righe.tabstop := false;
    end;
  end;
end;

end.

  var
  pr: tpagper;
begin
  pr := tpagper.create
(nil);
if pr.esegui_form then
begin
  pr.codice := vararrayof
([v_progressivo.text, '']);
pr.modulo := 'vendite';
pr.tipo_documento := tipo_documento;
pr.totale_documento := tabella.fieldbyname
('importo_totale').asfloat;
if
(((copy(tipo_documento, 1, 10) = 'preventivo') or (tipo_documento = 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'evaso')) or
  (((tipo_documento <> 'preventivo') and (tipo_documento <> 'ordine')) and (tabella.fieldbyname('situazione').asstring <> 'consolidato')) then
begin
  pr.modificabile := true;
end
else
begin
  pr.modificabile := false;
end;
pr.showmodal;
end;
pr.free;
