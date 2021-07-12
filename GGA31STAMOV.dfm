inherited A31STAMOV: TA31STAMOV
  Left = 363
  Top = 246
  Caption = 'A31STAMOV'
  ClientHeight = 456
  ClientWidth = 624
  Position = poDesigned
  ExplicitWidth = 640
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 624
    ExplicitWidth = 624
  end
  inherited pannello_parametri: TRzPanel
    Width = 624
    Height = 339
    ExplicitWidth = 624
    ExplicitHeight = 339
    object Label4: TRzLabel [0]
      Left = 290
      Top = 15
      Width = 40
      Height = 13
      Caption = 'alla data'
      FocusControl = v_alla_data
      ShowAccelChar = False
      Transparent = True
    end
    object Label2: TRzLabel [1]
      Left = 5
      Top = 190
      Width = 66
      Height = 13
      Caption = 'valorizzazione'
      FocusControl = v_valorizzazione
      ShowAccelChar = False
      Transparent = True
    end
    object Label5: TRzLabel [2]
      Left = 290
      Top = 190
      Width = 74
      Height = 13
      Caption = 'consolidamento'
      FocusControl = v_consolidamento
      ShowAccelChar = False
      Transparent = True
    end
    object Label3: TRzLabel [3]
      Left = 290
      Top = 245
      Width = 95
      Height = 13
      Caption = 'ordinamento articolo'
      FocusControl = v_ordinamento
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel1: TRzLabel [4]
      Left = 5
      Top = 245
      Width = 87
      Height = 13
      Caption = 'controllo esistenza'
      FocusControl = v_controllo_esistenza
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel2: TRzLabel [5]
      Left = 5
      Top = 15
      Width = 46
      Height = 13
      Caption = 'dalla data'
      FocusControl = v_dalla_data
      ShowAccelChar = False
      Transparent = True
    end
    inherited ProgressBar: TProgressBar
      Left = 545
      TabOrder = 11
      ExplicitLeft = 545
    end
    object v_alla_data: trzdatetimeedit_go
      Left = 290
      Top = 30
      Width = 80
      Height = 21
      Hint = 'data di stampa [Alt+Gi'#249' per aprire il calendario]'
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
      OnExit = v_alla_dataExit
    end
    object v_esistenza_zero: TRzCheckBox
      Left = 5
      Top = 70
      Width = 149
      Height = 15
      Hint = 'spunta per stampare anche gli articoli con esistenza zero'
      Caption = 'articoli con esistenza a zero'
      State = cbUnchecked
      TabOrder = 2
      OnExit = v_esistenza_zeroExit
    end
    object v_solo_quantita: TRzCheckBox
      Left = 290
      Top = 70
      Width = 125
      Height = 15
      Hint = 'spunta per stampare solo le quantit'#224' senza gli importi'
      Caption = 'stampare solo quantit'#224
      State = cbUnchecked
      TabOrder = 3
      OnClick = v_solo_quantitaClick
    end
    object v_valorizzazione: trzcombobox_go
      Left = 5
      Top = 205
      Width = 151
      Height = 21
      Hint = 'tipo di valorizzazione'
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
      TabOrder = 6
      Text = 'standard'
      Items.Strings = (
        'standard'
        'prezzo medio'
        'l.i.f.o.'
        'l.i.f.o. ultimo mese'
        'costo standard'
        'ultimo costo'
        'f.i.f.o.'
        'f.i.f.o. a scatti'
        'prezzo medio anno'
        'prezzo medio mensile')
      ItemIndex = 0
    end
    object v_consolidamento: trzcombobox_go
      Left = 290
      Top = 205
      Width = 131
      Height = 21
      Hint = 'tipo di analisi sul costo utilizzato'
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
      TabOrder = 7
      Text = 'valore attuale'
      Items.Strings = (
        'valore attuale'
        'valore storico')
      ItemIndex = 0
    end
    object pannello_bottoni: TRzPanel
      Left = 0
      Top = 308
      Width = 624
      Height = 31
      Align = alBottom
      BorderOuter = fsLowered
      TabOrder = 8
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
    object v_ordinamento: trzcombobox_go
      Left = 290
      Top = 260
      Width = 101
      Height = 21
      Hint = 'ordinamento'
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
      TabOrder = 10
      Text = 'codice'
      Items.Strings = (
        'codice'
        'descrizione')
      ItemIndex = 0
    end
    object v_apertura: TRzCheckBox
      Left = 5
      Top = 110
      Width = 136
      Height = 15
      Hint = 'spunta per stampare la quantit'#224' di apertura'
      Caption = 'stampa quantit'#224' apertura'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object v_elabora_mag: TRzCheckBox
      Left = 5
      Top = 150
      Width = 107
      Height = 15
      Hint = 
        'spunta per elaborare direttamente i progressivi di movimentazion' +
        'e'
      Caption = 'elabora progressivi'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object v_controllo_esistenza: trzcombobox_go
      Left = 5
      Top = 260
      Width = 151
      Height = 21
      Hint = 'controllo esistenza'
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
      TabOrder = 9
      Text = 'solo positiva'
      Items.Strings = (
        'solo positiva'
        'solo negativa'
        'tutti')
      ItemIndex = 0
    end
    object v_dalla_data: trzdatetimeedit_go
      Left = 5
      Top = 30
      Width = 80
      Height = 21
      Hint = 'data di stampa [Alt+Gi'#249' per aprire il calendario]'
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
      TabOrder = 0
      OnExit = v_alla_dataExit
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 373
    Width = 624
    ExplicitTop = 373
    ExplicitWidth = 624
    inherited Bevel1: TBevel
      Width = 624
      ExplicitWidth = 575
    end
    inherited v_modello: trzcombobox_go
      Width = 315
      ExplicitWidth = 315
    end
    inherited v_conferma: TRzBitBtn
      Left = 535
      ExplicitLeft = 535
    end
    inherited v_esci: TRzBitBtn
      Left = 535
      ExplicitLeft = 535
    end
  end
  inherited statusbar: TStatusBar
    Top = 436
    Width = 624
    ExplicitTop = 436
    ExplicitWidth = 624
  end
  inherited sor: TMyTable
    TableName = 'stainv'
  end
  inherited sor1: TMyTable
    TableName = 'stainv_lifo'
  end
  inherited tabella: TMyQuery_go
    Connection = nil
  end
  inherited ppDBTabella: TppDBPipeline
    DataSource = query_stampa_ds
  end
  inherited ppReport: TppReport
    Template.FileName = 
      'C:\GestionaleOpen\go_utenti\A31_PROMAU\report\A31STAMOV_STANDARD' +
      '.RTM'
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      mmHeight = 33867
      inherited pp_Shape4_parametri: TppShape
        mmTop = 265
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_Image_parametri: TppImage [1]
        LayerName = Foreground
      end
      inherited pp_Label8_parametri: TppLabel [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label9_parametri: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label12_parametri: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label13_parametri: TppLabel [5]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label14_parametri: TppLabel [6]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label15_parametri: TppLabel [7]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label16_parametri: TppLabel [8]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label17_parametri: TppLabel [9]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_copia_schermo: TppImage [10]
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape [11]
        mmTop = 10848
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable
        SaveOrder = -1
        mmLeft = 174625
        mmTop = 6085
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel [13]
        SaveOrder = -1
        mmLeft = 67733
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      inherited pp_Shape1: TppShape
        mmTop = 0
        mmWidth = 195792
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
      inherited pp_Shape3: TppShape [10]
        mmTop = 10583
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        mmLeft = 175684
        mmTop = 5556
        LayerName = Foreground
      end
      object pp_Label8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = '_Label8'
        Border.Weight = 1.000000000000000000
        Caption = 'categoria inventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 1588
        mmTop = 11906
        mmWidth = 24553
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label_l_alla_data: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Border.Weight = 1.000000000000000000
        Caption = 'Alla data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 84402
        mmTop = 1588
        mmWidth = 11726
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label_alla_data: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 98690
        mmTop = 1588
        mmWidth = 635
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3969
      object pp_DBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
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
        mmLeft = 41540
        mmTop = 265
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000;-,0.0000;0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 131234
        mmTop = 265
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        DataField = 'prezzo'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000;-,0.0000;0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 153988
        mmTop = 265
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        DataField = 'importo'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.00;-,0.00;0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 174096
        mmTop = 265
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
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
        mmLeft = 52652
        mmTop = 265
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_apertura_tma'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000;-,0.0000;0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 108480
        mmTop = 265
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 14288
      inherited pp_utente: TppLabel [0]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Shape2: TppShape [1]
        mmTop = 6615
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        mmTop = 7938
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel
        SaveOrder = -1
        mmTop = 7938
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable [4]
        SaveOrder = -1
        mmLeft = 174096
        mmTop = 7938
        LayerName = Foreground
      end
      object pp_Shape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Color = clBtnFace
        Shape = stRoundRect
        mmHeight = 6085
        mmLeft = 794
        mmTop = 265
        mmWidth = 195792
        BandType = 8
        LayerName = Foreground
      end
      object pp_DBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000;-,0.0000;0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 131234
        mmTop = 1323
        mmWidth = 21960
        BandType = 8
        LayerName = Foreground
      end
      object pp_DBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.Weight = 1.000000000000000000
        DataField = 'importo'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.00;-,0.00;0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 169598
        mmTop = 1323
        mmWidth = 25665
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_apertura_tma'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000;-,0.0000;0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 108479
        mmTop = 1323
        mmWidth = 21960
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [4]
      BreakName = 'codice_raggruppamento'
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
        mmHeight = 8467
        mmPrintPosition = 0
        object pp_DBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.Weight = 1.000000000000000000
          DataField = 'codice_raggruppamento'
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
          mmTop = 0
          mmWidth = 46038
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.Weight = 1.000000000000000000
          DataField = 'descrizione_raggruppamento'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 50536
          mmTop = 0
          mmWidth = 144992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.Weight = 1.000000000000000000
          Caption = 'codice articolo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 4233
          mmTop = 4233
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Border.Weight = 1.000000000000000000
          Caption = 'u.m.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 186796
          mmTop = 4233
          mmWidth = 5546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Label13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          Border.Weight = 1.000000000000000000
          Caption = 'descrizione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 34660
          mmTop = 4233
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 23283
          mmTop = 6615
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 48683
          mmTop = 6615
          mmWidth = 112713
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line8: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line8'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 192617
          mmTop = 6615
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label21'
          Border.Weight = 1.000000000000000000
          Caption = 'valorizzazione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 161925
          mmTop = 4233
          mmWidth = 17865
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line10'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 180182
          mmTop = 6615
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object pp_DBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          Border.Weight = 1.000000000000000000
          DataField = 'importo'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.00;-,0.00;0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 174096
          mmTop = 0
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line7: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line7'
          Border.Weight = 1.000000000000000000
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1588
          mmLeft = 12700
          mmTop = 2117
          mmWidth = 94986
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc4'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.0000;-,0.0000;0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 131234
          mmTop = 0
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc8'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_apertura_tma'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.0000;-,0.0000;0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3175
          mmLeft = 108479
          mmTop = 0
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup [5]
      BreakName = 'art_codice'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object pp_DBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          OnDrawCommandClick = pp_DBText2DrawCommandClick
          OnDrawCommandCreate = pp_DBText2DrawCommandCreate
          Border.Weight = 1.000000000000000000
          DataField = 'art_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3175
          mmLeft = 4233
          mmTop = 794
          mmWidth = 29369
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Border.Weight = 1.000000000000000000
          DataField = 'art_descrizione1'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3175
          mmLeft = 34925
          mmTop = 794
          mmWidth = 94986
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Border.Weight = 1.000000000000000000
          DataField = 'art_tum_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 186796
          mmTop = 794
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Border.Weight = 1.000000000000000000
          Caption = 'deposito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 41275
          mmTop = 4498
          mmWidth = 10668
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Border.Weight = 1.000000000000000000
          Caption = 'descrizione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 52652
          mmTop = 4498
          mmWidth = 14266
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          Border.Weight = 1.000000000000000000
          Caption = 'quantit'#224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 143140
          mmTop = 4498
          mmWidth = 10033
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label17: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          Border.Weight = 1.000000000000000000
          Caption = 'costo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 166159
          mmTop = 4498
          mmWidth = 6816
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.Weight = 1.000000000000000000
          Caption = 'valore'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 187590
          mmTop = 4498
          mmWidth = 7662
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 66940
          mmTop = 6879
          mmWidth = 52652
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 153194
          mmTop = 6879
          mmWidth = 12700
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 173038
          mmTop = 6879
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label31'
          Border.Weight = 1.000000000000000000
          Caption = 'apertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 131498
          mmTop = 794
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_apertura'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.0000;-,0.0000;0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3175
          mmLeft = 143140
          mmTop = 794
          mmWidth = 17992
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.Weight = 1.000000000000000000
          DataField = 'ART_DESCRIZIONE2'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3175
          mmLeft = 161925
          mmTop = 794
          mmWidth = 23283
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label22'
          Border.Weight = 1.000000000000000000
          Caption = 'apertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 119327
          mmTop = 4498
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line9'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 129382
          mmTop = 6879
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object pp_DBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.0000;-,0.0000;0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 131234
          mmTop = 265
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          Border.Weight = 1.000000000000000000
          DataField = 'importo'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.00;-,0.00;0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 174096
          mmTop = 265
          mmWidth = 21167
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line6: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 41540
          mmTop = 2646
          mmWidth = 66146
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc7'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_apertura_tma'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.0000;-,0.0000;0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3175
          mmLeft = 108479
          mmTop = 265
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
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
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited query_stampa: TMyQuery_go
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.STAINV T')
  end
  object inventario: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 65526
  end
  object prezzo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select mag.data_carico, mag.prezzo_carico'
      'from mag mag'
      'inner join tma tma on (tma.codice = mag.tma_codice)'
      
        'where mag.art_codice = :art_codice and tma.proprieta = '#39'si'#39' and ' +
        'mag.prezzo_carico <> 0'
      'order by mag.data_carico'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 515
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object valore: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select mag.data_carico, mag.prezzo_carico'
      'from mag mag'
      'inner join tma tma on (tma.codice = mag.tma_codice)'
      
        'where mag.art_codice = :art_codice and tma.proprieta = '#39'si'#39' and ' +
        'mag.prezzo_carico <> 0'
      'order by mag.data_carico'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object mag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from mag'
      'inner join tma tma on (tma.codice = mag.tma_codice)'
      'where art_codice = :art_codice and tma.proprieta = '#39'si'#39
      'order by data_carico')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 545
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object query_qta: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 155
    Top = 40
  end
  object query_val: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 180
    Top = 40
  end
  object lsa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo'
      'from lsa'
      'where art_codice = :art_codice and tla_codice = :tla_codice and'
      'data_inizio <= :data and data_fine >= :data'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 205
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tla_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end>
  end
  object quantita_totale: TMyQuery_go
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 230
    Top = 40
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = query_stampa_lifo_ds
    SkipWhenNoRecords = False
    UserName = 'LIFO'
    Left = 258
    Top = 40
  end
  object query_stampa_lifo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.STAINV_LIFO S')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 145
    Top = 10
  end
  object query_stampa_lifo_ds: TMyDataSource
    DataSet = query_stampa_lifo
    Left = 165
    Top = 10
  end
  object sor_update: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stainv'
      'set prezzo = :prezzo,'
      'importo = round(:quantita * :prezzo, 2)'
      'where id = :id'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 125
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prezzo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'prezzo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
end
