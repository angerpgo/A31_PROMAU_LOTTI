unit GGA31PRESAPROD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, raizeedit_go, RzLabel, Vcl.Buttons, RzSpnEdt, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox, cxCalc, cxGridExportLink, RzDBEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, XLSSheetData5, XLSReadWriteII5, ZZLIBRERIE_PROMAU;

type
  TA31PRESAPROD = class(TELABORA)
    Panel2: TRzPanel;
    v_selcli: TRzRapidFireButton;
    v_selart: TRzRapidFireButton;
    RzLabel1: TRzLabel;
    v_alla_data: trzdatetimeedit_go;
    v_grigliaDB: TcxGridDBTableView;
    v_grigliaLiv1: TcxGridLevel;
    v_griglia: TcxGrid;
    v_grigliaDBprogressivo: TcxGridDBColumn;
    v_grigliaDBcli_codice: TcxGridDBColumn;
    v_grigliaDBnom_descrizione1: TcxGridDBColumn;
    v_grigliaDBart_codice: TcxGridDBColumn;
    v_grigliaDBart_descrizione1: TcxGridDBColumn;
    v_grigliaDBart_descrizione2: TcxGridDBColumn;
    v_grigliaDBquantita: TcxGridDBColumn;
    v_grigliaDBdata_consegna: TcxGridDBColumn;
    v_grigliaDBovt_numero_documento: TcxGridDBColumn;
    v_grigliaDBovt_data_documento: TcxGridDBColumn;
    v_grigliaDBid_origine: TcxGridDBColumn;
    opt: TMyQuery_go;
    upd_opr: TMyQuery_go;
    ins_opc: TMyQuery_go;
    v_grigliaDBdoc_progressivo_origine: TcxGridDBColumn;
    v_grigliaDBriga_origine: TcxGridDBColumn;
    v_tipo_articolo: TComboBox;
    RzLabel2: TRzLabel;
    v_grigliaDBcodice_articolo_cliente: TcxGridDBColumn;
    tool_analisi: TToolButton;
    opr: TMyQuery_go;
    promau_mag: TMyQuery_go;
    query_sor: TMyQuery_go;
    mag: TMyQuery_go;
    promau_pianif: TMyQuery_go;
    Label14: TRzLabel;
    v_frn_codice: trzedit_go;
    RzDBEditDescrizione_go2: trzdbeditdescrizione_go;
    frn: TMyQuery_go;
    frn_ds: TMyDataSource;
    v_grigliaDBevadibile: TcxGridDBColumn;
    opc: TMyQuery_go;
    upd_opc: TMyQuery_go;
    promau_componenti: TMyQuery_go;
    query_comp_ds: TMyDataSource;
    query_comp: TMyQuery_go;
    ins_movfas: TMyQuery_go;
    v_grigliaDBnumero_produzione: TcxGridDBColumn;
    upd_opt: TMyQuery_go;
    v_griglia2: TcxGrid;
    v_griglia2DB: TcxGridDBTableView;
    v_griglia2Liv1: TcxGridLevel;
    v_griglia2DBprogressivo: TcxGridDBColumn;
    v_griglia2DBriga: TcxGridDBColumn;
    v_griglia2DBart_codice: TcxGridDBColumn;
    v_griglia2DBart_codice_componente: TcxGridDBColumn;
    v_griglia2DBart_descrizione1: TcxGridDBColumn;
    v_griglia2DBdata_consegna: TcxGridDBColumn;
    v_griglia2DBnr_col_01: TcxGridDBColumn;
    v_griglia2DBnr_col_02: TcxGridDBColumn;
    v_griglia2DBnr_col_03: TcxGridDBColumn;
    tool_esporta_xls: TToolButton;
    XLSWrite: TXLSReadWriteII5;
    tool_foglio_lav: TToolButton;
    query_righe: TMyQuery_go;
    v_con_fdl: TCheckBox;
    opt_old: TMyQuery_go;
    procedure v_alla_dataExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
    procedure v_selcliClick(Sender: TObject);
    procedure v_grigliaDBCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure EsportazionedatiinformatoExcel1Click(Sender: TObject);
    procedure v_grigliaDBDblClick(Sender: TObject);
    procedure tool_analisiClick(Sender: TObject);
    procedure v_frn_codiceExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_griglia2DBDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tool_esporta_xlsClick(Sender: TObject);
    procedure tool_foglio_lavClick(Sender: TObject);
  protected
    //
    //  parametri selart
    //
    selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice, selezione_art_frn_codice,
      da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice: string;
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista, art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista: tstringlist;
    tasto_escape_art, art_escludi_obsoleti, art_eseguito: boolean;
    //
    selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice, selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice, selezione_cli_tcc_codice,
      da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice: string;
    cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista, cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista: tstringlist;
    tasto_escape_cli, cli_escludi_obsoleti, cli_eseguito: boolean;

    utente_mag: string;

    procedure call_selart;
    procedure call_selcli;
    procedure frn_codice_controllo(blocco: boolean);
    procedure alla_data_controllo;
    procedure controllo_campi; override;

    procedure apri_query(evadibili: string);

    procedure analisi_evasione_ordini(utente_mag: string);
    function impegna_componenti(utente_mag, frn_codice: string; progressivo: integer; segno: double): boolean;
    procedure bottoni_setup(abilita: boolean);
    procedure cancella_analisi_ordini(utente_mag: string);
    procedure inizia_produzione_ordini_evadibili;
    procedure inizia_ciclo_produzione(progressivo: integer; quantita: double);
    procedure esporta_presa_prod_xls;
    procedure intesta_xls(var riga: integer);
    procedure scrivi_produzione(var riga: integer);
    procedure scrivi_componenti(var riga: integer);
    procedure genera_foglio_lavoro;
    procedure controlla_qta_materiale(progressivo, riga: integer; quantita_eccedenza: double);
  public
    { Public declarations }
    art_codice_passato, cfg_tipo_passato, cfg_codice_passato: string;

  end;

