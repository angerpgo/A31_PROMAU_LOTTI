unit GGSITORDVES;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, GGESEGUI, DB, query_go, MyAccess, Menus,
 StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs, ToolWin,
 Mask, DBCtrls, 
 Grids, dbgrids, RzDBGrid, MemDS, VirtualTable, 
 RzButton, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
 RzRadChk, RzSplit, RzCmboBx, RzPrgres,
 RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, RzEdit, DBAccess;

type

  TSITORDVES = class(TESEGUI)
    Label2: TRzlabel;
    v_art_codice: TRzEdit_go;
    Label8: TRzlabel;
    v_dalla_data: TRzDateTimeEdit_go;
    Label3: TRzlabel;
    v_alla_data: TRzDateTimeEdit_go;
    Label21: TRzlabel;
    v_tdo_codice: TRzEdit_go;
    Label1: TRzlabel;
    v_tma_codice: TRzEdit_go;
    Label14: TRzlabel;
    v_cli_codice: TRzEdit_go;
    v_cli_descrizione2: TRzlabel;
    Label12: TRzlabel;
    v_tag_codice: TRzEdit_go;
    Label7: TRzlabel;
    v_data_consegna: TRzDateTimeEdit_go;
    Label13: TRzlabel;
    v_quantita: TRzNumericEdit_go;
    Label15: TRzlabel;
    v_prezzo: TRzNumericEdit_go;
    Label18: TRzlabel;
    v_importo: TRzNumericEdit_go;
    query_totale: tmyquery_go;
    query_totale_ds: tmydatasource;
    Label25: TRzlabel;
    v_numero_ordine: TRzNumericEdit_go;
    v_art_descrizione: TRzEdit_go;
    Label23: TRzlabel;
    Label26: TRzlabel;
    v_situazione: TRzCombobox_go;
    Label27: TRzlabel;
    v_approntato: TRzCombobox_go;
    cli: tmyquery_go;
    cli_ds: tmydatasource;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    Label28: TRzlabel;
    v_ind_codice: TRzEdit_go;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    ind: tmyquery_go;
    ind_ds: tmydatasource;
    art: tmyquery_go;
    art_ds: tmydatasource;
    RzDBEditDescrizione_go3: TRzDBEditDescrizione_go;
    tdo: tmyquery_go;
    tdo_ds: tmydatasource;
    RzDBEditDescrizione_go4: TRzDBEditDescrizione_go;
    tma: tmyquery_go;
    tma_ds: tmydatasource;
    RzDBEditDescrizione_go5: TRzDBEditDescrizione_go;
    tag: tmyquery_go;
    tag_ds: tmydatasource;
    RzDBEditDescrizione_go6: TRzDBEditDescrizione_go;
    Panel2: TRzpanel;
    v_selcms: TRzRapidFireButton;
    procedure v_art_codiceExit(Sender: TObject);
    procedure v_alla_dataEnter(Sender: TObject);
    procedure v_alla_dataExit(Sender: TObject);
    procedure v_tdo_codiceEnter(Sender: TObject);
    procedure v_tdo_codiceExit(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure v_tag_codiceExit(Sender: TObject);
    procedure v_data_consegnaExit(Sender: TObject);
    procedure v_situazione_Click(Sender: TObject);
    procedure v_situazione_Exit(Sender: TObject);
    procedure v_situazioneExit(Sender: TObject);
    procedure queryAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure v_ind_codiceEnter(Sender: TObject);
    procedure v_ind_codiceExit(Sender: TObject);
    procedure v_cli_codiceChange(Sender: TObject);
    procedure v_selcmsClick(Sender: TObject);

  protected
    primo: boolean;
    ordinamento: word;

    selezione_cms_codice, da_cms_codice, a_cms_codice,
      selezione_cms_data, selezione_cms_data_chiusura, selezione_cms_data_consegna,
      selezione_cms_tcms_codice, da_cms_tcms_codice, a_cms_tcms_codice: string;
    selezione_cmt_codice, da_cmt_codice, a_cmt_codice, cmt_situazione: string;
    selezione_cms_responsabile, da_cms_responsabile, a_cms_responsabile: string;
    da_cms_data, a_cms_data, da_cms_data_chiusura, a_cms_data_chiusura, da_cms_data_consegna, a_cms_data_consegna: tdatetime;
    cms_chiusa: word;
    cms_codice_lista, cms_tcms_codice_lista, cmt_codice_lista: tstringlist;
    tasto_escape_cms, cms_eseguito: boolean;

    procedure call_selcms;
	// ANDREA
    //procedure esegui_gesprev;
    procedure esegui_selezione; override;
    procedure impostazioni_extra; override;

    procedure art_codice_controllo(blocco: boolean);
    procedure tdo_codice_controllo(blocco: boolean);
    procedure tma_codice_controllo(blocco: boolean);
    procedure cli_codice_controllo(blocco: boolean);
    procedure ind_codice_controllo(blocco: boolean);
    procedure assegna_valore_alla_data;
    procedure assegna_valore_data_consegna;
    procedure setta_filtri;
    procedure tag_codice_controllo(blocco: boolean);
    // ANDREA
	//procedure leggi_tdo;
    procedure abilita_approntato;
    procedure assegna_valore_approntato;
    procedure abilita_ind_codice(flag: boolean);
  public
    art_codice, cli_codice, cms_codice_passato: string;

    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;
    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
  end;

var
  SITORDVES: TSITORDVES;

implementation

{$R *.dfm}
uses DMARC, ZZLIBRERIE;

procedure TSITORDVES.controllo_campi;
begin
  cli_codice_controllo(true);
  ind_codice_controllo(true);
  art_codice_controllo(true);
  assegna_valore_alla_data;
  assegna_valore_data_consegna;
  tdo_codice_controllo(true);
  tma_codice_controllo(true);
  tag_codice_controllo(true);
  assegna_valore_approntato;
end;

procedure TSITORDVES.visualizza_stampa_elabora;
begin
  cli_codice_controllo(false);
  ind_codice_controllo(false);
  art_codice_controllo(false);
  tdo_codice_controllo(false);
  tma_codice_controllo(false);
  tag_codice_controllo(false);
end;

//
// campi
//

procedure TSITORDVES.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure TSITORDVES.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, art, v_art_codice, blocco, nil, nil, nil);
end;

