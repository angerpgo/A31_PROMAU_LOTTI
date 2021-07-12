unit GGA31STAFABB;

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
  TA31STAFABB = class(TSTAMPA)
    ppGroup1: TppGroup;
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
    ppRegion5: TppRegion;
    ppShape8: TppShape;
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
    Panel2: TRzpanel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    RzPanel1: TRzPanel;
    v_selart: TRzRapidFireButton;
    v_sottoscorta: TRzCheckBox;
    v_scorta_minima: TRzCheckBox;
    mag: TMyQuery_go;
    query_sor2: TMyQuery_go;
    fabb: TMyQuery_go;
    oar: TMyQuery_go;
    Label3: TRzLabel;
    v_data_al: trzdatetimeedit_go;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    raCodeModule1: TraCodeModule;
    query_sor3: TMyQuery_go;
    RzLabel1: TRzLabel;
    v_data_dal: trzdatetimeedit_go;
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
    procedure v_data_alEnter(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
  private
    { Private declarations }
    path_logo_ditta: string;

    adata_consegna: array [0 .. 12] of tdate;
    asettimana: array [0 .. 12] of integer;

    filtro_articoli: string;

    id: integer;
    // parametri selart
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

    procedure call_selart;
    procedure stampa; override;
    procedure esegue_stampa; override;
    procedure controllo_campi; override;
    procedure controllo_data_fine;

    procedure aggiungi_articolo_giacenza;
    procedure aggiungi_articolo_fabbisogno;
    procedure aggiungi_articolo_ordinato;
    procedure aggiorna_articolo_giacenza(art_codice, nome_campo: string; quantita: double; sostituisci: boolean);
    procedure aggiorna_articolo_disponibilita(art_codice, nome_campo: string; quantita: double);

  public
    { Public declarations }
    art_codice_passato, cfg_tipo_passato, cfg_codice_passato: string;
  end;

var
  A31STAFABB: TA31STAFABB;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE, ZZLIBRERIE_PROMAU, ZZDISTINTABASE;

procedure TA31STAFABB.FormCreate(Sender: TObject);
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

end;

procedure TA31STAFABB.FormDestroy(Sender: TObject);
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

end;

procedure TA31STAFABB.FormShow(Sender: TObject);
begin
  inherited;

  v_data_dal.date := date;
  read_tabella(arc.arc, 'dit', 'codice', ditta, 'marchio_percorso');
  path_logo_ditta := archivio_arc.fieldbyname('marchio_percorso').asstring;
end;

procedure TA31STAFABB.Panel1Exit(Sender: TObject);
begin
  inherited;
  controllo_data_fine;
end;

procedure TA31STAFABB.ppDBText14DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  if TppDrawCommand(aDrawCommand).Tag > 0 then
  begin
    sor.locate('id', TppDrawCommand(aDrawCommand).Tag, []);
    esegui_programma('CRUART', sor.fieldbyname('art_codice').asstring, true);
  end;

end;

procedure TA31STAFABB.ppDBText14DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  TppDrawCommand(aDrawCommand).Tag := sor.fieldbyname('id').asinteger;
end;

procedure TA31STAFABB.ppReportBeforePrint(Sender: TObject);
begin
  inherited;

  try
    //pplogo.Picture.Loadfromfile(path_logo_ditta);
    // pplogo.visible := true;

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

  except
    // raise;
  end;

end;

procedure TA31STAFABB.ppVariable1DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;

  if TppDrawCommand(aDrawCommand).Tag > 0 then
  begin
    query_sor.locate('id', TppDrawCommand(aDrawCommand).Tag, []);
    esegui_programma('CRUART', query_sor.fieldbyname('art_codice').asstring, true);
  end;

end;

procedure TA31STAFABB.ppVariable1DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  if TppDrawCommand(aDrawCommand).Tag = 0 then
  begin
    TppDrawCommand(aDrawCommand).Tag := query_sor.fieldbyname('id').asinteger;
  end;
end;

procedure TA31STAFABB.v_confermaClick(Sender: TObject);
begin
  inherited;

  controllo_campi;

  esegue_stampa;

end;

procedure TA31STAFABB.v_data_alEnter(Sender: TObject);
begin
  inherited;

  if v_data_al.date = 0 then
  begin
    v_data_al.date := strtodate('31/12/9999');
  end;

end;

procedure TA31STAFABB.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TA31STAFABB.controllo_campi;
begin

  controllo_data_fine;

end;

procedure TA31STAFABB.controllo_data_fine;
begin
  if v_data_al.date < v_data_dal.date then
  begin
    messaggio(000, 'Data fine periodo non valida !');
    v_data_al.setfocus;

  end;
end;

procedure TA31STAFABB.call_selart;
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

procedure TA31STAFABB.esegue_stampa;
var
  i, progressivo, mese_cambio_anno, nr_settimana: integer;
  seconda_query, cambio_anno: boolean;
  nome_campo, nome_campo_succ: string;
  flag_sottoscorta: boolean;
begin
  self.update;
  seconda_query := false;

  if not art_eseguito then
  begin
    call_selart;
  end;
  art_eseguito := false;

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

  nome_tabella := 'a31stafabb';
  sor.active := false;
  azzera_tabella(nome_tabella, sor);
  sor.indexfieldnames := 'utn_codice;art_codice;riga';

  query.close;
  query.Sql.Clear;

  limart(art_escludi_obsoleti, query, false, selezione_art_codice, da_art_codice, a_art_codice,
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

  filtro_articoli := query.sql.text;
  query.sql.clear;

  //--------------------------------------------
  // componenti
  //--------------------------------------------

  query.sql.add('select distinct opr.art_codice, art.descrizione1 art_descrizione');
  query.sql.add('from opr');
  query.sql.add('inner join opt on opt.progressivo = opr.progressivo');
  query.sql.add('inner join art on art.codice = opr.art_codice');
  query.sql.add('where');
  query.sql.add('opt.data_consegna <=:data_consegna and');
  query.sql.add('opt.situazione in (''inserito'', ''evaso parziale'' ) and');
  query.sql.add('art.tipo_articolo =''fiscale'' and');
  query.sql.add('art.tcm_codice=''ACQ'' ');
  query.sql.add(filtro_articoli);
  query.sql.add('order by art_codice');
  query.parambyname('data_consegna').asdatetime := v_data_al.date;
  query.open;

  id := 0;
  while not query.eof do
  begin
    controllo_interrompi;

    id := id + 1;

    aggiungi_articolo_giacenza; // giacenza
    aggiungi_articolo_fabbisogno; // fabbisogno
    aggiungi_articolo_ordinato; // ordinato

    //-----------------------------------------------
    // TOTALI
    //-----------------------------------------------

    flag_sottoscorta := false;
    for i := 0 to 12 do
    begin
      nome_campo := 'nr_col_' + setta_lunghezza(inttostr(i), 2, true, '0');
      nome_campo_succ := 'nr_col_' + setta_lunghezza(inttostr(i + 1), 2, true, '0');

      query_sor3.close;
      query_sor3.sql.clear;
      query_sor3.sql.add('select sum(' + nome_campo + ') nr_col ');
      query_sor3.sql.add('from a31stafabb b');
      query_sor3.sql.add('where');
      query_sor3.sql.add('b.utn_codice=:utn_codice and');
      query_sor3.sql.add('b.art_codice=:art_codice and');
      query_sor3.sql.add('b.riga <> 2');

      query_sor3.close;
      query_sor3.parambyname('utn_codice').asstring := utente;
      query_sor3.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
      query_sor3.open;

      aggiorna_articolo_disponibilita(query.fieldbyname('art_codice').asstring, nome_campo, query_sor3.fieldbyname('nr_col').asfloat);
      if i <= 11 then
      begin
        aggiorna_articolo_giacenza(query.fieldbyname('art_codice').asstring, nome_campo_succ, query_sor3.fieldbyname('nr_col').asfloat, true);
      end;
      if v_sottoscorta.checked then
      begin
        query_sor3.close;
        query_sor3.sql.clear;
        query_sor3.sql.add('select ' + nome_campo + ', scorta_min, scorta_all ');
        query_sor3.sql.add('from a31stafabb b');
        query_sor3.sql.add('where');
        query_sor3.sql.add('b.utn_codice=:utn_codice and');
        query_sor3.sql.add('b.art_codice=:art_codice and');
        query_sor3.sql.add('b.riga = 2');

        query_sor3.close;
        query_sor3.parambyname('utn_codice').asstring := utente;
        query_sor3.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
        query_sor3.open;

        if query_sor3.fieldbyname(nome_campo).asfloat < query_sor3.fieldbyname('scorta_min').asfloat then
        begin
          flag_sottoscorta := true;
        end;

      end;
    end;

    if (v_sottoscorta.checked) then
    begin

      if (not flag_sottoscorta) then
      begin
        query_sor3.close;
        query_sor3.sql.clear;
        query_sor3.sql.add('delete');
        query_sor3.sql.add('from a31stafabb');
        query_sor3.sql.add('where');
        query_sor3.sql.add('utn_codice=:utn_codice and');
        query_sor3.sql.add('art_codice=:art_codice ');

        query_sor3.parambyname('utn_codice').asstring := utente;
        query_sor3.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
        query_sor3.execsql;
      end
      else
      begin
        query_sor3.sql.clear;
        query_sor3.sql.add('delete');
        query_sor3.sql.add('from a31stafabb ');
        query_sor3.sql.add('where');
        query_sor3.sql.add('utn_codice=:utn_codice and');
        query_sor3.sql.add('art_codice=:art_codice and');
        query_sor3.sql.add('riga in ( 1, 3, 4 ) ');

        query_sor3.parambyname('utn_codice').asstring := utente;
        query_sor3.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
        query_sor3.execsql;

        query_sor3.sql.clear;
        query_sor3.sql.add('update a31stafabb');
        query_sor3.sql.add('set riga = 0');
        query_sor3.sql.add('where');
        query_sor3.sql.add('utn_codice=:utn_codice and');
        query_sor3.sql.add('art_codice=:art_codice and');
        query_sor3.sql.add('riga = 2');

        query_sor3.parambyname('utn_codice').asstring := utente;
        query_sor3.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
        query_sor3.execsql;
      end;

    end;

    // cancello riga disponibilita
    query_sor3.sql.clear;
    query_sor3.sql.add('delete');
    query_sor3.sql.add('from a31stafabb ');
    query_sor3.sql.add('where');
    query_sor3.sql.add('utn_codice=:utn_codice and');
    query_sor3.sql.add('art_codice=:art_codice and');
    query_sor3.sql.add('riga = 2 ');

    query_sor3.parambyname('utn_codice').asstring := utente;
    query_sor3.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    query_sor3.execsql;

    query.next;
  end; // while

  query.close;
  query_sor2.close;

  inherited;
end;

procedure TA31STAFABB.stampa;
begin
  // ----------------------------------
  // PIANIFICAZIONE
  // ----------------------------------

  sor_ds.DataSet := query_sor;
  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('select p.*,art.tcm_codice from a31stafabb p');
  query_sor.sql.add('inner join arc_' + ditta + '.art on art.codice=p.art_codice');
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice');

  if filtro_articoli <> '' then
  begin
    query_sor.sql.add(filtro_articoli);
  end;

  query_sor.sql.add('order by utn_codice, art_codice, riga ');
  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.open;

  query_sor2.close;
  query_sor2.sql.clear;
  query_sor2.sql.add('select * from a31stafabb');
  query_sor2.sql.add('where');
  query_sor2.sql.add('utn_codice=:utn_codice and');
  query_sor2.sql.add('id=:id');

  inherited;
end;

procedure TA31STAFABB.aggiungi_articolo_giacenza;
var
  i: integer;
  nome_campo: string;
begin
  mag.close;
  mag.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  mag.open;

  sor.append;
  sor.fieldbyname('utn_codice').asstring := utente;
  sor.fieldbyname('progressivo').asinteger := id;
  sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  sor.fieldbyname('art_descrizione').asstring := query.fieldbyname('art_descrizione').asstring;
  sor.fieldbyname('riga').asinteger := 1;
  for i := 0 to 12 do
  begin
    nome_campo := 'nr_col_' + setta_lunghezza(inttostr(i), 2, true, '0');
    sor.fieldbyname(nome_campo).asfloat := mag.fieldbyname('esistenza').asfloat;
  end;

  sor.fieldbyname('scorta_min').asfloat := mag.fieldbyname('scorta_minima').asfloat;
  sor.fieldbyname('scorta_all').asfloat := mag.fieldbyname('scorta_massima').asfloat;
  sor.post;

  id := id + 1;
  //disponibilita'
  sor.append;
  sor.fieldbyname('utn_codice').asstring := utente;
  sor.fieldbyname('progressivo').asinteger := id;
  sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  sor.fieldbyname('art_descrizione').asstring := query.fieldbyname('art_descrizione').asstring;
  sor.fieldbyname('riga').asinteger := 2;
  for i := 0 to 12 do
  begin
    nome_campo := 'nr_col_' + setta_lunghezza(inttostr(i), 2, true, '0');
    sor.fieldbyname(nome_campo).asfloat := mag.fieldbyname('esistenza').asfloat;
  end;

  sor.fieldbyname('scorta_min').asfloat := mag.fieldbyname('scorta_minima').asfloat;
  sor.fieldbyname('scorta_all').asfloat := mag.fieldbyname('scorta_massima').asfloat;
  sor.post;

  mag.close;

end;

procedure TA31STAFABB.aggiungi_articolo_fabbisogno;
var
  i, y: integer;
  nome_campo: string;
begin
  id := id + 1;
  sor.append;
  sor.fieldbyname('utn_codice').asstring := utente;
  sor.fieldbyname('progressivo').asinteger := id;
  sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  sor.fieldbyname('art_descrizione').asstring := query.fieldbyname('art_descrizione').asstring;
  sor.fieldbyname('riga').asinteger := 3;
  for i := 0 to 12 do
  begin
    nome_campo := 'nr_col_' + setta_lunghezza(inttostr(i), 2, true, '0');
    sor.fieldbyname(nome_campo).asfloat := 0;
  end;
  sor.post;

  fabb.close;
  fabb.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  fabb.parambyname('data_consegna').asdatetime := v_data_al.date;
  fabb.open;
  while not fabb.eof do
  begin

    if fabb.fieldbyname('a31data_consegna').asdatetime <= adata_consegna[0] then
    begin
      nome_campo := 'nr_col_00';
    end
    // ---- previsione futura
    else if fabb.fieldbyname('a31data_consegna').asdatetime >= adata_consegna[11] then
    begin
      nome_campo := 'nr_col_11';
    end
    else
    begin
      // ---- planning
      for i := 1 to 10 do
      begin
        if fabb.fieldbyname('a31data_consegna').asdatetime <= adata_consegna[i] + 6 then
        begin
          nome_campo := 'nr_col_' + setta_lunghezza(inttostr(i + 1), 2, true, '0');
          break;
        end;
      end;
    end; //

    sor.edit;
    sor.fieldbyname(nome_campo).asfloat := fabb.fieldbyname('fabbisogno').asfloat * -1;
    sor.post;

    //----------------------------------------------
    // aggiorna giacenza periodi successivi
    //----------------------------------------------
    for y := i + 1 to 10 do
    begin
      nome_campo := 'nr_col_' + setta_lunghezza(inttostr(y + 1), 2, true, '0');
      aggiorna_articolo_giacenza(query.fieldbyname('art_codice').asstring, nome_campo, fabb.fieldbyname('fabbisogno').asfloat * -1, false);
    end;

    fabb.next;
  end;

  fabb.close;

end;

procedure TA31STAFABB.aggiungi_articolo_ordinato;
var
  i, y: integer;
  nome_campo: string;
begin
  id := id + 1;
  sor.append;
  sor.fieldbyname('utn_codice').asstring := utente;
  sor.fieldbyname('progressivo').asinteger := id;
  sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  sor.fieldbyname('art_descrizione').asstring := query.fieldbyname('art_descrizione').asstring;
  sor.fieldbyname('riga').asinteger := 4;
  for i := 0 to 12 do
  begin
    nome_campo := 'nr_col_' + setta_lunghezza(inttostr(i), 2, true, '0');
    sor.fieldbyname(nome_campo).asfloat := 0;
  end;
  sor.post;

  oar.close;
  oar.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  oar.parambyname('data_consegna').asdatetime := v_data_al.date;
  oar.open;
  while not oar.eof do
  begin

    if oar.fieldbyname('data_consegna').asdatetime <= adata_consegna[0] then
    begin
      nome_campo := 'nr_col_00';
    end
    // ---- previsione futura
    else if oar.fieldbyname('data_consegna').asdatetime >= adata_consegna[11] then
    begin
      nome_campo := 'nr_col_11';
    end
    else
    begin
      // ---- planning
      for i := 1 to 10 do
      begin
        if oar.fieldbyname('data_consegna').asdatetime <= adata_consegna[i] + 6 then
        begin
          nome_campo := 'nr_col_' + setta_lunghezza(inttostr(i + 1), 2, true, '0');
          break;
        end;
      end;
    end; //

    sor.edit;
    sor.fieldbyname(nome_campo).asfloat := oar.fieldbyname('ordinato').asfloat;
    sor.post;

    //----------------------------------------------
    // aggiorna giacenza periodi successivi
    //----------------------------------------------
    for y := i + 1 to 10 do
    begin
      nome_campo := 'nr_col_' + setta_lunghezza(inttostr(y + 1), 2, true, '0');
      aggiorna_articolo_giacenza(query.fieldbyname('art_codice').asstring, nome_campo, oar.fieldbyname('ordinato').asfloat, false);
    end;

    oar.next;
  end;

  oar.close;

end;

procedure TA31STAFABB.aggiorna_articolo_giacenza(art_codice, nome_campo: string; quantita: double; sostituisci: boolean);
begin
  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('update a31stafabb');
  if sostituisci then
  begin
    query_sor.sql.add('set ' + nome_campo + '=:' + nome_campo);
  end
  else
  begin
    query_sor.sql.add('set ' + nome_campo + '=' + nome_campo + '+:' + nome_campo);
  end;
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice and');
  query_sor.sql.add('art_codice=:art_codice and');
  query_sor.sql.add('riga= 1');
  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.parambyname('art_codice').asstring := art_codice;
  query_sor.parambyname(nome_campo).asfloat := quantita;
  query_sor.execsql;

end;

procedure TA31STAFABB.aggiorna_articolo_disponibilita(art_codice, nome_campo: string; quantita: double);
begin
  query_sor.close;
  query_sor.sql.clear;
  query_sor.sql.add('update a31stafabb');
  query_sor.sql.add('set ' + nome_campo + '=:' + nome_campo);
  query_sor.sql.add('where');
  query_sor.sql.add('utn_codice=:utn_codice and');
  query_sor.sql.add('art_codice=:art_codice and');
  query_sor.sql.add('riga= 2');
  query_sor.parambyname('utn_codice').asstring := utente;
  query_sor.parambyname('art_codice').asstring := art_codice;
  query_sor.parambyname(nome_campo).asfloat := quantita;
  query_sor.execsql;
end;

initialization

registerclass(tA31STAFABB);

end.
