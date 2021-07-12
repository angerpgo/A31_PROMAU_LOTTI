unit GGEVAORDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGSTAMPA, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess,
  Menus, StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs,
  Mask, ToolWin, ppDevice, Grids, dbgrids, RzDBGrid, ppStrtch, ppSubRpt, ppMemo, ppRegion,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, RzButton, RzSpnEdt, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL,
  IdSASLAnonymous, IdExplicitTLSClientServerBase, IdSMTPBase, MemDS, VirtualTable, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go, RzEdit, ppParameter, DBAccess,
  ppDesignLayer;

type

  TEVAORDV = class(TSTAMPA)
    Label8: TRzlabel;
    v_dalla_data: TRzDateTimeEdit_go;
    Label2: TRzlabel;
    v_alla_data: TRzDateTimeEdit_go;
    pp_DBText15: TppDBText;
    pp_DBText16: TppDBText;
    pp_DBText17: TppDBText;
    pp_DBText1: TppDBText;
    pp_DBText2: TppDBText;
    pp_DBText4: TppDBText;
    pp_DBText3: TppDBText;
    pp_Shape4: TppShape;
    pp_DBCalc5: TppDBCalc;
    pp_Label9: TppLabel;
    pp_DBText7: TppDBText;
    v_evasione_totale_righe: TRzcheckbox;
    v_evasione_totale_ordini: TRzcheckbox;
    Label4: TRzlabel;
    v_tma_codice: TRzEdit_go;
    Label5: TRzlabel;
    v_tma_codice_mag: TRzEdit_go;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    pp_DBText5: TppDBText;
    pp_DBText8: TppDBText;
    pp_DBText9: TppDBText;
    pp_DBText10: TppDBText;
    pp_DBText11: TppDBText;
    pp_DBText6: TppDBText;
    pp_Label8: TppLabel;
    pp_Label12: TppLabel;
    pp_Label13: TppLabel;
    pp_Label14: TppLabel;
    pp_Label15: TppLabel;
    pp_Label16: TppLabel;
    pp_Label17: TppLabel;
    pp_Label18: TppLabel;
    pp_Line1: TppLine;
    pp_Line2: TppLine;
    pp_Line3: TppLine;
    pp_Line4: TppLine;
    pp_DBCalc1: TppDBCalc;
    pp_Line5: TppLine;
    v_approntato: TRzcheckbox;
    pp_Region1: TppRegion;
    pp_Label21: TppLabel;
    pp_DBText12: TppDBText;
    v_lista_prelievo: TRzcheckbox;
    ppDBPipeline2: TppDBPipeline;
    prelievo: tmyquery_go;
    prelievo_ds: tmydatasource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    pp_SubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    Label7: TRzlabel;
    v_ordinamento: TRzCombobox_go;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    tma: tmyquery_go;
    tma_ds: tmydatasource;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    tma_mag: tmyquery_go;
    tma_mag_ds: tmydatasource;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    Label9: TRzlabel;
    Label3: TRzlabel;
    Label10: TRzlabel;
    Label6: TRzlabel;
    Label11: TRzlabel;
    Label12: TRzlabel;
    v_dal_numero_documento: TRzNumericEdit_go;
    v_dalla_serie_documento: TRzEdit_go;
    v_al_numero_documento: TRzNumericEdit_go;
    v_alla_serie_documento: TRzEdit_go;
    v_dalla_data_documento: TRzDateTimeEdit_go;
    v_alla_data_documento: TRzDateTimeEdit_go;
    pannello_bottoni: TRzPanel;
    v_selcli: TRzRapidFireButton;
    cancella_ordine: tmyquery_go;
    Label13: TRzlabel;
    v_tps_codice: TRzEdit_go;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    tps: tmyquery_go;
    tps_ds: tmydatasource;
    v_dettaglio_oar: TRzCheckBox;
    oar: TMyQuery_go;
    ppDBPipeline_oar: TppDBPipeline;
    ppSubReport_oar: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    pp_frn_codice: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    pp_quantita_oar: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppShape2: TppShape;
    v_stesso_deposito: TRzCheckBox;
    query_stampa_oar: TMyQuery_go;
    query_stampa_oar_ds: TMyDataSource;
    query_stampa_lista_prelievo: TMyQuery_go;
    query_stampa_lista_prelievo_ds: TMyDataSource;
    v_non_approntato: TRzCheckBox;
    procedure v_dalla_dataExit(Sender: TObject);
    procedure v_alla_dataEnter(Sender: TObject);
    procedure v_alla_dataExit(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
    procedure v_tma_codice_magExit(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure v_lista_prelievoClick(Sender: TObject);
    procedure pannello_parametriEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pp_DBText9DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pp_DBText9DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure v_al_numero_documentoEnter(Sender: TObject);
    procedure v_alla_serie_documentoEnter(Sender: TObject);
    procedure v_alla_data_documentoEnter(Sender: TObject);
    procedure v_al_numero_documentoExit(Sender: TObject);
    procedure v_alla_data_documentoExit(Sender: TObject);
    procedure v_selcliClick(Sender: TObject);
    procedure v_approntatoClick(Sender: TObject);
    procedure v_alla_serie_documentoExit(Sender: TObject);
    procedure v_tps_codiceExit(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure pp_frn_codiceDrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pp_frn_codiceDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure v_dettaglio_oarClick(Sender: TObject);
    procedure v_evasione_totale_righeClick(Sender: TObject);
    procedure v_evasione_totale_ordiniClick(Sender: TObject);
    procedure v_non_approntatoClick(Sender: TObject);

  protected
    { Protected declarations }
    tco_codice, gen_codice, periodicita: string;
    data_inizio_anno: tdatetime;
    vendite: double;
    test_progressivo: integer;

    //
    //  parametri selcli
    //
    selezione_cli_codice, da_cli_codice, a_cli_codice,
      selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice,
      selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione,
      selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice,
      selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice,
      selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice,
      selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice,
      selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice,
      selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice,
      selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice: string;
    cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista,
      cli_tag_codice_lista, cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista,
      cli_tcg_codice_lista: tstringlist;
    tasto_escape_cli, cli_escludi_obsoleti, cli_eseguito: boolean;
    //
    procedure call_selcli;
    //
    //  fine variabili selcli
    //
    procedure al_numero_documento_controllo;
    procedure alla_serie_documento_controllo;
    procedure alla_data_documento_controllo;
    procedure dalla_data_controllo;
    procedure alla_data_controllo;
    procedure tma_codice_controllo(blocco: boolean);
    procedure tma_codice_mag_controllo(blocco: boolean);
    procedure tps_codice_controllo(blocco: boolean);
    procedure test_evasione_saldo;
    procedure abilita_evasione;
    procedure abilita_ordinamento;
  public
    { Public declarations }
    cfg_tipo_passato, cfg_codice_passato: string;
    progressivo: double;

    procedure controllo_campi; override;
    procedure stampa; override;
    procedure esegue_stampa; override;
    procedure visualizza_stampa_elabora; override;
  end;

var
  EVAORDV: TEVAORDV;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE;

procedure TEVAORDV.stampa;
begin
  nome_tabella := 'evaordv';
  azzera_tabella(nome_tabella, sor);
  //sor.indexfieldnames := 'utn_codice;gruppo;data_consegna;data_documento;serie_documento;numero_documento;progressivo;riga';

  nome_tabella := 'evaordv_art';
  azzera_tabella(nome_tabella, sor1);
  sor1.indexfieldnames := 'utn_codice;art_codice';

  nome_tabella := 'evaordv_oar';
  azzera_tabella(nome_tabella, sor2);
  //sor2.indexfieldnames := 'utn_codice;progressivo;riga;art_codice;id';

  nome_tabella := 'evaordv_lista_prelievo';
  azzera_tabella(nome_tabella);

  controllo_interrompi;

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select art_codice, sum(esistenza) esistenza, sum(approntato) approntato');
  query_righe.sql.add('from mag');
  query_righe.sql.add('inner join tma on tma.codice = mag.tma_codice');
  query_righe.sql.add('where mag.art_codice = :art_codice and tma.proprieta = ''si''');
  if trim(v_tma_codice_mag.text) <> '' then
  begin
    query_righe.sql.add('and tma_codice = ' + quotedstr(v_tma_codice_mag.text));
  end;

  query.sql.clear;
  query.sql.add('select ovt.progressivo, ovr.riga, ovt.data_consegna, ovt.data_documento, ovr.id ovr_id,');

  query.sql.add('case when ovr.kit = ''mp'' then');
  query.sql.add('(select ovr_kit.art_codice from ovr ovr_kit');
  query.sql.add('where ovr_kit.progressivo = ovr.progressivo and ovr_kit.riga = ovr.riga_origine_kit)');
  query.sql.add('else '''' end kit,');

  query.sql.add('ovt.serie_documento, ovt.numero_documento, cli.codice cli_codice, cli.descrizione1 cli_descrizione1,');
  query.sql.add('cli.citta cli_citta, art.codice art_codice, ovr.descrizione1 art_descrizione1,');
  query.sql.add('ovt.indirizzo, ovt.descrizione1, ovt.descrizione2, ovt.via, ovt.citta, cli.note cli_note,');
  query.sql.add('ovr.note ovr_note, ovr.note_interne ovr_note_interne,');
  query.sql.add('ovr.descrizione2 art_descrizione2, art.tum_codice, ovr.quantita, ovr.importo_euro,');
  query.sql.add('(ovr.tum_quantita_base - ovr.tum_quantita_evasa_base) quantita_residua, ovr.data_consegna data_consegna_righe,');
  query.sql.add('ovr.tum_quantita_approntata_base quantita_approntata, tub.codice tub_codice, tub.descrizione tub_descrizione, ovt.note, ovt.riferimento,');
  query.sql.add('cli.tps_codice, tps.descrizione tps_descrizione, ovt.tpa_codice, tpa.descrizione tpa_descrizione');
  query.sql.add('from ovr');
  query.sql.add('inner join ovt on ovt.progressivo = ovr.progressivo');
  query.sql.add('inner join tdo on tdo.codice = ovt.tdo_codice');
  query.sql.add('inner join cli on cli.codice = ovt.cli_codice');
  query.sql.add('inner join tpa on tpa.codice = ovt.tpa_codice');
  query.sql.add('inner join art on art.codice = ovr.art_codice');
  query.sql.add('inner join tum on tum.codice = art.tum_codice');
  query.sql.add('inner join tub on tub.codice = art.tub_codice');
  query.sql.add('left join tps on tps.codice = cli.tps_codice');
  query.sql.add('where ovr.art_codice <> ''''');
  query.sql.add('and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')');
  query.sql.add('and ovr.tum_quantita_base - ovr.tum_quantita_evasa_base > 0');
  query.sql.add('and (ovt.accettato = ''si'' or tdo.richiesta_accettazione = ''no'')');
  query.sql.add('and ovr.kit <> ''pf''');

  if v_approntato.checked then
  begin
    query.sql.add('and ovr.tum_quantita_approntata_base <> 0');
  end;

  query.sql.add('and ovt.numero_documento between :dal_numero_documento and :al_numero_documento');
  query.sql.add('and ovt.serie_documento between :dalla_serie_documento and :alla_serie_documento');
  query.sql.add('and (ovt.data_documento between :dalla_data_documento and :alla_data_documento');
  if v_dalla_data_documento.date = 0 then
  begin
    query.sql.add('or ovt.data_documento is null)');
  end
  else
  begin
    query.sql.add(')');
  end;
  query.sql.add('and (ovr.data_consegna between :dalla_data and :alla_data');
  if v_dalla_data.date = 0 then
  begin
    query.sql.add('or ovr.data_consegna is null)');
  end
  else
  begin
    query.sql.add(')');
  end;
  if trim(v_tma_codice.text) <> '' then
  begin
    query.sql.add('and ovr.tma_codice = ' + quotedstr(v_tma_codice.text));
  end;
  if v_tps_codice.text <> '' then
  begin
    query.sql.add('and cli.tps_codice = ' + quotedstr(v_tps_codice.text));
  end;

  if v_non_approntato.checked then
  begin
    query.sql.add('and ovr.quantita_approntata <> ovr.quantita - ovr.quantita_evasa');
  end;

  limcli(cli_escludi_obsoleti, query, false, selezione_cli_codice, da_cli_codice, a_cli_codice,
    selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice,
    selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione,
    selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice,
    selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice,
    selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice,
    selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice,
    selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice,
    selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice,
    selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice,
    cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista,
    cli_tag_codice_lista, cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista);

  query.sql.add('order by ovt.progressivo');

  query.params[0].asfloat := v_dal_numero_documento.value;
  query.params[1].asfloat := v_al_numero_documento.value;
  query.params[2].asstring := v_dalla_serie_documento.text;
  query.params[3].asstring := v_alla_serie_documento.text;
  query.params[4].asdate := v_dalla_data_documento.date;
  query.params[5].asdate := v_alla_data_documento.date;
  query.params[6].asdate := v_dalla_data.date;
  query.params[7].asdate := v_alla_data.date;
  query.close;
  query.open;

  test_progressivo := 0;

  while not query.eof do
  begin
    if (test_progressivo <> 0) and (test_progressivo <> query.fieldbyname('progressivo').asinteger) then
    begin
      test_evasione_saldo;
    end;

    sor.append;

    sor.fieldbyname('data_consegna').asdatetime := query.fieldbyname('data_consegna').asdatetime;
    sor.fieldbyname('data_consegna_stampabile').asstring := query.fieldbyname('data_consegna').asstring;
    sor.fieldbyname('data_consegna_righe').asstring := query.fieldbyname('data_consegna_righe').asstring;
    sor.fieldbyname('data_documento').asdatetime := query.fieldbyname('data_documento').asdatetime;
    sor.fieldbyname('serie_documento').asstring := query.fieldbyname('serie_documento').asstring;
    sor.fieldbyname('numero_documento').asfloat := query.fieldbyname('numero_documento').asfloat;
    sor.fieldbyname('progressivo').asfloat := query.fieldbyname('progressivo').asfloat;
    sor.fieldbyname('cli_codice').asstring := query.fieldbyname('cli_codice').asstring;
    sor.fieldbyname('cli_descrizione1').asstring := query.fieldbyname('cli_descrizione1').asstring;
    sor.fieldbyname('cli_citta').asstring := query.fieldbyname('cli_citta').asstring;
    sor.fieldbyname('indirizzo').asstring := query.fieldbyname('indirizzo').asstring;
    sor.fieldbyname('descrizione1').asstring := query.fieldbyname('descrizione1').asstring;
    sor.fieldbyname('descrizione2').asstring := query.fieldbyname('descrizione2').asstring;
    sor.fieldbyname('via').asstring := query.fieldbyname('via').asstring;
    sor.fieldbyname('citta').asstring := query.fieldbyname('citta').asstring;
    sor.fieldbyname('cli_note').asstring := query.fieldbyname('cli_note').asstring;

    sor.fieldbyname('riga').asinteger := query.fieldbyname('riga').asinteger;
    sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    sor.fieldbyname('art_descrizione1').asstring := query.fieldbyname('art_descrizione1').asstring;
    sor.fieldbyname('art_descrizione2').asstring := query.fieldbyname('art_descrizione2').asstring;
    sor.fieldbyname('quantita').asfloat := query.fieldbyname('quantita_residua').asfloat;
    sor.fieldbyname('quantita_approntata').asfloat := query.fieldbyname('quantita_approntata').asfloat;
    sor.fieldbyname('quantita_evasa').asfloat := 0;
    sor.fieldbyname('tum_codice').asstring := query.fieldbyname('tum_codice').asstring;
    sor.fieldbyname('quantita_origine').asfloat := query.fieldbyname('quantita').asfloat;
    sor.fieldbyname('importo_origine').asfloat := query.fieldbyname('importo_euro').asfloat;
    sor.fieldbyname('gruppo').asstring := '0';
    sor.fieldbyname('tub_codice').asstring := query.fieldbyname('tub_codice').asstring;
    sor.fieldbyname('tub_descrizione').asstring := query.fieldbyname('tub_descrizione').asstring;
    sor.fieldbyname('note').asstring := query.fieldbyname('note').asstring;
    sor.fieldbyname('ovr_note').asstring := query.fieldbyname('ovr_note').asstring;
    sor.fieldbyname('ovr_note_interne').asstring := query.fieldbyname('ovr_note_interne').asstring;
    sor.fieldbyname('riferimento').asstring := query.fieldbyname('riferimento').asstring;
    sor.fieldbyname('kit').asstring := query.fieldbyname('kit').asstring;
    sor.fieldbyname('tps_codice').asstring := query.fieldbyname('tps_codice').asstring;
    sor.fieldbyname('tps_descrizione').asstring := query.fieldbyname('tps_descrizione').asstring;
    sor.fieldbyname('ovr_id').asinteger := query.fieldbyname('ovr_id').asinteger;

    sor.post;

    sor.edit;

    if not sor1.locate('utn_codice;art_codice', vararrayof([utente, sor.fieldbyname('art_codice').asstring]), []) then
    begin
      query_righe.close;
      query_righe.parambyname('art_codice').asstring := sor.fieldbyname('art_codice').asstring;
      query_righe.open;

      sor1.append;

      sor1.fieldbyname('art_codice').asstring := query_righe.fieldbyname('art_codice').asstring;
      sor1.fieldbyname('esistenza').asfloat := query_righe.fieldbyname('esistenza').asfloat;
      if sor1.fieldbyname('esistenza').asfloat < 0 then
      begin
        sor1.fieldbyname('esistenza').asfloat := 0;
      end;
      sor1.fieldbyname('approntato').asfloat := query_righe.fieldbyname('approntato').asfloat;

      sor1.fieldbyname('utn_codice').asstring := utente;
      sor1.post;
    end;
    sor1.edit;

    if v_evasione_totale_righe.checked then
    begin
      if (sor.fieldbyname('quantita').asfloat - sor.fieldbyname('quantita_approntata').asfloat) <=
        (sor1.fieldbyname('esistenza').asfloat - sor1.fieldbyname('approntato').asfloat) then
      begin
        sor.fieldbyname('quantita_evasa').asfloat := (sor.fieldbyname('quantita').asfloat - sor.fieldbyname('quantita_approntata').asfloat);
        sor1.fieldbyname('esistenza').asfloat := arrotonda
          (sor1.fieldbyname('esistenza').asfloat - sor.fieldbyname('quantita_evasa').asfloat, 4);
      end;
    end
    else
    begin
      if (sor.fieldbyname('quantita').asfloat - sor.fieldbyname('quantita_approntata').asfloat) <=
        (sor1.fieldbyname('esistenza').asfloat - sor1.fieldbyname('approntato').asfloat) then
      begin
        sor.fieldbyname('quantita_evasa').asfloat := (sor.fieldbyname('quantita').asfloat - sor.fieldbyname('quantita_approntata').asfloat);
        sor1.fieldbyname('esistenza').asfloat := arrotonda
          (sor1.fieldbyname('esistenza').asfloat - sor.fieldbyname('quantita_evasa').asfloat, 4);
      end
      else
      begin
        sor.fieldbyname('quantita_evasa').asfloat := (sor1.fieldbyname('esistenza').asfloat - sor1.fieldbyname('approntato').asfloat);
        sor1.fieldbyname('esistenza').asfloat := sor1.fieldbyname('approntato').asfloat;
      end;
    end;

    sor1.fieldbyname('utn_codice').asstring := utente;
    sor1.post;

    sor.fieldbyname('importo_evaso').asfloat := arrotonda
      ((sor.fieldbyname('quantita_evasa').asfloat + sor.fieldbyname('quantita_approntata').asfloat) *
      sor.fieldbyname('importo_origine').asfloat / sor.fieldbyname('quantita_origine').asfloat);

    sor.fieldbyname('utn_codice').asstring := utente;
    sor.post;

    test_progressivo := query.fieldbyname('progressivo').asinteger;

    controllo_interrompi;

    query.next;
  end;

  test_evasione_saldo;

  sor.close;
  sor.open;
  while not sor.eof do
  begin
    sor.edit;

    sor.fieldbyname('quantita_evasa').asfloat := arrotonda(sor.fieldbyname('quantita_evasa').asfloat +
      sor.fieldbyname('quantita_approntata').asfloat, 4);

    sor.fieldbyname('utn_codice').asstring := utente;
    sor.post;

    if v_dettaglio_oar.checked then
    begin
      if sor.fieldbyname('quantita').asfloat - sor.fieldbyname('quantita_evasa').asfloat > 0 then
      begin
        oar.close;
        oar.parambyname('art_codice').asstring := sor.fieldbyname('art_codice').asstring;
        oar.parambyname('quantita_fabbisogno').asfloat := sor.fieldbyname('quantita').asfloat - sor.fieldbyname('quantita_evasa').asfloat;
        oar.parambyname('ovr_progressivo').asinteger := sor.fieldbyname('progressivo').asinteger;
        oar.parambyname('ovr_riga').asinteger := sor.fieldbyname('riga').asinteger;
        if v_stesso_deposito.checked then
        begin
          oar.parambyname('stesso_deposito').asstring := 'si';
        end
        else
        begin
          oar.parambyname('stesso_deposito').asstring := 'no';
        end;
        oar.open;
        if not oar.isempty then
        begin
          while not oar.eof do
          begin
            sor2.append;
            sor2.fieldbyname('progressivo').asinteger := sor.fieldbyname('progressivo').asinteger;
            sor2.fieldbyname('riga').asinteger := sor.fieldbyname('riga').asinteger;
            sor2.fieldbyname('art_codice').asstring := sor.fieldbyname('art_codice').asstring;
            sor2.fieldbyname('data_consegna').value := oar.fieldbyname('data_consegna').value;
            sor2.fieldbyname('quantita').asfloat := oar.fieldbyname('quantita').asfloat;
            sor2.fieldbyname('frn_codice').asstring := oar.fieldbyname('frn_codice').asstring;
            sor2.fieldbyname('frn_descrizione').asstring := oar.fieldbyname('frn_descrizione').asstring;
            sor2.fieldbyname('data_documento').asdatetime := oar.fieldbyname('data_documento').asdatetime;
            sor2.fieldbyname('numero_documento').asfloat := oar.fieldbyname('numero_documento').asfloat;
            sor2.fieldbyname('serie_documento').asstring := oar.fieldbyname('serie_documento').asstring;
            sor2.fieldbyname('oar_id').asinteger := oar.fieldbyname('id').asinteger;
            sor2.post;

            oar.next;
          end;
        end;
      end;
    end;

    sor.next;
  end;

  prelievo.close;
  if (v_lista_prelievo.checked) and (sor.recordcount > 0) then
  begin
    prelievo.connection := arc.arcsor;
    prelievo.sql.clear;
    prelievo.sql.add('insert into arc_ordinamento.evaordv_lista_prelievo(utn_codice, data_documento, serie_documento, numero_documento,');
    prelievo.sql.add('cli_codice, cli_descrizione1, cli_citta, data_consegna_stampabile,');
    prelievo.sql.add('art_codice, art_descrizione1, art_descrizione2, progressivo, riga,');
    prelievo.sql.add('quantita, quantita_evasa, quantita_approntata, tub_codice, tub_descrizione, ovr_id)');

    prelievo.sql.add('select ' + quotedstr(utente) + ', data_documento, serie_documento, numero_documento,');
    prelievo.sql.add('cli_codice, cli_descrizione1, cli_citta, data_consegna_stampabile,');
    prelievo.sql.add('art_codice, art_descrizione1, art_descrizione2, progressivo, riga,');
    prelievo.sql.add('quantita, quantita_evasa, quantita_approntata, tub_codice, tub_descrizione, ovr_id');
    prelievo.sql.add('from ' + sor.tablename);
    prelievo.sql.add('where utn_codice = ' + quotedstr(utente));

    prelievo.execsql;
  end
  else
  begin
    try
      pp_subreport1.visible := false;
    except
    end;
  end;

  //  stampa nuova
  assegna_query_stampa;

  if pos('/*ORDER BY*/', query_stampa.sql.text) = 0 then
  begin
    ordinamento_query_stampa :=
      'order by t.gruppo,t.data_consegna,t.data_documento,t.serie_documento,t.numero_documento,t.progressivo,t.riga';

    query_stampa.sql.add(ordinamento_query_stampa);
  end;

  //  ordini fornitori
  query_stampa_oar.close;
  query_stampa_oar.sql.text := assegna_subquery('EVAORDV', 'ORDINI_FORNITORI');
  query_stampa_oar.sql.add('order by o.progressivo, o.riga, o.art_codice, o.id');

(*
  query_stampa_oar.mastersource := query_stampa_ds;
  query_stampa_oar.masterfields := 't.progressivo;t.riga;t.art_codice';
  query_stampa_oar.detailfields := 'o.progressivo;o.riga;o.art_codice';
*)

  //  lista prelievo
  query_stampa_lista_prelievo.close;
  query_stampa_lista_prelievo.sql.text := assegna_subquery('EVAORDV', 'LISTA_PRELIEVO');

  if pos('/*ORDER BY*/', query_stampa_lista_prelievo.sql.text) = 0 then
  begin
    if v_ordinamento.itemindex = 0 then
    begin
      query_stampa_lista_prelievo.sql.add('order by lp.tub_codice, lp.art_codice');
    end
    else if v_ordinamento.itemindex = 1 then
    begin
      query_stampa_lista_prelievo.sql.add('order by lp.art_codice');
    end
    else if v_ordinamento.itemindex = 2 then
    begin
      query_stampa_lista_prelievo.sql.add('order by lp.art_descrizione1, lp.art_codice');
    end;
  end;
  //  stampa nuova fine

  inherited;
end;

procedure TEVAORDV.test_evasione_saldo;
begin
  if v_evasione_totale_ordini.checked then
  begin
    query_iva.close;
    query_iva.parambyname('progressivo').asinteger := test_progressivo;
    query_iva.open;
    if not query_iva.isempty then
    begin
      cancella_ordine.close;
      cancella_ordine.parambyname('progressivo').asinteger := test_progressivo;
      cancella_ordine.execsql;
    end;
  end;
end;

procedure TEVAORDV.controllo_campi;
begin
  al_numero_documento_controllo;
  alla_serie_documento_controllo;
  alla_data_documento_controllo;
  dalla_data_controllo;
  alla_data_controllo;
  tma_codice_controllo(true);
  tma_codice_mag_controllo(true);
  tps_codice_controllo(true);
end;

procedure TEVAORDV.visualizza_stampa_elabora;
begin
  tma_codice_controllo(false);
  tma_codice_mag_controllo(false);
  tps_codice_controllo(false);
end;

procedure TEVAORDV.v_dalla_dataExit(Sender: TObject);
begin
  inherited;
  dalla_data_controllo;
end;

procedure TEVAORDV.v_dettaglio_oarClick(Sender: TObject);
begin
  inherited;

  if v_evasione_totale_righe.checked or v_evasione_totale_ordini.checked then
  begin
    v_dettaglio_oar.checked := false;
  end;
  if v_dettaglio_oar.checked then
  begin
    abilita_campo(v_stesso_deposito);
  end
  else
  begin
    disabilita_campo(v_stesso_deposito);
    v_stesso_deposito.checked := false;
  end;
end;

procedure TEVAORDV.v_evasione_totale_ordiniClick(Sender: TObject);
begin
  inherited;

  if v_evasione_totale_ordini.checked then
  begin
    v_dettaglio_oar.checked := false;
  end;
end;

procedure TEVAORDV.v_evasione_totale_righeClick(Sender: TObject);
begin
  inherited;

  if v_evasione_totale_righe.checked then
  begin
    v_dettaglio_oar.checked := false;
  end;
end;

procedure TEVAORDV.dalla_data_controllo;
begin
  if controllo then
  begin
    //
  end;
end;

procedure TEVAORDV.v_alla_dataEnter(Sender: TObject);
begin
  inherited;
  if v_alla_data.date = 0 then
  begin
    v_alla_data.date := v_dalla_data.date;
  end;
end;

procedure TEVAORDV.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  alla_data_controllo;
end;

procedure TEVAORDV.alla_data_controllo;
begin
  if controllo then
  begin
    if v_alla_data.date = 0 then
    begin
      v_alla_data.text := data_31_12_9999;
    end;
  end;
end;

procedure TEVAORDV.call_selcli;
begin
  esegui_selcli(selezione_cli_codice, da_cli_codice, a_cli_codice,
    selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice,
    selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione,
    selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice,
    selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice,
    selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice,
    selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice,
    selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice,
    selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice,
    selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice,
    cfg_codice_passato,
    cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista,
    cli_tag_codice_lista, cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista,
    cli_tcg_codice_lista, tasto_escape_cli, cli_escludi_obsoleti, cli_eseguito);
  if tasto_escape_cli then
  begin
    close;
    abort;
  end;
end;

procedure TEVAORDV.v_confermaClick(Sender: TObject);
begin
  if richiesta_filtri then
  begin
    if (arc.dit.fieldbyname('richiesta_filtri').asstring = 'si') or (cfg_codice_passato <> '') then
    begin
      if not cli_eseguito then
      begin
        call_selcli;
      end;
      cli_eseguito := false;
    end;
  end;

  esegue_stampa;
end;

procedure TEVAORDV.esegue_stampa;
begin
  inherited;
end;

procedure TEVAORDV.FormCreate(Sender: TObject);
begin
  inherited;

  cli_codice_lista := tstringlist.create;
  cli_tna_codice_lista := tstringlist.create;
  cli_tzo_codice_lista := tstringlist.create;
  cli_gen_codice_lista := tstringlist.create;
  cli_tag_codice_lista := tstringlist.create;
  cli_tcc_codice_lista := tstringlist.create;
  cli_tsc_codice_lista := tstringlist.create;
  cli_tar_codice_lista := tstringlist.create;
  cli_tcg_codice_lista := tstringlist.create;

  interruzione_elaborazione := true;
end;

procedure TEVAORDV.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TEVAORDV.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma, v_tma_codice, blocco, nil, nil, nil);
end;

procedure TEVAORDV.v_tma_codice_magExit(Sender: TObject);
begin
  inherited;
  tma_codice_mag_controllo(true);
end;

procedure TEVAORDV.v_tps_codiceExit(Sender: TObject);
begin
  inherited;
  tps_codice_controllo(true);
end;

procedure TEVAORDV.tps_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tps, v_tps_codice, blocco, nil, nil, nil);
end;

procedure TEVAORDV.tma_codice_mag_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma_mag, v_tma_codice_mag, blocco, nil, nil, nil);
end;

