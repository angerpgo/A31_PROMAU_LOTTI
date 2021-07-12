// tabs = 2
// -----------------------------------------------------------------------------------------------
//
//                                 MD5 Message-Digest for Delphi 4
//
//                                 Delphi 4 Unit implementing the
//                      RSA Data Security, Inc. MD5 Message-Digest Algorithm
//
//                          Implementation of Ronald L. Rivest's RFC 1321
//
//                      Copyright © 1997-1999 Medienagentur Fichtner & Meyer
//                                  Written by Matthias Fichtner
//
// -----------------------------------------------------------------------------------------------
//               See RFC 1321 for RSA Data Security's copyright and license notice!
// -----------------------------------------------------------------------------------------------
//
//     14-Jun-97  mf  Implemented MD5 according to RFC 1321                           RFC 1321
//     16-Jun-97  mf  Initial release of the compiled unit (no source code)           RFC 1321
//     28-Feb-99  mf  Added MD5Match function for comparing two digests               RFC 1321
//     13-Sep-99  mf  Reworked the entire unit                                        RFC 1321
//     17-Sep-99  mf  Reworked the "Test Driver" project                              RFC 1321
//     19-Sep-99  mf  Release of sources for MD5 unit and "Test Driver" project       RFC 1321
//
// -----------------------------------------------------------------------------------------------
//                   The latest release of md5.pas will always be available from
//                  the distribution site at: http://www.fichtner.net/delphi/md5/
// -----------------------------------------------------------------------------------------------
//                       Please send questions, bug reports and suggestions
//                      regarding this code to: mfichtner@fichtner-meyer.com
// -----------------------------------------------------------------------------------------------
//                        This code is provided "as is" without express or
//                     implied warranty of any kind. Use it at your own risk.
// -----------------------------------------------------------------------------------------------

unit ZZPROMAU;

interface

uses
  Inifiles, Windows, Classes, Menus, Controls, Graphics, Dialogs, SysUtils, ShellApi, Forms, idGlobalProtocols, DB, MyAccess, query_go,
  variants, math, DMARC, ZZCERCA_PREZZO;

var
  promau_frn_codice: string;
  promau_tdo_codice_manuale: string;
  promau_tma_codice_materie_prime: string;
  promau_fas_codice: string;
  promau_tdo_codice_ovt_pianificazione: string;
  promau_path_file: string;
  promau_esistenza_negativa: string;

procedure promau_inizializza_variabili;
function promau_cerca_prezzo(cli_codice, indirizzo, riferimento, posizione, art_codice, tlv_codice, tipo_prezzo, tipo_documento, tr1_codice: string; cifre_decimali_prezzo: word; var tsm_codice, tsm_codice_art: string; data_documento: tdatetime; quantita: double): double;
implementation

procedure promau_inizializza_variabili;
var
  inicfg: Tinifile;
begin

  inicfg := tinifile.create('.\go.cfg');

  promau_frn_codice := inicfg.readstring('promau', 'promau_frn_codice', '');
  promau_tdo_codice_manuale := inicfg.readstring('promau', 'promau_tdo_codice_manuale', '');
  promau_tma_codice_materie_prime := inicfg.readstring('oromau', 'promau_tma_codice_materie_prime', 'P2');
  promau_fas_codice := inicfg.readstring('promau', 'promau_fas_codice', 'START');
  promau_tdo_codice_ovt_pianificazione := inicfg.readstring('promau', 'promau_fas_codice', 'ORDV');
  promau_path_file := quotedstr(inicfg.readstring('promau', 'promau_path_file', ''));
  promau_esistenza_negativa := quotedstr(inicfg.readstring('promau', 'promau_esistenza_negativa', 'si'));

  inicfg.free;
end;

function promau_cerca_prezzo(cli_codice, indirizzo, riferimento, posizione, art_codice, tlv_codice, tipo_prezzo, tipo_documento, tr1_codice: string; cifre_decimali_prezzo: word; var tsm_codice, tsm_codice_art: string; data_documento: tdatetime; quantita: double): double;

var
  art: tmyquery_go;
  a31cls: tmyquery_go;
  lsv_cot: tmyquery_go;
  cod: tmyquery_go;
  corsi: tmyquery_go;

  cerca_prezzi: tcerca_prezzo;
  data_prezzo: tdate;
  prezzo: double;
  prezzo_cot: boolean;
  cambia_prezzo: boolean;

  quantita_base_contratti: integer;
  quantita_omaggio_contratti: integer;

