unit GGA31SCARTI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB, RzLabel, RzPanel, RzEdit, raizeedit_go,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzDBEdit, XLSSheetData5,
  XLSReadWriteII5, ZZMOVMAG;

type
  TA31SCARTI = class(TFORMBASE)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    tool_importa_xls: TToolButton;
    v_scarti_al: trzdatetimeedit_go;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    v_tma_descrizione_finito: trzdbeditdescrizione_go;
    RzLabel6: TRzLabel;
    v_tma_descrizione_materia_prima: trzdbeditdescrizione_go;
    tool_salva: TToolButton;
    v_tma_codice_finito: trzedit_go;
    v_tma_codice_materia_prima: trzedit_go;
    v_griglia: trzdbgrid_go;
    tma_fin: TMyQuery_go;
    tma_fin_ds: TMyDataSource;
    tma_mat: TMyQuery_go;
    tma_mat_ds: TMyDataSource;
    XLSRead: TXLSReadWriteII5;
    v_azzera_dati: TCheckBox;
    query_del: TMyQuery_go;
    RzLabel2: TRzLabel;
    v_tmo_codice_scarico: trzedit_go;
    v_tmo_descrizione_finito: trzdbeditdescrizione_go;
    RzLabel4: TRzLabel;
    v_tmo_codice_carico: trzedit_go;
    v_tmo_descrizione_materia_prima: trzdbeditdescrizione_go;
    tmo_sca: TMyQuery_go;
    tmo_sca_ds: TMyDataSource;
    tmo_car_ds: TMyDataSource;
    tmo_car: TMyQuery_go;
    opt: TMyQuery_go;
    opc: TMyQuery_go;
    movfas: TMyQuery_go;
    procedure v_scarti_alExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_tma_codice_finitoExit(Sender: TObject);
    procedure tool_importa_xlsClick(Sender: TObject);
    procedure tool_salvaClick(Sender: TObject);
    procedure v_grigliaDblClick(Sender: TObject);
  protected
    procedure scarti_al_controllo;
    procedure tma_codice_finiti(blocco: boolean);
    procedure tma_codice_materia_prima(blocco: boolean);
    procedure tmo_codice_scarico(blocco: boolean);
    procedure tmo_codice_carico(blocco: boolean);
    procedure esegui_query;
    procedure importa_file_xls;
    procedure genera_movimenti_scarto;
  public

  end;

var
  A31SCARTI: TA31SCARTI;

implementation

{$r *.dfm}

uses DMARC;

procedure TA31SCARTI.v_grigliaDblClick(Sender: TObject);
begin
  inherited;
  esegui_programma('GESMOV', query.fieldbyname('id_origine').asinteger, true);
end;

procedure TA31SCARTI.v_scarti_alExit(Sender: TObject);
begin
  inherited;
  scarti_al_controllo;
end;

procedure TA31SCARTI.v_tma_codice_finitoExit(Sender: TObject);
begin
  inherited;
  tma_codice_finiti(true);
  if v_tma_codice_finito.text <> '' then
  begin
    v_tma_codice_materia_prima.text := copy(v_tma_codice_finito.text, 1, 2) + 'RO';
    tma_codice_materia_prima(false);
    tmo_codice_carico(false);
    tmo_codice_scarico(false);

    esegui_query;
  end;
end;

procedure TA31SCARTI.FormShow(Sender: TObject);
begin
  inherited;
  v_scarti_al.date := date;

  v_tmo_codice_scarico.text := 'SCFI';
  v_tmo_codice_scarico.readonly := true;

  v_tmo_codice_carico.text := 'CASC';
  v_tmo_codice_carico.readonly := true;

end;

procedure TA31SCARTI.scarti_al_controllo;
begin
  if v_scarti_al.date < date then
  begin
    messaggio(000, 'Data non valida.');
  end;

end;

procedure TA31SCARTI.tma_codice_finiti(blocco: boolean);
begin
  tabella_controllo(false, tma_fin, v_tma_codice_finito, blocco, nil, nil, nil);
end;

procedure TA31SCARTI.tma_codice_materia_prima(blocco: boolean);
begin
  tabella_controllo(false, tma_mat, v_tma_codice_materia_prima, blocco, nil, nil, nil);
