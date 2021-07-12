unit GGA31CRUTUB;

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
  cxGridDBTableView, cxCurrencyEdit, cxTL, DMARC;

type
  TA31CRUTUB = class(TFORMBASE)
    pannello_base: TRzPanel;
    Label1: TRzLabel;
    Label15: TRzLabel;
    v_codice_01: trzedit_go;
    v_tsu1_descrizione: trzdbeditdescrizione_go;
    v_tsu2_descrizione: trzdbeditdescrizione_go;
    v_codice_02: trzedit_go;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    tsu1: TMyQuery_go;
    tsu1_ds: TMyDataSource;
    tsu2_ds: TMyDataSource;
    tsu2: TMyQuery_go;
    v_grigliaLevel1: TcxGridLevel;
    v_griglia: TcxGrid;
    v_grigliaDBBD: TcxGridDBBandedTableView;
    RzLabel3: TRzLabel;
    v_lotto: trzedit_go;
    RzLabel4: TRzLabel;
    v_art_codice: trzedit_go;
    v_grigliaDBBDripiano: TcxGridDBBandedColumn;
    v_grigliaDBBDtsu_descrizione3: TcxGridDBBandedColumn;
    v_lot_descrizione: trzdbeditdescrizione_go;
    v_art_descrizione1: trzdbeditdescrizione_go;
    v_grigliaDBBDCol_01_01: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_01_02: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_01_03: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_02_01: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_02_02: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_02_03: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_03_01: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_03_02: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_03_03: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_04_01: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_04_02: TcxGridDBBandedColumn;
    v_grigliaDBBDCol_04_03: TcxGridDBBandedColumn;
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
    v_griglia2DBBDart_descrizione1: TcxGridDBBandedColumn;
    v_griglia2DBBDtcm_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDtub_codice: TcxGridDBBandedColumn;
    v_griglia2DBBDquantita: TcxGridDBBandedColumn;
    v_griglia3: TcxGrid;
    v_griglia3Liv1: TcxGridLevel;
    v_griglia3DBBD: TcxGridDBBandedTableView;
    v_griglia3DBBDlotto: TcxGridDBBandedColumn;
    v_griglia3DBBDquantita: TcxGridDBBandedColumn;
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
    v_grigliaDBBDarea: TcxGridDBBandedColumn;
    v_grigliaDBBDcorr: TcxGridDBBandedColumn;
    querya: TMyQuery_go;
    lotto_ubi: TMyQuery_go;
    v_griglia3DBBDdata_produzione: TcxGridDBBandedColumn;
    procedure v_codice_02Exit(Sender: TObject);
    procedure v_codice_02Enter(Sender: TObject);
    procedure v_codice_01Exit(Sender: TObject);
    procedure v_lottoEnter(Sender: TObject);
    procedure queryAfterScroll(DataSet: TDataSet);
    procedure v_grigliaDBBDFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure ubmAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure v_grigliaEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v_griglia2Enter(Sender: TObject);
    procedure v_griglia3Enter(Sender: TObject);
    procedure pannello_baseEnter(Sender: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure ubmaAfterScroll(DataSet: TDataSet);
    procedure v_grigliaDBBDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure v_art_codiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_lottoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v_lottoExit(Sender: TObject);
    procedure pannello_baseExit(Sender: TObject);
  protected
    pannello_attivo: string;
    flag_ricerca_lotto: boolean;
    flag_ricerca_articolo: boolean;
    procedure get_codice_archivio; override;
    procedure set_codice_archivio; override;
    procedure codice_01_controllo(blocco: boolean);
    procedure codice_02_controllo(blocco: boolean);
    procedure lotto_codice_controllo(blocco: boolean);
    procedure art_codice_controllo(blocco: boolean);
    procedure apri_query;
    procedure apri_ubm(colonna: integer);
    procedure apri_lotti(art_codice: string);
    procedure cerca_lotto(lotto: string);
    procedure cerca_lotti_articolo(art_codice: string);
  public
  end;

type
  TcxGridTableDataCellViewInfoAccess = class(TcxGridTableDataCellViewInfo);
  TcxCustomGridCellPainterAccess = class(TcxCustomGridCellPainter);

var
  A31CRUTUB: TA31CRUTUB;

implementation

{$r *.dfm}


procedure TA31CRUTUB.get_codice_archivio;
begin
  inherited;
  if self.ActiveControl = v_codice_01 then
  begin
    v_codice_01.text := codice_archivio[0];
  end
  else if self.ActiveControl = v_codice_02 then
  begin
    v_codice_02.text := codice_archivio[1];
  end;

end;

procedure TA31CRUTUB.pannello_baseEnter(Sender: TObject);
begin
  inherited;
  parte_attiva := 'pannello_base';
end;

procedure TA31CRUTUB.pannello_baseExit(Sender: TObject);
begin
  inherited;
  apri_query;
end;

procedure TA31CRUTUB.queryAfterScroll(DataSet: TDataSet);
begin
  inherited;
  apri_ubm(v_grigliaDBBD.Controller.FocusedColumnIndex);
end;

procedure TA31CRUTUB.set_codice_archivio;
begin
  codice_archivio := vararrayof(['', '', '', '', '']);

  if self.ActiveControl = v_codice_01 then
  begin
    codice_archivio[0] := v_codice_01.text;
  end
  else if self.ActiveControl = v_codice_02 then
  begin
    codice_archivio[1] := v_codice_02.text;
  end;
  inherited;
end;

procedure TA31CRUTUB.ubmaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if query.active then
  begin
    query.locate('codice_01;codice_02;codice_03', VarArrayOf([dataset.fieldbyname('a31tsu_codice_01').asstring, dataset.fieldbyname('a31tsu_codice_02').asstring, dataset.fieldbyname('a31tsu_codice_03').asstring]), []);
  end;

end;

procedure TA31CRUTUB.ubmAfterScroll(DataSet: TDataSet);
begin
  inherited;
  apri_lotti(dataset.fieldbyname('art_codice').asstring);
end;

procedure TA31CRUTUB.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  art_codice_controllo(true);
  cerca_lotti_articolo(v_art_codice.text);
end;

procedure TA31CRUTUB.v_art_codiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    art_codice_controllo(true);
    cerca_lotti_articolo(v_art_codice.text);
  end;
end;

procedure TA31CRUTUB.v_codice_01Exit(Sender: TObject);
begin
  inherited;
  codice_01_controllo(true);
end;

procedure TA31CRUTUB.v_codice_02Enter(Sender: TObject);
begin
  inherited;
  visarc_filtro_01 := v_codice_01.text;
end;

procedure TA31CRUTUB.v_codice_02Exit(Sender: TObject);
begin
  inherited;
  codice_02_controllo(true);
end;

procedure TA31CRUTUB.v_griglia2Enter(Sender: TObject);
begin
  inherited;
  pannello_attivo := v_griglia2.Name;
end;

procedure TA31CRUTUB.v_griglia3Enter(Sender: TObject);
begin
  inherited;
  pannello_attivo := v_griglia3.Name;
end;

procedure TA31CRUTUB.v_grigliaDBBDCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AviewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  ABorders: TcxBorders;
  APainter: TcxCustomGridCellPainterAccess;
begin
  inherited;

  if aViewInfo <> nil then
  begin
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

    if (aViewInfo.item.Index >= 4) and (aViewInfo.item.Index <= 16) then
    begin
      if aViewInfo.Value > 0 then
      begin
        acanvas.brush.color := clRed;
        acanvas.font.color := clYellow;
        acanvas.font.Style := [fsbold];
      end
      else
      begin
        acanvas.brush.color := clwhite;
        acanvas.font.color := clBlack;
      end;
    end
    else
    begin
      acanvas.brush.color := clwhite;
      acanvas.font.color := clBlack;
    end;

    ADone := true;

  end;
end;

procedure TA31CRUTUB.v_grigliaDBBDFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  if AFocusedItem.Index >= 4 then
  begin
    apri_ubm(AFocusedItem.Index);
  end
end;

procedure TA31CRUTUB.v_grigliaEnter(Sender: TObject);
begin
  inherited;
  pannello_attivo := v_griglia.Name;
end;

procedure TA31CRUTUB.v_lottoEnter(Sender: TObject);
begin
  inherited;
  lot.close;
  lot.sql.clear;
  lot.sql.add('select ');
  lot.sql.add('lot.lotto, ');
  lot.sql.add('lot.art_codice, ');
  lot.sql.add('lot.descrizione, ');
  lot.sql.add('art.descrizione1 art_descrizione1, ');
  lot.sql.add('art.tcm_codice ');
  lot.sql.add('from lot ');
  lot.sql.add('inner join art on art.codice=lot.art_codice ');
  lot.sql.add('where ');
  lot.sql.add('lotto=:lotto ');
  if v_lot_esistente.checked then
  begin
    lot.sql.add('and lot.esistenza >0 ');
  end;

end;

procedure TA31CRUTUB.v_lottoExit(Sender: TObject);
begin
  inherited;
  lotto_codice_controllo(true);
end;

procedure TA31CRUTUB.v_lottoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = VK_RETURN then
  begin
    cerca_lotto(v_lotto.text);
  end;

end;

procedure TA31CRUTUB.FormCreate(Sender: TObject);
begin
  inherited;
  v_grigliaDBBD.BeginUpdate;
  v_grigliaDBBD.Styles.StyleSheet := cxStyleRepository1.StyleSheets[0];
  v_grigliaDBBD.EndUpdate;

  v_griglia2DBBD.BeginUpdate;
  v_griglia2DBBD.Styles.StyleSheet := cxStyleRepository1.StyleSheets[1];
  v_griglia2DBBD.EndUpdate;

  v_griglia3DBBD.BeginUpdate;
  v_griglia3DBBD.Styles.StyleSheet := cxStyleRepository1.StyleSheets[2];
  v_griglia3DBBD.EndUpdate;

end;

procedure TA31CRUTUB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
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
  end
  else
  begin
    inherited;
  end;

end;

procedure TA31CRUTUB.codice_01_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsu1, v_codice_01, blocco, nil, nil, nil);
end;

