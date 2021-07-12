unit GGSTAINV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGSTAMPA, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess, ppdevice,
  Menus, StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs,
  Mask, ToolWin, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, RzButton, RzSpnEdt, MemDS,
  VirtualTable, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL, IdSASLAnonymous,
  IdExplicitTLSClientServerBase, IdSMTPBase, zzprzinv, ppStrtch, ppSubRpt, ppMemo, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  RzEdit, ppParameter, DBAccess, ppDesignLayer;

type

  TSTAINV = class(TSTAMPA)
    v_alla_data: TRzDateTimeEdit_go;
    Label4: TRzlabel;
    v_esistenza_zero: TRzcheckbox;
    v_solo_quantita: TRzcheckbox;
    inventario: tmyquery_go;
    prezzo: tmyquery_go;
    pp_DBText1: TppDBText;
    pp_DBText2: TppDBText;
    pp_DBText3: TppDBText;
    pp_DBText4: TppDBText;
    pp_DBText5: TppDBText;
    pp_DBText6: TppDBText;
    pp_DBText7: TppDBText;
    pp_DBText8: TppDBText;
    valore: tmyquery_go;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    pp_DBText9: TppDBText;
    pp_Label8: TppLabel;
    pp_DBText11: TppDBText;
    pp_Label9: TppLabel;
    pp_Label12: TppLabel;
    pp_Label13: TppLabel;
    pp_Line1: TppLine;
    pp_Line2: TppLine;
    pp_Label14: TppLabel;
    pp_Label15: TppLabel;
    pp_Label16: TppLabel;
    pp_Label17: TppLabel;
    pp_Label18: TppLabel;
    pp_Line3: TppLine;
    pp_Line4: TppLine;
    pp_Line5: TppLine;
    pp_DBCalc1: TppDBCalc;
    pp_DBCalc2: TppDBCalc;
    pp_Line6: TppLine;
    pp_DBCalc3: TppDBCalc;
    pp_Line7: TppLine;
    pp_Shape4: TppShape;
    pp_DBCalc5: TppDBCalc;
    pp_DBCalc6: TppDBCalc;
    pp_Line8: TppLine;
    pp_DBCalc4: TppDBCalc;
    mag: tmyquery_go;
    pp_Label_l_alla_data: TppLabel;
    pp_Label_alla_data: TppLabel;
    Label7: TRzlabel;
    v_raggruppamento: TRzCombobox_go;
    Label2: TRzlabel;
    v_valorizzazione: TRzCombobox_go;
    Label5: TRzlabel;
    v_consolidamento: TRzCombobox_go;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    pannello_bottoni: TRzPanel;
    v_selart: TRzRapidFireButton;
    v_seltma: TRzRapidFireButton;
    query_qta: tmyquery_go;
    query_val: tmyquery_go;
    Label3: TRzlabel;
    v_ordinamento: TRzCombobox_go;
    lsa: tmyquery_go;
    quantita_totale: tmyquery_go;
    v_storico_lifo: TRzcheckbox;
    ppDBPipeline1: TppDBPipeline;
    ppSubReport_LIFO: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    query_stampa_lifo: TMyQuery_go;
    query_stampa_lifo_ds: TMyDataSource;
    v_apertura: TRzCheckBox;
    v_elabora_mag: TRzCheckBox;
    RzLabel1: TRzLabel;
    v_controllo_esistenza: trzcombobox_go;
    sor_update: TMyQuery_go;
    procedure v_alla_dataExit(Sender: TObject);
    procedure v_tipo_valorizzazioneExit(Sender: TObject);
    procedure v_esistenza_zeroExit(Sender: TObject);
    procedure v_solo_quantitaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_solo_quantitaClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure pp_DBText2DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pp_DBText2DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
    procedure v_seltmaClick(Sender: TObject);
  protected
    przinv: tprzinv;

    autoinc: integer;
    //
    //  parametri selart
    //
    selezione_art_codice, da_art_codice, a_art_codice,
      selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
      selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
      selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
      selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
      selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
      selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
      selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice,
      selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
      selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice: string;
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista, art_tsa_codice_lista, art_frn_codice_lista,
      art_tin_codice_lista, art_tub_codice_lista: tstringlist;
    tasto_escape_art, art_escludi_obsoleti, art_eseguito: boolean;
    //
    selezione_tma_codice, da_tma_codice, a_tma_codice: string;
    tma_codice_lista: tstringlist;
    tasto_escape_tma, tma_eseguito: boolean;

    procedure call_selart;
    procedure call_seltma;
    //
    //  fine variabili selart
    //
    procedure alla_data_controllo;

    function assegna_costo(tipo_valorizzazione: integer): double;
  public
    art_codice_passato, tma_codice_passato: string;

    procedure controllo_campi; override;
    procedure stampa; override;
    procedure esegue_stampa; override;
  end;

implementation

uses DMARC, ZZLIBRERIE, ZZTMA_TAG;

{$r *.dfm}


procedure TSTAINV.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  alla_data_controllo;
  if controllo then
  begin
    if (v_alla_data.date = date) or (v_alla_data.date = data_bilancio) then
    begin
      v_consolidamento.itemindex := 1;
      v_consolidamento.enabled := false;
      abilita_campo(v_elabora_mag);
    end
    else
    begin
      v_consolidamento.enabled := true;
      disabilita_campo(v_elabora_mag);
      v_elabora_mag.checked := false;
    end;
  end;
end;

procedure TSTAINV.alla_data_controllo;
begin
  inherited;
  if controllo then
  begin
    if (v_alla_data.date < data_inizio) or (v_alla_data.date > data_bilancio) then
    begin
      messaggio(000, 'la data di elaborazione non è compresa nell''esercizio fiscale');
      v_alla_data.date := data_bilancio;
      if v_alla_data.canfocus then
      begin
        v_alla_data.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TSTAINV.v_tipo_valorizzazioneExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TSTAINV.v_esistenza_zeroExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TSTAINV.v_solo_quantitaExit(Sender: TObject);
begin
  inherited;

  if v_solo_quantita.checked then
  begin
    v_storico_lifo.checked := false;
  end;
end;

procedure TSTAINV.controllo_campi;
begin
  alla_data_controllo;
end;

procedure TSTAINV.FormShow(Sender: TObject);
var
  tag: tmyquery_go;
begin
  inherited;

  v_alla_data.date := data_bilancio;

  tma_codice_passato := assegna_tma_tag;
end;

procedure TSTAINV.stampa;
var
  test_art_codice, valorizzazione, codice_raggruppamento, descrizione_raggruppamento: string;
  costo: double;
  tipo_valorizzazione: integer;
