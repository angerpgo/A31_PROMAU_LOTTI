//-------------------------------------------------------------
// visualizzata descrizione del magazzino terzista nel nodo - tcm_codice  -tgm_codice
//-------------------------------------------------------------

unit GGCREORDP;

interface

uses
  windows, messages, sysutils, variants, classes, graphics, controls, forms,
  dialogs, ggformbase, db, query_go, myaccess, menus, comctrls, rztabs,
  toolwin, buttons, grids, dbgrids, rzdbgrid, stdctrls, mask, extctrls, dbctrls,
  rzbutton, zzcerca_prezzo, zzspesco, zztipinv, zzprzinv, rzlabel, rzpanel,
  rzdbedit, rzlistvw, rztreevw, rzdbchk, rzradchk, rzsplit, rzcmbobx, rzprgres,
  rzspnedt, rzshelldialogs, rzdbcmbo, raizeedit_go, rzedit, dbaccess, memds,
  ZZCALFAS;

type

  pnodo = ^tnodo;

  tnodo = record
    codice: string;
    descrizione: string;
    tum_codice: string;
    quantita: double;
    prezzo: double;
    tma_codice: string;
    note: string;
    esistenza_tma: double;
    approntato_tma: double;
    esistenza: double;
    esistenza_principale: double;
    assistenza_tecnica: string;
    tum_codice_dsb: string;
    sequenza: integer;
  end;

type
  TCREORDP = class(TFORMBASE)
    cms: tmyquery_go;
    cms_ds: tmydatasource;
    panel1: trzpanel;
    v_griglia: trztreeview;
    panel2: trzpanel;
    cmt: tmyquery_go;
    cmt_ds: tmydatasource;
    art: tmyquery_go;
    v_equivalenti: trzrapidfirebutton;
    v_esplodi: trzrapidfirebutton;
    dsb: tmyquery_go;
    v_inserisci: trzrapidfirebutton;
    v_cancella: trzrapidfirebutton;
    v_crea_ordini: trzrapidfirebutton;
    figli: tmyquery_go;
    v_inserisci_sottoelemento: trzrapidfirebutton;
    v_distinta_base: trzrapidfirebutton;
    v_espandi: trzrapidfirebutton;
    v_comprimi: trzrapidfirebutton;
    v_cancella_sottoelementi: trzrapidfirebutton;
    art_01: tmyquery_go;
    art_01_ds: tmydatasource;
    v_esplodi_tutto: trzrapidfirebutton;
    ovt: tmyquery_go;
    ovt_ds: tmydatasource;
    v_modifica_quantita: trzrapidfirebutton;
    panel4: trzpanel;
    v_art_codice_nodo: trzedit_go;
    v_quantita_nodo: trznumericedit_go;
    v_art_descrizione_nodo: trzedit_go;
    ovr: tmyquery_go;
    ovr_ds: tmydatasource;
    v_cruscotto: trzrapidfirebutton;
    opt: tmyquery_go;
    opr: tmyquery_go;
    cla: tmyquery_go;
    opc: tmyquery_go;
    art_opt: tmyquery_go;
    label1: trzlabel;
    v_esistenza_tma: trznumericedit_go;
    label4: trzlabel;
    v_esistenza: trznumericedit_go;
    label2: trzlabel;
    v_esistenza_principale: trznumericedit_go;
    mag: tmyquery_go;
    mag_approntato: tmyquery_go;
    art_costo: tmyquery_go;
    frn_rda: tmyquery_go;
    tool_commessa: ttoolbutton;
    label5: trzlabel;
    v_tma_codice_finito: trzedit_go;
    v_tma_codice_materia_prima: trzedit_go;
    v_varia_quantita: trzrapidfirebutton;
    art_lot: TMyQuery_go;
    tmo_lot: TMyQuery_go;
    v_avanzamento_fasi: TRzCheckBox;
    tool_inserimento_excel: TToolButton;
    OpenDialog: TOpenDialog;
    top: TMyQuery_go;
    top_ds: TMyDataSource;
    top_vista: TMyQuery_go;
    v_fasi_non_sequenziali: TRzCheckBox;
    RzPanel1: TRzPanel;
    pannello_commessa: TRzPanel;
    v_selezione: trzcombobox_go;
    v_quantita: trznumericedit_go;
    v_ovr_progressivo: trznumericedit_go;
    v_ovr_riga: trznumericedit_go;
    RzDBEditDescrizione_go4: trzdbeditdescrizione_go;
    v_art_codice: trzedit_go;
    v_art_descrizione: trzdbeditdescrizione_go;
    v_top_codice: trzedit_go;
    RzDBEditDescrizione_go5: trzdbeditdescrizione_go;
    v_data_consegna: trzdatetimeedit_go;
    v_conferma: TRzBitBtn;
    mag_art: TMyQuery_go;
    v_anaordp: TRzCheckBox;
    v_usa_equivalenti: TRzCheckBox;
    equ: TMyQuery_go;
    RzLabel1: TRzLabel;
    v_approntato_tma: trznumericedit_go;
    dsb_equ: TMyQuery_go;
    art_opt_esiste: TMyQuery_go;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    v_tvr_codice: trzedit_go;
    trzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    tvr: TMyQuery_go;
    tvr_ds: TMyDataSource;
    dsbv: TMyQuery_go;
    artv: TMyQuery_go;
    opc_data: TMyQuery_go;
    v_equivalenti_filtro: TRzRapidFireButton;
    art_finiti: TMyQuery_go;
    procedure pannello_commessaexit(sender: tobject);
    procedure v_confermaclick(sender: tobject);
    procedure v_grigliagetimageindex(sender: tobject; node: ttreenode);
    procedure v_equivalenticlick(sender: tobject);
    procedure v_grigliaenter(sender: tobject);
    procedure v_esplodiclick(sender: tobject);
    procedure v_cancellaclick(sender: tobject);
    procedure v_inserisciclick(sender: tobject);
    procedure v_inserisci_sottoelementoclick(sender: tobject);
    procedure v_distinta_baseclick(sender: tobject);
    procedure v_espandiclick(sender: tobject);
    procedure v_comprimiclick(sender: tobject);
    procedure v_cancella_sottoelementiclick(sender: tobject);
    procedure v_crea_ordiniclick(sender: tobject);
    procedure formkeydown(sender: tobject; var key: word; shift: tshiftstate);
    procedure v_art_codiceexit(sender: tobject);
    procedure v_ovr_progressivoexit(sender: tobject);
    procedure v_esplodi_tuttoclick(sender: tobject);
    procedure v_modifica_quantitaclick(sender: tobject);
    procedure v_grigliachange(sender: tobject; node: ttreenode);
    procedure v_ovr_rigaexit(sender: tobject);
    procedure v_selezioneclick(sender: tobject);
    procedure v_ovr_rigaenter(sender: tobject);
    procedure formshow(sender: tobject);
    procedure v_cruscottoclick(sender: tobject);
    procedure v_ovr_progressivoenter(sender: tobject);
    procedure pannello_commessaenter(sender: tobject);
    procedure tool_commessaclick(sender: tobject);
    procedure formcreate(sender: tobject);
    procedure formdestroy(sender: tobject);
    procedure v_varia_quantitaclick(sender: tobject);
    procedure tool_inserimento_excelClick(Sender: TObject);
    procedure v_top_codiceExit(Sender: TObject);
    procedure v_tvr_codiceExit(Sender: TObject);
    procedure v_equivalenti_filtroClick(Sender: TObject);
  protected
    cerca_prezzi: tcerca_prezzo;
    tipinv: ttipinv;
    przinv: tprzinv;
    calfas: tcalfas;

    primo_progressivo: integer;
    numero_documento: double;
    lot_codice_passato, formula_passata: string;

    cli_codice, cms_codice, cmt_codice, tma_codice_finiti_passato: string;
    progressivo_finito: integer;

    serie_documento, avanzamento_fasi, fasi_non_sequenziali, tipo_esplosione, tmo_codice_finiti, tma_codice_finiti,
      tmo_codice_materie_prime, tma_codice_materie_prime: string;

    aggiorna_tma_finiti, aggiorna_tma_mp: string;

    procedure ovr_progressivo_controllo(blocco: boolean);
    procedure ovr_riga_controllo(blocco: boolean);
    procedure art_codice_controllo(blocco: boolean);
    procedure v_top_codice_controllo(blocco: boolean);
    procedure v_tvr_codice_controllo(blocco: boolean);
    procedure assegna_top_codice;

    function inserisci_treeview(sequenza: integer; art_codice, art_descrizione, note, tma_codice: string;
      quantita, prezzo, esistenza_tma, approntato_tma, esistenza, esistenza_principale: double; treepadre: ttreenode): ttreenode;
    procedure esplodi_dsb(art_codice_dsb: string; quantita: double; elemento_selezionato: ttreenode);
    procedure crea_opt(nodo: ttreenode; opt_progressivo, opr_riga: integer; art_codice_semilavorato: string;
      aggiungi: boolean; data_consegna: tdate);
    procedure errore_commit_transazione;
    procedure cambia_quantita(nodo: ttreenode; quantita_base, quantita: double);

    function assegna_descrizione(nododata: pointer): string;
    function ha_figli(art_codice: string): boolean;
    function costo_unitario(art_codice: string): double;
    function controllo_livello: boolean;
  public
    procedure visualizza_stampa_elabora; override;
  end;

implementation

{$r *.dfm}


uses DMARC, GGVISEQU, GGCREORDP01, GGCREORDP02, GGIMPALF, GGSCEDSBEQU, ZZVARIANTI_DSB, ZZLIBRERIE, GGANAEQU,
  ZZLIBRERIE_PROMAU;

