unit GGA31ARCCL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, dbgrids, RzDBGrid, Buttons,
  GGBASE, RzButton, query_go, MyAccess,
  ComCtrls, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres,
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, DBAccess, MemDS;

type

  TA31ARCCL = class(TBASE)
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
    codice_articolo_cliente, art_codice: string;
    premuto_esc: boolean;
  end;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31ARCCL.v_grigliaDblClick(Sender: TObject);
begin
  inherited;
  assegna_codice;
end;

procedure TA31ARCCL.v_grigliaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (key = vk_return) and (shift = []) then
  begin
    assegna_codice;
  end;
end;

procedure TA31ARCCL.assegna_codice;
begin
  art_codice := query.fieldbyname('art_codice').asstring;
  close;
end;

procedure TA31ARCCL.FormShow(Sender: TObject);
begin
  esegui_query;

end;

procedure TA31ARCCL.esegui_query;
begin
  query.close;
  query.sql.text := 'select arcl.codice_articolo_cliente, arcl.art_codice, arcl.cli_codice, cli.descrizione1 cli_descrizione1, ' +
    'concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione ' +
    'from arcl inner join art on art.codice = arcl.art_codice ' +
    'inner join cli on cli.codice = arcl.cli_codice ' +
    'where lower(arcl.codice_articolo_cliente) like ' + quotedstr('%' + lowercase(codice_articolo_cliente) + '%');
  query.open;

end;

procedure TA31ARCCL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_escape) and (shift = []) then
  begin
    close;
  end;
end;

initialization

registerclass(tA31ARCCL);

end.
