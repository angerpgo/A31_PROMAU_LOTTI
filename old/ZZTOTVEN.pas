unit ZZTOTVEN;

interface

uses controls, sysutils, query_go, MyAccess, dialogs, variants,

  ZZDICINT,

  DMARC, ZZCALSCA, ZZCERCA_PREZZO, ZZLIBRERIE, ZZTOTVENINH;

type

  TTOTVEN = class
  protected

    dicint: tdicint;

    calsca: tcalsca;
    cerca_prezzi: tcerca_prezzo;

    flag_bollo, assegnato: boolean;
    imponibile_bollo, importo_bollo, totale_documento, totale_iva, importo_incasso, importo_extra,
      totale, imponibile_trasporto, importo_trasporto, importo_trasporto_assegnato,
      percentuale_sconto, importo_sconto_calcolato,
      importo_sconto_assegnato, importo_cassa_professionisti, importo_enasarco, importo_ritenuta: double;
    numero_rate: word;
    tabella_scadenze: array of scadenze;
    merce_sql, righe_sql, righe_significativi_sql, righe_non_significativi_sql: string;

    ven, tdo, cem_esiste, cem, ven_iva_codice, tiv, tsm, ven_iva, iva_delete, art,
      tbo, cfg, tti, ttisp, ttisi, tsi, tpa, tpe, cli, spese_incasso_mensili,
      righe, righe_significativi, righe_non_significativi, spese_trasporto_giornaliere,
      liq, merce, pagamenti, iva_totale, tabadd, cpp: tmyquery_go;

    procedure calcola_spese_bollo_manuali(progressivo: double);
    procedure calcola_spese_extra(progressivo: double);
    procedure calcola_spese_incasso_manuali(progressivo: double);
    procedure calcola_spese_trasporto_manuali(progressivo: double);
    procedure calcola_iva;
    procedure calcola_spese_bollo(progressivo: double);
    procedure calcola_spese_incasso(progressivo: double; tipo_documento: string);
    procedure aggiorna_analitica(importo, importo_valuta: double; tipo: integer);
  public
    constructor create;
    destructor Destroy; override;

    procedure movven_testata(connessione: TMyConnection_go; tipo_documento: string; progressivo: integer; interattivo: boolean = true);
  end;

implementation

uses ZZCREA_DOCUMENTI_VENDITA;

constructor TTOTVEN.create;
begin

  dicint := tdicint.create('C');

  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);

  ven := tmyquery_go.create(nil);

  tdo := tmyquery_go.create(nil);
  tdo.sql.text := 'select * from tdo left join tco on tco.codice = tdo.tco_codice where tdo.codice = :codice';

  cem_esiste := tmyquery_go.create(nil);
  cem_esiste.sql.text := 'select * from cem where documento_origine = :documento_origine and ' +
    'doc_progressivo_origine = :doc_progressivo_origine and doc_riga_origine = :doc_riga_origine';

  cem := tmyquery_go.create(nil);
  cem.sql.text := 'select * from cem where progressivo = :progressivo';
  ven_iva_codice := tmyquery_go.create(nil);
  tiv := tmyquery_go.create(nil);
  tiv.sql.text := 'select * from tiv where codice = :codice';
  tsm := tmyquery_go.create(nil);
  tsm.sql.text := 'select * from tsm where codice = :codice';
  ven_iva := tmyquery_go.create(nil);
  iva_delete := tmyquery_go.create(nil);
  art := tmyquery_go.create(nil);
  art.sql.text := 'select * from art where codice = :codice';

  tbo := tmyquery_go.create(nil);
  tbo.sql.text := 'select * from tbo where tva_codice = :tva_codice ' +
    'and data_inizio <= :data_inizio and data_fine >= :data_fine';

  tabadd := tmyquery_go.create(nil);
  tabadd.sql.add('select * from tabadd where tab_codice = :tab_codice and tva_codice = :tva_codice');
  tabadd.sql.add('and data_inizio <= :data and data_fine >= :data');

  cfg := tmyquery_go.create(nil);
  cfg.sql.text := 'select * from cfg where cfg_tipo = ''C'' and cfg_codice = :cfg_codice';

  tti := tmyquery_go.create(nil);
  tti.sql.text := 'select * from tti where tst_codice = :tst_codice ' +
    'and tva_codice = :tva_codice ' +
    'and data_inizio <= :data_inizio ' +
    'and data_fine >= :data_fine';
  ttisp := tmyquery_go.create(nil);
  ttisp.sql.text := 'select * from ttisp where id_tti = :id_tti order by peso';
  ttisi := tmyquery_go.create(nil);
  ttisi.sql.text := 'select * from ttisi where id_tti = :id_tti order by importo_scaglione';
  tsi := tmyquery_go.create(nil);
  tsi.sql.text := 'select * from tsi where tts_codice = :tts_codice ' +
    'and tva_codice = :tva_codice ' +
    'and data_inizio <= :data_inizio ' +
    'and data_fine >= :data_fine';
  tpa := tmyquery_go.create(nil);
  tpa.sql.text := 'select * from tpa where codice = :codice';
  tpe := tmyquery_go.create(nil);
  tpe.sql.text := 'select * from tpe where codice = :codice';
  cli := tmyquery_go.create(nil);
  cli.sql.text := 'select cli.*, nom.persona_fisica from cli inner join nom on nom.codice = cli.codice where cli.codice = :codice';
  spese_incasso_mensili := tmyquery_go.create(nil);
  spese_incasso_mensili.sql.text := 'select progressivo, importo_spese_incasso ' +
    'from fvt ' +
    'where cli_codice = :cli_codice ' +
    'and data_documento >= :data_inizio and data_documento <= :data_documento ' +
    'and importo_spese_incasso <> 0 ' +
    'and tipo_documento <> ''nota credito'' ' +
    'order by progressivo';

  spese_trasporto_giornaliere := tmyquery_go.create(nil);
  spese_trasporto_giornaliere.sql.text :=
    'select id from bvt where cli_codice = :cli_codice and data_documento = :data_documento ' +
    'and progressivo <> :progressivo and importo_spese_trasporto <> 0 ' +
    'union all ' +
    'select id from dvt where cli_codice = :cli_codice and data_documento = :data_documento ' +
    'and progressivo <> :progressivo and importo_spese_trasporto <> 0 ' +
    'union all ' +
    'select id from fvt where cli_codice = :cli_codice and data_documento = :data_documento ' +
    'and progressivo <> :progressivo and importo_spese_trasporto <> 0';

  (*
    query := tmyquery_go.create(nil);
    query.sql.text :=
    'select sum(importo_totale_euro) importo from dvt ' +
    'where cli_codice = :cli_codice and situazione <> ''consolidato'' and ' +
    'tipo_documento = ''ddt'' and tdo_codice_differite <> '''' and non_fatturare <> ''si'' ' +
    'union all ' +
    'select sum(importo_totale_euro) importo from bvt ' +
    'where cli_codice = :cli_codice and situazione <> ''consolidato'' and ' +
    'tipo_documento = ''bolla'' and tdo_codice_differite <> '''' and non_fatturare <> ''si'' ' +
    'union all ' +
    'select sum(importo_totale_euro) importo from cvt ' +
    'where cli_codice = :cli_codice and situazione <> ''consolidato'' and ' +
    'tipo_documento = ''corrispettivo'' and non_fatturare <> ''si'' ' +
    'union all ' +
    'select sum(importo_totale_euro) importo from fvt ' +
    'where cli_codice = :cli_codice and situazione <> ''consolidato'' and ' +
    'tipo_documento <> ''nota credito'' and non_fatturare <> ''si'' ' +
    'union all ' +
    'select sum(importo_totale_euro * -1) importo from fvt ' +
    'where cli_codice = :cli_codice and situazione <> ''consolidato'' and ' +
    'tipo_documento = ''nota credito'' and non_fatturare <> ''si'' ';
  *)

  liq := tmyquery_go.create(nil);
  liq.sql.text := 'select allegati_importo_fatture from liq where anno = :anno';

  merce := tmyquery_go.create(nil);
  merce_sql := 'select sum(x2x2.importo) importo_merce ' +
    'from x2x2 inner join x1x1 on x1x1.progressivo = x2x2.progressivo ' +
    'inner join art on art.codice = x2x2.art_codice ' +
    'where x2x2.progressivo = :progressivo and x2x2.tipo_movimento = ''normale'' and art.tipo_articolo = ''fiscale''';

  pagamenti := tmyquery_go.create(nil);
  pagamenti.sql.text := 'select * from x1x1 where progressivo = :progressivo';

  //  iva agevolata 488/99
  righe := tmyquery_go.create(nil);
  righe_sql := 'select x2x2.*, art.bene_significativo_iva_agevolata from x2x2 ' +
    'inner join art on art.codice = x2x2.art_codice where progressivo = :progressivo';

  righe_significativi := tmyquery_go.create(nil);

  righe_non_significativi := tmyquery_go.create(nil);
  righe_non_significativi_sql := 'select sum(importo) importo from x2x2  ' +
    'inner join art on art.codice = x2x2.art_codice where progressivo = :progressivo ' +
    'and art.bene_significativo_iva_agevolata = ''no''';

  cpp := tmyquery_go.create(nil);
end;

destructor TTOTVEN.Destroy;
begin

  freeandnil(dicint);

  cerca_prezzi.free;

  ven.free;
  tdo.free;
  cem_esiste.free;
  cem.free;
  ven_iva_codice.free;
  tiv.free;
  tsm.free;
  ven_iva.free;
  iva_delete.free;
  art.free;
  tbo.free;
  tabadd.free;
  cfg.free;
  tti.free;
  ttisp.free;
  ttisi.free;
  tsi.free;
  tpa.free;
  tpe.free;
  cli.free;
  spese_incasso_mensili.free;
  spese_trasporto_giornaliere.free;
  //query.free;
  liq.free;
  merce.free;
  pagamenti.free;

  freeandnil(calsca);
  freeandnil(cpp);
  freeandnil(righe);
  freeandnil(righe_significativi);
  freeandnil(righe_non_significativi);
end;

procedure TTOTVEN.movven_testata(connessione: TMyConnection_go; tipo_documento: string; progressivo: integer; interattivo: boolean = true);
var
  spese_incasso: boolean;
  importo_non_imponibile, totale_iva_pa: double;
  data_inizio: tdate;
  anno, mese, giorno: word;

  prezzo: double;
  tsm_codice, tsm_codice_art: string;

  peso_precedente, peso_scaglione: double;

  tea: tmyquery_go;

  importo_agevolata, importo_residuo: double;
  importo, importo_euro, importo_iva, importo_iva_euro, importo_non_arrotondato: double;

  docven: tdocven;