procedure tcreordp.v_art_codiceexit(sender: tobject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure tcreordp.v_cancellaclick(sender: tobject);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    if v_griglia.selected.haschildren then
    begin
      if messaggio(300, 'conferma cancellazione articolo: ' + nodoptr.codice + #13 + nodoptr.descrizione + #13 +
        'e di tutti i suoi componenti') = 1 then
      begin
        v_griglia.items.delete(v_griglia.selected);
      end;
    end
    else
    begin
      if messaggio(300, 'conferma cancellazione articolo: ' + nodoptr.codice + #13 + nodoptr.descrizione) = 1 then
      begin
        v_griglia.items.delete(v_griglia.selected);
      end;
    end;
  end;
end;

procedure tcreordp.v_cancella_sottoelementiclick(sender: tobject);
begin
  inherited;
  if v_griglia.selected.haschildren then
  begin
    if messaggio(300, 'conferma cancellazione sottoelementi') = 1 then
    begin
      while v_griglia.selected.getfirstchild <> nil do
      begin
        v_griglia.items.delete(v_griglia.selected.getfirstchild);
      end;
    end;
  end
  else
  begin
    messaggio(200, 'non ci sono sottoelementi');
  end;
end;

procedure tcreordp.v_selezioneclick(sender: tobject);
begin
  inherited;
  if v_selezione.itemindex = 0 then
  begin
    v_art_codice.readonly := false;
    v_art_codice.tabstop := true;
    v_art_codice.color := clwindow;

    v_ovr_progressivo.value := 0;
    v_ovr_progressivo.enabled := false;
    v_ovr_progressivo.color := clbtnface;
    v_ovr_riga.value := 0;
    v_ovr_riga.enabled := false;
    v_ovr_riga.color := clbtnface;
  end
  else if v_selezione.itemindex = 1 then
  begin
    v_art_codice.readonly := true;
    v_art_codice.tabstop := false;
    v_art_codice.color := clbtnface;

    v_ovr_progressivo.value := 0;
    v_ovr_progressivo.enabled := true;
    v_ovr_progressivo.color := clwindow;
    v_ovr_riga.value := 0;
    v_ovr_riga.enabled := true;
    v_ovr_riga.color := clwindow;
  end;
  art_codice_controllo(false);
  ovr_progressivo_controllo(false);
  ovr_riga_controllo(false);
end;

procedure TCREORDP.v_top_codiceExit(Sender: TObject);
begin
  inherited;
  v_top_codice_controllo(true);
end;

procedure TCREORDP.assegna_top_codice;
begin
  tmo_codice_finiti := arc.dit.fieldbyname('tmo_codice_finiti').asstring;
  tma_codice_finiti := arc.dit.fieldbyname('tma_codice_finiti').asstring;
  tmo_codice_materie_prime := arc.dit.fieldbyname('tmo_codice_materie_prime').asstring;
  tma_codice_materie_prime := arc.dit.fieldbyname('tma_codice_materie_prime').asstring;

  fasi_non_sequenziali := 'no';
  if top.isempty then
  begin
    serie_documento := '';
    avanzamento_fasi := arc.dit.fieldbyname('avanzamento_fasi').asstring;
    tipo_esplosione := arc.dit.fieldbyname('tipo_esplosione').asstring;
  end
  else
  begin
    serie_documento := top.fieldbyname('serie_documento').asstring;
    avanzamento_fasi := top.fieldbyname('avanzamento_fasi').asstring;
    fasi_non_sequenziali := top.fieldbyname('fasi_non_sequenziali').asstring;
    tipo_esplosione := top.fieldbyname('tipo_esplosione').asstring;

    if top.fieldbyname('tmo_codice_finiti').asstring <> '' then
    begin
      tmo_codice_finiti := top.fieldbyname('tmo_codice_finiti').asstring;
    end;
    if top.fieldbyname('tma_codice_finiti').asstring <> '' then
    begin
      tma_codice_finiti := top.fieldbyname('tma_codice_finiti').asstring;
    end;
    if top.fieldbyname('tmo_codice_materie_prime').asstring <> '' then
    begin
      tmo_codice_materie_prime := top.fieldbyname('tmo_codice_materie_prime').asstring;
    end;
    if top.fieldbyname('tma_codice_materie_prime').asstring <> '' then
    begin
      tma_codice_materie_prime := top.fieldbyname('tma_codice_materie_prime').asstring;
    end;
  end;

  if tma_codice_finiti_passato <> '' then
  begin
    tma_codice_finiti := tma_codice_finiti_passato;
  end;
end;

procedure TCREORDP.v_top_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, top, v_top_codice, blocco, nil, nil, nil);

  if controllo and blocco and (v_top_codice.text = '') and (arc.dit.fieldbyname('usa_top_codice').asstring = 'si') then
  begin
    messaggio(200, 'in anagrafica ditta è stato impostato l''utilizzo del codice documento');
  end;
end;

procedure TCREORDP.v_tvr_codiceExit(Sender: TObject);
begin
  inherited;
  v_tvr_codice_controllo(true);
  if controllo then
  begin
    if (v_tvr_codice.text <> '') and not read_tabella(artv, vararrayof([v_art_codice.text, v_tvr_codice.text])) then
    begin
      messaggio(000, 'non è stato pevisto l''utilizzo della variante per l''articolo');
      fuoco(v_tvr_codice);
      abort;
    end
    else if (tvr.fieldbyname('art_codice').asstring <> '') and
      (tvr.fieldbyname('art_codice').asstring <> v_art_codice.text) then
    begin
      messaggio(000, 'la variante può essere utulizzata solamente per l''articolo [' +
        tvr.fieldbyname('art_codice').asstring + ']');
      fuoco(v_tvr_codice);
      abort;
    end;
  end;
end;

procedure TCREORDP.v_tvr_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tvr, v_tvr_codice, blocco, nil, nil, nil);
end;

procedure TCREORDP.v_varia_quantitaclick(sender: tobject);
var
  pr: timpalf;
begin
  inherited;
  pr := timpalf.create(nil);
  pr.v_form_caption := 'Modifica quantità da produrre';
  pr.v_descrizione_caption := 'quantità';
  pr.valore_passato := v_quantita.value;
  pr.tipo_campo := 'numero';
  pr.v_width_campo := 18;
  pr.decimali := v_quantita.decimalplaces;
  pr.showmodal;
  if not pr.premuto_escape and pr.valore_passato <> v_quantita.value then
  begin
    v_griglia.select(v_griglia.items.getfirstnode);

    cambia_quantita(v_griglia.selected, pr.valore_passato, v_quantita.value);

    v_quantita.value := pr.valore_passato;
  end;
  pr.free;
end;

procedure tcreordp.cambia_quantita(nodo: ttreenode; quantita_base, quantita: double);
var
  nodoptr: ^tnodo;
begin
  nodoptr := nodo.data;
  nodoptr.quantita := arrotonda(nodoptr.quantita * quantita_base / v_quantita.value, decimali_max_quantita);
  nodo.data := nodoptr;
  nodo.text := assegna_descrizione(nodoptr);

  nodo := nodo.getfirstchild;
  while nodo <> nil do
  begin
    nodoptr := nodo.data;

    if nodo.haschildren then
    begin
      cambia_quantita(nodo, quantita_base, nodoptr.quantita);
    end
    else
    begin
      nodoptr.quantita := arrotonda(nodoptr.quantita * quantita_base / v_quantita.value, decimali_max_quantita);
      nodo.data := nodoptr;
      nodo.text := assegna_descrizione(nodoptr);
    end;

    nodo := nodo.getnextsibling;
  end;
end;

procedure tcreordp.v_comprimiclick(sender: tobject);
begin
  inherited;
  v_griglia.fullcollapse;
end;

procedure tcreordp.v_confermaclick(sender: tobject);
var
  prosegui: boolean;
begin
  inherited;

  prosegui := true;

  if not top.isempty and (top.fieldbyname('controllo_articoli').asstring = 'si') then
  begin
    art_opt_esiste.close;
    art_opt_esiste.parambyname('art_codice').asstring := v_art_codice.text;
    art_opt_esiste.parambyname('ovr_progressivo').asinteger := v_ovr_progressivo.intvalue;
    art_opt_esiste.open;
    if not art_opt_esiste.isempty then
    begin
      if messaggio(300, 'esistono già uno o più ordini di produzione per l''articolo ' + v_art_codice.text + slinebreak +
        'ai progressivi ' + art_opt_esiste.fieldbyname('progressivo').asstring + slinebreak + 'conferma per creare l''ordine') <> 1 then
      begin
        prosegui := false;
      end;
    end;
  end;

  if prosegui then
  begin
    progressivo_finito := 0;

    (*
      if v_ovr_progressivo.value <> 0) and not ordine_cliente then
      begin
      if read_tabella(arc.arcdit, 'opt', 'ovr_progressivo;ovr_riga', vararrayof([v_ovr_progressivo.value, v_ovr_riga.value]), 'progressivo') then
      begin
      messaggio(000, 'ordine già in produzione con il progressivo: ' + archivio.fieldbyname('progressivo').asstring);
      if v_ovr_progressivo.canfocus then
      begin
      v_ovr_progressivo.setfocus;
      end;
      abort;
      end;
      end;
    *)

    if (v_art_codice.text <> '') and (v_art_descrizione.text <> '') and (v_quantita.value <> 0) then
    begin
      v_griglia.items.clear;

      mag.close;
      mag.parambyname('art_codice').asstring := v_art_codice.text;
      mag.parambyname('tma_codice').asstring := tma_codice_finiti;
      mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
      mag.open;

      inserisci_treeview(0, v_art_codice.text, v_art_descrizione.text, '', '', v_quantita.value, 0,
        mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
        mag.fieldbyname('esistenza_principale').asfloat, nil);
      colore_control(pannello_commessa, false);
      pannello_commessa.enabled := false;
      if v_griglia.canfocus then
      begin
        if v_griglia.canfocus then
        begin
          v_griglia.setfocus;
        end;
      end;
    end
    else
    begin
      messaggio(000, 'codice articolo o quantità non specificati');
      if v_selezione.canfocus then
      begin
        v_selezione.setfocus;
      end;
    end;
  end
  else
  begin
    fuoco(v_selezione);
  end;
end;

