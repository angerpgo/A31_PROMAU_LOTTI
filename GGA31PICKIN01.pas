unit GGA31PICKIN01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, raizeedit_go,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzLabel, Vcl.ExtCtrls, Vcl.Buttons,
  RzSpnEdt, RzButton, RzPanel, RzRadChk;

type
  TA31PICKIN01 = class(TFORMBASE)
    v_l_frn_codice: TRzLabel;
    v_frn_codice: trzdbedit_go;
    v_frn_descrizione: trzdbeditdescrizione_go;
    v_art_descrizione1: trzdbedit_go;
    RzLabel1: TRzLabel;
    v_codice_articolo_fornitore: trzedit_go;
    v_arf_descrizione1: trzdbedit_go;
    Label19: TRzLabel;
    v_art_codice: trzedit_go;
    art: TMyQuery_go;
    art_ds: TMyDataSource;
    arf: TMyQuery_go;
    arf_ds: TMyDataSource;
    pannello_bottoni: TRzPanel;
    v_conferma: TRzBitBtn;
    v_esci: TRzRapidFireButton;
    Timer1: TTimer;
    v_quantita_collo: trznumericedit_go;
    RzLabel2: TRzLabel;
    v_tcm_codice: trzdbedit_go;
    pickr_ds: TMyDataSource;
    pickr: TMyQuery_go;
    v_riga: trznumericedit_go;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    v_data_documento: trzdbdatetimeedit_go;
    RzLabel5: TRzLabel;
    v_numero_documento_alfa: trzdbedit_go;
    v_serie_documento: trzdbedit_go;
    RzLabel6: TRzLabel;
    xxr_ds: TMyDataSource;
    RzLabel7: TRzLabel;
    v_lotto: trzedit_go;
    v_lot_descrizione: trzdbedit_go;
    lot: TMyQuery_go;
    v_stessa_qta: TRzCheckBox;
    RzLabel8: TRzLabel;
    v_quantita_riga: trznumericedit_go;
    v_nr_colli: trznumericedit_go;
    RzLabel9: TRzLabel;
    ltm: TMyQuery_go;
    a31etichette: TMyQuery_go;
    opt: TMyQuery_go;
    xxr: TMyQuery_go;
    RzLabel10: TRzLabel;
    v_nr_colli_creati: trznumericedit_go;

    procedure v_esciClick(Sender: TObject);
    procedure v_art_codiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_quantita_colloExit(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure v_art_codiceEnter(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
  protected
    procedure art_codice_controllo(blocco: boolean);
    procedure cerca_articolo;
    procedure calcola_qta_collo;
    procedure genera_lotti(frn_codice, art_codice, tma_codice: string; nr_colli: integer; quantita_collo, quantita_riga: double);
    procedure crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
    procedure crea_lotto(frn_codice, art_codice, lotto, tma_codice: string; quantita: double);

  public
    progressivo_pickt: integer;
    riga: integer;
    progressivo: integer;
    numero_colli: double;
    quantita: double;
    quantita_rilevata: double;
    premuto_escape: boolean;
    procedure get_codice_archivio; override;
  end;

var
  A31PICKIN01: TA31PICKIN01;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31PICKIN01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    premuto_escape := true;
  end;
  inherited;
end;

procedure TA31PICKIN01.FormShow(Sender: TObject);
var
  codice_passato: variant;
begin
  inherited;

  v_art_codice.text := self.codice;
  v_riga.value := riga;
  v_nr_colli.value := numero_colli;
  v_quantita_riga.value := quantita;

  read_tabella(xxr, vararrayof([progressivo, riga]));

  codice_passato := vararrayof(['ddt acq', xxr.fieldbyname('progressivo_mmt').asinteger, xxr.fieldbyname('riga_mmt').asinteger]);
  read_tabella(ltm, codice_passato);

  art_codice_controllo(false);
  if art.fieldbyname('tcm_codice').asstring <> 'ACQ' then
  begin
    calcola_qta_collo;
  end;
end;

procedure TA31PICKIN01.get_codice_archivio;
begin
  inherited;
  if screen.ActiveControl = v_art_codice then
  begin
    v_art_codice.text := codice_archivio[0];
    v_riga.value := riga;

  end;

end;

procedure TA31PICKIN01.v_art_codiceEnter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := progressivo_pickt;
  visarc_filtro_02 := 'no';
end;

procedure TA31PICKIN01.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure TA31PICKIN01.art_codice_controllo(blocco: boolean);
begin
  if v_art_codice.text = '' then
  begin
    messaggio(000, 'Codice articolo obbligatorio.');
    v_art_codice.setfocus;
    abort;
  end;

  tabella_controllo(false, art, v_art_codice, blocco, nil, nil, nil)
end;

procedure TA31PICKIN01.v_art_codiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    cerca_articolo;
  end;

end;

procedure TA31PICKIN01.v_confermaClick(Sender: TObject);
begin
  inherited;
  genera_lotti(v_frn_codice.text, v_art_codice.text, xxr.fieldbyname('tma_codice').asstring, trunc(v_nr_colli.value), v_quantita_collo.value, v_quantita_riga.value);
end;

procedure TA31PICKIN01.v_esciClick(Sender: TObject);
begin
  inherited;
  premuto_escape := true;
  close;
end;

procedure TA31PICKIN01.v_quantita_colloExit(Sender: TObject);
begin
  inherited;
  if premuto_escape then
  begin
    exit;
  end;

  calcola_qta_collo;
end;

procedure TA31PICKIN01.cerca_articolo;
begin
  timer1.enabled := false;

  if v_art_codice.text = '' then
  begin
    timer1.enabled := true;
    exit;
  end;

  read_tabella(art, v_art_codice.text);

  if art.eof then
  begin

    arf.close;
    arf.parambyname('frn_codice').asstring := v_frn_codice.text;
    arf.parambyname('codice_articolo_fornitore').asstring := v_art_codice.text;
    arf.open;
    if arf.eof then
    begin
      if messaggio(300, 'Codice articolo fornitore non trovato, vuoi inserirlo ?') = 1 then
      begin
        exit;
      end;
    end
    else
    begin
      v_art_codice.text := arf.fieldbyname('art_codice').asstring;
      v_codice_articolo_fornitore.text := arf.fieldbyname('codice_articolo_fornitore').asstring;
    end;
  end;

end;

procedure TA31PICKIN01.calcola_qta_collo;
begin
  v_quantita_collo.value := Trunc(v_quantita_riga.value / v_nr_colli.value);
end;

procedure tA31PICKIN01.genera_lotti(frn_codice, art_codice, tma_codice: string; nr_colli: integer; quantita_collo, quantita_riga: double);
var
  lotto: string;
  collo: integer;
  totale_qta: double;
begin
  try
    try
      apri_transazione;

      totale_qta := 0;

      for collo := 1 to nr_colli do
      begin
        v_nr_colli_creati.value := collo;
        if collo < nr_colli then
        begin
          crea_etichetta(art_codice, lotto, tma_codice, quantita_collo);
        end
        else
        begin
          quantita_collo := quantita_riga - totale_qta;
          crea_etichetta(art_codice, lotto, tma_codice, quantita_collo);
        end;
        totale_qta := totale_qta + quantita_collo;
      end;

      tabella_edit(xxr);
      xxr.fieldbyname('quantita_rilevata').asfloat := totale_qta;
      xxr.fieldbyname('flag_controllato').asstring := 'si';
      xxr.post;

      commit_transazione;
    except
      on e: Exception do
      begin
        messaggio(000, 'Errore ' + E.message);
        try
          arc.arcdit.rollback;
        except
        end;
      end;
    end;
  finally
    chiudi_transazione;
    close;
  end;
end;

procedure TA31PICKIN01.crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(tmyconnection_go(a31etichette.connection), 'A31ETICHETTE_PROGRESSIVO');
  end;

  opt.close;
  opt.parambyname('doc_progressivo_origine').asinteger := xxr.fieldbyname('doc_progressivo_origine').asinteger;
  opt.parambyname('doc_riga_origine').asinteger := xxr.fieldbyname('doc_riga_origine').asinteger;
  opt.open;

  query.close;
  query.sql.clear;
  query.sql.add('select cli_codice, art_codice, codice_articolo_cliente from arcl');
  query.sql.add('where');
  query.sql.add('cli_codice=:cli_codice and');
  query.sql.add('art_codice=:art_codice');
  query.parambyname('cli_codice').asstring := opt.fieldbyname('a31cli_codice').asstring;
  query.parambyname('art_codice').asstring := art_codice;
  query.open;

  a31etichette.close;
  a31etichette.parambyname('progressivo').asinteger := progressivo;
  a31etichette.open;
  if a31etichette.eof then
  begin
    a31etichette.append;
    a31etichette.fieldbyname('progressivo').asinteger := progressivo;
    a31etichette.fieldbyname('cli_codice').asstring := query.fieldbyname('cli_codice').asstring;
    a31etichette.fieldbyname('art_codice').asstring := art_codice;
    a31etichette.fieldbyname('tma_codice').asstring := tma_codice;
    a31etichette.fieldbyname('codice_articolo_cliente').asstring := query.fieldbyname('codice_articolo_cliente').asstring;
    a31etichette.fieldbyname('quantita').asfloat := quantita;
    a31etichette.fieldbyname('numero_etichette').asfloat := 1;
    a31etichette.fieldbyname('documento_origine').asstring := 'a31pickin';
    a31etichette.fieldbyname('doc_progressivo_origine').asinteger := xxr.fieldbyname('progressivo').asinteger;
    a31etichette.fieldbyname('doc_riga_origine').asinteger := xxr.fieldbyname('riga').asinteger;
    a31etichette.post;
  end;

  a31etichette.close;
  a31etichette.open;
  lotto := a31etichette.fieldbyname('lot_codice').asstring;

  v_lotto.text := lotto;

end;

procedure TA31PICKIN01.crea_lotto(frn_codice, art_codice, lotto, tma_codice: string; quantita: double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(tmyconnection_go(ltm.connection), 'LTM_PROGRESSIVO');
  end;

  //  read_tabella(xxr);

  ltm.close;
  ltm.parambyname('progressivo').asinteger := progressivo;
  ltm.open;
  if ltm.eof then
  begin
    ltm.append;
    ltm.fieldbyname('progressivo').asinteger := progressivo;
    ltm.fieldbyname('art_codice').asstring := art_codice;
    ltm.fieldbyname('lotto').asstring := lotto;
    ltm.fieldbyname('tma_codice').asstring := xxr.fieldbyname('tma_codice').asstring;
    ltm.fieldbyname('documento_origine').asstring := '';
    ltm.fieldbyname('doc_progressivo_origine').asinteger := xxr.fieldbyname('progressivo').asinteger;
    ltm.fieldbyname('doc_riga_origine').asinteger := xxr.fieldbyname('riga').asinteger;
    ltm.fieldbyname('data_registrazione').asdatetime := xxr.fieldbyname('data_registrazione').asdatetime;
    ltm.fieldbyname('quantita').asfloat := quantita;

    read_tabella(arc.arcdit, 'tmo', 'codice', xxr.fieldbyname('tmo_codice').asstring);
    if archivio.fieldbyname('esistenza').asstring = 'incrementa' then
    begin
      ltm.fieldbyname('quantita_entrate').asfloat := quantita;
    end
    else
    begin
      ltm.fieldbyname('quantita_uscite').asfloat := quantita;
    end;
    ltm.post;
  end;

end;

end.