var
  A31PRESAPROD: TA31PRESAPROD;
  opc: TMyQuery_go;
  opr: TMyQuery_go;
  opt: TMyQuery_go;

implementation

{$r *.dfm}

uses DMARC, ZZLIBRERIE, GGIMPALF, GGA31GESFOGLAV;

procedure TA31PRESAPROD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  query.close;
  query.sql.clear;
  query.sql.add('update opt');
  query.sql.add('set id_origine=0');
  query.sql.add('where');
  query.sql.add('utente=:utente and');
  query.sql.add('id_origine >0');
  query.parambyname('utente').asstring := utente;
  query.execsql;

end;

procedure TA31PRESAPROD.FormCreate(Sender: TObject);
begin
  inherited;
  promau_inizializza_variabili;

  art_codice_lista := tstringlist.create;
  art_tmr_codice_lista := tstringlist.create;
  art_tcm_codice_lista := tstringlist.create;
  art_tgm_codice_lista := tstringlist.create;
  art_tsa_codice_lista := tstringlist.create;
  art_frn_codice_lista := tstringlist.create;
  art_tin_codice_lista := tstringlist.create;
  art_tub_codice_lista := tstringlist.create;

  cli_codice_lista := tstringlist.create;
  cli_tna_codice_lista := tstringlist.create;
  cli_tzo_codice_lista := tstringlist.create;
  cli_gen_codice_lista := tstringlist.create;
  cli_tag_codice_lista := tstringlist.create;
  cli_tcc_codice_lista := tstringlist.create;
  cli_tsc_codice_lista := tstringlist.create;
  cli_tar_codice_lista := tstringlist.create;
  cli_tcg_codice_lista := tstringlist.create;

end;

procedure TA31PRESAPROD.FormDestroy(Sender: TObject);
begin
  inherited;

  freeandnil(art_codice_lista);
  freeandnil(art_codice_lista);
  freeandnil(art_tmr_codice_lista);
  freeandnil(art_tcm_codice_lista);
  freeandnil(art_tgm_codice_lista);
  freeandnil(art_tsa_codice_lista);
  freeandnil(art_frn_codice_lista);
  freeandnil(art_tin_codice_lista);
  freeandnil(art_tub_codice_lista);

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

procedure TA31PRESAPROD.FormShow(Sender: TObject);
begin
  inherited;
  utente_mag := utente + '_';
  cancella_analisi_ordini(utente_mag);
end;

procedure TA31PRESAPROD.tool_analisiClick(Sender: TObject);
begin
  inherited;
  screen.cursor := crhourglass;
  bottoni_setup(false);

  analisi_evasione_ordini(utente_mag);

  bottoni_setup(true);
  screen.cursor := crdefault;
end;

procedure TA31PRESAPROD.tool_esporta_xlsClick(Sender: TObject);
begin
  inherited;
  esporta_presa_prod_xls;
end;

procedure TA31PRESAPROD.tool_foglio_lavClick(Sender: TObject);
begin
  inherited;
  genera_foglio_lavoro;
end;

procedure TA31PRESAPROD.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  alla_data_controllo;

end;

procedure TA31PRESAPROD.alla_data_controllo;
begin
  if v_alla_data.date = 0 then
  begin
    v_alla_data.text := data_31_12_9999;
  end;
end;

procedure TA31PRESAPROD.controllo_campi;
begin
  alla_data_controllo;
end;

procedure TA31PRESAPROD.v_confermaClick(Sender: TObject);
begin
  controllo_campi;

  apri_query('');

  tab_pagina2_abilitata := true;
  inherited;

  bottoni_setup(true);

  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
  end;

end;

