unit GGA31PICKIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGGESDOC, Data.DB, MyAccess, query_go,
  DBAccess, MemDS, Vcl.Menus, RzSpnEdt, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, RzDBGrid, raizeedit_go, RzButton,
  Vcl.Mask, RzEdit, RzDBEdit, RzLabel, RzTabs, Vcl.ExtCtrls, RzPanel,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls, RzCmboBx, RzDBCmbo;

type
  TA31PICKIN = class(TGESDOC)
    v_l_frn_codice: TRzLabel;
    v_frn_codice: trzdbedit_go;
    v_frn_descrizione: trzdbeditdescrizione_go;
    v_data_registrazione: trzdbdatetimeedit_go;
    v_giorno: trzedit_go;
    v_data_documento: trzdbdatetimeedit_go;
    v_numero_documento_alfa: trzdbedit_go;
    v_numero_documento: trzdbnumericedit_go;
    v_serie_documento: trzdbedit_go;
    v_revisione: trzdbnumericedit_go;
    frn_ds: TMyDataSource;
    frn: TMyQuery_go;
    art: TMyQuery_go;
    art_ds: TMyDataSource;
    Label19: TRzLabel;
    v_art_codice: trzdbedit_go;
    Label72: TRzLabel;
    v_descrizione1_riga: trzdbedit_go;
    v_descrizione2_riga: trzdbedit_go;
    Label24: TRzLabel;
    v_art_tum_codice: trzdbeditdescrizione_go;
    Label36: TRzLabel;
    v_art_tub_codice: trzdbeditdescrizione_go;
    Label26: TRzLabel;
    v_quantita: trzdbnumericedit_go;
    RzLabel3: TRzLabel;
    v_quantita_rilevata: trzdbnumericedit_go;
    RzLabel4: TRzLabel;
    rzdbnumericedit_go1: trzdbnumericedit_go;
    v_progressivo_acq: trzdbnumericedit_go;
    v_tipo_documento: trzdbcombobox_go;
    v_data_controllo: trzdbdatetimeedit_go;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    xxt: TMyQuery_go;
    xxr: TMyQuery_go;
    Timer1: TTimer;
    pickt: TMyQuery_go;
    v_genera_lotti: TRzRapidFireButton;
    v_documento_origine: TRzRapidFireButton;
    lot: TMyQuery_go;
    ltm: TMyQuery_go;
    mmr: TMyQuery_go;
    v_movimento_magazzino: TRzRapidFireButton;
    v_lotto: TRzRapidFireButton;
    del_ltm: TMyQuery_go;
    v_flag_controllato_riga: TDBCheckBox;
    RzLabel7: TRzLabel;
    v_nr_colli: trzdbnumericedit_go;
    a31etichette: TMyQuery_go;
    opt: TMyQuery_go;
    arcl: TMyQuery_go;
    arf: TMyQuery_go;
    v_data_produzione: trzdbdatetimeedit_go;
    RzLabel11: TRzLabel;
    procedure v_data_controlloExit(Sender: TObject);
    procedure pannello_codiceExit(Sender: TObject);
    procedure v_progressivo_acqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure v_progressivo_acqExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure v_documento_origineClick(Sender: TObject);
    procedure tabellaAfterScroll(DataSet: TDataSet);
    procedure v_tipo_documentoChange(Sender: TObject);
    procedure v_movimento_magazzinoClick(Sender: TObject);
    procedure v_lottoClick(Sender: TObject);
    procedure pannello_righeEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pannello_griglia_righeEnter(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure v_griglia_righeExit(Sender: TObject);
    procedure v_frn_codiceExit(Sender: TObject);
    procedure v_quantitaExit(Sender: TObject);
    procedure v_nr_colliExit(Sender: TObject);
    procedure v_genera_lottiClick(Sender: TObject);
  protected
    testo_sql_xxt: string;
    testo_sql_xxr: string;

    procedure esegui_query_righe; override;

    procedure data_controllo;
    procedure frn_codice_controllo(blocco: boolean);

    procedure art_codice_controllo(blocco: boolean);
    procedure quantita_controllo;
    procedure nr_colli_controllo;

    procedure abilita_timer1;

    procedure assegna_query_tipo_documento;
    procedure cerca_documento;

    procedure genera_lotti;
    procedure crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
    procedure crea_lotto(frn_codice, art_codice, lotto, tma_codice: string; quantita: double);
    procedure esegui_documento_origine;
    procedure esegui_documento_magazzino;
    procedure esegui_lotti;
    procedure cancella_lotto;

    function assegna_riga: integer;
  public
    { Public declarations }
    procedure visualizza_descrizioni; override;
    procedure visualizza_descrizioni_righe; override;
    procedure abilitazioni_righe; override;
    procedure get_codice_archivio; override;
    procedure controllo_campi; override;

    procedure controllo_cancella; override;
    procedure controllo_edit; override;
    procedure controllo_campi_righe; override;
    procedure controllo_cancella_righe; override;
    procedure controllo_edit_righe; override;

    procedure before_post; override;
    procedure before_post_righe; override;
    procedure after_post_righe; override;
  end;

var
  A31PICKIN: TA31PICKIN;

implementation

{$r *.dfm}


uses DMARC, GGA31PICKIN01, ZZLIBRERIE, GGA31ARCCL, ZZLIBRERIE_PROMAU, GGA31ARF;

procedure TA31PICKIN.get_codice_archivio;
begin
  //
  inherited;
end;

procedure TA31PICKIN.pannello_codiceExit(Sender: TObject);
begin
  inherited;
  if not esiste then
  begin
    tabella_edit(tabella);
    tabella.fieldbyname('data_controllo').asdatetime := date;
  end;
end;

procedure TA31PICKIN.pannello_griglia_righeEnter(Sender: TObject);
begin
  inherited;
  abilita_timer1;
end;

procedure TA31PICKIN.pannello_righeEnter(Sender: TObject);
begin
  inherited;
  if tabella_righe.fieldbyname('documento_origine').asstring = '' then
  begin
    v_art_codice.readonly := false;
    v_quantita.readonly := false;
  end
  else
  begin
    v_art_codice.readonly := true;
    v_quantita.readonly := true;
  end;

end;

procedure TA31PICKIN.v_lottoClick(Sender: TObject);
begin
  inherited;
  esegui_lotti;
end;

procedure TA31PICKIN.v_movimento_magazzinoClick(Sender: TObject);
begin
  inherited;
  esegui_documento_magazzino;
end;

procedure TA31PICKIN.v_nr_colliExit(Sender: TObject);
begin
  inherited;
  nr_colli_controllo;
end;

procedure TA31PICKIN.tabellaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  assegna_query_tipo_documento;
end;

procedure TA31PICKIN.Timer1Timer(Sender: TObject);
begin
  inherited;
  timer1.enabled := false;

  assegna_righe(1);
  tabella_righe.fieldbyname('data_produzione').asdatetime := date;
end;

procedure TA31PICKIN.visualizza_descrizioni;
begin
  frn_codice_controllo(false);
end;

procedure TA31PICKIN.visualizza_descrizioni_righe;
begin
  art_codice_controllo(false);
end;

procedure TA31PICKIN.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure TA31PICKIN.v_data_controlloExit(Sender: TObject);
begin
  inherited;
  data_controllo;
end;

procedure TA31PICKIN.v_documento_origineClick(Sender: TObject);
begin
  inherited;
  esegui_documento_origine;
end;

procedure TA31PICKIN.v_frn_codiceExit(Sender: TObject);
begin
  inherited;
  frn_codice_controllo(true);
end;

procedure TA31PICKIN.v_genera_lottiClick(Sender: TObject);
begin
  inherited;
  genera_lotti;
end;

procedure TA31PICKIN.v_griglia_righeExit(Sender: TObject);
begin
  inherited;
  Timer1.enabled := false;
end;

procedure TA31PICKIN.v_progressivo_acqExit(Sender: TObject);
begin
  inherited;
  (*
    if tasto_esc then
    begin
    exit;
    end;
    cerca_documento;
  *)
end;

procedure TA31PICKIN.v_progressivo_acqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  (*
    if key = vk_return then
    begin
    cerca_documento;
    end;
  *)
end;

procedure TA31PICKIN.v_quantitaExit(Sender: TObject);
begin
  inherited;
  quantita_controllo;
end;

procedure TA31PICKIN.v_tipo_documentoChange(Sender: TObject);
begin
  inherited;
  //  assegna_query_tipo_documento;
end;

procedure TA31PICKIN.abilitazioni_righe;
begin
  inherited;

end;

procedure TA31PICKIN.controllo_campi;
begin
  inherited;
  data_controllo;
end;

procedure TA31PICKIN.controllo_cancella;
begin
  inherited;

  if (tabella.fieldbyname('flag_controllato').asstring = 'si') then
  begin
    messaggio(000, 'il documento è stato verificato');
    controllo_cancella_edit := false;
    exit;
  end;

end;

procedure TA31PICKIN.controllo_campi_righe;
begin
  inherited;
  quantita_controllo;
  nr_colli_controllo;
end;

procedure TA31PICKIN.controllo_cancella_righe;
begin
  inherited;

  if (tabella.fieldbyname('flag_controllato').asstring = 'si') then
  begin
    messaggio(000, 'il documento è stato verificato');
    controllo_cancella_edit := false;
    exit;
  end;
end;

procedure TA31PICKIN.controllo_edit;
begin
  inherited;
  (*
    if (tabella.fieldbyname('flag_controllato').asstring = 'si') then
    begin
    messaggio(000, 'il documento è stato verificato');
    controllo_cancella_edit := false;
    exit;
    end
  *)
end;

procedure TA31PICKIN.controllo_edit_righe;
begin
  inherited;
  (*
    if (tabella.fieldbyname('flag_controllato').asstring = 'si') then
    begin
    messaggio(000, 'il documento è stato verificato');
    controllo_cancella_edit := false;
    exit;
    end
  *)
end;

procedure TA31PICKIN.FormCreate(Sender: TObject);
begin

  inherited;
  programma_stampa := 'A31STAPICKIN';

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select count(*) nr from a31pickr where progressivo=:progressivo and flag_controllato=''no'' ');;

  testo_sql_xxt := 'select * from xxt where progressivo=:progressivo and situazione=''evaso'' ';
  testo_sql_xxr := 'select mmr.progressivo progressivo_mmr, mmr.riga riga_mmr, xxr.riga, ' +
    'xxr.ART_CODICE, xxr.descrizione1, xxr.descrizione2, xxr.DOCUMENTO_ORIGINE, xxr.DOC_PROGRESSIVO_ORIGINE, xxr.doc_riga_origine, xxr.tma_codice, ' +
    'ltm.lotto, dar.riga, dar.quantita, dar.numero_colli  from dar xxr ' +
    'inner join mmt on mmt.doc_progressivo_origine=xxr.progressivo and mmt.documento_origine=''ddt acq'' ' +
    'inner join mmr on mmr.progressivo=mmt.progressivo and mmr.doc_riga_origine=xxr.riga ' +
    'left join ltm on ltm.DOC_PROGRESSIVO_ORIGINE=mmr.PROGRESSIVO and ltm.doc_riga_origine=mmr.riga and ltm.DOCUMENTO_ORIGINE=''movimenti magazzino'' ' +
    'where ' +
    'xxr.progressivo=:progressivo and ' +
    'xxr.situazione=''evaso'' ' +
    'order by xxr.riga,ltm.progressivo ';

end;

procedure TA31PICKIN.FormShow(Sender: TObject);
begin
  inherited;

  if parametri_extra_programma_chiamato[29] > 0 then
  begin
    tabella_righe.locate('riga', parametri_extra_programma_chiamato[29], []);
  end;

end;

procedure TA31PICKIN.esegui_query_righe;
begin
  inherited;

  (v_griglia_righe.columns.items[4].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columns.items[5].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columns.items[6].field as tfloatfield).displayformat := formato_display_quantita_zero;
  (v_griglia_righe.columns.items[7].field as tfloatfield).displayformat := formato_display_quantita_zero;

end;

procedure TA31PICKIN.before_post;
var
  errore, prosegui: boolean;
begin
  inherited;
  prosegui := true;

end;

procedure TA31PICKIN.before_post_righe;
var
  errore, prosegui: boolean;
begin
  prosegui := true;
end;

procedure TA31PICKIN.after_post_righe;
begin
  genera_lotti;
end;

procedure TA31PICKIN.data_controllo;
begin
  if v_data_controllo.date < v_data_registrazione.date then
  begin
    messaggio(000, 'Data controllo documento acquisto non valida.');
    v_data_controllo.setfocus;
  end;

end;

procedure TA31PICKIN.frn_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, frn, v_frn_codice, blocco, tab_control, tab_pagina1, tabella);
end;

