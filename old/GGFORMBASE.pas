unit GGFORMBASE;

interface

uses
  windows, messages, sysutils, variants, classes, graphics, controls, forms,
  dialogs, toolwin, comctrls, rztabs, extctrls, menus, db, stdctrls, mask, dbctrls,
  appevnts, query_go, myaccess, richview, rvedit, rzlaunch, dmarc, ggbase, buttons,
  rzspnedt, typinfo, dateutils, rzdbgrid, rzlabel, rzpanel, rzdbedit, rzlistvw,
  rztreevw, rzdbchk, rzradchk, rzbutton, rzsplit, rzcmbobx, rzprgres, rzshelldialogs,
  rzdbcmbo, raizeedit_go, dbaccess, vcl.checklst, clipbrd, MemDS, system.uitypes;

type

  TFORMBASE = CLASS(TBASE)
    toolbar: ttoolbar;
    menu: TMainMenu;
    mnu_zoom: TMenuItem;
    mnu_help: TMenuItem;
    tool_ctrl_f2: ttoolbutton;
    tool_ctrl_f4: ttoolbutton;
    tool_f4: ttoolbutton;
    tool_f5: ttoolbutton;
    tabella_ds: tmydatasource;
    query: tmyquery_go;
    query_ds: tmydatasource;
    tabella_righe_ds: tmydatasource;
    statusbar: tstatusbar;
    tabella_iva_ds: tmydatasource;
    sor: tmytable;
    sor1: tmytable;
    sor2: tmytable;
    sor_ds: tmydatasource;
    sor1_ds: tmydatasource;
    sor2_ds: tmydatasource;
    popup_griglia: tpopupmenu;
    esportazionedatiinformatoexcel1: tmenuitem;
    mnu_preferiti: TMenuItem;
    tabella_dettaglio_ds: tmydatasource;
    tabella: tmyquery_go;
    tabella_righe: tmyquery_go;
    tabella_iva: tmyquery_go;
    tabella_dettaglio: tmyquery_go;
    tool_f6: ttoolbutton;
    mnu_about: TMenuItem;
    utilizzotastifunzione1: tmenuitem;
    mnu_finestre_aperte: TMenuItem;
    mnu_utente: TMenuItem;
    n3: tmenuitem;
    salvadimensionicolonne1: tmenuitem;
    mnu_prg_codice_diretto: TMenuItem;
    tool_invio_messaggio: ttoolbutton;
    zoom_avanti: tmenuitem;
    zoom_indietro: tmenuitem;
    esportazionedatiinformatocsv1: tmenuitem;
    n8: tmenuitem;
    copiacolonnaselezionatanellaclipboard1: tmenuitem;
    mnu_lista_vmc: TMenuItem;
    N11: TMenuItem;
    SintassiSQL1: TMenuItem;
    Assistenza1: TMenuItem;
    procedure formclose(sender: tobject; var action: tcloseaction);
    procedure formkeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure mnu_aboutClick(sender: tobject);
    procedure menu_f1click(sender: tobject);
    procedure tool_ctrl_f2click(sender: tobject);
    procedure tool_ctrl_f4click(sender: tobject);
    procedure tool_f4click(sender: tobject);
    procedure tool_f5click(sender: tobject);
    procedure tool_f6click(sender: tobject);
    procedure formcreate(sender: tobject);
    procedure esportazionedatiinformatoexcel1click(sender: tobject);
    procedure mnu_preferitiClick(sender: tobject);
    procedure formshow(sender: tobject);
    procedure sorbeforepost(dataset: tdataset);
    procedure sor1beforepost(dataset: tdataset);
    procedure sor2beforepost(dataset: tdataset);
    procedure utilizzotastifunzione1click(sender: tobject);
    procedure formdestroy(sender: tobject);
    procedure programmi_in_esecuzione_click(sender: tobject);
    procedure mnu_finestre_aperteClick(sender: tobject);
    procedure salvadimensionicolonne1click(sender: tobject);
    procedure mnu_prg_codice_direttoClick(sender: tobject);
    procedure tool_invio_messaggioclick(sender: tobject);
    procedure zoom_avanticlick(sender: tobject);
    procedure zoom_indietroclick(sender: tobject);
    procedure formpaint(sender: tobject);
    procedure popupvmcclick(sender: tobject);
    procedure esportazionedatiinformatocsv1click(sender: tobject);
    procedure copiacolonnaselezionatanellaclipboard1click(sender: tobject);
    procedure SintassiSQL1Click(Sender: TObject);
    procedure statusbarDblClick(Sender: TObject);
    procedure Assistenza1Click(Sender: TObject);
  protected
    query_help_personalizzato, arc_prg: tmyquery_go;

    tabella_sql, tabella_righe_sql, tabella_dettaglio_sql, tabella_iva_sql: string;
    tabella_tablename, tabella_righe_tablename, tabella_dettaglio_tablename: string;
    art_codice_configuratore, art_descrizione1_configuratore: string;
    art_descrizione2_configuratore, tabella_iva_tablename, tipo_programma: string;
    art_descrizione_estesa_configuratore, tta_codice_configuratore: string;
    nome_griglia_extra, lot_codice_fisso, server_controllo_dominio: string;
    pgp_utente_messaggio, pgp_testo_messaggio: string;

    programmi_in_esecuzione: array [0 .. 20] of tmenuitem;

    lista_programmi_in_esecuzione: tstringlist;
    lista_pathname_vmc, lista_parametri_vmc: tstringlist;
    colonne_griglia, colonne_griglia_righe, colonne_griglia_iva: tstringlist;
    colonne_griglia_dettaglio, colonne_griglia_extra: tstringlist;

    popup_programmi_in_esecuzione: tpopupmenu;

    visarc_filtro_01: variant;
    visarc_filtro_02: variant;
    visarc_filtro_03: variant;

    font_semaforo_clienti: tfont;

    pannello_bottoni_presente, richiesta_filtri, errore_controllo_griglia: boolean;
    salta_keydown, no_programma_taskbar, esiste_numerazione_cnt: boolean;

    progressivo_cnt: double;

    procedure doppio_click(sender: tobject); override;
    procedure hint_pop_up(sender: tobject; button: tmousebutton; shift: tshiftstate; x, y: integer); override;
    procedure menu_window;
    procedure assegna_pop(tabella: string; menu_pop: tpopupmenu;
      dati_utente_creazione: string; dati_data_ora_creazione: tdatetime;
      dati_utente: string; dati_data_ora: tdatetime; dati_codice, tipo_dati_codice: string);
    procedure help;
    procedure configuratore_articoli;
    procedure documentazione_personalizzata;
    procedure assegna_popup_menu_xls(griglia: trzdbgrid_go); override;
    procedure esegui_postit(nome: string; id: integer);
    procedure controllo_postit(query_tabella_controllo: tmyquery_go);
    procedure salva_dimensioni_colonne(griglia: trzdbgrid_go; codice_programma: string);
    procedure ricerca_barcode;
    procedure carica_vmc;
    procedure assegna_numerazione_enter(connessione: tmyconnection_go; tabella_numerazione: tmyquery_go; data: tdatetime;
      tipo, serie: string; campo: tcustomedit; campo_database: string);
    procedure assegna_numerazione_exit(connessione: tmyconnection_go; tabella_numerazione: tmyquery_go; data: tdatetime;
      tipo, serie: string; campo: tcustomedit; campo_database: string);
    procedure assegna_numerazione(connessione: tmyconnection_go; tabella_numerazione: tmyquery_go; data: tdatetime;
      tipo, serie: string; campo: tcustomedit; campo_database: string; progressivo: double);
    function ricerca_articolo_fornitore(codice_articolo, frn_codice: string): boolean;
    function ricerca_articolo_serie(codice_articolo: string): boolean;
    function ricerca_articolo_alternativo(codice_articolo: string): boolean;
    function ricerca_articolo(tipo, codice_articolo, frn_codice: string): boolean;
    function calcola_quantita_dimensioni(art, tabella_righe: tmyquery_go; vendite: boolean = true; evasione: boolean = false): double;
    function findkey(tabella_controllo: tmyquery_go; codice_controllo: variant): boolean;
  public
    conferma_elaborazione, interruzione_elaborazione, premuto_interruzione_elaborazione: boolean;
    controllo_cancella_edit: boolean;
    uscita_forzata_esc: boolean;

    chiave: string;
    descrizione_programma: string;
    programma_stampa: string;
    parte_attiva: string;
    variato_stringa: string;
    nome_tabella, codice_tabella, codice_01_tabella, codice_02_tabella, codice_03_tabella: string;

    //controllo: boolean;
    codice_archivio: variant;
    codice_passato: variant;

    esiste: boolean;

    modulo: integer;

    variato_importo: double;
    decimali_pqv: double;

    variato_data: tdate;

    campi_chiave: word;
    cifre_decimali_quantita, cifre_decimali_quantita_acquisti: word;
    cifre_decimali_quantita_distinta, cifre_decimali_prezzo, cifre_decimali_prezzo_acq: word;

    tabella_campi: array of campi;

    tabella_lookup_collegato: tdataset;

    tabella_copia: array of variant;

    griglia: trzdbgrid_go;

    //  variabili numerazioni CNT
    procedure esci; virtual;
    procedure visualizza_collegato(obbligatorio: boolean = false); virtual;
    procedure gestione_collegato; virtual;
    procedure dati_aggiuntivi_collegato(control_attivo: twincontrol);
    procedure aggiungi_a_preferiti;
    procedure tabella_controllo_base(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
      codice_tabella_controllo: tcustomedit; blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet;
      tabella_gestione: tdataset; frn_codice: string); overload;
    procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go; codice_tabella_controllo: tcustomedit;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset); overload;
    procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go; codice_tabella_controllo: tcustomedit;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset; frn_codice: string); overload;
    procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
      codice_tabella_controllo_01, codice_tabella_controllo_02: tcustomedit;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset); overload;
    procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
      codice_tabella_controllo_01, codice_tabella_controllo_02: trzdbnumericedit_go;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset); overload;
    procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
      codice_tabella_controllo_01: trzdbcombobox_go; codice_tabella_controllo_02: tcustomedit;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset); overload;
    procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
      codice_tabella_controllo_01, codice_tabella_controllo_02, codice_tabella_controllo_03: tcustomedit;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset); overload;
    procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
      codice_tabella_controllo_01, codice_tabella_controllo_02, codice_tabella_controllo_03, codice_tabella_controllo_04: tcustomedit;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset); overload;
//modifica
   procedure tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
      codice_tabella_controllo_01, codice_tabella_controllo_02, codice_tabella_controllo_03, codice_tabella_controllo_04, codice_tabella_controllo_05: tcustomedit;
      blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset); overload;
//modifica fine
    function tabella_controllo_griglia(accetta_vuoto: boolean; griglia: trzdbgrid_go; codice_controllo: string;
      query_tabella_controllo: tmyquery_go): boolean;

    // ereditati in discendenti per accesso a VISARC con archivio a chiavi multiple
    procedure set_codice_archivio; virtual;
    procedure get_codice_archivio; virtual;

    // utilizzato in discendenti
    procedure controllo_campi; virtual;

    // utilizzato in GESARC
    procedure visualizza_descrizioni; virtual;

    // utilizzato in GESDOC
    procedure visualizza_descrizioni_righe; virtual;

    // utilizzato in GESDOCIV
    procedure visualizza_descrizioni_iva; virtual;

    // utilizzato in GESDOCDE
    procedure visualizza_descrizioni_dettaglio; virtual;

    // utilizzato in ELABORA e in STAMPA
    procedure visualizza_stampa_elabora; virtual;

    // utilizzato in programmai chiamati dal main che fanno accesso alle sue tabelle
    procedure visualizza_descrizioni_tabella_lookup_collegato; virtual;

    procedure assegna_fuoco(contenitore: twincontrol; var componente: twincontrol);

    procedure activecontrolchange(sender: tobject);
  end;

var
  formbase: tformbase;

implementation

{$r *.dfm}


uses GGMENU, GGMENUCOLL, GGABOUT, GGRICARF, GGGESHLP, GGIMPALF, GGPOSTIT, ZZCLASMS,
  GGRICBAR, GGNOTE, GGSUCCESSIVOINH, GGELABORA, GGGESARC, GGESEGUI, GGGESARCASS,
  GGGESARCGRD, GGGESDOC, GGGESDOCIV, GGGESDOCDE, GGGESGRD, GGGESGRI, GGSTAMPA, GGGESTREE;

// ******************************************************************************
// chiusura della form
// ******************************************************************************

procedure tformbase.formclose(sender: tobject; var action: tcloseaction);
var
  pr_succ: tsuccessivoinh;
begin
  if login_accessi_utente = 'si' then
  begin
    arc.acp.close;
    arc.acp.parambyname('dit_codice').asstring := ditta;
    arc.acp.parambyname('utn_codice').asstring := utente;
    arc.acp.parambyname('prg_codice').asstring := programma;
    arc.acp.parambyname('data_ora').asdatetime := now;
    arc.acp.parambyname('accesso').asstring := 'fine';
    arc.acp.execsql;
  end;

  inherited;

  if arc_prg.fieldbyname('programma_successivo').asstring = 'si' then
  begin
    pr_succ := tsuccessivoinh.create(nil);
    pr_succ.prg_codice := programma;
    pr_succ.showmodal;
    freeandnil(pr_succ);
  end;
end;

procedure tformbase.formkeydown(sender: tobject; var key: word; shift: tshiftstate);
var
  pgp: tmyquery_go;
begin
  if (key = vk_f2) and (shift = [ssshift, ssalt, ssctrl]) then
  begin
    showmessage(screen.activecontrol.name);
  end;

  if not salta_keydown then //ignora i tasti
  begin
    //  salva massimizzazione finestra
    if (((key = 77) or (key = 109)) and (shift = [ssshift, ssalt, ssctrl])) then
    begin
      if ((tipo_programma = 'gesgri') or (tipo_programma = 'gesgrd') or (tipo_programma = 'gestree') or
        (tipo_programma = 'gesdoc') or (tipo_programma = 'gesdociv') or (tipo_programma = 'gesdocde')) and
        not((lowercase(programma) = 'gesccf') or (lowercase(programma) = 'assappcl') or (lowercase(programma) = 'assappop')) then
      begin
        pgp := tmyquery_go.create(nil);
        pgp.connection := arc.arc;
        pgp.sql.text := 'select * from pgp where prg_codice = ' + quotedstr(programma);
        pgp.open;
        if pgp.isempty then
        begin
          pgp.append;
          pgp.fieldbyname('prg_codice').asstring := programma;
          pgp.post;
        end;
        pgp.edit;
        if pgp.fieldbyname('dimensioni_normali').asstring <> 'si' then
        begin
          pgp.fieldbyname('dimensioni_normali').asstring := 'si';

          messaggio(100, 'la funzione di massimizzazione della finestra a pieno video è stata attivata' + #13 +
            'entrerà in funzione al prossimo accesso al programma');
        end
        else
        begin
          pgp.fieldbyname('dimensioni_normali').asstring := 'no';

          messaggio(100, 'la funzione di utilizzo della finestra a dimensioni normali è stata attivata' + #13 +
            'entrerà in funzione al prossimo accesso al programma');
        end;
        pgp.post;

        freeandnil(pgp);
      end
      else
      begin
        messaggio(200, 'la funzione di ridimensionamento della finestra non è attiva per questo programma');
      end;
    end;

    // tasto INVIO
    if ((key = vk_return) and (shift = [])) and (arc.utn.fieldbyname('return_tab').asstring = 'si') then
    begin
      if not disabilita_return_tab then
      begin
        if not((screen.activecontrol.classtype = trztreeview) or
          (screen.activecontrol.classtype = trichviewedit) or
          (screen.activecontrol.classtype = trzmemo_go) or
          (screen.activecontrol.classtype = trzdbmemo_go) or
          (screen.activecontrol.classtype = trzlistview) or
          (screen.activecontrol.classtype = trzdbgrid_go) or
          ((screen.activecontrol.classtype = trzdbnumericedit_go) and (screen.activecontrol.name = 'v_progressivo')) or
          ((lowercase(programma) = 'gesart') and (screen.activecontrol.name = 'v_codice') and (arc.dit.fieldbyname('codice_articolo_numerico').asstring = 'si')) or
          ((lowercase(programma) = 'gesnom') and (screen.activecontrol.name = 'v_codice') and (arc.dit.fieldbyname('codice_nom_numerico').asstring = 'si')) or
          ((lowercase(programma) = 'gesmtr') and (screen.activecontrol.name = 'v_codice') and (arc.dit.fieldbyname('codice_matricola_numerico').asstring = 'si')) or
          ((lowercase(programma) = 'gescsp') and (screen.activecontrol.name = 'v_codice') and (arc.dit.fieldbyname('codice_cespite_numerico').asstring = 'si')) or
          ((lowercase(programma) = 'gescms') and (screen.activecontrol.name = 'v_codice') and (arc.dit.fieldbyname('codice_commesse_numerico').asstring = 'si'))) then
        begin
          if screen.activecontrol.name <> '' then
          begin
            key := 0;
            postmessage(self.handle, wm_keydown, vk_tab, 0);
          end;
        end;
      end;
      disabilita_return_tab := false;
    end;

    inherited;

    // programmi in esecuzione [Alt+\]
    if ((key = 220) and (shift = [ssalt])) then
    begin
      menu_window;
    end;
    //

    // nome del campo
    if ((key = vk_f12) and (shift = [ssalt, ssctrl])) then
    begin
      messaggio(100, lowercase(screen.activecontrol.name));
    end;
    //

    (*
      // Ctrl + [U|u] = uppercase  sui campi testo
      if ((key = 85) or (key = 117)) and (shift = [ssctrl]) then
      begin
      if (screen.activecontrol.classtype = trzedit_go) then
      begin
      trzedit_go(screen.activecontrol).text := uppercase(trzedit_go(screen.activecontrol).text);
      end
      else if (screen.activecontrol.classtype = trzdbedit_go) then
      begin
      if tabella_edit(trzdbedit_go(screen.activecontrol).datasource.dataset) then
      begin
      trzdbedit_go(screen.activecontrol).datasource.dataset.fieldbyname(trzdbedit_go(screen.activecontrol).datafield).asstring :=
      uppercase(trzdbedit_go(screen.activecontrol).text);
      end;
      end;
      end;

      // Ctrl + [L|l] = lowercase  sui campi testo
      if ((key = 76) or (key = 108)) and (shift = [ssctrl]) then
      begin
      if (screen.activecontrol.classtype = trzedit_go) then
      begin
      trzedit_go(screen.activecontrol).text := lowercase(trzedit_go(screen.activecontrol).text);
      end
      else if (screen.activecontrol.classtype = trzdbedit_go) then
      begin
      if tabella_edit(trzdbedit_go(screen.activecontrol).datasource.dataset) then
      begin
      trzdbedit_go(screen.activecontrol).datasource.dataset.fieldbyname(trzdbedit_go(screen.activecontrol).datafield).asstring :=
      lowercase(trzdbedit_go(screen.activecontrol).text);
      end;
      end;
      end;
    *)

    if (key = vk_escape) and (shift = []) then
    begin
      tasto_esc := true;
      key := 0;
      esci;
    end
    else if (key = vk_f1) and (shift = []) then
    begin
      key := 0;
      help;
    end
    else if (key = vk_f4) and (shift = []) then
    begin
      key := 0;
      visualizza_collegato;
    end
    else if (key = vk_f5) and (shift = []) then
    begin
      key := 0;
      gestione_collegato;
    end
    else if (key = vk_f6) and (shift = []) then
    begin
      key := 0;
      dati_aggiuntivi_collegato(screen.activecontrol);
    end
    else if (key = vk_f2) and (shift = [ssshift]) then
    begin
      key := 0;
      configuratore_articoli;
    end
    else if (key = vk_f4) and (shift = [ssctrl]) then
    begin
      key := 0;
      if (help_personalizzato = 'si') and (supervisore_utente) then
      begin
        documentazione_personalizzata;
      end;
    end;
  end;
end;

procedure tformbase.formpaint(sender: tobject);
begin
  inherited;

end;

// ******************************************************************************
// controllo eventi del menu (click)
// ******************************************************************************

procedure tformbase.menu_f1click(sender: tobject);
begin
  help;
end;

procedure tformbase.mnu_aboutClick(sender: tobject);
var
  pr: taboutbox;
begin
  pr := taboutbox.create(nil);
  pr.showmodal;
  pr.free;
end;

// ******************************************************************************
// controllo eventi della toolbar (click)
// ******************************************************************************

procedure tformbase.tool_f4click(sender: tobject);
begin
  visualizza_collegato;
end;

