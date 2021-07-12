unit GGA31ELAOBS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, RzEdit, raizeedit_go,
  Vcl.StdCtrls, Vcl.Mask, RzLabel, Vcl.Grids, Vcl.DBGrids, RzDBGrid;

type
  TA31ELAOBS = class(TELABORA)
    RzLabel1: TRzLabel;
    v_data_consegna_al: trzdatetimeedit_go;
    RzLabel2: TRzLabel;
    v_gg_obsoleto: trznumericedit_go;
    v_griglia: trzdbgrid_go;
    mmt: TMyQuery_go;
    dbs: TMyQuery_go;
    rzdbgrid_go1: trzdbgrid_go;
    procedure v_data_consegna_alExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
  protected
    procedure elabora_articoli_obsoleti;
    procedure cerca_semilavorati(art_codice: string; liv: integer);
  public
    { Public declarations }
    riga: integer;
  end;

var
  A31ELAOBS: TA31ELAOBS;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31ELAOBS.FormShow(Sender: TObject);
begin
  inherited;

  v_data_consegna_al.date := now;
  v_gg_obsoleto.value := 90;
end;

procedure TA31ELAOBS.v_confermaClick(Sender: TObject);
begin
  tab_pagina2_abilitata := true;
  inherited;

  elabora_articoli_obsoleti;
end;

procedure TA31ELAOBS.v_data_consegna_alExit(Sender: TObject);
begin
  inherited;
  if v_data_consegna_al.date = 0 then
  begin
    messaggio(000, 'Alla data movimento  obbligatoria');
    v_data_consegna_al.selectall;
    v_data_consegna_al.setfocus;
    abort;
  end;

end;

procedure TA31ELAOBS.elabora_articoli_obsoleti;
var
  liv: integer;
begin
  arc.xlswrite.filename := cartella_esporta + '\esporta\ELAOBS.xls';
  arc.xlswrite.Read;

  arc.xlswrite.filename := cartella_esporta + '\esporta\' + utente + '_ELAOBS_' + formatdatetime('yyyy_mm_dd_hh_nn_ss ', now) + '.xls';
  arc.xlswrite.Write;

  riga := 0;

  query.close;
  query.parambyname('alla_data').asdatetime := v_data_consegna_al.Date;
  query.parambyname('gg_obsoleto').asfloat := v_gg_obsoleto.value;
  query.open;

  while not query.eof do
  begin
    controllo_interrompi;
    mmt.close;
    mmt.parambyname('data_registrazione').asdatetime := query.fieldbyname('data_ultimo_mov').asdatetime;
    mmt.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    mmt.open;

    liv := 0;
    (*
      riga := riga + 1;

      arc.xlswrite.Sheets[0].Asinteger[0, riga] := liv;
      arc.xlswrite.Sheets[0].AsString[1, riga] := mmt.fieldbyname('tma_codice').asstring;
      arc.xlswrite.Sheets[0].AsString[2, riga] := query.fieldbyname('tcm_codice').asstring;
      arc.xlswrite.Sheets[0].AsString[3, riga] := mmt.fieldbyname('progressivo').asstring;
      arc.xlswrite.Sheets[0].AsString[4, riga] := query.fieldbyname('art_codice').asstring;
      arc.xlswrite.Sheets[0].AsString[5, riga] := query.fieldbyname('art_descrizione1').asstring;
      arc.xlswrite.Sheets[0].AsString[6, riga] := query.fieldbyname('art_descrizione2').asstring;
      arc.xlswrite.Sheets[0].AsString[7, riga] := query.fieldbyname('valore_costo_standard').asstring;
      arc.xlswrite.Sheets[0].AsString[8, riga] := query.fieldbyname('esistenza').asstring;
      arc.xlswrite.Sheets[0].AsString[9, riga] := query.fieldbyname('data_ultimo_mov').asstring;
      arc.xlswrite.Sheets[0].AsString[10, riga] := query.fieldbyname('codice_auto').asstring;
    *)
    cerca_semilavorati(query.fieldbyname('art_codice').asstring, liv);
    query.next;
  end;
  arc.xlswrite.Write;

  mmt.close;
  query.close;

  esegui_effettivo(arc.xlswrite.filename, 'open');
end;

procedure TA31ELAOBS.cerca_semilavorati(art_codice: string; liv: integer);
var
  query_semilav: tmyquery_go;
begin
  query_semilav := tmyquery_go.create(nil);
  query_semilav.Connection := arc.arcdit;
  query_semilav.sql.text := dbs.sql.text;

  tabella_ds.dataset := query_semilav;

  query_semilav.close;
  query_semilav.parambyname('liv').asinteger := liv;
  query_semilav.parambyname('art_codice').asstring := art_codice;
  query_semilav.parambyname('alla_data').asdatetime := v_data_consegna_al.Date;
  query_semilav.open;
  if not query_semilav.eof then
  begin

    liv := liv + 1;
    riga := riga+1;

    mmt.close;
    mmt.parambyname('data_registrazione').asdatetime := query_semilav.fieldbyname('data_ultimo_mov').asdatetime;
    mmt.parambyname('art_codice').asstring := query_semilav.fieldbyname('art_codice').asstring;
    mmt.open;

    arc.xlswrite.Sheets[0].Asinteger[0, riga] := liv;
    arc.xlswrite.Sheets[0].AsString[1, riga] := mmt.fieldbyname('tma_codice').asstring;
    arc.xlswrite.Sheets[0].AsString[2, riga] := query_semilav.fieldbyname('tcm_codice').asstring;
    arc.xlswrite.Sheets[0].AsString[3, riga] := mmt.fieldbyname('tmo_codice').asstring;
    arc.xlswrite.Sheets[0].AsString[4, riga] := mmt.fieldbyname('progressivo').asstring;
    arc.xlswrite.Sheets[0].AsString[5, riga] := query_semilav.fieldbyname('art_codice').asstring;
    arc.xlswrite.Sheets[0].AsString[6, riga] := query_semilav.fieldbyname('art_descrizione1').asstring;
    arc.xlswrite.Sheets[0].AsString[7, riga] := query_semilav.fieldbyname('art_descrizione2').asstring;
    arc.xlswrite.Sheets[0].AsString[8, riga] := query_semilav.fieldbyname('valore_costo_standard').asstring;
    arc.xlswrite.Sheets[0].AsString[9, riga] := query_semilav.fieldbyname('esistenza').asstring;
    arc.xlswrite.Sheets[0].AsString[10, riga] := query_semilav.fieldbyname('data_ultimo_mov').asstring;
    arc.xlswrite.Sheets[0].AsString[11, riga] := query_semilav.fieldbyname('codice_auto').asstring;

    while not query_semilav.eof do
    begin
      controllo_interrompi;
      cerca_semilavorati(query_semilav.fieldbyname('art_codice_figlio').asstring, liv);

      query_semilav.next;
    end;
  end;
  liv := liv - 1;
  query_semilav.close;
end;

initialization

registerclass(tA31ELAOBS);

end.
