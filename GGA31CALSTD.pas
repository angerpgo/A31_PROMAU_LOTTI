unit GGA31CALSTD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGSTAMPA, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess,
  Menus, StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs,
  Mask, ToolWin, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, ppdevice, DBCtrls,
  RzButton, RzSpnEdt, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL, IdSASLAnonymous,
  IdExplicitTLSClientServerBase, IdSMTPBase, MemDS, VirtualTable, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  ppParameter, DBAccess, RzEdit, ppDesignLayer, ZZVALDSB, ZZTIPINV, ZZPRZINV, ZZVARIANTI_DSB;

type

  TA31CALSTD = class(TSTAMPA)
    pp_DBText5: TppDBText;
    pp_Label8: TppLabel;
    pp_DBText11: TppDBText;
    pp_DBText1: TppDBText;
    pp_Label9: TppLabel;
    query_figlio: tmyquery_go;
    pp_DBText2: TppDBText;
    pp_Label12: TppLabel;
    v_aggiornamento: TRzcheckbox;
    art: tmyquery_go;
    art_frn: tmyquery_go;
    cls: TMyQuery_go;
    Panel1: TRzPanel;
    v_selart: TRzRapidFireButton;
    fls: TMyQuery_go;
    v_messaggio: TRzLabel;
    ppDBText1: TppDBText;
    semilav: TMyQuery_go;
    MyQuery_go1: TMyQuery_go;
    semilavp: TMyQuery_go;
    aggsem: TMyQuery_go;
    dsb: TMyQuery_go;
    query_padre: TMyQuery_go;
    art_figlio: TMyQuery_go;
    cla_figli: TMyQuery_go;
    sor_livello: TMyQuery_go;
    sor_update: TMyQuery_go;
    sor_update_produzione: TMyQuery_go;
    query_materie_prime: TMyQuery_go;
    dsb_39: TMyQuery_go;
    calsem: TMyQuery_go;
    MyQuery_go2: TMyQuery_go;
    dsb_01: TMyQuery_go;
    dsb_02: TMyQuery_go;
    dsb_03: TMyQuery_go;
    dsb_04: TMyQuery_go;
    dsb_05: TMyQuery_go;
    dsb_06: TMyQuery_go;
    dsb_07: TMyQuery_go;
    dsb_08: TMyQuery_go;
    dsb_09: TMyQuery_go;
    dsb_10: TMyQuery_go;
    dsb_11: TMyQuery_go;
    dsb_12: TMyQuery_go;
    dsb_13: TMyQuery_go;
    dsb_14: TMyQuery_go;
    dsb_15: TMyQuery_go;
    dsb_16: TMyQuery_go;
    dsb_17: TMyQuery_go;
    dsb_18: TMyQuery_go;
    dsb_19: TMyQuery_go;
    dsb_20: TMyQuery_go;
    lsa: TMyQuery_go;
    lsa_update: TMyQuery_go;

    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pannello_parametriEnter(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure pp_DBText5DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pp_DBText5DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
  protected
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
    v_livelli: integer;

    valdsb: tvaldsb;
    tipinv: ttipinv;
    przinv: tprzinv;

    tla_codice_costi, tla_codice_costo_standard: string;

    procedure call_selart;
    procedure calcola_costo_standard_articoli;
    function ha_figlio(art_codice: string): boolean;
    function ha_padre(art_codice: string): boolean;
    procedure esplosione(leggo: tmyquery_go; padre: string; livello, sequenza_livello: integer; quantita_ciclo: double = 1);
  public
    art_codice_passato: string;
    procedure controllo_campi; override;
    procedure stampa; override;
    procedure esegue_stampa; override;
    procedure visualizza_stampa_elabora; override;
  end;

var
  A31CALSTD: TA31CALSTD;

implementation

uses DMARC, ZZLIBRERIE, ZZLOW_LEVEL_CODE, ZZPROMAU;

{$r *.dfm}


procedure TA31CALSTD.controllo_campi;
begin
  //
end;

procedure TA31CALSTD.visualizza_stampa_elabora;
begin
  //
end;

procedure TA31CALSTD.stampa;
begin
  nome_tabella := 'stadsb';
  azzera_tabella(nome_tabella, sor);

  controllo_interrompi;

  dsb.sql.text := 'select dsb.art_codice_padre, dsb.sequenza, dsb.art_codice_figlio, dsb.quantita, dsb.data_inizio, dsb.data_fine,' + ' art_padre.descrizione1 art_descrizione1_padre, art_padre.descrizione2 art_descrizione2_padre, dsb.formula, ' +
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

  calcola_costo_standard_articoli;

  //  stampa nuova
  arc_prg.close;
  arc_prg.parambyname('codice').asstring := 'STADSB';
  arc_prg.open;

  query_stampa.close;
  query_stampa.sql.text := arc_prg.fieldbyname('testo_query').asstring;

  if pos('/*ORDER BY*/', query_stampa.sql.text) = 0 then
  begin
    ordinamento_query_stampa := 'order by t.art_codice';
    query_stampa.sql.add(ordinamento_query_stampa);
  end;
  //  stampa nuova fine

  inherited;

  if v_aggiornamento.checked then
  begin
    query_stampa.close;
    query_stampa.open;
    while not query_stampa.eof do
    begin

      lsa_update.close;
      lsa_update.parambyname('art_codice').asstring := sor.fieldbyname('art_codice_padre').asstring;
      lsa_update.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
      lsa_update.parambyname('data_inizio').asdate := date;
      lsa_update.open;

      if lsa_update.isempty then
      begin
        lsa_update.append;
        lsa_update.fieldbyname('art_codice').asstring := query_stampa.fieldbyname('art_codice_padre').asstring;
        lsa_update.fieldbyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
        lsa_update.fieldbyname('data_inizio').asdatetime := date;
        lsa_update.fieldbyname('prezzo').asfloat := query_stampa.fieldbyname('costo_codice_padre').asfloat;
        lsa_update.post;

        arc.aggiorna_data_fine('lsa', 'A', 'art_codice', query_stampa.fieldbyname('art_codice_padre').asstring,
          'tla_codice', arc.dit.fieldbyname('tla_codice_costo_standard').asstring, '', '', '', '', '', '', date);
      end
      else
      begin
        lsa_update.edit;
        lsa_update.fieldbyname('prezzo').asfloat := query_stampa.fieldbyname('costo_codice_padre').asfloat;
        lsa_update.post;
      end;

      query_stampa.next;
    end;
    messaggio(100, 'Listino Standard aggiornato.');
  end;
end;

procedure TA31CALSTD.calcola_costo_standard_articoli;
var
  test_art_codice_livello: string;
  quantita, costo_lavest: double;
  costo_produzione, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
begin
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

  query.open;
  while not query.eof do
  begin
    (*
      if (ha_figlio(query.fieldbyname('codice').asstring)) and (not ha_padre(query.fieldbyname('codice').asstring)) then
      begin
      esplosione(dsb, query.fieldbyname('codice').asstring, 0, 0, v_quantita.value);
      end;
      end
      else
      begin
    *)

    if ha_figlio(query.fieldbyname('codice').asstring) then
    begin
      esplosione(dsb, query.fieldbyname('codice').asstring, 0, 0, 1);
    end;

    query.next;
  end;

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
          costo_lavest := valdsb.valorizza_dsb(query_sor.fieldbyname('art_codice_livello').asstring, tla_codice_costi, false,
            costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, 'costo standard', 'lavorazioni');

          costo_produzione := arrotonda(costo_cicli_singoli + costo_cicli_globali / 1, decimali_max_prezzo_acq);

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
  read_tabella(calsem, utente);
  while not calsem.eof do
  begin
    costo_produzione := 0;

    costo_lavest := valdsb.valorizza_dsb(calsem.fieldbyname('art_codice_padre').asstring, tla_codice_costi, false,
      costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali, 'costo standard', 'tutti');
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

  query.close;
end;

function TA31CALSTD.ha_figlio(art_codice: string): boolean;
begin
  query_figlio.params[0].asstring := art_codice;
  query_figlio.close;
  query_figlio.open;
  result := not query_figlio.eof;
end;

function TA31CALSTD.ha_padre(art_codice: string): boolean;
begin
  query_padre.params[0].asstring := art_codice;
  query_padre.close;
  query_padre.open;
  result := not query_padre.eof;
end;

procedure TA31CALSTD.esplosione(leggo: tmyquery_go; padre: string; livello, sequenza_livello: integer; quantita_ciclo: double = 1);
var
  prezzo_inventario: double;
  valorizzazione: string;
  j: word;

  //costo_codice_padre: double;
  costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
  //modifica

  costo_lavest: double;
  //modifica fine

  art_codice_figlio, art_descrizione_figlio, art_descrizione1_figlio, art_descrizione2_figlio, art_figlio_tum_codice_dsb, art_figlio_tum_codice, descrizione_tecnica, indice_revisione, codice_alternativo, art_figlio_tub_codice, art_figlio_tub_descrizione, materia_prima,
    operazione_coefficiente_dsb: string;

  tum_coefficiente_dsb: double;
  data_carico: tdate;

  i: word;
  lista_art_codice, lista_art_descrizione, lista_quantita: tstringlist;
  sor_id: integer;

  a31lav_est: tmyquery_go;

begin

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

    lista_art_codice.add(art_codice_figlio);
    lista_art_descrizione.add(art_descrizione_figlio);
    lista_quantita.add(leggo.fieldbyname('quantita').asstring);

    for i := 0 to lista_art_codice.count - 1 do
    begin
      if strtofloat(lista_quantita[i]) <> 0 then
      begin
        sor.append;

        // codice padre
        sor.fieldbyname('art_codice_padre').asstring := query.fieldbyname('codice').asstring;
        sor.fieldbyname('art_descrizione1_padre').asstring := trim(query.fieldbyname('descrizione1').asstring) + ' ' + query.fieldbyname('descrizione2').asstring;
        sor.fieldbyname('art_tum_codice_padre').asstring := query.fieldbyname('tum_codice').asstring;

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

        sor.fieldbyname('data_carico').asdatetime := data_carico;
        if ha_figlio(sor.fieldbyname('art_codice').asstring) then
        begin
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
            valorizzazione := 'costo standard';
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

        //modifica
        if sor.fieldbyname('art_tum_codice').asstring = 'GR' then
        begin
          sor.fieldbyname('a31costo_kg').asfloat := arrotonda(sor.fieldbyname('costo_unitario_codice_figlio').asfloat * 1000, 6);
        end;

        sor.post;

        (*

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
        *)

        if (v_livelli = 0) or (livello < v_livelli - 1) then
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
          (*
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
          *)
          else
          begin
            messaggio(000, 'superato il numero di livelli consentito [2]');
            close;
            abort;
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

procedure TA31CALSTD.v_confermaClick(Sender: TObject);
var
  stringa: string;
begin
  if (arc.dit.fieldbyname('richiesta_filtri').asstring = 'si') or (art_codice_passato <> '') then
  begin
    if not art_eseguito then
    begin
      call_selart;
    end;
    art_eseguito := false;
  end;

  inherited;

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
  (*
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
  *)
  esegue_stampa;
end;

procedure TA31CALSTD.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TA31CALSTD.esegue_stampa;
begin
  inherited;
end;

procedure TA31CALSTD.FormCreate(Sender: TObject);
begin
  v_livelli := 0;
  valdsb := tvaldsb.create;
  tipinv := ttipinv.create;
  przinv := tprzinv.create;

  tla_codice_costi := arc.dit.fieldbyname('tla_codice').asstring;
  tla_codice_costo_standard := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;

  inherited;
  art_codice_lista := tstringlist.create;
  art_tmr_codice_lista := tstringlist.create;
  art_tcm_codice_lista := tstringlist.create;
  art_tgm_codice_lista := tstringlist.create;
  art_tsa_codice_lista := tstringlist.create;
  art_frn_codice_lista := tstringlist.create;
  art_tin_codice_lista := tstringlist.create;
  art_tub_codice_lista := tstringlist.create;

  interruzione_elaborazione := true;
  promau_inizializza_variabili;
end;

procedure TA31CALSTD.FormDestroy(Sender: TObject);
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
end;

procedure TA31CALSTD.FormShow(Sender: TObject);
begin
  inherited;
  visualizza_stampa_elabora;
end;

procedure TA31CALSTD.pannello_parametriEnter(Sender: TObject);
begin
  inherited;

  if (importi_magazzino = 'visualizza') or (importi_magazzino = 'nascondi') then
  begin
    messaggio(000, 'l''utente non può operare con questo programma');
    close;
    abort;
  end;
end;

procedure TA31CALSTD.ppReportBeforePrint(Sender: TObject);
begin
  inherited;
  try
    pp_dbtext2.displayformat := formato_display_prezzo;
  except
  end;

  if v_visualizza.down then
  begin
    try
      pp_dbtext5.font.color := clblue;
    except
    end;
  end;
end;

procedure TA31CALSTD.pp_DBText5DrawCommandClick(Sender, aDrawCommand: TObject);
begin
  inherited;

  if query_stampa.locate('id', TppDrawCommand(aDrawCommand).Tag, []) then
  begin
    esegui_programma('GESART', query_stampa.fieldbyname('art_codice').asstring, true);
  end;
end;

procedure TA31CALSTD.pp_DBText5DrawCommandCreate(Sender, aDrawCommand: TObject);
begin
  inherited;

  TppDrawCommand(aDrawCommand).Tag := query_stampa.fieldbyname('id').asinteger;
end;

procedure TA31CALSTD.call_selart;
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

initialization

registerclass(tA31CALSTD);

end.