procedure tformbase.tool_f5click(sender: tobject);
begin
  inherited;
  gestione_collegato;
end;

procedure tformbase.tool_f6click(sender: tobject);
begin
  inherited;
  dati_aggiuntivi_collegato(screen.activecontrol);
end;

procedure tformbase.tool_invio_messaggioclick(sender: tobject);
begin
  inherited;

  invio_messaggio_effettivo(pgp_utente_messaggio, pgp_testo_messaggio,
    arc_prg.fieldbyname('invio_mail').asstring, arc_prg.fieldbyname('invio_sms').asstring);
end;

procedure tformbase.tool_ctrl_f2click(sender: tobject);
begin
  aggiungi_a_preferiti;
end;

procedure tformbase.tool_ctrl_f4click(sender: tobject);
begin
  documentazione_personalizzata;
end;

procedure tformbase.documentazione_personalizzata;
var
  pr: tgeshlp;
begin
  pr := tgeshlp.create(nil);
  pr.codice := vararrayof([programma, screen.activecontrol.name]);
  pr.showmodal;
  pr.free;
end;

// ******************************************************************************
// funzioni eseguibili da menu, toolbar o con tasti funzione
// ******************************************************************************

procedure tformbase.help;
begin
end;

procedure tformbase.aggiungi_a_preferiti;
begin
  menugg.programma_preferito := programma;
  menugg.gestione_programmi_preferiti;
end;

procedure tformbase.configuratore_articoli;
begin
  if tool_f4.enabled then
  begin
    if ((screen.activecontrol is trzedit_go) and (trzedit_go(screen.activecontrol).lookcolltable = 'ART')) or
      ((screen.activecontrol is trzdbedit_go) and (trzdbedit_go(screen.activecontrol).lookcolltable = 'ART')) then
    begin
      esegui_programma('CFGART02', '', true);
      if parametri_extra_programma_chiamato[0] <> null then
      begin
        art_codice_configuratore := parametri_extra_programma_chiamato[0];
        art_descrizione1_configuratore := parametri_extra_programma_chiamato[1];
        art_descrizione2_configuratore := parametri_extra_programma_chiamato[2];
        art_descrizione_estesa_configuratore := parametri_extra_programma_chiamato[3];
        tta_codice_configuratore := parametri_extra_programma_chiamato[4];

        parametri_extra_programma_chiamato[0] := null;
        parametri_extra_programma_chiamato[1] := null;
        parametri_extra_programma_chiamato[2] := null;
        parametri_extra_programma_chiamato[3] := null;
        parametri_extra_programma_chiamato[4] := null;

        if screen.activecontrol is trzdbedit_go then
        begin
          if trzdbedit_go(screen.activecontrol).text <> art_codice_configuratore then
          begin
            if controllo_cancella_edit then
            begin
              if tabella_edit(trzdbedit_go(screen.activecontrol).datasource.dataset) then
              begin
                trzdbedit_go(screen.activecontrol).datasource.dataset[trzdbedit_go(screen.activecontrol).datafield] := art_codice_configuratore;
              end;
            end
            else
            begin
              controllo_cancella_edit := true;
            end;
          end;
        end
        else if screen.activecontrol is trzedit_go then
        begin
          trzedit_go(screen.activecontrol).text := art_codice_configuratore;
        end;
      end;
    end;
    visualizza_descrizioni;
    visualizza_descrizioni_righe;
    visualizza_descrizioni_iva;
    visualizza_descrizioni_dettaglio;
    visualizza_stampa_elabora;
  end;
end;

procedure tformbase.visualizza_collegato(obbligatorio: boolean = false);
var
  connessione: tmyconnection_go;
  codice_archivio_stringa: string;
begin
  // visualizza dati archivio collegato F4
  if tool_f4.enabled then
  begin
    codice_archivio := '';
    // TCustomEdit è l'ancestor di TRzEdit_go,TRzDBEdit_go,TRzNumericEdit_go,TRzDBNumericEdit_go,TRzDateTimeEdit_go,TRzDBDateTimeEdit_go
    if (screen.activecontrol is tcustomedit) then
    begin
      with screen.activecontrol as tcustomedit do
      begin
        codice_archivio := text;
      end;
    end;

    set_codice_archivio;

    if (screen.activecontrol is tcustomedit) and (ispublishedprop(screen.activecontrol, 'lookcolldatabase'))
      and (ispublishedprop(screen.activecontrol, 'lookcolltable'))
      and (ispublishedprop(screen.activecontrol, 'lookcollvisname'))
      and (ispublishedprop(screen.activecontrol, 'lookcollprogram')) then
    begin
      if lowercase(getpropvalue(screen.activecontrol, 'lookcolldatabase')) = 'arc.arc' then
      begin
        connessione := arc.arc;
      end
      else
      begin
        connessione := arc.arcdit;
      end;

      esegui_visarc(connessione, getpropvalue(screen.activecontrol, 'lookcolltable'),
        getpropvalue(screen.activecontrol, 'lookcollvisname'), codice_archivio,
        visarc_filtro_01, visarc_filtro_02, visarc_filtro_03, '', '',
        getpropvalue(screen.activecontrol, 'lookcollprogram'), obbligatorio);
    end;

    if (vartype(codice_archivio) = varustring) or (vartype(codice_archivio) = varinteger) or
      (vartype(codice_archivio) = vardouble) or (vartype(codice_archivio) = varolestr) or
      (vartype(codice_archivio) = varshortint) or (vartype(codice_archivio) = varsmallint) or
      (vartype(codice_archivio) = vardate) or (vartype(codice_archivio) = varstring) then
    begin
      if (screen.activecontrol is trzdbedit_go) and (trzdbedit_go(screen.activecontrol).readonly = false) then
      begin
        try
          codice_archivio_stringa := codice_archivio;

          if (trzdbedit_go(screen.activecontrol).text <> codice_archivio_stringa) and
            (tabella_edit(trzdbedit_go(screen.activecontrol).datasource.dataset)) then
          begin
            trzdbedit_go(screen.activecontrol).datasource.dataset[trzdbedit_go(screen.activecontrol).datafield] := codice_archivio_stringa;
          end;
        except
        end;
      end
      else if (screen.activecontrol is trzdbnumericedit_go) and (trzdbnumericedit_go(screen.activecontrol).readonly = false) then
      begin
        try
          if (trzdbnumericedit_go(screen.activecontrol).value <> codice_archivio) and
            (tabella_edit(trzdbnumericedit_go(screen.activecontrol).datasource.dataset)) then
          begin
            trzdbnumericedit_go(screen.activecontrol).datasource.dataset[trzdbnumericedit_go(screen.activecontrol).datafield] := codice_archivio;
          end;
        except
        end;
      end
      else if (screen.activecontrol is trzdbdatetimeedit_go) and (trzdbdatetimeedit_go(screen.activecontrol).readonly = false) then
      begin
        try
          if (trzdbdatetimeedit_go(screen.activecontrol).date <> codice_archivio) and
            (tabella_edit(trzdbdatetimeedit_go(screen.activecontrol).datasource.dataset)) then
          begin
            trzdbdatetimeedit_go(screen.activecontrol).datasource.dataset[trzdbdatetimeedit_go(screen.activecontrol).datafield] := codice_archivio;
          end;
        except
        end;
      end
      else if (screen.activecontrol is trzedit_go) and (trzedit_go(screen.activecontrol).readonly = false) then
      begin
        trzedit_go(screen.activecontrol).text := codice_archivio;
      end
      else if (screen.activecontrol is trznumericedit_go) and (trznumericedit_go(screen.activecontrol).readonly = false) then
      begin
        trznumericedit_go(screen.activecontrol).text := codice_archivio;
      end
      else if (screen.activecontrol is trzdatetimeedit_go) and (trzdatetimeedit_go(screen.activecontrol).readonly = false) then
      begin
        trzdatetimeedit_go(screen.activecontrol).text := codice_archivio;
      end;
    end;
    get_codice_archivio;

    // TCustomEdit è l'ancestor di TRzEdit_go,TRzDBEdit_go,TRzNumericEdit_go,TRzDBNumericEdit_go,TRzDateTimeEdit_go,TRzDBDateTimeEdit_go
    if (screen.activecontrol is tcustomedit) then
    begin
      tcustomedit(screen.activecontrol).selectall;
    end;
    //    else if (screen.activecontrol is trzdbcombobox_go) then
    //    begin
    //       TRzDBComboBox_go(screen.activecontrol).selectall;
    //    end;
  end;
end;

procedure tformbase.visualizza_stampa_elabora;
begin
  // utilizzato nei discendenti TElabora e TStampa
end;

procedure tformbase.zoom_avanticlick(sender: tobject);
var
  i: word;
begin
  inherited;

  self.scaleby(trunc((rapporto_espansione_control + 0.05) * 100), trunc(rapporto_espansione_control * 100));

  for i := 0 to toolbar.controlcount - 1 do
  begin
    if toolbar.controls[i] is trzrapidfirebutton then
    begin
      trzrapidfirebutton(toolbar.controls[i]).width := trunc(trzrapidfirebutton(toolbar.controls[i]).width * (rapporto_espansione_control + 0.05) / rapporto_espansione_control);
    end;
  end;
  statusbar.panels[0].width := trunc(statusbar.panels[0].width * (rapporto_espansione_control + 0.03) / rapporto_espansione_control);

  rapporto_espansione_control := rapporto_espansione_control + 0.05;

  if rapporto_espansione_control = 1.50 then
  begin
    zoom_avanti.enabled := false;
  end;
  zoom_indietro.enabled := true;
end;

procedure tformbase.zoom_indietroclick(sender: tobject);
var
  i: word;
begin
  inherited;
  self.scaleby(trunc((rapporto_espansione_control - 0.05) * 100), trunc(rapporto_espansione_control * 100));

  for i := 0 to toolbar.controlcount - 1 do
  begin
    if toolbar.controls[i] is trzrapidfirebutton then
    begin
      trzrapidfirebutton(toolbar.controls[i]).width := trunc(trzrapidfirebutton(toolbar.controls[i]).width * (rapporto_espansione_control - 0.05) / rapporto_espansione_control);
    end;
  end;
  statusbar.panels[0].width := trunc(statusbar.panels[0].width * (rapporto_espansione_control - 0.03) / rapporto_espansione_control);

  rapporto_espansione_control := rapporto_espansione_control - 0.05;

  if rapporto_espansione_control = 1 then
  begin
    zoom_indietro.enabled := false;
  end;
  zoom_avanti.enabled := true;
end;

procedure tformbase.visualizza_descrizioni;
begin
  // utilizzato nel discendente TGesarc
end;

procedure tformbase.visualizza_descrizioni_righe;
begin
  // utilizzato nel discendente TGesarc
end;

procedure tformbase.visualizza_descrizioni_dettaglio;
begin
  // utilizzato nel discendente TGesarc
end;

procedure tformbase.visualizza_descrizioni_iva;
begin
  // utilizzato nel discendente TGesarc
end;

procedure tformbase.gestione_collegato;
begin
  // gestione archivio collegato F5
  if tool_f5.enabled then
  begin
    codice_archivio := '';
    set_codice_archivio;
    if (vartype(codice_archivio) = varustring) or (vartype(codice_archivio) = varstring) then
    begin
      if screen.activecontrol is trzedit_go then
      begin
        codice_passato := variant(trzedit_go(screen.activecontrol).text);
        if lowercase((screen.activecontrol as trzedit_go).lookcolltable) = 'cli' then
        begin
          gesnom_cli_frn := 'cli';
        end;
        if lowercase((screen.activecontrol as trzedit_go).lookcolltable) = 'frn' then
        begin
          gesnom_cli_frn := 'frn';
        end;
      end
      else if screen.activecontrol is trzdbedit_go then
      begin
        codice_passato := variant(trzdbedit_go(screen.activecontrol).text);
        if lowercase((screen.activecontrol as trzdbedit_go).lookcolltable) = 'cli' then
        begin
          gesnom_cli_frn := 'cli';
        end;
        if lowercase((screen.activecontrol as trzdbedit_go).lookcolltable) = 'frn' then
        begin
          gesnom_cli_frn := 'frn';
        end;
      end
      else if screen.activecontrol is trznumericedit_go then
      begin
        codice_passato := variant(trunc(trznumericedit_go(screen.activecontrol).value));
      end
      else if screen.activecontrol is trzdbnumericedit_go then
      begin
        codice_passato := variant(trunc(trzdbnumericedit_go(screen.activecontrol).value));
      end
      else if screen.activecontrol is trzdatetimeedit_go then
      begin
        codice_passato := variant(trzdatetimeedit_go(screen.activecontrol).date);
      end
      else if screen.activecontrol is trzdbdatetimeedit_go then
      begin
        codice_passato := variant(trzdbdatetimeedit_go(screen.activecontrol).date);
      end;
    end
    else
    begin
      codice_passato := codice_archivio;
    end;

    if (screen.activecontrol is tcustomedit) and
      (ispublishedprop(screen.activecontrol, 'lookcollprogram')) then
    begin
      esegui_programma(getpropvalue(screen.activecontrol, 'lookcollprogram'), codice_passato, true);
    end;

    if (vartype(codice_gesarc) = varustring) or (vartype(codice_gesarc) = varstring) then
    begin
      if codice_gesarc <> '' then
      begin
        codice_archivio := codice_gesarc;

        if (vartype(codice_archivio) = varustring) or (vartype(codice_archivio) = varstring) or
          (vartype(codice_archivio) = vardouble) or (vartype(codice_archivio) = varolestr) or
          (vartype(codice_archivio) = varshortint) or (vartype(codice_archivio) = varsmallint) or
          (vartype(codice_archivio) = vardate) or (vartype(codice_archivio) = varinteger) then
        begin
          // TCustomEdit è l'ancestor di TRzEdit_go,TRzDBEdit_go,TRzNumericEdit_go,TRzDBNumericEdit_go,TRzDateTimeEdit_go,TRzDBDateTimeEdit_go
          // nota: ho fatto valere il cast a TRzDBEdit_go anche per glia ltri TRxDBxxx
          // in quanto le proprietà toccate sono le medesime
          if (screen.activecontrol is trzdbedit_go) or (screen.activecontrol is trzdbnumericedit_go)
            or (screen.activecontrol is trzdbdatetimeedit_go) then
          begin
            with screen.activecontrol as trzdbedit_go do
            begin
              if (text <> codice_archivio) then
              begin
                if parte_attiva = 'pannello_righe' then
                begin
                  tabella_edit(tabella_righe);
                  if controllo_cancella_edit then
                  begin
                    tabella_righe[datafield] := codice_archivio;
                  end
                  else
                  begin
                    controllo_cancella_edit := true;
                  end;
                end
                else if parte_attiva = 'pannello_iva' then
                begin
                  tabella_edit(tabella_iva);
                  if controllo_cancella_edit then
                  begin
                    tabella_iva[datafield] := codice_archivio;
                  end
                  else
                  begin
                    controllo_cancella_edit := true;
                  end;
                end
                else if parte_attiva = 'pannello_dettaglio' then
                begin
                  tabella_edit(tabella_dettaglio);
                  if controllo_cancella_edit then
                  begin
                    tabella_dettaglio[datafield] := codice_archivio;
                  end
                  else
                  begin
                    controllo_cancella_edit := true;
                  end;
                end;
              end
              // caso particolare solo di TRzDBNumericEdit_go
              else if (screen.activecontrol is trzdbnumericedit_go) then
              begin
                if tabella_lookup_collegato = nil then
                begin
                  tabella_edit(tabella);
                  if controllo_cancella_edit then
                  begin
                    tabella[datafield] := codice_archivio;
                  end
                  else
                  begin
                    controllo_cancella_edit := true;
                  end;
                end
                else
                begin
                  tabella_edit(tabella_lookup_collegato);
                  if controllo_cancella_edit then
                  begin
                    tabella_lookup_collegato[datafield] := codice_archivio;
                    visualizza_descrizioni_tabella_lookup_collegato;
                  end
                  else
                  begin
                    controllo_cancella_edit := true;
                  end;
                end;
              end;
            end;
          end
          // i rimanenti discendenti di TCustomEdit: TRzEdit_go,TRzNumericEdit_go,TRzDateTimeEdit_go
          else if (screen.activecontrol is tcustomedit) then
          begin
            tcustomedit(screen.activecontrol).text := codice_archivio;
          end;
        end;

        visualizza_descrizioni;
        visualizza_descrizioni_righe;
        visualizza_descrizioni_iva;
        visualizza_descrizioni_dettaglio;
        visualizza_stampa_elabora;
        codice_gesarc := '';

        variato_stringa := '';
        variato_importo := 0;
        variato_data := 0;
      end;
    end;
  end;
end;

procedure tformbase.dati_aggiuntivi_collegato(control_attivo: twincontrol);
var
  x, y: integer;
  dati_codice: variant;
  dati_utente_creazione: string;
  dati_data_ora_creazione: tdatetime;
  dati_utente: string;
  dati_data_ora: tdatetime;
begin
  dati_data_ora_creazione := 0;
  dati_data_ora := 0;

  if tool_f6.enabled then
  begin
    x := 150 + toolbar.left + self.left;
    y := 60 + toolbar.top + self.top;
    dati_codice := '';

    // TCustomEdit è l'ancestor di TRzEdit_go,TRzDBEdit_go,TRzNumericEdit_go,TRzDBNumericEdit_go,TRzDateTimeEdit_go,TRzDBDateTimeEdit_go
    if (control_attivo is tcustomedit) then
    begin
      dati_codice := variant(tcustomedit(control_attivo).text);
    end;

    if (control_attivo is trzedit_go) and (trim(trzedit_go(control_attivo).text) <> '') then
    begin
      assegna_pop(trzedit_go(control_attivo).lookcolltable,
        trzedit_go(control_attivo).lookcollpopupmenu, dati_utente_creazione, dati_data_ora_creazione,
        dati_utente, dati_data_ora, dati_codice, 'codice');
      trzedit_go(control_attivo).lookcollpopupmenu.popup(x, y);
    end
    else if (control_attivo is trzdbedit_go) and (trim(trzdbedit_go(control_attivo).text) <> '') then
    begin
      assegna_pop(trzdbedit_go(control_attivo).lookcolltable,
        trzdbedit_go(control_attivo).lookcollpopupmenu, dati_utente_creazione, dati_data_ora_creazione,
        dati_utente, dati_data_ora, dati_codice, 'codice');
      trzdbedit_go(control_attivo).lookcollpopupmenu.popup(x, y);
    end
    else if (control_attivo is trznumericedit_go) and (trznumericedit_go(control_attivo).value <> 0) then
    begin
      assegna_pop(trznumericedit_go(control_attivo).lookcolltable,
        trznumericedit_go(control_attivo).lookcollpopupmenu, dati_utente_creazione, dati_data_ora_creazione,
        dati_utente, dati_data_ora, dati_codice, 'codice');
      trznumericedit_go(control_attivo).lookcollpopupmenu.popup(x, y);
    end
    else if (control_attivo is trzdbnumericedit_go) and (trzdbnumericedit_go(control_attivo).value <> 0) then
    begin
      assegna_pop(trzdbnumericedit_go(control_attivo).lookcolltable,
        trzdbnumericedit_go(control_attivo).lookcollpopupmenu, dati_utente_creazione, dati_data_ora_creazione,
        dati_utente, dati_data_ora, dati_codice, 'codice');
      trzdbnumericedit_go(control_attivo).lookcollpopupmenu.popup(x, y);
    end
    else if (control_attivo is trzdatetimeedit_go) and (trzdatetimeedit_go(control_attivo).date <> 0) then
    begin
      assegna_pop(trzdatetimeedit_go(control_attivo).lookcolltable,
        trzdatetimeedit_go(control_attivo).lookcollpopupmenu, dati_utente_creazione, dati_data_ora_creazione,
        dati_utente, dati_data_ora, dati_codice, 'codice');
      trzdatetimeedit_go(control_attivo).lookcollpopupmenu.popup(x, y);
    end
    else if (control_attivo is trzdbdatetimeedit_go) and (trzdbdatetimeedit_go(control_attivo).date <> 0) then
    begin
      assegna_pop(trzdbdatetimeedit_go(control_attivo).lookcolltable,
        trzdbdatetimeedit_go(control_attivo).lookcollpopupmenu, dati_utente_creazione, dati_data_ora_creazione,
        dati_utente, dati_data_ora, dati_codice, 'codice');
      trzdbdatetimeedit_go(control_attivo).lookcollpopupmenu.popup(x, y);
    end;
  end;
end;

procedure tformbase.assegna_pop(tabella: string; menu_pop: tpopupmenu; dati_utente_creazione: string;
  dati_data_ora_creazione: tdatetime; dati_utente: string; dati_data_ora: tdatetime; dati_codice, tipo_dati_codice: string);