procedure TA31PICKIN.art_codice_controllo(blocco: boolean);
var
  pr: TA31ARCCL;
  prf: TA31ARF;
  premuto_esc: boolean;
begin
  if controllo then
  begin
    if tabella_righe.fieldbyname('art_codice').asstring <> '' then
    begin
      read_tabella(art, tabella_righe.fieldbyname('art_codice').asstring);
      if art.eof then
      begin
        // merce interna // codice cliente
        if v_frn_codice.text = promau_frn_codice then
        begin
          read_tabella(arcl, tabella_righe.fieldbyname('art_codice').asstring);
          if (arcl.recordcount > 1) then
          begin
            pr := TA31ARCCL.create(nil);
            pr.codice_articolo_cliente := tabella_righe.fieldbyname('art_codice').asstring;
            pr.ShowModal;
            premuto_esc := pr.tasto_esc;
            codice_archivio := pr.codice;
            pr.free;
            if premuto_esc then
            begin
              exit;
            end;

          end
          else
          begin
            codice_archivio := arcl.fieldbyname('art_codice').asstring;
          end;
        end
        else if v_frn_codice.text <> promau_frn_codice then
        begin
          read_tabella(arf, vararrayof([tabella.fieldbyname('frn_codice').asstring, tabella_righe.fieldbyname('art_codice').asstring]));
          if (arf.recordcount > 1) then
          begin
            prf := TA31ARF.create(nil);
            prf.frn_codice := tabella.fieldbyname('frn_codice').asstring;
            prf.codice_articolo_fornitore := tabella_righe.fieldbyname('art_codice').asstring;
            prf.ShowModal;
            premuto_esc := prf.tasto_esc;
            codice_archivio := prf.codice;
            prf.free;
            if premuto_esc then
            begin
              exit;
            end;

          end
          else
          begin
            codice_archivio := arf.fieldbyname('art_codice').asstring;
          end;
        end;

        if tabella_edit(tabella_righe) then
        begin
          tabella_righe.fieldbyname('art_codice').asstring := codice_archivio;
        end;
      end;
    end;
  end;
  tabella_controllo(false, art, v_art_codice, blocco, nil, nil, tabella_righe);
