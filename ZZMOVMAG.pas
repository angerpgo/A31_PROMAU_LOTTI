unit ZZMOVMAG;

interface

uses controls, sysutils, query_go, MyAccess, dialogs, math, Variants;

type

  TMOVMAG = class
  protected
    mmt, mmt_mmr, mmr, tmo, art, ltm, ltm_insert: tmyquery_go;

    movmag_codice_ditta: string;

    movmag_progressivo_mmt, movmag_riga_mmr: integer;

    //  variabili testata mmt
    movmag_tmo_codice: string;
    movmag_tma_codice: string;
    movmag_tmo_codice_collegato: string;
    movmag_tma_codice_collegato: string;
    movmag_data_registrazione: tdate;
    movmag_numero_documento: double;
    movmag_serie_documento: string;
    movmag_data_documento: tdate;
    movmag_cfg_tipo: string;
    movmag_cfg_codice: string;
    movmag_ese_codice: string;
    movmag_tva_codice: string;
    movmag_cambio: double;
    movmag_tipo_documento: string;
    movmag_documento_origine: string;
    movmag_doc_progressivo_origine: integer;
    movmag_progressivo_collegato: integer;
    movmag_descrizione: string;
    movmag_opt_progressivo: integer;
    movmag_olt_progressivo: integer;
    movmag_progressivo_collegato_dsb: integer;
    movmag_doc_riga_origine: integer;
    movmag_doc_riga_dettaglio_origine: integer;
    movmag_doc_riga_dettaglio_ult_origine: integer;
    movmag_cms_codice: string;
    movmag_tipologia: string;
    movmag_esportato_negozio: string;

    //  variabili riga mmr
    movmag_progressivo: integer;
    movmag_riga: integer;
    movmag_art_codice: string;
    movmag_quantita: double;
    movmag_prezzo: double;
    movmag_tsm_codice: string;
    movmag_importo: double;
    movmag_importo_euro: double;
    movmag_tipo_movimento: string;
    movmag_importo_spese: double;
    movmag_importo_spese_euro: double;
    movmag_tma_codice_mmr: string;
    movmag_descrizione_mmr: string;
    movmag_tsm_codice_art: string;
    movmag_opt_tipo_articolo: string;
    movmag_olt_tipo_articolo: string;
    movmag_importo_sconto: double;
    movmag_mmr_doc_riga_origine: integer;
    movmag_cms_codice_righe: string;
    movmag_tipologia_righe: string;
    movmag_punto_vendita: string;
    movmag_id_origine_riga: integer;

    procedure esegui_commesse(mmt, mmr: tmyquery_go);
    procedure esegui_lotti(mmt, mmr: tmyquery_go; progressivo_lotti: integer);
  public
    constructor create(arcdit: TMyConnection_go; codice_ditta: string = '');
    destructor Destroy; override;

    property progressivo_mmt: integer read movmag_progressivo_mmt;
    property riga_mmr: integer read movmag_riga_mmr write movmag_riga_mmr;

    property tmo_codice: string read movmag_tmo_codice write movmag_tmo_codice;
    property tma_codice: string read movmag_tma_codice write movmag_tma_codice;
    property tmo_codice_collegato: string read movmag_tmo_codice_collegato write movmag_tmo_codice_collegato;
    property tma_codice_collegato: string read movmag_tma_codice_collegato write movmag_tma_codice_collegato;
    property data_registrazione: tdate read movmag_data_registrazione write movmag_data_registrazione;
    property numero_documento: double read movmag_numero_documento write movmag_numero_documento;
    property serie_documento: string read movmag_serie_documento write movmag_serie_documento;
    property data_documento: tdate read movmag_data_documento write movmag_data_documento;
    property cfg_tipo: string read movmag_cfg_tipo write movmag_cfg_tipo;
    property cfg_codice: string read movmag_cfg_codice write movmag_cfg_codice;
    property ese_codice: string read movmag_ese_codice write movmag_ese_codice;
    property tva_codice: string read movmag_tva_codice write movmag_tva_codice;
    property cambio: double read movmag_cambio write movmag_cambio;
    property tipo_documento: string read movmag_tipo_documento write movmag_tipo_documento;
    property documento_origine: string read movmag_documento_origine write movmag_documento_origine;
    property doc_progressivo_origine: integer read movmag_doc_progressivo_origine write movmag_doc_progressivo_origine;
    property progressivo_collegato: integer read movmag_progressivo_collegato write movmag_progressivo_collegato;
    property descrizione: string read movmag_descrizione write movmag_descrizione;
    property opt_progressivo: integer read movmag_opt_progressivo write movmag_opt_progressivo;
    property olt_progressivo: integer read movmag_olt_progressivo write movmag_olt_progressivo;
    property progressivo_collegato_dsb: integer read movmag_progressivo_collegato_dsb write movmag_progressivo_collegato_dsb;
    property doc_riga_origine: integer read movmag_doc_riga_origine write movmag_doc_riga_origine;
    property doc_riga_dettaglio_origine: integer read movmag_doc_riga_dettaglio_origine write movmag_doc_riga_dettaglio_origine;
    property doc_riga_dettaglio_ult_origine: integer read movmag_doc_riga_dettaglio_ult_origine write movmag_doc_riga_dettaglio_ult_origine;
    property cms_codice: string read movmag_cms_codice write movmag_cms_codice;
    property tipologia: string read movmag_tipologia write movmag_tipologia;
    property esportato_negozio: string read movmag_esportato_negozio write movmag_esportato_negozio;

    property progressivo: integer read movmag_progressivo write movmag_progressivo;
    property riga: integer read movmag_riga write movmag_riga;
    property art_codice: string read movmag_art_codice write movmag_art_codice;
    property quantita: double read movmag_quantita write movmag_quantita;
    property prezzo: double read movmag_prezzo write movmag_prezzo;
    property tsm_codice: string read movmag_tsm_codice write movmag_tsm_codice;
    property importo: double read movmag_importo write movmag_importo;
    property importo_euro: double read movmag_importo_euro write movmag_importo_euro;
    property tipo_movimento: string read movmag_tipo_movimento write movmag_tipo_movimento;
    property importo_spese: double read movmag_importo_spese write movmag_importo_spese;
    property importo_spese_euro: double read movmag_importo_spese_euro write movmag_importo_spese_euro;
    property tma_codice_mmr: string read movmag_tma_codice_mmr write movmag_tma_codice_mmr;
    property tsm_codice_art: string read movmag_tsm_codice_art write movmag_tsm_codice_art;
    property opt_tipo_articolo: string read movmag_opt_tipo_articolo write movmag_opt_tipo_articolo;
    property olt_tipo_articolo: string read movmag_olt_tipo_articolo write movmag_olt_tipo_articolo;
    property importo_sconto: double read movmag_importo_sconto write movmag_importo_sconto;
    property mmr_doc_riga_origine: integer read movmag_mmr_doc_riga_origine write movmag_mmr_doc_riga_origine;
    property cms_codice_righe: string read movmag_cms_codice_righe write movmag_cms_codice_righe;
    property tipologia_righe: string read movmag_tipologia_righe write movmag_tipologia_righe;
    property descrizione_mmr: string read movmag_descrizione_mmr write movmag_descrizione_mmr;
    property punto_vendita: string read movmag_punto_vendita write movmag_punto_vendita;
    property id_origine_riga: integer read movmag_id_origine_riga write movmag_id_origine_riga default 0;

    procedure crea_mmt;
    procedure crea_mmr(esegui_commesse_lotti: boolean = false; progressivo_lotti: integer = 0);
  end;