procedure tcreordp.v_crea_ordiniclick(sender: tobject);
begin
  inherited;
  v_griglia.select(v_griglia.items.getfirstnode);

  apri_transazione;
  try
    try
      crea_opt(v_griglia.selected, 0, 0, '', false, v_data_consegna.date);

      messaggio(100, 'progressivo ordine generato per il semilavorato: ' + inttostr(primo_progressivo));
      commit_transazione;
    except
      on e: exception do
      begin
        rollback_transazione(e.message);
        errore_commit_transazione;
      end;
    end;
  finally
    chiudi_transazione;
  end;

  if v_anaordp.checked then
  begin
    if primo_progressivo <> 0 then
    begin
      esegui_programma('ANAORDP', primo_progressivo, true);
    end;
  end
  else
  begin
    if primo_progressivo <> 0 then
    begin
      esegui_programma('GESORDP', primo_progressivo, true);

      if (arc.dit.fieldbyname('assegnazione_produzione').asstring = 'si') and
        (messaggio(300, 'analisi approntamento') = 1) then
      begin
        if opt.parambyname('cms_codice').asstring <> '' then
        begin
          parametri_extra_programma_chiamato[0] := 'commessa';
          esegui_programma('ASSAPPOP', opt.parambyname('cms_codice').asstring, true);
        end
        else
        begin
          parametri_extra_programma_chiamato[0] := 'ordine';
          esegui_programma('ASSAPPOP', opt.parambyname('progressivo').asinteger, true);
        end;
      end;

      parametri_extra_programma_chiamato[27] := primo_progressivo;
    end;
  end;

  close;
end;

procedure tcreordp.crea_opt(nodo: ttreenode; opt_progressivo, opr_riga: integer; art_codice_semilavorato: string;
  aggiungi: boolean; data_consegna: tdate);
var
  progressivo, riga: integer;
  numero_documento_precedente: double;
  data_documento_precedente: tdatetime;
  art_codice_finito: string;
  nodoptr: ^tnodo;
  quantita, costo: double;
  //giorni_cicli: boolean;

  ultima_riga: tmyquery_go;

  opt, opr, opc: tmyquery_go;