end;

procedure TA31PICKIN.quantita_controllo;
begin
  if v_quantita.Value <= 0 then
  begin
    messaggio(000, 'quantità articolo non valida.');
    v_quantita.setfocus;
    abort;
  end;

end;

procedure TA31PICKIN.nr_colli_controllo;
begin
  if v_nr_colli.Value <= 0 then
  begin
    messaggio(000, 'nr colli non valido.');
    v_nr_colli.setfocus;
    abort;
  end;

end;

procedure TA31PICKIN.cerca_documento;
var
  riga: integer;
begin
  if controllo then
  begin
    if v_progressivo_acq.value = 0 then
    begin
      messaggio(000, 'Progressivo documento non valido.');
      v_progressivo_acq.setfocus;
      exit;
    end;

    try
      try
        pickt.close;
        pickt.parambyname('progressivo').asfloat := v_progressivo_acq.value;
        pickt.open;
        if not pickt.eof then
        begin
          exit;
        end;

        if tabella_righe.recordcount = 0 then
        begin

          xxt.close;
          xxt.parambyname('progressivo').asfloat := v_progressivo_acq.value;
          xxt.open;

          if xxt.eof then
          begin
            messaggio(000, 'Documento progressivo [' + v_progressivo_acq.text + '] non valido.');
            v_progressivo_acq.setfocus;
            abort;
            exit;

          end;

          tabella.fieldbyname('data_registrazione').asdatetime := xxt.fieldbyname('data_registrazione').asdatetime;
          tabella.fieldbyname('data_documento').asdatetime := xxt.fieldbyname('data_documento').asdatetime;
          tabella.fieldbyname('numero_documento').asinteger := xxt.fieldbyname('numero_documento').asinteger;
          tabella.fieldbyname('numero_documento_alfa').asstring := xxt.fieldbyname('numero_documento_alfa').asstring;
          tabella.fieldbyname('serie_documento').asstring := xxt.fieldbyname('serie_documento').asstring;
          tabella.fieldbyname('frn_codice').asstring := xxt.fieldbyname('frn_codice').asstring;
          tabella.post;

          tabella_righe.DisableControls;

          riga := 0;
          xxr.close;
          xxr.parambyname('progressivo').asfloat := v_progressivo_acq.value;
          xxr.open;
          while not xxr.eof do
          begin
            riga := riga + 10;
            tabella_righe.append;
            tabella_righe.fieldbyname('progressivo').asinteger := tabella.fieldbyname('progressivo').asinteger;
            tabella_righe.fieldbyname('riga').asinteger := riga;
            tabella_righe.fieldbyname('lotto').asstring := xxr.fieldbyname('lotto').asstring;
            tabella_righe.fieldbyname('art_codice').asstring := xxr.fieldbyname('art_codice').asstring;
            tabella_righe.fieldbyname('descrizione1').asstring := xxr.fieldbyname('descrizione1').asstring;
            tabella_righe.fieldbyname('descrizione2').asstring := xxr.fieldbyname('descrizione2').asstring;
            tabella_righe.fieldbyname('quantita').asfloat := xxr.fieldbyname('quantita').asfloat;
            tabella_righe.fieldbyname('numero_colli').asfloat := xxr.fieldbyname('numero_colli').asfloat;
            tabella_righe.fieldbyname('tma_codice').asstring := xxr.fieldbyname('tma_codice').asstring;
            tabella_righe.fieldbyname('documento_origine').asstring := xxr.fieldbyname('documento_origine').asstring;
            tabella_righe.fieldbyname('doc_progressivo_origine').asfloat := xxr.fieldbyname('doc_progressivo_origine').asfloat;
            tabella_righe.fieldbyname('doc_riga_origine').asfloat := xxr.fieldbyname('doc_riga_origine').asfloat;
            tabella_righe.fieldbyname('doc_riga_origine').asfloat := xxr.fieldbyname('doc_riga_origine').asfloat;
            tabella_righe.fieldbyname('riga_acq').asinteger := xxr.fieldbyname('riga').asinteger;
            tabella_righe.fieldbyname('progressivo_mmt').asfloat := xxr.fieldbyname('progressivo_mmr').asfloat;
            tabella_righe.fieldbyname('riga_mmt').asfloat := xxr.fieldbyname('riga_mmr').asfloat;
            tabella_righe.post;

            xxr.next;
          end;

          tabella_righe.enablecontrols;

          tabella_righe.first;
          messaggio(100, 'Documento importato');

          v_griglia_righe.setfocus;
        end;

      except
        on e: exception do
        begin
          messaggio(000, 'errore ' + e.message);
        end;
      end;
    finally
      pickt.close;
      xxt.close;
      xxr.close;
    end;
  end;
