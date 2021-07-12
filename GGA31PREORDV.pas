unit GGA31PREORDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxTL, cxClasses, RzEdit, raizeedit_go, RzDBEdit,
  Vcl.StdCtrls, Vcl.Mask, RzLabel, Vcl.ExtCtrls, RzPanel, RzButton;

type
  TA31PREORDV = class(TFORMBASE)
    panello_parametri: TRzPanel;
    Label1: TRzLabel;
    v_cli_codice: trzedit_go;
    Label15: TRzLabel;
    v_cli_descrizione: trzdbeditdescrizione_go;
    Label6: TRzLabel;
    v_alla_data_consegna: trzdatetimeedit_go;
    cxStyleRepository1: TcxStyleRepository;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    RzPanel3: TRzPanel;
    v_griglia_righe: TcxGrid;
    v_griglia_righeDB: TcxGridDBTableView;
    v_griglia_righeLiv1: TcxGridLevel;
    query_righe_ds: TMyDataSource;
    query_righe: TMyQuery_go;
    cli: TMyQuery_go;
    cli_ds: TMyDataSource;
    v_conferma: TRzBitBtn;
    v_griglia_righeDBart_codice: TcxGridDBColumn;
    v_griglia_righeDBdata_consegna: TcxGridDBColumn;
    v_griglia_righeDBcodice_articolo_cliente: TcxGridDBColumn;
    v_griglia_righeDBart_descrizione1: TcxGridDBColumn;
    v_griglia_righeDBda_consegnare: TcxGridDBColumn;
    v_griglia_righeDBP4: TcxGridDBColumn;
    v_griglia_righeDBP6: TcxGridDBColumn;
    v_griglia_righeDBin_spedizione: TcxGridDBColumn;
    v_griglia_righeDBqta_approntata: TcxGridDBColumn;
    cxLime: TcxStyle;
    tool_cruart: TToolButton;
    cxYellow: TcxStyle;
    RzLabel1: TRzLabel;
    v_indirizzo: trzedit_go;
    RzLabel2: TRzLabel;
    v_ind_descrizione1: trzdbeditdescrizione_go;
    RzLabel3: TRzLabel;
    v_art_codice: trzedit_go;
    RzLabel4: TRzLabel;
    v_art_descrizione1: trzdbeditdescrizione_go;
    ind: TMyQuery_go;
    ind_ds: TMyDataSource;
    art: TMyQuery_go;
    art_ds: TMyDataSource;
    RzLabel5: TRzLabel;
    rzdbeditdescrizione_go1: trzdbeditdescrizione_go;
    RzLabel6: TRzLabel;
    v_griglia_righeDBColumn1: TcxGridDBColumn;
    v_griglia_righeDBColumn2: TcxGridDBColumn;
    v_griglia_righeDBColumn3: TcxGridDBColumn;
    RzLabel7: TRzLabel;
    v_tdo_codice: trzedit_go;
    RzLabel8: TRzLabel;
    v_tdo_descrizione: trzdbeditdescrizione_go;
    tdo_ds: TMyDataSource;
    tdo: TMyQuery_go;
    procedure panello_parametriExit(Sender: TObject);
    procedure v_cli_codiceExit(Sender: TObject);
    procedure v_alla_data_consegnaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure panello_parametriEnter(Sender: TObject);
    procedure v_griglia_righeDBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_confermaClick(Sender: TObject);
    procedure v_griglia_righeDBStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure tool_cruartClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_indirizzoEnter(Sender: TObject);
    procedure v_indirizzoExit(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
  protected
    prima_volta: boolean;

    procedure get_codice_archivio; override;
    procedure set_codice_archivio; override;
    procedure controllo_campi; override;

    procedure assegna_data_consegna;

    procedure cli_codice_controllo(blocco: boolean);
    procedure indirizzo_controllo(blocco: boolean);
    procedure art_codice_controllo(blocco: boolean);
    procedure data_consegna_controllo;

    procedure apri_query_righe;
    procedure assegna_approntato(codice: variant; quantita: double);
    procedure esegui_cruart;
  public

  end;

var
  A31PREORDV: TA31PREORDV;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31PREORDV.get_codice_archivio;
begin
  inherited;
  //
end;

procedure TA31PREORDV.set_codice_archivio;
begin
  inherited;
  if screen.activecontrol = v_indirizzo then
  begin
    codice_archivio := vararrayof([v_cli_codice.text, v_indirizzo.text]);
  end
  else if screen.activecontrol = v_tdo_codice then
  begin
    codice_archivio := v_tdo_codice.text;
  end;

end;

procedure TA31PREORDV.panello_parametriEnter(Sender: TObject);
begin
  inherited;
  prima_volta := true;
end;

procedure TA31PREORDV.panello_parametriExit(Sender: TObject);
begin
  inherited;
  controllo_campi;
end;

procedure TA31PREORDV.tool_cruartClick(Sender: TObject);
begin
  inherited;
  esegui_cruart;
end;

procedure TA31PREORDV.v_alla_data_consegnaExit(Sender: TObject);
begin
  inherited;
  data_consegna_controllo;
end;

procedure TA31PREORDV.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
end;

procedure TA31PREORDV.v_cli_codiceExit(Sender: TObject);
begin
  inherited;
  cli_codice_controllo(true);
end;

procedure TA31PREORDV.v_griglia_righeDBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) and (shift = []) then
  begin
    codice := vararrayof([query_righe.fieldbyname('progressivo').asinteger, query_righe.fieldbyname('riga').asinteger]);

    assegna_approntato(codice, query_righe.fieldbyname('da_consegnare').asfloat);
    (*

      if query_codice.fieldbyname('disponibilita_approntato').asfloat <= 0 then
      begin
      if messaggio(300, 'non c''è disponibilità per l''approntamento' + #13 + 'conferma per approntare comunque tutta la quantità in ordine') = 1 then
      begin
      assegna_approntato(query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat, false);
      end;
      end
      else
      begin
      if query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat <
      query_codice.fieldbyname('disponibilita_approntato').asfloat then
      begin
      assegna_approntato(query_codice.fieldbyname('quantita').asfloat - query_codice.fieldbyname('quantita_approntata').asfloat, false);
      end

    *)
  end
  else
  begin
    inherited;
  end;

end;

procedure TA31PREORDV.v_griglia_righeDBStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if AItem <> nil then
  begin
    aStyle := cxStyle12;
    if AItem.Caption = 'id_origine' then
    begin

      if AItem.EditValue = 1 then
      begin
        aStyle := cxLime;
      end;
    end;

  end;

end;

procedure TA31PREORDV.v_indirizzoEnter(Sender: TObject);
begin
  inherited;
  variato_stringa := v_indirizzo.text;

  visarc_filtro_01 := '';
  visarc_filtro_02 := '';
  visarc_filtro_03 := '';

  visarc_filtro_01 := v_cli_codice.text;
end;

procedure TA31PREORDV.v_indirizzoExit(Sender: TObject);
begin
  inherited;
  indirizzo_controllo(true);
end;

procedure TA31PREORDV.cli_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, cli, v_cli_codice, blocco, nil, nil, nil);
end;

