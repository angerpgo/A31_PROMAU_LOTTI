unit GGA31GESTRASFIN;

interface

uses
  System.Generics.Collections, System.JSON.Types, System.JSON.Readers, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, RzLabel,
  Vcl.Mask, RzEdit, raizeedit_go, Vcl.ExtCtrls, RzPanel, RzButton, ZZMOVMAG,
  RzDBEdit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  ttub_codice = record
  private
    f_tub_codice: string;
    f_tsu_codice_01: string;
    f_tsu_codice_02: string;
    f_tsu_codice_03: string;
    f_tsu_codice_04: string;
    f_tsu_codice_05: string;

  public
    property tub_codice: string read f_tub_codice write f_tub_codice;
    property tsu_codice_01: string read f_tsu_codice_01 write f_tsu_codice_01;
    property tsu_codice_02: string read f_tsu_codice_02 write f_tsu_codice_02;
    property tsu_codice_03: string read f_tsu_codice_03 write f_tsu_codice_03;
    property tsu_codice_04: string read f_tsu_codice_04 write f_tsu_codice_04;
    property tsu_codice_05: string read f_tsu_codice_05 write f_tsu_codice_05;
    procedure converti(codice_ubicazione: string);
  end;

type
  tlotto_promau = class
  private
    f_codice_lotto: string;
    f_tipo_lotto: string;
    f_codice_articolo: string;
    f_descrizione_articolo: string;
    f_categoria_articolo: string;
    f_magazzino: string;
    f_quantita: integer;
  public
    property codice_lotto: string read f_codice_lotto write f_codice_lotto;
    property tipo_lotto: string read f_tipo_lotto write f_tipo_lotto;
    property codice_articolo: string read f_codice_articolo write f_codice_articolo;
    property descrizione_articolo: string read f_descrizione_articolo write f_descrizione_articolo;
    property categoria_articolo: string read f_categoria_articolo write f_categoria_articolo;
    property magazzino: string read f_magazzino write f_magazzino;
    property quantita: integer read f_quantita write f_quantita;
  end;

  tlotti_promau = TObjectlist<tlotto_promau>;