end;

procedure TA31PICKIN.abilita_timer1;
begin
  timer1.enabled := true;
end;

procedure TA31PICKIN.assegna_query_tipo_documento;
begin
  xxr.close;
  xxr.sql.clear;
  xxr.sql.add(testo_sql_xxr);

  xxt.close;
  xxt.sql.clear;
  xxt.sql.add(testo_sql_xxt);
  if v_tipo_documento.text = 'ddt' then
  begin
    xxt.sql.text := strtran(xxt.sql.text, 'xxt', 'dat', true);
    xxr.sql.text := strtran(xxr.sql.text, 'xxr', 'dar', true);

    v_progressivo_acq.lookcollprogram := 'GESDAT';
    v_progressivo_acq.lookcolltable := 'DAT';
    v_progressivo_acq.lookcollvisname := 'DAT';
  end
  else
  begin
    xxt.sql.text := strtran(xxt.sql.text, 'xxt', 'fat', true);
    xxr.sql.text := strtran(xxr.sql.text, 'xxr', 'far', true);

    v_progressivo_acq.lookcollprogram := 'GESFATA';
    if v_tipo_documento.text = 'fattura immediata' then
    begin
      v_progressivo_acq.lookcollprogram := 'GESFADA';
    end;
    v_progressivo_acq.lookcolltable := 'FAT';
    v_progressivo_acq.lookcollvisname := 'FAT';
  end;

