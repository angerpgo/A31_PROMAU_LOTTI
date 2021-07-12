unit GGA31ESPPIANIF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.DateUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, Vcl.StdCtrls, RzLabel,
  XLSSheetData5, XLSReadWriteII5, Vcl.Buttons, RzSpnEdt;

type
  TA31ESPPIANIF = class(TELABORA)
    Label1: TRzLabel;
    v_operazione: TRzLabel;
    v_unico_file: TCheckBox;
    xlswrite: TXLSReadWriteII5;
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    cartella_esporta: string;
    anno_consegna: array [0 .. 110] of integer;
    settimana_consegna: array [0 .. 110] of integer;
    data_consegna: array [0 .. 110] of tdatetime;
    procedure esporta_ordini_clienti;
    procedure esporta_ordini_produzione;
    procedure copia_file(file_sorgente, file_destinazione: string);
    procedure cancella_files(percorso_file, tipo_file: string);
    function cerca_settimana(data_consegna2: tdatetime; anno_settimana, nr_settimana: integer): integer;
  public
    { Public declarations }
    nr_file, nr_file_prod: integer;
  end;

var
  A31ESPPIANIF: TA31ESPPIANIF;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE_PROMAU;

procedure TA31ESPPIANIF.v_confermaClick(Sender: TObject);
begin
  inherited;
  nr_file := 0;
  nr_file_prod := 0;

  v_conferma.enabled := false;
  cancella_files(cartella_esporta + '\pianif\', '*.*');

  esporta_ordini_clienti;
  esporta_ordini_produzione;
  v_conferma.enabled := true;

  messaggio(100, 'Creati nr.' + inttostr(nr_file) + ' di pianificazione clienti ' + #13 + #10 + 'Creati nr.' + inttostr(nr_file_prod) + ' di pianificazione');

  Close;
end;

procedure TA31ESPPIANIF.esporta_ordini_clienti;
var
  nome_file, cli_codice, cms_codice, tipologia, a31_art_codice_semilav, a31_frn_codice_terzista: string;
  riga, col, col_settimana: integer;
  prima_volta: boolean;
begin
  prima_volta := true;

  query.close;
  query.sql.clear;

  cli_codice := '';
  cms_codice := '';
  tipologia := '';
  nome_file := '';

  riga := 0;

  query.sql.add('select');
  query.sql.add('ovt.cli_codice,');
  query.sql.add('case when year(ovr.data_consegna) < year(current_date) then 0 else weekofyear(ovr.data_consegna) end settimana_consegna,');
  query.sql.add('cli.descrizione1 cli_descrizione1,');
  query.sql.add('ovt.indirizzo,');
  query.sql.add('ovr.cms_codice,');
  query.sql.add('cms.descrizione1 cms_descrizione1,');
  query.sql.add('ovr.tipologia,');
  query.sql.add('ovr.id_origine,');
  query.sql.add('ovr.progressivo,');
  query.sql.add('ovr.riga,');
  query.sql.add('ovr.art_codice,');
  query.sql.add('arcl.codice_articolo_cliente,');
  query.sql.add('arcl.descrizione_articolo_cliente,');
  query.sql.add('arcl.a31art_esponente esponente_articolo_cliente,');
  query.sql.add('year(ovr.data_consegna) anno_consegna,');
  query.sql.add('ovr.a31_art_codice_semilav,');
  query.sql.add('ovr.a31_frn_codice_terzista,');
  query.sql.add('ovr.data_consegna,');
  query.sql.add('sum(ovr.quantita) quantita,');
  query.sql.add('sum(ovr.quantita_evasa) quantita_evasa');
  query.sql.add('from ovt');
  query.sql.add('inner join ovr on ovr.progressivo=ovt.progressivo');
  query.sql.add('inner join arcl on arcl.art_codice=ovr.art_codice and arcl.cli_codice=ovt.cli_codice');
  query.sql.add('inner join cli on cli.codice= ovt.cli_codice');
  query.sql.add('inner join cms on cms.codice= ovr.cms_codice');
  query.sql.add('where ');
  query.sql.add('ovr.a31_frn_codice_terzista <>'''' and ');
  query.sql.add('ovr.situazione in (''inserito'', ''evaso parziale'') ');
  query.sql.add('group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
  query.sql.add('order by ovt.cli_codice, ovr.cms_codice, ovr.id_origine,ovr.a31_art_codice_semilav,ovr.a31_frn_codice_terzista, ovr.data_consegna');
  query.open;
  if not query.eof then
  begin
    while not query.eof do
    begin
      controllo_interrompi;

      v_operazione.caption := 'ordine ven ' + query.fieldbyname('progressivo').asstring + ' ' + query.fieldbyname('riga').asstring;

      if cli_codice <> query.fieldbyname('cli_codice').asstring then
      begin
        if cli_codice <> '' then
        begin
          if not v_unico_file.checked then
          begin
            XlsWrite.Write;
            nr_file := nr_file + 1;
          end
          else
          begin
            nr_file := nr_file + 1;
          end;

        end;

        cli_codice := query.fieldbyname('cli_codice').asstring;
        if v_unico_file.checked then
        begin
          nome_file := cartella_esporta + '\pianif\pianif_' + formatdatetime('yyyymmdd', now) + '.xls ';
        end
        else
        begin
          nome_file := cartella_esporta + '\pianif\' + cli_codice + '_' + query.fieldBYname('cli_descrizione1').asstring + '.xls';
        end;

        if ((v_unico_file.checked) and (prima_volta)) or (not v_unico_file.checked) then
        begin
          prima_volta := false;
          if v_unico_file.checked then
          begin
            copia_file(cartella_esporta + '\ESPORTA_PIANIF_UNICO.xls', nome_file);
          end
          else
          begin
            copia_file(cartella_esporta + '\ESPORTA_PIANIF.xls', nome_file);
          end;
          XlsWrite.filename := nome_file;
          if fileexists(nome_file) then
          begin
            XlsWrite.Read;
            if v_unico_file.checked then
            begin
              XlsWrite.Sheets[0].name := 'TOTALE';
            end
            else
            begin
              XlsWrite.Sheets[0].name := copy(query.fieldbyname('cli_descrizione1').asstring, 1, 15);
            end;
          end;

          for col := 1 to 110 do
          begin

            if v_unico_file.checked then
            begin
              XlsWrite.Sheets[0].AsInteger[14 + col, 0] := anno_consegna[col];
              XlsWrite.Sheets[0].AsInteger[14 + col, 1] := settimana_consegna[col];

            end
            else
            begin
              XlsWrite.Sheets[0].AsInteger[13 + col, 0] := anno_consegna[col];
              XlsWrite.Sheets[0].AsInteger[13 + col, 1] := settimana_consegna[col];
              XlsWrite.Sheets[0].Asdatetime[13 + col, 2] := data_consegna[col];
            end;
            riga := 2;
          end;
        end;
        v_operazione.caption := 'ordini cliente ' + cli_codice + ' ' + query.fieldbyname('cli_descrizione1').asstring;
      end;

      if (cms_codice <> query.fieldbyname('cms_codice').asstring) or (tipologia <> query.fieldbyname('tipologia').asstring) or
        (a31_art_codice_semilav <> query.fieldbyname('a31_art_codice_semilav').asstring) or
        (a31_frn_codice_terzista <> query.fieldbyname('a31_frn_codice_terzista').asstring) then
      begin
        cms_codice := query.fieldbyname('cms_codice').asstring;
        tipologia := query.fieldbyname('tipologia').asstring;
        a31_art_codice_semilav := query.fieldbyname('a31_art_codice_semilav').asstring;
        a31_frn_codice_terzista := query.fieldbyname('a31_frn_codice_terzista').asstring;

        if cms_codice <> '' then
        begin
          riga := riga + 1;
        end;
      end;

      col := -1;
      if v_unico_file.checked then
      begin
        XlsWrite.Sheets[0].Asstring[0, riga] := query.fieldbyname('cli_descrizione1').asstring;
        col := 0;
      end;

      XlsWrite.Sheets[0].Asstring[col + 1, riga] := query.fieldbyname('codice_articolo_cliente').asstring;
      XlsWrite.Sheets[0].Asstring[col + 2, riga] := query.fieldbyname('esponente_articolo_cliente').asstring;
      XlsWrite.Sheets[0].Asstring[col + 3, riga] := query.fieldbyname('descrizione_articolo_cliente').asstring;

      XlsWrite.Sheets[0].Asstring[col + 6, riga] := query.fieldbyname('a31_art_codice_semilav').asstring;
      XlsWrite.Sheets[0].Asstring[col + 7, riga] := query.fieldbyname('a31_frn_codice_terzista').asstring;

      XlsWrite.Sheets[0].Asstring[col + 8, riga] := query.fieldbyname('indirizzo').asstring;
      XlsWrite.Sheets[0].Asstring[col + 9, riga] := copy(query.fieldbyname('cms_descrizione1').asstring, 10, 80);
      try
        XlsWrite.Sheets[0].Asstring[col + 10, riga] := query.fieldbyname('id_origine').asstring;
      except

      end;

      col := 13;

      if v_unico_file.checked then
      begin
        col := 14;
      end;

      col_settimana := cerca_settimana(query.fieldbyname('data_consegna').asdatetime, query.fieldbyname('anno_consegna').asinteger, query.fieldbyname('settimana_consegna').asinteger);
      if (XlsWrite.Sheets[0].Asstring[col + col_settimana, riga] = '') or (XlsWrite.Sheets[0].Asstring[col + col_settimana, riga] = '0') then
      begin
        XlsWrite.Sheets[0].Asinteger[col + col_settimana, riga] := 0;
        XlsWrite.Sheets[0].Cell[col + col_settimana, riga].NumberFormat := '#,###0;-#,###0;';
      end;

      XlsWrite.Sheets[0].Asinteger[col + col_settimana, riga] := XlsWrite.Sheets[0].Asinteger[col + col_settimana, riga] + query.fieldbyname('quantita').asinteger - query.fieldbyname('quantita_evasa').asinteger;

      query.next;
    end;

    if not v_unico_file.checked then
    begin
      XlsWrite.Write;
      nr_file := nr_file + 1;
    end
    else
    begin
      nr_file := nr_file + 1;
    end;
  end;

end;

procedure TA31ESPPIANIF.esporta_ordini_produzione;
var
  nome_file, cli_codice, cms_codice, tipologia: string;
  riga, col, col_settimana: integer;
begin
  query.close;
  query.sql.clear;

  cli_codice := '';
  cms_codice := '';
  tipologia := '';
  nome_file := '';

  query.sql.add('select');
  query.sql.add('opt.data_consegna,');
  query.sql.add('case when year(opt.data_consegna) < year(current_date) then 0 else weekofyear(opt.data_consegna) end settimana_consegna,');
  query.sql.add('cli.codice cli_codice,');
  query.sql.add('cli.descrizione1 cli_descrizione1,');
  query.sql.add('opt.cms_codice,');
  query.sql.add('cms.descrizione1 cms_descrizione1,');
  query.sql.add('opt.tipologia,');
  query.sql.add('opt.id_origine,');
  query.sql.add('opt.progressivo,');
  query.sql.add('opt.art_codice,');
  query.sql.add('art.descrizione1 art_descrizione1,');
  query.sql.add('year(opt.data_consegna) anno_consegna,');
  query.sql.add('opt.quantita quantita,');
  query.sql.add('opt.quantita_evasa quantita_evasa');
  query.sql.add('from opt');
  query.sql.add('inner join art on art.codice= opt.art_codice');
  query.sql.add('inner join cli on cli.codice=:promau_frn_codice');
  query.sql.add('left join cms on cms.codice= opt.cms_codice');
  query.sql.add('where ');
  query.sql.add('opt.situazione in (''inserito'', ''evaso parziale'') ');
  query.sql.add('and opt.frn_codice='''' ');
  query.sql.add('and opt.ovr_progressivo=0 ');
  query.sql.add('and opt.a31cli_codice='''' ');
  query.sql.add('order by opt.cms_codice, opt.art_codice, opt.data_consegna  ');
  query.parambyname('promau_frn_codice').asstring := promau_frn_codice;
  query.sql.savetofile('c:\temp\a31esppianif_prod.sql');
  query.open;
  if not query.eof then
  begin
    while not query.eof do
    begin
      controllo_interrompi;

      v_operazione.caption := 'ordine prod ' + query.fieldbyname('data_consegna').asstring + ' ' + query.fieldbyname('art_codice').asstring;

      if cli_codice <> query.fieldbyname('cli_codice').asstring then
      begin
        if cli_codice <> '' then
        begin
          XlsWrite.Write;
        end;
        nr_file_prod := nr_file_prod + 1;

        cli_codice := query.fieldbyname('cli_codice').asstring;
        nome_file := cartella_esporta + '\pianif\' + cli_codice + '_' + query.fieldBYname('cli_descrizione1').asstring + '.xls';

        copia_file(cartella_esporta + '\ESPORTA_PIANIF.xls', nome_file);
        XlsWrite.filename := nome_file;
        if fileexists(nome_file) then
        begin
          XlsWrite.Read;
          XlsWrite.Sheets[0].name := copy(query.fieldbyname('cli_descrizione1').asstring, 1, 15);
          for col := 1 to 110 do
          begin
            XlsWrite.Sheets[0].AsInteger[13 + col, 0] := anno_consegna[col];
            XlsWrite.Sheets[0].AsInteger[13 + col, 1] := settimana_consegna[col];
          end;
          riga := 1;
        end;

        v_operazione.caption := 'ordini cliente ' + cli_codice + ' ' + query.fieldbyname('cli_descrizione1').asstring;
      end;

      if (cms_codice <> query.fieldbyname('cms_codice').asstring) or (tipologia <> query.fieldbyname('tipologia').asstring) then
      begin
        cms_codice := query.fieldbyname('cms_codice').asstring;
        tipologia := query.fieldbyname('tipologia').asstring;
        riga := riga + 1;
      end;

      XlsWrite.Sheets[0].Asstring[0, riga] := query.fieldbyname('art_codice').asstring;
      XlsWrite.Sheets[0].Asstring[2, riga] := query.fieldbyname('art_descrizione1').asstring;

      XlsWrite.Sheets[0].Asstring[8, riga] := copy(query.fieldbyname('cms_descrizione1').asstring, 10, 80);
      try
        XlsWrite.Sheets[0].Asstring[9, riga] := query.fieldbyname('id_origine').asstring;
      except
        on e: exception do
        begin
          showmessage('ordine prod ' + query.fieldbyname('progressivo').asstring + ' ' + E.message);
        end;
      end;

      col := 13;

      if v_unico_file.checked then
      begin
        col := 14;
      end;

      col_settimana := cerca_settimana(query.fieldbyname('data_consegna').asdatetime, query.fieldbyname('anno_consegna').asinteger, query.fieldbyname('settimana_consegna').asinteger);

      if (XlsWrite.Sheets[0].Asstring[col + col_settimana, riga] = '') or (XlsWrite.Sheets[0].Asstring[col + col_settimana, riga] = '0') then
      begin
        XlsWrite.Sheets[0].Asinteger[col + col_settimana, riga] := 0;
        XlsWrite.Sheets[0].Cell[col + col_settimana, riga].NumberFormat := '#,###0;-#,###0;';
      end;

      XlsWrite.Sheets[0].Asinteger[col + col_settimana, riga] := XlsWrite.Sheets[0].Asinteger[col + col_settimana, riga] + query.fieldbyname('quantita').asinteger - query.fieldbyname('quantita_evasa').asinteger;
      XlsWrite.Sheets[0].Cell[col + col_settimana, riga].NumberFormat := '#,###0;-#,###0;';

      query.next;
    end;

    XlsWrite.Write;
  end;
end;

procedure TA31ESPPIANIF.FormCreate(Sender: TObject);
var
  i, col: integer;
  data_fine, data_corrente: tdatetime;
  anno: integer;
begin
  inherited;
  promau_inizializza_variabili;

  v_operazione.caption := '';
  cartella_esporta := copy(cartella_installazione, 1, length(cartella_installazione) - 4) + 'esporta';
  forcedirectories(cartella_esporta + '\pianif');
  cancella_files(cartella_esporta + '\pianif\', '*.*');
  data_corrente := date;
  anno_consegna[0] := yearof(data_corrente);
  settimana_consegna[0] := weekoftheyear(data_corrente);
  data_consegna[0] := data_corrente;
  anno := anno_consegna[0];
  if (monthof(data_corrente) = 12) then
  begin
    anno := anno + 1;
  end;

  for i := 1 to 31 do
  begin
    if DayOfTheWeek(strtodate(setta_lunghezza(i, 2, 0) + '/01/' + inttostr(anno))) = 1 then
    begin
      data_fine := strtodate(setta_lunghezza(i, 2, 0) + '/01/' + inttostr(anno)) - 7;
      //  settimana_consegna[0] := WeekOfTheYear(data_fine);
      //  anno_consegna[0] := yearof(data_fine);
      //   data_consegna[0] := data_fine;
      //   if yearof(data_inizio) = yearof(data_fine) then
      //   begin
      //     settimana_consegna[0] := WeekOfTheYear(data_fine - 7);
      //     anno_consegna[0] := yearof(data_fine - 7);
      //  end;
      if weekoftheyear(data_fine) = 1 then
      begin
        data_fine := data_fine - 7;
      end;
      break;
    end;
  end;

  while (data_fine < data_corrente) and (WeekoftheYear(data_fine) <> WeekoftheYear(data_corrente)) do
  begin
    data_fine := data_fine + 7;
  end;

  data_consegna[1] := data_fine;
  for i := weekof(date) + 1 to weekof(data_fine) - 1 do
  begin
    data_consegna[1] := data_consegna[1] - 7;
  end;

  anno_consegna[1] := yearof(data_consegna[1]);
  settimana_consegna[1] := weekof(data_consegna[1]);

  (*
    data_consegna[1] := data_fine;
    anno_consegna[1] := yearof(data_fine);
    settimana_consegna[1] := WeekoftheYear(data_fine);
  *)
  for i := 1 to 110 do
  begin
    if data_consegna[i] = 0 then
    begin
      data_consegna[i] := data_consegna[i - 1] + 7;
      settimana_consegna[i] := WeekoftheYear(data_consegna[i]);
      anno_consegna[i] := yearof(data_consegna[i]);
      if settimana_consegna[i] < settimana_consegna[i - 1] then
      begin
        if yearof(data_consegna[0]) = yearof(data_consegna[i]) then
        begin
          anno_consegna[i] := anno_consegna[i] + 1;
        end;
      end;
    end;
  end;
end;

procedure TA31ESPPIANIF.copia_file(file_sorgente, file_destinazione: string);
var
  S, T: TFileStream;
begin
  S := TFileStream.Create(file_sorgente, fmOpenRead);
  try
    T := TFileStream.Create(file_destinazione, fmOpenWrite or fmCreate);
    try
      T.CopyFrom(S, S.Size);
    finally
      T.Free;
    end;
  finally
    S.Free;
  end;
end;

procedure TA31ESPPIANIF.cancella_files(percorso_file, tipo_file: string);
var
  searchResult: TSearchRec;
begin
  if FindFirst(percorso_file + tipo_file, faAnyFile, searchResult) = 0 then
  begin
    repeat
      deletefile(percorso_file + searchResult.Name);
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;

end;

function TA31ESPPIANIF.cerca_settimana(data_consegna2: tdatetime;
  anno_settimana, nr_settimana: integer): integer;
var
  i: integer;
begin
  if data_consegna2 < data_consegna[0] then
  begin
    result := 0;
  end
  //  else if (anno_settimana >= anno_consegna[11]) and (nr_settimana >= settimana_consegna[11]) then
  else if data_consegna2 >= data_consegna[110] then
  begin
    result := 110;
  end
  else
  begin
    for i := 1 to 109 do
    begin
      //      if (anno_settimana = anno_consegna[i]) and (nr_settimana = settimana_consegna[i]) then
      if (data_consegna2 >= data_consegna[i]) and (data_consegna2 < data_consegna[i + 1]) then
      begin
        result := i;
        break;
      end;
    end;
  end;
end;

initialization

registerclass(ta31esppianif);

end.
  int weekNum = ciCurr.Calendar.GetWeekOfYear
(dt, CalendarWeekRule.FirstFullWeek, DayOfWeek.Monday);
weekNum = weekNum / 12;