procedure TA31PRESAPROD.apri_query(evadibili: string);
begin

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('opt.progressivo, ');
  query.sql.add('opt.documento_origine, ');
  query.sql.add('opt.doc_progressivo_origine, ');
  query.sql.add('opt.doc_riga_origine,  ');
  query.sql.add('case when opt.documento_origine= ''ordine ven'' then ovt.numero_documento  ');
  query.sql.add('     when opt.documento_origine= ''ordine produzione'' then opt.numero_documento  ');
  query.sql.add('	  end ovt_numero_documento,  ');
  query.sql.add('case when opt.documento_origine= ''ordine ven'' then ovt.data_documento  ');
  query.sql.add('     when opt.documento_origine= ''ordine produzione'' then opt.data_documento  ');
  query.sql.add('	  end ovt_data_documento,  ');
  query.sql.add('opt.a31cli_codice cli_codice, nom.descrizione1 nom_descrizione1,  ');
  query.sql.add('opt.art_codice, art.descrizione1 art_descrizione1, art.descrizione2 art_descrizione2,  ');
  query.sql.add('coalesce(arcl.codice_articolo_cliente,'''') codice_articolo_cliente ,');
  query.sql.add('arcl.a31art_esponente,');
  query.sql.add('(opt.quantita-opt.quantita_evasa) quantita,');
  query.sql.add('opt.data_consegna, opt.id_origine, opt.tma_codice_materie_prime, ');
  query.sql.add('coalesce(pia.disp_col_00 ,'''') evadibile, ');
  query.sql.add('(select opc.fas_codice from opc where opc.progressivo=opt.progressivo and opc.sequenza=0 and opc.fas_codice=' + quotedstr(promau_fas_codice) + ' and opc.situazione=''completata'' ) opc_start,');
  query.sql.add('(select opc.fas_codice from opc where opc.progressivo=opt.progressivo and opc.sequenza>0  and opc.situazione=''inserita'' limit 1) opc_inserita, ');
  query.sql.add('(select opc.fas_codice from opc where opc.progressivo=opt.progressivo and opc.sequenza>0  and opc.situazione=''iniziata'' limit 1) opc_iniziata ');
  query.sql.add('from opt  ');
  query.sql.add('left join ovt on ovt.progressivo=opt.doc_progressivo_origine  ');
  query.sql.add('left join ovr on ovr.progressivo=opt.doc_progressivo_origine and ovr.riga=opt.doc_riga_origine  ');
  query.sql.add('left join cli on cli.codice=ovt.cli_codice  ');
  query.sql.add('left join art on art.codice=opt.art_codice  ');
  query.sql.add('left join arcl on arcl.cli_codice=opt.a31cli_codice and arcl.art_codice=opt.art_codice_finito ');
  query.sql.add('left join nom on nom.codice=opt.a31cli_codice  ');
  query.sql.add('left join arc_ordinamento.promau_pianif pia on pia.utn_codice=:utn_codice and pia.progressivo=opt.progressivo ');
    query.sql.add('where 1=1 ');
  (*
    if not art_eseguito then
    begin
    call_selart;
    end;
    art_eseguito := false;

    if not cli_eseguito then
    begin
    call_selcli;
    end;
    cli_eseguito := false;
  *)

  limart(art_escludi_obsoleti, query, true, selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice,
    a_art_tsa_codice, selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice, art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

  limcli(cli_escludi_obsoleti, query, false, selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice, selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice,
    a_cli_tag_codice, selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
    cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista);

  if not v_con_fdl.checked then
  begin
    query.sql.add('and (opt.a31foglav_progressivo =0 ) ');
  end;

  query.sql.add('and ( opt.situazione in ( ''inserito'',''evaso parziale'') )');

  if v_tipo_articolo.itemindex = 1 then
  begin
    query.sql.add('and ( opt.art_codice_semilavorato ='''' ) ');
  end
  else if v_tipo_articolo.itemindex = 2 then
  begin
    query.sql.add('and ( opt.art_codice_semilavorato <>'''' ) ');
  end;

  query.sql.add('and ( opt.frn_codice=:frn_codice ) ');
  query.sql.add('and ( opt.data_consegna <=:data_consegna )  ');

  if evadibili <> '' then
  begin
    query.sql.add('and ( pia.disp_col_00=:evadibili)');
    query.parambyname('evadibili').asstring := evadibili;
  end;

  tool_analisi.enabled := true;

  query.sql.add('order by opt.data_consegna, ovt.cli_codice, opt.progressivo ');

  query.parambyname('utn_codice').asstring := utente + '_';
  query.parambyname('frn_codice').asstring := '';
  query.parambyname('data_consegna').asdatetime := v_alla_data.date;
  query.sql.savetofile('c:\temp\a31presaprod.sql');
  query.open;

end;

procedure TA31PRESAPROD.v_frn_codiceExit(Sender: TObject);
begin
  inherited;
  frn_codice_controllo(true);
end;

procedure TA31PRESAPROD.frn_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, frn, v_frn_codice, blocco, nil, nil, nil);
end;

procedure TA31PRESAPROD.v_griglia2DBDblClick(Sender: TObject);
begin
  inherited;
  esegui_programma('CRUART', v_griglia2DB.DataController.datasource.DataSet.fieldbyname('art_codice').asstring, true);
end;

procedure TA31PRESAPROD.v_grigliaDBCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, 12] = 1 then
  begin
    ACanvas.brush.color := clYellow;
    ACanvas.Font.color := clBlack;
    ACanvas.Font.style := [fsbold];
  end
  else
  begin
    ACanvas.Font.color := clBlack;
    ACanvas.Font.style := [fsbold];

    ACanvas.brush.color := clWebLime;
  end;

end;

procedure TA31PRESAPROD.v_grigliaDBDblClick(Sender: TObject);
begin
  inherited;
  esegui_programma('GESORDP', v_grigliaDB.DataController.DataSource.dataset.fieldbyname('progressivo').asinteger, true);
end;

procedure TA31PRESAPROD.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TA31PRESAPROD.v_selcliClick(Sender: TObject);
begin
  inherited;
  call_selcli;
end;

procedure TA31PRESAPROD.call_selart;
begin
  esegui_selart(selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
    selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, art_codice_passato, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice, art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista, tasto_escape_art, art_escludi_obsoleti, art_eseguito);
  if tasto_escape_art then
  begin
    close;
    abort;
  end;
end;

procedure TA31PRESAPROD.call_selcli;
begin
  esegui_selcli(selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice, selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice,
    selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cfg_codice_passato, cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
    cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista, tasto_escape_cli, cli_escludi_obsoleti, cli_eseguito);

  if tasto_escape_cli then
  begin
    close;
    abort;
  end;

end;