end;

procedure TA31PICKIN.genera_lotti;
var
  lotto: string;
  tma_codice: string;
  collo: integer;
  quantita: double;
  quantita_collo: double;
  totale_qta: double;

begin
  timer1.enabled := false;

  tma_codice := 'P4';
  totale_qta := 0;
  if tabella_righe.fieldbyname('numero_colli').asinteger > 0 then
  begin

    try
      try
        apri_transazione;

        for collo := 1 to tabella_righe.fieldbyname('numero_colli').asinteger do
        begin

          if collo < tabella_righe.fieldbyname('numero_colli').asinteger then
          begin
            crea_etichetta(v_art_codice.text, lotto, tma_codice, quantita_collo);
          end
          else
          begin
            quantita_collo := tabella_righe.fieldbyname('quantita').asinteger - totale_qta;
            crea_etichetta(v_art_codice.text, lotto, tma_codice, quantita_collo);
          end;
          totale_qta := totale_qta + quantita_collo;
        end;

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
    end;
  end;
end;

procedure TA31PICKIN.crea_etichetta(art_codice: string; var lotto: string; tma_codice: string; quantita: double);
var
  progressivo: integer;
begin
  progressivo := 0;
  while progressivo = 0 do
  begin
    progressivo := arc.setta_valore_generatore(tmyconnection_go(a31etichette.connection), 'A31ETICHETTE_PROGRESSIVO');
  end;

  (*
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
  *)
  a31etichette.close;
  a31etichette.parambyname('progressivo').asinteger := progressivo;
  a31etichette.open;
  if a31etichette.eof then
  begin
    a31etichette.append;
    a31etichette.fieldbyname('progressivo').asinteger := progressivo;
    a31etichette.fieldbyname('cli_codice').asstring := ''; //query.fieldbyname('cli_codice').asstring;
    a31etichette.fieldbyname('art_codice').asstring := art_codice;
    a31etichette.fieldbyname('tma_codice').asstring := tma_codice;
    a31etichette.fieldbyname('data_produzione').asdatetime := tabella_righe.fieldbyname('data_produzione').asdatetime;
    a31etichette.fieldbyname('codice_articolo_cliente').asstring := ''; //query.fieldbyname('codice_articolo_cliente').asstring;
    a31etichette.fieldbyname('quantita').asfloat := quantita;
    a31etichette.fieldbyname('numero_etichette').asfloat := 1;
    a31etichette.fieldbyname('documento_origine').asstring := 'a31pickin';
    a31etichette.fieldbyname('doc_progressivo_origine').asinteger := 0; //xxr.fieldbyname('progressivo').asinteger;
    a31etichette.fieldbyname('doc_riga_origine').asinteger := 0; //xxr.fieldbyname('riga').asinteger;
    a31etichette.post;
  end;

  a31etichette.close;
  a31etichette.open;
  lotto := a31etichette.fieldbyname('lot_codice').asstring;

