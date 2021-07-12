inherited STAMAG: TSTAMAG
  Left = 343
  Top = 245
  Caption = 'STAMAG'
  ClientHeight = 215
  ClientWidth = 634
  ExplicitWidth = 640
  ExplicitHeight = 263
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 634
    ExplicitWidth = 634
  end
  inherited pannello_parametri: TRzPanel
    Width = 634
    Height = 98
    ExplicitWidth = 634
    ExplicitHeight = 98
    object Label7: TRzLabel [0]
      Left = 5
      Top = 15
      Width = 91
      Height = 13
      Caption = 'ordinamento articoli'
      FocusControl = v_ordinamento
      ShowAccelChar = False
      Transparent = True
    end
    object Label2: TRzLabel [1]
      Left = 245
      Top = 15
      Width = 40
      Height = 13
      Caption = 'dettaglio'
      FocusControl = v_dettaglio
      ShowAccelChar = False
      Transparent = True
    end
    object v_esistenza_zero: TRzCheckBox
      Left = 445
      Top = 32
      Width = 149
      Height = 15
      Hint = 'spunta per stampare anche gli articoli con esistenza zero'
      Caption = 'articoli con esistenza a zero'
      State = cbUnchecked
      TabOrder = 3
    end
    object v_ordinamento: trzcombobox_go
      Left = 5
      Top = 30
      Width = 140
      Height = 21
      Hint = 'tipo di ordinamento in stampa'
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      FlatButtons = True
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      Text = 'codice'
      Items.Strings = (
        'codice'
        'descrizione'
        'codice alternativo')
      ItemIndex = 0
    end
    object v_dettaglio: trzcombobox_go
      Left = 245
      Top = 30
      Width = 106
      Height = 21
      Hint = 'clienti da stampare'
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      FlatButtons = True
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      Text = 'attivi'
      Items.Strings = (
        'attivi'
        'obsoleti'
        'tutti')
      ItemIndex = 0
    end
    object Panel1: TRzPanel
      Left = 0
      Top = 67
      Width = 634
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
      object v_seltma: TRzRapidFireButton
        Left = 120
        Top = 4
        Width = 111
        Height = 22
        Caption = 'filtro depositi'
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
        OnClick = v_seltmaClick
      end
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 132
    Width = 634
    ExplicitTop = 132
    ExplicitWidth = 634
    inherited Bevel1: TBevel
      Width = 634
      ExplicitWidth = 641
    end
    inherited v_modello: trzcombobox_go
      Width = 325
      ExplicitWidth = 325
    end
    inherited v_conferma: TRzBitBtn
      Left = 545
      ExplicitLeft = 545
    end
    inherited v_esci: TRzBitBtn
      Left = 545
      ExplicitLeft = 545
    end
  end
  inherited statusbar: TStatusBar
    Top = 195
    Width = 634
    ExplicitTop = 195
    ExplicitWidth = 634
  end
  inherited ppDBTabella: TppDBPipeline [5]
    object ppDBTabellappField1: TppField
      FieldAlias = 'art_codice'
      FieldName = 'art_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBTabellappField2: TppField
      FieldAlias = 'art_descrizione1'
      FieldName = 'art_descrizione1'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object ppDBTabellappField3: TppField
      FieldAlias = 'art_descrizione2'
      FieldName = 'art_descrizione2'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object ppDBTabellappField4: TppField
      FieldAlias = 'tma_codice'
      FieldName = 'tma_codice'
      FieldLength = 4
      DisplayWidth = 4
      Position = 3
    end
    object ppDBTabellappField5: TppField
      FieldAlias = 'tma_descrizione'
      FieldName = 'tma_descrizione'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object ppDBTabellappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'scorta_minima'
      FieldName = 'scorta_minima'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBTabellappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'lotto_riordino'
      FieldName = 'lotto_riordino'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBTabellappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'esistenza'
      FieldName = 'esistenza'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDBTabellappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'impegnato'
      FieldName = 'impegnato'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBTabellappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ordinato'
      FieldName = 'ordinato'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDBTabellappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'approntato'
      FieldName = 'approntato'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
  inherited sor_ds: TMyDataSource [6]
  end
  inherited sor1_ds: TMyDataSource [7]
  end
  inherited sor2_ds: TMyDataSource [8]
  end
  inherited ppReport: TppReport [9]
    Template.FileName = '..\report\STAMAG_STANDARD.RTM'
    AllowPrintToFile = False
    mmColumnWidth = 197379
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
      mmHeight = 17463
      inherited pp_Shape1: TppShape
        LayerName = Foreground
      end
      inherited pp_Image1: TppImage [1]
        LayerName = Foreground
      end
      inherited pp_Label1: TppLabel [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label19: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label4: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label2: TppLabel [5]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label5: TppLabel [6]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label10: TppLabel [7]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label6: TppLabel [8]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label3: TppLabel [9]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable [10]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Shape3: TppShape [11]
        mmTop = 11379
        LayerName = Foreground
      end
      object pp_Label12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Caption = 'codice articolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3217
        mmLeft = 1852
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = '_Label8'
        Border.Weight = 1.000000000000000000
        Caption = 'descrizione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3217
        mmLeft = 35983
        mmTop = 12700
        mmWidth = 14266
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4233
      object pp_DBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        DataField = 'tma_codice'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 9260
        mmTop = 265
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        DataField = 'tma_descrizione'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 18785
        mmTop = 265
        mmWidth = 46567
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        DataField = 'scorta_minima'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 65881
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        DataField = 'lotto_riordino'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 84931
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        DataField = 'esistenza'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 104246
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        DataField = 'impegnato'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 123296
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        DataField = 'ordinato'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 142346
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object pp_Variable1: TppVariable
        OnPrint = pp_Variable1Print
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3217
        mmLeft = 164625
        mmTop = 265
        mmWidth = 11853
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        DataField = 'approntato'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 176742
        mmTop = 265
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited pp_Shape2: TppShape
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_utente: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [4]
      BreakName = 'art_codice'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
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
        mmHeight = 8202
        mmPrintPosition = 0
        object pp_DBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.Weight = 1.000000000000000000
          DataField = 'art_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 1852
          mmTop = 529
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          Border.Weight = 1.000000000000000000
          DataField = 'art_descrizione1'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 35983
          mmTop = 529
          mmWidth = 63500
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.Weight = 1.000000000000000000
          DataField = 'art_descrizione2'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 100542
          mmTop = 529
          mmWidth = 63500
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.Weight = 1.000000000000000000
          Caption = 'deposito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 9260
          mmTop = 4498
          mmWidth = 10668
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          Border.Weight = 1.000000000000000000
          Caption = 'scorta minima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 66940
          mmTop = 4498
          mmWidth = 17568
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Border.Weight = 1.000000000000000000
          Caption = 'lotto riordino'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 88106
          mmTop = 4498
          mmWidth = 15409
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 19844
          mmTop = 6615
          mmWidth = 45244
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Border.Weight = 1.000000000000000000
          Caption = 'ordinato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 151077
          mmTop = 4498
          mmWidth = 10160
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          Border.Weight = 1.000000000000000000
          Caption = 'impegnato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 128852
          mmTop = 4498
          mmWidth = 13166
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label17: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          Border.Weight = 1.000000000000000000
          Caption = 'esistenza'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 111125
          mmTop = 4498
          mmWidth = 11980
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.Weight = 1.000000000000000000
          Caption = 'disponibilit'#224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 161661
          mmTop = 4498
          mmWidth = 14605
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 84667
          mmTop = 6615
          mmWidth = 3175
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 103981
          mmTop = 6615
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 123296
          mmTop = 6615
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 142346
          mmTop = 6615
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line6: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 176477
          mmTop = 6615
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label21: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label21'
          Border.Weight = 1.000000000000000000
          Caption = 'approntato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3217
          mmLeft = 182034
          mmTop = 4498
          mmWidth = 13504
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  inherited query_righe_ds: TMyDataSource [10]
  end
  inherited sor1: TMyTable [11]
  end
  inherited sor2: TMyTable [12]
  end
  inherited query_iva_ds: TMyDataSource [13]
  end
  inherited tabella_dettaglio_ds: TMyDataSource [14]
  end
  inherited Popup_griglia: TPopupMenu [15]
  end
  inherited tabella: TMyQuery_go [16]
  end
  inherited tabella_righe: TMyQuery_go [17]
  end
  inherited tabella_iva: TMyQuery_go [18]
  end
  inherited tabella_ds: TMyDataSource [19]
  end
  inherited sor: TMyTable [20]
  end
  inherited tabella_righe_ds: TMyDataSource [21]
  end
  inherited query: TMyQuery_go [22]
    SQL.Strings = (
      
        'select art.codice art_codice, art.descrizione1 art_descrizione1,' +
        ' art.descrizione2 art_descrizione2,'
      
        'mag.tma_codice, tma.descrizione tma_descrizione, mag.scorta_mini' +
        'ma, mag.lotto_riordino,'
      'mag.esistenza, mag.impegnato, mag.ordinato, mag.approntato'
      'from mag mag'
      'inner join art art on (art.codice = mag.art_codice)'
      'inner join tma tma on (tma.codice = mag.tma_codice)'
      ''
      '')
  end
  inherited tabella_iva_ds: TMyDataSource [23]
  end
  inherited query_ds: TMyDataSource [24]
    Left = 265
  end
  inherited tabella_dettaglio: TMyQuery_go [25]
  end
  inherited prt: TMyQuery_go [26]
  end
  inherited QryUtp: TMyQuery_go [27]
  end
  inherited ppReport_documenti: TppReport [28]
    TextFileType = ftTab
    inherited ppHeaderBand_documenti_01: TppHeaderBand
      inherited pp_Shape401: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_Shape_documenti_02: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_marchio: TppImage [2]
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione1: TppLabel [3]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione2: TppLabel [4]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_via: TppLabel [5]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_citta: TppLabel [6]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_codice_fiscale: TppLabel [7]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_codice_fiscale: TppLabel [8]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_partita_iva: TppLabel [9]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_partita_iva: TppLabel [10]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_capitale_sociale: TppLabel [11]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_capitale_sociale: TppVariable [12]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_registro_imprese: TppLabel [13]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_registro_imprese: TppLabel [14]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_telefono: TppLabel [15]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_telefono: TppLabel [16]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_fax: TppLabel [17]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_fax: TppLabel [18]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_web: TppLabel [19]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_web: TppLabel [20]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_e_mail: TppLabel [21]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_e_mail: TppLabel [22]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_spettabile: TppLabel [23]
        SaveOrder = -1
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
  inherited query_righe: TMyQuery_go [29]
  end
  inherited query_descrizioni: TMyQuery_go [30]
  end
  inherited ppReport_registri_fiscali: TppReport [31]
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
  inherited ppReport_etichette: TppReport [32]
    Left = 365
  end
  inherited query_invio_email: TMyQuery_go [33]
  end
  inherited query_eti: TMyQuery_go [34]
  end
  inherited query_iva: TMyQuery_go [35]
  end
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
end
