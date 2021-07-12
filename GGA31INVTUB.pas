unit GGA31INVTUB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, RzDBEdit, raizeedit_go,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, Vcl.ExtCtrls, RzPanel, cxCalc,
  cxGridDBTableView, cxCurrencyEdit, cxTL, DMARC, Vcl.Buttons, RzSpnEdt,
  ZZMOVMAG, Vcl.DBCtrls;

type
  TA31INVTUB = class(TFORMBASE)
    pannello_base: TRzPanel;
    tsu1: TMyQuery_go;
    tsu1_ds: TMyDataSource;
    tsu2_ds: TMyDataSource;
    tsu2: TMyQuery_go;
    RzLabel3: TRzLabel;
    v_lotto: trzedit_go;
    RzLabel4: TRzLabel;
    v_art_codice: trzedit_go;
    v_lot_descrizione: trzdbeditdescrizione_go;
    v_art_descrizione1: trzdbeditdescrizione_go;
    lot: TMyQuery_go;
    lot_ds: TMyDataSource;
    v_lot_esistente: TCheckBox;
    art: TMyQuery_go;
    art_ds: TMyDataSource;
    RzPanel2: TRzPanel;
    v_griglia2Liv1: TcxGridLevel;
    v_griglia2: TcxGrid;
    ubm: TMyQuery_go;
    ubm_ds: TMyDataSource;
    ltm: TMyQuery_go;
    ltm_ds: TMyDataSource;
    ubma: TMyQuery_go;
    v_griglia2DBart_descrizione1: TcxGridDBColumn;
    v_griglia2DBBD: TcxGridDBBandedTableView;
    v_griglia2DBBDart_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDart_descrizione: TcxGridDBBandedColumn;
    v_griglia2DBBDtcm_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDtub_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDqta_teorica: TcxGridDBBandedColumn;
    v_griglia3: TcxGrid;
    v_griglia3Liv1: TcxGridLevel;
    v_griglia3DBBD: TcxGridDBBandedTableView;
    v_griglia3DBBDlotto: TcxGridDBBandedColumn;
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
    TreeListStyleSheetUserFormat1: TcxTreeListStyleSheet;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    TreeListStyleSheetSpruce: TcxTreeListStyleSheet;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    query_inv: TMyQuery_go;
    pannello_codice: TRzPanel;
    Label1: TRzLabel;
    v_codice_01: trzedit_go;
    RzLabel1: TRzLabel;
    v_codice_02: trzedit_go;
    RzLabel5: TRzLabel;
    RzLabel7: TRzLabel;
    v_codice_04: trzedit_go;
    RzLabel9: TRzLabel;
    v_codice_05: trzedit_go;
    v_tsu5_descrizione: trzdbeditdescrizione_go;
    RzLabel10: TRzLabel;
    v_tsu4_descrizione: trzdbeditdescrizione_go;
    v_tsu3_descrizione: trzdbeditdescrizione_go;
    RzLabel6: TRzLabel;
    v_tsu2_descrizione: trzdbeditdescrizione_go;
    v_tsu1_descrizione: trzdbeditdescrizione_go;
    Label15: TRzLabel;
    v_codice_03: trzedit_go;
    RzLabel2: TRzLabel;
    RzLabel8: TRzLabel;
    tsu3: TMyQuery_go;
    tsu3_ds: TMyDataSource;
    tsu4: TMyQuery_go;
    tsu4_ds: TMyDataSource;
    tsu5: TMyQuery_go;
    tsu5_ds: TMyDataSource;
    v_griglia: TcxGrid;
    v_grigliaDBBD: TcxGridDBBandedTableView;
    v_grigliaDBBDarea: TcxGridDBBandedColumn;
    v_grigliaDBBDcorr: TcxGridDBBandedColumn;
    v_grigliaDBBDripiano: TcxGridDBBandedColumn;
    v_grigliaLevel1: TcxGridLevel;
    v_grigliaDBBDcolonna: TcxGridDBBandedColumn;
    v_grigliaDBBDcella: TcxGridDBBandedColumn;
    tool_elabora: TToolButton;
    v_grigliaDBBDtub_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDqta_rilevata: TcxGridDBBandedColumn;
    v_griglia2DBBDrettifica: TcxGridDBBandedColumn;
    v_grigliaDBBDtub_descrione: TcxGridDBBandedColumn;
    v_grigliaDBBDtsu1_descrizione: TcxGridDBBandedColumn;
    v_grigliaDBBDtsu2_descrizione2: TcxGridDBBandedColumn;
    v_grigliaDBBDts3_descrizione: TcxGridDBBandedColumn;
    v_grigliaDBBDtsu4_descrizione: TcxGridDBBandedColumn;
    v_grigliaDBBDtsu5_descrizione: TcxGridDBBandedColumn;
    RzPanel1: TRzPanel;
    v_lettore: TRzRapidFireButton;
    v_esegui_rettifica: TRzRapidFireButton;
    RzRapidFireButton1: TRzRapidFireButton;
    RzRapidFireButton2: TRzRapidFireButton;
    v_selart: TRzRapidFireButton;
    v_diversi: TRzRapidFireButton;
    RzPanel3: TRzPanel;
    pannello_lotto: TRzPanel;
    v_lot_codice: trzdbedit_go;
    v_griglia3DBBDqta_rilevata: TcxGridDBBandedColumn;
    v_griglia3DBBDqta_teorica: TcxGridDBBandedColumn;
    v_qta_teorica: trzdbnumericedit_go;
    v_qta_rilevata: trzdbnumericedit_go;
    tool_nuovo: TToolButton;
    tool_salva: TToolButton;
    tool_cancella: TToolButton;
    v_rilevato: TDBCheckBox;
    RzLabel11: TRzLabel;
    v_tma_codice: trzedit_go;
    v_tma_descrizione: trzdbeditdescrizione_go;
    RzLabel12: TRzLabel;
    tma: TMyQuery_go;
    tma_ds: TMyDataSource;
    tub: TMyQuery_go;
    tmo: TMyQuery_go;
    procedure v_codice_02Exit(Sender: TObject);
    procedure v_codice_02Enter(Sender: TObject);
    procedure v_codice_01Exit(Sender: TObject);
    procedure v_lottoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_griglia2Enter(Sender: TObject);
    procedure v_griglia3Enter(Sender: TObject);
    procedure pannello_baseEnter(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure ubmaAfterScroll(DataSet: TDataSet);
    procedure v_grigliaDBBDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure v_codice_03Enter(Sender: TObject);
    procedure pannello_codiceExit(Sender: TObject);
    procedure v_codice_03Exit(Sender: TObject);
    procedure v_codice_04Enter(Sender: TObject);
    procedure v_codice_04Exit(Sender: TObject);
    procedure v_codice_05Exit(Sender: TObject);
    procedure v_codice_05Enter(Sender: TObject);
    procedure v_grigliaEnter(Sender: TObject);
    procedure tool_elaboraClick(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
    procedure ubmAfterScroll(DataSet: TDataSet);
    procedure v_griglia3Exit(Sender: TObject);
    procedure ltm_dsStateChange(Sender: TObject);
    procedure pannello_lottoEnter(Sender: TObject);
    procedure tool_nuovoClick(Sender: TObject);
    procedure v_griglia2Exit(Sender: TObject);
    procedure v_griglia2DBBDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_esegui_rettificaClick(Sender: TObject);
  protected
    movmag: tmovmag;
    tmo_codice_rettifica_inventario: string;
    progressivo_mmt: integer;

    esistenza_rettifica_sql: string;

    pannello_attivo: string;
    flag_ricerca_lotto: boolean;
    flag_ricerca_articolo: boolean;
    flag_quantita_diversa: boolean;
    procedure get_codice_archivio; override;
    procedure set_codice_archivio; override;

    procedure codice_01_controllo(blocco: boolean);
    procedure codice_02_controllo(blocco: boolean);
    procedure codice_03_controllo(blocco: boolean);
    procedure codice_04_controllo(blocco: boolean);
    procedure codice_05_controllo(blocco: boolean);
    procedure codice_ubicazione_controllo(blocco: boolean);
    procedure art_codice_controllo(blocco: boolean);

    procedure assegna_tma_codice;

    procedure esegui_esistenza;
    procedure esegui_lotti(art_codice, tub_codice: string);
    procedure cerca_lotti_articolo(art_codice: string);

    procedure azzera_archivio_inventario;
    procedure inserisci_lotto(art_codice, tub_codice: string);
    procedure esegui_rettifica;
  public
  end;

type
  TcxGridTableDataCellViewInfoAccess = class(TcxGridTableDataCellViewInfo);
  TcxCustomGridCellPainterAccess = class(TcxCustomGridCellPainter);

var
  A31INVTUB: TA31INVTUB;

implementation

{$r *.dfm}


uses GGIMPALF;

procedure TA31INVTUB.get_codice_archivio;
begin
  inherited;
  if self.ActiveControl = v_codice_01 then
  begin
    v_codice_01.text := codice_archivio[0];
  end
  else if self.ActiveControl = v_codice_02 then
  begin
    v_codice_02.text := codice_archivio[1];
  end
  else if self.ActiveControl = v_codice_03 then
  begin
    v_codice_03.text := codice_archivio[2];
  end
  else if self.ActiveControl = v_codice_04 then
  begin
    v_codice_04.text := codice_archivio[3];
  end
  else if self.ActiveControl = v_codice_05 then
  begin
    v_codice_05.text := codice_archivio[4];
  end;

end;

procedure TA31INVTUB.ltm_dsStateChange(Sender: TObject);
begin
  inherited;
  if ltm.state = dsbrowse then
  begin
    tool_salva.enabled := false;
  end
  else
  begin
    tool_salva.enabled := true;
    tool_cancella.enabled := true;
  end;

end;

procedure TA31INVTUB.pannello_baseEnter(Sender: TObject);
begin
  inherited;
  parte_attiva := 'pannello_base';
end;

procedure TA31INVTUB.pannello_codiceExit(Sender: TObject);
begin
  inherited;
  codice_ubicazione_controllo(true);
end;

procedure TA31INVTUB.pannello_lottoEnter(Sender: TObject);
begin
  inherited;
  pannello_attivo := pannello_lotto.name;
end;

procedure TA31INVTUB.RzRapidFireButton1Click(Sender: TObject);
begin
  inherited;
  azzera_archivio_inventario;
end;

procedure TA31INVTUB.set_codice_archivio;
begin
  codice_archivio := vararrayof(['', '', '', '', '']);

  if self.ActiveControl = v_codice_01 then
  begin
    codice_archivio[0] := v_codice_01.text;
  end
  else if self.ActiveControl = v_codice_02 then
  begin
    codice_archivio[1] := v_codice_02.text;
  end
  else if self.ActiveControl = v_codice_03 then
  begin
    codice_archivio[2] := v_codice_02.text;
  end
  else if self.ActiveControl = v_codice_04 then
  begin
    codice_archivio[3] := v_codice_04.text;
  end
  else if self.ActiveControl = v_codice_05 then
  begin
    codice_archivio[4] := v_codice_05.text;
  end;

end;

procedure TA31INVTUB.tool_elaboraClick(Sender: TObject);
begin
  inherited;
  esegui_esistenza;
end;

procedure TA31INVTUB.tool_nuovoClick(Sender: TObject);
begin
  inherited;
  inserisci_lotto(ubm.fieldbyname('art_codice').asstring, ubm.fieldbyname('tub_codice').asstring);
end;

procedure TA31INVTUB.ubmaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if query.active then
  begin
    query.locate('codice_01;codice_02;codice_03;codice_04;codice_05', VarArrayOf([dataset.fieldbyname('a31tsu_codice_01').asstring, dataset.fieldbyname('a31tsu_codice_02').asstring, dataset.fieldbyname('a31tsu_codice_03').asstring]), []);
  end;

end;

procedure TA31INVTUB.ubmAfterScroll(DataSet: TDataSet);
begin
  inherited;
  esegui_lotti(dataset.fieldbyname('art_codice').asstring, dataset.fieldbyname('tub_codice').asstring);
end;

procedure TA31INVTUB.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
  cerca_lotti_articolo(v_art_codice.text);
end;

procedure TA31INVTUB.v_codice_01Exit(Sender: TObject);
begin
  inherited;
  codice_01_controllo(true);
  assegna_tma_codice;
end;

procedure TA31INVTUB.v_codice_02Enter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_codice_01.text;
end;

procedure TA31INVTUB.v_codice_02Exit(Sender: TObject);
begin
  inherited;
  codice_02_controllo(true);
end;

procedure TA31INVTUB.v_codice_03Enter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_codice_01.text;
  visarc_filtro_02 := v_codice_02.text;
end;

procedure TA31INVTUB.v_codice_03Exit(Sender: TObject);
begin
  inherited;
  codice_03_controllo(true);
end;

procedure TA31INVTUB.v_codice_04Enter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_codice_01.text;
  visarc_filtro_02 := v_codice_02.text;
  visarc_filtro_03 := v_codice_03.text;
end;

procedure TA31INVTUB.v_codice_04Exit(Sender: TObject);
begin
  inherited;
  codice_04_controllo(true);
end;

procedure TA31INVTUB.v_codice_05Enter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_codice_01.text;
  visarc_filtro_02 := v_codice_02.text;
  visarc_filtro_03 := v_codice_03.text;
end;

procedure TA31INVTUB.v_codice_05Exit(Sender: TObject);
begin
  inherited;
  codice_05_controllo(true);
end;

procedure TA31INVTUB.v_esegui_rettificaClick(Sender: TObject);
begin
  inherited;
  esegui_rettifica;
end;

procedure TA31INVTUB.v_griglia2DBBDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (Shift = []) and (key = VK_RETURN) then
  begin
    inserisci_lotto(ubm.fieldbyname('art_codice').asstring, ubm.fieldbyname('tub_codice').asstring);
  end
  else
  begin
    inherited;
  end;

end;

procedure TA31INVTUB.v_griglia2Enter(Sender: TObject);
begin
  inherited;
  pannello_attivo := v_griglia2.Name;
  tool_nuovo.enabled := true;
end;

procedure TA31INVTUB.v_griglia2Exit(Sender: TObject);
begin
  inherited;
  tool_nuovo.enabled := true;
end;

procedure TA31INVTUB.v_griglia3Enter(Sender: TObject);
begin
  inherited;
  pannello_attivo := v_griglia3.Name;
  tool_nuovo.enabled := true;
end;

procedure TA31INVTUB.v_griglia3Exit(Sender: TObject);
begin
  inherited;
  tool_nuovo.enabled := false;
end;

procedure TA31INVTUB.v_grigliaDBBDCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AviewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  ABorders: TcxBorders;
  APainter: TcxCustomGridCellPainterAccess;
begin
  inherited;
  ABorders := cxBordersAll;

  with TcxGridTableDataCellViewInfoAccess(AViewInfo) do
  begin
    APainter := TcxCustomGridCellPainterAccess(GetPainterClass.Create(ACanvas, AViewInfo));
  end;

  with APainter do
  begin
    DrawContent;
  end;

  ACanvas.FrameRect(AViewInfo.Bounds, clblack, 1, ABorders);

  acanvas.brush.color := clwhite;
  acanvas.font.color := clBlack;

  ADone := true;
end;

procedure TA31INVTUB.v_grigliaEnter(Sender: TObject);
begin
  inherited;
  pannello_attivo := v_griglia.Name;
end;

procedure TA31INVTUB.v_lottoEnter(Sender: TObject);
begin
  inherited;
  lot.close;
  lot.sql.clear;
  lot.sql.add('select ');
  lot.sql.add('lot.lotto, ');
  lot.sql.add('lot.art_codice, ');
  lot.sql.add('art.descrizione1 art_descrizione1, ');
  lot.sql.add('art.tcm_codice ');
  lot.sql.add('from lot ');
  lot.sql.add('inner join art on art.codice=lot.art_codice ');
  lot.sql.add('where ');
  lot.sql.add('lotto=:lotto ');
  if v_lot_esistente.checked then
  begin
    lot.sql.add('and lot.eisstenza >0 ');
  end;

end;

procedure TA31INVTUB.FormCreate(Sender: TObject);
begin
  inherited;
  movmag := tmovmag.create(arc.arcdit, ditta);

  flag_quantita_diversa := false;

  v_griglia2DBBD.BeginUpdate;
  v_griglia2DBBD.Styles.StyleSheet := cxStyleRepository1.StyleSheets[1];
  v_griglia2DBBD.EndUpdate;

  v_griglia3DBBD.BeginUpdate;
  v_griglia3DBBD.Styles.StyleSheet := cxStyleRepository1.StyleSheets[2];
  v_griglia3DBBD.EndUpdate;

end;

procedure TA31INVTUB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (shift = [ssCtrl]) and (key = VK_RETURN) then
  begin

    if pannello_attivo = 'v_griglia' then
    begin
      v_griglia2.setfocus;
    end
    else if pannello_attivo = 'v_griglia2' then
    begin
      v_griglia3.setfocus;
    end
    else if pannello_attivo = 'v_griglia3' then
    begin
      v_codice_01.setfocus;
    end
    else if pannello_attivo = 'pannello_lotto' then
    begin
      v_griglia3.setfocus;
    end
  end
  else
  begin
    inherited;
  end;

end;

procedure TA31INVTUB.codice_01_controllo(blocco: boolean);
begin
  tabella_controllo(false, tsu1, v_codice_01, blocco, nil, nil, nil);
end;

procedure TA31INVTUB.codice_02_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsu2, v_codice_01, v_codice_02, blocco, nil, nil, nil);
end;

procedure TA31INVTUB.codice_03_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsu3, v_codice_01, v_codice_02, v_codice_03, blocco, nil, nil, nil);
end;