begin
  ven.close;
  ven.connection := connessione;
  tdo.close;
  tdo.connection := connessione;
  cem_esiste.close;
  cem_esiste.connection := connessione;
  cem.close;
  cem.connection := connessione;
  ven_iva.close;
  ven_iva.connection := connessione;
  ven_iva_codice.close;
  ven_iva_codice.connection := connessione;
  tsm.close;
  tsm.connection := connessione;
  tiv.close;
  tiv.connection := connessione;
  art.close;
  art.connection := connessione;
  tbo.close;
  tbo.connection := connessione;
  tabadd.close;
  tabadd.connection := connessione;
  tti.close;
  tti.connection := connessione;
  ttisp.close;
  ttisp.connection := connessione;
  ttisi.close;
  ttisi.connection := connessione;
  tsi.close;
  tsi.connection := connessione;
  tpa.close;
  tpa.connection := connessione;
  tpe.close;
  tpe.connection := connessione;
  cli.close;
  cli.connection := connessione;
  cfg.close;
  cfg.connection := connessione;
  spese_incasso_mensili.close;
  spese_incasso_mensili.connection := connessione;
  spese_trasporto_giornaliere.close;
  spese_trasporto_giornaliere.connection := connessione;
  iva_delete.close;
  iva_delete.connection := connessione;
  liq.close;
  liq.connection := connessione;

  merce.connection := connessione;

  pagamenti.connection := connessione;

  cpp.close;
  cpp.connection := connessione;

  calsca := tcalsca.create(connessione);

  iva_delete.sql.clear;
  iva_delete.sql.add('select * from');
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    iva_delete.sql.add('pvi');
  end
  else if tipo_documento = 'ordine' then
  begin
    iva_delete.sql.add('ovi');
  end
  else if tipo_documento = 'bolla' then
  begin
    iva_delete.sql.add('bvi');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    iva_delete.sql.add('cvi');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    iva_delete.sql.add('dvi');
  end
  else //  fatture e nota credito
  begin
    iva_delete.sql.add('fvi');
  end;
  iva_delete.sql.add('where progressivo = :progressivo');
  iva_delete.parambyname('progressivo').asinteger := progressivo;

  ven.sql.clear;
  if tipo_documento = 'preventivo' then
  begin
    ven.sql.add('select pvt.*, cli.split_payment from pvt inner join cli on cli.codice = pvt.cli_codice');
  end
  else if tipo_documento = 'preventivo nominativi' then
  begin
    ven.sql.add('select pvt.*, ''no'' split_payment from pvt');
  end
  else if tipo_documento = 'ordine' then
  begin
    ven.sql.add('select ovt.*, cli.split_payment from ovt inner join cli on cli.codice = ovt.cli_codice');
  end
  else if tipo_documento = 'bolla' then
  begin
    ven.sql.add('select bvt.*, cli.split_payment from bvt inner join cli on cli.codice = bvt.cli_codice');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    ven.sql.add('select cvt.*, cli.split_payment from cvt inner join cli on cli.codice = cvt.cli_codice');
  end
  else if tipo_documento = 'ddt' then
  begin
    ven.sql.add('select dvt.*, cli.split_payment from dvt inner join cli on cli.codice = dvt.cli_codice');
  end
  else if tipo_documento = 'ddt fornitori' then
  begin
    ven.sql.add('select dvt.*, ''no'' split_payment from dvt');
  end
  else //  fatture e nota credito
  begin
    ven.sql.add('select fvt.*, cli.split_payment from fvt inner join cli on cli.codice = fvt.cli_codice');
  end;
  ven.sql.add('where progressivo = :progressivo');
  ven.parambyname('progressivo').asfloat := progressivo;
  ven.open;

  (*

    dicint.capienza_tiv_codice(ven);

  *)

  //  codice pagamento per importo
  if not((tipo_documento = 'ddt fornitori') or (tipo_documento = 'nota credito') or
    (tipo_documento = 'preventivo nominativi') or (tipo_documento = 'ddt') or (tipo_documento = 'bolla')) then
  begin
    cpp.close;

    cpp.sql.text := 'select cpp.tpa_codice, cli.tpa_codice cli_tpa_codice, cli.descrizione1 cli_descrizione ' +
      'from cpp ' +
      'inner join cli on cli.codice = cpp.cli_codice ' +
      'where cpp.cli_codice = :cli_codice and cpp.importo_limite <= ' +
      '(select sum(round(x3x3.importo * (1 + tiv.percentuale / 100), 2)) ' +
      'from x3x3 inner join tiv on tiv.codice = x3x3.tiv_codice ' +
      'where x3x3.progressivo = :progressivo) * ' +
      '(select coalesce(tsm.percentuale_totale, 100) from x1x1 left join tsm on tsm.codice = ' +
      'x1x1.tsm_codice_sconto where x1x1.progressivo = :progressivo) / 100 - ' +
      '(select importo_sconto from x1x1 where x1x1.progressivo = :progressivo) ' +
      'order by cpp.importo_limite desc limit 1';

    if tipo_documento = 'preventivo' then
    begin
      cpp.sql.text := stringreplace(cpp.sql.text, 'x1x1', 'pvt', [rfreplaceall]);
      cpp.sql.text := stringreplace(cpp.sql.text, 'x3x3', 'pvi', [rfreplaceall]);
    end
    else if tipo_documento = 'ordine' then
    begin
      cpp.sql.text := stringreplace(cpp.sql.text, 'x1x1', 'ovt', [rfreplaceall]);
      cpp.sql.text := stringreplace(cpp.sql.text, 'x3x3', 'ovi', [rfreplaceall]);
    end
    else if tipo_documento = 'corrispettivo' then
    begin
      cpp.sql.text := stringreplace(cpp.sql.text, 'x1x1', 'cvt', [rfreplaceall]);
      cpp.sql.text := stringreplace(cpp.sql.text, 'x3x3', 'cvi', [rfreplaceall]);
    end
    else if copy(tipo_documento, 1, 7) = 'fattura' then
    begin
      cpp.sql.text := stringreplace(cpp.sql.text, 'x1x1', 'fvt', [rfreplaceall]);
      cpp.sql.text := stringreplace(cpp.sql.text, 'x3x3', 'fvi', [rfreplaceall]);
    end;

    cpp.parambyname('cli_codice').asstring := ven.fieldbyname('cli_codice').asstring;
    cpp.parambyname('progressivo').asinteger := ven.fieldbyname('progressivo').asinteger;
    cpp.open;
    if not cpp.isempty then
    begin
      if cpp.fieldbyname('tpa_codice').asstring <> ven.fieldbyname('tpa_codice').asstring then
      begin
        if messaggio(300, 'per il cliente [' + ven.fieldbyname('cli_codice').asstring + ' ' +
          cpp.fieldbyname('cli_descrizione').asstring + ']' + slinebreak +
          'è presente la condizione di pagamento personalizzato [' + cpp.fieldbyname('tpa_codice').asstring + ']' + slinebreak +
          'conferma per applicarla al documento') = 1 then
        begin
          if tabella_edit(ven) then
          begin
            ven.fieldbyname('tpa_codice').asstring := cpp.fieldbyname('tpa_codice').asstring;
            ven.post;
          end;
          ven.refresh;
        end;
      end;
    end;
  end;

  tdo.close;
  tdo.parambyname('codice').asstring := ven.fieldbyname('tdo_codice').asstring;
  tdo.open;

  cli.close;
  cli.params[0].asstring := ven.fieldbyname('cli_codice').asstring;
  cli.open;

  //  iva agevolata 488/99
  if (cli.fieldbyname('persona_fisica').asstring = 'si') and (tdo.fieldbyname('tiv_codice_agevolata').asstring <> '') then
  begin
    righe.connection := connessione;
    righe_significativi.connection := connessione;
    righe_non_significativi.connection := connessione;

    if ven.fieldbyname('tipo_documento').asstring = 'bolla' then
    begin
      righe.sql.text := stringreplace(righe_sql, 'x2x2', 'bvr', [rfreplaceall]);
      righe_non_significativi.sql.text := stringreplace(righe_non_significativi_sql, 'x2x2', 'bvr', [rfreplaceall]);
    end
    else if ven.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
    begin
      righe.sql.text := stringreplace(righe_sql, 'x2x2', 'cvr', [rfreplaceall]);
      righe_non_significativi.sql.text := stringreplace(righe_non_significativi_sql, 'x2x2', 'cvr', [rfreplaceall]);
    end
    else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 3) = 'ddt' then
    begin
      righe.sql.text := stringreplace(righe_sql, 'x2x2', 'dvr', [rfreplaceall]);
      righe_non_significativi.sql.text := stringreplace(righe_non_significativi_sql, 'x2x2', 'dvr', [rfreplaceall]);
    end
    else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
    begin
      righe.sql.text := stringreplace(righe_sql, 'x2x2', 'fvr', [rfreplaceall]);
      righe_non_significativi.sql.text := stringreplace(righe_non_significativi_sql, 'x2x2', 'fvr', [rfreplaceall]);
    end
    else if ven.fieldbyname('tipo_documento').asstring = 'nota credito' then
    begin
      righe.sql.text := stringreplace(righe_sql, 'x2x2', 'fvr', [rfreplaceall]);
      righe_non_significativi.sql.text := stringreplace(righe_non_significativi_sql, 'x2x2', 'fvr', [rfreplaceall]);
    end
    else if ven.fieldbyname('tipo_documento').asstring = 'ordine' then
    begin
      righe.sql.text := stringreplace(righe_sql, 'x2x2', 'ovr', [rfreplaceall]);
      righe_non_significativi.sql.text := stringreplace(righe_non_significativi_sql, 'x2x2', 'ovr', [rfreplaceall]);
    end
    else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
    begin
      righe.sql.text := stringreplace(righe_sql, 'x2x2', 'pvr', [rfreplaceall]);
      righe_non_significativi.sql.text := stringreplace(righe_non_significativi_sql, 'x2x2', 'pvr', [rfreplaceall]);
    end;

    righe_non_significativi.close;
    righe_non_significativi.parambyname('progressivo').asinteger := progressivo;
    righe_non_significativi.open;

    importo_agevolata := righe_non_significativi.fieldbyname('importo').asfloat;

    if importo_agevolata <> 0 then
    begin
      //  controllo per ripristino situazione precedente articoli significativi
      righe_significativi.close;
      righe_significativi_sql := 'select x2x2.id from x2x2  ' +
        'inner join art on art.codice = x2x2.art_codice where progressivo = :progressivo ' +
        'and art.bene_significativo_iva_agevolata = ''si'' and x2x2.id_origine <> 0';
      if ven.fieldbyname('tipo_documento').asstring = 'bolla' then
      begin
        righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'bvr', [rfreplaceall]);
      end
      else if ven.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
      begin
        righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'cvr', [rfreplaceall]);
      end
      else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 3) = 'ddt' then
      begin
        righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'dvr', [rfreplaceall]);
      end
      else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
      begin
        righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'fvr', [rfreplaceall]);
      end
      else if ven.fieldbyname('tipo_documento').asstring = 'nota credito' then
      begin
        righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'fvr', [rfreplaceall]);
      end
      else if ven.fieldbyname('tipo_documento').asstring = 'ordine' then
      begin
        righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'ovr', [rfreplaceall]);
      end
      else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
      begin
        righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'pvr', [rfreplaceall]);
      end;
      righe_significativi.parambyname('progressivo').asinteger := progressivo;
      righe_significativi.open;

      if not righe_significativi.isempty then
      begin
        //  ripristino situazione precedente articoli significativi
        righe_significativi.close;

        righe_significativi_sql := 'select x2x2.art_codice, x2x2.id_origine, sum(x2x2.importo) importo from x2x2  ' +
          'inner join art on art.codice = x2x2.art_codice where progressivo = :progressivo ' +
          'and art.bene_significativo_iva_agevolata = ''si'' and x2x2.id_origine <> 0 ' +
          'group by 1,2';
        if ven.fieldbyname('tipo_documento').asstring = 'bolla' then
        begin
          righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'bvr', [rfreplaceall]);
        end
        else if ven.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
        begin
          righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'cvr', [rfreplaceall]);
        end
        else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 3) = 'ddt' then
        begin
          righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'dvr', [rfreplaceall]);
        end
        else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
        begin
          righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'fvr', [rfreplaceall]);
        end
        else if ven.fieldbyname('tipo_documento').asstring = 'nota credito' then
        begin
          righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'fvr', [rfreplaceall]);
        end
        else if ven.fieldbyname('tipo_documento').asstring = 'ordine' then
        begin
          righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'ovr', [rfreplaceall]);
        end
        else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
        begin
          righe_significativi.sql.text := stringreplace(righe_significativi_sql, 'x2x2', 'pvr', [rfreplaceall]);
        end;
        righe_significativi.parambyname('progressivo').asinteger := progressivo;
        righe_significativi.open;

        while not righe_significativi.eof do
        begin
          righe.close;
          righe.parambyname('progressivo').asinteger := progressivo;
          righe.open;

          while not righe.eof do
          begin
            if (righe.fieldbyname('art_codice').asstring = righe_significativi.fieldbyname('art_codice').asstring) and
              (righe.fieldbyname('riga').asinteger = righe_significativi.fieldbyname('id_origine').asinteger) then
            begin
              if tabella_edit(righe) then
              begin
                righe.fieldbyname('importo').asfloat := righe.fieldbyname('importo').asfloat +
                  righe_significativi.fieldbyname('importo').asfloat;
                righe.fieldbyname('importo_euro').asfloat := righe.fieldbyname('importo_euro').asfloat +
                  righe_significativi.fieldbyname('importo').asfloat;

                importo := righe.fieldbyname('importo').asfloat;
                importo_euro := righe.fieldbyname('importo_euro').asfloat;

                calcola_importo_documento(0, 0, 1, 0, '', ven.fieldbyname('listino_con_iva').asstring, '',
                  righe.fieldbyname('tiv_codice').asstring, '', '', importo, importo_euro,
                  importo_iva, importo_iva_euro, importo_non_arrotondato, true);

                righe.fieldbyname('importo_iva').asfloat := importo_iva;
                righe.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;

                righe.post;
              end;
              righe.next;
            end
            else if (righe.fieldbyname('art_codice').asstring = righe_significativi.fieldbyname('art_codice').asstring) and
              (righe.fieldbyname('id_origine').asinteger = righe_significativi.fieldbyname('id_origine').asinteger) then
            begin
              righe.delete;
            end
            else
            begin
              righe.next;
            end;
          end;

          righe_significativi.next;
        end;
      end;

      righe_non_significativi.close;
      righe_non_significativi.parambyname('progressivo').asinteger := progressivo;
      righe_non_significativi.open;

      importo_agevolata := righe_non_significativi.fieldbyname('importo').asfloat;

      righe.close;
      righe.parambyname('progressivo').asinteger := progressivo;
      righe.open;

      while not righe.eof do
      begin
        if righe.fieldbyname('bene_significativo_iva_agevolata').asstring = 'no' then
        begin
          if righe.fieldbyname('tiv_codice').asstring <> tdo.fieldbyname('tiv_codice_agevolata').asstring then
          begin
            if tabella_edit(righe) then
            begin
              righe.fieldbyname('tiv_codice').asstring := tdo.fieldbyname('tiv_codice_agevolata').asstring;

              importo := righe.fieldbyname('importo').asfloat;
              importo_euro := righe.fieldbyname('importo_euro').asfloat;

              calcola_importo_documento(0, 0, 1, 0, '', ven.fieldbyname('listino_con_iva').asstring, '',
                righe.fieldbyname('tiv_codice').asstring, '', '', importo, importo_euro,
                importo_iva, importo_iva_euro, importo_non_arrotondato, true);

              righe.fieldbyname('importo_iva').asfloat := importo_iva;
              righe.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;

              righe.post;
            end;
          end;
        end
        else if righe.fieldbyname('bene_significativo_iva_agevolata').asstring = 'si' then
        begin
          //  controllo importo
          if righe.fieldbyname('importo').asfloat <= importo_agevolata then
          begin
            if righe.fieldbyname('tiv_codice').asstring <> tdo.fieldbyname('tiv_codice_agevolata').asstring then
            begin
              if tabella_edit(righe) then
              begin
                righe.fieldbyname('tiv_codice').asstring := tdo.fieldbyname('tiv_codice_agevolata').asstring;

                importo := righe.fieldbyname('importo').asfloat;
                importo_euro := righe.fieldbyname('importo_euro').asfloat;

                calcola_importo_documento(0, 0, 1, 0, '', ven.fieldbyname('listino_con_iva').asstring, '',
                  righe.fieldbyname('tiv_codice').asstring, '', '', importo, importo_euro,
                  importo_iva, importo_iva_euro, importo_non_arrotondato, true);

                righe.fieldbyname('importo_iva').asfloat := importo_iva;
                righe.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;

                righe.post;
              end;
            end;

            importo_agevolata := importo_agevolata - righe.fieldbyname('importo').asfloat;
          end
          else
          begin
            if righe.fieldbyname('tiv_codice').asstring <> tdo.fieldbyname('tiv_codice_agevolata').asstring then
            begin
              importo_residuo := righe.fieldbyname('importo').asfloat - importo_agevolata;

              if tabella_edit(righe) then
              begin
                //  residuo con iva inalterata
                righe.fieldbyname('prezzo').asfloat := 0;
                righe.fieldbyname('tsm_codice').asstring := '';
                righe.fieldbyname('tsm_codice_art').asstring := '';
                righe.fieldbyname('importo_sconto').asfloat := 0;

                righe.fieldbyname('importo').asfloat := importo_residuo;
                righe.fieldbyname('importo_euro').asfloat := importo_residuo;

                importo := righe.fieldbyname('importo').asfloat;
                importo_euro := righe.fieldbyname('importo_euro').asfloat;

                calcola_importo_documento(0, 0, 1, 0, '', ven.fieldbyname('listino_con_iva').asstring, '',
                  righe.fieldbyname('tiv_codice').asstring, '', '', importo, importo_euro,
                  importo_iva, importo_iva_euro, importo_non_arrotondato, true);

                righe.fieldbyname('importo_iva').asfloat := importo_iva;
                righe.fieldbyname('importo_iva_euro').asfloat := importo_iva_euro;

                righe.post;

                //  iva agevolata
                docven := tdocven.create(connessione, '');

                docven.progressivo := progressivo;
                docven.riga := righe.fieldbyname('riga').asinteger + 1;
                docven.riga_fissa := true;
                docven.id_origine_righe := righe.fieldbyname('riga').asinteger;
                docven.cfg_tipo := 'C';
                docven.tdo_codice := tdo.fieldbyname('codice').asstring;

                docven.quantita := 0;
                docven.quantita_approntata := 0;
                docven.prezzo := 0;
                docven.prezzo_netto := 0;
                docven.tsm_percentuale_righe := 0;
                docven.tsm_percentuale_righe_art := 0;
                docven.importo_sconto_righe := 0;

                docven.doc_progressivo_origine := 0;
                docven.doc_riga_origine := 0;
                docven.numero_colli := 0;
                docven.numero_confezioni := 0;

                docven.importo := importo_agevolata;
                docven.art_codice := righe.fieldbyname('art_codice').asstring;
                docven.art_descrizione1 := righe.fieldbyname('descrizione1').asstring;
                docven.art_descrizione2 := righe.fieldbyname('descrizione2').asstring;
                docven.tma_codice_righe := righe.fieldbyname('tma_codice').asstring;
                docven.tma_codice_collegato_righe := righe.fieldbyname('tma_codice_collegato').asstring;
                docven.tsm_codice_righe := '';
                docven.tsm_codice_righe_art := '';
                docven.tipo_movimento := righe.fieldbyname('tipo_movimento').asstring;
                docven.tiv_codice := tdo.fieldbyname('tiv_codice_agevolata').asstring;
                docven.gen_codice := righe.fieldbyname('gen_codice').asstring;
                docven.tsm_codice_sconto_righe := '';
                docven.tum_codice_righe := righe.fieldbyname('tum_codice').asstring;

                docven.crea_riga('', '');

                freeandnil(docven);
              end;
            end;

            importo_agevolata := 0;
          end;
        end;

        righe.next;
      end;

      if importo_agevolata <> 0 then
      begin
        //  aggiungi riga bene significativo
      end;

      ven.refresh;
    end;
  end;
  //  fine iva agevolata 488/99

  //  TOTVEN01
  esegui_totveninh(tdo, cli, ven);
  //  TOTVEN01

  //  importo rischio cliente
  ven_iva.sql.clear;
  ven_iva.sql.add('update');
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    ven_iva.sql.add('pvi');
  end
  else if tipo_documento = 'ordine' then
  begin
    ven_iva.sql.add('ovi');
  end
  else if tipo_documento = 'bolla' then
  begin
    ven_iva.sql.add('bvi');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    ven_iva.sql.add('cvi');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    ven_iva.sql.add('dvi');
  end
  else //  fatture e nota credito
  begin
    ven_iva.sql.add('fvi');
  end;
  ven_iva.sql.add('set');
  ven_iva.sql.add('importo_sconto = 0,');
  ven_iva.sql.add('importo_sconto_cassa = 0,');
  ven_iva.sql.add('importo_sconto_percentuale = 0,');
  ven_iva.sql.add('importo_trasporto = 0,');
  ven_iva.sql.add('importo_bollo = 0,');
  ven_iva.sql.add('importo_incasso = 0,');
  ven_iva.sql.add('importo_extra = 0,');
  ven_iva.sql.add('importo_imponibile = 0,');
  ven_iva.sql.add('importo_iva = 0,');
  ven_iva.sql.add('importo_cassa_professionisti = 0');
  ven_iva.sql.add('where progressivo = ' + floattostr(progressivo));
  ven_iva.execsql;

  //  totale documento per applicazione sconto
  ven_iva.close;
  ven_iva.sql.clear;
  ven_iva.sql.add('select sum(importo) importo from');
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    ven_iva.sql.add('pvi');
  end
  else if tipo_documento = 'ordine' then
  begin
    ven_iva.sql.add('ovi');
  end
  else if tipo_documento = 'bolla' then
  begin
    ven_iva.sql.add('bvi');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    ven_iva.sql.add('cvi');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    ven_iva.sql.add('dvi');
  end
  else //  fatture e nota credito
  begin
    ven_iva.sql.add('fvi');
  end;
  ven_iva.sql.add('inner join tiv on tiv.codice = tiv_codice');
  ven_iva.sql.add('where progressivo = ' + floattostr(progressivo));
  ven_iva.sql.add('and applica_sconto_testata_vendite = ''si''');
  ven_iva.sql.add('and tipo_movimento = ''normale''');
  ven_iva.open;

  totale := ven_iva.fieldbyname('importo').asfloat;

  //  query righe iva (totali e singolo record)
  ven_iva.close;
  ven_iva.sql.clear;
  ven_iva_codice.sql.clear;

  ven_iva.sql.add('select');
  ven_iva_codice.sql.add('select * from');
  if copy(tipo_documento, 1, 10) = 'preventivo' then
  begin
    ven_iva.sql.add('pvi.*, tiv.applica_sconto_testata_vendite from pvi');
    ven_iva_codice.sql.add('pvi');
  end
  else if tipo_documento = 'ordine' then
  begin
    ven_iva.sql.add('ovi.*, tiv.applica_sconto_testata_vendite from ovi');
    ven_iva_codice.sql.add('ovi');
  end
  else if tipo_documento = 'bolla' then
  begin
    ven_iva.sql.add('bvi.*, tiv.applica_sconto_testata_vendite from bvi');
    ven_iva_codice.sql.add('bvi');
  end
  else if tipo_documento = 'corrispettivo' then
  begin
    ven_iva.sql.add('cvi.*, tiv.applica_sconto_testata_vendite from cvi');
    ven_iva_codice.sql.add('cvi');
  end
  else if (tipo_documento = 'ddt') or (tipo_documento = 'ddt fornitori') then
  begin
    ven_iva.sql.add('dvi.*, tiv.applica_sconto_testata_vendite from dvi');
    ven_iva_codice.sql.add('dvi');
  end
  else //  fatture e nota credito
  begin
    ven_iva.sql.add('fvi.*, tiv.applica_sconto_testata_vendite from fvi');
    ven_iva_codice.sql.add('fvi');
  end;

  ven_iva.sql.add('inner join tiv on tiv.codice = tiv_codice');

  ven_iva.sql.add('where progressivo = ' + floattostr(progressivo));
  ven_iva.open;

  ven_iva_codice.sql.add('where progressivo = :progressivo');
  ven_iva_codice.sql.add('and tiv_codice = :tiv_codice');
  ven_iva_codice.sql.add('and tipo_movimento = :tipo_movimento');

  ven.edit;

  if ven.fieldbyname('tiv_codice').asstring <> '' then
  begin
    if tdo.fieldbyname('iva_spese_testata').asstring = 'si' then
    begin
      ven.fieldbyname('tiv_codice_spese_extra').asstring := ven.fieldbyname('tiv_codice').asstring;
      ven.fieldbyname('tiv_codice_spese_incasso').asstring := ven.fieldbyname('tiv_codice').asstring;
      ven.fieldbyname('tiv_codice_cassa_professionisti').asstring := ven.fieldbyname('tiv_codice').asstring;
    end;
  end;

  if tipo_documento <> 'fattura differita' then
  begin
    //  totale documento per calcolo dello sconto globale
    percentuale_sconto := 100;

    //  calcola sconto sul totale del documento
    if trim(ven.fieldbyname('tsm_codice_sconto').asstring) <> '' then
    begin
      tsm.close;
      tsm.params[0].asstring := ven.fieldbyname('tsm_codice_sconto').asstring;
      tsm.open;
      if not tsm.eof then
      begin
        percentuale_sconto := tsm.fieldbyname('percentuale_totale').asfloat;
      end;

      importo_sconto_calcolato := arrotonda(totale * (1 - percentuale_sconto / 100));

      //  calcola sconto percentuale finale per ogni aliquota
      totale := 0;
      importo_sconto_assegnato := 0;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        if (ven_iva.fieldbyname('tipo_movimento').asstring = 'normale') and
          (ven_iva.fieldbyname('applica_sconto_testata_vendite').asstring = 'si') then
        begin
          ven_iva.edit;

          ven_iva.fieldbyname('importo_sconto_percentuale').asfloat := arrotonda
            (ven_iva.fieldbyname('importo').asfloat * (1 - percentuale_sconto / 100));

          //  totalizza sconto per quadratura
          importo_sconto_assegnato := arrotonda(importo_sconto_assegnato + ven_iva.fieldbyname('importo_sconto_percentuale').asfloat);

          ven_iva.post;
        end;

        ven_iva.next;
      end;
      if arrotonda(importo_sconto_calcolato) <> arrotonda(importo_sconto_assegnato) then
      begin
        assegnato := false;
        ven_iva.first;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            if (ven_iva.fieldbyname('tipo_movimento').asstring = 'normale') or
              (ven_iva.fieldbyname('tipo_movimento').asstring = 'omaggio') then
            begin
              ven_iva.edit;

              ven_iva.fieldbyname('importo_sconto_percentuale').asfloat := arrotonda
                (ven_iva.fieldbyname('importo_sconto_percentuale').asfloat + importo_sconto_calcolato - importo_sconto_assegnato);

              ven_iva.post;
              assegnato := true;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;

    //  sconto in valore assoluto ripartito per aliquota
    if ven.fieldbyname('importo_sconto').asfloat <> 0 then
    begin
      totale := 0;
      importo_sconto_assegnato := 0;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
            ven_iva.fieldbyname('importo_sconto_percentuale').asfloat);
        end;

        ven_iva.next;
      end;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        ven_iva.edit;

        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          if totale <> 0 then
          begin
            ven_iva.fieldbyname('importo_sconto').asfloat := arrotonda(ven.fieldbyname('importo_sconto').asfloat *
              (ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat) / totale);
          end;
        end;

        //  totalizza sconto per aliquota per quadratura
        importo_sconto_assegnato := arrotonda(importo_sconto_assegnato + ven_iva.fieldbyname('importo_sconto').asfloat);

        ven_iva.post;

        ven_iva.next;
      end;
      if arrotonda(ven.fieldbyname('importo_sconto').asfloat) <> arrotonda(importo_sconto_assegnato) then
      begin
        assegnato := false;
        ven_iva.close;
        ven_iva.open;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            if (ven_iva.fieldbyname('tipo_movimento').asstring = 'normale') or
              (ven_iva.fieldbyname('tipo_movimento').asstring = 'omaggio') then
            begin
              ven_iva.edit;
              ven_iva.fieldbyname('importo_sconto').asfloat := arrotonda(ven_iva.fieldbyname('importo_sconto').asfloat +
                ven.fieldbyname('importo_sconto').asfloat - importo_sconto_assegnato);
              ven_iva.post;
              assegnato := true;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;

    //  totale documento per calcolo dello sconto cassa
    totale := 0;
    percentuale_sconto := 100;

    ven_iva.first;
    while not ven_iva.eof do
    begin
      if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
      begin
        totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
          ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
          ven_iva.fieldbyname('importo_sconto').asfloat);
      end;

      ven_iva.next;
    end;

    //  calcola sconto cassa sul totale del documento
    if trim(ven.fieldbyname('tsm_codice').asstring) <> '' then
    begin
      tsm.close;
      tsm.params[0].asstring := ven.fieldbyname('tsm_codice').asstring;
      tsm.open;
      if not tsm.eof then
      begin
        percentuale_sconto := tsm.fieldbyname('percentuale_totale').asfloat;
      end;

      importo_sconto_calcolato := arrotonda(totale * (1 - percentuale_sconto / 100));

      //  calcola sconto cassa per ogni aliquota

      totale := 0;
      importo_sconto_assegnato := 0;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin

          ven_iva.edit;

          ven_iva.fieldbyname('importo_sconto_cassa').asfloat := arrotonda
            ((ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
            ven_iva.fieldbyname('importo_sconto').asfloat) * (1 - percentuale_sconto / 100));

          //  totalizza sconto per quadratura
          importo_sconto_assegnato := arrotonda(importo_sconto_assegnato + ven_iva.fieldbyname('importo_sconto_cassa').asfloat);

          ven_iva.post;
        end;

        ven_iva.next;
      end;
      if arrotonda(importo_sconto_calcolato) <> arrotonda(importo_sconto_assegnato) then
      begin
        assegnato := false;
        ven_iva.first;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            if (ven_iva.fieldbyname('tipo_movimento').asstring = 'normale') or
              (ven_iva.fieldbyname('tipo_movimento').asstring = 'omaggio') then
            begin
              ven_iva.edit;

              ven_iva.fieldbyname('importo_sconto_cassa').asfloat := arrotonda
                (ven_iva.fieldbyname('importo_sconto_cassa').asfloat + importo_sconto_calcolato - importo_sconto_assegnato);

              ven_iva.post;
              assegnato := true;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;

    //  fattura professionisti
    importo_cassa_professionisti := 0;
    importo_enasarco := 0;
    importo_ritenuta := 0;
    if ven.fieldbyname('fattura_professionisti').asstring = 'si' then
    begin
      if ven.fieldbyname('ritenuta_manuale').asstring = 'no' then
      begin
        //  calcolo imponibile
        totale := 0;

        ven_iva.first;
        while not ven_iva.eof do
        begin
          if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
          begin
            tiv.params[0].asstring := ven_iva.fieldbyname('tiv_codice').asstring;
            tiv.close;
            tiv.open;
            if tiv.fieldbyname('soggetto_ritenuta').asstring = 'si' then
            begin
              totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
                ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
                ven_iva.fieldbyname('importo_sconto').asfloat -
                ven_iva.fieldbyname('importo_sconto_cassa').asfloat);
            end;
          end;

          ven_iva.next;
        end;

        //  calcola cassa previdenza
        importo_cassa_professionisti := arrotonda
          (totale * ven.fieldbyname('percentuale_cassa_professionist').asfloat / 100);
        if arc.dit.fieldbyname('cassa_profess_soggetta_ritenuta').asstring = 'si' then
        begin
          totale := totale + importo_cassa_professionisti;
        end;

        //  recupero enasarco
        if ven.fieldbyname('soggetto_addebito_enasarco').asstring = 'si' then
        begin
          if (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito') then
          begin
            tea := tmyquery_go.create(nil);
            tea.connection := arc.arcdit;
            if arc.dit.fieldbyname('persona_fisica').asstring = 'si' then
            begin
              tea.sql.add('select sum(round(tea.enasarco_agente * fvr.importo / 100, 2)) importo_cassa');
            end
            else
            begin
              tea.sql.add('select sum(round(tea.percentuale_enasarco_agente_01 * fvr.importo / 100, 2)) importo_cassa');
            end;
            tea.sql.text := tea.sql.text + ' ' +
              'from fvr ' +
              'inner join tea on tea.codice = fvr.tea_codice ' +
              'where fvr.progressivo = :progressivo and fvr.soggetto_addebito_enasarco = ''si''';
            tea.parambyname('progressivo').asinteger := progressivo;
            tea.open;
            importo_enasarco := importo_enasarco + tea.fieldbyname('importo_cassa').asfloat;
            tea.close;
            tea.free;
          end;
        end;

        //  calcola ritenuta
        if ven.fieldbyname('tpe_codice').asstring <> '' then
        begin
          tpe.params[0].asstring := ven.fieldbyname('tpe_codice').asstring;
          tpe.close;
          tpe.open;
          if not tpe.eof then
          begin
            importo_non_imponibile := arrotonda(totale * tpe.fieldbyname('abbattimento_irpef').asfloat / 100);
            importo_ritenuta := arrotonda
              ((totale - importo_non_imponibile) * tpe.fieldbyname('percentuale_ritenuta').asfloat / 100);
          end;
        end;
      end
      else
      begin
        importo_cassa_professionisti := ven.fieldbyname('importo_cassa_professionisti').asfloat;
        importo_enasarco := ven.fieldbyname('importo_enasarco').asfloat;
        importo_ritenuta := ven.fieldbyname('importo_ritenuta').asfloat;
      end;

      //  calcola iva cassa preofessionisti (listino sempre al netto di iva)
      if importo_cassa_professionisti <> 0 then
      begin
        ven_iva_codice.params[0].asfloat := progressivo;
        ven_iva_codice.params[1].asstring := ven.fieldbyname('tiv_codice_cassa_professionisti').asstring;
        ven_iva_codice.params[2].asstring := 'normale';

        ven_iva_codice.close;
        ven_iva_codice.open;
        if ven_iva_codice.eof then
        begin
          ven_iva_codice.append;

          ven_iva_codice.fieldbyname('progressivo').asfloat := progressivo;
          ven_iva_codice.fieldbyname('tiv_codice').asstring := ven.fieldbyname('tiv_codice_cassa_professionisti').asstring;
          ven_iva_codice.fieldbyname('tipo_movimento').asstring := 'normale';

          ven_iva_codice.post;
          ven_iva_codice.refresh;
        end;

        ven_iva_codice.edit;

        ven_iva_codice.fieldbyname('importo_cassa_professionisti').asfloat := arrotonda
          (ven_iva_codice.fieldbyname('importo_cassa_professionisti').asfloat + importo_cassa_professionisti);

        ven_iva_codice.post;
      end;
    end;

    ven_iva.refresh;
    if ven.fieldbyname('addebito_spese_fattura').asstring = 'si' then
    begin
      //  spese extra
      calcola_spese_extra(progressivo);

      if ven.fieldbyname('spese_manuali_trasporto').asstring = 'no' then
      begin
        //  spese trasporto automatiche
        if (ven.fieldbyname('addebito_spese_trasporto').asstring = 'si') and (cli.fieldbyname('no_spese_trasporto').asstring = 'no') then
        begin
          imponibile_trasporto := 0;
          importo_trasporto := 0;

          //  calcola spese trasporto se presenti in CLS
          cerca_prezzi.cerca_prezzo('C', ven.fieldbyname('cli_codice').asstring, ven.fieldbyname('indirizzo').asstring,
            'listino vendita', arc.dit.fieldbyname('art_codice_spese_trasporto').asstring, '', 0,
            prezzo, tsm_codice, tsm_codice_art, ven.fieldbyname('data_documento').asdatetime,
            ven.fieldbyname('tva_codice').asstring, ven.fieldbyname('cambio').asfloat,
            arc.dit.fieldbyname('decimali_max_prezzo').asinteger, ven.fieldbyname('tlv_codice').asstring, 1, '',
            ven.fieldbyname('tdo_codice').asstring);

          importo_trasporto := prezzo;

          if importo_trasporto = 0 then
          begin
            //  calcola imponibile trasporto
            ven_iva.first;
            while not ven_iva.eof do
            begin
              if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
              begin
                imponibile_trasporto := arrotonda(imponibile_trasporto +
                  ven_iva.fieldbyname('importo_imponibile_trasporto').asfloat);
              end;

              ven_iva.next;
            end;

            importo_trasporto := 0;
            tti.close;
            tti.params[0].asstring := ven.fieldbyname('tst_codice').asstring;
            tti.params[1].asstring := ven.fieldbyname('tva_codice').asstring;
            tti.params[2].asdate := ven.fieldbyname('data_documento').asdatetime;
            tti.params[3].asdate := ven.fieldbyname('data_documento').asdatetime;
            tti.open;
            if not tti.eof then
            begin
              //  scaglioni importo
              ttisi.close;
              ttisi.params[0].asinteger := tti.fieldbyname('id').asinteger;
              ttisi.open;
              if not ttisi.isempty then
              begin
                iva_totale := tmyquery_go.create(nil);
                iva_totale.connection := arc.arcdit;

                if ven.fieldbyname('listino_con_iva').asstring = 'no' then
                begin
                  iva_totale.sql.text := 'select sum(importo + importo_iva) importo from x1x1 where progressivo = ' + floattostr(progressivo);
                end
                else
                begin
                  iva_totale.sql.text := 'select sum(importo) importo from x1x1 where progressivo = ' + floattostr(progressivo);
                end;

                if ven.fieldbyname('tipo_documento').asstring = 'bolla' then
                begin
                  iva_totale.sql.text := stringreplace(iva_totale.sql.text, 'x1x1', 'bvr', [rfreplaceall]);
                end
                else if ven.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
                begin
                  iva_totale.sql.text := stringreplace(iva_totale.sql.text, 'x1x1', 'cvr', [rfreplaceall]);
                end
                else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 3) = 'ddt' then
                begin
                  iva_totale.sql.text := stringreplace(iva_totale.sql.text, 'x1x1', 'dvr', [rfreplaceall]);
                end
                else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
                begin
                  iva_totale.sql.text := stringreplace(iva_totale.sql.text, 'x1x1', 'fvr', [rfreplaceall]);
                end
                else if ven.fieldbyname('tipo_documento').asstring = 'nota credito' then
                begin
                  iva_totale.sql.text := stringreplace(iva_totale.sql.text, 'x1x1', 'fvr', [rfreplaceall]);
                end
                else if ven.fieldbyname('tipo_documento').asstring = 'ordine' then
                begin
                  iva_totale.sql.text := stringreplace(iva_totale.sql.text, 'x1x1', 'ovr', [rfreplaceall]);
                end
                else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
                begin
                  iva_totale.sql.text := stringreplace(iva_totale.sql.text, 'x1x1', 'pvr', [rfreplaceall]);
                end;

                iva_totale.open;

                while not ttisi.eof do
                begin
                  if iva_totale.fieldbyname('importo').asfloat <= ttisi.fieldbyname('importo_scaglione').asfloat then
                  begin
                    importo_trasporto := ttisi.fieldbyname('importo_addebito').asfloat;
                    break;
                  end;

                  ttisi.next;
                end;

                freeandnil(iva_totale);
              end
              else
              begin
                if imponibile_trasporto < tti.fieldbyname('importo_minimo').asfloat then
                begin
                  ttisp.close;
                  ttisp.params[0].asinteger := tti.fieldbyname('id').asinteger;
                  ttisp.open;
                  if ttisp.isempty then
                  begin
                    if tti.fieldbyname('importo_soglia_addebito_globale').asfloat <> 0 then
                    begin
                      if imponibile_trasporto <= tti.fieldbyname('importo_soglia_addebito_globale').asfloat then
                      begin
                        importo_trasporto := tti.fieldbyname('importo_assoluto').asfloat;
                      end
                      else
                      begin
                        importo_trasporto := arrotonda(tti.fieldbyname('importo_percentuale').asfloat * imponibile_trasporto / 100);
                      end;
                    end
                    else
                    begin
                      importo_trasporto := arrotonda(tti.fieldbyname('importo_assoluto').asfloat +
                        tti.fieldbyname('importo_percentuale').asfloat * imponibile_trasporto / 100);
                    end;
                  end
                  else
                  begin
                    peso_precedente := 0;
                    while not ttisp.eof do
                    begin
                      if ven.fieldbyname('peso_netto').asfloat > peso_precedente then
                      begin
                        if ven.fieldbyname('peso_netto').asfloat > ttisp.fieldbyname('peso').asfloat then
                        begin
                          peso_scaglione := ttisp.fieldbyname('peso').asfloat - peso_precedente;
                        end
                        else
                        begin
                          peso_scaglione := ven.fieldbyname('peso_netto').asfloat - peso_precedente;
                        end;

                        importo_trasporto := arrotonda(importo_trasporto + ttisp.fieldbyname('importo_fisso').asfloat +
                          peso_scaglione * ttisp.fieldbyname('importo_unitario').asfloat);
                        peso_precedente := ttisp.fieldbyname('peso').asfloat;
                      end;
                      ttisp.next;
                    end;
                  end;
                end;
              end;
            end;
          end;

          if importo_trasporto <> 0 then
          begin
            //  controllo spese mensili solo su prima fattura (se fattura diretta)
            if cli.fieldbyname('spese_trasporto_giornaliere').asstring = 'si' then
            begin
              spese_trasporto_giornaliere.close;
              spese_trasporto_giornaliere.parambyname('cli_codice').asstring := ven.fieldbyname('cli_codice').asstring;
              spese_trasporto_giornaliere.parambyname('data_documento').asdate := ven.fieldbyname('data_documento').asdatetime;
              spese_trasporto_giornaliere.parambyname('progressivo').asinteger := ven.fieldbyname('progressivo').asinteger;
              spese_trasporto_giornaliere.open;
              if not spese_trasporto_giornaliere.isempty then
              begin
                importo_trasporto := 0;
              end;
            end;

            totale := 0;
            importo_trasporto_assegnato := 0;

            //  calcola totale per ripartizione spese trasporto
            ven_iva.first;
            while not ven_iva.eof do
            begin
              tiv.close;
              tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
              tiv.open;
              if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
              begin
                if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
                begin
                  totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
                    ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
                    ven_iva.fieldbyname('importo_sconto').asfloat -
                    ven_iva.fieldbyname('importo_sconto_cassa').asfloat);
                end;
              end;

              ven_iva.next;
            end;

            //  calcola spese trasporto in proporzione ad ogni aliquota
            ven_iva.first;
            while not ven_iva.eof do
            begin
              tiv.close;
              tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
              tiv.open;
              if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
              begin
                if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
                begin
                  ven_iva.edit;

                  if totale <> 0 then
                  begin
                    ven_iva.fieldbyname('importo_trasporto').asfloat := arrotonda
                      (importo_trasporto * (ven_iva.fieldbyname('importo').asfloat -
                      ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
                      ven_iva.fieldbyname('importo_sconto').asfloat -
                      ven_iva.fieldbyname('importo_sconto_cassa').asfloat) / totale);
                  end;

                  //  totalizza sconto per aliquota per quadratura
                  importo_trasporto_assegnato := arrotonda(importo_trasporto_assegnato + ven_iva.fieldbyname('importo_trasporto').asfloat);

                  ven_iva.post;
                end;
              end;

              ven_iva.next;
            end;
            if arrotonda(importo_trasporto) <> arrotonda(importo_trasporto_assegnato) then
            begin
              assegnato := false;
              ven_iva.first;
              while not ven_iva.eof do
              begin
                if not assegnato then
                begin
                  tiv.close;
                  tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
                  tiv.open;
                  if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
                  begin
                    if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
                    begin
                      ven_iva.edit;
                      ven_iva.fieldbyname('importo_trasporto').asfloat := arrotonda
                        (ven_iva.fieldbyname('importo_trasporto').asfloat + importo_trasporto - importo_trasporto_assegnato);
                      ven_iva.post;
                      assegnato := true;
                    end;
                  end;
                end;
                ven_iva.next;
              end;
            end;
          end;
        end;
      end
      else
      begin
        calcola_spese_trasporto_manuali(progressivo);
      end;

      if (ven.fieldbyname('spese_manuali_bollo').asstring = 'no') and (cli.fieldbyname('no_spese_bollo').asstring = 'no') then
      begin
        //  spese bollo
        calcola_spese_bollo(progressivo);
      end
      else
      begin
        calcola_spese_bollo_manuali(progressivo);
      end;

      if (ven.fieldbyname('spese_manuali_incasso').asstring = 'no') and (cli.fieldbyname('no_spese_incasso').asstring = 'no') then
      begin
        //  spese incasso
        spese_incasso := true;

        //  controllo spese mensili solo su prima fattura (se fattura diretta)
        if cli.fieldbyname('spese_incasso_mensili').asstring = 'si' then
        begin
          if copy(ven.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
          begin
            spese_incasso := false;

            decodedate(ven.fieldbyname('data_documento').asdatetime, anno, mese, giorno);
            giorno := 01;
            data_inizio := encodedate(anno, mese, giorno);
            spese_incasso_mensili.params[0].asstring := ven.fieldbyname('cli_codice').asstring;
            spese_incasso_mensili.params[1].asdate := data_inizio;
            spese_incasso_mensili.params[2].asdate := ven.fieldbyname('data_documento').asdatetime;
            spese_incasso_mensili.close;
            spese_incasso_mensili.open;
            if (spese_incasso_mensili.eof) or
              (spese_incasso_mensili.fieldbyname('progressivo').asfloat = progressivo) then
            begin
              spese_incasso := true;
            end;
          end
          else
          begin
            spese_incasso := false;
          end;
        end;

        if spese_incasso then
        begin
          calcola_spese_incasso(progressivo, tipo_documento);
        end;
      end
      else
      begin
        calcola_spese_incasso_manuali(progressivo);
      end;
    end;

    //  ritenuta acconto, enasarco e cassa previdenza
    ven.fieldbyname('importo_cassa_professionisti').asfloat := 0;
    ven.fieldbyname('importo_enasarco').asfloat := 0;
    ven.fieldbyname('importo_ritenuta').asfloat := 0;
  end
  else
  begin
    //  sconti finali
    if (ven.fieldbyname('importo_sconto_finale').asfloat <> 0) then
    begin
      //  totale documento per calcolo sconti
      totale := 0;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat);
        end;

        ven_iva.next;
      end;

      //  sconto ripartito per aliquota
      importo_sconto_assegnato := 0;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        ven_iva.edit;

        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          if totale <> 0 then
          begin
            ven_iva.fieldbyname('importo_sconto_percentuale').asfloat := arrotonda
              (ven.fieldbyname('importo_sconto_finale').asfloat *
              (ven_iva.fieldbyname('importo').asfloat) / totale);
          end;
        end;

        //  totalizza sconto per aliquota per quadratura
        importo_sconto_assegnato := arrotonda(importo_sconto_assegnato + ven_iva.fieldbyname('importo_sconto_percentuale').asfloat);

        ven_iva.post;

        ven_iva.next;
      end;
      if arrotonda(ven.fieldbyname('importo_sconto_finale').asfloat) <> arrotonda(importo_sconto_assegnato) then
      begin
        assegnato := false;
        ven_iva.close;
        ven_iva.open;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            if (ven_iva.fieldbyname('tipo_movimento').asstring = 'normale') or
              (ven_iva.fieldbyname('tipo_movimento').asstring = 'omaggio') then
            begin
              ven_iva.edit;
              ven_iva.fieldbyname('importo_sconto_percentuale').asfloat := arrotonda(ven_iva.fieldbyname('importo_sconto_percentuale').asfloat +
                ven.fieldbyname('importo_sconto_finale').asfloat - importo_sconto_assegnato);
              ven_iva.post;
              assegnato := true;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;

    //  sconto in valore assoluto ripartito per aliquota
    if ven.fieldbyname('importo_sconto').asfloat <> 0 then
    begin
      totale := 0;
      importo_sconto_assegnato := 0;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
            ven_iva.fieldbyname('importo_sconto_percentuale').asfloat);
        end;

        ven_iva.next;
      end;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        ven_iva.edit;

        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          if totale <> 0 then
          begin
            ven_iva.fieldbyname('importo_sconto').asfloat := arrotonda(ven.fieldbyname('importo_sconto').asfloat *
              (ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat) / totale);
          end;
        end;

        //  totalizza sconto per aliquota per quadratura
        importo_sconto_assegnato := arrotonda(importo_sconto_assegnato + ven_iva.fieldbyname('importo_sconto').asfloat);

        ven_iva.post;

        ven_iva.next;
      end;
      if arrotonda(ven.fieldbyname('importo_sconto').asfloat) <> arrotonda(importo_sconto_assegnato) then
      begin
        assegnato := false;
        ven_iva.close;
        ven_iva.open;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            if (ven_iva.fieldbyname('tipo_movimento').asstring = 'normale') or
              (ven_iva.fieldbyname('tipo_movimento').asstring = 'omaggio') then
            begin
              ven_iva.edit;
              ven_iva.fieldbyname('importo_sconto').asfloat := arrotonda(ven_iva.fieldbyname('importo_sconto').asfloat +
                ven.fieldbyname('importo_sconto').asfloat - importo_sconto_assegnato);
              ven_iva.post;
              assegnato := true;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;

    //  totale documento per calcolo dello sconto cassa
    totale := 0;
    percentuale_sconto := 100;
    importo_sconto_calcolato := 0;

    ven_iva.first;
    while not ven_iva.eof do
    begin
      if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
      begin
        totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
          ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
          ven_iva.fieldbyname('importo_sconto').asfloat);
      end;

      ven_iva.next;
    end;

    //  calcola sconto cassa sul totale del documento
    if trim(ven.fieldbyname('tsm_codice').asstring) <> '' then
    begin
      tsm.close;
      tsm.params[0].asstring := ven.fieldbyname('tsm_codice').asstring;
      tsm.open;
      if not tsm.eof then
      begin
        percentuale_sconto := tsm.fieldbyname('percentuale_totale').asfloat;
      end;

      importo_sconto_calcolato := arrotonda(totale * (1 - percentuale_sconto / 100));
    end;

    //  calcola sconto cassa sul totale del documento
    if importo_sconto_calcolato <> 0 then
    begin
      //  calcola sconto cassa per ogni aliquota
      totale := 0;
      importo_sconto_assegnato := 0;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
            ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
            ven_iva.fieldbyname('importo_sconto').asfloat);
        end;

        ven_iva.next;
      end;

      ven_iva.first;
      while not ven_iva.eof do
      begin
        ven_iva.edit;

        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          if totale <> 0 then
          begin
            ven_iva.fieldbyname('importo_sconto_cassa').asfloat := arrotonda
              (importo_sconto_calcolato * (ven_iva.fieldbyname('importo').asfloat -
              ven_iva.fieldbyname('importo_sconto_percentuale').asfloat - ven_iva.fieldbyname('importo_sconto').asfloat)
              / totale);
          end;
        end;

        //  totalizza sconto per aliquota per quadratura
        importo_sconto_assegnato := arrotonda(importo_sconto_assegnato + ven_iva.fieldbyname('importo_sconto_cassa').asfloat);

        ven_iva.post;

        ven_iva.next;
      end;
      if importo_sconto_calcolato <> importo_sconto_assegnato then
      begin
        assegnato := false;
        ven_iva.first;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            if (ven_iva.fieldbyname('tipo_movimento').asstring = 'normale') or
              (ven_iva.fieldbyname('tipo_movimento').asstring = 'omaggio') then
            begin
              ven_iva.edit;
              ven_iva.fieldbyname('importo_sconto_cassa').asfloat := arrotonda
                (ven_iva.fieldbyname('importo_sconto_cassa').asfloat +
                importo_sconto_calcolato -
                importo_sconto_assegnato);
              ven_iva.post;
              assegnato := true;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;

    //  spese extra
    calcola_spese_extra(progressivo);

    //  spese trasporto (sempre manuali)
    calcola_spese_trasporto_manuali(progressivo);

    if ven.fieldbyname('addebito_spese_fattura').asstring = 'si' then
    begin
      //if ven.fieldbyname('spese_manuali').asstring = 'no' then
      if (ven.fieldbyname('spese_manuali_bollo').asstring = 'no') and (cli.fieldbyname('no_spese_bollo').asstring = 'no') then
      begin
        calcola_spese_bollo(progressivo);
      end
      else
      begin
        calcola_spese_bollo_manuali(progressivo);
      end;

      if (ven.fieldbyname('spese_manuali_incasso').asstring = 'no') and (cli.fieldbyname('no_spese_incasso').asstring = 'no') then
      begin
        //  spese incasso
        spese_incasso := true;

        //  controllo spese mensili solo su prima fattura (se fattura diretta)
        if cli.fieldbyname('spese_incasso_mensili').asstring = 'si' then
        begin
          if copy(ven.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
          begin
            spese_incasso := false;

            decodedate(ven.fieldbyname('data_documento').asdatetime, anno, mese, giorno);
            giorno := 01;
            data_inizio := encodedate(anno, mese, giorno);
            spese_incasso_mensili.params[0].asstring := ven.fieldbyname('cli_codice').asstring;
            spese_incasso_mensili.params[1].asdate := data_inizio;
            spese_incasso_mensili.params[2].asdate := ven.fieldbyname('data_documento').asdatetime;
            spese_incasso_mensili.close;
            spese_incasso_mensili.open;
            if (spese_incasso_mensili.eof) or
              (spese_incasso_mensili.fieldbyname('progressivo').asfloat = progressivo) then
            begin
              spese_incasso := true;
            end;
          end
          else
          begin
            spese_incasso := false;
          end;
        end;

        if spese_incasso then
        begin
          calcola_spese_incasso(progressivo, tipo_documento);
        end;
      end
      else
      begin
        calcola_spese_incasso_manuali(progressivo);
      end;
    end;
  end;

  //  calcolo finale iva
  ven_iva.close;
  ven_iva.open;

  calcola_iva;

  ven.fieldbyname('importo_totale').asfloat := 0;
  ven.fieldbyname('importo_totale_imponibile').asfloat := 0;
  ven.fieldbyname('importo_totale_iva').asfloat := 0;
  ven.fieldbyname('importo_sconto_finale').asfloat := 0;
  ven.fieldbyname('importo_sconto').asfloat := 0;
  ven.fieldbyname('importo_sconto_cassa').asfloat := 0;

  ven.fieldbyname('importo_spese_extra').asfloat := 0;
  ven.fieldbyname('importo_spese_trasporto').asfloat := 0;
  ven.fieldbyname('importo_bollo').asfloat := 0;
  ven.fieldbyname('importo_spese_incasso').asfloat := 0;
  ven.fieldbyname('importo_cassa_professionisti').asfloat := 0;
  ven.fieldbyname('importo_enasarco').asfloat := importo_enasarco;
  ven.fieldbyname('importo_ritenuta').asfloat := importo_ritenuta;

  ven.fieldbyname('importo_merce').asfloat := 0;

  ven.post;
  ven.refresh;
  ven.edit;

  iva_delete.close;
  iva_delete.open;
  while not iva_delete.eof do
  begin
    if iva_delete.recordcount > 1 then
    begin
      if (iva_delete.fieldbyname('importo').asfloat = 0) and
        (iva_delete.fieldbyname('importo_imponibile_trasporto').asfloat = 0) and
        (iva_delete.fieldbyname('importo_sconto').asfloat = 0) and
        (iva_delete.fieldbyname('importo_sconto_cassa').asfloat = 0) and
        (iva_delete.fieldbyname('importo_sconto_percentuale').asfloat = 0) and
        (iva_delete.fieldbyname('importo_trasporto').asfloat = 0) and
        (iva_delete.fieldbyname('importo_bollo').asfloat = 0) and
        (iva_delete.fieldbyname('importo_incasso').asfloat = 0) and
        (iva_delete.fieldbyname('importo_extra').asfloat = 0) and
        (iva_delete.fieldbyname('importo_imponibile').asfloat = 0) and
        (iva_delete.fieldbyname('importo_iva').asfloat = 0) and
        (iva_delete.fieldbyname('importo_iva_rettifica').asfloat = 0) and
        (iva_delete.fieldbyname('importo_cassa_professionisti').asfloat = 0) then
      begin
        iva_delete.delete;
      end
      else
      begin
        iva_delete.next;
      end;
    end
    else
    begin
      iva_delete.next;
    end;
  end;

  //  storno iva per entri pubblici
  totale_iva_pa := 0;
  if (ven.fieldbyname('split_payment').asstring = 'si') and (arc.dit.fieldbyname('tiv_codice_storno_enti_pubblici').asstring <> '') then
  begin
    ven_iva.first;
    while not ven_iva.eof do
    begin
      if ven_iva.fieldbyname('tipo_movimento').asstring <> 'sconto merce' then
      begin
        totale_iva_pa := totale_iva_pa + ven_iva.fieldbyname('importo_iva').asfloat + ven_iva.fieldbyname('importo_iva_rettifica').asfloat;
      end;
      ven_iva.next;
    end;
    if totale_iva_pa <> 0 then
    begin
      ven_iva.append;

      ven_iva.fieldbyname('progressivo').asinteger := progressivo;
      ven_iva.fieldbyname('tiv_codice').asstring := arc.dit.fieldbyname('tiv_codice_storno_enti_pubblici').asstring;
      ven_iva.fieldbyname('tipo_movimento').asstring := 'normale';
      ven_iva.fieldbyname('importo_iva').asfloat := totale_iva_pa * -1;

      ven_iva.post;
    end;
  end;

  (*
    `IMPORTO_EXTRA` DECIMAL(18,6) NULL DEFAULT '0.000000',
    `IMPORTO_IVA_RETTIFICA` DECIMAL(18,6) NULL DEFAULT '0.000000',
  *)

  ven_iva.refresh;
  ven_iva.first;
  while not ven_iva.eof do
  begin
    ven.fieldbyname('importo_cassa_professionisti').asfloat := arrotonda
      (ven.fieldbyname('importo_cassa_professionisti').asfloat + ven_iva.fieldbyname('importo_cassa_professionisti').asfloat);
    ven.fieldbyname('importo_sconto_finale').asfloat := arrotonda
      (ven.fieldbyname('importo_sconto_finale').asfloat + ven_iva.fieldbyname('importo_sconto_percentuale').asfloat);
    ven.fieldbyname('importo_sconto').asfloat := arrotonda
      (ven.fieldbyname('importo_sconto').asfloat + ven_iva.fieldbyname('importo_sconto').asfloat);
    ven.fieldbyname('importo_sconto_cassa').asfloat := arrotonda
      (ven.fieldbyname('importo_sconto_cassa').asfloat + ven_iva.fieldbyname('importo_sconto_cassa').asfloat);
    ven.fieldbyname('importo_spese_extra').asfloat := arrotonda
      (ven.fieldbyname('importo_spese_extra').asfloat + ven_iva.fieldbyname('importo_extra').asfloat);
    ven.fieldbyname('importo_spese_trasporto').asfloat := arrotonda
      (ven.fieldbyname('importo_spese_trasporto').asfloat + ven_iva.fieldbyname('importo_trasporto').asfloat);
    ven.fieldbyname('importo_bollo').asfloat := arrotonda
      (ven.fieldbyname('importo_bollo').asfloat + ven_iva.fieldbyname('importo_bollo').asfloat);
    ven.fieldbyname('importo_spese_incasso').asfloat := arrotonda
      (ven.fieldbyname('importo_spese_incasso').asfloat + ven_iva.fieldbyname('importo_incasso').asfloat);

    if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
    begin
      ven.fieldbyname('importo_totale_imponibile').asfloat := arrotonda
        (ven.fieldbyname('importo_totale_imponibile').asfloat + ven_iva.fieldbyname('importo_imponibile').asfloat);
      ven.fieldbyname('importo_totale_iva').asfloat := arrotonda
        (ven.fieldbyname('importo_totale_iva').asfloat + ven_iva.fieldbyname('importo_iva').asfloat +
        ven_iva.fieldbyname('importo_iva_rettifica').asfloat);
      ven.fieldbyname('importo_totale').asfloat := arrotonda
        (ven.fieldbyname('importo_totale').asfloat + ven_iva.fieldbyname('importo_imponibile').asfloat +
        ven_iva.fieldbyname('importo_iva').asfloat + ven_iva.fieldbyname('importo_iva_rettifica').asfloat);
    end
    else if ven_iva.fieldbyname('tipo_movimento').asstring = 'omaggio' then
    begin
      //  solo iva
      ven.fieldbyname('importo_totale_iva').asfloat := arrotonda
        (ven.fieldbyname('importo_totale_iva').asfloat + ven_iva.fieldbyname('importo_iva').asfloat +
        ven_iva.fieldbyname('importo_iva_rettifica').asfloat);
      ven.fieldbyname('importo_totale').asfloat := arrotonda
        (ven.fieldbyname('importo_totale').asfloat + ven_iva.fieldbyname('importo_iva').asfloat +
        ven_iva.fieldbyname('importo_iva_rettifica').asfloat);
    end
    else if ven_iva.fieldbyname('tipo_movimento').asstring = 'sconto merce' then
    begin
      //  nullo
      ven.fieldbyname('importo_totale_iva').asfloat := arrotonda
        (ven.fieldbyname('importo_totale_iva').asfloat + ven_iva.fieldbyname('importo_iva_rettifica').asfloat);
      ven.fieldbyname('importo_totale').asfloat := arrotonda
        (ven.fieldbyname('importo_totale').asfloat + ven_iva.fieldbyname('importo_iva_rettifica').asfloat);
    end;

    ven_iva.next;
  end;

  ven.fieldbyname('importo_totale_pa').asfloat := ven.fieldbyname('importo_totale').asfloat + totale_iva_pa;

  ven.fieldbyname('modificato').asstring := 'no';
  ven.fieldbyname('importo_totale_euro').asfloat := arrotonda
    (ven.fieldbyname('importo_totale').asfloat / ven.fieldbyname('cambio').asfloat);
  ven.fieldbyname('importo_totale_imponibile_euro').asfloat := arrotonda
    (ven.fieldbyname('importo_totale_imponibile').asfloat / ven.fieldbyname('cambio').asfloat);

  merce.close;
  if ven.fieldbyname('tipo_documento').asstring = 'bolla' then
  begin
    merce.sql.text := stringreplace(merce_sql, 'x1x1', 'bvt', [rfreplaceall]);
    merce.sql.text := stringreplace(merce.sql.text, 'x2x2', 'bvr', [rfreplaceall]);
  end
  else if ven.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
  begin
    merce.sql.text := stringreplace(merce_sql, 'x1x1', 'cvt', [rfreplaceall]);
    merce.sql.text := stringreplace(merce.sql.text, 'x2x2', 'cvr', [rfreplaceall]);
  end
  else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 3) = 'ddt' then
  begin
    merce.sql.text := stringreplace(merce_sql, 'x1x1', 'dvt', [rfreplaceall]);
    merce.sql.text := stringreplace(merce.sql.text, 'x2x2', 'dvr', [rfreplaceall]);
  end
  else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 7) = 'fattura' then
  begin
    merce.sql.text := stringreplace(merce_sql, 'x1x1', 'fvt', [rfreplaceall]);
    merce.sql.text := stringreplace(merce.sql.text, 'x2x2', 'fvr', [rfreplaceall]);
  end
  else if ven.fieldbyname('tipo_documento').asstring = 'nota credito' then
  begin
    merce.sql.text := stringreplace(merce_sql, 'x1x1', 'fvt', [rfreplaceall]);
    merce.sql.text := stringreplace(merce.sql.text, 'x2x2', 'fvr', [rfreplaceall]);
  end
  else if ven.fieldbyname('tipo_documento').asstring = 'ordine' then
  begin
    merce.sql.text := stringreplace(merce_sql, 'x1x1', 'ovt', [rfreplaceall]);
    merce.sql.text := stringreplace(merce.sql.text, 'x2x2', 'ovr', [rfreplaceall]);
  end
  else if copy(ven.fieldbyname('tipo_documento').asstring, 1, 10) = 'preventivo' then
  begin
    merce.sql.text := stringreplace(merce_sql, 'x1x1', 'pvt', [rfreplaceall]);
    merce.sql.text := stringreplace(merce.sql.text, 'x2x2', 'pvr', [rfreplaceall]);
  end;

  merce.parambyname('progressivo').asinteger := ven.fieldbyname('progressivo').asinteger;
  merce.open;
  ven.fieldbyname('importo_merce').asfloat := merce.fieldbyname('importo_merce').asfloat;
  ven.fieldbyname('importo_merce_euro').asfloat := arrotonda
    (ven.fieldbyname('importo_merce').asfloat / ven.fieldbyname('cambio').asfloat);

  if (ven.fieldbyname('split_payment').asstring = 'si') and (arc.dit.fieldbyname('tiv_codice_storno_enti_pubblici').asstring <> '') then
  begin
    ven.fieldbyname('iva_sospensione').asstring := 'no';
  end;

  ven.post;
  ven.refresh;

  //----------------------------------------------------------------------------
  // 08/11/2019 disattivato se totalozza da A31IMPORDV
  //----------------------------------------------------------------------------
  //modifica
  if interattivo then
  begin
    dicint.capienza_tiv_codice(ven);
  end;
  //modifica fine

  if tdo.fieldbyname('analitica').asstring = 'si' then
  begin
    //  spese trasporto
    aggiorna_analitica(arrotonda(ven.fieldbyname('importo_spese_trasporto').asfloat / ven.fieldbyname('cambio').asfloat),
      ven.fieldbyname('importo_spese_trasporto').asfloat, 900001);
    //  spese bollo
    aggiorna_analitica(arrotonda(ven.fieldbyname('importo_bollo').asfloat / ven.fieldbyname('cambio').asfloat),
      ven.fieldbyname('importo_bollo').asfloat, 900002);
    //  spese incasso
    aggiorna_analitica(arrotonda(ven.fieldbyname('importo_spese_incasso').asfloat / ven.fieldbyname('cambio').asfloat),
      ven.fieldbyname('importo_spese_incasso').asfloat, 900003);
    //  spese incasso
    aggiorna_analitica(arrotonda(ven.fieldbyname('importo_spese_extra').asfloat / ven.fieldbyname('cambio').asfloat),
      ven.fieldbyname('importo_spese_extra').asfloat, 900004);
    //  spese sconto cassa
    aggiorna_analitica(arrotonda((ven.fieldbyname('importo_sconto_cassa').asfloat * -1) / ven.fieldbyname('cambio').asfloat),
      ven.fieldbyname('importo_sconto_cassa').asfloat * -1, 900005);
    //  spese sconto finale
    aggiorna_analitica(arrotonda(((ven.fieldbyname('importo_sconto').asfloat + ven.fieldbyname('importo_sconto_finale').asfloat) * -1) / ven.fieldbyname('cambio').asfloat),
      (ven.fieldbyname('importo_sconto').asfloat + ven.fieldbyname('importo_sconto_finale').asfloat) * -1, 900006);
  end;

  if tdo.fieldbyname('importo_minimo').asfloat <> 0 then
  begin
    if (tdo.fieldbyname('importo_minimo_iva_inclusa').asstring = 'si') and
      (ven.fieldbyname('importo_totale_euro').asfloat < tdo.fieldbyname('importo_minimo').asfloat) then
    begin
      messaggio(200, 'il totale del documento [' + ven.fieldbyname('importo_totale_euro').asstring + '] è inferiore ' + #13 +
        'all''importo definito per il documento [' + tdo.fieldbyname('importo_minimo').asstring + ']');
    end
    else if (tdo.fieldbyname('importo_minimo_iva_inclusa').asstring = 'no') and
      (ven.fieldbyname('importo_totale_imponibile_euro').asfloat < tdo.fieldbyname('importo_minimo').asfloat) then
    begin
      messaggio(200, 'il totale imponibile del documento [' + ven.fieldbyname('importo_totale_imponibile_euro').asstring + '] è inferiore ' + #13 +
        'all''importo definito per il documento [' + tdo.fieldbyname('importo_minimo').asstring + ']');
    end;
  end;
