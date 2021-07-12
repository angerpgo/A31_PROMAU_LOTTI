unit GGA31GESCOLLO;

interface

uses
  System.Generics.Collections, System.JSON.Types, System.JSON.Readers, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, RzLabel,
  Vcl.Mask, RzEdit, raizeedit_go, Vcl.ExtCtrls, RzPanel, RzButton, ZZMOVMAG,
  RzDBEdit;

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
  TA31GESCOLLO = class(TFORMBASE)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    v_lista: TListBox;
    v_quantita: trznumericedit_go;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    v_quantita_prelevata: trznumericedit_go;
    v_genera_lotto: TRzBitBtn;
    tool_genera_lotto: TToolButton;
    a31etichette: TMyQuery_go;
    ltm: TMyQuery_go;
    ubm: TMyQuery_go;
    lotto_ubi: TMyQuery_go;
    v_l_frn_codice: TRzLabel;
    v_tma_codice: trzdbedit_go;
    v_tsu1_codice_01: trzdbeditdescrizione_go;
    lotto_ubi_ds: TMyDataSource;
    RzLabel4: TRzLabel;
    rzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    v_tsu_codice_02: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go3: trzdbeditdescrizione_go;
    v_tsu_codice_03: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go4: trzdbeditdescrizione_go;
    v_tsu_codice_04: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go6: trzdbeditdescrizione_go;
    v_tsu_codice_05: trzdbeditdescrizione_go;
    rzdbeditdescrizione_go5: trzdbeditdescrizione_go;
    v_tub_codice: trzdbeditdescrizione_go;
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
    procedure v_genera_lottoClick(Sender: TObject);
    procedure v_quantita_prelevataExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_lottoKeyPress(Sender: TObject; var Key: Char);
    procedure v_lottoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_lottoExit(Sender: TObject);
  protected
    flag_barcode128: boolean;
    flag_barcode_promau: boolean;
    filejson: textfile;
    codice_lotto: string;
    lotti_promau: tlotti_promau;
    lotto_promau: tlotto_promau;
    movmag: tmovmag;

    procedure quantita_prelevata_controllo;
    procedure pulisci_lotto;

    procedure cerca_lotto(nome_file: string);
    procedure read_lotto_json(lotti_promau: tlotti_promau; jsr: tjsonreader);
    procedure visualizza_lotti(lotti_promau: tlotti_promau);
    procedure genera_lotto;
    procedure crea_movmag_lotto(tmo_codice, tma_codice, art_codice, lotto, tub_codice: string; quantita, quantita_prelevata: double);
    procedure crea_lotto(tmo_codice, art_codice, lotto, tma_codice: string; quantita: double);
    procedure crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
  public
    { Public declarations }
  end;

var
  A31GESCOLLO: TA31GESCOLLO;

implementation

{$r *.dfm}


uses DMARC, GGA31VISLOT;

procedure TA31GESCOLLO.v_genera_lottoClick(Sender: TObject);
begin
  inherited;
  genera_lotto;
end;

procedure TA31GESCOLLO.v_quantita_prelevataExit(Sender: TObject);
begin
  inherited;
  quantita_prelevata_controllo;
end;

procedure TA31GESCOLLO.quantita_prelevata_controllo;
begin
  if (v_quantita_prelevata.value <= 0) or (v_quantita_prelevata.value > v_quantita.value) then
  begin
    messaggio(000, 'Quantità prelevata non validea.');
    v_quantita_prelevata.setfocus;
    abort;
  end;

end;

procedure TA31GESCOLLO.FormCreate(Sender: TObject);
begin
  inherited;

  movmag := tmovmag.create(arc.arcdit);

end;

procedure TA31GESCOLLO.FormDestroy(Sender: TObject);
begin
  inherited;
  movmag.free;
end;

procedure TA31GESCOLLO.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TA31GESCOLLO.pulisci_lotto;
begin
  v_lotto.text := '';
  v_lista.clear;

  v_lotto.setfocus;
end;

procedure TA31GESCOLLO.cerca_lotto(nome_file: string);
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

    read_tabella(ltp, vararrayof([v_lotto.text, v_tma_codice.text]));
    v_quantita.value := ltp.fieldbyname('esistenza').asfloat;

    read_tabella(tub, v_tub_codice.text);
    if tub.eof then
    begin
      v_genera_lotto.enabled := false;
    end
    else
    begin

      if tub.fieldbyname('ubicazione_unica').asstring = 'si' then
      begin
        v_genera_lotto.enabled := false;
        //  messaggio(000, 'Ubicazione ' + v_tub_codice.text + ' non gestisce multiubicazioni');
      end;
      v_genera_lotto.enabled := true;
    end;
    v_quantita_prelevata.setfocus;
  end;

end;

