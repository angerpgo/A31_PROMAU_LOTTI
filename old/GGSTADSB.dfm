inherited STADSB: TSTADSB
  Left = 390
  Top = 96
  Caption = 'STADSB'
  ClientHeight = 425
  ClientWidth = 627
  Constraints.MinWidth = 629
  ExplicitWidth = 643
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 627
    ExplicitWidth = 627
  end
  inherited pannello_parametri: TRzPanel
    Width = 627
    Height = 308
    ExplicitWidth = 627
    ExplicitHeight = 308
    object Label2: TRzLabel [0]
      Left = 5
      Top = 85
      Width = 59
      Height = 13
      Caption = 'stampa costi'
      FocusControl = v_stampa_costi
      ShowAccelChar = False
      Transparent = True
    end
    object Label13: TRzLabel [1]
      Left = 5
      Top = 135
      Width = 22
      Height = 13
      Caption = 'livelli'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel1: TRzLabel [2]
      Left = 285
      Top = 135
      Width = 95
      Height = 13
      Caption = 'quantit'#224' da produrre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel6: TRzLabel [3]
      Left = 5
      Top = 181
      Width = 38
      Height = 13
      Caption = 'variante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_solo_finiti: TRzCheckBox
      Left = 5
      Top = 17
      Width = 183
      Height = 15
      Caption = 'stampa distinte dei soli prodotti finiti'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object v_nuova_pagina: TRzCheckBox
      Left = 285
      Top = 18
      Width = 170
      Height = 15
      Hint = 'spunta per iniziare una nuova pagina ad ogni distinta'
      Caption = 'cambio pagina a cambio distinta'
      State = cbUnchecked
      TabOrder = 2
    end
    object v_stampa_costi: trzcombobox_go
      Left = 5
      Top = 100
      Width = 186
      Height = 21
      Hint = 'selezionare il tipo di costo da utilizzare per la valorizzazione'
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
      TabOrder = 5
      Text = 'no'
      OnChange = v_stampa_costiChange
      Items.Strings = (
        'no'
        'costo standard'
        'ricalcolo'
        'costo ultimo')
      ItemIndex = 0
    end
    object v_indentazione: TRzCheckBox
      Left = 5
      Top = 53
      Width = 110
      Height = 15
      Hint = 'spunta per indentare tutti i campi a cambio livello'
      Caption = 'indentazione campi'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object pannello_bottoni: TRzPanel
      Left = 0
      Top = 277
      Width = 627
      Height = 31
      Align = alBottom
      BorderOuter = fsLowered
      TabOrder = 6
      object v_selart: TRzRapidFireButton
        Left = 5
        Top = 4
        Width = 111
        Height = 22
        Caption = 'articoli'
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
    object v_dettaglio_cicli: TRzCheckBox
      Left = 285
      Top = 53
      Width = 80
      Height = 15
      Hint = 'spunta per stampare il dettaglio dei cili di lavorazione'
      Caption = 'dettaglio cicli'
      State = cbUnchecked
      TabOrder = 4
      OnClick = v_dettaglio_cicliClick
    end
    object v_livelli: trznumericedit_go
      Left = 5
      Top = 150
      Width = 186
      Height = 21
      Hint = 'livelli da stampare (0=tutti)'
      Margins.Left = 1
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 7
      IntegersOnly = False
      DisplayFormat = '0'
      decimalplaces = 4
    end
    object v_quantita: trznumericedit_go
      Left = 285
      Top = 150
      Width = 96
      Height = 21
      Hint = 'quantit'#224' da produrre'
      Margins.Left = 1
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 8
      OnExit = v_quantitaExit
      IntegersOnly = False
      DisplayFormat = ',0.0000;'
      Value = 1.000000000000000000
      decimalplaces = 4
    end
    object v_tvr_codice: trzedit_go
      Left = 5
      Top = 196
      Width = 91
      Height = 21
      Hint = 'codice variante [F4 F5 F6]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 9
      OnExit = v_tvr_codiceExit
      lookcolldatabase = 'ARC.ARCDIT'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTVR'
      lookcolltable = 'TVR'
      lookcollvisname = 'TVR'
    end
    object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
      Left = 99
      Top = 196
      Width = 512
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tvr_ds
      DataField = 'descrizione'
      ReadOnly = True
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 10
    end
    object v_materia_prima: TRzCheckBox
      Left = 5
      Top = 238
      Width = 194
      Height = 15
      Hint = 
        'spunta per non esplodere gli articoli spuntati in anagrafica com' +
        'e "materia prima"'
      Caption = 'non esplodere articoli "materia prima"'
      State = cbUnchecked
      TabOrder = 11
      OnClick = v_dettaglio_cicliClick
    end
    object v_aggiorna_costo_standard: TRzCheckBox
      Left = 285
      Top = 238
      Width = 190
      Height = 15
      Hint = 'aggiorna il costo standard del padre in anagrafica articolo'
      Caption = 'aggiorna costo standard primo livello'
      Enabled = False
      State = cbUnchecked
      TabOrder = 12
      OnClick = v_dettaglio_cicliClick
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 342
    Width = 627
    ExplicitTop = 342
    ExplicitWidth = 627
    inherited Bevel1: TBevel
      Width = 627
      ExplicitWidth = 570
    end
    inherited v_modello: trzcombobox_go
      Width = 314
      ExplicitWidth = 314
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
    Top = 405
    Width = 627
    ExplicitTop = 405
    ExplicitWidth = 627
  end
  inherited sor: TMyTable
    TableName = 'STADSB'
  end
  inherited sor1: TMyTable
    TableName = 'stadsb_cicli'
  end
  inherited tabella: TMyQuery_go
    Connection = nil
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'select codice, descrizione1, descrizione2 from art'
      'order by codice')
  end
  inherited ppDBTabella: TppDBPipeline
    DataSource = query_stampa_ds
  end
  inherited ppReport: TppReport
    Template.FileName = 'C:\GestionaleOpen\go_1002\report\STADSB_STANDARD.RTM'
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
        Transparent = True
        mmHeight = 3217
        mmLeft = 10319
        mmTop = 12700
        mmWidth = 17992
        BandType = 0
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
        mmHeight = 3217
        mmLeft = 41010
        mmTop = 12700
        mmWidth = 14266
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.Weight = 1.000000000000000000
        Caption = 'u.m.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 130175
        mmTop = 12700
        mmWidth = 5546
        BandType = 0
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
        mmLeft = 141817
        mmTop = 12700
        mmWidth = 10033
        BandType = 0
        LayerName = Foreground
      end
      object pp_valorizzazione: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3217
        mmLeft = 180182
        mmTop = 12700
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.Weight = 1.000000000000000000
        Caption = 'lavorazione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 164836
        mmTop = 12700
        mmWidth = 14393
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.Weight = 1.000000000000000000
        Caption = 'depos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 153194
        mmTop = 12700
        mmWidth = 8509
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmHeight = 21167
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
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 17198
        mmTop = 529
        mmWidth = 30427
        BandType = 4
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
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 47890
        mmTop = 529
        mmWidth = 82021
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.000000;-,0.000000;#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 138642
        mmTop = 265
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
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
        mmLeft = 130440
        mmTop = 265
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'descrizione_tecnica'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        ShiftRelativeTo = pp_Region1
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 47890
        mmTop = 7938
        mmWidth = 106098
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object pp_DBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        DataField = 'livello'
        DataPipeline = ppDBTabella
        DisplayFormat = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 1058
        mmTop = 529
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'descrizione'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        ShiftRelativeTo = pp_DBMemo1
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 47890
        mmTop = 11377
        mmWidth = 106098
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object pp_Region1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 4498
        mmLeft = 46567
        mmTop = 3440
        mmWidth = 69321
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object pp_DBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          Border.Weight = 1.000000000000000000
          DataField = 'codice_alternativo'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 47889
          mmTop = 4233
          mmWidth = 64823
          BandType = 4
          LayerName = Foreground
        end
      end
      object pp_DBText_costo_figlio: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        DataField = 'costo_codice_figlio'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.000000;-,0.000000;#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 179652
        mmTop = 265
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        DataField = 'costo_produzione_codice_figlio'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.000000;-,0.000000;#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 162190
        mmTop = 265
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        DataField = 'TMA_CODICE'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 153194
        mmTop = 265
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object pp_ciclo_figli: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = '_ciclo_figli'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = pp_DBMemo2
        TraverseAllData = False
        DataPipelineName = 'pp_cla_figli'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 15346
        mmWidth = 210079
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = pp_cla_figli
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Template.Format = ftASCII
          Version = '17.01'
          mmColumnWidth = 0
          DataPipelineName = 'pp_cla_figli'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 7673
            mmPrintPosition = 0
            object ppShape3: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape1'
              Brush.Color = clBtnFace
              Shape = stRoundRect
              mmHeight = 4498
              mmLeft = 7673
              mmTop = 1852
              mmWidth = 189972
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label2'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'sequenza'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2455
              mmLeft = 8731
              mmTop = 2910
              mmWidth = 9229
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label3'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'fase'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2455
              mmLeft = 22754
              mmTop = 2910
              mmWidth = 4022
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label4'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'u.m.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2455
              mmLeft = 124354
              mmTop = 2910
              mmWidth = 4149
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label5'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'quantit'#224
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2455
              mmLeft = 184944
              mmTop = 2910
              mmWidth = 7578
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label6'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'tipo operazione'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              mmHeight = 2455
              mmLeft = 136789
              mmTop = 2910
              mmWidth = 14520
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel1: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label1'
              HyperlinkEnabled = False
              Caption = 'CICLO DI LAVORAZIONE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 30956
              mmTop = 1852
              mmWidth = 45244
              BandType = 1
              LayerName = Foreground1
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText201'
              HyperlinkEnabled = False
              DataField = 'art_codice'
              DataPipeline = pp_cla_figli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pp_cla_figli'
              mmHeight = 4233
              mmLeft = 78317
              mmTop = 1852
              mmWidth = 45508
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              HyperlinkEnabled = False
              DataField = 'art_codice_cla'
              DataPipeline = pp_cla_figli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'pp_cla_figli'
              mmHeight = 3440
              mmLeft = 32015
              mmTop = 794
              mmWidth = 35719
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText8'
              HyperlinkEnabled = False
              DataField = 'art_descrizione_cla'
              DataPipeline = pp_cla_figli
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'pp_cla_figli'
              mmHeight = 3440
              mmLeft = 68527
              mmTop = 794
              mmWidth = 128323
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppShape4: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape2'
              Brush.Color = clBtnFace
              Shape = stRoundRect
              mmHeight = 4498
              mmLeft = 7673
              mmTop = 265
              mmWidth = 189972
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'sequenza'
            DataPipeline = pp_cla_figli
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            ReprintOnSubsequentPage = False
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'pp_cla_figli'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 14288
              mmPrintPosition = 0
              object ppDBMemo2: TppDBMemo
                DesignLayer = ppDesignLayer2
                UserName = 'DBMemo1'
                CharWrap = False
                DataField = 'note'
                DataPipeline = pp_cla_figli
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                RemoveEmptyLines = False
                Stretch = True
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 7408
                mmLeft = 48948
                mmTop = 5292
                mmWidth = 148432
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                mmLeading = 0
              end
              object ppDBText14: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText3'
                HyperlinkEnabled = False
                DataField = 'fas_descrizione'
                DataPipeline = pp_cla_figli
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 3440
                mmLeft = 48948
                mmTop = 1058
                mmWidth = 74613
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBText15: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText5'
                HyperlinkEnabled = False
                DataField = 'quantita'
                DataPipeline = pp_cla_figli
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 3440
                mmLeft = 179652
                mmTop = 1058
                mmWidth = 16934
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBText16: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText4'
                HyperlinkEnabled = False
                DataField = 'tum_codice'
                DataPipeline = pp_cla_figli
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 3440
                mmLeft = 124354
                mmTop = 1058
                mmWidth = 11642
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBText17: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText6'
                HyperlinkEnabled = False
                DataField = 'tipo_operazione'
                DataPipeline = pp_cla_figli
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 3440
                mmLeft = 136789
                mmTop = 1058
                mmWidth = 26458
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBText18: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText1'
                HyperlinkEnabled = False
                DataField = 'sequenza'
                DataPipeline = pp_cla_figli
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 3440
                mmLeft = 8467
                mmTop = 1058
                mmWidth = 13229
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBText19: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText2'
                HyperlinkEnabled = False
                DataField = 'fas_codice'
                DataPipeline = pp_cla_figli
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 3440
                mmLeft = 22490
                mmTop = 1058
                mmWidth = 25665
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
              object ppDBText23: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText23'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'costo_unitario'
                DataPipeline = pp_cla_figli
                DisplayFormat = ',0.000000;-,0.000000;#'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pp_cla_figli'
                mmHeight = 3217
                mmLeft = 162190
                mmTop = 1058
                mmWidth = 16933
                BandType = 3
                GroupNo = 0
                LayerName = Foreground1
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBa31costo_kg: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBa31costo_kg'
        Border.Weight = 1.000000000000000000
        DataField = 'costo_produzione_codice_figlio'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.000000;-,0.000000;#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 162190
        mmTop = 4233
        mmWidth = 16933
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
      BreakName = 'art_codice_padre'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
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
        mmHeight = 19579
        mmPrintPosition = 0
        object pp_Shape4: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape4'
          Brush.Color = clBtnFace
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 794
          mmTop = 1058
          mmWidth = 196586
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.Weight = 1.000000000000000000
          DataField = 'art_descrizione1_padre'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 40746
          mmTop = 2117
          mmWidth = 89165
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          Border.Weight = 1.000000000000000000
          DataField = 'art_codice_padre'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 10054
          mmTop = 2117
          mmWidth = 30427
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          Border.Weight = 1.000000000000000000
          DataField = 'art_tum_codice_padre'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 132027
          mmTop = 2117
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_DBText_costo_padre: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          Border.Weight = 1.000000000000000000
          DataField = 'costo_codice_padre'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.000000;-,0.000000;#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 180446
          mmTop = 2117
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText101'
          Border.Weight = 1.000000000000000000
          DataField = 'COSTO_PRODUZIONE_CODICE_PADRE'
          DataPipeline = ppDBTabella
          DisplayFormat = ',0.000000;-,0.000000;#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 159015
          mmTop = 2117
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_ciclo_padre: TppSubReport
          DesignLayer = ppDesignLayer1
          UserName = '_ciclo_padre'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'pp_cla'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 14023
          mmWidth = 210079
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = pp_cla
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.Duplex = dpNone
            PrinterSetup.PaperName = 'A4'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 0
            PrinterSetup.mmMarginLeft = 0
            PrinterSetup.mmMarginRight = 0
            PrinterSetup.mmMarginTop = 0
            PrinterSetup.mmPaperHeight = 297127
            PrinterSetup.mmPaperWidth = 210079
            PrinterSetup.PaperSize = 9
            Template.Format = ftASCII
            Version = '17.01'
            mmColumnWidth = 0
            DataPipelineName = 'pp_cla'
            object ppTitleBand1: TppTitleBand
              Background.Brush.Style = bsClear
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 7673
              mmPrintPosition = 0
              object ppShape2: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape1'
                Brush.Color = clBtnFace
                Shape = stRoundRect
                mmHeight = 4498
                mmLeft = 7673
                mmTop = 1852
                mmWidth = 189971
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel4: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label1'
                HyperlinkEnabled = False
                Caption = 'CICLO DI LAVORAZIONE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 30956
                mmTop = 1852
                mmWidth = 45244
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel5: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label2'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'sequenza'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2455
                mmLeft = 8731
                mmTop = 2910
                mmWidth = 9229
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel6: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label3'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'fase'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2455
                mmLeft = 22754
                mmTop = 2910
                mmWidth = 4022
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel8: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label4'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'u.m.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2455
                mmLeft = 124354
                mmTop = 2910
                mmWidth = 4149
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel7: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label5'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'quantit'#224
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2455
                mmLeft = 186532
                mmTop = 2910
                mmWidth = 7578
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel9: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label6'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'tipo operazione'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2455
                mmLeft = 136790
                mmTop = 2910
                mmWidth = 14520
                BandType = 1
                LayerName = Foreground2
              end
              object ppDBText20: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText20'
                HyperlinkEnabled = False
                DataField = 'art_codice'
                DataPipeline = pp_cla
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                DataPipelineName = 'pp_cla'
                mmHeight = 4233
                mmLeft = 78317
                mmTop = 1852
                mmWidth = 45244
                BandType = 1
                LayerName = Foreground2
              end
            end
            object ppDetailBand2: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 6615
              mmPrintPosition = 0
              object ppDBText5: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText7'
                HyperlinkEnabled = False
                DataField = 'art_codice_cla'
                DataPipeline = pp_cla
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'pp_cla'
                mmHeight = 3440
                mmLeft = 32015
                mmTop = 794
                mmWidth = 35719
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText6: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText8'
                HyperlinkEnabled = False
                DataField = 'art_descrizione_cla'
                DataPipeline = pp_cla
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'pp_cla'
                mmHeight = 3440
                mmLeft = 68527
                mmTop = 794
                mmWidth = 128059
                BandType = 4
                LayerName = Foreground2
              end
            end
            object ppSummaryBand1: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppShape1: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape2'
                Brush.Color = clBtnFace
                Shape = stRoundRect
                mmHeight = 4498
                mmLeft = 7673
                mmTop = 265
                mmWidth = 189972
                BandType = 7
                LayerName = Foreground2
              end
            end
            object ppGroup2: TppGroup
              BreakName = 'sequenza'
              DataPipeline = pp_cla
              GroupFileSettings.NewFile = False
              GroupFileSettings.EmailFile = False
              OutlineSettings.CreateNode = True
              ReprintOnSubsequentPage = False
              StartOnOddPage = False
              UserName = 'Group2'
              mmNewColumnThreshold = 0
              mmNewPageThreshold = 0
              DataPipelineName = 'pp_cla'
              NewFile = False
              object ppGroupHeaderBand2: TppGroupHeaderBand
                Background.Brush.Style = bsClear
                PrintHeight = phDynamic
                mmBottomOffset = 0
                mmHeight = 14288
                mmPrintPosition = 0
                object ppDBMemo1: TppDBMemo
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBMemo1'
                  CharWrap = False
                  DataField = 'note'
                  DataPipeline = pp_cla
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  RemoveEmptyLines = False
                  Stretch = True
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 7408
                  mmLeft = 48948
                  mmTop = 5292
                  mmWidth = 147902
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                  mmBottomOffset = 0
                  mmOverFlowOffset = 0
                  mmStopPosition = 0
                  mmMinHeight = 0
                  mmLeading = 0
                end
                object ppDBText10: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText3'
                  HyperlinkEnabled = False
                  DataField = 'fas_descrizione'
                  DataPipeline = pp_cla
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3440
                  mmLeft = 48948
                  mmTop = 1058
                  mmWidth = 74613
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
                object ppDBText11: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText5'
                  HyperlinkEnabled = False
                  DataField = 'quantita'
                  DataPipeline = pp_cla
                  DisplayFormat = ',0.00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3440
                  mmLeft = 179652
                  mmTop = 1058
                  mmWidth = 16934
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
                object ppDBText12: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText4'
                  HyperlinkEnabled = False
                  DataField = 'tum_codice'
                  DataPipeline = pp_cla
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3440
                  mmLeft = 124354
                  mmTop = 1058
                  mmWidth = 11642
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
                object ppDBText4: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText6'
                  HyperlinkEnabled = False
                  DataField = 'tipo_operazione'
                  DataPipeline = pp_cla
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3440
                  mmLeft = 136790
                  mmTop = 1058
                  mmWidth = 24606
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
                object ppDBText8: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText1'
                  HyperlinkEnabled = False
                  DataField = 'sequenza'
                  DataPipeline = pp_cla
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3440
                  mmLeft = 8467
                  mmTop = 1058
                  mmWidth = 13229
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
                object ppDBText9: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText2'
                  HyperlinkEnabled = False
                  DataField = 'fas_codice'
                  DataPipeline = pp_cla
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3440
                  mmLeft = 22490
                  mmTop = 1058
                  mmWidth = 25665
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
                object ppDBText22: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText22'
                  HyperlinkEnabled = False
                  Border.Weight = 1.000000000000000000
                  DataField = 'costo_unitario'
                  DataPipeline = pp_cla
                  DisplayFormat = ',0.000000;-,0.000000;#'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3217
                  mmLeft = 162189
                  mmTop = 1058
                  mmWidth = 16933
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
                object ppDBa31_costo_h: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBa31_costo_h'
                  HyperlinkEnabled = False
                  Border.Weight = 1.000000000000000000
                  DataField = 'costo_unitario'
                  DataPipeline = pp_cla
                  DisplayFormat = ',0.000000;-,0.000000;#'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'pp_cla'
                  mmHeight = 3175
                  mmLeft = 160867
                  mmTop = 5292
                  mmWidth = 16933
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground2
                end
              end
              object ppGroupFooterBand2: TppGroupFooterBand
                Background.Brush.Style = bsClear
                HideWhenOneDetail = False
                mmBottomOffset = 0
                mmHeight = 0
                mmPrintPosition = 0
              end
            end
            object ppDesignLayers3: TppDesignLayers
              object ppDesignLayer3: TppDesignLayer
                UserName = 'Foreground2'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
        object ppSubReport1: TppSubReport
          DesignLayer = ppDesignLayer1
          UserName = '_listini'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          mmHeight = 5027
          mmLeft = 0
          mmTop = 7938
          mmWidth = 210079
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport3: TppChildReport
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.Duplex = dpNone
            PrinterSetup.PaperName = 'A4'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 0
            PrinterSetup.mmMarginLeft = 0
            PrinterSetup.mmMarginRight = 0
            PrinterSetup.mmMarginTop = 0
            PrinterSetup.mmPaperHeight = 297127
            PrinterSetup.mmPaperWidth = 210079
            PrinterSetup.PaperSize = 9
            Template.Format = ftASCII
            Version = '17.01'
            mmColumnWidth = 0
            object ppTitleBand3: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppDetailBand4: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 6085
              mmPrintPosition = 0
              object ppDBText24: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText24'
                DataField = 'cli_codice'
                DataPipeline = ppDBlistini
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBlistini'
                mmHeight = 4498
                mmLeft = 4763
                mmTop = 1588
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground3
              end
              object ppDBText25: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText25'
                DataField = 'cli_descrizione1'
                DataPipeline = ppDBlistini
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBlistini'
                mmHeight = 4498
                mmLeft = 23548
                mmTop = 1588
                mmWidth = 38365
                BandType = 4
                LayerName = Foreground3
              end
            end
            object ppSummaryBand3: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppDesignLayers4: TppDesignLayers
              object ppDesignLayer4: TppDesignLayer
                UserName = 'Foreground3'
                LayerType = ltBanded
                Index = 0
              end
            end
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
      'FROM ARC_ORDINAMENTO.STADSB T'
      '')
  end
  object query_figlio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from dsb'
      'where art_codice_padre = :art_codice limit 1')
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
  object query_padre: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from dsb'
      'where art_codice_figlio = :art_codice limit 1')
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
  object dsb: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 10
  end
  object dsb_01: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 335
    Top = 10
  end
  object dsb_02: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 10
  end
  object dsb_03: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 365
    Top = 10
  end
  object dsb_04: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 10
  end
  object dsb_05: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 395
    Top = 10
  end
  object dsb_06: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 10
  end
  object dsb_07: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 10
  end
  object dsb_08: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 430
    Top = 10
  end
  object dsb_09: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 10
  end
  object dsb_10: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 10
  end
  object dsb_11: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 10
  end
  object dsb_12: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 10
  end
  object lsa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo'
      'from lsa'
      'where art_codice = :art_codice and tla_codice = :tla_codice and'
      '  (data_inizio <= :data_inizio and data_fine >= :data_fine)'
      '  '
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 580
    Top = 60
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
        Name = 'data_inizio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_fine'
        Value = nil
      end>
  end
  object dsb_costo: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select sum(costo_codice_figlio) costo'
      'from stadsb'
      
        'where utn_codice = :utn_codice and art_codice_livello = :art_cod' +
        'ice_livello'
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 95
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_livello'
        Value = nil
      end>
  end
  object costo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo_carico'
      'from mag'
      'where art_codice = :art_codice'
      'order by data_carico desc'
      'limit 1'
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 115
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object costo_livello: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      'set costo_codice_padre = :costo_codice_padre'
      
        'where utn_codice = :utn_codice and art_codice_livello = :art_cod' +
        'ice_livello'
      ''
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 135
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_livello'
        Value = nil
      end>
  end
  object arv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select variabile, descrizione'
      'from arv'
      'where art_codice = :art_codice'
      'order by descrizione'
      ''
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 155
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object cla: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' art_codice, '#39#39' sequenza, '#39#39' fas_codice, '#39#39' fas_descriz' +
        'ione, '#39#39' tum_codice, 0 quantita,'
      
        #39#39' tipo_operazione, '#39#39' note, '#39#39' art_codice_cla, '#39#39' art_descrizio' +
        'ne_cla, 0 costo_unitario'
      'from cla'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 175
    Top = 20
  end
  object cla_ds: TMyDataSource
    DataSet = cla
    Left = 190
    Top = 20
  end
  object pp_cla: TppDBPipeline
    DataSource = query_stampa_cicli_padre_ds
    SkipWhenNoRecords = False
    UserName = 'CICLI_PADRE'
    Left = 213
    Top = 20
    object pp_clappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pp_clappField2: TppField
      FieldAlias = 'utn_codice'
      FieldName = 'utn_codice'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object pp_clappField3: TppField
      FieldAlias = 'utente_creazione'
      FieldName = 'utente_creazione'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object pp_clappField4: TppField
      FieldAlias = 'data_ora_creazione'
      FieldName = 'data_ora_creazione'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object pp_clappField5: TppField
      FieldAlias = 'utente'
      FieldName = 'utente'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object pp_clappField6: TppField
      FieldAlias = 'data_ora'
      FieldName = 'data_ora'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object pp_clappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'id_origine'
      FieldName = 'id_origine'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object pp_clappField8: TppField
      FieldAlias = 'art_codice'
      FieldName = 'art_codice'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object pp_clappField9: TppField
      FieldAlias = 'sequenza'
      FieldName = 'sequenza'
      FieldLength = 4
      DisplayWidth = 4
      Position = 8
    end
    object pp_clappField10: TppField
      FieldAlias = 'fas_codice'
      FieldName = 'fas_codice'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object pp_clappField11: TppField
      FieldAlias = 'fas_descrizione'
      FieldName = 'fas_descrizione'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object pp_clappField12: TppField
      FieldAlias = 'tum_codice'
      FieldName = 'tum_codice'
      FieldLength = 4
      DisplayWidth = 4
      Position = 11
    end
    object pp_clappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita'
      FieldName = 'quantita'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object pp_clappField14: TppField
      FieldAlias = 'tipo_operazione'
      FieldName = 'tipo_operazione'
      FieldLength = 8
      DisplayWidth = 8
      Position = 13
    end
    object pp_clappField15: TppField
      FieldAlias = 'note'
      FieldName = 'note'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pp_clappField16: TppField
      FieldAlias = 'art_codice_cla'
      FieldName = 'art_codice_cla'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object pp_clappField17: TppField
      FieldAlias = 'art_descrizione_cla'
      FieldName = 'art_descrizione_cla'
      FieldLength = 120
      DisplayWidth = 120
      Position = 16
    end
    object pp_clappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'costo_unitario'
      FieldName = 'costo_unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object pp_clappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'a31costo_orario'
      FieldName = 'a31costo_orario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
  end
  object cla_figli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cla.art_codice, cla.sequenza, cla.fas_codice, fas.descriz' +
        'ione fas_descrizione,'
      'fas.tum_codice, fas.tipo_operazione, cla.note,'
      ''
      'case'
      'when fas.tipo_operazione = '#39'ignora'#39' then 0'
      
        'when fas.tipo_operazione = '#39'globale'#39' then (cla.quantita_attrezza' +
        'ggio + cla.quantita) / :quantita'
      'when fas.tipo_operazione = '#39'singola'#39' then'
      'case'
      
        'when cla.operatore = '#39'*'#39' then cla.quantita_attrezzaggio + round(' +
        'cla.quantita / :quantita, 4)'
      
        'when cla.operatore = '#39'/'#39' then cla.quantita_attrezzaggio + round(' +
        'cla.quantita / :quantita, 4)'
      'else 0'
      'end'
      'end quantita,'
      ''
      'case'
      'when fas.tipo_operazione = '#39'ignora'#39' then 0'
      'when fas.tipo_operazione = '#39'globale'#39
      
        'then F_COSTO_UNITARIO_FASE(fas.codice, '#39#39#39#39') * (cla.quantita_att' +
        'rezzaggio + cla.quantita) / :quantita'
      'when fas.tipo_operazione = '#39'singola'#39' then'
      'case'
      
        'when cla.operatore = '#39'*'#39' then round(F_COSTO_UNITARIO_FASE(fas.co' +
        'dice, '#39#39'), 6) *'
      
        'round((cla.quantita_attrezzaggio + :quantita * cla.quantita), 4)' +
        ' / :quantita'
      
        'when cla.operatore = '#39'/'#39' then round(F_COSTO_UNITARIO_FASE(fas.co' +
        'dice, '#39#39'), 6) *'
      
        'round((cla.quantita_attrezzaggio + :quantita / cla.quantita), 4)' +
        ' / :quantita'
      'else 0'
      'end'
      'end costo_unitario,'
      ''
      
        'art_cla.codice art_codice_cla, concat(trim(art_cla.descrizione1)' +
        ', '#39' '#39', art_cla.descrizione2) art_descrizione_cla'
      'from cla'
      'inner join art on art.codice = cla.art_codice'
      'inner join fas on fas.codice = cla.fas_codice'
      'left join dsb on dsb.art_codice_padre = cla.art_codice'
      
        'and dsb.cla_sequenza = cla.sequenza and dsb.fas_codice = cla.fas' +
        '_codice'
      'left join art art_cla on art_cla.codice = dsb.art_codice_figlio'
      'where cla.art_codice = :art_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 515
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object pp_cla_figli: TppDBPipeline
    DataSource = query_stampa_cicli_figli_ds
    SkipWhenNoRecords = False
    UserName = 'CICLI_FIGLI'
    Left = 548
    Top = 60
    object pp_cla_figlippField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pp_cla_figlippField2: TppField
      FieldAlias = 'utente_creazione'
      FieldName = 'utente_creazione'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object pp_cla_figlippField3: TppField
      FieldAlias = 'data_ora_creazione'
      FieldName = 'data_ora_creazione'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object pp_cla_figlippField4: TppField
      FieldAlias = 'utente'
      FieldName = 'utente'
      FieldLength = 8
      DisplayWidth = 8
      Position = 3
    end
    object pp_cla_figlippField5: TppField
      FieldAlias = 'data_ora'
      FieldName = 'data_ora'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object pp_cla_figlippField6: TppField
      FieldAlias = 'utn_codice'
      FieldName = 'utn_codice'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object pp_cla_figlippField7: TppField
      FieldAlias = 'art_codice'
      FieldName = 'art_codice'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object pp_cla_figlippField8: TppField
      FieldAlias = 'sequenza'
      FieldName = 'sequenza'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object pp_cla_figlippField9: TppField
      FieldAlias = 'fas_codice'
      FieldName = 'fas_codice'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object pp_cla_figlippField10: TppField
      FieldAlias = 'fas_descrizione'
      FieldName = 'fas_descrizione'
      FieldLength = 40
      DisplayWidth = 40
      Position = 9
    end
    object pp_cla_figlippField11: TppField
      FieldAlias = 'tum_codice'
      FieldName = 'tum_codice'
      FieldLength = 4
      DisplayWidth = 4
      Position = 10
    end
    object pp_cla_figlippField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita'
      FieldName = 'quantita'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object pp_cla_figlippField13: TppField
      FieldAlias = 'tipo_operazione'
      FieldName = 'tipo_operazione'
      FieldLength = 8
      DisplayWidth = 8
      Position = 12
    end
    object pp_cla_figlippField14: TppField
      FieldAlias = 'note'
      FieldName = 'note'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pp_cla_figlippField15: TppField
      FieldAlias = 'art_codice_cla'
      FieldName = 'art_codice_cla'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pp_cla_figlippField16: TppField
      FieldAlias = 'art_descrizione_cla'
      FieldName = 'art_descrizione_cla'
      FieldLength = 80
      DisplayWidth = 80
      Position = 15
    end
    object pp_cla_figlippField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'costo_unitario'
      FieldName = 'costo_unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
  end
  object dsb_13: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 35
  end
  object dsb_14: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 335
    Top = 35
  end
  object dsb_15: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 35
  end
  object dsb_16: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 365
    Top = 35
  end
  object dsb_17: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 35
  end
  object dsb_18: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 395
    Top = 35
  end
  object MyQuery_go7: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 35
  end
  object dsb_19: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 35
  end
  object MyQuery_go9: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 430
    Top = 35
  end
  object dsb_20: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 35
  end
  object dsb_21: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 35
  end
  object dsb_22: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 35
  end
  object dsb_23: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 35
  end
  object dsb_24: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 55
  end
  object dsb_25: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 335
    Top = 55
  end
  object dsb_26: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 55
  end
  object dsb_27: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 365
    Top = 55
  end
  object dsb_28: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 55
  end
  object dsb_29: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 395
    Top = 55
  end
  object dsb_30: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 90
  end
  object dsb_31: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 90
  end
  object dsb_32: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 90
  end
  object dsb_33: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 90
  end
  object dsb_34: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    Top = 90
  end
  object dsb_35: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 90
  end
  object dsb_36: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 500
    Top = 90
  end
  object dsb_37: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 90
  end
  object dsb_38: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 540
    Top = 90
  end
  object dsb_39: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 90
  end
  object equ: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id '
      'from equ'
      'where art_codice = :art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object art_equ: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art.descrizione1 art_descrizione1_figlio, art.descrizione' +
        '2 art_descrizione2_figlio,'
      
        'art.tum_codice art_figlio_tum_codice, art.descrizione_tecnica, a' +
        'rt.indice_revisione,'
      
        'art.tum_codice_dsb art_figlio_tum_codice_dsb, art.codice_alterna' +
        'tivo, art.materia_prima,'
      
        'case when art.valore_costo_standard <> 0 then art.valore_costo_s' +
        'tandard'
      
        'else (select prezzo from lsa where art_codice = art.codice and t' +
        'la_codice = :tla_codice'
      
        'and data_inizio <= :data and data_fine >= :data) end art_figlio_' +
        'costo_standard,'
      'art.tub_codice art_figlio_tub_codice,'
      'tub.descrizione art_figlio_tub_descrizione,'
      'art.tum_coefficiente_dsb, art.operazione_coefficiente_dsb,'
      
        '(select data_carico from mag where art_codice = art.codice order' +
        ' by data_carico desc limit 1) data_carico'
      'from art'
      'inner join tub on tub.codice = art.tub_codice'
      'where art.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 120
    ParamData = <
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
      end
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object calsem: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      
        'select art_codice_padre, sum(costo_codice_figlio) costo_codice_p' +
        'adre'
      'from stadsb'
      'where livello = 1'
      'and utn_codice = :utn_codice'
      'group by 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object aggsem: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      
        'set costo_produzione_codice_padre = :costo_produzione_codice_pad' +
        're,'
      'costo_codice_padre = :costo_codice_padre,'
      'a31costo_lavorazione = :a31costo_lavorazione,'
      'a31costo_kg=:a31costo_kg,'
      'a31costo_lavest = :a31costo_lavest'
      'where utn_codice = :utn_codice'
      'and art_codice_padre = :art_codice_padre')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo_produzione_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavorazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_kg'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavest'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object query_stampa_cicli_figli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.STADSB_CICLI C'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 180
    Top = 45
  end
  object query_stampa_cicli_figli_ds: TMyDataSource
    DataSet = query_stampa_cicli_figli
    Left = 205
    Top = 45
  end
  object query_stampa_cicli_padre: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.STADSB_CICLI_PADRE CP'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 125
    Top = 45
  end
  object query_stampa_cicli_padre_ds: TMyDataSource
    DataSet = query_stampa_cicli_padre
    Left = 150
    Top = 45
  end
  object sor_update: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      
        'set costo_codice_figlio = costo_codice_figlio + :costo * quantit' +
        'a'
      'where id = :id')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 495
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object sor_livello: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 120
  end
  object sor_update_produzione: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      
        'set costo_produzione_codice_figlio = :costo_produzione_codice_fi' +
        'glio,'
      
        'costo_codice_figlio := costo_codice_figlio + :costo_produzione_c' +
        'odice_figlio * quantita,'
      'a31costo_lavest = :a31costo_lavest'
      'where id = :id')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo_produzione_codice_figlio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_produzione_codice_figlio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavest'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object tvr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, art_codice'
      'from tvr'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 517
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tvr_ds: TMyDataSource
    DataSet = tvr
    Left = 537
    Top = 35
  end
  object artv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from artv'
      'where art_codice = :art_codice and tvr_codice = :tvr_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 584
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tvr_codice'
        Value = nil
      end>
  end
  object art_figlio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select tum_codice_dsb, tum_codice, descrizione_tecnica, indice_r' +
        'evisione, codice_alternativo, art.tcm_codice,'
      
        '  art.tub_codice, art.materia_prima, art.tum_coefficiente_dsb, a' +
        'rt.operazione_coefficiente_dsb, art.frn_codice,'
      '  tub.descrizione tub_descrizione'
      'from art'
      'inner join tub on tub.codice = art.tub_codice'
      'where art.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 345
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object query_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT DISTINCT S.LIVELLO, S.ID'
      'FROM ARC_ORDINAMENTO.STADSB S'
      'INNER JOIN ART ON ART.CODICE = S.ART_CODICE'
      'WHERE S.UTN_CODICE = :UTENTE AND ART.MATERIA_PRIMA = '#39'si'#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 585
    Top = 90
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UTENTE'
        Value = nil
      end>
  end
  object art_costo_standard: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update art'
      
        'set valore_costo_standard = (select costo_codice_padre from arc_' +
        'ordinamento.stadsb '
      'where codice = :codice'
      'and utn_codice = @utn_codice limit 1)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object query_listini: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'a.art_codice,'
      'a.cli_codice,'
      'cli.descrizione1 cli_descrizione1,'
      'a.contratto,'
      'a.posizione,'
      'a.data_inizio,'
      'a.data_fine,'
      'a.prezzo'
      'from a31cls a'
      'inner join cli on cli.codice=a.cli_codice'
      'where'
      'a.art_codice=:art_codice AND'
      'a.note like '#39'contra%'#39
      'union all'
      'select '
      'a.art_codice,'
      'a.cli_codice,'
      'cli.descrizione1 cli_descrizione1,'
      '0 contratto,'
      '0 posizione,'
      'a.data_inizio,'
      'a.data_fine,'
      'a.prezzo'
      'from cls a'
      'inner join cli on cli.codice=a.cli_codice'
      'where'
      'a.art_codice=:art_codice'
      'order by 1,5')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = '140122F0001'
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = '140122F0001'
      end>
  end
  object ppDBlistini: TppDBPipeline
    DataSource = query_listini_ds
    SkipWhenNoRecords = False
    UserName = 'LISTINI'
    Left = 348
    Top = 215
    object ppDBlistinippField1: TppField
      FieldAlias = 'art_codice'
      FieldName = 'art_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBlistinippField2: TppField
      FieldAlias = 'cli_codice'
      FieldName = 'cli_codice'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object ppDBlistinippField3: TppField
      FieldAlias = 'cli_descrizione1'
      FieldName = 'cli_descrizione1'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object ppDBlistinippField4: TppField
      FieldAlias = 'contratto'
      FieldName = 'contratto'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBlistinippField5: TppField
      FieldAlias = 'posizione'
      FieldName = 'posizione'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDBlistinippField6: TppField
      FieldAlias = 'data_inizio'
      FieldName = 'data_inizio'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppDBlistinippField7: TppField
      FieldAlias = 'data_fine'
      FieldName = 'data_fine'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppDBlistinippField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'prezzo'
      FieldName = 'prezzo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
  end
  object query_listini_ds: TMyDataSource
    DataSet = query_listini
    Left = 465
    Top = 220
  end
end