end;

procedure TTOTVEN.aggiorna_analitica(importo, importo_valuta: double; tipo: integer);
var
  gen_codice, descrizione: string;
begin
  if tipo = 900001 then
  begin
    gen_codice := ven.fieldbyname('gen_codice_trasporto').asstring;
    descrizione := 'Spese trasporto';
  end
  else if tipo = 900002 then
  begin
    gen_codice := ven.fieldbyname('gen_codice_bollo').asstring;
    descrizione := 'Spese bollo';
  end
  else if tipo = 900003 then
  begin
    gen_codice := ven.fieldbyname('gen_codice_incasso').asstring;
    descrizione := 'Spese incasso';
  end
  else if tipo = 900004 then
  begin
    gen_codice := ven.fieldbyname('gen_codice_spese_extra').asstring;
    descrizione := 'Spese extra';
  end
  else if tipo = 900005 then
  begin
    gen_codice := ven.fieldbyname('gen_codice_sconto_cassa').asstring;
    descrizione := 'Sconto cassa';
  end
  else if tipo = 900006 then
  begin
    gen_codice := ven.fieldbyname('gen_codice_sconti_fattura').asstring;
    descrizione := 'Sconti finali';
  end;

  cem_esiste.close;
  cem_esiste.parambyname('documento_origine').asstring := ven.fieldbyname('tipo_documento').asstring + ' ven';
  cem_esiste.parambyname('doc_progressivo_origine').asinteger := ven.fieldbyname('progressivo').asinteger;
  cem_esiste.parambyname('doc_riga_origine').asinteger := tipo;
  cem_esiste.open;
  if not cem_esiste.isempty then
  begin
    if importo = 0 then
    begin
      cem_esiste.delete;
    end
    else
    begin
      cem_esiste.edit;

      if ven.fieldbyname('cen_codice').asstring <> '' then
      begin
        cem_esiste.fieldbyname('cen_codice').asstring := ven.fieldbyname('cen_codice').asstring;
      end;
      cem_esiste.fieldbyname('data_registrazione').asdatetime := ven.fieldbyname('data_documento').asdatetime;
      cem_esiste.fieldbyname('data_documento').asdatetime := ven.fieldbyname('data_documento').asdatetime;
      cem_esiste.fieldbyname('serie_documento').asstring := ven.fieldbyname('serie_documento').asstring;
      cem_esiste.fieldbyname('numero_documento').asfloat := ven.fieldbyname('numero_documento').asfloat;
      cem_esiste.fieldbyname('importo_avere_euro').asfloat := arrotonda(importo / ven.fieldbyname('cambio').asfloat);
      cem_esiste.fieldbyname('importo_avere').asfloat := arrotonda(importo_valuta);
      if tdo.fieldbyname('segno_registro_iva').asstring = 'decrementa' then
      begin
        cem_esiste.fieldbyname('importo_avere_euro').asfloat := cem_esiste.fieldbyname('importo_avere_euro').asfloat * -1;
        cem_esiste.fieldbyname('importo_avere').asfloat := cem_esiste.fieldbyname('importo_avere').asfloat * -1;
      end;
      cem_esiste.fieldbyname('cfg_codice').asstring := ven.fieldbyname('cli_codice').asstring;
      cem_esiste.fieldbyname('tvc_codice').asstring := ven.fieldbyname('tvc_codice').asstring;

      cem_esiste.post;
    end;
  end
  else
  begin
    if importo <> 0 then
    begin
      if tdo.fieldbyname('segno_registro_iva').asstring = 'decrementa' then
      begin
        importo := importo * -1;
        importo_valuta := importo_valuta * -1;
      end;

      esegui_carcem(vararrayof([ven.fieldbyname('tipo_documento').asstring + ' ven', ven.fieldbyname('progressivo').asinteger, tipo]),
        ven.fieldbyname('data_documento').asdatetime, gen_codice, '', 'C',
        ven.fieldbyname('cli_codice').asstring, descrizione, esercizio, ven.fieldbyname('cen_codice').asstring,
        ven.fieldbyname('tvc_codice').asstring, ven.fieldbyname('numero_documento').asfloat, ven.fieldbyname('serie_documento').asstring,
        ven.fieldbyname('data_documento').asdatetime, 0, importo, false, false, 0, importo_valuta, ven.fieldbyname('cambio').asfloat);
    end;
  end;
