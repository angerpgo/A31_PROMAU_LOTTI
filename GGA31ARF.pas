unit GGA31ARF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, dbgrids, RzDBGrid, Buttons,
  GGBASE, RzButton, query_go, MyAccess,
  ComCtrls, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres,
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, DBAccess, MemDS;

type

  TA31ARF = class(TBASE)
    v_griglia: TRzDBGrid_go;
    query: tmyquery_go;
    query_ds: tmydatasource;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_grigliaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_grigliaDblClick(Sender: TObject);
  protected
    procedure esegui_query;
    procedure assegna_codice;
  public
    frn_codice, codice_articolo_fornitore, art_codice: string;
    premuto_esc: boolean;
  end;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31ARF.v_grigliaDblClick(Sender: TObject);
begin
  inherited;
  assegna_codice;
end;

procedure TA31ARF.v_grigliaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (key = vk_return) and (shift = []) then
  begin
    assegna_codice;
  end;
end;

procedure TA31ARF.assegna_codice;
begin
  art_codice := query.fieldbyname('art_codice').asstring;
  close;
end;

procedure TA31ARF.FormShow(Sender: TObject);
begin
  esegui_query;

end;

procedure TA31ARF.esegui_query;
begin
  query.close;
  query.sql.text := 'select arf.codice_articolo_fornitore, arf.codice_articolo_fornitore, arf.art_codice, arf.frn_codice, nom.descrizione1 nom_descrizione1, ' +
    'concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione ' +
    'from arf inner join art on art.codice = arf.art_codice ' +
    'inner join nom on nom.codice = arf.frn_codice ' +
    'where lower(arf.codice_articolo_fornitore) like ' + quotedstr('%' + lowercase(codice_articolo_fornitore) + '%')+' '+
    'order by arf.art_codice,arf.frn_codice ';
  query.open;

end;

procedure TA31ARF.FormKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift:
  TShiftState);
begin
  inherited;
  if (key = vk_escape) and (shift = []) then
  begin
    close;
  end;
end;

initialization

registerclass(tA31ARF);

end.