procedure TA31PREORDV.indirizzo_controllo(blocco: boolean);
begin
  tabella_controllo(true, ind, v_indirizzo, blocco, nil, nil, nil);
end;

procedure TA31PREORDV.data_consegna_controllo;
begin
  if v_alla_data_consegna.date < date then
  begin
    v_alla_data_consegna.setfocus;
    abort;
  end;
end;

procedure TA31PREORDV.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, art, v_art_codice, blocco, nil, nil, nil);
end;

procedure TA31PREORDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_f5) then
  begin
    esegui_programma('GESART', query.fieldbyname('art_codice').asstring, true);
  end
  else if (key = vk_f6) then
  begin
    esegui_cruart;
  end
  else
  begin
    inherited;
  end;
end;

procedure TA31PREORDV.FormShow(Sender: TObject);
begin
  inherited;
  assegna_data_consegna;
end;

procedure TA31PREORDV.assegna_data_consegna;
begin
  v_alla_data_consegna.date := date + 7;
end;

procedure TA31PREORDV.controllo_campi;
begin
  cli_codice_controllo(true);
  indirizzo_controllo(true);
  art_codice_controllo(true);
  data_consegna_controllo;
end;

procedure TA31PREORDV.apri_query_righe;
begin

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('delete from arc_ordinamento.preordv');
  query_righe.sql.add('where');
  query_righe.sql.add('utn_codice=:utn_codice');
  query_righe.parambyname('utn_codice').asstring := utente;
  query_righe.execsql;

  query_righe.sql.clear;
  query_righe.sql.add('insert into arc_ordinamento.evaordv( utn_codice,progressivo, riga, tdo_codice,numero_documento, data_documento, serie_documento, cli_codice, cli_descrizione1, cli_citta,');
  query_righe.sql.add('id_origine, art_codice, data_consegna, codice_articolo_cliente, art_descrizione1, art_descrizione2, ');
  query_righe.sql.add('quantita, quantita_approntata, a31_mag_p4, a31_mag_p6, a31_mag_out, indirizzo, descrizione1, descrizione2) ');
  query_righe.sql.add('select');
  query_righe.sql.add(':utn_codice utn_codice  ,');
  query_righe.sql.add('ovr.progressivo  ,');
  query_righe.sql.add('ovr.riga,         ');
  query_righe.sql.add('ovt.tdo_codice,');
  query_righe.sql.add('ovt.numero_documento ,');
  query_righe.sql.add('ovt.data_documento ,');
  query_righe.sql.add('ovt.serie_documento ,');
  query_righe.sql.add('ovt.cli_codice, ');
  query_righe.sql.add('nom.descrizione1, ');
  query_righe.sql.add('nom.citta, ');
  query_righe.sql.add('ovr.id_origine,   ');
  query_righe.sql.add('ovr.art_codice,    ');
  query_righe.sql.add('ovr.data_consegna, ');
  query_righe.sql.add('arcl.codice_articolo_cliente,');
  query_righe.sql.add('ovr.descrizione1 art_descrizione1,');
  query_righe.sql.add('ovr.descrizione2 art_descrizione2,');
  query_righe.sql.add('(ovr.tum_quantita_base-ovr.quantita_evasa) da_consegnare, ');
  query_righe.sql.add('ovr.doc_quantita_approntata,');
  query_righe.sql.add('F_A31_PROMAU_ARTICOLI_IN_SPEDIZIONE (ovr.art_codice, ''P4'') P4,');
  query_righe.sql.add('F_A31_PROMAU_ARTICOLI_IN_SPEDIZIONE (ovr.art_codice, ''P6'') P6, ');
  query_righe.sql.add('F_A31_PROMAU_ARTICOLI_IN_SPEDIZIONE (ovr.art_codice, ''SPED'' ) in_spedizione,');
  query_righe.sql.add('ovt.indirizzo,');
  query_righe.sql.add('ovt.descrizione1,');
  query_righe.sql.add('ovt.citta');
  query_righe.sql.add('from ovr ');
  query_righe.sql.add('inner join ovt on ovt.progressivo=ovr.progressivo ');
  query_righe.sql.add('inner join nom on nom.codice=ovt.cli_codice ');
  query_righe.sql.add('inner join art on art.codice=ovr.art_codice ');
  query_righe.sql.add('left join arcl on arcl.cli_codice=ovt.cli_codice and arcl.art_codice=ovr.art_codice');
  query_righe.sql.add('where');
  query_righe.sql.add('ovt.cli_codice=:cli_codice and');
  if v_tdo_codice.text <> '' then
  begin
    query_righe.sql.add('ovt.tdo_codice=:tdo_codice and ');
  end;

  if v_art_codice.text <> '' then
  begin
    query_righe.sql.add('ovr.art_codice=:art_codice and ');
  end;
  query_righe.sql.add('ovr.data_consegna<=:data_consegna and');
  query_righe.sql.add('ovr.situazione IN (''inserito'', ''evaso parziale'') and');
  query_righe.sql.add('art.tipo_articolo =''fiscale'' ');
  query_righe.sql.add('order by ovr.data_consegna, ovt.cli_codice');

  query_righe.parambyname('utn_codice').asstring := utente;
  query_righe.parambyname('cli_codice').asstring := v_cli_codice.text;
  if v_tdo_codice.text <> '' then
  begin
    query_righe.parambyname('tdo_codice').asstring := v_tdo_codice.text;
  end;

  if v_art_codice.text <> '' then
  begin
    query_righe.parambyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  end;
  query_righe.parambyname('data_consegna').asdatetime := v_alla_data_consegna.date;
  query_righe.execsql;

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select * from arc_ordinamento.evaordv');
  query_righe.sql.add('where');
  query_righe.sql.add('utn_codice=:utn_codice');
  query_righe.sql.add('order by data_consegna, cli_codice');
  query_righe.parambyname('utn_codice').asstring := utente;
  query_righe.open;
