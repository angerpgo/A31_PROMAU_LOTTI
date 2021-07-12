inherited EVAORDV: TEVAORDV
  Left = 396
  Top = 170
  Caption = 'EVAORDV'
  ClientHeight = 583
  ClientWidth = 625
  DefaultMonitor = dmDesktop
  ExplicitWidth = 631
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 625
    ExplicitWidth = 625
  end
  inherited pannello_parametri: TRzPanel
    Width = 625
    Height = 466
    ExplicitWidth = 625
    ExplicitHeight = 466
    object Label8: TRzLabel [0]
      Left = 5
      Top = 85
      Width = 96
      Height = 13
      Caption = 'dalla data consegna'
      ShowAccelChar = False
      Transparent = True
    end
    object Label2: TRzLabel [1]
      Left = 240
      Top = 85
      Width = 90
      Height = 13
      Caption = 'alla data consegna'
      ShowAccelChar = False
      Transparent = True
    end
    object Label4: TRzLabel [2]
      Left = 5
      Top = 125
      Width = 103
      Height = 13
      Caption = 'codice deposito ordini'
      ShowAccelChar = False
      Transparent = True
    end
    object Label5: TRzLabel [3]
      Left = 5
      Top = 165
      Width = 108
      Height = 13
      Caption = 'codice deposito articoli'
      ShowAccelChar = False
      Transparent = True
    end
    object Label7: TRzLabel [4]
      Left = 240
      Top = 380
      Width = 127
      Height = 13
      Caption = 'odinamento lista di prelievo'
      FocusControl = v_ordinamento
      ShowAccelChar = False
      Transparent = True
    end
    object Label9: TRzLabel [5]
      Left = 5
      Top = 5
      Width = 70
      Height = 13
      Caption = 'dal documento'
      ShowAccelChar = False
      Transparent = True
    end
    object Label3: TRzLabel [6]
      Left = 87
      Top = 24
      Width = 5
      Height = 13
      Caption = '/'
      ShowAccelChar = False
      Transparent = True
    end
    object Label10: TRzLabel [7]
      Left = 240
      Top = 5
      Width = 64
      Height = 13
      Caption = 'al documento'
      ShowAccelChar = False
      Transparent = True
    end
    object Label6: TRzLabel [8]
      Left = 322
      Top = 24
      Width = 5
      Height = 13
      Caption = '/'
      ShowAccelChar = False
      Transparent = True
    end
    object Label11: TRzLabel [9]
      Left = 5
      Top = 45
      Width = 102
      Height = 13
      Caption = 'dalla data documento'
      ShowAccelChar = False
      Transparent = True
    end
    object Label12: TRzLabel [10]
      Left = 240
      Top = 45
      Width = 96
      Height = 13
      Caption = 'alla data documento'
      ShowAccelChar = False
      Transparent = True
    end
    object Label13: TRzLabel [11]
      Left = 5
      Top = 205
      Width = 110
      Height = 13
      Caption = 'zona spedizione cliente'
      ShowAccelChar = False
      Transparent = True
    end
    inherited ProgressBar: TProgressBar
      Left = 500
      Top = 10
      ExplicitLeft = 500
      ExplicitTop = 10
    end
    object v_dalla_data: trzdatetimeedit_go
      Left = 5
      Top = 100
      Width = 80
      Height = 21
      Hint = 
        'data consegna di inizio selezione [Alt+Gi'#249' per aprire il calenda' +
        'rio]'
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
      TabOrder = 7
      OnExit = v_dalla_dataExit
    end
    object v_alla_data: trzdatetimeedit_go
      Left = 240
      Top = 100
      Width = 80
      Height = 21
      Hint = 
        'data consegna di fine selezione [Alt+Gi'#249' per aprire il calendari' +
        'o]'
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
      TabOrder = 8
      OnEnter = v_alla_dataEnter
      OnExit = v_alla_dataExit
    end
    object v_evasione_totale_righe: TRzCheckBox
      Left = 5
      Top = 305
      Width = 147
      Height = 15
      Hint = 'spunta per evadere solo le righe a saldo'
      Caption = 'solo evasione a saldo righe'
      State = cbUnchecked
      TabOrder = 14
      OnClick = v_evasione_totale_righeClick
    end
    object v_evasione_totale_ordini: TRzCheckBox
      Left = 240
      Top = 305
      Width = 141
      Height = 15
      Hint = 'spunta per evadere solo gli ordini a saldo'
      Caption = 'solo evasione totale ordini'
      State = cbUnchecked
      TabOrder = 15
      OnClick = v_evasione_totale_ordiniClick
    end
    object v_tma_codice: trzedit_go
      Left = 5
      Top = 140
      Width = 50
      Height = 21
      Hint = 
        'codice deposito dell'#39'ordine selezionato [F4 F5 F6] [spazio=tutti' +
        ']'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 9
      OnExit = v_tma_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTMA'
      lookcolltable = 'TMA'
      lookcollvisname = 'TMA'
    end
    object v_tma_codice_mag: trzedit_go
      Left = 5
      Top = 180
      Width = 50
      Height = 21
      Hint = 
        'codice deposito magaazzino utilizzato per il controllo esistenza' +
        ' [F4 F5 F6] [spazio=tutti]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 10
      OnExit = v_tma_codice_magExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTMA'
      lookcolltable = 'TMA'
      lookcollvisname = 'TMA'
    end
    object v_approntato: TRzCheckBox
      Left = 5
      Top = 260
      Width = 150
      Height = 15
      Hint = 'spunta per elaborare solo le righe approntate'
      Caption = 'solo righe ordine approntate'
      State = cbUnchecked
      TabOrder = 12
      OnClick = v_approntatoClick
    end
    object v_lista_prelievo: TRzCheckBox
      Left = 5
      Top = 396
      Width = 128
      Height = 15
      Hint = 
        'spunta per stampare la lista di prelievo degli articoli disponib' +
        'ili'
      Caption = 'stampa lista di prelievo '
      State = cbUnchecked
      TabOrder = 18
      OnClick = v_lista_prelievoClick
    end
    object v_ordinamento: trzcombobox_go
      Left = 240
      Top = 395
      Width = 146
      Height = 21
      Hint = 'ordinamento lista di prelievo'
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
      TabOrder = 19
      Text = 'ubicazione'
      Items.Strings = (
        'ubicazione'
        'codice articolo'
        'descrizione articolo')
      ItemIndex = 0
    end
    object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
      Left = 60
      Top = 140
      Width = 546
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tma_ds
      DataField = 'DESCRIZIONE'
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
      TabOrder = 20
    end
    object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
      Left = 60
      Top = 180
      Width = 546
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tma_mag_ds
      DataField = 'DESCRIZIONE'
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
      TabOrder = 21
    end
    object v_dal_numero_documento: trznumericedit_go
      Left = 5
      Top = 20
      Width = 80
      Height = 21
      Hint = 'numero documento di inizio selezione'
      Margins.Left = 1
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = '0'
      decimalplaces = 0
    end
    object v_dalla_serie_documento: trzedit_go
      Left = 95
      Top = 20
      Width = 81
      Height = 21
      Hint = 'serie documento di inizio selezione'
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
      TabOrder = 2
    end
    object v_al_numero_documento: trznumericedit_go
      Left = 240
      Top = 20
      Width = 80
      Height = 21
      Hint = 'numero documento di fine selezione'
      Margins.Left = 1
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
      OnEnter = v_al_numero_documentoEnter
      OnExit = v_al_numero_documentoExit
      IntegersOnly = False
      DisplayFormat = '0'
      decimalplaces = 0
    end
    object v_alla_serie_documento: trzedit_go
      Left = 330
      Top = 20
      Width = 81
      Height = 21
      Hint = 'serie documento di fine selezione'
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
      TabOrder = 4
      OnEnter = v_alla_serie_documentoEnter
      OnExit = v_alla_serie_documentoExit
    end
    object v_dalla_data_documento: trzdatetimeedit_go
      Left = 5
      Top = 60
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
      TabOrder = 5
    end
    object v_alla_data_documento: trzdatetimeedit_go
      Left = 240
      Top = 60
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
      TabOrder = 6
      OnEnter = v_alla_data_documentoEnter
      OnExit = v_alla_data_documentoExit
    end
    object pannello_bottoni: TRzPanel
      Left = 0
      Top = 435
      Width = 625
      Height = 31
      Align = alBottom
      BorderOuter = fsLowered
      TabOrder = 22
      object v_selcli: TRzRapidFireButton
        Left = 5
        Top = 4
        Width = 111
        Height = 22
        Caption = 'filtro clienti'
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
        OnClick = v_selcliClick
      end
    end
    object v_tps_codice: trzedit_go
      Left = 5
      Top = 220
      Width = 50
      Height = 21
      Hint = 'zona clienti selezionata [F4 F5 F6] [spazio=tutti]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 11
      OnExit = v_tps_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTPS'
      lookcolltable = 'TPS'
      lookcollvisname = 'TPS'
    end
    object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
      Left = 60
      Top = 220
      Width = 546
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tps_ds
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
      TabOrder = 23
    end
    object v_dettaglio_oar: TRzCheckBox
      Left = 5
      Top = 350
      Width = 148
      Height = 15
      Hint = 
        'spunta per indicare gli ordini fornitori in consegna che coprono' +
        ' il fabbisogno'
      Caption = 'dettaglio ordini in consegna'
      State = cbUnchecked
      TabOrder = 16
      OnClick = v_dettaglio_oarClick
    end
    object v_stesso_deposito: TRzCheckBox
      Left = 240
      Top = 350
      Width = 92
      Height = 15
      Hint = 
        'spunta per filtrare solo gli ordini fornitori sullo stesso depos' +
        'ito'
      Caption = 'stesso deposito'
      Enabled = False
      State = cbUnchecked
      TabOrder = 17
      OnClick = v_dettaglio_oarClick
    end
    object v_non_approntato: TRzCheckBox
      Left = 240
      Top = 260
      Width = 171
      Height = 15
      Hint = 'spunta per elaborare solo le righe non approntate'
      Caption = 'solo righe ordine non approntate'
      State = cbUnchecked
      TabOrder = 13
      OnClick = v_non_approntatoClick
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 500
    Width = 625
    ExplicitTop = 500
    ExplicitWidth = 625
    inherited Bevel1: TBevel
      Width = 625
      ExplicitWidth = 561
    end
    inherited v_modello: trzcombobox_go
      Width = 320
      ExplicitWidth = 320
    end
    inherited v_conferma: TRzBitBtn
      Left = 535
      ExplicitLeft = 535
    end
    inherited v_esci: TRzBitBtn
      Left = 535
      ExplicitLeft = 535
    end
    inherited v_interrompi: TRzBitBtn
      Left = 560
      ExplicitLeft = 560
    end
  end
  inherited statusbar: TStatusBar
    Top = 563
    Width = 625
    ExplicitTop = 563
    ExplicitWidth = 625
  end
  inherited sor: TMyTable
    TableName = 'evaordv'
  end
  inherited sor2: TMyTable
    TableName = 'evaordv_oar'
  end
  inherited tabella_iva: TMyQuery_go
    Connection = nil
  end
  inherited tabella_righe: TMyQuery_go
    Connection = nil
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      '')
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
      FieldAlias = 'DATA_CONSEGNA'
      FieldName = 'DATA_CONSEGNA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBTabellappField3: TppField
      FieldAlias = 'DATA_DOCUMENTO'
      FieldName = 'DATA_DOCUMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDBTabellappField4: TppField
      FieldAlias = 'serie_documento'
      FieldName = 'serie_documento'
      FieldLength = 8
      DisplayWidth = 8
      Position = 3
    end
    object ppDBTabellappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'numero_documento'
      FieldName = 'numero_documento'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBTabellappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROGRESSIVO'
      FieldName = 'PROGRESSIVO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBTabellappField7: TppField
      FieldAlias = 'CLI_CODICE'
      FieldName = 'CLI_CODICE'
      FieldLength = 8
      DisplayWidth = 8
      Position = 6
    end
    object ppDBTabellappField8: TppField
      FieldAlias = 'CLI_DESCRIZIONE1'
      FieldName = 'CLI_DESCRIZIONE1'
      FieldLength = 40
      DisplayWidth = 40
      Position = 7
    end
    object ppDBTabellappField9: TppField
      FieldAlias = 'CLI_CITTA'
      FieldName = 'CLI_CITTA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object ppDBTabellappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'RIGA'
      FieldName = 'RIGA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBTabellappField11: TppField
      FieldAlias = 'ART_CODICE'
      FieldName = 'ART_CODICE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppDBTabellappField12: TppField
      FieldAlias = 'ART_DESCRIZIONE1'
      FieldName = 'ART_DESCRIZIONE1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 11
    end
    object ppDBTabellappField13: TppField
      FieldAlias = 'ART_DESCRIZIONE2'
      FieldName = 'ART_DESCRIZIONE2'
      FieldLength = 40
      DisplayWidth = 40
      Position = 12
    end
    object ppDBTabellappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTITA'
      FieldName = 'QUANTITA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDBTabellappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTITA_EVASA'
      FieldName = 'QUANTITA_EVASA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDBTabellappField16: TppField
      FieldAlias = 'TUM_CODICE'
      FieldName = 'TUM_CODICE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 15
    end
    object ppDBTabellappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTITA_ORIGINE'
      FieldName = 'QUANTITA_ORIGINE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppDBTabellappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMPORTO_ORIGINE'
      FieldName = 'IMPORTO_ORIGINE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppDBTabellappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMPORTO_EVASO'
      FieldName = 'IMPORTO_EVASO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBTabellappField20: TppField
      FieldAlias = 'DATA_CONSEGNA_STAMPABILE'
      FieldName = 'DATA_CONSEGNA_STAMPABILE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 19
    end
    object ppDBTabellappField21: TppField
      FieldAlias = 'DATA_CONSEGNA_RIGHE'
      FieldName = 'DATA_CONSEGNA_RIGHE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 20
    end
    object ppDBTabellappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTITA_APPRONTATA'
      FieldName = 'QUANTITA_APPRONTATA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppDBTabellappField23: TppField
      FieldAlias = 'GRUPPO'
      FieldName = 'GRUPPO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object ppDBTabellappField24: TppField
      FieldAlias = 'tub_codice'
      FieldName = 'tub_codice'
      FieldLength = 10
      DisplayWidth = 10
      Position = 23
    end
    object ppDBTabellappField25: TppField
      FieldAlias = 'TUB_DESCRIZIONE'
      FieldName = 'TUB_DESCRIZIONE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 24
    end
    object ppDBTabellappField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppDBTabellappField27: TppField
      FieldAlias = 'indirizzo'
      FieldName = 'indirizzo'
      FieldLength = 8
      DisplayWidth = 8
      Position = 26
    end
    object ppDBTabellappField28: TppField
      FieldAlias = 'descrizione1'
      FieldName = 'descrizione1'
      FieldLength = 40
      DisplayWidth = 40
      Position = 27
    end
    object ppDBTabellappField29: TppField
      FieldAlias = 'descrizione2'
      FieldName = 'descrizione2'
      FieldLength = 40
      DisplayWidth = 40
      Position = 28
    end
    object ppDBTabellappField30: TppField
      FieldAlias = 'via'
      FieldName = 'via'
      FieldLength = 40
      DisplayWidth = 40
      Position = 29
    end
    object ppDBTabellappField31: TppField
      FieldAlias = 'citta'
      FieldName = 'citta'
      FieldLength = 30
      DisplayWidth = 30
      Position = 30
    end
    object ppDBTabellappField32: TppField
      FieldAlias = 'cli_note'
      FieldName = 'cli_note'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBTabellappField33: TppField
      FieldAlias = 'note'
      FieldName = 'note'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBTabellappField34: TppField
      FieldAlias = 'riferimento'
      FieldName = 'riferimento'
      FieldLength = 40
      DisplayWidth = 40
      Position = 33
    end
    object ppDBTabellappField35: TppField
      FieldAlias = 'kit'
      FieldName = 'kit'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppDBTabellappField36: TppField
      FieldAlias = 'tps_codice'
      FieldName = 'tps_codice'
      FieldLength = 4
      DisplayWidth = 4
      Position = 35
    end
    object ppDBTabellappField37: TppField
      FieldAlias = 'tps_descrizione'
      FieldName = 'tps_descrizione'
      FieldLength = 40
      DisplayWidth = 40
      Position = 36
    end
    object ppDBTabellappField38: TppField
      FieldAlias = 'ovr_note'
      FieldName = 'ovr_note'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBTabellappField39: TppField
      FieldAlias = 'ovr_note_interne'
      FieldName = 'ovr_note_interne'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 38
      Searchable = False
      Sortable = False
    end
  end
  inherited ppReport: TppReport
    Template.FileName = 'C:\GestionaleOpen\go_1000\report\EVAORDV_STANDARD.RTM'
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
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
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable
        SaveOrder = -1
        mmLeft = 180182
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel [13]
        SaveOrder = -1
        mmLeft = 67733
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      inherited pp_Shape1: TppShape
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
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        mmLeft = 180182
        LayerName = Foreground
      end
      object pp_Label8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = '_Label8'
        Border.Weight = 1.000000000000000000
        Caption = 'consegna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 2117
        mmTop = 12435
        mmWidth = 12277
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Caption = 'numero e data ordine'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 18521
        mmTop = 12435
        mmWidth = 26712
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.Weight = 1.000000000000000000
        Caption = 'cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 56886
        mmTop = 12435
        mmWidth = 8128
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmHeight = 14817
      object pp_DBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
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
        mmLeft = 124354
        mmTop = 265
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        DataField = 'data_consegna_righe'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 180446
        mmTop = 265
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        DataField = 'tum_codice'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 114300
        mmTop = 265
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        OnDrawCommandClick = pp_DBText9DrawCommandClick
        OnDrawCommandCreate = pp_DBText9DrawCommandCreate
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
        mmLeft = 6085
        mmTop = 265
        mmWidth = 28310
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
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
        mmLeft = 35190
        mmTop = 265
        mmWidth = 78317
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_evasa'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000;-,0.0000;#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 162454
        mmTop = 265
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object pp_Region1: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region1'
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 34396
        mmTop = 3175
        mmWidth = 79904
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object pp_DBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.Weight = 1.000000000000000000
          DataField = 'art_descrizione2'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 35190
          mmTop = 3969
          mmWidth = 78317
          BandType = 4
          LayerName = Foreground
        end
      end
      object pp_DBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_approntata'
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
        mmLeft = 143934
        mmTop = 265
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport_oar: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'SubReport_oar'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline_oar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9260
        mmWidth = 210079
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline_oar
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
          DataPipelineName = 'ppDBPipeline_oar'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape1'
              Brush.Color = clBtnFace
              mmHeight = 4763
              mmLeft = 32808
              mmTop = 794
              mmWidth = 148961
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label1'
              Caption = 'fornitore'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3439
              mmLeft = 35190
              mmTop = 1588
              mmWidth = 10054
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label2'
              Caption = 'data consegna'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3439
              mmLeft = 116946
              mmTop = 1588
              mmWidth = 18786
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label3'
              Caption = 'quantit'#224
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3439
              mmLeft = 170127
              mmTop = 1588
              mmWidth = 10055
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object pp_frn_codice: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              OnDrawCommandClick = pp_frn_codiceDrawCommandClick
              OnDrawCommandCreate = pp_frn_codiceDrawCommandCreate
              DataField = 'frn_codice'
              DataPipeline = ppDBPipeline_oar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppDBPipeline_oar'
              mmHeight = 3175
              mmLeft = 35189
              mmTop = 263
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              DataField = 'frn_descrizione'
              DataPipeline = ppDBPipeline_oar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppDBPipeline_oar'
              mmHeight = 3175
              mmLeft = 53446
              mmTop = 263
              mmWidth = 63236
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              DataField = 'data_consegna'
              DataPipeline = ppDBPipeline_oar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppDBPipeline_oar'
              mmHeight = 3175
              mmLeft = 118004
              mmTop = 263
              mmWidth = 16669
              BandType = 4
              LayerName = Foreground1
            end
            object pp_quantita_oar: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              DataField = 'quantita'
              DataPipeline = ppDBPipeline_oar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = [fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline_oar'
              mmHeight = 3175
              mmLeft = 162454
              mmTop = 263
              mmWidth = 17727
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 35190
              mmTop = 1058
              mmWidth = 144992
              BandType = 7
              LayerName = Foreground1
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
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 13758
      inherited pp_utente: TppLabel [0]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Shape2: TppShape [1]
        mmTop = 7144
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        mmTop = 8467
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel
        SaveOrder = -1
        mmTop = 8467
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable [4]
        SaveOrder = -1
        mmLeft = 172773
        mmTop = 8467
        LayerName = Foreground
      end
      object pp_Shape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Color = clBtnFace
        Shape = stRoundRect
        mmHeight = 6085
        mmLeft = 794
        mmTop = 529
        mmWidth = 195792
        BandType = 8
        LayerName = Foreground
      end
      object pp_DBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.Weight = 1.000000000000000000
        DataField = 'quantita_evasa'
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
        mmLeft = 162454
        mmTop = 1852
        mmWidth = 17727
        BandType = 8
        LayerName = Foreground
      end
      object pp_Label9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Caption = 'totale generali:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 140494
        mmTop = 1852
        mmWidth = 19092
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup2: TppGroup [4]
      BreakName = 'gruppo'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object pp_SubReport1: TppSubReport
          DesignLayer = ppDesignLayer1
          UserName = '_SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 1323
          mmWidth = 210079
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBPipeline2
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
            DataPipelineName = 'ppDBPipeline2'
            object ppTitleBand1: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 13758
              mmPrintPosition = 0
              object ppLabel1: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label1'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'ubicaz.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3217
                mmLeft = 0
                mmTop = 10054
                mmWidth = 8975
                BandType = 1
                LayerName = Foreground4
              end
              object ppLabel2: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label2'
                HyperlinkEnabled = False
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
                mmTop = 10054
                mmWidth = 17992
                BandType = 1
                LayerName = Foreground4
              end
              object ppLabel3: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label3'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'qt'#224' evasa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3217
                mmLeft = 102129
                mmTop = 10054
                mmWidth = 12277
                BandType = 1
                LayerName = Foreground4
              end
              object ppLabel4: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label4'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'qt'#224' approntata'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3217
                mmLeft = 114565
                mmTop = 10054
                mmWidth = 18203
                BandType = 1
                LayerName = Foreground4
              end
              object ppLabel5: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label5'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'numero/data ordine/cliente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3217
                mmLeft = 133350
                mmTop = 10054
                mmWidth = 33359
                BandType = 1
                LayerName = Foreground4
              end
              object ppLine1: TppLine
                DesignLayer = ppDesignLayer5
                UserName = 'Line1'
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 28575
                mmTop = 12169
                mmWidth = 73554
                BandType = 1
                LayerName = Foreground4
              end
              object ppLine2: TppLine
                DesignLayer = ppDesignLayer5
                UserName = 'Line2'
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 165629
                mmTop = 12169
                mmWidth = 27781
                BandType = 1
                LayerName = Foreground4
              end
              object ppShape1: TppShape
                DesignLayer = ppDesignLayer5
                UserName = 'Shape1'
                Brush.Color = clBtnFace
                Shape = stRoundRect
                mmHeight = 6085
                mmLeft = 0
                mmTop = 3440
                mmWidth = 195792
                BandType = 1
                LayerName = Foreground4
              end
              object ppLabel6: TppLabel
                DesignLayer = ppDesignLayer5
                UserName = 'Label6'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Caption = 'Lista di prelievo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 12
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4784
                mmLeft = 82021
                mmTop = 4233
                mmWidth = 30311
                BandType = 1
                LayerName = Foreground4
              end
            end
            object ppDetailBand2: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppDBText1: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText1'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'tub_codice'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 0
                mmTop = 265
                mmWidth = 9790
                BandType = 4
                LayerName = Foreground4
              end
              object ppDBText2: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText2'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'art_codice'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 10319
                mmTop = 265
                mmWidth = 28310
                BandType = 4
                LayerName = Foreground4
              end
              object ppDBText3: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText101'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'art_descrizione1'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 38894
                mmTop = 265
                mmWidth = 56886
                BandType = 4
                LayerName = Foreground4
              end
              object ppDBText4: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText3'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'quantita_approntata'
                DataPipeline = ppDBPipeline2
                DisplayFormat = ',0.0000;-,0.0000;0.0000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 114565
                mmTop = 265
                mmWidth = 17727
                BandType = 4
                LayerName = Foreground4
              end
              object ppDBText5: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText4'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'quantita_evasa'
                DataPipeline = ppDBPipeline2
                DisplayFormat = ',0.0000;-,0.0000;#'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 96309
                mmTop = 265
                mmWidth = 17727
                BandType = 4
                LayerName = Foreground4
              end
              object ppDBText6: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText5'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'numero_documento'
                DataPipeline = ppDBPipeline2
                DisplayFormat = '0;0;#'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 132821
                mmTop = 265
                mmWidth = 10583
                BandType = 4
                LayerName = Foreground4
              end
              object ppDBText7: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText6'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'data_documento'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 143934
                mmTop = 265
                mmWidth = 15610
                BandType = 4
                LayerName = Foreground4
              end
              object ppDBText8: TppDBText
                DesignLayer = ppDesignLayer5
                UserName = 'DBText7'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                DataField = 'cli_descrizione1'
                DataPipeline = ppDBPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 3217
                mmLeft = 159809
                mmTop = 265
                mmWidth = 33338
                BandType = 4
                LayerName = Foreground4
              end
            end
            object ppSummaryBand1: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroup3: TppGroup
              BreakName = 'art_codice'
              DataPipeline = ppDBPipeline2
              GroupFileSettings.NewFile = False
              GroupFileSettings.EmailFile = False
              OutlineSettings.CreateNode = True
              ReprintOnSubsequentPage = False
              StartOnOddPage = False
              UserName = 'Group3'
              mmNewColumnThreshold = 0
              mmNewPageThreshold = 0
              DataPipelineName = 'ppDBPipeline2'
              NewFile = False
              object ppGroupHeaderBand3: TppGroupHeaderBand
                Background.Brush.Style = bsClear
                mmBottomOffset = 0
                mmHeight = 0
                mmPrintPosition = 0
              end
              object ppGroupFooterBand3: TppGroupFooterBand
                Background.Brush.Style = bsClear
                PrintHeight = phDynamic
                HideWhenOneDetail = False
                mmBottomOffset = 0
                mmHeight = 5027
                mmPrintPosition = 0
                object ppDBCalc1: TppDBCalc
                  DesignLayer = ppDesignLayer5
                  UserName = 'DBCalc1'
                  HyperlinkEnabled = False
                  Border.Weight = 1.000000000000000000
                  DataField = 'quantita_evasa'
                  DataPipeline = ppDBPipeline2
                  DisplayFormat = ',0.0000;-,0.0000;0.0000'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  ResetGroup = ppGroup3
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppDBPipeline2'
                  mmHeight = 3217
                  mmLeft = 96309
                  mmTop = 529
                  mmWidth = 17727
                  BandType = 5
                  GroupNo = 0
                  LayerName = Foreground4
                end
                object ppDBCalc2: TppDBCalc
                  DesignLayer = ppDesignLayer5
                  UserName = 'DBCalc2'
                  HyperlinkEnabled = False
                  Border.Weight = 1.000000000000000000
                  DataField = 'quantita_approntata'
                  DataPipeline = ppDBPipeline2
                  DisplayFormat = ',0.0000;-,0.0000;0.0000'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  ResetGroup = ppGroup3
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppDBPipeline2'
                  mmHeight = 3217
                  mmLeft = 114565
                  mmTop = 529
                  mmWidth = 17727
                  BandType = 5
                  GroupNo = 0
                  LayerName = Foreground4
                end
                object ppLine3: TppLine
                  DesignLayer = ppDesignLayer5
                  UserName = 'Line3'
                  Border.Weight = 1.000000000000000000
                  Weight = 0.750000000000000000
                  mmHeight = 1588
                  mmLeft = 10319
                  mmTop = 3175
                  mmWidth = 85196
                  BandType = 5
                  GroupNo = 0
                  LayerName = Foreground4
                end
              end
            end
            object ppDesignLayers5: TppDesignLayers
              object ppDesignLayer5: TppDesignLayer
                UserName = 'Foreground4'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'progressivo'
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
        mmHeight = 8996
        mmPrintPosition = 0
        object pp_DBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          Border.Weight = 1.000000000000000000
          DataField = 'data_consegna_stampabile'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 2117
          mmTop = 0
          mmWidth = 15610
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Border.Weight = 1.000000000000000000
          Caption = 'articolo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 6085
          mmTop = 3704
          mmWidth = 9059
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText15: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText15'
          Border.Weight = 1.000000000000000000
          DataField = 'numero_documento'
          DataPipeline = ppDBTabella
          DisplayFormat = '0;0;#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 18521
          mmTop = 0
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 15346
          mmTop = 6085
          mmWidth = 98690
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText16: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText16'
          Border.Weight = 1.000000000000000000
          DataField = 'serie_documento'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 29898
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText17: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText17'
          Border.Weight = 1.000000000000000000
          DataField = 'data_documento'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 40217
          mmTop = 0
          mmWidth = 15610
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.Weight = 1.000000000000000000
          DataField = 'cli_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 56886
          mmTop = 0
          mmWidth = 15346
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.Weight = 1.000000000000000000
          DataField = 'cli_descrizione1'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 72761
          mmTop = 0
          mmWidth = 63500
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Border.Weight = 1.000000000000000000
          Caption = 'u.m.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 114300
          mmTop = 3704
          mmWidth = 5546
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 119856
          mmTop = 6085
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          Border.Weight = 1.000000000000000000
          Caption = 'qt'#224' ordinata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 127265
          mmTop = 3704
          mmWidth = 14859
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.Weight = 1.000000000000000000
          DataField = 'cli_citta'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 136525
          mmTop = 0
          mmWidth = 59002
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label21: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label21'
          Border.Weight = 1.000000000000000000
          Caption = 'qt'#224' approntata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 143404
          mmTop = 3704
          mmWidth = 18203
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 161661
          mmTop = 6085
          mmWidth = 2646
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label17: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          Border.Weight = 1.000000000000000000
          Caption = 'qt'#224' evadibile'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 164307
          mmTop = 3704
          mmWidth = 15748
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Line4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 179917
          mmTop = 6085
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_Label18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.Weight = 1.000000000000000000
          Caption = 'consegna'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 181769
          mmTop = 3704
          mmWidth = 12277
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object pp_Line5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 6085
          mmTop = 2646
          mmWidth = 156369
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object pp_DBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          Border.Weight = 1.000000000000000000
          DataField = 'quantita_evasa'
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
          mmLeft = 162454
          mmTop = 0
          mmWidth = 17727
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
  end
  inherited query_iva: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select progressivo, sum(quantita), sum(quantita_evasa)'
      'from evaordv'
      'where progressivo = :progressivo'
      'group by 1'
      'having sum(quantita) <> sum(quantita_evasa)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = (
      'select art_codice, sum(esistenza) esistenza'
      'from mag'
      'group by art_codice')
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
      'FROM ARC_ORDINAMENTO.EVAORDV T')
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = query_stampa_lista_prelievo_ds
    UserName = 'LISTA_PRELIEVO'
    Left = 428
    Top = 15
  end
  object prelievo: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select data_documento, serie_documento, numero_documento,'
      
        'cli_codice, cli_descrizione1, cli_citta, data_consegna_stampabil' +
        'e,'
      
        'art_codice, art_descrizione1, art_descrizione2, progressivo, rig' +
        'a,'
      'quantita_evasa, quantita_approntata, tub_codice, tub_descrizione'
      'from evaordv'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 15
  end
  object prelievo_ds: TMyDataSource
    DataSet = prelievo
    Left = 405
    Top = 15
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 475
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 490
    Top = 15
  end
  object tma_mag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 505
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_mag_ds: TMyDataSource
    DataSet = tma_mag
    Left = 520
    Top = 15
  end
  object cancella_ordine: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'delete from evaordv'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 360
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object tps: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tps'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tps_ds: TMyDataSource
    DataSet = tps
    Left = 575
    Top = 15
  end
  object oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'set @quantita_totale := 0;'
      
        'select oar.id, oar.data_consegna, oar.tum_quantita_base - oar.tu' +
        'm_quantita_evasa_base quantita,'
      
        'oat.frn_codice, concat(trim(frn.descrizione1), '#39' '#39', frn.citta) f' +
        'rn_descrizione,'
      'oat.data_documento, oat.numero_documento, oat.serie_documento,'
      
        '(@quantita_totale := @quantita_totale + oar.tum_quantita_base - ' +
        'oar.tum_quantita_evasa_base) quantita_progressiva '
      'from oar'
      'inner join oat on oat.progressivo = oar.progressivo'
      'inner join frn on frn.codice = oat.frn_codice'
      'where oar.art_codice = :art_codice'
      
        'and (oar.situazione = '#39'inserito'#39' or oar.situazione = '#39'evaso parz' +
        'iale'#39')'
      'and (:stesso_deposito = '#39'no'#39' or'
      
        '(select tma_codice from ovr where progressivo = :ovr_progressivo' +
        ' and riga = :ovr_riga) = oar.tma_codice)'
      'and (oar.ovr_tipo <> '#39'cliente'#39' or'
      
        '(oar.ovr_tipo = '#39'cliente'#39' and oar.ovr_progressivo = :ovr_progres' +
        'sivo and oar.ovr_riga = :ovr_riga))'
      'and @quantita_totale < :quantita_fabbisogno'
      'order by oar.ovr_progressivo desc, oar.data_consegna')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'stesso_deposito'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_riga'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_riga'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita_fabbisogno'
        Value = nil
      end>
  end
  object ppDBPipeline_oar: TppDBPipeline
    DataSource = query_stampa_oar_ds
    SkipWhenNoRecords = False
    UserName = 'ORDINI_FORNITORI'
    Left = 428
    Top = 35
    MasterDataPipelineName = 'ppDBTabella'
    object ppDBPipeline_oarppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline_oarppField2: TppField
      FieldAlias = 'utn_codice'
      FieldName = 'utn_codice'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object ppDBPipeline_oarppField3: TppField
      FieldAlias = 'utente_creazione'
      FieldName = 'utente_creazione'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppDBPipeline_oarppField4: TppField
      FieldAlias = 'data_ora_creazione'
      FieldName = 'data_ora_creazione'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object ppDBPipeline_oarppField5: TppField
      FieldAlias = 'utente'
      FieldName = 'utente'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object ppDBPipeline_oarppField6: TppField
      FieldAlias = 'data_ora'
      FieldName = 'data_ora'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppDBPipeline_oarppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'id_origine'
      FieldName = 'id_origine'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline_oarppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'progressivo'
      FieldName = 'progressivo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline_oarppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'riga'
      FieldName = 'riga'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline_oarppField10: TppField
      FieldAlias = 'art_codice'
      FieldName = 'art_codice'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppDBPipeline_oarppField11: TppField
      FieldAlias = 'data_consegna'
      FieldName = 'data_consegna'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline_oarppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'quantita'
      FieldName = 'quantita'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline_oarppField13: TppField
      FieldAlias = 'frn_codice'
      FieldName = 'frn_codice'
      FieldLength = 8
      DisplayWidth = 8
      Position = 12
    end
    object ppDBPipeline_oarppField14: TppField
      FieldAlias = 'frn_descrizione'
      FieldName = 'frn_descrizione'
      FieldLength = 80
      DisplayWidth = 80
      Position = 13
    end
    object ppDBPipeline_oarppField15: TppField
      FieldAlias = 'data_documento'
      FieldName = 'data_documento'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline_oarppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'numero_documento'
      FieldName = 'numero_documento'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline_oarppField17: TppField
      FieldAlias = 'serie_documento'
      FieldName = 'serie_documento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline_oarppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'oar_id'
      FieldName = 'oar_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline_oarppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'PROGRESSIVO'
      GuidCollationType = gcString
      DetailFieldName = 'progressivo'
      DetailSortOrder = soAscending
    end
    object ppDBPipeline_oarppMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'RIGA'
      GuidCollationType = gcString
      DetailFieldName = 'riga'
      DetailSortOrder = soAscending
    end
    object ppDBPipeline_oarppMasterFieldLink3: TppMasterFieldLink
      MasterFieldName = 'ART_CODICE'
      GuidCollationType = gcString
      DetailFieldName = 'art_codice'
      DetailSortOrder = soAscending
    end
  end
  object query_stampa_oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.EVAORDV_OAR O')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 95
    Top = 35
  end
  object query_stampa_oar_ds: TMyDataSource
    DataSet = query_stampa_oar
    Left = 120
    Top = 35
  end
  object query_stampa_lista_prelievo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.EVAORDV_LISTA_PRELIEVO LP')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 150
    Top = 35
  end
  object query_stampa_lista_prelievo_ds: TMyDataSource
    DataSet = query_stampa_lista_prelievo
    Left = 175
    Top = 35
  end
end