type
  TA31GESTRASFIN = class(TFORMBASE)
    pannello_collo: TRzPanel;
    RzLabel1: TRzLabel;
    v_lista: TListBox;
    v_quantita: trznumericedit_go;
    RzLabel2: TRzLabel;
    tool_genera_lotto: TToolButton;
    a31etichette: TMyQuery_go;
    ltm: TMyQuery_go;
    ubm: TMyQuery_go;
    lotto_ubi: TMyQuery_go;
    lotto_ubi_ds: TMyDataSource;
    opt: TMyQuery_go;
    xxr: TMyQuery_go;
    v_lotto: trzedit_go;
    ltp: TMyQuery_go;
    tub: TMyQuery_go;
    RzLabel5: TRzLabel;
    v_art_codice: trzdbeditdescrizione_go;
    v_art_descrizione1: trzdbeditdescrizione_go;
    v_art_descrizione2: trzdbeditdescrizione_go;
    RzLabel6: TRzLabel;
    pannello_ubicazione_destinazione: TRzPanel;
    RzLabel3: TRzLabel;
    RzLabel7: TRzLabel;
    v_tma_codice_dest: trzdbedit_go;
    v_tub_codice_dest: TRzEdit_go;
    a31tsu: TMyQuery_go;
    a31tsu_ds: TMyDataSource;
    v_grigliaDB: TcxGridDBTableView;
    v_grigliaLiv1: TcxGridLevel;
    v_griglia: TcxGrid;
    a31trasf: TMyQuery_go;
    a31trasf_ds: TMyDataSource;
    v_grigliaDBART_CODICE: TcxGridDBColumn;
    v_grigliaDBTUB_CODICE_SCARICO: TcxGridDBColumn;
    v_grigliaDBTMA_CODICE_CARICO: TcxGridDBColumn;
    v_grigliaDBTMA_CODICE_SCARICO: TcxGridDBColumn;
    v_grigliaDBQUANTITA: TcxGridDBColumn;
    v_grigliaDBCollo: TcxGridDBColumn;
    v_grigliaDBTUB_CODICE_CARICO: TcxGridDBColumn;
    v_trasferisci_colli: TRzBitBtn;
    v_aggiungi_lotto: TRzBitBtn;
    tub_codice_alternativo_dest: trzdbeditdescrizione_go;
    pannello_ubicazione_sorgente: TRzPanel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    v_tma_codice: trzdbedit_go;
    v_tub_codice_sorg: trzedit_go;
    tub_codice_alternativo_sorg: trzdbeditdescrizione_go;
    a31tsu_sorg: TMyQuery_go;
    a31tsu_sorg_ds: TMyDataSource;
    lot: TMyQuery_go;
    procedure v_aggiungi_lottoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_lottoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_lottoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_tub_codice_destKeyPress(Sender: TObject; var Key: Char);
    procedure v_tub_codice_destKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_tub_codice_destExit(Sender: TObject);
    procedure v_tub_codice_destEnter(Sender: TObject);
    procedure v_trasferisci_colliClick(Sender: TObject);
    procedure tool_genera_lottoClick(Sender: TObject);
    procedure v_tub_codice_sorgExit(Sender: TObject);
  protected
    flag_barcode128: boolean;
    flag_barcode_promau: boolean;
    filejson: textfile;
    codice_ubicazione: string;
    codice_lotto: string;

    tub_codice_promau: ttub_codice;
    lotti_promau: tlotti_promau;
    lotto_promau: tlotto_promau;
    movmag: tmovmag;

    procedure cancella_tabella;
    procedure pulisci_ubicazione;
    procedure pulisci_lotto;
    PROCEDURE chiudi_tabelle;
    procedure tub_codice_sorg_controllo(codice_ubicazione: string);
    procedure tub_codice_controllo(codice_ubicazione: string);
    procedure cerca_lotto(nome_file: string);
    procedure read_lotto_json(lotti_promau: tlotti_promau; jsr: tjsonreader);
    procedure visualizza_lotti(lotti_promau: tlotti_promau);
    procedure aggiungi_lotto;
    procedure trasferisci_lotto;
    procedure crea_movmag_lotto(tmo_codice, tma_codice: string);

    procedure crea_lotto(tmo_codice, art_codice, lotto, tma_codice: string; quantita: double);
    procedure crea_ubm(tmo_codice, art_codice, lotto, tub_codice, tma_codice: string; quantita: double);
    procedure crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
    procedure cancella_lotto;
  public
    { Public declarations }
    procedure set_codice_archivio; override;
  end;

var
  A31GESTRASFIN: TA31GESTRASFIN;

implementation

{$r *.dfm}


uses DMARC, GGA31VISLOT;

procedure TA31GESTRASFIN.v_aggiungi_lottoClick(Sender: TObject);
begin
  inherited;
  aggiungi_lotto;
end;

procedure TA31GESTRASFIN.FormCreate(Sender: TObject);
begin
  inherited;
  movmag := tmovmag.create(arc.arcdit);
  cancella_tabella;
end;

procedure TA31GESTRASFIN.FormDestroy(Sender: TObject);
begin
  inherited;
  movmag.free;
end;

procedure TA31GESTRASFIN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = vk_tab then
  begin
    if codice_lotto <> '' then
    begin
      cerca_lotto(codice_lotto);
    end;
  end;

  if key = vk_return then
  begin
    if codice_lotto <> '' then
    begin
      cerca_lotto(codice_lotto);
    end;
  end;

  inherited;
  //
end;

procedure TA31GESTRASFIN.FormShow(Sender: TObject);
begin
  inherited;
  read_tabella(a31trasf, utente);
  pulisci_ubicazione;
end;