procedure TA31CRUTUB.codice_02_controllo(blocco: boolean);
begin
  tabella_controllo(true, tsu2, v_codice_01, v_codice_02, blocco, nil, nil, nil);
end;

procedure TA31CRUTUB.lotto_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, lot, v_lotto, blocco, nil, nil, nil);
end;

procedure TA31CRUTUB.art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, art, v_art_codice, blocco, nil, nil, nil);
end;

procedure TA31CRUTUB.apri_query;
begin
  codice_01_controllo(false);
  codice_02_controllo(false);

  screen.cursor := crhourglass;
  query.close;
  query.sql.clear;
  query.sql.add('SELECT ');
  query.sql.add('tsu.codice_01, ');
  query.sql.add('tsu.codice_02, ');
  query.sql.add('tsu.codice_03, ');
  query.sql.add('tsu1.descrizione tsu_descrizione1, ');
  query.sql.add('if(tsu2.codice_02=''''  and tsu2.codice_03=''''  and tsu2.codice_04='''' and tsu2.codice_05='''', '''', tsu2.descrizione) tsu_descrizione2, ');
  query.sql.add('if(tsu3.codice_03=''''  and tsu3.codice_04=''''  and tsu3.codice_05='''', '''', tsu3.descrizione) tsu_descrizione3, ');
  query.sql.add('if(tsu4.codice_04=''''  and tsu4.codice_05='''', '''', tsu4.descrizione) tsu_descrizione4, ');
  query.sql.add('if(tsu5.codice_05='''', '''', tsu5.descrizione) tsu_descrizione5, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 0, 1) COL_01_01, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 0, 2) COL_01_02, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 0, 3) COL_01_03, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 1, 1) COL_02_01, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 1, 2) COL_02_02, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 1, 3) COL_02_03, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 2, 1) COL_03_01, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 2, 2) COL_03_02, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 2, 3) COL_03_03, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 3, 1) COL_04_01, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 3, 2) COL_04_02, ');
  query.sql.add('F_A31_PROMAU_TSU_QTA_UBI( :art_codice, tsu.codice_01, tsu.codice_02,tsu.codice_03, 3, 3) COL_04_03 ');
  query.sql.add('from a31tsu tsu  ');
  query.sql.add('INNER JOIN a31tsu tsu1 ON tsu1.codice_01=tsu.codice_01 and tsu1.codice_02='''' and tsu1.codice_03='''' and tsu1.codice_04='''' and tsu1.codice_05=''''  ');
  query.sql.add('INNER JOIN a31tsu tsu2 ON tsu2.codice_01=tsu.codice_01 and tsu2.codice_02=tsu.codice_02 and tsu2.codice_03='''' and tsu2.codice_04='''' and tsu1.codice_05=''''  ');
  query.sql.add('INNER JOIN a31tsu tsu3 ON tsu3.codice_01=tsu.codice_01 and tsu3.codice_02=tsu.codice_02 and tsu3.codice_03=tsu.codice_03  and tsu3.codice_04='''' and tsu3.codice_05=''''  ');
  query.sql.add('INNER JOIN a31tsu tsu4 ON tsu4.codice_01=tsu.codice_01 and tsu4.codice_02=tsu.codice_02 and tsu4.codice_03=tsu.codice_03  and tsu4.codice_04=tsu.codice_04 and tsu4.codice_05=''''  ');
  query.sql.add('INNER JOIN a31tsu tsu5 ON tsu5.codice_01=tsu.codice_01 and tsu5.codice_02=tsu.codice_02 and tsu5.codice_03=tsu.codice_03  and tsu5.codice_04=tsu.codice_04 and tsu5.codice_05=tsu.codice_05  ');
  query.sql.add('WHERE ');
  if v_codice_01.text <> '' then
  begin
    query.sql.add('tsu.codice_01=:codice_01 and ');
  end
  else
  begin
    query.sql.add('tsu.codice_01<> '''' and ');
  end;
  if v_codice_02.text <> '' then
  begin
    query.sql.add('tsu.codice_02=:codice_02 and ');
  end
  else
  begin
    query.sql.add('tsu.codice_02<> '''' and ');
  end;
  query.sql.add('tsu.codice_03<> '''' and ');
  query.sql.add('tsu.codice_04= '''' and ');
  query.sql.add('tsu.codice_05= '''' ');

  query.sql.add('ORDER BY 1,2,3 ');

  query.parambyname('art_codice').asstring := v_art_codice.text;
  if v_codice_01.text <> '' then
  begin
    query.parambyname('codice_01').asstring := v_codice_01.text;
  end;

  if v_codice_02.text <> '' then
  begin
    query.parambyname('codice_02').asstring := v_codice_02.text;
  end;
  query.open;
  screen.cursor := cursore;

  v_griglia.setfocus;

  if flag_ricerca_articolo then
  begin

  end
  else
  begin
    v_grigliaDBBD.Controller.FocusedRecordIndex := 0;
    v_grigliaDBBD.Controller.FocusedColumnIndex := 4;
  end;

end;

//
procedure TA31CRUTUB.apri_ubm(colonna: integer);
var
  codice_04, codice_05: integer;

begin
  codice_04 := 0;
  codice_05 := 0;

  if (colonna >= 4) and (not flag_ricerca_articolo) then
  begin
    if colonna = 4 then
    begin
      codice_04 := 0;
      codice_05 := 1;
    end
    else if colonna = 5 then
    begin
      codice_04 := 0;
      codice_05 := 2;
    end
    else if colonna = 6 then
    begin
      codice_04 := 0;
      codice_05 := 3;
    end
    else if colonna = 7 then
    begin
      codice_04 := 1;
      codice_05 := 1;
    end
    else if colonna = 8 then
    begin
      codice_04 := 1;
      codice_05 := 2;
    end
    else if colonna = 9 then
    begin
      codice_04 := 1;
      codice_05 := 3;
    end
    else if colonna = 10 then
    begin
      codice_04 := 2;
      codice_05 := 1;
    end
    else if colonna = 11 then
    begin
      codice_04 := 2;
      codice_05 := 3;
    end
    else if colonna = 12 then
    begin
      codice_04 := 2;
      codice_05 := 3;
    end
    else if colonna = 13 then
    begin
      codice_04 := 3;
      codice_05 := 1;
    end
    else if colonna = 14 then
    begin
      codice_04 := 3;
      codice_05 := 2;
    end
    else if colonna = 15 then
    begin
      codice_04 := 3;
      codice_05 := 3;
    end;

    ubm.close;
    ubm.parambyname('codice_01').asstring := query.fieldbyname('codice_01').asstring;
    ubm.parambyname('codice_02').asstring := query.fieldbyname('codice_02').asstring;
    ubm.parambyname('codice_03').asstring := query.fieldbyname('codice_03').asstring;
    ubm.parambyname('codice_04').asinteger := codice_04;
    ubm.parambyname('codice_05').asinteger := codice_05;
    ubm.open;

  end;

end;

procedure TA31CRUTUB.apri_lotti(art_codice: string);
begin
  ltm.close;
  ltm.parambyname('art_codice').asstring := art_codice;
  ltm.open;

end;

procedure TA31CRUTUB.cerca_lotto(lotto: string);
begin
  if lotto = '' then
  begin
    messaggio(000, 'Codice Collo non inserito');
    v_lotto.setfocus;
    abort;
  end;

  screen.cursor := crhourglass;
  lotto_ubi.close;
  lotto_ubi.parambyname('lotto').asstring := lotto;
  lotto_ubi.open;

  if not lotto_ubi.eof then
  begin
    v_art_codice.text := lotto_ubi.fieldbyname('art_codice').asstring;
    art_codice_controllo(false);
    cerca_lotti_articolo(v_art_codice.text);
  end;
  screen.cursor := crdefault;
end;

procedure TA31CRUTUB.cerca_lotti_articolo(art_codice: string);
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

    apri_lotti(art_codice);
  end;

  apri_query;

  query.locate('codice_01;codice_02;codice_03', VarArrayOf([ ubm_ds.dataset.fieldbyname('a31tsu_codice_01').asstring,  ubm_ds.dataset.fieldbyname('a31tsu_codice_02').asstring,  ubm_ds.dataset.fieldbyname('a31tsu_codice_03').asstring]), []);
end;

initialization

registerclass(tA31CRUTUB);

end.