procedure TA31PRESAPROD.EsportazionedatiinformatoExcel1Click(Sender: TObject);
begin
  inherited;
  forcedirectories('..\esporta');
  ExportGridToExcel('..\esporta\promau_presa_prod.xls', v_griglia, true, true, true, 'xls');

  esegui_effettivo('..\esporta\promau_presa_prod.xls', 'open');
end;

procedure TA31PRESAPROD.analisi_evasione_ordini(utente_mag: string);
var
  flag_storno: boolean;
begin

  cancella_analisi_ordini(utente_mag);

  ins_movfas.close;
  ins_movfas.sql.clear;
  ins_movfas.sql.add('insert into movfas( id_opc, tipo_operazione, quantita )');
  ins_movfas.sql.add('values ( :id_opc, :tipo_operazione, :quantita )');

  opt.sql.clear;
  opt.sql.add('select');
  opt.sql.add('opt.progressivo, opt.numero_documento numero_produzione, ovt.cli_codice, nom.descrizione1 nom_descrizione1, opt.frn_codice,');
  opt.sql.add('ovt.numero_documento ovt_numero_documento, ovt.data_documento ovt_data_documento,');
  opt.sql.add('opt.art_codice, ovr.descrizione1 ovr_descrizione1, ovr.descrizione2 ovr_descrizione2,');
  opt.sql.add('opt.quantita-opt.quantita_evasa quantita, opt.data_consegna, opt.id_origine, opt.tma_codice_materie_prime, opt.tma_codice_finiti');
  opt.sql.add('from opt');
  opt.sql.add('left join ovt on ovt.progressivo=opt.doc_progressivo_origine');
  opt.sql.add('left join ovr on ovr.progressivo=opt.doc_progressivo_origine and ovr.riga=opt.doc_riga_origine');
  opt.sql.add('left join art on art.codice=opt.art_codice');
  opt.sql.add('left join nom on nom.codice=ovt.cli_codice');
  opt.sql.add('where');
  opt.sql.add('opt.progressivo=:progressivo');

  v_grigliaDB.DataController.DataSource.DataSet.first;
  while not v_grigliaDB.DataController.DataSource.DataSet.eof do
  begin
    controllo_interrompi;
    flag_storno := impegna_componenti(utente_mag, v_frn_codice.text, v_grigliaDB.DataController.DataSource.DataSet.fieldbyname('progressivo').asinteger, 1);

    promau_pianif.close;
    promau_pianif.parambyname('progressivo').asinteger := v_grigliaDB.DataController.DataSource.DataSet.fieldbyname('progressivo').asinteger;
    promau_pianif.open;
    if promau_pianif.eof then
    begin
      promau_pianif.append;
      promau_pianif.fieldbyname('utn_codice').asstring := utente_mag;
      promau_pianif.fieldbyname('progressivo').asinteger := v_grigliaDB.DataController.DataSource.DataSet.fieldbyname('progressivo').asinteger;
      promau_pianif.post;
    end;
    promau_pianif.edit;
    if flag_storno then
    begin
      promau_pianif.fieldbyname('disp_col_00').asstring := 'no';
      impegna_componenti(utente_mag, v_frn_codice.text, v_grigliaDB.DataController.DataSource.DataSet.fieldbyname('progressivo').asinteger, -1);
    end
    else
    begin
      promau_pianif.fieldbyname('disp_col_00').asstring := 'si';
    end;
    promau_pianif.post;

    v_grigliaDB.DataController.DataSource.DataSet.next;
  end; // while

  apri_query('');

  query_comp.close;
  query_comp.sql.clear;
  query_comp.sql.add('select *');
  query_comp.sql.add('from promau_componenti');
  query_comp.sql.add('where');
  query_comp.sql.add('utn_codice=:utn_codice');
  query_comp.MasterSource := query_ds;
  query_comp.MasterFields := 'progressivo';
  query_comp.DetailFields := 'progressivo';
  query_comp.parambyname('utn_codice').asstring := utente_mag;
  query_comp.open;

end;