procedure TA31GESTRASFIN.set_codice_archivio;
begin
  inherited;
  if self.ActiveControl = v_tub_codice_sorg then
  begin
    v_tub_codice_sorg.text := codice_archivio;
  end;

  if self.ActiveControl = v_tub_codice_dest then
  begin
    codice_ubicazione := codice_archivio;
  end;

end;

procedure TA31GESTRASFIN.cancella_tabella;
begin
  query.close;
  query.sql.clear;
  query.sql.add('delete from a31trasf');
  query.sql.add('where');
  query.sql.add('utn_codice=:utn_codice');
  query.parambyname('utn_codice').asstring := utente;
  query.execsql;
end;

procedure TA31GESTRASFIN.pulisci_ubicazione;
begin
  v_tub_codice_sorg.text := '';
  v_tub_codice_dest.text := '';

  v_lista.clear;
  v_tub_codice_sorg.setfocus;
end;

procedure TA31GESTRASFIN.pulisci_lotto;
begin

  v_lotto.text := '';
  v_lista.clear;

end;

procedure TA31GESTRASFIN.cerca_lotto(nome_file: string);

var
  stringa: string;
  sr: tstringreader;
  jsr: tjsontextreader;
  col: integer;
begin
  if (nome_file = '') and (v_lotto.text = '') then
  begin
    exit;
  end;

  stringa := '';
  if fileexists(nome_file) then
  begin
    assignfile(filejson, nome_file);
    reset(filejson);
    Read(filejson, stringa);
    closefile(filejson);
    v_lotto.text := stringa;

    flag_barcode_promau := true;
  end
  else
  begin
    if nome_file <> '' then
    begin
      stringa := nome_file;
      nome_file := cartella_root_installazione + 'temp\lotto.json';
      assignfile(filejson, nome_file);
      rewrite(filejson);
      writeln(filejson, stringa);
      closefile(filejson);
      v_lotto.text := stringa;
    end;

    stringa := v_lotto.text;

    flag_barcode128 := false;
    flag_barcode_promau := false;

    if not flag_barcode128 then
    begin
      col := pos('Type:QR Code,Data', v_lotto.text);

      if col > 0 then
      begin
        v_lista.clear;
        stringa := '{lotti:[' + copy(v_lotto.text, col + 18, length(v_lotto.text)) + ']}';
        flag_barcode_promau := true;
      end
      else
      begin
        col := pos('{', v_lotto.text);

        if col > 0 then
        begin
          v_lista.clear;
          flag_barcode_promau := true;
        end;

      end;

    end;

    if not flag_barcode128 then
    begin

      col := pos('Data:', v_lotto.text);
      if col > 0 then
      begin
        v_lista.clear;

        stringa := copy(v_lotto.text, col + 5, length(v_lotto.text));
        stringa := strtran(stringa, #12, '', true);

        flag_barcode128 := true;
      end;

    end;
  end;

  if (stringa = '') then
  begin
    exit;
  end;

  v_lista.Items.Add('lettura: ' + stringa);

  if flag_barcode128 then
  begin

  end
  else if flag_barcode_promau then
  begin

    lotti_promau := tlotti_promau.Create;

    sr := tstringreader.Create(stringa);
    try
      jsr := tjsontextreader.Create(sr);
      try
        while jsr.Read do
        begin
          // stringa :=
          if jsr.TokenType = TJsonToken.startObject then
          begin
            read_lotto_json(lotti_promau, jsr);
          end;

        end;

        visualizza_lotti(lotti_promau);

      except

      end;
    finally
      jsr.free;
      sr.free;
    end;

  end;

  if v_lotto.text <> '' then
  begin
    read_tabella(lotto_ubi, v_lotto.text);
    read_tabella(lot, v_lotto.text);
    v_quantita.value := lot.fieldbyname('esistenza').asfloat;

  end;

end;

procedure TA31GESTRASFIN.read_lotto_json(lotti_promau: tlotti_promau;
  jsr:
  tjsonreader);
var
  lotto_promau: tlotto_promau;
begin
  lotto_promau := tlotto_promau.Create;
  while jsr.Read do
  begin
    if jsr.TokenType = TJsonToken.PropertyName then
    begin
      if jsr.Value.ToString = 'lotto' then
      begin
        jsr.Read;
        lotto_promau.codice_lotto := jsr.Value.AsString;
      end
      else if jsr.Value.ToString = 'tipo_lotto' then
      begin
        jsr.Read;
        lotto_promau.tipo_lotto := jsr.Value.AsString;
      end
      else if jsr.Value.ToString = 'codice_articolo' then
      begin
        jsr.Read;
        lotto_promau.codice_articolo := jsr.Value.AsString;
      end
      else if jsr.Value.ToString = 'descrizione_articolo' then
      begin
        jsr.Read;
        lotto_promau.descrizione_articolo := jsr.Value.AsString;
      end
      else if jsr.Value.ToString = 'codice articolo' then
      begin
        jsr.Read;
        lotto_promau.codice_articolo := jsr.Value.AsString;
      end
      else if jsr.Value.ToString = 'descrizione articolo' then
      begin
        jsr.Read;
        lotto_promau.descrizione_articolo := jsr.Value.AsString;
      end
      else if jsr.Value.ToString = 'magazzino' then
      begin
        jsr.Read;
        lotto_promau.magazzino := jsr.Value.AsString;
        lotto_promau.magazzino := strtran(lotto_promau.magazzino, 'XX', '', true);
      end
      else if jsr.Value.ToString = 'categoria_articolo' then
      begin
        jsr.Read;
        lotto_promau.categoria_articolo := jsr.Value.AsString;
      end
      else if jsr.Value.ToString = 'quantita' then
      begin
        jsr.Read;
        lotto_promau.quantita := jsr.Value.AsInteger;
      end;

    end
    else if jsr.TokenType = TJsonToken.EndObject then
    begin
      lotti_promau.Add(lotto_promau);
      exit;
    end;

  end;

end;

procedure TA31GESTRASFIN.v_lottoExit(Sender: TObject);
begin
  inherited;
  if v_lotto.text <> '' then
  begin
    cerca_lotto(v_lotto.text);
    v_aggiungi_lotto.enabled := true;
  end;
end;

procedure TA31GESTRASFIN.v_lottoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  pr: TA31VISLOT;
begin

  if key = VK_F4 then
  begin
    try
      pr := TA31VISLOT.create(nil);
      pr.showmodal;

      if pr.premuto_esc then
      begin
        exit;
      end;

    finally
      pr.free;
    end;

  end;

  if key = vk_return then
  begin
    cerca_lotto(codice_lotto);
    codice_lotto := '';
  end;

end;

procedure TA31GESTRASFIN.v_trasferisci_colliClick(Sender: TObject);
begin
  inherited;
  trasferisci_lotto;
end;

procedure TA31GESTRASFIN.v_tub_codice_destEnter(Sender: TObject);
begin
  inherited;
  v_aggiungi_lotto.enabled := false;
  codice_ubicazione := '';
end;

procedure TA31GESTRASFIN.v_tub_codice_destExit(Sender: TObject);
begin
  inherited;

  if (codice_ubicazione = '') then
  begin
    codice_ubicazione := v_tub_codice_dest.text;
  end;

  tub_codice_controllo(codice_ubicazione);

end;

procedure TA31GESTRASFIN.tub_codice_sorg_controllo(codice_ubicazione: string);
begin

  if v_tub_codice_sorg.text <> '' then
  begin

    read_tabella(a31tsu_sorg, codice_ubicazione);
  end;
end;

procedure TA31GESTRASFIN.tub_codice_controllo(codice_ubicazione: string);
begin

  if v_tub_codice_dest.text <> '' then
  begin

    read_tabella(a31tsu, codice_ubicazione);
    (*
      if a31tsu.eof then
      begin
      messaggio(000, 'Codice ubicazione non valido');
      abort;
      pulisci_ubicazione;
      v_lotto.setfocus;
      end;
    *)
  end;
end;

procedure TA31GESTRASFIN.v_tub_codice_destKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    v_tub_codice_dest.text := codice_ubicazione;
    v_tub_codice_dest.readonly := true;
    tub_codice_controllo(codice_ubicazione);
    v_tub_codice_dest.readonly := false;
  end
  else if key = VK_TAB then
  begin
    v_tub_codice_dest.readonly := true;
    tub_codice_controllo(codice_ubicazione);
    v_tub_codice_dest.readonly := false;
  end;

end;

procedure TA31GESTRASFIN.v_tub_codice_destKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Ord(key) >= 65) and (Ord(key) <= 122) then
  begin
    codice_ubicazione := codice_ubicazione + Key;
  end;
