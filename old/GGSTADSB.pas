unit GGSTADSB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGSTAMPA, StdCtrls, ExtCtrls, ppModule, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess,
  Menus, Buttons, ComCtrls, RzTabs, ToolWin, Mask, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, ppMemo,
  RzButton, RzSpnEdt, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL, IdSASLAnonymous,
  IdExplicitTLSClientServerBase, IdSMTPBase, ppSubRpt, MemDS, VirtualTable, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, raizeedit_go, RzEdit,
  ppParameter, ppDesignLayer, DBAccess, RzDBCmbo, ZZVALDSB, ZZTIPINV, ZZPRZINV;

type

  TSTADSB = class(TSTAMPA)
    pp_DBText1: TppDBText;
    pp_DBText5: TppDBText;
    pp_Label12: TppLabel;
    pp_Label13: TppLabel;
    pp_Label14: TppLabel;
    pp_Label16: TppLabel;
    v_solo_finiti: TRzcheckbox;
    query_figlio: tmyquery_go;
    query_padre: tmyquery_go;
    dsb: tmyquery_go;
    dsb_01: tmyquery_go;
    dsb_02: tmyquery_go;
    dsb_03: tmyquery_go;
    dsb_04: tmyquery_go;
    dsb_05: tmyquery_go;
    dsb_06: tmyquery_go;
    dsb_07: tmyquery_go;
    dsb_08: tmyquery_go;
    pp_DBText3: TppDBText;
    pp_DBText6: TppDBText;
    pp_DBMemo1: TppDBMemo;
    dsb_09: tmyquery_go;
    dsb_10: tmyquery_go;
    dsb_11: tmyquery_go;
    dsb_12: tmyquery_go;
    pp_DBText8: TppDBText;
    pp_DBMemo2: TppDBMemo;
    pp_Region1: TppRegion;
    pp_DBText9: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    pp_DBText11: TppDBText;
    pp_DBText12: TppDBText;
    pp_DBText13: TppDBText;
    pp_Shape4: TppShape;
    v_nuova_pagina: TRzcheckbox;
    Label2: TRzlabel;
    v_stampa_costi: TRzCombobox_go;
    pp_DBText_costo_figlio: TppDBText;
    pp_DBText_costo_padre: TppDBText;
    pp_valorizzazione: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    lsa: tmyquery_go;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    dsb_costo: tmyquery_go;
    costo: tmyquery_go;
    costo_livello: tmyquery_go;
    v_indentazione: TRzcheckbox;
    arv: tmyquery_go;
    cla: tmyquery_go;
    cla_ds: tmydatasource;
    pp_cla: TppDBPipeline;
    pp_ciclo_padre: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    pannello_bottoni: TRzPanel;
    v_selart: TRzRapidFireButton;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    v_dettaglio_cicli: TRzcheckbox;
    ppShape1: TppShape;
    cla_figli: tmyquery_go;
    pp_cla_figli: TppDBPipeline;
    pp_ciclo_figli: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape3: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBMemo2: TppDBMemo;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText20: TppDBText;
    ppLabel1: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    Label13: TRzlabel;
    v_livelli: TRzNumericEdit_go;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    dsb_13: TMyQuery_go;
    dsb_14: TMyQuery_go;
    dsb_15: TMyQuery_go;
    dsb_16: TMyQuery_go;
    dsb_17: TMyQuery_go;
    dsb_18: TMyQuery_go;
    MyQuery_go7: TMyQuery_go;
    dsb_19: TMyQuery_go;
    MyQuery_go9: TMyQuery_go;
    dsb_20: TMyQuery_go;
    dsb_21: TMyQuery_go;
    dsb_22: TMyQuery_go;
    dsb_23: TMyQuery_go;
    dsb_24: TMyQuery_go;
    dsb_25: TMyQuery_go;
    dsb_26: TMyQuery_go;
    dsb_27: TMyQuery_go;
    dsb_28: TMyQuery_go;
    dsb_29: TMyQuery_go;
    dsb_30: TMyQuery_go;
    dsb_31: TMyQuery_go;
    dsb_32: TMyQuery_go;
    dsb_33: TMyQuery_go;
    dsb_34: TMyQuery_go;
    dsb_35: TMyQuery_go;
    dsb_36: TMyQuery_go;
    dsb_37: TMyQuery_go;
    dsb_38: TMyQuery_go;
    dsb_39: TMyQuery_go;
    RzLabel1: TRzLabel;
    v_quantita: trznumericedit_go;
    equ: TMyQuery_go;
    art_equ: TMyQuery_go;
    calsem: TMyQuery_go;
    aggsem: TMyQuery_go;
    query_stampa_cicli_figli: TMyQuery_go;
    query_stampa_cicli_figli_ds: TMyDataSource;
    query_stampa_cicli_padre: TMyQuery_go;
    query_stampa_cicli_padre_ds: TMyDataSource;
    sor_update: TMyQuery_go;
    sor_livello: TMyQuery_go;
    sor_update_produzione: TMyQuery_go;
    RzLabel6: TRzLabel;
    v_tvr_codice: trzedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    tvr: TMyQuery_go;
    tvr_ds: TMyDataSource;
    artv: TMyQuery_go;
    art_figlio: TMyQuery_go;
    v_materia_prima: TRzCheckBox;
    query_materie_prime: TMyQuery_go;
    v_aggiorna_costo_standard: TRzCheckBox;
    art_costo_standard: TMyQuery_go;
    query_listini: TMyQuery_go;
    ppDBlistini: TppDBPipeline;
    query_listini_ds: TMyDataSource;
    ppSubReport1: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBa31costo_kg: TppDBText;
    ppDBa31_costo_h: TppDBText;
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sorBeforePost(DataSet: TDataSet);
    procedure v_selartClick(Sender: TObject);
    procedure v_dettaglio_cicliClick(Sender: TObject);
    procedure v_quantitaExit(Sender: TObject);
    procedure v_tvr_codiceExit(Sender: TObject);
    procedure v_stampa_costiChange(Sender: TObject);
  protected
    valdsb: tvaldsb;
    tipinv: ttipinv;
    przinv: tprzinv;

    progressivo_drill_down: integer;
    sinistra, sinistra_art_codice, sinistra_art_descrizione, sinistra_tma_codice, sinistra_tum_codice, sinistra_quantita, sinistra_costo_produzione, sinistra_costo, sinistra_codice_alternativo, sinistra_descrizione, sinistra_descrizione_tecnica: double;
    tla_codice_costi, tla_codice_costo_standard: string;

    //
    // parametri selart
    //
    selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione,
      a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice, selezione_art_frn_codice,
      da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice: string;
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista, art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista: tstringlist;
    tasto_escape_art, art_escludi_obsoleti, art_eseguito: boolean;
    //
    procedure call_selart;
    //
    // fine variabili selart
    //
    procedure abilita_quantita;
    procedure v_tvr_codice_controllo(blocco: boolean);
    procedure esplosione(leggo: tmyquery_go; padre: string; livello, sequenza_livello: integer; quantita_ciclo: double = 1);

    function ha_figlio(art_codice: string): boolean;
    function ha_padre(art_codice: string): boolean;
  public
    art_codice_passato: string;

    procedure stampa; override;
    procedure esegue_stampa; override;
    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;
  end;

var
  STADSB: TSTADSB;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE, GGVISEQU, ZZVARIANTI_DSB, ZZLIBRERIE_PROMAU;

procedure TSTADSB.stampa;
var
  valorizzazione, test_art_codice_livello: string;
  prezzo_costo: double;

  costo_produzione, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
  //modifica
  quantita: double;
  costo_lavest: double;
  //modifica fine