end;

procedure TTOTVEN.calcola_spese_extra(progressivo: double);
var
  importo_extra_assegnato, importo_imponibile_spese_extra: double;
begin
  if ((ven.fieldbyname('tipo_documento').asstring = 'preventivo nominativi') and (arc.dit.fieldbyname('addebito_imballo').asstring = 'si')) or
    (cli.fieldbyname('addebito_imballo').asstring = 'si') then
  begin
    tabadd.parambyname('tab_codice').asstring := ven.fieldbyname('tab_codice').asstring;
    tabadd.parambyname('tva_codice').asstring := ven.fieldbyname('tva_codice').asstring;
    tabadd.parambyname('data').asdatetime := ven.fieldbyname('data_documento').asdatetime;
    tabadd.open;
    if not tabadd.isempty then
    begin
      importo_imponibile_spese_extra := 0;
      ven_iva.first;
      while not ven_iva.eof do
      begin
        importo_imponibile_spese_extra := importo_imponibile_spese_extra + ven_iva.fieldbyname('importo').asfloat;
        ven_iva.next;
      end;

      if tabadd.fieldbyname('importo_percentuale').asfloat <> 0 then
      begin
        ven.fieldbyname('importo_spese_extra').asfloat := arrotonda
          (importo_imponibile_spese_extra * tabadd.fieldbyname('importo_percentuale').asfloat / 100);
      end;
      if tabadd.fieldbyname('importo_assoluto').asfloat <> 0 then
      begin
        if tabadd.fieldbyname('tipo_addebito').asstring = 'globale' then
        begin
          ven.fieldbyname('importo_spese_extra').asfloat := ven.fieldbyname('importo_spese_extra').asfloat +
            tabadd.fieldbyname('importo_assoluto').asfloat;
        end
        else if tabadd.fieldbyname('tipo_addebito').asstring = 'colli' then
        begin
          ven.fieldbyname('importo_spese_extra').asfloat := ven.fieldbyname('importo_spese_extra').asfloat +
            tabadd.fieldbyname('importo_assoluto').asfloat * ven.fieldbyname('numero_colli').asinteger;
        end
        else if tabadd.fieldbyname('tipo_addebito').asstring = 'confezioni' then
        begin
          ven.fieldbyname('importo_spese_extra').asfloat := ven.fieldbyname('importo_spese_extra').asfloat +
            tabadd.fieldbyname('importo_assoluto').asfloat * ven.fieldbyname('numero_confezioni').asinteger;
        end;
      end;
    end;
  end;

  if ven.fieldbyname('importo_spese_extra').asfloat <> 0 then
  begin
    if arc.dit.fieldbyname('ripartizione_spese_extra').asstring = 'no' then
    begin
      ven_iva_codice.close;
      ven_iva_codice.params[0].asfloat := progressivo;
      ven_iva_codice.params[1].asstring := ven.fieldbyname('tiv_codice_spese_extra').asstring;
      ven_iva_codice.params[2].asstring := 'normale';
      ven_iva_codice.open;
      if ven_iva_codice.eof then
      begin
        ven_iva_codice.append;

        ven_iva_codice.fieldbyname('progressivo').asfloat := progressivo;
        ven_iva_codice.fieldbyname('tiv_codice').asstring := ven.fieldbyname('tiv_codice_spese_extra').asstring;
        ven_iva_codice.fieldbyname('tipo_movimento').asstring := 'normale';

        ven_iva_codice.post;
        ven_iva_codice.refresh;
      end;

      ven_iva_codice.edit;

      ven_iva_codice.fieldbyname('importo_extra').asfloat := arrotonda
        (ven_iva_codice.fieldbyname('importo_extra').asfloat + ven.fieldbyname('importo_spese_extra').asfloat);

      ven_iva_codice.post;
    end
    else
    begin
      //  calcola spese extra in proporzione ad ogni aliquota
      importo_extra_assegnato := 0;
      importo_extra := ven.fieldbyname('importo_spese_extra').asfloat;
      ven_iva.first;
      while not ven_iva.eof do
      begin
        tiv.close;
        tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
        tiv.open;
        if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
        begin
          if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
          begin
            ven_iva.edit;

            if totale <> 0 then
            begin
              ven_iva.fieldbyname('importo_extra').asfloat := arrotonda
                (importo_extra * (ven_iva.fieldbyname('importo').asfloat -
                ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
                ven_iva.fieldbyname('importo_sconto').asfloat -
                ven_iva.fieldbyname('importo_sconto_cassa').asfloat) / totale);
            end;

            //  totalizza per aliquota per quadratura
            importo_extra_assegnato := arrotonda(importo_extra_assegnato + ven_iva.fieldbyname('importo_extra').asfloat);

            ven_iva.post;
          end;
        end;

        ven_iva.next;
      end;
      if arrotonda(importo_extra) <> arrotonda(importo_extra_assegnato) then
      begin
        assegnato := false;
        ven_iva.first;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            tiv.close;
            tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
            tiv.open;
            if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
            begin
              if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
              begin
                ven_iva.edit;
                ven_iva.fieldbyname('importo_extra').asfloat := arrotonda
                  (ven_iva.fieldbyname('importo_extra').asfloat + importo_extra - importo_extra_assegnato);
                ven_iva.post;
                assegnato := true;
              end;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;
  end;