procedure TEVAORDV.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
  try
    if query_stampa.fieldbyname('art_descrizione2').asstring = '' then
    begin
      try
        pp_region1.visible := false;
      except
      end;
    end
    else
    begin
      try
        pp_region1.visible := true;
      except
      end;
    end;
  except
  end;
end;

procedure TEVAORDV.ppReportBeforePrint(Sender: TObject);
begin
  inherited;

  if v_visualizza.down then
  begin
    try
      pp_dbtext9.font.color := clblue;
    except
    end;
  end;

  if v_visualizza.down then
  begin
    try
      pp_frn_codice.font.color := clblue;
    except
    end;
  end;
end;

procedure TEVAORDV.v_lista_prelievoClick(Sender: TObject);
begin
  inherited;
  abilita_ordinamento;
end;

procedure TEVAORDV.v_non_approntatoClick(Sender: TObject);
begin
  inherited;

  if v_non_approntato.checked then
  begin
    disabilita_campo(v_approntato);
  end
  else
  begin
    abilita_campo(v_approntato);
  end;
end;

procedure TEVAORDV.v_selcliClick(Sender: TObject);
begin
  inherited;
  call_selcli;
end;

procedure TEVAORDV.abilita_ordinamento;
begin
  if v_lista_prelievo.checked then
  begin
    v_ordinamento.enabled := true;
  end
  else
  begin
    v_ordinamento.enabled := false;
  end;
