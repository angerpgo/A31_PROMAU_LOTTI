unit GGA31ELAINV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, Vcl.StdCtrls, RzLabel, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, raizeedit_go, zzprzinv;

type
  TA31ELAINV = class(TELABORA)
    v_griglia: trzdbgrid_go;
    RzPanel1: TRzPanel;
    v_in_elaborazione: TRzLabel;
    query_righe: TMyQuery_go;
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  protected
    przinv: tprzinv;
    procedure valorizza_inventario;
  public

  end;

var
  A31ELAINV: TA31ELAINV;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31ELAINV.v_confermaClick(Sender: TObject);
begin
  inherited;
  tab_pagina2_abilitata := true;
  inherited;

  valorizza_inventario;

end;

procedure TA31ELAINV.FormCreate(Sender: TObject);
begin
  inherited;
  przinv := tprzinv.create;
end;

procedure TA31ELAINV.FormDestroy(Sender: TObject);
begin
  inherited;
  freeandnil(przinv);
end;

procedure TA31ELAINV.valorizza_inventario;
var
  data_inventario: tdatetime;
  prezzo_inventario: double;
  tipo_inventario, crea_storico: string;
begin
  data_inventario := strtodate('31/12/2017');
  crea_storico := 'no';

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select * from tmp_inv');
  query_righe.sql.add('where ');
  query_righe.sql.add('art_codice=:art_codice and');
  query_righe.sql.add('tma_codice=:tma_codice ');

  query.close;
  query.sql.clear;
  query.sql.add('SELECT art.tcm_codice, art.tgm_codice, art.codice, art.descrizione1,art.valore_costo_standard, t.*');
  query.sql.add('FROM TMP_INV t');
  query.sql.add('INNER JOIN art ON art.codice=t.art_codice');
 // query.sql.add('WHERE t.art_codice=''140160CST01'' ');
  query.sql.add('ORDER BY 1,2,3');
  query.open;
  while not query.eof do
  begin
    query_righe.close;
    query_righe.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    query_righe.parambyname('tma_codice').asstring := query.fieldbyname('tma_codice').asstring;
    query_righe.open;

    if not query_righe.eof then
    begin
      query_righe.edit;
      if query.fieldbyname('tcm_codice').asstring = 'PRO' then
      begin
        prezzo_inventario := query.fieldbyname('valore_costo_standard').asfloat;
      end
      else
      begin
        tipo_inventario := 'ultimo costo';
        przinv.przinv(query.fieldbyname('art_codice').asstring, query.fieldbyname('tma_codice').asstring, tipo_inventario,
          esercizio, data_inventario, query.fieldbyname('qta').asfloat, prezzo_inventario, crea_storico, false);
      end;

      query_righe.fieldbyname('prezzo_nuovo').asfloat := prezzo_inventario;
      query_righe.fieldbyname('importo').asfloat := arrotonda(query_righe.fieldbyname('prezzo_nuovo').asfloat * prezzo_inventario, 2);
      query_righe.post;
    end;
    query.next;

  end;

end;

initialization

registerclass(tA31ELAINV);

end.
