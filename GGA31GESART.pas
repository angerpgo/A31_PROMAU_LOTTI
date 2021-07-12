//--------------------------------------------------------------------
// 30.09.2015 tab varie aggiunto campo a31_art_codice_stampo
//--------------------------------------------------------------------
// 18.12.2015 tab varie aggiunto campo a31_art_codice_imballo
//--------------------------------------------------------------------

unit GGA31GESART;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGGESART, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.DBCtrls,
  RzDBEdit, raizeedit_go, Vcl.Buttons, RzSpnEdt, RzButton, RzRadChk, RzDBChk,
  RzCmboBx, RzDBCmbo, Vcl.Mask, RzEdit, RzTabs, RzLabel, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.WinXCtrls;

type
  TA31GESART = class(TGESART)
    art_stampo: TMyQuery_go;
    art_stampo_ds: TMyDataSource;
    art_imb: TMyQuery_go;
    art_imb_ds: TMyDataSource;
    tab_personalizzati: TRzTabSheet;
    v_a31art_codice_stampo: trzdbedit_go;
    v_a31art_descrizione_stampo: trzdbeditdescrizione_go;
    v_a31art_codice_imballo: trzdbedit_go;
    v_a31art_descrizione_imballo: trzdbeditdescrizione_go;
    l_a31art_codice_imballo: TRzLabel;
    l_a31_codice_stampo: TRzLabel;
    v_a31gescpa: TRzRapidFireButton;
    v_a31_note_imballo: trzdbedit_go;
    l_a31_note_imballo: TRzLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    procedure v_a31art_codice_stampoExit(Sender: TObject);
    procedure v_a31art_codice_imballoExit(Sender: TObject);
    procedure v_a31gescpaClick(Sender: TObject);
  protected
    procedure a31art_codice_stampo_controllo(blocco: boolean);
    procedure a31art_codice_imballo_controllo(blocco: boolean);
    procedure stampa; override;
  public
    { Public declarations }
  end;

var
  A31GESART: TA31GESART;

implementation

{$r *.dfm}


uses GGMESSAGGIO, DMARC;

procedure TA31GESART.stampa;
begin
  programma_stampa := 'STAART';
  inherited;

end;

procedure TA31GESART.v_a31art_codice_imballoExit(Sender: TObject);
begin
  inherited;
  a31art_codice_imballo_controllo(true);
end;

procedure TA31GESART.a31art_codice_imballo_controllo(blocco: boolean);
begin
  tabella_controllo(true, art_imb, v_a31art_codice_imballo, blocco, tab_control, tab_colore_codice_barre, tabella);
  if controllo and blocco and not art_imb.isempty and (art_imb.fieldbyname('tipo_articolo').asstring <> 'non fiscale') and (v_a31art_codice_imballo.text = v_codice.text) then
  begin
    messaggio(000, 'il codice imballo non valido');
    tab_control.activepage := tab_colore_codice_barre;
    if v_a31art_codice_imballo.canfocus then
    begin
      v_a31art_codice_imballo.setfocus;
    end;
    abort;
  end;

end;

procedure TA31GESART.v_a31art_codice_stampoExit(Sender: TObject);
begin
  a31art_codice_stampo_controllo(true);
end;

procedure TA31GESART.v_a31gescpaClick(Sender: TObject);
begin
  inherited;
  esegui_programma('A31GESCAG', vararrayof([v_codice.text, '']), true);
end;

procedure TA31GESART.a31art_codice_stampo_controllo(blocco: boolean);
begin
  tabella_controllo(true, art_stampo, v_a31art_codice_stampo, blocco, tab_control, tab_colore_codice_barre, tabella);
  if controllo and blocco and not art_stampo.isempty and (art_stampo.fieldbyname('tipo_articolo').asstring <> 'non fiscale') and (v_a31art_codice_stampo.text = v_codice.text) then
  begin
    messaggio(000, 'il codice stampo non valido');
    tab_control.activepage := tab_colore_codice_barre;
    if v_a31art_codice_stampo.canfocus then
    begin
      v_a31art_codice_stampo.setfocus;
    end;
    abort;
  end;

end;

initialization

registerclass(ta31gesart);

end.