end;

procedure TEVAORDV.pannello_parametriEnter(Sender: TObject);
begin
  inherited;
  abilita_ordinamento;
end;

procedure TEVAORDV.FormDestroy(Sender: TObject);
begin
  inherited;

  freeandnil(cli_codice_lista);
  freeandnil(cli_tna_codice_lista);
  freeandnil(cli_tzo_codice_lista);
  freeandnil(cli_gen_codice_lista);
  freeandnil(cli_tag_codice_lista);
  freeandnil(cli_tcc_codice_lista);
  freeandnil(cli_tsc_codice_lista);
  freeandnil(cli_tar_codice_lista);
  freeandnil(cli_tcg_codice_lista);
end;

procedure TEVAORDV.pp_DBText9DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;

  if query_stampa.locate('utn_codice;progressivo', vararrayof([utente, TppDrawCommand(aDrawCommand).Tag]), []) then
  begin
    esegui_programma('GESORDV', query_stampa.fieldbyname('progressivo').asinteger, true);
  end;
end;

procedure TEVAORDV.pp_DBText9DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;

  TppDrawCommand(aDrawCommand).Tag := query_stampa.fieldbyname('progressivo').asinteger;
end;

procedure TEVAORDV.pp_frn_codiceDrawCommandClick(Sender, aDrawCommand: TObject);
begin
  inherited;

  if read_tabella(arc.arcdit, 'oar', 'id', TppDrawCommand(aDrawCommand).Tag, 'progressivo, riga') then
  begin
    parametri_extra_programma_chiamato[29] := archivio.fieldbyname('riga').asinteger;
    esegui_programma('GESORDA', archivio.fieldbyname('progressivo').asinteger, true);
  end;
