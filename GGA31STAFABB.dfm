inherited A31STAFABB: TA31STAFABB
  Caption = 'A31STAFABB'
  ClientHeight = 275
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  inherited pannello_parametri: TRzPanel
    Height = 150
    ExplicitHeight = 150
    object Panel2: TRzPanel
      Left = 0
      Top = 0
      Width = 791
      Height = 150
      Align = alClient
      TabOrder = 1
      object Label3: TRzLabel
        Left = 171
        Top = 25
        Width = 90
        Height = 13
        Caption = 'alla data consegna'
      end
      object RzLabel1: TRzLabel
        Left = 21
        Top = 25
        Width = 96
        Height = 13
        Caption = 'dalla data consegna'
      end
      object RzPanel1: TRzPanel
        Left = 2
        Top = 117
        Width = 787
        Height = 31
        Align = alBottom
        BorderOuter = fsLowered
        TabOrder = 4
        object v_selart: TRzRapidFireButton
          Left = 5
          Top = 4
          Width = 111
          Height = 22
          Caption = 'filtro articoli'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C01E0000C01E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000811E00FF811E00FF811E00FF7E1E
            01FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000811E00FFFCE6B1FFE59C51FF791E
            02FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000811E00FFFCE5AFFFE69F55FF791E
            02FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000811E00FFFBE2ADFFE7A158FF791E
            02FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000083200021811E00FF8C2D09FF811E00FF7D1E
            01FF7F1B001B0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000822001B8B5622FF2FCD59CFFF8CB8CFF9D4E
            26F4832001A90000000000000000000000000000000000000000000000000000
            00000000000000000000801D00578A2704EEF6C990FFFEDAA3FFF6C483FFD193
            5AFF7D2305F4811E003C00000000000000000000000000000000000000000000
            00000000000084230012821F00E8D59055FAFBDCB1FFFBD197FFF3BC7AFFE5A5
            60FF9A4F27FC822101D7953B0003000000000000000000000000000000000000
            000000000000811E0096A14617E8F6CB96FFFEE5BFFFF8CA8BFFF0B673FFE7A4
            5AFFBB743AFF7B290CF5811E0069000000000000000000000000000000000000
            0000811E003C832101F3E7A966FFFCE5C5FFFEE3BCFFF6C282FFEDB06AFFE59D
            52FFC97B38FF8F451FFF7E2002F2842300120000000000000000000000009518
            0006821F00D4C06D34EEF4CA92FFFEF4E5FFFCDAABFFF2BC79FFEAA962FFE297
            4AFFD78235FFA45520FF752B0FF9831F009C000000000000000000000000811E
            0078913007E0EDB06AFFFCEBD5FFFFFBF4FFF7CB91FFEFB570FFE7A359FFDE90
            42FFD77F2EFFB05A1CFF813814FF761F04F8821F00300000000000000000811E
            00F9811E00FF811E00FF811E00FF811E00FF811E00FF811E00FF811E00FF811E
            00FF811E00FF801E00FF7D1E01FF7B1E01FF821E00C400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = v_selartClick
        end
      end
      object v_sottoscorta: TRzCheckBox
        Left = 25
        Top = 85
        Width = 109
        Height = 15
        Caption = 'Articolo sottoscorta'
        State = cbUnchecked
        TabOrder = 2
      end
      object v_scorta_minima: TRzCheckBox
        Left = 175
        Top = 85
        Width = 105
        Height = 15
        Caption = 'Articolo preallarme'
        State = cbUnchecked
        TabOrder = 3
        Visible = False
      end
      object v_data_al: trzdatetimeedit_go
        Left = 171
        Top = 45
        Width = 81
        Height = 21
        Hint = '[Alt+Gi'#249'=apre calendario]'
        CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
        CaptionTodayBtn = 'oggi'
        CaptionClearBtn = 'annulla'
        EditType = etDate
        AutoSelect = False
        DropButtonVisible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 1
        OnEnter = v_data_alEnter
      end
      object v_data_dal: trzdatetimeedit_go
        Left = 21
        Top = 45
        Width = 81
        Height = 21
        Hint = '[Alt+Gi'#249'=apre calendario]'
        CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
        CaptionTodayBtn = 'oggi'
        CaptionClearBtn = 'annulla'
        EditType = etDate
        AutoSelect = False
        DropButtonVisible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 0
        OnEnter = v_data_alEnter
      end
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 184
    Height = 71
    ExplicitTop = 184
    ExplicitHeight = 71
    inherited Bevel1: TBevel
      ExplicitWidth = 806
    end
    inherited v_conferma: TRzBitBtn
      Left = 700
      ExplicitLeft = 700
    end
    inherited v_esci: TRzBitBtn
      Left = 700
      ExplicitLeft = 700
    end
    inherited v_interrompi: TRzBitBtn
      Left = 480
      ExplicitLeft = 480
    end
  end
  inherited statusbar: TStatusBar
    Top = 255
    ExplicitTop = 255
  end
  inherited sor: TMyTable
    TableName = 'a31stafabb'
  end
  inherited sor1_ds: TMyDataSource
    DataSet = nil
  end
  inherited ppDBTabella: TppDBPipeline
    DataSource = sor_ds
    Left = 343
    Top = 25
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
      'C:\GestionaleOpen\go_utenti\A31_PROMAU\report\A31STAFABB_STANDAR' +
      'D.RTM'
    Left = 370
    Top = 25
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape
        LayerName = Foreground
      end
      inherited pp_Image_parametri: TppImage [2]
        LayerName = Foreground
      end
      inherited pp_copia_schermo: TppImage [3]
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label8_parametri: TppLabel [5]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label9_parametri: TppLabel [6]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label12_parametri: TppLabel [7]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label13_parametri: TppLabel [8]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label14_parametri: TppLabel [9]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label15_parametri: TppLabel [10]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label16_parametri: TppLabel [11]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label17_parametri: TppLabel [12]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable [13]
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      Visible = False
      mmHeight = 17463
      inherited pp_Shape1: TppShape
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Shape3: TppShape
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Image1: TppImage
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label1: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label19: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label4: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label2: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label5: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label10: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label6: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label3: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 8731
      object ppRegion5: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region5'
        Caption = 'Region5'
        ParentWidth = True
        Pen.Color = clWhite
        Stretch = True
        mmHeight = 7933
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape8: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape8'
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 1058
          mmTop = 1323
          mmWidth = 282046
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          DataField = 'nr_col_00'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 125148
          mmTop = 2382
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          DataField = 'nr_col_01'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 138907
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          DataField = 'nr_col_02'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 152665
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          DataField = 'nr_col_03'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 165629
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          DataField = 'nr_col_04'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 179123
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          DataField = 'nr_col_05'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 192617
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          DataField = 'nr_col_06'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 205846
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          DataField = 'nr_col_07'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 219075
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText101'
          DataField = 'nr_col_08'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 232305
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          DataField = 'nr_col_09'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 245269
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          DataField = 'nr_col_10'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 257176
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText16'
          DataField = 'nr_col_11'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 270934
          mmTop = 2381
          mmWidth = 10583
          BandType = 4
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 138377
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 152136
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine14: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line14'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 165365
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 178594
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line16'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 192088
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line17'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 205317
          mmTop = 1853
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine18: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line18'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 218811
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line19'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 231775
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine20: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line20'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 244740
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line201'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 257440
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line22'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 270140
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppVariable1: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable1'
          OnDrawCommandClick = ppVariable1DrawCommandClick
          OnDrawCommandCreate = ppVariable1DrawCommandCreate
          BlankWhenZero = False
          CalcOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 2117
          mmTop = 2295
          mmWidth = 30325
          BandType = 4
          LayerName = Foreground
        end
        object ppVariable2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable2'
          BlankWhenZero = False
          CalcOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 33602
          mmTop = 2176
          mmWidth = 60651
          BandType = 4
          LayerName = Foreground
        end
        object ppVariable3: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable3'
          BlankWhenZero = False
          CalcOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 95448
          mmTop = 2269
          mmWidth = 28290
          BandType = 4
          LayerName = Foreground
        end
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 6350
      inherited pp_Shape2: TppShape
        ParentWidth = True
        mmLeft = 0
        mmWidth = 284427
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable
        SaveOrder = -1
        TextAlignment = taCentered
        mmHeight = 3175
        mmLeft = 259557
        mmTop = 2117
        mmWidth = 20638
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_utente: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel [4]
        SaveOrder = -1
        mmLeft = 51858
        mmTop = 2117
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [4]
      BreakName = 'art_codice'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 47625
        mmPrintPosition = 0
        object pplogo: TppImage
          DesignLayer = ppDesignLayer1
          UserName = 'logo'
          AlignHorizontal = ahCenter
          AlignVertical = avCenter
          MaintainAspectRatio = False
          Stretch = True
          mmHeight = 19050
          mmLeft = 2117
          mmTop = 1058
          mmWidth = 56092
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label23'
          AutoSize = False
          Caption = 'Sede legale: Strada per Novara 155 - 28062 Cameri (NO)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 62442
          mmTop = 1588
          mmWidth = 98425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label24'
          AutoSize = False
          Caption = 'Stabilimento: Corso Sempione 39 - 28062 Cameri (NO) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 62442
          mmTop = 5292
          mmWidth = 98161
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          AutoSize = False
          Caption = 'UFFICIO ACQUISTI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4064
          mmLeft = 62442
          mmTop = 9260
          mmWidth = 63500
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label26'
          AutoSize = False
          Caption = 'tel: +39(0) 3211816142 - fax +39(0) 3211850997'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 62442
          mmTop = 13758
          mmWidth = 98161
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label27'
          AutoSize = False
          Caption = 'bellomi@promau.com - elia@promau.com'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3175
          mmLeft = 62442
          mmTop = 17198
          mmWidth = 98161
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppRegion4: TppRegion
          DesignLayer = ppDesignLayer1
          UserName = 'Region4'
          Brush.Style = bsClear
          Caption = 'Region4'
          ParentWidth = True
          Pen.Color = clWhite
          Stretch = True
          Transparent = True
          mmHeight = 10319
          mmLeft = 0
          mmTop = 21145
          mmWidth = 284427
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppLine23: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line11'
            Pen.Width = 6
            Weight = 4.500000000000000000
            mmHeight = 1588
            mmLeft = 2910
            mmTop = 25114
            mmWidth = 98914
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object pp_tipo_archivio: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label29'
            AutoSize = False
            Caption = 'FABBISOGNO ACQUISTI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 16
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 6350
            mmLeft = 103595
            mmTop = 22997
            mmWidth = 78358
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine24: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line24'
            Pen.Width = 6
            Weight = 4.500000000000000000
            mmHeight = 1588
            mmLeft = 183319
            mmTop = 25378
            mmWidth = 98908
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
        end
        object ppRegion2: TppRegion
          DesignLayer = ppDesignLayer1
          UserName = 'Region2'
          Caption = 'Region2'
          Pen.Color = clWhite
          Pen.Style = psAlternate
          Stretch = True
          mmHeight = 15081
          mmLeft = 0
          mmTop = 31993
          mmWidth = 284163
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppShape2: TppShape
            DesignLayer = ppDesignLayer1
            UserName = 'Shape5'
            Shape = stRoundRect
            mmHeight = 12171
            mmLeft = 1058
            mmTop = 32786
            mmWidth = 282046
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel2: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label12'
            Caption = 'articolo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 1588
            mmTop = 34638
            mmWidth = 13758
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel3: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label13'
            Caption = 'descrizione articolo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 35454
            mmTop = 35168
            mmWidth = 23813
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_00: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_00'
            AutoSize = False
            Caption = 'col 00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 9790
            mmLeft = 125148
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_01: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_01'
            AutoSize = False
            Caption = 'col 01'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 138907
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_02: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_02'
            AutoSize = False
            Caption = 'col 02'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 152665
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_03: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_03'
            AutoSize = False
            Caption = 'col 03'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 165629
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_04: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_04'
            AutoSize = False
            Caption = 'col 04'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 179123
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_05: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_05'
            AutoSize = False
            Caption = 'col 05'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 192617
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_06: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label14'
            AutoSize = False
            Caption = 'col 06'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 205846
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_07: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label15'
            AutoSize = False
            Caption = 'col 07'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 219075
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_08: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label16'
            AutoSize = False
            Caption = 'col 08'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 232305
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_09: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label17'
            AutoSize = False
            Caption = 'col 09'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 245269
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_10: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label18'
            AutoSize = False
            Caption = 'col 10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 257176
            mmTop = 34374
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_11: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label21'
            AutoSize = False
            Caption = 'col 11'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 270934
            mmTop = 34374
            mmWidth = 10583
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine2: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line2'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 138377
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine3: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line3'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 152136
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine4: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line4'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 165365
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine5: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line5'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 178594
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine6: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line6'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 192088
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine7: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line7'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 205317
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine8: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line8'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 218546
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine9: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line9'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 231775
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine10: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line10'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 245005
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine11: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line101'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 11906
            mmLeft = 257440
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine12: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line12'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 11906
            mmLeft = 270140
            mmTop = 32786
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup5: TppGroup [5]
      BreakName = 'riga'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object raCodeModule1: TraCodeModule [6]
    end
  end
  inherited ppReport_registri_fiscali: TppReport
    Left = 345
    Top = 0
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
    Left = 425
    Top = 35
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
  inherited query_sor: TMyQuery_go
    SQL.Strings = (
      'select * from promau_pianif'
      'where'
      'utn_codice=:utn_codice'
      
        'order by utn_codice,ordine_articolo,nom_descrizione,frn_codice,a' +
        'rt_codice')
    Left = 520
    Top = 45
    ParamData = <
      item
        DataType = ftString
        Name = 'utn_codice'
        Value = 'GO'
      end>
  end
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited query_parametri_ds: TMyDataSource
    Left = 690
    Top = 0
  end
  object frn_promau: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from nom'
      'where'
      'codice =:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 45
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object mag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select mag.art_codice, '
      'sum(mag.esistenza) esistenza,'
      'sum(mag.scorta_minima) scorta_minima,'
      'sum(mag.scorta_massima) scorta_massima'
      'from mag'
      'inner join tma on tma.codice=mag.tma_codice'
      'where'
      'mag.art_codice=:art_codice and'
      'tma.proprieta='#39'si'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 390
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object query_sor2: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select sum(:nome_campo) nr_col '
      'from a31stafabb b'
      'where'
      'b.utn_codice=:utn_codice and'
      'b.art_codice=:art_codice and'
      'b.riga <> 3')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 45
    ParamData = <
      item
        DataType = ftWideString
        Name = 'nome_campo'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'utn_codice'
        Value = 'GO'
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = #39'40-208-00'#39
      end>
  end
  object fabb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select a31data_consegna, sum(quantita-quantita_evasa) fabbisogno'
      'from  opr'
      'where '
      'opr.art_codice=:art_codice and '
      'opr.a31data_consegna <= :data_consegna and'
      'opr.situazione in ('#39'inserito'#39', '#39'evaso parziale'#39' )'
      'group by a31data_consegna'
      'order by a31data_consegna')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_consegna'
        Value = nil
      end>
  end
  object oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select oar.data_consegna, sum(oar.quantita-oar.quantita_evasa) o' +
        'rdinato'
      'from oar'
      'where'
      'oar.art_codice=:art_codice and'
      'oar.data_consegna <=:data_consegna and'
      'oar.situazione in ('#39'inserito'#39', '#39'evaso parziale'#39')'
      'group by oar.data_consegna'
      'order by oar.data_consegna')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_consegna'
        Value = nil
      end>
  end
  object query_sor3: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select sum(:nome_campo) nr_col '
      'from a31stafabb b'
      'where'
      'b.utn_codice=:utn_codice and'
      'b.art_codice=:art_codice and'
      'b.riga <> 3')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 585
    Top = 45
    ParamData = <
      item
        DataType = ftWideString
        Name = 'nome_campo'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'utn_codice'
        Value = 'GO'
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = #39'40-208-00'#39
      end>
  end
end