end;

procedure TTOTVEN.calcola_spese_bollo_manuali(progressivo: double);
begin
  if ven.fieldbyname('importo_bollo').asfloat <> 0 then
  begin
    ven_iva_codice.params[0].asfloat := progressivo;
    ven_iva_codice.params[1].asstring := ven.fieldbyname('tiv_codice_spese_bollo').asstring;
    ven_iva_codice.params[2].asstring := 'normale';

    ven_iva_codice.close;
    ven_iva_codice.open;
    if ven_iva_codice.eof then
    begin
      ven_iva_codice.append;

      ven_iva_codice.fieldbyname('progressivo').asfloat := progressivo;
      ven_iva_codice.fieldbyname('tiv_codice').asstring := ven.fieldbyname('tiv_codice_spese_bollo').asstring;
      ven_iva_codice.fieldbyname('tipo_movimento').asstring := 'normale';

      ven_iva_codice.post;
      ven_iva_codice.refresh;
    end;

    ven_iva_codice.edit;

    ven_iva_codice.fieldbyname('importo_bollo').asfloat := arrotonda
      (ven_iva_codice.fieldbyname('importo_bollo').asfloat + ven.fieldbyname('importo_bollo').asfloat);

    ven_iva_codice.post;
  end;
end;

procedure TTOTVEN.calcola_spese_trasporto_manuali(progressivo: double);
begin
  if ven.fieldbyname('importo_spese_trasporto').asfloat <> 0 then
  begin
    totale := 0;
    importo_trasporto := ven.fieldbyname('importo_spese_trasporto').asfloat;
    importo_trasporto_assegnato := 0;

    //  calcola totale per ripartizione spese trasporto

    ven_iva.first;
    while not ven_iva.eof do
    begin
      tiv.close;
      tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
      tiv.open;
      if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
      begin
        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          totale := arrotonda(totale + ven_iva.fieldbyname('importo').asfloat -
            ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
            ven_iva.fieldbyname('importo_sconto').asfloat -
            ven_iva.fieldbyname('importo_sconto_cassa').asfloat);
        end;
      end;
      ven_iva.next;
    end;

    //  calcola spese trasporto in proporzione ad ogni aliquota
    ven_iva.first;
    while not ven_iva.eof do
    begin
      tiv.close;
      tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
      tiv.open;
      if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
      begin
        if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
        begin
          ven_iva.edit;

          if totale <> 0 then
          begin
            ven_iva.fieldbyname('importo_trasporto').asfloat := arrotonda
              (importo_trasporto * (ven_iva.fieldbyname('importo').asfloat -
              ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
              ven_iva.fieldbyname('importo_sconto').asfloat -
              ven_iva.fieldbyname('importo_sconto_cassa').asfloat) / totale);
          end;

          //  totalizza sconto per aliquota per quadratura

          importo_trasporto_assegnato := arrotonda(importo_trasporto_assegnato + ven_iva.fieldbyname('importo_trasporto').asfloat);

          ven_iva.post;
        end;
      end;

      ven_iva.next;
    end;
    if arrotonda(importo_trasporto) <> arrotonda(importo_trasporto_assegnato) then
    begin
      assegnato := false;
      ven_iva.first;
      while not ven_iva.eof do
      begin
        if not assegnato then
        begin
          tiv.close;
          tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
          tiv.open;
          if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
          begin
            if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
            begin
              ven_iva.edit;
              ven_iva.fieldbyname('importo_trasporto').asfloat := arrotonda
                (ven_iva.fieldbyname('importo_trasporto').asfloat + importo_trasporto - importo_trasporto_assegnato);
              ven_iva.post;
              assegnato := true;
            end;
          end;
        end;
        ven_iva.next;
      end;
      if not assegnato then
      begin
        ven_iva.edit;
        ven_iva.fieldbyname('importo_trasporto').asfloat := arrotonda
          (ven_iva.fieldbyname('importo_trasporto').asfloat + importo_trasporto - importo_trasporto_assegnato);
        ven_iva.post;
      end;
    end;
  end;