implementation

uses DMARC, ZZLIBRERIE;

constructor TMOVMAG.create(arcdit: TMyConnection_go; codice_ditta: string = '');
begin
  if codice_ditta = '' then
  begin
    movmag_codice_ditta := ditta;
  end
  else
  begin
    movmag_codice_ditta := codice_ditta;
  end;

  mmt := tmyquery_go.create(nil);
  mmt.connection := arcdit;
  mmt.sql.text := 'insert into mmt' +
    ' (progressivo, tmo_codice, tma_codice, tmo_codice_collegato, tma_codice_collegato, data_registrazione,' +
    ' numero_documento, serie_documento, data_documento, cfg_tipo, cfg_codice, ese_codice,' +
    ' tva_codice, cambio, tipo_documento, documento_origine, doc_progressivo_origine, esportato_negozio,' +
    ' progressivo_collegato, descrizione, opt_progressivo, olt_progressivo, progressivo_collegato_dsb,' +
    ' doc_riga_origine, doc_riga_dettaglio_origine, doc_riga_dettaglio_ult_origine, cms_codice, tipologia)' +
    ' values' +
    ' (:progressivo, :tmo_codice, :tma_codice, :tmo_codice_collegato, :tma_codice_collegato, :data_registrazione,' +
    ' :numero_documento, :serie_documento, :data_documento, :cfg_tipo, :cfg_codice, :ese_codice,' +
    ' :tva_codice, :cambio, :tipo_documento, :documento_origine, :doc_progressivo_origine, :esportato_negozio,' +
    ' :progressivo_collegato, :descrizione, :opt_progressivo, :olt_progressivo, :progressivo_collegato_dsb,' +
    ' :doc_riga_origine, :doc_riga_dettaglio_origine, :doc_riga_dettaglio_ult_origine, :cms_codice, :tipologia)';

  mmt_mmr := tmyquery_go.create(nil);
  mmt_mmr.connection := arcdit;
  mmt_mmr.sql.text := 'select tmo_codice from mmt where progressivo = :progressivo';

  mmr := tmyquery_go.create(nil);
  mmr.connection := arcdit;
  mmr.sql.text := 'insert into mmr' +
    ' (progressivo, riga, art_codice, quantita, prezzo, tsm_codice, importo, importo_euro, tipo_movimento,' +
    ' importo_spese, importo_spese_euro, tma_codice, descrizione, tsm_codice_art, opt_tipo_articolo, id_origine,' +
    ' olt_tipo_articolo, quantita_entrate, quantita_uscite, importo_sconto, doc_riga_origine, cms_codice, tipologia, punto_vendita)' +
    '  values' +
    ' (:progressivo, :riga, :art_codice, :quantita, :prezzo, :tsm_codice, :importo, :importo_euro, :tipo_movimento,' +
    ' :importo_spese, :importo_spese_euro, :tma_codice, :descrizione, :tsm_codice_art, :opt_tipo_articolo, :id_origine,' +
    ' :olt_tipo_articolo, :quantita_entrate, :quantita_uscite, :importo_sconto, :doc_riga_origine, :cms_codice, :tipologia, :punto_vendita)';

  tmo := tmyquery_go.create(nil);
  tmo.connection := arcdit;
  tmo.sql.text := 'select descrizione, esistenza, commesse, lotti, tipo_movimento_commesse from tmo where codice = :codice';

  art := tmyquery_go.create(nil);
  art.connection := arcdit;
  art.sql.text := 'select tipo_articolo, lotti from art where codice = :codice';

  ltm := tmyquery_go.create(nil);
  ltm.connection := arcdit;
  ltm.sql.text := 'select * from ltm where documento_origine = ''movimenti magazzino'' and doc_progressivo_origine = :progressivo ' +
    'and doc_riga_origine = :riga';

  ltm_insert := tmyquery_go.create(nil);
  ltm_insert.connection := arc.arcdit;
  ltm_insert.sql.text := 'insert into ltm (progressivo, art_codice, lotto, tma_codice, data_registrazione, ' +
    'esistenza, documento_origine, doc_progressivo_origine, doc_riga_origine, descrizione, quantita, quantita_uscite, ' +
    'quantita_entrate, data_documento, serie_documento, numero_documento) ' +
    'values (:progressivo, :art_codice, :lotto, :tma_codice, :data_registrazione, ' +
    ':esistenza, :documento_origine, :doc_progressivo_origine, :doc_riga_origine, :descrizione, :quantita, :quantita_uscite, ' +
    ':quantita_entrate, :data_documento, :serie_documento, :numero_documento)';