function TA31PRESAPROD.impegna_componenti(utente_mag, frn_codice: string; progressivo: integer; segno: double): boolean;
begin
  result := false;

  if segno > 0 then
  begin
    query_sor.close;
    query_sor.sql.clear;
    query_sor.sql.add('insert into promau_componenti( utn_codice, progressivo, riga, art_codice, art_descrizione1, nr_col_00 )');
    query_sor.sql.add('select ' + quotedstr(utente_mag) + ',opr.progressivo, opr.riga, opr.art_codice, art.descrizione1, opr.quantita ');
    query_sor.sql.add('from arc_' + ditta + '.opr');
    query_sor.sql.add('inner join arc_' + ditta + '.art on art.codice=opr.art_codice');
    query_sor.sql.add('where');
    query_sor.sql.add('progressivo=:progressivo');
    query_sor.sql.add('order by progressivo,riga');
    query_sor.parambyname('progressivo').asinteger := progressivo;
    query_sor.execsql;
  end;

  opr.close;
  opr.parambyname('progressivo').asinteger := progressivo;
  opr.open;
  while not opr.eof do
  begin
    mag.close;
    mag.sql.clear;
    if frn_codice = '' then
    begin
      mag.sql.add('select sum(mag.esistenza) esistenza');
      mag.sql.add('from mag');
      mag.sql.add('inner join tma on tma.codice=mag.tma_codice');
      mag.sql.add('where');
      mag.sql.add('mag.art_codice=:art_codice and');
      mag.sql.add('tma.proprieta=''si'' ');
    end
    else
    begin
      mag.sql.add('select sum(mag.esistenza) esistenza');
      mag.sql.add('from mag');
      mag.sql.add('inner join tma on tma.codice=mag.tma_codice');
      mag.sql.add('where');
      mag.sql.add('mag.tma_codice=:tma_codice');
      mag.sql.add('mag.art_codice=:art_codice and');
      mag.sql.add('tma.proprieta=''si'' ');
    end;
    mag.close;
    if frn_codice <> '' then
    begin
      mag.parambyname('frn_codice').asstring := frn_codice;
    end;
    mag.parambyname('art_codice').asstring := opr.fieldbyname('art_codice').asstring;
    mag.open;

    promau_mag.close;
    promau_mag.parambyname('utn_codice').asstring := utente_mag;
    promau_mag.parambyname('art_codice').asstring := opr.fieldbyname('art_codice').asstring;
    promau_mag.open;

    if promau_mag.eof then
    begin
      promau_mag.append;
      promau_mag.fieldbyname('utn_codice').asstring := utente_mag;
      promau_mag.fieldbyname('art_codice').asstring := opr.fieldbyname('art_codice').asstring;
      promau_mag.fieldbyname('esistenza').asinteger := mag.fieldbyname('esistenza').asinteger;
      promau_mag.post;
    end;
    if segno > 0 then
    begin
      promau_mag.edit;
      promau_mag.fieldbyname('nr_col_00').asinteger := promau_mag.fieldbyname('nr_col_00').asinteger + opr.fieldbyname('quantita').asinteger;
      promau_mag.fieldbyname('nr_col_01').asinteger := promau_mag.fieldbyname('esistenza').asinteger - promau_mag.fieldbyname('nr_col_00').asinteger;
      promau_mag.post;

      promau_componenti.close;
      promau_componenti.parambyname('utn_codice').asstring := utente_mag;
      promau_componenti.parambyname('progressivo').asinteger := opr.fieldbyname('progressivo').asinteger;
      promau_componenti.parambyname('riga').asinteger := opr.fieldbyname('riga').asinteger;
      promau_componenti.open;
      if not promau_componenti.eof then
      begin
        promau_componenti.edit;
        promau_componenti.fieldbyname('nr_col_01').asinteger := promau_mag.fieldbyname('esistenza').asinteger;
        promau_componenti.fieldbyname('nr_col_02').asinteger := promau_mag.fieldbyname('nr_col_00').asinteger;
        promau_componenti.fieldbyname('nr_col_03').asinteger := promau_componenti.fieldbyname('nr_col_01').asinteger - promau_componenti.fieldbyname('nr_col_02').asinteger;
        promau_componenti.post;
      end;
      promau_mag.edit;
      promau_mag.fieldbyname('nr_col_01').asinteger := promau_mag.fieldbyname('esistenza').asinteger - promau_mag.fieldbyname('nr_col_00').asinteger;
      promau_mag.post;

      if promau_mag.fieldbyname('esistenza').asfloat - promau_mag.fieldbyname('nr_col_00').asfloat < 0 then
      begin
        result := true;
      end
    end
    else
    begin
      promau_mag.edit;
      promau_mag.fieldbyname('nr_col_00').asinteger := promau_mag.fieldbyname('nr_col_00').asinteger - opr.fieldbyname('quantita').asinteger;
      promau_mag.fieldbyname('nr_col_01').asinteger := promau_mag.fieldbyname('esistenza').asinteger - promau_mag.fieldbyname('nr_col_00').asinteger;
      promau_mag.post;
    end;

    opr.next;
  end; //  while

end;

procedure TA31PRESAPROD.bottoni_setup(abilita: boolean);
begin
  tool_analisi.enabled := abilita;
  tool_esporta_xls.enabled := abilita;
  tool_foglio_lav.enabled := abilita;
end;

procedure TA31PRESAPROD.cancella_analisi_ordini(utente_mag: string);
begin

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('delete from promau_pianif');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice');
  query_sor.parambyname('utn_codice').asstring := utente_mag;
  query_sor.execsql;

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('delete from promau_mag');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice');
  query_sor.parambyname('utn_codice').asstring := utente_mag;
  query_sor.execsql;

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('delete from promau_componenti');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice');
  query_sor.parambyname('utn_codice').asstring := utente_mag;
  query_sor.execsql;

end;

procedure TA31PRESAPROD.inizia_produzione_ordini_evadibili;
begin
  v_grigliaDB.DataController.DataSource.DataSet.first;
  while not v_grigliaDB.DataController.DataSource.DataSet.eof do
  begin
    if v_grigliaDB.DataController.DataSource.DataSet.fieldbyname('progressivo').asinteger > 0 then
    begin
      inizia_ciclo_produzione(v_grigliaDB.DataController.DataSource.DataSet.fieldbyname('progressivo').asinteger, v_grigliaDB.DataController.DataSource.DataSet.fieldbyname('quantita').asfloat);
    end;

    v_grigliaDB.DataController.DataSource.DataSet.next;
  end;

end;