end;

procedure TA31SCARTI.tmo_codice_scarico(blocco: boolean);
begin
  tabella_controllo(false, tmo_sca, v_tmo_codice_scarico, blocco, nil, nil, nil);
end;

procedure TA31SCARTI.tmo_codice_carico(blocco: boolean);
begin
  tabella_controllo(false, tmo_car, v_tmo_codice_carico, blocco, nil, nil, nil);
end;

procedure TA31SCARTI.tool_importa_xlsClick(Sender: TObject);
begin
  inherited;
  importa_file_xls;
end;

procedure TA31SCARTI.tool_salvaClick(Sender: TObject);
begin
  inherited;
  genera_movimenti_scarto;
end;

procedure TA31SCARTI.esegui_query;
begin
  query.close;
  query.parambyname('utn_codice').asstring := utente;
  query.open;

end;

procedure TA31SCARTI.importa_file_xls;
var
  opendialog: topendialog;
  lista_articoli: tstringlist;
  art_codice: string;
  i, conta, nr_rec: integer;
begin
  lista_articoli := tstringlist.create;

  opendialog := topendialog.create(nil);
  opendialog.InitialDir := '..\importa';
  opendialog.Filter := '*.*';
  if not opendialog.execute then
  begin
    exit;
  end;

  if v_azzera_dati.checked then
  begin
    query_del.close;
    query_del.sql.clear;
    query_del.sql.add('delete from a31scarti');;
    query_del.sql.add('where');
    query_del.sql.add('utn_codice=:utn_codice');
    query_del.parambyname('utn_codice').asstring := utente;
    query_del.execsql;
  end;

  xlsRead.filename := opendialog.filename;
  xlsRead.read;
  for i := 1 to xlsread.sheets[0].lastrow do
  begin
    conta := conta + 1;
    if conta = 10 then
    begin
      application.ProcessMessages;
      conta := 0;
    end;

    art_codice := trim(xlsread.sheets[0].asstring[0, i]);

    if art_codice <> '' then
    begin
      nr_rec := nr_rec + 1;
      conta := conta + 1;

      read_tabella(arc.arcdit, 'art', 'codice', art_codice);
      if archivio.eof then
      begin
        lista_articoli.add('riga ' + inttostr(i + 1) + ' articolo [' + art_codice + '] - quantita [' + xlsread.sheets[0].Asstring[1, i] + '] non esiste ');
      end
      else
      begin
        query.append;
        query.fieldbyname('utn_codice').asstring := utente;
        query.fieldbyname('art_codice').asstring := art_codice;
        query.fieldbyname('art_descrizione').asstring := trim(archivio.fieldbyname('descrizione1').asstring + ' ' + archivio.fieldbyname('descrizione2').asstring);
        query.fieldbyname('tma_codice').asstring := v_tma_codice_finito.text;
        query.fieldbyname('tma_codice_scarti').asstring := v_tma_codice_materia_prima.text;
        try
          query.fieldbyname('quantita').asfloat := xlsread.sheets[0].AsFloat[1, i];
        except
          query.fieldbyname('quantita').asfloat := 0;
        end;
        query.post;
      end;
    end;

  end; // for

  query.refresh;

  messaggio(100, 'importazione terminata da file excel');

  if lista_articoli.count > 0 then
  begin
    messaggio(100, 'Sono presenti articoli nel file excel che non esistino nell''anagrafica articolo');
    lista_articoli.savetofile('..\importa\scarti_articoli_inesistenti_' + utente + '.txt');
    esegui_effettivo('..\importa\scarti_articoli_inesistenti_' + utente + '.txt', 'open');
  end;

  freeandnil(lista_articoli);
  freeandnil(opendialog);
end;

procedure TA31SCARTI.genera_movimenti_scarto;
var
  conta: integer;
  progressivo_mmt, riga_mmt: integer;
  progressivo_mmt_collegato, riga_mmt_collegato: integer;
  quantita: double;
  movmag: tmovmag;