end;

procedure TA31GESTRASFIN.v_tub_codice_sorgExit(Sender: TObject);
begin
  inherited;
  tub_codice_sorg_controllo(v_tub_codice_sorg.text);
end;

procedure TA31GESTRASFIN.visualizza_lotti(lotti_promau: tlotti_promau);
var
  i: integer;
begin
  v_lista.clear;

  for i := 0 to lotti_promau.Count - 1 do
  begin
    lotto_promau := lotti_promau.Items[i];
    v_lista.Items.Add('tipo lotto: ' + lotti_promau.Items[i].tipo_lotto);
    v_lista.Items.Add('lotto: ' + lotti_promau.Items[i].codice_lotto);
    v_lista.Items.Add('codice articolo: ' + lotti_promau.Items[i].codice_articolo);
    v_lista.Items.Add('descrizione articolo: ' + lotti_promau.Items[i].descrizione_articolo);
    v_lista.Items.Add('magazzino: ' + lotti_promau.Items[i].magazzino);
    v_lista.Items.Add('quantità: ' + formatfloat('#,###0', lotti_promau.Items[i].quantita));
  end;

end;

procedure TA31GESTRASFIN.aggiungi_lotto;
var
  progressivo: integer;
begin
  progressivo := arc.setta_valore_generatore(arc.arcdit, 'A31TRASF_PROGRESSIVO');

  if not a31trasf.locate('utn_codice;lot_codice', vararrayof([utente, v_lotto.text]), []) then
  begin
    a31trasf.append;
    a31trasf.fieldbyname('progressivo').asinteger := progressivo;
    a31trasf.fieldbyname('utn_codice').asstring := utente;
    a31trasf.fieldbyname('art_codice').asstring := v_art_codice.text;
    a31trasf.fieldbyname('lot_codice').asstring := v_lotto.text;
    a31trasf.fieldbyname('tub_codice_scarico').asstring := v_tub_codice_sorg.text;
    a31trasf.fieldbyname('tub_codice_carico').asstring := v_tub_codice_dest.text;
    a31trasf.fieldbyname('tma_codice_scarico').asstring := v_tma_codice.text;
    a31trasf.fieldbyname('tma_codice_carico').asstring := v_tma_codice_dest.text;
    a31trasf.fieldbyname('quantita').asfloat := v_quantita.value;
    a31trasf.post;
  end
  else
  begin
    if messaggio(300, 'Collo ' + v_lotto.text + ' presente, si dedidera cancellare il collo ?') = 1 then
    begin
      a31trasf.delete;
    end;

  end;

  pulisci_ubicazione;
  pulisci_lotto;
  chiudi_tabelle;