end;

procedure TA31PREORDV.v_confermaClick(Sender: TObject);
begin
  inherited;
  controllo_campi;
  prima_volta := false;
  self.windowstate := wsmaximized;
  self.update;

  screen.cursor := crHourGlass;
  apri_query_righe;
  screen.cursor := crDefault;

end;

procedure TA31PREORDV.assegna_approntato(codice: variant; quantita: double);
var
  segno: double;
begin
  read_tabella(tabella, codice);
  tabella_edit(tabella);

  if tabella.fieldbyname('id_origine').asinteger = 0 then
  begin
    segno := 1;
  end
  else
  begin
    segno := -1;
  end;

  if quantita <> 0 then
  begin
    if (quantita > tabella.fieldbyname('quantita').asfloat - tabella.fieldbyname('quantita_approntata').asfloat) then
    begin
      quantita := tabella.fieldbyname('quantita').asfloat - tabella.fieldbyname('quantita_approntata').asfloat;
    end;
    if segno = 1 then
    begin
      tabella.fieldbyname('id_origine').asinteger := 1;
      tabella.fieldbyname('doc_quantita_approntata').asfloat := (quantita * segno);
    end
    else
    begin
      tabella.fieldbyname('id_origine').asinteger := 0;
      tabella.fieldbyname('doc_quantita_approntata').asfloat := 0;;
    end;

    tabella.fieldbyname('quantita_approntata').asfloat := tabella.fieldbyname('quantita_approntata').asfloat + (quantita * segno);
    if arrotonda(tabella.fieldbyname('quantita_approntata').asfloat, 0) >= quantita then
    begin
      tabella.fieldbyname('saldo_acconto_approntato').asstring := 'saldo';
      tabella.fieldbyname('evadere_approntato').asstring := 'si';
    end
    else
    begin
      tabella.fieldbyname('saldo_acconto_approntato').asstring := 'acconto';
      tabella.fieldbyname('evadere_approntato').asstring := 'no';
    end;
  end;
  tabella.post;
end;

procedure TA31PREORDV.esegui_cruart;
begin
  esegui_programma('CRUART', query.fieldbyname('art_codice').asstring, true);
end;

initialization

registerclass(ta31preordv);

end.
  end.
