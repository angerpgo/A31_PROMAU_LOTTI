unit GGA31GESTSU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, gggesarc, DB, query_go, MyAccess, Menus,
  ComCtrls, RzTabs, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask,

  Buttons, RzSpnEdt, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  RzEdit, DBAccess, MemDS, Vcl.WinXCtrls;

type

  TA31GESTSU = class(TGESARC)
    Label1: TRzlabel;
    v_codice_01: TRzDBEdit_go;
    v_codice_02: TRzDBEdit_go;
    v_codice_03: TRzDBEdit_go;
    v_codice_04: TRzDBEdit_go;
    Label2: TRzlabel;
    v_descrizione: TRzDBEdit_go;
    v_treeview: TToolButton;
    v_ordine: trzdbnumericedit_go;
    RzLabel1: TRzLabel;
    v_codice_05: trzdbedit_go;
    query_ri: TMyQuery_go;
    procedure v_codice_01Exit(Sender: TObject);
    procedure v_codice_02Exit(Sender: TObject);
    procedure v_codice_03Exit(Sender: TObject);
    procedure v_codice_04Exit(Sender: TObject);
    procedure v_descrizioneExit(Sender: TObject);
    procedure v_tipo_Exit(Sender: TObject);
    procedure v_treeviewClick(Sender: TObject);
    procedure v_codice_05Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  protected
    procedure codice_01_controllo;
    procedure codice_02_controllo;
    procedure codice_03_controllo;
    procedure codice_04_controllo;
    procedure codice_05_controllo;
    procedure descrizione_controllo;

    function controllo_integrita_referenziale(
      nome_database: string;
      nome_tabella: string;
      codice1_tabella, codice2_tabella, codice3_tabella, codice4_tabella, codice5_tabella: string;
      valore_codice1: variant; valore_codice2, valore_codice3, valore_codice4, valore_codice5: variant): Boolean;

    procedure crea_query_ri(
      uno: boolean;
      nome_database: TMyConnection_go;
      nome_tabella: string;
      codice1_tabella, codice2_tabella, codice3_tabella, codice4_tabella, codice5_tabella: string;
      valore_codice1, valore_codice2, valore_codice3, valore_codice4, valore_codice5: variant);

    procedure esegui_visdel(archivio: string; querydel: tmyquery_go);

  public
    { Public declarations }
    procedure before_post; override;
    procedure assegna_codice; override;
    procedure controllo_cancella; override;
    procedure controllo_codice; override;
    procedure controllo_campi; override;
  end;

implementation

{$r *.dfm}


uses DMARC, GGVISGEN, GGVISDEL;

//******************************************************************************
// procedure e funzioni da personalizzare (verranno mantenute da inheritare)
//******************************************************************************

procedure TA31GESTSU.assegna_codice;
begin
  inherited;
  codice := vararrayof([v_codice_01.text, v_codice_02.text, v_codice_03.text, v_codice_04.text, v_codice_05.text]);
end;