end;

procedure TA31GESTRASFIN.chiudi_tabelle;
begin
  a31tsu.close;
  lotto_ubi.close;
end;

procedure TA31GESTRASFIN.tool_genera_lottoClick(Sender: TObject);
begin
  inherited;
  cancella_lotto;
end;

procedure TA31GESTRASFIN.trasferisci_lotto;
var
  progressivo_mmt: integer;
begin
  if a31trasf.recordcount = 0 then
  begin
    messaggio(300, 'Nessun collo da trasferire');
    exit;
  end;

  if messaggio(300, 'Si desidera trasferire i colli ?') = 0 then
  begin
    exit;
  end;

  apri_transazione();
  try
    try
      //-----------------------------------------------------------
      // creo movimento per lotto sfuso  per quantita-quantita prelevata
      //-----------------------------------------------------------
      crea_movmag_lotto('G-', a31trasf.fieldbyname('tma_codice_scarico').asstring);
      commit_transazione;
      //-----------------------------------------------------------
      // creo nuovo lotto per quantita prelevata
      //-----------------------------------------------------------
      progressivo_mmt := movmag.progressivo_MMT;

      movmag.progressivo := 0;
      movmag.riga_mmr := 0;
      //
      crea_movmag_lotto('G+', a31trasf.fieldbyname('tma_codice_carico').asstring);
      commit_transazione;
      messaggio(100, 'Generati movimenti di trasferimento del collo');

      //      esegui_programma('GESMOV', progressivo_mmt, true);

    except
      on e: exception do
      begin
        rollback_transazione();
        messaggio(000, 'Errore generazione movimento magazzino ' + E.message);
      end;
    end;

  finally
    chiudi_transazione;
  end;