begin
  controllo_interrompi;

  nome_tabella := 'stainv';
  azzera_tabella(nome_tabella, sor);

  azzera_tabella('stainv_lifo', sor1);

  autoinc := 0;

  screen.cursor := crhourglass;

  query.close;
  query.connection := arc.arcsor;
  query.sql.clear;
  query.sql.add('drop table if exists stainv_utente;');
  query.sql.add('create table stainv_utente like stainv;');
  query.sql.add('delete from stainv_utente;');
  query.execsql;

  query_qta.close;
  query_qta.sql.clear;
  query_qta.sql.add('insert into arc_ordinamento.stainv_utente(utn_codice,');
  query_qta.sql.add('art_codice, art_codice_alternativo, art_tum_codice, tma_codice, tma_descrizione,');
  query_qta.sql.add('art_descrizione1, art_descrizione2, tin_codice, tin_descrizione, tub_codice,');
  query_qta.sql.add('tmr_codice, tmr_descrizione, tipo_inventario, codice_raggruppamento, descrizione_raggruppamento,');
  query_qta.sql.add('codice_ordinamento, prezzo,');
  query_qta.sql.add('quantita_apertura, quantita_apertura_tma, quantita)');

  //  esistenza attuale
  if v_elabora_mag.checked then
  begin
    query_qta.sql.add('select ' + quotedstr(utente) + ' utn_codice, magese.art_codice, art.codice_alternativo art_codice_alternativo,');
    query_qta.sql.add('art.tum_codice art_tum_codice, magese.tma_codice, tma.descrizione tma_descrizione,');
    query_qta.sql.add('concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione1,');

    if v_valorizzazione.itemindex = 0 then
    begin
      query_qta.sql.add('case');
      query_qta.sql.add('when art.tipo_inventario <> '''' then art.tipo_inventario');
      query_qta.sql.add('when tin.tipo_inventario <> '''' then tin.tipo_inventario');
      query_qta.sql.add('else ' + quotedstr(arc.dit.fieldbyname('tipo_inventario').asstring));
      query_qta.sql.add('end art_descrizione2,');
    end
    else
    begin
      query_qta.sql.add(quotedstr(v_valorizzazione.text) + ' art_descrizione2,');
    end;

    query_qta.sql.add('art.tin_codice, tin.descrizione tin_descrizione, art.tub_codice,');
    query_qta.sql.add('art.tmr_codice, tmr.descrizione tmr_descrizione,');

    if v_solo_quantita.checked then
    begin
      query_qta.sql.add('0 tipo_inventario,');
    end
    else
    begin
      query_qta.sql.add(inttostr(v_valorizzazione.itemindex) + ' tipo_inventario,');
    end;

    if v_raggruppamento.itemindex = 0 then
    begin
      query_qta.sql.add('tin.codice codice_raggruppamento, tin.descrizione descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 1 then
    begin
      query_qta.sql.add('tub.codice codice_raggruppamento, tub.descrizione descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 2 then
    begin
      query_qta.sql.add('art.codice_alternativo codice_raggruppamento, art.codice_alternativo descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 3 then
    begin
      query_qta.sql.add('art.codice codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 4 then
    begin
      query_qta.sql.add('tma.codice codice_raggruppamento, tma.descrizione descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 5 then
    begin
      query_qta.sql.add('art.descrizione1 codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
    end;

    if v_ordinamento.itemindex = 0 then
    begin
      query_qta.sql.add('art.codice codice_ordinamento,');
    end
    else
    begin
      query_qta.sql.add('art.descrizione1 codice_ordinamento,');
    end;

    query_qta.sql.add('lsa.prezzo prezzo,');

    if v_apertura.checked then
    begin
      query_qta.sql.add('f_quantita_apertura(magese.art_codice, '''', :ese_codice) quantita_apertura,');
      query_qta.sql.add('f_quantita_apertura(magese.art_codice, magese.tma_codice, :ese_codice) quantita_apertura_tma,');
    end
    else
    begin
      query_qta.sql.add('0 quantita_apertura,');
      query_qta.sql.add('0 quantita_apertura_tma,');
    end;

    query_qta.sql.add('magese.esistenza + magese.quantita_chiusura quantita');

    query_qta.sql.add('from magese');
    query_qta.sql.add('inner join art on art.codice = magese.art_codice');
    query_qta.sql.add('inner join tma on tma.codice = magese.tma_codice');
    query_qta.sql.add('inner join tin on tin.codice = art.tin_codice');
    query_qta.sql.add('inner join tub on tub.codice = art.tub_codice');
    query_qta.sql.add('left join tmr on tmr.codice = art.tmr_codice');

    query_qta.sql.add('left join lsa on lsa.art_codice = art.codice and');
    query_qta.sql.add('lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and');
    query_qta.sql.add(':alla_data between lsa.data_inizio and lsa.data_fine');

    query_qta.sql.add('where art.tipo_articolo = ''fiscale''');
    query_qta.sql.add('and magese.ese_codice = :ese_codice');
    query_qta.sql.add('and tma.proprieta = ''si''');

    //query_qta.sql.add('and (magese.esistenza + magese.quantita_chiusura) <> 0');

    limart(art_escludi_obsoleti, query_qta, false, selezione_art_codice, da_art_codice, a_art_codice,
      selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
      selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
      selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
      selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
      selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
      selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
      selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice,
      selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
      selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
      art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
      art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

    limtma_sql(query_qta, false, selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_lista);

    query_qta.sql.add('group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
  end
  else
  begin
    query_qta.sql.add('select ' + quotedstr(utente) + ' utn_codice, mmr.art_codice, art.codice_alternativo art_codice_alternativo,');
    query_qta.sql.add('art.tum_codice art_tum_codice, mmr.tma_codice, tma.descrizione tma_descrizione,');
    query_qta.sql.add('concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione1,');

    if v_valorizzazione.itemindex = 0 then
    begin
      query_qta.sql.add('case');
      query_qta.sql.add('when art.tipo_inventario <> '''' then art.tipo_inventario');
      query_qta.sql.add('when tin.tipo_inventario <> '''' then tin.tipo_inventario');
      query_qta.sql.add('else ' + quotedstr(arc.dit.fieldbyname('tipo_inventario').asstring));
      query_qta.sql.add('end art_descrizione2,');
    end
    else
    begin
      query_qta.sql.add(quotedstr(v_valorizzazione.text) + ' art_descrizione2,');
    end;

    query_qta.sql.add('art.tin_codice, tin.descrizione tin_descrizione, art.tub_codice,');
    query_qta.sql.add('art.tmr_codice, tmr.descrizione tmr_descrizione,');

    if v_solo_quantita.checked then
    begin
      query_qta.sql.add('0 tipo_inventario,');
    end
    else
    begin
      query_qta.sql.add(inttostr(v_valorizzazione.itemindex) + ' tipo_inventario,');
    end;

    if v_raggruppamento.itemindex = 0 then
    begin
      query_qta.sql.add('tin.codice codice_raggruppamento, tin.descrizione descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 1 then
    begin
      query_qta.sql.add('tub.codice codice_raggruppamento, tub.descrizione descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 2 then
    begin
      query_qta.sql.add('art.codice_alternativo codice_raggruppamento, art.codice_alternativo descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 3 then
    begin
      query_qta.sql.add('art.codice codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 4 then
    begin
      query_qta.sql.add('tma.codice codice_raggruppamento, tma.descrizione descrizione_raggruppamento,');
    end
    else if v_raggruppamento.itemindex = 5 then
    begin
      query_qta.sql.add('art.descrizione1 codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
    end;

    if v_ordinamento.itemindex = 0 then
    begin
      query_qta.sql.add('art.codice codice_ordinamento,');
    end
    else
    begin
      query_qta.sql.add('art.descrizione1 codice_ordinamento,');
    end;

    query_qta.sql.add('lsa.prezzo prezzo,');

    if v_apertura.checked then
    begin
      query_qta.sql.add('f_quantita_apertura(mmr.art_codice, '''', :ese_codice) quantita_apertura,');
      query_qta.sql.add('f_quantita_apertura(mmr.art_codice, mmr.tma_codice, :ese_codice) quantita_apertura_tma,');
    end
    else
    begin
      query_qta.sql.add('0 quantita_apertura,');
      query_qta.sql.add('0 quantita_apertura_tma,');
    end;

    query_qta.sql.add('sum(mmr.quantita_entrate - mmr.quantita_uscite) quantita');

    query_qta.sql.add('from mmr');
    query_qta.sql.add('inner join mmt on mmt.progressivo = mmr.progressivo');
    query_qta.sql.add('inner join art on art.codice = mmr.art_codice');
    query_qta.sql.add('inner join tma on tma.codice = mmr.tma_codice');
    query_qta.sql.add('inner join tin on tin.codice = art.tin_codice');
    query_qta.sql.add('inner join tub on tub.codice = art.tub_codice');
    query_qta.sql.add('left join tmr on tmr.codice = art.tmr_codice');

    query_qta.sql.add('left join lsa on lsa.art_codice = art.codice and');
    query_qta.sql.add('lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and');
    query_qta.sql.add(':alla_data between lsa.data_inizio and lsa.data_fine');

    query_qta.sql.add('where mmt.ese_codice = :ese_codice');
    query_qta.sql.add('and ((mmt.data_registrazione between :data_inizio and :alla_data)');
    query_qta.sql.add('or (mmt.tipo_movimento = ''apertura inventario''))');
    query_qta.sql.add('and art.tipo_articolo = ''fiscale''');
    query_qta.sql.add('and tma.proprieta = ''si''');
    query_qta.sql.add('and (mmr.quantita_entrate <> 0 or mmr.quantita_uscite <> 0)');
    query_qta.sql.add('and mmt.tipo_movimento <> ''chiusura inventario''');

    limart(art_escludi_obsoleti, query_qta, false, selezione_art_codice, da_art_codice, a_art_codice,
      selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
      selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
      selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
      selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
      selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
      selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
      selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice,
      selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
      selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
      art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
      art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

    limtma_sql(query_qta, false, selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_lista);

    query_qta.sql.add('group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
  end;

  //  esistenza precedente
  if esercizio_chiuso_magazzino_precedente = 'no' then
  begin
    if v_elabora_mag.checked then
    begin
      query_qta.sql.add('union all');
      query_qta.sql.add('select ' + quotedstr(utente) + ' utn_codice, magese.art_codice, art.codice_alternativo art_codice_alternativo,');
      query_qta.sql.add('art.tum_codice art_tum_codice, magese.tma_codice, tma.descrizione tma_descrizione,');
      query_qta.sql.add('concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione1,');

      if v_valorizzazione.itemindex = 0 then
      begin
        query_qta.sql.add('case');
        query_qta.sql.add('when art.tipo_inventario <> '''' then art.tipo_inventario');
        query_qta.sql.add('when tin.tipo_inventario <> '''' then tin.tipo_inventario');
        query_qta.sql.add('else ' + quotedstr(arc.dit.fieldbyname('tipo_inventario').asstring));
        query_qta.sql.add('end art_descrizione2,');
      end
      else
      begin
        query_qta.sql.add(quotedstr(v_valorizzazione.text) + ' art_descrizione2,');
      end;

      query_qta.sql.add('art.tin_codice, tin.descrizione tin_descrizione, art.tub_codice,');
      query_qta.sql.add('art.tmr_codice, tmr.descrizione tmr_descrizione,');

      if v_solo_quantita.checked then
      begin
        query_qta.sql.add('0 tipo_inventario,');
      end
      else
      begin
        query_qta.sql.add(inttostr(v_valorizzazione.itemindex) + ' tipo_inventario,');
      end;

      if v_raggruppamento.itemindex = 0 then
      begin
        query_qta.sql.add('tin.codice codice_raggruppamento, tin.descrizione descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 1 then
      begin
        query_qta.sql.add('tub.codice codice_raggruppamento, tub.descrizione descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 2 then
      begin
        query_qta.sql.add('art.codice_alternativo codice_raggruppamento, art.codice_alternativo descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 3 then
      begin
        query_qta.sql.add('art.codice codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 4 then
      begin
        query_qta.sql.add('tma.codice codice_raggruppamento, tma.descrizione descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 5 then
      begin
        query_qta.sql.add('art.descrizione1 codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
      end;

      if v_ordinamento.itemindex = 0 then
      begin
        query_qta.sql.add('art.codice codice_ordinamento,');
      end
      else
      begin
        query_qta.sql.add('art.descrizione1 codice_ordinamento,');
      end;

      query_qta.sql.add('lsa.prezzo prezzo,');

      if v_apertura.checked then
      begin
        query_qta.sql.add('f_esistenza(magese.art_codice, '''', :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) quantita_apertura,');
        query_qta.sql.add('f_esistenza(magese.art_codice, magese.tma_codice, :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) quantita_apertura_tma,');
      end
      else
      begin
        query_qta.sql.add('0 quantita_apertura,');
        query_qta.sql.add('0 quantita_apertura_tma,');
      end;

      query_qta.sql.add('magese.esistenza quantita');

      query_qta.sql.add('from magese');
      query_qta.sql.add('inner join art on art.codice = magese.art_codice');
      query_qta.sql.add('inner join tma on tma.codice = magese.tma_codice');
      query_qta.sql.add('inner join tin on tin.codice = art.tin_codice');
      query_qta.sql.add('inner join tub on tub.codice = art.tub_codice');
      query_qta.sql.add('left join tmr on tmr.codice = art.tmr_codice');

      query_qta.sql.add('left join lsa on lsa.art_codice = art.codice and');
      query_qta.sql.add('lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and');
      query_qta.sql.add(':alla_data between lsa.data_inizio and lsa.data_fine');

      query_qta.sql.add('where art.tipo_articolo = ''fiscale''');
      query_qta.sql.add('and magese.ese_codice = :ese_codice_precedente');
      query_qta.sql.add('and tma.proprieta = ''si''');
      //query_qta.sql.add('and magese.esistenza <> 0');

      limart(art_escludi_obsoleti, query_qta, false, selezione_art_codice, da_art_codice, a_art_codice,
        selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
        selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
        selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
        selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
        selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
        selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
        selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice,
        selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
        selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
        art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
        art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

      limtma_sql(query_qta, false, selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_lista);

      query_qta.sql.add('group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
    end
    else
    begin
      query_qta.sql.add('union all');
      query_qta.sql.add('select ' + quotedstr(utente) + ' utn_codice, mag.art_codice, art.codice_alternativo art_codice_alternativo,');
      query_qta.sql.add('art.tum_codice art_tum_codice, mag.tma_codice, tma.descrizione tma_descrizione,');
      query_qta.sql.add('concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione1,');

      if v_valorizzazione.itemindex = 0 then
      begin
        query_qta.sql.add('case');
        query_qta.sql.add('when art.tipo_inventario <> '''' then art.tipo_inventario');
        query_qta.sql.add('when tin.tipo_inventario <> '''' then tin.tipo_inventario');
        query_qta.sql.add('else ' + quotedstr(arc.dit.fieldbyname('tipo_inventario').asstring));
        query_qta.sql.add('end art_descrizione2,');
      end
      else
      begin
        query_qta.sql.add(quotedstr(v_valorizzazione.text) + ' art_descrizione2,');
      end;

      query_qta.sql.add('art.tin_codice, tin.descrizione tin_descrizione, art.tub_codice,');
      query_qta.sql.add('art.tmr_codice, tmr.descrizione tmr_descrizione,');

      if v_solo_quantita.checked then
      begin
        query_qta.sql.add('0 tipo_inventario,');
      end
      else
      begin
        query_qta.sql.add(inttostr(v_valorizzazione.itemindex) + ' tipo_inventario,');
      end;

      if v_raggruppamento.itemindex = 0 then
      begin
        query_qta.sql.add('tin.codice codice_raggruppamento, tin.descrizione descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 1 then
      begin
        query_qta.sql.add('tub.codice codice_raggruppamento, tub.descrizione descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 2 then
      begin
        query_qta.sql.add('art.codice_alternativo codice_raggruppamento, art.codice_alternativo descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 3 then
      begin
        query_qta.sql.add('art.codice codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 4 then
      begin
        query_qta.sql.add('tma.codice codice_raggruppamento, tma.descrizione descrizione_raggruppamento,');
      end
      else if v_raggruppamento.itemindex = 5 then
      begin
        query_qta.sql.add('art.descrizione1 codice_raggruppamento, art.descrizione1 descrizione_raggruppamento,');
      end;

      if v_ordinamento.itemindex = 0 then
      begin
        query_qta.sql.add('art.codice codice_ordinamento,');
      end
      else
      begin
        query_qta.sql.add('art.descrizione1 codice_ordinamento,');
      end;

      query_qta.sql.add('lsa.prezzo prezzo,');

      if v_apertura.checked then
      begin
        query_qta.sql.add('f_esistenza(mag.art_codice, '''', :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) quantita_apertura,');
        query_qta.sql.add('f_esistenza(mag.art_codice, mag.tma_codice, :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) quantita_apertura_tma,');
      end
      else
      begin
        query_qta.sql.add('0 quantita_apertura,');
        query_qta.sql.add('0 quantita_apertura_tma,');
      end;

      query_qta.sql.add('f_esistenza(mag.art_codice, mag.tma_codice, :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) quantita');

      query_qta.sql.add('from mag');
      query_qta.sql.add('inner join art on art.codice = mag.art_codice');
      query_qta.sql.add('inner join tma on tma.codice = mag.tma_codice');
      query_qta.sql.add('inner join tin on tin.codice = art.tin_codice');
      query_qta.sql.add('inner join tub on tub.codice = art.tub_codice');
      query_qta.sql.add('left join tmr on tmr.codice = art.tmr_codice');

      query_qta.sql.add('left join lsa on lsa.art_codice = art.codice and');
      query_qta.sql.add('lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and');
      query_qta.sql.add(':alla_data between lsa.data_inizio and lsa.data_fine');

      query_qta.sql.add('where art.tipo_articolo = ''fiscale''');
      query_qta.sql.add('and tma.proprieta = ''si''');

      limart(art_escludi_obsoleti, query_qta, false, selezione_art_codice, da_art_codice, a_art_codice,
        selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
        selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
        selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
        selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
        selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
        selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
        selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice,
        selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
        selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
        art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
        art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

      limtma_sql(query_qta, false, selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_lista);

      query_qta.sql.add('group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
    end;
  end;

  try
    query_qta.parambyname('ese_codice').asstring := esercizio;
  except
  end;
  try
    query_qta.parambyname('ese_codice_precedente').asstring := esercizio_precedente;
  except
  end;
  try
    query_qta.parambyname('data_inizio').asdate := data_inizio;
  except
  end;
  try
    query_qta.parambyname('alla_data').asdate := v_alla_data.date;
  except
  end;

  query_qta.execsql;

  //  valorizzazioni
  if not v_solo_quantita.checked then
  begin
    query_val.close;
    query_val.sql.clear;

    query_val.close;
    query_val.sql.clear;
    query_val.sql.add('select art.codice art_codice,');

    if esercizio_chiuso_magazzino_precedente = 'no' then
    begin
      if v_elabora_mag.checked then
      begin
        query_val.sql.add('(select sum(quantita_apertura) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice_precedente');
        query_val.sql.add('and tma.proprieta = ''si'') quantita_apertura,');

        query_val.sql.add('(select sum(valore_apertura) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice_precedente');
        query_val.sql.add('and tma.proprieta = ''si'') valore_apertura,');

        if v_consolidamento.text = 'valore attuale' then
        begin
          query_val.sql.add('0 quantita_entrate_val_storico,');

          query_val.sql.add('0 valore_entrate_val_storico,');
        end
        else
        begin
          query_val.sql.add('coalesce((select sum(quantita_entrate_val) from magese');
          query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
          query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice_precedente and tma.proprieta = ''si''), 0) +');
          query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
          query_val.sql.add('quantita_entrate_val_storico,');

          query_val.sql.add('coalesce((select sum(valore_entrate_val) from magese');
          query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
          query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice_precedente and tma.proprieta = ''si''), 0) +');
          query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
          query_val.sql.add('valore_entrate_val_storico,');
        end;

        query_val.sql.add('coalesce((select sum(quantita_entrate_val) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice_precedente and tma.proprieta = ''si''), 0) +');
        query_val.sql.add('coalesce((select sum(quantita_entrate_val) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice and tma.proprieta = ''si''), 0)');
        query_val.sql.add('quantita_entrate_val,');

        query_val.sql.add('coalesce((select sum(valore_entrate_val) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice_precedente and tma.proprieta = ''si''), 0) +');
        query_val.sql.add('coalesce((select sum(valore_entrate_val) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice and tma.proprieta = ''si''), 0)');
        query_val.sql.add('valore_entrate_val,');
      end
      else
      begin
        query_val.sql.add('f_quantita_apertura(art.codice, '''', :ese_codice_precedente) quantita_apertura,');
        query_val.sql.add('f_valore_apertura(art.codice, :ese_codice_precedente) valore_apertura,');

        query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) +');
        query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
        query_val.sql.add('quantita_entrate_val_storico,');

        query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) +');
        query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
        query_val.sql.add('valore_entrate_val_storico,');

        query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) +');
        query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice, @data_inizio, @data_bilancio)');
        query_val.sql.add('quantita_entrate_val,');

        query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente) +');
        query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice, @data_inizio, @data_bilancio)');
        query_val.sql.add('valore_entrate_val,');
      end;
    end
    else
    begin
      if v_elabora_mag.checked then
      begin
        query_val.sql.add('(select sum(quantita_apertura) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice and tma.proprieta = ''si'') quantita_apertura,');

        query_val.sql.add('(select sum(valore_apertura) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice and tma.proprieta = ''si'') valore_apertura,');

        if v_consolidamento.text = 'valore attuale' then
        begin
          query_val.sql.add('0 quantita_entrate_val_storico,');

          query_val.sql.add('0 valore_entrate_val_storico,');
        end
        else
        begin
          query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
          query_val.sql.add('quantita_entrate_val_storico,');

          query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
          query_val.sql.add('valore_entrate_val_storico,');
        end;

        query_val.sql.add('coalesce((select sum(quantita_entrate_val) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice and tma.proprieta = ''si''), 0)');
        query_val.sql.add('quantita_entrate_val,');

        query_val.sql.add('coalesce((select sum(valore_entrate_val) from magese');
        query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
        query_val.sql.add('where art_codice = art.codice and ese_codice = :ese_codice and tma.proprieta = ''si''), 0)');
        query_val.sql.add('valore_entrate_val,');
      end
      else
      begin
        query_val.sql.add('f_quantita_apertura(art.codice, '''', :ese_codice) quantita_apertura,');
        query_val.sql.add('f_valore_apertura(art.codice, :ese_codice) valore_apertura,');

        query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
        query_val.sql.add('quantita_entrate_val_storico,');
        query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice, :data_inizio, :alla_data)');
        query_val.sql.add('valore_entrate_val_storico,');

        query_val.sql.add('f_quantita_entrate_val(art.codice, :ese_codice, @data_inizio, @data_bilancio)');
        query_val.sql.add('quantita_entrate_val,');
        query_val.sql.add('f_valore_entrate_val(art.codice, :ese_codice, @data_inizio, @data_bilancio)');
        query_val.sql.add('valore_entrate_val,');
      end;
    end;

    if v_elabora_mag.checked then
    begin
      query_val.sql.add('coalesce((select prezzo_carico from magese');
      query_val.sql.add('inner join tma on tma.codice = magese.tma_codice');
      query_val.sql.add('where art_codice = art.codice and ese_codice <= :ese_codice and tma.proprieta = ''si''');
      query_val.sql.add('order by magese.data_carico desc, magese.data_ora desc limit 1), 0)');
    end
    else
    begin
      query_val.sql.add('coalesce((select (mmr.importo_euro + mmr.importo_spese_euro) / mmr.quantita from mmr');
      query_val.sql.add('inner join mmt on mmt.progressivo = mmr.progressivo');
      query_val.sql.add('inner join tmo on tmo.codice = mmt.tmo_codice');
      query_val.sql.add('inner join tma on tma.codice = mmr.tma_codice');
      query_val.sql.add('where mmr.art_codice = art.codice');
      query_val.sql.add('and mmt.data_registrazione <= current_date');
      query_val.sql.add('and tma.proprieta = ''si''');
      query_val.sql.add('and tmo.ultimi_valori = ''carico''');
      query_val.sql.add('and mmr.importo_euro <> 0');
      query_val.sql.add('and mmr.quantita <> 0');
      query_val.sql.add('order by mmt.data_registrazione desc, mmt.progressivo desc  limit 1), 0)');
    end;
    query_val.sql.add('prezzo_carico,');

    if v_consolidamento.text = 'valore attuale' then
    begin
      query_val.sql.add('0');
    end
    else
    begin
      query_val.sql.add('round(coalesce((select (mmr.importo_euro + mmr.importo_spese_euro) / mmr.quantita from mmr');
      query_val.sql.add('inner join mmt on mmt.progressivo = mmr.progressivo');
      query_val.sql.add('inner join tmo on tmo.codice = mmt.tmo_codice');
      query_val.sql.add('inner join tma on tma.codice = mmr.tma_codice');
      query_val.sql.add('where mmr.art_codice = art.codice');
      query_val.sql.add('and mmt.data_registrazione <= :alla_data');
      query_val.sql.add('and tma.proprieta = ''si''');
      query_val.sql.add('and tmo.ultimi_valori = ''carico''');
      query_val.sql.add('and mmr.importo_euro <> 0');
      query_val.sql.add('and mmr.quantita <> 0');
      query_val.sql.add('order by mmt.data_registrazione desc, mmt.progressivo desc limit 1), 0), 6)');
    end;
    query_val.sql.add('prezzo_carico_storico, lsa.prezzo valore_costo_standard');

    query_val.sql.add('from art');

    query_val.sql.add('left join lsa on lsa.art_codice = art.codice and');
    query_val.sql.add('lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and');
    query_val.sql.add(':alla_data between lsa.data_inizio and lsa.data_fine');

    query_val.sql.add('where art.codice = :art_codice');
  end;

  screen.cursor := cursore;

  query.close;
  query.connection := arc.arcdit;
  query.sql.clear;

  query.close;
  query.sql.clear;
  query.sql.add('insert into arc_ordinamento.stainv(utn_codice,');
  query.sql.add('art_codice, art_codice_alternativo, art_tum_codice, tma_codice, tma_descrizione,');
  query.sql.add('art_descrizione1, art_descrizione2, tin_codice, tin_descrizione, tub_codice,');
  query.sql.add('tmr_codice, tmr_descrizione, tipo_inventario, codice_raggruppamento, descrizione_raggruppamento,');
  query.sql.add('codice_ordinamento, prezzo,');
  query.sql.add('quantita_apertura, quantita_apertura_tma, quantita)');

  query.sql.add('select utn_codice,');
  query.sql.add('a.art_codice,');
  query.sql.add('a.art_codice_alternativo, a.art_tum_codice, a.tma_codice, a.tma_descrizione,');
  query.sql.add('a.art_descrizione1, a.art_descrizione2, a.tin_codice, a.tin_descrizione, a.tub_codice,');
  query.sql.add('a.tmr_codice, a.tmr_descrizione,');

  if v_solo_quantita.checked then
  begin
    query.sql.add('0 tipo_inventario,');
  end
  else
  begin
    query.sql.add('case');
    query.sql.add('when a.art_descrizione2 = ''prezzo medio'' then 1');
    query.sql.add('when a.art_descrizione2 = ''l.i.f.o.'' then 2');
    query.sql.add('when a.art_descrizione2 = ''l.i.f.o. ultimo mese'' then 3');
    query.sql.add('when a.art_descrizione2 = ''costo standard'' then 4');
    query.sql.add('when a.art_descrizione2 = ''ultimo costo'' then 5');
    query.sql.add('when a.art_descrizione2 = ''f.i.f.o.'' then 6');
    query.sql.add('when a.art_descrizione2 = ''f.i.f.o. a scatti'' then 7');
    query.sql.add('when a.art_descrizione2 = ''prezzo medio anno'' then 8');
    query.sql.add('when a.art_descrizione2 = ''prezzo medio mensile'' then 9');
    query.sql.add('end tipo_inventario,');
  end;

  query.sql.add('a.codice_raggruppamento, a.descrizione_raggruppamento, a.codice_ordinamento, a.prezzo,');
  query.sql.add('sum(a.quantita_apertura), sum(a.quantita_apertura_tma), sum(a.quantita)');

  query.sql.add('from arc_ordinamento.stainv_utente a');
  query.sql.add('group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');

  if v_controllo_esistenza.itemindex = 0 then
  begin
    query.sql.add('having sum(a.quantita) > 0');
  end
  else if v_controllo_esistenza.itemindex = 1 then
  begin
    query.sql.add('having sum(a.quantita) < 0');
  end
  else
  begin
    query.sql.add('having (sum(a.quantita) < 0 or sum(a.quantita) > 0)');
  end;

  if v_esistenza_zero.checked then
  begin
    query.sql.add('or sum(a.quantita) = 0');
  end;

  query.execsql;

  //  valorizzazione
  if not v_solo_quantita.checked then
  begin
    query_sor.close;
    query_sor.sql.clear;
    query_sor.sql.add('select stainv.*, t.tla_codice_costo_standard from stainv');
    query_sor.sql.add('inner join arc_' + ditta + '.tma t on t.codice = stainv.tma_codice');
    query_sor.sql.add('where utn_codice = :utente order by art_codice');
    query_sor.parambyname('utente').asstring := utente;
    query_sor.open;
    while not query_sor.eof do
    begin
      if test_art_codice <> query_sor.fieldbyname('art_codice').asstring then
      begin
        costo := assegna_costo(query_sor.fieldbyname('tipo_inventario').asinteger);
        test_art_codice := query_sor.fieldbyname('art_codice').asstring;
      end;

      sor_update.close;
      sor_update.parambyname('prezzo').asfloat := costo;
      sor_update.parambyname('quantita').asfloat := query_sor.fieldbyname('quantita').asfloat;
      sor_update.parambyname('id').asinteger := query_sor.fieldbyname('id').asinteger;
      sor_update.execsql;

      controllo_interrompi;

      query_sor.next;
    end;
  end;

  //  stampa nuova
  assegna_query_stampa;

  if pos('/*ORDER BY*/', query_stampa.sql.text) = 0 then
  begin
    ordinamento_query_stampa := 'order by t.codice_raggruppamento,t.codice_ordinamento,t.art_codice,t.tma_codice';
    query_stampa.sql.add(ordinamento_query_stampa);
  end;

  query_stampa_lifo.close;
  query_stampa_lifo.sql.text := assegna_subquery('STAINV', 'LIFO');
  query_stampa_lifo.sql.add('order by s.art_codice, s.esercizio');

  query_stampa_lifo.mastersource := query_stampa_ds;
  query_stampa_lifo.masterfields := 'art_codice';
  query_stampa_lifo.detailfields := 'art_codice';
  //  stampa nuova fine

  inherited;
end;

function TSTAINV.assegna_costo(tipo_valorizzazione: integer): double;
var
  tipo_inventario: string;
  prezzo_inventario: double;
  crea_storico: string;
begin
  result := 0;

  query_val.close;
  query_val.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
  query_val.parambyname('ese_codice').asstring := esercizio;
  try
    query_val.parambyname('data_inizio').asdate := data_inizio;
  except
  end;
  try
    query_val.parambyname('alla_data').asdate := v_alla_data.date;
  except
  end;
  try
    query_val.parambyname('ese_codice_precedente').asstring := esercizio_precedente;
  except
  end;

  query_val.open;

  if not query_val.isempty then
  begin
    if query_sor.fieldbyname('tipo_inventario').asinteger = 1 then
    begin
      if v_consolidamento.text = 'valore attuale' then
      begin
        try
          //query_sor.fieldbyname('prezzo').asfloat := arrotonda
          result := arrotonda
            ((query_val.fieldbyname('valore_entrate_val').asfloat + query_val.fieldbyname('valore_apertura').asfloat) /
            (query_val.fieldbyname('quantita_entrate_val').asfloat + query_val.fieldbyname('quantita_apertura').asfloat),
            decimali_max_prezzo_acq);
        except
          //query_sor.fieldbyname('prezzo').asfloat := 0;
          result := 0;
        end;
      end
      else
      begin
        try
          //query_sor.fieldbyname('prezzo').asfloat := arrotonda
          result := arrotonda
            ((query_val.fieldbyname('valore_entrate_val_storico').asfloat + query_val.fieldbyname('valore_apertura').asfloat) /
            (query_val.fieldbyname('quantita_entrate_val_storico').asfloat + query_val.fieldbyname('quantita_apertura').asfloat),
            decimali_max_prezzo_acq);
        except
          //query_sor.fieldbyname('prezzo').asfloat := 0;
          result := 0;
        end;
      end;
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 4 then
    begin
      //if query_sor.fieldbyname('prezzo').asfloat = 0 then
      if result = 0 then
      begin
        if query_val.fieldbyname('valore_costo_standard').asfloat <> 0 then
        begin
          result := query_val.fieldbyname('valore_costo_standard').asfloat;
        end
        else
        begin
          lsa.close;
          lsa.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
          if query_sor.fieldbyname('tla_codice_costo_standard').asstring <> '' then
          begin
            lsa.parambyname('tla_codice').asstring := query_sor.fieldbyname('tla_codice_costo_standard').asstring;
          end
          else
          begin
            lsa.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
          end;
          lsa.parambyname('data').asdate := v_alla_data.date;
          lsa.open;
          if not lsa.eof then
          begin
            //query_sor.fieldbyname('prezzo').asfloat := lsa.fieldbyname('prezzo').asfloat;
            result := lsa.fieldbyname('prezzo').asfloat;
          end;
        end;
      end;
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 5 then
    begin
      if v_consolidamento.text = 'valore attuale' then
      begin
        //query_sor.fieldbyname('prezzo').asfloat := query_val.fieldbyname('prezzo_carico').asfloat;
        result := query_val.fieldbyname('prezzo_carico').asfloat;
      end
      else
      begin
        //query_sor.fieldbyname('prezzo').asfloat := query_val.fieldbyname('prezzo_carico_storico').asfloat;
        result := query_val.fieldbyname('prezzo_carico_storico').asfloat;
      end;
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 8 then
    begin
      if v_consolidamento.text = 'valore attuale' then
      begin
        try
          //query_sor.fieldbyname('prezzo').asfloat := arrotonda
          result := arrotonda
            (query_val.fieldbyname('valore_entrate_val').asfloat / query_val.fieldbyname('quantita_entrate_val').asfloat, decimali_max_prezzo_acq);
        except
          //query_sor.fieldbyname('prezzo').asfloat := 0;
          result := 0;
        end;
      end
      else
      begin
        try
          //query_sor.fieldbyname('prezzo').asfloat := arrotonda
          result := arrotonda
            (query_val.fieldbyname('valore_entrate_val_storico').asfloat / query_val.fieldbyname('quantita_entrate_val_storico').asfloat, decimali_max_prezzo_acq);
        except
          //query_sor.fieldbyname('prezzo').asfloat := 0;
          result := 0;
        end;
      end;
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 9 then
    begin
      result := przinv.prezzo_medio_mensile(query_sor.fieldbyname('art_codice').asstring, v_alla_data.date);
    end
    else
    begin
      //  lifo - lifo ultimo mese - fifo - fifo a scatti

      //  calcolo esistenza globale dell'articolo da utilizzare per gli scaglioni lifo e fifo
      quantita_totale.close;
      quantita_totale.connection := arc.arcdit;
      quantita_totale.sql.clear;

      if (selezione_tma_codice = 'incluso in') and (da_tma_codice = '') and (a_tma_codice = 'zzzz') then
      begin
        quantita_totale.sql.add('select sum(quantita) quantita from arc_ordinamento.stainv s');
        quantita_totale.sql.add('where s.art_codice = :art_codice and s.utn_codice = :utn_codice');

        quantita_totale.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
        quantita_totale.parambyname('utn_codice').asstring := utente;
      end
      else
      begin
        if v_elabora_mag.checked then
        begin
          quantita_totale.sql.add('select sum(');

          quantita_totale.sql.add('coalesce((select sum(magese.esistenza + magese.quantita_chiusura)');
          quantita_totale.sql.add('from magese');
          quantita_totale.sql.add('inner join tma on tma.codice = magese.tma_codice');
          quantita_totale.sql.add('where magese.ese_codice = :ese_codice and tma.proprieta = ''si''');
          quantita_totale.sql.add('and magese.art_codice = art.codice), 0)');

          if esercizio_chiuso_magazzino_precedente = 'no' then
          begin
            quantita_totale.sql.add('+');

            quantita_totale.sql.add('coalesce((select sum(magese.esistenza + magese.quantita_chiusura)');
            quantita_totale.sql.add('from magese');
            quantita_totale.sql.add('inner join tma on tma.codice = magese.tma_codice');
            quantita_totale.sql.add('where magese.ese_codice = :ese_codice_precedente and tma.proprieta = ''si''');
            quantita_totale.sql.add('and magese.art_codice = art.codice), 0)');

            quantita_totale.parambyname('ese_codice_precedente').asstring := esercizio_precedente;
          end;

          quantita_totale.sql.add(')');
        end
        else
        begin
          quantita_totale.sql.text := 'select ' +
            'coalesce((select sum(mmr.quantita_entrate - mmr.quantita_uscite) ' +
            'from mmr ' +
            'inner join mmt on mmt.progressivo = mmr.progressivo ' +
            'inner join tmo on tmo.codice = mmt.tmo_codice ' +
            'inner join tma on tma.codice = mmr.tma_codice ' +
            'where mmt.ese_codice = :ese_codice and mmr.art_codice = art.codice ' +
            'and ((mmt.data_registrazione between :data_inizio and :alla_data) ' +
            'or (tmo.tipo_movimento = ''apertura inventario'')) ' +
            'and tma.proprieta = ''si'' ' +
            'and tmo.tipo_movimento <> ''chiusura inventario''), 0 )';

          //  esercizio precedente
          if esercizio_chiuso_magazzino_precedente = 'no' then
          begin
            quantita_totale.sql.add('+ f_esistenza(art.codice, '''', @ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente)');
          end;

          quantita_totale.parambyname('data_inizio').asdate := data_inizio;
          quantita_totale.parambyname('alla_data').asdate := v_alla_data.date;
        end;

        quantita_totale.sql.add('quantita');

        quantita_totale.sql.add('from art where art.codice = :art_codice');
      end;

      quantita_totale.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
      try
        quantita_totale.parambyname('ese_codice').asstring := esercizio;
      except
      end;
      quantita_totale.open;

      crea_storico := 'no';
      if query_sor.fieldbyname('tipo_inventario').asinteger = 2 then
      begin
        tipo_inventario := 'l.i.f.o.';
        if v_storico_lifo.checked then
        begin
          crea_storico := 'si';
        end;
      end
      else if query_sor.fieldbyname('tipo_inventario').asinteger = 3 then
      begin
        tipo_inventario := 'l.i.f.o. ultimo mese';
        if v_storico_lifo.checked then
        begin
          crea_storico := 'si';
        end;
      end
      else if query_sor.fieldbyname('tipo_inventario').asinteger = 6 then
      begin
        tipo_inventario := 'f.i.f.o.';
      end
      else if query_sor.fieldbyname('tipo_inventario').asinteger = 7 then
      begin
        tipo_inventario := 'f.i.f.o. a scatti';
      end
      else if query_sor.fieldbyname('tipo_inventario').asinteger = 8 then
      begin
        tipo_inventario := 'prezzo medio anno';
      end
      else if query_sor.fieldbyname('tipo_inventario').asinteger = 9 then
      begin
        tipo_inventario := 'prezzo medio mensile';
      end;

      if (v_consolidamento.itemindex = 0) and (v_alla_data.date <> data_bilancio) then
      begin
        przinv.przinv(query_sor.fieldbyname('art_codice').asstring, query_sor.fieldbyname('tma_codice').asstring, tipo_inventario,
          esercizio, date, quantita_totale.fieldbyname('quantita').asfloat, prezzo_inventario, crea_storico);
      end
      else
      begin
        przinv.przinv(query_sor.fieldbyname('art_codice').asstring, query_sor.fieldbyname('tma_codice').asstring, tipo_inventario,
          esercizio, v_alla_data.date, quantita_totale.fieldbyname('quantita').asfloat, prezzo_inventario, crea_storico);
      end;
      result := prezzo_inventario;

      //query_sor.fieldbyname('prezzo').asfloat := prezzo_inventario;

    end;
  end;

  // 19.02.2020
  // se prezzo zero forco costo standar
  if result = 0 then
  begin
    lsa.close;
    lsa.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
    if query_sor.fieldbyname('tla_codice_costo_standard').asstring <> '' then
    begin
      lsa.parambyname('tla_codice').asstring := query_sor.fieldbyname('tla_codice_costo_standard').asstring;
    end
    else
    begin
      lsa.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
    end;
    lsa.parambyname('data').asdate := v_alla_data.date;
    lsa.open;
    if not lsa.eof then
    begin
      //query_sor.fieldbyname('prezzo').asfloat := lsa.fieldbyname('prezzo').asfloat;
      result := lsa.fieldbyname('prezzo').asfloat;
    end;
  end;
end;

procedure TSTAINV.v_confermaClick(Sender: TObject);
var
  prosegui: boolean;
  mmt, lif: tmyquery_go;
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

    if (arc.dit.fieldbyname('richiesta_filtri').asstring = 'si') or (tma_codice_passato <> '') then
    begin
      if not tma_eseguito then
      begin
        call_seltma;
      end;
      tma_eseguito := false;
    end;
  end;

  inherited;

  prosegui := true;
  if (esercizio_chiuso_magazzino_precedente <> 'si') and not v_solo_quantita.checked then
  begin
    if ((v_valorizzazione.itemindex = 0) and
      ((arc.dit.fieldbyname('tipo_inventario').asstring = 'l.i.f.o.') or
      (arc.dit.fieldbyname('tipo_inventario').asstring = 'l.i.f.o. ultimo mese') or
      (arc.dit.fieldbyname('tipo_inventario').asstring = 'f.i.f.o.') or
      (arc.dit.fieldbyname('tipo_inventario').asstring = 'f.i.f.o. a scatti'))) or

      (v_valorizzazione.itemindex = 2) or (v_valorizzazione.itemindex = 3) or
      (v_valorizzazione.itemindex = 6) or (v_valorizzazione.itemindex = 7) then
    begin
      mmt := tmyquery_go.create(nil);
      mmt.connection := arc.arcdit;
      mmt.sql.text := 'select id from mmt where ese_codice = ' + quotedstr(esercizio_precedente) + ' limit 1';
      mmt.open;

      lif := tmyquery_go.create(nil);
      lif.connection := arc.arcdit;
      lif.sql.text := 'select id from lif where ese_codice = ' + quotedstr(esercizio_precedente) + ' limit 1';
      lif.open;

      if not mmt.isempty and lif.isempty then
      begin
        if messaggio(304, 'per la valorizzazione l.i.f.o. e f.i.f.o. è necessario eseguire la creazione' + slinebreak +
          'dello storico l.i.f.o./f.i.f.o. dell''esercizio precedente [' + esercizio_precedente + ']' + slinebreak +
          'conferma per proseguire comunque l''elaborazione') <> 1 then
        begin
          prosegui := false;
        end;
      end;

      freeandnil(mmt);
      freeandnil(lif);
    end;
  end;

  if prosegui then
  begin
    esegue_stampa;
  end;
end;

procedure TSTAINV.esegue_stampa;
begin
  inherited;
end;

procedure TSTAINV.FormCreate(Sender: TObject);
begin
  przinv := tprzinv.create;

  inherited;

  tma_codice_lista := tstringlist.create;

  art_codice_lista := tstringlist.create;
  art_tmr_codice_lista := tstringlist.create;
  art_tcm_codice_lista := tstringlist.create;
  art_tgm_codice_lista := tstringlist.create;
  art_tsa_codice_lista := tstringlist.create;
  art_frn_codice_lista := tstringlist.create;
  art_tin_codice_lista := tstringlist.create;
  art_tub_codice_lista := tstringlist.create;

  interruzione_elaborazione := true;
end;

procedure TSTAINV.call_selart;
begin
  esegui_selart(selezione_art_codice, da_art_codice, a_art_codice,
    selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
    selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
    selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
    selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
    selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
    selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
    selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, art_codice_passato,
    selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
    selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista,
    tasto_escape_art, art_escludi_obsoleti, art_eseguito);
  if tasto_escape_art then
  begin
    close;
    abort;
  end;
end;

procedure TSTAINV.call_seltma;
begin
  esegui_seltma(selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_passato, tma_codice_lista, tasto_escape_tma, tma_eseguito);
  if tasto_escape_tma then
  begin
    close;
    abort;
  end;
end;

procedure TSTAINV.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TSTAINV.v_seltmaClick(Sender: TObject);
begin
  inherited;
  call_seltma;
end;

procedure TSTAINV.v_solo_quantitaClick(Sender: TObject);
begin
  inherited;
  if v_solo_quantita.checked then
  begin
    disabilita_campo(v_valorizzazione);
    disabilita_campo(v_consolidamento);
    disabilita_campo(v_storico_lifo);
  end
  else
  begin
    disabilita_campo(v_valorizzazione);
    disabilita_campo(v_consolidamento);
    disabilita_campo(v_storico_lifo);
  end;
end;

procedure TSTAINV.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  try
    pp_label_alla_data.text := v_alla_data.text;
  except
  end;
end;

procedure TSTAINV.pp_DBText2DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;

  query_stampa.recno := TppDrawCommand(aDrawCommand).Tag;
  esegui_programma('SCHART', query_stampa.fieldbyname('art_codice').asstring, true);
end;

procedure TSTAINV.pp_DBText2DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;

  TppDrawCommand(aDrawCommand).Tag := query_stampa.recno;
end;

procedure TSTAINV.ppReportBeforePrint(Sender: TObject);
begin
  inherited;
  try
    pp_dbtext6.displayformat := formato_display_quantita_zero;
  except
  end;
  try
    pp_dbcalc1.displayformat := formato_display_quantita_zero;
  except
  end;
  try
    pp_dbcalc4.displayformat := formato_display_quantita_zero;
  except
  end;
  try
    pp_dbtext7.displayformat := formato_display_prezzo_acq_zero;
  except
  end;

  if v_visualizza.down then
  begin
    try
      pp_dbtext2.font.color := clblue;
    except
    end;
  end;
end;

procedure TSTAINV.FormDestroy(Sender: TObject);
begin
  inherited;

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

  freeandnil(tma_codice_lista);
end;

initialization

registerclass(tSTAINV);

end.
