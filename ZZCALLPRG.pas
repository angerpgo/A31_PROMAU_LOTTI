unit ZZCALLPRG;

interface

uses sysutils;

procedure assegna_programma_personalizzato(programma_da_eseguire: string; var codice_archivio: variant; var programma_personalizzato: boolean);

const
  elenco_programmi_personalizzati =
    'CONDOCV;CREORDP;EVADOCV;GESARC01;GESARC02;GESCLS;GESMOV;GESORDP;GESVEN;RICPRS;' +
    'SITORDVES;STAMAG;A31ASSTIN;A31CALSTD;A31CREAUBM;A31ELACRM;A31ELAOBS;A31ELASWING;' +
    'A31ESPPIANIF;A31EVAORDP;A31GESART;A31GESCAG;A31GESFOGLAV;A31IMPCLS;A31IMPMAG;A31IMPORDV;' +
    'A31PRESAPROD;A31STAFABB;A31STAFATV;A31STAFOGLAV;A31STAFOGLAV2;A31STAOBS;A31STAPIANIF;A31STARMA' +
    'A31GESCAG; A31SITFOGLAV;A31GESTSU;A31PICKIN;A31GESLTM';

implementation

uses variants;

procedure assegna_programma_personalizzato(programma_da_eseguire: string; var codice_archivio: variant; var programma_personalizzato: boolean);
begin

  programma_personalizzato := false;

  (*
    if uppercase(programma_da_eseguire) = 'xxxxxx' then
    begin
    if vartype(codice_archivio) = varustring then
    begin
    codice_archivio := vararrayof(['', '']);
    end;
    programma_personalizzato := true;
    end;


    if uppercase(programma_da_eseguire) = 'A31GESART' then
    begin
    if vartype(codice_archivio) = varustring then
    begin
    codice_archivio := '';
    end;
    programma_personalizzato := true;
    end;
  *)

  if uppercase(programma_da_eseguire) = 'A31GESCAG' then
  begin
    if vartype(codice_archivio) = varustring then
    begin
      codice_archivio := vararrayof(['', '']);
    end;
    programma_personalizzato := true;
  end;

  if uppercase(programma_da_eseguire) = 'A31GESTSU' then
  begin
    if vartype(codice_archivio) = varustring then
    begin
      codice_archivio := vararrayof(['', '', '', '', '']);
    end;
    programma_personalizzato := true;
  end;

  if uppercase(programma_da_eseguire) = 'A31CRUTUB' then
  begin
    if vartype(codice_archivio) = varustring then
    begin
      codice_archivio := vararrayof(['', '', '', '', '']);
    end;
    programma_personalizzato := true;
  end;

  if uppercase(programma_da_eseguire) = 'A31PICKIN' then
  begin
    if vartype(codice_archivio) = varustring then
    begin
      codice_archivio := 0;
    end;
    programma_personalizzato := true;
  end;

end;

end.