procedure TA31INVTUB.codice_04_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsu4, v_codice_01, v_codice_02, v_codice_03, v_codice_04, blocco, nil, nil, nil);
end;

procedure TA31INVTUB.codice_05_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsu5, v_codice_01, v_codice_02, v_codice_03, v_codice_04, v_codice_05, blocco, nil, nil, nil);
end;

procedure TA31INVTUB.codice_ubicazione_controllo(blocco: boolean);
begin
  codice_01_controllo(blocco);
  codice_02_controllo(blocco);
  codice_03_controllo(blocco);
  codice_04_controllo(blocco);
  codice_05_controllo(blocco);
end;

procedure TA31INVTUB.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, art, v_art_codice, blocco, nil, nil, nil);
end;

procedure TA31INVTUB.assegna_tma_codice;
begin
  tub.close;
  tub.parambyname('codice_01').asstring := v_codice_01.text;
  tub.open;

  v_tma_codice.text := tub.fieldbyname('tma_codice').asstring;
end;

procedure TA31INVTUB.esegui_esistenza;
begin
  screen.cursor := crhourglass;

  query_inv.close;
  query_inv.sql.clear;
  query_inv.sql.add('select coalesce(count(*),0) nr_record from a31invubm ');
  query_inv.open;

  if query_inv.fieldbyname('nr_record').asinteger = 0 then
  begin

    query_inv.close;
    query_inv.sql.clear;
    query_inv.sql.add('insert into a31invubm ( utn_codice, codice_01, codice_02, codice_03, codice_04, codice_05, tub_codice, art_codice, descrizione, quantita_teorica ) ');
    query_inv.sql.add('select '''', tub.a31tsu_codice_01, tub.a31tsu_codice_02, tub.a31tsu_codice_03, tub.a31tsu_codice_04, tub.a31tsu_codice_05, v_ubi.tub_codice, v_ubi.art_codice, art.descrizione1, v_ubi.quantita ');
    query_inv.sql.add('from v_a31_promau_art_codice_ubi v_ubi ');
    query_inv.sql.add('inner join art on art.codice=v_ubi.art_codice ');
    query_inv.sql.add('inner join tub on tub.codice=v_ubi.tub_codice ');
    query_inv.sql.add('ORDER BY 1,2,3,4,5,6');
    query_inv.execsql;

    query_inv.close;
    query_inv.sql.clear;
    query_inv.sql.add('insert into a31invlot ( utn_codice, art_codice, tub_codice, lotto, quantita_teorica ) ');
    query_inv.sql.add('select '''', ubm.art_codice, ubm.tub_codice, ltm.lotto, sum(ltm.quantita_entrate-quantita_uscite) quantita ');
    query_inv.sql.add('from ltm ');
    query_inv.sql.add('inner join ubm on ubm.doc_progressivo_origine=ltm.doc_progressivo_origine and  ');
    query_inv.sql.add('                  ubm.doc_riga_origine=ltm.doc_riga_origine and ubm.documento_origine=ltm.documento_origine  ');
    query_inv.sql.add('group by 1,2,3 ');
    query_inv.sql.add('order by 1,2,3 ');
    query_inv.execsql;

  end;

  query.close;
  query.sql.clear;
  query.sql.add('select distinct   ');
  query.sql.add('invubm.codice_01, ');
  query.sql.add('invubm.codice_02, ');
  query.sql.add('invubm.codice_03, ');
  query.sql.add('invubm.codice_04, ');
  query.sql.add('invubm.codice_05, ');
  query.sql.add('tsu1.descrizione tsu_descrizione1, ');
  query.sql.add('if(tsu2.codice_02=''''  and tsu2.codice_03=''''  and tsu2.codice_04='''' and tsu2.codice_05='''','''', tsu2.descrizione) tsu_descrizione2, ');
  query.sql.add('if(tsu3.codice_03=''''  and tsu3.codice_04=''''  and tsu3.codice_05='''','''', tsu3.descrizione) tsu_descrizione3, ');
  query.sql.add('if(tsu4.codice_04=''''  and tsu4.codice_05='''', '''', tsu4.descrizione) tsu_descrizione4, ');
  query.sql.add('if(tsu5.codice_05='''','''', tsu5.descrizione) tsu_descrizione5, ');
  query.sql.add('invubm.tub_codice ');
  query.sql.add('from a31invubm invubm ');
  query.sql.add('inner join a31tsu tsu1 on tsu1.codice_01=invubm.codice_01 and tsu1.codice_02='''' and tsu1.codice_03='''' and tsu1.codice_04='''' and tsu1.codice_05=''''  ');
  query.sql.add('inner join a31tsu tsu2 on tsu2.codice_01=invubm.codice_01 and tsu2.codice_02=invubm.codice_02 and tsu2.codice_03='''' and tsu2.codice_04='''' and tsu1.codice_05=''''  ');
  query.sql.add('inner join a31tsu tsu3 on tsu3.codice_01=invubm.codice_01 and tsu3.codice_02=invubm.codice_02 and tsu3.codice_03=invubm.codice_03  and tsu3.codice_04='''' and tsu3.codice_05=''''  ');
  query.sql.add('inner join a31tsu tsu4 on tsu4.codice_01=invubm.codice_01 and tsu4.codice_02=invubm.codice_02 and tsu4.codice_03=invubm.codice_03  and tsu4.codice_04=invubm.codice_04 and tsu4.codice_05=''''  ');
  query.sql.add('inner join a31tsu tsu5 on tsu5.codice_01=invubm.codice_01 and tsu5.codice_02=invubm.codice_02 and tsu5.codice_03=invubm.codice_03  and tsu5.codice_04=invubm.codice_04 and tsu5.codice_05=invubm.codice_05  ');
  query.sql.add('where ');
  query.sql.add('invubm.codice_01=:codice_01 ');

  if v_codice_02.text <> '' then
  begin
    query.sql.add('and invubm.codice_02=:codice_02 ');
  end;
  if v_codice_03.text <> '' then
  begin
    query.sql.add('and invubm.codice_03=:codice_03 and ');
  end;
  if v_codice_04.text <> '' then
  begin
    query.sql.add('and invubm.codice_04=:codice_04 and ');
  end;
  if v_codice_05.text <> '' then
  begin
    query.sql.add('and invubm.codice_05=:codice_05  ');
  end;

  query.sql.add('ORDER BY 1,2,3,4,5,6 ');

  query.parambyname('codice_01').asstring := v_codice_01.text;

  if v_codice_02.text <> '' then
  begin
    query.parambyname('codice_02').asstring := v_codice_02.text;
  end;
  if v_codice_03.text <> '' then
  begin
    query.parambyname('codice_03').asstring := v_codice_03.text;
  end;
  if v_codice_04.text <> '' then
  begin
    query.parambyname('codice_04').asstring := v_codice_04.text;
  end;
  if v_codice_05.text <> '' then
  begin
    query.parambyname('codice_05').asstring := v_codice_05.text;
  end;

  query.open;
  ubm.open;

  screen.cursor := cursore;

  v_griglia.setfocus;