end;

procedure TEVAORDV.pp_frn_codiceDrawCommandCreate(Sender, aDrawCommand: TObject);
begin
  inherited;

  TppDrawCommand(aDrawCommand).Tag := query_stampa_oar.fieldbyname('oar_id').asinteger;
end;

procedure TEVAORDV.v_al_numero_documentoEnter(Sender: TObject);
begin
  inherited;
  if v_al_numero_documento.value = 0 then
  begin
    v_al_numero_documento.value := v_dal_numero_documento.value;
    v_al_numero_documento.selectall;
  end;
end;

procedure TEVAORDV.v_alla_serie_documentoEnter(Sender: TObject);
begin
  inherited;
  if trim(v_alla_serie_documento.text) = '' then
  begin
    v_alla_serie_documento.text := v_dalla_serie_documento.text;
    v_alla_serie_documento.selectall;
  end;
end;

procedure TEVAORDV.v_alla_serie_documentoExit(Sender: TObject);
begin
  inherited;
  alla_serie_documento_controllo;
end;

procedure TEVAORDV.alla_serie_documento_controllo;
begin
  if controllo then
  begin
    if v_alla_serie_documento.text = '' then
    begin
      v_alla_serie_documento.text := 'zzzz';
    end;
  end;
end;

procedure TEVAORDV.v_alla_data_documentoEnter(Sender: TObject);
begin
  inherited;
  if v_alla_data_documento.date = 0 then
  begin
    v_alla_data_documento.date := v_dalla_data_documento.date;
  end;
