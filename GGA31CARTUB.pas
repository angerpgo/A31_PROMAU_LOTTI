unit GGA31CARTUB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGELABORA, DB, query_go, MyAccess, Menus, idGlobalProtocols,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs, ToolWin, DBCtrls,
  Grids, dbgrids, RzDBGrid, Mask, MemDS, VirtualTable,
  GGFORMBASE, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres,
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, DBAccess, RzEdit, DAScript,
  MyScript;

type

  PNodo = ^TNodo;

  TNodo = record
    tipo: string;
    codice1: string;
    codice2: string;
    codice3: string;
    codice4: string;
    codice5: string;
    codice6: string;
  end;

type
  TA31CARTUB = class(TFORMBASE)
    query_gen: tmyquery_go;
    pnl_albero: TRzPanel;
    Panel2: TRzPanel;
    v_griglia: TRzTreeView;
    pnl_dati: TRzPanel;
    pnl_tub: TRzPanel;
    tab_control: TRzPageControl;
    tab_pagina1: TRzTabSheet;
    Label14: TRzLabel;
    v_tma_codice: trzdbedit_go;
    v_obsoleto: TRzDBCheckBox;
    v_tma_descrizione: trzdbeditdescrizione_go;
    pannello_obsoleto: TRzPanel;
    Image1: TImage;
    tab_extra: TRzTabSheet;
    Label6: TRzLabel;
    v_codice: trzdbedit_go;
    Label12: TRzLabel;
    Label1: TRzLabel;
    v_tub_descrizione: trzdbedit_go;
    tool_espandi: TToolButton;
    tool_comprimi: TToolButton;
    tool_aggiorna_lista: TToolButton;
    v_ins_area: TRzButton;
    v_ins_corridoio: TRzButton;
    v_ins_ripiano: TRzButton;
    pnl_tsu: TRzPanel;
    Label3: TRzLabel;
    v_codice_01: trzdbedit_go;
    v_codice_02: trzdbedit_go;
    v_codice_03: trzdbedit_go;
    v_codice_04: trzdbedit_go;
    v_tsu_descrizione: trzdbedit_go;
    Label2: TRzLabel;
    dati_a31tsu: TMyQuery_go;
    dati_a31tsu_ds: TMyDataSource;
    v_salva_a31tsu: TRzRapidFireButton;
    dati_tub: TMyQuery_go;
    dati_tub_ds: TMyDataSource;
    tpc_01: TMyQuery_go;
    zucchetti: TMyQuery_go;
    gen_risconti_attivi: TMyQuery_go;
    gen_risconti_attivi_ds: TMyDataSource;
    gen_risconti_passivi: TMyQuery_go;
    gen_risconti_passivi_ds: TMyDataSource;
    gen_ratei_attivi: TMyQuery_go;
    gen_ratei_attivi_ds: TMyDataSource;
    gen_ratei_passivi: TMyQuery_go;
    gen_ratei_passivi_ds: TMyDataSource;
    gen_contabilita_cassa: TMyQuery_go;
    gen_contabilita_cassa_ds: TMyDataSource;
    tva_ds: TMyDataSource;
    tva: TMyQuery_go;
    tiv_01: TMyQuery_go;
    tiv_01_ds: TMyDataSource;
    tiv_02: TMyQuery_go;
    tiv_02_ds: TMyDataSource;
    cfg_01: TMyQuery_go;
    cfg_01_ds: TMyDataSource;
    cfg_02: TMyQuery_go;
    cfg_02_ds: TMyDataSource;
    v_canc_a31tsu: TRzRapidFireButton;
    tool_analisi_documenti: TToolButton;
    tool_importazione_documenti: TToolButton;
    tool_scansione_documenti: TToolButton;
    tool_crea_cartella: TToolButton;
    tool_analitica: TRzButton;
    tpc_analtica: TMyQuery_go;
    gen: TMyQuery_go;
    controlla_cancellazione: TMyQuery_go;
    controlla_inserimento: TMyQuery_go;
    tool_carica_tub: TToolButton;
    grb_copia: TGroupBox;
    v_copia: TRzButton;
    v_annulla_copia: TRzButton;
    sposta: TMyQuery_go;
    tool_f2: TToolButton;
    tool_f3: TToolButton;
    tool_ctrl_f1: TToolButton;
    tool_f7: TToolButton;
    tub_normalizzato: TMyQuery_go;
    v_codice_05: trzdbedit_go;
    v_ins_colonna: TRzButton;
    v_ins_cella: TRzButton;
    v_ins_ubicazione: TRzButton;
    v_ubicazione_unica: TRzDBCheckBox;
    tma_ds: TMyDataSource;
    tma: TMyQuery_go;
    RzPanel1: TRzPanel;
    v_salva_tub: TRzRapidFireButton;
    v_canc_tub: TRzRapidFireButton;
    RzLabel1: TRzLabel;
    v_colore: TRzColorComboBox;
    RzLabel2: TRzLabel;
    v_ordine: trzdbnumericedit_go;
    procedure v_grigliaGetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure Button1Click(Sender: TObject);
    procedure v_grigliaExpanded(Sender: TObject; Node: TTreeNode);
    procedure v_grigliaCollapsed(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure v_grigliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tool_espandiClick(Sender: TObject);
    procedure tool_comprimiClick(Sender: TObject);
    procedure tool_aggiorna_listaClick(Sender: TObject);
    procedure v_grigliaClick(Sender: TObject);
    procedure v_grigliaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tsu_descrizioneExit(Sender: TObject);
    procedure v_codice_02Change(Sender: TObject);
    procedure v_codice_03Change(Sender: TObject);
    procedure v_codice_04Change(Sender: TObject);
    procedure tool_analisi_documentiClick(Sender: TObject);
    procedure tool_importazione_documentiClick(Sender: TObject);
    procedure tool_scansione_documentiClick(Sender: TObject);
    procedure tool_crea_cartellaClick(Sender: TObject);
    procedure v_codice_01Exit(Sender: TObject);
    procedure v_codice_02Exit(Sender: TObject);
    procedure v_codice_03Exit(Sender: TObject);
    procedure v_codice_04Exit(Sender: TObject);
    procedure v_canc_tubClick(Sender: TObject);
    procedure v_ins_areaClick(Sender: TObject);
    procedure v_ins_corridoioClick(Sender: TObject);
    procedure v_ins_ripianoClick(Sender: TObject);
    procedure v_tub_descrizioneExit(Sender: TObject);
    procedure tab_controlExit(Sender: TObject);
    procedure v_copiaClick(Sender: TObject);
    procedure v_annulla_copiaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tool_f3Click(Sender: TObject);
    procedure tool_f2Click(Sender: TObject);
    procedure v_grigliaExit(Sender: TObject);
    procedure tool_f4Click(Sender: TObject);
    procedure tool_carica_tubClick(Sender: TObject);
    procedure tool_ctrl_f1Click(Sender: TObject);
    procedure tool_f7Click(Sender: TObject);
    procedure v_grigliaEnter(Sender: TObject);
    procedure v_canc_a31tsuClick(Sender: TObject);
    procedure v_salva_a31tsuClick(Sender: TObject);
    procedure v_salva_tubClick(Sender: TObject);
    procedure v_codice_05Exit(Sender: TObject);
    procedure v_codice_05Change(Sender: TObject);
    procedure v_tma_codiceExit(Sender: TObject);
    procedure dati_tubAfterScroll(DataSet: TDataSet);
    procedure v_ins_ubicazioneClick(Sender: TObject);
    procedure v_ins_colonnaClick(Sender: TObject);
    procedure v_ins_cellaClick(Sender: TObject);
    procedure dati_a31tsuAfterScroll(DataSet: TDataSet);
    procedure v_coloreChange(Sender: TObject);

  protected
    prima_volta, blocca_per_copia, premuto_esc: boolean;
    codice_gen_copia, tipo_conto_copiato, nodo_attivo: string;

    procedure ricarica_griglia;

    procedure disabilita_tasti_tub;
    procedure abilita_tasti_tub;

    procedure crea_treeview;
    procedure esegui_programma_collegato;
    procedure nodo_selezionato;

    procedure abilita_immagine_obsoleto;

    procedure abilitazioni;
    procedure visualizza_descrizioni;
    procedure controllo_campi;

    procedure memorizza_a31tsu;
    procedure memorizza_tub;
    procedure cancella_tub;
    procedure cancella_a31tsu;

    procedure controllo_inserimento_a31tsu(nodoptr: pnodo);

    procedure inserisci_a31tsu(livello: integer; cod_1, cod_2, cod_3, cod_4, cod_5: string);
    procedure inserisci_tub(cod_1, cod_2, cod_3, cod_4, cod_5: string);

    function conferma_tabindex: boolean;
    procedure esegui_f4;
    procedure esegui_f3;
    procedure esegui_f2;
    procedure duplica_gen;
    procedure assegna_colore;

    function duplica_ok(valore_passato: variant): boolean;
    procedure tma_codice_controllo(blocco: boolean);
    function Space(Len: Integer): string;
  public
  end;

implementation

{$r *.dfm}


uses DMARC, GGIMPALF;

procedure TA31CARTUB.v_grigliaGetImageIndex(Sender: TObject; Node: TTreeNode);
var
  NodoPtr: ^TNodo;
begin
  inherited;

  nodoptr := node.data;
  if nodoptr.codice6 <> '' then
  begin
    Node.ImageIndex := 3;
    Node.SelectedIndex := 3;
    Node.StateIndex := -1;
  end
  else if nodoptr.codice5 <> '' then
  begin
    Node.ImageIndex := 48;
    Node.SelectedIndex := 48;
    Node.StateIndex := -1;
  end
  else if nodoptr.codice4 <> '' then
  begin
    Node.ImageIndex := 47;
    Node.SelectedIndex := 47;
    Node.StateIndex := -1;
  end
  else if nodoptr.codice3 <> '' then
  begin
    Node.ImageIndex := 46;
    Node.SelectedIndex := 46;
    Node.StateIndex := -1;
  end
  else if nodoptr.codice2 <> '' then
  begin
    Node.ImageIndex := 44;
    Node.SelectedIndex := 44;
    Node.StateIndex := -1;
  end
  else if nodoptr.codice1 <> '' then
  begin
    Node.ImageIndex := 43;
    Node.SelectedIndex := 43;
    Node.StateIndex := -1;
  end;
end;

procedure TA31CARTUB.crea_treeview;
var
  NodoPtr: PNodo;
  nodo_0, nodo_1, nodo_2, nodo_3, nodo_4, nodo_5, nodo_6: ttreenode;
  spazio1: string;
  spazio2: string;
  spazio3: string;
  spazio4: string;
  spazio5: string;
  spazio6: string;
begin
  inherited;
  query.close;
  query.open;

  nodo_0 := nil;
  nodo_1 := nil;
  nodo_2 := nil;
  nodo_3 := nil;
  nodo_4 := nil;
  nodo_5 := nil;
  nodo_6 := nil;

  if query.isempty then
  begin
    tool_carica_tub.enabled := true;
    tool_f2.enabled := false;
    tool_f3.enabled := false;
    tool_f4.enabled := false;
    pnl_tsu.enabled := false;
    v_ins_corridoio.enabled := false;
    v_ins_ripiano.enabled := false;
    v_ins_ubicazione.enabled := false;
    v_copia.enabled := false;
    if v_ins_area.canfocus then
    begin
      v_ins_area.setfocus;
    end;
  end
  else
  begin
    tool_carica_tub.enabled := false;
  end;

  while not(query.Eof) do
  begin
    New(NodoPtr);
    NodoPtr^.codice1 := query.fieldbyname('codice_01').asstring;
    NodoPtr^.codice2 := query.fieldbyname('codice_02').asstring;
    NodoPtr^.codice3 := query.fieldbyname('codice_03').asstring;
    NodoPtr^.codice4 := query.fieldbyname('codice_04').asstring;
    NodoPtr^.codice5 := query.fieldbyname('codice_05').asstring;
    NodoPtr^.codice6 := query.fieldbyname('tub_codice').asstring;

    if trim(query.FieldByName('tub_codice').asstring) <> '' then
    begin
      //  sottoconti

      NodoPtr^.tipo := 'tub';
      if trim(query.FieldByName('codice_02').asstring) = '' then
      begin
        nodo_6 := nodo_1;
      end
      else if (trim(query.FieldByName('codice_03').asstring) = '') and
        (trim(query.FieldByName('codice_02').asstring) <> '') then
      begin
        nodo_6 := nodo_2;
      end
      else if (trim(query.FieldByName('codice_04').asstring) = '') and
        (trim(query.FieldByName('codice_03').asstring) <> '') and
        (trim(query.FieldByName('codice_02').asstring) <> '') then
      begin
        nodo_6 := nodo_3;
      end
      else if (trim(query.FieldByName('codice_05').asstring) = '') and
        (trim(query.FieldByName('codice_04').asstring) <> '') and
        (trim(query.FieldByName('codice_03').asstring) <> '') and
        (trim(query.FieldByName('codice_02').asstring) <> '') then
      begin
        nodo_6 := nodo_4;
      end
      else if (trim(query.FieldByName('codice_05').asstring) <> '') and
        (trim(query.FieldByName('codice_04').asstring) <> '') and
        (trim(query.FieldByName('codice_03').asstring) <> '') and
        (trim(query.FieldByName('codice_02').asstring) <> '') then
      begin
        nodo_6 := nodo_5;
      end;

      spazio5 := space(10 - length(query.FieldByName('tub_codice').asstring));

      v_griglia.Items.AddChildObject(nodo_6, query.FieldByName('tub_codice').asstring + spazio5 +
        query.FieldByName('descrizione').asstring, nodoptr);
    end
    else
    begin
      NodoPtr^.tipo := 'a31tsu';

      //  livelli 1
      if trim(query.FieldByName('codice_02').asstring) = '' then
      begin

        spazio1 := space(5 - length(query.FieldByName('codice_01').asstring));

        nodo_1 := v_griglia.Items.AddChildObject(nodo_0, query.FieldByName('codice_01').asstring + spazio1 +
          query.FieldByName('descrizione').asstring, nodoptr);
        nodo_1.HasChildren := true;
      end;

      if (trim(query.FieldByName('codice_03').asstring) = '') and
        (trim(query.FieldByName('codice_02').asstring) <> '')
      then
      begin

        spazio1 := space(5 - length(query.FieldByName('codice_01').asstring));
        spazio2 := space(5 - length(query.FieldByName('codice_02').asstring));

        nodo_2 := v_griglia.Items.AddChildObject(nodo_1, query.FieldByName('codice_01').asstring + spazio1 +
          query.FieldByName('codice_02').asstring + spazio2 + query.FieldByName('descrizione').asstring, nodoptr);
        nodo_2.HasChildren := true;
      end;

      if (trim(query.FieldByName('codice_04').asstring) = '') and
        (trim(query.FieldByName('codice_03').asstring) <> '') and
        (trim(query.FieldByName('codice_02').asstring) <> '')
      then
      begin
        spazio1 := space(5 - length(query.FieldByName('codice_01').asstring));
        spazio2 := space(5 - length(query.FieldByName('codice_02').asstring));
        spazio3 := space(5 - length(query.FieldByName('codice_03').asstring));

        nodo_3 := v_griglia.Items.AddChildObject(nodo_2, query.FieldByName('codice_01').asstring + spazio1 +
          query.FieldByName('codice_02').asstring + spazio2 +
          query.FieldByName('codice_03').asstring + spazio3 +
          query.FieldByName('descrizione').asstring, nodoptr);
        nodo_3.HasChildren := true;
      end;

      if (trim(query.FieldByName('codice_05').asstring) = '') and
        (trim(query.FieldByName('codice_04').asstring) <> '') and
        (trim(query.FieldByName('codice_03').asstring) <> '') and
        (trim(query.FieldByName('codice_02').asstring) <> '')
      then

      begin
        spazio1 := space(5 - length(query.FieldByName('codice_01').asstring));
        spazio2 := space(5 - length(query.FieldByName('codice_02').asstring));
        spazio3 := space(5 - length(query.FieldByName('codice_03').asstring));
        spazio4 := space(5 - length(query.FieldByName('codice_04').asstring));

        nodo_4 := v_griglia.Items.AddChildObject(nodo_3, query.FieldByName('codice_01').asstring + spazio1 +
          query.FieldByName('codice_02').asstring + spazio2 +
          query.FieldByName('codice_03').asstring + spazio3 +
          query.FieldByName('descrizione').asstring, nodoptr);
        nodo_4.HasChildren := true;

      end;

      if (trim(query.FieldByName('codice_05').asstring) <> '') and
        (trim(query.FieldByName('codice_04').asstring) <> '') and
        (trim(query.FieldByName('codice_03').asstring) <> '') and
        (trim(query.FieldByName('codice_02').asstring) <> '')
      then
      begin
        spazio1 := space(5 - length(query.FieldByName('codice_01').asstring));
        spazio2 := space(5 - length(query.FieldByName('codice_02').asstring));
        spazio3 := space(5 - length(query.FieldByName('codice_03').asstring));
        spazio4 := space(5 - length(query.FieldByName('codice_04').asstring));
        spazio5 := space(5 - length(query.FieldByName('codice_05').asstring));

        nodo_5 := v_griglia.Items.AddChildObject(nodo_4, query.FieldByName('codice_01').asstring + spazio1 +
          query.FieldByName('codice_02').asstring + spazio2 +
          query.FieldByName('codice_03').asstring + spazio3 +
          query.FieldByName('codice_04').asstring + spazio4 +
          query.FieldByName('codice_05').asstring + spazio5 +
          query.FieldByName('descrizione').asstring, nodoptr);
        nodo_5.HasChildren := true;
      end;

    end;

    query.Next;
  end;
end;


procedure TA31CARTUB.Button1Click(Sender: TObject);
begin
  inherited;
  esegui_programma_collegato;
end;

procedure TA31CARTUB.esegui_programma_collegato;
var
  NodoPtr: PNodo;
begin
  NodoPtr := v_griglia.Selected.Data;
  if nodoptr.tipo = 'tub' then
  begin
    codice_passato := nodoptr.codice5;
    esegui_programma('A31GESEUB', codice_passato, true);
  end
  else
  begin
    codice_passato := vararrayof([nodoptr.codice1, nodoptr.codice2, nodoptr.codice3, nodoptr.codice4]);
    esegui_programma('A31GESTSU', codice_passato, true);
  end;

  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
  end;
end;

procedure TA31CARTUB.v_grigliaEnter(Sender: TObject);
begin
  inherited;
  controllo := true;
end;

procedure TA31CARTUB.v_grigliaExit(Sender: TObject);
begin
  inherited;
  tool_f4.enabled := false;
end;

procedure TA31CARTUB.v_grigliaExpanded(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  tool_comprimi.enabled := true;
end;

procedure TA31CARTUB.abilita_tasti_tub;
begin
  v_salva_tub.enabled := true;
  v_canc_tub.enabled := true;
  tool_analisi_documenti.enabled := true;
  tool_importazione_documenti.enabled := true;
  tool_scansione_documenti.enabled := true;
  tool_crea_cartella.enabled := true;
  tool_f7.enabled := true;
end;

procedure TA31CARTUB.dati_a31tsuAfterScroll(DataSet: TDataSet);
begin
  inherited;
  v_colore.selectedcolor := dataset.fieldbyname('colore').asinteger;
end;

procedure TA31CARTUB.dati_tubAfterScroll(DataSet: TDataSet);
begin
  inherited;
  tma_codice_controllo(false);
end;

procedure TA31CARTUB.disabilita_tasti_tub;
begin
  v_salva_tub.enabled := false;
  v_canc_tub.enabled := false;
  tool_analisi_documenti.enabled := false;
  tool_importazione_documenti.enabled := false;
  tool_scansione_documenti.enabled := false;
  tool_crea_cartella.enabled := false;
  tool_f7.enabled := false;
end;

procedure TA31CARTUB.nodo_selezionato;
var
  NodoPtr: PNodo;
begin
  inherited;

  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
  end;

  NodoPtr := v_griglia.Selected.Data;
  if not blocca_per_copia then
  begin
    v_ins_area.enabled := true;
    v_ins_corridoio.enabled := true;
    v_ins_ripiano.enabled := true;
    v_ins_cella.enabled := true;
    v_ins_colonna.enabled := true;
    v_ins_ubicazione.enabled := true;
  end;
  v_copia.enabled := false;
  tab_control.activepageindex := 0;
  if nodoptr.tipo = 'tub' then
  begin
    nodo_attivo := 'tub';

    v_salva_a31tsu.enabled := false;
    v_canc_a31tsu.enabled := false;

    if not blocca_per_copia then
    begin
      pnl_tub.enabled := true;
      abilita_tasti_tub;
    end;

    dati_tub.close;
    dati_tub.parambyname('codice').asstring := nodoptr.codice6;
    dati_tub.open;

    dati_a31tsu.close;
    dati_a31tsu.parambyname('codice_01').asstring := dati_tub.fieldbyname('a31tsu_codice_01').asstring;
    dati_a31tsu.parambyname('codice_02').asstring := dati_tub.fieldbyname('a31tsu_codice_02').asstring;
    dati_a31tsu.parambyname('codice_03').asstring := dati_tub.fieldbyname('a31tsu_codice_03').asstring;
    dati_a31tsu.parambyname('codice_04').asstring := dati_tub.fieldbyname('a31tsu_codice_04').asstring;
    dati_a31tsu.parambyname('codice_05').asstring := dati_tub.fieldbyname('a31tsu_codice_05').asstring;
    dati_a31tsu.open;

    v_codice_01.enabled := false;
    v_codice_02.enabled := false;
    v_codice_03.enabled := false;
    v_codice_04.enabled := false;
    v_codice_05.enabled := false;
    v_codice.enabled := false;
    v_tsu_descrizione.enabled := false;

    if arc.dit.fieldbyname('contabilita_semplificata').asstring = 'no' then
    begin
      //      v_contabilita_semplificata_reg.enabled := false;
    end;

    if not(supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si')) then
    begin
      v_obsoleto.enabled := false;
    end;

    abilitazioni;
    visualizza_descrizioni;
    v_ins_corridoio.enabled := false;
    v_ins_ripiano.enabled := false;
    v_ins_colonna.enabled := false;
    v_ins_cella.enabled := false;
    v_ins_ubicazione.enabled := false;
    if v_copia.caption = 'taglia' then
    begin
      v_copia.enabled := true;
    end
    else
    begin
      v_copia.enabled := false;
    end;
  end
  else
  begin
    nodo_attivo := 'a31tsu';

    if not blocca_per_copia then
    begin
      v_salva_a31tsu.enabled := true;
      v_canc_a31tsu.enabled := true;
    end;
    pnl_tub.enabled := false;
    disabilita_tasti_tub;

    dati_tub.close;
    dati_a31tsu.close;
    dati_a31tsu.parambyname('codice_01').asstring := nodoptr.codice1;
    dati_a31tsu.parambyname('codice_02').asstring := nodoptr.codice2;
    dati_a31tsu.parambyname('codice_03').asstring := nodoptr.codice3;
    dati_a31tsu.parambyname('codice_04').asstring := nodoptr.codice4;
    dati_a31tsu.parambyname('codice_05').asstring := nodoptr.codice5;
    dati_a31tsu.open;

    v_codice_01.enabled := false;
    v_codice_02.enabled := false;
    v_codice_03.enabled := false;
    v_codice_04.enabled := false;
    v_codice_05.enabled := false;
    v_codice.enabled := false;

    if not blocca_per_copia then
    begin
      v_tsu_descrizione.enabled := true;
    end;

    if nodoptr.codice6 <> '' then
    begin
      v_ins_ubicazione.enabled := false;
    end;

    if read_tabella(tpc_01, nodoptr.codice1) then
    begin
      if (v_copia.caption = 'incolla') and
        (tpc_01.fieldbyname('tipo').asstring = tipo_conto_copiato)
      then
      begin
        v_copia.enabled := true;
      end
      else
      begin
        v_copia.enabled := false;
      end;
    end;
  end;

end;

procedure TA31CARTUB.abilita_immagine_obsoleto;
begin
  if v_obsoleto.checked then
  begin
    pannello_obsoleto.visible := true;
  end
  else
  begin
    pannello_obsoleto.visible := false;
  end;
end;

procedure TA31CARTUB.v_annulla_copiaClick(Sender: TObject);
begin
  inherited;
  v_copia.caption := 'taglia';
  v_copia.Font.Style := [];
  v_annulla_copia.enabled := false;
  v_copia.enabled := false;
  codice_gen_copia := '';
  blocca_per_copia := false;
  tool_f2.enabled := true;
  tool_f4.enabled := true;
end;

procedure TA31CARTUB.v_canc_a31tsuClick(Sender: TObject);
begin
  inherited;
  cancella_a31tsu;
end;

procedure TA31CARTUB.v_canc_tubClick(Sender: TObject);
begin
  inherited;
  cancella_tub;
end;

procedure TA31CARTUB.cancella_tub;
begin
  if arc.utn.fieldbyname('disattiva_cancellazione').asstring = 'si' then
  begin
    messaggio(200, 'l''utente non è abilitato alla cancellazione');
  end
  else
  begin
    if messaggio(301, '') = 1 then
    begin
      controllo_cancella_edit := true;

      messaggio(100, 'controllo integrità referenziale');

      //      controllo_cancella_edit := controllo_integrita_referenziale_gen(v_codice.text);

      if controllo_cancella_edit then
      begin
        try
          dati_tub.delete;

          pnl_tub.enabled := false;
          dati_tub.close;
          v_codice.enabled := false;
          tab_control.activepageindex := 0;

          ricarica_griglia;
        except
          dati_tub.cancel;
          messaggio(000, 'record non cancellato');
          raise;
        end;
      end;
    end;
  end;
end;

procedure TA31CARTUB.cancella_a31tsu;
begin
  controllo_cancella_edit := true;
  messaggio(100, 'controllo integrità referenziale');

  if trim(v_codice_02.text) = '' then
  begin
    if arc.controllo_integrita_referenziale('arcdit', 'tub', 'a31tsu_codice_01', '', '', '',
      v_codice_01.text, '', '', '') then
    begin
      controllo_cancella_edit := false;
      exit;
    end;
  end
  else
  begin
    if trim(v_codice_03.text) = '' then
    begin
      if arc.controllo_integrita_referenziale('arcdit', 'tub', 'a31tsu_codice_01', 'a31tsu_codice_02', '', '',
        v_codice_01.text, v_codice_02.text, '', '') then
      begin
        controllo_cancella_edit := false;
        exit;
      end;
    end
    else
    begin
      if trim(v_codice_04.text) = '' then
      begin
        if arc.controllo_integrita_referenziale('arcdit', 'tub', 'a31tsu_codice_01', 'a31tsu_codice_02', 'a31tsu_codice_03', '',
          v_codice_01.text, v_codice_02.text, v_codice_03.text, '') then
        begin
          controllo_cancella_edit := false;
          exit;
        end;
      end
      else
      begin
        if arc.controllo_integrita_referenziale('arcdit', 'tub', 'a31tsu_codice_01', 'a31tsu_codice_02', 'a31tsu_codice_03', 'a31tsu_codice_04',
          v_codice_01.text, v_codice_02.text, v_codice_03.text, v_codice_04.text) then
        begin
          controllo_cancella_edit := false;
          exit;
        end;
      end;
    end;
  end;

  controlla_cancellazione.close;
  controlla_cancellazione.SQL.clear;
  controlla_cancellazione.SQL.Add('select * from tpc');
  controlla_cancellazione.SQL.Add('where codice_01 = :codice_01');
  if (trim(v_codice_04.text) = '') and (trim(v_codice_03.text) = '') and (trim(v_codice_02.text) = '') then
  begin
    controlla_cancellazione.SQL.Add('and (codice_02 <> '''')');
    controlla_cancellazione.params[0].asstring := v_codice_01.text;
  end
  else if (trim(v_codice_04.text) = '') and (trim(v_codice_03.text) = '') then
  begin
    controlla_cancellazione.SQL.Add('and (codice_02 = :codice_02) and (codice_03 <> '''')');
    controlla_cancellazione.params[0].asstring := v_codice_01.text;
    controlla_cancellazione.params[1].asstring := v_codice_02.text;
  end
  else if trim(v_codice_04.text) = '' then
  begin
    controlla_cancellazione.SQL.Add('and (codice_02 = :codice_02) and (codice_03 = :codice_03) and (codice_04 <> '''')');
    controlla_cancellazione.params[0].asstring := v_codice_01.text;
    controlla_cancellazione.params[1].asstring := v_codice_02.text;
    controlla_cancellazione.params[2].asstring := v_codice_03.text;
  end;

  controlla_cancellazione.Open;
  if not controlla_cancellazione.Eof then
  begin
    messaggio(000, 'il codice non può essere cancellato perchè sono presenti dei sottolivelli');
    controllo_cancella_edit := false;
    exit;
  end;

  if controllo_cancella_edit then
  begin
    try
      dati_a31tsu.delete;
      ricarica_griglia;
    except
      dati_a31tsu.cancel;
      messaggio(000, 'record non cancellato');
      raise;
    end;
  end;
end;

procedure TA31CARTUB.ricarica_griglia;
begin
  v_griglia.items.clear;
  crea_treeview;
  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
  end;
end;

procedure TA31CARTUB.v_codice_01Exit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trim(v_codice_01.text) = '' then
    begin
      messaggio(002, 'codice_01');
      if v_codice_01.canfocus then
      begin
        v_codice_01.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TA31CARTUB.v_codice_02Change(Sender: TObject);
begin
  inherited;
  //  abilita_tipo;
end;

procedure TA31CARTUB.v_codice_02Exit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trim(v_codice_02.text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04', vararrayof([v_codice_01.text, '', '', ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text);
        if tabella_edit(dati_a31tsu) then
        begin
          dati_a31tsu.fieldbyname('codice_02').asstring := '';
        end;
        if v_codice_02.canfocus then
        begin
          v_codice_02.setfocus;
        end;
      end;
    end
    else
    begin
      if dati_a31tsu.State = dsInsert then
      begin
        messaggio(002, 'codice_02');
        if v_codice_02.canfocus then
        begin
          v_codice_02.setfocus;
        end;
      end;
    end;
  end;
end;

procedure TA31CARTUB.v_codice_03Change(Sender: TObject);
begin
  inherited;
  //abilita_tipo;
end;

procedure TA31CARTUB.v_codice_03Exit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trim(v_codice_03.Text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04', vararrayof([v_codice_01.text, v_codice_02.text, '', ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text + ' ' + v_codice_02.text);
        if tabella_edit(dati_a31tsu) then
        begin
          dati_a31tsu.fieldbyname('codice_03').asstring := '';
        end;
        if v_codice_03.canfocus then
        begin
          v_codice_03.setfocus;
        end;
      end;
    end
    else
    begin
      if dati_a31tsu.State = dsInsert then
      begin
        messaggio(002, 'codice_03');
        if v_codice_03.canfocus then
        begin
          v_codice_03.setfocus;
        end;
      end;
    end;
  end;
end;

procedure TA31CARTUB.v_codice_04Change(Sender: TObject);
begin
  inherited;
  //abilita_tipo;
end;

procedure TA31CARTUB.v_codice_04Exit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trim(v_codice_04.Text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04', vararrayof([v_codice_01.text, v_codice_02.text, v_codice_03.text, ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text + ' ' + v_codice_02.text + ' ' + v_codice_03.text);
        if tabella_edit(dati_a31tsu) then
        begin
          dati_a31tsu.fieldbyname('codice_04').asstring := '';
        end;
        if v_codice_04.canfocus then
        begin
          v_codice_04.setfocus;
        end;
      end;
    end
    else
    begin
      if dati_a31tsu.State = dsInsert then
      begin
        messaggio(002, 'codice_04');
        if v_codice_04.canfocus then
        begin
          v_codice_04.setfocus;
        end;
      end;
    end;
  end;

  //abilita_tipo;
end;

procedure TA31CARTUB.v_codice_05Change(Sender: TObject);
begin
  inherited;
  //
end;

procedure TA31CARTUB.v_codice_05Exit(Sender: TObject);
begin
  inherited;
  if controllo then
  begin
    if trim(v_codice_05.Text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04;codice_05', vararrayof([v_codice_01.text, v_codice_02.text, v_codice_03.text, v_codice_04.text, ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text + ' ' + v_codice_02.text + ' ' + v_codice_03.text + ' ' + v_codice_04.text);
        if tabella_edit(dati_a31tsu) then
        begin
          dati_a31tsu.fieldbyname('codice_05').asstring := '';
        end;
        if v_codice_05.canfocus then
        begin
          v_codice_05.setfocus;
        end;
      end;
    end
    else
    begin
      if dati_a31tsu.State = dsInsert then
      begin
        messaggio(002, 'codice_05');
        if v_codice_05.canfocus then
        begin
          v_codice_05.setfocus;
        end;
      end;
    end;
  end;
end;

procedure TA31CARTUB.v_coloreChange(Sender: TObject);
begin
  inherited;
  if v_colore.focused then
  begin
    assegna_colore;
  end;
end;

procedure TA31CARTUB.assegna_colore;
begin
  if tabella_edit(dati_a31tsu) then
  begin
    dati_a31tsu.fieldbyname('colore').asinteger := v_colore.selectedcolor;
  end;
end;

procedure TA31CARTUB.v_copiaClick(Sender: TObject);
begin
  inherited;
  (*
    if v_copia.caption = 'taglia' then
    begin

    codice_gen_copia := dati_gen.parambyname('codice').asstring;
    sposta.close;
    sposta.parambyname('codice').asstring := codice_gen_copia;
    sposta.open;

    if read_tabella(tpc_01, sposta.fieldbyname('tpc_codice_01').asstring) then
    begin
    tipo_conto_copiato := tpc_01.fieldbyname('tipo').asstring;
    end;

    v_copia.caption := 'incolla';
    v_copia.Font.Style := [fsBold];
    v_copia.enabled := false;
    v_annulla_copia.enabled := true;

    blocca_per_copia := true;
    v_ins_gruppo.enabled := false;
    v_ins_sottogruppo.enabled := false;
    v_ins_sottoconto.enabled := false;
    disabilita_tasti_tub;
    tool_f2.enabled := false;
    tool_f4.enabled := false;
    pnl_gen.enabled := false;
    tab_control.tabindex := 0;

    end
    else if v_copia.caption = 'incolla' then
    begin

    tabella_edit(sposta);
    sposta.fieldbyname('tpc_codice_01').asstring := dati_a31tsu.parambyname('codice_01').asstring;
    sposta.fieldbyname('tpc_codice_02').asstring := dati_a31tsu.parambyname('codice_02').asstring;
    sposta.fieldbyname('tpc_codice_03').asstring := dati_a31tsu.parambyname('codice_03').asstring;
    sposta.fieldbyname('tpc_codice_04').asstring := dati_a31tsu.parambyname('codice_04').asstring;
    sposta.post;
    ricarica_griglia;

    v_copia.caption := 'taglia';
    v_copia.Font.Style := [];
    v_annulla_copia.enabled := false;
    v_copia.enabled := false;
    tool_f2.enabled := true;
    tool_f4.enabled := true;
    codice_gen_copia := '';
    blocca_per_copia := false;
    end;
  *)
end;

procedure TA31CARTUB.v_tub_descrizioneExit(Sender: TObject);
begin
  inherited;
  if (trim(v_tub_descrizione.text) = '') and (dati_tub.state <> dsBrowse) then
  begin
    messaggio(100, 'la descrizione dell''ubicazione non può essere vuota');
    if v_tub_descrizione.canfocus then
    begin
      v_tub_descrizione.setfocus;
    end;
  end;
end;

procedure TA31CARTUB.v_tma_codiceExit(Sender: TObject);
begin
  inherited;
  tma_codice_controllo(true);
end;

procedure TA31CARTUB.tma_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tma, v_tma_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31CARTUB.v_tsu_descrizioneExit(Sender: TObject);
begin
  inherited;
  if trim(v_tsu_descrizione.text) = '' then
  begin
    tab_control.ActivePage := tab_pagina1;
    if (dati_a31tsu.State = dsEdit) or (dati_a31tsu.State = dsInsert) then
    begin
      messaggio(002, label2.caption);
      if v_tsu_descrizione.canfocus then
      begin
        v_tsu_descrizione.setfocus;
      end;
      abort;
    end;
  end
  else
  begin
    if (dati_a31tsu.State = dsEdit) or (dati_a31tsu.State = dsInsert) then
    begin
      memorizza_a31tsu;
    end;
  end;
end;

procedure TA31CARTUB.memorizza_a31tsu;
begin
  if v_codice_01.text <> '' then
  begin
    if v_tsu_descrizione.text <> '' then
    begin
      if dati_a31tsu.State = dsInsert then
      begin
        controlla_inserimento.close;
        controlla_inserimento.sql.clear;
        controlla_inserimento.sql.add('select id from a31tsu');
        controlla_inserimento.sql.add('where codice_01 = ' + quotedstr(v_codice_01.text));
        controlla_inserimento.sql.add('and codice_02 = ' + quotedstr(v_codice_02.text));
        controlla_inserimento.sql.add('and codice_03 = ' + quotedstr(v_codice_03.text));
        controlla_inserimento.sql.add('and codice_04 = ' + quotedstr(v_codice_04.text));
        controlla_inserimento.sql.add('and codice_05 = ' + quotedstr(v_codice_05.text));
        controlla_inserimento.open;

        if controlla_inserimento.isempty then
        begin
          dati_a31tsu.Post;
        end
        else
        begin
          messaggio(100, 'codice [' + v_codice_01.text + '][' + v_codice_02.text + '][' +
            v_codice_03.text + '][' + v_codice_04.text + '][' + v_codice_05.text + '] già presente in anagrafica');
          dati_a31tsu.cancel;
        end;
      end
      else if tabella_edit(dati_a31tsu) then
      begin
        dati_a31tsu.Post;
      end;
    end
    else
    begin
      messaggio(100, 'la descrizione dell''ubicazione è obbligatoria');
      dati_a31tsu.cancel;

      v_codice_01.enabled := false;
      v_codice_02.enabled := false;
      v_codice_03.enabled := false;
      v_codice_04.enabled := false;
      v_codice_05.enabled := false;

    end;
  end
  else
  begin
    messaggio(100, 'codice [' + v_codice_01.text + '][' + v_codice_02.text + '][' +
      v_codice_03.text + '][' + v_codice_04.text + '] errato');
    dati_a31tsu.cancel;

    v_codice_01.enabled := false;
    v_codice_02.enabled := false;
    v_codice_03.enabled := false;
    v_codice_04.enabled := false;
    v_codice_05.enabled := false;
  end;

  dati_a31tsu.close;

  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
    ricarica_griglia;
  end;

  controllo := true;
end;

procedure TA31CARTUB.memorizza_tub;
begin
  if v_codice.text <> '' then
  begin
    if v_tub_descrizione.text <> '' then
    begin
      if dati_tub.State = dsInsert then
      begin
        controlla_inserimento.close;
        controlla_inserimento.sql.clear;
        controlla_inserimento.sql.add('select id from gen');
        controlla_inserimento.sql.add('where codice = ' + quotedstr(v_codice.text));
        controlla_inserimento.open;

        if controlla_inserimento.isempty then
        begin
          dati_tub.Post;
        end
        else
        begin
          messaggio(100, 'codice ' + v_codice.text + ' già presente in anagrafica');
          dati_tub.cancel;
        end;
      end
      else if tabella_edit(dati_tub) then
      begin
        dati_tub.Post;
      end;
    end
    else
    begin
      messaggio(100, 'la descrizione delLl''ubicazione non può essere vuota');
      dati_tub.cancel;
    end;
  end
  else
  begin
    messaggio(100, 'il codice deLl''ubicazione non può essere vuoto');
    dati_tub.cancel;
  end;

  pnl_tub.enabled := false;
  dati_tub.close;
  v_codice.enabled := false;
  tab_control.activepageindex := 0;

  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
    ricarica_griglia;
  end;
end;

procedure TA31CARTUB.v_grigliaClick(Sender: TObject);
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin
    nodo_selezionato;
  end;

  if v_griglia.Items.count > 0 then
  begin
    tool_f4.enabled := true;
  end;
end;

procedure TA31CARTUB.v_grigliaCollapsed(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  tool_espandi.enabled := true;
end;

procedure TA31CARTUB.FormCreate(Sender: TObject);
begin
  inherited;

  tool_f4.Enabled := false;
  tool_f5.Enabled := false;
  tool_f6.Enabled := false;
  tool_comprimi.enabled := false;

  prima_volta := true;
  premuto_esc := false;

end;

procedure TA31CARTUB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key = vk_f1) and (shift = [ssctrl]) then
  begin
    inherited;
    key := 0;
    tool_ctrl_f1.click;
  end
  else if (key = vk_f4) and (shift = []) then
  begin
    if (screen.ActiveControl.classtype = TRzTreeView) then
    begin
      key := 0;
      esegui_f4;
    end
    else
    begin
      inherited;
    end;
  end
  else if (key = vk_f3) and (shift = []) then
  begin
    inherited;
    key := 0;
    esegui_f3;
  end
  else if (key = vk_f7) and (shift = []) then
  begin
    inherited;
    key := 0;
    if tool_f7.enabled = true then
    begin
      duplica_gen;
    end;
  end
  else if (key = vk_f2) and (shift = []) then
  begin
    inherited;
    key := 0;
    if (screen.ActiveControl.classtype = TRzTreeView) then
    begin
      esegui_f2;
    end;
  end
  else if (key = vk_delete) and (shift = [ssctrl]) then
  begin
    if v_canc_tub.enabled then
    begin
      key := 0;
      cancella_tub;
    end;
  end
  else if (key = VK_RETURN) and (shift = [ssCtrl]) then
  begin
    if (screen.ActiveControl.parent.name = 'pnl_tpc') then
    begin
      memorizza_a31tsu;
    end
    else if (screen.ActiveControl.parent.name = 'pnl_gen') or
      (screen.ActiveControl.parent.name = 'tab_control') or
      (screen.ActiveControl.parent.name = 'tab_pagina1') or
      (screen.ActiveControl.parent.parent.name = 'tab_extra') or
      (screen.ActiveControl.parent.parent.name = 'tab_pagina2') then
    begin
      memorizza_tub;
    end;
  end
  else if (key = VK_ESCAPE) and (shift = []) then
  begin
    if (screen.ActiveControl.parent.name = 'tab_control') or
      (screen.ActiveControl.parent.name = 'tab_pagina1') or
      (screen.ActiveControl.parent.parent.name = 'tab_extra') or
      (screen.ActiveControl.parent.parent.name = 'tab_pagina2') or
      (screen.ActiveControl.parent.name = 'pnl_gen') or
      (screen.ActiveControl.parent.name = 'pnl_tpc') then
    begin
      key := 0;
      premuto_esc := true;
      if v_griglia.canfocus then
      begin
        v_griglia.setfocus;
      end;
    end
    else
    begin
      inherited;
      key := 0;
    end;
  end
  else
  begin
    inherited;
  end;
end;

procedure TA31CARTUB.esegui_f2;
var
  connessione: tmyconnection_go;
  nome_tabella: string;
  codice: variant;
  dati: tmyquery_go;
  i: integer;
  NodoPtr: PNodo;
begin

  if tool_f2.enabled then
  begin

    codice := vararrayof([v_codice_01.text, v_codice_02.text, v_codice_03.text, v_codice_04.text, v_codice_04.text]);
    nome_tabella := 'a31tsu';
    dati := dati_a31tsu;

    connessione := arc.arcdit;

    esegui_visarc(connessione, nome_tabella, uppercase(nome_tabella), codice,
      visarc_filtro_01, visarc_filtro_02, visarc_filtro_03, '', '', '');

    findkey(dati, codice);

    for i := 0 to v_griglia.Items.Count - 1 do
    begin
      NodoPtr := v_griglia.Items[i].Data;

      if (nodoptr.codice1 = codice[0]) and
        (nodoptr.codice2 = codice[1]) and
        (nodoptr.codice3 = codice[2]) and
        (nodoptr.codice4 = codice[3]) and
        (nodoptr.codice5 = codice[4]) and
        (nodoptr.codice5 = codice[5]) then
      begin
        v_griglia.Select(v_griglia.Items[i]);
        exit;
      end;
    end;
  end;

end;

procedure TA31CARTUB.esegui_f4;
var
  connessione: tmyconnection_go;
  nome_tabella: string;
  codice: variant;
  dati: tmyquery_go;
  i: integer;
  NodoPtr: PNodo;
begin

  if tool_f4.enabled then
  begin

    codice := v_codice.text;
    nome_tabella := 'tub';
    dati := dati_tub;

    connessione := arc.arcdit;

    esegui_visarc(connessione, nome_tabella, uppercase(nome_tabella), codice,
      visarc_filtro_01, visarc_filtro_02, visarc_filtro_03, '', '', '');

    dati.active := true;
    findkey(dati, codice);

    for i := 0 to v_griglia.Items.Count - 1 do
    begin
      NodoPtr := v_griglia.Items[i].Data;

      if (nodoptr.codice5 = codice) then
      begin
        v_griglia.Select(v_griglia.Items[i]);
        exit;
      end;
    end;
  end;

end;

procedure TA31CARTUB.esegui_f3;
var
  i, j, x, y: integer;
  tipo_control: boolean;
  dati_utente_creazione: string;
  dati_data_ora_creazione: tdatetime;
  dati_utente: string;
  dati_data_ora: tdatetime;
  tabella_gestione: tmyquery_go;
  nome_tabella: string;
  popup: tpopupmenu;
begin
  if nodo_attivo = 'tub' then
  begin
    tabella_gestione := dati_tub;
    nome_tabella := 'tub ';
    popup := ARC.pop_arc;
  end
  else if nodo_attivo = 'a31tsu' then
  begin
    tabella_gestione := dati_a31tsu;
    nome_tabella := 'a31tsu';
    popup := ARC.pop_arc;
  end;

  x := 245 + toolbar.left + self.left;
  y := 60 + toolbar.top + self.top;

  //assegna_codice;
  tipo_control := false;

  if tabella_gestione.state <> dsbrowse then
  begin
    findkey(tabella_gestione, codice);
  end;

  arc.esiste_dati_aggiuntivi_archivio(tipo_control, tabella_gestione, nome_tabella,
    dati_utente_creazione, dati_data_ora_creazione, dati_utente, dati_data_ora);

  if tipo_control then
  begin
    assegna_pop(uppercase(nome_tabella), popup, dati_utente_creazione, dati_data_ora_creazione,
      dati_utente, dati_data_ora, inttostr(tabella_gestione.fieldbyname('id').asinteger), 'id');
    popup.popup(x, y);
  end;
end;

procedure TA31CARTUB.v_grigliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if v_griglia.Items.Count > 0 then
  begin
    if ((key = vk_return) and (shift = [])) then
    begin
      if v_griglia.selected.HasChildren then
      begin
        if not v_griglia.selected.expanded then
        begin
          v_griglia.selected.expand(false);
        end
        else
        begin
          v_griglia.selected.collapse(true);
        end;
      end;
    end;
  end;
end;

procedure TA31CARTUB.v_grigliaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin
    nodo_selezionato;
  end;

  if v_griglia.Items.count > 0 then
  begin
    tool_f4.enabled := true;
  end;
end;

procedure TA31CARTUB.v_ins_areaClick(Sender: TObject);
var
  livello: integer;
  NodoPtr: PNodo;
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin

    NodoPtr := v_griglia.Selected.Data;

    if nodoptr.tipo = 'a31tsu' then
    begin
      if nodoptr.codice5 <> '' then
      begin
        livello := 5;
      end
      else
        if nodoptr.codice4 <> '' then
      begin
        livello := 4;
      end
      else
      begin
        if nodoptr.codice3 <> '' then
        begin
          livello := 3;
        end
        else
        begin
          if nodoptr.codice2 <> '' then
          begin
            livello := 2;
          end
          else
          begin
            if nodoptr.codice1 <> '' then
            begin
              livello := 1;
            end;
          end;
        end;
      end;

      inserisci_a31tsu(livello - 1, nodoptr.codice1, nodoptr.codice2, nodoptr.codice3, nodoptr.codice4, nodoptr.codice5);

    end
    else
    begin
      if dati_tub.fieldbyname('a31tsu_codice_05').asstring <> '' then
      begin
        livello := 5;
      end
      else
      begin
        if dati_tub.fieldbyname('a31tsu_codice_04').asstring <> '' then
        begin
          livello := 4;
        end
        else
        begin
          if dati_tub.fieldbyname('a31tsu_codice_03').asstring <> '' then
          begin
            livello := 3;
          end
          else
          begin
            if dati_tub.fieldbyname('a31tsu_codice_02').asstring <> '' then
            begin
              livello := 2;
            end
            else
            begin
              if dati_tub.fieldbyname('a31tsu_codice_01').asstring <> '' then
              begin
                livello := 1;
              end;
            end;
          end;
        end;
      end;

      v_salva_a31tsu.enabled := true;
      v_canc_a31tsu.enabled := true;
      pnl_tub.enabled := false;
      disabilita_tasti_tub;
      v_tsu_descrizione.enabled := true;

      inserisci_a31tsu(livello,
        dati_tub.fieldbyname('a31tsu_codice_01').asstring,
        dati_tub.fieldbyname('a31tsu_codice_02').asstring,
        dati_tub.fieldbyname('a31tsu_codice_03').asstring,
        dati_tub.fieldbyname('a31tsu_codice_04').asstring,
        dati_tub.fieldbyname('a31tsu_codice_05').asstring);

      dati_tub.close;
    end;
  end
  else
  begin
    if v_griglia.Items.count = 0 then
    begin
      dati_a31tsu.params[0].value := null;
      dati_a31tsu.params[1].value := null;
      dati_a31tsu.params[2].value := null;
      dati_a31tsu.params[3].value := null;
      dati_a31tsu.params[4].value := null;
      dati_a31tsu.open;
      pnl_tsu.enabled := true;
      inserisci_a31tsu(0, '', '', '', '', '');
    end;
  end;
end;

procedure TA31CARTUB.v_ins_ripianoClick(Sender: TObject);
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin
    controllo_inserimento_a31tsu(v_griglia.Selected.Data);
  end;
end;

procedure TA31CARTUB.v_ins_ubicazioneClick(Sender: TObject);
var
  livello: integer;
  NodoPtr: PNodo;
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin

    NodoPtr := v_griglia.Selected.Data;

    if nodoptr.tipo = 'a31tsu' then
    begin

      v_salva_a31tsu.enabled := false;
      v_canc_a31tsu.enabled := false;
      pnl_tub.enabled := true;
      abilita_tasti_tub;

      if arc.dit.fieldbyname('contabilita_semplificata').asstring = 'no' then
      begin
        //        v_contabilita_semplificata_reg.enabled := false;
      end;

      if not(supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si')) then
      begin
        v_obsoleto.enabled := false;
      end;

      inserisci_tub(nodoptr.codice1, nodoptr.codice2, nodoptr.codice3, nodoptr.codice4, nodoptr.codice5);
    end;
  end;

end;

procedure TA31CARTUB.inserisci_tub(cod_1, cod_2, cod_3, cod_4, cod_5: string);
begin

  v_codice_01.enabled := false;
  v_codice_02.enabled := false;
  v_codice_03.enabled := false;
  v_codice_04.enabled := false;
  v_codice_05.enabled := false;
  v_codice.enabled := false;

  v_tsu_descrizione.enabled := false;

  if arc.dit.fieldbyname('contabilita_semplificata').asstring = 'no' then
  begin
    //v_contabilita_semplificata_reg.enabled := false;
  end;

  if not(supervisore_utente or (arc.utn.fieldbyname('manutentore').asstring = 'si')) then
  begin
    v_obsoleto.enabled := false;
  end;

  dati_tub.close;
  dati_tub.params[0].value := null;
  dati_tub.open;
  dati_tub.append;

  dati_tub.fieldbyname('a31tsu_codice_01').asstring := cod_1;
  dati_tub.fieldbyname('a31tsu_codice_02').asstring := cod_2;
  dati_tub.fieldbyname('a31tsu_codice_03').asstring := cod_3;
  dati_tub.fieldbyname('a31tsu_codice_04').asstring := cod_4;
  dati_tub.fieldbyname('a31tsu_codice_04').asstring := cod_5;

  abilitazioni;
  visualizza_descrizioni;
  v_codice.enabled := true;
  v_codice.setfocus;
end;

procedure TA31CARTUB.v_ins_cellaClick(Sender: TObject);
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin
    controllo_inserimento_a31tsu(v_griglia.Selected.Data);
  end;
end;

procedure TA31CARTUB.v_ins_colonnaClick(Sender: TObject);
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin
    controllo_inserimento_a31tsu(v_griglia.Selected.Data);
  end;

end;

procedure TA31CARTUB.v_ins_corridoioClick(Sender: TObject);
begin
  inherited;
  if v_griglia.Selected <> nil then
  begin
    controllo_inserimento_a31tsu(v_griglia.Selected.Data);
  end;
end;

procedure TA31CARTUB.controllo_inserimento_a31tsu(nodoptr: pnodo);
var
  livello: integer;
begin

  if nodoptr.tipo = 'a31tsu' then
  begin
    if nodoptr.codice5 <> '' then
    begin
      messaggio(100, 'impossibile aggiungere un ubicazione di livello inferiore al 5')
    end
    else
    begin
      if nodoptr.codice4 <> '' then
      begin
        livello := 4;
      end
      else
      begin
        if nodoptr.codice3 <> '' then
        begin
          livello := 3;
        end
        else
        begin
          if nodoptr.codice2 <> '' then
          begin
            livello := 2;
          end
          else
          begin
            if nodoptr.codice1 <> '' then
            begin
              livello := 1;
            end;
          end;
        end;
      end;
    end;

    inserisci_a31tsu(livello, nodoptr.codice1, nodoptr.codice2, nodoptr.codice3, nodoptr.codice4, nodoptr.codice4);
  end;
end;

procedure TA31CARTUB.v_salva_a31tsuClick(Sender: TObject);
begin
  inherited;
  memorizza_a31tsu;
end;

procedure TA31CARTUB.v_salva_tubClick(Sender: TObject);
begin
  inherited;
  memorizza_tub;
end;

procedure TA31CARTUB.inserisci_a31tsu(livello: integer; cod_1, cod_2, cod_3, cod_4, cod_5: string);
begin
  controllo := false;
  dati_a31tsu.append;

  v_codice_01.enabled := false;
  v_codice_02.enabled := false;
  v_codice_03.enabled := false;
  v_codice_04.enabled := false;
  v_codice_05.enabled := false;

  case livello of
    0:
      begin
        v_codice_01.enabled := true;
        v_codice_01.setfocus;
      end;
    1:
      begin
        dati_a31tsu.fieldbyname('codice_01').asstring := cod_1;
        v_codice_02.enabled := true;
        v_codice_02.setfocus;
      end;
    2:
      begin
        dati_a31tsu.fieldbyname('codice_01').asstring := cod_1;
        dati_a31tsu.fieldbyname('codice_02').asstring := cod_2;
        v_codice_03.enabled := true;
        v_codice_03.setfocus;
      end;
    3:
      begin
        dati_a31tsu.fieldbyname('codice_01').asstring := cod_1;
        dati_a31tsu.fieldbyname('codice_02').asstring := cod_2;
        dati_a31tsu.fieldbyname('codice_03').asstring := cod_3;
        v_codice_04.enabled := true;
        v_codice_04.setfocus;
      end;
    4:
      begin
        dati_a31tsu.fieldbyname('codice_01').asstring := cod_1;
        dati_a31tsu.fieldbyname('codice_02').asstring := cod_2;
        dati_a31tsu.fieldbyname('codice_03').asstring := cod_3;
        dati_a31tsu.fieldbyname('codice_04').asstring := cod_4;
        v_codice_05.enabled := true;
        v_codice_05.setfocus;
      end;
  end;

end;

procedure TA31CARTUB.abilitazioni;
begin
  abilita_immagine_obsoleto;
end;

procedure TA31CARTUB.visualizza_descrizioni;
begin
  //
end;

procedure TA31CARTUB.controllo_campi;
begin
  //
end;

procedure TA31CARTUB.tab_controlExit(Sender: TObject);
var
  falso: boolean;
  componente: twincontrol;
begin
  inherited;

  if not premuto_esc then
  begin
    if tab_control.tabindex < tab_control.pagecount - 1 then
    begin
      if (tab_control.pagecount > 1) then
      begin
        if (controllo) and (not esiste) then
        begin
          falso := false;
          while (tab_control.tabindex < tab_control.pagecount - 1) and (not falso) do
          begin
            if conferma_tabindex then
            begin
              falso := true;
              tab_control.tabindex := tab_control.tabindex + 1;
              assegna_fuoco(tab_control.pages[tab_control.tabindex], componente);
              if componente <> nil then
              begin
                if componente.canfocus then
                begin
                  componente.setfocus;
                end;
              end;
            end
            else
            begin
              tab_control.tabindex := tab_control.tabindex + 1;
            end;
          end;
        end;
      end;
    end
    else
    begin
      if (dati_tub.state = dsInsert) or (dati_tub.state = dsedit) then
      begin
        memorizza_tub;
      end;
    end;
  end
  else
  begin
    tab_control.tabindex := 0;
    premuto_esc := false;
    if (dati_tub.state = dsInsert) or (dati_tub.state = dsedit) then
    begin
      dati_tub.Cancel;
    end;
  end;
end;

function TA31CARTUB.conferma_tabindex: boolean;
begin
  result := true;
end;

procedure TA31CARTUB.FormShow(Sender: TObject);
begin
  inherited;

  crea_treeview;
  v_salva_a31tsu.enabled := false;
  v_canc_a31tsu.enabled := true;
  pnl_tub.enabled := false;
  disabilita_tasti_tub;
  tab_control.tabindex := 0;
end;

procedure TA31CARTUB.tool_aggiorna_listaClick(Sender: TObject);
begin
  inherited;
  ricarica_griglia;
end;

procedure TA31CARTUB.tool_analisi_documentiClick(Sender: TObject);
var
  documenti: Topendialog;
  cartella_documenti: string;
  continua: boolean;
begin
  inherited;
  if v_codice.text <> '' then
  begin
    if directoryexists(cartella_file + '\sottoconti\' + v_codice.text) then
    begin
      documenti := Topendialog.create(nil);

      cartella_documenti := cartella_file + '\sottoconti\' + v_codice.text;
      documenti.initialdir := cartella_documenti;
      continua := true;
      while continua do
      begin
        if documenti.execute then
        begin
          esegui(documenti.filename);
        end;
        if messaggio(300, 'prosegui con l''analisi dei documenti') <> 1 then
        begin
          continua := false;
        end;
      end;

      documenti.free;
    end
    else
    begin
      messaggio(200, 'non esiste la cartella documenti per il codice selezionato');
    end;
  end;
end;

procedure TA31CARTUB.tool_carica_tubClick(Sender: TObject);
begin
  inherited;
  (*
    if messaggio(304, 'importazione del piano dei conti standard nella ditta attiva') = 1 then
    begin
    try
    arc.imp_gen.close;
    arc.imp_gen.execute;
    ricarica_griglia;
    except
    messaggio(100, 'impossibile importare il piano dei conti. contattare l''assistenza tecnica per chiarimenti');
    end;
    end;
  *)
end;

procedure TA31CARTUB.tool_comprimiClick(Sender: TObject);
begin
  inherited;
  v_griglia.Fullcollapse;
  tool_comprimi.enabled := false;
  tool_espandi.enabled := true;
  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
  end;
end;

procedure TA31CARTUB.tool_crea_cartellaClick(Sender: TObject);
begin
  inherited;
  (*
    if v_codice.text <> '' then
    begin
    if createdir(cartella_file + '\sottoconti\' + v_codice.text) then
    begin
    messaggio(100, 'cartella creata');
    end
    else
    begin
    messaggio(100, 'cartella non creata');
    end;
    end;
  *)
end;

procedure TA31CARTUB.tool_ctrl_f1Click(Sender: TObject);
begin
  inherited;
  esegui_programma('A31STATUB', '', true);
end;

procedure TA31CARTUB.tool_espandiClick(Sender: TObject);
begin
  inherited;
  v_griglia.FullExpand;
  tool_espandi.enabled := false;
  tool_comprimi.enabled := true;

  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
  end;
end;

procedure TA31CARTUB.tool_f2Click(Sender: TObject);
begin
  inherited;
  if (screen.ActiveControl.classtype = TRzTreeView) then
  begin
    esegui_f2;
  end;
end;

procedure TA31CARTUB.tool_f3Click(Sender: TObject);
begin
  inherited;
  esegui_f3;
end;

procedure TA31CARTUB.tool_f4Click(Sender: TObject);
begin
  if (screen.ActiveControl.classtype = TRzTreeView) then
  begin
    esegui_f4;
  end
  else
  begin
    inherited;
  end;
end;

procedure TA31CARTUB.tool_f7Click(Sender: TObject);
begin
  inherited;
  duplica_gen;
end;

procedure TA31CARTUB.duplica_gen;
var
  pr: timpalf;
  i: word;
  codice_passato, codice_duplicato: string;
  duplicazione_fallita: boolean;
begin
  duplicazione_fallita := false;
  dati_tub.cancel;
  codice_duplicato := '';
  codice := dati_tub.fieldbyname('codice').asstring;
  if tool_f7.enabled then
  begin
    pr := timpalf.create(nil);
    pr.v_form_caption := 'duplicazione codice sottoconto';
    pr.v_descrizione_caption := 'codice nuovo sottoconto';
    pr.v_width_campo := 8;
    pr.cfgart := '';
    pr.valore_passato := '';
    for i := 0 to dati_tub.fields.count - 1 do
    begin
      if lowercase(dati_tub.fields[i].fieldname) = lowercase(dati_tub.params[0].name) then
      begin
        pr.valore_passato := dati_tub.fields[i].value;
      end;
    end;
    pr.tipo_campo := 'alfa';
    pr.showmodal;
    codice_passato := pr.valore_passato;
    if codice_passato <> '' then
    begin
      if duplica_ok(codice_passato) then
      begin

        codice_duplicato := codice_passato;

        if (findkey(dati_tub, codice_passato)) then
        begin
          messaggio(000, 'il nuovo codice è già presente in archivio' + #13 + codice_passato);
          codice_passato := '';
          findkey(dati_tub, codice);
          duplicazione_fallita := true;
        end
        else
        begin
          duplicazione_fallita := false;
          findkey(dati_tub, codice);
          setlength(tabella_copia, dati_tub.fields.count);
          for i := 0 to dati_tub.fields.count - 1 do
          begin
            tabella_copia[i] := dati_tub.fields[i].value;
          end;

          esiste := false;
          dati_tub.append;
          for i := 0 to dati_tub.fields.count - 1 do
          begin
            if (lowercase(dati_tub.fields[i].fieldname) <> 'id') then
            begin
              if lowercase(dati_tub.fields[i].fieldname) = lowercase('codice') then
              begin
                dati_tub.fields[i].value := codice_passato;
              end
              else
              begin
                dati_tub.fields[i].value := tabella_copia[i];
              end;
            end;
          end;

          //assegna_campi_personalizzati;

          memorizza_tub;
        end;
      end;
      refresh;
    end;
    pr.free;
  end;
end;

function TA31CARTUB.duplica_ok(valore_passato: variant): boolean;
begin
  result := true;
end;

procedure TA31CARTUB.tool_importazione_documentiClick(Sender: TObject);
var
  documenti: Topendialog;
  cartella_documenti: string;
  i: word;
begin
  inherited;
  if v_codice.text <> '' then
  begin
    if directoryexists(cartella_file + '\sottoconti\' + v_codice.text) then
    begin
      documenti := Topendialog.create(nil);
      documenti.options := [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing];

      cartella_documenti := cartella_file + '\sottoconti\' + v_codice.text;

      documenti.initialdir := cartella_root_installazione;
      documenti.filter := 'Tutti i file (*.*)|*.*';
      if documenti.execute then
      begin
        for i := 0 to documenti.files.count - 1 do
        begin
          if not copyfileto(documenti.files[i], cartella_documenti + '\' + extractfilename(documenti.files[i])) then
          begin
            messaggio(200, 'copia del file [' + documenti.files[i] + '] non riuscita');
          end;
        end;
      end;

      documenti.free;
    end
    else
    begin
      messaggio(200, 'non esiste la cartella documenti per il codice selezionato');
    end;
  end;
end;

procedure TA31CARTUB.tool_scansione_documentiClick(Sender: TObject);
var
  cartella_documenti: string;
begin
  inherited;
  if v_codice.text <> '' then
  begin
    if directoryexists(cartella_file + '\sottoconti\' + v_codice.text) then
    begin
      parametri_extra_programma_chiamato[0] := cartella_file + '\sottoconti\' + v_codice.text +
        '\documento_' + v_codice.text;
      esegui_programma('SCANDOC', '', true);
    end
    else
    begin
      messaggio(200, 'non esiste la cartella documenti per il codice selezionato');
    end;
  end;
end;

function TA31CARTUB.Space(Len: Integer): string;
begin
  Result := StringOfChar(' ', len);
end;

initialization

registerclass(tA31CARTUB);

end.