end;

procedure TA31GESTRASFIN.crea_movmag_lotto(tmo_codice, tma_codice: string);
var
  progressivo_ubm: integer;
  tipo_movimento_ubm: string;
  segno: double;
begin

  movmag.tmo_codice := tmo_codice;
  movmag.tma_codice := tma_codice;
  movmag.tmo_codice_collegato := '';
  movmag.tma_codice_collegato := '';
  movmag.data_registrazione := date;
  movmag.numero_documento := 0;
  movmag.serie_documento := '';
  movmag.data_documento := 0;
  movmag.cfg_tipo := '';
  movmag.cfg_codice := '';
  movmag.ese_codice := esercizio;
  movmag.tva_codice := divisa_di_conto;
  movmag.cambio := 1;
  movmag.tipo_documento := '';

  movmag.documento_origine := '';
  movmag.doc_progressivo_origine := 0;

  movmag.progressivo_collegato := 0;
  movmag.descrizione := 'TRASFERIMENTO COLLO ';
  movmag.opt_progressivo := 0;
  movmag.olt_progressivo := 0;
  movmag.progressivo_collegato_dsb := 0;
  movmag.doc_riga_origine := 0;
  movmag.doc_riga_dettaglio_origine := 0;
  movmag.doc_riga_dettaglio_ult_origine := 0;
  movmag.cms_codice := '';
  movmag.tipologia := '';
  movmag.crea_mmt;

  movmag.riga := 0;
  a31trasf.close;

  a31trasf.open;
  while not a31trasf.eof do
  begin

    movmag.riga := movmag.riga + 11;
    movmag.art_codice := a31trasf.fieldbyname('art_codice').asstring;
    movmag.tma_codice_mmr := tma_codice;
    movmag.quantita := a31trasf.fieldbyname('quantita').asfloat;
    movmag.tsm_codice := '';
    movmag.tsm_codice_art := '';
    movmag.importo_sconto := 0;
    movmag.prezzo := 0;

    movmag.tsm_codice := '';
    movmag.tsm_codice_art := '';
    movmag.importo_sconto := 0;

    movmag.tipo_movimento := 'normale';
    movmag.descrizione_mmr := '';
    movmag.opt_tipo_articolo := '';
    movmag.olt_tipo_articolo := '';
    movmag.mmr_doc_riga_origine := 0;
    movmag.cms_codice_righe := '';
    movmag.tipologia_righe := '';

    movmag.crea_mmr(false, 1);

    read_tabella(arc.arcdit, 'tmo', 'codice', tmo_codice);
    if archivio.fieldbyname('esistenza').asstring = 'decrementa' then
    begin
      crea_lotto(tmo_codice, movmag.art_codice, a31trasf.fieldbyname('lot_codice').asstring, a31trasf.fieldbyname('tma_codice_scarico').asstring, movmag.quantita * -1);
      crea_ubm(tmo_codice, movmag.art_codice, a31trasf.fieldbyname('lot_codice').asstring, a31trasf.fieldbyname('tub_codice_scarico').asstring, a31trasf.fieldbyname('tma_codice_scarico').asstring, movmag.quantita * -1);
    end
    else
    begin
      //    if not((a31trasf.fieldbyname('tubs_ubicazione_unica').asstring = 'si') and (a31trasf.fieldbyname('tubc_ubicazione_unica').asstring = 'si')) then
      begin
        crea_lotto(tmo_codice, movmag.art_codice, a31trasf.fieldbyname('lot_codice').asstring, a31trasf.fieldbyname('tma_codice_carico').asstring, movmag.quantita);
      end;
      crea_ubm(tmo_codice, movmag.art_codice, a31trasf.fieldbyname('lot_codice').asstring, a31trasf.fieldbyname('tub_codice_carico').asstring, a31trasf.fieldbyname('tma_codice_carico').asstring, movmag.quantita);
    end;

    a31trasf.next;
  end;
  a31trasf.first;