procedure tA31GESTSU.controllo_cancella;
begin
  inherited;

  if esiste then
  begin
    messaggio(100, 'controllo integrità referenziale');

    if trim(v_codice_02.text) = '' then
    begin
      if controllo_integrita_referenziale('arcdit', 'tub', 'a31tsu_codice_01', '', '', '', '',
        v_codice_01.text, '', '', '', '') then
      begin
        controllo_cancella_edit := false;
        exit;
      end;
    end
    else
    begin
      if trim(v_codice_03.text) = '' then
      begin
        if controllo_integrita_referenziale('arcdit', 'gen', 'a31tsu_codice_01',
          'a31tsu_codice_02', '', '', '',
          v_codice_01.text, v_codice_02.text, '', '', '') then
        begin
          controllo_cancella_edit := false;
          exit;
        end;
      end
      else
      begin
        if trim(v_codice_04.text) = '' then
        begin
          if controllo_integrita_referenziale('arcdit', 'gen', 'a31tsu_codice_01',
            'a31tsu_codice_02', 'a31tsu_codice_03', '', '',
            v_codice_01.text, v_codice_02.text, v_codice_03.text, '', '') then
          begin
            controllo_cancella_edit := false;
            exit;
          end;
        end
        else
        begin
          if trim(v_codice_04.text) = '' then
          begin
            if controllo_integrita_referenziale('arcdit', 'gen', 'a31tsu_codice_01',
              'a31tsu_codice_02', 'a31tsu_codice_03', 'a31tsu_codice_04', '',
              v_codice_01.text, v_codice_02.text, v_codice_03.text, v_codice_04.text, '') then
            begin
              controllo_cancella_edit := false;
              exit;
            end;
          end
          else
          begin
            if controllo_integrita_referenziale('arcdit', 'gen', 'a31tsu_codice_01',
              'a31tsu_codice_02', 'a31tsu_codice_03', 'a31tsu_codice_04', 'a31tsu_codice_05',
              v_codice_01.text, v_codice_02.text, v_codice_03.text, v_codice_04.text, v_codice_05.text) then
            begin
              controllo_cancella_edit := false;
              exit;
            end;
          end;
        end;
      end;
    end;

    query.close;
    query.SQL.clear;
    query.SQL.Add('select * from tpc');
    query.SQL.Add('where codice_01 = :codice_01');
    if (trim(v_codice_04.text) = '') and (trim(v_codice_03.text) = '') and (trim(v_codice_02.text) = '') then
    begin
      query.SQL.Add('and (codice_02 <> '''')');
      query.params[0].asstring := v_codice_01.text;
    end
    else if (trim(v_codice_04.text) = '') and (trim(v_codice_03.text) = '') then
    begin
      query.SQL.Add('and (codice_02 = :codice_02) and (codice_03 <> '''')');
      query.params[0].asstring := v_codice_01.text;
      query.params[1].asstring := v_codice_02.text;
    end
    else if trim(v_codice_04.text) = '' then
    begin
      query.SQL.Add('and (codice_02 = :codice_02) and (codice_03 = :codice_03) and (codice_04 <> '''')');
      query.params[0].asstring := v_codice_01.text;
      query.params[1].asstring := v_codice_02.text;
      query.params[2].asstring := v_codice_03.text;
    end;

    query.Open;
    if not query.Eof then
    begin
      messaggio(000, 'il codice non può essere cancellato perchè sono presenti dei sottolivelli');
      controllo_cancella_edit := false;
      exit;
    end;

  end;
end;

procedure TA31GESTSU.controllo_codice;
begin
  codice_01_controllo;
  codice_02_controllo;
  codice_03_controllo;
  codice_04_controllo;
end;

procedure TA31GESTSU.controllo_campi;
begin
  descrizione_controllo;

end;

//******************************************************************************
// gestione campi da inserire programma per programma ex novo
//******************************************************************************

procedure TA31GESTSU.v_codice_01Exit(Sender: TObject);
begin
  inherited;
  codice_01_controllo;
end;

procedure TA31GESTSU.codice_01_controllo;
begin
  if controllo then
  begin
    if trim(v_codice_01.text) = '' then
    begin
      messaggio(002, label1.caption);
      if v_codice_01.canfocus then
      begin
        v_codice_01.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TA31GESTSU.v_codice_02Exit(Sender: TObject);
begin
  inherited;
  codice_02_controllo;
end;

procedure TA31GESTSU.codice_02_controllo;
begin
  if controllo then
  begin
    if trim(v_codice_02.text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04', vararrayof([v_codice_01.text, '', '', '', ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text);
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('codice_02').asstring := '';
        end;
        if v_codice_02.canfocus then
        begin
          v_codice_02.setfocus;
        end;
      end;
    end;
  end;
end;

procedure TA31GESTSU.v_codice_03Exit(Sender: TObject);
begin
  inherited;
  codice_03_controllo;
end;

procedure TA31GESTSU.codice_03_controllo;
begin
  if controllo then
  begin
    if trim(v_codice_03.Text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04', vararrayof([v_codice_01.text, v_codice_02.text, '', '', ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text + ' ' + v_codice_02.text);
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('codice_03').asstring := '';
        end;
        if v_codice_03.canfocus then
        begin
          v_codice_03.setfocus;
        end;
      end;
    end;
  end;
end;

procedure TA31GESTSU.v_codice_04Exit(Sender: TObject);
begin
  inherited;
  codice_04_controllo;
end;

procedure TA31GESTSU.codice_04_controllo;
begin
  if controllo then
  begin
    if trim(v_codice_04.Text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04', vararrayof([v_codice_01.text, v_codice_02.text, v_codice_03.text, '', ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text + ' ' + v_codice_02.text + ' ' + v_codice_03.text);
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('codice_04').asstring := '';
        end;
        if v_codice_04.canfocus then
        begin
          v_codice_04.setfocus;
        end;
      end;
    end;
  end;
end;

procedure TA31GESTSU.v_codice_05Exit(Sender: TObject);
begin
  inherited;
  codice_05_controllo;
end;

procedure TA31GESTSU.codice_05_controllo;
begin
  if controllo then
  begin
    if trim(v_codice_05.Text) <> '' then
    begin
      if not read_tabella(arc.arcdit, 'a31tsu', 'codice_01;codice_02;codice_03;codice_04', vararrayof([v_codice_01.text, v_codice_02.text, v_codice_03.text, v_codice_04.text, ''])) then
      begin
        messaggio(000, 'non esiste il mastro a livello superiore' + #13 +
          'codice: ' + v_codice_01.text + ' ' + v_codice_02.text + ' ' + v_codice_03.text + ' ' + v_codice_04.text);
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('codice_04').asstring := '';
        end;
        if v_codice_04.canfocus then
        begin
          v_codice_04.setfocus;
        end;
      end;
    end;
  end;
end;

procedure TA31GESTSU.v_descrizioneExit(Sender: TObject);
begin
  inherited;
  descrizione_controllo;
end;

procedure TA31GESTSU.descrizione_controllo;
begin
  if controllo then
  begin
    if trim(v_descrizione.text) = '' then
    begin
      messaggio(002, label2.caption);
      tab_control.ActivePage := tab_pagina1;
      if v_descrizione.canfocus then
      begin
        v_descrizione.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TA31GESTSU.v_tipo_Exit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TA31GESTSU.v_treeviewClick(Sender: TObject);
var
  pr: tvisgen;
begin
  inherited;
  pr := tvisgen.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := '';
    pr.showmodal;
  end;
  pr.free;
end;

procedure TA31GESTSU.before_post;
begin
  inherited;
end;

function TA31GESTSU.controllo_integrita_referenziale(
  nome_database: string;
  nome_tabella: string;
  codice1_tabella, codice2_tabella, codice3_tabella, codice4_tabella, codice5_tabella: string;
  valore_codice1, valore_codice2, valore_codice3, valore_codice4, valore_codice5: variant): Boolean;
var
  connessione: TMyConnection_go;
begin
  result := false;

  if nome_database = 'arc' then
  begin
    connessione := arc.arc;
  end
  else
  begin
    connessione := arc.arcdit;
  end;

  crea_query_ri(true, connessione, nome_tabella,
    codice1_tabella, codice2_tabella, codice3_tabella, codice4_tabella, codice5_tabella,
    valore_codice1, valore_codice2, valore_codice3, valore_codice4, valore_codice5);

  query_ri.close;
  query_ri.open;
  if not query_ri.eof then
  begin
    if messaggio(300, msg_0035 + #13 + msg_0036 + ' ' + nome_tabella + '''' + #13 + #13 + msg_0037) = 1 then
    begin
      crea_query_ri(false, connessione, nome_tabella,
        codice1_tabella, codice2_tabella, codice3_tabella, codice4_tabella, codice5_tabella,
        valore_codice1, valore_codice2, valore_codice3, valore_codice4, valore_codice5);

      query_ri.open;
      esegui_visdel(nome_tabella, query_ri);
    end;
    result := true;
  end;
end;

procedure TA31GESTSU.crea_query_ri(
  uno: boolean;
  nome_database: TMyConnection_go;
  nome_tabella: string;
  codice1_tabella, codice2_tabella, codice3_tabella, codice4_tabella, codice5_tabella: string;
  valore_codice1, valore_codice2, valore_codice3, valore_codice4, valore_codice5: variant);
begin
  query_ri.close;
  query_ri.connection := nome_database;
  query_ri.sql.clear;
  if uno then
  begin
    query_ri.SQL.Add('select id from ' + nome_tabella);
  end
  else
  begin
    query_ri.SQL.Add('select * from ' + nome_tabella);
  end;
  query_ri.SQL.Add('where ' + codice_tabella + '= :codice');
  if codice1_tabella <> '' then
  begin
    query_ri.SQL.Add('and ' + codice1_tabella + '= :codice1');
  end;
  if codice2_tabella <> '' then
  begin
    query_ri.SQL.Add('and ' + codice2_tabella + '= :codice2');
  end;
  if codice3_tabella <> '' then
  begin
    query_ri.SQL.Add('and ' + codice3_tabella + '= :codice3');
  end;
  if (nome_tabella = 'dit') or (nome_tabella = 'dit01') or (nome_tabella = 'dit02') or (nome_tabella = 'dit03') or
    (nome_tabella = 'dit04') or (nome_tabella = 'dit05') then
  begin
    query_ri.SQL.Add('and codice = ' + quotedstr(ditta));
  end;
  if uno then
  begin
    query_ri.SQL.Add('limit 1');
  end;

  query_ri.params[0].value := valore_codice1;

  if codice1_tabella <> '' then
  begin
    query_ri.params[1].value := valore_codice2;
  end;

  if codice2_tabella <> '' then
  begin
    query_ri.params[2].value := valore_codice3;
  end;

  if codice3_tabella <> '' then
  begin
    query_ri.params[3].value := valore_codice4;
  end;

  if codice4_tabella <> '' then
  begin
    query_ri.params[4].value := valore_codice4;
  end;

  if codice5_tabella <> '' then
  begin
    query_ri.params[5].value := valore_codice5;
  end;

end;

procedure TA31GESTSU.esegui_visdel(archivio: string;
  querydel:
  tmyquery_go);
var
  pr: tvisdel;
begin
  pr := tvisdel.create(nil);
  pr.query.connection := querydel.connection;
  pr.query.sql.clear;
  pr.query.sql.add(querydel.sql.text);
  pr.query.params := querydel.params;
  pr.archivio := archivio;
  pr.showmodal;
  pr.free;
end;

procedure TA31GESTSU.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//
end;

initialization

registerclass(tA31GESTSU);

end.
