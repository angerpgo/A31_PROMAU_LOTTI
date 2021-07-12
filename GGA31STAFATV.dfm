inherited A31STAFATV: TA31STAFATV
  Caption = 'A31STAFATV'
  ClientHeight = 221
  ClientWidth = 689
  ExplicitWidth = 695
  ExplicitHeight = 270
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 689
    ExplicitWidth = 689
  end
  inherited pannello_parametri: TRzPanel
    Width = 689
    Height = 104
    ExplicitWidth = 689
    ExplicitHeight = 104
    object Label11: TRzLabel [0]
      Left = 10
      Top = 20
      Width = 102
      Height = 13
      Caption = 'dalla data documento'
      ShowAccelChar = False
      Transparent = True
    end
    object Label12: TRzLabel [1]
      Left = 345
      Top = 20
      Width = 96
      Height = 13
      Caption = 'alla data documento'
      ShowAccelChar = False
      Transparent = True
    end
    inherited ProgressBar: TProgressBar
      Left = 540
      Top = 15
      ExplicitLeft = 540
      ExplicitTop = 15
    end
    object v_dalla_data_documento: trzdatetimeedit_go
      Left = 10
      Top = 35
      Width = 80
      Height = 21
      Hint = 
        'data documento di inizio selezione [Alt+Gi'#249' per aprire il calend' +
        'ario]'
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      EditType = etDate
      AutoSelect = False
      DropButtonVisible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
    end
    object v_alla_data_documento: trzdatetimeedit_go
      Left = 345
      Top = 35
      Width = 80
      Height = 21
      Hint = 
        'data documento di fine selezione [Alt+Gi'#249' per aprire il calendar' +
        'io]'
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      EditType = etDate
      AutoSelect = False
      DropButtonVisible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      OnEnter = v_alla_data_documentoEnter
      OnExit = v_alla_data_documentoExit
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 138
    Width = 689
    ExplicitTop = 138
    ExplicitWidth = 689
    inherited Bevel1: TBevel
      Width = 689
      ExplicitLeft = -5
      ExplicitWidth = 689
    end
    inherited v_conferma: TRzBitBtn
      Left = 595
      Top = 5
      ExplicitLeft = 595
      ExplicitTop = 5
    end
    inherited v_esci: TRzBitBtn
      Left = 595
      Top = 35
      ExplicitLeft = 595
      ExplicitTop = 35
    end
    inherited v_interrompi: TRzBitBtn
      Left = 490
      Top = 22
      ExplicitLeft = 490
      ExplicitTop = 22
    end
  end
  inherited statusbar: TStatusBar
    Top = 201
    Width = 689
    ExplicitTop = 201
    ExplicitWidth = 689
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'SELECT'
      'TAG_CODICE,'
      'TAG_DESCRIZIONE,'
      'CLI_CODICE,'
      'CLI_DESCRIZIONE1 CLI_DESCRIZIONE1,'
      'SUM(VENDUTO_ANNO) VENDUTO_ANNO ,'
      'SUM(RESI_ANNO) RESI_ANNO, '
      'SUM(VENDUTO_X_1) VENDUTO_X_1 ,'
      'SUM(RESI_X_1) RESI_X_1, '
      'SUM(VENDUTO) VENDUTO ,'
      'SUM(RESI) RESI, '
      'SUM(VENDUTO-RESI) SALDO '
      'FROM '
      '( '
      'SELECT '
      'DVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'DVT.CLI_CODICE, '
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, '
      'SUM(DVR.IMPORTO_EURO) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1,'
      'SUM(0) VENDUTO, '
      'SUM(0) RESI'
      'FROM DVR '
      'INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE '
      'WHERE '
      'dvt.data_documento > '#39'2015-04-08'#39' '
      'and dvt.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-31'#39' '
      'and tdo.TIPO_DOCUMENTO = '#39'ddt'#39' '
      'AND dvt.tco_codice <> '#39#39' '
      'and dvt.SITUAZIONE <> '#39'consolidato'#39' '
      'group by 1, 2, 3, 4 '
      'union all'
      'SELECT '
      'DVT.TAG_CODICE, '
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'DVT.CLI_CODICE,'
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, '
      'SUM(0) VENDUTO_ANNO, '
      'SUM(DVR.IMPORTO_EURO) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1 ,'
      'SUM(0) VENDUTO, '
      'SUM(0) RESI '
      'FROM DVR '
      'INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE '
      'WHERE '
      'DVT.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-31'#39'  '
      'and tdo.TIPO_DOCUMENTO = '#39'ddt'#39' '
      'and DVT.tco_codice = '#39#39'  '
      
        'and DVT.tmo_codice in (select codice from tmo where esistenza = ' +
        #39'decrementa'#39')  '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'FVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'FVT.CLI_CODICE, '
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,'
      'SUM(FVR.IMPORTO_EURO) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1, '
      'SUM(0) VENDUTO, '
      'SUM(0) RESI '
      'FROM FVR '
      'INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO'
      'INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE '
      'WHERE '
      'fvt.data_documento > '#39'2015-04-08'#39
      'and fvt.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-31'#39' '
      
        'and tdo.TIPO_DOCUMENTO IN ('#39'fatture immediata'#39', '#39'fattura differi' +
        'ta'#39') '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'FVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'FVT.CLI_CODICE,'
      'CLI.DESCRIZIONE1,'
      'SUM(0) VENDUTO_ANNO,'
      'COALESCE(SUM(FVR.IMPORTO_EURO), 0) RESI_ANNO,'
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1, '
      'SUM(0) VENDUTO, '
      'SUM(0) RESI'
      'FROM FVR '
      'INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE '
      'WHERE '
      
        'FVT.TDO_CODICE IN (SELECT codice from tdo where tdo.tipo_documen' +
        'to = '#39'nota credito'#39') and '
      'FVT.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-31'#39' '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'DVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'DVT.CLI_CODICE, '
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, '
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(DVR.IMPORTO_EURO) VENDUTO_X_1, '
      'sum(0) RESI_X_1, '
      'SUM(0) VENDUTO, '
      'SUM(0) RESI'
      'FROM DVR '
      'INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE '
      'WHERE '
      'dvt.data_documento > '#39'2015-04-08'#39' '
      'and dvt.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-30'#39' '
      'and tdo.TIPO_DOCUMENTO = '#39'ddt'#39' '
      'AND dvt.tco_codice <> '#39#39' '
      'and dvt.SITUAZIONE <> '#39'consolidato'#39' '
      'group by 1, 2, 3, 4 '
      'union all'
      'SELECT '
      'DVT.TAG_CODICE, '
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'DVT.CLI_CODICE,'
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, '
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0)VENDUTO_X_1, '
      'coalesce(SUM(DVR.IMPORTO_EURO), 0) RESI_X_1 ,'
      'SUM(0) VENDUTO, '
      'SUM(0) RESI '
      'FROM DVR '
      'INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE '
      'WHERE '
      'DVT.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-30'#39'  '
      'and tdo.TIPO_DOCUMENTO = '#39'ddt'#39' '
      'and DVT.tco_codice = '#39#39'  '
      
        'and DVT.tmo_codice in (select codice from tmo where esistenza = ' +
        #39'decrementa'#39')  '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'FVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'FVT.CLI_CODICE, '
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,'
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(FVR.IMPORTO_EURO) VENDUTO_X_1, '
      'SUM(0) RESI_X_1, '
      'SUM(0) VENDUTO, '
      'SUM(0) RESI '
      'FROM FVR '
      'INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO'
      'INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE '
      'WHERE '
      'fvt.data_documento > '#39'2015-04-08'#39
      'and fvt.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-30'#39' '
      
        'and tdo.TIPO_DOCUMENTO IN ('#39'fatture immediata'#39', '#39'fattura differi' +
        'ta'#39') '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'FVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'FVT.CLI_CODICE,'
      'CLI.DESCRIZIONE1,'
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1,'
      'COALESCE(SUM(FVR.IMPORTO_EURO), 0) RESI_X_1,'
      'SUM(0) VENDUTO, '
      'SUM(0) RESI'
      'FROM FVR '
      'INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE '
      'WHERE '
      
        'FVT.TDO_CODICE IN (SELECT codice from tdo where tdo.tipo_documen' +
        'to = '#39'nota credito'#39') and '
      'FVT.data_documento between '#39'2015-01-01'#39' and '#39'2015-05-30'#39' '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'DVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'DVT.CLI_CODICE, '
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, '
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1, '
      'SUM(DVR.IMPORTO_EURO) VENDUTO, '
      'sum(0) RESI '
      'FROM DVR '
      'INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE '
      'WHERE '
      'dvt.data_documento > '#39'2015-04-08'#39' '
      'and dvt.data_documento between '#39'2015-05-01'#39' and '#39'2015-05-31'#39' '
      'and tdo.TIPO_DOCUMENTO = '#39'ddt'#39' '
      'AND dvt.tco_codice <> '#39#39' '
      'and dvt.SITUAZIONE <> '#39'consolidato'#39' '
      'group by 1, 2, 3, 4 '
      'union all'
      'SELECT '
      'DVT.TAG_CODICE, '
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'DVT.CLI_CODICE,'
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, '
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1, '
      'SUM(0)VENDUTO, '
      'coalesce(SUM(DVR.IMPORTO_EURO), 0) RESI '
      'FROM DVR '
      'INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE '
      'WHERE '
      'DVT.data_documento between '#39'2015-05-01'#39' and '#39'2015-05-31'#39'  '
      'and tdo.TIPO_DOCUMENTO = '#39'ddt'#39' '
      'and DVT.tco_codice = '#39#39'  '
      
        'and DVT.tmo_codice in (select codice from tmo where esistenza = ' +
        #39'decrementa'#39')  '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'FVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'FVT.CLI_CODICE, '
      'CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,'
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1, '
      'SUM(FVR.IMPORTO_EURO) VENDUTO, '
      'SUM(0) RESI '
      'FROM FVR '
      'INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO'
      'INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE '
      'WHERE '
      'fvt.data_documento > '#39'2015-04-08'#39
      'and fvt.data_documento between '#39'2015-05-01'#39' and '#39'2015-05-31'#39' '
      
        'and tdo.TIPO_DOCUMENTO IN ('#39'fatture immediata'#39', '#39'fattura differi' +
        'ta'#39') '
      'group by 1, 2, 3, 4 '
      'UNION ALL'
      'SELECT '
      'FVT.TAG_CODICE,'
      'TAG.DESCRIZIONE TAG_DESCRIZIONE,'
      'FVT.CLI_CODICE,'
      'CLI.DESCRIZIONE1,'
      'SUM(0) VENDUTO_ANNO, '
      'SUM(0) RESI_ANNO, '
      'SUM(0) VENDUTO_X_1, '
      'SUM(0) RESI_X_1, '
      'SUM(0) VENDUTO,'
      'COALESCE(SUM(FVR.IMPORTO_EURO), 0) RESI '
      'FROM FVR '
      'INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO '
      'INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE '
      'INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE '
      'INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE '
      'WHERE '
      
        'FVT.TDO_CODICE IN (SELECT codice from tdo where tdo.tipo_documen' +
        'to = '#39'nota credito'#39') and '
      'FVT.data_documento between '#39'2015-05-01'#39' and '#39'2015-05-31'#39' '
      'group by 1, 2, 3, 4 '
      ') QUERY '
      'group by 1, 2, 3, 4'
      'order by 1, 3, 5')
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    Template.FileName = 
      'C:\GestionaleOpen\go_utenti\A31_PROMAU\report\A31STAFATV_STANDAR' +
      'D.RTM'
    mmColumnWidth = 297127
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        ParentWidth = True
        mmLeft = 0
        mmWidth = 284427
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape
        ParentWidth = True
        mmLeft = 0
        mmWidth = 284427
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Image_parametri: TppImage
        LayerName = Foreground
      end
      inherited pp_Label8_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label9_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label12_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label13_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label14_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label15_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label16_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label17_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_copia_schermo: TppImage
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 25135
      inherited pp_Shape1: TppShape
        ParentWidth = True
        mmLeft = 0
        mmWidth = 284427
        LayerName = Foreground
      end
      inherited pp_Shape3: TppShape
        ParentWidth = True
        mmHeight = 13758
        mmLeft = 0
        mmWidth = 284427
        LayerName = Foreground
      end
      inherited pp_Image1: TppImage
        LayerName = Foreground
      end
      inherited pp_Label1: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label19: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label4: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label2: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label5: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label10: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 187325
        mmTop = 2117
        mmWidth = 22754
        LayerName = Foreground
      end
      inherited pp_Label6: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 187325
        mmTop = 6615
        mmWidth = 59620
        LayerName = Foreground
      end
      inherited pp_Label3: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 211932
        mmTop = 2117
        mmWidth = 34925
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        TextAlignment = taRightJustified
        mmHeight = 3440
        mmLeft = 263526
        mmTop = 5556
        mmWidth = 17991
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Caption = 'Dati Attuali'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 156369
        mmTop = 12435
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 140759
        mmTop = 11377
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Venduto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 143669
        mmTop = 19844
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Reso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 19844
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 188913
        mmTop = 19844
        mmWidth = 22578
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9877
        mmLeft = 165665
        mmTop = 17898
        mmWidth = 529
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Caption = 
          'Statistiche di vendita per Agente/Cliente dal 01/01/2015 al 31/1' +
          '2/2015'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 2381
        mmTop = 12435
        mmWidth = 88900
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6884
        mmLeft = 188445
        mmTop = 17903
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 93310
        mmTop = 17727
        mmWidth = 169142
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 93243
        mmTop = 11377
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Venduto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 94630
        mmTop = 19844
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Caption = 'Dati Progr. Mese Prec.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 101071
        mmTop = 12435
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Caption = 'Reso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 118643
        mmTop = 19844
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Caption = 'Dati Progr. alla data.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 218546
        mmTop = 12435
        mmWidth = 32015
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13396
        mmLeft = 212500
        mmTop = 11391
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13396
        mmLeft = 262274
        mmTop = 11642
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Caption = 'Venduto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 215107
        mmTop = 19844
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Reso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 240063
        mmTop = 19844
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5292
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'CLI_CODICE'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 3440
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'CLI_DESCRIZIONE1'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 24871
        mmTop = 265
        mmWidth = 64596
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        BlankWhenZero = True
        DataField = 'VENDUTO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        BlankWhenZero = True
        DataField = 'RESI'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 166159
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5029
        mmLeft = 165665
        mmTop = 0
        mmWidth = 244
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        BlankWhenZero = True
        DataField = 'VENDUTO_X_1'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 94630
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        BlankWhenZero = True
        DataField = 'RESI_X_1'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 118643
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        BlankWhenZero = True
        DataField = 'SALDO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 188913
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        BlankWhenZero = True
        DataField = 'VENDUTO_ANNO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 215107
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        BlankWhenZero = True
        DataField = 'RESI_ANNO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 240063
        mmTop = 265
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 12171
      inherited pp_Shape2: TppShape
        ParentWidth = True
        mmLeft = 0
        mmTop = 6086
        mmWidth = 284427
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable
        SaveOrder = -1
        TextAlignment = taRightJustified
        mmHeight = 3440
        mmLeft = 260880
        mmTop = 7507
        mmWidth = 19844
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 7507
        mmWidth = 44715
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 7507
        mmWidth = 17727
        LayerName = Foreground
      end
      inherited pp_utente: TppLabel
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 153459
        mmTop = 7507
        mmWidth = 8467
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Caption = 'Totale Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5291
        mmLeft = 3440
        mmTop = 1328
        mmWidth = 30691
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        DataField = 'VENDUTO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 1328
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        DataField = 'RESI'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 166159
        mmTop = 1328
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        DataField = 'SALDO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 188648
        mmTop = 1328
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        DataField = 'VENDUTO_X_1'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        ResetGroup = ppGroup1
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 94630
        mmTop = 1328
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        DataField = 'RESI_X_1'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        ResetGroup = ppGroup1
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 118643
        mmTop = 1328
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        DataField = 'VENDUTO_ANNO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 215107
        mmTop = 1328
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        DataField = 'RESI_ANNO'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 240063
        mmTop = 1328
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 789
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle [4]
      Background.Brush.Style = bsClear
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 210079
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170786
        mmLeft = 93310
        mmTop = 24077
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170688
        mmLeft = 140759
        mmTop = 24077
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170688
        mmLeft = 118091
        mmTop = 24077
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170688
        mmLeft = 165662
        mmTop = 24077
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170657
        mmLeft = 188384
        mmTop = 24077
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170657
        mmLeft = 212461
        mmTop = 24077
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170657
        mmLeft = 238919
        mmTop = 24077
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 170657
        mmLeft = 262508
        mmTop = 23906
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'TAG_CODICE'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape4'
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 6174
          mmLeft = 0
          mmTop = 176
          mmWidth = 284427
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          DataField = 'TAG_CODICE'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 3440
          mmTop = 706
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          DataField = 'TAG_DESCRIZIONE'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 24871
          mmTop = 177
          mmWidth = 81492
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          DataField = 'VENDUTO'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 143669
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          DataField = 'RESI'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 166159
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          DataField = 'SALDO'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 188913
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Caption = 'Totale Agente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 3440
          mmTop = 1852
          mmWidth = 29898
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 789
          mmLeft = 0
          mmTop = 7672
          mmWidth = 284427
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 0
          mmWidth = 284427
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc7'
          DataField = 'VENDUTO_X_1'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 94630
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc8'
          DataField = 'RESI_X_1'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 118643
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc13: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc13'
          DataField = 'VENDUTO_ANNO'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 215107
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc14'
          DataField = 'RESI_ANNO'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 240063
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    inherited ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 1
      end
    end
  end
  inherited ppReport_registri_fiscali: TppReport
    inherited ppHeaderBand2_registri_fiscali: TppHeaderBand
      inherited pp_Shape4_registri_fiscali: TppShape
        LayerName = pp_Foreground1
      end
      inherited pp_Shape5_registri_fiscali: TppShape
        LayerName = pp_Foreground1
      end
      inherited pp_dit_descrizione1_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_via_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_descrizione2_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_citta_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_registro_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_Label8_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_pagina_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_Label9_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_anno_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_codice_fiscale_registri_fiscali1: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_codice_fiscale_registri_fiscali2: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_partita_iva_registri_fiscali1: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_partita_iva_registri_fiscali2: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
    end
    inherited ppFooterBand2_registri_fiscali: TppFooterBand
      inherited pp_Shape6_registri_fiscali: TppShape
        LayerName = pp_Foreground1
      end
      inherited pp_Label21_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_Label22_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
    end
  end
  inherited ppReport_documenti: TppReport
    inherited ppHeaderBand_documenti_01: TppHeaderBand
      inherited pp_Shape401: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_Shape_documenti_02: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione1: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione2: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_via: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_citta: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_codice_fiscale: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_codice_fiscale: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_partita_iva: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_partita_iva: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_capitale_sociale: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_capitale_sociale: TppVariable
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_registro_imprese: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_registro_imprese: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_telefono: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_telefono: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_fax: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_fax: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_web: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_web: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_e_mail: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_e_mail: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_spettabile: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_marchio: TppImage
        LayerName = pp_Foreground2
      end
      inherited pp_Label_descrizione_documento: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_numero_pagina: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_copia_interna: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited ppnumero_pagina: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
    end
    inherited ppFooterBand_documenti_01: TppFooterBand
      inherited pp_Shape_documenti_03: TppShape
        LayerName = pp_Foreground2
      end
    end
  end
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
end