end;

procedure TA31GESTRASFIN.crea_lotto(tmo_codice, art_codice, lotto, tma_codice: string;
  quantita:
  double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin

    progressivo := arc.setta_valore_generatore(tmyconnection_go(ltm.connection), 'LTM_CODICE');

    read_tabella(ltm, progressivo);
    if not ltm.eof then
    begin
      progressivo := 0;
    end;

  end;

  ltm.append;
  ltm.fieldbyname('progressivo').asinteger := progressivo;
  ltm.fieldbyname('art_codice').asstring := art_codice;
  ltm.fieldbyname('lotto').asstring := lotto;
  ltm.fieldbyname('tma_codice').asstring := tma_codice;
  ltm.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
  ltm.fieldbyname('doc_progressivo_origine').asinteger := movmag.progressivo_mmt;
  ltm.fieldbyname('doc_riga_origine').asinteger := movmag.riga;
  ltm.fieldbyname('data_registrazione').asdatetime := date;
  ltm.fieldbyname('quantita').asfloat := abs(quantita);

  read_tabella(arc.arcdit, 'tmo', 'codice', tmo_codice);
  if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
  begin
    ltm.fieldbyname('quantita_entrate').asfloat := ABS(quantita);
  end
  else
  begin
    ltm.fieldbyname('quantita_uscite').asfloat := abs(quantita);
  end;
  ltm.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;
  ltm.post;
end;

procedure TA31GESTRASFIN.crea_ubm(tmo_codice, art_codice, lotto, tub_codice, tma_codice: string;
  quantita:
  double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(tmyconnection_go(ltm.connection), 'UBM_PROGRESSIVO');
  end;

  read_tabella(ubm, progressivo);
  if ubm.eof then
  begin
    ubm.append;
    ubm.fieldbyname('progressivo').asinteger := progressivo;
    ubm.fieldbyname('data_registrazione').asdatetime := date;
    ubm.fieldbyname('art_codice').asstring := art_codice;
    ubm.fieldbyname('tub_codice').asstring := tub_codice;
    ubm.fieldbyname('descrizione').asstring := 'TRASFERIMENTO COLLO';
    ubm.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
    ubm.fieldbyname('doc_progressivo_origine').asinteger := movmag.progressivo_mmt;
    ubm.fieldbyname('doc_riga_origine').asinteger := movmag.riga;
    ubm.fieldbyname('quantita').asfloat := abs(quantita);
    ubm.fieldbyname('tmo_codice').asstring := tmo_codice;

    if quantita > 0 then
    begin
      ubm.fieldbyname('tipo_movimento').asstring := 'carico';
      ubm.fieldbyname('segno').asfloat := 1;
    end
    else
    begin
      ubm.fieldbyname('tipo_movimento').asstring := 'scarico';
      ubm.fieldbyname('segno').asfloat := -1;
    end;
    ubm.post;
  end;

end;

procedure TA31GESTRASFIN.crea_etichetta(art_codice: string;
  var
  lotto: string;
  tma_codice: string;
  quantita:
  double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(tmyconnection_go(a31etichette.connection), 'A31ETICHETTE_PROGRESSIVO');
  end;

  xxr.close;
  xxr.sql.clear;
  if lotto_ubi.fieldbyname('mmt_documento_origine').asstring = 'ddt acq' then
  begin
    xxr.sql.add('select * from dar where progressivo=:progressivo and riga=:riga');
  end
  else
  begin
    xxr.sql.add('select * from far where progressivo=:progressivo and riga=:riga');
  end;

  xxr.parambyname('progressivo').asinteger := lotto_ubi.fieldbyname('mmt_doc_progressivo_origine').asinteger;
  xxr.parambyname('riga').asinteger := lotto_ubi.fieldbyname('mmt_doc_riga_origine').asinteger;
  xxr.open;

  read_tabella(opt, vararrayof([xxr.fieldbyname('doc_progressivo_origine').asinteger, xxr.fieldbyname('doc_riga_origine').asinteger]));

  query.close;
  query.sql.clear;
  query.sql.add('select cli_codice, art_codice, codice_articolo_cliente from arcl');
  query.sql.add('where');
  query.sql.add('cli_codice=:cli_codice and');
  query.sql.add('art_codice=:art_codice');
  query.parambyname('cli_codice').asstring := opt.fieldbyname('a31cli_codice').asstring;
  query.parambyname('art_codice').asstring := art_codice;
  query.open;

  read_tabella(a31etichette, progressivo);
  if a31etichette.eof then
  begin
    a31etichette.append;
    a31etichette.fieldbyname('progressivo').asinteger := progressivo;
    a31etichette.fieldbyname('cli_codice').asstring := query.fieldbyname('cli_codice').asstring;
    a31etichette.fieldbyname('art_codice').asstring := art_codice;
    if lotto <> '' then
    begin
      a31etichette.fieldbyname('lot_codice').asstring := lotto;
    end;
    a31etichette.fieldbyname('tma_codice').asstring := tma_codice;
    a31etichette.fieldbyname('codice_articolo_cliente').asstring := query.fieldbyname('codice_articolo_cliente').asstring;
    a31etichette.fieldbyname('quantita').asfloat := quantita;
    a31etichette.fieldbyname('numero_etichette').asfloat := 1;
    a31etichette.post;
  end;

  a31etichette.close;
  a31etichette.open;
  lotto := a31etichette.fieldbyname('lot_codice').asstring;
end;

procedure ttub_codice.converti(codice_ubicazione: string);
var
  liv, col: integer;

begin

  liv := 0;
  col := pos('-', codice_ubicazione);
  while col > 0 do
  begin
    liv := liv + 1;
    case liv of
      1:
        begin
          tsu_codice_01 := copy(codice_ubicazione, 1, col - 1);
        end;
      2:
        begin
          tsu_codice_02 := copy(codice_ubicazione, 1, col - 1);
        end;
      3:
        begin
          tsu_codice_03 := copy(codice_ubicazione, 1, col - 1);
        end;
      4:
        begin
          tsu_codice_04 := copy(codice_ubicazione, 1, col - 1);
        end;
    end;
    codice_ubicazione := copy(codice_ubicazione, col + 1, length(codice_ubicazione));
    col := pos('-', codice_ubicazione);

  end;

  case liv of
    1:
      begin
        tsu_codice_01 := copy(codice_ubicazione, 1, col - 1);
      end;
    2:
      begin
        tsu_codice_02 := copy(codice_ubicazione, 1, col - 1);
      end;
    3:
      begin
        tsu_codice_03 := copy(codice_ubicazione, 1, col - 1);
      end;
    4:
      begin
        tsu_codice_04 := copy(codice_ubicazione, 1, col - 1);
      end;
  end;

end;

procedure TA31GESTRASFIN.cancella_lotto;
begin
  if not a31trasf.eof then
  begin
    a31trasf.delete;
  end;
end;

initialization

registerclass(tA31GESTRASFIN);

end.