procedure TA31GESCOLLO.read_lotto_json(lotti_promau: tlotti_promau;
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

procedure TA31GESCOLLO.v_lottoExit(Sender: TObject);
begin
  inherited;
  if v_lotto.text = '' then
  begin
    messaggio(000, 'Codice lotto obbligatorio');
  end
  else
  begin
    cerca_lotto(v_lotto.text);
  end;
end;

procedure TA31GESCOLLO.v_lottoKeyDown(Sender: TObject; var Key: Word;
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

procedure TA31GESCOLLO.v_lottoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //
end;

procedure TA31GESCOLLO.visualizza_lotti(lotti_promau: tlotti_promau);
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

procedure TA31GESCOLLO.genera_lotto;
var
  progressivo_mmt: integer;
begin
  if messaggio(300, 'Si desidera generare nuovo lotto ?') = 0 then
  begin
    exit;
  end;

  //-----------------------------------------------------------
  // creo movimento per lotto sfuso  per quantita-quantita prelevata
  //-----------------------------------------------------------
  crea_movmag_lotto('G-', v_tma_codice.text, v_art_codice.text,v_lotto.text, v_tub_codice.text, v_quantita.value, v_quantita_prelevata.value);

  //-----------------------------------------------------------
  // creo nuovo lotto per quantita prelevata
  //-----------------------------------------------------------
  progressivo_mmt := movmag.progressivo;

  movmag.progressivo := 0;
  movmag.riga_mmr := 0;
  crea_movmag_lotto('G+', v_tma_codice.text, v_art_codice.text, '', v_tub_codice.text, 0, v_quantita_prelevata.value);

  messaggio(100, 'Generati movimenti di magazzino per collo sfuso/nuovo collo per i pezzi prelevati');

  esegui_programma('GESMOV', progressivo_mmt, true);
end;

procedure TA31GESCOLLO.crea_movmag_lotto(tmo_codice, tma_codice, art_codice, lotto, tub_codice: string;
  quantita, quantita_prelevata: double);
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
  movmag.descrizione := 'COLLI SFUSI  - LOTTO ' + lotto + ' QTA'' ORIGINALE :' + formatfloat('#,###0', quantita);
  movmag.opt_progressivo := 0;
  movmag.olt_progressivo := 0;
  movmag.progressivo_collegato_dsb := 0;
  movmag.doc_riga_origine := 0;
  movmag.doc_riga_dettaglio_origine := 0;
  movmag.doc_riga_dettaglio_ult_origine := 0;
  movmag.cms_codice := '';
  movmag.tipologia := '';
  movmag.crea_mmt;

  movmag.riga := 1;
  movmag.art_codice := art_codice;
  movmag.tma_codice_mmr := tma_codice;
  movmag.quantita := quantita_prelevata;
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
    if quantita = 0 then
    begin
      crea_etichetta(art_codice, lotto, tma_codice, quantita - quantita_prelevata);
    end;
    crea_lotto(tmo_codice, art_codice, lotto, tma_codice, quantita_prelevata);
  end
  else
  begin
    if quantita = 0 then
    begin
      crea_etichetta(art_codice, lotto, tma_codice, quantita_prelevata);
    end;
    crea_lotto(tmo_codice, art_codice, lotto, tma_codice, quantita_prelevata);
  end;

end;

procedure TA31GESCOLLO.crea_lotto(tmo_codice, art_codice, lotto, tma_codice: string;
  quantita:
  double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(tmyconnection_go(ltm.connection), 'LTM_PROGRESSIVO');
  end;

  read_tabella(ltm, progressivo);

  if ltm.eof then
  begin
    ltm.append;
    ltm.fieldbyname('progressivo').asinteger := progressivo;
    ltm.fieldbyname('art_codice').asstring := art_codice;
    ltm.fieldbyname('lotto').asstring := lotto;
    ltm.fieldbyname('tma_codice').asstring := lotto_ubi.fieldbyname('tma_codice').asstring;
    ltm.fieldbyname('documento_origine').asstring := 'movimenti magazzino';
    ltm.fieldbyname('doc_progressivo_origine').asinteger := movmag.progressivo_mmt;
    ltm.fieldbyname('doc_riga_origine').asinteger := movmag.riga;
    ltm.fieldbyname('data_registrazione').asdatetime := date;
    ltm.fieldbyname('quantita').asfloat := quantita;

    read_tabella(arc.arcdit, 'tmo', 'codice', tmo_codice);
    if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      ltm.fieldbyname('quantita_entrate').asfloat := quantita;
    end
    else
    begin
      ltm.fieldbyname('quantita_uscite').asfloat := quantita;
    end;
    ltm.fieldbyname('esistenza').asstring := archivio.fieldbyname('esistenza').asstring;
    ltm.post;
  end;

end;

procedure TA31GESCOLLO.crea_etichetta(art_codice: string;
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

initialization

registerclass(tA31GESCOLLO);

end.
