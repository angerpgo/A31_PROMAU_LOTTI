unit GGA31IMPCLS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, XLSSheetData5, XLSReadWriteII5,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, raizeedit_go, RzLabel, RzShellDialogs,
  RzDBEdit;

type
  TA31IMPCLS = class(TELABORA)
    Label2: TRzLabel;
    v_nome_file: trzedit_go;
    v_sfoglia: TRzButton;
    xlsread: TXLSReadWriteII5;
    v_messaggio: TMemo;
    xlsdialog: TRzOpenDialog;
    Label1: TRzLabel;
    v_cli_codice: trzedit_go;
    v_cli_descrizione1: trzdbeditdescrizione_go;
    cli_ds: TMyDataSource;
    cli: TMyQuery_go;
    procedure v_sfogliaClick(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    lista_errori: tstringlist;
    procedure controllo_campi; override;
    procedure cli_codice_controllo(blocco: boolean);
    procedure nome_file_controllo;
    procedure importa_listini_xls;
  public
    { Public declarations }
  end;

const
  FLD_CONTRATTO = 4;
  FLD_POS = 6;
  FLD_ARTICOLO = 9;
  FLD_PREZZO = 14;
  FLD_NOTE = 15;
  FLD_DATA_INIZIO = 16;
  FLD_DATA_FINE = 17;

var
  A31IMPCLS: TA31IMPCLS;

implementation

{$r *.dfm}


uses DMARC,ZZLIBRERIE_PROMAU;

procedure TA31IMPCLS.v_cli_codiceExit(Sender: TObject);
begin
  inherited;

  if (arc.dit.fieldbyname('codice_nom_numerico').asstring = 'si') and (length(v_cli_codice.text) < 8) then
  begin
    v_cli_codice.text := setta_lunghezza(v_cli_codice.text, 8, true, '0');
  end;

  cli_codice_controllo(true);

end;

procedure TA31IMPCLS.v_confermaClick(Sender: TObject);
begin
  promau_inizializza_variabili;

  controllo_campi;

  v_conferma.enabled := false;
  tab_pagina2_abilitata := true;
  inherited;

  Self.Update;
  screen.cursor := crhourglass;
  importa_listini_xls;

  screen.cursor := crdefault;
  v_conferma.enabled := true;

end;

procedure TA31IMPCLS.v_sfogliaClick(Sender: TObject);
begin
  inherited;
  if xlsdialog.execute then
  begin
    v_nome_file.enabled := true;
    v_nome_file.text := xlsdialog.FileName;
    v_nome_file.enabled := false;

    xlsread.filename := v_nome_file.text;
    xlsread.read;
  end;

end;

procedure TA31IMPCLS.controllo_campi;
begin
  cli_codice_controllo(true);
  nome_file_controllo;
end;

procedure TA31IMPCLS.FormCreate(Sender: TObject);
begin
  inherited;
  lista_errori := tstringlist.create;
end;

procedure TA31IMPCLS.nome_file_controllo;
begin

  if v_nome_file.text = '' then
  begin
    v_sfoglia.click;
  end;

end;

procedure TA31IMPCLS.importa_listini_xls;
var
  i, conta: integer;
  cls, a31cls: tmyquery_go;
  flag_scrivi: boolean;
  data_inizio, data_fine: tdatetime;
  stringa, art_codice_cliente, note_contratto, nome_file: string;
begin

  cls := tmyquery_go.create(nil);
  cls.connection := arc.arcdit;
  cls.sql.add('select * from cls');
  cls.sql.add('where');
  cls.sql.add('cli_codice=:cli_codice and ');
  cls.sql.add('art_codice=:art_codice and ');
  cls.sql.add('data_inizio=:data_inizio ');

  a31cls := tmyquery_go.create(nil);
  a31cls.connection := arc.arcdit;
  a31cls.sql.add('select * from a31cls');
  a31cls.sql.add('where');
  a31cls.sql.add('cli_codice=:cli_codice and ');
  a31cls.sql.add('contratto=:contratto and ');
  a31cls.sql.add('posizione=:posizione and');
  a31cls.sql.add('art_codice=:art_codice and ');
  a31cls.sql.add('data_inizio=:data_inizio ');

  v_messaggio.clear;
  conta := 0;
  for i := 12 to xlsread.sheets[0].lastrow do
  begin
    v_messaggio.lines.add(
      ' cli: ' + v_cli_codice.text +
      ' contratto:' + xlsread.sheets[0].asstring[FLD_CONTRATTO, i] +
      ' pos:' + xlsread.sheets[0].asstring[FLD_POS, i] +
      ' art: ' + xlsread.sheets[0].asstring[FLD_ARTICOLO, i] +
      ' prz:' + xlsread.sheets[0].asstring[FLD_PREZZO, i] +
      ' inizio:' + xlsread.sheets[0].asstring[FLD_DATA_INIZIO, i] +
      ' fine:' + xlsread.sheets[0].asstring[FLD_DATA_FINE, i]);

    if xlsread.sheets[0].asstring[FLD_PREZZO, i] <> '' then
    begin
      stringa := xlsread.sheets[0].asstring[FLD_PREZZO, i];

      stringa := strtran(xlsread.sheets[0].asstring[FLD_PREZZO, i], '.', '', true);

      conta := conta + 1;

      if conta > 10 then
      begin
        conta := 0;
      end;

      flag_scrivi := true;

      art_codice_cliente := xlsread.sheets[0].asstring[FLD_ARTICOLO, i];
      if (v_cli_codice.text = '00000814') and (length(art_codice_cliente) < 9) then
      begin
        art_codice_cliente := setta_lunghezza(art_codice_cliente, 9, true, '0');
      end;

      note_contratto := xlsread.sheets[0].asstring[FLD_NOTE, i];
      try
        data_inizio := xlsread.sheets[0].asdatetime[FLD_DATA_INIZIO, i];
        if xlsread.sheets[0].asstring[FLD_DATA_INIZIO, i] = '' then
        begin
          data_inizio := date;
        end
        else
        begin
          data_inizio := xlsread.sheets[0].asdatetime[FLD_DATA_INIZIO, i]
        end;

      except
      end;

      try
        if xlsread.sheets[0].asstring[FLD_DATA_FINE, i] = '' then
        begin
          data_fine := strtodate(data_31_12_9999);
        end
        else
        begin
          data_fine := xlsread.sheets[0].asdatetime[FLD_DATA_FINE, i]
        end;
      except
      end;

      if not read_tabella(arc.arcdit, 'cli', 'codice', v_cli_codice.text) then
      begin
        flag_scrivi := false;
      end;

      if not read_tabella(arc.arcdit, 'arcl', 'cli_codice;codice_articolo_cliente',
        vararrayof([v_cli_codice.text, art_codice_cliente]), '*') then
      begin
        flag_scrivi := false;
      end;

      if flag_scrivi then
      begin
        if (trim(xlsread.sheets[0].asstring[FLD_CONTRATTO, i]) = '') then
        begin
          cls.close;
          cls.parambyname('cli_codice').asstring := v_cli_codice.text;
          cls.parambyname('art_codice').asstring := archivio.fieldbyname('art_codice').asstring;
          cls.parambyname('data_inizio').asdatetime := data_inizio;
          cls.open;
          if cls.eof then
          begin
            cls.append;
            cls.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(arc.arcdit, 'CLS_PROGRESSIVO');
            cls.fieldbyname('cli_codice').asstring := v_cli_codice.text;
            cls.fieldbyname('art_codice').asstring := archivio.fieldbyname('art_codice').asstring;
            cls.fieldbyname('data_inizio').asdatetime := data_inizio;
            cls.fieldbyname('prezzo').asfloat := strtofloat(stringa);
            cls.post;
          end
          else
          begin
            cls.edit;
            cls.fieldbyname('prezzo').asfloat := strtofloat(stringa);
            cls.post;
          end;
          arc.aggiorna_data_fine('cls', 'A',
            'cli_codice', cls.fieldbyname('cli_codice').asstring,
            'art_codice', cls.fieldbyname('art_codice').asstring,
            '', '',
            '', '',
            '', '',
            cls.fieldbyname('data_inizio').asdatetime);
        end
        else
        begin
          a31cls.close;
          a31cls.parambyname('cli_codice').asstring := v_cli_codice.text;
          a31cls.parambyname('contratto').asstring := xlsread.sheets[0].asstring[FLD_CONTRATTO, i];
          a31cls.parambyname('posizione').asstring := trim(xlsread.sheets[0].asstring[FLD_POS, i]);
          a31cls.parambyname('art_codice').asstring := archivio.fieldbyname('art_codice').asstring;
          a31cls.parambyname('data_inizio').asdatetime := data_inizio;
          a31cls.open;
          if a31cls.eof then
          begin
            a31cls.append;
            a31cls.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(arc.arcdit, 'A31CLS_PROGRESSIVO');
            a31cls.fieldbyname('cli_codice').asstring := v_cli_codice.text;
            a31cls.fieldbyname('contratto').asstring := xlsread.sheets[0].asstring[FLD_CONTRATTO, i];
            a31cls.fieldbyname('posizione').asstring := trim(xlsread.sheets[0].asstring[FLD_POS, i]);
            a31cls.fieldbyname('art_codice').asstring := archivio.fieldbyname('art_codice').asstring;
            a31cls.fieldbyname('data_inizio').asdatetime := data_inizio;
            a31cls.fieldbyname('prezzo').asfloat := strtofloat(stringa);
            a31cls.post;
          end;

          a31cls.edit;
          a31cls.fieldbyname('prezzo').asfloat := strtofloat(stringa);
          a31cls.fieldbyname('data_fine').asdatetime := data_fine;
          a31cls.fieldbyname('note').asstring := note_contratto;
          a31cls.post;

          arc.aggiorna_data_fine('a31cls', 'A',
            'cli_codice', a31cls.fieldbyname('cli_codice').asstring,
            'contratto', a31cls.fieldbyname('contratto').asstring,
            'posizione', a31cls.fieldbyname('posizione').asstring,
            'art_codice', a31cls.fieldbyname('art_codice').asstring,
            '', '',
            a31cls.fieldbyname('data_inizio').asdatetime);

        end;
      end
      else
      begin
        lista_errori.add('--- articolo cliente ' + art_codice_cliente + ' non esiste ');
      end;
    end;
  end; // for

  if not DirectoryExists('..\temp') then
  begin
    forcedirectories('..\temp');
  end;

  nome_file := '..\temp\A31IMPCLS.log';

  lista_errori.SaveToFile(nome_file);
  if fileexists(nome_file) then
  begin
    esegui_effettivo('notepad.exe', nome_file);
  end;

  cls.close;
  cls.free;

  a31cls.close;
  a31cls.free;

  messaggio(100, 'Importazione listino contratti clienti terminata');
  close;

end;

procedure TA31IMPCLS.cli_codice_controllo(blocco: boolean);
begin

  tabella_controllo(false, cli, v_cli_codice, blocco, nil, nil, nil);

  if v_cli_codice.text = '' then
  begin
    v_cli_codice.setfocus;
  end;

end;

initialization

registerclass(tA31IMPCLS);

end.