end;

procedure TA31PICKIN.crea_lotto(frn_codice, art_codice, lotto, tma_codice: string; quantita: double);
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

(*
  try
  pr := ta31pickin01.create(nil);
  pr.codice := tabella_righe.fieldbyname('art_codice').asstring;
  pr.progressivo := tabella_righe.fieldbyname('progressivo').asinteger;
  pr.riga := tabella_righe.fieldbyname('riga').asinteger;
  pr.numero_colli := tabella_righe.fieldbyname('numero_colli').asinteger;
  pr.quantita := tabella_righe.fieldbyname('quantita').asinteger;
  pr.quantita_rilevata := tabella_righe.fieldbyname('quantita_rilevata').asinteger;
  pr.showmodal;

  if pr.premuto_escape then
  begin
  exit;
  end;

  finally

  if not pr.premuto_escape then
  begin
  tabella_righe.refresh;
  abilita_timer1;
  end;
  pr.free;
  end;
*)

procedure TA31PICKIN.esegui_documento_origine;
begin
  timer1.enabled := false;
  if tabella.fieldbyname('tipo_documento').asstring = 'ddt' then
  begin
    esegui_programma('GESDDTA', tabella.fieldbyname('progressivo_acq').asinteger, true);
  end
  else if tabella.fieldbyname('tipo_documento').asstring = 'fattura immediata' then
  begin
    esegui_programma('GESFATA', tabella.fieldbyname('progressivo_acq').asinteger, true);
  end
  else if tabella.fieldbyname('tipo_documento').asstring = 'fattura differita' then
  begin
    esegui_programma('GESFADA', tabella.fieldbyname('progressivo_acq').asinteger, true);
  end;
  timer1.enabled := true;