end;

procedure TEVAORDV.v_al_numero_documentoExit(Sender: TObject);
begin
  inherited;
  al_numero_documento_controllo;
end;

procedure TEVAORDV.v_approntatoClick(Sender: TObject);
begin
  inherited;
  abilita_evasione;
end;

procedure TEVAORDV.al_numero_documento_controllo;
begin
  if controllo then
  begin
    if v_al_numero_documento.value = 0 then
    begin
      v_al_numero_documento.value := 999999999;
    end;
  end;
end;

procedure TEVAORDV.v_alla_data_documentoExit(Sender: TObject);
begin
  inherited;
  alla_data_documento_controllo;
end;

procedure TEVAORDV.alla_data_documento_controllo;
begin
  if controllo then
  begin
    if v_alla_data_documento.date = 0 then
    begin
      v_alla_data_documento.text := data_31_12_9999;
    end;
  end;
end;

procedure TEVAORDV.abilita_evasione;
begin
  if v_approntato.checked then
  begin
    disabilita_campo(v_non_approntato);
    v_evasione_totale_righe.enabled := false;
    v_evasione_totale_ordini.enabled := false;

    v_evasione_totale_righe.checked := false;
    v_evasione_totale_ordini.checked := false;
  end
  else
  begin
    abilita_campo(v_non_approntato);
    v_evasione_totale_righe.enabled := true;
    v_evasione_totale_ordini.enabled := true;
  end;
end;

initialization

registerclass(tevaordv);

end.