end;

procedure TTOTVEN.calcola_spese_incasso_manuali(progressivo: double);
var
  importo_incasso_assegnato: double;
begin
  if ven.fieldbyname('importo_spese_incasso').asfloat <> 0 then
  begin
    if arc.dit.fieldbyname('ripartizione_spese_incasso').asstring = 'no' then
    begin
      ven_iva_codice.params[0].asfloat := progressivo;
      ven_iva_codice.params[1].asstring := ven.fieldbyname('tiv_codice_spese_incasso').asstring;
      ven_iva_codice.params[2].asstring := 'normale';

      ven_iva_codice.close;
      ven_iva_codice.open;
      if ven_iva_codice.eof then
      begin
        ven_iva_codice.append;

        ven_iva_codice.fieldbyname('progressivo').asfloat := progressivo;
        ven_iva_codice.fieldbyname('tiv_codice').asstring := ven.fieldbyname('tiv_codice_spese_incasso').asstring;
        ven_iva_codice.fieldbyname('tipo_movimento').asstring := 'normale';

        ven_iva_codice.post;
        ven_iva_codice.refresh;
      end;

      ven_iva_codice.edit;

      ven_iva_codice.fieldbyname('importo_incasso').asfloat := arrotonda
        (ven_iva_codice.fieldbyname('importo_incasso').asfloat + ven.fieldbyname('importo_spese_incasso').asfloat);

      ven_iva_codice.post;
    end
    else
    begin
      //  calcola spese incasso in proporzione ad ogni aliquota
      importo_incasso_assegnato := 0;
      importo_incasso := ven.fieldbyname('importo_spese_incasso').asfloat;
      ven_iva.first;
      while not ven_iva.eof do
      begin
        tiv.close;
        tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
        tiv.open;
        if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
        begin
          if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
          begin
            ven_iva.edit;

            if totale <> 0 then
            begin
              ven_iva.fieldbyname('importo_incasso').asfloat := arrotonda
                (importo_incasso * (ven_iva.fieldbyname('importo').asfloat -
                ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
                ven_iva.fieldbyname('importo_sconto').asfloat -
                ven_iva.fieldbyname('importo_sconto_cassa').asfloat) / totale);
            end;

            //  totalizza per aliquota per quadratura
            importo_incasso_assegnato := arrotonda(importo_incasso_assegnato + ven_iva.fieldbyname('importo_incasso').asfloat);

            ven_iva.post;
          end;
        end;

        ven_iva.next;
      end;
      if arrotonda(importo_incasso) <> arrotonda(importo_incasso_assegnato) then
      begin
        assegnato := false;
        ven_iva.first;
        while not ven_iva.eof do
        begin
          if not assegnato then
          begin
            tiv.close;
            tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
            tiv.open;
            if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
            begin
              if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
              begin
                ven_iva.edit;
                ven_iva.fieldbyname('importo_incasso').asfloat := arrotonda
                  (ven_iva.fieldbyname('importo_incasso').asfloat + importo_incasso - importo_incasso_assegnato);
                ven_iva.post;
                assegnato := true;
              end;
            end;
          end;
          ven_iva.next;
        end;
      end;
    end;
  end;