procedure TSITORDVES.v_alla_dataEnter(Sender: TObject);
begin
  inherited;
  if v_alla_data.date = 0 then
  begin
    v_alla_data.date := v_dalla_data.date;
  end;
end;

procedure TSITORDVES.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  assegna_valore_alla_data;
end;

procedure TSITORDVES.assegna_valore_alla_data;
begin
  if controllo then
  begin
    if (v_alla_data.date = 0) then
    begin
      v_alla_data.text := data_31_12_9999;
    end;
  end;
end;

procedure TSITORDVES.v_tdo_codiceEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := 'ordine';
end;

procedure TSITORDVES.v_tdo_codiceExit(Sender: TObject);
begin
  inherited;
  tdo_codice_controllo(true);
end;

procedure TSITORDVES.tdo_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tdo, v_tdo_codice, blocco, nil, nil, nil);
end;

procedure TSITORDVES.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TSITORDVES.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma, v_tma_codice, blocco, nil, nil, nil);
end;

procedure TSITORDVES.FormShow(Sender: TObject);
begin
  inherited;

  //ANDREA
  programma_collegato := 'GESORDV';
  campo_programma_collegato := 'progressivo';
  riga_programma_collegato := 'riga';

  ordinamento := 1;
  if art_codice <> '' then
  begin
    v_art_codice.text := art_codice;
    art_codice_controllo(false);
    ordinamento := 2;
  end;
  if cli_codice <> '' then
  begin
    v_cli_codice.text := cli_codice;
    cli_codice_controllo(false);
    ordinamento := 1;
  end;
end;

procedure TSITORDVES.v_confermaClick(Sender: TObject);
begin
  inherited;

  esegui_selezione;
end;

procedure TSITORDVES.esegui_selezione;
var
  i: word;
