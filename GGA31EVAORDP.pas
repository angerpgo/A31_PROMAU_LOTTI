unit GGA31EVAORDP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGELABORA, DB, query_go, MyAccess, Menus,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs, ToolWin,
  Mask, DBCtrls,
  Grids, dbgrids, RzDBGrid, MemDS, VirtualTable,
  RzButton, ZZVALDSB, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres,
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, RzEdit, DBAccess;

type

  TA31EVAORDP = class(TELABORA)
    Label3: TRzlabel;
    v_alla_data: TRzDateTimeEdit_go;
    v_griglia: TRzDBGrid_go;
    Label2: TRzlabel;
    v_art_codice: TRzEdit_go;
    opt: tmyquery_go;
    Label1: TRzlabel;
    v_data_registrazione: TRzDateTimeEdit_go;
    opr: tmyquery_go;
    art: tmyquery_go;
    lsa: tmyquery_go;
    v_griglia_righe: TRzDBGrid_go;
    query_ordini_fornitori: tmyquery_go;
    query_ordini_fornitori_ds: tmydatasource;
    mmt: tmyquery_go;
    mmr: tmyquery_go;
    Panel1: TRzpanel;
    Panel2: TRzpanel;
    v_l_prezzo: TRzlabel;
    Label28: TRzlabel;
    v_quantita: TRzDBNumericEdit_go;
    v_saldo_acconto: TRzDBComboBox_go;
    v_memorizza: TRzBitBtn;
    art_01: tmyquery_go;
    art_01_ds: tmydatasource;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    Panel3: TRzpanel;
    Splitter1: TSplitter;
    Panel5: TRzpanel;
    Label9: TRzlabel;
    v_progressivo: TRzNumericEdit_go;
    RzDBEditDescrizione_go2: TRzDBEditDescrizione_go;
    opt_01: tmyquery_go;
    opt_01_ds: tmydatasource;
    opc: tmyquery_go;
    ltm: tmyquery_go;
    ltm_approntato: tmyquery_go;
    v_saldo_materie_prime: TRzDbcheckbox;
    v_scarti: TRzDbcheckbox;
    query_sor: tmyquery_go;
    v_lettore: TRzBitBtn;
    mmr_costo: TMyQuery_go;
    RzLabel1: TRzLabel;
    v_scarti_CQ: trzdbnumericedit_go;
    v_descrizione: trzdbedit_go;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    v_scarti_da_rottamare: trzdbnumericedit_go;
    RzLabel5: TRzLabel;
    v_scarti_da_recuperare: trzdbnumericedit_go;
    ubm: TMyQuery_go;
    upd_opr: TMyQuery_go;
    RzLabel3: TRzLabel;
    v_tma_codice_finiti: trzdbedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    tma_ds: TMyDataSource;
    tma: TMyQuery_go;
    v_recupero_da_scarti: TRzDBCheckBox;
    tool_cruart: TToolButton;
    v_tma_codice_materie_prime: trzdbedit_go;
    RzLabel6: TRzLabel;
    trzdbeditdescrizione_go2: trzdbeditdescrizione_go;
    GroupBox1: TGroupBox;
    Label18: TRzLabel;
    v_esistenza_deposito: trzdbnumericedit_go;
    esistenza_deposito_ds: TMyDataSource;
    esistenza_deposito: TMyQuery_go;
    tmas: TMyQuery_go;
    tmas_ds: TMyDataSource;
    procedure v_alla_dataExit(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure v_memorizzaClick(Sender: TObject);
    procedure v_quantitaExit(Sender: TObject);
    procedure pannello_parametriEnter(Sender: TObject);
    procedure pannello_parametriExit(Sender: TObject);
    procedure v_data_registrazioneExit(Sender: TObject);

    procedure v_art_codiceKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_grigliaEnter(Sender: TObject);
    procedure v_grigliaExit(Sender: TObject);
    procedure v_grigliaDblClick(Sender: TObject);
    procedure v_grigliaTitleClick(Column: TColumn);
    procedure v_progressivoExit(Sender: TObject);
    procedure v_grigliaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure v_scartiClick(Sender: TObject);
    procedure v_lettoreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_tma_codice_finitiExit(Sender: TObject);
    procedure tool_cruartClick(Sender: TObject);
    procedure v_esistenza_depositoChange(Sender: TObject);
    procedure sorAfterScroll(DataSet: TDataSet);
    procedure v_recupero_da_scartiClick(Sender: TObject);
  protected
    valdsb: tvaldsb;

    evaso_uno: boolean;
    commesse, esistenza: string;
    sconto_massimo_art: double;

    tla_codice_costi: string;

    locate_art_codice: string;
    locate_progressivo: integer;

    prosegui: boolean;
    ordinamento: word;

    //modica
    a31opc: tmyquery_go;
    a31movfas: tmyquery_go;
    //fine modica

    procedure esegui_selezione;
    procedure esegui_commesse;
    procedure esegui_lotti(tipo: string);

    procedure assegna_valore_alla_data;
    procedure data_registrazione_controllo;
    procedure art_codice_controllo(blocco: boolean);
    procedure progressivo_controllo(blocco: boolean);
    procedure assegna_valore_materie_prime_scarti;
    procedure assegna_indice;
    procedure giro_scarto(tipo_scarto: string; quantita_scarto, prezzo_finito: double);
    procedure esegui_ubicazioni;
    procedure tma_codice_finiti_controllo(blocco: boolean);
    procedure tma_codice_materie_prime_controllo(blocco: boolean);
    procedure visualizza_giacenza;
  public
    progressivo: integer;
    quantita_evadere: double;

    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;
  end;

var
  A31EVAORDP: TA31EVAORDP;

implementation

{$r *.dfm}

uses DMARC, ZZLIBRERIE, GGLTTERLAS, ZZLIBRERIE_PROMAU;

procedure TA31EVAORDP.controllo_campi;
begin
  art_codice_controllo(true);
  assegna_valore_alla_data;
  data_registrazione_controllo;
  progressivo_controllo(true);

end;

procedure TA31EVAORDP.visualizza_stampa_elabora;
begin
  art_codice_controllo(false);
  progressivo_controllo(false);
end;

procedure TA31EVAORDP.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  assegna_valore_alla_data;
end;

procedure TA31EVAORDP.assegna_valore_alla_data;
begin
  if controllo then
  begin
    if v_alla_data.date = 0 then
    begin
      v_alla_data.text := data_31_12_9999;
    end;
  end;
end;

procedure TA31EVAORDP.v_confermaClick(Sender: TObject);
begin
  if sender = v_conferma then
  begin
    esegui_selezione;
  end;

  inherited;

  if prosegui then
  begin
    visualizza_giacenza;
    if v_griglia.canfocus then
    begin
      v_griglia.setfocus;
    end;
  end;
end;

procedure TA31EVAORDP.esegui_selezione;
begin
  query_ordini_fornitori.sql.clear;
  query_ordini_fornitori.sql.add('select art.codice art_codice, art.descrizione1 art_descrizione1, opt.avanzamento_fasi,');
  query_ordini_fornitori.sql.add('art.descrizione2 art_descrizione2, art.tum_codice, opt.progressivo, frn.descrizione1 frn_descrizione1,');
  query_ordini_fornitori.sql.add('(opt.quantita - opt.quantita_evasa) quantita, opt.data_consegna, opt.ovr_progressivo,');
  query_ordini_fornitori.sql.add('opt.tmo_codice_finiti, opt.tma_codice_finiti, opt.tmo_codice_materie_prime, opt.tma_codice_materie_prime');
  query_ordini_fornitori.sql.add('from opt');
  query_ordini_fornitori.sql.add('inner join opc opc on (opc.progressivo=opt.progressivo)'); // and ( opc.fas_codice =:fas_codice )');
  query_ordini_fornitori.sql.add('inner join art art on (art.codice = opt.art_codice)');
  query_ordini_fornitori.sql.add('inner join frn frn on (frn.codice = opt.frn_codice)');
  query_ordini_fornitori.sql.add('where (opt.data_consegna <= :data_consegna or opt.data_consegna is null)');
  query_ordini_fornitori.sql.add('and opt.frn_codice = ''''  ');
  query_ordini_fornitori.sql.add('and opt.situazione <> ''evaso''');

  // query_ordini_fornitori.params[0].asstring := promau_fas_codice;
  query_ordini_fornitori.params[0].asdate := v_alla_data.date;
  if trim(v_art_codice.text) <> '' then
  begin
    query_ordini_fornitori.sql.add('and opt.art_codice = :art_codice');
    query_ordini_fornitori.params[1].asstring := v_art_codice.text;
  end;
  query_ordini_fornitori.sql.add('order by opt.art_codice, opt.data_consegna');
  query_ordini_fornitori.close;
  query_ordini_fornitori.open;

  query.sql.clear;
  query.sql.add('select art.codice art_codice, art.tum_codice, opt.progressivo, opt.avanzamento_fasi,');
  query.sql.add('case when opt.ovr_progressivo = 0 then art.descrizione1');
  query.sql.add('else (select descrizione1 from ovr where progressivo = opt.ovr_progressivo and riga = opt.ovr_riga)');
  query.sql.add('end art_descrizione1,');
  query.sql.add('case when opt.ovr_progressivo = 0 then art.descrizione2');
  query.sql.add('else (select descrizione2 from ovr where progressivo = opt.ovr_progressivo and riga = opt.ovr_riga)');
  query.sql.add('end art_descrizione2, opt.data_consegna, opt.ovr_progressivo, opt.top_codice, opt.serie_documento,');

  query.sql.add('case');
  query.sql.add('when opt.avanzamento_fasi = ''si'' then');
  query.sql.add('case when opt.situazione = ''inserito'' then');
  query.sql.add('coalesce((select quantita_prodotti from opc');
  query.sql.add('where progressivo = opt.progressivo and fas_codice<>''START'' and situazione = ''completata''');
  query.sql.add('order by sequenza desc limit 1), opt.quantita - opt.quantita_evasa)');
  query.sql.add('else opt.quantita - opt.quantita_evasa');
  query.sql.add('end');
  query.sql.add('else');
  query.sql.add('opt.quantita - opt.quantita_evasa');
  query.sql.add('end quantita,');
  query.sql.add('opt.tmo_codice_finiti, opt.tma_codice_finiti, opt.tmo_codice_materie_prime, opt.tma_codice_materie_prime,');
  query.sql.add('opt.data_documento, opt.numero_documento, ovt.numero_documento numero_ordine_cliente,');
  query.sql.add('ovt.data_documento data_ordine_cliente, cli.descrizione1 descrizione_cliente');
  query.sql.add('from opt');
  query.sql.add('inner join art on (art.codice = opt.art_codice)');
  query.sql.add('left join ovt on ovt.progressivo = opt.ovr_progressivo');
  query.sql.add('left join cli on cli.codice = ovt.cli_codice');
  query.sql.add('where ');
  query.sql.add('(opt.data_consegna <= :data_consegna or opt.data_consegna is null)');
  query.sql.add('and ( opt.frn_codice = '''' ) ');
  query.sql.add('and ( opt.situazione <> ''evaso'' ) ');
  if v_progressivo.value <> 0 then
  begin
    query.sql.add('and opt.progressivo = ' + v_progressivo.text);
  end;

  if arc.dit.fieldbyname('avanzamento_fasi').asstring = 'si' then
  begin
    query.sql.add('and (opt.avanzamento_fasi = ''no'' or (opt.avanzamento_fasi = ''si'' and');
    query.sql.add(' exists(select id from opc where progressivo = opt.progressivo and situazione <> ''completata'')))');
  end;

  query.parambyname('data_consegna').asdatetime := v_alla_data.date;

  if trim(v_art_codice.text) <> '' then
  begin
    query.sql.add('and opt.art_codice = :art_codice');
    query.parambyname('art_codice').asstring := v_art_codice.text;
  end;
  query.sql.add('order by opt.art_codice, opt.data_consegna');
  query.close;
  query.open;

  if query.eof then
  begin
    messaggio(100, 'nessun ordine da evadere');
    prosegui := false;
  end
  else
  begin
    while not query.eof do
    begin
      sor.append;

      sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
      sor.fieldbyname('art_descrizione').asstring := trim(query.fieldbyname('art_descrizione1').asstring) + ' ' + query.fieldbyname('art_descrizione2').asstring;
      sor.fieldbyname('tum_codice').asstring := query.fieldbyname('tum_codice').asstring;
      sor.fieldbyname('progressivo').asfloat := query.fieldbyname('progressivo').asfloat;
      sor.fieldbyname('quantita').asfloat := query.fieldbyname('quantita').asfloat;
      sor.fieldbyname('quantita_evasa').asfloat := 0;
      sor.fieldbyname('data_consegna').asstring := query.fieldbyname('data_consegna').asstring;
      sor.fieldbyname('tmo_codice_finiti').asstring := query.fieldbyname('tmo_codice_finiti').asstring;
      sor.fieldbyname('tma_codice_finiti').asstring := query.fieldbyname('tma_codice_finiti').asstring;
      sor.fieldbyname('tmo_codice_materie_prime').asstring := query.fieldbyname('tmo_codice_materie_prime').asstring;
      sor.fieldbyname('tma_codice_materie_prime').asstring := query.fieldbyname('tma_codice_materie_prime').asstring;
      sor.fieldbyname('ovr_progressivo').asinteger := query.fieldbyname('ovr_progressivo').asinteger;
      sor.fieldbyname('saldo_acconto').asstring := 'saldo';
      sor.fieldbyname('data_documento').asdatetime := query.fieldbyname('data_documento').asdatetime;
      sor.fieldbyname('numero_documento').asinteger := query.fieldbyname('numero_documento').asinteger;
      sor.fieldbyname('numero_ordine_cliente').asinteger := query.fieldbyname('numero_ordine_cliente').asinteger;
      sor.fieldbyname('data_ordine_cliente').value := query.fieldbyname('data_ordine_cliente').value;
      sor.fieldbyname('descrizione_cliente').asstring := query.fieldbyname('descrizione_cliente').asstring;
      sor.fieldbyname('avanzamento_fasi').asstring := query.fieldbyname('avanzamento_fasi').asstring;
      sor.fieldbyname('top_codice').asstring := query.fieldbyname('top_codice').asstring;
      sor.fieldbyname('serie_documento').asstring := query.fieldbyname('serie_documento').asstring;

      sor.fieldbyname('utn_codice').asstring := utente;
      sor.post;

      query.next;
    end;
    sor.close;
    sor.open;

    prosegui := true;
  end;

  (v_griglia.columns.items[4].field as tfloatfield).displayformat := formato_display_quantita;
  (v_griglia.columns.items[5].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columns.items[4].field as tfloatfield).displayformat := formato_display_quantita_zero;
end;

procedure TA31EVAORDP.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure TA31EVAORDP.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, art_01, v_art_codice, blocco, nil, nil, nil);
end;

procedure TA31EVAORDP.progressivo_controllo(blocco: boolean);
begin
  tabella_controllo(true, opt_01, v_progressivo, blocco, nil, nil, nil);
end;

procedure TA31EVAORDP.sorAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if pannello_esposizione.enabled then
  begin
    visualizza_giacenza;
  end;
end;

procedure TA31EVAORDP.v_lettoreClick(Sender: TObject);
var
  pr: tltterlas;

  i, riga: word;
  lista_art_codice, lista_codice_originale, lista_quantita, lista_prezzo, lista_codice_lotto, lista_data_scadenza, lista_progressivo_evasione, lista_riga_evasione, lista_tipo_evasione: tstringlist;
begin
  inherited;

  lista_art_codice := tstringlist.create;
  lista_codice_originale := tstringlist.create;
  lista_quantita := tstringlist.create;
  lista_prezzo := tstringlist.create;
  lista_codice_lotto := tstringlist.create;
  lista_data_scadenza := tstringlist.create;
  lista_progressivo_evasione := tstringlist.create;
  lista_riga_evasione := tstringlist.create;
  lista_tipo_evasione := tstringlist.create;

  pr := tltterlas.create(nil);
  if pr.esegui_form then
  begin
    pr.lista_art_codice := lista_art_codice;
    pr.lista_codice_originale := lista_codice_originale;
    pr.lista_quantita := lista_quantita;
    pr.lista_prezzo := lista_prezzo;
    pr.lista_codice_lotto := lista_codice_lotto;
    pr.lista_data_scadenza := lista_data_scadenza;
    pr.lista_progressivo_evasione := lista_progressivo_evasione;
    pr.lista_riga_evasione := lista_riga_evasione;
    pr.lista_tipo_evasione := lista_tipo_evasione;
    pr.codice_terlas := 'EVAORDP';
    pr.showmodal;
    if (pr.conferma = true) and (pr.lista_art_codice.count > 0) then
    begin
      for i := 0 to lista_art_codice.count - 1 do
      begin
        sor.append;
        sor.fieldbyname('utn_codice').asstring := utente;
        sor.fieldbyname('art_codice').asstring := lista_art_codice[i];
        read_tabella(arc.arcdit, 'art', 'codice', sor.fieldbyname('art_codice').asstring);
        sor.fieldbyname('art_descrizione').asstring := archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring;
        sor.fieldbyname('tum_codice').asstring := archivio.fieldbyname('tum_codice').asstring;
        sor.fieldbyname('progressivo').asinteger := strtoint(lista_progressivo_evasione[i]);
        read_tabella(opt, sor.fieldbyname('progressivo').asinteger);

        sor.fieldbyname('avanzamento_fasi').asstring := opt.fieldbyname('avanzamento_fasi').asstring;
        if opt.fieldbyname('avanzamento_fasi').asstring = 'si' then
        begin
          sor.fieldbyname('quantita').asfloat := opt.fieldbyname('quantita_ciclo').asfloat;
        end
        else
        begin
          sor.fieldbyname('quantita').asfloat := opt.fieldbyname('quantita').asfloat - opt.fieldbyname('quantita_evasa').asfloat;
        end;

        sor.fieldbyname('quantita_evasa').asfloat := strtofloat(lista_quantita[i]);
        sor.fieldbyname('data_consegna').asstring := opt.fieldbyname('data_consegna').asstring;
        sor.fieldbyname('tmo_codice_finiti').asstring := opt.fieldbyname('tmo_codice_finiti').asstring;
        sor.fieldbyname('tma_codice_finiti').asstring := opt.fieldbyname('tma_codice_finiti').asstring;
        sor.fieldbyname('tmo_codice_materie_prime').asstring := opt.fieldbyname('tmo_codice_materie_prime').asstring;
        sor.fieldbyname('tma_codice_materie_prime').asstring := opt.fieldbyname('tma_codice_materie_prime').asstring;
        sor.fieldbyname('ovr_progressivo').asinteger := opt.fieldbyname('ovr_progressivo').asinteger;
        sor.fieldbyname('saldo_acconto').asstring := lista_tipo_evasione[i];
        sor.fieldbyname('data_documento').asdatetime := opt.fieldbyname('data_documento').asdatetime;
        sor.fieldbyname('numero_documento').asinteger := opt.fieldbyname('numero_documento').asinteger;
        sor.fieldbyname('numero_ordine_cliente').asinteger := opt.fieldbyname('numero_ordine_cliente').asinteger;
        sor.fieldbyname('data_ordine_cliente').value := opt.fieldbyname('data_ordine_cliente').value;
        sor.fieldbyname('descrizione_cliente').asstring := opt.fieldbyname('descrizione_cliente').asstring;
        sor.post;
      end;
    end;
  end;

  freeandnil(lista_art_codice);
  freeandnil(lista_codice_originale);
  freeandnil(lista_quantita);
  freeandnil(lista_prezzo);
  freeandnil(lista_codice_lotto);
  freeandnil(lista_data_scadenza);
  freeandnil(lista_progressivo_evasione);
  freeandnil(lista_riga_evasione);
  freeandnil(lista_tipo_evasione);

  pr.free;

  v_confermaclick(v_lettore);
end;

procedure TA31EVAORDP.FormCreate(Sender: TObject);
begin
  a31opc := tmyquery_go.create(Self);
  a31opc.connection := arc.arcdit;
  a31opc.sql.add('select * from opc');
  a31opc.sql.add('where');
  a31opc.sql.add('progressivo=:progressivo and');
  a31opc.sql.add('sequenza>0 and ');
  a31opc.sql.add('situazione=''inserita'' ');

  a31movfas := tmyquery_go.create(Self);
  a31movfas.connection := arc.arcdit;
  a31movfas.sql.add('select * from movfas');
  a31movfas.sql.add('where');
  a31movfas.sql.add('id_opc=:id_opc');

  promau_inizializza_variabili;

  valdsb := tvaldsb.create;

  tab_pagina2_abilitata := true;
  self.height := 310;

  inherited;

  ordinamento := 0;
  evaso_uno := false;
  v_data_registrazione.date := now;

  tla_codice_costi := arc.dit.fieldbyname('tla_codice').asstring;

  v_quantita.decimalplaces := decimali_max_quantita;
  v_quantita.displayformat := formato_display_quantita_zero;
end;

procedure TA31EVAORDP.FormDestroy(Sender: TObject);
begin
  inherited;
  freeandnil(valdsb);
end;

procedure TA31EVAORDP.FormShow(Sender: TObject);
begin
  inherited;
  v_esistenza_deposito.displayformat := formato_display_quantita_zero;

  if progressivo <> 0 then
  begin
    v_progressivo.value := progressivo;
    v_alla_data.text := data_31_12_9999;
    v_data_registrazione.date := date;

    v_confermaclick(nil);

    pannello_parametrienter(pannello_parametri);
    esegui_selezione;
    tab_control.activepage := tab_pagina2;

    sor.edit;
    sor.fieldbyname('quantita_evasa').asfloat := quantita_evadere;
    sor.fieldbyname('saldo_acconto').asstring := 'saldo';

    pannello_esposizione.enabled := true;

    //self.height := 690;

    if tab_pagina2_abilitata then
    begin
      self.windowstate := wsMaximized;
    end;

    disabilita_campo(v_saldo_acconto);

    v_quantita.setfocus;
  end;
end;

procedure TA31EVAORDP.Panel2Enter(Sender: TObject);
begin
  inherited;
  sor.edit;
  if sor.fieldbyname('quantita_evasa').asfloat = 0 then
  begin
    sor.fieldbyname('quantita_evasa').asfloat := sor.fieldbyname('quantita').asfloat;
  end;
  cifre_decimali_quantita := decimali_quantita_art(query.fieldbyname('art_codice').asstring);
end;

procedure TA31EVAORDP.Panel2Exit(Sender: TObject);
begin
  inherited;
  assegna_valore_materie_prime_scarti;
  sor.fieldbyname('utn_codice').asstring := utente;
  sor.post;
  evaso_uno := true;
  v_memorizza.enabled := true;
end;

procedure TA31EVAORDP.v_memorizzaClick(Sender: TObject);
var
  saldo: boolean;
  riga: word;
  quantita, importo, costo, prezzo_finito: double;
  progressivo_mmt: integer;

  prezzo_inventario: double;
  valorizzazione: string;

  salva_puntatore: tbookmark;
begin
  inherited;
  v_memorizza.enabled := false;

  mmt.open;
  mmr.open;

  apri_transazione;
  try
    //  scarico materie prime
    // sor.close;
    query_sor.close;
    query_sor.parambyname('utn_codice').asstring := utente;
    query_sor.open;
    while not query_sor.eof do
    begin
      //salva_puntatore := query_sor.getbookmark;
      if query_sor.fieldbyname('quantita_evasa').asfloat <> 0 then
      begin
        opt.close;
        opt.params[0].asfloat := query_sor.fieldbyname('progressivo').asfloat;
        opt.open;

        if (opt.fieldbyname('avanzamento_fasi').asstring = 'si') and ((opt.fieldbyname('scarico_prima_fase').asstring = 'si') or (arc.dit.fieldbyname('scarico_prima_fase').asstring = 'si')) then
        begin
          read_tabella(mmr_costo, query_sor.fieldbyname('progressivo').asfloat);
          importo := mmr_costo.fieldbyname('importo').asfloat;
        end
        else
        begin
          if query_sor.fieldbyname('saldo_materie_prime').asstring = 'si' then
          begin
            saldo := true;
          end
          else
          begin
            saldo := false;
          end;

          progressivo_mmt := arc.setta_valore_generatore(tmyconnection_go(mmt.connection), 'mmt_progressivo');

          mmt.append;

          mmt.fieldbyname('progressivo').asinteger := progressivo_mmt;
          mmt.fieldbyname('tmo_codice').asstring := query_sor.fieldbyname('tmo_codice_materie_prime').asstring;
          mmt.fieldbyname('tma_codice').asstring := query_sor.fieldbyname('tma_codice_materie_prime').asstring;
          mmt.fieldbyname('data_registrazione').asdatetime := v_data_registrazione.date;
          mmt.fieldbyname('tipo_documento').asstring := 'produzione';
          mmt.fieldbyname('data_documento').asdatetime := opt.fieldbyname('data_documento').asdatetime;
          mmt.fieldbyname('numero_documento').asinteger := opt.fieldbyname('numero_documento').asinteger;
          mmt.fieldbyname('tva_codice').asstring := divisa_di_conto;
          mmt.fieldbyname('cambio').asfloat := 1;
          mmt.fieldbyname('ese_codice').asstring := esercizio;
          mmt.fieldbyname('documento_origine').asstring := 'ordini produzione';
          mmt.fieldbyname('doc_progressivo_origine').asfloat := query_sor.fieldbyname('progressivo').asfloat;
          mmt.fieldbyname('opt_progressivo').asfloat := query_sor.fieldbyname('progressivo').asfloat;
          if read_tabella(arc.arcdit, 'ovt', 'progressivo', query_sor.fieldbyname('ovr_progressivo').asinteger, 'cli_codice') then
          begin
            mmt.fieldbyname('cfg_tipo').asstring := 'C';
            mmt.fieldbyname('cfg_codice').asstring := archivio.fieldbyname('cli_codice').asstring;
          end;

          mmt.post;
          riga := 0;
          commesse := '';
          esistenza := 'ignora';
          if read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'commesse, esistenza') then
          begin
            commesse := archivio.fieldbyname('commesse').asstring;
            esistenza := archivio.fieldbyname('esistenza').asstring;
          end;

          importo := 0;

          if query_sor.fieldbyname('a31recupero_da_scarti').asstring = 'si' then
          begin
            mmr.append;

            costo := 0;

            riga := riga + 1;
            mmr.fieldbyname('progressivo').asfloat := mmt.fieldbyname('progressivo').asfloat;
            mmr.fieldbyname('riga').asinteger := riga;
            mmr.fieldbyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
            mmr.fieldbyname('tma_codice').asstring := query_sor.fieldbyname('tma_codice_materie_prime').asstring;
            mmr.fieldbyname('quantita').asfloat := query_sor.fieldbyname('quantita_evasa').asfloat;
            mmr.fieldbyname('prezzo').asfloat := costo;
            mmr.fieldbyname('importo').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * costo);
            mmr.fieldbyname('importo_euro').asfloat := mmr.fieldbyname('importo').asfloat;
            mmr.fieldbyname('tipo_movimento').asstring := 'normale';
            mmr.fieldbyname('opt_tipo_articolo').asstring := 'componente';

            if esistenza = 'incrementa' then
            begin
              mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;
            end;
            if esistenza = 'decrementa' then
            begin
              mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
            end;

            mmr.post;

            esegui_commesse;
            esegui_lotti('componenti');
          end
          else
          begin

            opr.params[0].asfloat := query_sor.fieldbyname('progressivo').asfloat;
            opr.close;
            opr.open;
            while not opr.eof do
            begin
              cifre_decimali_quantita := decimali_quantita_art(opr.fieldbyname('art_codice').asstring);

              //  a saldo materie prime confermato utilizza sempre tutta la quntità delle materie prime
              if saldo then
              begin
                quantita := opr.fieldbyname('quantita').asfloat - opr.fieldbyname('quantita_evasa').asfloat;
                if query_sor.fieldbyname('quantita_evasa').asfloat >= query_sor.fieldbyname('quantita').asfloat then
                begin
                  quantita := quantita + arrotonda((opr.fieldbyname('quantita').asfloat / opt.fieldbyname('quantita').asfloat) * (query_sor.fieldbyname('quantita_evasa').asfloat - opt.fieldbyname('quantita').asfloat), cifre_decimali_quantita);
                end;
              end
              else
              begin
                if query_sor.fieldbyname('quantita_evasa').asfloat >= query_sor.fieldbyname('quantita').asfloat then
                begin
                  quantita := opr.fieldbyname('quantita').asfloat - opr.fieldbyname('quantita_evasa').asfloat;
                  // aggiungo qta finiti eccedenti
                  if quantita = 0 then
                  begin
                    quantita := arrotonda((opr.fieldbyname('quantita').asfloat / opt.fieldbyname('quantita').asfloat) * (query_sor.fieldbyname('quantita_evasa').asfloat), cifre_decimali_quantita);
                  end
                  else
                  begin
                    if query_sor.fieldbyname('quantita_evasa').asfloat > query_sor.fieldbyname('quantita').asfloat then
                    begin
                      quantita := quantita + arrotonda((opr.fieldbyname('quantita').asfloat / opt.fieldbyname('quantita').asfloat) * (query_sor.fieldbyname('quantita_evasa').asfloat - opt.fieldbyname('quantita').asfloat), cifre_decimali_quantita);
                    end;
                  end;
                end
                else
                begin
                  quantita := arrotonda((opr.fieldbyname('quantita').asfloat / opt.fieldbyname('quantita').asfloat) * query_sor.fieldbyname('quantita_evasa').asfloat, cifre_decimali_quantita);
                end;
              end;

              costo := valdsb.calcola_costo_produzione(opr.fieldbyname('progressivo').asinteger, opr.fieldbyname('riga').asinteger, false);

              importo := arrotonda(importo + (quantita * costo), decimali_max_prezzo_acq);

              read_tabella(art, opr.fieldbyname('art_codice').asstring);
              if art.fieldbyname('tipo_articolo').asstring = 'fiscale' then
              begin
                if quantita <> 0 then
                begin
                  mmr.append;

                  riga := riga + 1;
                  mmr.fieldbyname('progressivo').asfloat := mmt.fieldbyname('progressivo').asfloat;
                  mmr.fieldbyname('riga').asinteger := riga;
                  mmr.fieldbyname('art_codice').asstring := opr.fieldbyname('art_codice').asstring;
                  mmr.fieldbyname('tma_codice').asstring := opr.fieldbyname('tma_codice').asstring;
                  mmr.fieldbyname('quantita').asfloat := quantita;
                  mmr.fieldbyname('prezzo').asfloat := costo;
                  mmr.fieldbyname('importo').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * costo);
                  mmr.fieldbyname('importo_euro').asfloat := mmr.fieldbyname('importo').asfloat;
                  mmr.fieldbyname('tipo_movimento').asstring := 'normale';
                  mmr.fieldbyname('opt_tipo_articolo').asstring := 'componente';

                  if esistenza = 'incrementa' then
                  begin
                    mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;
                  end;
                  if esistenza = 'decrementa' then
                  begin
                    mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
                  end;

                  mmr.fieldbyname('doc_riga_origine').asinteger := opr.fieldbyname('riga').asinteger;

                  mmr.post;

                  esegui_commesse;
                  esegui_lotti('componenti');
                end;
              end;

              opr.edit;
              opr.fieldbyname('quantita_evasa').asfloat := arrotonda(opr.fieldbyname('quantita_evasa').asfloat + quantita, cifre_decimali_quantita);
              opr.fieldbyname('quantita_approntata').asfloat := opr.fieldbyname('quantita_approntata').asfloat - quantita;
              if opr.fieldbyname('quantita_approntata').asfloat < 0 then
              begin
                opr.fieldbyname('quantita_approntata').asfloat := 0;
              end;

              if query_sor.fieldbyname('saldo_acconto').asstring = 'saldo' then
              begin
                opr.fieldbyname('situazione').asstring := 'evaso';
              end
              else
              begin
                opr.fieldbyname('situazione').asstring := 'evaso parziale';
              end;

              opr.post;
              opr.next;
            end;
          end;
        end;

        //  carico finito
        progressivo_mmt := arc.setta_valore_generatore(tmyconnection_go(mmt.connection), 'mmt_progressivo');

        mmt.append;

        mmt.fieldbyname('progressivo').asinteger := progressivo_mmt;
        mmt.fieldbyname('tmo_codice').asstring := query_sor.fieldbyname('tmo_codice_finiti').asstring;
        mmt.fieldbyname('tma_codice').asstring := query_sor.fieldbyname('tma_codice_finiti').asstring;
        mmt.fieldbyname('data_registrazione').asdatetime := v_data_registrazione.date;
        mmt.fieldbyname('tipo_documento').asstring := 'produzione';
        mmt.fieldbyname('data_documento').asdatetime := opt.fieldbyname('data_documento').asdatetime;
        mmt.fieldbyname('numero_documento').asinteger := opt.fieldbyname('numero_documento').asinteger;
        mmt.fieldbyname('tva_codice').asstring := divisa_di_conto;
        mmt.fieldbyname('cambio').asfloat := 1;
        mmt.fieldbyname('ese_codice').asstring := esercizio;
        mmt.fieldbyname('documento_origine').asstring := 'ordini produzione';
        mmt.fieldbyname('doc_progressivo_origine').asfloat := query_sor.fieldbyname('progressivo').asfloat;
        mmt.fieldbyname('opt_progressivo').asfloat := query_sor.fieldbyname('progressivo').asfloat;
        if read_tabella(arc.arcdit, 'ovt', 'progressivo', vararrayof([query_sor.fieldbyname('ovr_progressivo').asinteger]), 'cli_codice') then
        begin
          mmt.fieldbyname('cfg_tipo').asstring := 'C';
          mmt.fieldbyname('cfg_codice').asstring := archivio.fieldbyname('cli_codice').asstring;
        end;

        mmt.post;
        riga := 0;
        commesse := '';
        esistenza := 'ignora';
        if read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'commesse, esistenza') then
        begin
          commesse := archivio.fieldbyname('commesse').asstring;
          esistenza := archivio.fieldbyname('esistenza').asstring;
        end;

        if query_sor.fieldbyname('quantita_evasa').asfloat <> 0 then
        begin
          mmr.append;

          riga := riga + 1;
          mmr.fieldbyname('progressivo').asfloat := mmt.fieldbyname('progressivo').asfloat;
          mmr.fieldbyname('riga').asinteger := riga;
          mmr.fieldbyname('art_codice').asstring := opt.fieldbyname('art_codice').asstring;
          mmr.fieldbyname('tma_codice').asstring := mmt.fieldbyname('tma_codice').asstring;
          mmr.fieldbyname('quantita').asfloat := query_sor.fieldbyname('quantita_evasa').asfloat;
          mmr.fieldbyname('prezzo').asfloat := arrotonda((importo / mmr.fieldbyname('quantita').asfloat), decimali_max_prezzo_acq);

          mmr.fieldbyname('importo').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * mmr.fieldbyname('prezzo').asfloat);
          mmr.fieldbyname('importo_euro').asfloat := mmr.fieldbyname('importo').asfloat;

          mmr.fieldbyname('importo_spese').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * valdsb.calcola_costo_produzione(opt.fieldbyname('progressivo').asinteger, 0, true));
          mmr.fieldbyname('importo_spese_euro').asfloat := mmr.fieldbyname('importo_spese').asfloat;

          mmr.fieldbyname('tipo_movimento').asstring := 'normale';
          mmr.fieldbyname('opt_tipo_articolo').asstring := 'finito';

          if esistenza = 'incrementa' then
          begin
            mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;
          end;
          if esistenza = 'decrementa' then
          begin
            mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
          end;

          mmr.post;

          prezzo_finito := mmr.fieldbyname('prezzo').asfloat;

          esegui_commesse;
          esegui_lotti('finito');
        end;

        //--------------------------------------------------------------------
        // 11.10.2017b Paolo
        // si evadonos oloi pezzi buoni
        //--------------------------------------------------------------------
        opt.edit;
        opt.fieldbyname('quantita_evasa').asfloat := arrotonda(opt.fieldbyname('quantita_evasa').asfloat + query_sor.fieldbyname('quantita_evasa').asfloat - query_sor.fieldbyname('quantita_scarti').asfloat - query_sor.fieldbyname('a31scarti_da_rottamare').asfloat - query_sor.fieldbyname('a31scarti_da_recuperare').asfloat, 4);
        (*
          if query_sor.fieldbyname('saldo_acconto').asstring = 'saldo' then
          begin
          opt.fieldbyname('situazione').asstring := 'evaso';
          end
          else
          begin
          opt.fieldbyname('situazione').asstring := 'evaso parziale';
          end;
        *)
        query_sor.edit;
        if opt.fieldbyname('quantita_evasa').asfloat >= opt.fieldbyname('quantita').asfloat then
        begin
          opt.fieldbyname('situazione').asstring := 'evaso';
          query_sor.fieldbyname('saldo_acconto').asstring := 'saldo';
        end
        else
        begin
          if opt.fieldbyname('quantita_evasa').asfloat > 0 then
          begin
            opt.fieldbyname('situazione').asstring := 'evaso parziale';
            query_sor.fieldbyname('saldo_acconto').asstring := 'acconto';
          end;
        end;
        query_sor.post;
        opt.post;

        //-------------------------------------------------------
        //  giro carico scarti / scarico finito
        //-------------------------------------------------------
        giro_scarto('SC', query_sor.fieldbyname('quantita_scarti').asfloat, prezzo_finito);
        giro_scarto('RO', query_sor.fieldbyname('a31scarti_da_rottamare').asfloat, prezzo_finito);
        giro_scarto('RE', query_sor.fieldbyname('a31scarti_da_recuperare').asfloat, prezzo_finito);
        //------------------------------------------------------------------------

        if opt.fieldbyname('avanzamento_fasi').asstring = 'no' then
        begin
          if query_sor.fieldbyname('saldo_acconto').asstring = 'saldo' then
          begin
            opc.close;
            opc.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
            opc.parambyname('situazione').asstring := 'completata';
            opc.execsql;
          end
          else if query_sor.fieldbyname('saldo_acconto').asstring = 'acconto' then
          begin
            opc.close;
            opc.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
            opc.parambyname('situazione').asstring := 'iniziata';
            opc.execsql;
          end;
        end
        //modifica
        else if opt.fieldbyname('avanzamento_fasi').asstring = 'si' then
        begin

          a31opc.close;
          a31opc.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
          a31opc.open;

          if not a31opc.eof then
          begin
            //--------------------------------------------------------
            // memorizzo link alla riga del movimento di magazzino
            //--------------------------------------------------------
            mmr.edit;
            mmr.fieldbyname('descrizione').asstring := '[' + a31opc.fieldbyname('fas_codice').asstring + ']' + mmr.fieldbyname('descrizione').asstring;
            mmr.fieldbyname('id_origine').asfloat := query_sor.fieldbyname('id').asfloat;
            mmr.post;

            a31opc.edit;
            if a31opc.fieldbyname('quantita_iniziata').asinteger = 0 then
            begin
              a31opc.fieldbyname('quantita_iniziata').asinteger := a31opc.fieldbyname('quantita').asinteger;
            end;

            a31opc.fieldbyname('quantita_prodotti').asinteger := a31opc.fieldbyname('quantita_prodotti').asinteger + query_sor.fieldbyname('quantita_evasa').asinteger;
            a31opc.fieldbyname('quantita_scarti').asinteger := a31opc.fieldbyname('quantita_scarti').asinteger + query_sor.fieldbyname('quantita_scarti').asinteger;
            a31opc.fieldbyname('quantita_consuntivo').asinteger := a31opc.fieldbyname('quantita_consuntivo').asinteger + query_sor.fieldbyname('quantita_evasa').asinteger;

            if query_sor.fieldbyname('saldo_acconto').asstring = 'saldo' then
            begin
              a31opc.fieldbyname('situazione').asstring := 'completata';
            end
            else
            begin
              a31opc.fieldbyname('situazione').asstring := 'iniziata';
            end;

            a31opc.post;

            // dettaglio fasi di lavoro
            a31movfas.close;
            a31movfas.parambyname('id_opc').asinteger := a31opc.fieldbyname('id').asinteger;
            a31movfas.open;

            a31movfas.append;
            a31movfas.fieldbyname('id_opc').asinteger := a31opc.fieldbyname('id').asinteger;
            a31movfas.fieldbyname('quantita_iniziata').asinteger := 0;
            a31movfas.fieldbyname('quantita_prodotti').asinteger := query_sor.fieldbyname('quantita_evasa').asinteger;
            a31movfas.fieldbyname('quantita_scarti').asinteger := query_sor.fieldbyname('quantita_scarti').asinteger;
            a31movfas.fieldbyname('tipo_operazione').asstring := 'quantità consegnata';
            a31movfas.fieldbyname('descrizione').asstring := query_sor.fieldbyname('descrizione').asstring;
            a31movfas.fieldbyname('data_ora_lavorazione').asdatetime := now;
            a31movfas.post;
          end;

        end;

        //fine modifica
      end;

      commit_transazione;

      query_sor.next;
    end;
  finally
    chiudi_transazione;
  end;

  //close;
  tab_control.activepage := tab_pagina1;

  v_progressivo.value := 0;
  v_art_codice.setfocus;
  pannello_esposizione.enabled := false;
end;

procedure TA31EVAORDP.giro_scarto(tipo_scarto: string; quantita_scarto, prezzo_finito: double);
var
  progressivo_mmt, riga: integer;
  tmo_codice, tma_codice, tma_codice_collegato: string;
begin

  if quantita_scarto > 0 then
  begin
    tmo_codice := 'CASC';
    tma_codice := copy(query_sor.fieldbyname('tma_codice_finiti').asstring, 1, 2) + tipo_scarto;

    progressivo_mmt := arc.setta_valore_generatore(tmyconnection_go(mmt.connection), 'mmt_progressivo');
    mmt.append;

    mmt.fieldbyname('progressivo').asinteger := progressivo_mmt;

    read_tabella(arc.arcdit, 'tmo', 'codice', 'CASC');
    mmt.fieldbyname('tmo_codice').asstring := archivio.fieldbyname('codice').asstring;
    mmt.fieldbyname('tma_codice').asstring := tma_codice;
    mmt.fieldbyname('tmo_codice_collegato').asstring := archivio.fieldbyname('tmo_codice_collegato').asstring;
    mmt.fieldbyname('tma_codice_collegato').asstring := query_sor.fieldbyname('tma_codice_finiti').asstring;
    mmt.fieldbyname('data_registrazione').asdatetime := v_data_registrazione.date;
    mmt.fieldbyname('tipo_documento').asstring := 'produzione';
    mmt.fieldbyname('data_documento').asdatetime := opt.fieldbyname('data_documento').asdatetime;
    mmt.fieldbyname('numero_documento').asinteger := opt.fieldbyname('numero_documento').asinteger;
    mmt.fieldbyname('tva_codice').asstring := divisa_di_conto;
    mmt.fieldbyname('cambio').asfloat := 1;
    mmt.fieldbyname('ese_codice').asstring := esercizio;
    mmt.fieldbyname('documento_origine').asstring := 'ordini produzione';
    mmt.fieldbyname('doc_progressivo_origine').asfloat := query_sor.fieldbyname('progressivo').asfloat;
    mmt.fieldbyname('opt_progressivo').asfloat := query_sor.fieldbyname('progressivo').asfloat;
    if read_tabella(arc.arcdit, 'ovt', 'progressivo', vararrayof([query_sor.fieldbyname('ovr_progressivo').asinteger]), 'cli_codice') then
    begin
      mmt.fieldbyname('cfg_tipo').asstring := 'C';
      mmt.fieldbyname('cfg_codice').asstring := archivio.fieldbyname('cli_codice').asstring;
    end;

    mmt.post;
    riga := 0;
    commesse := '';
    esistenza := 'ignora';
    if read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'commesse, esistenza') then
    begin
      commesse := archivio.fieldbyname('commesse').asstring;
      esistenza := archivio.fieldbyname('esistenza').asstring;
    end;

    mmr.append;

    riga := riga + 1;
    mmr.fieldbyname('progressivo').asfloat := mmt.fieldbyname('progressivo').asfloat;
    mmr.fieldbyname('riga').asinteger := riga;
    mmr.fieldbyname('art_codice').asstring := opt.fieldbyname('art_codice').asstring;
    mmr.fieldbyname('tma_codice').asstring := mmt.fieldbyname('tma_codice').asstring;
    mmr.fieldbyname('quantita').asfloat := quantita_scarto;
    mmr.fieldbyname('prezzo').asfloat := prezzo_finito;

    mmr.fieldbyname('importo').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * mmr.fieldbyname('prezzo').asfloat);
    mmr.fieldbyname('importo_euro').asfloat := mmr.fieldbyname('importo').asfloat;

    mmr.fieldbyname('importo_spese').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * valdsb.calcola_costo_produzione(opt.fieldbyname('progressivo').asinteger, 0, true));
    mmr.fieldbyname('importo_spese_euro').asfloat := mmr.fieldbyname('importo_spese').asfloat;

    mmr.fieldbyname('tipo_movimento').asstring := 'normale';
    mmr.fieldbyname('opt_tipo_articolo').asstring := 'finito';

    mmr.fieldbyname('quantita_entrate').asfloat := mmr.fieldbyname('quantita').asfloat;

    mmr.post;

    //-----------------------------------------------------------
    // SCARICO FINITO
    //-----------------------------------------------------------
    progressivo_mmt := arc.setta_valore_generatore(tmyconnection_go(mmt.connection), 'mmt_progressivo');
    mmt.append;

    mmt.fieldbyname('progressivo').asinteger := progressivo_mmt;
    read_tabella(arc.arcdit, 'tmo', 'codice', 'CASC');
    mmt.fieldbyname('tmo_codice').asstring := archivio.fieldbyname('tmo_codice_collegato').asstring;
    mmt.fieldbyname('tma_codice').asstring := query_sor.fieldbyname('tma_codice_finiti').asstring;

    mmt.fieldbyname('data_registrazione').asdatetime := v_data_registrazione.date;
    mmt.fieldbyname('tipo_documento').asstring := 'produzione';
    mmt.fieldbyname('data_documento').asdatetime := opt.fieldbyname('data_documento').asdatetime;
    mmt.fieldbyname('numero_documento').asinteger := opt.fieldbyname('numero_documento').asinteger;
    mmt.fieldbyname('tva_codice').asstring := divisa_di_conto;
    mmt.fieldbyname('cambio').asfloat := 1;
    mmt.fieldbyname('ese_codice').asstring := esercizio;
    mmt.fieldbyname('documento_origine').asstring := 'ordini produzione';
    mmt.fieldbyname('doc_progressivo_origine').asfloat := query_sor.fieldbyname('progressivo').asfloat;
    mmt.fieldbyname('opt_progressivo').asfloat := query_sor.fieldbyname('progressivo').asfloat;
    if read_tabella(arc.arcdit, 'ovt', 'progressivo', vararrayof([query_sor.fieldbyname('ovr_progressivo').asinteger]), 'cli_codice') then
    begin
      mmt.fieldbyname('cfg_tipo').asstring := 'C';
      mmt.fieldbyname('cfg_codice').asstring := archivio.fieldbyname('cli_codice').asstring;
    end;

    mmt.post;
    riga := 0;
    commesse := '';
    esistenza := 'ignora';
    if read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'commesse, esistenza') then
    begin
      commesse := archivio.fieldbyname('commesse').asstring;
      esistenza := archivio.fieldbyname('esistenza').asstring;
    end;

    mmr.append;

    riga := riga + 1;
    mmr.fieldbyname('progressivo').asfloat := mmt.fieldbyname('progressivo').asfloat;
    mmr.fieldbyname('riga').asinteger := riga;
    mmr.fieldbyname('art_codice').asstring := opt.fieldbyname('art_codice').asstring;
    mmr.fieldbyname('tma_codice').asstring := mmt.fieldbyname('tma_codice').asstring;
    mmr.fieldbyname('quantita').asfloat := quantita_scarto;
    mmr.fieldbyname('prezzo').asfloat := prezzo_finito;

    mmr.fieldbyname('importo').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * mmr.fieldbyname('prezzo').asfloat);
    mmr.fieldbyname('importo_euro').asfloat := mmr.fieldbyname('importo').asfloat;

    mmr.fieldbyname('importo_spese').asfloat := arrotonda(mmr.fieldbyname('quantita').asfloat * valdsb.calcola_costo_produzione(opt.fieldbyname('progressivo').asinteger, 0, true));
    mmr.fieldbyname('importo_spese_euro').asfloat := mmr.fieldbyname('importo_spese').asfloat;

    mmr.fieldbyname('tipo_movimento').asstring := 'normale';
    mmr.fieldbyname('opt_tipo_articolo').asstring := 'finito';
    mmr.fieldbyname('quantita_uscite').asfloat := mmr.fieldbyname('quantita').asfloat;
    mmr.fieldbyname('descrizione').asstring := query_sor.fieldbyname('descrizione').asstring;

    mmr.post;

  end;

end;

procedure TA31EVAORDP.v_quantitaExit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if arrotonda(v_quantita.value, 4) <> arrotonda(v_quantita.value, cifre_decimali_quantita) then
    begin
      if tabella_edit(sor) then
      begin
        sor.fieldbyname('quantita_evasa').asfloat := arrotonda(sor.fieldbyname('quantita_evasa').asfloat, cifre_decimali_quantita);
      end;
    end;

    if sor.fieldbyname('quantita_evasa').asfloat = 0 then
    begin
      messaggio(200, 'la quantità zero [0] serve per annullare l''evasione della riga');
    end;

    if progressivo = 0 then
    begin
      if sor.fieldbyname('quantita_evasa').asfloat < sor.fieldbyname('quantita').asfloat then
      begin
        sor.fieldbyname('saldo_acconto').asstring := 'acconto';
      end
      else
      begin
        sor.fieldbyname('saldo_acconto').asstring := 'saldo';
      end;
    end;
  end;
end;

procedure TA31EVAORDP.v_recupero_da_scartiClick(Sender: TObject);
begin
  inherited;
  if pannello_esposizione.enabled then
  begin
    tabella_edit(sor);
    if v_recupero_da_scarti.checked then
    begin
      sor.fieldbyname('TMA_CODICE_MATERIE_PRIME').asstring := sor.fieldbyname('tma_codice_finiti').asstring + 'RE';
      v_scarti_CQ.enabled := false;
      v_scarti_da_rottamare.enabled := false;
      v_scarti_da_recuperare.enabled := false;
    end
    else
    begin
      sor.fieldbyname('TMA_CODICE_MATERIE_PRIME').asstring := opt.fieldbyname('tma_codice_materie_prime').asstring;

      v_scarti_CQ.enabled := true;
      v_scarti_da_rottamare.enabled := true;
      v_scarti_da_recuperare.enabled := true;

    end;
    visualizza_giacenza;
  end;
end;

procedure TA31EVAORDP.v_scartiClick(Sender: TObject);
begin
  inherited;
  if v_scarti.checked then
  begin
    v_saldo_materie_prime.checked := true;
  end;
end;

procedure TA31EVAORDP.v_tma_codice_finitiExit(Sender: TObject);
begin
  inherited;
  tma_codice_finiti_controllo(true);
end;

procedure TA31EVAORDP.tma_codice_finiti_controllo(blocco: boolean);
begin
  tabella_controllo(false, tma, v_tma_codice_finiti, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31EVAORDP.tma_codice_materie_prime_controllo(blocco: boolean);
begin
  tabella_controllo(false, tmas, v_tma_codice_materie_prime, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31EVAORDP.tool_cruartClick(Sender: TObject);
begin
  inherited;
  esegui_programma('CRUART', sor.fieldbyname('art_codice').asstring, true);
end;

procedure TA31EVAORDP.pannello_parametriEnter(Sender: TObject);
begin
  inherited;
  v_memorizza.enabled := false;

  nome_tabella := 'evaordp';
  azzera_tabella(nome_tabella, sor);
  assegna_indice;
end;

procedure TA31EVAORDP.assegna_indice;
begin
  sor.close;
  if ordinamento = 0 then
  begin
    sor.indexfieldnames := 'utn_codice;art_codice;progressivo;id';
  end
  else if ordinamento = 1 then
  begin
    sor.indexfieldnames := 'utn_codice;art_descrizione;progressivo;id';
  end
  else if ordinamento = 2 then
  begin
    sor.indexfieldnames := 'utn_codice;tum_codice;progressivo;id';
  end
  else if ordinamento = 3 then
  begin
    sor.indexfieldnames := 'utn_codice;quantita;progressivo;id';
  end
  else if ordinamento = 4 then
  begin
    sor.indexfieldnames := 'utn_codice;quantita_evasa;progressivo;id';
  end
  else if ordinamento = 5 then
  begin
    sor.indexfieldnames := 'utn_codice;data_consegna;art_codice;id';
  end
  else if ordinamento = 6 then
  begin
    sor.indexfieldnames := 'utn_codice;data_documento;numero_documento;id';
  end
  else if ordinamento = 7 then
  begin
    sor.indexfieldnames := 'utn_codice;top_codice;progressivo;id';
  end
  else if ordinamento = 8 then
  begin
    sor.indexfieldnames := 'utn_codice;numero_documento;progressivo;id';
  end
  else if ordinamento = 9 then
  begin
    sor.indexfieldnames := 'utn_codice;serie_documento;progressivo;id';
  end
  else if ordinamento = 10 then
  begin
    sor.indexfieldnames := 'utn_codice;numero_ordine_cliente;progressivo;id';
  end
  else if ordinamento = 11 then
  begin
    sor.indexfieldnames := 'utn_codice;data_ordine_cliente;progressivo;id';
  end
  else if ordinamento = 12 then
  begin
    sor.indexfieldnames := 'utn_codice;descrizione_cliente;progressivo;id';
  end
  else if ordinamento = 13 then
  begin
    sor.indexfieldnames := 'utn_codice;avanzamento_fasi;progressivo;id';
  end;
  sor.open;
end;

procedure TA31EVAORDP.pannello_parametriExit(Sender: TObject);
begin
  inherited;
  if evaso_uno then
  begin
    v_memorizza.enabled := true;
  end;
end;

procedure TA31EVAORDP.v_data_registrazioneExit(Sender: TObject);
begin
  inherited;
  data_registrazione_controllo;
end;

procedure TA31EVAORDP.v_esistenza_depositoChange(Sender: TObject);
begin
  inherited;
  if v_esistenza_deposito.value < 0 then
  begin
    v_esistenza_deposito.color := clred;
  end;
  if v_esistenza_deposito.value > 0 then
  begin
    v_esistenza_deposito.color := cllime;
  end;
  if v_esistenza_deposito.value = 0 then
  begin
    v_esistenza_deposito.color := clyellow;
  end;
end;

procedure TA31EVAORDP.data_registrazione_controllo;
begin
  inherited;
  if controllo then
  begin
    if (v_data_registrazione.date < data_inizio) or (v_data_registrazione.date > data_bilancio) then
    begin
      messaggio(000, 'data fuori dai limiti dell''esercizio fiscale');
      if v_data_registrazione.canfocus then
      begin
        v_data_registrazione.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TA31EVAORDP.esegui_commesse;
var
  importo: double;
  stringa, costo_ricavo: string;
begin
  inherited;
  if commesse = 'si' then
  begin
    read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'descrizione, esistenza');
    codice_passato := vararrayof(['movimenti magazzino', mmr.fieldbyname('progressivo').asfloat, mmr.fieldbyname('riga').asinteger, 0]);

    stringa := archivio.fieldbyname('descrizione').asstring;
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      costo_ricavo := 'ricavo'
    end
    else
    begin
      costo_ricavo := 'costo'
    end;

    if arc.dit.fieldbyname('solo_spese_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.fieldbyname('importo_spese').asfloat;
    end
    else if arc.dit.fieldbyname('solo_materiale_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.fieldbyname('importo').asfloat;
    end
    else
    begin
      importo := mmr.fieldbyname('importo').asfloat + mmr.fieldbyname('importo_spese').asfloat;
    end;

    esegui_carcmm(codice_passato, mmt.fieldbyname('cfg_tipo').asstring, mmt.fieldbyname('cfg_codice').asstring, mmr.fieldbyname('art_codice').asstring, mmt.fieldbyname('serie_documento').asstring, stringa, '', costo_ricavo, mmt.fieldbyname('data_registrazione').asdatetime, mmt.fieldbyname('data_documento').asdatetime, importo, mmt.fieldbyname('numero_documento').asinteger,
      opt.fieldbyname('cms_codice').asstring, opt.fieldbyname('tipologia').asstring, mmr.fieldbyname('quantita').asfloat, false);
  end;
end;

procedure TA31EVAORDP.esegui_lotti(tipo: string);
var
  approntato: boolean;
begin
  inherited;
  if (tipo = 'finito') and (opt.fieldbyname('lot_codice').asstring <> '') then
  begin
    ltm.close;
    ltm.open;
    ltm.append;

    ltm.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(ltm.connection), 'ltm_progressivo');
    ltm.fieldbyname('art_codice').asstring := mmr.fieldbyname('art_codice').asstring;
    ltm.fieldbyname('lotto').asstring := opt.fieldbyname('lot_codice').asstring;
    ltm.fieldbyname('data_registrazione').asdatetime := mmt.fieldbyname('data_registrazione').asdatetime;
    ltm.fieldbyname('data_documento').asdatetime := mmt.fieldbyname('data_documento').asdatetime;
    ltm.fieldbyname('numero_documento').asinteger := mmt.fieldbyname('numero_documento').asinteger;

    ltm.fieldbyname('tma_codice').asstring := mmr.fieldbyname('tma_codice').asstring;
    ltm.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
    ltm.fieldbyname('doc_progressivo_origine').asinteger := mmr.fieldbyname('progressivo').asinteger;
    ltm.fieldbyname('doc_riga_origine').asinteger := mmr.fieldbyname('riga').asinteger;

    ltm.fieldbyname('quantita').asfloat := mmr.fieldbyname('quantita').asfloat;
    read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'esistenza');
    ltm.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;

    ltm.post;
  end
  else
  begin
    read_tabella(arc.arcdit, 'art', 'codice', mmr.fieldbyname('art_codice').asstring, 'lotti');
    if archivio.fieldbyname('lotti').asstring = 'si' then
    begin
      if tipo <> 'finito' then
      begin
        ltm_approntato.close;
        ltm_approntato.parambyname('progressivo').asinteger := opr.fieldbyname('progressivo').asinteger;
        ltm_approntato.parambyname('riga').asinteger := opr.fieldbyname('riga').asinteger;
        ltm_approntato.open;
        if ltm_approntato.isempty then
        begin
          approntato := false;
        end
        else
        begin
          if (query_sor.fieldbyname('saldo_acconto').asstring = 'saldo') and (mmr.fieldbyname('quantita').asfloat = opr.fieldbyname('quantita').asfloat - opr.fieldbyname('quantita_evasa').asfloat) then
          begin
            approntato := true;

            while not ltm_approntato.eof do
            begin
              ltm_approntato.edit;
              ltm_approntato.fieldbyname('data_registrazione').asdatetime := mmt.fieldbyname('data_registrazione').asdatetime;
              ltm_approntato.fieldbyname('data_documento').asdatetime := mmt.fieldbyname('data_documento').asdatetime;
              ltm_approntato.fieldbyname('serie_documento').asstring := '';
              ltm_approntato.fieldbyname('numero_documento').asinteger := mmt.fieldbyname('numero_documento').asinteger;
              ltm_approntato.fieldbyname('tma_codice').asstring := mmr.fieldbyname('tma_codice').asstring;
              ltm_approntato.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
              ltm_approntato.fieldbyname('doc_progressivo_origine').asinteger := mmr.fieldbyname('progressivo').asinteger;
              ltm_approntato.fieldbyname('doc_riga_origine').asinteger := mmr.fieldbyname('riga').asinteger;
              read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'descrizione,esistenza');
              ltm_approntato.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;
              ltm_approntato.fieldbyname('descrizione').asstring := archivio.fieldbyname('descrizione').asstring;
              ltm_approntato.post;
              ltm_approntato.next;
            end;
          end
          else
          begin
            approntato := false;

            while not ltm_approntato.eof do
            begin
              ltm_approntato.delete;
            end;
            messaggio(100, 'poichè l''evasione delle materie prime non è a saldo' + #13 + 'i lotti approntati non possono essere evasi automaticamente');
          end;
        end;
      end
      else
      begin
        approntato := false;
      end;

      if not approntato then
      begin
        codice_passato := vararrayof(['movimenti magazzino', mmr.fieldbyname('progressivo').asfloat, mmr.fieldbyname('riga').asinteger, 0]);

        read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'descrizione,esistenza');
        esegui_carltm(codice_passato, mmt.fieldbyname('numero_documento').asinteger, mmt.fieldbyname('cfg_tipo').asstring, mmt.fieldbyname('cfg_codice').asstring, mmr.fieldbyname('art_codice').asstring, mmr.fieldbyname('tma_codice').asstring, mmt.fieldbyname('tmo_codice').asstring, archivio.fieldbyname('esistenza').asstring, mmt.fieldbyname('serie_documento').asstring,
          mmt.fieldbyname('data_registrazione').asdatetime, mmt.fieldbyname('data_documento').asdatetime, archivio.fieldbyname('descrizione').asstring, mmr.fieldbyname('quantita').asfloat, 0, 0);
      end;
    end;
  end;
end;

procedure TA31EVAORDP.v_art_codiceKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  progressivo: variant;
begin
  inherited;
  if (key = vk_f9) and (shift = []) then
  begin
    esegui_visarc(arc.arcdit, 'OPT', 'OPTEVA', progressivo, 'evaso', '', '', '', 'ART_CODICE', '');
    if (vartype(progressivo) = vardouble) or (vartype(progressivo) = varinteger) then
    begin
      if read_tabella(arc.arcdit, 'opt', 'progressivo', progressivo, 'art_codice') then
      begin
        v_art_codice.text := archivio.fieldbyname('art_codice').asstring;
      end;
    end;
  end;
end;

procedure TA31EVAORDP.v_grigliaEnter(Sender: TObject);
begin
  inherited;
  if (locate_art_codice <> '') and sor.active then
  begin
    sor.locate('utn_codice;art_codice;progressivo', vararrayof([utente, locate_art_codice, locate_progressivo]), []);
  end;
end;

procedure TA31EVAORDP.v_grigliaExit(Sender: TObject);
begin
  inherited;
  locate_art_codice := sor.fieldbyname('art_codice').asstring;
  locate_progressivo := sor.fieldbyname('progressivo').asinteger;
end;

procedure TA31EVAORDP.v_grigliaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_return) and (shift = []) then
  begin
    if tabella_edit(sor) then
    begin
      sor.fieldbyname('quantita_evasa').asfloat := sor.fieldbyname('quantita').asfloat;
      sor.fieldbyname('saldo_acconto').asstring := 'saldo';
      sor.post;
      tma_codice_finiti_controllo(false);
    end;

    v_memorizza.enabled := true;
  end;
end;

procedure TA31EVAORDP.v_grigliaDblClick(Sender: TObject);
begin
  inherited;
  if sor.fieldbyname('progressivo').asinteger <> 0 then
  begin
    esegui_programma('GESORDP', sor.fieldbyname('progressivo').asinteger, true);
  end;
end;

procedure TA31EVAORDP.v_grigliaTitleClick(Column: TColumn);
var
  i: word;
begin
  inherited;

  for i := 0 to v_griglia.columns.count - 1 do
  begin
    v_griglia.columns[i].title.color := claqua;
  end;

  v_griglia.columns[column.index].title.color := cllime;
  ordinamento := column.index;
  assegna_indice;

  (v_griglia.columns.items[4].field as tfloatfield).displayformat := formato_display_quantita;
  (v_griglia.columns.items[5].field as tfloatfield).displayformat := formato_display_quantita_zero;
end;

procedure TA31EVAORDP.v_progressivoExit(Sender: TObject);
begin
  inherited;
  progressivo_controllo(true);
end;

procedure TA31EVAORDP.assegna_valore_materie_prime_scarti;
begin
  sor.edit;

  if sor.fieldbyname('quantita_evasa').asfloat >= sor.fieldbyname('quantita').asfloat then
  begin
    sor.fieldbyname('saldo_acconto').asstring := 'saldo';
  end;

  if sor.fieldbyname('saldo_acconto').asstring = 'acconto' then
  begin
    sor.fieldbyname('saldo_materie_prime').asstring := 'no';
  end;

  if sor.fieldbyname('saldo_materie_prime').asstring = 'no' then
  begin
    sor.fieldbyname('scarti').asstring := 'no';
  end;
end;

procedure TA31EVAORDP.esegui_ubicazioni;
var
  tipo_movimento: string;
begin
  if (mmr.fieldbyname('quantita').asfloat <> 0) and (mmr.fieldbyname('art_codice').asstring <> '') and (art.fieldbyname('tipo_articolo').asstring = 'fiscale') then
  begin
    tipo_movimento := '';

    read_tabella(arc.arcdit, 'tmo', 'codice', mmt.fieldbyname('tmo_codice').asstring, 'esistenza');
    if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      tipo_movimento := 'carico';
    end;
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      tipo_movimento := 'scarico';
    end;
    ubm.parambyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(mmt.connection), 'ubm_progressivo');
    ubm.parambyname('data_registrazione').asdatetime := mmt.fieldbyname('data_registrazione').asdatetime;
    ubm.parambyname('art_codice').asstring := mmr.fieldbyname('art_codice').asstring;
    ubm.parambyname('tub_codice').asstring := mmr.fieldbyname('tub_codice').asstring;
    ubm.parambyname('tipo_movimento').asstring := tipo_movimento;
    ubm.parambyname('quantita').asfloat := mmr.fieldbyname('quantita').asfloat;
    ubm.parambyname('documento_origine').asstring := 'movimenti magazzino';
    ubm.parambyname('doc_progressivo_origine').asinteger := mmr.fieldbyname('progressivo').asinteger;
    ubm.parambyname('doc_riga_origine').asinteger := mmr.fieldbyname('riga').asinteger;
    if tipo_movimento = 'carico' then
    begin
      ubm.parambyname('segno').asfloat := 1;
    end
    else
    begin
      ubm.parambyname('segno').asfloat := -1;
    end;
    ubm.parambyname('tmo_codice').asstring := mmt.fieldbyname('tmo_codice').asstring;
    ubm.execsql;

  end;
end;

procedure TA31EVAORDP.visualizza_giacenza;
begin
  opt.close;
  opt.params[0].asfloat := sor.fieldbyname('progressivo').asfloat;
  opt.open;

  esistenza_deposito.params[0].AsString := sor.fieldbyname('art_codice').asstring;
  esistenza_deposito.params[1].AsString := opt.fieldbyname('tma_codice_finiti').asstring + 'RE';
  esistenza_deposito.Close;
  esistenza_deposito.open;

  tma_codice_finiti_controllo(false);
  tma_codice_materie_prime_controllo(false);
end;

initialization

registerclass(tA31EVAORDP);

end.