begin
  movmag := tmovmag.create(arc.arcdit);

  apri_transazione;
  try
    try

      progressivo_mmt := 0;
      riga_mmt := 0;

      progressivo_mmt_collegato := 0;
      riga_mmt := 0;

      query.first;
      while not query.eof do
      begin
        conta := conta + 1;
        if conta = 10 then
        begin
          application.ProcessMessages;
          conta := 0;
        end;

        if query.fieldbyname('id_origine').asinteger = 0 then
        begin

          // 1. movimento di giro da P2ST A P2RO
          if progressivo_mmt = 0 then
          begin
            movmag.tmo_codice := v_tmo_codice_carico.text;
            movmag.tma_codice := v_tma_codice_materia_prima.text;
            movmag.tmo_codice_collegato := v_tmo_codice_scarico.text;
            movmag.tma_codice_collegato := v_tma_codice_finito.text;
            movmag.data_registrazione := v_scarti_al.date;
            movmag.numero_documento := 0;
            movmag.serie_documento := '';
            // movmag.data_documento :=
            movmag.ese_codice := esercizio;
            movmag.tva_codice := divisa_di_conto;
            movmag.cambio := 1;
            movmag.tipo_documento := '';
            movmag.documento_origine := '';
            movmag.doc_progressivo_origine := 0;
            movmag.progressivo_collegato := 0;
            movmag.descrizione := '';
            movmag.opt_progressivo := 0;
            movmag.olt_progressivo := 0;
            movmag.progressivo_collegato_dsb := 0;
            movmag.doc_riga_origine := 0;
            movmag.doc_riga_dettaglio_origine := 0;
            movmag.doc_riga_dettaglio_ult_origine := 0;
            movmag.cms_codice := '';
            movmag.tipologia := '';
            movmag.crea_mmt;

            progressivo_mmt := movmag.progressivo_mmt;
            riga_mmt := movmag.riga_mmr;
          end;

          if progressivo_mmt <> 0 then
          begin

            if query.fieldbyname('id_origine').asinteger = 0 then
            begin
              query.edit;
              query.fieldbyname('id_origine').asinteger := progressivo_mmt;
              query.post;
            end;

            movmag.progressivo := progressivo_mmt;
            riga_mmt := riga_mmt + 1;
            movmag.riga := riga_mmt;
            movmag.art_codice := query.fieldbyname('art_codice').asstring;
            movmag.tma_codice_mmr := query.fieldbyname('tma_codice').asstring;
            movmag.quantita := query.fieldbyname('quantita').asfloat;
            movmag.tsm_codice := '';
            movmag.tsm_codice_art := '';
            movmag.importo_sconto := 0;
            movmag.prezzo := 0;
            movmag.importo := 0;
            movmag.importo_euro := 0;
            movmag.tipo_movimento := '';
            movmag.importo_spese := 0;
            movmag.importo_spese_euro := 0;
            movmag.descrizione_mmr := '';
            movmag.opt_tipo_articolo := '';
            movmag.olt_tipo_articolo := '';
            movmag.mmr_doc_riga_origine := 0;
            movmag.cms_codice_righe := '';
            movmag.tipologia_righe := '';
            movmag.punto_vendita := '';

            movmag.crea_mmr;

            // scrivo testata movimento di magazzino collegato (la prima volta)
            if (progressivo_mmt_collegato = 0) then
            begin
              movmag.tmo_codice := movmag.tmo_codice_collegato;
              movmag.tma_codice := movmag.tma_codice_collegato;
              movmag.tmo_codice_collegato := '';
              movmag.tma_codice_collegato := '';
              movmag.data_registrazione := v_scarti_al.date;
              movmag.numero_documento := 0;
              movmag.serie_documento := '';
              // movmag.data_documento :=
              movmag.cfg_codice := '';
              movmag.ese_codice := esercizio;
              movmag.tva_codice := divisa_di_conto;
              movmag.cambio := 1;
              movmag.tipo_documento := '';
              movmag.documento_origine := 'movimenti magazzino';
              movmag.doc_progressivo_origine := progressivo_mmt;

              movmag.progressivo_collegato := progressivo_mmt;
              movmag.descrizione := '';
              movmag.opt_progressivo := 0;
              movmag.olt_progressivo := 0;
              movmag.progressivo_collegato_dsb := 0;
              movmag.doc_riga_origine := 0;
              movmag.doc_riga_dettaglio_origine := 0;
              movmag.doc_riga_dettaglio_ult_origine := 0;
              movmag.cms_codice := '';
              movmag.tipologia := '';
              movmag.crea_mmt;

              progressivo_mmt_collegato := movmag.progressivo_mmt;
              riga_mmt_collegato := movmag.riga_mmr;
            end;

            if progressivo_mmt_collegato <> 0 then
            begin
              movmag.progressivo := progressivo_mmt_collegato;
              riga_mmt_collegato := riga_mmt_collegato + 1;
              movmag.riga := riga_mmt_collegato;
              movmag.art_codice := query.fieldbyname('art_codice').asstring;
              movmag.tma_codice_mmr := movmag.tma_codice;
              movmag.quantita := query.fieldbyname('quantita').asfloat;
              movmag.tsm_codice := '';
              movmag.tsm_codice_art := '';
              movmag.importo_sconto := 0;
              movmag.prezzo := 0;
              movmag.importo := 0;
              movmag.importo_euro := 0;
              movmag.importo_spese := 0;
              movmag.importo_spese_euro := 0;

              movmag.tipo_movimento := movmag.tipo_movimento;
              movmag.descrizione_mmr := '';
              movmag.opt_tipo_articolo := '';
              movmag.olt_tipo_articolo := '';
              movmag.mmr_doc_riga_origine := 0;
              movmag.cms_codice_righe := '';
              movmag.tipologia_righe := '';
              movmag.punto_vendita := '';

              movmag.crea_mmr;
            end;
          end;

        end;

        query.next;
      end;

      // 2. riapertura ordine di produzione per la quantita girata
      //    assegnare la fase opc come evasa parziale ?
      query.first;
      while not query.eof do
      begin
        conta := conta + 1;
        if conta = 10 then
        begin
          application.ProcessMessages;
          conta := 0;
        end;

        if query.fieldbyname('id_opc').asinteger = 0 then
        begin
          quantita := query.fieldbyname('quantita').asfloat;

          opt.close;
          opt.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
          opt.open;

          while not opt.eof do
          begin
            opt.edit;
            opt.fieldbyname('descrizione').asstring := opt.fieldbyname('descrizione').asstring + #13 + #10 + 'storno da procedura scarti A31SCARTI ';
            opt.fieldbyname('situazione').asstring := 'evaso parziale';

            if opt.fieldbyname('quantita_evasa').asfloat >= quantita then
            begin
              opt.fieldbyname('quantita_evasa').asfloat := opt.fieldbyname('quantita_evasa').asfloat - quantita;
              quantita := 0;
            end
            else if opt.fieldbyname('quantita_evasa').asfloat < quantita then
            begin
              quantita := quantita - opt.fieldbyname('quantita_evasa').asfloat;
              opt.fieldbyname('quantita_evasa').asfloat := opt.fieldbyname('quantita_evasa').asfloat - opt.fieldbyname('quantita_evasa').asfloat;
            end;
            opt.post;

            // opc -
            opc.close;
            opc.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
            opc.open;
            if not opc.eof then
            begin
              opc.edit;
              opc.fieldbyname('situazione').asstring := 'inserita';
              opc.post;
            end;

            // movfas -
            movfas.close;
            movfas.parambyname('id_opc').asinteger := opc.fieldbyname('id').asinteger;
            movfas.open;
            if not movfas.eof then
            begin
              movfas.edit;
              movfas.fieldbyname('tipo_operazione').asstring := 'storna situazione*******************';
              movfas.post;
            end;

            if quantita <= 0 then
            begin
              break;
            end;

            opt.next;
          end; // while

          query.edit;
          query.fieldbyname('id_opc').asinteger := 1;
          query.fieldbyname('quantita_non_stornata').asfloat := quantita;
          query.post;

        end; // if

        query.next;
      end;

      commit_transazione;

    except
      on e: exception do
      begin
        rollback_transazione(e.message);
      end;
    end;

  finally
    chiudi_transazione;
    freeandnil(movmag);
  end;

  if progressivo_mmt > 0 then
  begin
    esegui_programma('GESMOV', progressivo_mmt, true);
  end;

end;

initialization

registerclass(tA31SCARTI);

end.