begin
  primo := true;

  query.sql.clear;
  query.sql.add('select cli.codice cli_codice,');
  query.sql.add('art.codice art_codice, concat(trim(ovr.descrizione1), '' '', ovr.descrizione2) art_descrizione,');
  query.sql.add('ovt.data_documento, ovt.numero_documento, ovr.quantita, ovr.quantita_evasa, ovr.quantita_approntata,');
  query.sql.add('case when ovr.situazione = ''evaso'' or ovr.situazione = ''annullato'' then 0');
  query.sql.add('else ovr.quantita - ovr.quantita_evasa end quantita_evadere, ovr.data_consegna, ovr.situazione, ovr.cms_codice,');

  if importi_vendite = 'nascondi' then
  begin
    query.sql.add('0.0 prezzo, '''' tsm_codice, '''' tsm_codice_art, 0.0 importo, 0.0 importo_iva, 0.0 importo_iva_euro,');
  end
  else
  begin
    query.sql.add('ovr.prezzo, ovr.tsm_codice, ovr.tsm_codice_art, ovr.importo, ovr.importo_iva, ovr.importo_iva_euro,');
  end;

  query.sql.add('case when oar.ovr_progressivo is not null then ''fornitore''');
  query.sql.add('when opt.ovr_progressivo is not null then ''produzione''');
  query.sql.add('when rda.ovr_progressivo is not null then ''richiesta acquisto''');
  query.sql.add('else '''' end avanzamento,');

  query.sql.add('case when oar.ovr_progressivo is not null then oar.progressivo');
  query.sql.add('when opt.ovr_progressivo is not null then opt.progressivo');
  query.sql.add('when rda.ovr_progressivo is not null then rda.progressivo');
  query.sql.add('else 0 end progressivo_avanzamento,');

  query.sql.add('case when oar.ovr_progressivo is not null then oar.riga');
  query.sql.add('else 0 end riga_avanzamento,');

  query.sql.add('case when oar.ovr_progressivo is not null then oar.situazione');
  query.sql.add('when opt.ovr_progressivo is not null then opt.situazione');
  query.sql.add('when rda.ovr_progressivo is not null then rda.situazione');
  query.sql.add('else '''' end situazione_avanzamento,');

  query.sql.add('ovt.tipo_documento, ovt.progressivo, ovr.riga, art.tum_codice,');
  query.sql.add('ovt.tdo_codice, tdo.descrizione tdo_descrizione, ovt.tva_codice, ovt.cambio,');
  query.sql.add('ovt.tag_codice, tag.descrizione tag_descrizione, ovt.serie_documento,');
  query.sql.add('ovt.tmo_codice, ovr.tma_codice, ovt.tmo_codice_collegato, ovt.tma_codice_collegato,');
  query.sql.add('concat(trim(cli.descrizione1), '' '', cli.citta) cli_descrizione,');

  query.sql.add('ovt.situazione situazione_testata, ovt.riferimento, ovt.data_riferimento,');
  query.sql.add('ovt.contatto_commerciale, ovt.nostro_riferimento');

  query.sql.add('from ovr');
  query.sql.add('inner join ovt on (ovt.progressivo = ovr.progressivo)');
  query.sql.add('inner join cli on (cli.codice = ovt.cli_codice)');
  query.sql.add('inner join tdo on (tdo.codice = ovt.tdo_codice)');
  query.sql.add('inner join art on (art.codice = ovr.art_codice)');
  query.sql.add('left join tag on (tag.codice = ovt.tag_codice)');
  query.sql.add('left join oar on oar.ovr_tipo = ''cliente'' and oar.ovr_progressivo = ovr.progressivo and oar.ovr_riga = ovr.riga');
  query.sql.add('left join opt on opt.ovr_progressivo = ovr.progressivo and opt.ovr_riga = ovr.riga');
  query.sql.add('left join rda on rda.tipo_richiesta = ''ordini clienti'' and rda.ovr_progressivo = ovr.progressivo and rda.ovr_riga = ovr.riga');
  if cms_eseguito then
  begin
    query.sql.add('inner join cms on (cms.codice = ovr.cms_codice)');
    query.sql.add('inner join cmt on (cmt.cms_codice = ovr.cms_codice and cmt.tipologia = ovr.tipologia)');
  end;

  query_totale.sql.clear;
  query_totale.sql.add('select sum(ovr.quantita) quantita, sum(ovr.quantita_evasa) quantita_evasa');
  query_totale.sql.add('from ovr');
  query_totale.sql.add('inner join ovt ovt on (ovt.progressivo = ovr.progressivo)');
  query_totale.sql.add('inner join cli cli on (cli.codice = ovt.cli_codice)');
  query_totale.sql.add('inner join art art on (art.codice = ovr.art_codice)');
  query_totale.sql.add('left outer join tag tag on (tag.codice = ovt.tag_codice)');

  if cms_eseguito then
  begin
    query_totale.sql.add('inner join cms on (cms.codice = ovr.cms_codice)');
    query_totale.sql.add('inner join cmt on (cmt.cms_codice = ovr.cms_codice and cmt.tipologia = ovr.tipologia)');
  end;

  primo := false;
  query.sql.add('where 1 = 1');

  if cms_eseguito then
  begin
    limcms_sql(query, false, selezione_cms_codice, cms_codice_lista, cms_tcms_codice_lista,
      da_cms_codice, a_cms_codice, selezione_cms_responsabile, da_cms_responsabile, a_cms_responsabile,
      selezione_cms_data, selezione_cms_data_chiusura, selezione_cms_data_consegna,
      da_cms_data, a_cms_data, da_cms_data_chiusura, a_cms_data_chiusura, da_cms_data_consegna, a_cms_data_consegna, cms_chiusa,
      selezione_cms_tcms_codice, da_cms_tcms_codice, a_cms_tcms_codice,
      selezione_cmt_codice, da_cmt_codice, a_cmt_codice, cmt_situazione, cmt_codice_lista, true);
  end;

  query_totale.sql.add('where 1 = 1');

  if cms_eseguito then
  begin
    limcms_sql(query_totale, false, selezione_cms_codice, cms_codice_lista, cms_tcms_codice_lista,
      da_cms_codice, a_cms_codice, selezione_cms_responsabile, da_cms_responsabile, a_cms_responsabile,
      selezione_cms_data, selezione_cms_data_chiusura, selezione_cms_data_consegna,
      da_cms_data, a_cms_data, da_cms_data_chiusura, a_cms_data_chiusura, da_cms_data_consegna, a_cms_data_consegna, cms_chiusa,
      selezione_cms_tcms_codice, da_cms_tcms_codice, a_cms_tcms_codice,
      selezione_cmt_codice, da_cmt_codice, a_cmt_codice, cmt_situazione, cmt_codice_lista, true);
  end;

  setta_filtri;

  query.sql.add('order by ' + inttostr(ordinamento) + ',data_documento,serie_documento,numero_documento');

  query.close;
