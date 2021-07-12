unit GGSTOORDP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGELABORA, DB, query_go, MyAccess, Menus,
  StdCtrls, Buttons, ComCtrls, RzTabs, ExtCtrls, ToolWin,
  Mask, MemDS, VirtualTable,
  RzButton, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres,
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, RzEdit, DBAccess;

type

  TSTOORDP = class(TELABORA)
    Label9: TRzlabel;
    v_dal_numero_documento: TRzNumericEdit_go;
    Label10: TRzlabel;
    v_al_numero_documento: TRzNumericEdit_go;
    Label11: TRzlabel;
    v_dalla_data_documento: TRzDateTimeEdit_go;
    Label12: TRzlabel;
    v_alla_data_documento: TRzDateTimeEdit_go;
    testata: tmyquery_go;
    righe: tmyquery_go;
    mmt: tmyquery_go;
    mmr: tmyquery_go;
    ltm: tmyquery_go;
    cmm: tmyquery_go;
    documenti_progressivo: tmyquery_go;
    ovr: TMyQuery_go;
    v_storno_collegati: TRzCheckBox;
    //modifica
    query_fas: TMyQuery_go;
    //modifica fine
    procedure v_al_numero_documentoEnter(Sender: TObject);
    procedure v_alla_data_documentoEnter(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_dal_numero_documentoChange(Sender: TObject);
    procedure v_al_numero_documentoChange(Sender: TObject);
    procedure v_confermaEnter(Sender: TObject);
    procedure v_dalla_data_documentoChange(Sender: TObject);
    procedure v_alla_data_documentoChange(Sender: TObject);
  protected
    tipo_documento: string;
    progressivo: double;
    mmt_progressivo: integer;
    posso_stornare: boolean;

    procedure abilita_storno_collegati;
    procedure assegna_valore_storno_collegati;
    procedure storno_ordine(dalla_data, alla_data: tdate; dal_numero_documento, al_numero_documento, progressivo: double);
    procedure controllo_storno(dalla_data, alla_data: tdate; dal_numero_documento, al_numero_documento, progressivo: double);
  public
    procedure controllo_campi; override;
  end;

var
  STOORDP: TSTOORDP;

implementation

uses DMARC;

{$r *.dfm}


procedure TSTOORDP.controllo_campi;
begin
end;

procedure TSTOORDP.v_al_numero_documentoChange(Sender: TObject);
begin
  inherited;
  abilita_storno_collegati;
end;

procedure TSTOORDP.v_al_numero_documentoEnter(Sender: TObject);
begin
  inherited;
  if v_al_numero_documento.value = 0 then
  begin
    v_al_numero_documento.value := v_dal_numero_documento.value;
    v_al_numero_documento.selectall;
  end;
end;

procedure TSTOORDP.v_alla_data_documentoChange(Sender: TObject);
begin
  inherited;
  abilita_storno_collegati;
end;

procedure TSTOORDP.v_alla_data_documentoEnter(Sender: TObject);
begin
  inherited;
  if v_alla_data_documento.date = 0 then
  begin
    v_alla_data_documento.date := v_dalla_data_documento.date;
  end;
end;

procedure TSTOORDP.v_confermaClick(Sender: TObject);
var
  data_registrazione: tdate;
begin
  inherited;

  testata.close;
  testata.sql.clear;
  righe.sql.clear;

  if mmt_progressivo = 0 then
  begin
    //  controllo che non ci siano movimenti su esercizi chiusi

    posso_stornare := true;
    controllo_storno(v_dalla_data_documento.date, v_alla_data_documento.date,
      v_dal_numero_documento.value, v_al_numero_documento.value, progressivo);
    if not posso_stornare then
    begin
      messaggio(200, 'ci sono movimenti di magazzino che appartengono ad esercizi chiusi' + slinebreak +
        'lo storno non può essere eseguito');
    end
    else
    begin
      //  storno tutto il documento
      storno_ordine(v_dalla_data_documento.date, v_alla_data_documento.date,
        v_dal_numero_documento.value, v_al_numero_documento.value, progressivo);
    end;
  end
  else
  begin
    //  storno singola evasione
    testata.sql.add('select opt.*');
    testata.sql.add('from opt');
    testata.sql.add('where opt.progressivo = :progressivo');
    testata.params[0].asfloat := progressivo;

    righe.sql.add('select * from opr where progressivo = :progressivo and riga = :riga');

    controllo_interrompi;

    testata.open;

    mmt.close;
    mmt.sql.clear;
    mmt.sql.add('select mmt.*, tma.a31_aggiorna_odp tma_aggiorna_odp, tmo.a31_aggiorna_odp tmo_aggiorna_odp ');
    mmt.sql.add('from mmt');
    //modifica
    mmt.sql.add('inner join tma on tma.codice=mmt.tma_codice');
    mmt.sql.add('inner join tmo on tmo.codice=mmt.tmO_codice');
    //modifica fine
    mmt.sql.add('where mmt.progressivo = :progressivo');
    mmt.params[0].asinteger := mmt_progressivo;
    mmt.open;

    read_tabella(arc.arc, 'ese', 'dit_codice;codice', vararrayof([ditta, mmt.fieldbyname('ese_codice').asstring]));
    if archivio_arc.fieldbyname('esercizio_chiuso_magazzino').asstring = 'si' then
    begin
      messaggio(200, 'il movimento di magazzino collegato appartiene ad un esercizio chiuso e non è possibile stornarlo');
    end
    else
    begin
      apri_transazione;
      try
        try
          testata.edit;

          ////////////////////////////////////////////////////////////////////////////
          //  cancello movimenti di magazzino finito
          ////////////////////////////////////////////////////////////////////////////
          mmt.close;
          mmt.params[0].asinteger := mmt_progressivo;
          mmt.open;

          mmr.close;
          mmr.params[0].asfloat := mmt.fieldbyname('progressivo').asfloat;
          mmr.open;
          while not mmr.eof do
          begin
            //  cancellazione lotti (movimento collegato: sul principale il link è sul documento)
            ltm.sql.clear;
            ltm.sql.add('select * from ltm');
            ltm.sql.add('where documento_origine = :codice0 ');
            ltm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            ltm.params[0].AsString := 'movimenti magazzino';
            ltm.params[1].Asfloat := mmr.fieldbyname('progressivo').asfloat;
            ltm.params[2].AsInteger := mmr.fieldbyname('riga').asinteger;
            ltm.close;
            ltm.open;
            while not ltm.eof do
            begin
              ltm.delete;
            end;

            //  cancellazione commesse (movimento collegato: sul principale il link è sul documento)
            cmm.sql.clear;
            cmm.sql.add('select * from cmm');
            cmm.sql.add('where documento_origine = :codice0 ');
            cmm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
            cmm.params[0].AsString := 'movimenti magazzino';
            cmm.params[1].Asfloat := mmr.fieldbyname('progressivo').asfloat;
            cmm.params[2].AsInteger := mmr.fieldbyname('riga').asinteger;
            cmm.close;
            cmm.open;
            while not cmm.eof do
            begin
              cmm.delete;
            end;

            //  storno quantità evasa testata
            testata.fieldbyname('quantita_evasa').asfloat := testata.fieldbyname('quantita_evasa').asfloat - mmr.fieldbyname('quantita').asfloat;

            mmr.delete;
          end;

          data_registrazione := mmt.fieldbyname('data_registrazione').asdatetime;

          mmt.delete;

          ////////////////////////////////////////////////////////////////////////////
          //  cancello movimenti di magazzino materia prima
          ////////////////////////////////////////////////////////////////////////////

          mmt.close;
          mmt.sql.clear;
          mmt.sql.add('select * from mmt');
          mmt.sql.add('where documento_origine = ''ordini produzione''');
          mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');
          mmt.sql.add('and tmo_codice = :tmo_codice');
          mmt.sql.add('and tma_codice = :tma_codice');
          mmt.sql.add('and data_registrazione = :data_registrazione');
          mmt.sql.add('and progressivo < :progressivo');
          mmt.sql.add('order by progressivo desc');
          mmt.sql.add('limit 1');

          mmt.parambyname('doc_progressivo_origine').asfloat := testata.fieldbyname('progressivo').asfloat;
          mmt.parambyname('tmo_codice').asstring := testata.fieldbyname('tmo_codice_materie_prime').asstring;
          mmt.parambyname('tma_codice').asstring := testata.fieldbyname('tma_codice_materie_prime').asstring;
          mmt.parambyname('data_registrazione').asdate := data_registrazione;
          mmt.parambyname('progressivo').asinteger := mmt_progressivo;

          mmt.open;
          if not mmt.eof then
          begin
            mmr.close;
            mmr.params[0].asfloat := mmt.fieldbyname('progressivo').asfloat;
            mmr.open;
            while not mmr.eof do
            begin
              //  cancellazione lotti (movimento collegato: sul principale il link è sul documento)
              //  se è presente il documento origine approntato lo ripristina
              ltm.sql.clear;
              ltm.sql.add('select * from ltm');
              ltm.sql.add('where documento_origine = :codice0 ');
              ltm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
              ltm.params[0].AsString := 'movimenti magazzino';
              ltm.params[1].Asfloat := mmr.fieldbyname('progressivo').asfloat;
              ltm.params[2].AsInteger := mmr.fieldbyname('riga').asinteger;
              ltm.close;
              ltm.open;
              while not ltm.eof do
              begin
                if ltm.fieldbyname('documento_origine_approntato').asstring = 'ordine produzione' then
                begin
                  ltm.edit;
                  ltm.fieldbyname('esistenza').asstring := 'approntato';
                  ltm.post;
                  ltm.next;
                end
                else
                begin
                  ltm.delete;
                end;
              end;

              //  cancellazione commesse (movimento collegato: sul principale il link è sul documento)
              cmm.sql.clear;
              cmm.sql.add('select * from cmm');
              cmm.sql.add('where documento_origine = :codice0 ');
              cmm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
              cmm.params[0].AsString := 'movimenti magazzino';
              cmm.params[1].Asfloat := mmr.fieldbyname('progressivo').asfloat;
              cmm.params[2].AsInteger := mmr.fieldbyname('riga').asinteger;
              cmm.close;
              cmm.open;
              while not cmm.eof do
              begin
                cmm.delete;
              end;

              righe.close;
              righe.params[0].asinteger := testata.fieldbyname('progressivo').asinteger;
              righe.params[1].asinteger := mmr.fieldbyname('doc_riga_origine').asInteger;
              righe.open;
              righe.edit;

              //  storno quantità prelevata riga
              righe.fieldbyname('quantita_evasa').asfloat := righe.fieldbyname('quantita_evasa').asfloat - mmr.fieldbyname('quantita').asfloat;
              //righe.fieldbyname('situazione').asstring := 'evaso parziale';

              righe.post;

              controllo_interrompi;

              mmr.delete;
            end;

            mmt.delete;
          end;

          //modifica fine
          query_fas.close;
          query_fas.parambyname('progressivo').asinteger := testata.fieldbyname('progressivo').asinteger;
          query_fas.open;
          if not query_fas.eof then
          begin
            query_fas.fieldbyname('quantita_iniziata').asfloat := 0;
            query_fas.fieldbyname('quantita_prodotti').asfloat := 0;
            query_fas.fieldbyname('quantita_scarti').asfloat := 0;
            query_fas.fieldbyname('quantita_attrezzaggio_consuntivo').asfloat := 0;
            query_fas.fieldbyname('quantita_lavorazione_consuntivo').asfloat := 0;
            query_fas.fieldbyname('quantita_consuntivo').asfloat := 0;
            query_fas.fieldbyname('data_ora_inizio_lavorazione').value := null;
            query_fas.fieldbyname('situazione').asstring := 'inserita';
            query_fas.post;
          end;
          query_fas.close;
          //modifica fine

          //  storno situazione testata
          testata.fieldbyname('situazione').asstring := 'evaso parziale';
          testata.fieldbyname('quantita_scarto').asfloat := 0;

          testata.post;

          (*
            //  lo storno approntato se collegato a ordine cliente NON VIENE ESEGUITO IN QUESTO CASO
            if (testata.fieldbyname('ovr_progressivo').asinteger <> 0) and (testata.fieldbyname('ovr_riga').asinteger <> 0) then
            begin
            ovr.close;
            ovr.parambyname('progressivo').asinteger := testata.fieldbyname('ovr_progressivo').asinteger;
            ovr.parambyname('riga').asinteger := testata.fieldbyname('ovr_riga').asinteger;
            ovr.open;
            if not ovr.isempty then
            begin
            ovr.edit;

            ovr.fieldbyname('quantita_approntata').asfloat := ovr.fieldbyname('doc_quantita_approntata').asfloat;
            ovr.fieldbyname('tum_quantita_approntata_base').asfloat := ovr.fieldbyname('doc_tum_quantita_approntata_base').asfloat;
            ovr.fieldbyname('saldo_acconto_approntato').asstring := ovr.fieldbyname('doc_saldo_acconto_approntato').asstring;

            ovr.post;
            end;
            end;
          *)

          controllo_interrompi;

          commit_transazione('storno ordine con progressivo: ' + testata.fieldbyname('progressivo').asstring + #13 + 'non eseguita');
        except
          on e: exception do
          begin
            rollback_transazione(e.message);
          end;
        end;
      finally
        chiudi_transazione;
      end;
    end;
  end;

  close;
end;

procedure TSTOORDP.v_confermaEnter(Sender: TObject);
begin
  inherited;
  assegna_valore_storno_collegati;
end;

procedure TSTOORDP.v_dalla_data_documentoChange(Sender: TObject);
begin
  inherited;
  abilita_storno_collegati;
end;

procedure TSTOORDP.v_dal_numero_documentoChange(Sender: TObject);
begin
  inherited;
  abilita_storno_collegati;
end;

procedure TSTOORDP.FormShow(Sender: TObject);
begin
  if parametri_extra_programma_chiamato[01] <> null then
  begin
    mmt_progressivo := parametri_extra_programma_chiamato[01];
  end;

  inherited;

  if vartype(codice) = vardouble then
  begin
    v_dal_numero_documento.enabled := false;
    v_al_numero_documento.enabled := false;
    v_dalla_data_documento.enabled := false;
    v_alla_data_documento.enabled := false;

    v_dal_numero_documento.color := clbtnface;
    v_al_numero_documento.color := clbtnface;
    v_dalla_data_documento.color := clbtnface;
    v_alla_data_documento.color := clbtnface;

    progressivo := codice;
    query.sql.clear;

    query.sql.clear;
    query.sql.add('select * from opt where progressivo = :progressivo');
    query.params[0].asfloat := progressivo;
    query.close;
    query.open;

    v_dal_numero_documento.value := query.fieldbyname('numero_documento').asfloat;
    v_al_numero_documento.value := query.fieldbyname('numero_documento').asfloat;
    v_dalla_data_documento.date := query.fieldbyname('data_documento').asdatetime;
    v_alla_data_documento.date := query.fieldbyname('data_documento').asdatetime;
  end;
end;

procedure TSTOORDP.abilita_storno_collegati;
begin
  if (v_dal_numero_documento.value = v_al_numero_documento.value) and
    (v_dalla_data_documento.date = v_alla_data_documento.date) and
    (mmt_progressivo = 0) then
  begin
    abilita_campo(v_storno_collegati);
  end
  else
  begin
    disabilita_campo(v_storno_collegati);
  end;
end;

procedure TSTOORDP.assegna_valore_storno_collegati;
begin
  if not((v_dal_numero_documento.value = v_al_numero_documento.value) and
    (v_dalla_data_documento.date = v_alla_data_documento.date) and
    (mmt_progressivo = 0)) then
  begin
    v_storno_collegati.checked := false;
  end;
end;

procedure TSTOORDP.storno_ordine(dalla_data, alla_data: tdate; dal_numero_documento, al_numero_documento, progressivo: double);
var
  testata, righe, mmt, mmr, ltm, cmm, ovr, opt: tmyquery_go;
begin
  testata := tmyquery_go.create(nil);
  righe := tmyquery_go.create(nil);
  mmt := tmyquery_go.create(nil);
  mmr := tmyquery_go.create(nil);
  ltm := tmyquery_go.create(nil);
  cmm := tmyquery_go.create(nil);
  ovr := tmyquery_go.create(nil);
  opt := tmyquery_go.create(nil);

  testata.connection := arc.arcdit;
  righe.connection := arc.arcdit;
  mmt.connection := arc.arcdit;
  mmr.connection := arc.arcdit;
  ltm.connection := arc.arcdit;
  cmm.connection := arc.arcdit;
  ovr.connection := arc.arcdit;
  opt.connection := arc.arcdit;

  ovr.sql.add('select * from ovr where progressivo = :progressivo and riga = :riga');

  opt.sql.add('select opt.progressivo, opt.data_documento, opt.numero_documento,');
  opt.sql.add('case');
  opt.sql.add('when opt.situazione = ''inserito'' then ''no''');
  opt.sql.add('else');

  opt.sql.add('case');
  opt.sql.add('when avanzamento_fasi = ''no'' and opt.frn_codice <> '''' then ''si''');
  opt.sql.add('when avanzamento_fasi = ''si'' and');
  opt.sql.add('exists(select id from opc where opc.progressivo = opt.progressivo and opc.frn_codice <> '''') then ''si''');
  opt.sql.add('else ''no''');
  opt.sql.add('end');

  opt.sql.add('end conto_lavoro');
  opt.sql.add('from opt');
  opt.sql.add('where opt.documento_origine = ''ordine produzione''');
  opt.sql.add('and opt.doc_progressivo_origine = :progressivo');
  opt.sql.add('and opt.doc_riga_origine = :riga');
  opt.sql.add('and opt.situazione <> ''inserito''');

  mmr.sql.add('select * from mmr where progressivo = :progressivo');

  testata.sql.add('select opt.*, top.scarico_prima_fase');
  testata.sql.add('from opt left join top on top.codice = opt.top_codice');
  righe.sql.add('select * from opr where progressivo = :progressivo');
  if progressivo <> 0 then
  begin
    testata.sql.add('where opt.progressivo = :progressivo');
    testata.parambyname('progressivo').asfloat := progressivo;
  end
  else
  begin
    testata.sql.add('where opt.data_documento between :dalla_data and :alla_data');
    testata.sql.add('and opt.numero_documento between :dal_numero and :al_numero');
    testata.params[0].asdate := dalla_data;
    testata.params[1].asdate := alla_data;
    testata.params[2].asfloat := dal_numero_documento;
    testata.params[3].asfloat := al_numero_documento;
  end;
  testata.sql.add('and opt.situazione <> ''inserito''');

  controllo_interrompi;

  testata.open;

  mmt.close;
  mmt.sql.clear;
  mmt.sql.add('select * from mmt');
  mmt.sql.add('where documento_origine = ''ordini produzione''');
  mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');

  while not testata.eof do
  begin
    apri_transazione;
    try
      try
        testata.edit;

        //  cancello movimenti di magazzino
        mmt.close;
        mmt.parambyname('doc_progressivo_origine').asinteger := testata.fieldbyname('progressivo').asinteger;
        mmt.open;
        while not mmt.eof do
        begin
          // modifica ((testata.fieldbyname('scarico_prima_fase').asstring = '') and (arc.dit.fieldbyname('scarico_prima_fase').asstring = 'no'))
          if ((((testata.fieldbyname('scarico_prima_fase').asstring = 'si') or (arc.dit.fieldbyname('scarico_prima_fase').asstring = 'si')) and (testata.fieldbyname('tmo_codice_finiti').asstring = mmt.fieldbyname('tmo_codice').asstring) and (testata.fieldbyname('avanzamento_fasi').asstring = 'si'))) or
            ((testata.fieldbyname('scarico_prima_fase').asstring = 'no') and (arc.dit.fieldbyname('scarico_prima_fase').asstring = 'no')) or (testata.fieldbyname('avanzamento_fasi').asstring = 'no') or ((testata.fieldbyname('scarico_prima_fase').asstring = '') and (arc.dit.fieldbyname('scarico_prima_fase').asstring = 'no')) then
          begin
            mmr.close;
            mmr.params[0].asfloat := mmt.fieldbyname('progressivo').asfloat;
            mmr.open;
            while not mmr.eof do
            begin
              //  cancellazione lotti (movimento collegato: sul principale il link è sul documento)
              ltm.sql.clear;
              ltm.sql.add('select * from ltm');
              ltm.sql.add('where documento_origine = :codice0 ');
              ltm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
              ltm.params[0].AsString := 'movimenti magazzino';
              ltm.params[1].Asfloat := mmr.fieldbyname('progressivo').asfloat;
              ltm.params[2].AsInteger := mmr.fieldbyname('riga').asinteger;
              ltm.close;
              ltm.open;
              while not ltm.eof do
              begin
                if ltm.fieldbyname('documento_origine_approntato').asstring = 'ordine produzione' then
                begin
                  ltm.edit;
                  ltm.fieldbyname('esistenza').asstring := 'approntato';
                  ltm.post;
                  ltm.next;
                end
                else
                begin
                  ltm.delete;
                end;
              end;

              //  cancellazione commesse (movimento collegato: sul principale il link è sul documento)
              cmm.sql.clear;
              cmm.sql.add('select * from cmm');
              cmm.sql.add('where documento_origine = :codice0 ');
              cmm.sql.add('and doc_progressivo_origine = :codice1 and doc_riga_origine = :codice2');
              cmm.params[0].AsString := 'movimenti magazzino';
              cmm.params[1].Asfloat := mmr.fieldbyname('progressivo').asfloat;
              cmm.params[2].AsInteger := mmr.fieldbyname('riga').asinteger;
              cmm.close;
              cmm.open;
              while not cmm.eof do
              begin
                cmm.delete;
              end;

              mmr.delete;
            end;

            mmt.delete;
          end
          else
          begin
            mmt.next;
          end;
        end;

        righe.close;
        righe.params[0].asfloat := testata.fieldbyname('progressivo').asfloat;
        righe.open;
        while not righe.eof do
        begin
          righe.edit;

          //  storno quantità prelevata riga
          righe.fieldbyname('quantita_evasa').asfloat := 0;
          //righe.fieldbyname('situazione').asstring := 'inserito';

          righe.post;

          //  storno ordine collegato
          if v_storno_collegati.checked then
          begin
            opt.close;
            opt.parambyname('progressivo').asinteger := righe.fieldbyname('progressivo').asinteger;
            opt.parambyname('riga').asinteger := righe.fieldbyname('riga').asinteger;
            opt.open;
            if not opt.isempty then
            begin
              if opt.fieldbyname('conto_lavoro').asstring = 'si' then
              begin
                messaggio(200, 'lo storno multilivello si interrompe al progressivo ' + opt.fieldbyname('progressivo').asstring + slinebreak +
                  'perché fa riferimento ad un ordine di c/lavoro fornitori');
              end
              else
              begin
                storno_ordine(opt.fieldbyname('data_documento').asdatetime, opt.fieldbyname('data_documento').asdatetime,
                  opt.fieldbyname('numero_documento').asfloat, opt.fieldbyname('numero_documento').asfloat, opt.fieldbyname('progressivo').asfloat);
              end;
            end;
          end;

          righe.next;

          controllo_interrompi;
        end;

        //modifica
        //storno_scarti(mmt.fieldbyname('progressivo').asfloat, mmt.fieldbyname('data_registrazione').asdatetime);
        //modifica fine

        //modifica
        // STORNO FASE
        query_fas.close;
        query_fas.parambyname('progressivo').asinteger := testata.fieldbyname('progressivo').asinteger;
        query_fas.open;
        if not query_fas.eof then
        begin
          query_fas.edit;
          query_fas.fieldbyname('quantita_iniziata').asfloat := 0;
          query_fas.fieldbyname('quantita_prodotti').asfloat := 0;
          query_fas.fieldbyname('quantita_scarti').asfloat := 0;
          query_fas.fieldbyname('quantita_attrezzaggio_consuntivo').asfloat := 0;
          query_fas.fieldbyname('quantita_lavorazione_consuntivo').asfloat := 0;
          query_fas.fieldbyname('quantita_consuntivo').asfloat := 0;
          query_fas.fieldbyname('data_ora_inizio_lavorazione').value := null;
          query_fas.fieldbyname('situazione').asstring := 'inserita';
          query_fas.post;
        end;
        query_fas.close;
        //modifica fine

        //  storno quantità evasa testata
        testata.fieldbyname('quantita_evasa').asfloat := 0;

        //  storno situazione testata
        testata.fieldbyname('situazione').asstring := 'inserito';
        testata.fieldbyname('quantita_scarto').asfloat := 0;

        testata.post;

        //  storno approntato se collegato a ordine cliente
        if (testata.fieldbyname('ovr_progressivo').asinteger <> 0) and (testata.fieldbyname('ovr_riga').asinteger <> 0) then
        begin
          ovr.close;
          ovr.parambyname('progressivo').asinteger := testata.fieldbyname('ovr_progressivo').asinteger;
          ovr.parambyname('riga').asinteger := testata.fieldbyname('ovr_riga').asinteger;
          ovr.open;
          if not ovr.isempty then
          begin
            ovr.edit;

            ovr.fieldbyname('quantita_approntata').asfloat := ovr.fieldbyname('doc_quantita_approntata').asfloat;
            ovr.fieldbyname('tum_quantita_approntata_base').asfloat := ovr.fieldbyname('doc_tum_quantita_approntata_base').asfloat;
            ovr.fieldbyname('saldo_acconto_approntato').asstring := ovr.fieldbyname('doc_saldo_acconto_approntato').asstring;

            ovr.post;
          end;
        end;

        //modifica fine
        controllo_interrompi;

        commit_transazione('storno ordine con progressivo: ' + testata.fieldbyname('progressivo').asstring + #13 + 'non eseguita');
      except
        on e: exception do
        begin
          rollback_transazione(e.message);
        end;
      end;
    finally
      chiudi_transazione;
    end;

    testata.next;
  end;

  freeandnil(testata);
  freeandnil(righe);
  freeandnil(mmt);
  freeandnil(mmr);
  freeandnil(ltm);
  freeandnil(cmm);
  freeandnil(ovr);
  freeandnil(opt);
end;

procedure TSTOORDP.controllo_storno(dalla_data, alla_data: tdate; dal_numero_documento, al_numero_documento, progressivo: double);
var
  testata, righe, mmt, opt: tmyquery_go;
begin
  testata := tmyquery_go.create(nil);
  righe := tmyquery_go.create(nil);
  mmt := tmyquery_go.create(nil);
  opt := tmyquery_go.create(nil);

  testata.connection := arc.arcdit;
  righe.connection := arc.arcdit;
  mmt.connection := arc.arcdit;
  opt.connection := arc.arcdit;

  opt.sql.add('select opt.progressivo, opt.data_documento, opt.numero_documento from opt');
  opt.sql.add('where opt.documento_origine = ''ordine produzione''');
  opt.sql.add('and opt.doc_progressivo_origine = :progressivo');
  opt.sql.add('and opt.doc_riga_origine = :riga');
  opt.sql.add('and opt.situazione <> ''inserito''');

  testata.sql.add('select opt.*, top.scarico_prima_fase');
  testata.sql.add('from opt left join top on top.codice = opt.top_codice');
  righe.sql.add('select * from opr where progressivo = :progressivo');
  if progressivo <> 0 then
  begin
    testata.sql.add('where opt.progressivo = :progressivo');
    testata.parambyname('progressivo').asfloat := progressivo;
  end
  else
  begin
    testata.sql.add('where opt.data_documento between :dalla_data and :alla_data');
    testata.sql.add('and opt.numero_documento between :dal_numero and :al_numero');
    testata.params[0].asdate := dalla_data;
    testata.params[1].asdate := alla_data;
    testata.params[2].asfloat := dal_numero_documento;
    testata.params[3].asfloat := al_numero_documento;
  end;
  testata.sql.add('and opt.situazione <> ''inserito''');

  controllo_interrompi;

  testata.open;

  mmt.close;
  mmt.sql.clear;
  mmt.sql.add('select * from mmt');
  mmt.sql.add('where documento_origine = ''ordini produzione''');
  mmt.sql.add('and doc_progressivo_origine = :doc_progressivo_origine');

  while not testata.eof do
  begin
    //  cancello movimenti di magazzino
    mmt.close;
    mmt.parambyname('doc_progressivo_origine').asinteger := testata.fieldbyname('progressivo').asinteger;
    mmt.open;

    read_tabella(arc.arc, 'ese', 'dit_codice;codice', vararrayof([ditta, mmt.fieldbyname('ese_codice').asstring]));
    if archivio_arc.fieldbyname('esercizio_chiuso_magazzino').asstring = 'si' then
    begin
      posso_stornare := false;
    end;

    righe.close;
    righe.params[0].asfloat := testata.fieldbyname('progressivo').asfloat;
    righe.open;
    while not righe.eof do
    begin
      //  storno ordine collegato
      if v_storno_collegati.checked then
      begin
        opt.close;
        opt.parambyname('progressivo').asinteger := righe.fieldbyname('progressivo').asinteger;
        opt.parambyname('riga').asinteger := righe.fieldbyname('riga').asinteger;
        opt.open;
        if not opt.isempty then
        begin
          controllo_storno(opt.fieldbyname('data_documento').asdatetime, opt.fieldbyname('data_documento').asdatetime,
            opt.fieldbyname('numero_documento').asfloat, opt.fieldbyname('numero_documento').asfloat,
            opt.fieldbyname('progressivo').asfloat);
        end;
      end;

      righe.next;

      controllo_interrompi;
    end;

    controllo_interrompi;

    testata.next;
  end;

  freeandnil(testata);
  freeandnil(righe);
  freeandnil(mmt);
end;

initialization

registerclass(tstoordp);

end.