end;

destructor TMOVMAG.Destroy;
begin
  inherited;

  mmt.free;
  mmt_mmr.free;
  mmr.free;
  tmo.free;
  art.free;
  ltm.free;
  ltm_insert.free;
end;

procedure TMOVMAG.crea_mmt;
begin
  mmt.close;

  movmag_progressivo_mmt := arc.setta_valore_generatore(TMyConnection_go(mmt.connection),
    'mmt_progressivo', movmag_codice_ditta);

  mmt.parambyname('progressivo').asinteger := movmag_progressivo_mmt;
  mmt.parambyname('tmo_codice').asstring := movmag_tmo_codice;
  mmt.parambyname('tma_codice').asstring := movmag_tma_codice;
  mmt.parambyname('tmo_codice_collegato').asstring := movmag_tmo_codice_collegato;
  mmt.parambyname('tma_codice_collegato').asstring := movmag_tma_codice_collegato;
  mmt.parambyname('data_registrazione').asdatetime := movmag_data_registrazione;
  mmt.parambyname('numero_documento').asfloat := movmag_numero_documento;
  mmt.parambyname('serie_documento').asstring := movmag_serie_documento;
  if movmag_data_documento <> 0 then
  begin
    mmt.parambyname('data_documento').asdatetime := movmag_data_documento;
  end;
  mmt.parambyname('cfg_tipo').asstring := movmag_cfg_tipo;
  mmt.parambyname('cfg_codice').asstring := movmag_cfg_codice;
  mmt.parambyname('ese_codice').asstring := movmag_ese_codice;
  mmt.parambyname('tva_codice').asstring := movmag_tva_codice;
  mmt.parambyname('cambio').asfloat := movmag_cambio;
  mmt.parambyname('tipo_documento').asstring := movmag_tipo_documento;
  mmt.parambyname('documento_origine').asstring := movmag_documento_origine;
  mmt.parambyname('doc_progressivo_origine').asinteger := movmag_doc_progressivo_origine;
  mmt.parambyname('progressivo_collegato').asinteger := movmag_progressivo_collegato;
  mmt.parambyname('descrizione').asstring := movmag_descrizione;
  mmt.parambyname('opt_progressivo').asinteger := movmag_opt_progressivo;
  mmt.parambyname('olt_progressivo').asinteger := movmag_olt_progressivo;
  mmt.parambyname('progressivo_collegato_dsb').asinteger := movmag_progressivo_collegato_dsb;
  mmt.parambyname('doc_riga_origine').asinteger := movmag_doc_riga_origine;
  mmt.parambyname('doc_riga_dettaglio_origine').asinteger := movmag_doc_riga_dettaglio_origine;
  mmt.parambyname('doc_riga_dettaglio_ult_origine').asinteger := movmag_doc_riga_dettaglio_ult_origine;
  mmt.parambyname('cms_codice').asstring := movmag_cms_codice;
  mmt.parambyname('tipologia').asstring := movmag_tipologia;
  if movmag_esportato_negozio = 'si' then
  begin
    mmt.parambyname('esportato_negozio').asstring := movmag_esportato_negozio;
  end
  else
  begin
    mmt.parambyname('esportato_negozio').asstring := 'no';
  end;

  mmt.execsql;

  movmag_riga_mmr := 0;

  tmo.close;
  tmo.parambyname('codice').asstring := movmag_tmo_codice;
  tmo.open;
