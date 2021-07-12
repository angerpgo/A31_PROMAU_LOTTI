unit GGA31STAPIANIF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.DateUtils, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGSTAMPA, Data.DB, VirtualTable, ppVar,
  ppBands, ppClass, ppParameter, ppDesignLayer, ppCtrls, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDevice, MyAccess, query_go,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, RzButton, Vcl.StdCtrls, RzCmboBx,
  raizeedit_go, Vcl.Buttons, RzSpnEdt, RzLabel, Vcl.ExtCtrls, RzPanel,
  Vcl.ToolWin, ppModule, raCodMod, ppSubRpt, ppStrtch, ppRegion, RzEdit,
  RzRadChk, Vcl.Mask;

type
  TA31STAPIANIF = class(TSTAMPA)
    ppGroup1: TppGroup;
    ppGroup2: TppGroup;
    raCodeModule1: TraCodeModule;
    ppdbComponenti: TppDBPipeline;
    ppGroup3: TppGroup;
    ppSubReport2: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape7: TppShape;
    ppLabel4: TppLabel;
    ppShape10: TppShape;
    ppRegion3: TppRegion;
    ppShape1: TppShape;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText33: TppDBText;
    ppVariable2: TppVariable;
    ppDBText34: TppDBText;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    pplogo: TppImage;
    ppl_col_00: TppLabel;
    ppl_col_01: TppLabel;
    ppl_col_02: TppLabel;
    ppl_col_03: TppLabel;
    ppl_col_04: TppLabel;
    ppl_col_05: TppLabel;
    ppl_col_06: TppLabel;
    ppl_col_07: TppLabel;
    ppl_col_08: TppLabel;
    ppl_col_09: TppLabel;
    ppl_col_10: TppLabel;
    ppl_col_11: TppLabel;
    query_sor1: tmyquery_go;
    query_sor2: tmyquery_go;
    ppRegion5: TppRegion;
    ppShape8: TppShape;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppVariable1: TppVariable;
    ppLine1: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    frn_promau: tmyquery_go;
    ppVariable3: TppVariable;
    Panel1: TRzpanel;
    Panel3: TRzpanel;
    v_seleziona_pianificazione: TGroupBox;
    v_ordini_clienti: TRzcheckbox;
    v_ordini_produzione: TRzcheckbox;
    v_ordini_conto_terzi: TRzcheckbox;
    GroupBox1: TGroupBox;
    v_lavorazioni: TRzcheckbox;
    v_componenti: TRzcheckbox;
    v_ordinamento_lavorazioni: TRzCombobox_go;
    Panel2: TRzpanel;
    Label4: TRzlabel;
    v_oggetto_email: TRzEdit_go;
    Label2: TRzlabel;
    v_data_dal: TRzDateTimeEdit_go;
    v_data_al: TRzDateTimeEdit_go;
    Label3: TRzlabel;
    ppRegion7: TppRegion;
    ppShape6: TppShape;
    ppDBText46: TppDBText;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBText60: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppLabel1: TppLabel;
    RzPanel1: TRzPanel;
    v_selart: TRzRapidFireButton;
    v_seltmo: TRzRapidFireButton;
    v_selcli: TRzRapidFireButton;
    v_selfrn: TRzRapidFireButton;
    v_seltma: TRzRapidFireButton;
    v_controllo_giacenza_materia_prima: TRzCheckBox;
    raCodeModule2: TraCodeModule;
    ppDBText1: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    dat: TMyQuery_go;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure ppVariable1DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppVariable1DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDBText14DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText14DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure v_selcliClick(Sender: TObject);
    procedure v_selfrnClick(Sender: TObject);
    procedure v_ordini_clientiClick(Sender: TObject);
    procedure v_ordini_produzioneClick(Sender: TObject);
    procedure v_ordini_conto_terziClick(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
    procedure tool_stampa_pdfClick(Sender: TObject);
  private
    { Private declarations }

    path_logo_ditta: string;

    adata_consegna: array [0 .. 12] of tdate;
    asettimana: array [0 .. 12] of integer;

    sequenza: integer;
    frn_codice, NOM_DESCRIZIONE: string;

    nome_colonna: string;

    nr_settimana: integer;
    tipo_archivio: string;
    ordine_articolo: string;
    filtro_articoli: string;

    data_ora: tdatetime;
    id: integer;

    utente_descrizione: string;
    nome_file_pdf: string;
    tipo_documento: string;

    lista_allegati_01: tstringlist;

    // parametri selart
    //
    selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione,
      a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice, selezione_art_frn_codice,
      da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice: string;

    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista, art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista: tstringlist;

    tasto_escape_art, art_escludi_obsoleti, art_eseguito: boolean;
    //
    // selcli
    selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice, selezione_cli_gen_codice, da_cli_gen_codice,
      a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice, selezione_cli_tcc_codice,
      da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice: string;
    cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista, cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista: tstringlist;
    tasto_escape_cli, cli_escludi_obsoleti, cli_eseguito: boolean;

    // selfrn
    selezione_frn_codice, da_frn_codice, a_frn_codice, selezione_frn_tna_codice, da_frn_tna_codice, a_frn_tna_codice, selezione_frn_descrizione, da_frn_descrizione, a_frn_descrizione, selezione_frn_tzo_codice, da_frn_tzo_codice, a_frn_tzo_codice, selezione_frn_gen_codice, da_frn_gen_codice,
      a_frn_gen_codice, selezione_frn_tsc_codice, da_frn_tsc_codice, a_frn_tsc_codice: string;
    frn_codice_lista, frn_tna_codice_lista, frn_tzo_codice_lista, frn_gen_codice_lista, frn_tsc_codice_lista: tstringlist;

    tasto_escape_frn, frn_escludi_obsoleti, frn_eseguito: boolean;
    //

    procedure call_selart;
    procedure call_selcli;
    procedure call_selfrn;
    procedure stampa; override;
    procedure esegue_stampa; override;
    procedure controllo_campi; override;
    procedure controllo_data_fine;
    procedure carica_lavorazione_finiti;
    procedure assegna_nome_file_email_pdf(campo: string; dataset: tdataset);
    procedure memorizza_componenti;
    procedure memorizza_finiti_semilavorati(progressivo: integer; frn_codice, ordine_articolo: string);
    procedure controllo_giacenza_componenti;
    procedure controlla_componenti_settimana(nome_campo, nome_campo2: string);
  public
    { Public declarations }
    art_codice_passato, cfg_tipo_passato, cfg_codice_passato: string;
  end;

var
  A31STAPIANIF: TA31STAPIANIF;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE, ZZLIBRERIE_PROMAU, ZZDISTINTABASE;

procedure TA31STAPIANIF.FormCreate(Sender: TObject);
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

  frn_codice_lista := tstringlist.create;
  frn_tna_codice_lista := tstringlist.create;
  frn_tzo_codice_lista := tstringlist.create;
  frn_gen_codice_lista := tstringlist.create;
  frn_tsc_codice_lista := tstringlist.create;

end;

procedure TA31STAPIANIF.FormDestroy(Sender: TObject);
begin
  inherited;
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

  freeandnil(frn_codice_lista);
  freeandnil(frn_tna_codice_lista);
  freeandnil(frn_tzo_codice_lista);
  freeandnil(frn_gen_codice_lista);
  freeandnil(frn_tsc_codice_lista);

end;

procedure TA31STAPIANIF.FormShow(Sender: TObject);
begin
  inherited;

  tipo_documento := 'A31STAPIANIF';

  lista_allegati_01 := tstringlist.create;

  tool_email.enabled := true;
  tool_pdf.enabled := true;

  read_tabella(arc.arc, 'dit', 'codice', ditta, 'marchio_percorso');
  path_logo_ditta := archivio_arc.fieldbyname('marchio_percorso').asstring;

  v_data_dal.date := calcola_consegna(0, calcola_settimana(now, ditta, esercizio, 0) + 1, ditta, esercizio);

  // -----------------------------------
  // ragione sociele fornitore promau
  // -----------------------------------
  if promau_frn_codice = '' then
  begin
    promau_frn_codice := '00001651';
  end;

  frn_promau.close;
  frn_promau.parambyname('codice').asstring := promau_frn_codice;
  frn_promau.open;

end;

procedure TA31STAPIANIF.Panel1Exit(Sender: TObject);
begin
  inherited;
  if v_data_al.date = 0 then
  begin
    v_data_al.date := strtodate('31/12/9999');
  end;

  controllo_data_fine;

end;

procedure TA31STAPIANIF.ppDBText14DrawCommandClick(Sender, aDrawCommand: TObject);
begin
  inherited;
  if TppDrawCommand(aDrawCommand).Tag > 0 then
  begin
    esegui_programma('CRUART', sor1.fieldbyname('art_codice_componente').asstring, true);
  end;

end;

procedure TA31STAPIANIF.ppDBText14DrawCommandCreate(Sender, aDrawCommand: TObject);
begin
  inherited;
  TppDrawCommand(aDrawCommand).Tag := sor1.fieldbyname('id').asinteger;
end;

procedure TA31STAPIANIF.ppReportBeforePrint(Sender: TObject);
begin
  inherited;

  try
    pplogo.Picture.Loadfromfile(path_logo_ditta);
    pplogo.visible := true;

    ppl_col_00.caption := 'Urgenze';
    ppl_col_01.caption := copy(datetostr(adata_consegna[0]), 1, 5) + #13 + inttostr(asettimana[0]);

    ppl_col_02.caption := copy(datetostr(adata_consegna[1]), 1, 5) + #13 + inttostr(asettimana[1]);
    ppl_col_03.caption := copy(datetostr(adata_consegna[2]), 1, 5) + #13 + inttostr(asettimana[2]);
    ppl_col_04.caption := copy(datetostr(adata_consegna[3]), 1, 5) + #13 + inttostr(asettimana[3]);
    ppl_col_05.caption := copy(datetostr(adata_consegna[4]), 1, 5) + #13 + inttostr(asettimana[4]);
    ppl_col_06.caption := copy(datetostr(adata_consegna[5]), 1, 5) + #13 + inttostr(asettimana[5]);
    ppl_col_07.caption := copy(datetostr(adata_consegna[6]), 1, 5) + #13 + inttostr(asettimana[6]);
    ppl_col_08.caption := copy(datetostr(adata_consegna[7]), 1, 5) + #13 + inttostr(asettimana[7]);
    ppl_col_09.caption := copy(datetostr(adata_consegna[8]), 1, 5) + #13 + inttostr(asettimana[8]);
    ppl_col_10.caption := copy(datetostr(adata_consegna[9]), 1, 5) + #13 + inttostr(asettimana[9]);
    ppl_col_11.caption := copy(datetostr(adata_consegna[10]), 1, 5) + #13 + inttostr(asettimana[10]);

    ppSubreport2.visible := false;

    if v_componenti.checked then
    begin
      ppSubreport2.visible := true;
    end;

  except
    raise;
  end;

end;

procedure TA31STAPIANIF.ppVariable1DrawCommandClick(Sender, aDrawCommand: TObject);
begin
  inherited;

  if TppDrawCommand(aDrawCommand).Tag > 0 then
  begin
    query_sor.locate('id', TppDrawCommand(aDrawCommand).Tag, []);
    esegui_programma('CRUART', query_sor.fieldbyname('art_codice').asstring, true);
  end;

end;

procedure TA31STAPIANIF.ppVariable1DrawCommandCreate(Sender, aDrawCommand: TObject);
begin
  inherited;
  TppDrawCommand(aDrawCommand).Tag := sor.fieldbyname('id').asinteger;
end;

procedure TA31STAPIANIF.v_confermaClick(Sender: TObject);
begin
  inherited;

  controllo_campi;

  esegue_stampa;

end;

procedure TA31STAPIANIF.v_ordini_clientiClick(Sender: TObject);
begin
  inherited;
  v_selcli.enabled := v_ordini_clienti.checked;

end;

procedure TA31STAPIANIF.v_ordini_conto_terziClick(Sender: TObject);
begin
  inherited;
  v_selfrn.enabled := v_ordini_conto_terzi.checked;
end;

procedure TA31STAPIANIF.v_ordini_produzioneClick(Sender: TObject);
begin
  inherited;
  if not v_ordini_produzione.checked and not v_ordini_conto_terzi.Checked then
  begin
    v_selfrn.enabled := false;
  end;

end;

procedure TA31STAPIANIF.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TA31STAPIANIF.v_selcliClick(Sender: TObject);
begin
  inherited;
  call_selcli;
end;

procedure TA31STAPIANIF.v_selfrnClick(Sender: TObject);
begin
  inherited;
  call_selfrn;
end;

procedure TA31STAPIANIF.controllo_campi;
begin

  controllo_data_fine;

end;

procedure TA31STAPIANIF.controllo_data_fine;
begin

  if v_data_al.date < v_data_dal.date then
  begin
    messaggio(000, 'Data fine periodo non valida !');
    v_data_al.setfocus;

  end;

end;

procedure TA31STAPIANIF.call_selcli;
begin
  esegui_selcli(selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice, selezione_cli_gen_codice,
    da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice,
    selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cfg_codice_passato, cli_codice_lista,
    cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
    cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista, tasto_escape_cli, cli_escludi_obsoleti, cli_eseguito);
  if tasto_escape_cli then
  begin
    close;
    abort;
  end;
end;

procedure TA31STAPIANIF.call_selfrn;
begin
  esegui_selfrn(selezione_frn_codice, da_frn_codice, a_frn_codice, selezione_frn_tna_codice, da_frn_tna_codice, a_frn_tna_codice, selezione_frn_descrizione, da_frn_descrizione, a_frn_descrizione, selezione_frn_tzo_codice, da_frn_tzo_codice, a_frn_tzo_codice, selezione_frn_gen_codice,
    da_frn_gen_codice, a_frn_gen_codice, selezione_frn_tsc_codice, da_frn_tsc_codice, a_frn_tsc_codice,
    cfg_codice_passato, frn_codice_lista, frn_tna_codice_lista, frn_tzo_codice_lista, frn_gen_codice_lista, frn_tsc_codice_lista, tasto_escape_frn, frn_escludi_obsoleti, frn_eseguito);
  if tasto_escape_frn then
  begin
    close;
    abort;
  end;
end;

procedure TA31STAPIANIF.call_selart;
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

procedure TA31STAPIANIF.esegue_stampa;
var
  i, progressivo, mese_cambio_anno: integer;
  seconda_query, cambio_anno: boolean;
  cartella_file_pdf: string;
begin
  cartella_file_pdf := cartella_file;

  seconda_query := false;

  if not art_eseguito then
  begin
    call_selart;
  end;
  art_eseguito := false;

  data_ora := now;

  read_tabella(arc.arc, 'utn', 'codice', utente, 'descrizione');
  utente_descrizione := archivio_arc.fieldbyname('descrizione').asstring;

  nr_settimana := calcola_settimana(v_data_dal.date, ditta, esercizio, 0);
  cambio_anno := false;
  mese_cambio_anno := 0;

  for i := 0 to 12 do
  begin

    mese_cambio_anno := 0;
    if nr_settimana + i > 52 then
    begin
      nr_settimana := nr_settimana + i;
      cambio_anno := true;
    end;

    if (cambio_anno) and (mese_cambio_anno = 0) then
    begin
      mese_cambio_anno := i;
    end;

    if i = 0 then
    begin
      adata_consegna[i] := v_data_dal.date;
      asettimana[i] := weekof(adata_consegna[i]);
    end
    else
    begin
      adata_consegna[i] := adata_consegna[i - 1] + 7;
      asettimana[i] := weekof(adata_consegna[i]);
    end;

  end; // for

  nome_tabella := 'promau_pianif';
  sor.active := false;
  azzera_tabella(nome_tabella, sor);
  sor.indexfieldnames := 'utn_codice;ordine_articolo;frn_codice;art_codice;sequenza;fas_codice';

  sor1.active := false;
  nome_tabella := 'promau_componenti';
  azzera_tabella(nome_tabella, sor1);
  sor1.indexfieldnames := 'utn_codice;frn_codice;art_codice';

  query.close;
  query.Sql.Clear;

  limart(art_escludi_obsoleti, query, false, selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
    selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice,
    a_art_tsa_codice, selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

  filtro_articoli := query.sql.text;
  query.sql.clear;

  (*
    //--------------------------------------------
    // ritardi finiti
    //--------------------------------------------
    query.sql.add('select opt.data_ora, ''finiti'' tipo_articolo, opt.utente, opt.cms_codice, opt.frn_codice, nom.descrizione1 frn_descrizione1,');
    query.sql.add('opt.documento_origine,opt.art_codice, art.descrizione1 art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice, ');
    query.sql.add(' terzi.descrizione1 terzi_descrizione1, ''no'' semilavorato,opt.data_consegna, (opt.quantita-opt.quantita_evasa) quantita, ');
    query.sql.add(' opt.a31cli_codice cli_codice,cli.descrizione1 cli_descrizione1, nom.e_mail_ordini_fornitori nom_email');
    query.sql.add('from opt');
    query.sql.add('left join nom on nom.codice=opt.frn_codice');
    query.sql.add('left join cli on cli.codice=opt.a31cli_codice');
    query.sql.add('left join art on art.codice=opt.art_codice');
    query.sql.add('left join nom terzi on terzi.codice=art.frn_codice');
    query.sql.add('where');
    query.sql.add('opt.data_consegna <:data_ritardi');
    query.sql.add('union all');

    //--------------------------------------------
    // ritardi componenti
    //--------------------------------------------
    query.sql.add('select opr.data_ora, ''componenti'' tipo_articolo, opr.utente, opt.cms_codice, opt.frn_codice, nom.descrizione1 frn_descrizione1,');
    query.sql.add('opt.documento_origine,opr.art_codice, art.descrizione1 art_descrizione1, art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice,');
    query.sql.add('terzi.descrizione1 terzi_descrizione1, opr.semilavorato, date_add(opt.data_consegna, interval - 7 DAY) data_consegna, (opr.quantita-opr.quantita_spedita) quantita,');
    query.sql.add('opt.a31cli_codice cli_codice, cli.descrizione1 cli_descrizione1, nom.e_mail_ordini_fornitori nom_email');
    query.sql.add('from opr');
    query.sql.add('inner join opt on opt.PROGRESSIVO = opr.progressivo');
    query.sql.add('left join cli on cli.codice=opt.a31cli_codice');
    query.sql.add('left join nom on nom.codice=opt.frn_codice');
    query.sql.add('left join art on art.codice=opr.art_codice');
    query.sql.add('left join nom terzi on terzi.codice=art.frn_codice');
    query.sql.add('where');
    query.sql.add('date_add(opt.data_consegna, interval - 7 DAY) <:data_ritardi');
    query.sql.add('union all');
  *)

  // --------------------------------------------
  // spedizione FINITI
  // legge le righe degli ordini da consegnare
  // --------------------------------------------
  if v_ordini_clienti.checked then
  begin

    query.sql.add('select ''1'' tipo_archivio, ''spedizione'' tipo_articolo, ' + quotedstr(utente) + ' utente, ovr.cms_codice, ovr.tipologia cmt_codice, '''' frn_codice, '''' frn_descrizione1,');
    query.sql.add('0 documento_origine,ovr.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice,');
    query.sql.add(' '''' terzi_descrizione1, ''no'' semilavorato, ovr.data_consegna, (ovr.quantita-ovr.quantita_evasa) quantita,');
    query.sql.add(' '''' art_codice_finito, ovt.cli_codice, nom.descrizione1 nom_descrizione,nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente, ');
    query.sql.add('( select GROUP_CONCAT( acc.art_codice_accessorio) FROM acc WHERE acc.ART_CODICE=ovr.art_codice GROUP BY ACC.ART_CODICE) codice_stampo');
    query.sql.add('from ovt');
    query.sql.add('inner join ovr on ovr.progressivo=ovt.progressivo');
    query.sql.add('left join cli on cli.codice=ovt.cli_codice');
    query.sql.add('left join nom on nom.codice=cli.codice');
    query.sql.add('left join art on art.codice=ovr.art_codice');
    query.sql.add('left join arcl on arcl.art_codice=art.codice and arcl.cli_codice=ovt.cli_codice');
    query.sql.add('where');
    query.sql.add('(ovr.data_consegna <=:a ) and');
    query.sql.add('(ovr.quantita-ovr.quantita_evasa >0)');
    query.sql.add('and ovr.situazione in ( ' + quotedstr('inserito') + ', ' + quotedstr('evaso parziale') + ' ) ');

    limcli(cli_escludi_obsoleti, query, false, selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice,
      selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice,
      a_cli_tag_codice, selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cli_codice_lista,
      cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
      cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista);

    if filtro_articoli <> '' then
    begin
      query.sql.add(filtro_articoli);
    end;
    // --------------------------------------------
    // ricerca ritardi CLIENTI da foglio excel
    // --------------------------------------------
    query.sql.add('union all');
    query.sql.add('select ''3'' tipo_archivio, p.tipo_articolo , ' + quotedstr(utente) + ' utente, p.cms_codice, p.tipologia cmt_codice, '''' frn_codice, '''' frn_descrizione1,');
    query.sql.add(' '''' documento_origine,p.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice,');
    query.sql.add(' '''' terzi_descrizione1, ''no'' semilavorato, p.data_consegna, p.quantita,');
    query.sql.add(' p.art_codice_finito, cli.codice cli_codice, nom.descrizione1 nom_descrizione,nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente,');
    query.sql.add(' '''' codice_stampo ');
    query.sql.add('from promau_ritardi p');
    query.sql.add('left join cli on cli.codice=p.cli_codice');
    query.sql.add('left join nom on nom.codice=cli.codice');
    query.sql.add('left join art on art.codice=p.art_codice');
    query.sql.add('left join arcl on arcl.art_codice=p.art_codice and arcl.cli_codice=p.cli_codice');
    query.sql.add('where');
    query.sql.add('(p.data_consegna <:da_ritardi ) and ');
    query.sql.add('p.tipo_articolo = ''spedizione'' ');
    query.sql.add('union all');
    query.sql.add('select ''3'' tipo_archivio,  case when p.tipo_articolo =''spedizione'' then ''finiti'' else p.tipo_articolo end tipo_articolo, ' + quotedstr(utente) + ' utente, p.cms_codice, p.tipologia cmt_codice, p.frn_codice frn_codice, frn.descrizione1 frn_descrizione1,');
    query.sql.add(' '''' documento_origine,p.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice,');
    query.sql.add(' '''' terzi_descrizione1, ''no'' semilavorato, p.data_consegna, p.quantita,');
    query.sql.add(' p.art_codice_finito, '''' cli_codice, '''' nom_descrizione,nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente, ');
    query.sql.add(' '''' codice_stampo ');
    query.sql.add('from promau_ritardi p');
    query.sql.add('left join cli on cli.codice=p.cli_codice');
    query.sql.add('left join nom on nom.codice=cli.codice');
    query.sql.add('left join art on art.codice=p.art_codice');
    query.sql.add('left join arcl on arcl.art_codice=p.art_codice and arcl.cli_codice=p.cli_codice');
    query.sql.add('left join frn on frn.codice=p.frn_codice');
    query.sql.add('where');
    query.sql.add('(p.data_consegna <:da_ritardi ) and ');
    query.sql.add(' ( p.tipo_articolo=' + quotedstr('finiti') + ' ) or ');
    query.sql.add('  ( p.tipo_articolo=' + quotedstr('componenti') + ' ) or ');
    query.sql.add('  ( ( p.tipo_articolo=' + quotedstr('semilavorati') + ' ) and ( p.art_codice_finito <> '''' ) ) ');

    limcli(cli_escludi_obsoleti, query, false, selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice,
      selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice,
      a_cli_tag_codice, selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cli_codice_lista,
      cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
      cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista);

    if filtro_articoli <> '' then
    begin
      query.sql.add(filtro_articoli);
    end;

    seconda_query := true;
  end;

  if v_ordini_produzione.checked then
  begin
    // --------------------------------------------
    // consegne FINITI  / ordini di produzione
    // --------------------------------------------
    if seconda_query then
    begin
      query.sql.add('union all');
    end;

    query.sql.add('select  ''1'' tipo_archivio, ''finiti'' tipo_articolo, opt.utente, opt.cms_codice, opt.tipologia cmt_codice, case when opt.frn_codice='''' then ' + quotedstr(promau_frn_codice) + ' else opt.frn_codice end frn_codice , nom.descrizione1 frn_descrizione1,');
    query.sql.add('opt.documento_origine,opt.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice, ');
    query.sql.add('terzi.descrizione1 terzi_descrizione1, ''no'' semilavorato, opt.data_consegna, (opt.quantita-opt.quantita_evasa) quantita,');
    query.sql.add('opt.art_codice art_codice_finito, opt.a31cli_codice cli_codice, nom.descrizione1 nom_descrizione, nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente,');
    query.sql.add('( select GROUP_CONCAT( acc.art_codice_accessorio) FROM acc WHERE acc.ART_CODICE=opt.art_codice GROUP BY ACC.ART_CODICE) codice_stampo');
    query.sql.add('from opt');
    query.sql.add('left join cli on cli.codice=opt.a31cli_codice');
    query.sql.add('left join nom on nom.codice=opt.frn_codice');
    query.sql.add('left join art on art.codice=opt.art_codice');
    query.sql.add('left join arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=opt.a31cli_codice');
    query.sql.add('left join nom terzi on terzi.codice=art.frn_codice');
    query.sql.add('where');
    // query.sql.add('(opt.data_consegna between :da and :a) and');
    query.sql.add('( (opt.frn_codice = '''') or ( opt.frn_codice=' + quotedstr(promau_frn_codice) + ' ) ) and ');
    query.sql.add('(opt.data_consegna <=:a ) and');
    query.sql.add('(opt.documento_origine <>''ordine produzione'') ');
    query.sql.add('and opt.situazione in ( ' + quotedstr('inserito') + ', ' + quotedstr('evaso parziale') + ' ) ');

    limcli(cli_escludi_obsoleti, query, false, selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice,
      selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice,
      a_cli_tag_codice, selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cli_codice_lista,
      cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
      cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista);

    if filtro_articoli <> '' then
    begin
      query.sql.add(filtro_articoli);
    end;

    // --------------------------------------------
    // Semilavorati / da ordini di produzione ASSEGNATI A
    // fornitori esterni
    // --------------------------------------------

    query.sql.add('union all');
    query.sql.add('select  ''1'' tipo_archivio, ''semilavorati'' tipo_articolo, opt.utente, opt.cms_codice, opt.tipologia cmt_codice, case when opt.frn_codice='''' then ' + quotedstr(promau_frn_codice) + ' else opt.frn_codice end frn_codice , ');
    query.sql.add('case when opt.frn_codice='''' then ' + quotedstr('PROMAU ENGINEERING S.r.l.') + ' else nom.descrizione1 end frn_descrizione1, ');
    query.sql.add('opt.documento_origine,opt.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice, ');
    query.sql.add('terzi.descrizione1 terzi_descrizione1, ''si'' semilavorato, opt.data_consegna, (opt.quantita-opt.quantita_evasa) quantita,');
    query.sql.add('opt.art_codice art_codice_finito, opt.a31cli_codice cli_codice, nom.descrizione1 nom_descrizione, nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente,');
    query.sql.add('( select GROUP_CONCAT( acc.art_codice_accessorio) FROM acc WHERE acc.ART_CODICE=opt.art_codice GROUP BY ACC.ART_CODICE) codice_stampo');
    query.sql.add('from opt');
    query.sql.add('left join cli on cli.codice=opt.a31cli_codice');
    query.sql.add('left join nom on nom.codice=opt.frn_codice');
    query.sql.add('left join art on art.codice=opt.art_codice');
    query.sql.add('left join arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=opt.a31cli_codice');
    query.sql.add('left join nom terzi on terzi.codice=art.frn_codice');
    query.sql.add('where');
    // query.sql.add('(opt.data_consegna between :da and :a) and');
    query.sql.add('( (opt.frn_codice = '''') or ( opt.frn_codice=' + quotedstr(promau_frn_codice) + ' ) ) and ');
    query.sql.add('(opt.data_consegna <=:a ) and');
    query.sql.add('(opt.documento_origine =''ordine produzione'') ');
    query.sql.add('and opt.situazione in ( ' + quotedstr('inserito') + ', ' + quotedstr('evaso parziale') + ' ) ');

    limcli(cli_escludi_obsoleti, query, false, selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice,
      selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice,
      a_cli_tag_codice, selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cli_codice_lista,
      cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
      cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista);

    if filtro_articoli <> '' then
    begin
      query.sql.add(filtro_articoli);
    end;

    seconda_query := true;
  end;

  if v_ordini_conto_terzi.checked then
  begin

    if seconda_query then
    begin
      query.sql.add('union all');
    end;
    (*
      query.sql.add('select  ''1'' tipo_archivio, ''finiti'' tipo_articolo, opt.utente, opt.cms_codice, opt.tipologia cmt_codice, case when opt.frn_codice='''' then ' + quotedstr(promau_frn_codice) +
      ' else opt.frn_codice end frn_codice , nom.descrizione1 frn_descrizione1,');
      query.sql.add('opt.documento_origine,opt.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice, ');
      query.sql.add('terzi.descrizione1 terzi_descrizione1, ''no'' semilavorato, opt.data_consegna, ');
      query.sql.add('case when opt.quantita_evasa <= opt.quantita then (opt.quantita-opt.quantita_evasa) else 0 end quantita,');
      query.sql.add('opt.art_codice art_codice_finito, opt.a31cli_codice cli_codice, nom.descrizione1 nom_descrizione, nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente,');
      query.sql.add('from opt');
      query.sql.add('left join cli on cli.codice=opt.a31cli_codice');
      query.sql.add('left join nom on nom.codice=opt.frn_codice');
      query.sql.add('left join frn on frn.codice=nom.codice');
      query.sql.add('left join art on art.codice=opt.art_codice');
      query.sql.add('left join arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=opt.a31cli_codice');
      query.sql.add('left join nom terzi on terzi.codice=art.frn_codice');
      query.sql.add('where');
      // query.sql.add('(opt.data_consegna between :da and :a) and');
      query.sql.add('( (opt.frn_codice <> '''') and ( opt.frn_codice<>' + quotedstr(promau_frn_codice) + ' ) ) and ');
      query.sql.add('(opt.data_consegna <=:a ) and');
      query.sql.add('(opt.documento_origine <>''ordine produzione'') ');
      query.sql.add('and opt.situazione in ( ' + quotedstr('inserito') + ', ' + quotedstr('evaso parziale') + ' ) ');

      limfrn(frn_escludi_obsoleti, query, false, selezione_frn_codice, da_frn_codice, a_frn_codice,
      selezione_frn_tna_codice, da_frn_tna_codice, a_frn_tna_codice,
      selezione_frn_descrizione, da_frn_descrizione, a_frn_descrizione,
      selezione_frn_tzo_codice, da_frn_tzo_codice, a_frn_tzo_codice,
      selezione_frn_gen_codice, da_frn_gen_codice, a_frn_gen_codice,
      selezione_frn_tsc_codice, da_frn_tsc_codice, a_frn_tsc_codice,
      frn_codice_lista, frn_tna_codice_lista, frn_tzo_codice_lista, frn_gen_codice_lista, frn_tsc_codice_lista);
      query.sql.add('union all');
    *)

    // --------------------------------------------
    // Semilavorati / da ordini di produzione ASSEGNATI A
    // fornitori esterni
    // --------------------------------------------
    query.sql.add('select  ''1'' tipo_archivio, ''semilavorati'' tipo_articolo, opt.utente, opt.cms_codice, opt.tipologia cmt_codice, case when opt.frn_codice='''' then ' + quotedstr(promau_frn_codice) + ' else opt.frn_codice end frn_codice , ');
    query.sql.add('case when opt.frn_codice='''' then ' + quotedstr('PROMAU ENGINEERING S.r.l.') + ' else nom.descrizione1 end frn_descrizione1, ');
    query.sql.add('opt.documento_origine,opt.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice, ');
    query.sql.add('terzi.descrizione1 terzi_descrizione1, ''si'' semilavorato, opt.data_consegna,');
    query.sql.add('case when opt.quantita_evasa <= opt.quantita then (opt.quantita-opt.quantita_evasa) else 0 end  quantita,');
    query.sql.add('opt.art_codice art_codice_finito, opt.a31cli_codice cli_codice, nom.descrizione1 nom_descrizione, nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente,');
    query.sql.add('( select GROUP_CONCAT( acc.art_codice_accessorio) FROM acc WHERE acc.ART_CODICE=oar.art_codice GROUP BY ACC.ART_CODICE) codice_stampo');
    query.sql.add('from oat');
    query.sql.add('inner join oar on oar.progressivo=oat.progressivo ');
    query.sql.add('left join opt on opt.progressivo = oar.doc_progressivo_origine and oar.documento_origine=''produzione'' ');
    query.sql.add('left join cli on cli.codice=opt.a31cli_codice');
    query.sql.add('left join nom on nom.codice=oat.frn_codice');
    query.sql.add('left join frn on frn.codice=nom.codice');
    query.sql.add('left join art on art.codice=opt.art_codice');
    query.sql.add('left join arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=opt.a31cli_codice');
    query.sql.add('left join nom terzi on terzi.codice=art.frn_codice');
    query.sql.add('where');
    // query.sql.add('(opt.data_consegna between :da and :a) and');
    query.sql.add('( oat.frn_codice<>' + quotedstr(promau_frn_codice) + '  ) and ');
    query.sql.add('( oat.tda_codice = ''ORCL'' ) and ');
    query.sql.add('( oar.data_consegna <=:a ) and');
    query.sql.add('( oar.situazione in ( ' + quotedstr('inserito') + ', ' + quotedstr('evaso parziale') + ' ) ) ');

    limfrn(frn_escludi_obsoleti, query, false, selezione_frn_codice, da_frn_codice, a_frn_codice, selezione_frn_tna_codice, da_frn_tna_codice, a_frn_tna_codice, selezione_frn_descrizione, da_frn_descrizione, a_frn_descrizione, selezione_frn_tzo_codice, da_frn_tzo_codice, a_frn_tzo_codice,
      selezione_frn_gen_codice, da_frn_gen_codice, a_frn_gen_codice, selezione_frn_tsc_codice, da_frn_tsc_codice,
      a_frn_tsc_codice, frn_codice_lista, frn_tna_codice_lista, frn_tzo_codice_lista, frn_gen_codice_lista, frn_tsc_codice_lista);

    seconda_query := true;
  end;

  // --------------------------------------------
  // consegne COMPONENTI
  // --------------------------------------------
  if (v_ordini_conto_terzi.checked) and (v_componenti.checked) then
  begin
    if seconda_query then
    begin
      query.sql.add('union all');
    end;
    query.sql.add('select  ''1'' tipo_archivio, case when opr.semilavorato=''no'' then ''componenti'' when opr.semilavorato=''si'' and (opt.frn_codice <>'''' and opt.frn_codice<>art.frn_codice) then ''componenti'' else ''semilavorati'' end tipo_articolo,');
    // query.sql.add('select opr.progressivo, case when opr.semilavorato=''no'' then ''componenti'' else ''semilavorati'' end tipo_articolo,');
    query.sql.add('opr.utente, opt.cms_codice, opt.tipologia cmt_codice, case when opt.frn_codice='''' then ' + quotedstr(promau_frn_codice) + ' else opt.frn_codice end frn_codice , ');
    query.sql.add('case when opt.frn_codice='''' then ' + quotedstr('PROMAU ENGINEERING S.r.l.') + ' else nom.descrizione1 end frn_descrizione1, ');
    query.sql.add('opt.documento_origine,opr.art_codice, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1, art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice, ');
    query.sql.add('terzi.descrizione1 terzi_descrizione1,  opr.semilavorato, ');
    query.sql.add('opr.a31data_consegna, ');
    query.sql.add('(opr.quantita-opr.quantita_spedita) quantita,');
    query.sql.add('opt.art_codice art_codice_finito, opt.a31cli_codice cli_codice, nom.descrizione1 nom_descrizione ,nom.e_mail_ordini_fornitori nom_email, arcl.codice_articolo_cliente arc_codice_articolo_cliente,');
    query.sql.add(' '''' codice_stampo ');
    query.sql.add('from opr');
    query.sql.add('inner join opt on opt.PROGRESSIVO = opr.progressivo');
    query.sql.add('left join cli on cli.codice=opt.a31cli_codice');
    query.sql.add('left join nom on nom.codice=opt.frn_codice');
    query.sql.add('left join art on art.codice=opr.art_codice');
    query.sql.add('left join arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=opt.a31cli_codice');
    query.sql.add('left join nom terzi on terzi.codice=art.frn_codice');
    query.sql.add('left join cla on cla.art_codice=opt.art_codice_finito');
    query.sql.add('where');
    // query.sql.add('( (opt.frn_codice <> '''') and ( opt.frn_codice<>' + quotedstr(promau_frn_codice) + ' ) ) and ');
    query.sql.add('opr.a31data_consegna <=:a ');
    query.sql.add('and opt.situazione in ( ' + quotedstr('inserito') + ', ' + quotedstr('evaso parziale') + ' ) ');

    if filtro_articoli <> '' then
    begin
      query.sql.add(filtro_articoli);
    end;

    if not v_componenti.checked then
    begin
      query.sql.add('and opr.semilavorato=' + quotedstr('si'));
    end;

  end;

  // --------------------------------------------
  // ritardi spedizione c/to terzi da fornitore
  // --------------------------------------------
  if v_ordini_conto_terzi.checked then
  begin
    (*
      if seconda_query then
      begin
      query.sql.add('union all');
      end;

      query.sql.add('select ''4'' tipo_archivio, case when opt.documento_origine=''ordine produzione'' then ''semilavorati'' else ''finiti'' end tipo_articolo, ' + quotedstr(utente) + ' utente, oar.cms_codice, oar.tipologia cmt_codice, oat.frn_codice frn_codice, frn.descrizione1 frn_descrizione1,');
      query.sql.add('0 documento_origine,oar.art_codice, art.descrizione1 art_descrizione1 , art.codice_alternativo art_codice_alternativo, art.frn_codice art_frn_codice,');
      query.sql.add(' '''' terzi_descrizione1, ''no'' semilavorato, oar.data_consegna, (oar.quantita-oar.quantita_evasa) quantita,');
      query.sql.add(' '''' art_codice_finito, '''' cli_codice, '''' cli_descrizione1, nom.e_mail_ordini_fornitori nom_email');
      query.sql.add('from oat');
      query.sql.add('inner join oar on oar.progressivo=oat.progressivo');
      query.sql.add('left join frn on frn.codice=oat.frn_codice');
      query.sql.add('left join nom on nom.codice=frn.codice');
      query.sql.add('left join art on art.codice=oar.art_codice');
      query.sql.add('left join opt on opt.progressivo=oar.doc_progressivo_origine');
      query.sql.add('where');
      query.sql.add('(oar.data_consegna <:da_ritardi ) and');
      query.sql.add('(oar.quantita-oar.quantita_evasa >0)');
      query.sql.add('and oar.documento_origine =''produzione'' ');
      query.sql.add('and oar.situazione in ( ' + quotedstr('inserito') + ', ' + quotedstr('evaso parziale') + ' ) ');
    *)
  end;

  query.sql.add('order by 1,frn_codice, art_codice, data_consegna ');

  if pos(':da ', query.sql.text) > 0 then
    query.parambyname('da').asdatetime := v_data_dal.date;

  if pos(':a ', query.sql.text) > 0 then
    query.parambyname('a').asdatetime := v_data_al.date;

  if pos(':da_ritardi ', query.sql.text) > 0 then
    query.parambyname('da_ritardi').asdatetime := v_data_dal.date;

  query.sql.savetofile('c:\temp\pianif.sql');
  query.open;

  id := 0;
  while not query.eof do
  begin
    controllo_interrompi;

    sequenza := 0;
    id := id + 1;
    if query.fieldbyname('tipo_articolo').asstring = 'spedizione' then
    begin
      ordine_articolo := '1';
      sequenza := 0;
    end
    else if (query.fieldbyname('tipo_articolo').asstring = 'finiti') then
    begin

      ordine_articolo := '2'; // lavorazioni interne
      sequenza := 900000;
      if (query.fieldbyname('frn_codice').asstring <> promau_frn_codice) then
      begin
        ordine_articolo := '3'; // lavorazioni esterne
        sequenza := 800000;
      end;
    end
    else if query.fieldbyname('tipo_articolo').asstring = 'semilavorati' then
    begin

      ordine_articolo := '3'; // lavorazioni esterne
      sequenza := 800000;
      if query.fieldbyname('frn_codice').asstring = promau_frn_codice then
      begin
        ordine_articolo := '2'; // lavorazioni interni
        sequenza := 900000;
      end;
    end
    else
    begin
      ordine_articolo := '4';
      sequenza := 0;
    end;

    frn_codice := query.fieldbyname('frn_codice').asstring;

    if (frn_codice = '') and (query.fieldbyname('cli_codice').asstring = '') then
    begin
      frn_codice := promau_frn_codice;
      // nom_descrizione := query.fieldbyname('frn_descrizione1').asstring;
    end
    else if (frn_codice = '') and (query.fieldbyname('cli_codice').asstring <> '') then
    begin
      frn_codice := query.fieldbyname('cli_codice').asstring;
      // nom_descrizione := query.fieldbyname('nom_descrizione').asstring;
    end
    else
    begin
      frn_codice := query.fieldbyname('frn_codice').asstring;
      // nom_descrizione := query.fieldbyname('frn_descrizione1').asstring;
    end;

    // ------------------------------------------

    // memorizzo i dati
    // ------------------------------------------
    if query.fieldbyname('tipo_articolo').asstring = 'componenti' then
    begin
      if (v_componenti.checked) or (v_controllo_giacenza_materia_prima.checked) then
      begin
        memorizza_componenti;
      end;
    end
    else
    begin
      memorizza_finiti_semilavorati(id, frn_codice, ordine_articolo);
    end;

    query.next;
  end;

  // -----------------------------------------
  // memorizza lavorazioni
  // -----------------------------------------
  if v_lavorazioni.checked then
  begin
    carica_lavorazione_finiti;
  end;

  // -----------------------------------------
  // controllo giacenza componenti
  // -----------------------------------------
  if v_controllo_giacenza_materia_prima.checked then
  begin
    controllo_giacenza_componenti;
  end;

  if tool_email.down or tool_pdf.down then
  begin

    query_invio_email.close;
    query_invio_email.sql.clear;
    query_invio_email.sql.add('select distinct frn_codice,email, nom_descrizione, data_ora from arc_ordinamento.promau_pianif');
    query_invio_email.sql.add('where');
    if tool_email.down then
    begin
      query_invio_email.sql.add('utn_codice=:utn_codice and email<>'''' and ');
    end;
    query_invio_email.sql.add('utn_codice=:utn_codice  and');
    query_invio_email.sql.add('nom_descrizione <>''''  ');

    query_invio_email.sql.add('order by 1');
    query_invio_email.parambyname('utn_codice').asstring := utente;
    query_invio_email.open;

    if query_invio_email.eof then
    begin
      messaggio(000, 'non ci sono nominativi con l''email abilitata' + #13 + 'per la spedizione della pianificazione ');
    end
    else
    begin

      if tool_pdf.down then
      begin
        cartella_file_pdf := cartella_file_pdf + '\pianificazione\pdf';
        forcedirectories(cartella_file_pdf);
      end;

      ppreport.DeviceType := 'PDF';
      ppreport.AllowPrintToFile := true;
      ppreport.ShowPrintDialog := false;

      testo_email := 'Vi inviamo in allegato pdf della pianificazione aggiornata al ' + datetostr(now) + #13 + #10;
      testo_email := testo_email + #13 + #10;
      testo_email := testo_email + #13 + #10;
      testo_email := testo_email + #13 + #10;
      testo_email := testo_email + 'Cordiali saluti' + #13 + #10;
      testo_email := testo_email + 'PROMAU SPA' + #13 + #10;
      testo_email := testo_email + 'PLANNING AND LOGISTIC DPT';

      testo_mail_tdo := testo_email;
      while not query_invio_email.eof do
      begin

        lista_allegati_01.clear;

        if tool_email.down then
        begin
          nom_email := query_invio_email.fieldbyname('email').asstring;
          soggetto_email := v_oggetto_email.text;
        end
        else
        begin
          nom_email := '';
          soggetto_email := '';
        end;

        frn_codice := query_invio_email.fieldbyname('frn_codice').asstring;
        while not(query_invio_email.eof) and (frn_codice = query_invio_email.fieldbyname('frn_codice').asstring) do
        begin
          nome_file_email_pdf_forzato := cartella_file_pdf + '\PIANIFICAZ_' + frn_codice + '_' + query_invio_email.fieldbyname('nom_descrizione').asstring + '_' + formatdatetime('yyyyy_mm_dd', now) + '.pdf';

          inherited;
          query_invio_email.next;
        end;

        sor.filter := '';
        sor.filtered := false;

      end;

    end
  end
  else
  begin
    inherited;
  end;

end;

procedure TA31STAPIANIF.stampa;
begin
  // ----------------------------------
  // PIANIFICAZIONE
  // ----------------------------------
  sor_ds.DataSet := query_sor;
  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('select p.*,art.tcm_codice from promau_pianif p');
  query_sor.sql.add('inner join arc_' + ditta + '.art on art.codice=p.art_codice');
  query_sor.sql.add('where');
  query_sor.sql.add('p.utn_codice=:utn_codice');

  if tool_email.down or tool_pdf.down then
  begin
    nome_file_email_pdf := 'PIANIFICAZ_' + query_invio_email.fieldbyname('frn_codice').asstring + '_' + query_invio_email.fieldbyname('nom_descrizione').asstring + '_' + formatdatetime('yyyyy_mm_dd', now);
    query_sor.sql.add('and p.frn_codice=' + quotedstr(query_invio_email.fieldbyname('frn_codice').asstring));
  end;

  if filtro_articoli <> '' then
  begin
    query_sor.sql.add(filtro_articoli);
  end;

  query_sor.sql.add('order by p.utn_codice, ordine_articolo, nom_descrizione, art_codice, sequenza, fas_codice ');
  query_sor.parambyname('utn_codice').asstring := utente;
  // query_sor.sql.savetofile('c:\temp\01_sor_pianif.sql');
  query_sor.open;

  // ----------------------------------
  // COMPONENTI
  // ----------------------------------

  sor1_ds.DataSet := query_sor1;

  query_sor1.close;
  query_sor1.sql.clear;
  query_sor1.sql.add('select p.*,art.tcm_codice from promau_componenti p');
  query_sor1.sql.add('inner join arc_' + ditta + '.art on art.codice=p.art_codice');
  query_sor1.sql.add('where');
  query_sor1.sql.add('utn_codice=:utn_codice');
  query_sor1.sql.add('order by utn_codice,frn_codice,art_codice, art_codice_componente ');

  query_sor1.MasterSource := sor_ds;
  query_sor1.DetailFields := 'UTN_CODICE;FRN_CODICE;ART_CODICE';

  query_sor1.parambyname('utn_codice').asstring := utente;
  // query_sor1.sql.savetofile('c:\temp\02_sor_componenti.sql');
  query_sor1.open;

  query_sor2.close;
  query_sor2.sql.clear;
  query_sor2.sql.add('select * from promau_pianif');
  query_sor2.sql.add('where');
  query_sor2.sql.add('id=:id');

  inherited;
end;

procedure TA31STAPIANIF.tool_stampa_pdfClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TA31STAPIANIF.carica_lavorazione_finiti;
var
  I: integer;
  nome_colonna: string;
begin

  self.update;

  query.close;
  query_sor.sql.clear;
  query_sor.sql.add('select * from promau_pianif');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice and ');
  query_sor.sql.add('cli_codice=:cli_codice and ');
  query_sor.sql.add('frn_codice=:frn_codice and ');
  query_sor.sql.add('art_codice=:art_codice ');
  // query_sor.sql.add('tipo_articolo in (''finiti'',''semilavorati'') ');
  // query_sor.sql.add('order by ordine_articolo');

  query.close;
  query.sql.clear;
  query.sql.add('select ''PROD'' tipo_record ,opt.a31cli_codice cli_codice, case when opt.frn_codice = '''' then ''00001651'' else opt.frn_codice  end frn_codice, opt.art_codice, opt.progressivo opt_progressivo ,  ');
  query.sql.add('case when opc.sequenza='''' then 0 else opc.sequenza end sequenza, opc.fas_codice, fas.descrizione fas_descrizione, ');
  query.sql.add('cla.gg_anticipo, opc.data_consegna, opc.quantita , opc.situazione , nom.descrizione1 nom_descrizione, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1, arcl.codice_articolo_cliente arc_codice_articolo_cliente, ');
  query.sql.add('from opc');
  query.sql.add('inner join opt on opt.progressivo=opc.progressivo');
  query.sql.add('left join nom on nom.codice=opt.frn_codice');
  query.sql.add('left join art on art.codice=opt.art_codice');
  query.sql.add('left join arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=opt.a31cli_codice');
  query.sql.add('inner join cla on cla.art_codice=opt.art_codice and cla.sequenza = opc.sequenza and cla.fas_codice=opc.fas_codice');
  query.sql.add('inner join fas on fas.codice=opc.fas_codice');
  query.sql.add('where');
  if not v_ordini_clienti.checked then
  begin
    query.sql.add('( ( opt.frn_codice='''') or ( opt.frn_codice=' + quotedstr(promau_frn_codice) + ' ) ) and ');
  end;

  query.sql.add('(opc.data_consegna <= :a ) and');
  query.sql.add('(opc.situazione <> ''completata'') ');

  query.sql.add('union all');
  query.sql.add('select ''RIT'' tipo_record , lav_t.cli_codice,  case when lav_t.frn_codice='''' then ''00001651'' else lav_t.frn_codice end frn_codice , lav_t.art_codice art_codice, lav_t.progressivo opt_progressivo , ');
  query.sql.add('case when lav.sequenza='''' then 0 else lav.sequenza end sequenza, lav.fas_codice, fas.descrizione fas_descrizione, ');
  query.sql.add('cla.gg_anticipo, lav.data_consegna, lav.quantita , opc.situazione ,nom.descrizione1 nom_descrizione, concat(art.descrizione1, '' '', art.descrizione2) art_descrizione1, arcl.codice_articolo_cliente arc_codice_articolo_cliente, ');
  query.sql.add('from promau_ritardi_lavorazioni lav');
  query.sql.add('inner join promau_ritardi lav_t on lav_t.progressivo=lav.progressivo');
  query.sql.add('left join nom on nom.codice=lav_t.frn_codice');
  query.sql.add('left join art on art.codice=lav_t.art_codice');
  query.sql.add('left join arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=lav_t.cli_codice');
  query.sql.add('inner join opc on opc.progressivo=lav.progressivo and opc.sequenza=lav.sequenza and opc.fas_codice=lav.fas_codice');
  query.sql.add('inner join cla on cla.art_codice=lav_t.art_codice and cla.sequenza = lav.sequenza and cla.fas_codice=lav.fas_codice');
  query.sql.add('inner join fas on fas.codice=lav.fas_codice');
  query.sql.add('where');
  query.sql.add('( opc.situazione <> ''completata'' ) ');

  query.sql.add('order by 1,2,3,4,5 ');

  // query.parambyname('da').asdatetime := v_data_dal.date;
  query.sql.savetofile('c:\temp\lavorazioni.sql');
  query.params.items[0].datatype := ftdate;
  query.params.items[0].asdatetime := v_data_al.date;

  query.open;

  while not query.eof do
  begin
    controllo_interrompi;

    frn_codice := query.fieldbyname('frn_codice').asstring;
    if query.fieldbyname('frn_codice').asstring = '' then
    begin
      frn_codice := promau_frn_codice;
    end;

    query_sor2.close;
    query_sor2.parambyname('utn_codice').asstring := utente;
    query_sor2.parambyname('frn_codice').asstring := query.fieldbyname('frn_codice').asstring;
    query_sor2.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    query_sor2.parambyname('sequenza').asinteger := query.fieldbyname('sequenza').asinteger;
    query_sor2.parambyname('fas_codice').asstring := query.fieldbyname('fas_codice').asstring;
    query_sor2.open;
    if query_sor2.eof then
    begin
      query_sor2.append;
      query_sor2.fieldbyname('utn_codice').asstring := utente;
      query_sor2.fieldbyname('tipo_archivio').asstring := '2';
      query_sor2.fieldbyname('ordine_articolo').asstring := '3';
      query_sor2.fieldbyname('tipo_articolo').asstring := 'lavorazioni';

      query_sor2.fieldbyname('frn_codice').asstring := query.fieldbyname('frn_codice').asstring;
      query_sor2.fieldbyname('cli_codice').asstring := query.fieldbyname('cli_codice').asstring;
      query_sor2.fieldbyname('nom_descrizione').asstring := query.fieldbyname('nom_descrizione').asstring;

      if query_sor2.fieldbyname('frn_codice').asstring = promau_frn_codice then
      begin
        query_sor2.fieldbyname('ordine_articolo').asstring := '2';
        query_sor2.fieldbyname('nom_descrizione').asstring := frn_promau.fieldbyname('descrizione1').asstring;
      end;

      query_sor2.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
      query_sor2.fieldbyname('art_codice_padre').asstring := query.fieldbyname('art_codice').asstring;
      query_sor2.fieldbyname('art_descrizione1').asstring := query.fieldbyname('art_descrizione1').asstring;
      query_sor2.fieldbyname('fas_codice').asstring := query.fieldbyname('fas_codice').asstring;
      query_sor2.fieldbyname('sequenza').asinteger := query.fieldbyname('sequenza').asinteger;
      query_sor2.fieldbyname('gg_anticipo').asinteger := query.fieldbyname('gg_anticipo').asinteger;
      query_sor2.fieldbyname('fas_descrizione').asstring := query.fieldbyname('fas_descrizione').asstring;
      query_sor2.fieldbyname('planner').asstring := utente_descrizione;
      query_sor2.fieldbyname('dalla_data_consegna').asdatetime := v_data_al.date; // 23.01.2018
      query_sor2.post;

    end;

    query_sor2.edit;

    nome_colonna := '';

    if (query.fieldbyname('data_consegna').asdatetime < adata_consegna[0]) or (query.fieldbyname('tipo_record').asstring = 'RIT') then
    begin
      nome_colonna := 'nr_col_00';
    end
    // ---- previsione futura
    else if query.fieldbyname('data_consegna').asdatetime >= adata_consegna[10] then
    begin
      nome_colonna := 'nr_col_11';
    end
    else
    begin
      // ---- planning

      for i := 0 to 9 do
      begin

        if query.fieldbyname('data_consegna').asdatetime = adata_consegna[i] then
        begin
          nome_colonna := 'nr_col_' + setta_lunghezza(inttostr(i + 1), 2, true, '0');
          break;
        end;

      end;

    end; //

    if nome_colonna > '' then
    begin
      query_sor2.fieldbyname(nome_colonna).asfloat := query_sor2.fieldbyname(nome_colonna).asfloat + query.fieldbyname('quantita').asfloat;
    end;

    if (query_sor2.fieldbyname('data_consegna').asdatetime = 0) and (v_ordinamento_lavorazioni.itemindex = 0) then
    begin
      query_sor2.fieldbyname('data_consegna').asdatetime := query.fieldbyname('data_consegna').asdatetime;
    end;

    query_sor2.fieldbyname('utente').asstring := utente;
    query_sor2.fieldbyname('data_ora_creazione').asdatetime := now;
    query_sor2.fieldbyname('dalla_data_consegna').asdatetime := v_data_al.date; // 23.01.2018
    query_sor2.post;

    query.next;
  end;

  query.close;

  sor.close;
  sor.open;
end;

procedure TA31STAPIANIF.assegna_nome_file_email_pdf(campo: string; dataset: Tdataset);
var
  descrizione: string;
begin

  if arc.dit.fieldbyname(campo).asstring <> 'nessuno' then
  begin
    if nome_file_email_pdf <> '' then
    begin
      nome_file_email_pdf := nome_file_email_pdf + '_';
    end;

    if arc.dit.fieldbyname(campo).asstring = 'tipo documento' then
    begin
      if arc.dit.fieldbyname('descrizione_campi_pdf').asstring = 'si' then
      begin
        nome_file_email_pdf := nome_file_email_pdf + 'documento_' + setta_lunghezza(tipo_documento, 30);
      end
      else
      begin
        nome_file_email_pdf := nome_file_email_pdf + setta_lunghezza(tipo_documento, 30);
      end;
    end
    else if arc.dit.fieldbyname(campo).asstring = 'intestatario' then
    begin
      if arc.dit.fieldbyname('descrizione_campi_pdf').asstring = 'si' then
      begin
        nome_file_email_pdf := nome_file_email_pdf + 'intestatario_' + setta_lunghezza(dataset.fieldbyname('frn_codice').asstring, 8);
      end
      else
      begin
        nome_file_email_pdf := nome_file_email_pdf + setta_lunghezza(query_email_pdf.fieldbyname('frn_codice').asstring, 8);
      end;
      descrizione := '_' + dataset.fieldbyname('nom_descrizione').asstring;
      descrizione := stringreplace(descrizione, ' ', '_', [rfreplaceall]);
      nome_file_email_pdf := nome_file_email_pdf + setta_lunghezza(descrizione, 40);
    end
    else if arc.dit.fieldbyname(campo).asstring = 'data documento' then
    begin
      if arc.dit.fieldbyname('descrizione_campi_pdf').asstring = 'si' then
      begin
        nome_file_email_pdf := nome_file_email_pdf + 'data_' + formatdatetime('yyyy_mm_dd', dataset.fieldbyname('data_ora').asdatetime);
      end
      else
      begin
        nome_file_email_pdf := nome_file_email_pdf + formatdatetime('yyyy_mm_dd', dataset.fieldbyname('data_ora').asdatetime);
      end;
    end
    else if arc.dit.fieldbyname(campo).asstring = 'numero documento' then
    begin
      (*
        if arc.dit.eldbyname('descrizione_campi_pdf').asstring = 'si' then
        begin
        nome_file_email_pdf := nome_file_email_pdf + 'numero_' + formatfloat('000000000', query_email_pdf.fieldbyname('numero_documento').asfloat);
        end
        else
        begin
        nome_file_email_pdf := nome_file_email_pdf + formatfloat('000000000', query_email_pdf.fieldbyname('numero_documento').asfloat);
        end;
      *)
    end
    else if arc.dit.fieldbyname(campo).asstring = 'serie documento' then
    begin
      (*
        if arc.dit.fieldbyname('descrizione_campi_pdf').asstring = 'si' then
        begin
        nome_file_email_pdf := nome_file_email_pdf + 'serie_' + setta_lunghezza(query_email_pdf.fieldbyname('serie_documento').asstring, 4);
        end
        else
        begin
        nome_file_email_pdf := nome_file_email_pdf + setta_lunghezza(query_email_pdf.fieldbyname('serie_documento').asstring, 4);
        end;
      *)
    end;
  end;
end;

procedure TA31STAPIANIF.memorizza_componenti;
var
  i: integer;
begin

  if not sor1.locate('utn_codice;frn_codice;art_codice;art_codice_componente', vararrayof([utente, frn_codice, query.fieldbyname('art_codice_finito').asstring, query.fieldbyname('art_codice').asstring]), []) then
  begin

    sor1.append;

    sor1.fieldbyname('utente').asstring := utente;
    // sor1.fieldbyname('cli_codice').asstring := query.fieldbyname('cli_codice').asstring;
    sor1.fieldbyname('frn_codice').asstring := frn_codice;
    sor1.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice_finito').asstring;

    sor1.fieldbyname('art_codice_componente').asstring := query.fieldbyname('art_codice').asstring;
    sor1.post;
  end;

  sor1.edit;
  sor1.fieldbyname('art_descrizione1').asstring := query.fieldbyname('art_descrizione1').asstring;

  nome_colonna := '';

  if query.fieldbyname('data_consegna').asdatetime < adata_consegna[0] then
  begin
    nome_colonna := 'nr_col_00';
  end
  // ---- previsione futura
  else if query.fieldbyname('data_consegna').asdatetime >= adata_consegna[10] then
  begin
    nome_colonna := 'nr_col_11';
  end
  else
  begin
    // ---- planning

    for i := 0 to 9 do
    begin

      if query.fieldbyname('data_consegna').asdatetime = adata_consegna[i] then
      begin
        nome_colonna := 'nr_col_' + setta_lunghezza(inttostr(i + 1), 2, true, '0');
        break;
      end;

    end;

  end; //

  if nome_colonna > '' then
  begin
    sor1.fieldbyname(nome_colonna).asfloat := sor1.fieldbyname(nome_colonna).asfloat + query.fieldbyname('quantita').asfloat;
  end;

  sor1.post;
end;

procedure TA31STAPIANIF.memorizza_finiti_semilavorati(progressivo: integer; frn_codice, ordine_articolo: string);
var
  i: integer;
begin

  if not sor.locate('utente;frn_codice;ordine_articolo;art_codice', vararrayof([utente, frn_codice, ordine_articolo, query.fieldbyname('art_codice').asstring]), []) then
  begin
    sor.append;
    // sor.fieldbyname('progressivo').asinteger :=progressivo;
    sor.fieldbyname('utente').asstring := utente;

    sor.fieldbyname('ordine_articolo').asstring := ordine_articolo;
    sor.fieldbyname('cli_codice').asstring := query.fieldbyname('cli_codice').asstring;

    sor.fieldbyname('frn_codice').asstring := frn_codice;
    if query.fieldbyname('frn_codice').asstring = promau_frn_codice then
    begin
      sor.fieldbyname('frn_descrizione1').asstring := frn_promau.fieldbyname('descrizione1').asstring;
      sor.fieldbyname('nom_descrizione').asstring := frn_promau.fieldbyname('descrizione1').asstring;
    end
    else
    begin
      sor.fieldbyname('frn_descrizione1').asstring := query.fieldbyname('frn_descrizione1').asstring;
      sor.fieldbyname('nom_descrizione').asstring := query.fieldbyname('nom_descrizione').asstring;
    end;
    sor.fieldbyname('tipo_archivio').asstring := '1';

    sor.fieldbyname('tipo_articolo').asstring := query.fieldbyname('tipo_articolo').asstring;

    sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    sor.fieldbyname('art_descrizione1').asstring := query.fieldbyname('art_descrizione1').asstring;
    sor.fieldbyname('art_codice_alternativo').asstring := query.fieldbyname('art_codice_alternativo').asstring;
    sor.fieldbyname('arc_codice_articolo_cliente').asstring := query.fieldbyname('arc_codice_articolo_cliente').asstring;
    sor.fieldbyname('codice_stampo').asstring := query.fieldbyname('codice_stampo').asstring;

    if (query.fieldbyname('tipo_articolo').asstring = 'spedizione') then
    begin
      // finito del cliente
      sor.fieldbyname('nom_descrizione').asstring := query.fieldbyname('nom_descrizione').asstring;
      sor.fieldbyname('descrizione_magazzino').asstring := query.fieldbyname('nom_descrizione').asstring;

      sor.fieldbyname('frn_codice').asstring := query.fieldbyname('cli_codice').asstring;
      sor.fieldbyname('frn_descrizione1').asstring := query.fieldbyname('nom_descrizione').asstring;

    end
    else if (query.fieldbyname('documento_origine').asstring = 'ordine ven') and (query.fieldbyname('tipo_articolo').asstring = 'finiti') then
    begin
      // finito produzione
      sor.fieldbyname('art_codice_padre').asstring := query.fieldbyname('art_codice_finito').asstring;
      sor.fieldbyname('descrizione_magazzino').asstring := 'MAGAZZINO PRODUZIONE';

      if query.fieldbyname('frn_codice').asstring = promau_frn_codice then
      begin
        sor.fieldbyname('nom_descrizione').asstring := frn_promau.fieldbyname('descrizione1').asstring;
        sor.fieldbyname('frn_descrizione1').asstring := frn_promau.fieldbyname('descrizione1').asstring;
      end
      else
      begin
        sor.fieldbyname('nom_descrizione').asstring := query.fieldbyname('frn_descrizione1').asstring;
        sor.fieldbyname('frn_descrizione1').asstring := query.fieldbyname('frn_descrizione1').asstring;
      end;

    end
    else if (sor.fieldbyname('tipo_articolo').asstring = 'semilavorati') and (query.fieldbyname('semilavorato').asstring = 'si') then
    begin
      // SEMILAROVATO
      sor.fieldbyname('art_codice_padre').asstring := query.fieldbyname('art_codice_finito').asstring;
      if query.fieldbyname('terzi_descrizione1').asstring = '' then
      begin
        sor.fieldbyname('descrizione_magazzino').asstring := 'PRODUZIONE';
      end
      else
      begin
        // semilavorato che serve come componente ad un terzista
        sor.fieldbyname('descrizione_magazzino').asstring := query.fieldbyname('terzi_descrizione1').asstring;
      end;

    end
    else if (query.fieldbyname('documento_origine').asstring = 'ordine ven') and (query.fieldbyname('semilavorato').asstring = 'no') then
    begin
      // componente finito
      sor.fieldbyname('art_codice_padre').asstring := query.fieldbyname('art_codice_finito').asstring;
      sor.fieldbyname('descrizione_magazzino').asstring := 'MAGAZZINO';
    end
    else if (sor.fieldbyname('frn_codice').asstring <> '') and (query.fieldbyname('semilavorato').asstring = 'no') then
    begin
      // componente semilavorato
      sor.fieldbyname('descrizione_magazzino').asstring := 'MAGAZZINO';
    end
    else if (query.fieldbyname('documento_origine').asstring = 'ordine produzione') and (sor.fieldbyname('frn_codice').asstring <> '') and (query.fieldbyname('semilavorato').asstring = 'si') then
    begin
      sor.fieldbyname('descrizione_magazzino').asstring := 'LAVORAZIONE ' + query.fieldbyname('terzi_descrizione1').asstring;
    end;

    if sor.fieldbyname('frn_codice').asstring = promau_frn_codice then
    begin
      sor.fieldbyname('nom_descrizione').asstring := frn_promau.fieldbyname('descrizione1').asstring;
      sor.fieldbyname('frn_descrizione1').asstring := frn_promau.fieldbyname('descrizione1').asstring;
    end;

    sor.fieldbyname('data_ora_creazione').asdatetime := data_ora;

    sor.fieldbyname('planner').asstring := utente_descrizione;
    sor.fieldbyname('email').asstring := query.fieldbyname('nom_email').asstring;

    if sor.fieldbyname('email').asstring = '' then
    begin
      sor.fieldbyname('email').asstring := user_mail;
    end;

    if sor.fieldbyname('data_consegna').asdatetime = 0 then
    begin
      sor.fieldbyname('data_consegna').asdatetime := query.fieldbyname('data_consegna').asdatetime;
    end;
    sor.fieldbyname('dalla_data_consegna').asdatetime := v_data_al.date; // 23.01.2018

    // 18.05.2018 ultimo ddt consegna fornitore
    if ordine_articolo = '3' then
    begin
      dat.close;
      dat.parambyname('frn_codice').asstring := sor.fieldbyname('frn_codice').asstring;
      dat.open;
      if not dat.eof then
      begin
        sor.fieldbyname('ddt_data_documento').asdatetime := dat.fieldbyname('data_documento').asdatetime;
        sor.fieldbyname('ddt_numero_documento').asinteger := dat.fieldbyname('numero_documento').asinteger;
      end;
    end;

    sor.post;
  end;

  sor.edit;

  nome_colonna := '';
  try
    sor.fieldbyname('data_consegna').asdatetime := query.fieldbyname('data_consegna').asdatetime;

    // ---- ritardo spedizioni da ordini clienti
    if query.fieldbyname('tipo_archivio').asstring = '2' then
    begin
      sor.fieldbyname('nr_col_00').asfloat := sor.fieldbyname('nr_col_00').asfloat + query.fieldbyname('quantita').asfloat;
    end
    // ----- ritardo spedizioni clienti/Semilavorati da foglio excel
    else if query.fieldbyname('tipo_archivio').asstring = '3' then
    begin
      sor.fieldbyname('nr_col_00').asfloat := sor.fieldbyname('nr_col_00').asfloat + query.fieldbyname('quantita').asfloat;
    end
    // ----- ritardo spedizioni semilavorati da ordini fornitori c/lavoro
    else if query.fieldbyname('tipo_archivio').asstring = '4' then
    begin
      sor.fieldbyname('nr_col_00').asfloat := sor.fieldbyname('nr_col_00').asfloat + query.fieldbyname('quantita').asfloat;
    end

    else
    begin

      if query.fieldbyname('data_consegna').asdatetime < adata_consegna[0] then
      begin
        nome_colonna := 'nr_col_00';
      end
      // ---- previsione futura
      else if query.fieldbyname('data_consegna').asdatetime >= adata_consegna[10] then
      begin
        nome_colonna := 'nr_col_11';
      end
      else
      begin
        // ---- planning

        for i := 0 to 9 do
        begin

          if query.fieldbyname('data_consegna').asdatetime <= adata_consegna[i] + 6 then
          begin
            nome_colonna := 'nr_col_' + setta_lunghezza(inttostr(i + 1), 2, true, '0');
            break;
          end;

        end;

      end; //

      if nome_colonna > '' then
      begin
        sor.fieldbyname(nome_colonna).asfloat := sor.fieldbyname(nome_colonna).asfloat + query.fieldbyname('quantita').asfloat;
      end;

    end;
    // sor.fieldbyname('progressivo').asinteger := sequenza;
    sor.fieldbyname('sequenza').asinteger := sequenza;
    sor.post;

  except
    raise;
  end;

end;

procedure TA31STAPIANIF.controllo_giacenza_componenti;
var
  i: integer;
  nome_campo, nome_campo2: string;
begin

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('delete from promau_mag');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice');
  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.execsql;

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('insert into promau_mag(utn_codice, art_codice)');
  query_sor.sql.add('select distinct ' + quotedstr(utente) + ',' + 'art_codice_componente');
  query_sor.sql.add('from promau_componenti');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice');
  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.execsql;

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('update promau_mag');
  query_sor.sql.add('set esistenza = ( select sum(mag.esistenza) from arc_' + ditta + '.mag where mag.tma_codice<>:tma_codice and mag.art_codice=promau_mag.art_codice )');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice');

  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.execsql;

  //------------------------------------------------------
  // controllo per settimana giacenza di componenti
  //------------------------------------------------------
  for i := 0 to 11 do
  begin

    if i < 10 then
    begin
      nome_campo := 'nr_col_0' + inttostr(i);
      nome_campo2 := 'disp_col_0' + inttostr(i);
    end
    else
    begin
      nome_campo := 'nr_col_' + inttostr(i);
      nome_campo2 := 'disp_col_' + inttostr(i);
    end;

    controlla_componenti_settimana(nome_campo, nome_campo2);

    query_sor2.close;
    query_sor2.sql.clear;
    query_sor2.sql.add('update promau_componenti');
    query_sor2.sql.add('set ' + nome_campo2 + '='''' ');
    query_sor2.sql.add('where');
    query_sor2.sql.add('utn_codice=:utn_codice and ');
    query_sor2.sql.add(nome_campo + '=0');
    query_sor2.parambyname('utn_codice').asstring := utente;
    query_sor2.execsql;
  end; // for

  if not v_componenti.checked then
  begin
    query_sor.close;
    query_sor.sql.clear;
    query_sor.sql.add('delete from promau_componenti');
    query_sor.sql.add('where');
    query_sor.sql.add('utn_codice=:utn_codice');
    query_sor.parambyname('utn_codice').asstring := utente;
    query_sor.execsql;
  end;

end;

procedure TA31STAPIANIF.controlla_componenti_settimana(nome_campo, nome_campo2: string);
begin

  query_sor2.close;
  query_sor2.sql.clear;
  query_sor2.sql.add('update promau_mag');
  query_sor2.sql.add('set esistenza=esistenza-:quantita, ' + nome_campo + '=' + nome_campo + '+:quantita2 ');
  query_sor2.sql.add('where');
  query_sor2.sql.add('utn_codice=:utn_codice and ');
  query_sor2.sql.add('art_codice=:art_codice');

  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('select c.*');
  query_sor.sql.add('from promau_componenti c');
  query_sor.sql.add('inner join promau_pianif p on p.utn_codice=c.utn_codice and p.frn_codice=c.frn_codice and p.art_codice=c.art_codice ');
  query_sor.sql.add('where');
  query_sor.sql.add('c.utn_codice=:utn_codice and ');
  query_sor.sql.add('c.' + nome_campo + ' >0');
  query_sor.sql.add('order by c.frn_codice, c.art_codice, c.art_codice_componente');
  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.open;

  while not query_sor.eof do
  begin

    if query_sor.fieldbyname(nome_campo).asfloat > 0 then
    begin

      // aggiorno esistenza
      query_sor2.close;
      query_sor2.parambyname('quantita').asfloat := query_sor.fieldbyname(nome_campo).asfloat;
      query_sor2.parambyname('quantita2').asfloat := query_sor.fieldbyname(nome_campo).asfloat;
      query_sor2.parambyname('utn_codice').asstring := utente;
      query_sor2.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice_componente').asstring;
      query_sor2.execsql;

      query_sor1.close;
      query_sor1.sql.clear;
      query_sor1.sql.add('select esistenza');
      query_sor1.sql.add('from promau_mag');
      query_sor1.sql.add('where');
      query_sor1.sql.add('utn_codice=:utn_codice');
      query_sor1.parambyname('utn_codice').asstring := utente;
      query_sor1.open;

      if query_sor1.fieldbyname('esistenza').asfloat < 0 then
      begin
        query_sor1.close;
        query_sor1.sql.clear;
        query_sor1.sql.add('update promau_componenti');
        query_sor1.sql.add('set ' + nome_campo2 + '=''no'' ');
        query_sor1.execsql;

        query_sor1.close;
        query_sor1.sql.clear;
        query_sor1.sql.add('update promau_pianif');
        query_sor1.sql.add('set ' + nome_campo2 + '=''no'' ');
        query_sor1.execsql;

      end;

    end; // if

    query_sor.next;
  end; // while

end;

initialization

registerclass(ta31stapianif);

end.
