inherited A31STAMAG: TA31STAMAG
  Left = 363
  Top = 246
  Caption = 'A31STAMAG'
  ClientHeight = 319
  ClientWidth = 624
  Position = poDesigned
  ExplicitWidth = 640
  ExplicitHeight = 378
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 624
    ExplicitWidth = 624
  end
  inherited pannello_parametri: TRzPanel
    Width = 624
    Height = 202
    ExplicitWidth = 624
    ExplicitHeight = 202
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
      Left = 445
      Top = 25
      Width = 66
      Height = 13
      Caption = 'valorizzazione'
      FocusControl = v_valorizzazione
      ShowAccelChar = False
      Transparent = True
      Visible = False
    end
    object Label3: TRzLabel [2]
      Left = 5
      Top = 70
      Width = 95
      Height = 13
      Caption = 'ordinamento articolo'
      FocusControl = v_ordinamento
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel1: TRzLabel [3]
      Left = 440
      Top = 125
      Width = 87
      Height = 13
      Caption = 'controllo esistenza'
      FocusControl = v_controllo_esistenza
      ShowAccelChar = False
      Transparent = True
      Visible = False
    end
    object RzLabel2: TRzLabel [4]
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
      TabOrder = 9
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
      Left = 285
      Top = 70
      Width = 149
      Height = 15
      Hint = 'spunta per stampare anche gli articoli con esistenza zero'
      Caption = 'articoli con esistenza a zero'
      State = cbUnchecked
      TabOrder = 2
      Visible = False
      OnExit = v_esistenza_zeroExit
    end
    object v_valorizzazione: trzcombobox_go
      Left = 445
      Top = 40
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
      TabOrder = 5
      Text = 'standard'
      Visible = False
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
    object pannello_bottoni: TRzPanel
      Left = 0
      Top = 171
      Width = 624
      Height = 31
      Align = alBottom
      BorderOuter = fsLowered
      TabOrder = 6
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
      Left = 5
      Top = 85
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
      TabOrder = 8
      Text = 'codice'
      Items.Strings = (
        'codice'
        'descrizione')
      ItemIndex = 0
    end
    object v_apertura: TRzCheckBox
      Left = 445
      Top = 105
      Width = 136
      Height = 15
      Hint = 'spunta per stampare la quantit'#224' di apertura'
      Caption = 'stampa quantit'#224' apertura'
      Checked = True
      State = cbChecked
      TabOrder = 3
      Visible = False
    end
    object v_elabora_mag: TRzCheckBox
      Left = 445
      Top = 75
      Width = 107
      Height = 15
      Hint = 
        'spunta per elaborare direttamente i progressivi di movimentazion' +
        'e'
      Caption = 'elabora progressivi'
      Checked = True
      State = cbChecked
      TabOrder = 4
      Visible = False
    end
    object v_controllo_esistenza: trzcombobox_go
      Left = 440
      Top = 140
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
      TabOrder = 7
      Text = 'solo positiva'
      Visible = False
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
    object v_dettaglio_tma: TRzCheckBox
      Left = 7
      Top = 120
      Width = 130
      Height = 15
      Hint = 'spunta per stampare anche gli articoli con esistenza zero'
      Caption = 'dettaglio per magazzino'
      State = cbUnchecked
      TabOrder = 10
      Visible = False
      OnExit = v_esistenza_zeroExit
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 236
    Width = 624
    ExplicitTop = 236
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
    Top = 299
    Width = 624
    ExplicitTop = 299
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
    object ppDBTabellappField1: TppField
      FieldAlias = 'UTN_CODICE'
      FieldName = 'UTN_CODICE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBTabellappField2: TppField
      FieldAlias = 'TIN_CODICE'
      FieldName = 'TIN_CODICE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBTabellappField3: TppField
      FieldAlias = 'TIN_DESCRIZIONE'
      FieldName = 'TIN_DESCRIZIONE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object ppDBTabellappField4: TppField
      FieldAlias = 'ART_CODICE'
      FieldName = 'ART_CODICE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppDBTabellappField5: TppField
      FieldAlias = 'art_descrizione1'
      FieldName = 'art_descrizione1'
      FieldLength = 120
      DisplayWidth = 120
      Position = 4
    end
    object ppDBTabellappField6: TppField
      FieldAlias = 'ART_DESCRIZIONE2'
      FieldName = 'ART_DESCRIZIONE2'
      FieldLength = 40
      DisplayWidth = 40
      Position = 5
    end
    object ppDBTabellappField7: TppField
      FieldAlias = 'ART_TUM_CODICE'
      FieldName = 'ART_TUM_CODICE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 6
    end
    object ppDBTabellappField8: TppField
      FieldAlias = 'TMA_CODICE'
      FieldName = 'TMA_CODICE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 7
    end
    object ppDBTabellappField9: TppField
      FieldAlias = 'TMA_DESCRIZIONE'
      FieldName = 'TMA_DESCRIZIONE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object ppDBTabellappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTITA'
      FieldName = 'QUANTITA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDBTabellappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PREZZO'
      FieldName = 'PREZZO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppDBTabellappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMPORTO'
      FieldName = 'IMPORTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppDBTabellappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROGRESSIVO_AUTO'
      FieldName = 'PROGRESSIVO_AUTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBTabellappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMPEGNATO'
      FieldName = 'IMPEGNATO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDBTabellappField15: TppField
      FieldAlias = 'tub_codice'
      FieldName = 'tub_codice'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object ppDBTabellappField16: TppField
      FieldAlias = 'codice_raggruppamento'
      FieldName = 'codice_raggruppamento'
      FieldLength = 80
      DisplayWidth = 80
      Position = 15
    end
    object ppDBTabellappField17: TppField
      FieldAlias = 'DESCRIZIONE_RAGGRUPPAMENTO'
      FieldName = 'DESCRIZIONE_RAGGRUPPAMENTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object ppDBTabellappField18: TppField
      FieldAlias = 'ART_CODICE_ALTERNATIVO'
      FieldName = 'ART_CODICE_ALTERNATIVO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 17
    end
    object ppDBTabellappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTITA_APERTURA'
      FieldName = 'QUANTITA_APERTURA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBTabellappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORDINATO'
      FieldName = 'ORDINATO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDBTabellappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'DISPONIBILITA'
      FieldName = 'DISPONIBILITA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDBTabellappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDBTabellappField23: TppField
      FieldAlias = 'codice_ordinamento'
      FieldName = 'codice_ordinamento'
      FieldLength = 120
      DisplayWidth = 120
      Position = 22
    end
    object ppDBTabellappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'tipo_inventario'
      FieldName = 'tipo_inventario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppDBTabellappField25: TppField
      FieldAlias = 'lotti'
      FieldName = 'lotti'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBTabellappField26: TppField
      FieldAlias = 'tmr_codice'
      FieldName = 'tmr_codice'
      FieldLength = 10
      DisplayWidth = 10
      Position = 25
    end
    object ppDBTabellappField27: TppField
      FieldAlias = 'tmr_descrizione'
      FieldName = 'tmr_descrizione'
      FieldLength = 40
      DisplayWidth = 40
      Position = 26
    end
    object ppDBTabellappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita_apertura_tma'
      FieldName = 'quantita_apertura_tma'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppDBTabellappField29: TppField
      FieldAlias = 'tla_codice_costo_standard'
      FieldName = 'tla_codice_costo_standard'
      FieldLength = 4
      DisplayWidth = 4
      Position = 28
    end
    object ppDBTabellappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita_prec'
      FieldName = 'quantita_prec'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppDBTabellappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita_entrate'
      FieldName = 'quantita_entrate'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object ppDBTabellappField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita_uscite'
      FieldName = 'quantita_uscite'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppDBTabellappField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita_fin'
      FieldName = 'quantita_fin'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppDBTabellappField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'valore_prec'
      FieldName = 'valore_prec'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object ppDBTabellappField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'valore_entrate'
      FieldName = 'valore_entrate'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object ppDBTabellappField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'valore_uscite'
      FieldName = 'valore_uscite'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object ppDBTabellappField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'valore_fin'
      FieldName = 'valore_fin'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    Template.FileName = 
      'C:\GestionaleOpen\go_utenti\A31_PROMAU\report\A31STAMAG_STANDARD' +
      '.RTM'
    Left = 325
    Top = 65531
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      mmHeight = 28575
      inherited pp_Shape4_parametri: TppShape
        mmTop = 265
        mmWidth = 295893
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
        mmWidth = 295452
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
      mmHeight = 16933
      inherited pp_Shape1: TppShape
        mmTop = 0
        mmWidth = 295011
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
        mmHeight = 3175
        mmLeft = 246857
        mmTop = 1323
        mmWidth = 24694
        LayerName = Foreground
      end
      inherited pp_Label6: TppLabel [8]
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 232834
        mmWidth = 12435
        LayerName = Foreground
      end
      inherited pp_Label3: TppLabel [9]
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 272521
        mmTop = 1323
        mmWidth = 19579
        LayerName = Foreground
      end
      inherited pp_Shape3: TppShape [10]
        mmTop = 10583
        mmWidth = 294570
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        VarType = vtDateTime
        TextAlignment = taRightJustified
        mmHeight = 3440
        mmLeft = 259557
        mmWidth = 32279
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
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 1058
        mmWidth = 11642
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
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 1058
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3704
      object pp_DBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_entrate'
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
        mmHeight = 3175
        mmLeft = 108215
        mmTop = 265
        mmWidth = 20064
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_prec'
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
        mmHeight = 3175
        mmLeft = 91235
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
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
        mmLeft = 794
        mmTop = 0
        mmWidth = 19623
        BandType = 4
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
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 21332
        mmTop = 0
        mmWidth = 46302
        BandType = 4
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
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 283105
        mmTop = 0
        mmWidth = 12347
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_uscite'
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
        mmHeight = 3175
        mmLeft = 130969
        mmTop = 265
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_fin'
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
        mmHeight = 3175
        mmLeft = 155052
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        DataField = 'valore_prec'
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
        mmLeft = 184810
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        DataField = 'valore_entrate'
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
        mmLeft = 207795
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
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
        mmLeft = 85283
        mmTop = 44
        mmWidth = 4381
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        DataField = 'valore_uscite'
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
        mmLeft = 233989
        mmTop = 265
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        DataField = 'valore_fin'
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
        mmLeft = 259055
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3922
        mmLeft = 90092
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3922
        mmLeft = 108429
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3922
        mmLeft = 153819
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3922
        mmLeft = 129823
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 174183
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 182843
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 206823
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 231482
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 257275
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        DataField = 'TIN_CODICE'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 71217
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 6879
      inherited pp_Shape2: TppShape
        mmTop = 427
        mmWidth = 295452
        LayerName = Foreground
      end
      inherited pp_utente: TppLabel [1]
        SaveOrder = -1
        mmHeight = 3175
        mmLeft = 152665
        mmTop = 1750
        mmWidth = 8467
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        mmTop = 1750
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel
        SaveOrder = -1
        mmTop = 1750
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable [4]
        SaveOrder = -1
        TextAlignment = taRightJustified
        mmHeight = 3440
        mmLeft = 273580
        mmTop = 1750
        mmWidth = 19844
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
    end
    object ppGroup1: TppGroup [5]
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
        mmHeight = 14288
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
          mmWidth = 22931
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
          mmLeft = 794
          mmTop = 7804
          mmWidth = 22269
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
          mmLeft = 25089
          mmTop = 7760
          mmWidth = 40129
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 395
          mmLeft = 610
          mmTop = 13805
          mmWidth = 294791
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object pp_Line2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 440
          mmLeft = 610
          mmTop = 5289
          mmWidth = 295232
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'saldo iniziale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 8158
          mmLeft = 91017
          mmTop = 5292
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'quantit'#224' entrate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 6879
          mmLeft = 109320
          mmTop = 6618
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'quantit'#224' uscite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 6879
          mmLeft = 132295
          mmTop = 6618
          mmWidth = 20726
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'saldo finale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 6879
          mmLeft = 155052
          mmTop = 6618
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.Weight = 1.000000000000000000
          Caption = 'QUANTITA'#39
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 3440
          mmLeft = 91017
          mmTop = 0
          mmWidth = 80169
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label22'
          Border.Weight = 1.000000000000000000
          Caption = 'VALORE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 3440
          mmLeft = 185738
          mmTop = 0
          mmWidth = 95030
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label21'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'saldo iniziale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 6879
          mmLeft = 184810
          mmTop = 6615
          mmWidth = 20946
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'valore entrate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 6879
          mmLeft = 207795
          mmTop = 6615
          mmWidth = 21828
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'valore uscite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 6879
          mmLeft = 233989
          mmTop = 6615
          mmWidth = 21828
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'saldo finale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          VerticalAlignment = avCenter
          mmHeight = 6879
          mmLeft = 259055
          mmTop = 6615
          mmWidth = 21828
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line9'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14333
          mmLeft = 90008
          mmTop = 0
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line10'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13449
          mmLeft = 174287
          mmTop = 0
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line101'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 182827
          mmTop = 0
          mmWidth = 529
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line11'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 281521
          mmTop = 0
          mmWidth = 529
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line12'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 108429
          mmTop = 5201
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 129823
          mmTop = 5201
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line14'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 153819
          mmTop = 5201
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line17'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8865
          mmLeft = 206670
          mmTop = 5422
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line18'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 231482
          mmTop = 6085
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine18: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line19'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 257313
          mmTop = 5422
          mmWidth = 438
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object pp_DBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_uscite'
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
          mmHeight = 3175
          mmLeft = 130969
          mmTop = 1852
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc8'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_prec'
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
          mmHeight = 3175
          mmLeft = 91235
          mmTop = 1852
          mmWidth = 15875
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_entrate'
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
          mmHeight = 3175
          mmLeft = 108215
          mmTop = 1852
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc4'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_fin'
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
          mmHeight = 3175
          mmLeft = 155052
          mmTop = 1852
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 610
          mmTop = 529
          mmWidth = 294570
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 439
          mmLeft = 610
          mmTop = 5911
          mmWidth = 294482
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label26'
          Caption = 'TOTALE RAGGRUPPAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3439
          mmLeft = 1547
          mmTop = 1675
          mmWidth = 52917
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          Border.Weight = 1.000000000000000000
          DataField = 'valore_uscite'
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
          mmHeight = 3175
          mmLeft = 233989
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc7'
          Border.Weight = 1.000000000000000000
          DataField = 'valore_prec'
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
          mmLeft = 184810
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc10'
          Border.Weight = 1.000000000000000000
          DataField = 'valore_entrate'
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
          mmLeft = 207795
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc11'
          Border.Weight = 1.000000000000000000
          DataField = 'valore_fin'
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
          mmHeight = 3175
          mmLeft = 259055
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line23'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5469
          mmLeft = 90223
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line24'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5469
          mmLeft = 108479
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine24: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line25'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5469
          mmLeft = 153723
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine25: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line26'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5469
          mmLeft = 129911
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine26: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line27'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5516
          mmLeft = 174096
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine27: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line28'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5516
          mmLeft = 182827
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine28: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line201'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5516
          mmLeft = 206905
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine29: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line29'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5516
          mmLeft = 231511
          mmTop = 663
          mmWidth = 529
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine30: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line30'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5516
          mmLeft = 257176
          mmTop = 663
          mmWidth = 529
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
    Left = 355
    Top = 65531
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
      'FROM ARC_ORDINAMENTO.A31STAMAG_UTENTE T'
      'WHERE T.UTN_CODICE='#39'GO'#39)
    Active = True
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
