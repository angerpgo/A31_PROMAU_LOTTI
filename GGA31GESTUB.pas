unit GGA31GESTUB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGGESTUB, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, RzSpnEdt, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Buttons, raizeedit_go, Vcl.Mask, RzEdit, RzDBEdit, RzButton, RzRadChk,
  RzDBChk, RzTabs, RzLabel, Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls, Vcl.ToolWin;

type
  TA31GESTUB = class(TGESTUB)
    l_a31tsu: TRzLabel;
    v_a31tsu_codice_01: trzdbedit_go;
    v_a31tsu_codice_02: trzdbedit_go;
    v_a31tsu_codice_03: trzdbedit_go;
    v_a31tsu_codice_04: trzdbedit_go;
    v_a31tsu_codice_05: trzdbedit_go;
    v_a31tsu_descrizione_05: trzdbeditdescrizione_go;
    a31tsu: TMyQuery_go;
    a31tsu_ds: TMyDataSource;
    v_a31tsu_descrizione_01: trzdbeditdescrizione_go;
    v_a31tsu_descrizione_02: trzdbeditdescrizione_go;
    v_a31tsu_descrizione_03: trzdbeditdescrizione_go;
    v_a31tsu_descrizione_04: trzdbeditdescrizione_go;
    RzLabel1: TRzLabel;
    v_codiec_alternativo: trzdbedit_go;
    procedure v_a31tsu_codice_01Exit(Sender: TObject);
    procedure v_a31tsu_codice_02Exit(Sender: TObject);
    procedure v_a31tsu_codice_03Exit(Sender: TObject);
    procedure v_a31tsu_codice_04Exit(Sender: TObject);
    procedure v_a31tsu_codice_05Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  protected
    
    procedure a31tsu_codice_01_controllo;
    procedure a31tsu_codice_02_controllo;
    procedure a31tsu_codice_03_controllo;
    procedure a31tsu_codice_04_controllo;
    procedure a31tsu_codice_05_controllo;
    procedure a31tsu_codice_controllo(blocco: boolean);
  public
    procedure visualizza_descrizioni; override;
    procedure abilitazioni; override;
    procedure assegna_codice; override;
    procedure set_codice_archivio; override;
    procedure get_codice_archivio; override;
    procedure controllo_cancella; override;
    procedure controllo_codice; override;
    procedure controllo_campi; override;

  end;

var
  A31GESTUB: TA31GESTUB;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31GESTUB.assegna_codice;
begin
  inherited;
  codice := variant(v_codice.text);
end;

procedure TA31GESTUB.set_codice_archivio;
begin
  inherited;
  if (screen.ActiveControl = v_a31tsu_codice_01) or (screen.ActiveControl = v_a31tsu_codice_02) or
    (screen.ActiveControl = v_a31tsu_codice_03) or (screen.ActiveControl = v_a31tsu_codice_04) or
    (screen.ActiveControl = v_a31tsu_codice_05) then
  begin
    codice_archivio := vararrayof([v_a31tsu_codice_01.text, v_a31tsu_codice_02.text, v_a31tsu_codice_03.text, v_a31tsu_codice_04.text, v_a31tsu_codice_05.text]);
  end;
end;

procedure TA31GESTUB.get_codice_archivio;
begin
  if (screen.ActiveControl = v_a31tsu_codice_01) or (screen.ActiveControl = v_a31tsu_codice_02) or
    (screen.ActiveControl = v_a31tsu_codice_03) or (screen.ActiveControl = v_a31tsu_codice_04) or
    (screen.ActiveControl = v_a31tsu_codice_05) then
  begin
    if (tabella.fieldbyname('a31tsu_codice_01').asstring <> codice_archivio[0]) or
      (tabella.fieldbyname('a31tsu_codice_02').asstring <> codice_archivio[1]) or
      (tabella.fieldbyname('a31tsu_codice_03').asstring <> codice_archivio[2]) or
      (tabella.fieldbyname('a31tsu_codice_04').asstring <> codice_archivio[3]) or
      (tabella.fieldbyname('a31tsu_codice_05').asstring <> codice_archivio[4])
    then
    begin
      if tabella_edit(tabella) then
      begin
        if codice_archivio[0] <> null then
        begin
          tabella.fieldbyname('a31tsu_codice_01').asstring := codice_archivio[0];
        end
        else
        begin
          tabella.fieldbyname('a31tsu_codice_01').asstring := '';
        end;
        if codice_archivio[1] <> null then
        begin
          tabella.fieldbyname('a31tsu_codice_02').asstring := codice_archivio[1];
        end
        else
        begin
          tabella.fieldbyname('a31tsu_codice_02').asstring := '';
        end;
        if codice_archivio[2] <> null then
        begin
          tabella.fieldbyname('a31tsu_codice_03').asstring := codice_archivio[2];
        end
        else
        begin
          tabella.fieldbyname('a31tsu_codice_03').asstring := '';
        end;
        if codice_archivio[3] <> null then
        begin
          tabella.fieldbyname('a31tsu_codice_04').asstring := codice_archivio[3];
        end
        else
        begin
          tabella.fieldbyname('a31tsu_codice_04').asstring := '';
        end;
        if codice_archivio[4] <> null then
        begin
          tabella.fieldbyname('a31tsu_codice_05').asstring := codice_archivio[4];
        end
        else
        begin
          tabella.fieldbyname('a31tsu_codice_05').asstring := '';
        end;
      end;
    end;
  end;
  inherited;
