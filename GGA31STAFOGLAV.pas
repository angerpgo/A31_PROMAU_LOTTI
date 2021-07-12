unit GGA31STAFOGLAV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGSTAMPA, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, raizeedit_go, Data.DB, VirtualTable, ppVar, ppBands, ppClass,
  ppParameter, ppDesignLayer, ppCtrls, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, MyAccess, query_go, DBAccess, MemDS,
  Vcl.Menus, Vcl.ComCtrls, RzButton, RzCmboBx, Vcl.Buttons, RzSpnEdt, RzLabel,
  Vcl.ExtCtrls, RzPanel, Vcl.ToolWin, ppBarCode2D, EnJpgGr, ppStrtch, ppRegion,
  ppSubRpt;

type
  TA31STAFOGLAV = class(TSTAMPA)
    v_data_consegna: trzdatetimeedit_go;
    Label5: TRzLabel;
    Panel1: TRzPanel;
    v_selart: TRzRapidFireButton;
    v_selcli: TRzRapidFireButton;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppRegion1: TppRegion;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDB2DBarCode1: TppDB2DBarCode;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppRegion2: TppRegion;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDesignLayer3: TppDesignLayer;
    ppPageStyle1: TppPageStyle;
    ppDBText10: TppDBText;
    ppRegion3: TppRegion;
    ppDBText4: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    Label4: TRzLabel;
    v_dal_progressivo: trznumericedit_go;
    RzLabel1: TRzLabel;
    v_al_progressivo: trznumericedit_go;
    Label9: TRzLabel;
    v_situazione: trzcombobox_go;
    procedure v_confermaClick(Sender: TObject);
    procedure v_data_consegnaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
    procedure v_selcliClick(Sender: TObject);
    procedure v_al_progressivoExit(Sender: TObject);
    procedure v_al_progressivoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  protected
    art_codice_passato, cli_codice_passato, cfg_codice_passato: string;

    selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice, selezione_art_frn_codice,
      da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice: string;
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista, art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista: tstringlist;
    tasto_escape_art, art_escludi_obsoleti, art_eseguito: boolean;
    //
    selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice, selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice, a_cli_tag_codice, selezione_cli_tcc_codice,
      da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice: string;
    cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista, cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista: tstringlist;
    tasto_escape_cli, cli_escludi_obsoleti, cli_eseguito: boolean;
    procedure al_progressivo_controllo;
    procedure assegna_valore_data_consegna;
    procedure call_selart;
    procedure call_selcli;
  public
    procedure stampa; override;
    procedure esegue_stampa; override;
  end;

var
  A31STAFOGLAV: TA31STAFOGLAV;

implementation

{$r *.dfm}

uses DMARC, ZZLIBRERIE;

procedure TA31STAFOGLAV.FormCreate(Sender: TObject);
begin
  inherited;
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

procedure TA31STAFOGLAV.FormDestroy(Sender: TObject);
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

procedure TA31STAFOGLAV.FormShow(Sender: TObject);
begin
  Self.codice := parametri_extra_programma_chiamato[0];
  inherited;
  if vartype(Self.codice) = varinteger then
  begin
    query_righe.close;
    query_righe.params[0].asinteger := Self.codice;
    query_righe.open;
    if not query_righe.eof then
    begin
      v_dal_progressivo.value := query_righe.fieldbyname('progressivo').asfloat;
      v_al_progressivo.value := query_righe.fieldbyname('progressivo').asfloat;
      v_data_consegna.date := query_righe.fieldbyname('data_consegna').asdatetime;

      if v_conferma.canfocus then
      begin
        v_conferma.setfocus;
      end;
    end;
  end;
end;

procedure TA31STAFOGLAV.v_al_progressivoEnter(Sender: TObject);
begin
  inherited;
  if v_al_progressivo.value = 0 then
  begin
    v_al_progressivo.value := v_dal_progressivo.value;
    v_al_progressivo.selectall;
  end;
end;

procedure TA31STAFOGLAV.v_al_progressivoExit(Sender: TObject);
begin
  inherited;
  al_progressivo_controllo;
end;

procedure TA31STAFOGLAV.al_progressivo_controllo;
begin
  if controllo then
  begin
    if v_al_progressivo.value = 0 then
    begin
      v_al_progressivo.value := 999999999;
    end;
  end;
end;

procedure TA31STAFOGLAV.v_confermaClick(Sender: TObject);
begin
  inherited;
  esegue_stampa;
end;