end;

procedure TMOVMAG.crea_mmr(esegui_commesse_lotti: boolean = false; progressivo_lotti: integer = 0);
begin
  mmr.close;

  //------------------------------------------------------------------------------------------------
  //  settare movmag.progressivo := 0 per settare l'ultimo progressivo utilizzato
  //  settare movmag.riga := 0 per fare incrementare automaticamente di uno (vedi INVCIC01)
  //
  //  altrimenti settare i valori necessari nel caso di multimovimento magazino (vedi STAACQ)
  //
  art.close;
  art.parambyname('codice').asstring := movmag_art_codice;
  art.open;
  if art.fieldbyname('tipo_articolo').asstring = 'fiscale' then
  begin
    if movmag_progressivo <> 0 then
    begin
      mmr.parambyname('progressivo').asinteger := movmag_progressivo;

      mmt_mmr.close;
      mmt_mmr.parambyname('progressivo').asinteger := movmag_progressivo;
      mmt_mmr.open;
      movmag_tmo_codice := mmt_mmr.fieldbyname('tmo_codice').asstring;
    end
    else
    begin
      mmr.parambyname('progressivo').asinteger := movmag_progressivo_mmt;
    end;
    if movmag_riga <> 0 then
    begin
      mmr.parambyname('riga').asinteger := movmag_riga;
    end
    else
    begin
      movmag_riga_mmr := movmag_riga_mmr + 1;
      mmr.parambyname('riga').asinteger := movmag_riga_mmr;
    end;
    mmr.parambyname('art_codice').asstring := movmag_art_codice;
    if isnan(movmag_quantita) then
    begin
      mmr.parambyname('quantita').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('quantita').asfloat := movmag_quantita;
    end;
    mmr.parambyname('quantita_entrate').asfloat := 0;
    mmr.parambyname('quantita_uscite').asfloat := 0;
    if isnan(movmag_prezzo) then
    begin
      mmr.parambyname('prezzo').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('prezzo').asfloat := movmag_prezzo;
    end;
    mmr.parambyname('tsm_codice').asstring := movmag_tsm_codice;
    if isnan(movmag_importo) then
    begin
      mmr.parambyname('importo').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('importo').asfloat := movmag_importo;
    end;
    if isnan(movmag_importo_euro) then
    begin
      mmr.parambyname('importo_euro').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('importo_euro').asfloat := movmag_importo_euro;
    end;

    mmr.parambyname('tipo_movimento').asstring := movmag_tipo_movimento;

    if isnan(movmag_importo_spese) then
    begin
      mmr.parambyname('importo_spese').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('importo_spese').asfloat := movmag_importo_spese;
    end;

    if isnan(movmag_importo_spese_euro) then
    begin
      mmr.parambyname('importo_spese_euro').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('importo_spese_euro').asfloat := movmag_importo_spese_euro;
    end;

    mmr.parambyname('tma_codice').asstring := movmag_tma_codice_mmr;
    mmr.parambyname('descrizione').asstring := movmag_descrizione_mmr;
    mmr.parambyname('tsm_codice_art').asstring := movmag_tsm_codice_art;
    mmr.parambyname('opt_tipo_articolo').asstring := movmag_opt_tipo_articolo;
    mmr.parambyname('olt_tipo_articolo').asstring := movmag_olt_tipo_articolo;

    if isnan(movmag_importo_sconto) then
    begin
      mmr.parambyname('importo_sconto').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('importo_sconto').asfloat := movmag_importo_sconto;
    end;

    if isnan(movmag_mmr_doc_riga_origine) then
    begin
      mmr.parambyname('doc_riga_origine').asfloat := 0;
    end
    else
    begin
      mmr.parambyname('doc_riga_origine').asinteger := movmag_mmr_doc_riga_origine;
    end;

    mmr.parambyname('cms_codice').asstring := movmag_cms_codice_righe;
    mmr.parambyname('tipologia').asstring := movmag_tipologia_righe;
    mmr.parambyname('punto_vendita').asstring := movmag_punto_vendita;
    mmr.parambyname('id_origine').asinteger := movmag_id_origine_riga;

    tmo.close;
    tmo.parambyname('codice').asstring := movmag_tmo_codice;
    tmo.open;

    if tmo.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      if isnan(movmag_quantita) then
      begin
        mmr.parambyname('quantita_entrate').asfloat := 0;
      end
      else
      begin
        mmr.parambyname('quantita_entrate').asfloat := mmr.parambyname('quantita').asfloat;
      end;
    end;
    if tmo.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      if isnan(movmag_quantita) then
      begin
        mmr.parambyname('quantita_uscite').asfloat := 0;
      end
      else
      begin
        mmr.parambyname('quantita_uscite').asfloat := mmr.parambyname('quantita').asfloat;
      end;
    end;

    mmr.execsql;

    if esegui_commesse_lotti then
    begin
      esegui_commesse(mmt, mmr);
      esegui_lotti(mmt, mmr, progressivo_lotti);
    end;
  end;
