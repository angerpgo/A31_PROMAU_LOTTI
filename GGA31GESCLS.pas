unit GGA31GESCLS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, gggesarc, DB, query_go, MyAccess, Menus,
  ComCtrls, RzTabs, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask,
  Grids, dbgrids, RzDBGrid, Buttons,
  RzSpnEdt,
  GGGESGRD, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  RzEdit, DBAccess, MemDS, Vcl.WinXCtrls;

type

  TA31GESCLS = class(TGESGRD)
    v_l_prezzo: TRzlabel;
    v_prezzo: TRzDBNumericEdit_go;
    tool_filtro: TToolButton;
    Label5: TRzlabel;
    v_cli_codice: TRzDBEdit_go;
    v_cli_descrizione1: TRzDBEditDescrizione_go;
    v_cli_citta: TRzDBEditDescrizione_go;
    Label2: TRzlabel;
    v_art_codice: TRzDBEdit_go;
    v_art_descrizione1: TRzDBEditDescrizione_go;
    v_art_descrizione2: TRzDBEditDescrizione_go;
    Label4: TRzlabel;
    v_data_inizio: TRzDBDateTimeEdit_go;
    Label8: TRzlabel;
    v_contratto: trzdbedit_go;
    Label6: TRzlabel;
    v_data_fine: TRzDBDateTimeEdit_go;
    cls: tmyquery_go;
    Panel2: TRzpanel;
    cliart: tmyquery_go;
    cliart_ds: tmydatasource;
    tlv: TMyQuery_go;
    tlv_ds: TMyDataSource;
    v_posizione: trzdbedit_go;
    RzLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    v_note: trzdbedit_go;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure pannello_codiceEnter(Sender: TObject);
    procedure v_data_inizioExit(Sender: TObject);

    procedure tool_filtroClick(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_art_codiceChange(Sender: TObject);
    procedure v_grigliaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure v_contrattoExit(Sender: TObject);
    procedure v_contrattoEnter(Sender: TObject);
    procedure pannello_campiEnter(Sender: TObject);
    procedure pannello_campiExit(Sender: TObject);
    procedure v_posizioneExit(Sender: TObject);
    procedure v_data_fineExit(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  protected
    cli_codice_data, contratto_data, posizione_data, art_codice_data: string;
    data_inizio_data: tdatetime;

    tabella_controllo_cli, tabella_controllo_art: tmyquery_go;
    tabella_controllo_cli_ds, tabella_controllo_art_ds: tmydatasource;

    uscita_immediata: boolean;

    cli_codice_passato, art_codice_passato: string;
    aggiornamento_automatico: boolean;

    procedure data_inizio_controllo;
    procedure data_fine_controllo;

    procedure cli_codice_controllo(blocco: boolean);
    procedure contratto_controllo;
    procedure posizione_controllo;
    procedure art_codice_controllo(blocco: boolean);

    procedure assegna_valore_prezzi;

    procedure esegui_query_codice; override;
  public
    procedure visualizza_descrizioni; override;
    procedure assegna_codice; override;
    procedure controllo_codice; override;
    procedure controllo_campi; override;
    procedure controllo_cancella; override;
    procedure controllo_edit; override;

    procedure before_post; override;
    procedure before_delete; override;

    procedure after_post; override;
    procedure after_delete; override;

    procedure abilitazioni; override;

    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
    procedure duplica; override;
    procedure ricalcola_data_fine;
  end;

var
  A31GESCLS: TA31GESCLS;

implementation

{$r *.dfm}


uses DMARC;

//******************************************************************************
// procedure e funzioni da personalizzare (verranno mantenute da inheritare)
//******************************************************************************

procedure TA31GESCLS.assegna_codice;
begin
  inherited;
  if progressivo_inserimento_record <> 0 then
  begin
    codice := progressivo_inserimento_record;
  end
  else
  begin
    codice := query_codice.fieldbyname('progressivo').asinteger;
  end;
end;

procedure TA31GESCLS.controllo_codice;
begin
end;

procedure TA31GESCLS.controllo_campi;
begin
  cli_codice_controllo(true);
  contratto_controllo;
  art_codice_controllo(true);
  data_inizio_controllo;
  data_fine_controllo;
end;

//******************************************************************************
// gestione campi da inserire programma per programma ex novo
//******************************************************************************

procedure TA31GESCLS.FormCreate(Sender: TObject);
begin
  tabella_controllo_cli := tmyquery_go.create(self);
  tabella_controllo_cli_ds := tmydatasource.create(self);
  tabella_controllo_cli_ds.dataset := tabella_controllo_cli;
  tabella_controllo_cli.connection := arc.arcdit;
  tabella_controllo_cli.sql.text := 'select codice, descrizione1, citta, obsoleto from cli where codice = :codice';
  v_cli_descrizione1.datasource := tabella_controllo_cli_ds;
  v_cli_descrizione1.datafield := 'descrizione1';
  v_cli_citta.datasource := tabella_controllo_cli_ds;
  v_cli_citta.datafield := 'citta';

  tabella_controllo_art := tmyquery_go.create(self);
  tabella_controllo_art_ds := tmydatasource.create(self);
  tabella_controllo_art_ds.dataset := tabella_controllo_art;
  tabella_controllo_art.connection := arc.arcdit;
  tabella_controllo_art.sql.text :=
    'select codice, descrizione1, descrizione2, obsoleto, tum_codice, tum_codice_vendite from art where codice = :codice';
  v_art_descrizione1.datasource := tabella_controllo_art_ds;
  v_art_descrizione1.datafield := 'descrizione1';
  v_art_descrizione2.datasource := tabella_controllo_art_ds;
  v_art_descrizione2.datafield := 'descrizione2';

  testo_query_codice := 'select cls.cli_codice, cli.descrizione1 cli_descrizione1, ' +
    'cls.contratto, cls.posizione, ' +
    'cls.art_codice, art.descrizione1 art_descrizione1, ' +
    'cls.progressivo, cls.data_inizio, cls.data_fine, cls.prezzo, cls.note, ' +
    'arcl.codice_articolo_cliente ' +
    'from a31cls cls ' +
    'left join cli on cli.codice = cls.cli_codice ' +
    'left join art on art.codice = cls.art_codice ' +
    'left join arcl on arcl.cli_codice = cls.cli_codice and arcl.art_codice = cls.art_codice ' +
    'where cls.data_inizio <= :data_inizio and data_fine >= :data_fine ';

  inserisci_progressivo := true;

  inherited;

  query_codice.parambyname('data_inizio').asdate := strtodate(data_31_12_9999);
  query_codice.parambyname('data_fine').asdate := strtodate('01/01/1900');
  ordinamento := 'cli_codice';
  secondo_campo_ordinamento := 'data_inizio';

  if importi_archivi = 'nascondi' then
  begin
    uscita_immediata := true;
  end;

  v_prezzo.decimalplaces := decimali_max_prezzo;
  v_prezzo.displayformat := formato_display_prezzo_zero;
end;

procedure TA31GESCLS.visualizza_descrizioni;
begin
  cli_codice_controllo(false);
  art_codice_controllo(false);
end;

procedure tA31GESCLS.controllo_cancella;
begin
  inherited;
end;

procedure TA31GESCLS.controllo_edit;
begin
  inherited;
end;

procedure TA31GESCLS.pannello_campiEnter(Sender: TObject);
begin
  inherited;
  aggiornamento_automatico := false;
  if esiste then
  begin
    tool_f7.Enabled := true;
  end
  else
  begin
    tabella.fieldbyname('cli_codice').asstring := cli_codice_passato;
    tabella.fieldbyname('art_codice').asstring := art_codice_passato;
  end;
end;

procedure TA31GESCLS.pannello_campiExit(Sender: TObject);
begin
  inherited;
  tool_f7.Enabled := false;
end;

procedure TA31GESCLS.pannello_codiceEnter(Sender: TObject);
begin
  inherited;
  tool_ctrl_f1.enabled := true;
  if uscita_immediata then
  begin
    close;
  end;
end;

procedure TA31GESCLS.v_data_fineExit(Sender: TObject);
begin
  inherited;
  data_fine_controllo;
  if controllo then
  begin
    cls.close;
    cls.parambyname('cli_codice').asstring := tabella.fieldbyname('cli_codice').asstring;
    cls.parambyname('contratto').asstring := tabella.fieldbyname('contratto').asstring;
    cls.parambyname('posizione').asstring := tabella.fieldbyname('posizione').asstring;
    cls.parambyname('art_codice').asstring := tabella.fieldbyname('art_codice').asstring;
    cls.parambyname('data_inizio').asdate := tabella.fieldbyname('data_inizio').asdatetime;
    cls.parambyname('data_fine').asdate := tabella.fieldbyname('data_fine').asdatetime;
    cls.parambyname('id').asinteger := tabella.fieldbyname('id').asinteger;
    cls.open;
    if not cls.isempty then
    begin
      if messaggio(300, 'esiste già un listino con i medesimi parametri e' + #13#10 +
        'con date a cavallo di quelle utilizzate' + #13#10 +
        'aggiornare automaticamente le date') = 1 then
      begin
        aggiornamento_automatico := true;
      end
      else
      begin
        if v_data_fine.canfocus then
        begin
          v_data_fine.setfocus;
        end;
        abort;
      end;
    end;
  end;
end;

procedure TA31GESCLS.v_data_inizioExit(Sender: TObject);
begin
  inherited;
  data_inizio_controllo;
end;

procedure TA31GESCLS.data_inizio_controllo;
begin
  if controllo then
  begin
    if v_data_inizio.date = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_inizio').asstring := datetostr(now);
      end;
    end;
  end;
end;

procedure TA31GESCLS.data_fine_controllo;
begin
  if controllo then
  begin
    if v_data_fine.date = 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('data_fine').asstring := data_31_12_9999;
      end;
    end;
  end;
end;

procedure TA31GESCLS.tool_filtroClick(Sender: TObject);
begin
  inherited;
  if tool_filtro.down then
  begin
    query_codice.parambyname('data_inizio').asdate := now;
    query_codice.parambyname('data_fine').asdate := now;
  end
  else
  begin
    query_codice.parambyname('data_inizio').asdate := strtodate(data_31_12_9999);
    query_codice.parambyname('data_fine').asdate := strtodate('01/01/1900');
  end;

  esegui_query_codice;
end;

procedure TA31GESCLS.after_post;
begin
  if aggiornamento_automatico then
  begin
    arc.aggiorna_data_fine('a31cls', 'A',
      'cli_codice', tabella.fieldbyname('cli_codice').asstring,
      'contratto', tabella.fieldbyname('contratto').asstring,
      'posizione', tabella.fieldbyname('posizione').asstring,
      'art_codice', tabella.fieldbyname('art_codice').asstring,
      '', '',
      tabella.fieldbyname('data_inizio').asdatetime);
  end;
  inherited;
end;

procedure TA31GESCLS.before_delete;
begin
  inherited;
  cli_codice_data := tabella.fieldbyname('cli_codice').asstring;
  contratto_data := tabella.fieldbyname('contratto').asstring;
  posizione_data := tabella.fieldbyname('posizione').asstring;
  art_codice_data := tabella.fieldbyname('art_codice').asstring;
  data_inizio_data := tabella.fieldbyname('data_inizio').asdatetime;
end;

procedure TA31GESCLS.before_post;
begin
  inherited;
end;

procedure TA31GESCLS.after_delete;
begin
  arc.aggiorna_data_fine('a31cls', 'D',
    'cli_codice', cli_codice_data,
    'contratto', contratto_data,
    'posizione', posizione_data,
    'art_codice', art_codice_data,
    '', '',
    data_inizio_data);
  inherited;
end;

procedure TA31GESCLS.v_cli_codiceExit(Sender: TObject);
begin
  inherited;
  cli_codice_controllo(true);
end;

procedure TA31GESCLS.cli_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tabella_controllo_cli, v_cli_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESCLS.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
  if controllo then
  begin
    assegna_valore_prezzi;
  end;
end;

procedure TA31GESCLS.assegna_valore_prezzi;
begin
  if v_art_codice.text = '' then
  begin
    if tabella.fieldbyname('prezzo').asfloat <> 0 then
    begin
      if tabella_edit(tabella) then
      begin
        tabella.fieldbyname('prezzo').asfloat := 0;
      end;
    end;
  end;
end;

procedure TA31GESCLS.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, tabella_controllo_art, v_art_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESCLS.FormShow(Sender: TObject);
begin
  if parametri_extra_programma_chiamato[0] <> null then
  begin
    if parametri_extra_programma_chiamato[0] = 'C' then
    begin
      read_tabella(arc.arcdit, 'cli', 'codice', parametri_extra_programma_chiamato[1], 'ts1_codice');
      testo_query_codice_extra := 'and (cls.cli_codice = ' + quotedstr(parametri_extra_programma_chiamato[1]) + ' ' +
        'or (cls.cli_codice = '''' and (cls.contratto_codice = '''' or cls.ts1_codice = ' + quotedstr(archivio.fieldbyname('ts1_codice').asstring) + ')))';
      ordinamento := 'art_codice';
      cli_codice_passato := parametri_extra_programma_chiamato[1];
    end
    else if parametri_extra_programma_chiamato[0] = 'A' then
    begin
      read_tabella(arc.arcdit, 'art', 'codice', parametri_extra_programma_chiamato[1], 'ts3_codice');
      testo_query_codice_extra := 'and (cls.art_codice = ' + quotedstr(parametri_extra_programma_chiamato[1]);
      // 'or (cls.art_codice = '''' and (cls.ts3_codice = '''' or cls.ts3_codice = ' + quotedstr(archivio.fieldbyname('ts3_codice').asstring) + ')))';
      ordinamento := 'cli_codice';
      art_codice_passato := parametri_extra_programma_chiamato[1];

      art_codice_controllo(false);

    end;
  end;

  inherited;
end;

procedure TA31GESCLS.v_art_codiceChange(Sender: TObject);
begin
  inherited;
  if v_art_codice.focused then
  begin
    art_codice_controllo(false);
  end;
end;

procedure TA31GESCLS.abilitazioni;
begin
  //abilita_prezzi;
end;

procedure TA31GESCLS.v_grigliaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (not v_griglia.focused) and (not query_codice.isempty) then
  begin
    if (gdSelected in State) then
    begin
      with v_griglia.Canvas do
      begin
        with v_griglia.Canvas do
        begin
          brush.color := clgraytext;
          font.color := clblack;
        end;
      end;
    end;
  end;

  v_griglia.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TA31GESCLS.v_posizioneExit(Sender: TObject);
begin
  inherited;
  posizione_controllo;
end;

procedure TA31GESCLS.v_contrattoExit(Sender: TObject);
begin
  inherited;
  contratto_controllo;
end;

procedure TA31GESCLS.contratto_controllo;
begin
  if v_contratto.text = '' then
  begin
    messaggio(000, 'codice contratto non valido.');
    v_contratto.setfocus;
  end;
end;

procedure TA31GESCLS.posizione_controllo;
begin
  if v_posizione.text = '' then
  begin
    messaggio(000, 'codice posizione non valido.');
    v_contratto.setfocus;
  end;
end;

procedure TA31GESCLS.get_codice_archivio;
begin
  visualizza_descrizioni;

  inherited;
end;

procedure TA31GESCLS.set_codice_archivio;
begin
  inherited;
end;

procedure TA31GESCLS.ToolButton1Click(Sender: TObject);
begin
  inherited;
  ricalcola_data_fine;
end;

procedure TA31GESCLS.esegui_query_codice;
begin
  inherited;
  (v_griglia.columns.items[10].field as tfloatfield).displayformat := formato_display_prezzo_zero;
end;

procedure TA31GESCLS.v_contrattoEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_cli_codice.text;
end;

procedure TA31GESCLS.duplica;
var
  i: word;
  //  pr: tA31GESCLS01;
begin
  (*
    pr := tA31GESCLS01.create(nil);
    if pr.esegui_form then
    begin
    pr.v_cli_codice.text := tabella.fieldbyname('cli_codice').asstring;
    pr.v_ind_codice.text := tabella.fieldbyname('ind_codice').asstring;
    pr.v_art_codice.text := tabella.fieldbyname('art_codice').asstring;
    pr.v_ts1_codice.text := tabella.fieldbyname('ts1_codice').asstring;
    pr.v_ts3_codice.text := tabella.fieldbyname('ts3_codice').asstring;
    pr.showmodal;

    tabella.cancel;

    if pr.conferma then
    begin
    setlength(tabella_copia, tabella.fields.count);
    for i := 0 to tabella.fields.count - 1 do
    begin
    tabella_copia[i] := tabella.fields[i].value;
    end;

    esiste := false;
    tabella.append;
    for i := 0 to tabella.fields.count - 1 do
    begin
    if (lowercase(tabella.fields[i].fieldname) <> 'id') then
    begin
    tabella.fields[i].value := tabella_copia[i];
    end;
    end;

    tabella.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(TMyConnection_go(tabella.connection), 'cls_progressivo');
    tabella.fieldbyname('cli_codice').asstring := pr.v_cli_codice.text;
    tabella.fieldbyname('ind_codice').asstring := pr.v_ind_codice.text;
    tabella.fieldbyname('art_codice').asstring := pr.v_art_codice.text;
    tabella.fieldbyname('ts1_codice').asstring := pr.v_ts1_codice.text;
    tabella.fieldbyname('ts3_codice').asstring := pr.v_ts3_codice.text;
    tabella.fieldbyname('data_inizio').asdatetime := date;

    memorizza;
    end;

    end;
    pr.free;
  *)
end;

procedure TA31GESCLS.ricalcola_data_fine;
begin

  query_codice.close;
  query_codice.open;
  while not query_codice.eof do
  begin
    application.processmessages;

    arc.aggiorna_data_fine('a31cls', 'A',
      'cli_codice', query_codice.fieldbyname('cli_codice').asstring,
      'contratto', query_codice.fieldbyname('contratto').asstring,
      'posizione', query_codice.fieldbyname('posizione').asstring,
      'art_codice', query_codice.fieldbyname('art_codice').asstring,
      '', '',
      query_codice.fieldbyname('data_inizio').asdatetime);

    query_codice.next;
  end;

end;


initialization

registerclass(tA31GESCLS);

end.
