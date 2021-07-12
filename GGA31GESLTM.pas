unit GGA31GESLTM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGGESLTM, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, RzSpnEdt, Vcl.StdCtrls, Vcl.WinXCtrls,
  raizeedit_go, RzCmboBx, RzDBCmbo, RzDBEdit, Vcl.Mask, RzEdit, Vcl.Buttons,
  RzTabs, RzLabel, Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls, Vcl.ToolWin;

type
  TA31GESLTM = class(TGESLTM)
    procedure v_gestione_collegatoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  A31GESLTM: TA31GESLTM;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31GESLTM.v_gestione_collegatoClick(Sender: TObject);
begin
  if tabella.fieldbyname('documento_origine').asstring = 'a31pickin' then
  begin
    parametri_extra_programma_chiamato[29] := tabella.fieldbyname('doc_riga_origine').asinteger;
    esegui_programma('A31PICKIN', tabella.fieldbyname('doc_progressivo_origine').asinteger, true);
  end
  else
  begin
    inherited;
  end;

end;

initialization

registerclass(tA31GESLTM);

end.