procedure TA31STAFOGLAV.stampa;
begin
  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('f.data_consegna, f.data_ora_creazione, ');
  query.sql.add('f.progressivo,');
  query.sql.add('f.art_codice,');
  query.sql.add('f.codice_articolo_cliente,');
  query.sql.add('f.a31art_esponente,');
  query.sql.add('art.descrizione1 art_descrizione1,');
  query.sql.add('art.descrizione2 art_descrizione2,');
  query.sql.add('art.tum_codice,');
  query.sql.add('arcl.descrizione_articolo_cliente,');
  query.sql.add('art.quantita_collo,');
  query.sql.add('f.data_consegna,');
  query.sql.add('f.qta_da_produrre,');
  query.sql.add('opt.quantita quantita_finito,');
  query.sql.add('date_format(f.data_ora_creazione ,''%d%m%y''  ) lotto,');
  query.sql.add('art.a31art_codice_stampo stampo,');
  query.sql.add('art.a31art_codice_imballo imballo,');
  query.sql.add('art.titolo_pagina_virtuemart note_imballo,');
  query.sql.add('art.quantita_collo quantita_per_collo,');
  query.sql.add('art.pezzi_confezione pezzi_per_confezione,');
  query.sql.add('opr.art_codice art_codice_comp,');
  query.sql.add('artc.descrizione1 art_descrizione1_comp,');
  query.sql.add('artc.tum_codice art_tum_codice_comp,');
  query.sql.add('opr.quantita quantita_comp,');
  query.sql.add('f.qta_prodotta,');
  query.sql.add('(opr.quantita-opr.quantita_evasa) quantita,');
  query.sql.add('opr.quantita_evasa quantita_evasa');
  query.sql.add('from a31foglav f ');
  query.sql.add('left join opt on opt.a31foglav_progressivo=f.progressivo');
  query.sql.add('left join opr on opr.progressivo=opt.progressivo');
  query.sql.add('left join art on art.codice=f.art_codice');
  query.sql.add('left join cli on cli.codice=f.cli_codice');
  query.sql.add('left join art artc on artc.codice=opr.art_codice');
  query.sql.add('left join arcl on arcl.cli_codice=f.cli_codice and arcl.art_codice=f.art_codice');
  query.sql.add('where');
  query.sql.add('f.progressivo between :dal_progressivo and :al_progressivo and ');
  query.sql.add('f.data_consegna <=:data_consegna');

  limart(art_escludi_obsoleti, query, false, selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice,
    a_art_tsa_codice, selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice, art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

  limcli(cli_escludi_obsoleti, query, false, selezione_cli_codice, da_cli_codice, a_cli_codice, selezione_cli_tna_codice, da_cli_tna_codice, a_cli_tna_codice, selezione_cli_descrizione, da_cli_descrizione, a_cli_descrizione, selezione_cli_tzo_codice, da_cli_tzo_codice, a_cli_tzo_codice, selezione_cli_gen_codice, da_cli_gen_codice, a_cli_gen_codice, selezione_cli_tag_codice, da_cli_tag_codice,
    a_cli_tag_codice, selezione_cli_tcc_codice, da_cli_tcc_codice, a_cli_tcc_codice, selezione_cli_tsc_codice, da_cli_tsc_codice, a_cli_tsc_codice, selezione_cli_tar_codice, da_cli_tar_codice, a_cli_tar_codice, selezione_cli_tcg_codice, da_cli_tcg_codice, a_cli_tcg_codice, cli_codice_lista, cli_tna_codice_lista, cli_tzo_codice_lista, cli_gen_codice_lista, cli_tag_codice_lista,
    cli_tcc_codice_lista, cli_tsc_codice_lista, cli_tar_codice_lista, cli_tcg_codice_lista);

  //  query.sql.add('group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14, 15');
  (*
    if v_situazione.itemindex = 1 then
    begin
    query.sql.add('having( (f.qta_da_produrre-f.qta_prodotta) >0 )');
    end
    else if v_situazione.itemindex = 2 then
    begin
    query.sql.add('having( (f.qta_da_produrre-f.qta_prodotta) =0 )');
    end;
  *)
  query.sql.add('order by f.data_consegna,f.cli_codice,f.art_codice,f.progressivo, opr.art_codice');
  query.parambyname('dal_progressivo').asfloat := v_dal_progressivo.value;
  query.parambyname('al_progressivo').asfloat := v_al_progressivo.value;
  query.parambyname('data_consegna').asdatetime := v_data_consegna.date;

  inherited;
end;

procedure TA31STAFOGLAV.v_data_consegnaExit(Sender: TObject);
begin
  inherited;
  assegna_valore_data_consegna;
end;

procedure TA31STAFOGLAV.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TA31STAFOGLAV.v_selcliClick(Sender: TObject);
begin
  inherited;
  call_selcli;
end;

procedure TA31STAFOGLAV.assegna_valore_data_consegna;
begin
  if controllo then
  begin
    if (v_data_consegna.enabled) and (v_data_consegna.date = 0) then
    begin
      v_data_consegna.text := data_31_12_9999;
    end;
  end;
end;

procedure TA31STAFOGLAV.call_selart;
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

procedure TA31STAFOGLAV.call_selcli;
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

procedure TA31STAFOGLAV.esegue_stampa;
begin
  inherited;
end;

initialization

registerclass(TA31STAFOGLAV);

end.