end;

procedure TTOTVEN.calcola_spese_bollo(progressivo: double);
begin
  flag_bollo := false;
  imponibile_bollo := 0;
  importo_bollo := 0;
  ven_iva.first;
  while not ven_iva.eof do
  begin
    tiv.params[0].asstring := ven_iva.fieldbyname('tiv_codice').asstring;
    tiv.close;
    tiv.open;
    if tiv.fieldbyname('bollo').asstring = 'si' then
    begin
      flag_bollo := true;
      if ven.fieldbyname('listino_con_iva').asstring = 'no' then
      begin
        imponibile_bollo := arrotonda(imponibile_bollo +
          ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
          ven_iva.fieldbyname('importo_sconto').asfloat - ven_iva.fieldbyname('importo_sconto_cassa').asfloat +
          ven_iva.fieldbyname('importo_cassa_professionisti').asfloat);
      end
      else
      begin
        imponibile_bollo := imponibile_bollo +
          arc.scorporo(ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
          ven_iva.fieldbyname('importo_sconto').asfloat - ven_iva.fieldbyname('importo_sconto_cassa').asfloat +
          ven_iva.fieldbyname('importo_cassa_professionisti').asfloat, tiv.fieldbyname('percentuale').asfloat);
      end;
    end;
    ven_iva.next;
  end;
  if flag_bollo then
  begin
    tbo.params[0].asstring := ven.fieldbyname('tva_codice').asstring;
    tbo.params[1].asdate := ven.fieldbyname('data_documento').asdatetime;
    tbo.params[2].asdate := ven.fieldbyname('data_documento').asdatetime;
    tbo.close;
    tbo.open;
    if not tbo.eof then
    begin
      if imponibile_bollo > tbo.fieldbyname('importo_minimo').asfloat then
      begin
        importo_bollo := tbo.fieldbyname('importo_addebito').asfloat;
      end
      else
      begin
        importo_bollo := 0;
      end;
    end
    else
    begin
      importo_bollo := 0;
    end;
  end;
  if importo_bollo <> 0 then
  begin
    if ven.fieldbyname('listino_con_iva').asstring = 'si' then
    begin
      tiv.params[0].asstring := ven.fieldbyname('tiv_codice_spese_bollo').asstring;
      tiv.close;
      tiv.open;
      importo_bollo := arrotonda(importo_bollo * (1 + tiv.fieldbyname('percentuale').asfloat / 100));
    end;
    ven_iva_codice.params[0].asfloat := progressivo;
    ven_iva_codice.params[1].asstring := ven.fieldbyname('tiv_codice_spese_bollo').asstring;
    ven_iva_codice.params[2].asstring := 'normale';

    ven_iva_codice.close;
    ven_iva_codice.open;
    if ven_iva_codice.eof then
    begin
      ven_iva_codice.append;

      ven_iva_codice.fieldbyname('progressivo').asfloat := progressivo;
      ven_iva_codice.fieldbyname('tiv_codice').asstring := ven.fieldbyname('tiv_codice_spese_bollo').asstring;
      ven_iva_codice.fieldbyname('tipo_movimento').asstring := 'normale';

      ven_iva_codice.post;
      ven_iva_codice.refresh;
    end;

    ven_iva_codice.edit;

    if ven.fieldbyname('tipo_documento').asstring = 'nota credito' then
    begin
      ven_iva_codice.fieldbyname('importo_bollo').asfloat := arrotonda
        (ven_iva_codice.fieldbyname('importo_bollo').asfloat - importo_bollo);
    end
    else
    begin
      ven_iva_codice.fieldbyname('importo_bollo').asfloat := arrotonda
        (ven_iva_codice.fieldbyname('importo_bollo').asfloat + importo_bollo);
    end;

    ven_iva_codice.post;
    ven_iva_codice.close;
    ven_iva_codice.open;
  end;