end;

procedure TSITORDVES.setta_filtri;
var
  i: word;
  stringa: string;
begin
  if trim(v_cli_codice.text) <> '' then
  begin
    query.sql.add('and cli.codice = :cli_codice');
    query.parambyname('cli_codice').asstring := v_cli_codice.text;

    query_totale.sql.add('and cli.codice = :cli_codice');
    query_totale.parambyname('cli_codice').asstring := v_cli_codice.text;
  end;

  if v_ind_codice.text <> '' then
  begin
    query.sql.add('and ovt.indirizzo = ' + quotedstr(v_ind_codice.text));
    query_totale.sql.add('and ovt.indirizzo = ' + quotedstr(v_ind_codice.text));
  end;

  if trim(v_art_codice.text) <> '' then
  begin
    query.sql.add('and art.codice = :art_codice');
    query.parambyname('art_codice').asstring := v_art_codice.text;

    query_totale.sql.add('and art.codice = :art_codice');
    query_totale.parambyname('art_codice').asstring := v_art_codice.text;
  end;

  if trim(v_art_descrizione.text) <> '' then
  begin
    query.sql.add('and (lower(ovr.descrizione1) like ' + quotedstr('%' + lowercase(v_art_descrizione.text) + '%'));
    query.sql.add('or lower(ovr.descrizione2) like ' + quotedstr('%' + lowercase(v_art_descrizione.text) + '%') + ')');

    query_totale.sql.add('and (lower(ovr.descrizione1) like ' + quotedstr('%' + lowercase(v_art_descrizione.text) + '%'));
    query_totale.sql.add('or lower(ovr.descrizione2) like ' + quotedstr('%' + lowercase(v_art_descrizione.text) + '%') + ')');
  end;

  query.sql.add('and ovt.data_documento between :dalla_data and :alla_data');
  query.parambyname('dalla_data').asdate := v_dalla_data.date;
  query.parambyname('alla_data').asdate := v_alla_data.date;

  query_totale.sql.add('and ovt.data_documento between :dalla_data and :alla_data');
  query_totale.parambyname('dalla_data').asdate := v_dalla_data.date;
  query_totale.parambyname('alla_data').asdate := v_alla_data.date;

  query.sql.add('and (ovr.data_consegna <= :data_consegna or ovr.data_consegna is null)');
  query.parambyname('data_consegna').asdate := v_data_consegna.date;

  query_totale.sql.add('and (ovr.data_consegna <= :data_consegna or ovr.data_consegna is null)');
  query_totale.parambyname('data_consegna').asdate := v_data_consegna.date;

  if trim(v_tdo_codice.text) <> '' then
  begin
    query.sql.add('and ovt.tdo_codice = :tdo_codice');
    query.parambyname('tdo_codice').asstring := v_tdo_codice.text;

    query_totale.sql.add('and ovt.tdo_codice = :tdo_codice');
    query_totale.parambyname('tdo_codice').asstring := v_tdo_codice.text;
  end;

  if trim(v_tma_codice.text) <> '' then
  begin
    query.sql.add('and ovr.tma_codice = :tma_codice');
    query.parambyname('tma_codice').asstring := v_tma_codice.text;

    query_totale.sql.add('and ovr.tma_codice = :tma_codice');
    query_totale.parambyname('tma_codice').asstring := v_tma_codice.text;
  end;

  if trim(v_tag_codice.text) <> '' then
  begin
    query.sql.add('and ovt.tag_codice = :tag_codice');
    query.parambyname('tag_codice').asstring := v_tag_codice.text;

    query_totale.sql.add('and ovt.tag_codice = :tag_codice');
    query_totale.parambyname('tag_codice').asstring := v_tag_codice.text;
  end;

  if v_situazione.itemindex = 1 then
  begin
    query.sql.add('and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')');

    query_totale.sql.add('and (ovr.situazione = ''inserito'' or ovr.situazione = ''evaso parziale'')');
  end
  else if v_situazione.itemindex = 2 then
  begin
    query.sql.add('and (ovr.situazione = ''evaso'' or ovr.situazione = ''evaso parziale'')');

    query_totale.sql.add('and (ovr.situazione = ''evaso'' or ovr.situazione = ''evaso parziale'')');
  end
  else if v_situazione.itemindex = 3 then
  begin
    query.sql.add('and ovr.situazione = ''annullato''');

    query_totale.sql.add('and ovr.situazione = ''annullato''');
  end;

  if v_approntato.itemindex = 1 then
  begin
    query.sql.add('and (ovr.quantita_approntata <> 0)');

    query_totale.sql.add('and (ovr.quantita_approntata <> 0)');
  end
  else if v_situazione.itemindex = 2 then
  begin
    query.sql.add('and (ovr.quantita_approntata = 0)');

    query_totale.sql.add('and (ovr.quantita_approntata = 0)');
  end;

  if v_numero_ordine.value <> 0 then
  begin
    stringa := floattostr(v_numero_ordine.value);
    for i := 1 to length(stringa) do
    begin
      if stringa[i] = ',' then
      begin
        stringa[i] := '.';
      end;
    end;
    query.SQL.add('and (ovt.numero_documento = ' + stringa + ')');

    query_totale.SQL.add('and (ovt.numero_documento = ' + stringa + ')');
  end;

  if v_quantita.value <> 0 then
  begin
    stringa := floattostr(v_quantita.value);
    for i := 1 to length(stringa) do
    begin
      if stringa[i] = ',' then
      begin
        stringa[i] := '.';
      end;
    end;
    query.SQL.add('and (ovr.quantita = ' + stringa + ')');

    query_totale.SQL.add('and (ovr.quantita = ' + stringa + ')');
  end;

  if v_prezzo.value <> 0 then
  begin
    stringa := floattostr(v_prezzo.value);
    for i := 1 to length(stringa) do
    begin
      if stringa[i] = ',' then
      begin
        stringa[i] := '.';
      end;
    end;
    query.SQL.add('and (ovr.prezzo = ' + stringa + ')');

    query_totale.SQL.add('and (ovr.prezzo = ' + stringa + ')');
  end;

  if v_importo.value <> 0 then
  begin
    stringa := floattostr(v_importo.value);
    for i := 1 to length(stringa) do
    begin
      if stringa[i] = ',' then
      begin
        stringa[i] := '.';
      end;
    end;
    query.SQL.add('and (ovr.importo = ' + stringa + ')');

    query_totale.SQL.add('and (ovr.importo = ' + stringa + ')');
  end;

  if (arc.utn.fieldbyname('tag_filtro').asstring = 'si') and (arc.utn.fieldbyname('tag_codice').asstring <> '') then
  begin
    query.sql.add('and ovt.tag_codice = ' + quotedstr(arc.utn.fieldbyname('tag_codice').asstring));
  end;
