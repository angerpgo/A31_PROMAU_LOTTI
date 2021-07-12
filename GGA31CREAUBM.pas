unit GGA31CREAUBM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, XLSSheetData5, XLSReadWriteII5,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, raizeedit_go, RzLabel, RzShellDialogs,
  RzDBEdit, Vcl.Grids, Vcl.DBGrids, RzDBGrid;

type
  TA31CREAUBM = class(TELABORA)
    xlsread: TXLSReadWriteII5;
    v_messaggio: TMemo;
    xlsdialog: TRzOpenDialog;
    ubm: TMyQuery_go;
    trzdbgrid_go1: trzdbgrid_go;
    Label8: TRzLabel;
    v_dalla_data: trzdatetimeedit_go;
    Label2: TRzLabel;
    v_alla_data: trzdatetimeedit_go;
    v_art_codice: trzedit_go;
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure v_alla_dataExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_dalla_dataExit(Sender: TObject);
  protected
    lista_errori: tstringlist;
    procedure alla_data_controllo;
    procedure controllo_campi; override;
    procedure crea_movim_ubicazioni;
  public
    { Public declarations }
  end;

const
  FLD_TMA_CODICE = 'P4';
  FLD_ART_CODICE = 0;
  FLD_VETTURA = 3;
  FLD_SCORTA_MIN = 4;
  FLD_SCORTA_MAX = 5;
  FLD_LOTTO_RIORD = 6;

var
  A31CREAUBM: TA31CREAUBM;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE_PROMAU;

procedure TA31CREAUBM.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  alla_data_controllo;
end;

procedure TA31CREAUBM.v_confermaClick(Sender: TObject);
begin

  controllo_campi;

  v_conferma.enabled := false;
  tab_pagina2_abilitata := true;
  inherited;

  Self.Update;
  screen.cursor := crhourglass;
  crea_movim_ubicazioni;

  screen.cursor := crdefault;
end;

procedure TA31CREAUBM.v_dalla_dataExit(Sender: TObject);
begin
  inherited;
if v_dalla_data.date < strtodate('24/08/2015') then
  begin
    messaggio(000, 'Data non valida ');
    v_dalla_data.setfocus;
  end;

end;

procedure TA31CREAUBM.controllo_campi;
begin
  alla_data_controllo;
end;

procedure TA31CREAUBM.FormCreate(Sender: TObject);
begin
  inherited;
  lista_errori := tstringlist.create;
end;

procedure TA31CREAUBM.FormShow(Sender: TObject);
begin
  inherited;

  if arc.dit.fieldbyname('ubicazione_multipla').asstring <> 'si' then
  begin
    messaggio(000, 'non è stata attivata, in anagrafica ditta, la gestione dell''ubicazione multipla');
    close;
  end;

  v_dalla_data.date := strtodate('24/08/2015');
end;

procedure TA31CREAUBM.alla_data_controllo;
begin
  if v_alla_data.date = 0 then
  begin
    v_alla_data.text := data_31_12_9999;
  end;
end;

procedure TA31CREAUBM.crea_movim_ubicazioni;
var
  i, conta: integer;
  art, mag: tmyquery_go;
  nome_file: string;
begin

  art := tmyquery_go.create(nil);
  art.connection := arc.arcdit;
  art.sql.add('select * from art');
  art.sql.add('where');
  art.sql.add('codice=:art_codice ');

  mag := tmyquery_go.create(nil);
  mag.connection := arc.arcdit;
  mag.sql.add('select * from mag');
  mag.sql.add('where');
  mag.sql.add('tma_codice=:tma_codice and ');
  mag.sql.add('art_codice=:art_codice ');

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('mmr.progressivo, ');
  query.sql.add('mmt.data_registrazione, ');
  query.sql.add('mmr.ART_CODICE,    ');
  query.sql.add('mmr.tma_codice tub_codice, ');
  query.sql.add('case when mmr.QUANTITA_ENTRATE>0 then ''carico'' else ''scarico'' end tipo_movimento, ');
  query.sql.add('mmr.quantita,  ');
  query.sql.add('mmr.progressivo,   ');
  query.sql.add('mmr.riga,  ');
  query.sql.add(' ''movimenti magazzino '' as documento_origine, ');
  query.sql.add('case when mmr.QUANTITA_ENTRATE>0 then 1 else -1 end segno, ');
  query.sql.add('mmt.TMO_CODICE ');
  query.sql.add('from mmr ');
  query.sql.add('inner join mmt on mmt.progressivo=mmr.progressivo ');
  query.sql.add('where ');
  query.sql.add('mmt.data_registrazione between :dalla_data and :alla_data and ');
  query.sql.add('not exists ( select progressivo from ubm  where documento_origine=''movimenti magazzino'' and ');
  query.sql.add('              doc_progressivo_origine=mmr.PROGRESSIVO and doc_riga_origine=mmr.RIGA) ');
  if v_art_codice.text <> '' then
  begin
    query.sql.add(' and mmr.art_codice=:art_codice ');
  end;

  query.parambyname('dalla_data').asdatetime := v_dalla_data.date;
  query.parambyname('alla_data').asdatetime := v_alla_data.date;
  if v_art_codice.text <> '' then
  begin
    query.parambyname('art_codice').asstring := v_art_codice.text;
  end;

  query.open;

  v_messaggio.clear;
  conta := 0;
  while not query.eof do
  begin
    controllo_interrompi;
    ubm.parambyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(arc.arcdit), 'ubm_progressivo');
    ubm.parambyname('data_registrazione').asdatetime := query.fieldbyname('data_registrazione').asdatetime;
    ubm.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    ubm.parambyname('tub_codice').asstring := query.fieldbyname('tub_codice').asstring;
    ubm.parambyname('tipo_movimento').asstring := query.fieldbyname('tipo_movimento').asstring;
    ubm.parambyname('quantita').asfloat := query.fieldbyname('quantita').asfloat;
    ubm.parambyname('documento_origine').asstring := query.fieldbyname('documento_origine').asstring;
    ubm.parambyname('doc_progressivo_origine').asinteger := query.fieldbyname('progressivo').asinteger;
    ubm.parambyname('doc_riga_origine').asinteger := query.fieldbyname('riga').asinteger;
    ubm.parambyname('segno').asfloat := query.fieldbyname('segno').asfloat;
    ubm.parambyname('tmo_codice').asstring := query.fieldbyname('tmo_codice').asstring;
    ubm.execsql;

    query.next;
  end; // for

  query.close;
  mag.close;
  art.close;

  mag.free;
  art.free;

  messaggio(100, 'Creazione movimenti ubicazione terminata');
  close;

end;

initialization

registerclass(tA31CREAUBM);

end.