end;

procedure TTOTVEN.calcola_spese_incasso(progressivo: double; tipo_documento: string);
var
  i: word;
  importo_incasso_assegnato: double;
begin
  tpa.close;
  tpa.params[0].asstring := ven.fieldbyname('tpa_codice').asstring;
  tpa.open;
  if tpa.fieldbyname('addebito_spese').asstring = 'si' then
  begin
    //  calcola totale documento e totale iva
    totale_documento := 0;
    totale_iva := 0;
    importo_incasso := 0;

    calcola_iva;

    ven_iva.first;
    while not ven_iva.eof do
    begin
      totale_documento := arrotonda(totale_documento +
        ven_iva.fieldbyname('importo_imponibile').asfloat + ven_iva.fieldbyname('importo_iva').asfloat);
      totale_iva := arrotonda(totale_iva + ven_iva.fieldbyname('importo_iva').asfloat);

      ven_iva.next;
    end;

    //  leva la ritenuta d'acconto
    totale_documento := arrotonda(totale_documento - importo_enasarco - importo_ritenuta);

    //  calcola le rate e le spese per le scadenze soggette
    numero_rate := tpa.fieldbyname('numero_rate').asinteger;
    pagamenti.close;
    if tipo_documento = 'bolla' then
    begin
      pagamenti.sql.text := stringreplace(pagamenti.sql.text, 'x1x1', 'bvp', []);
    end
    else if tipo_documento = 'corrispettivo' then
    begin
      pagamenti.sql.text := stringreplace(pagamenti.sql.text, 'x1x1', 'cvp', []);
    end
    else if copy(tipo_documento, 1, 3) = 'ddt' then
    begin
      pagamenti.sql.text := stringreplace(pagamenti.sql.text, 'x1x1', 'dvp', []);
    end
    else if (copy(tipo_documento, 1, 7) = 'fattura') or (tipo_documento = 'nota credito') then
    begin
      pagamenti.sql.text := stringreplace(pagamenti.sql.text, 'x1x1', 'fvp', []);
    end
    else if tipo_documento = 'ordine' then
    begin
      pagamenti.sql.text := stringreplace(pagamenti.sql.text, 'x1x1', 'ovp', []);
    end
    else if copy(tipo_documento, 1, 10) = 'preventivo' then
    begin
      pagamenti.sql.text := stringreplace(pagamenti.sql.text, 'x1x1', 'pvp', []);
    end;
    read_tabella(pagamenti, progressivo);
    if not pagamenti.isempty then
    begin
      numero_rate := pagamenti.recordcount;
    end;
    setlength(tabella_scadenze, numero_rate);
    calsca.calsca('C', ven.fieldbyname('cli_codice').asstring, ven.fieldbyname('tva_codice').asstring,
      ven.fieldbyname('tpa_codice').asstring, totale_documento, 0, totale_iva, 0,
      ven.fieldbyname('data_documento').asdatetime, tabella_scadenze, pagamenti);

    for i := 0 to numero_rate - 1 do
    begin
      tsi.params[0].asstring := tabella_scadenze[i].tipo_pagamento;
      tsi.params[1].asstring := ven.fieldbyname('tva_codice').asstring;
      tsi.params[2].asdate := ven.fieldbyname('data_documento').asdatetime;
      tsi.params[3].asdate := ven.fieldbyname('data_documento').asdatetime;
      tsi.close;
      tsi.open;
      if not tsi.eof then
      begin
        if tabella_scadenze[i].importo_scadenza <> 0 then
        begin
          importo_incasso := arrotonda(importo_incasso + tsi.fieldbyname('importo_assoluto').asfloat +
            (tabella_scadenze[i].importo_scadenza * tsi.fieldbyname('importo_percentuale').asfloat / 100));
        end;
      end;
    end;
    if importo_incasso <> 0 then
    begin
      if ven.fieldbyname('listino_con_iva').asstring = 'si' then
      begin
        tiv.params[0].asstring := ven.fieldbyname('tiv_codice_spese_incasso').asstring;
        tiv.close;
        tiv.open;
        importo_incasso := arrotonda(importo_incasso * (1 + tiv.fieldbyname('percentuale').asfloat / 100));
      end;
      ven_iva_codice.params[0].asfloat := progressivo;
      ven_iva_codice.params[1].asstring := ven.fieldbyname('tiv_codice_spese_incasso').asstring;
      ven_iva_codice.params[2].asstring := 'normale';

      if arc.dit.fieldbyname('ripartizione_spese_incasso').asstring = 'no' then
      begin
        ven_iva_codice.close;
        ven_iva_codice.open;
        if ven_iva_codice.eof then
        begin
          ven_iva_codice.append;

          ven_iva_codice.fieldbyname('progressivo').asfloat := progressivo;
          ven_iva_codice.fieldbyname('tiv_codice').asstring := ven.fieldbyname('tiv_codice_spese_incasso').asstring;
          ven_iva_codice.fieldbyname('tipo_movimento').asstring := 'normale';

          ven_iva_codice.post;
          ven_iva_codice.refresh;
        end;
        ven_iva_codice.edit;

        ven_iva_codice.fieldbyname('importo_incasso').asfloat := arrotonda(ven_iva_codice.fieldbyname('importo_incasso').asfloat +
          importo_incasso);

        ven_iva_codice.post;
      end
      else
      begin
        //  calcola spese incasso in proporzione ad ogni aliquota
        importo_incasso_assegnato := 0;
        ven_iva.first;
        while not ven_iva.eof do
        begin
          tiv.close;
          tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
          tiv.open;
          if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
          begin
            if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
            begin
              ven_iva.edit;

              if totale <> 0 then
              begin
                ven_iva.fieldbyname('importo_incasso').asfloat := arrotonda
                  (importo_incasso * (ven_iva.fieldbyname('importo').asfloat -
                  ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
                  ven_iva.fieldbyname('importo_sconto').asfloat -
                  ven_iva.fieldbyname('importo_sconto_cassa').asfloat) / totale);
              end;

              //  totalizza per aliquota per quadratura
              importo_incasso_assegnato := arrotonda(importo_incasso_assegnato + ven_iva.fieldbyname('importo_incasso').asfloat);

              ven_iva.post;
            end;
          end;

          ven_iva.next;
        end;
        if arrotonda(importo_incasso) <> arrotonda(importo_incasso_assegnato) then
        begin
          assegnato := false;
          ven_iva.first;
          while not ven_iva.eof do
          begin
            if not assegnato then
            begin
              tiv.close;
              tiv.parambyname('codice').asstring := ven_iva.fieldbyname('tiv_codice').asstring;
              tiv.open;
              if tiv.fieldbyname('tipo').asstring <> 'fuori campo' then
              begin
                if ven_iva.fieldbyname('tipo_movimento').asstring = 'normale' then
                begin
                  ven_iva.edit;
                  ven_iva.fieldbyname('importo_incasso').asfloat := arrotonda
                    (ven_iva.fieldbyname('importo_incasso').asfloat + importo_incasso - importo_incasso_assegnato);
                  ven_iva.post;
                  assegnato := true;
                end;
              end;
            end;
            ven_iva.next;
          end;
        end;
      end;
    end;
  end;
end;

procedure TTOTVEN.calcola_iva;
begin
  ven_iva.first;
  while not ven_iva.eof do
  begin
    tiv.close;
    tiv.params[0].asstring := ven_iva.fieldbyname('tiv_codice').asstring;
    tiv.open;
    if not tiv.eof then
    begin
      ven_iva.edit;

      if ven.fieldbyname('listino_con_iva').asstring = 'no' then
      begin
        ven_iva.fieldbyname('importo_imponibile').AsFloat := arrotonda
          (ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
          ven_iva.fieldbyname('importo_sconto').asfloat - ven_iva.fieldbyname('importo_sconto_cassa').asfloat +
          ven_iva.fieldbyname('importo_cassa_professionisti').asfloat + ven_iva.fieldbyname('importo_extra').asfloat +
          ven_iva.fieldbyname('importo_trasporto').asfloat + ven_iva.fieldbyname('importo_bollo').asfloat +
          ven_iva.fieldbyname('importo_incasso').asfloat);
        ven_iva.fieldbyname('importo_iva').AsFloat := arrotonda
          (ven_iva.fieldbyname('importo_imponibile').asfloat * tiv.fieldbyname('percentuale').asfloat / 100);
      end
      else
      begin
        ven_iva.fieldbyname('importo_imponibile').asfloat := arc.scorporo
          (ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
          ven_iva.fieldbyname('importo_sconto').asfloat - ven_iva.fieldbyname('importo_sconto_cassa').asfloat +
          ven_iva.fieldbyname('importo_cassa_professionisti').asfloat + ven_iva.fieldbyname('importo_extra').asfloat +
          ven_iva.fieldbyname('importo_trasporto').asfloat + ven_iva.fieldbyname('importo_bollo').asfloat +
          ven_iva.fieldbyname('importo_incasso').asfloat, tiv.fieldbyname('percentuale').asfloat);
        ven_iva.fieldbyname('importo_iva').asfloat := arrotonda
          (ven_iva.fieldbyname('importo').asfloat - ven_iva.fieldbyname('importo_sconto_percentuale').asfloat -
          ven_iva.fieldbyname('importo_sconto').asfloat - ven_iva.fieldbyname('importo_sconto_cassa').asfloat +
          ven_iva.fieldbyname('importo_cassa_professionisti').asfloat + ven_iva.fieldbyname('importo_extra').asfloat +
          ven_iva.fieldbyname('importo_trasporto').asfloat + ven_iva.fieldbyname('importo_bollo').asfloat +
          ven_iva.fieldbyname('importo_incasso').asfloat) - (ven_iva.fieldbyname('importo_imponibile').AsFloat);
      end;

      ven_iva.post;
    end;

    ven_iva.next;
  end;
end;

end.