end;

procedure TSITORDVES.v_cli_codiceExit(Sender: TObject);
begin
  inherited;
  cli_codice_controllo(true);
  if controllo then
  begin
    if v_cli_codice.text = '' then
    begin
      v_ind_codice.text := '';
      ind_codice_controllo(false);
    end;
  end;
end;

procedure TSITORDVES.cli_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, cli, v_cli_codice, blocco, nil, nil, nil);
end;

procedure TSITORDVES.FormCreate(Sender: TObject);
begin
  // ANDREA
  //tab_pagina2_abilitata := true;
  self.height := 515;

  cms_codice_lista := tstringlist.create;
  cms_tcms_codice_lista := tstringlist.create;
  cmt_codice_lista := tstringlist.create;

  inherited;

  v_quantita.decimalplaces := decimali_max_quantita;
  v_quantita.displayformat := formato_display_quantita_zero;

  v_prezzo.decimalplaces := decimali_max_prezzo;
  v_prezzo.displayformat := formato_display_prezzo_zero;

  abilita_ind_codice(false);
end;

procedure TSITORDVES.abilita_ind_codice(flag: boolean);
begin
  v_ind_codice.enabled := flag;
  if flag then
  begin
    v_ind_codice.color := clwindow;
  end
  else
  begin
    v_ind_codice.color := clbtnface;
  end;
