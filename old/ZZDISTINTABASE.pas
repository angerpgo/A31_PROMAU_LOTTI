unit ZZDISTINTABASE;

interface

uses dateutils, sysutils, MyAccess, query_go;

function lunedi_inizio_anno(ditta, esercizio: string; data: tdatetime; anno: integer): tdatetime;

function calcola_consegna(anno, nr_settimana: integer; ditta, esercizio: string): tdatetime;
function calcola_settimana(data: tdatetime; ditta, esercizio: string; anno: integer): integer;

implementation

uses DMARC;

function calcola_consegna(anno, nr_settimana: integer; ditta, esercizio: string): tdatetime;
var
  data_consegna: tdatetime;
  settimana_attuale: integer;
begin
  settimana_attuale := calcola_settimana(date, ditta, esercizio, anno);

  // ----------------------------
  // data di consegna anno nuovo
  // ----------------------------
  if nr_settimana < settimana_attuale then
  begin
    data_consegna := lunedi_inizio_anno(ditta, InttoStr(strtoint(esercizio) + 1), date, anno);
  end
  else
  begin
    data_consegna := lunedi_inizio_anno(ditta, esercizio, date, anno);
  end;

  data_consegna := data_consegna + (nr_settimana - 1) * 7;

  result := data_consegna;
end;

function calcola_settimana(data: tdatetime; ditta, esercizio: string; anno: integer): integer;
var
  i: integer;
  data_inizio_anno: tdatetime;
begin

  data_inizio_anno := lunedi_inizio_anno(ditta, esercizio, data, anno);

  Result := 0;

  while true do
  begin

    if dayoftheweek(data) = 1 then
      break;

    data := data - 1;

  end;

  // data := data - data_inizio_anno;
  //Result := trunc(data / 7)+1;

  Result := weekof(data);
end;

function lunedi_inizio_anno(ditta, esercizio: string; data: tdatetime; anno: integer): tdatetime;
var
  dd, mm, yy: word;
  data_consegna: tdatetime;
  query: tmyquery_go;
begin

  query := tmyquery_go.create(nil);
  query.close;
  query.connection := arc.arc;
  query.sql.clear;
  query.sql.add('select data_inizio from ese');
  query.sql.add('where');
  query.sql.add('dit_codice=:dit_codice and');
  query.sql.add('codice=:codice ');
  query.parambyname('dit_codice').asstring := ditta;
  query.parambyname('codice').asstring := esercizio;
  query.open;
  if query.eof then
  begin
    yy := strtoInt(esercizio);
  end
  else
  begin
    yy := yearof(query.fieldbyname('data_inizio').asdatetime);
  end;

  data_consegna := encodedate(yy, 1, 1);

  data_consegna := data_consegna - 7;

  //----------------------------------------------
  // fine anno
  //----------------------------------------------
  if yearof(data_consegna) < yearof(data) then
  begin
    data_consegna := data_consegna - 7;
  end;

  // --------------------------------------
  // calcola il 1 lun dell'anno
  // --------------------------------------
  while true do
  begin

    if (dayoftheweek(data_consegna) = 1) and (WeekOfTheYear(data_consegna) = 1) then
      break;

    data_consegna := data_consegna + 1;

  end;

  Result := data_consegna;
  query.close;

end;

end.
