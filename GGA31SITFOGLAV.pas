unit GGA31SITFOGLAV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, RzDBGrid,
  raizeedit_go, Vcl.Buttons, RzSpnEdt, Vcl.StdCtrls, RzCmboBx, RzDBEdit,
  Vcl.Mask, RzEdit, RzLabel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TA31SITFOGLAV = class(TELABORA)
    Label2: TRzLabel;
    v_art_codice: trzedit_go;
    v_art_descrizione: trzdbeditdescrizione_go;
    Label4: TRzLabel;
    v_dettaglio: trzcombobox_go;
    pannello_bottoni: TRzPanel;
    v_selart: TRzRapidFireButton;
    art_ds: TMyDataSource;
    art: TMyQuery_go;
    tool_stampa: TToolButton;
    v_grigliaDB: TcxGridDBTableView;
    v_grigliaLiv1: TcxGridLevel;
    v_griglia: TcxGrid;
    v_grigliaDBprogressivo: TcxGridDBColumn;
    v_grigliaDBcli_codice: TcxGridDBColumn;
    v_grigliaDBcodice_articolo_cliente: TcxGridDBColumn;
    v_grigliaDBa31art_esponente: TcxGridDBColumn;
    v_grigliaDBqta_da_produrre: TcxGridDBColumn;
    v_grigliaDBqta_prodotta: TcxGridDBColumn;
    v_grigliaDBdata_consegna: TcxGridDBColumn;
    v_grigliaDBcodice: TcxGridDBColumn;
    v_grigliaDBdescrizione: TcxGridDBColumn;
    v_grigliaDBsituazione: TcxGridDBColumn;
    procedure v_selartClick(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tool_stampaClick(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
  protected
    selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione: string;
    da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice, selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice: string;
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista, art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista: tstringlist;
    tasto_escape_art, art_escludi_obsoleti, art_eseguito: boolean;

    procedure call_selart;
    procedure esegui_selezione;

    procedure art_codice_controllo(blocco: boolean);
    procedure stampa_fogli_lavoro;
  public
    art_codice_passato: string;
    procedure controllo_campi; override;
    procedure visualizza_stampa_elabora; override;

  end;

var
  A31SITFOGLAV: TA31SITFOGLAV;

implementation

{$r *.dfm}

uses DMARC, ZZLIBRERIE, GGA31STAFOGLAV;

procedure TA31SITFOGLAV.controllo_campi;
begin
  art_codice_controllo(true);
end;

procedure TA31SITFOGLAV.FormCreate(Sender: TObject);
begin

  tab_pagina2_abilitata := true;

  inherited;

  art_codice_lista := tstringlist.create;
  art_tmr_codice_lista := tstringlist.create;
  art_tcm_codice_lista := tstringlist.create;
  art_tgm_codice_lista := tstringlist.create;
  art_tsa_codice_lista := tstringlist.create;
  art_frn_codice_lista := tstringlist.create;
  art_tin_codice_lista := tstringlist.create;
  art_tub_codice_lista := tstringlist.create;
end;

procedure TA31SITFOGLAV.call_selart;
begin
  esegui_selart(selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
    selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, art_codice_passato, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice, art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista, tasto_escape_art, art_escludi_obsoleti, art_eseguito);
  if tasto_escape_art then
  begin
    close;
    abort;
  end
  else
  begin
    v_art_codice.text := '';
    art_codice_controllo(false);
    selectnext(v_art_codice, true, true);
  end;
end;

procedure TA31SITFOGLAV.FormDestroy(Sender: TObject);
begin
  inherited;

  freeandnil(art_codice_lista);
  freeandnil(art_codice_lista);
  freeandnil(art_tmr_codice_lista);
  freeandnil(art_tcm_codice_lista);
  freeandnil(art_tgm_codice_lista);
  freeandnil(art_tsa_codice_lista);
  freeandnil(art_frn_codice_lista);
  freeandnil(art_tin_codice_lista);
  freeandnil(art_tub_codice_lista);
end;

procedure TA31SITFOGLAV.tool_stampaClick(Sender: TObject);
begin
  inherited;
  stampa_fogli_lavoro;
end;

procedure TA31SITFOGLAV.visualizza_stampa_elabora;
begin
  art_codice_controllo(false);
end;

procedure TA31SITFOGLAV.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure TA31SITFOGLAV.v_confermaClick(Sender: TObject);
begin
  inherited;
  if richiesta_filtri then
  begin
    if (arc.dit.fieldbyname('richiesta_filtri').asstring = 'si') or (art_codice_passato <> '') then
    begin
      if not art_eseguito then
      begin
        art_codice_passato := v_art_codice.text;
        call_selart;
      end;
      art_eseguito := false;
    end;
  end;

  inherited;

  esegui_selezione;
end;

procedure TA31SITFOGLAV.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TA31SITFOGLAV.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, art, v_art_codice, blocco, nil, nil, nil);
end;

procedure TA31SITFOGLAV.esegui_selezione;
begin
  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('fg.progressivo, fg.cli_codice, fg.codice_articolo_cliente, fg.art_codice, fg.a31art_esponente, fg.qta_da_produrre, fg.qta_prodotta, fg.data_consegna, fg.situazione, ');
  query.sql.add('art.codice, concat(trim(art.descrizione1), '' '' ,art.descrizione2) descrizione  ');
  query.sql.add('from a31foglav fg');
  query.sql.add('left join art on art.codice = fg.art_codice');
  query.sql.add('where 1 = 1');
  if v_art_codice.text <> '' then
  begin
    query.SQL.add('and art.codice = ' + quotedstr(v_art_codice.text));
  end;

  if v_dettaglio.itemindex < 3 then
  begin

    query.SQL.add('and fg.situazione = ' + quotedstr(v_dettaglio.text));
  end;

  limart(art_escludi_obsoleti, query, false, selezione_art_codice, da_art_codice, a_art_codice, selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice, selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice, selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice, selezione_art_descrizione, da_art_descrizione, a_art_descrizione, selezione_art_tsa_codice, da_art_tsa_codice,
    a_art_tsa_codice, selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice, selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo, selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice, art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

  query.sql.add('order by fg.progressivo, fg.art_codice');
  query.open;

  if v_griglia.canfocus then
  begin
    v_griglia.setfocus;
  end;
end;

procedure TA31SITFOGLAV.stampa_fogli_lavoro;
begin
  parametri_extra_programma_chiamato[0] := query.fieldbyname('progressivo').asinteger;
  esegui_programma('A31STAFOGLAV', '', true);
end;

initialization

registerclass(TA31SITFOGLAV);

end.