begin
  art := tmyquery_go.create(nil);
  art.connection := arc.arcdit;
  art.sql.add('select *');
  art.sql.add('from art');
  art.sql.add('where');
  art.sql.add('codice=:codice ');
  art.parambyname('codice').asstring := art_codice;
  art.open;

  a31cls := tmyquery_go.create(nil);
  a31cls.connection := arc.arcdit;

  a31cls.sql.add('select *');
  a31cls.sql.add('from a31cls');
  a31cls.sql.add('where');
  a31cls.sql.add('cli_codice=:cli_codice and');
  a31cls.sql.add('contratto=:contratto and');
  a31cls.sql.add('posizione=:posizione and');
  a31cls.sql.add('art_codice=:art_codice and');
  a31cls.sql.add('data_inizio<=:data_documento and');
  a31cls.sql.add('data_fine>=:data_documento ');

  lsv_cot := tmyquery_go.create(nil);
  lsv_cot.connection := arc.arcdit;
  lsv_cot.sql.add('select prezzo');
  lsv_cot.sql.add('from lsv');
  lsv_cot.sql.add('where lsv.art_codice = :art_codice and lsv.tlv_codice = :tlv_codice and');
  lsv_cot.sql.add('lsv.data_inizio <= :data_dal and lsv.data_fine >= :data_al');

  cod := tmyquery_go.create(nil);
  cod.connection := arc.arcdit;
  cod.sql.add('select cod.tsm_codice, cod.quantita_base, cod.quantita_omaggio,');
  cod.sql.add('cod.corso_formazione, cod.numero_corsi, cod.anno');
  cod.sql.add('from cot');
  cod.sql.add('inner join cod on cod.progressivo = cot.progressivo');
  cod.sql.add('where cot.cli_codice = :cli_codice and cot.codice_contratto = :codice_contratto and');
  cod.sql.add('cod.art_codice = :art_codice and cod.tcm_codice = :tcm_codice and cod.tgm_codice = :tgm_codice and');
  cod.sql.add('cod.tsa_codice = :tsa_codice and cod.ts3_codice = :ts3_codice');

  corsi := tmyquery_go.create(nil);
  corsi.connection := arc.arcdit;
  corsi.sql.add('select sum(quantita) numero_corsi');
  corsi.sql.add('from ovr');
  corsi.sql.add('inner join ovt on ovt.progressivo = ovr.progressivo');
  corsi.sql.add('inner join art on art.codice = ovr.art_codice');
  corsi.sql.add('where (ovr.art_codice = :art_codice or art.tcm_codice = :tcm_codice or');
  corsi.sql.add('art.tgm_codice = :tgm_codice or art.tsa_codice = :tsa_codice or art.ts3_codice = :ts3_codice) and');
  corsi.sql.add('ovt.nostro_riferimento <> '''' and extract(year from ovt.data_documento) = :anno');

  cerca_prezzi := tcerca_prezzo.create(arc.arc, arc.arcdit);

  cambia_prezzo := false;
  prezzo_cot := false;

  if riferimento <> '' then
  begin
    prezzo_cot := false;
    prezzo := 0;
    if art_codice <> '' then
    begin
      a31cls.close;
      a31cls.parambyname('cli_codice').asstring := cli_codice;
      a31cls.parambyname('contratto').asstring := riferimento;
      a31cls.parambyname('posizione').asstring := posizione;
      a31cls.parambyname('art_codice').asstring := art_codice;
      a31cls.parambyname('data_documento').asdatetime := data_documento;
      a31cls.open;

      prezzo := a31cls.fieldbyname('prezzo').asfloat;
      a31cls.close;

      if prezzo > 0 then
      begin
        prezzo_cot := true;
      end;

    end;
  end
  else if riferimento <> '' then
  begin
    prezzo_cot := true;
    if art_codice <> '' then
    begin
      lsv_cot.close;

      lsv_cot.parambyname('art_codice').asstring := art_codice;
      lsv_cot.parambyname('tlv_codice').asstring := tlv_codice;
      lsv_cot.parambyname('data').asdate := data_documento;
      lsv_cot.open;
      prezzo := lsv_cot.fieldbyname('prezzo').asfloat;

      tsm_codice := '';
      quantita_base_contratti := 0;
      quantita_omaggio_contratti := 0;

      cod.close;
      cod.parambyname('cli_codice').asstring := cli_codice;
      cod.parambyname('codice_contratto').asstring := riferimento;

      // articolo
      cod.parambyname('art_codice').asstring := art_codice;
      cod.parambyname('tcm_codice').asstring := '';
      cod.parambyname('tgm_codice').asstring := '';
      cod.parambyname('tsa_codice').asstring := '';
      cod.parambyname('ts3_codice').asstring := '';
      cod.open;

      if not cod.isempty then
      begin
        tsm_codice := cod.fieldbyname('tsm_codice').asstring;
        quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
        quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
      end
      else
      begin
        cod.close;
        cod.parambyname('art_codice').asstring := '';
        cod.parambyname('tcm_codice').asstring := art.fieldbyname('tcm_codice').asstring;
        cod.parambyname('tgm_codice').asstring := '';
        cod.parambyname('tsa_codice').asstring := '';
        cod.parambyname('ts3_codice').asstring := '';
        cod.open;
        if not cod.isempty then
        begin
          tsm_codice := cod.fieldbyname('tsm_codice').asstring;
          quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
          quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
        end
        else
        begin
          cod.close;
          cod.parambyname('art_codice').asstring := '';
          cod.parambyname('tcm_codice').asstring := '';
          cod.parambyname('tgm_codice').asstring := art.fieldbyname('tgm_codice').asstring;
          cod.parambyname('tsa_codice').asstring := '';
          cod.parambyname('ts3_codice').asstring := '';
          cod.open;
          if not cod.isempty then
          begin
            tsm_codice := cod.fieldbyname('tsm_codice').asstring;
            quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
            quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
          end
          else
          begin
            cod.close;
            cod.parambyname('art_codice').asstring := '';
            cod.parambyname('tcm_codice').asstring := '';
            cod.parambyname('tgm_codice').asstring := '';
            cod.parambyname('tsa_codice').asstring := art.fieldbyname('tsa_codice').asstring;
            cod.parambyname('ts3_codice').asstring := '';
            cod.open;
            if not cod.isempty then
            begin
              tsm_codice := cod.fieldbyname('tsm_codice').asstring;
              quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
              quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
            end
            else
            begin
              cod.close;
              cod.parambyname('art_codice').asstring := '';
              cod.parambyname('tcm_codice').asstring := '';
              cod.parambyname('tgm_codice').asstring := '';
              cod.parambyname('tsa_codice').asstring := '';
              cod.parambyname('ts3_codice').asstring := art.fieldbyname('ts3_codice').asstring;
              cod.open;
              if not cod.isempty then
              begin
                tsm_codice := cod.fieldbyname('tsm_codice').asstring;
                quantita_base_contratti := trunc(cod.fieldbyname('quantita_base').asfloat);
                quantita_omaggio_contratti := trunc(cod.fieldbyname('quantita_omaggio').asfloat);
              end
              else
              begin
                if riferimento <> '' then
                begin
                  messaggio(200, 'non esistono condizioni contrattuali specifiche per l''articolo' + #13 +
                    'verranno applicate le condizioni normali di vendita');
                  prezzo_cot := false;
                end;
              end;
            end;
          end;
        end;
      end;

      // verifica corsi
      if cod.fieldbyname('corso_formazione').asstring = 'si' then
      begin
        corsi.close;
        corsi.parambyname('art_codice').asstring := cod.parambyname('art_codice').asstring;
        corsi.parambyname('tcm_codice').asstring := cod.parambyname('tcm_codice').asstring;
        corsi.parambyname('tgm_codice').asstring := cod.parambyname('tgm_codice').asstring;
        corsi.parambyname('tsa_codice').asstring := cod.parambyname('tsa_codice').asstring;
        corsi.parambyname('ts3_codice').asstring := cod.parambyname('ts3_codice').asstring;
        corsi.parambyname('anno').asinteger := cod.fieldbyname('anno').asinteger;
        corsi.open;

        (*
          if corsi.fieldbyname('numero_corsi').asinteger >= cod.fieldbyname('numero_corsi').asinteger then
          begin
          messaggio(000, 'già erogati ' + inttostr(corsi.fieldbyname('numero_corsi').asinteger) + ' corsi ' +
          'a fronte dei ' + inttostr(cod.fieldbyname('numero_corsi').asinteger) + ' previsti contrattualmente');
          v_art_codice.setfocus;
          abort;
          end;
        *)

      end;
    end
    else
    begin
      prezzo := 0;
      tsm_codice := '';
    end;

    tsm_codice_art := '';
  end;

  if not prezzo_cot then
  begin
    if (tipo_documento <> 'ddt fornitori') or (tr1_codice <> '') then
    begin
      data_prezzo := data_documento;
      cerca_prezzi.cerca_prezzo('C',
        cli_codice,
        indirizzo,
        tipo_prezzo,
        art_codice,
        'P4',
        quantita,
        prezzo,
        tsm_codice, tsm_codice_art,
        data_prezzo,
        'EURO',
        1,
        cifre_decimali_prezzo,
        tlv_codice,
        1, '', 'ORDV');

    end;

  end;

  result := prezzo;

end;

end.