end;

//
procedure TA31INVTUB.esegui_lotti(art_codice, tub_codice: string);
begin
  ltm.close;
  ltm.parambyname('art_codice').asstring := art_codice;
  ltm.parambyname('tub_codice').asstring := tub_codice;
  ltm.open;

end;

procedure TA31INVTUB.cerca_lotti_articolo(art_codice: string);
begin
  if art_codice = '' then
  begin
    flag_ricerca_articolo := false;

    ubm_ds.dataset := ubm;

  end
  else
  begin
    flag_ricerca_articolo := true;

    ubm_ds.dataset := ubma;
    ubma.close;
    ubma.parambyname('art_codice').asstring := v_art_codice.text;
    ubma.open;

    esegui_lotti(art_codice, '');
  end;

  esegui_esistenza;

  query.locate('codice_01;codice_02;codice_03', VarArrayOf([ubma.fieldbyname('a31tsu_codice_01').asstring, ubma.fieldbyname('a31tsu_codice_02').asstring, ubma.fieldbyname('a31tsu_codice_03').asstring]), []);
end;

procedure TA31INVTUB.azzera_archivio_inventario;
begin
  if messaggio(300, 'azzera archivio inventario ') = 1 then
  begin
    screen.cursor := crhourglass;

    // lotti
    query_inv.close;
    query_inv.sql.clear;
    query_inv.sql.add('delete from a31invlot');
    query_inv.execsql;

    // ubicazioni
    query_inv.close;
    query_inv.sql.clear;
    query_inv.sql.add('delete from a31invubm');
    query_inv.execsql;

    screen.cursor := cursore;
    messaggio(100, 'azzeramento effettuato');

    esegui_esistenza;
  end;