end;

procedure TMOVMAG.esegui_commesse(mmt, mmr: tmyquery_go);
var
  segno: integer;
  importo: double;
  stringa, costo_ricavo: string;
  cfg_tipo, cfg_codice: string;
begin
  inherited;
  if tmo.fieldbyname('commesse').asstring = 'si' then
  begin
    stringa := tmo.fieldbyname('descrizione').asstring;
    if tmo.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      costo_ricavo := 'ricavo'
    end
    else
    begin
      costo_ricavo := 'costo'
    end;

    segno := 1;
    if (tmo.fieldbyname('tipo_movimento_commesse').asstring <> '') and
      (tmo.fieldbyname('tipo_movimento_commesse').asstring <> costo_ricavo) then
    begin
      costo_ricavo := tmo.fieldbyname('tipo_movimento_commesse').asstring;
      segno := -1;
    end;

    if arc.dit.fieldbyname('solo_spese_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.parambyname('importo_spese').asfloat;
    end
    else if arc.dit.fieldbyname('solo_materiale_mov_commesse').asstring = 'si' then
    begin
      importo := mmr.parambyname('importo').asfloat;
    end
    else
    begin
      importo := mmr.parambyname('importo').asfloat + mmr.parambyname('importo_spese').asfloat;
    end;

    if movmag_cfg_tipo <> '' then
    begin
      cfg_tipo := movmag_cfg_tipo;
      cfg_codice := movmag_cfg_codice;
    end
    else
    begin
      cfg_tipo := '';
      cfg_codice := '';
    end;

    esegui_carcmm(vararrayof(['movimenti magazzino', mmr.parambyname('progressivo').asinteger,
      mmr.parambyname('riga').asinteger, 0]),
      cfg_tipo, cfg_codice, mmr.parambyname('art_codice').asstring, '', stringa, '',
      costo_ricavo, mmt.parambyname('data_registrazione').asdatetime,
      mmt.parambyname('data_documento').asdatetime, importo,
      mmt.parambyname('numero_documento').asfloat,
      mmt.parambyname('cms_codice').asstring, mmt.parambyname('tipologia').asstring,
      mmr.parambyname('quantita').asfloat, false, segno);
  end;
end;

procedure TMOVMAG.esegui_lotti(mmt, mmr: tmyquery_go; progressivo_lotti: integer);
//modifica inizio
var
  frn, lotto: tmyquery_go;
  //modifica fine
begin
  inherited;

  if (art.fieldbyname('lotti').asstring = 'si') and (tmo.fieldbyname('lotti').asstring = 'si') then
  begin
    if progressivo_lotti = 0 then
    begin

      if (mmt.parambyname('documento_origine').asstring = 'ddt acq') and (mmt.parambyname('cfg_tipo').asstring = 'F') then
      begin
        try
          //modifica inizio
          frn := tmyquery_go.create(nil);
          frn.connection := arc.arcdit;
          frn.sql.add('select tma_codice_conto_terzi from frn where codice=:codice');
          frn.parambyname('codice').asstring := mmt.parambyname('cfg_codice').asstring;
          frn.open;

          lotto := tmyquery_go.create(nil);
          lotto.connection := arc.arcdit;
          lotto.sql.add('SELECT F_A31_PROMAU_ASSEGNA_LOT_CODICE( :utn_codice, :art_codice, :tma_codice ) lot_codice');
          lotto.parambyname('utn_codice').asstring := utente;
          lotto.parambyname('art_codice').asstring := mmr.parambyname('art_codice').asstring;
          lotto.parambyname('tma_codice').asstring := frn.fieldbyname('tma_codice_conto_terzi').asstring;
          lotto.open;

          ltm_insert.close;
          ltm_insert.parambyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(ltm_insert.connection), 'LTM_PROGRESSIVO');
          ltm_insert.parambyname('art_codice').asstring := mmr.parambyname('art_codice').asstring;
          ltm_insert.parambyname('tma_codice').asstring := mmr.parambyname('tma_codice').asstring;
          ltm_insert.parambyname('data_registrazione').asdate := mmt.parambyname('data_registrazione').asdatetime;
          ltm_insert.parambyname('esistenza').asstring := tmo.fieldbyname('esistenza').asstring;
          ltm_insert.parambyname('documento_origine').asstring := 'movimenti magazzino';
          ltm_insert.parambyname('doc_progressivo_origine').asinteger := mmr.parambyname('progressivo').asinteger;
          ltm_insert.parambyname('doc_riga_origine').asinteger := mmr.parambyname('riga').asinteger;
          ltm_insert.parambyname('descrizione').asstring := tmo.fieldbyname('descrizione').asstring;
          ltm_insert.parambyname('data_documento').asdate := mmt.parambyname('data_documento').asdatetime;
          ltm_insert.parambyname('serie_documento').asstring := mmt.parambyname('serie_documento').asstring;
          ltm_insert.parambyname('numero_documento').asfloat := mmt.parambyname('numero_documento').asfloat;
          ltm_insert.parambyname('lotto').asstring := lotto.fieldbyname('lot_codice').asstring;
          ltm_insert.parambyname('quantita').asfloat := mmr.parambyname('quantita').asfloat;
          ltm_insert.execsql;

        finally
          frn.free;
          lotto.free;
        end;

      end
      else
      begin
        esegui_carltm(vararrayof(['movimenti magazzino', mmr.parambyname('progressivo').asfloat, mmr.parambyname('riga').asinteger, 0]),
          mmt.parambyname('numero_documento').asfloat, '', '',
          mmr.parambyname('art_codice').asstring, mmr.parambyname('tma_codice').asstring,
          mmt.parambyname('tmo_codice').asstring, tmo.fieldbyname('esistenza').asstring, '',
          mmt.parambyname('data_registrazione').asdatetime, mmt.parambyname('data_documento').asdatetime,
          tmo.fieldbyname('descrizione').asstring, mmr.parambyname('quantita').asfloat, 0, 0);
      end;
      //modifica fine

    end
    else
    begin
      //  recupera automaticamente lotti dal movimento principale se il movimento è un collegato
      if read_tabella(ltm, vararrayof([progressivo_lotti, mmr.parambyname('riga').asinteger])) then
      begin
        while not ltm.eof do
        begin
          ltm_insert.close;
          ltm_insert.parambyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(ltm_insert.connection), 'LTM_PROGRESSIVO');
          ltm_insert.parambyname('art_codice').asstring := mmr.parambyname('art_codice').asstring;
          ltm_insert.parambyname('tma_codice').asstring := mmr.parambyname('tma_codice').asstring;
          ltm_insert.parambyname('data_registrazione').asdate := mmt.parambyname('data_registrazione').asdatetime;
          ltm_insert.parambyname('esistenza').asstring := tmo.fieldbyname('esistenza').asstring;
          ltm_insert.parambyname('documento_origine').asstring := 'movimenti magazzino';
          ltm_insert.parambyname('doc_progressivo_origine').asinteger := mmr.parambyname('progressivo').asinteger;
          ltm_insert.parambyname('doc_riga_origine').asinteger := mmr.parambyname('riga').asinteger;
          ltm_insert.parambyname('descrizione').asstring := tmo.fieldbyname('descrizione').asstring;
          ltm_insert.parambyname('data_documento').asdate := mmt.parambyname('data_documento').asdatetime;
          ltm_insert.parambyname('serie_documento').asstring := mmt.parambyname('serie_documento').asstring;
          ltm_insert.parambyname('numero_documento').asfloat := mmt.parambyname('numero_documento').asfloat;
          ltm_insert.parambyname('lotto').asstring := ltm.fieldbyname('lotto').asstring;
          ltm_insert.parambyname('quantita').asfloat := ltm.fieldbyname('quantita').asfloat;
          ltm_insert.execsql;

          ltm.next;
        end;
      end;
    end;
  end;
end;

end.