end;

procedure TSITORDVES.v_tag_codiceExit(Sender: TObject);
begin
  inherited;
  tag_codice_controllo(true);
end;

procedure TSITORDVES.tag_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tag, v_tag_codice, blocco, nil, nil, nil);
end;

procedure TSITORDVES.assegna_valore_data_consegna;
begin
  if controllo then
  begin
    if (v_data_consegna.date = 0) then
    begin
      v_data_consegna.text := data_31_12_9999;
    end;
  end;
end;

procedure TSITORDVES.v_data_consegnaExit(Sender: TObject);
begin
  inherited;
  assegna_valore_data_consegna;
end;

procedure TSITORDVES.v_situazione_Click(Sender: TObject);
begin
  inherited;
  abilita_approntato;
end;

procedure TSITORDVES.abilita_approntato;
begin
  if v_situazione.itemindex <> 1 then
  begin
    v_approntato.enabled := false;
  end
  else
  begin
    v_approntato.enabled := true;
  end;
end;

procedure TSITORDVES.assegna_valore_approntato;
begin
  if v_situazione.itemindex <> 1 then
  begin
    v_approntato.itemindex := 0;
  end;
end;

procedure TSITORDVES.v_situazione_Exit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    assegna_valore_approntato;
  end;
end;

procedure TSITORDVES.v_selcmsClick(Sender: TObject);
begin
  inherited;
  call_selcms;
end;

procedure TSITORDVES.v_situazioneExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    assegna_valore_approntato;
  end;
end;

procedure TSITORDVES.queryAfterScroll(DataSet: TDataSet);
begin
  inherited;

end;

//ANDREA
procedure TSITORDVES.impostazioni_extra;
begin
  // attivo l'utilizzo del pulsante della toolbar analisi evasione
  pr.setta_tool_analisi_evasione('vendite', 'ordine', 'cli_codice', 'cli_descrizione', 'art_codice',
   'art_descrizione', 'progressivo', 'riga', '');
end;

procedure TSITORDVES.call_selcms;
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

procedure TSITORDVES.FormDestroy(Sender: TObject);
begin
  inherited;
  freeandnil(cms_codice_lista);
  freeandnil(cms_tcms_codice_lista);
  freeandnil(cmt_codice_lista);
end;

procedure TSITORDVES.v_ind_codiceEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_cli_codice.text;
end;

procedure TSITORDVES.v_ind_codiceExit(Sender: TObject);
begin
  inherited;
  ind_codice_controllo(true);
end;

procedure TSITORDVES.ind_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, ind, v_cli_codice, v_ind_codice, blocco, nil, nil, nil);
end;

procedure TSITORDVES.v_cli_codiceChange(Sender: TObject);
begin
  inherited;
  if v_cli_codice.text = '' then
  begin
    abilita_ind_codice(false);
  end
  else
  begin
    abilita_ind_codice(true);
  end;
end;

procedure TSITORDVES.set_codice_archivio;
begin
  inherited;
  if screen.activecontrol = v_ind_codice then
  begin
    codice_archivio := vararrayof([v_cli_codice.text, v_ind_codice.text]);
  end;
end;

procedure TSITORDVES.get_codice_archivio;
begin
  if screen.activecontrol = v_ind_codice then
  begin
    v_ind_codice.text := codice_archivio[1];
  end;

  inherited;
end;

initialization
  registerclass(tsitordves);

end.