procedure TA31PRESAPROD.inizia_ciclo_produzione(progressivo: integer; quantita: double);
begin

  tabella.close;
  tabella.sql.clear;
  tabella.sql.add('select *');
  tabella.sql.add('from opc');
  tabella.sql.add('where');
  tabella.sql.add('progressivo=:progressivo and');
  tabella.sql.add('sequenza>0 and');
  tabella.sql.add('situazione=''inserita'' ');
  tabella.parambyname('progressivo').asinteger := progressivo;
  tabella.open;

  // 1. la 1.a fase dopo lo START viene iniziata
  try
    upd_opc.parambyname('situazione').asstring := 'iniziata';
    upd_opc.parambyname('quantita').asfloat := quantita;
    upd_opc.parambyname('id').asinteger := tabella.fieldbyname('id').asinteger;
    upd_opc.execsql;

    ins_movfas.parambyname('id_opc').asinteger := tabella.fieldbyname('id').asinteger;
    ins_movfas.parambyname('tipo_operazione').asstring := 'setta come iniziata';
    ins_movfas.parambyname('quantita').asfloat := quantita;
    ins_movfas.execsql;

    upd_opt.parambyname('progressivo').asinteger := progressivo;
    upd_opt.execsql;

  except
  end;

end;

procedure TA31PRESAPROD.esporta_presa_prod_xls;
var
  riga: integer;
begin
  riga := 0;

  xlswrite.filename := cartella_esporta + '\esporta\' + utente + '_presaprod.xlsx';
  xlswrite.Add;
  xlswrite.sheets[0].Name := 'analisi';

  xlswrite.sheets[0].Columns.Items[0].CharWidth := 10;
  xlswrite.sheets[0].Columns.Items[1].CharWidth := 10;
  xlswrite.sheets[0].Columns.Items[2].CharWidth := 10;
  xlswrite.sheets[0].Columns.Items[3].CharWidth := 10;
  xlswrite.sheets[0].Columns.Items[4].CharWidth := 50;
  xlswrite.sheets[0].Columns.Items[5].CharWidth := 20;
  xlswrite.sheets[0].Columns.Items[6].CharWidth := 50;
  xlswrite.sheets[0].Columns.Items[7].CharWidth := 50;
  xlswrite.sheets[0].Columns.Items[8].CharWidth := 50;
  xlswrite.sheets[0].Columns.Items[9].CharWidth := 50;
  xlswrite.sheets[0].Columns.Items[10].CharWidth := 20;
  xlswrite.sheets[0].Columns.Items[11].CharWidth := 10;

  while not v_grigliaDB.DataController.DataSource.DataSet.eof do
  begin
    controllo_interrompi;

    intesta_xls(riga);
    scrivi_produzione(riga);
    scrivi_componenti(riga);

    v_grigliaDB.DataController.DataSource.DataSet.next;
  end;

  xlswrite.write;
  esegui(xlswrite.filename);
end;

procedure TA31PRESAPROD.intesta_xls(var riga: integer);
begin

  riga := riga + 1;
  xlswrite.sheets[0].asstring[0, riga] := 'selezionato';
  xlswrite.sheets[0].asstring[1, riga] := 'evadibile';
  xlswrite.sheets[0].asstring[2, riga] := 'data consegna';
  xlswrite.sheets[0].asstring[3, riga] := 'progressivo';
  xlswrite.sheets[0].asstring[4, riga] := 'articolo';
  xlswrite.sheets[0].asstring[5, riga] := 'da evadere';
  xlswrite.sheets[0].asstring[6, riga] := 'cod art cliente';
  xlswrite.sheets[0].asstring[7, riga] := 'descrizione 1';
  xlswrite.sheets[0].asstring[8, riga] := 'descrizione 2';
  xlswrite.sheets[0].asstring[9, riga] := 'descrizione cliente';
  xlswrite.sheets[0].asstring[10, riga] := 'riferimento cliente';
  xlswrite.sheets[0].asstring[11, riga] := 'data documento';
  riga := riga + 1;

end;

procedure TA31PRESAPROD.scrivi_produzione(var riga: integer);
begin
  xlswrite.sheets[0].asstring[0, riga] := query.fieldbyname('id_origine').asstring;
  xlswrite.sheets[0].asstring[1, riga] := query.fieldbyname('evadibile').asstring;
  xlswrite.sheets[0].asstring[2, riga] := query.fieldbyname('data_consegna').asstring;
  xlswrite.sheets[0].asstring[3, riga] := query.fieldbyname('progressivo').asstring;
  xlswrite.sheets[0].asstring[4, riga] := query.fieldbyname('art_codice').asstring;
  xlswrite.sheets[0].asstring[5, riga] := query.fieldbyname('quantita').asstring;
  xlswrite.sheets[0].asstring[6, riga] := query.fieldbyname('codice_articolo_cliente').asstring;
  xlswrite.sheets[0].asstring[7, riga] := query.fieldbyname('art_descrizione1').asstring;
  xlswrite.sheets[0].asstring[8, riga] := query.fieldbyname('art_descrizione2').asstring;
  xlswrite.sheets[0].asstring[9, riga] := query.fieldbyname('nom_descrizione1').asstring;
  xlswrite.sheets[0].asstring[10, riga] := query.fieldbyname('doc_progressivo_origine').asstring;
  xlswrite.sheets[0].asstring[11, riga] := query.fieldbyname('ovt_data_documento').asstring;

  riga := riga + 2;

  xlswrite.sheets[0].asstring[3, riga] := 'progressivo';
  xlswrite.sheets[0].asstring[4, riga] := 'articolo dsb';
  xlswrite.sheets[0].asstring[5, riga] := 'quantita dsb';
  xlswrite.sheets[0].asstring[6, riga] := 'descrizione 1';
  xlswrite.sheets[0].asstring[7, riga] := 'esistenza';
  xlswrite.sheets[0].asstring[8, riga] := 'impegnato';
  xlswrite.sheets[0].asstring[9, riga] := 'disponibile';
  riga := riga + 1;

end;