var
  campo_codice: string;
  utn_pop: tmyquery_go;
begin
  utn_pop := create_query(arc.arc, 'select codice, descrizione from utn where codice = :codice');

  campo_codice := dati_codice;

  menu_pop.items[0].caption := 'Tabella: ' + tabella + '   id: ' + campo_codice;
  menu_pop.items[2].caption := 'Record creato : ';
  if dati_data_ora_creazione <> 0 then
  begin
    menu_pop.items[2].caption := menu_pop.items[2].caption + formatdatetime('dddd, dd mmmm yyyy  ora hh:nn:ss', dati_data_ora_creazione);
  end;
  read_tabella(utn_pop, dati_utente_creazione);
  menu_pop.items[3].caption := 'Dall''utente : ' + dati_utente_creazione + ' - ' + utn_pop.fieldbyname('descrizione').asstring;
  menu_pop.items[4].caption := 'Ultimo aggiornamento eseguito : ';
  if dati_data_ora <> 0 then
  begin
    menu_pop.items[4].caption := menu_pop.items[4].caption + formatdatetime('dddd, dd mmmm yyyy  ora hh:nn:ss', dati_data_ora);
  end;
  read_tabella(utn_pop, dati_utente);
  menu_pop.items[5].caption := 'Dall''utente : ' + dati_utente + ' - ' + utn_pop.fieldbyname('descrizione').asstring;
  codice_dati_aggiuntivi_popup := dati_codice;
  tipo_codice_dati_aggiuntivi_popup := tipo_dati_codice;

  menu_pop.items[0].visible := not(campo_codice = '');
  menu_pop.items[2].visible := not((dati_utente = '') and (dati_utente_creazione = ''));
  menu_pop.items[3].visible := not((dati_utente = '') and (dati_utente_creazione = ''));
  menu_pop.items[4].visible := not((dati_utente = '') and (dati_utente_creazione = ''));
  menu_pop.items[5].visible := not((dati_utente = '') and (dati_utente_creazione = ''));

  if tipo_dati_codice = 'id' then
  begin
    if lowercase(tabella) = 'art' then
    begin
      menu_pop.items[35].visible := true;
      menu_pop.items[35].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else if lowercase(tabella) = 'cli' then
    begin
      menu_pop.items[26].visible := true;
      menu_pop.items[26].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else if lowercase(tabella) = 'frn' then
    begin
      menu_pop.items[23].visible := true;
      menu_pop.items[23].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else if lowercase(tabella) = 'gen' then
    begin
      menu_pop.items[13].visible := true;
      menu_pop.items[13].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else if lowercase(tabella) = 'cms' then
    begin
      menu_pop.items[09].visible := true;
      menu_pop.items[09].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else if lowercase(tabella) = 'cen' then
    begin
      menu_pop.items[09].visible := true;
      menu_pop.items[09].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else if lowercase(tabella) = 'nom' then
    begin
      menu_pop.items[09].visible := true;
      menu_pop.items[09].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else if lowercase(tabella) = 'csp' then
    begin
      menu_pop.items[09].visible := true;
      menu_pop.items[09].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end
    else
    begin
      menu_pop.items[07].visible := true;
      menu_pop.items[07].caption := 'Documenti tabella: ' + tabella + '   id: ' + campo_codice;
    end;
  end
  else
  begin
    if lowercase(tabella) = 'art' then
    begin
      menu_pop.items[35].visible := false;
    end
    else if lowercase(tabella) = 'cli' then
    begin
      menu_pop.items[26].visible := false;
    end
    else if lowercase(tabella) = 'frn' then
    begin
      menu_pop.items[23].visible := false;
    end
    else if lowercase(tabella) = 'gen' then
    begin
      menu_pop.items[13].visible := false;
    end
    else if lowercase(tabella) = 'cms' then
    begin
      menu_pop.items[09].visible := false;
    end
    else if lowercase(tabella) = 'cen' then
    begin
      menu_pop.items[09].visible := false;
    end
    else if lowercase(tabella) = 'nom' then
    begin
      menu_pop.items[09].visible := false;
    end
    else if lowercase(tabella) = 'csp' then
    begin
      menu_pop.items[09].visible := false;
    end
    else
    begin
      menu_pop.items[07].visible := false;
    end;
  end;

  freeandnil(utn_pop);
end;

procedure tformbase.set_codice_archivio;
begin
  (*
    assegnazione del codice per lookup e gestione archivio collegato se è composto
    da più campi (stessa sintassi di assegna_codice)
  *)
end;

procedure TFORMBASE.SintassiSQL1Click(Sender: TObject);
var
  pr: tnote;
begin
  inherited;

  try
    pr := tnote.create(nil);
    if (screen.activecontrol is trzdbgrid_go) then
    begin
      pr.note := tmyquery_go(((screen.activecontrol as trzdbgrid_go).datasource.dataset) as tmyquery_go).sql.text;
    end
    else
    begin
      try
        pr.note := tabella.sql.text;
      except
        pr.note := 'query non disponibile';
      end;
    end;
    pr.font := self.font.size;
    pr.solo_lettura := true;
    pr.showmodal;
  finally
    freeandnil(pr);
  end;
end;

procedure tformbase.get_codice_archivio;
begin
  (*
    assegnazione del codice di ritorno da lookup archivio collegato se è composto
    da più campi (stessa sintassi di inizializza_record)
  *)
  if (parte_attiva = 'pannello_campi') or (parte_attiva = 'pannello_codice') then
  begin
    visualizza_descrizioni;
  end;
  if parte_attiva = 'pannello_righe' then
  begin
    visualizza_descrizioni_righe;
  end;
  if parte_attiva = 'pannello_iva' then
  begin
    visualizza_descrizioni_iva;
  end;
  if parte_attiva = 'pannello_dettaglio' then
  begin
    visualizza_descrizioni_dettaglio;
  end;
  visualizza_stampa_elabora;
  visualizza_descrizioni_tabella_lookup_collegato;
end;

procedure tformbase.formcreate(sender: tobject);
var
  i, posizione: word;
  stringa, prg_codice, programma_alias: string;
  impalf: timpalf;