end;

procedure TA31PICKIN.esegui_documento_magazzino;
begin
  esegui_programma('GESMOV', mmr.fieldbyname('progressivo').asinteger, true);
end;

procedure TA31PICKIN.esegui_lotti;
var
  codice_passato: variant;
begin

  codice_passato := vararrayof(['a31pickin', tabella_righe.fieldbyname('progressivo').asfloat, tabella_righe.fieldbyname('riga').asinteger, 0]);
  esegui_carltm(codice_passato, trunc(v_numero_documento.value),
    'F', v_frn_codice.text, v_art_codice.text, tabella_righe.fieldbyname('tma_codice').asstring, tabella.fieldbyname('tmo_codice').asstring,
    tabella.fieldbyname('esistenza').asstring, v_serie_documento.text, v_data_documento.date, v_data_documento.date,
    tabella.fieldbyname('tmo_descrizione').asstring, tabella_righe.fieldbyname('quantita').asfloat, 0, 0,
    '', false, esiste_righe);

end;

procedure TA31PICKIN.cancella_lotto;
begin

  query.close;
  query.sql.clear;
  query.sql.add('select * from ltm ');
  query.sql.add('where ');
  query.sql.add('art_codice=:art_codice and');
  query.sql.add('documento_origine=:documento_origine and');
  query.sql.add('doc_progressivo_origine=:doc_progressivo_origine and');
  query.sql.add('doc_riga_origine=:doc_riga_origine ');
  query.sql.add('order by lotto');
  query.parambyname('art_codice').asstring := tabella_righe.fieldbyname('art_codice').asstring;
  query.parambyname('documento_origine').asstring := 'movimenti magazzino';
  query.parambyname('doc_progressivo_origine').asinteger := mmr.fieldbyname('progressivo').asinteger;
  query.parambyname('doc_riga_origine').asinteger := mmr.fieldbyname('riga').asinteger;
  query.open;

  if not query.eof then
  begin

    while not query.eof do
    begin

      tabella_edit(tabella_righe);
      tabella_righe.fieldbyname('quantita_rilevata').asfloat := tabella_righe.fieldbyname('quantita_rilevata').asfloat - query.fieldbyname('quantita').asfloat;
      tabella_righe.post;

      del_ltm.parambyname('progressivo').asinteger := query.fieldbyname('progressivo').asinteger;
      del_ltm.execsql;

      query.next;
    end;

    query.close;

    if tabella_righe.fieldbyname('quantita_rilevata').asfloat < 0 then
    begin
      tabella_edit(tabella_righe);
      tabella_righe.fieldbyname('quantita_rilevata').asfloat := 0;
      tabella_righe.fieldbyname('flag_controllato').asstring := 'no';
      tabella_righe.post;
    end;

    messaggio(100, 'Quantità rilevata cancellata.');
  end
  else
  begin
    if tabella_righe.fieldbyname('quantita_rilevata').asfloat > 0 then
    begin
      tabella_edit(tabella_righe);
      tabella_righe.fieldbyname('quantita_rilevata').asfloat := 0;
      tabella_righe.fieldbyname('flag_controllato').asstring := 'no';
      tabella_righe.post;
    end;

  end;

end;

function TA31PICKIN.assegna_riga: integer;
begin
  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select coalesce(max(riga),0) nr ');
  query_righe.sql.add('from a31pickr');
  query_righe.sql.add('where');
  query_righe.sql.add('a31pickr.progressivo=:progressivo');
  query_righe.parambyname('progressivo').asfloat := tabella.fieldbyname('progressivo').asinteger;
  query_righe.open;
  result := query_righe.fieldbyname('nr').asinteger + 10;
  query_righe.close;
end;

initialization

registerclass(tA31PICKIN);

end.