procedure TA31PRESAPROD.scrivi_componenti(var riga: integer);
begin

  if query_comp.active then
  begin
    query_comp.first;
    while not query_comp.eof do
    begin

      xlswrite.sheets[0].asstring[3, riga] := query_comp.fieldbyname('progressivo').asstring;
      xlswrite.sheets[0].asstring[4, riga] := query_comp.fieldbyname('art_codice').asstring;
      xlswrite.sheets[0].asstring[5, riga] := query_comp.fieldbyname('nr_col_00').asstring;
      xlswrite.sheets[0].asstring[6, riga] := query_comp.fieldbyname('art_descrizione1').asstring;
      xlswrite.sheets[0].asstring[7, riga] := query_comp.fieldbyname('nr_col_01').asstring;
      xlswrite.sheets[0].asstring[8, riga] := query_comp.fieldbyname('nr_col_02').asstring;
      xlswrite.sheets[0].asstring[9, riga] := query_comp.fieldbyname('nr_col_03').asstring;

      riga := riga + 1;

      query_comp.next;
    end;
  end;

end;

procedure TA31PRESAPROD.genera_foglio_lavoro;
var
  pr: timpalf;
  pr2: ta31gesfoglav;
  data_consegna: tdatetime;
  progressivo: integer;
  quantita_da_produrre: integer;
  quantita, quantita_opt: double;
begin
  if query.state = dsedit then
  begin
    query.post;
  end;

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select min(data_consegna) data_consegna from opt');
  query_righe.sql.add('where');
  query_righe.sql.add('utente=:utn_codice and');
  query_righe.sql.add('art_codice=:art_codice and ');
  query_righe.sql.add('id_origine =1');
  query_righe.parambyname('utn_codice').asstring := utente;
  query_righe.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  query_righe.open;

  pr := timpalf.create(nil);
  pr.v_form_caption := 'foglio lavoro -' + query.fieldbyname('art_codice').asstring + ' - data consegna ';
  pr.v_descrizione_caption := 'data consegna';
  pr.v_width_campo := 08;
  pr.valore_passato := query_righe.fieldbyname('data_consegna').asdatetime;
  pr.tipo_campo := 'data';
  pr.campo_password := false;
  pr.showmodal;

  if pr.valore_passato <> 0 then
  begin
    data_consegna := pr.valore_passato;
  end;
  pr.free;

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select sum(quantita-quantita_evasa) quantita from opt');
  query_righe.sql.add('where');
  query_righe.sql.add('utente=:utn_codice and');
  query_righe.sql.add('art_codice=:art_codice and ');
  query_righe.sql.add('id_origine =1');
  query_righe.parambyname('utn_codice').asstring := utente;
  query_righe.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  query_righe.open;

  quantita_da_produrre := query_righe.fieldbyname('quantita').asinteger;
  pr := timpalf.create(nil);
  pr.v_form_caption := 'foglio lavoro -' + query.fieldbyname('art_codice').asstring + ' - qtà da produrre';
  pr.v_descrizione_caption := 'quantita da produrre';
  pr.v_width_campo := 15;
  pr.valore_passato := quantita_da_produrre;
  pr.tipo_campo := 'numero';
  pr.formattare := true;
  pr.decimali := 0;
  pr.showmodal;

  if pr.valore_passato <> 0 then
  begin
    quantita_da_produrre := pr.valore_passato;
  end;
  pr.free;

  if quantita_da_produrre > 0 then
  begin
    progressivo := arc.setta_valore_generatore(arc.arcdit, 'A31FOGLAV_PROGRESSIVO');
    query_righe.close;
    query_righe.sql.clear;
    query_righe.sql.add('insert into a31foglav (progressivo, cli_codice, art_codice, a31art_esponente, codice_articolo_cliente, qta_da_produrre, data_consegna )');
    query_righe.sql.add('values (:progressivo, :cli_codice, :art_codice, :a31art_esponente, :codice_articolo_cliente, :quantita, :data_consegna )');
    query_righe.parambyname('progressivo').asinteger := progressivo;
    query_righe.parambyname('cli_codice').asstring := query.fieldbyname('cli_codice').asstring;
    query_righe.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    query_righe.parambyname('a31art_esponente').asstring := query.fieldbyname('a31art_esponente').asstring;
    query_righe.parambyname('codice_articolo_cliente').asstring := query.fieldbyname('codice_articolo_cliente').asstring;
    query_righe.parambyname('a31art_esponente').asstring := query.fieldbyname('a31art_esponente').asstring;
    query_righe.parambyname('quantita').asinteger := quantita_da_produrre;
    query_righe.parambyname('data_consegna').asdatetime := data_consegna;
    query_righe.execsql;

    query_righe.sql.clear;
    query_righe.sql.add('update opt');
    query_righe.sql.add('set a31foglav_progressivo=:progressivo, id_origine=0');
    query_righe.sql.add('where');
    query_righe.sql.add('utente=:utn_codice and');
    query_righe.sql.add('art_codice=:art_codice and ');
    query_righe.sql.add('id_origine =1');
    query_righe.parambyname('progressivo').asinteger := progressivo;
    query_righe.parambyname('utn_codice').asstring := utente;
    query_righe.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    query_righe.execsql;

    //-------------------------------------
    // 20/07/2016 Paolo
    // gestione produzione in eccedenza
    //-------------------------------------

    opt.close;
    opt.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
    opt.open;

    quantita_opt := opt.fieldbyname('quantita').asfloat;
    opt.close;

    if quantita_da_produrre > quantita_opt then
    begin

      apri_transazione;
      try
        try
          quantita := quantita_da_produrre - quantita_opt;
          controlla_qta_materiale(query.fieldbyname('progressivo').asinteger, 0, quantita);

          commit_transazione('transazione sul documento produzione con progressivo ' + query.fieldbyname('progressivo').asstring + ' non eseguita');
        except
          on e: exception do
          begin
            messaggio(000, e.message);
            rollback_transazione('transazione sul documento produzione con progressivo ' + query.fieldbyname('progressivo').asstring + ' non eseguita');
          end;
        end;
      finally
        chiudi_transazione;
      end;

    end;

    pr2 := ta31gesfoglav.create(nil);
    pr2.codice := progressivo;
    pr2.showmodal;
    pr2.free;

    query.close;
    query.open;
  end;