begin
  nome_tabella := 'stadsb';
  azzera_tabella(nome_tabella, sor);

  nome_tabella := 'stadsb_cicli_padre';
  azzera_tabella(nome_tabella, sor2);

  nome_tabella := 'stadsb_cicli';
  azzera_tabella(nome_tabella, sor1);

  controllo_interrompi;

  query.close;
  query.sql.clear;
  query.sql.add('select art.codice, descrizione1, descrizione2, tum_codice, descrizione_tecnica, tum.decimali,');
  query.sql.add('art.indice_revisione');
  query.sql.add('from art');
  query.sql.add('inner join tum tum on (tum.codice = art.tum_codice)');
  limart(art_escludi_obsoleti, query, true, selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
    selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice,
    a_art_tsa_codice, selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

  query.sql.add('order by art.codice');
  query.open;
  while not query.eof do
  begin
    if v_solo_finiti.checked then
    begin
      if (ha_figlio(query.fieldbyname('codice').asstring)) and (not ha_padre(query.fieldbyname('codice').asstring)) then
      begin
        esplosione(dsb, query.fieldbyname('codice').asstring, 0, 0, v_quantita.value);
      end;
    end
    else
    begin
      if ha_figlio(query.fieldbyname('codice').asstring) then
      begin
        esplosione(dsb, query.fieldbyname('codice').asstring, 0, 0, v_quantita.value);
      end;
    end;

    query.next;
  end;

  sor.close;

  if v_dettaglio_cicli.checked then
  begin
    cla.close;
    cla.sql.clear;

    cla.sql.add('insert into arc_ordinamento.stadsb_cicli_padre(utn_codice, art_codice, sequenza, fas_codice,');
    cla.sql.add('fas_descrizione, tum_codice, tipo_operazione, note, quantita, costo_unitario, a31frn_codice, a31frn_descrizione,  a31costo_orario,');
    cla.sql.add('art_codice_cla, art_descrizione_cla)');

    cla.sql.add('select ' + quotedstr(utente) + ',');
    cla.sql.add('cla.art_codice, cla.sequenza, cla.fas_codice, fas.descrizione fas_descrizione,');
    cla.sql.add('fas.tum_codice, fas.tipo_operazione, cla.note,');

    cla.sql.add('case');
    cla.sql.add('when fas.tipo_operazione = ''ignora'' then 0');
    cla.sql.add('when fas.tipo_operazione = ''globale'' then (cla.quantita_attrezzaggio + cla.quantita) / :quantita');
    cla.sql.add('when fas.tipo_operazione = ''singola'' then');
    cla.sql.add('case');
    cla.sql.add('when cla.operatore = ''*'' then round(cla.quantita_attrezzaggio / :quantita, 4) + cla.quantita');
    cla.sql.add('when cla.operatore = ''/'' then round(cla.quantita_attrezzaggio / :quantita, 4) + cla.quantita');
    cla.sql.add('else 0');
    cla.sql.add('end');
    cla.sql.add('end quantita,');

    if v_stampa_costi.text <> 'no' then
    begin
      cla.sql.add('case');
      cla.sql.add('when fas.tipo_operazione = ''ignora'' then 0');
      cla.sql.add('when fas.tipo_operazione = ''globale''');
      cla.sql.add('then F_COSTO_UNITARIO_FASE(fas.codice, '''') * (cla.quantita_attrezzaggio + cla.quantita) / :quantita');
      cla.sql.add('when fas.tipo_operazione = ''singola'' then');
      cla.sql.add('case');
      cla.sql.add('when cla.operatore = ''*''');
      cla.sql.add('then F_COSTO_UNITARIO_FASE(fas.codice, '''') *');
      cla.sql.add('(round(cla.quantita_attrezzaggio / :quantita, 4) + cla.quantita)');
      cla.sql.add('when cla.operatore = ''/''');
      cla.sql.add('then F_COSTO_UNITARIO_FASE(fas.codice, '''') /');
      cla.sql.add('(round(cla.quantita_attrezzaggio / :quantita, 4) + cla.quantita)');
      cla.sql.add('else 0');
      cla.sql.add('end');
      cla.sql.add('end costo_unitario,');
    end
    else
    begin
      cla.sql.add('0 costo_unitario,');
    end;

    //modifica
    cla.sql.add('case when art.tcm_codice=''EST'' then cla.frn_codice else '''' end frn_codice, ');
    cla.sql.add('nom.descrizione1 frn_descrizione, ');
    cla.sql.add('case when fas.tum_codice=''SEC'' then ');
    cla.sql.add(' (select costo_unitario from fas where fas.codice=cla.fas_codice)*3600 ');
    cla.sql.add('else ');
    cla.sql.add(' (select costo_unitario from fas where fas.codice=cla.fas_codice) ');
    cla.sql.add('end  costo_orario ,');
    //modifica fine

    cla.sql.add('art_cla.codice art_codice_cla, concat(trim(art_cla.descrizione1), '' '', art_cla.descrizione2) art_descrizione_cla');
    cla.sql.add('from cla');
    cla.sql.add('inner join art on art.codice = cla.art_codice');
    cla.sql.add('inner join fas on fas.codice = cla.fas_codice');
    cla.sql.add('left join nom on nom.codice = cla.frn_codice');
    cla.sql.add('left join dsb on dsb.art_codice_padre = cla.art_codice ');
    cla.sql.add('and dsb.cla_sequenza = cla.sequenza and dsb.fas_codice = cla.fas_codice');
    cla.sql.add('left join art art_cla on art_cla.codice = dsb.art_codice_figlio');
    limart(art_escludi_obsoleti, cla, true, selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
      selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice,
      a_art_tsa_codice, selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
      art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
      art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

    cla.parambyname('quantita').asfloat := v_quantita.value;
    cla.execsql;
  end;

  if v_stampa_costi.text <> 'no' then
  begin
    //  calcolo costi semilavorati
    sor_livello.close;
    sor_livello.sql.clear;
    sor_livello.sql.add('select distinct livello, art_codice_padre');
    sor_livello.sql.add('from stadsb');
    sor_livello.sql.add('where ');
    sor_livello.sql.add('livello > 1 and utn_codice = ' + quotedstr(utente));
    sor_livello.sql.add('order by 1 desc,2');

    query_sor.close;
    query_sor.sql.clear;
    query_sor.sql.add('select livello, art_codice_padre, art_codice_livello, sequenza_livello, sum(costo_codice_figlio) costo');
    query_sor.sql.add('from stadsb');
    query_sor.sql.add('where utn_codice = :utn_codice and livello = :livello and art_codice_padre = :art_codice_padre');
    query_sor.sql.add('group by 1,2,3,4');

    sor_livello.open;
    if sor_livello.eof then
    begin
      query_sor.close;
      query_sor.sql.clear;
      query_sor.sql.add('select livello, art_codice_padre, art_codice_livello, sequenza_livello, costo_codice_figlio costo ');
      query_sor.sql.add('from stadsb');
      query_sor.sql.add('where utn_codice = :utn_codice and livello=:livello and art_codice=:art_codice_figlio');

      query_sor.parambyname('utn_codice').asstring := utente;
      query_sor.parambyname('livello').asinteger := 1;
      query_sor.parambyname('art_codice_figlio').asstring := 'LIVDIST';
      query_sor.open;
      if not query_sor.eof then
      begin
        quantita := 1;
        costo_lavest := 0;
        (*
          query_clavest.close;
          query_clavest.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice_livello').asstring;
          query_clavest.open;
          //modifica
          if (query_clavest.fieldbyname('frn_codice').asstring <> '00001651') and
          (query_clavest.fieldbyname('tcm_codice').asstring = 'EST') then
          begin
          costo_lavest := query_clavest.fieldbyname('prezzo').asfloat;
          end;

          //modifica fine
        *)
        aggsem.close;
        aggsem.parambyname('utn_codice').asstring := utente;
        aggsem.parambyname('art_codice_padre').asstring := query_sor.fieldbyname('art_codice_padre').asstring;
        aggsem.parambyname('costo_produzione_codice_padre').asfloat := costo_lavest;
        aggsem.parambyname('costo_codice_padre').asfloat := costo_lavest;
        aggsem.parambyname('a31costo_lavorazione').asfloat := costo_lavest;
        aggsem.parambyname('a31costo_lavest').asfloat := costo_lavest;
        aggsem.execsql;

      end;
    end
    else
    begin

      while not sor_livello.eof do
      begin
        query_sor.close;
        query_sor.parambyname('utn_codice').asstring := utente;
        query_sor.parambyname('livello').asinteger := sor_livello.fieldbyname('livello').asinteger;
        query_sor.parambyname('art_codice_padre').asstring := sor_livello.fieldbyname('art_codice_padre').asstring;
        query_sor.open;

        test_art_codice_livello := '';
        while not query_sor.eof do
        begin
          sor_update.close;
          sor_update.parambyname('id').asinteger := query_sor.fieldbyname('sequenza_livello').asinteger;
          sor_update.parambyname('costo').asfloat := query_sor.fieldbyname('costo').asfloat;

          sor_update.execsql;

          if test_art_codice_livello <> query_sor.fieldbyname('art_codice_livello').asstring then
          begin
            test_art_codice_livello := query_sor.fieldbyname('art_codice_livello').asstring;

            // costo produzione livello
            costo_produzione := 0;
            quantita := 1;
            if v_stampa_costi.itemindex = 1 then
            begin

              costo_lavest := valdsb.valorizza_dsb(query_sor.fieldbyname('art_codice_livello').asstring, tla_codice_costi, false,
                costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, 'costo standard', 'lavorazioni');
            end
            else if v_stampa_costi.itemindex = 2 then
            begin
              costo_lavest := valdsb.valorizza_dsb(query_sor.fieldbyname('art_codice_livello').asstring, tla_codice_costi, false, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, arc.dit.fieldbyname('costo_produzione').asstring, 'lavorazioni');
            end
            else if v_stampa_costi.itemindex = 3 then
            begin
              costo_lavest := valdsb.valorizza_dsb(query_sor.fieldbyname('art_codice_livello').asstring, tla_codice_costi, false, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, 'ultimo costo', 'lavorazioni');
            end;

            costo_produzione := arrotonda(costo_cicli_singoli + costo_cicli_globali / v_quantita.value, decimali_max_prezzo_acq);

            sor_update_produzione.close;
            sor_update_produzione.parambyname('id').asinteger := query_sor.fieldbyname('sequenza_livello').asinteger;
            sor_update_produzione.parambyname('a31costo_lavest').asfloat := costo_lavest;
            sor_update_produzione.parambyname('costo_produzione_codice_figlio').asfloat := costo_produzione;

            sor_update_produzione.execsql;
          end;

          query_sor.next;
        end;

        aggsem.close;
        aggsem.parambyname('utn_codice').asstring := utente;
        aggsem.parambyname('art_codice_padre').asstring := sor_livello.fieldbyname('art_codice_padre').asstring;
        aggsem.parambyname('costo_produzione_codice_padre').asfloat := costo_lavest;
        aggsem.parambyname('costo_codice_padre').asfloat := costo_lavest;
        aggsem.parambyname('a31costo_lavorazione').asfloat := costo_lavest;
        aggsem.parambyname('a31costo_lavest').asfloat := costo_lavest;
        aggsem.execsql;

        sor_livello.next;
      end;

    end;
    //  SEGUE
    /////////////////////////////////////////////////////////////////////////////////
    //  costo unitario da mac !!!!
    /////////////////////////////////////////////////////////////////////////////////

    // costo produzione finito
    if v_stampa_costi.itemindex <> 0 then
    begin
      read_tabella(calsem, utente);
      while not calsem.eof do
      begin
        costo_produzione := 0;

        if v_stampa_costi.itemindex = 1 then
        begin
          costo_lavest := valdsb.valorizza_dsb(calsem.fieldbyname('art_codice_padre').asstring, tla_codice_costi, false,
            costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, 'costo standard', 'tutti');
        end
        else if v_stampa_costi.itemindex = 2 then
        begin
          costo_lavest := valdsb.valorizza_dsb(calsem.fieldbyname('art_codice_padre').asstring, tla_codice_costi, false, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, arc.dit.fieldbyname('costo_produzione').asstring, 'tutti', v_quantita.value);
        end
        else if v_stampa_costi.itemindex = 3 then
        begin
          costo_lavest := valdsb.valorizza_dsb(calsem.fieldbyname('art_codice_padre').asstring, tla_codice_costi, false, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, 'ultimo costo', 'tutti', v_quantita.value);
        end;
        //modifica
        costo_produzione := arrotonda(costo_componenti + costo_cicli_singoli + costo_cicli_globali / 1, decimali_max_prezzo_acq);

        aggsem.close;
        aggsem.parambyname('utn_codice').asstring := utente;
        aggsem.parambyname('art_codice_padre').asstring := calsem.fieldbyname('art_codice_padre').asstring;
        aggsem.parambyname('costo_produzione_codice_padre').asfloat := costo_produzione + costo_lavest;
        aggsem.parambyname('costo_codice_padre').asfloat := costo_totale;
        aggsem.parambyname('a31costo_lavorazione').asfloat := costo_totale - costo_componenti;
        aggsem.parambyname('a31costo_lavest').asfloat := costo_lavest;
        aggsem.execsql;
        //modifica fine

        calsem.next;
      end;

    end;
  end;

  if v_materia_prima.checked then
  begin
    query_materie_prime.close;
    query_materie_prime.parambyname('utente').asstring := utente;

    query_sor.close;
    query_sor.sql.text := 'select * from stadsb where utn_codice = :utente order by progressivo_drill_down';
    query_sor.parambyname('utente').asstring := utente;
    query_sor.open;

    query_materie_prime.open;
    while not query_materie_prime.eof do
    begin
      query_sor.locate('id', query_materie_prime.fieldbyname('id').asinteger, []);
      query_sor.next;

      while query_sor.fieldbyname('livello').asinteger > query_materie_prime.fieldbyname('livello').asinteger do
      begin
        query_sor.delete;
      end;

      query_materie_prime.next;
    end;
  end;

  //modifica
  // lavorazioni esterne
  (*
    sor_livello.close;
    sor_livello.sql.clear;
    sor_livello.sql.add('update stadsb');
    sor_livello.sql.add('set costo_codice_padre=costo_codice_padre+:a31costo_codice_padre, ');
    sor_livello.sql.add('a31costo_lavorazione=a31costo_lavorazione+:a31costo_lavorazione');
    sor_livello.sql.add('where');
    sor_livello.sql.add('utn_codice=:utn_codice and art_codice_padre=:art_codice');

    query_sor.close;
    query_sor.sql.clear;
    query_sor.sql.add('select scp.* ');
    query_sor.sql.add('from stadsb_cicli_padre scp');
    query_sor.sql.add('where ');
    query_sor.sql.add('scp.utn_codice = :utn_codice and ');
    query_sor.sql.add('scp.a31frn_codice<>'''' and ');
    query_sor.sql.add('scp.fas_codice=''LAVEST'' and ');
    query_sor.sql.add('scp.art_codice in ( ');
    query_sor.sql.add('select distinct art_codice_padre from stadsb dsb ');
    query_sor.sql.add('where ');
    query_sor.sql.add('dsb.utn_codice=scp.utn_codice and ');
    query_sor.sql.add('dsb.livello= 1 ) ');
    query_sor.sql.add('order by scp.id ');
    query_sor.parambyname('utn_codice').asstring := utente;
    query_sor.open;
    while not query_sor.eof do
    begin
    query_clavest.close;
    query_clavest.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
    query_clavest.open;

    if (query_clavest.fieldbyname('frn_codice').asstring <> '00001651') and
    (query_clavest.fieldbyname('tcm_odice').asstring = 'EST') then
    begin
    costo_lavest := query_clavest.fieldbyname('prezzo').asfloat;

    query_sor.edit;
    query_sor.fieldbyname('costo_unitario').asfloat := costo_lavest;
    query_sor.post;

    sor_livello.parambyname('utn_codice').asstring := utente;
    sor_livello.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
    sor_livello.parambyname('a31costo_codice_padre').asfloat := costo_lavest;
    sor_livello.parambyname('a31costo_lavorazione').asfloat := costo_lavest;
    //     sor_livello.fieldbyname('a31costo_lavest').asfloat := costo_lavest;
    sor_livello.execsql;

    end;

    query_sor.next;
    end;
  *)
  //--------------------------------------------------------------------------
  // inserimento imballi
  //--------------------------------------------------------------------------
  query_iva.close;
  query_iva.sql.clear;
  query_iva.sql.add('select * from mmr ');
  query_iva.sql.add('inner join mmt on mmt.progressivo=mmr.progressivo');
  query_iva.sql.add('inner join tmo on tmo.codice=mmt.tmo_codice');
  query_iva.sql.add('where ');
  query_iva.sql.add('mmr.art_codice =:art_codice   and    ');
  query_iva.sql.add('tmo.esistenza =''incrementa'' and    ');
  query_iva.sql.add('tmo.valorizzazione = ''incrementa''  ');
  query_iva.sql.add('order by mmt.data_registrazione desc ');
  query_iva.sql.add('limit 1 ');

  query_sor.close;
  query_sor.sql.text := 'select * from stadsb where utn_codice = :utn_codice and art_codice_padre=:art_codice_padre and art_codice=:art_codice_figlio';

  query.close;
  query.sql.clear;
  query.sql.add('select distinct dsb.art_codice_padre, dsb.livello, dsb.tub_codice, dsb.progressivo_drill_down, art.quantita_collo,  art.descrizione1 art_descrizione1, ');
  query.sql.add('art.tum_codice art_tum_codice, art.a31art_codice_imballo, artb.descrizione1 artb_descrizione1, artb.tum_codice artb_tum_codice ');
  query.sql.add('from arc_ordinamento.stadsb dsb');
  query.sql.add('inner join art on art.codice=dsb.art_codice_padre ');
  query.sql.add('inner join art artb on artb.codice=art.a31art_codice_imballo ');
  query.sql.add('where');
  query.sql.add('dsb.utn_codice=:utn_codice ');;

  query.sql.add('order by 1 ');
  query.parambyname('utn_codice').asstring := utente;
  query.open;
  while not query.eof do
  begin
    query_sor.close;
    query_sor.parambyname('utn_codice').asstring := utente;
    query_sor.parambyname('art_codice_padre').asstring := query.fieldbyname('art_codice_padre').asstring;
    query_sor.parambyname('art_codice_figlio').asstring := query.fieldbyname('a31art_codice_imballo').asstring;
    query_sor.open;
    if query_sor.eof then
    begin
      query_sor.append;
      query_sor.fieldbyname('utn_codice').asstring := utente;
      query_sor.fieldbyname('livello').asfloat := query.fieldbyname('livello').asfloat;
      query_sor.fieldbyname('art_codice_padre').asstring := query.fieldbyname('art_codice_padre').asstring;
      query_sor.fieldbyname('art_codice_livello').asstring := query.fieldbyname('art_codice_padre').asstring;
      query_sor.fieldbyname('art_descrizione1_padre').asstring := query.fieldbyname('art_descrizione1').asstring;
      query_sor.fieldbyname('art_tum_codice_padre').asstring := query.fieldbyname('art_tum_codice').asstring;
      query_sor.fieldbyname('art_codice').asstring := query.fieldbyname('a31art_codice_imballo').asstring;
      query_sor.fieldbyname('art_descrizione1').asstring := query.fieldbyname('artb_descrizione1').asstring;
      query_sor.fieldbyname('art_tum_codice').asstring := query.fieldbyname('artb_tum_codice').asstring;
      query_sor.fieldbyname('tub_codice').asstring := query.fieldbyname('tub_codice').asstring;
      query_sor.fieldbyname('livello').asfloat := query.fieldbyname('livello').asfloat;
      query_sor.fieldbyname('quantita').asfloat := query.fieldbyname('quantita_collo').asfloat;

      query_iva.close;
      query_iva.parambyname('art_codice').asstring := query.fieldbyname('a31art_codice_imballo').asstring;
      query_iva.open;
      try
        query_sor.fieldbyname('costo_unitario_codice_figlio').asfloat := arrotonda(query_iva.fieldbyname('prezzo').asfloat / query_sor.fieldbyname('quantita').asfloat, 5);
        query_sor.fieldbyname('costo_codice_figlio').asfloat :=  query_sor.fieldbyname('costo_unitario_codice_figlio').asfloat;
        query_sor.fieldbyname('costo_codice_padre').asfloat :=  query_sor.fieldbyname('costo_unitario_codice_figlio').asfloat;
      except
      end;

      query_sor.fieldbyname('sequenza').asfloat := 999999;
      query_sor.fieldbyname('progressivo_drill_down').asfloat := query.fieldbyname('progressivo_drill_down').asfloat;
      query_sor.fieldbyname('fas_codice').asstring := 'IMBALLO';
      query_sor.fieldbyname('fas_descrizione').asstring := 'IMBALLO ';
      //9    query_sor.fieldbyname('data_inizio').asdatetime := null;
      query_sor.fieldbyname('data_fine').asstring := data_31_12_9999;
      query_sor.post;
    end;

    query.next;
  end;
  query_iva.close;


  (*
  query_sor.close;
  query_sor.sql.text := 'select * from stadsb_cicli_padre where utn_codice = :utn_codice and art_codice=:art_codice and fas_codice=:fas_codice';

  query.first;
  while not query.eof do
  begin
    query_sor.close;
    query_sor.parambyname('utn_codice').asstring := utente;
    query_sor.parambyname('art_codice').asstring := query.fieldbyname('art_codice_padre').asstring;
    query_sor.parambyname('fas_codice').asstring := 'IMBALLO';
    query_sor.open;
    if query_sor.eof then
    begin
      query_sor.append;
      query_sor.fieldbyname('utn_codice').asstring := utente;
      query_sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice_padre').asstring;
      query_sor.fieldbyname('fas_codice').asstring := 'IMBALLO';
      query_sor.fieldbyname('fas_descrizione').asstring := 'IMBALLO';
      query_sor.fieldbyname('tum_codice').asstring := query.fieldbyname('artb_tum_codice').asstring;
      query_sor.fieldbyname('quantita').asfloat := 0;

      query_sor.fieldbyname('sequenza').asfloat := 999999;
      query_sor.post;
    end;

    query.next;
  end;
 *)

  query_sor.close;
  query_sor.sql.text := 'select * from stadsb where utn_codice = :utente and art_codice_padre=:art_codice_padre';

  query.close;
  query.sql.clear;
  query.sql.add('select art_codice_padre, sum(costo_codice_figlio) totale_costi ');
  query.sql.add('from arc_ordinamento.stadsb ');
  query.sql.add('where');
  query.sql.add('utn_codice=:utn_codice ');
  query.sql.add('group by 1 ');
  query.sql.add('order by 1 ');
  query.parambyname('utn_codice').asstring := utente;
  query.open;
  while not query.eof do
  begin
    query_sor.close;
    query_sor.parambyname('utente').asstring := utente;
    query_sor.parambyname('art_codice_padre').asstring := query.fieldbyname('art_codice_padre').asstring;
    query_sor.open;

    query_sor.edit;
    query_sor.fieldbyname('costo_produzione_codice_padre').asfloat := query.fieldbyname('totale_costi').asfloat;
    query_sor.post;

    query.next;
  end;
  //modifica fine

  //  stampa nuova
  query_stampa.close;
  query_stampa.sql.text := arc_prg.fieldbyname('testo_query').asstring;

  ordinamento_query_stampa := 'order by t.progressivo_drill_down';
  query_stampa.sql.add(ordinamento_query_stampa);

  //  cicli padre
  query_stampa_cicli_padre.close;
  query_stampa_cicli_padre.sql.text := assegna_subquery('STADSB', 'CICLI_PADRE');
  query_stampa_cicli_padre.sql.add('order by cp.art_codice, cp.sequenza');

  query_stampa_cicli_padre.mastersource := query_stampa_ds;
  query_stampa_cicli_padre.masterfields := 'art_codice_padre';
  query_stampa_cicli_padre.detailfields := 'art_codice';

  //  cicli figli
  query_stampa_cicli_figli.close;
  query_stampa_cicli_figli.sql.text := assegna_subquery('STADSB', 'CICLI_FIGLI');
  query_stampa_cicli_figli.sql.add('order by c.art_codice, c.sequenza');

  query_stampa_cicli_figli.mastersource := query_stampa_ds;
  query_stampa_cicli_figli.masterfields := 'art_codice';
  query_stampa_cicli_figli.detailfields := 'art_codice';
  //  stampa nuova fine

  //modifica
  query_listini.close;
  query_listini.parambyname('art_codice').asstring := art_codice_passato;
  query_listini.open;

  //modifica fine
  inherited;

  if (codice <> '') and (v_aggiorna_costo_standard.checked) then
  begin
    art_costo_standard.close;
    art_costo_standard.parambyname('codice').asstring := codice;
    art_costo_standard.execsql;
  end;
end;

procedure TSTADSB.esplosione(leggo: tmyquery_go; padre: string; livello, sequenza_livello: integer; quantita_ciclo: double = 1);
var
  prezzo_inventario: double;
  valorizzazione: string;
  j: word;

  //costo_codice_padre: double;
  costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
  //modifica
  costo_lavest: double;
  //modifica fine

  pr: tvisequ;
  art_codice_figlio, art_descrizione_figlio, art_descrizione1_figlio, art_descrizione2_figlio, art_figlio_tum_codice_dsb, art_figlio_tum_codice, descrizione_tecnica, indice_revisione, codice_alternativo, art_figlio_tub_codice, art_figlio_tub_descrizione, materia_prima,
    operazione_coefficiente_dsb: string;
  tum_coefficiente_dsb: double;
  data_carico: tdate;

  i: word;
  lista_art_codice, lista_art_descrizione, lista_quantita: tstringlist;
  sor_id: integer;
  //modifica
  a31lav_est: tmyquery_go;
  //modifica fine
begin
  //modifica

  a31lav_est := tmyquery_go.create(nil);
  a31lav_est.Connection := arc.arcdit;
  a31lav_est.sql.add('select art.frn_codice, art.tcm_codice, dar.prezzo, ');
  a31lav_est.sql.add('case ');
  a31lav_est.sql.add('when(dar.tum_codice <> art.tum_codice_dsb) and (art.operazione_coefficiente_dsb = ''/'') then ');
  a31lav_est.sql.add('  dar.prezzo/1000 ');
  a31lav_est.sql.add('when(dar.tum_codice <> art.tum_codice_dsb) and (art.operazione_coefficiente_dsb = ''*/'') then ');
  a31lav_est.sql.add('    dar.prezzo * 1000 ');
  a31lav_est.sql.add('else ');
  a31lav_est.sql.add('    dar.prezzo ');
  a31lav_est.sql.add('end prezzo_dsb ');
  a31lav_est.sql.add('from dat ');
  a31lav_est.sql.add('inner join dar on dar.progressivo = dat.progressivo ');
  a31lav_est.sql.add('inner join art on art.codice = dar.art_codice ');
  a31lav_est.sql.add('where ');
  a31lav_est.sql.add('dar.art_codice =:art_codice ');
  a31lav_est.sql.add('order by dat.data_registrazione desc limit 1 ');
  //modifica fine

  lista_art_codice := tstringlist.create;
  lista_art_descrizione := tstringlist.create;
  lista_quantita := tstringlist.create;

  leggo.close;
  leggo.parambyname('art_codice_padre').asstring := padre;
  leggo.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
  leggo.parambyname('data').asdate := date;
  leggo.open;

  while not leggo.eof do
  begin
    lista_art_codice.clear;
    lista_art_descrizione.clear;
    lista_quantita.clear;

    art_codice_figlio := leggo.fieldbyname('art_codice_figlio').asstring;
    art_descrizione_figlio := leggo.fieldbyname('art_descrizione1_figlio').asstring + ' ' + leggo.fieldbyname('art_descrizione2_figlio').asstring;

    //  varianti
    if not assegna_variante(v_tvr_codice.text, leggo.fieldbyname('art_codice_padre').asstring, leggo.fieldbyname('art_codice_figlio').asstring, leggo.fieldbyname('sequenza').asinteger, lista_art_codice, lista_art_descrizione, lista_quantita) then
    begin
      lista_art_codice.add(art_codice_figlio);
      lista_art_descrizione.add(art_descrizione_figlio);
      lista_quantita.add(leggo.fieldbyname('quantita').asstring);
    end;
    //  varianti fine

    for i := 0 to lista_art_codice.count - 1 do
    begin
      if strtofloat(lista_quantita[i]) <> 0 then
      begin
        sor.append;

        // codice padre
        sor.fieldbyname('art_codice_padre').asstring := query.fieldbyname('codice').asstring;
        sor.fieldbyname('art_descrizione1_padre').asstring := trim(query.fieldbyname('descrizione1').asstring) + ' ' + query.fieldbyname('descrizione2').asstring;
        sor.fieldbyname('art_tum_codice_padre').asstring := query.fieldbyname('tum_codice').asstring;
        if leggo.fieldbyname('arv_id').asinteger <> 0 then
        begin
          arv.close;
          arv.parambyname('art_codice').asstring := query.fieldbyname('codice').asstring;
          arv.open;
          while not arv.eof do
          begin
            if sor.fieldbyname('variabili').asstring <> '' then
            begin
              sor.fieldbyname('variabili').asstring := sor.fieldbyname('variabili').asstring + #13;
            end;
            sor.fieldbyname('variabili').asstring := sor.fieldbyname('variabili').asstring + arv.fieldbyname('variabile').asstring + ' = ' + arv.fieldbyname('descrizione').asstring;

            arv.next;
          end;
        end;

        sor.fieldbyname('livello').asinteger := livello + 1;
        sor.fieldbyname('art_codice_livello').asstring := leggo.fieldbyname('art_codice_padre').asstring;

        read_tabella(art_figlio, lista_art_codice[i]);
        art_figlio_tum_codice_dsb := art_figlio.fieldbyname('tum_codice_dsb').asstring;
        art_figlio_tum_codice := art_figlio.fieldbyname('tum_codice').asstring;
        descrizione_tecnica := art_figlio.fieldbyname('descrizione_tecnica').asstring;
        indice_revisione := art_figlio.fieldbyname('indice_revisione').asstring;
        codice_alternativo := art_figlio.fieldbyname('codice_alternativo').asstring;
        art_figlio_tub_codice := art_figlio.fieldbyname('tub_codice').asstring;
        art_figlio_tub_descrizione := art_figlio.fieldbyname('tub_descrizione').asstring;
        data_carico := leggo.fieldbyname('data_carico').asdatetime;
        materia_prima := art_figlio.fieldbyname('materia_prima').asstring;
        tum_coefficiente_dsb := art_figlio.fieldbyname('tum_coefficiente_dsb').asfloat;
        operazione_coefficiente_dsb := art_figlio.fieldbyname('operazione_coefficiente_dsb').asstring;

        //  controllo equivalenti
        if arc.dit.fieldbyname('utilizzo_equivalenti').asstring = 'si' then
        begin
          if read_tabella(equ, lista_art_codice[i]) then
          begin
            pr := tvisequ.create(nil);
            try
              if pr.esegui_form then
              begin
                pr.codice := lista_art_codice[i];
                pr.showmodal;
                if pr.codice <> lista_art_codice[i] then
                begin
                  lista_art_codice[i] := pr.codice;

                  art_equ.close;
                  art_equ.parambyname('codice').asstring := lista_art_codice[i];
                  art_equ.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
                  art_equ.parambyname('data').asdate := date;
                  art_equ.open;

                  lista_art_descrizione[i] := art_equ.fieldbyname('art_descrizione1_figlio').asstring + art_equ.fieldbyname('art_descrizione2_figlio').asstring;
                  art_figlio_tum_codice_dsb := art_equ.fieldbyname('art_figlio_tum_codice_dsb').asstring;
                  art_figlio_tum_codice := art_equ.fieldbyname('art_figlio_tum_codice').asstring;
                  descrizione_tecnica := art_equ.fieldbyname('descrizione_tecnica').asstring;
                  indice_revisione := art_equ.fieldbyname('indice_revisione').asstring;
                  codice_alternativo := art_equ.fieldbyname('codice_alternativo').asstring;
                  art_figlio_tub_codice := art_equ.fieldbyname('art_figlio_tub_codice').asstring;
                  art_figlio_tub_descrizione := art_equ.fieldbyname('art_figlio_tub_descrizione').asstring;
                  data_carico := art_equ.fieldbyname('data_carico').asdatetime;
                  materia_prima := art_equ.fieldbyname('materia_prima').asstring;
                  tum_coefficiente_dsb := art_equ.fieldbyname('tum_coefficiente_dsb').asfloat;
                  operazione_coefficiente_dsb := art_equ.fieldbyname('operazione_coefficiente_dsb').asstring;
                end;
              end;
            finally
              freeandnil(pr);
            end;
          end;
        end;

        sor.fieldbyname('art_codice').asstring := lista_art_codice[i];
        sor.fieldbyname('art_descrizione1').asstring := lista_art_descrizione[i];

        if art_figlio_tum_codice_dsb <> '' then
        begin
          sor.fieldbyname('art_tum_codice').asstring := art_figlio_tum_codice_dsb;
        end
        else
        begin
          sor.fieldbyname('art_tum_codice').asstring := art_figlio_tum_codice;
        end;
        sor.fieldbyname('sequenza_livello').asinteger := sequenza_livello;
        sor.fieldbyname('sequenza').asinteger := leggo.fieldbyname('sequenza').asinteger;
        sor.fieldbyname('quantita').asfloat := strtofloat(lista_quantita[i]);
        sor.fieldbyname('data_inizio').asstring := leggo.fieldbyname('data_inizio').asstring;
        sor.fieldbyname('data_fine').asstring := leggo.fieldbyname('data_fine').asstring;
        sor.fieldbyname('descrizione').asstring := leggo.fieldbyname('descrizione').asstring;
        sor.fieldbyname('descrizione_tecnica').asstring := descrizione_tecnica;
        read_tabella(arc.arcdit, 'tum', 'codice', sor.fieldbyname('art_tum_codice').asstring);
        sor.fieldbyname('decimali').asinteger := archivio.fieldbyname('decimali').asinteger;
        sor.fieldbyname('indice_revisione').asstring := indice_revisione;
        sor.fieldbyname('codice_alternativo').asstring := codice_alternativo;
        sor.fieldbyname('tub_codice').asstring := art_figlio_tub_codice;
        sor.fieldbyname('tub_descrizione').asstring := art_figlio_tub_descrizione;
        sor.fieldbyname('tma_codice').asstring := leggo.fieldbyname('tma_codice').asstring;
        sor.fieldbyname('formula').asstring := leggo.fieldbyname('formula').asstring;
        sor.fieldbyname('fas_codice').asstring := leggo.fieldbyname('fas_codice').asstring;
        sor.fieldbyname('fas_descrizione').asstring := leggo.fieldbyname('fas_descrizione').asstring;

        if v_stampa_costi.itemindex <> 0 then
        begin
          sor.fieldbyname('data_carico').asdatetime := data_carico;
        end;

        //if ha_figlio(art_codice_figlio) and (materia_prima = 'no') then
        //if ha_figlio(art_codice_figlio) then
        if ha_figlio(sor.fieldbyname('art_codice').asstring) then
        begin
          (*
            NO PREZZO
            se lavorazione esterna prezzo lav esterna
          *)

        end
        else
        begin
          if leggo.fieldbyname('prezzo').asfloat <> 0 then
          begin
            sor.fieldbyname('costo_unitario_codice_figlio').asfloat := leggo.fieldbyname('prezzo').asfloat;
            sor.fieldbyname('valorizzazione').asstring := 'distinta base';
          end
          else
          begin
            if v_stampa_costi.itemindex = 0 then
            begin
              prezzo_inventario := 0;
            end
            else
            begin
              if v_stampa_costi.itemindex = 1 then
              begin
                valorizzazione := 'costo standard';
              end
              else if v_stampa_costi.itemindex = 2 then
              begin
                valorizzazione := tipinv.tipo_inventario('produzione', lista_art_codice[i]);
              end
              else if v_stampa_costi.itemindex = 3 then
              begin
                valorizzazione := 'ultimo costo';
              end;
              przinv.przinv(lista_art_codice[i], '', valorizzazione, esercizio, date, 0, prezzo_inventario, 'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
            end;
            sor.fieldbyname('costo_unitario_codice_figlio').asfloat := prezzo_inventario;
            sor.fieldbyname('valorizzazione').asstring := valorizzazione;
          end;

          if tum_coefficiente_dsb <> 0 then
          begin
            if operazione_coefficiente_dsb = '*' then
            begin
              sor.fieldbyname('costo_unitario_codice_figlio').asfloat := sor.fieldbyname('costo_unitario_codice_figlio').asfloat * tum_coefficiente_dsb;
            end
            else if operazione_coefficiente_dsb = '/' then
            begin
              sor.fieldbyname('costo_unitario_codice_figlio').asfloat := sor.fieldbyname('costo_unitario_codice_figlio').asfloat / tum_coefficiente_dsb;
            end;
          end;
          sor.fieldbyname('costo_codice_figlio').asfloat := arrotonda(sor.fieldbyname('costo_unitario_codice_figlio').asfloat * strtofloat(lista_quantita[i]), 6);
          sor.fieldbyname('costo_produzione_codice_figlio').asfloat := 0;
        end;

        //modifica
        if sor.fieldbyname('art_tum_codice').asstring = 'GR' then
        begin
          sor.fieldbyname('a31costo_kg').asfloat := arrotonda(sor.fieldbyname('costo_unitario_codice_figlio').asfloat * 1000, 6);
        end;

        sor.post;
        sor_id := sor.fieldbyname('id').asinteger;

        if v_dettaglio_cicli.checked then
        begin
          cla_figli.close;
          cla_figli.parambyname('art_codice').asstring := sor.fieldbyname('art_codice').asstring;
          //cla_figli.parambyname('quantita').asfloat := quantita_ciclo * strtofloat(lista_quantita[i]);
          cla_figli.parambyname('quantita').asfloat := v_quantita.value;
          cla_figli.open;
          while not cla_figli.eof do
          begin
            if not sor1.locate('utn_codice;art_codice;sequenza;art_codice_cla', vararrayof([utente, cla_figli.fieldbyname('art_codice').asstring, cla_figli.fieldbyname('sequenza').asstring, cla_figli.fieldbyname('art_codice_cla').asstring]), []) then
            begin
              sor1.append;

              for j := 0 to cla_figli.fields.count - 1 do
              begin
                sor1.fieldbyname(cla_figli.fields[j].fieldname).value := cla_figli.fields[j].value;
              end;
              read_tabella(arc.arcdit, 'art', 'codice', sor.fieldbyname('art_codice').asstring);
              if (archivio.fieldbyname('tcm_codice').asstring = 'EST') and (cla_figli.fieldbyname('fas_codice').asstring = 'LAVEST') then
              begin
                costo_lavest := 0;

                if archivio.fieldbyname('frn_codice').asstring <> '00001651' then
                begin
                  a31lav_est.close;
                  a31lav_est.parambyname('art_codice').asstring := sor.fieldbyname('art_codice').asstring;
                  a31lav_est.open;
                  if a31lav_est.fieldbyname('frn_codice').asstring <> '00001651' then
                  begin
                    costo_lavest := a31lav_est.fieldbyname('prezzo').asfloat;
                    if costo_lavest > 0 then
                    begin
                      sor1.fieldbyname('costo_unitario').asfloat := costo_lavest;
                    end;
                  end;
                  a31lav_est.close;
                end;

              end;
              //modifica fine
              try
                sor1.fieldbyname('a31costo_lavest').asfloat := 0;
                sor1.fieldbyname('a31costo_orario').asfloat := sor1.fieldbyname('costo_unitario').asfloat / sor1.fieldbyname('quantita').asfloat * 3600;
              except
              end;

              sor1.post;
            end;

            cla_figli.next;
          end;
        end;

        //if not((leggo.fieldbyname('materia_prima').asstring = 'si') and v_materia_prima.checked) then
        begin
          if (v_livelli.value = 0) or (livello < v_livelli.value - 1) then
          begin
            quantita_ciclo := quantita_ciclo * strtofloat(lista_quantita[i]);

            if livello = 0 then
            begin
              esplosione(dsb_01, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 1 then
            begin
              esplosione(dsb_02, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 2 then
            begin
              esplosione(dsb_03, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 3 then
            begin
              esplosione(dsb_04, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 4 then
            begin
              esplosione(dsb_05, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 5 then
            begin
              esplosione(dsb_06, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 6 then
            begin
              esplosione(dsb_07, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 7 then
            begin
              esplosione(dsb_08, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 8 then
            begin
              esplosione(dsb_09, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 9 then
            begin
              esplosione(dsb_10, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 10 then
            begin
              esplosione(dsb_11, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 11 then
            begin
              esplosione(dsb_12, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 12 then
            begin
              esplosione(dsb_13, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 13 then
            begin
              esplosione(dsb_14, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 14 then
            begin
              esplosione(dsb_15, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 15 then
            begin
              esplosione(dsb_16, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 16 then
            begin
              esplosione(dsb_17, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 17 then
            begin
              esplosione(dsb_18, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 18 then
            begin
              esplosione(dsb_19, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 19 then
            begin
              esplosione(dsb_20, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 20 then
            begin
              esplosione(dsb_21, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 21 then
            begin
              esplosione(dsb_22, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 22 then
            begin
              esplosione(dsb_23, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 23 then
            begin
              esplosione(dsb_24, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 24 then
            begin
              esplosione(dsb_25, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 25 then
            begin
              esplosione(dsb_26, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 26 then
            begin
              esplosione(dsb_27, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 27 then
            begin
              esplosione(dsb_28, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 28 then
            begin
              esplosione(dsb_29, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 29 then
            begin
              esplosione(dsb_30, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 30 then
            begin
              esplosione(dsb_31, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 31 then
            begin
              esplosione(dsb_32, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 32 then
            begin
              esplosione(dsb_33, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 33 then
            begin
              esplosione(dsb_34, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 34 then
            begin
              esplosione(dsb_35, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 35 then
            begin
              esplosione(dsb_36, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 36 then
            begin
              esplosione(dsb_37, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 37 then
            begin
              esplosione(dsb_38, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 38 then
            begin
              esplosione(dsb_39, lista_art_codice[i], livello + 1, sor_id, quantita_ciclo);
            end
            else if livello = 39 then
            begin
              messaggio(000, 'superato il numero di livelli consentito [40]');
              close;
              abort;
            end;
          end;
        end;
      end;
    end;

    controllo_interrompi;

    leggo.next;
  end;

  freeandnil(lista_art_codice);
  freeandnil(lista_art_descrizione);
  freeandnil(lista_quantita);
end;

procedure TSTADSB.v_quantitaExit(Sender: TObject);
begin
  inherited;

  if v_quantita.value < 1 then
  begin
    v_quantita.value := 1;
  end;
end;

procedure TSTADSB.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TSTADSB.v_stampa_costiChange(Sender: TObject);
begin
  inherited;

  abilita_quantita;

  if v_stampa_costi.text = 'ricalcolo' then
  begin
    abilita_campo(v_aggiorna_costo_standard);
  end
  else
  begin
    disabilita_campo(v_aggiorna_costo_standard);
    v_aggiorna_costo_standard.checked := false;
  end;
end;

procedure TSTADSB.v_tvr_codiceExit(Sender: TObject);
begin
  inherited;
  v_tvr_codice_controllo(true);
  if controllo then
  begin
    if (v_tvr_codice.text <> '') and not read_tabella(artv, vararrayof([art_codice_passato, v_tvr_codice.text])) then
    begin
      messaggio(000, 'non è stato pevisto l''utilizzo della variante per l''articolo');
      fuoco(v_tvr_codice);
      abort;
    end
    else if (tvr.fieldbyname('art_codice').asstring <> '') and (tvr.fieldbyname('art_codice').asstring <> art_codice_passato) then
    begin
      messaggio(000, 'la variante può essere utulizzata solamente per l''articolo [' + tvr.fieldbyname('art_codice').asstring + ']');
      fuoco(v_tvr_codice);
      abort;
    end;
  end;
end;

procedure TSTADSB.v_tvr_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tvr, v_tvr_codice, blocco, nil, nil, nil);
end;

procedure TSTADSB.v_confermaClick(Sender: TObject);
var
  stringa: string;
begin
  if richiesta_filtri then
  begin
    if (arc.dit.fieldbyname('richiesta_filtri').asstring = 'si') or (art_codice_passato <> '') then
    begin
      if not art_eseguito then
      begin
        call_selart;
      end;
      art_eseguito := false;
    end;
  end;

  stringa := 'select dsb.art_codice_padre, dsb.sequenza, dsb.art_codice_figlio, dsb.quantita, dsb.data_inizio, dsb.data_fine,' + ' art_padre.descrizione1 art_descrizione1_padre, art_padre.descrizione2 art_descrizione2_padre, dsb.formula, ' +
    ' art_figlio.descrizione1 art_descrizione1_figlio, art_figlio.descrizione2 art_descrizione2_figlio,' +
    ' art_padre.tum_codice art_padre_tum_codice, art_figlio.tum_codice art_figlio_tum_codice, dsb.descrizione,' + ' art_figlio.descrizione_tecnica, art_figlio.indice_revisione, art_figlio.tum_codice_dsb art_figlio_tum_codice_dsb,' + ' art_figlio.codice_alternativo, ' +
    ' case when art_padre.valore_costo_standard <> 0 then art_padre.valore_costo_standard ' +
    ' else (select prezzo from lsa where art_codice = art_padre.codice and tla_codice = :tla_codice ' + ' and data_inizio <= :data and data_fine >= :data) end art_padre_costo_standard, ' + ' dsb.prezzo, art_figlio.materia_prima, ' +
    ' case when art_figlio.valore_costo_standard <> 0 then art_figlio.valore_costo_standard ' +
    ' else (select prezzo from lsa where art_codice = art_figlio.codice and tla_codice = :tla_codice ' + ' and data_inizio <= :data and data_fine >= :data) end art_figlio_costo_standard, ' + ' art_figlio.tub_codice art_figlio_tub_codice,' +
    ' tub.descrizione art_figlio_tub_descrizione, dsb.tma_codice,' + ' dsb.fas_codice, fas.descrizione fas_descrizione,' +
    ' art_figlio.tum_coefficiente_dsb, art_figlio.operazione_coefficiente_dsb,' + ' coalesce((select id from arv where art_codice = art_padre.codice limit 1), 0) arv_id, ' + '(select data_carico from mag where art_codice = dsb.art_codice_figlio order by data_carico desc limit 1) data_carico ' +
    ' from dsb ' + ' inner join art art_padre on art_padre.codice = dsb.art_codice_padre' +
    ' inner join art art_figlio on art_figlio.codice = dsb.art_codice_figlio' + ' inner join tub on tub.codice = art_figlio.tub_codice' + ' left join fas on fas.codice = dsb.fas_codice' + ' where dsb.art_codice_padre = :art_codice_padre' +
    ' and (data_inizio is null or data_inizio <= :data) and data_fine >= :data' + ' order by dsb.art_codice_padre, dsb.sequenza, dsb.art_codice_figlio';
  dsb.sql.text := stringa;
  dsb_01.sql.text := stringa;
  dsb_02.sql.text := stringa;
  dsb_03.sql.text := stringa;
  dsb_04.sql.text := stringa;
  dsb_05.sql.text := stringa;
  dsb_06.sql.text := stringa;
  dsb_07.sql.text := stringa;
  dsb_08.sql.text := stringa;
  dsb_09.sql.text := stringa;
  dsb_10.sql.text := stringa;
  dsb_11.sql.text := stringa;
  dsb_12.sql.text := stringa;
  dsb_13.sql.text := stringa;
  dsb_14.sql.text := stringa;
  dsb_15.sql.text := stringa;
  dsb_16.sql.text := stringa;
  dsb_17.sql.text := stringa;
  dsb_18.sql.text := stringa;
  dsb_19.sql.text := stringa;
  dsb_20.sql.text := stringa;
  dsb_21.sql.text := stringa;
  dsb_22.sql.text := stringa;
  dsb_23.sql.text := stringa;
  dsb_24.sql.text := stringa;
  dsb_25.sql.text := stringa;
  dsb_26.sql.text := stringa;
  dsb_27.sql.text := stringa;
  dsb_28.sql.text := stringa;
  dsb_29.sql.text := stringa;
  dsb_30.sql.text := stringa;
  dsb_31.sql.text := stringa;
  dsb_32.sql.text := stringa;
  dsb_33.sql.text := stringa;
  dsb_34.sql.text := stringa;
  dsb_35.sql.text := stringa;
  dsb_36.sql.text := stringa;
  dsb_37.sql.text := stringa;
  dsb_38.sql.text := stringa;
  dsb_39.sql.text := stringa;

  inherited;

  esegue_stampa;
end;

procedure TSTADSB.v_dettaglio_cicliClick(Sender: TObject);
begin
  inherited;

  abilita_quantita;
end;

procedure TSTADSB.esegue_stampa;
begin
  inherited;
end;

procedure TSTADSB.FormCreate(Sender: TObject);
begin
  valdsb := tvaldsb.create;
  tipinv := ttipinv.create;
  przinv := tprzinv.create;

  inherited;

  tla_codice_costi := arc.dit.fieldbyname('tla_codice').asstring;
  tla_codice_costo_standard := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;

  sinistra := 0;
  sinistra_art_codice := 0;
  sinistra_art_descrizione := 0;
  sinistra_tma_codice := 0;
  sinistra_tum_codice := 0;
  sinistra_quantita := 0;
  sinistra_costo_produzione := 0;
  sinistra_costo := 0;
  sinistra_codice_alternativo := 0;
  sinistra_descrizione := 0;
  sinistra_descrizione_tecnica := 0;

  progressivo_drill_down := 0;

  art_codice_lista := tstringlist.create;
  art_tmr_codice_lista := tstringlist.create;
  art_tcm_codice_lista := tstringlist.create;
  art_tgm_codice_lista := tstringlist.create;
  art_tsa_codice_lista := tstringlist.create;
  art_frn_codice_lista := tstringlist.create;
  art_tin_codice_lista := tstringlist.create;
  art_tub_codice_lista := tstringlist.create;

  interruzione_elaborazione := true;

  if arc.dit.fieldbyname('utilizzo_varianti').asstring = 'no' then
  begin
    disabilita_campo(v_tvr_codice);
  end;
end;

procedure TSTADSB.call_selart;
begin
  esegui_selart(selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione,
    da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
    selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, art_codice_passato, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista, tasto_escape_art, art_escludi_obsoleti, art_eseguito);
  if tasto_escape_art then
  begin
    close;
    abort;
  end;
end;

function TSTADSB.ha_figlio(art_codice: string): boolean;
begin
  query_figlio.params[0].asstring := art_codice;
  query_figlio.close;
  query_figlio.open;
  result := not query_figlio.eof;
end;

function TSTADSB.ha_padre(art_codice: string): boolean;
begin
  query_padre.params[0].asstring := art_codice;
  query_padre.close;
  query_padre.open;
  result := not query_padre.eof;
end;

procedure TSTADSB.ppReportBeforePrint(Sender: TObject);
begin
  inherited;
  try
    sinistra := pp_dbtext8.left;
  except
  end;

  try
    sinistra_art_codice := pp_dbtext1.left;
  except
  end;
  try
    sinistra_art_descrizione := pp_dbtext5.left;
  except
  end;
  try
    sinistra_tum_codice := pp_dbtext6.left;
  except
  end;
  try
    sinistra_quantita := pp_dbtext3.left;
  except
  end;
  try
    sinistra_tma_codice := ppdbtext3.left;
  except
  end;
  try
    sinistra_costo_produzione := ppdbtext2.left;
  except
  end;
  try
    sinistra_costo := pp_dbtext_costo_figlio.left;
  except
  end;
  try
    sinistra_codice_alternativo := pp_dbtext9.left;
  except
  end;
  try
    sinistra_descrizione := pp_dbmemo2.left;
  except
  end;
  try
    sinistra_descrizione_tecnica := pp_dbmemo1.left;
  except
  end;

  if v_stampa_costi.itemindex <> 0 then
  begin
    try
      pp_valorizzazione.text := copy(v_stampa_costi.text, 1, 12);
    except
    end;
  end;

  if v_nuova_pagina.checked then
  begin
    try
      ppgroup1.newpage := true;
      ppgroup1.resetpageno := true;
    except
    end;
  end;

  try
    if v_dettaglio_cicli.checked then
    begin
      pp_ciclo_padre.visible := true;
    end
    else
    begin
      pp_ciclo_padre.visible := false;
    end;
  except
  end;
  try
    if v_dettaglio_cicli.checked then
    begin
      pp_ciclo_figli.visible := true;
    end
    else
    begin
      pp_ciclo_figli.visible := false;
    end;
  except
  end;
end;

procedure TSTADSB.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
  try
    pp_dbtext8.left := sinistra + query_stampa.fieldbyname('livello').asfloat * 0.08;
  except
  end;

  if v_indentazione.checked then
  begin
    try
      pp_dbtext1.left := sinistra_art_codice + query_stampa.fieldbyname('livello').asfloat * 0.08;
    except
    end;
    try
      pp_dbtext5.left := sinistra_art_descrizione + query_stampa.fieldbyname('livello').asfloat * 0.08;
    except
    end;
  end;

  try
    pp_DBText_costo_padre.displayformat := formato_display_prezzo_acq_zero;
    pp_DBText_costo_figlio.displayformat := formato_display_prezzo_acq_zero;
  except
  end;

  try
    if query_stampa.fieldbyname('codice_alternativo').asstring = '' then
    begin
      pp_region1.visible := false;
    end
    else
    begin
      pp_region1.visible := true;
    end;
  except
  end;
end;

procedure TSTADSB.FormShow(Sender: TObject);
begin
  inherited;

  if arc.dit.fieldbyname('costo_produzione').asstring <> 'costo standard' then
  begin
    v_aggiorna_costo_standard.visible := false;
  end;

  //MODIFICA
  if arc.utn.fieldbyname('importi_vendite').asstring = 'nascondi' then
  begin
    v_stampa_costi.enabled := false;
    ppsubreport1.visible := false;
    ppDBa31costo_kg.visible := false;
    ppDBa31_costo_h.visible := false;
  end;
  //MODIFICA FINE

  if codice <> '' then
  begin
    v_solo_finiti.checked := false;
    v_solo_finiti.enabled := false;
    v_nuova_pagina.enabled := false;
    art_codice_passato := codice;
  end
  else
  begin
    v_solo_finiti.checked := true;
    v_solo_finiti.enabled := true;

    v_aggiorna_costo_standard.visible := false;
  end;

  v_quantita.decimalplaces := decimali_max_quantita;
  v_quantita.displayformat := formato_display_quantita;

  abilita_quantita;

  if art_codice_passato = '' then
  begin
    disabilita_campo(v_tvr_codice);
  end;

end;

procedure TSTADSB.abilita_quantita;
begin
  if (v_dettaglio_cicli.checked) or (v_stampa_costi.text <> 'no') then
  begin
    abilita_campo(v_quantita);
  end
  else
  begin
    disabilita_campo(v_quantita);
  end;
end;

procedure TSTADSB.FormDestroy(Sender: TObject);
begin
  inherited;

  freeandnil(valdsb);
  freeandnil(tipinv);
  freeandnil(przinv);

  freeandnil(art_codice_lista);
  freeandnil(art_codice_lista);
  freeandnil(art_tmr_codice_lista);
  freeandnil(art_tcm_codice_lista);
  freeandnil(art_tgm_codice_lista);
  freeandnil(art_tsa_codice_lista);
  freeandnil(art_frn_codice_lista);
  freeandnil(art_tin_codice_lista);
  freeandnil(art_tub_codice_lista);
end;

procedure TSTADSB.sorBeforePost(DataSet: TDataSet);
begin
  inherited;
  if sor.state = dsinsert then
  begin
    inc(progressivo_drill_down);
    sor.fieldbyname('progressivo_drill_down').asinteger := progressivo_drill_down;
  end;
end;

procedure TSTADSB.controllo_campi;
begin
  v_tvr_codice_controllo(true);
end;

procedure TSTADSB.visualizza_stampa_elabora;
begin
  v_tvr_codice_controllo(false);
end;

initialization

registerclass(tstadsb);

end.