begin
  arc_prg := tmyquery_go.create(self);
  arc_prg.connection := arc.arc;

  arc_prg.sql.clear;
  arc_prg.sql.add('select prg.codice, prg.eseguibile, prg.modulo,');
  arc_prg.sql.add('prg.eseguibile_menu, prw.codice_accesso, prg.programma_esterno,');
  arc_prg.sql.add('pgp.query_righe_campo_01, pgp.query_righe_campo_02, pgp.query_righe_campi, pgp.query_righe_join,');
  arc_prg.sql.add('pgp.query_iva_campo_01, pgp.query_iva_campo_02, pgp.query_iva_campi, pgp.query_iva_join,');
  arc_prg.sql.add('pgp.query_dettaglio_campo_01, pgp.query_dettaglio_campo_02, pgp.query_dettaglio_campi, pgp.query_dettaglio_join,');
  arc_prg.sql.add('pgp.prg_codice_diretto, pgp.parametri_prg_codice_diretto, prg_diretto.descrizione prg_descrizione_diretto,');
  arc_prg.sql.add('pgp.invio_messaggi, pgp.utn_codice, pgp.testo_messaggio, prg.record_standard, pgp.programma_successivo,');
  arc_prg.sql.add('pgp.gruppo_accesso_standard, pgp.gruppo_accesso_personalizzato, pgp.invio_mail, pgp.invio_sms,');
  arc_prg.sql.add('pgp.programma_automatico_collegato, pgp.parametri_programma_automatico,');
  arc_prg.sql.add('pgp.font_stampa_vecchio_01, pgp.font_stampa_nuovo_01,');
  arc_prg.sql.add('pgp.font_stampa_vecchio_02, pgp.font_stampa_nuovo_02,');
  arc_prg.sql.add('pgp.font_stampa_vecchio_03, pgp.font_stampa_nuovo_03,');
  arc_prg.sql.add('pgp.font_stampa_vecchio_04, pgp.font_stampa_nuovo_04,');
  arc_prg.sql.add('pgp.font_stampa_vecchio_05, pgp.font_stampa_nuovo_05,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.descrizione is null or pgp.descrizione = '''' then prg.descrizione');
  arc_prg.sql.add('else pgp.descrizione');
  arc_prg.sql.add('end descrizione,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.stampa_parametri_selezione is null or pgp.stampa_parametri_selezione = '''' then prg.stampa_parametri_selezione');
  arc_prg.sql.add('else pgp.stampa_parametri_selezione');
  arc_prg.sql.add('end stampa_parametri_selezione,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.colonne_griglia is null or pgp.colonne_griglia  = '''' then ''''');
  arc_prg.sql.add('else pgp.colonne_griglia');
  arc_prg.sql.add('end colonne_griglia,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.colonne_griglia_righe is null or pgp.colonne_griglia_righe  = '''' then ''''');
  arc_prg.sql.add('else pgp.colonne_griglia_righe');
  arc_prg.sql.add('end colonne_griglia_righe,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.colonne_griglia_iva is null or pgp.colonne_griglia_iva  = '''' then ''''');
  arc_prg.sql.add('else pgp.colonne_griglia_iva');
  arc_prg.sql.add('end colonne_griglia_iva,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.colonne_griglia_dettaglio is null or pgp.colonne_griglia_dettaglio  = '''' then ''''');
  arc_prg.sql.add('else pgp.colonne_griglia_dettaglio');
  arc_prg.sql.add('end colonne_griglia_dettaglio,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.nome_griglia_extra is null or pgp.nome_griglia_extra  = '''' then ''''');
  arc_prg.sql.add('else pgp.nome_griglia_extra');
  arc_prg.sql.add('end nome_griglia_extra,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.colonne_griglia_extra is null or pgp.colonne_griglia_extra  = '''' then ''''');
  arc_prg.sql.add('else pgp.colonne_griglia_extra');
  arc_prg.sql.add('end colonne_griglia_extra,');

  arc_prg.sql.add('case');
  arc_prg.sql.add('when pgp.testo_query is null or trim(pgp.testo_query)  = '''' then prg.testo_query');
  arc_prg.sql.add('else pgp.testo_query');
  arc_prg.sql.add('end testo_query,');

  arc_prg.sql.add('pgp.testo_excel, abr.id abr_id, pgp.dimensioni_normali,');

  arc_prg.sql.add('(select codice from pra where prg_codice = :codice) pra_codice,');

  arc_prg.sql.add('pgp.colonna_righe_invisibile_01, pgp.colonna_righe_invisibile_02,');
  arc_prg.sql.add('pgp.colonna_righe_invisibile_03, pgp.colonna_righe_invisibile_04,');
  arc_prg.sql.add('pgp.colonna_righe_extra_01, pgp.colonna_righe_extra_02,');
  arc_prg.sql.add('pgp.colonna_righe_extra_03, pgp.colonna_righe_extra_04');

  arc_prg.sql.add('from prg');
  arc_prg.sql.add('left join pgp on pgp.prg_codice = prg.codice');
  arc_prg.sql.add('left join prw on prw.prg_codice = prg.codice');
  arc_prg.sql.add('left join prg prg_diretto on prg_diretto.codice = pgp.prg_codice_diretto');
  arc_prg.sql.add('left join abr on abr.utn_codice = ' + quotedstr(utente) + ' and abr.prg_codice = prg.codice');
  arc_prg.sql.add('where prg.codice = :codice');

  cifre_decimali_quantita := arc.dit.fieldbyname('decimali_max_quantita').asinteger;
  cifre_decimali_quantita_acquisti := arc.dit.fieldbyname('decimali_max_quantita').asinteger;
  cifre_decimali_quantita_distinta := arc.dit.fieldbyname('decimali_max_quantita').asinteger;
  cifre_decimali_prezzo := arc.dit.fieldbyname('decimali_max_prezzo').asinteger;
  cifre_decimali_prezzo_acq := arc.dit.fieldbyname('decimali_max_prezzo_acq').asinteger;

  disabilita_postit := false;
  font_semaforo_clienti := tfont.create;
  font_semaforo_clienti.color := 999999999;

  posizione := 0;

  if tipo_programma = '' then
  begin
    tipo_programma := 'formbase';
  end;

  query_help_personalizzato := tmyquery_go.create(self);
  query_help_personalizzato.connection := arc.arc;
  query_help_personalizzato.sql.text := 'select descrizione from hlp ' +
    'where prg_codice = :prg_codice and nome_campo = :nome_campo';

  inherited;

  colonne_griglia := tstringlist.create;
  colonne_griglia_righe := tstringlist.create;
  colonne_griglia_iva := tstringlist.create;
  colonne_griglia_dettaglio := tstringlist.create;
  colonne_griglia_extra := tstringlist.create;
  lista_programmi_in_esecuzione := tstringlist.create;
  lista_pathname_vmc := tstringlist.create;
  lista_parametri_vmc := tstringlist.create;
  popup_programmi_in_esecuzione := tpopupmenu.create(self);
  popup_programmi_in_esecuzione.autohotkeys := mamanual;
  popup_programmi_in_esecuzione.images := arc.immagine_24;

  tabella_tablename := stringreplace(tabella.sql.text, #10, ' ', [rfreplaceall]);
  tabella_tablename := stringreplace(tabella_tablename, #13, ' ', [rfreplaceall]);
  for i := 1 to length(tabella_tablename) do
  begin
    if copy(tabella_tablename, i, 5) = 'from ' then
    begin
      posizione := i + 5;
    end;
  end;
  tabella_tablename := trim(copy(tabella_tablename, posizione, length(tabella_tablename)));
  if pos(' ', tabella_tablename) > 0 then
  begin
    tabella_tablename := trim(copy(tabella_tablename, 1, pos(' ', tabella_tablename)));
  end;

  tabella_righe_tablename := stringreplace(tabella_righe.sql.text, #10, ' ', [rfreplaceall]);
  tabella_righe_tablename := stringreplace(tabella_righe_tablename, #13, ' ', [rfreplaceall]);
  for i := 1 to length(tabella_righe_tablename) do
  begin
    if copy(tabella_righe_tablename, i, 5) = 'from ' then
    begin
      posizione := i + 5;
    end;
  end;
  tabella_righe_tablename := trim(copy(tabella_righe_tablename, posizione, length(tabella_righe_tablename)));
  if pos(' ', tabella_righe_tablename) > 0 then
  begin
    tabella_righe_tablename := trim(copy(tabella_righe_tablename, 1, pos(' ', tabella_righe_tablename)));
  end;

  tabella_iva_tablename := stringreplace(tabella_iva.sql.text, #10, ' ', [rfreplaceall]);
  tabella_iva_tablename := stringreplace(tabella_iva_tablename, #13, ' ', [rfreplaceall]);
  for i := 1 to length(tabella_iva_tablename) do
  begin
    if copy(tabella_iva_tablename, i, 5) = 'from ' then
    begin
      posizione := i + 5;
    end;
  end;
  tabella_iva_tablename := trim(copy(tabella_iva_tablename, posizione, length(tabella_iva_tablename)));
  if pos(' ', tabella_iva_tablename) > 0 then
  begin
    tabella_iva_tablename := trim(copy(tabella_iva_tablename, 1, pos(' ', tabella_iva_tablename)));
  end;

  tabella_dettaglio_tablename := stringreplace(tabella_dettaglio.sql.text, #10, ' ', [rfreplaceall]);
  tabella_dettaglio_tablename := stringreplace(tabella_dettaglio_tablename, #13, ' ', [rfreplaceall]);
  for i := 1 to length(tabella_dettaglio_tablename) do
  begin
    if copy(tabella_dettaglio_tablename, i, 5) = 'from ' then
    begin
      posizione := i + 5;
    end;
  end;
  tabella_dettaglio_tablename := trim(copy(tabella_dettaglio_tablename, posizione, length(tabella_dettaglio_tablename)));
  if pos(' ', tabella_dettaglio_tablename) > 0 then
  begin
    tabella_dettaglio_tablename := trim(copy(tabella_dettaglio_tablename, 1, pos(' ', tabella_dettaglio_tablename)));
  end;

  // interruzione elaborazione (per ora usato solo in TSTAMPA ma previsto eventualmente anche per TELABORA)
  conferma_elaborazione := false;
  interruzione_elaborazione := false;
  premuto_interruzione_elaborazione := false;

  // leva preferiti da menu se popup_items vuoto
  if arc.pop_preferiti.items.count = 0 then
  begin
    mnu_preferiti.visible := false;
  end;

  // abilita hint in funzione dell'utente
  self.showhint := visualizza_hint = 'si';

  // risultato controlli su modifiche e cancellazioni
  controllo_cancella_edit := true;

  // tabella collegata al campo di lookup se deriva da altra unit
  // serve per mandare in edit la tabella collegata quando torna il valore dal programma di looup VIS
  tabella_lookup_collegato := nil;

  // pannello attivo per controllo funzioni
  parte_attiva := '';

  // assegna modulo e codice programma
  modulo := 00;
  programma := copy(self.classname, 2, length(self.classname) - 1);
  descrizione_programma := '';

  programma_alias := programma;
  if alias_programma <> '' then
  begin
    programma_alias := alias_programma;
    alias_programma := '';
  end;

  // tasto_escape premuto
  tasto_esc := false;

  // trova la descrizione leggendo il codice della tabella PRG o della tabella PRP (personalizzata)
  prg_codice := programma;

  arc_prg.close;
  arc_prg.parambyname('codice').asstring := prg_codice;
  arc_prg.open;

  pgp_utente_messaggio := arc_prg.fieldbyname('utn_codice').asstring;
  pgp_testo_messaggio := arc_prg.fieldbyname('testo_messaggio').asstring;

  if arc_prg.isempty then
  begin
    descrizione_programma := '';
    modulo := 1;
    colonne_griglia.text := '';
    colonne_griglia_righe.text := '';
    colonne_griglia_iva.text := '';
    colonne_griglia_dettaglio.text := '';
    nome_griglia_extra := '';
    colonne_griglia_extra.text := '';
  end
  else
  begin
    descrizione_programma := arc_prg.fieldbyname('descrizione').asstring;
    modulo := arc_prg.fieldbyname('modulo').asinteger;
    if arc_prg.fieldbyname('eseguibile').asstring = 'no' then
    begin
      tool_ctrl_f2.enabled := false;
    end;
    colonne_griglia.text := '';
    colonne_griglia_righe.text := '';
    colonne_griglia_iva.text := '';
    colonne_griglia_dettaglio.text := '';
    nome_griglia_extra := '';
    colonne_griglia_extra.text := '';

    if arc_prg.fieldbyname('colonne_griglia').asstring <> '' then
    begin
      stringa := arc_prg.fieldbyname('colonne_griglia').asstring;
      while pos(';', stringa) > 0 do
      begin
        colonne_griglia.add(copy(stringa, 1, pos(';', stringa) - 1));
        stringa := copy(stringa, pos(';', stringa) + 1, length(stringa));
      end;
      if trim(stringa) <> '' then
      begin
        colonne_griglia.add(trim(stringa));
      end;
    end;
    if arc_prg.fieldbyname('colonne_griglia_righe').asstring <> '' then
    begin
      stringa := arc_prg.fieldbyname('colonne_griglia_righe').asstring;
      while pos(';', stringa) > 0 do
      begin
        colonne_griglia_righe.add(copy(stringa, 1, pos(';', stringa) - 1));
        stringa := copy(stringa, pos(';', stringa) + 1, length(stringa));
      end;
      if trim(stringa) <> '' then
      begin
        colonne_griglia_righe.add(trim(stringa));
      end;
    end;
    if arc_prg.fieldbyname('colonne_griglia_iva').asstring <> '' then
    begin
      stringa := arc_prg.fieldbyname('colonne_griglia_iva').asstring;
      while pos(';', stringa) > 0 do
      begin
        colonne_griglia_iva.add(copy(stringa, 1, pos(';', stringa) - 1));
        stringa := copy(stringa, pos(';', stringa) + 1, length(stringa));
      end;
      if trim(stringa) <> '' then
      begin
        colonne_griglia_iva.add(trim(stringa));
      end;
    end;
    if arc_prg.fieldbyname('colonne_griglia_dettaglio').asstring <> '' then
    begin
      stringa := arc_prg.fieldbyname('colonne_griglia_dettaglio').asstring;
      while pos(';', stringa) > 0 do
      begin
        colonne_griglia_dettaglio.add(copy(stringa, 1, pos(';', stringa) - 1));
        stringa := copy(stringa, pos(';', stringa) + 1, length(stringa));
      end;
      if trim(stringa) <> '' then
      begin
        colonne_griglia_dettaglio.add(trim(stringa));
      end;
    end;
    if (arc_prg.fieldbyname('nome_griglia_extra').asstring <> '') and (arc_prg.fieldbyname('colonne_griglia_extra').asstring <> '') then
    begin
      nome_griglia_extra := arc_prg.fieldbyname('nome_griglia_extra').asstring;

      stringa := arc_prg.fieldbyname('colonne_griglia_extra').asstring;
      while pos(';', stringa) > 0 do
      begin
        colonne_griglia_extra.add(copy(stringa, 1, pos(';', stringa) - 1));
        stringa := copy(stringa, pos(';', stringa) + 1, length(stringa));
      end;
      if trim(stringa) <> '' then
      begin
        colonne_griglia_extra.add(trim(stringa));
      end;
    end;

    if arc_prg.fieldbyname('invio_messaggi').asstring <> '' then
    begin
      tool_invio_messaggio.enabled := true;
    end;
  end;

  // voci del menu
  mnu_about.caption := application.title;
  mnu_about.visible := true;

  mnu_utente.caption := utente + '   |   ' + tipo_programma + '   |';
  if arc_prg.fieldbyname('prg_codice_diretto').asstring <> '' then
  begin
    mnu_prg_codice_diretto.caption := arc_prg.fieldbyname('prg_codice_diretto').asstring + ' - ' +
      arc_prg.fieldbyname('prg_descrizione_diretto').asstring
  end
  else
  begin
    mnu_prg_codice_diretto.caption := '';
    mnu_prg_codice_diretto.visible := false;
  end;

  // voci menu personalizzato (VMC)
  mnu_lista_vmc.visible := false;
  if arc.dit.fieldbyname('voce_menu_collegato').asstring <> '' then
  begin
    mnu_lista_vmc.caption := arc.dit.fieldbyname('voce_menu_collegato').asstring;
    carica_vmc;
  end;

  // setta la caption della form
  if storico then
  begin
    self.caption := '(' + versione_procedura + ') ' + programma + ' [' + ditta + '/' + esercizio + '/storico] : ' + descrizione_programma;
  end
  else
  begin
    self.caption := '(' + versione_procedura + ') ' + programma + ' [' + ditta + '/' + esercizio + '] : ' + descrizione_programma;
  end;

  // messaggio di mancanza della divisa di conto da assegnare nella ditta (GESDIT)
  if (modulo <> 0) and (programma <> 'GESTVA') then
  begin
    if divisa_di_conto = '' then
    begin
      messaggio(000, msg_0046);
    end;
  end;

  // registro file di log per accesso utente
  if login_accessi_utente = 'si' then
  begin
    arc.acp.close;
    arc.acp.parambyname('dit_codice').asstring := ditta;
    arc.acp.parambyname('utn_codice').asstring := utente;
    arc.acp.parambyname('prg_codice').asstring := programma;
    arc.acp.parambyname('data_ora').asdatetime := now;
    arc.acp.parambyname('accesso').asstring := 'inizio';
    arc.acp.execsql;
    arc.acp.close;
  end;

  // programma protetto da password
  if arc_prg.fieldbyname('codice_accesso').asstring <> '' then
  begin
    impalf := timpalf.create(nil);
    impalf.v_form_caption := 'Programma protetto da password';
    impalf.v_descrizione_caption := 'password accesso';
    impalf.v_width_campo := 20;
    impalf.valore_passato := '';
    impalf.tipo_campo := 'alfa';
    impalf.campo_password := true;
    impalf.showmodal;

    if impalf.valore_passato <> arc_prg.fieldbyname('codice_accesso').asstring then
    begin
      messaggio(000, 'password errata');
      esegui_form := false;
    end;
    impalf.free;
  end;

  // controllo accesso moduli
  if esegui_form then
  begin
    if ((arc.utn.fieldbyname('manutentore').asstring = 'si') or supervisore_utente) and
      ((lowercase(programma) = 'gesdit') or (lowercase(programma) = 'gesdit01') or
      (lowercase(programma) = 'gesdit02') or (lowercase(programma) = 'gesdit03') or
      (lowercase(programma) = 'gesdit04') or (lowercase(programma) = 'gesdit05') or
      (lowercase(programma) = 'gesese') or (lowercase(programma) = 'gespgp') or
      (lowercase(programma) = 'gesprg') or (lowercase(programma) = 'gesmnu')) then
    begin
      //  consenti
    end
    else if (arc_prg.fieldbyname('modulo').asinteger = 0) and (arc_prg.fieldbyname('record_standard').asstring = 'si') then
    begin
      if supervisore_utente then
      begin
        //  consenti
      end
      else
      begin
        messaggio(000, 'solo gli utenti supervisori possono accedere al programma' + #13 +
          arc_prg.fieldbyname('codice').asstring + ' : ' + arc_prg.fieldbyname('descrizione').asstring);
        esegui_form := false;
      end;
    end;
  end;

  // controllo moduli abilitati se flag in ggg
  if (ggg_abilitazione_moduli_ditta = 'si') and (ditta = 'DEMO') then
  begin
    if numero_nominativi > 30 then
    begin
      messaggio(000, 'la versione DEMO non è utilizzabile con più di 30 nominativi anagrafici');
      esegui_form := false;
    end;
  end;
  if esegui_form then
  begin
    if (ggg_abilitazione_moduli_ditta = 'si') and (ditta <> 'DEMO') and (modulo <> 0) then
    begin
      if not modulo_abilitato[modulo] then
      begin
        read_tabella(arc.arc, 'prg', 'codice', inttostr(modulo));
        messaggio(000, 'il [' + archivio_arc.fieldbyname('descrizione').asstring + '] non è stato attivato');
        esegui_form := false;
      end;
    end;
  end;

  // controlla  modulo/programma disabilitati all'utente
  // programma/moduli abilitati all'utente
  if esegui_form then
  begin
    if arc.utn.fieldbyname('modalita_abilitazione_programmi').asstring = 'disabilita' then
    begin
      arc.abp.close;
      arc.abp.params[0].asstring := utente;
      arc.abp.params[1].asstring := arc_prg.fieldbyname('modulo').asstring;
      arc.abp.open;
      if not arc.abp.eof then
      begin
        arc.prg.close;
        arc.prg.params[0].asstring := arc_prg.fieldbyname('modulo').asstring;
        arc.prg.open;

        messaggio(000, 'l''utente non è autorizzato ad accedere al ' + #13 +
          arc.prg.fieldbyname('descrizione').asstring);
        esegui_form := false;
      end
      else
      begin
        arc.abp.close;
        arc.abp.params[0].asstring := utente;
        arc.abp.params[1].asstring := arc_prg.fieldbyname('codice').asstring;
        arc.abp.open;
        if not arc.abp.eof then
        begin
          messaggio(000, 'l''utente non è autorizzato ad accedere al programma ' + arc_prg.fieldbyname('codice').asstring);
          esegui_form := false;
        end
      end;
    end
    else if arc.utn.fieldbyname('modalita_abilitazione_programmi').asstring = 'abilita' then
    begin
      arc.abp.close;
      arc.abp.params[0].asstring := utente;
      arc.abp.params[1].asstring := arc_prg.fieldbyname('codice').asstring;
      arc.abp.open;
      if arc.abp.eof then
      begin
        arc.abp.close;
        arc.abp.params[0].asstring := utente;
        arc.abp.params[1].asstring := arc_prg.fieldbyname('modulo').asstring;
        arc.abp.open;
        if arc.abp.eof then
        begin
          arc.prg.close;
          arc.prg.params[0].asstring := arc_prg.fieldbyname('modulo').asstring;
          arc.prg.open;
          messaggio(000, 'l''utente non è autorizzato ad accedere al ' + #13 +
            arc_prg.fieldbyname('descrizione').asstring + #13 +
            'e al programma ' + arc_prg.fieldbyname('codice').asstring);
          esegui_form := false;
        end;
      end;
    end;
  end;

  // controllo abilitazione utente su importi con gruppo programmi standard
  if esegui_form then
  begin
    if ((arc.utn.fieldbyname('importi_archivi').asstring = 'nascondi') and
      (arc_prg.fieldbyname('gruppo_accesso_standard').asstring = 'archivi')) or
      ((arc.utn.fieldbyname('importi_vendite').asstring = 'nascondi') and
      (arc_prg.fieldbyname('gruppo_accesso_standard').asstring = 'vendite')) or
      ((arc.utn.fieldbyname('importi_acquisti').asstring = 'nascondi') and
      (arc_prg.fieldbyname('gruppo_accesso_standard').asstring = 'acquisti')) or
      ((arc.utn.fieldbyname('importi_magazzino').asstring = 'nascondi') and
      (arc_prg.fieldbyname('gruppo_accesso_standard').asstring = 'magazzino')) then
    begin
      messaggio(000, 'programma non eseguibile dall''utente' + #13#10 +
        'perché non abilitatato all''esecuzione del programma (gruppo standard ' +
        arc_prg.fieldbyname('gruppo_accesso_standard').asstring + ')');
      esegui_form := false;
    end;
  end;

  // controllo abilitazione utente su importi con gruppo programmi standard
  if esegui_form then
  begin
    if ((arc.utn.fieldbyname('primo_gruppo_accesso').asstring = 'si') and
      (arc_prg.fieldbyname('gruppo_accesso_personalizzato').asstring = 'primo gruppo')) or
      ((arc.utn.fieldbyname('secondo_gruppo_accesso').asstring = 'si') and
      (arc_prg.fieldbyname('gruppo_accesso_personalizzato').asstring = 'secondo gruppo')) or
      ((arc.utn.fieldbyname('terzo_gruppo_accesso').asstring = 'si') and
      (arc_prg.fieldbyname('gruppo_accesso_personalizzato').asstring = 'terzo gruppo')) or
      ((arc.utn.fieldbyname('quarto_gruppo_accesso').asstring = 'si') and
      (arc_prg.fieldbyname('gruppo_accesso_personalizzato').asstring = 'quarto gruppo')) or
      ((arc.utn.fieldbyname('quinto_gruppo_accesso').asstring = 'si') and
      (arc_prg.fieldbyname('gruppo_accesso_personalizzato').asstring = 'quinto gruppo')) or
      ((arc.utn.fieldbyname('sesto_gruppo_accesso').asstring = 'si') and
      (arc_prg.fieldbyname('gruppo_accesso_personalizzato').asstring = 'sesto gruppo')) then
    begin
      messaggio(000, 'programma non eseguibile dall''utente' + #13#10 +
        'perché non abilitatato all''esecuzione del programma (gruppo personalizzato ' +
        arc_prg.fieldbyname('gruppo_accesso_personalizzato').asstring + ')');
      esegui_form := false;
    end;
  end;

  if not esegui_form then
  begin
    close;
  end;
end;

// ******************************************************************************
// esempio di gestione del controllo su tabelle del database ditta non previste
// nello standard per cui non si può utilizzare la funzione (tabella_controllo)
// archivio è il nome della query utilizzara da read_tabella
(*
  procedure TPROGRAMMA.codice_controllo(blocco: boolean);
  begin
  if controllo then
  begin
  read_tabella(nome_tabella, campo_del_odice, valore_del_codice);
  if archivio.eof then
  begin
  campo_descrizione.caption := codice_inesistente;
  if blocco then
  begin
  campo_codice.setfocus;
  visualizza_collegato;
  abort;
  end;
  end
  else
  begin
  campo_descrizione.caption := archivio.fieldbyname('descrizione').asstring;
  end;
  end;
  end;
*)
// ******************************************************************************

function TFORMBASE.tabella_controllo_griglia(accetta_vuoto: boolean; griglia: trzdbgrid_go; codice_controllo: string;
  query_tabella_controllo: tmyquery_go): boolean;
var
  i: integer;
begin
  result := true;
  if not(accetta_vuoto and (codice_controllo = '')) then
  begin
    query_tabella_controllo.close;
    query_tabella_controllo.params[0].asstring := codice_controllo;
    query_tabella_controllo.open;
    if query_tabella_controllo.isempty then
    begin
      errore_controllo_griglia := true;
      result := false;
      //      ind := -1;
      for i := 0 to griglia.columns.count - 1 do
      begin
        if lowercase(griglia.columns[i].fieldname) = query_tabella_controllo.params[0].name then
        begin
          //          ind := i;
          break;
        end;
      end;
    end
    else
    begin
      if (pos('obsoleto', lowercase(query_tabella_controllo.sql.text)) > 0) and
        (query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si') then
      begin
        messaggio(200, 'il codice è stato dichiarato obsoleto');
        if blocco_obsoleti = 'si' then
        begin
          errore_controllo_griglia := true;
        end;
      end;
    end;
  end;
end;

procedure tformbase.tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
  codice_tabella_controllo: tcustomedit; blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet;
  tabella_gestione: tdataset);
begin
  tabella_controllo_base(accetta_vuoto, query_tabella_controllo, codice_tabella_controllo, blocco,
    faldone, pagina, tabella_gestione, '');
end;

procedure tformbase.tabella_controllo(accetta_vuoto: boolean;
  query_tabella_controllo: tmyquery_go; codice_tabella_controllo: tcustomedit;
  blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet;
  tabella_gestione: tdataset; frn_codice: string);
begin
  tabella_controllo_base(accetta_vuoto, query_tabella_controllo, codice_tabella_controllo, blocco,
    faldone, pagina, tabella_gestione, frn_codice);
end;

procedure tformbase.tabella_controllo_base(accetta_vuoto: boolean;
  query_tabella_controllo: tmyquery_go; codice_tabella_controllo: tcustomedit;
  blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet;
  tabella_gestione: tdataset; frn_codice: string);
var
  record_inesistente, obsoleto: boolean;
  codice_numerico, salva_codice_numerico: string;
  tipo_query: string;
  query_semaforo_clienti, tve: tmyquery_go;
  case_codice: string;
begin
  record_inesistente := true;
  if (blocco) or (query_tabella_controllo.params[0].asstring <> codice_tabella_controllo.text) or
    not(query_tabella_controllo.active) then
  begin
    obsoleto := false;

    if (pos('from art', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  art', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      if (pos('from artmr', lowercase(query_tabella_controllo.sql.text)) = 0) then
      begin
        tipo_query := 'art';
        lotto_articolo_letto := '';
      end;
    end
    else if (pos('from cli', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  cli', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'cli';
    end
    else if (pos('from frn', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  frn', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'frn';
    end
    else if (pos('from gen', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  gen', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'gen';
    end
    else if ((pos('from nom', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  nom', lowercase(query_tabella_controllo.sql.text)) > 0)) and
      not((pos('from nomw', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  nomw', lowercase(query_tabella_controllo.sql.text)) > 0)) then
    begin
      tipo_query := 'nom';
      if pos('obsoleto', lowercase(query_tabella_controllo.sql.text)) = 0 then
      begin
        query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, 'from ', ',nom.obsoleto from ', [rfreplaceall]);
      end;
    end
    else if (pos('from mtr', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  mtr', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'mtr';
      if pos('obsoleto', lowercase(query_tabella_controllo.sql.text)) = 0 then
      begin
        query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, 'from ', ',mtr.obsoleto from ', [rfreplaceall]);
      end;
    end
    else if (pos('from csp', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  csp', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'csp';
    end
    else if (pos('from cms', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  cms', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'cms';
    end
    else if (pos('from tma', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  tma', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'tma';
      if pos('obsoleto', lowercase(query_tabella_controllo.sql.text)) = 0 then
      begin
        query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, 'from ', ',obsoleto from ', [rfreplaceall]);
      end;
    end
    else if ((pos('from tco', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  tco', lowercase(query_tabella_controllo.sql.text)) > 0)) and
      (pos('from tconai', lowercase(query_tabella_controllo.sql.text)) = 0) then
    begin
      tipo_query := 'tco';
      if pos('obsoleto', lowercase(query_tabella_controllo.sql.text)) = 0 then
      begin
        query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, 'from ', ',obsoleto from ', [rfreplaceall]);
      end;
    end
    else if ((pos('from tlv', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  tlv', lowercase(query_tabella_controllo.sql.text)) > 0)) then
    begin
      tipo_query := 'tlv';
      if pos('obsoleto', lowercase(query_tabella_controllo.sql.text)) = 0 then
      begin
        query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, 'from ', ',obsoleto from ', [rfreplaceall]);
      end;
    end
    else if (pos('from pvvr', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from pvvr', lowercase(query_tabella_controllo.sql.text)) > 0) then
    begin
      tipo_query := 'pvvr';
      if pos('obsoleto', lowercase(query_tabella_controllo.sql.text)) = 0 then
      begin
        query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, 'from ', ',obsoleto from ', [rfreplaceall]);
      end;
    end
    else
    begin
      tipo_query := '';
    end;

    if controllo then
    begin
      if (accetta_vuoto) and (((codice_tabella_controllo is trzedit_go) and (codice_tabella_controllo.text = '')) or
        ((codice_tabella_controllo is trzdbedit_go) and (codice_tabella_controllo.text = '')) or
        ((codice_tabella_controllo is trznumericedit_go) and (trznumericedit_go(codice_tabella_controllo).text = '0')) or
        ((codice_tabella_controllo is trzdbnumericedit_go) and (trzdbnumericedit_go(codice_tabella_controllo).text = '0'))) then
      begin
        if (codice_tabella_controllo is trzedit_go) or (codice_tabella_controllo is trzdbedit_go) then
        begin
          query_tabella_controllo.params[0].asstring := '';
        end
        else if (codice_tabella_controllo is trznumericedit_go) or (codice_tabella_controllo is trzdbnumericedit_go) then
        begin
          query_tabella_controllo.params[0].asstring := '0';
        end;
        query_tabella_controllo.close;
        query_tabella_controllo.open;
      end
      else
      begin
        // se blocco e articolo legge prima barcode
        if blocco then
        begin
          // se articolo legge prima barcode
          letto_barcode_articolo := false;
          quantita_barcode_articolo := 0;
          if tipo_query = 'art' then
          begin
            codice_barre_quantita := 0;
            case_codice := codice_tabella_controllo.text;
            if arc.dit.fieldbyname('case_barcode').asstring = 'maiuscolo' then
            begin
              case_codice := uppercase(case_codice);
            end
            else if arc.dit.fieldbyname('case_barcode').asstring = 'minuscolo' then
            begin
              case_codice := lowercase(case_codice);
            end;

            archivio.close;
            archivio.sql.text := 'select bar.art_codice, ' +
              'case ' +
              'when bar.pezzi_confezione = ''si'' and art.pezzi_confezione <> 0 then art.pezzi_confezione ' +
              'else bar.quantita ' +
              'end quantita ' +
              'from bar inner join art on art.codice = bar.art_codice ' +
              'where bar.codice_barre = :codice_barre';

            if (arc.dit.fieldbyname('lunghezza_barcode_art').asinteger <> 0) and
              (length(case_codice) > arc.dit.fieldbyname('lunghezza_barcode_art').asinteger) and
              (arc.dit.fieldbyname('inizio_barcode_art').asinteger <> 0) and
              (arc.dit.fieldbyname('fine_barcode_art').asinteger <> 0) then
            begin
              case_codice := copy(case_codice, arc.dit.fieldbyname('inizio_barcode_art').asinteger,
                arc.dit.fieldbyname('fine_barcode_art').asinteger - arc.dit.fieldbyname('inizio_barcode_art').asinteger + 1);
            end;

            if not read_tabella(archivio, case_codice) then
            begin
              if numerico(copy(case_codice, 1, 12)) then
              begin
                read_tabella(archivio, '0' + case_codice);
              end;
            end
            else
            begin
              letto_barcode_articolo := true;
              quantita_barcode_articolo := archivio.fieldbyname('quantita').asfloat;
            end;

            if archivio.isempty and (arc.dit.fieldbyname('codice_barre_peso').asstring = 'si') then
            begin
              archivio.close;
              // multiplo
              archivio.sql.text := 'select bar.art_codice, ' +
                'mid(' + quotedstr(case_codice) + ', art.codice_barre_inizio_peso, art.codice_barre_caratteri_peso) / art.codice_barre_divisore quantita ' +
                'from bar ' +
                'inner join art on art.codice = bar.art_codice and art.obsoleto = ''no'' and art.codice_barre_peso = ''multiplo'' ' +
                'where bar.codice_barre = concat(trim(art.frn_codice), ' + quotedstr(case_codice) + ')';
              read_tabella(archivio);
              if archivio.isempty then
              begin
                // singolo
                archivio.close;
                archivio.sql.text := 'select bar.art_codice, ' +
                  'mid(' + quotedstr(case_codice) + ', art.codice_barre_inizio_peso, art.codice_barre_caratteri_peso) / art.codice_barre_divisore quantita ' +
                  'from bar ' +
                  'inner join art on art.codice = bar.art_codice and art.obsoleto = ''no'' and art.codice_barre_peso = ''singolo'' ' +
                  'where bar.codice_barre like concat(trim(art.frn_codice), ' +
                  'mid(' + quotedstr(case_codice) + ', art.codice_barre_inizio_codice, art.codice_barre_caratteri_codice), ''%'') ' +
                  'and mid(' + quotedstr(case_codice) + ', art.codice_barre_inizio_peso, art.codice_barre_caratteri_peso) / art.codice_barre_divisore <> 0';
                read_tabella(archivio);
              end;
              if not archivio.isempty then
              begin
                variato_stringa := '';
                codice_barre_quantita := archivio.fieldbyname('quantita').asfloat;
              end;
            end;

            if not archivio.isempty then
            begin
              if archivio.recordcount > 1 then
              begin
                ricerca_barcode;
              end;
              if tabella_gestione = nil then
              begin
                codice_tabella_controllo.text := archivio.fieldbyname('art_codice').asstring;
              end
              else
              begin
                if archivio.fieldbyname('art_codice').asstring <> codice_tabella_controllo.text then
                begin
                  if tabella_edit(tabella_gestione) then
                  begin
                    if codice_tabella_controllo is trzdbedit_go then
                    begin
                      tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := archivio.fieldbyname('art_codice').asstring;
                    end
                    else
                    begin
                      codice_tabella_controllo.text := archivio.fieldbyname('art_codice').asstring;
                    end;
                  end;
                end;
              end;
            end;
          end;

          // codici numerici (art controllo case)
          if tipo_query = 'art' then
          begin
            if codice_articolo_numerico = 'si' then
            begin
              salva_codice_numerico := trim(codice_tabella_controllo.text);
              if length(codice_tabella_controllo.text) < 9 then
              begin
                codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 9, true, '0');
                if codice_tabella_controllo.text <> codice_numerico then
                begin
                  if (tabella_gestione <> nil) and (query_tabella_controllo.params[0].asstring <> codice_numerico) then
                  begin
                    if tabella_edit(tabella_gestione) then
                    begin
                      tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit).datafield).asstring := codice_numerico;
                    end;
                  end
                  else
                  begin
                    codice_tabella_controllo.text := codice_numerico;
                  end;
                end;
              end;
            end
            else
            begin
              if arc.dit.fieldbyname('case_articoli').asstring = 'maiuscolo' then
              begin
                codice_tabella_controllo.text := uppercase(codice_tabella_controllo.text);
              end
              else if arc.dit.fieldbyname('case_articoli').asstring = 'minuscolo' then
              begin
                codice_tabella_controllo.text := lowercase(codice_tabella_controllo.text);
              end;
              if (tabella_gestione <> nil) and (query_tabella_controllo.params[0].asstring <> codice_tabella_controllo.text) then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit).datafield).asstring := codice_tabella_controllo.text;
                end;
              end;
            end;
          end
          else if (tipo_query = 'cli') and (codice_nom_numerico = 'si') then
          begin
            salva_codice_numerico := trim(codice_tabella_controllo.text);
            codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 8, true, '0');
            if codice_tabella_controllo.text <> codice_numerico then
            begin
              if tabella_gestione <> nil then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := codice_numerico;
                end;
              end
              else
              begin
                codice_tabella_controllo.text := codice_numerico;
              end;
            end;
          end
          else if (tipo_query = 'frn') and (codice_nom_numerico = 'si') then
          begin
            salva_codice_numerico := trim(codice_tabella_controllo.text);
            codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 8, true, '0');
            if codice_tabella_controllo.text <> codice_numerico then
            begin
              if tabella_gestione <> nil then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := codice_numerico;
                end;
              end
              else
              begin
                codice_tabella_controllo.text := codice_numerico;
              end;
            end;
          end
          else if (tipo_query = 'nom') and (codice_nom_numerico = 'si') then
          begin
            salva_codice_numerico := trim(codice_tabella_controllo.text);
            codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 8, true, '0');
            if codice_tabella_controllo.text <> codice_numerico then
            begin
              if tabella_gestione <> nil then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := codice_numerico;
                end;
              end
              else
              begin
                codice_tabella_controllo.text := codice_numerico;
              end;
            end;
          end
          else if (tipo_query = 'mtr') and (codice_matricola_numerico = 'si') then
          begin
            salva_codice_numerico := trim(codice_tabella_controllo.text);
            codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 9, true, '0');
            if codice_tabella_controllo.text <> codice_numerico then
            begin
              if tabella_gestione <> nil then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := codice_numerico;
                end;
              end
              else
              begin
                codice_tabella_controllo.text := codice_numerico;
              end;
            end;
          end
          else if (tipo_query = 'csp') and (codice_cespite_numerico = 'si') then
          begin
            salva_codice_numerico := trim(codice_tabella_controllo.text);
            codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 8, true, '0');
            if codice_tabella_controllo.text <> codice_numerico then
            begin
              if tabella_gestione <> nil then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := codice_numerico;
                end;
              end
              else
              begin
                codice_tabella_controllo.text := codice_numerico;
              end;
            end;
          end
          else if (tipo_query = 'cms') and (arc.dit.fieldbyname('codice_commesse_numerico').asstring = 'si') then
          begin
            salva_codice_numerico := trim(codice_tabella_controllo.text);
            codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 9, true, '0');
            if codice_tabella_controllo.text <> codice_numerico then
            begin
              if tabella_gestione <> nil then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := codice_numerico;
                end;
              end
              else
              begin
                codice_tabella_controllo.text := codice_numerico;
              end;
            end;
          end;
        end;
        if (blocco) or (query_tabella_controllo.params[0].asstring <> codice_tabella_controllo.text) then
        begin
          query_tabella_controllo.close;
          if (codice_tabella_controllo is trzdbnumericedit_go) or (codice_tabella_controllo is trznumericedit_go) then
          begin
            query_tabella_controllo.params[0].asfloat := strtofloat(trzdbnumericedit_go(codice_tabella_controllo).text);
          end
          else if (codice_tabella_controllo is trzdbdatetimeedit_go) or (codice_tabella_controllo is trzdatetimeedit_go) then
          begin
            query_tabella_controllo.params[0].asdate := strtodate(codice_tabella_controllo.text);
          end
          else
          begin
            query_tabella_controllo.params[0].asstring := codice_tabella_controllo.text;
          end;
          query_tabella_controllo.open;
          if query_tabella_controllo.isempty then
          begin
            query_tabella_controllo.params[0].asstring := '';
            record_inesistente := true;
          end
          else
          begin
            record_inesistente := false;

            // per "art" "cli" "frn" "gen" "tma" "tco" "tlv" "pvvr"controlla obsoleti (csp controlla dismesso)
            if blocco then
            begin
              if tipo_query = 'art' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'l''articolo [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'nom' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'il nominativo [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'cli' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'il cliente [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'frn' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'il fornitore [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'gen' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'il sottoconto [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'tma' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'il deposito [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'tco' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'la causale [' + codice_tabella_controllo.text + '] è stata dichiarata obsoleta');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'tlv' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'il listino [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end
              else if tipo_query = 'csp' then
              begin
                if query_tabella_controllo.fieldbyname('dismesso').asstring = 'si' then
                begin
                  messaggio(200, 'il cespite è stato dismesso');
                end;
              end
              else if tipo_query = 'pvvr' then
              begin
                if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
                begin
                  messaggio(200, 'l''impianto [' + codice_tabella_controllo.text + '] è stato dichiarato obsoleto');
                  if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                    ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                  begin
                    obsoleto := true;
                  end;
                end;
              end;
            end;
          end;
        end
        else
        begin
          record_inesistente := false;
        end;

        if (record_inesistente) and (tipo_query = 'art') and (blocco) and (codice_articolo_numerico = 'si') then
        begin
          codice_tabella_controllo.text := salva_codice_numerico;
        end;

        if (record_inesistente) and (tipo_query = 'art') and (blocco) then
        begin
          if (trim(codice_tabella_controllo.text) <> '') and (ricerca_articolo_codice_fornitore = 'si') and (ricerca_articolo_fornitore(codice_tabella_controllo.text, frn_codice)) then
          begin
            if tabella_gestione <> nil then
            begin
              if archivio.fieldbyname('art_codice').asstring <> codice_tabella_controllo.text then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := archivio.fieldbyname('art_codice').asstring;
                end;
              end;
            end;
            codice_tabella_controllo.text := archivio.fieldbyname('art_codice').asstring;
            query_tabella_controllo.close;
            query_tabella_controllo.params[0].asstring := codice_tabella_controllo.text;
            query_tabella_controllo.open;
            record_inesistente := false;
          end;
        end;
        if (record_inesistente) and (tipo_query = 'art') and (blocco) then
        begin
          if (trim(codice_tabella_controllo.text) <> '') and (ricerca_articolo_numero_serie = 'si') and (ricerca_articolo_serie(codice_tabella_controllo.text)) then
          begin
            lot_codice_fisso := codice_tabella_controllo.text;
            if tabella_gestione <> nil then
            begin
              if archivio.fieldbyname('art_codice').asstring <> codice_tabella_controllo.text then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := archivio.fieldbyname('art_codice').asstring;
                end;
              end;
            end;
            codice_tabella_controllo.text := archivio.fieldbyname('art_codice').asstring;
            query_tabella_controllo.close;
            query_tabella_controllo.params[0].asstring := codice_tabella_controllo.text;
            query_tabella_controllo.open;
            record_inesistente := false;
          end;
        end;
        if (record_inesistente) and (tipo_query = 'art') and (blocco) then
        begin
          if (trim(codice_tabella_controllo.text) <> '') and (arc.dit.fieldbyname('ricerca_articolo_codice_altern').asstring = 'si') and
            (ricerca_articolo_alternativo(codice_tabella_controllo.text)) then
          begin
            if tabella_gestione <> nil then
            begin
              if archivio.fieldbyname('codice').asstring <> codice_tabella_controllo.text then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := archivio.fieldbyname('codice').asstring;
                end;
              end;
            end;
            codice_tabella_controllo.text := archivio.fieldbyname('codice').asstring;
            query_tabella_controllo.close;
            query_tabella_controllo.params[0].asstring := codice_tabella_controllo.text;
            query_tabella_controllo.open;
            record_inesistente := false;
          end;
        end;

        if (record_inesistente) and (tipo_query = 'pvvr') and (blocco) then
        begin
          tve := tmyquery_go.create(nil);
          tve.connection := arc.arcdit;
          tve.sql.text := 'select punto_vendita_numerico from tve where codice = ' + quotedstr(ditta);
          tve.open;
          if tve.fieldbyname('punto_vendita_numerico').asstring = 'si' then
          begin
            salva_codice_numerico := trim(codice_tabella_controllo.text);
            codice_numerico := setta_lunghezza(codice_tabella_controllo.text, 6, true, '0');
            if codice_tabella_controllo.text <> codice_numerico then
            begin
              if tabella_gestione <> nil then
              begin
                if tabella_edit(tabella_gestione) then
                begin
                  tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := codice_numerico;
                end;
              end
              else
              begin
                codice_tabella_controllo.text := codice_numerico;
              end;
            end;
            query_tabella_controllo.close;
            query_tabella_controllo.params[0].asstring := codice_tabella_controllo.text;
            query_tabella_controllo.open;
            if not query_tabella_controllo.isempty then
            begin
              record_inesistente := false;
            end;
          end;
          tve.free;
          if record_inesistente then
          begin
            archivio.close;
            archivio.sql.text := 'select pvvr.punto_vendita from pvvd ' +
              'inner join pvvr on pvvr.progressivo = pvvd.progressivo and pvvr.riga = pvvd.riga ' +
              'where pvvd.lot_codice = ' + quotedstr(codice_tabella_controllo.text) + ' limit 1';
            archivio.open;
            if not archivio.isempty then
            begin
              if archivio.fieldbyname('punto_vendita').asstring <> codice_tabella_controllo.text then
              begin
                if tabella_gestione <> nil then
                begin
                  if tabella_edit(tabella_gestione) then
                  begin
                    if codice_tabella_controllo is trzdbedit_go then
                    begin
                      tabella_gestione.fieldbyname((codice_tabella_controllo as trzdbedit_go).datafield).asstring := archivio.fieldbyname('punto_vendita').asstring;
                    end
                    else
                    begin
                      codice_tabella_controllo.text := archivio.fieldbyname('punto_vendita').asstring;
                    end;
                  end;
                end;
                codice_tabella_controllo.text := archivio.fieldbyname('punto_vendita').asstring;
                query_tabella_controllo.close;
                query_tabella_controllo.params[0].asstring := codice_tabella_controllo.text;
                query_tabella_controllo.open;
                record_inesistente := false;
              end;
            end;
          end;
        end;

        if (record_inesistente) or (obsoleto) then
        begin
          query_tabella_controllo.params[0].asstring := '';
          // query_tabella_controllo.close;
          if blocco then
          begin
            if pagina <> nil then
            begin
              faldone.activepage := pagina;
            end;

            if codice_tabella_controllo.canfocus then
            begin
              codice_tabella_controllo.setfocus;
            end;

            if ((tipo_query = 'cli') and (codice_nom_numerico = 'si')) or
              ((tipo_query = 'frn') and (codice_nom_numerico = 'si')) or
              ((tipo_query = 'nom') and (codice_nom_numerico = 'si')) or
              ((tipo_query = 'art') and (codice_articolo_numerico = 'si')) or
              ((tipo_query = 'mtr') and (codice_matricola_numerico = 'si')) or
              ((tipo_query = 'csp') and (codice_cespite_numerico = 'si')) then
            begin
              codice_tabella_controllo.text := salva_codice_numerico;
            end;
            visualizza_collegato(true);
            //abort;
          end;
        end;
      end;
      if blocco and not record_inesistente then
      begin
        controllo_postit(query_tabella_controllo);
      end;
    end;
  end;

  // semaforo clienti
  if not record_inesistente then
  begin
    if (lowercase(programma) <> 'ditese') and (arc.dit.fieldbyname('semaforo_clienti').asstring = 'si') then
    begin
      if (pos('from cli', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  cli', lowercase(query_tabella_controllo.sql.text)) > 0) then
      begin
        tipo_query := 'cli';
      end
      else
      begin
        tipo_query := '';
      end;

      if tipo_query = 'cli' then
      begin
        if font_semaforo_clienti.color = 999999999 then
        begin
          if codice_tabella_controllo is trzdbedit_go then
          begin
            font_semaforo_clienti.color := (codice_tabella_controllo as trzdbedit_go).font.color;
            font_semaforo_clienti.style := (codice_tabella_controllo as trzdbedit_go).font.style;
          end
          else if codice_tabella_controllo is trzedit_go then
          begin
            font_semaforo_clienti.color := (codice_tabella_controllo as trzedit_go).font.color;
            font_semaforo_clienti.style := (codice_tabella_controllo as trzedit_go).font.style;
          end;
        end;

        query_semaforo_clienti := tmyquery_go.create(self);
        query_semaforo_clienti.connection := arc.arcdit;
        query_semaforo_clienti.sql.text := 'select tse.blocco from cli ' +
          'inner join tse on tse.codice = cli.tse_codice ' +
          'where cli.codice = ' + quotedstr(codice_tabella_controllo.text);
        query_semaforo_clienti.open;
        if query_semaforo_clienti.fieldbyname('blocco').asstring = 'si' then
        begin
          if codice_tabella_controllo is trzdbedit_go then
          begin
            (codice_tabella_controllo as trzdbedit_go).font.color := clred;
            (codice_tabella_controllo as trzdbedit_go).font.style := [fsstrikeout];
          end
          else if codice_tabella_controllo is trzedit_go then
          begin
            (codice_tabella_controllo as trzedit_go).font.color := clred;
            (codice_tabella_controllo as trzedit_go).font.style := [fsstrikeout];
          end;
        end
        else if query_semaforo_clienti.fieldbyname('blocco').asstring = 'no' then
        begin
          if codice_tabella_controllo is trzdbedit_go then
          begin
            (codice_tabella_controllo as trzdbedit_go).font.color := clblue;
            (codice_tabella_controllo as trzdbedit_go).font.style := [fsunderline];
          end
          else if codice_tabella_controllo is trzedit_go then
          begin
            (codice_tabella_controllo as trzedit_go).font.color := clblue;
            (codice_tabella_controllo as trzedit_go).font.style := [fsunderline];
          end;
        end
        else // null
        begin
          if codice_tabella_controllo is trzdbedit_go then
          begin
            (codice_tabella_controllo as trzdbedit_go).font.color := font_semaforo_clienti.color;
            (codice_tabella_controllo as trzdbedit_go).font.style := font_semaforo_clienti.style;
          end
          else if codice_tabella_controllo is trzedit_go then
          begin
            (codice_tabella_controllo as trzedit_go).font.color := font_semaforo_clienti.color;
            (codice_tabella_controllo as trzedit_go).font.style := font_semaforo_clienti.style;
          end;
        end;
        freeandnil(query_semaforo_clienti);
      end
      else
      begin
        if font_semaforo_clienti.color <> 999999999 then
        begin
          if codice_tabella_controllo is trzdbedit_go then
          begin
            (codice_tabella_controllo as trzdbedit_go).font.color := font_semaforo_clienti.color;
            (codice_tabella_controllo as trzdbedit_go).font.style := font_semaforo_clienti.style;
          end
          else if codice_tabella_controllo is trzedit_go then
          begin
            (codice_tabella_controllo as trzedit_go).font.color := font_semaforo_clienti.color;
            (codice_tabella_controllo as trzedit_go).font.style := font_semaforo_clienti.style;
          end;
        end;
      end;
    end;
  end;
end;

procedure tformbase.controllo_postit(query_tabella_controllo: tmyquery_go);
var
  i, contatore: word;
  stringa, nome_tabella: string;
begin
  if (tmyconnection_go(query_tabella_controllo.connection) = arc.arcdit) and not disabilita_postit and
    (arc.dit.fieldbyname('postit_in_ricerca').asstring = 'si') and
    (copy(lowercase(query_tabella_controllo.sql.text), 1, 7) = 'select ') then
  begin
    try
      query_tabella_controllo.close;
      query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, #10, ' ', [rfreplaceall]);
      query_tabella_controllo.sql.text := stringreplace(query_tabella_controllo.sql.text, #13, ' ', [rfreplaceall]);
      nome_tabella := '';
      stringa := lowercase(query_tabella_controllo.sql.text);
      contatore := 0;
      for i := 1 to length(stringa) do
      begin
        if copy(stringa, i, 7) = 'select ' then
        begin
          contatore := contatore + 1;
        end;
        if copy(stringa, i, 5) = 'from ' then
        begin
          if contatore = 1 then

          begin
            stringa := copy(stringa, i, length(stringa));
            break;
          end
          else
          begin
            contatore := contatore - 1;
          end;
        end;
      end;
      nome_tabella := trim(copy(stringa, pos('from ', stringa) + 4, length(stringa)));
      nome_tabella := trim(copy(nome_tabella, 1, pos(' ', nome_tabella)));
      if (copy(trim(copy(query_tabella_controllo.sql.text, 7, length(query_tabella_controllo.sql.text))), 1, 1) <> '*')
        and (not query_tabella_controllo.sql.text.contains('union')) then
      begin
        query_tabella_controllo.sql.text := copy(lowercase(query_tabella_controllo.sql.text), 1, 7) + ' ' + nome_tabella + '.id,' +
          copy(query_tabella_controllo.sql.text, 8, length(query_tabella_controllo.sql.text));
      end;
      query_tabella_controllo.open;
      if tmyconnection_go(query_tabella_controllo.connection) = arc.arcdit then
      begin
        arc.pit.close;
        arc.pit.parambyname('tabella').asstring := lowercase(nome_tabella);
        arc.pit.parambyname('id_archivio').asinteger := query_tabella_controllo.fieldbyname('id').asinteger;
        arc.pit.open;
        if not arc.pit.isempty then
        begin
          if ((arc.pit.fieldbyname('data_inizio').isnull) or (arc.pit.fieldbyname('data_inizio').asdatetime <= now)) and
            ((arc.pit.fieldbyname('data_fine').isnull) or (arc.pit.fieldbyname('data_fine').asdatetime >= now)) and
            ((arc.pit.fieldbyname('utn_codice').asstring = '') or (arc.pit.fieldbyname('utn_codice').asstring = utente)) then
          begin
            esegui_postit(nome_tabella, query_tabella_controllo.fieldbyname('id').asinteger);
          end;
        end;
      end;
    except
    end;
  end;
end;

procedure tformbase.copiacolonnaselezionatanellaclipboard1click(sender: tobject);
var
  i, colonna: integer;
begin
  inherited;
  colonna := -1;
  for i := 0 to trzdbgrid_go(screen.activecontrol).columns.count - 1 do
  begin
    if trzdbgrid_go(screen.activecontrol).columns[i].title.color = cllime then
    begin
      colonna := i;
    end;
  end;
  if colonna <> -1 then
  begin
    clipboard.astext := trzdbgrid_go(screen.activecontrol).datasource.dataset.fieldbyname(trzdbgrid_go(screen.activecontrol).columns[colonna].fieldname).asstring;
  end
  else
  begin
    messaggio(200, 'copia non eseguita perché non c''è nessuna colonna selezionata');
  end;
end;

procedure tformbase.tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
  codice_tabella_controllo_01, codice_tabella_controllo_02: tcustomedit; blocco: boolean; faldone: trzpagecontrol;
  pagina: trztabsheet; tabella_gestione: tdataset);
var
  record_inesistente, obsoleto: boolean;
  query_lotto: tmyquery_go;
  tipo_query: string;
begin
  obsoleto := false;

  if (pos('from cli', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  cli', lowercase(query_tabella_controllo.sql.text)) > 0) then
  begin
    tipo_query := 'cli';
  end
  else if (pos('from frn', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  frn', lowercase(query_tabella_controllo.sql.text)) > 0) then
  begin
    tipo_query := 'frn';
  end;

  if controllo then
  begin
    if (accetta_vuoto) and ((codice_tabella_controllo_01.text = '') or (codice_tabella_controllo_02.text = '')) then
    begin
      query_tabella_controllo.close;
      query_tabella_controllo.params[0].asstring := '';
      query_tabella_controllo.params[1].asstring := '';
      query_tabella_controllo.open;
      record_inesistente := true;
    end
    else
    begin
      if blocco or ((query_tabella_controllo.params[0].asstring <> codice_tabella_controllo_01.text) or
        (query_tabella_controllo.params[1].asstring <> codice_tabella_controllo_02.text)) then
      begin
        query_tabella_controllo.close;
        query_tabella_controllo.params[0].asstring := codice_tabella_controllo_01.text;
        query_tabella_controllo.params[1].asstring := codice_tabella_controllo_02.text;
        query_tabella_controllo.open;
        if query_tabella_controllo.isempty then
        begin
          query_tabella_controllo.params[0].asstring := '';
          query_tabella_controllo.params[1].asstring := '';
          record_inesistente := true;
        end
        else
        begin
          record_inesistente := false;

          if blocco then
          begin
            if (pos('from ind', query_tabella_controllo.sql.text) > 0) then
            begin
              if query_tabella_controllo.fieldbyname('obsoleto').asstring = 'si' then
              begin
                messaggio(200, 'la filiale [' +
                  codice_tabella_controllo_01.text + '/' + codice_tabella_controllo_02.text +
                  '] è stata dichiarata obsoleta');
                if (blocco_obsoleti = 'si') and (tabella_gestione <> nil) and
                  ((tabella_gestione.state = dsinsert) or (tabella_gestione.state = dsedit)) then
                begin
                  obsoleto := true;
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        record_inesistente := false;
      end;

      if record_inesistente or obsoleto then
      begin
        if (pos('from lot', lowercase(query_tabella_controllo.sql.text)) > 0) or (pos('from  lot', lowercase(query_tabella_controllo.sql.text)) > 0) and not obsoleto then
        begin
          if blocco then
          begin
            query_lotto := tmyquery_go.create(nil);
            query_lotto.connection := tmyconnection_go(query_tabella_controllo.connection);
            query_lotto.sql.text := 'select lotto from lot where art_codice = :art_codice and descrizione = :descrizione limit 1';
            query_lotto.params[0].asstring := codice_tabella_controllo_01.text;
            query_lotto.params[1].asstring := codice_tabella_controllo_02.text;
            query_lotto.open;
            if not query_lotto.isempty then
            begin
              if tabella_gestione <> nil then
              begin
                if query_lotto.fieldbyname('lotto').asstring <> codice_tabella_controllo_02.text then
                begin
                  if not tabella_edit(tabella_gestione) then
                  begin
                    messaggio(200, 'operazione non eseguibile in questo contesto');
                  end;
                end;
              end;
              codice_tabella_controllo_02.text := query_lotto.fieldbyname('lotto').asstring;

              record_inesistente := false;
              query_tabella_controllo.close;
              query_tabella_controllo.params[0].asstring := codice_tabella_controllo_01.text;
              query_tabella_controllo.params[1].asstring := query_lotto.fieldbyname('lotto').asstring;
              query_tabella_controllo.open;
            end;
            query_lotto.free;
          end;
          // prosegue perché il lotto viene creato in automatico
        end
        else
        begin
          if blocco then
          begin
            if pagina <> nil then
            begin
              faldone.activepage := pagina;
            end;

            if codice_tabella_controllo_01.canfocus then
            begin
              codice_tabella_controllo_01.setfocus;
            end
            else if codice_tabella_controllo_02.canfocus then
            begin
              codice_tabella_controllo_02.setfocus;
            end;
            visualizza_collegato(true);
            abort;
          end;
        end;
      end;
    end;
    if blocco and not record_inesistente then
    begin
      controllo_postit(query_tabella_controllo);
    end;
  end;
end;

procedure tformbase.tabella_controllo(accetta_vuoto: boolean;
  query_tabella_controllo: tmyquery_go; codice_tabella_controllo_01: trzdbcombobox_go;
  codice_tabella_controllo_02: tcustomedit; blocco: boolean; faldone: trzpagecontrol;
  pagina: trztabsheet; tabella_gestione: tdataset);
var
  record_inesistente: boolean;
begin
  record_inesistente := true;
  if controllo then
  begin
    if (accetta_vuoto) and ((codice_tabella_controllo_01.text = '') or (codice_tabella_controllo_02.text = '')) then
    begin
      query_tabella_controllo.params[0].asstring := '';
      query_tabella_controllo.params[1].asstring := '';
      query_tabella_controllo.close;
      query_tabella_controllo.open;
    end
    else
    begin
      if blocco or ((query_tabella_controllo.params[0].asstring <> codice_tabella_controllo_01.text) or
        (query_tabella_controllo.params[1].asstring <> codice_tabella_controllo_02.text)) then
      begin
        query_tabella_controllo.params[0].asstring := codice_tabella_controllo_01.text;
        query_tabella_controllo.params[1].asstring := codice_tabella_controllo_02.text;
        query_tabella_controllo.close;
        query_tabella_controllo.open;
        if query_tabella_controllo.isempty then
        begin
          query_tabella_controllo.params[0].asstring := '';
          query_tabella_controllo.params[1].asstring := '';
          record_inesistente := true;
        end
        else
        begin
          record_inesistente := false;
        end;
      end
      else
      begin
        record_inesistente := false;
      end;

      if record_inesistente then
      begin
        if blocco then
        begin
          if pagina <> nil then
          begin
            faldone.activepage := pagina;
          end;

          if codice_tabella_controllo_01.canfocus then
          begin
            codice_tabella_controllo_01.setfocus;
          end
          else if codice_tabella_controllo_02.canfocus then
          begin
            codice_tabella_controllo_02.setfocus;
          end;
          visualizza_collegato(true);
          abort;
        end;
      end;
    end;
    if blocco and not record_inesistente then
    begin
      controllo_postit(query_tabella_controllo);
    end;
  end;
end;

procedure tformbase.tabella_controllo(accetta_vuoto: boolean;
  query_tabella_controllo: tmyquery_go;
  codice_tabella_controllo_01, codice_tabella_controllo_02, codice_tabella_controllo_03: tcustomedit;
  blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet;
  tabella_gestione: tdataset);
var
  record_inesistente: boolean;
begin
  record_inesistente := true;
  if controllo then
  begin
    if (accetta_vuoto) and
      ((codice_tabella_controllo_01.text = '') or (codice_tabella_controllo_02.text = '') or
      (codice_tabella_controllo_03.text = '')) then
    begin
      query_tabella_controllo.params[0].asstring := '';
      query_tabella_controllo.params[1].asstring := '';
      query_tabella_controllo.params[2].asstring := '';
      query_tabella_controllo.close;
      query_tabella_controllo.open;
    end
    else
    begin
      if blocco or ((query_tabella_controllo.params[0].asstring <> codice_tabella_controllo_01.text) or
        (query_tabella_controllo.params[1].asstring <> codice_tabella_controllo_02.text) or
        (query_tabella_controllo.params[2].asstring <> codice_tabella_controllo_03.text)) then
      begin
        query_tabella_controllo.params[0].asstring := codice_tabella_controllo_01.text;
        query_tabella_controllo.params[1].asstring := codice_tabella_controllo_02.text;
        query_tabella_controllo.params[2].asstring := codice_tabella_controllo_03.text;
        query_tabella_controllo.close;
        query_tabella_controllo.open;
        if query_tabella_controllo.isempty then
        begin
          query_tabella_controllo.params[0].asstring := '';
          query_tabella_controllo.params[1].asstring := '';
          query_tabella_controllo.params[2].asstring := '';
          record_inesistente := true;
        end
        else
        begin
          record_inesistente := false;
        end;
      end
      else
      begin
        record_inesistente := false;
      end;

      if record_inesistente then
      begin
        if blocco then
        begin
          if pagina <> nil then
          begin
            faldone.activepage := pagina;
          end;

          if codice_tabella_controllo_01.canfocus then
          begin
            codice_tabella_controllo_01.setfocus;
          end
          else if codice_tabella_controllo_02.canfocus then
          begin
            codice_tabella_controllo_02.setfocus;
          end
          else if codice_tabella_controllo_03.canfocus then
          begin
            codice_tabella_controllo_03.setfocus;
          end;
          visualizza_collegato(true);
          abort;
        end;
      end;
    end;
    if blocco and not record_inesistente then
    begin
      controllo_postit(query_tabella_controllo);
    end;
  end;
end;

procedure tformbase.tabella_controllo(accetta_vuoto: boolean;
  query_tabella_controllo: tmyquery_go;
  codice_tabella_controllo_01, codice_tabella_controllo_02, codice_tabella_controllo_03, codice_tabella_controllo_04: tcustomedit;
  blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet;
  tabella_gestione: tdataset);
var
  record_inesistente: boolean;
begin
  record_inesistente := true;
  if controllo then
  begin
    if (accetta_vuoto) and
      ((codice_tabella_controllo_01.text = '') or (codice_tabella_controllo_02.text = '') or
      (codice_tabella_controllo_03.text = '') or (codice_tabella_controllo_04.text = '')) then
    begin
      query_tabella_controllo.params[0].asstring := '';
      query_tabella_controllo.params[1].asstring := '';
      query_tabella_controllo.params[2].asstring := '';
      query_tabella_controllo.params[3].asstring := '';
      query_tabella_controllo.close;
      query_tabella_controllo.open;
    end
    else
    begin
      if blocco or ((query_tabella_controllo.params[0].asstring <> codice_tabella_controllo_01.text) or
        (query_tabella_controllo.params[1].asstring <> codice_tabella_controllo_02.text) or
        (query_tabella_controllo.params[2].asstring <> codice_tabella_controllo_03.text) or
        (query_tabella_controllo.params[3].asstring <> codice_tabella_controllo_04.text)) then
      begin
        query_tabella_controllo.params[0].asstring := codice_tabella_controllo_01.text;
        query_tabella_controllo.params[1].asstring := codice_tabella_controllo_02.text;
        query_tabella_controllo.params[2].asstring := codice_tabella_controllo_03.text;
        query_tabella_controllo.params[3].asstring := codice_tabella_controllo_04.text;
        query_tabella_controllo.close;
        query_tabella_controllo.open;
        if query_tabella_controllo.isempty then
        begin
          query_tabella_controllo.params[0].asstring := '';
          query_tabella_controllo.params[1].asstring := '';
          query_tabella_controllo.params[2].asstring := '';
          query_tabella_controllo.params[3].asstring := '';
          record_inesistente := true;
        end
        else
        begin
          record_inesistente := false;
        end;
      end
      else
      begin
        record_inesistente := false;
      end;

      if record_inesistente then
      begin
        if blocco then
        begin
          if pagina <> nil then
          begin
            faldone.activepage := pagina;
          end;

          if codice_tabella_controllo_01.canfocus then
          begin
            codice_tabella_controllo_01.setfocus;
          end
          else if codice_tabella_controllo_02.canfocus then
          begin
            codice_tabella_controllo_02.setfocus;
          end
          else if codice_tabella_controllo_03.canfocus then
          begin
            codice_tabella_controllo_03.setfocus;
          end
          else if codice_tabella_controllo_04.canfocus then
          begin
            codice_tabella_controllo_04.setfocus;
          end;
          visualizza_collegato(true);
          abort;
        end;
      end;
    end;
    if blocco and not record_inesistente then
    begin
      controllo_postit(query_tabella_controllo);
    end;
  end;
end;

procedure tformbase.tabella_controllo(accetta_vuoto: boolean;
  query_tabella_controllo: tmyquery_go;
  codice_tabella_controllo_01, codice_tabella_controllo_02: trzdbnumericedit_go;
  blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet;
  tabella_gestione: tdataset);
var
  record_inesistente: boolean;
begin
  record_inesistente := true;
  if controllo then
  begin
    if (accetta_vuoto) and ((codice_tabella_controllo_01.value = 0) or (codice_tabella_controllo_02.value = 0)) then
    begin
      query_tabella_controllo.close;
      query_tabella_controllo.params[0].asinteger := 0;
      query_tabella_controllo.params[1].asinteger := 0;
      query_tabella_controllo.open;
    end
    else
    begin
      if blocco or ((query_tabella_controllo.params[0].asinteger <> trunc(codice_tabella_controllo_01.value)) and
        (query_tabella_controllo.params[1].asinteger <> trunc(codice_tabella_controllo_02.value))) then
      begin
        query_tabella_controllo.params[0].asinteger := trunc(codice_tabella_controllo_01.value);
        query_tabella_controllo.params[1].asinteger := trunc(codice_tabella_controllo_02.value);
        query_tabella_controllo.close;
        query_tabella_controllo.open;
        if query_tabella_controllo.isempty then
        begin
          query_tabella_controllo.params[0].asinteger := 0;
          query_tabella_controllo.params[1].asinteger := 0;
          record_inesistente := true;
        end
        else
        begin
          record_inesistente := false;
        end;
      end
      else
      begin
        record_inesistente := false;
      end;

      if record_inesistente then
      begin
        if blocco then
        begin
          if pagina <> nil then
          begin
            faldone.activepage := pagina;
          end;

          if codice_tabella_controllo_01.canfocus then
          begin
            codice_tabella_controllo_01.setfocus;
          end;
          visualizza_collegato(true);
          abort;
        end;
      end;
    end;
    if blocco and not record_inesistente then
    begin
      controllo_postit(query_tabella_controllo);
    end;
  end;
end;

function tformbase.ricerca_articolo_fornitore(codice_articolo, frn_codice: string): boolean;
begin
  result := ricerca_articolo('fornitore', codice_articolo, frn_codice);
end;

function tformbase.ricerca_articolo_serie(codice_articolo: string): boolean;
begin
  result := ricerca_articolo('serie', codice_articolo, '');
end;

function tformbase.ricerca_articolo_alternativo(codice_articolo: string): boolean;
begin
  result := ricerca_articolo('alternativo', codice_articolo, '');
end;

function tformbase.ricerca_articolo(tipo, codice_articolo, frn_codice: string): boolean;
var
  pr: tricarf;
begin
  result := false;
  archivio.close;
  archivio.sql.clear;
  if tipo = 'fornitore' then
  begin
    archivio.sql.add('select arf.frn_codice, arf.art_codice, arf.codice_articolo_fornitore');
    archivio.sql.add('from arf where arf.codice_articolo_fornitore = ' + quotedstr(codice_articolo));
    if frn_codice <> '' then
    begin
      archivio.sql.add('and arf.frn_codice = ' + quotedstr(frn_codice));
    end;

    archivio.sql.add('union all');

    archivio.sql.add('select arf.frn_codice, arf.art_codice, arfart.codice_articolo_fornitore');
    archivio.sql.add('from arfart');
    archivio.sql.add('inner join arf on arf.id = arfart.id_arf');
    archivio.sql.add('where arfart.codice_articolo_fornitore = ' + quotedstr(codice_articolo));
    if frn_codice <> '' then
    begin
      archivio.sql.add('and arf.frn_codice = ' + quotedstr(frn_codice));
    end;

    archivio.open;
    if archivio.recordcount > 1 then
    begin
      messaggio(200, 'sono stati trovati ' + inttostr(archivio.recordcount) + ' codici fornitore che soddisfano la ricerca' + #13 +
        'selezionare quello desiderato nella lista seguente');
      archivio.close;
      archivio.sql.clear;
      archivio.sql.add('select frn.codice frn_codice, frn.descrizione1 frn_descrizione1,');
      archivio.sql.add('art.codice art_codice, art.descrizione1 art_descrizione1, arf.codice_articolo_fornitore');
      archivio.sql.add('from arf');
      archivio.sql.add('inner join frn on frn.codice = arf.frn_codice');
      archivio.sql.add('inner join art on art.codice = arf.art_codice');
      archivio.sql.add('where codice_articolo_fornitore = ' + quotedstr(codice_articolo));
      if frn_codice <> '' then
      begin
        archivio.sql.add('and arf.frn_codice = ' + quotedstr(frn_codice));
      end;

      archivio.sql.add('union all');

      archivio.sql.add('select frn.codice frn_codice, frn.descrizione1 frn_descrizione1,');
      archivio.sql.add('art.codice art_codice, art.descrizione1 art_descrizione1, arfart.codice_articolo_fornitore');
      archivio.sql.add('from arfart');
      archivio.sql.add('inner join arf on arf.id = arfart.id_arf');
      archivio.sql.add('inner join frn on frn.codice = arf.frn_codice');
      archivio.sql.add('inner join art on art.codice = arf.art_codice');
      archivio.sql.add('where arfart.codice_articolo_fornitore = ' + quotedstr(codice_articolo));
      if frn_codice <> '' then
      begin
        archivio.sql.add('and arf.frn_codice = ' + quotedstr(frn_codice));
      end;

      archivio.sql.add('order by 1');
      archivio.open;

      pr := tricarf.create(nil);
      pr.query := archivio;
      pr.showmodal;

      archivio.close;
      archivio.sql.clear;
      archivio.sql.add('select arf.frn_codice, arf.art_codice, arf.codice_articolo_fornitore from arf');
      archivio.sql.add('where arf.codice_articolo_fornitore = ' + quotedstr(pr.codice_articolo_fornitore));
      archivio.sql.add('and arf.frn_codice = ' + quotedstr(pr.frn_codice));
      archivio.sql.add('and arf.art_codice = ' + quotedstr(pr.art_codice));

      archivio.sql.add('union all');

      archivio.sql.add('select arf.frn_codice, arf.art_codice, arfart.codice_articolo_fornitore from arfart');
      archivio.sql.add('inner join arf on arf.id = arfart.id_arf');
      archivio.sql.add('where arfart.codice_articolo_fornitore = ' + quotedstr(pr.codice_articolo_fornitore));
      archivio.sql.add('and arf.frn_codice = ' + quotedstr(pr.frn_codice));
      archivio.sql.add('and arf.art_codice = ' + quotedstr(pr.art_codice));

      archivio.open;
      pr.free;
    end;
  end
  else if tipo = 'serie' then
  begin
    archivio.sql.add('select * from lot where lotto = ' + quotedstr(codice_articolo));
    archivio.close;
    archivio.open;
    if archivio.recordcount > 1 then
    begin
      messaggio(200, 'sono stati trovati ' + inttostr(archivio.recordcount) + ' codici lotto che soddisfano la ricerca' + #13 +
        'verrà selezionato solo il primo dei ' + inttostr(archivio.recordcount));
      archivio.sql.clear;
      archivio.sql.add('select * from lot where lotto = ' + quotedstr(codice_articolo) + ' limit 1');
      archivio.close;
      archivio.open;
    end
    else
    begin
      lotto_articolo_letto := codice_articolo;
    end;
  end
  else if tipo = 'alternativo' then
  begin
    archivio.sql.add('select codice from art where codice_alternativo = ' + quotedstr(codice_articolo) +
      ' and codice_alternativo <> ''''');
    archivio.close;
    archivio.open;
    if archivio.recordcount > 1 then
    begin
      messaggio(200, 'sono stati trovati ' + inttostr(archivio.recordcount) + ' codici alternativi che soddisfano la ricerca' + #13 +
        'verrà selezionato solo il primo dei ' + inttostr(archivio.recordcount));
      archivio.sql.clear;
      archivio.sql.add('select codice from art where codice_alternativo = ' + quotedstr(codice_articolo) +
        ' and codice_alternativo <> '''' limit 1');
      archivio.close;
      archivio.open;
    end;
  end;

  if not archivio.eof then
  begin
    result := true;
  end;
end;

procedure tformbase.ricerca_barcode;
var
  pr: tricbar;
begin
  pr := tricbar.create(nil);
  try
    pr.query := archivio;
    pr.showmodal;
  finally
    pr.free;
  end;
end;

// assegna il fuoco al primo elemento (in tab-order) del contenitore
procedure tformbase.assegna_fuoco(contenitore: twincontrol; var componente: twincontrol);
var
  i, minimo: integer;
begin
  componente := nil;
  if contenitore.enabled = false then
  begin
    contenitore.enabled := true;
    colore_control(contenitore, true);
  end;
  minimo := 9999;
  for i := 0 to (contenitore.controlcount - 1) do
  begin
    if (contenitore.controls[i] is tgroupbox) or
      (contenitore.controls[i] is trzpagecontrol) or
      (contenitore.controls[i] is trztabsheet) or
      (contenitore.controls[i] is trzdbgrid_go) or
      (contenitore.controls[i] is trzpanel) then
    begin
      try
        if (getpropvalue(contenitore.controls[i], 'visible') = true) and
          (getpropvalue(contenitore.controls[i], 'enabled') = true) and
          (getpropvalue(contenitore.controls[i], 'taborder') < minimo) then
        begin
          minimo := getpropvalue(contenitore.controls[i], 'taborder');
          componente := twincontrol(contenitore.controls[i]);
        end;
      except
        componente := nil;
      end;
    end
    else if (contenitore.controls[i] is twincontrol) and
      (twincontrol(contenitore.controls[i]).tabstop = true) and
      (twincontrol(contenitore.controls[i]).visible = true) and
      (twincontrol(contenitore.controls[i]).enabled = true) and
      (twincontrol(contenitore.controls[i]).taborder < minimo) then
    begin
      minimo := twincontrol(contenitore.controls[i]).taborder;
      componente := twincontrol(contenitore.controls[i]);
    end;

    if minimo = 0 then
    begin
      break;
    end;
  end;

  if componente = nil then
  begin
    exit;
  end
  else
  begin
    if (componente is tgroupbox) or (componente is trzpagecontrol) or (componente is trztabsheet) or
      (componente is trzpanel) then
    begin
      contenitore := componente;
      componente := nil;
      assegna_fuoco(contenitore, componente);
    end;
  end;
end;

procedure tformbase.visualizza_descrizioni_tabella_lookup_collegato;
begin
  //
end;

procedure tformbase.controllo_campi;
begin
  //
end;

procedure tformbase.esportazionedatiinformatocsv1click(sender: tobject);
begin
  inherited;
  if screen.activecontrol is trzdbgrid_go then
  begin
    arc.esporta_csv(trzdbgrid_go(screen.activecontrol).datasource.dataset, descrizione_programma, trzdbgrid_go(screen.activecontrol));
    trzdbgrid_go(screen.activecontrol).datasource.dataset.first;
  end;
end;

procedure tformbase.esportazionedatiinformatoexcel1click(sender: tobject);
begin
  if screen.activecontrol is trzdbgrid_go then
  begin
    arc.esporta_xls(trzdbgrid_go(screen.activecontrol).datasource.dataset, descrizione_programma, trzdbgrid_go(screen.activecontrol));
    trzdbgrid_go(screen.activecontrol).datasource.dataset.first;
  end;
end;

procedure TFORMBASE.popupvmcclick(sender: tobject);
var
  itemvmc: tmenuitem;
  i: word;
  campo, parametri_passati: string;
begin
  itemvmc := tmenuitem(sender);

  parametri_passati := '';
  if lista_parametri_vmc[itemvmc.tag] <> '' then
  begin

    i := 0;
    campo := '';
    if lista_parametri_vmc[itemvmc.tag] <> '' then
    begin
      repeat
        inc(i);
        campo := arc.cerca_campo_csv(i, lista_parametri_vmc[itemvmc.tag], ';');
        if campo <> '' then
        begin
          try
            if parametri_passati <> '' then
            begin
              parametri_passati := parametri_passati + '||';
            end;
            parametri_passati := parametri_passati + tabella.fieldbyname(campo).asstring;
          except
          end;
        end;
      until campo = '';
    end;
  end;

  esegui_effettivo(lista_pathname_vmc[itemvmc.tag], parametri_passati);
end;

procedure tformbase.mnu_preferitiClick(sender: tobject);
begin
  arc.pop_preferiti.popup(42 + toolbar.left + self.left, 50 + toolbar.top + self.top);
end;

procedure tformbase.formshow(sender: tobject);
var
  i, i_col: word;
  control: twincontrol;
  esiste_pannello_parametri: boolean;
begin
  if extractfilename(lowercase(application.exename)) = 'gestionale_bovini.exe' then
  begin
    tool_ctrl_f4.visible := false;
    tool_ctrl_f2.visible := false;
    tool_invio_messaggio.visible := false;
    tool_f4.visible := false;
    tool_f5.visible := false;
    tool_f6.visible := false;
  end;

  inherited;

  richiesta_filtri := true;

  pannello_bottoni_presente := false;

  statusbar.font.size := 8;

  if self.width < 630 then
  begin
    self.width := 630;
  end;

  // abilita ridimensionamento della form a runtime
  if rapporto_espansione_control = 1.5 then
  begin
    zoom_avanti.enabled := false;
  end;
  if rapporto_espansione_control = 1 then
  begin
    zoom_indietro.enabled := false;
  end;

  statusbar.color := self.color;
  if arc.dit.fieldbyname('colore').asinteger <> 0 then
  begin
    //statusbar.color := arc.dit.fieldbyname('colore').asinteger;
    toolbar.GradientEndColor := arc.dit.fieldbyname('colore').asinteger;
  end
  else
  begin
    statusbar.color := self.color;
  end;
  if storico then
  begin
    if arc.dit.fieldbyname('colore_storico').asinteger <> 0 then
    begin
      //statusbar.color := arc.dit.fieldbyname('colore_storico').asinteger;
      toolbar.GradientEndColor := arc.dit.fieldbyname('colore_storico').asinteger;
    end;
  end;

  if (fsmodal in formstate) then
  begin
    mnu_finestre_aperte.visible := false;
    no_programma_taskbar := true;
  end;

  if not no_programma_taskbar then
  begin
    if assigned(menucoll) then
    begin
      menucoll.taskbar_attivazione(self.name, false);
      menucoll.taskbar_aggiungi_programma(programma, descrizione_programma, self);
    end
    else
    begin
      menugg.taskbar_attivazione(self.name, false);
      menugg.taskbar_aggiungi_programma(programma, descrizione_programma, self);
    end;
  end;

  // assegna dimensioni colonne delle griglie (se salvate)
  for i := 0 to self.componentcount - 1 do
  begin
    if self.components[i] is trzdbgrid_go then
    begin
      if (lowercase(trzdbgrid_go(self.components[i]).name) = 'v_griglia') and
        (colonne_griglia.text <> '') then
      begin
        for i_col := 0 to trzdbgrid_go(self.components[i]).columns.count - 1 do
        begin
          try
            trzdbgrid_go(self.components[i]).columns[i_col].width := strtoint(colonne_griglia[i_col]);
          except
          end;
        end;
      end
      else if (lowercase(trzdbgrid_go(self.components[i]).name) = 'v_griglia_righe') and
        (colonne_griglia_righe.text <> '') then
      begin
        for i_col := 0 to trzdbgrid_go(self.components[i]).columns.count - 1 do
        begin
          try
            trzdbgrid_go(self.components[i]).columns[i_col].width := strtoint(colonne_griglia_righe[i_col]);
          except
          end;
        end;
      end
      else if (lowercase(trzdbgrid_go(self.components[i]).name) = 'v_griglia_iva') and
        (colonne_griglia_iva.text <> '') then
      begin
        for i_col := 0 to trzdbgrid_go(self.components[i]).columns.count - 1 do
        begin
          try
            trzdbgrid_go(self.components[i]).columns[i_col].width := strtoint(colonne_griglia_iva[i_col]);
          except
          end;
        end;
      end
      else if (lowercase(trzdbgrid_go(self.components[i]).name) = 'v_griglia_dettaglio') and
        (colonne_griglia_dettaglio.text <> '') then
      begin
        for i_col := 0 to trzdbgrid_go(self.components[i]).columns.count - 1 do
        begin
          try
            trzdbgrid_go(self.components[i]).columns[i_col].width := strtoint(colonne_griglia_dettaglio[i_col]);
          except
          end;
        end;
      end
      else if (lowercase(trzdbgrid_go(self.components[i]).name) = nome_griglia_extra) and
        (colonne_griglia_extra.text <> '') then
      begin
        for i_col := 0 to trzdbgrid_go(self.components[i]).columns.count - 1 do
        begin
          try
            trzdbgrid_go(self.components[i]).columns[i_col].width := strtoint(colonne_griglia_extra[i_col]);
          except
          end;
        end;
      end;
    end
    else if (self.components[i] is trzpanel) and (lowercase(trzpanel(self.components[i]).name) = 'pannello_bottoni') then
    begin
      pannello_bottoni_presente := true;
    end;
  end;

  // allarga speedbutton toolbar
  if rapporto_espansione_control > 1 then
  begin
    for i := 0 to toolbar.controlcount - 1 do
    begin
      if toolbar.controls[i] is trzrapidfirebutton then
      begin
        trzrapidfirebutton(toolbar.controls[i]).width := trunc(trzrapidfirebutton(toolbar.controls[i]).width * rapporto_espansione_control);
      end;
    end;
  end;

  // allarga pannelli statusbar
  if rapporto_espansione_control > 1 then
  begin
    statusbar.panels[0].width := trunc(statusbar.panels[0].width * rapporto_espansione_control);
  end;

  statusbar.top := self.height;
end;

procedure tformbase.sorbeforepost(dataset: tdataset);
begin
  inherited;
  sor.fieldbyname('utn_codice').asstring := utente;
end;

procedure TFORMBASE.statusbarDblClick(Sender: TObject);
var
  stringa, testo: string;
begin
  inherited;

  stringa := statusbar.panels[1].text;
  testo := '';
  while stringa <> '' do
  begin
    if testo <> '' then
    begin
      testo := testo + slinebreak;
    end;
    testo := testo + copy(stringa, 1, 50);
    stringa := trim(copy(stringa, 51, length(stringa)));
  end;
  messaggio(100, testo);
end;

procedure tformbase.sor1beforepost(dataset: tdataset);
begin
  inherited;
  sor1.fieldbyname('utn_codice').asstring := utente;
end;

procedure tformbase.sor2beforepost(dataset: tdataset);
begin
  inherited;
  sor2.fieldbyname('utn_codice').asstring := utente;
end;

function tformbase.findkey(tabella_controllo: tmyquery_go; codice_controllo: variant): boolean;
var
  i: word;
begin
  if tabella_controllo.params.count = 1 then
  begin
    if tabella_controllo.fieldbyname(tabella_controllo.params[0].name).datatype in [ftstring, ftwidestring] then
    begin
      try
        tabella_controllo.params[0].asstring := codice_controllo;
      except
        tabella_controllo.params[0].value := null;
      end;
    end
    else if tabella_controllo.fieldbyname(tabella_controllo.params[0].name).datatype = ftdate then
    begin
      try
        tabella_controllo.params[0].asdate := strtodate(codice_controllo);
      except
        try
          tabella_controllo.params[0].asdate := codice_controllo;
        except
          tabella_controllo.params[0].value := null;
        end;
      end;
    end
    else // numerico
    begin
      try
        tabella_controllo.params[0].asfloat := strtofloat(codice_controllo);
      except
        tabella_controllo.params[0].value := null;
      end;
    end;
  end
  else
  begin
    for i := 0 to tabella_controllo.params.count - 1 do
    begin
      if tabella_controllo.fieldbyname(tabella_controllo.params[i].name).datatype in [ftstring, ftwidestring] then
      begin
        try
          tabella_controllo.params[i].asstring := codice_controllo[i];
        except
          tabella_controllo.params[i].value := null;
        end;
      end
      else if tabella_controllo.fieldbyname(tabella_controllo.params[i].name).datatype = ftdate then
      begin
        try
          tabella_controllo.params[i].asdate := strtodate(codice_controllo[i]);
        except
          try
            tabella_controllo.params[i].asdate := codice_controllo[i];
          except
            tabella_controllo.params[i].value := null;
          end;
        end;
      end
      else // numerico
      begin
        try
          tabella_controllo.params[i].asfloat := strtofloat(codice_controllo[i]);
        except
          tabella_controllo.params[i].value := null;
        end;
      end;
    end;
  end;
  tabella_controllo.close;
  tabella_controllo.open;
  result := not tabella_controllo.isempty;
end;

procedure tformbase.assegna_popup_menu_xls(griglia: trzdbgrid_go);
begin
  griglia.popupmenu := popup_griglia;
end;

procedure TFORMBASE.Assistenza1Click(Sender: TObject);
begin
  inherited;
  clipboard.assign(getformimage);
  esegui_programma('HELPDESK', programma, true);
end;

procedure tformbase.utilizzotastifunzione1click(sender: tobject);
begin
  inherited;
  esegui_programma('TASTI', '', false);
end;

procedure tformbase.formdestroy(sender: tobject);
begin
  if assigned(font_semaforo_clienti) then
  begin
    font_semaforo_clienti.free;
  end;

  colonne_griglia.free;
  colonne_griglia_righe.free;
  colonne_griglia_iva.free;
  colonne_griglia_dettaglio.free;
  colonne_griglia_extra.free;
  lista_programmi_in_esecuzione.free;
  lista_pathname_vmc.free;
  lista_parametri_vmc.free;

  if not no_programma_taskbar then
  begin
    if assigned(menucoll) then
    begin
      menucoll.taskbar_rimuovi_programma(self.name);
    end
    else
    begin
      menugg.taskbar_rimuovi_programma(self.name);
    end;
  end;

  inherited;
end;

procedure tformbase.menu_window;
var
  i, indice: word;
begin
  if not(fsmodal in formstate) then
  begin
    if screen.formcount = 2 then
    begin
      messaggio(100, 'non ci sono programmi in esecuzione');
    end
    else if screen.formcount > 3 then
    begin
      lista_programmi_in_esecuzione.clear;
      if popup_programmi_in_esecuzione.items.count > 0 then
      begin
        for i := 0 to popup_programmi_in_esecuzione.items.count - 1 do
        begin

          programmi_in_esecuzione[i].free;
        end;
      end;

      indice := 0;

      for i := 0 to screen.formcount - 1 do
      begin
        if (lowercase(screen.forms[i].name) <> 'login') and (lowercase(screen.forms[i].name) <> 'menugg') and
          (lowercase(screen.forms[i].name) <> lowercase(programma)) then
        begin
          if i <= 22 then
          begin
            programmi_in_esecuzione[indice] := tmenuitem.create(self);
            programmi_in_esecuzione[indice].caption := screen.forms[i].caption;
            programmi_in_esecuzione[indice].name := 'programma_in_esecuzione_' + setta_lunghezza(indice, 2, 0);
            programmi_in_esecuzione[indice].imageindex := 3;
            popup_programmi_in_esecuzione.items.add(programmi_in_esecuzione[indice]);
            programmi_in_esecuzione[indice].onclick := programmi_in_esecuzione_click;
            lista_programmi_in_esecuzione.addobject(programmi_in_esecuzione[indice].caption, screen.forms[i]);
            indice := indice + 1;
          end;
        end;
      end;
      popup_programmi_in_esecuzione.popup(self.left + 68, self.top + 50);
    end;
  end;
end;

procedure tformbase.programmi_in_esecuzione_click(sender: tobject);
var
  i: word;
begin
  try
    i := strtoint(copy((sender as tmenuitem).name, length((sender as tmenuitem).name) - 1, 2));
    (lista_programmi_in_esecuzione.objects[i] as tform).show;
  except
    messaggio(200, 'programma non in memoria');
  end;
end;

procedure tformbase.mnu_finestre_aperteClick(sender: tobject);
begin
  inherited;
  menu_window;
end;

procedure tformbase.mnu_prg_codice_direttoClick(sender: tobject);
var
  i: word;
  campo, parametri_passati: string;
begin
  inherited;

  parametri_passati := '';
  if arc_prg.fieldbyname('parametri_prg_codice_diretto').asstring <> '' then
  begin
    i := 0;
    campo := '';
    if arc_prg.fieldbyname('parametri_prg_codice_diretto').asstring <> '' then
    begin
      repeat
        inc(i);
        campo := arc.cerca_campo_csv(i, arc_prg.fieldbyname('parametri_prg_codice_diretto').asstring, ';');
        if campo <> '' then
        begin
          try
            if parametri_passati <> '' then
            begin
              parametri_passati := parametri_passati + '||';
            end;

            if lowercase(campo) = 'dit_codice' then
            begin
              parametri_passati := parametri_passati + ditta;
            end
            else if lowercase(campo) = 'ese_codice' then
            begin
              parametri_passati := parametri_passati + esercizio;
            end
            else
            begin
              parametri_passati := parametri_passati + tabella.fieldbyname(campo).asstring;
            end;
          except
          end;
        end;
      until campo = '';
    end;
  end;

  esegui_programma(arc_prg.fieldbyname('prg_codice_diretto').asstring, '', true, parametri_passati);
end;

procedure tformbase.activecontrolchange(sender: tobject);
begin
  inherited;

  try
    if (screen.activecontrol <> nil) and (tipo_programma <> '') then
    begin
      if trim((screen.activecontrol as tcontrol).hint) = '' then
      begin
        statusbar.panels[1].text := screen.activecontrol.name;
      end
      else
      begin
        statusbar.panels[1].text := screen.activecontrol.name + ' - ' + (screen.activecontrol as tcontrol).hint;
      end;

      if help_personalizzato = 'si' then
      begin
        query_help_personalizzato.close;
        query_help_personalizzato.parambyname('prg_codice').asstring := programma;
        query_help_personalizzato.parambyname('nome_campo').asstring := (screen.activecontrol as tcontrol).name;
        query_help_personalizzato.open;
        if query_help_personalizzato.isempty then
        begin
          tool_ctrl_f4.enabled := false;
        end
        else
        begin
          tool_ctrl_f4.enabled := true;
          statusbar.panels[1].text := statusbar.panels[1].text + ' [Ctrl+F4 = help personalizzato]';
        end;
      end
      else
      begin
        tool_ctrl_f4.enabled := false;
      end;

      // tasti toolbar di lookup abilitati contestualmente dai campi di input
      tool_f4.enabled := false;
      tool_f5.enabled := false;
      tool_f6.enabled := false;

      if (screen.activecontrol is tcustomedit) and
        (ispublishedprop(screen.activecontrol, 'lookcolltable')) and
        (ispublishedprop(screen.activecontrol, 'lookcollprogram')) and
        (ispublishedprop(screen.activecontrol, 'lookcollpopupmenu'))
      then
      begin
        tool_f4.enabled := getpropvalue(screen.activecontrol, 'lookcolltable') <> '';
        tool_f5.enabled := getpropvalue(screen.activecontrol, 'lookcollprogram') <> '';

        if ((screen.activecontrol is trzedit_go)
          and (trzedit_go(screen.activecontrol).lookcollpopupmenu <> nil)
          and (trzedit_go(screen.activecontrol).lookcollpopupmenu <> arc.pop_arc))
          or
          ((screen.activecontrol is trzdbedit_go)
          and (trzdbedit_go(screen.activecontrol).lookcollpopupmenu <> nil)
          and (trzdbedit_go(screen.activecontrol).lookcollpopupmenu <> arc.pop_arc))
          or
          ((screen.activecontrol is trznumericedit_go)
          and (trznumericedit_go(screen.activecontrol).lookcollpopupmenu <> nil)
          and (trznumericedit_go(screen.activecontrol).lookcollpopupmenu <> arc.pop_arc))
          or
          ((screen.activecontrol is trzdbnumericedit_go)
          and (trzdbnumericedit_go(screen.activecontrol).lookcollpopupmenu <> nil)
          and (trzdbnumericedit_go(screen.activecontrol).lookcollpopupmenu <> arc.pop_arc))
          or
          ((screen.activecontrol is trzdatetimeedit_go)
          and (trzdatetimeedit_go(screen.activecontrol).lookcollpopupmenu <> nil)
          and (trzdatetimeedit_go(screen.activecontrol).lookcollpopupmenu <> arc.pop_arc))
          or
          ((screen.activecontrol is trzdbdatetimeedit_go)
          and (trzdbdatetimeedit_go(screen.activecontrol).lookcollpopupmenu <> nil)
          and (trzdbdatetimeedit_go(screen.activecontrol).lookcollpopupmenu <> arc.pop_arc))
        then
        begin
          tool_f6.enabled := true;
        end;
      end;
    end;
  except
  end;
end;

procedure tformbase.doppio_click(sender: tobject);
begin
  visualizza_collegato;
end;

procedure tformbase.hint_pop_up(sender: tobject;
  button:
  tmousebutton;
  shift:
  tshiftstate;
  x, y: integer);
var
  abilitato: boolean;
begin
  if arc.utn.fieldbyname('menu_popup_archivi').asstring = 'si' then
  begin
    if (((sender is trzdbedit_go) and (trzdbedit_go(sender).text <> '') and
      ((trzdbedit_go(sender).lookcollpopupmenu = arc.pop_arc_art) or
      (trzdbedit_go(sender).lookcollpopupmenu = arc.pop_arc_cen) or
      (trzdbedit_go(sender).lookcollpopupmenu = arc.pop_arc_cli) or
      (trzdbedit_go(sender).lookcollpopupmenu = arc.pop_arc_cms) or
      (trzdbedit_go(sender).lookcollpopupmenu = arc.pop_arc_csp) or
      (trzdbedit_go(sender).lookcollpopupmenu = arc.pop_arc_frn) or
      (trzdbedit_go(sender).lookcollpopupmenu = arc.pop_arc_gen)))) or
    //
      (((sender is trzedit_go) and (trzedit_go(sender).text <> '') and
      ((trzedit_go(sender).lookcollpopupmenu = arc.pop_arc_art) or
      (trzedit_go(sender).lookcollpopupmenu = arc.pop_arc_cen) or
      (trzedit_go(sender).lookcollpopupmenu = arc.pop_arc_cli) or
      (trzedit_go(sender).lookcollpopupmenu = arc.pop_arc_cms) or
      (trzedit_go(sender).lookcollpopupmenu = arc.pop_arc_csp) or
      (trzedit_go(sender).lookcollpopupmenu = arc.pop_arc_frn) or
      (trzedit_go(sender).lookcollpopupmenu = arc.pop_arc_gen)))) then
    begin
      if button = mbright then
      begin
        if tool_f6.enabled then
        begin
          abilitato := true;
        end
        else
        begin
          tool_f6.enabled := true;
          abilitato := false;
        end;
        dati_aggiuntivi_collegato(sender as twincontrol);
        if not abilitato then
        begin
          tool_f6.enabled := false;
        end;
      end;
    end;
  end;
end;

procedure tformbase.salvadimensionicolonne1click(sender: tobject);
begin
  inherited;
  if supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si') then
  begin
    if (screen.activecontrol is trzdbgrid_go) and (programma <> '') then
    begin
      salva_dimensioni_colonne(screen.activecontrol as trzdbgrid_go, programma);
    end;
  end
  else
  begin
    messaggio(200, 'solo gli utenti supervisore e manutentore posssono ridimensionare le colonne della griglia');
  end;
end;

procedure tformbase.esegui_postit(nome: string; id: integer);
var
  pr: tpostit;
begin
  pr := tpostit.create(nil);
  try
    pr.nome := nome;
    pr.id := id;
    pr.showmodal;
  finally
    pr.free;
  end;
end;

procedure tformbase.salva_dimensioni_colonne(griglia: trzdbgrid_go; codice_programma: string);
var
  i: word;
  stringa: string;
  dimensioni_colonne_pgp: tmyquery_go;
begin

  dimensioni_colonne_pgp := tmyquery_go.create(nil);
  dimensioni_colonne_pgp.connection := arc.arc;
  dimensioni_colonne_pgp.sql.text := 'select * from pgp where prg_codice = :prg_codice';

  try
    for i := 0 to griglia.columns.count - 1 do
    begin
      if i > 0 then
      begin
        stringa := stringa + ';';
      end;
      stringa := stringa + inttostr(griglia.columns[i].width);
    end;
    if stringa <> '' then
    begin
      dimensioni_colonne_pgp.close;
      dimensioni_colonne_pgp.parambyname('prg_codice').asstring := codice_programma;
      dimensioni_colonne_pgp.open;
      if dimensioni_colonne_pgp.isempty then
      begin
        dimensioni_colonne_pgp.append;
        dimensioni_colonne_pgp.fieldbyname('prg_codice').asstring := codice_programma;
        dimensioni_colonne_pgp.post;
        dimensioni_colonne_pgp.refresh;
      end;
      dimensioni_colonne_pgp.edit;
      if lowercase(griglia.name) = 'v_griglia' then
      begin
        dimensioni_colonne_pgp.fieldbyname('colonne_griglia').asstring := stringa;
      end
      else if lowercase(griglia.name) = 'v_griglia_righe' then
      begin
        dimensioni_colonne_pgp.fieldbyname('colonne_griglia_righe').asstring := stringa;
      end
      else if lowercase(griglia.name) = 'v_griglia_iva' then
      begin
        dimensioni_colonne_pgp.fieldbyname('colonne_griglia_iva').asstring := stringa;
      end
      else if lowercase(griglia.name) = 'v_griglia_dettaglio' then
      begin
        dimensioni_colonne_pgp.fieldbyname('colonne_griglia_dettaglio').asstring := stringa;
      end
      else
      begin
        dimensioni_colonne_pgp.fieldbyname('nome_griglia_extra').asstring := griglia.name;
        dimensioni_colonne_pgp.fieldbyname('colonne_griglia_extra').asstring := stringa;
      end;
      dimensioni_colonne_pgp.post;
      dimensioni_colonne_pgp.close;
    end;
  except
  end;

  dimensioni_colonne_pgp.free;
end;

function tformbase.calcola_quantita_dimensioni(art, tabella_righe: tmyquery_go;
  vendite: boolean = true; evasione: boolean = false): double;
var
  dimensione, dimensione1, dimensione2, dimensione3: double;
  campo_colli, campo_confezioni: string;
begin
  result := 0;

  if evasione then
  begin
    campo_colli := 'evadoc_numero_colli';
    campo_confezioni := 'evadoc_numero_confezioni';
  end
  else
  begin
    campo_colli := 'numero_colli';
    campo_confezioni := 'numero_confezioni';
  end;

  if (art.fieldbyname('gestione_dimensioni').asstring = 'si') and
    (tabella_righe.fieldbyname('dimensione1').asfloat <> 0) then
  begin
    dimensione := 1;

    if art.fieldbyname('arrotonda_dimensioni').asinteger <> 0 then
    begin
      dimensione1 := tabella_righe.fieldbyname('dimensione1').asinteger;
    end
    else
    begin
      dimensione1 := tabella_righe.fieldbyname('dimensione1').asfloat;
    end;
    if dimensione1 < tabella_righe.fieldbyname('dimensione1').asfloat then
    begin
      dimensione1 := dimensione1 + 1;
    end;
    if dimensione1 = 0 then
    begin
      dimensione1 := 1;
    end;

    if vendite then
    begin
      if dimensione1 < art.fieldbyname('dimensione_minima').asinteger then
      begin
        dimensione1 := art.fieldbyname('dimensione_minima').asinteger;
      end;
    end;

    if art.fieldbyname('arrotonda_dimensioni').asinteger <> 0 then
    begin
      dimensione2 := tabella_righe.fieldbyname('dimensione2').asinteger;
    end
    else
    begin
      dimensione2 := tabella_righe.fieldbyname('dimensione2').asfloat;
    end;
    if dimensione2 < tabella_righe.fieldbyname('dimensione2').asfloat then
    begin
      dimensione2 := dimensione2 + 1;
    end;
    if dimensione2 = 0 then
    begin
      dimensione2 := 1;
    end;
    if art.fieldbyname('numero_dimensioni').asinteger > 1 then
    begin
      if vendite then
      begin
        if dimensione2 < art.fieldbyname('dimensione_minima').asinteger then
        begin
          dimensione2 := art.fieldbyname('dimensione_minima').asinteger;
        end;
      end;
    end;

    if art.fieldbyname('arrotonda_dimensioni').asinteger <> 0 then
    begin
      dimensione3 := tabella_righe.fieldbyname('dimensione3').asinteger;
    end
    else
    begin
      dimensione3 := tabella_righe.fieldbyname('dimensione3').asfloat;
    end;
    if dimensione3 < tabella_righe.fieldbyname('dimensione3').asfloat then
    begin
      dimensione3 := dimensione3 + 1;
    end;
    if dimensione3 = 0 then
    begin
      dimensione3 := 1;
    end;
    if art.fieldbyname('numero_dimensioni').asinteger > 2 then
    begin
      if vendite then
      begin
        if dimensione3 < art.fieldbyname('dimensione_minima').asinteger then
        begin
          dimensione3 := art.fieldbyname('dimensione_minima').asinteger;
        end;
      end;
    end;

    if art.fieldbyname('campo_base_dimensioni').asstring = 'colli' then
    begin
      dimensione := tabella_righe.fieldbyname(campo_colli).asinteger;
    end
    else if art.fieldbyname('campo_base_dimensioni').asstring = 'confezioni' then
    begin
      dimensione := tabella_righe.fieldbyname(campo_confezioni).asinteger;
    end;
    if art.fieldbyname('numero_dimensioni').asinteger = 1 then
    begin
      if vendite and (art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) and
        (trunc(dimensione1) mod art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) then
      begin
        dimensione1 := ((trunc(dimensione1 / art.fieldbyname('arrotonda_dimensioni').asinteger)) + 1) *
          art.fieldbyname('arrotonda_dimensioni').asinteger;
      end;
      dimensione1 := dimensione1 / art.fieldbyname('divisore_dimensioni').asinteger;
      if tabella_righe.fieldbyname('dimensione2').asfloat <> 0 then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('dimensione2').asfloat := 0;
        end;
      end;
      if tabella_righe.fieldbyname('dimensione3').asfloat <> 0 then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('dimensione3').asfloat := 0;
        end;
      end;
    end;
    if art.fieldbyname('numero_dimensioni').asinteger = 2 then
    begin
      if vendite and (art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) and
        (trunc(dimensione1) mod art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) then
      begin
        dimensione1 := ((trunc(dimensione1 / art.fieldbyname('arrotonda_dimensioni').asinteger)) + 1) *
          art.fieldbyname('arrotonda_dimensioni').asinteger;
      end;
      dimensione1 := dimensione1 / art.fieldbyname('divisore_dimensioni').asinteger;

      if vendite and (art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) and
        (trunc(dimensione2) mod art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) then
      begin
        dimensione2 := ((trunc(dimensione2 / art.fieldbyname('arrotonda_dimensioni').asinteger)) + 1) *
          art.fieldbyname('arrotonda_dimensioni').asinteger;
      end;
      dimensione2 := dimensione2 / art.fieldbyname('divisore_dimensioni').asinteger;

      if tabella_righe.fieldbyname('dimensione3').asfloat <> 0 then
      begin
        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('dimensione3').asfloat := 0;
        end;
      end;
    end;
    if art.fieldbyname('numero_dimensioni').asinteger = 3 then
    begin
      if vendite and (art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) and
        (trunc(dimensione1) mod art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) then
      begin
        dimensione1 := ((trunc(dimensione1 / art.fieldbyname('arrotonda_dimensioni').asinteger)) + 1) *
          art.fieldbyname('arrotonda_dimensioni').asinteger;
      end;
      dimensione1 := dimensione1 / art.fieldbyname('divisore_dimensioni').asinteger;

      if vendite and (art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) and
        (trunc(dimensione2) mod art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) then
      begin
        dimensione2 := ((trunc(dimensione2 / art.fieldbyname('arrotonda_dimensioni').asinteger)) + 1) *
          art.fieldbyname('arrotonda_dimensioni').asinteger;
      end;
      dimensione2 := dimensione2 / art.fieldbyname('divisore_dimensioni').asfloat;

      if vendite and (art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) and
        (trunc(dimensione3) mod art.fieldbyname('arrotonda_dimensioni').asinteger <> 0) then
      begin
        dimensione3 := ((trunc(dimensione3 / art.fieldbyname('arrotonda_dimensioni').asinteger)) + 1) *
          art.fieldbyname('arrotonda_dimensioni').asinteger;
      end;
      dimensione3 := dimensione3 / art.fieldbyname('divisore_dimensioni').asinteger;
    end;

    result := dimensione1 * dimensione2 * dimensione3 * art.fieldbyname('coefficiente_dimensioni').asfloat;

    if vendite and (art.fieldbyname('superficie_minima').asfloat > result) then
    begin
      result := art.fieldbyname('superficie_minima').asfloat;
    end;

    result := arrotonda(result * dimensione, cifre_decimali_quantita, 2);
  end;
end;

procedure TFORMBASE.carica_vmc;
var
  voce_menu_collegato: tmenuitem;
  i: integer;
begin
  if read_tabella(arc.arc, 'vmc', 'prg_codice', programma) then
  begin
    mnu_lista_vmc.visible := true;
    i := 0;
    while not archivio_arc.eof do
    begin
      voce_menu_collegato := tmenuitem.create(self);
      voce_menu_collegato.caption := archivio_arc.fieldbyname('descrizione').asstring;
      voce_menu_collegato.tag := i;
      voce_menu_collegato.onclick := popupvmcclick;
      mnu_lista_vmc.add(voce_menu_collegato);
      lista_pathname_vmc.add(archivio_arc.fieldbyname('pathname').asstring);
      lista_parametri_vmc.add(archivio_arc.fieldbyname('parametri_programma_eseguibile').asstring);
      archivio_arc.next;
      i := i + 1;
    end;
  end;
end;

procedure TFORMBASE.assegna_numerazione_enter(connessione: tmyconnection_go;
  tabella_numerazione: tmyquery_go; data: tdatetime; tipo, serie: string;
  campo: tcustomedit; campo_database: string);
var
  intero: integer;
begin
  if campo is trznumericedit_go then
  begin
    variato_importo := trznumericedit_go(campo).intvalue;
    intero := trznumericedit_go(campo).intvalue;
  end
  else if campo is trzdbnumericedit_go then
  begin
    variato_importo := trzdbnumericedit_go(campo).intvalue;
    intero := trzdbnumericedit_go(campo).intvalue;
  end
  else
  begin
    intero := 0;
  end;

  if variato_importo = 0 then
  begin
    assegna_numerazione(connessione, tabella_numerazione, data, tipo, serie, campo, campo_database, intero);
    campo.selectall;
  end;
end;

procedure TFORMBASE.assegna_numerazione_exit(connessione: tmyconnection_go;
  tabella_numerazione: tmyquery_go; data: tdatetime; tipo, serie: string;
  campo: tcustomedit; campo_database: string);
var
  intero: integer;
begin
  if campo is trznumericedit_go then
  begin
    intero := trznumericedit_go(campo).intvalue;
  end
  else if campo is trzdbnumericedit_go then
  begin
    intero := trzdbnumericedit_go(campo).intvalue;
  end
  else
  begin
    intero := 0;
  end;

  if intero = 0 then
  begin
    messaggio(000, 'valore non consentito');
    if campo.canfocus then
    begin
      campo.selectall;
      campo.setfocus;
    end;
  end
  else
  begin
    if variato_importo <> intero then
    begin
      assegna_numerazione(connessione, tabella_numerazione, data, tipo, serie, campo, campo_database, intero);

      if campo is trznumericedit_go then
      begin
        progressivo_cnt := trznumericedit_go(campo).intvalue;
      end
      else if campo is trzdbnumericedit_go then
      begin
        progressivo_cnt := trzdbnumericedit_go(campo).intvalue;
      end;
    end;
  end;
end;

procedure TFORMBASE.assegna_numerazione(connessione: tmyconnection_go;
  tabella_numerazione: tmyquery_go; data: tdatetime; tipo, serie: string;
  campo: tcustomedit; campo_database: string; progressivo: double);
begin
  if progressivo = 0 then
  begin
    arc.assegna_numerazione(connessione, tipo, serie, data, progressivo, false);
  end
  else
  begin
    arc.assegna_numerazione(connessione, tipo, serie, data, progressivo);
  end;
  if tabella_numerazione <> nil then
  begin
    if tabella_edit(tabella_numerazione) then
    begin
      tabella_numerazione.fieldbyname(campo_database).asfloat := progressivo;
    end;
  end
  else
  begin
    if campo is trznumericedit_go then
    begin
      trznumericedit_go(campo).value := progressivo;
    end
    else if campo is trzdbnumericedit_go then
    begin
      trzdbnumericedit_go(campo).value := progressivo;
    end;
  end;
end;

procedure TFORMBASE.esci;
begin
  if not((tipo_programma = 'gesarc') or (tipo_programma = 'gesarcgrd') or (tipo_programma = 'gesarcass')
    or (tipo_programma = 'gesdoc') or (tipo_programma = 'gestree') or (tipo_programma = 'gesdociv')
    or (tipo_programma = 'gesdocde') or (tipo_programma = 'gesgri') or (tipo_programma = 'gesgrd')
    or (tipo_programma = 'gesmd')) then
  begin
    close;
    abort;
  end;
end;
procedure TFORMBASE.tabella_controllo(accetta_vuoto: boolean; query_tabella_controllo: tmyquery_go;
  codice_tabella_controllo_01, codice_tabella_controllo_02, codice_tabella_controllo_03, codice_tabella_controllo_04, codice_tabella_controllo_05: tcustomedit;
  blocco: boolean; faldone: trzpagecontrol; pagina: trztabsheet; tabella_gestione: tdataset);
var
  record_inesistente: boolean;
begin
  record_inesistente := true;

  if controllo then

  begin
    if (accetta_vuoto) and
      ((codice_tabella_controllo_01.text = '') or (codice_tabella_controllo_02.text = '') or
      (codice_tabella_controllo_03.text = '') or (codice_tabella_controllo_04.text = '') or
      (codice_tabella_controllo_04.text = '')) then
    begin
      query_tabella_controllo.params[0].asstring := '';
      query_tabella_controllo.params[1].asstring := '';
      query_tabella_controllo.params[2].asstring := '';
      query_tabella_controllo.params[3].asstring := '';
      query_tabella_controllo.params[4].asstring := '';
      query_tabella_controllo.close;
      query_tabella_controllo.open;
    end
    else
    begin
      if blocco or (
        (query_tabella_controllo.params[0].asstring <> codice_tabella_controllo_01.text) or
        (query_tabella_controllo.params[1].asstring <> codice_tabella_controllo_02.text) or
        (query_tabella_controllo.params[2].asstring <> codice_tabella_controllo_03.text) or
        (query_tabella_controllo.params[3].asstring <> codice_tabella_controllo_04.text) or
        (query_tabella_controllo.params[4].asstring <> codice_tabella_controllo_05.text)
        ) then
      begin
        query_tabella_controllo.params[0].asstring := codice_tabella_controllo_01.text;
        query_tabella_controllo.params[1].asstring := codice_tabella_controllo_02.text;
        query_tabella_controllo.params[2].asstring := codice_tabella_controllo_03.text;
        query_tabella_controllo.params[3].asstring := codice_tabella_controllo_04.text;
        query_tabella_controllo.params[4].asstring := codice_tabella_controllo_05.text;
        query_tabella_controllo.close;
        query_tabella_controllo.open;
        if query_tabella_controllo.isempty then
        begin
          query_tabella_controllo.params[0].asstring := '';
          query_tabella_controllo.params[1].asstring := '';
          query_tabella_controllo.params[2].asstring := '';
          query_tabella_controllo.params[3].asstring := '';
          query_tabella_controllo.params[4].asstring := '';
          record_inesistente := true;
        end
        else
        begin
          record_inesistente := false;
        end;
      end
      else
      begin
        record_inesistente := false;
      end;

      if record_inesistente then
      begin
        if blocco then
        begin
          if pagina <> nil then
          begin
            faldone.activepage := pagina;
          end;

          if codice_tabella_controllo_01.canfocus then
          begin
            codice_tabella_controllo_01.setfocus;
          end
          else if codice_tabella_controllo_02.canfocus then
          begin
            codice_tabella_controllo_02.setfocus;
          end
          else if codice_tabella_controllo_03.canfocus then
          begin
            codice_tabella_controllo_03.setfocus;
          end
          else if codice_tabella_controllo_04.canfocus then
          begin
            codice_tabella_controllo_04.setfocus;
          end
          else if codice_tabella_controllo_05.canfocus then
          begin
            codice_tabella_controllo_05.setfocus;
          end;
          visualizza_collegato(true);
          abort;
        end;
      end;
    end;
    if blocco and not record_inesistente then
    begin
      controllo_postit(query_tabella_controllo);
    end;
  end;
end;

end.