end;

procedure TA31PRESAPROD.controlla_qta_materiale(progressivo, riga: integer; quantita_eccedenza: double);
var
  quantita, quantita_pz: double;
  query_opt: tmyquery_go;
  query_opr: tmyquery_go;
begin
//  showmessage(inttostr(progressivo));

  query_opt := tmyquery_go.create(nil);
  query_opt.connection := arc.arcdit;

  query_opr := tmyquery_go.create(nil);
  query_opr.connection := arc.arcdit;

  query_opt.sql.clear;
  query_opr.sql.clear;
  if riga = 0 then
  begin
    query_opt.sql.add('select * from opt');
    query_opt.sql.add('where');
    query_opt.sql.add('progressivo=:progressivo');
    query_opt.parambyname('progressivo').asinteger := progressivo;
  end
  else
  begin
    query_opt.sql.add('select * from opt');
    query_opt.sql.add('where');
    query_opt.sql.add('documento_origine=''ordine produzione'' and');
    query_opt.sql.add('doc_progressivo_origine=:progressivo and');
    query_opt.sql.add('doc_riga_origine=:riga');
    query_opt.parambyname('progressivo').asinteger := progressivo;
    query_opt.parambyname('riga').asinteger := riga;
  end;

  query_opr.sql.add('select opr.*, art.tum_coefficiente_dsb, art.operazione_coefficiente_dsb from opr');
  query_opr.sql.add('inner join art on art.codice=opr.art_codice');
  query_opr.sql.add('where');
  query_opr.sql.add('progressivo=:progressivo');
  query_opr.sql.add('order by riga');

  query_opt.open;

  query_opr.close;
  query_opr.parambyname('progressivo').asinteger := query_opt.fieldbyname('progressivo').asinteger;
  query_opr.open;
  while not query_opr.eof do
  begin
    cifre_decimali_quantita := decimali_quantita_art(query_opr.fieldbyname('art_codice').asstring);

    quantita := arrotonda(query_opr.fieldbyname('quantita').asfloat - query_opr.fieldbyname('quantita_evasa').asfloat, cifre_decimali_quantita);
    if query_opr.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
    begin
      if query_opr.fieldbyname('tum_coefficiente_dsb').asfloat = 0 then
      begin
        quantita_pz := (query_opr.fieldbyname('quantita').asfloat / query_opt.fieldbyname('quantita').asfloat);
        quantita_pz := arrotonda(quantita_pz, cifre_decimali_quantita);
        quantita := quantita + arrotonda((quantita_pz * quantita_eccedenza), cifre_decimali_quantita);
      end
      else
      begin
        quantita_pz := (query_opr.fieldbyname('quantita').asfloat / query_opt.fieldbyname('quantita').asfloat) / query_opr.fieldbyname('tum_coefficiente_dsb').asfloat;
        quantita_pz := arrotonda(quantita_pz, cifre_decimali_quantita);
        quantita := quantita + arrotonda((quantita_pz * quantita_eccedenza) * query_opr.fieldbyname('tum_coefficiente_dsb').asfloat, cifre_decimali_quantita);
      end;
    end
    else
    begin
      if query_opr.fieldbyname('tum_coefficiente_dsb').asfloat = 0 then
      begin
        quantita_pz := (query_opr.fieldbyname('quantita').asfloat / query_opt.fieldbyname('quantita').asfloat);
        quantita_pz := arrotonda(quantita_pz, cifre_decimali_quantita);
        quantita := quantita + arrotonda((quantita_pz * quantita_eccedenza), cifre_decimali_quantita);
      end
      else
      begin
        quantita_pz := (query_opr.fieldbyname('quantita').asfloat / query_opt.fieldbyname('quantita').asfloat) * query_opr.fieldbyname('tum_coefficiente_dsb').asfloat;
        quantita_pz := arrotonda(quantita_pz, cifre_decimali_quantita);
        quantita := quantita + arrotonda((quantita_pz * quantita_eccedenza) / query_opr.fieldbyname('tum_coefficiente_dsb').asfloat, cifre_decimali_quantita);
      end;

    end;

    query_opr.edit;
    query_opr.fieldbyname('quantita').asfloat := quantita;
    query_opr.post;

    if query_opr.fieldbyname('semilavorato').asstring = 'si' then
    begin
      controlla_qta_materiale(query_opr.fieldbyname('progressivo').asinteger, query_opr.fieldbyname('riga').asinteger, quantita_eccedenza);
    end;

    query_opr.next;
  end;

  if not query_opt.eof then
  begin
    query_opt.edit;
    query_opt.fieldbyname('quantita').asfloat := query_opt.fieldbyname('quantita').asfloat + quantita_eccedenza;
    query_opt.post;
  end;

  query_opt.close;
  query_opr.close;
end;

initialization

registerclass(ta31presaprod);

end.
