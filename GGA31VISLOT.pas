unit GGA31VISLOT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, raizeedit_go;

type
  TA31VISLOT = class(TFORMBASE)
    v_griglia: trzdbgrid_go;
    procedure v_grigliaTitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  protected
    procedure esegui_query;
  public
    { Public declarations }
    codice_archivio: string;
    premuto_esc: boolean;
  end;

var
  A31VISLOT: TA31VISLOT;

implementation

{$r *.dfm}


uses GGIMPALF;

procedure TA31VISLOT.esegui_query;
begin
  query.open;
end;

procedure TA31VISLOT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    premuto_esc := true;
    key := 0;
    close;
  end
  else if key = VK_RETURN then
  begin
    codice_archivio := query.fieldbyname('lotto').asstring;
    key := 0;
    close;
  end

  else
  begin
    inherited;
  end;

end;

procedure TA31VISLOT.v_grigliaTitleClick(Column: TColumn);
var
  pr: timpalf;
begin
  inherited;
  if (column.FieldName = 'lotto') or
    (column.FieldName = 'art_codice') then
  begin
    pr := timpalf.create(nil);
    pr.tipo_campo := 'stringa';
    pr.v_form_caption := 'seleziona ' + column.FieldName;
    pr.v_descrizione_caption := column.FieldName;
    pr.Width := column.Field.Size;
    pr.showmodal;
  end;

end;

initialization

registerclass(tA31VISLOT);

end.