end;

procedure TA31GESTUB.visualizza_descrizioni;
begin
  a31tsu_codice_controllo(false);
end;

procedure TA31GESTUB.abilitazioni;
begin
  //
end;

procedure TA31GESTUB.controllo_cancella;
begin
  inherited;
  //
end;

procedure TA31GESTUB.controllo_codice;
begin
  inherited;
end;

procedure TA31GESTUB.FormCreate(Sender: TObject);
begin
  inherited;
  programma_stampa := 'A31STATUB';
end;

procedure TA31GESTUB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
end;

procedure TA31GESTUB.controllo_campi;
begin
  inherited;
  a31tsu_codice_01_controllo;
  a31tsu_codice_02_controllo;
  a31tsu_codice_03_controllo;
  a31tsu_codice_04_controllo;
  a31tsu_codice_05_controllo;
  a31tsu_codice_controllo(true);
end;

procedure TA31GESTUB.v_a31tsu_codice_01Exit(Sender: TObject);
begin
  inherited;
  a31tsu_codice_01_controllo;
end;

procedure TA31GESTUB.a31tsu_codice_01_controllo;
begin
  tabella_controllo(false, a31tsu, v_a31tsu_codice_01, v_a31tsu_codice_02, v_a31tsu_codice_03, v_a31tsu_codice_04, v_a31tsu_codice_05, false, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESTUB.v_a31tsu_codice_02Exit(Sender: TObject);
begin
  inherited;
  a31tsu_codice_02_controllo;
end;

procedure TA31GESTUB.a31tsu_codice_02_controllo;
begin
  tabella_controllo(false, a31tsu, v_a31tsu_codice_01, v_a31tsu_codice_02, v_a31tsu_codice_03, v_a31tsu_codice_04, v_a31tsu_codice_05, false, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESTUB.v_a31tsu_codice_03Exit(Sender: TObject);
begin
  inherited;
  a31tsu_codice_03_controllo;
end;

procedure TA31GESTUB.a31tsu_codice_03_controllo;
begin
  tabella_controllo(false, a31tsu, v_a31tsu_codice_01, v_a31tsu_codice_02, v_a31tsu_codice_03, v_a31tsu_codice_04, v_a31tsu_codice_05, false, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESTUB.v_a31tsu_codice_04Exit(Sender: TObject);
begin
  inherited;
  a31tsu_codice_04_controllo;
end;

procedure TA31GESTUB.a31tsu_codice_04_controllo;
begin
  tabella_controllo(false, a31tsu, v_a31tsu_codice_01, v_a31tsu_codice_02, v_a31tsu_codice_03, v_a31tsu_codice_04, v_a31tsu_codice_05, false, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESTUB.v_a31tsu_codice_05Exit(Sender: TObject);
begin
  inherited;
  a31tsu_codice_05_controllo;
end;

procedure TA31GESTUB.a31tsu_codice_05_controllo;
begin
  tabella_controllo(false, a31tsu, v_a31tsu_codice_01, v_a31tsu_codice_02, v_a31tsu_codice_03, v_a31tsu_codice_04, v_a31tsu_codice_05, false, tab_control, tab_pagina1, tabella);
end;

procedure TA31GESTUB.a31tsu_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, a31tsu, v_a31tsu_codice_01, v_a31tsu_codice_02, v_a31tsu_codice_03, v_a31tsu_codice_04, v_a31tsu_codice_05, blocco, tab_control, tab_pagina1, tabella);

  if controllo and blocco then
  begin
    (*
      read_tabella(tpc_01, v_tpc_codice_01.text);
      if tpc_01.fieldbyname('tma_codice').asstring <> tabella.fieldbyname('tma_codice').asstriong then
      begin
      query.close;
      query.sql.clear;
      query.sql.add('select cli.codice from cli cli');
      query.sql.add('where cli.gen_codice = :gen_codice');
      query.params[0].asstring := v_codice.text;
      query.open;
      if not query.eof then
      begin
      messaggio(000, 'questo codice di raggruppamento non può essere utilizzato perchè' + #13 +
      'è di tipo economico ed il sottoconto è collegato all''anagrafica clienti');
      v_tpc_codice_01.setfocus;
      abort;
      end;
      query.close;
      query.sql.clear;
      query.sql.add('select frn.codice from frn frn');
      query.sql.add('where frn.gen_codice = :gen_codice');
      query.params[0].asstring := v_codice.text;
      query.open;
      if not query.eof then
      begin
      messaggio(000, 'questo codice di raggruppamento non può essere utilizzato perchè' + #13 +
      'è di tipo economico ed il sottoconto è collegato all''anagrafica fornitori');
      v_tpc_codice_01.setfocus;
      abort;
      end;
      end;
    *)
  end;
end;

initialization

registerclass(ta31gestub);

end.