end;

procedure TA31INVTUB.inserisci_lotto(art_codice, tub_codice: string);
begin
  ltm.append;
  ltm.fieldbyname('art_codice').asstring := art_codice;
  ltm.fieldbyname('tub_codice').asstring := tub_codice;
  ltm.post;

  v_lot_codice.setfocus;
end;

procedure TA31INVTUB.esegui_rettifica;
var
  pr: timpalf;
  alla_data: tdate;
  prosegui, flag_testata: boolean;
  qta_esistenza: double;

  tipo_movimento: string;
  numero_riga: integer;
  data_ok, premuto_escape: boolean;
begin
  inherited;

  if esercizio_chiuso_magazzino = 'si' then
  begin
    messaggio(000, 'l''esercizio è stato dichiarato chiuso');
  end
  else
  begin
    read_tabella(tmo, tmo_codice_rettifica_inventario);
    if tmo.fieldbyname('lotti').asstring <> 'si' then
    begin
      messaggio(200, 'il codice rettifica inventario [' + tmo_codice_rettifica_inventario + ']' + slinebreak +
        'impostato in anagrafica ditta' + slinebreak +
        'non gestisce i lotti/matricole');
    end
    else
    begin
      parte_attiva := '';

      tabella.close;
      tabella.sql.text := esistenza_rettifica_sql;
      tabella.parambyname('tma_codice').asstring := v_tma_codice.text;
      tabella.open;

      if tabella.recordcount = 0 then
      begin
        messaggio(200, 'non sono presenti dati da rettificare');
      end
      else
      begin
        premuto_escape := false;
        data_ok := false;
        while not data_ok do
        begin
          pr := timpalf.create(nil);
          pr.v_form_caption := 'Data rettifica inventario';
          pr.v_descrizione_caption := 'data registrazione';
          pr.v_width_campo := 10;
          if date > data_bilancio then
          begin
            pr.valore_passato := data_bilancio;
          end
          else
          begin
            pr.valore_passato := date;
          end;
          pr.tipo_campo := 'data';
          pr.showmodal;
          if pr.premuto_escape then
          begin
            premuto_escape := true;
            data_ok := true;
          end
          else
          begin
            premuto_escape := false;
            alla_data := pr.valore_passato;
            if (alla_data < data_inizio) or (alla_data > data_bilancio) then
            begin
              messaggio(000, 'data non compresa nell''esercizio fiscale');
            end
            else
            begin
              data_ok := true;
            end;
          end;
          freeandnil(pr);
        end;

        if not premuto_escape then
        begin
          flag_testata := false;

          apri_transazione;
          try
            try
              while not tabella.eof do
              begin
                if tabella.fieldbyname('esistenza').asfloat <> tabella.fieldbyname('esistenza_teorica').asfloat then
                begin
                  // testata movimento
                  if not flag_testata then
                  begin
                    movmag.tmo_codice := tmo_codice_rettifica_inventario;
                    movmag.tma_codice := tabella.fieldbyname('tma_codice').asstring;
                    movmag.tmo_codice_collegato := '';
                    movmag.tma_codice_collegato := '';
                    movmag.data_registrazione := alla_data;
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
                    movmag.descrizione := '';
                    movmag.opt_progressivo := 0;
                    movmag.olt_progressivo := 0;
                    movmag.progressivo_collegato_dsb := 0;
                    movmag.doc_riga_origine := 0;
                    movmag.doc_riga_dettaglio_origine := 0;
                    movmag.doc_riga_dettaglio_ult_origine := 0;
                    movmag.crea_mmt;

                    progressivo_mmt := movmag.progressivo_mmt;

                    flag_testata := true;
                  end;

                  movmag.progressivo := 0;
                  movmag.riga := 0;
                  movmag.art_codice := tabella.fieldbyname('art_codice').asstring;
                  movmag.tma_codice_mmr := tabella.fieldbyname('tma_codice').asstring;

                  movmag.descrizione_mmr := 'Quantità rilevata: ' + tabella.fieldbyname('esistenza').asstring;

                  movmag.quantita := tabella.fieldbyname('esistenza').asfloat - tabella.fieldbyname('esistenza_teorica').asfloat;
                  movmag.prezzo := 0;
                  movmag.tsm_codice := '';
                  movmag.tsm_codice_art := '';
                  movmag.importo_sconto := 0;
                  movmag.importo := 0;
                  movmag.importo_euro := 0;
                  movmag.tipo_movimento := 'normale';
                  movmag.importo_spese := 0;
                  movmag.importo_spese_euro := 0;
                  movmag.opt_tipo_articolo := '';
                  movmag.olt_tipo_articolo := '';

                  movmag.crea_mmr;

                end;

                tabella.delete;
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
          end;
        end;
      end;
    end;
  end;

  close;
end;

initialization

registerclass(tA31INVTUB);

end.
