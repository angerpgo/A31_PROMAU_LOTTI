inherited CREORDP: TCREORDP
  Caption = 'CREORDP'
  ClientWidth = 994
  ExplicitWidth = 1010
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 994
    ExplicitWidth = 994
    object tool_commessa: TToolButton
      Left = 186
      Top = 0
      Hint = 'assegna commessa e sottocommessa'
      Caption = 'tool_commessa'
      Enabled = False
      ImageIndex = 124
      OnClick = tool_commessaClick
    end
    object tool_inserimento_excel: TToolButton
      Left = 217
      Top = 0
      Hint = 'inserimento elementi da file excel'
      Caption = 'tool_inserimento_excel'
      Enabled = False
      ImageIndex = 125
      OnClick = tool_inserimento_excelClick
    end
  end
  inherited statusbar: TStatusBar
    Width = 994
    ExplicitWidth = 994
  end
  object Panel1: TRzPanel [2]
    Left = 0
    Top = 136
    Width = 830
    Height = 498
    Align = alClient
    TabOrder = 3
    object v_griglia: TRzTreeView
      Left = 2
      Top = 2
      Width = 826
      Height = 463
      SelectionPen.Color = clBtnShadow
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      HideSelection = False
      Images = ARC.immagine_16
      Indent = 19
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
      TabStop = False
      OnChange = v_grigliaChange
      OnEnter = v_grigliaEnter
      OnGetImageIndex = v_grigliaGetImageIndex
      OnGetSelectedIndex = v_grigliaGetImageIndex
    end
    object Panel4: TRzPanel
      Left = 2
      Top = 465
      Width = 826
      Height = 31
      Align = alBottom
      TabOrder = 1
      object v_art_codice_nodo: trzedit_go
        Left = 5
        Top = 5
        Width = 196
        Height = 21
        TabStop = False
        Text = ''
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 0
        OnExit = v_art_codiceExit
      end
      object v_quantita_nodo: trznumericedit_go
        Left = 730
        Top = 5
        Width = 91
        Height = 21
        Hint = '[Alt+Gi'#249'=apre calcolatrice]'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 1
        IntegersOnly = False
        DisplayFormat = ',0.0000;-,0.0000;#'
        decimalplaces = 4
      end
      object v_art_descrizione_nodo: trzedit_go
        Left = 205
        Top = 5
        Width = 521
        Height = 21
        TabStop = False
        Text = ''
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 2
        OnExit = v_art_codiceExit
      end
    end
  end
  object Panel2: TRzPanel [3]
    Left = 830
    Top = 136
    Width = 164
    Height = 498
    Align = alRight
    TabOrder = 4
    object v_equivalenti: TRzRapidFireButton
      Left = 2
      Top = 24
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'cerca alternativo [F2]'
      Enabled = False
      OnClick = v_equivalentiClick
      ExplicitLeft = 5
      ExplicitTop = 27
      ExplicitWidth = 151
    end
    object v_esplodi: TRzRapidFireButton
      Left = 2
      Top = 46
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'esplodi distinta base [F3]'
      Enabled = False
      OnClick = v_esplodiClick
      ExplicitLeft = 5
      ExplicitTop = 49
      ExplicitWidth = 151
    end
    object v_inserisci: TRzRapidFireButton
      Left = 2
      Top = 68
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'inserisci elemento [F4]'
      Enabled = False
      OnClick = v_inserisciClick
      ExplicitLeft = 5
      ExplicitTop = 71
      ExplicitWidth = 151
    end
    object v_cancella: TRzRapidFireButton
      Left = 2
      Top = 112
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'cancella elemento [F6]'
      Enabled = False
      OnClick = v_cancellaClick
      ExplicitLeft = 5
      ExplicitTop = 115
      ExplicitWidth = 151
    end
    object v_crea_ordini: TRzRapidFireButton
      Left = 2
      Top = 222
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'crea ordini produzione [F12]'
      Enabled = False
      OnClick = v_crea_ordiniClick
      ExplicitLeft = 5
      ExplicitTop = 225
      ExplicitWidth = 151
    end
    object v_inserisci_sottoelemento: TRzRapidFireButton
      Left = 2
      Top = 90
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'inserisci sottoelemento [F5]'
      Enabled = False
      OnClick = v_inserisci_sottoelementoClick
      ExplicitLeft = 5
      ExplicitTop = 93
      ExplicitWidth = 151
    end
    object v_distinta_base: TRzRapidFireButton
      Left = 2
      Top = 2
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'distinta base [F1]'
      Enabled = False
      OnClick = v_distinta_baseClick
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 151
    end
    object v_espandi: TRzRapidFireButton
      Left = 2
      Top = 244
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'espandi nodi'
      Enabled = False
      OnClick = v_espandiClick
      ExplicitLeft = 5
      ExplicitTop = 247
      ExplicitWidth = 151
    end
    object v_comprimi: TRzRapidFireButton
      Left = 2
      Top = 266
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'comprimi nodi'
      Enabled = False
      OnClick = v_comprimiClick
      ExplicitLeft = 5
      ExplicitTop = 269
      ExplicitWidth = 151
    end
    object v_cancella_sottoelementi: TRzRapidFireButton
      Left = 2
      Top = 134
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'cancella sottoelementi [F7]'
      Enabled = False
      OnClick = v_cancella_sottoelementiClick
      ExplicitLeft = 5
      ExplicitTop = 137
      ExplicitWidth = 151
    end
    object v_esplodi_tutto: TRzRapidFireButton
      Left = 2
      Top = 156
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'esplodi tutti i livelli [F8]'
      Enabled = False
      OnClick = v_esplodi_tuttoClick
      ExplicitLeft = 5
      ExplicitTop = 159
      ExplicitWidth = 151
    end
    object v_modifica_quantita: TRzRapidFireButton
      Left = 2
      Top = 178
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'modifica quantit'#224' [F9]'
      Enabled = False
      OnClick = v_modifica_quantitaClick
      ExplicitLeft = 5
      ExplicitTop = 181
      ExplicitWidth = 151
    end
    object v_cruscotto: TRzRapidFireButton
      Left = 2
      Top = 200
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'cruscotto articolo [F11]'
      Enabled = False
      OnClick = v_cruscottoClick
      ExplicitLeft = 5
      ExplicitTop = 203
      ExplicitWidth = 151
    end
    object Label1: TRzLabel
      Left = 5
      Top = 425
      Width = 67
      Height = 13
      Caption = 'esist. deposito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label4: TRzLabel
      Left = 5
      Top = 460
      Width = 61
      Height = 13
      Caption = 'esist. globale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label2: TRzLabel
      Left = 85
      Top = 460
      Width = 72
      Height = 13
      Caption = 'esist. principale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label5: TRzLabel
      Left = 5
      Top = 390
      Width = 132
      Height = 13
      Caption = 'deposito finito/materia prima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_varia_quantita: TRzRapidFireButton
      Left = 2
      Top = 288
      Width = 160
      Height = 22
      Align = alTop
      Caption = 'varia quantit'#224' da produrre'
      Enabled = False
      OnClick = v_varia_quantitaClick
      ExplicitLeft = 5
      ExplicitTop = 291
      ExplicitWidth = 151
    end
    object RzLabel1: TRzLabel
      Left = 85
      Top = 425
      Width = 64
      Height = 13
      Caption = 'app. deposito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_equivalenti_filtro: TRzRapidFireButton
      Left = 2
      Top = 310
      Width = 160
      Height = 22
      Hint = 'seleziona articoli equivalenti con filtro articolo da produrre'
      Align = alTop
      Caption = 'cerca alternativo'
      Enabled = False
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
      OnClick = v_equivalenti_filtroClick
      ExplicitTop = 332
    end
    object v_esistenza_tma: trznumericedit_go
      Left = 5
      Top = 440
      Width = 76
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 5
    end
    object v_esistenza: trznumericedit_go
      Left = 5
      Top = 475
      Width = 76
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 4
    end
    object v_esistenza_principale: trznumericedit_go
      Left = 85
      Top = 475
      Width = 76
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 4
    end
    object v_tma_codice_finito: trzedit_go
      Left = 5
      Top = 405
      Width = 76
      Height = 21
      TabStop = False
      Text = ''
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
    end
    object v_tma_codice_materia_prima: trzedit_go
      Left = 85
      Top = 405
      Width = 76
      Height = 21
      TabStop = False
      Text = ''
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 4
    end
    object v_avanzamento_fasi: TRzCheckBox
      Left = 5
      Top = 355
      Width = 102
      Height = 15
      Caption = 'avanzamento fasi'
      Enabled = False
      State = cbUnchecked
      TabOrder = 5
      TabStop = False
    end
    object v_fasi_non_sequenziali: TRzCheckBox
      Left = 5
      Top = 373
      Width = 111
      Height = 15
      Caption = 'fasi non sequenziali'
      Enabled = False
      State = cbUnchecked
      TabOrder = 6
      TabStop = False
    end
    object v_approntato_tma: trznumericedit_go
      Left = 85
      Top = 440
      Width = 76
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 7
      IntegersOnly = False
      DisplayFormat = ',0.0000;-,0.0000;0.0000'
      decimalplaces = 5
    end
  end
  object RzPanel1: TRzPanel [4]
    Left = 0
    Top = 34
    Width = 994
    Height = 102
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 2
    DesignSize = (
      994
      102)
    object pannello_commessa: TRzPanel
      Left = 0
      Top = 0
      Width = 994
      Height = 102
      Align = alClient
      TabOrder = 0
      OnEnter = pannello_commessaEnter
      OnExit = pannello_commessaExit
      object RzLabel2: TRzLabel
        Left = 5
        Top = 26
        Width = 34
        Height = 13
        Caption = 'articolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel3: TRzLabel
        Left = 735
        Top = 26
        Width = 38
        Height = 13
        Caption = 'quantit'#224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel4: TRzLabel
        Left = 735
        Top = 61
        Width = 71
        Height = 13
        Caption = 'data consegna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel5: TRzLabel
        Left = 5
        Top = 61
        Width = 88
        Height = 13
        Caption = 'codice documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel6: TRzLabel
        Left = 380
        Top = 61
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
      object v_selezione: trzcombobox_go
        Left = 5
        Top = 5
        Width = 91
        Height = 21
        Hint = 'tipo selezione'
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
        TabOrder = 0
        Text = 'articolo'
        OnClick = v_selezioneClick
        Items.Strings = (
          'articolo'
          'ordine')
        ItemIndex = 0
      end
      object v_quantita: trznumericedit_go
        Left = 735
        Top = 40
        Width = 91
        Height = 21
        Hint = 'quantit'#224' da produrre'
        Margins.Left = 1
        Margins.Top = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 6
        IntegersOnly = False
        DisplayFormat = ',0.0000;-,0.0000;#'
        decimalplaces = 4
      end
      object v_ovr_progressivo: trznumericedit_go
        Left = 100
        Top = 5
        Width = 91
        Height = 21
        Hint = 'ordine cliente [F4 F5 F6]'
        Margins.Left = 1
        Margins.Top = 1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 1
        OnEnter = v_ovr_progressivoEnter
        OnExit = v_ovr_progressivoExit
        IntegersOnly = False
        DisplayFormat = '#'
        decimalplaces = 4
        lookcolldatabase = 'arc.arcdit'
        lookcolltable = 'OVT'
        lookcollvisname = 'OVTAPE'
      end
      object v_ovr_riga: trznumericedit_go
        Left = 195
        Top = 5
        Width = 51
        Height = 21
        Hint = 'riga ordine cliente [F4 F5 F6]'
        Margins.Left = 1
        Margins.Top = 1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 2
        OnEnter = v_ovr_rigaEnter
        OnExit = v_ovr_rigaExit
        IntegersOnly = False
        DisplayFormat = '#'
        decimalplaces = 4
        lookcolldatabase = 'arc.arcdit'
        lookcolltable = 'OVR'
        lookcollvisname = 'OVR'
      end
      object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
        Left = 250
        Top = 5
        Width = 481
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = ovt_ds
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
      object v_art_codice: trzedit_go
        Left = 5
        Top = 40
        Width = 146
        Height = 21
        Hint = 'codice articolo [F4 F5 F6]'
        Text = ''
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 5
        OnExit = v_art_codiceExit
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc_art
        lookcolltable = 'ART'
        lookcollvisname = 'ART'
      end
      object v_art_descrizione: trzdbeditdescrizione_go
        Left = 155
        Top = 40
        Width = 576
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = art_01_ds
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
        TabOrder = 11
      end
      object v_top_codice: trzedit_go
        Left = 5
        Top = 76
        Width = 50
        Height = 21
        Hint = 'codice documento di produzione [F4 F5 F6]'
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
        TabOrder = 7
        OnExit = v_top_codiceExit
        lookcolldatabase = 'ARC.ARCDIT'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'GESTOP'
        lookcolltable = 'TOP'
        lookcollvisname = 'TOP'
      end
      object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
        Left = 60
        Top = 76
        Width = 316
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = top_ds
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
        TabOrder = 12
      end
      object v_data_consegna: trzdatetimeedit_go
        Left = 735
        Top = 75
        Width = 91
        Height = 21
        Hint = 'data consegna richiesta [Alt+Gi'#249' per aprire il calendario]'
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
        TabOrder = 9
      end
      object v_anaordp: TRzCheckBox
        Left = 740
        Top = 8
        Width = 82
        Height = 15
        Hint = 
          'spunta per eseguire direttamente in programma di analisi ordini ' +
          'di produzione ANAORDP al termine della creazione dell'#39'ordine'
        Caption = 'esegui analisi'
        State = cbUnchecked
        TabOrder = 3
        TabStop = False
      end
      object v_usa_equivalenti: TRzCheckBox
        Left = 830
        Top = 8
        Width = 90
        Height = 15
        Hint = 
          'spunta per proporre automaticamente gli articoli equivalenti dei' +
          ' componenti'
        Caption = 'usa equivalenti'
        State = cbUnchecked
        TabOrder = 4
        TabStop = False
        Visible = False
      end
      object v_tvr_codice: trzedit_go
        Left = 380
        Top = 76
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
        TabOrder = 8
        OnExit = v_tvr_codiceExit
        lookcolldatabase = 'ARC.ARCDIT'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'GESTVR'
        lookcolltable = 'TVR'
        lookcollvisname = 'TVR'
      end
      object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
        Left = 475
        Top = 76
        Width = 256
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
        TabOrder = 13
      end
    end
    object v_conferma: TRzBitBtn
      Left = 830
      Top = 30
      Width = 161
      Height = 66
      Hint = 'conferma l'#39'elaborazione'
      Anchors = [akTop, akRight]
      Caption = 'Conferma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = v_confermaClick
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select ovt.*, tdo.descrizione tdo_descrizione'
      'from ovt'
      'inner join tdo on tdo.codice = ovt.tdo_codice'
      
        'where ovt.cli_codice = :cli_codice and ovt.situazione = '#39'inserit' +
        'o'#39
      
        'order by ovt.tdo_codice, ovt.data_documento, ovt.numero_document' +
        'o')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object cms: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(trim(cli.descrizione1), '#39' '#39', trim(cli.citta), '#39' '#39',' +
        ' trim(cms.descrizione1), '#39' '#39', cms.descrizione2) descrizione,'
      'cms.tma_codice'
      'from cms'
      'inner join cli on cli.codice = cms.cli_codice'
      'where cms.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 305
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cms_ds: TMyDataSource
    DataSet = cms
    Left = 325
    Top = 65526
  end
  object cmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tma_codice'
      'from cmt'
      'where cms_codice = :cms_codice and tipologia = :tipologia')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 345
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cms_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipologia'
        Value = nil
      end>
  end
  object cmt_ds: TMyDataSource
    DataSet = cmt
    Left = 370
    Top = 65526
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(trim(descrizione1), '#39' '#39', descrizione2) descrizione' +
        ', tcn_codice, tum_codice,'
      
        'tum_codice_dsb, operazione_coefficiente_dsb, tum_coefficiente_ds' +
        'b'
      'from art'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 415
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object dsb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select dsb.art_codice_figlio, concat(trim(art.descrizione1), '#39' '#39 +
        ', art.descrizione2) art_descrizione,'
      
        'dsb.quantita, dsb.prezzo, dsb.descrizione, dsb.tma_codice, dsb.s' +
        'equenza, dsb.art_codice_padre'
      'from dsb'
      'inner join art on art.codice = dsb.art_codice_figlio'
      'where dsb.art_codice_padre = :art_codice_padre'
      
        'and (dsb.data_inizio <= current_date or data_inizio is null) and' +
        ' dsb.data_fine >= current_date'
      'order by dsb.sequenza, dsb.art_codice_figlio')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 445
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object figli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from dsb'
      'where art_codice_padre = :art_codice_padre'
      'limit 1'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 475
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object art_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art.*, concat(trim(descrizione1), '#39' '#39', descrizione2) desc' +
        'rizione'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 505
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_01_ds: TMyDataSource
    DataSet = art_01
    Left = 525
    Top = 65526
  end
  object ovt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat('#39'cliente '#39', ovt.cli_codice, '#39' data '#39', cast(ovt.dat' +
        'a_documento as char(10)), '#39' numero '#39','
      
        'cast(ovt.numero_documento as char(9))) descrizione, data_consegn' +
        'a'
      'from ovt'
      'where ovt.progressivo = :progressivo and'
      '(situazione = '#39'inserito'#39' or situazione = '#39'evaso parziale'#39')')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 600
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ovt_ds: TMyDataSource
    DataSet = ovt
    Left = 620
    Top = 65526
  end
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select progressivo, riga, art_codice, data_consegna,'
      'quantita - coalesce((select sum(quantita) from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = ovr.progressivo and'
      'doc_riga_origine = ovr.riga), 0) quantita,'
      'cms_codice, tipologia, data_consegna,'
      '(select sum(quantita) from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = ovr.progressivo and'
      'doc_riga_origine = ovr.riga) quantita_produzione,'
      '(select count(id) from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = ovr.progressivo and'
      'doc_riga_origine = ovr.riga) numero'
      'from ovr'
      'where progressivo = :progressivo and riga = :riga and'
      '(situazione = '#39'inserito'#39' or situazione = '#39'evaso parziale'#39')')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 640
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga'
        Value = nil
      end>
  end
  object ovr_ds: TMyDataSource
    DataSet = ovr
    Left = 660
    Top = 65526
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opt'
      
        '(progressivo, art_codice, tmo_codice_finiti, tma_codice_finiti, ' +
        'tmo_codice_materie_prime, fasi_non_sequenziali,'
      
        'tma_codice_materie_prime, quantita, data_consegna, data_document' +
        'o, numero_documento, serie_documento,'
      
        'art_codice_semilavorato, tipo_esplosione, cms_codice, tipologia,' +
        ' frn_codice,'
      
        'ovr_progressivo, ovr_riga, tda_codice_ordine, art_codice_finito,' +
        ' progressivo_finito,'
      
        'documento_origine, doc_progressivo_origine, doc_riga_origine, de' +
        'scrizione, lot_codice, formula, avanzamento_fasi, top_codice)'
      'values'
      
        '(:progressivo, :art_codice, :tmo_codice_finiti, :tma_codice_fini' +
        'ti, :tmo_codice_materie_prime, :fasi_non_sequenziali,'
      
        ':tma_codice_materie_prime, :quantita, :data_consegna, :data_docu' +
        'mento, :numero_documento, :serie_documento,'
      
        ':art_codice_semilavorato, :tipo_esplosione, :cms_codice, :tipolo' +
        'gia, :frn_codice,'
      
        ':ovr_progressivo, :ovr_riga, :tda_codice_ordine, :art_codice_fin' +
        'ito, :progressivo_finito,'
      
        ':documento_origine, :doc_progressivo_origine, :doc_riga_origine,' +
        ' :descrizione, :lot_codice, :formula, :avanzamento_fasi, :top_co' +
        'dice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmo_codice_finiti'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice_finiti'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmo_codice_materie_prime'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fasi_non_sequenziali'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice_materie_prime'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_consegna'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'numero_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'serie_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_semilavorato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_esplosione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cms_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipologia'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'frn_codice'
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
        Name = 'tda_codice_ordine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_finito'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo_finito'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documento_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_riga_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'descrizione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lot_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'formula'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'avanzamento_fasi'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'top_codice'
        Value = nil
      end>
  end
  object opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opr'
      
        '(progressivo, riga, art_codice, quantita, semilavorato, tma_codi' +
        'ce, note, quantita_approntata,'
      'costo_unitario, assistenza_tecnica, sequenza_dsb)'
      'values'
      
        '(:progressivo, :riga, :art_codice, :quantita, :semilavorato, :tm' +
        'a_codice, :note, :quantita_approntata,'
      ':costo_unitario, :assistenza_tecnica, :sequenza_dsb)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 780
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'semilavorato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'note'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita_approntata'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_unitario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'assistenza_tecnica'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sequenza_dsb'
        Value = nil
      end>
  end
  object cla: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cla.*, fas.tipo_operazione fas_tipo_operazione, fas.mac_c' +
        'odice'
      'from cla'
      'inner join fas on fas.codice = cla.fas_codice'
      'where cla.art_codice = :art_codice'
      'order by cla.sequenza')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 810
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object opc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opc'
      
        '(progressivo, sequenza, fas_codice, frn_codice, quantita_attrezz' +
        'aggio, quantita, tipo_operazione, costo_totale, note, mac_codice' +
        ')'
      'values'
      
        '(:progressivo, :sequenza, :fas_codice, :frn_codice, :quantita_at' +
        'trezzaggio, :quantita, :tipo_operazione, :costo_totale, :note, :' +
        'mac_codice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 840
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sequenza'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fas_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_operazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_totale'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'note'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mac_codice'
        Value = nil
      end>
  end
  object art_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art.frn_codice, frn.tma_codice_conto_terzi'
      'from art'
      'inner join frn on frn.codice = art.frn_codice'
      'where art.codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object mag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art.codice,'
      
        '(select esistenza from mag where mag.art_codice = art.codice and' +
        ' mag.tma_codice = :tma_codice) esistenza_tma,'
      
        '(select approntato from mag where mag.art_codice = art.codice an' +
        'd mag.tma_codice = :tma_codice) approntato_tma,'
      
        '(select sum(esistenza) from mag inner join tma on tma.codice = m' +
        'ag.tma_codice'
      
        'where mag.art_codice = art.codice and tma.proprieta = '#39'si'#39') esis' +
        'tenza,'
      
        '(select esistenza from mag where mag.art_codice = art.codice and' +
        ' mag.tma_codice = :tma_codice_principale) esistenza_principale'
      'from art'
      'where art.codice = :art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 870
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice_principale'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object mag_approntato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza, approntato'
      'from mag'
      'where art_codice = :art_codice and tma_codice = :tma_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 900
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end>
  end
  object art_costo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 930
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object frn_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from frn'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 955
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select lotti'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select lotti'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 780
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object OpenDialog: TOpenDialog
    Title = 'Importazione quotazioni fornitori'
    Left = 600
    Top = 15
  end
  object top: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from top'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 810
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object top_ds: TMyDataSource
    DataSet = top
    Left = 829
    Top = 15
  end
  object top_vista: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from vista_top'
      'where ditta = :ditta and top_codice = :top_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 855
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ditta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'top_codice'
        Value = nil
      end>
  end
  object mag_art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select mag.tma_codice,mag.esistenza, art.tcm_codice, art.tgm_cod' +
        'ice,'
      '( select art_codice_accessorio from acc'
      '  where acc.art_codice=mag.art_codice limit 1 ) stampo'
      'from mag'
      'inner join tma on tma.codice=mag.tma_codice'
      'inner join art on art.codice=mag.art_codice'
      'where '
      'mag.art_codice=:art_codice and'
      'tma.proprieta='#39'si'#39
      'order by mag.art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 885
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object equ: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id '
      'from equ'
      'where art_codice = :art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 915
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object dsb_equ: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select distinct equ.art_codice_equivalente, concat(trim(art.desc' +
        'rizione1), '#39' '#39', art.descrizione2) art_descrizione'
      'from equ'
      'inner join art on art.codice = equ.art_codice_equivalente'
      
        'inner join dsb on dsb.art_codice_padre = equ.art_codice_equivale' +
        'nte'
      'where equ.art_codice = :art_codice'
      'order by 1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 940
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object art_opt_esiste: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select group_concat(opt.progressivo separator '#39' ; '#39') progressivo'
      'from opt'
      
        'where (opt.situazione = '#39'inserito'#39' or opt.situazione = '#39'evaso pa' +
        'rziale'#39')'
      'and opt.art_codice = :art_codice'
      'and opt.documento_origine <> '#39'ordine produzione'#39
      'and (:ovr_progressivo = 0 or (:ovr_progressivo <> 0 and'
      
        '(select ovt.cli_codice from ovt where ovt.progressivo = opt.ovr_' +
        'progressivo) = '
      
        '(select ovt.cli_codice from ovt where ovt.progressivo = :ovr_pro' +
        'gressivo)))'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 965
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo'
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
    Left = 680
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tvr_ds: TMyDataSource
    DataSet = tvr
    Left = 700
    Top = 65526
  end
  object dsbv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select dsbv.art_codice, coalesce(concat(trim(art.descrizione1), ' +
        #39' '#39', art.descrizione2), '#39#39') art_descrizione'
      'from dsbv'
      'inner join dsb on dsb.id = dsbv.id_dsb'
      'left join art on art.codice = dsbv.art_codice'
      'where dsbv.tvr_codice = :tvr_codice'
      'and dsb.art_codice_padre = :art_codice_padre'
      'and dsb.sequenza = :sequenza'
      'and dsb.art_codice_figlio = :art_codice_figlio'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 675
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tvr_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sequenza'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_figlio'
        Value = nil
      end>
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
    Left = 650
    Top = 15
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
  object opc_data: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select min(data_ora_inizio) data_inizio'
      'from opc'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 625
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object art_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art.codice, art.obsoleto, concat(trim(art.descrizione1), ' +
        #39' '#39', trim(art.descrizione2), '#39' '#39', art.codice_alternativo) descri' +
        'zione,'
      
        'art.tum_codice, art.frn_codice, art.tipo_articolo, art.tcm_codic' +
        'e, art.vd2_codice, art.lotti, frn.tma_codice_conto_terzi,'
      
        'coalesce((select id from arv where art_codice = art.codice limit' +
        ' 1), 0) arv_id,'
      
        '( select sum(cla.gg_anticipo) from cla where cla.art_codice=art.' +
        'codice ) gg_anticipo,'
      
        'case when art.frn_codice='#39'00001651'#39' and art.tcm_codice = '#39'P1'#39'  t' +
        'hen '#39'SEDE'#39
      
        '     when art.frn_codice='#39'00001651'#39' and art.tcm_codice = '#39'PRO'#39' t' +
        'hen '#39'P2'#39
      
        '     when art.frn_codice='#39'00001651'#39' and art.tcm_codice = '#39'FLO'#39' t' +
        'hen '#39'P3'#39' '
      '     else '#39'IN'#39' end tma_codice_finiti '
      'from art'
      'left join frn on frn.codice = art.frn_codice'
      'left join cla on cla.art_codice=art.codice'
      'where '
      'art.codice = :codice and'
      'art.obsoleto='#39'no'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 665
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
end