begin
  opt := tmyquery_go.create(nil);
  opt.connection := arc.arcdit;
  opt.sql.add('insert into opt');
  opt.sql.add('(progressivo, art_codice, tmo_codice_finiti, tma_codice_finiti, tmo_codice_materie_prime, fasi_non_sequenziali,');
  opt.sql.add('tma_codice_materie_prime, quantita, data_consegna, data_documento, numero_documento, serie_documento,');
  opt.sql.add('art_codice_semilavorato, tipo_esplosione, cms_codice, tipologia, frn_codice,');
  opt.sql.add('ovr_progressivo, ovr_riga, tda_codice_ordine, art_codice_finito, progressivo_finito,');
  opt.sql.add('documento_origine, doc_progressivo_origine, doc_riga_origine, descrizione, lot_codice, formula, avanzamento_fasi, top_codice)');
  opt.sql.add('values');
  opt.sql.add('(:progressivo, :art_codice, :tmo_codice_finiti, :tma_codice_finiti, :tmo_codice_materie_prime, :fasi_non_sequenziali,');
  opt.sql.add(':tma_codice_materie_prime, :quantita, :data_consegna, :data_documento, :numero_documento, :serie_documento,');
  opt.sql.add(':art_codice_semilavorato, :tipo_esplosione, :cms_codice, :tipologia, :frn_codice,');
  opt.sql.add(':ovr_progressivo, :ovr_riga, :tda_codice_ordine, :art_codice_finito, :progressivo_finito,');
  opt.sql.add(':documento_origine, :doc_progressivo_origine, :doc_riga_origine, :descrizione, :lot_codice, :formula, :avanzamento_fasi, :top_codice)');

  opr := tmyquery_go.create(nil);
  opr.connection := arc.arcdit;
  opr.sql.add('insert into opr');
  opr.sql.add('(progressivo, riga, art_codice, quantita, semilavorato, tma_codice, note, quantita_approntata,');
  opr.sql.add('costo_unitario, assistenza_tecnica, sequenza_dsb)');
  opr.sql.add('values');
  opr.sql.add('(:progressivo, :riga, :art_codice, :quantita, :semilavorato, :tma_codice, :note, :quantita_approntata,');
  opr.sql.add(':costo_unitario, :assistenza_tecnica, :sequenza_dsb)');

  opc := tmyquery_go.create(nil);
  opc.connection := arc.arcdit;
  opc.sql.add('insert into opc');
  opc.sql.add('(progressivo, sequenza, fas_codice, frn_codice, quantita, tipo_operazione, costo_totale, note, mac_codice)');
  opc.sql.add('values');
  opc.sql.add('(:progressivo, :sequenza, :fas_codice, :frn_codice, :quantita, :tipo_operazione, :costo_totale, :note, :mac_codice)');

  ultima_riga := tmyquery_go.create(nil);
  ultima_riga.connection := arc.arcdit;
  ultima_riga.sql.text := 'select max(riga) riga from opr where progressivo = :progressivo';

  nodoptr := nodo.data;

  costo := 0;
  quantita := 0;

  // testata
  if not aggiungi then
  begin
    opt.close;
    progressivo := arc.setta_valore_generatore(tmyconnection_go(opt.connection), 'opt_progressivo');
    if primo_progressivo = 0 then
    begin
      primo_progressivo := progressivo;
    end;
    opt.parambyname('progressivo').asinteger := progressivo;
    opt.parambyname('top_codice').asstring := v_top_codice.text;
    opt.parambyname('art_codice').asstring := nodoptr.codice;
    art_codice_finito := nodoptr.codice;
    opt.parambyname('tmo_codice_finiti').asstring := tmo_codice_finiti;
    if art_codice_semilavorato = '' then
    begin
      opt.parambyname('tma_codice_finiti').asstring := tma_codice_finiti;
    end
    else
    begin
      opt.parambyname('tma_codice_finiti').asstring := tma_codice_materie_prime;
    end;
    opt.parambyname('tmo_codice_materie_prime').asstring := tmo_codice_materie_prime;
    opt.parambyname('tma_codice_materie_prime').asstring := tma_codice_materie_prime;
    opt.parambyname('quantita').asfloat := nodoptr.quantita;
    opt.parambyname('descrizione').asstring := nodoptr.note;
    opt.parambyname('lot_codice').asstring := lot_codice_passato;
    opt.parambyname('formula').asstring := formula_passata;

    opt.parambyname('data_documento').asdate := date;
    opt.parambyname('serie_documento').asstring := serie_documento;

    progressivo_cnt := 0;
    esiste_numerazione_cnt := true;
    while esiste_numerazione_cnt do
    begin
      arc.assegna_numerazione(arc.arcdit, 'ORDINI PRODUZIONE', serie_documento, date, progressivo_cnt);
      opt.parambyname('numero_documento').asfloat := progressivo_cnt;

      if arc.esistenza_documento('opt', serie_documento, '', opt.parambyname('data_documento').asdate,
        opt.parambyname('numero_documento').asfloat, opt.parambyname('progressivo').asinteger) then
      begin
        progressivo_cnt := 0;
      end
      else
      begin
        esiste_numerazione_cnt := false;
      end;
    end;

    opt.parambyname('art_codice_semilavorato').asstring := art_codice_semilavorato;
    if opt.parambyname('art_codice').asstring <> v_art_codice.text then
    begin
      opt.parambyname('art_codice_finito').asstring := v_art_codice.text;
    end
    else
    begin
      opt.parambyname('art_codice_finito').asstring := ''
    end;
    if progressivo_finito = 0 then
    begin
      progressivo_finito := progressivo;
      opt.parambyname('progressivo_finito').asinteger := 0;
    end
    else
    begin
      opt.parambyname('progressivo_finito').asinteger := progressivo_finito;
    end;

    opt.parambyname('tipo_esplosione').asstring := tipo_esplosione;
    opt.parambyname('data_consegna').asdate := data_consegna;

    if cms_codice <> '' then
    begin
      opt.parambyname('cms_codice').asstring := cms_codice;
      opt.parambyname('tipologia').asstring := cmt_codice;
    end
    else
    begin
      if ovt.active then
      begin
        opt.parambyname('cms_codice').asstring := ovr.fieldbyname('cms_codice').asstring;
        opt.parambyname('tipologia').asstring := ovr.fieldbyname('tipologia').asstring;
      end
      else
      begin
        opt.parambyname('cms_codice').asstring := '';
        opt.parambyname('tipologia').asstring := '';
      end;
    end;

    if opt.parambyname('cms_codice').asstring <> '' then
    begin
      read_tabella(cms, opt.parambyname('cms_codice').asstring);
      read_tabella(cmt, vararrayof([opt.parambyname('cms_codice').asstring, opt.parambyname('tipologia').asstring]));

      if aggiorna_tma_finiti <> 'no' then
      begin
        if (cms.fieldbyname('tma_codice').asstring <> '') and
          (cms.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_finiti').asstring) and
          ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
        begin
          if (aggiorna_tma_finiti = 'si') or (messaggio(300, 'aggiorna il deposito prodotti finiti per adeguarlo a quello della commessa') = 1) then
          begin
            aggiorna_tma_finiti := 'si';
            opt.parambyname('tma_codice_finiti').asstring := cms.fieldbyname('tma_codice').asstring;
          end
          else
          begin
            aggiorna_tma_finiti := 'no';
          end;
        end
        else
        begin
          if (cmt.fieldbyname('tma_codice').asstring <> '') and
            (cmt.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_finiti').asstring) then
          begin
            if (aggiorna_tma_finiti = 'si') or (messaggio(300, 'aggiorna il deposito prodotti finiti per adeguarlo a quello della sottocommessa') = 1) then
            begin
              aggiorna_tma_finiti := 'no';
              opt.parambyname('tma_codice_finiti').asstring := cmt.fieldbyname('tma_codice').asstring;
            end
            else
            begin
              aggiorna_tma_finiti := 'no';
            end;
          end;
        end;
      end;

      if aggiorna_tma_mp <> 'no' then
      begin
        if (cms.fieldbyname('tma_codice').asstring <> '') and
          (cms.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_materie_prime').asstring) and
          ((cmt.isempty) or (cmt.fieldbyname('tma_codice').asstring = '')) then
        begin
          if (aggiorna_tma_mp = 'si') or (messaggio(300, 'aggiorna il deposito materie prime per adeguarlo a quello della commessa') = 1) then
          begin
            aggiorna_tma_mp := 'si';
            opt.parambyname('tma_codice_materie_prime').asstring := cms.fieldbyname('tma_codice').asstring;
          end
          else
          begin
            aggiorna_tma_mp := 'no';
          end;
        end
        else
        begin
          if (cmt.fieldbyname('tma_codice').asstring <> '') and
            (cmt.fieldbyname('tma_codice').asstring <> opt.parambyname('tma_codice_materie_prime').asstring) then
          begin
            if (aggiorna_tma_mp = 'si') or (messaggio(300, 'aggiorna il deposito materie prime per adeguarlo a quello della sottocommessa') = 1) then
            begin
              aggiorna_tma_mp := 'si';
              opt.parambyname('tma_codice_materie_prime').asstring := cmt.fieldbyname('tma_codice').asstring;
            end
            else
            begin
              aggiorna_tma_mp := 'no';
            end;
          end;
        end;
      end;
    end;

    if avanzamento_fasi = 'no' then
    begin
      read_tabella(art_opt, nodoptr.codice);
      opt.parambyname('frn_codice').asstring := art_opt.fieldbyname('frn_codice').asstring;
      if art_opt.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
      begin
        opt.parambyname('tma_codice_materie_prime').asstring := art_opt.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end
    else
    begin
      opt.parambyname('frn_codice').asstring := '';
    end;

    if ovr.active and (opt_progressivo = 0) then
    begin
      opt.parambyname('ovr_progressivo').asinteger := ovr.fieldbyname('progressivo').asinteger;
      opt.parambyname('ovr_riga').asinteger := ovr.fieldbyname('riga').asinteger;
    end
    else
    begin
      opt.parambyname('ovr_progressivo').asinteger := 0;
      opt.parambyname('ovr_riga').asinteger := 0;
    end;

    if opt_progressivo <> 0 then
    begin
      opt.parambyname('documento_origine').asstring := 'ordine produzione';
      opt.parambyname('doc_progressivo_origine').asinteger := opt_progressivo;
      opt.parambyname('doc_riga_origine').asinteger := opr_riga;
    end
    else if (v_ovr_progressivo.value <> 0) and (v_ovr_riga.value <> 0) then
    begin
      opt.parambyname('documento_origine').asstring := 'ordine ven';
      opt.parambyname('doc_progressivo_origine').asinteger := trunc(v_ovr_progressivo.value);
      opt.parambyname('doc_riga_origine').asinteger := trunc(v_ovr_riga.value);
    end
    else
    begin
      opt.parambyname('documento_origine').asstring := '';
      opt.parambyname('doc_progressivo_origine').asinteger := 0;
      opt.parambyname('doc_riga_origine').asinteger := 0;
    end;

    read_tabella(art_lot, opt.parambyname('art_codice').asstring);
    read_tabella(tmo_lot, opt.parambyname('tmo_codice_finiti').asstring);
    if (art_lot.fieldbyname('lotti').asstring = 'si') and (tmo_lot.fieldbyname('lotti').asstring = 'si') then
    begin
      opt.parambyname('lot_codice').asstring := arc.assegna_codice_lotto_automatico(opt.parambyname('data_documento').asdate, 'FORN', 1,
        opt.parambyname('data_documento').asdate, opt.parambyname('art_codice').asstring);
    end
    else
    begin
      opt.parambyname('lot_codice').asstring := '';
    end;

    opt.parambyname('avanzamento_fasi').asstring := avanzamento_fasi;
    opt.parambyname('fasi_non_sequenziali').asstring := fasi_non_sequenziali;

    if (avanzamento_fasi = 'no') and (opt.parambyname('frn_codice').asstring <> '') then
    begin
      read_tabella(arc.arcdit, 'frn', 'codice', opt.parambyname('frn_codice').asstring, 'tma_codice_conto_terzi');
      if archivio.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
      begin
        opt.parambyname('tma_codice_materie_prime').asstring := archivio.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end;

    //modifica
    art_finiti.close;
    art_finiti.parambyname('codice').asstring := opt.parambyname('art_codice').asstring;
    art_finiti.open;
    opt.parambyname('frn_codice').asstring := art_finiti.fieldbyname('frn_codice').asstring;

    if opt.parambyname('frn_codice').asstring = promau_frn_codice then
    begin
      opt.parambyname('tma_codice_finiti').asstring := art_finiti.fieldbyname('tma_codice_finiti').asstring;
      opt.parambyname('tma_codice_materie_prime').asstring := art_finiti.fieldbyname('tma_codice_finiti').asstring;
    end
    else if opt.parambyname('frn_codice').asstring <> '' then
    begin
      opt.parambyname('tma_codice_finiti').asstring := art_finiti.fieldbyname('tma_codice_finiti').asstring;
      read_tabella(arc.arcdit, 'frn', 'codice', opt.parambyname('frn_codice').asstring, 'tma_codice_conto_terzi');
      if archivio.fieldbyname('tma_codice_conto_terzi').asstring <> '' then
      begin
        opt.parambyname('tma_codice_materie_prime').asstring := archivio.fieldbyname('tma_codice_conto_terzi').asstring;
      end;
    end;
    //modifica fine

    opt.execsql;

    // ciclo
    cla.close;
    cla.parambyname('art_codice').asstring := nodoptr.codice;
    cla.open;

    if not cla.isempty then
    begin
      while not cla.eof do
      begin
        costo := 0;

        opc.parambyname('progressivo').asinteger := progressivo;
        opc.parambyname('sequenza').asstring := cla.fieldbyname('sequenza').asstring;
        opc.parambyname('fas_codice').asstring := cla.fieldbyname('fas_codice').asstring;
        opc.parambyname('mac_codice').asstring := cla.fieldbyname('mac_codice').asstring;
        if opt.parambyname('avanzamento_fasi').asstring = 'si' then
        begin
          opc.parambyname('frn_codice').asstring := cla.fieldbyname('frn_codice').asstring;
        end
        else
        begin
          opc.parambyname('frn_codice').asstring := '';
        end;
        opc.parambyname('note').asstring := cla.fieldbyname('note').asstring;

        if cla.fieldbyname('fas_tipo_operazione').asstring = 'globale' then
        begin
          quantita := cla.fieldbyname('quantita').asfloat;
        end
        else if cla.fieldbyname('fas_tipo_operazione').asstring = 'singola' then
        begin
          if cla.fieldbyname('operatore').asstring = '*' then
          begin
            quantita := arrotonda(nodoptr.quantita * cla.fieldbyname('quantita').asfloat, 4);
          end
          else
          begin
            quantita := arrotonda(nodoptr.quantita / cla.fieldbyname('quantita').asfloat);
          end;
        end
        else if cla.fieldbyname('fas_tipo_operazione').asstring = 'ignora' then
        begin
          quantita := 0;
        end;
        opc.parambyname('quantita').asfloat := quantita;

        opc.parambyname('costo_totale').asfloat :=
          calfas.calcola_costo(cla.fieldbyname('frn_codice').asstring,
          opt.parambyname('art_codice').asstring, opt.parambyname('art_codice_finito').asstring,
          cla.fieldbyname('fas_codice').asstring, cla.fieldbyname('mac_codice').asstring,
          opt.parambyname('data_documento').asdatetime, quantita);

        opc.execsql;

        cla.next;
      end;
    end;

    riga := 0;
  end
  else
  begin
    progressivo := opt_progressivo;
    riga := opr_riga;
  end;

  // righe
  nodo := nodo.getfirstchild;
  while nodo <> nil do
  begin
    nodoptr := nodo.data;

    if nodo.haschildren and (tipo_esplosione = 'tutti i livelli fino alle materie prime') then
    begin
      // salta semilavorato
    end
    else
    begin
      read_tabella(arc.arcdit, 'art', 'codice', nodoptr.codice, 'tum_codice,tipo_articolo');
      if archivio.fieldbyname('tipo_articolo').asstring <> 'livello distinta' then
      begin
        riga := riga + 1;

        opr.close;

        opr.parambyname('progressivo').asinteger := progressivo;
        opr.parambyname('riga').asinteger := riga;
        opr.parambyname('art_codice').asstring := nodoptr.codice;
        opr.parambyname('quantita').asfloat := nodoptr.quantita;
        if nodo.haschildren then
        begin
          opr.parambyname('semilavorato').asstring := 'si';
        end
        else
        begin
          opr.parambyname('semilavorato').asstring := 'no';
        end;

        opr.parambyname('costo_unitario').asfloat := nodoptr.prezzo;
        if (arc.dit.fieldbyname('assegna_costo_gesordp').asstring = 'si') and
          (nodoptr.prezzo = 0) and (opt.parambyname('frn_codice').asstring = '') then
        begin
          opr.parambyname('costo_unitario').asfloat := costo_unitario(nodoptr.codice);
        end;

        opr.parambyname('note').asstring := nodoptr.note;
        if nodoptr.tma_codice <> '' then
        begin
          opr.parambyname('tma_codice').asstring := nodoptr.tma_codice;
        end
        else
        begin
          opr.parambyname('tma_codice').asstring := opt.parambyname('tma_codice_materie_prime').asstring;
          if opr.parambyname('tma_codice').asstring = '' then
          begin
            opr.parambyname('tma_codice').asstring := tma_codice_materie_prime;
          end;
        end;
        opr.parambyname('assistenza_tecnica').asstring := nodoptr.assistenza_tecnica;
        opr.parambyname('sequenza_dsb').asinteger := nodoptr.sequenza;

        if arc.dit.fieldbyname('assegnazione_produzione').asstring = 'si' then
        begin
          mag_approntato.close;
          mag_approntato.parambyname('art_codice').asstring := opr.parambyname('art_codice').asstring;
          mag_approntato.parambyname('tma_codice').asstring := opr.parambyname('tma_codice').asstring;
          mag_approntato.open;
          if (mag_approntato.fieldbyname('esistenza').asfloat - mag_approntato.fieldbyname('approntato').asfloat) >=
            opr.parambyname('quantita').asfloat then
          begin
            opr.parambyname('quantita_approntata').asfloat := opr.parambyname('quantita').asfloat;
          end
          else
          begin
            opr.parambyname('quantita_approntata').asfloat := mag_approntato.fieldbyname('esistenza').asfloat -
              mag_approntato.fieldbyname('approntato').asfloat;
          end;
        end
        else
        begin
          opr.parambyname('quantita_approntata').asfloat := 0;
        end;

        opr.execsql;
      end;
    end;

    if nodo.haschildren then
    begin
      read_tabella(opc_data, progressivo);
      read_tabella(arc.arcdit, 'art', 'codice', nodoptr.codice, 'tipo_articolo');
      if (tipo_esplosione = 'generazione ordini per tutti i semilavorati') and
        (archivio.fieldbyname('tipo_articolo').asstring <> 'livello distinta') then
      begin
        crea_opt(nodo, progressivo, riga, art_codice_finito, false, v_data_consegna.date);
      end
      else
      begin
        crea_opt(nodo, progressivo, riga, art_codice_finito, true, v_data_consegna.date);
        ultima_riga.close;
        ultima_riga.parambyname('progressivo').asinteger := progressivo;
        ultima_riga.open;
        riga := ultima_riga.fieldbyname('riga').asinteger;
      end;
    end;

    nodo := nodo.getnextsibling;
  end;

  freeandnil(ultima_riga);
  freeandnil(opt);
  freeandnil(opr);
  freeandnil(opc);
end;

procedure tcreordp.v_cruscottoclick(sender: tobject);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    esegui_programma('CRUART', nodoptr.codice, true);
  end;
end;

procedure tcreordp.v_distinta_baseclick(sender: tobject);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    esegui_programma('GESDSB', vararrayof([nodoptr.codice, 0, '']), true);
  end;
end;

procedure tcreordp.v_grigliachange(sender: tobject; node: ttreenode);
var
  nodoptr: ^tnodo;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  v_art_codice_nodo.text := nodoptr.codice;
  v_art_descrizione_nodo.text := nodoptr.descrizione;
  v_quantita_nodo.value := nodoptr.quantita;
  v_esistenza_tma.value := nodoptr.esistenza_tma;
  v_approntato_tma.value := nodoptr.approntato_tma;
  v_esistenza.value := nodoptr.esistenza;
  v_esistenza_principale.value := nodoptr.esistenza_principale;
  v_tma_codice_finito.text := tma_codice_finiti;
  v_tma_codice_materia_prima.text := nodoptr.tma_codice;
  if nodoptr.tma_codice = '' then
  begin
    v_tma_codice_materia_prima.text := tma_codice_materie_prime;
  end;

  if node.haschildren then
  begin
    abilita_campo(tool_inserimento_excel);
  end
  else
  begin
    disabilita_campo(tool_inserimento_excel);
  end;
end;

procedure tcreordp.v_grigliaenter(sender: tobject);
begin
  inherited;
  v_equivalenti.enabled := true;
  v_equivalenti_filtro.enabled := true;
  v_esplodi.enabled := true;
  v_inserisci.enabled := true;
  v_inserisci_sottoelemento.enabled := true;
  v_cancella.enabled := true;
  v_crea_ordini.enabled := true;
  v_distinta_base.enabled := true;
  v_espandi.enabled := true;
  v_comprimi.enabled := true;
  v_cancella_sottoelementi.enabled := true;
  if tipo_esplosione = 'solo primo livello' then
  begin
    v_esplodi_tutto.enabled := false;
  end
  else
  begin
    v_esplodi_tutto.enabled := true;
  end;
  v_modifica_quantita.enabled := true;
  v_cruscotto.enabled := true;
  v_varia_quantita.enabled := true;
end;

procedure tcreordp.v_grigliagetimageindex(sender: tobject; node: ttreenode);
var
  nodoptr: ^tnodo;
  quantita: double;
begin
  inherited;

  nodoptr := node.data;

  quantita := nodoptr.quantita;
  if not(node.haschildren) then
  begin
    if pos('distinta base', node.text) > 0 then
    begin
      node.imageindex := 13;
      node.selectedindex := 13;
      node.stateindex := -1;
    end
    else
    begin
      if nodoptr.esistenza_tma >= quantita then
      begin
        node.imageindex := 40;
        node.selectedindex := 40;
        node.stateindex := -1;
      end
      else if nodoptr.esistenza >= quantita then
      begin
        node.imageindex := 42;
        node.selectedindex := 42;
        node.stateindex := -1;
      end
      else
      begin
        node.imageindex := 41;
        node.selectedindex := 41;
        node.stateindex := -1;
      end;
    end;
  end
  else
  begin
    if nodoptr.esistenza_tma >= nodoptr.quantita then
    begin
      node.imageindex := 54;
      node.selectedindex := 54;
      node.stateindex := -1;
    end
    else if nodoptr.esistenza >= nodoptr.quantita then
    begin
      node.imageindex := 56;
      node.selectedindex := 56;
      node.stateindex := -1;
    end
    else
    begin
      node.imageindex := 55;
      node.selectedindex := 55;
      node.stateindex := -1;
    end;
  end;
end;

procedure tcreordp.v_inserisciclick(sender: tobject);
var
  pr: tcreordp01;
begin
  inherited;

  if v_griglia.selected.parent = nil then
  begin
    messaggio(200, 'non è possibile creare un elemento a questo livello' + #13 +
      'inserire un sottoelemento');
  end
  else
  begin
    pr := tcreordp01.create(nil);
    if pr.esegui_form then
    begin
      pr.showmodal;

      if (pr.v_art_codice.text <> '') and (pr.v_quantita.value <> 0) then
      begin
        mag.close;
        mag.parambyname('art_codice').asstring := pr.v_art_codice.text;
        mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
        mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
        mag.open;

        inserisci_treeview(0, pr.v_art_codice.text, pr.v_art_descrizione.text, '', '', pr.v_quantita.value, 0,
          mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
          mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected.parent);
      end
      else
      begin
        messaggio(200, 'mancano codice articolo o quantità');
      end;
    end;
    pr.free;
  end;
end;

procedure tcreordp.v_inserisci_sottoelementoclick(sender: tobject);
var
  pr: tcreordp01;
begin
  inherited;

  if v_griglia.selected.haschildren then
  begin
    messaggio(200, 'l''articolo è già esploso');
  end
  else
  begin
    if controllo_livello then
    begin
      pr := tcreordp01.create(nil);
      if pr.esegui_form then
      begin
        pr.showmodal;

        if (pr.v_art_codice.text <> '') and (pr.v_quantita.value <> 0) then
        begin
          mag.close;
          mag.parambyname('art_codice').asstring := pr.v_art_codice.text;
          mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
          mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
          mag.open;

          inserisci_treeview(0, pr.v_art_codice.text, pr.v_art_descrizione.text, '', '', pr.v_quantita.value, 0,
            mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
            mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected);
        end
        else
        begin
          messaggio(200, 'mancano codice articolo o quantità');
        end;
      end;
      pr.free;
    end;
  end;
end;

procedure tcreordp.v_ovr_progressivoenter(sender: tobject);
begin
  inherited;
  visarc_filtro_01 := 'evaso';
  visarc_filtro_02 := 'annullato';
end;

procedure tcreordp.v_ovr_progressivoexit(sender: tobject);
begin
  inherited;
  ovr_progressivo_controllo(true);
end;

procedure tcreordp.v_ovr_rigaenter(sender: tobject);
begin
  inherited;
  visarc_filtro_01 := v_ovr_progressivo.value;
end;

procedure tcreordp.v_ovr_rigaexit(sender: tobject);
var
  stringa: string;
begin
  inherited;
  ovr_riga_controllo(true);

  if controllo then
  begin
    v_art_codice.text := ovr.fieldbyname('art_codice').asstring;
    art_codice_controllo(false);
    v_quantita.value := ovr.fieldbyname('quantita').asfloat;

    if ovr.fieldbyname('numero').asinteger <> 0 then
    begin
      if ovr.fieldbyname('numero').asinteger = 1 then
      begin
        stringa := 'è già stato emesso 1 ordine di produzione ' + #13 +
          'per la quantità di ' + ovr.fieldbyname('quantita_produzione').asstring;
      end
      else
      begin
        stringa := 'sono già stati emessi ' + ovr.fieldbyname('numero').asstring +
          ' ordini di produzione ' + #13 +
          'per la quantità di ' + ovr.fieldbyname('quantita_produzione').asstring;
      end;
      if messaggio(300, stringa + #13 + #13 + 'conferma l''operazione') <> 1 then
      begin
        close;
      end;
    end;
  end;
end;

procedure tcreordp.formcreate(sender: tobject);
begin
  //modifica
  promau_inizializza_variabili;

  art.close;
  art.sql.clear;
  art.sql.add('select concat(trim(art.descrizione1), '' '', art.descrizione2) descrizione, art.tcn_codice, art.tum_codice,');
  art.sql.add('art.tum_codice_dsb, art.operazione_coefficiente_dsb, art.tum_coefficiente_dsb, frn.descrizione1 frn_descrizione1,');
  art.sql.add('art.tcm_codice, art.tgm_codice, art.a31art_codice_stampo ');
  art.sql.add('from art');
  art.sql.add('left join frn on frn.codice=art.frn_codice');
  art.sql.add('where art.codice = :codice');

  //modifica fine
  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);
  tipinv := ttipinv.create;
  przinv := tprzinv.create;
  //cicli := tcicli.create;
  calfas := tcalfas.create;

  inherited;

  v_top_codice.text := arc.dit.fieldbyname('top_codice').asstring;
  v_top_codice_controllo(false);

  if arc.dit.fieldbyname('utilizzo_varianti').asstring = 'no' then
  begin
    disabilita_campo(v_tvr_codice);
  end;
end;

procedure tcreordp.formdestroy(sender: tobject);
begin
  inherited;
  freeandnil(cerca_prezzi);
  freeandnil(tipinv);
  freeandnil(przinv);
  freeandnil(calfas);
end;

procedure tcreordp.formkeydown(sender: tobject; var key: word; shift: tshiftstate);
begin
  if (parte_attiva = 'pannello') and
    (key = vk_return) and (shift = [ssctrl]) then
  begin
    fuoco(v_conferma);
  end
  else if screen.activecontrol = v_griglia then
  begin
    if (key = vk_f1) and (shift = []) then
    begin
      v_distinta_baseclick(nil);
    end
    else if (key = vk_f2) and (shift = []) then
    begin
      v_equivalenticlick(nil);
    end
    else if (key = vk_f3) and (shift = []) then
    begin
      if controllo_livello then
      begin
        v_esplodiclick(nil);
      end;
    end
    else if (key = vk_f4) and (shift = []) then
    begin
      v_inserisciclick(nil);
    end
    else if (key = vk_f5) and (shift = []) then
    begin
      if controllo_livello then
      begin
        v_inserisci_sottoelementoclick(nil);
      end;
    end
    else if (key = vk_f6) and (shift = []) then
    begin
      v_cancellaclick(nil);
    end
    else if (key = vk_f7) and (shift = []) then
    begin
      v_cancella_sottoelementiclick(nil);
    end
    else if (key = vk_f8) and (shift = []) then
    begin
      if tipo_esplosione <> 'solo primo livello' then
      begin
        v_esplodi_tuttoclick(nil);
      end;
    end
    else if (key = vk_f9) and (shift = []) then
    begin
      v_modifica_quantitaclick(nil);
    end
    else if (key = vk_f11) and (shift = []) then
    begin
      v_cruscottoclick(nil);
    end
    else if (key = vk_f12) and (shift = []) then
    begin
      v_crea_ordiniclick(nil);
    end
    else
    begin
      inherited;
    end;
  end
  else
  begin
    inherited;
  end;
end;

procedure tcreordp.formshow(sender: tobject);
begin
  if arc.dit.fieldbyname('usa_top_codice').asstring = 'no' then
  begin
    v_top_codice.enabled := false;
  end;

  v_data_consegna.date := date;

  if parametri_extra_programma_chiamato[0] <> null then
  begin
    v_selezione.itemindex := 1;
    v_ovr_progressivo.value := parametri_extra_programma_chiamato[0];
    v_ovr_riga.value := parametri_extra_programma_chiamato[1];
    v_art_codice.text := parametri_extra_programma_chiamato[2];
    v_quantita.value := parametri_extra_programma_chiamato[3];
    lot_codice_passato := parametri_extra_programma_chiamato[4];
    tma_codice_finiti_passato := parametri_extra_programma_chiamato[5];
    formula_passata := parametri_extra_programma_chiamato[6];
    cms_codice := parametri_extra_programma_chiamato[7];
    cmt_codice := parametri_extra_programma_chiamato[8];
    v_data_consegna.date := parametri_extra_programma_chiamato[9];
    if cms_codice <> '' then
    begin
      tool_commessa.visible := false;
    end;
    if parametri_extra_programma_chiamato[10] <> null then
    begin
      cli_codice := parametri_extra_programma_chiamato[10];
    end
    else
    begin
      cli_codice := '';
    end;

    //modifica
    if parametri_extra_programma_chiamato[19] <> null then
    begin
      v_top_codice.text := parametri_extra_programma_chiamato[19];
      v_top_codice_controllo(false);
    end;
    //modifica fine

    ovr_progressivo_controllo(false);
    ovr_riga_controllo(false);
    art_codice_controllo(false);
  end;

  inherited;
end;

procedure tcreordp.art_codice_controllo(blocco: boolean);
begin
  if v_art_codice.enabled then
  begin
    tabella_controllo(false, art_01, v_art_codice, blocco, nil, nil, nil);
  end
  else
  begin
    tabella_controllo(true, art_01, v_art_codice, blocco, nil, nil, nil);
  end;
end;

procedure tcreordp.ovr_progressivo_controllo(blocco: boolean);
begin
  if v_ovr_progressivo.enabled then
  begin
    tabella_controllo(false, ovt, v_ovr_progressivo, blocco, nil, nil, nil);
  end
  else
  begin
    tabella_controllo(true, ovt, v_ovr_progressivo, blocco, nil, nil, nil);
  end;
  (*
    if controllo and blocco and not ovt.isempty then
    begin
    if v_data_consegna.date = 0 then
    begin
    v_data_consegna.date := ovt.fieldbyname('data_consegna').asdatetime;
    end;
    end;
  *)
end;

procedure tcreordp.ovr_riga_controllo(blocco: boolean);
var
  codice: variant;
begin
  tabella_controllo(true, ovr, v_ovr_progressivo, v_ovr_riga, blocco, nil, nil, nil);
  if controllo then
  begin
    if blocco and v_ovr_riga.enabled and ovr.isempty then
    begin
      codice := 0;
      esegui_visarc(arc.arcdit, 'OVR', 'OVR', codice, v_ovr_progressivo.value, '', '', '', '', '');
      if codice <> 0 then
      begin
        v_ovr_riga.value := codice;
        read_tabella(ovr, vararrayof([v_ovr_progressivo.value, v_ovr_riga.value]));
      end;
    end;
    if blocco and not ovr.isempty then
    begin
      if v_data_consegna.date = 0 then
      begin
        v_data_consegna.date := ovr.fieldbyname('data_consegna').asdatetime;
      end;
    end;
  end;
end;

procedure tcreordp.pannello_commessaenter(sender: tobject);
begin
  self.windowstate := wsmaximized;

  parte_attiva := 'pannello';

  inherited;

  tool_commessa.enabled := true;

  if v_ovr_progressivo.value <> 0 then
  begin
    fuoco(v_top_codice);
  end;
end;

procedure tcreordp.pannello_commessaexit(sender: tobject);
begin
  inherited;

  parte_attiva := '';

  art_codice_controllo(true);
  ovr_progressivo_controllo(true);
  ovr_riga_controllo(true);
  v_top_codice_controllo(true);
  v_tvr_codice_controllo(true);
  assegna_top_codice;

  if avanzamento_fasi = 'si' then
  begin
    v_avanzamento_fasi.checked := true;
  end;

  if fasi_non_sequenziali = 'si' then
  begin
    v_fasi_non_sequenziali.checked := true;
  end;

  (*
    if (tipo_esplosione <> 'tutti i livelli fino alle materie prime') and
    (tipo_esplosione <> 'generazione ordini per tutti i semilavorati') then
  *)

  if tipo_esplosione = 'nessuno' then
  begin
    messaggio(200, 'per operare con questa funzione è necessario che la modalità di generazione' + #13 +
      'degli ordini di produzione impostata in anagrafica ditta o nel codice documento sia:' + #13 +
      '[solo primo livello] oppure' + #13 +
      '[tutti i livelli fino alle materie prime] oppure' + #13 +
      '[generazione ordini per tutti i semilavorati]');
    close;
  end
  else
  begin
    tool_commessa.enabled := false;
  end;
end;

procedure tcreordp.tool_commessaclick(sender: tobject);
var
  pr: tcreordp02;
begin
  inherited;

  pr := tcreordp02.create(nil);
  if pr.esegui_form then
  begin
    pr.cli_codice := cli_codice;
    pr.showmodal;
    if (pr.cms_codice <> '') and (pr.cmt_codice <> '') then
    begin
      cms_codice := pr.cms_codice;
      cmt_codice := pr.cmt_codice;
    end;
  end;
  pr.free;
end;

procedure TCREORDP.tool_inserimento_excelClick(Sender: TObject);
var
  i: word;
  art_codice, descrizione: string;
  quantita: double;
  nodoptr: ^tnodo;
begin
  inherited;

  nodoptr := v_griglia.selected.data;

  opendialog.defaultext := 'xls';
  opendialog.filter := 'file Excel (*.xlsx)|*.xlsx';
  opendialog.initialdir := cartella_file;
  opendialog.filename := '';
  opendialog.execute;

  if opendialog.filename <> '' then
  begin
    arc.xlswrite.clear;
    arc.xlswrite.filename := opendialog.filename;
    arc.xlswrite.read;

    for i := 0 to arc.xlswrite.sheets[0].lastrow do
    begin
      art_codice := arc.xlswrite.sheets[0].asstring[0, i];
      quantita := arc.xlswrite.sheets[0].asfloat[1, i] * nodoptr.quantita;
      descrizione := arc.xlswrite.sheets[0].asstring[2, i];

      if (read_tabella(art, art_codice)) and (quantita <> 0) then
      begin

        mag.close;
        mag.parambyname('art_codice').asstring := art_codice;
        mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
        mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
        mag.open;

        inserisci_treeview(0, art_codice, art.fieldbyname('descrizione').asstring, descrizione, '', quantita, 0,
          mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat, mag.fieldbyname('esistenza').asfloat,
          mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected);
      end
      else
      begin
        messaggio(200, 'mancano codice articolo o quantità');
      end;
    end;

    messaggio(100, 'importazione eseguita');
  end;
end;

procedure tcreordp.v_modifica_quantitaclick(sender: tobject);
var
  pr: tcreordp01;
  nodoptr: ^tnodo;
begin
  inherited;

  nodoptr := v_griglia.selected.data;

  pr := tcreordp01.create(nil);
  if pr.esegui_form then
  begin
    pr.art_codice := nodoptr.codice;
    pr.quantita := nodoptr.quantita;
    pr.showmodal;

    if (pr.v_quantita.value <> 0) then
    begin
      nodoptr.quantita := pr.v_quantita.value;
      v_griglia.selected.data := nodoptr;
      v_griglia.selected.text := assegna_descrizione(nodoptr);
    end;
  end;
  pr.free;

  v_grigliachange(v_griglia, v_griglia.selected);
end;

procedure tcreordp.v_equivalenticlick(sender: tobject);
var
  nodoptr: ^tnodo;
  nodo: ttreenode;
  pr: tvisequ;
  sostituisci_struttura: boolean;
begin
  inherited;
  nodoptr := v_griglia.selected.data;
  if nodoptr <> nil then
  begin
    pr := tvisequ.create(nil);
    if pr.esegui_form then
    begin
      pr.codice := nodoptr.codice;
      pr.showmodal;

      if pr.codice <> nodoptr.codice then
      begin
        sostituisci_struttura := false;
        dsb.close;
        dsb.parambyname('art_codice_padre').asstring := pr.codice;
        dsb.open;
        if not dsb.isempty then
        begin
          if messaggio(300, 'si vuole sostituire il componente con quelli della distinta base dell''articolo selezionato?') = 1 then
          begin
            sostituisci_struttura := true;
          end;
        end;

        if not sostituisci_struttura then
        begin
          mag.close;
          mag.parambyname('art_codice').asstring := pr.codice;
          mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
          mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
          mag.open;

          read_tabella(art, pr.codice);
          nodoptr.codice := pr.codice;
          nodoptr.descrizione := art.fieldbyname('descrizione').asstring;
          nodoptr.tum_codice := art.fieldbyname('tum_codice').asstring;
          nodoptr.tum_codice_dsb := art.fieldbyname('tum_codice_dsb').asstring;
          nodoptr.esistenza_tma := mag.fieldbyname('esistenza_tma').asfloat;
          nodoptr.approntato_tma := mag.fieldbyname('approntato_tma').asfloat;
          nodoptr.esistenza := mag.fieldbyname('esistenza').asfloat;
          nodoptr.esistenza_principale := mag.fieldbyname('esistenza_principale').asfloat;
          if art.fieldbyname('tcn_codice').asstring <> '' then
          begin
            nodoptr.assistenza_tecnica := 'si';
          end
          else
          begin
            nodoptr.assistenza_tecnica := 'no';
          end;
          nodoptr.sequenza := 0;

          v_griglia.selected.data := nodoptr;
          v_griglia.selected.text := assegna_descrizione(nodoptr);
        end
        else
        begin
          nodo := v_griglia.selected.parent;
          v_griglia.items.delete(v_griglia.selected);
          dsb.first;
          while not dsb.eof
            do
          begin
            mag.close;
            mag.parambyname('art_codice').asstring := dsb.fieldbyname('art_codice_figlio').asstring;
            mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
            mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
            mag.open;

            read_tabella(art, dsb.fieldbyname('art_codice_figlio').asstring);
            inserisci_treeview(0, dsb.fieldbyname('art_codice_figlio').asstring,
              art.fieldbyname('descrizione').asstring, '', dsb.fieldbyname('tma_codice').asstring,
              dsb.fieldbyname('quantita').asfloat * v_quantita.value,
              dsb.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat,
              mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat, nodo);

            dsb.next;
          end;
        end;
      end;
    end;
    pr.free;

    v_grigliachange(v_griglia, v_griglia.selected);
  end;
end;

procedure TCREORDP.v_equivalenti_filtroClick(Sender: TObject);
var
  pr: tanaequ;
  nodoptr: ^tnodo;
begin
  pr := tanaequ.create(nil);
  if pr.esegui_form then
  begin
    nodoptr := v_griglia.selected.data;
    pr.art_codice := nodoptr.codice;
    if nodoptr.tma_codice <> '' then
    begin
      pr.tma_codice := nodoptr.tma_codice;
    end
    else
    begin
      pr.tma_codice := tma_codice_materie_prime;
    end;
    pr.art_codice_filtro := v_art_codice.text;
    pr.showmodal;
    if pr.art_codice_assegnato <> '' then
    begin
      mag.close;
      mag.parambyname('art_codice').asstring := pr.art_codice_assegnato;
      mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
      mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
      mag.open;

      read_tabella(art, pr.art_codice_assegnato);
      nodoptr.codice := pr.art_codice_assegnato;
      nodoptr.descrizione := art.fieldbyname('descrizione').asstring;
      nodoptr.tum_codice := art.fieldbyname('tum_codice').asstring;
      nodoptr.tum_codice_dsb := art.fieldbyname('tum_codice_dsb').asstring;
      nodoptr.esistenza_tma := mag.fieldbyname('esistenza_tma').asfloat;
      nodoptr.approntato_tma := mag.fieldbyname('approntato_tma').asfloat;
      nodoptr.esistenza := mag.fieldbyname('esistenza').asfloat;
      nodoptr.esistenza_principale := mag.fieldbyname('esistenza_principale').asfloat;
      if art.fieldbyname('tcn_codice').asstring <> '' then
      begin
        nodoptr.assistenza_tecnica := 'si';
      end
      else
      begin
        nodoptr.assistenza_tecnica := 'no';
      end;
      nodoptr.sequenza := 0;

      v_griglia.selected.data := nodoptr;
      v_griglia.selected.text := assegna_descrizione(nodoptr);
    end;
  end;
  pr.free;
end;

procedure tcreordp.v_espandiclick(sender: tobject);
begin
  inherited;
  v_griglia.fullexpand;
end;

procedure tcreordp.v_esplodiclick(sender: tobject);
var
  prosegui: boolean;
  nodoptr: ^tnodo;

  pr: tvisequ;
  art_codice, art_descrizione: string;
  i: word;
  lista_art_codice, lista_art_descrizione, lista_quantita: tstringlist;
begin
  inherited;

  lista_art_codice := tstringlist.create;
  lista_art_descrizione := tstringlist.create;
  lista_quantita := tstringlist.create;

  if v_griglia.selected.haschildren then
  begin
    messaggio(200, 'l''articolo è già esploso');
  end
  else
  begin
    nodoptr := v_griglia.selected.data;

    if controllo_livello then
    begin
      prosegui := true;
      read_tabella(arc.arcdit, 'art', 'codice', nodoptr.codice, 'materia_prima');
      if archivio.fieldbyname('materia_prima').asstring = 'si' then
      begin
        if tipo_esplosione <> 'solo primo livello' then
        begin
          if messaggio(300, 'l''articolo [' + nodoptr.codice + '] ' +
            'è stato definito come materia prima' + #13 +
            'conferma per NON effettuare l''esplosione dei componenti') = 1 then
          begin
            prosegui := false;
          end;
        end
        else
        begin
          prosegui := false;
        end;
      end;

      if prosegui then
      begin
        dsb.close;
        dsb.parambyname('art_codice_padre').asstring := nodoptr.codice;
        dsb.open;
        while not dsb.eof do
        begin
          art_codice := dsb.fieldbyname('art_codice_figlio').asstring;
          art_descrizione := dsb.fieldbyname('art_descrizione').asstring;

          lista_art_codice.clear;
          lista_art_descrizione.clear;
          lista_quantita.clear;

          //  varianti
          if not assegna_variante(v_tvr_codice.text, dsb.fieldbyname('art_codice_padre').asstring,
            dsb.fieldbyname('art_codice_figlio').asstring, dsb.fieldbyname('sequenza').asinteger,
            lista_art_codice, lista_art_descrizione, lista_quantita) then
          begin
            lista_art_codice.add(art_codice);
            lista_art_descrizione.add(art_descrizione);
            lista_quantita.add(dsb.fieldbyname('quantita').asstring);
          end;
          //  varianti fine

          for i := 0 to lista_art_codice.count - 1 do
          begin
            if strtofloat(lista_quantita[i]) <> 0 then
            begin
              if arc.dit.fieldbyname('utilizzo_equivalenti').asstring = 'si' then
              begin
                if read_tabella(equ, lista_art_codice[i]) then
                begin
                  pr := tvisequ.create(nil);
                  try
                    if pr.esegui_form then
                    begin
                      pr.codice := lista_art_codice[i];
                      pr.showmodal;
                      if pr.codice <> lista_art_codice[i] then
                      begin
                        lista_art_codice[i] := pr.codice;
                        read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'descrizione1, descrizione2');
                        art_descrizione := archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring;
                      end;
                    end;
                  finally
                    freeandnil(pr);
                  end;
                end;
              end;

              mag.close;
              mag.parambyname('art_codice').asstring := lista_art_codice[i];
              if dsb.fieldbyname('tma_codice').asstring <> '' then
              begin
                mag.parambyname('tma_codice').asstring := dsb.fieldbyname('tma_codice').asstring;
              end
              else
              begin
                mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
              end;
              mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
              mag.open;

              inserisci_treeview(dsb.fieldbyname('sequenza').asinteger,
                lista_art_codice[i], lista_art_descrizione[i], dsb.fieldbyname('descrizione').asstring,
                dsb.fieldbyname('tma_codice').asstring, arrotonda(nodoptr.quantita * strtofloat(lista_quantita[i]), 4),
                dsb.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat,
                mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat, v_griglia.selected);
            end;
          end;

          dsb.next;
        end;
        v_griglia.selected.expand(false);

        if dsb.isempty then
        begin
          v_griglia.selected.haschildren := false;
        end
        else
        begin
          v_griglia.selected.haschildren := true;
        end;
      end
      else
      begin
        v_griglia.selected.haschildren := false;
      end;
    end;
  end;

  freeandnil(lista_art_codice);
  freeandnil(lista_art_descrizione);
  freeandnil(lista_quantita);
end;

procedure tcreordp.v_esplodi_tuttoclick(sender: tobject);
var
  nodoptr: ^tnodo;

  art_codice: string;
  pr: tscedsbequ;
begin
  inherited;

  v_griglia.select(v_griglia.items.getfirstnode);
  nodoptr := v_griglia.selected.data;

  art_codice := nodoptr.codice;

  if read_tabella(dsb_equ, art_codice) then
  begin
    if messaggio(300, 'l''articolo da produrre [' + art_codice + '] ha articoli equivalenti con distinta base' + slinebreak +
      'confermare per selezionare la distinta base di uno degli equivalenti') = 1 then
    begin
      pr := tscedsbequ.create(nil);
      pr.dsb := dsb_equ;
      pr.showmodal;
      if pr.art_codice <> '' then
      begin
        art_codice := pr.art_codice;
      end;
      freeandnil(pr);
    end;
  end;

  if ha_figli(art_codice) and not v_griglia.selected.haschildren then
  begin
    v_griglia.selected.haschildren := true;
    esplodi_dsb(art_codice, nodoptr.quantita, v_griglia.selected);
    v_griglia.fullexpand;
    v_griglia.select(v_griglia.items.getfirstnode);
  end
  else
  begin
    if not ha_figli(art_codice) then
    begin
      messaggio(200, 'articolo senza distinta base');
    end
    else
    begin
      messaggio(200, 'distinta base già esplosa per l''articolo: ' + art_codice);
    end;
  end;
end;

procedure tcreordp.esplodi_dsb(art_codice_dsb: string; quantita: double; elemento_selezionato: ttreenode);
var
  prosegui: boolean;
  nodo, nodo_creato: ttreenode;
  nodoptr: ^tnodo;

  pr: tvisequ;
  art_codice, art_descrizione: string;

  i: word;
  lista_art_codice, lista_art_descrizione, lista_quantita: tstringlist;
begin
  lista_art_codice := tstringlist.create;
  lista_art_descrizione := tstringlist.create;
  lista_quantita := tstringlist.create;

  dsb.close;
  dsb.parambyname('art_codice_padre').asstring := art_codice_dsb;
  dsb.open;
  while not dsb.eof do
  begin
    art_codice := dsb.fieldbyname('art_codice_figlio').asstring;
    art_descrizione := dsb.fieldbyname('art_descrizione').asstring;

    if arc.dit.fieldbyname('utilizzo_equivalenti').asstring = 'si' then
    begin
      if read_tabella(equ, art_codice) then
      begin
        pr := tvisequ.create(nil);
        try
          if pr.esegui_form then
          begin
            pr.codice := art_codice;
            pr.showmodal;
            if pr.codice <> art_codice then
            begin
              art_codice := pr.codice;
              read_tabella(arc.arcdit, 'art', 'codice', art_codice, 'descrizione1, descrizione2');
              art_descrizione := archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring;
            end;
          end;
        finally
          freeandnil(pr);
        end;
      end;
    end;

    mag.close;
    mag.parambyname('art_codice').asstring := art_codice;
    if dsb.fieldbyname('tma_codice').asstring <> '' then
    begin
      mag.parambyname('tma_codice').asstring := dsb.fieldbyname('tma_codice').asstring;
    end
    else
    begin
      mag.parambyname('tma_codice').asstring := tma_codice_materie_prime;
    end;
    mag.parambyname('tma_codice_principale').asstring := arc.dit.fieldbyname('tma_codice_principale').asstring;
    mag.open;

    lista_art_codice.clear;
    lista_art_descrizione.clear;
    lista_quantita.clear;

    //  varianti
    if not assegna_variante(v_tvr_codice.text, dsb.fieldbyname('art_codice_padre').asstring,
      dsb.fieldbyname('art_codice_figlio').asstring, dsb.fieldbyname('sequenza').asinteger,
      lista_art_codice, lista_art_descrizione, lista_quantita) then
    begin
      lista_art_codice.add(art_codice);
      lista_art_descrizione.add(art_descrizione);
      lista_quantita.add(dsb.fieldbyname('quantita').asstring);
    end;
    //  varianti fine

    for i := 0 to lista_art_codice.count - 1 do
    begin
      if strtofloat(lista_quantita[i]) <> 0 then
      begin
        nodo_creato := inserisci_treeview(dsb.fieldbyname('sequenza').asinteger,
          lista_art_codice[i], lista_art_descrizione[i], dsb.fieldbyname('descrizione').asstring,
          dsb.fieldbyname('tma_codice').asstring, arrotonda(quantita * strtofloat(lista_quantita[i]), 4),
          dsb.fieldbyname('prezzo').asfloat, mag.fieldbyname('esistenza_tma').asfloat, mag.fieldbyname('approntato_tma').asfloat,
          mag.fieldbyname('esistenza').asfloat, mag.fieldbyname('esistenza_principale').asfloat, elemento_selezionato);

        if ha_figli(lista_art_codice[i]) then
        begin
          prosegui := true;
          read_tabella(arc.arcdit, 'art', 'codice', lista_art_codice[i], 'materia_prima');
          if archivio.fieldbyname('materia_prima').asstring = 'si' then
          begin
            if messaggio(300, 'l''articolo [' + art_codice + '] ' +
              'è stato definito come materia prima' + #13 +
              'conferma per NON effettuare l''esplosione dei componenti') = 1 then
            begin
              prosegui := false;
            end;
          end;

          if prosegui then
          begin
            nodo_creato.haschildren := true;
          end
          else
          begin
            nodo_creato.haschildren := false;
          end;
        end
        else
        begin
          nodo_creato.haschildren := false;
        end;

      end;
    end;

    dsb.next;
  end;

  nodo := elemento_selezionato.getfirstchild;
  while nodo <> nil do
  begin
    nodoptr := nodo.data;
    if nodo.haschildren then
    begin
      esplodi_dsb(nodoptr.codice, nodoptr.quantita, nodo);
    end;
    nodo := nodo.getnextsibling;
  end;

  freeandnil(lista_art_codice);
  freeandnil(lista_art_descrizione);
  freeandnil(lista_quantita);
end;

procedure tcreordp.visualizza_stampa_elabora;
begin
  art_codice_controllo(false);
  ovr_progressivo_controllo(false);
  ovr_riga_controllo(false);
  v_top_codice_controllo(false);
  v_tvr_codice_controllo(false);
end;

function tcreordp.inserisci_treeview(sequenza: integer; art_codice, art_descrizione, note, tma_codice: string;
  quantita, prezzo, esistenza_tma, approntato_tma, esistenza, esistenza_principale: double; treepadre: ttreenode): ttreenode;
var
  nodoptr: pnodo;
begin
  read_tabella(art, art_codice);

  new(nodoptr);
  nodoptr^.codice := art_codice;
  //modifica
  nodoptr^.descrizione := art_descrizione + ' ' + art.fieldbyname('frn_descrizione1').asstring + ' ' + art.fieldbyname('tcm_codice').asstring + ' ' + art.fieldbyname('tgm_codice').asstring + ' ' + art.fieldbyname('a31art_codice_stampo').asstring;

  //modifica fine
  nodoptr^.quantita := quantita;
  nodoptr^.tum_codice_dsb := art.fieldbyname('tum_codice_dsb').asstring;
  if (art_codice = v_art_codice.text) or (art.fieldbyname('tum_codice_dsb').asstring = '') then
  begin
    nodoptr^.quantita := quantita;
  end
  else
  begin
    if art.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
    begin
      nodoptr^.quantita := quantita * art.fieldbyname('tum_coefficiente_dsb').asfloat;
    end
    else
    begin
      nodoptr^.quantita := quantita / art.fieldbyname('tum_coefficiente_dsb').asfloat;
    end;
  end;
  nodoptr^.prezzo := prezzo;
  nodoptr^.note := note;
  nodoptr^.tma_codice := tma_codice;
  nodoptr^.esistenza_tma := esistenza_tma;
  nodoptr^.approntato_tma := approntato_tma;
  nodoptr^.esistenza := esistenza;
  nodoptr^.esistenza_principale := esistenza_principale;
  if art.fieldbyname('tcn_codice').asstring <> '' then
  begin
    nodoptr^.assistenza_tecnica := 'si';
  end
  else
  begin
    nodoptr^.assistenza_tecnica := 'no';
  end;
  nodoptr^.sequenza := sequenza;

  result := v_griglia.items.addchildobject(treepadre, assegna_descrizione(nodoptr), nodoptr);

  result.haschildren := false;
end;

function tcreordp.assegna_descrizione(nododata: pointer): string;
var
  nodoptr: ^tnodo;
  descrizione_extra: string;
begin
  nodoptr := nododata;

  descrizione_extra := ' ' + nodoptr.tum_codice;
  if nodoptr.tum_codice_dsb <> '' then
  begin
    descrizione_extra := descrizione_extra + '   u.m. dsb ' + nodoptr.tum_codice_dsb;
  end;

  if ha_figli(nodoptr.codice) then
  begin
    result := nodoptr.codice + ' - ' + nodoptr.descrizione + ' - quantità ' +
      formatfloat(formato_display_quantita, nodoptr.quantita) +
      descrizione_extra + '  con distinta base';
  end
  else
  begin
    result := nodoptr.codice + ' - ' + nodoptr.descrizione + ' - quantità ' +
      formatfloat(formato_display_quantita, nodoptr.quantita) + descrizione_extra;
  end;

  mag_art.close;
  mag_art.parambyname('art_codice').asstring := nodoptr.codice;
  mag_art.open;
  if not mag_art.eof then
  begin
    result := result + ' [ ';
    while not mag_art.eof do
    begin
      result := result + mag_art.fieldbyname('tma_codice').asstring + ' ' + formatfloat('#,###0', mag_art.fieldbyname('esistenza').asfloat) + ' ';
      //mag_art.fieldbyname(';
      (*
        select mag.tma_codice,mag.esistenza, art.tcm_codice, art.tgm_codice,
        ( select art_codice_accessorio from acc

        where acc.art_codice=mag.art_codice limit 1 ) stampo
      *)
      mag_art.next;
    end;
    result := result + ' ] ';
  end;

end;

function tcreordp.ha_figli(art_codice: string): boolean;
begin
  figli.close;
  figli.params[0].asstring := art_codice;
  figli.open;
  result := not figli.isempty;
end;

procedure tcreordp.errore_commit_transazione;
begin
  arc.storna_numerazione(arc.arcdit, 'ORDINI PRODUZIONE', '', opt.parambyname('data_documento').asdatetime,
    opt.parambyname('numero_documento').asfloat);

  primo_progressivo := 0;
end;

function tcreordp.costo_unitario(art_codice: string): double;
var
  prezzo: double;
  tsm_codice, tsm_codice_art: string;
  valorizzazione: string;
begin
  art_costo.close;
  art_costo.parambyname('codice').asstring := art_codice;
  art_costo.open;

  frn_rda.close;
  frn_rda.parambyname('codice').asstring := art_costo.fieldbyname('frn_codice').asstring;
  frn_rda.open;

  cerca_prezzi.cerca_prezzo('F', art_costo.fieldbyname('frn_codice').asstring, '', 'ultimo prezzo acquisto',
    art_costo.fieldbyname('codice').asstring, opr.parambyname('tma_codice').asstring, 0, prezzo, tsm_codice, tsm_codice_art,
    date, divisa_di_conto, 1, cifre_decimali_prezzo_acq, frn_rda.fieldbyname('tla_codice').asstring,
    1, art_costo.fieldbyname('tum_codice').asstring, '');

  if prezzo = 0 then
  begin
    valorizzazione := tipinv.tipo_inventario('produzione', art_codice);
    przinv.przinv(art_codice, opr.parambyname('tma_codice').asstring, valorizzazione, esercizio, now, 0, prezzo,
      'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
  end;

  result := prezzo;
end;

function TCREORDP.controllo_livello: boolean;
var
  nodoptr: ^tnodo;
begin
  nodoptr := v_griglia.selected.data;

  if (tipo_esplosione = 'solo primo livello') and (nodoptr.codice <> v_art_codice.text) then
  begin
    result := false;
    messaggio(000, 'l''esplosione è prevista solamente al primo livello');
  end
  else
  begin
    result := true;
  end;
end;

initialization

registerclass(tcreordp);

end.
