unit GGA31IMPMAG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, XLSSheetData5, XLSReadWriteII5,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, raizeedit_go, RzLabel, RzShellDialogs,
  RzDBEdit;

type
  TA31IMPMAG = class(TELABORA)
    Label2: TRzLabel;
    v_nome_file: trzedit_go;
    v_sfoglia: TRzButton;
    xlsread: TXLSReadWriteII5;
    v_messaggio: TMemo;
    xlsdialog: TRzOpenDialog;
    procedure v_sfogliaClick(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    lista_errori: tstringlist;
    procedure controllo_campi; override;
    procedure nome_file_controllo;
    procedure importa_magazzini_xls;
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
  A31IMPMAG: TA31IMPMAG;

implementation

{$r *.dfm}

uses DMARC,ZZLIBRERIE_PROMAU;

procedure TA31IMPMAG.v_confermaClick(Sender: TObject);
begin
  promau_inizializza_variabili;

  controllo_campi;

  v_conferma.enabled := false;
  tab_pagina2_abilitata := true;
  inherited;

  Self.Update;
  screen.cursor := crhourglass;
  importa_magazzini_xls;

  screen.cursor := crdefault;
  v_conferma.enabled := true;

end;

procedure TA31IMPMAG.v_sfogliaClick(Sender: TObject);
begin
  inherited;
  xlsdialog.InitialDir := copy(cartella_installazione, 1, length(cartella_installazione) - 4) + 'importa\';
  if xlsdialog.execute then
  begin
    v_nome_file.enabled := true;
    v_nome_file.text := xlsdialog.FileName;
    v_nome_file.enabled := false;

    xlsread.filename := v_nome_file.text;
    xlsread.read;
  end;

end;

procedure TA31IMPMAG.controllo_campi;
begin
  nome_file_controllo;
end;

procedure TA31IMPMAG.nome_file_controllo;
begin

  if v_nome_file.text = '' then
  begin
    v_sfoglia.click;
  end;

end;

procedure TA31IMPMAG.FormCreate(Sender: TObject);
begin
  inherited;
  lista_errori := tstringlist.create;
end;

procedure TA31IMPMAG.importa_magazzini_xls;
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

  v_messaggio.clear;
  conta := 0;
  for i := 2 to xlsread.sheets[0].lastrow do
  begin
    v_messaggio.lines.add(' art: ' + xlsread.sheets[0].asstring[FLD_ART_CODICE, i] + ' scorta min:' + xlsread.sheets[0].asstring[FLD_SCORTA_MIN, i] + ' scorta max:' + xlsread.sheets[0].asstring[FLD_SCORTA_MAX, i] + ' lotto:' + xlsread.sheets[0].asstring[FLD_LOTTO_RIORD, i]);

    art.close;
    art.parambyname('art_codice').asstring := xlsread.sheets[0].asstring[FLD_ART_CODICE, i];
    art.open;
    if not art.eof then
    begin
      art.edit;
      art.fieldbyname('descrizione1_lingua_01').asstring := xlsread.sheets[0].asstring[FLD_VETTURA, i];
      art.post;

      mag.close;
      mag.parambyname('tma_codice').asstring := FLD_TMA_CODICE;
      mag.parambyname('art_codice').asstring := xlsread.sheets[0].asstring[FLD_ART_CODICE, i];
      mag.open;

      if mag.eof then
      begin
        mag.append;
        mag.fieldbyname('tma_codice').asstring := FLD_TMA_CODICE;
        mag.fieldbyname('art_codice').asstring := xlsread.sheets[0].asstring[FLD_ART_CODICE, i];
        mag.post;
      end;

      mag.edit;
      try
        mag.fieldbyname('scorta_minima').asfloat := xlsread.sheets[0].asfloat[FLD_SCORTA_MIN, i];
      except
        mag.fieldbyname('scorta_minima').asfloat := 0;
      end;
      try
        mag.fieldbyname('scorta_massima').asfloat := xlsread.sheets[0].asfloat[FLD_SCORTA_MAX, i];
      except
        mag.fieldbyname('scorta_massima').asfloat := 0;
      end;
      try
        mag.fieldbyname('lotto_riordino').asfloat := xlsread.sheets[0].asfloat[FLD_LOTTO_RIORD, i];
      except
        mag.fieldbyname('lotto_riordino').asfloat := 0;
      end;

      mag.post;

    end
    else
    begin
      lista_errori.add('--- articolo ' + xlsread.sheets[0].asstring[FLD_ART_CODICE, i] + ' non esiste ');
    end;

  end; // for

  if not DirectoryExists('..\temp') then
  begin
    forcedirectories('..\temp');
  end;

  nome_file := '..\temp\A31IMPMAG.log';

  lista_errori.SaveToFile(nome_file);
  if fileexists(nome_file) then
  begin
    esegui_effettivo('notepad.exe', nome_file);
  end;

  mag.close;
  art.close;

  mag.free;
  art.free;

  messaggio(100, 'Importazione magazzini terminata');
  close;

end;

initialization

registerclass(tA31IMPMAG);

end.
