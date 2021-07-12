inherited A31INVTUB: TA31INVTUB
  AlignWithMargins = True
  ActiveControl = v_codice_01
  Caption = 'A31INVTUB'
  ClientHeight = 960
  ClientWidth = 1272
  ExplicitWidth = 1288
  ExplicitHeight = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1272
    TabOrder = 1
    ExplicitWidth = 1272
    object tool_elabora: TToolButton
      Left = 186
      Top = 0
      Caption = 'tool_elabora'
      ImageIndex = 27
      OnClick = tool_elaboraClick
    end
    object tool_nuovo: TToolButton
      Left = 217
      Top = 0
      Caption = 'tool_nuovo'
      Enabled = False
      ImageIndex = 25
      OnClick = tool_nuovoClick
    end
    object tool_salva: TToolButton
      Left = 248
      Top = 0
      Caption = 'tool_salva'
      Enabled = False
      ImageIndex = 38
    end
    object tool_cancella: TToolButton
      Left = 279
      Top = 0
      Caption = 'tool_salva'
      Enabled = False
      ImageIndex = 103
    end
  end
  inherited statusbar: TStatusBar
    Top = 940
    Width = 1272
    ExplicitTop = 940
    ExplicitWidth = 1272
  end
  object pannello_base: TRzPanel [2]
    Left = 0
    Top = 34
    Width = 1272
    Height = 237
    Align = alTop
    TabOrder = 3
    OnEnter = pannello_baseEnter
    object RzLabel3: TRzLabel
      Left = 505
      Top = 45
      Width = 20
      Height = 13
      Caption = 'lotto'
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
      Left = 505
      Top = 85
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
    object RzLabel11: TRzLabel
      Left = 505
      Top = 5
      Width = 50
      Height = 13
      Caption = 'magazzino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel12: TRzLabel
      Left = 580
      Top = 5
      Width = 53
      Height = 13
      Caption = 'descrizione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_lotto: trzedit_go
      Left = 505
      Top = 60
      Width = 210
      Height = 21
      Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
      TabOrder = 1
      OnEnter = v_lottoEnter
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESLOT'
      lookcolltable = 'LOT'
      lookcollvisname = 'LOT'
    end
    object v_art_codice: trzedit_go
      Left = 505
      Top = 100
      Width = 210
      Height = 21
      Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
      TabOrder = 2
      OnExit = v_art_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_art
      lookcollprogram = 'GESART'
      lookcolltable = 'ART'
      lookcollvisname = 'ART'
    end
    object v_lot_descrizione: trzdbeditdescrizione_go
      Left = 720
      Top = 60
      Width = 410
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lot_ds
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
      TabOrder = 3
    end
    object v_art_descrizione1: trzdbeditdescrizione_go
      Left = 720
      Top = 100
      Width = 410
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = art_ds
      DataField = 'descrizione1'
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
      TabOrder = 4
    end
    object v_lot_esistente: TCheckBox
      Left = 510
      Top = 160
      Width = 97
      Height = 17
      Caption = ' esistenza >0'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object pannello_codice: TRzPanel
      Left = 2
      Top = 2
      Width = 501
      Height = 233
      Align = alLeft
      TabOrder = 0
      OnExit = pannello_codiceExit
      object Label1: TRzLabel
        Left = 5
        Top = 5
        Width = 21
        Height = 13
        Caption = 'area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel1: TRzLabel
        Left = 6
        Top = 45
        Width = 40
        Height = 13
        Caption = 'corridoio'
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
        Left = 6
        Top = 90
        Width = 31
        Height = 13
        Caption = 'ripiano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel7: TRzLabel
        Left = 6
        Top = 135
        Width = 38
        Height = 13
        Caption = 'colonna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel9: TRzLabel
        Left = 6
        Top = 180
        Width = 22
        Height = 13
        Caption = 'cella'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel10: TRzLabel
        Left = 85
        Top = 180
        Width = 53
        Height = 13
        Caption = 'descrizione'
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
        Left = 85
        Top = 90
        Width = 53
        Height = 13
        Caption = 'descrizione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object Label15: TRzLabel
        Left = 80
        Top = 5
        Width = 53
        Height = 13
        Caption = 'descrizione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel2: TRzLabel
        Left = 85
        Top = 45
        Width = 53
        Height = 13
        Caption = 'descrizione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel8: TRzLabel
        Left = 85
        Top = 135
        Width = 53
        Height = 13
        Caption = 'descrizione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object v_codice_01: trzedit_go
        Left = 5
        Top = 20
        Width = 70
        Height = 21
        Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
        TabOrder = 0
        OnExit = v_codice_01Exit
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'A31CARTUB'
        lookcolltable = 'A31TSU'
        lookcollvisname = 'A31TSU1'
      end
      object v_codice_02: trzedit_go
        Left = 5
        Top = 60
        Width = 70
        Height = 21
        Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
        TabOrder = 2
        OnEnter = v_codice_02Enter
        OnExit = v_codice_02Exit
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'A31CARTUB'
        lookcolltable = 'A31TSU'
        lookcollvisname = 'A31TSU2'
      end
      object v_codice_04: trzedit_go
        Left = 5
        Top = 150
        Width = 70
        Height = 21
        Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
        TabOrder = 6
        OnEnter = v_codice_04Enter
        OnExit = v_codice_04Exit
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'A31CARTUB'
        lookcolltable = 'A31TSU'
        lookcollvisname = 'A31TSU4'
      end
      object v_codice_05: trzedit_go
        Left = 5
        Top = 195
        Width = 70
        Height = 21
        Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
        TabOrder = 8
        OnEnter = v_codice_05Enter
        OnExit = v_codice_05Exit
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'A31CARTUB'
        lookcolltable = 'A31TSU'
        lookcollvisname = 'A31TSU5'
      end
      object v_tsu5_descrizione: trzdbeditdescrizione_go
        Left = 85
        Top = 195
        Width = 410
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = tsu5_ds
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
        TabOrder = 9
      end
      object v_tsu4_descrizione: trzdbeditdescrizione_go
        Left = 85
        Top = 150
        Width = 410
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = tsu4_ds
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
        TabOrder = 7
      end
      object v_tsu3_descrizione: trzdbeditdescrizione_go
        Left = 85
        Top = 105
        Width = 410
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = tsu3_ds
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
        TabOrder = 5
      end
      object v_tsu2_descrizione: trzdbeditdescrizione_go
        Left = 85
        Top = 60
        Width = 410
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = tsu2_ds
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
        TabOrder = 3
      end
      object v_tsu1_descrizione: trzdbeditdescrizione_go
        Left = 85
        Top = 20
        Width = 410
        Height = 21
        Hint = '-'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = tsu1_ds
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
        TabOrder = 1
      end
      object v_codice_03: trzedit_go
        Left = 5
        Top = 105
        Width = 70
        Height = 21
        Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
        TabOrder = 4
        OnEnter = v_codice_03Enter
        OnExit = v_codice_03Exit
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc
        lookcollprogram = 'A31CARTUB'
        lookcolltable = 'A31TSU'
        lookcollvisname = 'A31TSU3'
      end
    end
    object RzPanel1: TRzPanel
      Left = 1148
      Top = 2
      Width = 122
      Height = 233
      Align = alRight
      TabOrder = 6
      object v_lettore: TRzRapidFireButton
        Left = 2
        Top = 169
        Width = 118
        Height = 31
        Hint = 'importa movimenti da lettore'
        Align = alBottom
        Caption = 'lettore'
        Enabled = False
        ExplicitTop = 202
        ExplicitWidth = 119
      end
      object v_esegui_rettifica: TRzRapidFireButton
        Left = 2
        Top = 200
        Width = 118
        Height = 31
        Hint = 'esegui il movimento di rettifica'
        Align = alBottom
        Caption = 'esegui rettifica'
        Enabled = False
        OnClick = v_esegui_rettificaClick
        ExplicitTop = 492
        ExplicitWidth = 108
      end
      object RzRapidFireButton1: TRzRapidFireButton
        Left = 2
        Top = 2
        Width = 118
        Height = 31
        Hint = 'azzera tutto l'#39'archivio delle rilevazioni'
        Align = alTop
        Caption = 'azzera archivio'
        Enabled = False
        OnClick = RzRapidFireButton1Click
        ExplicitTop = 1
      end
      object RzRapidFireButton2: TRzRapidFireButton
        Left = 2
        Top = 33
        Width = 118
        Height = 31
        Hint = 'azzera la giacenza di tutti gli articoli'
        Align = alTop
        Caption = 'azzera giacenza articoli'
        Enabled = False
        ExplicitTop = 202
        ExplicitWidth = 119
      end
      object v_selart: TRzRapidFireButton
        Left = 2
        Top = 72
        Width = 119
        Height = 31
        Hint = 'imposta filtro articoli standard'
        Caption = 'filtro articoli'
        Enabled = False
      end
      object v_diversi: TRzRapidFireButton
        Left = 2
        Top = 112
        Width = 119
        Height = 31
        Hint = 
          'visualizza solo gli articoli dell'#39'archivio rettifiche che hanno ' +
          'una quantit'#224' rilevata diversa rispetto a quella teorica'
        Caption = 'solo quantit'#224' diversa'
        Enabled = False
      end
    end
    object v_tma_codice: trzedit_go
      Left = 505
      Top = 20
      Width = 70
      Height = 21
      Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
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
      TabOrder = 7
      OnExit = v_codice_01Exit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'A31CARTUB'
      lookcolltable = 'A31TSU'
      lookcollvisname = 'A31TSU1'
    end
    object v_tma_descrizione: trzdbeditdescrizione_go
      Left = 585
      Top = 20
      Width = 410
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
      TabOrder = 8
    end
  end
  object RzPanel2: TRzPanel [3]
    Left = 0
    Top = 446
    Width = 1272
    Height = 465
    Align = alTop
    BorderInner = fsGroove
    TabOrder = 0
    object v_griglia2: TcxGrid
      Left = 4
      Top = 4
      Width = 960
      Height = 457
      Align = alLeft
      TabOrder = 0
      OnEnter = v_griglia2Enter
      OnExit = v_griglia2Exit
      ExplicitLeft = -1
      ExplicitTop = -16
      object v_griglia2DB: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ubm_ds
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,###0;-#,###0;0'
            Kind = skSum
            Position = spFooter
            Column = v_griglia2DBquantita
          end
          item
            Format = '#,###0;-#,###0;0'
            Kind = skSum
            Column = v_griglia2DBquantita
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###0;-#,###0;0'
            Kind = skSum
            Column = v_griglia2DBquantita
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object v_griglia2DBart_codice: TcxGridDBColumn
          Caption = 'codice articolo'
          DataBinding.FieldName = 'art_codice'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 120
        end
        object v_griglia2DBart_descrizione1: TcxGridDBColumn
          Caption = 'descrizione articolo'
          DataBinding.FieldName = 'art_descrizione1'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
        object v_griglia2DBtub_codice: TcxGridDBColumn
          Caption = 'codice ubicazione'
          DataBinding.FieldName = 'tub_codice'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 117
        end
        object v_griglia2DBquantita: TcxGridDBColumn
          Caption = 'quantit'#224
          DataBinding.FieldName = 'SUM(ubm.quantita*ubm.segno)'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###0;-#,###0;0'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
      end
      object v_griglia2DBBD: TcxGridDBBandedTableView
        OnKeyDown = v_griglia2DBBDKeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ubm_ds
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0;-#,##0;0'
            Kind = skSum
            Position = spFooter
            Column = v_griglia2DBBDqta_teorica
          end
          item
            Format = '#,##0;-#,##0;0'
            Kind = skSum
            Column = v_griglia2DBBDqta_teorica
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0;-#,##0;0'
            Kind = skSum
            Column = v_griglia2DBBDqta_teorica
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'ARTICOLI PER UBICAZIONE'
            Options.Moving = False
            Options.Sizing = False
          end>
        object v_griglia2DBBDart_codice: TcxGridDBBandedColumn
          Caption = 'codice articolo'
          DataBinding.FieldName = 'art_codice'
          HeaderAlignmentHorz = taCenter
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object v_griglia2DBBDart_descrizione: TcxGridDBBandedColumn
          Caption = 'descrizione articolo'
          DataBinding.FieldName = 'descrizione'
          HeaderAlignmentHorz = taCenter
          Width = 367
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object v_griglia2DBBDtcm_codice: TcxGridDBBandedColumn
          Caption = 'cat. merc'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object v_griglia2DBBDtub_codice: TcxGridDBBandedColumn
          Caption = 'ubicazione'
          DataBinding.FieldName = 'tub_codice'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object v_griglia2DBBDqta_teorica: TcxGridDBBandedColumn
          Caption = 'qt'#224'  teorica'
          DataBinding.FieldName = 'quantita_teorica'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0;-#,##0;0'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object v_griglia2DBBDqta_rilevata: TcxGridDBBandedColumn
          Caption = 'quantita rilevata'
          DataBinding.FieldName = 'quantita_rilevata'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;-#,##0;0'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object v_griglia2DBBDrettifica: TcxGridDBBandedColumn
          DataBinding.FieldName = 'rettifica'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;-#,##0;0'
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
      end
      object v_griglia2Liv1: TcxGridLevel
        GridView = v_griglia2DBBD
      end
    end
    object RzPanel3: TRzPanel
      Left = 964
      Top = 4
      Width = 304
      Height = 457
      Align = alClient
      TabOrder = 1
      object v_griglia3: TcxGrid
        Left = 2
        Top = 2
        Width = 300
        Height = 384
        Align = alTop
        TabOrder = 0
        OnEnter = v_griglia3Enter
        OnExit = v_griglia3Exit
        object v_griglia3DBBD: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ltm_ds
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,###0;-#,###0;0'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,###0;-#,###0;0'
              Kind = skSum
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###0;-#,###0;0'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = 'LOTTI PER ARTICOLO/UBICAZIONE'
              Options.Moving = False
              Options.Sizing = False
              Width = 296
            end>
          object v_griglia3DBBDlotto: TcxGridDBBandedColumn
            DataBinding.FieldName = 'lotto'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object v_griglia3DBBDqta_teorica: TcxGridDBBandedColumn
            Caption = 'qta teorica'
            DataBinding.FieldName = 'quantita_teorica'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object v_griglia3DBBDqta_rilevata: TcxGridDBBandedColumn
            Caption = 'qta rilevata'
            DataBinding.FieldName = 'quantita_rilevata'
            HeaderAlignmentHorz = taCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object v_griglia3Liv1: TcxGridLevel
          GridView = v_griglia3DBBD
        end
      end
      object pannello_lotto: TRzPanel
        Left = 2
        Top = 386
        Width = 300
        Height = 69
        Align = alClient
        TabOrder = 1
        OnEnter = pannello_lottoEnter
        ExplicitTop = 416
        ExplicitHeight = 39
        object v_lot_codice: trzdbedit_go
          Left = 5
          Top = 10
          Width = 126
          Height = 21
          DataSource = ltm_ds
          DataField = 'lotto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
        end
        object v_qta_teorica: trzdbnumericedit_go
          Left = 145
          Top = 10
          Width = 65
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calcolatrice]'
          DataSource = ltm_ds
          DataField = 'quantita_rilevata'
          ReadOnly = True
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;0'
          decimalplaces = 0
        end
        object v_qta_rilevata: trzdbnumericedit_go
          Left = 220
          Top = 10
          Width = 65
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calcolatrice]'
          DataSource = ltm_ds
          DataField = 'quantita_rilevata'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;#0'
          decimalplaces = 0
        end
        object v_rilevato: TDBCheckBox
          Left = 10
          Top = 42
          Width = 97
          Height = 17
          Caption = 'rilevato'
          DataField = 'gestito'
          DataSource = ltm_ds
          TabOrder = 3
        end
      end
    end
  end
  object v_griglia: TcxGrid [4]
    Left = 0
    Top = 271
    Width = 1272
    Height = 175
    Align = alTop
    TabOrder = 4
    OnEnter = v_grigliaEnter
    LookAndFeel.NativeStyle = False
    ExplicitLeft = 5
    ExplicitTop = 266
    object v_grigliaDBBD: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = v_grigliaDBBDCustomDrawCell
      DataController.DataSource = query_ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.FixedBandSeparatorWidth = 1
      Styles.Background = cxStyle17
      Styles.Footer = cxStyle16
      Styles.Header = cxStyle5
      Styles.BandHeader = cxStyle29
      Bands = <
        item
          Caption = 'UBICAZIONE'
          FixedKind = fkLeft
          Options.Moving = False
          Options.Sizing = False
          Width = 1280
        end>
      object v_grigliaDBBDarea: TcxGridDBBandedColumn
        Caption = 'area'
        DataBinding.FieldName = 'codice_01'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object v_grigliaDBBDtsu1_descrizione: TcxGridDBBandedColumn
        Caption = 'descrizione area'
        HeaderAlignmentHorz = taCenter
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object v_grigliaDBBDcorr: TcxGridDBBandedColumn
        Caption = 'corridoio'
        DataBinding.FieldName = 'codice_02'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object v_grigliaDBBDtsu2_descrizione2: TcxGridDBBandedColumn
        Caption = 'descrizione corridoio'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object v_grigliaDBBDripiano: TcxGridDBBandedColumn
        Caption = 'ripiano'
        DataBinding.FieldName = 'codice_03'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object v_grigliaDBBDts3_descrizione: TcxGridDBBandedColumn
        Caption = 'descrizione ripiano'
        HeaderAlignmentHorz = taCenter
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object v_grigliaDBBDcolonna: TcxGridDBBandedColumn
        Caption = 'colonna'
        DataBinding.FieldName = 'codice_04'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object v_grigliaDBBDtsu4_descrizione: TcxGridDBBandedColumn
        Caption = 'descrizione colonna'
        HeaderAlignmentHorz = taCenter
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object v_grigliaDBBDcella: TcxGridDBBandedColumn
        Caption = 'cella'
        DataBinding.FieldName = 'codice_05'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object v_grigliaDBBDtsu5_descrizione: TcxGridDBBandedColumn
        Caption = 'descrizione cella'
        HeaderAlignmentHorz = taCenter
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object v_grigliaDBBDtub_codice: TcxGridDBBandedColumn
        Caption = 'ubicazione'
        DataBinding.FieldName = 'tub_codice'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object v_grigliaDBBDtub_descrione: TcxGridDBBandedColumn
        Caption = 'descrizione ubicazione'
        DataBinding.FieldName = 'tub_codice'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object v_grigliaLevel1: TcxGridLevel
      GridView = v_grigliaDBBD
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'select distinct'
      'invubm.codice_01, '
      'invubm.codice_02, '
      'invubm.codice_03, '
      'invubm.codice_04, '
      'invubm.codice_05,'
      'tsu1.descrizione tsu_descrizione1,'
      
        'if(tsu2.codice_02='#39#39'  and tsu2.codice_03='#39#39'  and tsu2.codice_04=' +
        #39#39' and tsu2.codice_05='#39#39','#39#39', tsu2.descrizione) tsu_descrizione2,'
      
        'if(tsu3.codice_03='#39#39'  and tsu3.codice_04='#39#39'  and tsu3.codice_05=' +
        #39#39','#39#39', tsu3.descrizione) tsu_descrizione3,'
      
        'if(tsu4.codice_04='#39#39'  and tsu4.codice_05='#39#39','#39#39', tsu4.descrizione' +
        ') tsu_descrizione4,'
      'if(tsu5.codice_05='#39#39','#39#39', tsu5.descrizione) tsu_descrizione5, '
      'invubm.tub_codice'
      'from a31invubm invubm'
      
        'INNER JOIN a31tsu tsu1 ON tsu1.codice_01=invubm.codice_01 and ts' +
        'u1.codice_02='#39#39' and tsu1.codice_03='#39#39' and tsu1.codice_04='#39#39' and ' +
        'tsu1.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu2 ON tsu2.codice_01=invubm.codice_01 and ts' +
        'u2.codice_02=invubm.codice_02 and tsu2.codice_03='#39#39' and tsu2.cod' +
        'ice_04='#39#39' and tsu1.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu3 ON tsu3.codice_01=invubm.codice_01 and ts' +
        'u3.codice_02=invubm.codice_02 and tsu3.codice_03=invubm.codice_0' +
        '3  and tsu3.codice_04='#39#39' and tsu3.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu4 ON tsu4.codice_01=invubm.codice_01 and ts' +
        'u4.codice_02=invubm.codice_02 and tsu4.codice_03=invubm.codice_0' +
        '3  and tsu4.codice_04=invubm.codice_04 and tsu4.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu5 ON tsu5.codice_01=invubm.codice_01 and ts' +
        'u5.codice_02=invubm.codice_02 and tsu5.codice_03=invubm.codice_0' +
        '3  and tsu5.codice_04=invubm.codice_04 and tsu5.codice_05=invubm' +
        '.codice_05'
      'where'
      'invubm.codice_01=:codice_01 '
      'order by 1,2,3,4,5,6')
    Left = 290
    Top = 0
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end>
  end
  inherited query_ds: TMyDataSource
    Left = 330
  end
  object tsu1: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select a31tsu.descrizione , a31tsu.id'
      'from a31tsu '
      'where'
      'a31tsu.codice_01=:codice_01 and'
      'a31tsu.codice_02='#39#39' and'
      'a31tsu.codice_03='#39#39' and'
      'a31tsu.codice_04='#39#39' and'
      'a31tsu.codice_05='#39#39' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 370
    Top = 35
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end>
  end
  object tsu1_ds: TMyDataSource
    DataSet = tsu1
    Left = 410
    Top = 45
  end
  object tsu2_ds: TMyDataSource
    DataSet = tsu2
    Left = 405
    Top = 100
  end
  object tsu2: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select a31tsu.descrizione , a31tsu.id'
      'from a31tsu '
      'where'
      'a31tsu.codice_01=:codice_01 and'
      'a31tsu.codice_02=:codice_02 and'
      'a31tsu.codice_03='#39#39' and'
      'a31tsu.codice_04='#39#39' and'
      'a31tsu.codice_05='#39#39' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 370
    Top = 90
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_02'
        Value = '000'
      end>
  end
  object lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '  select '#9
      '  lot.lotto, '
      '  lot.art_codice, '
      '  art.descrizione1 art_descrizione1, '
      '  art.tcm_codice '
      '  from lot '
      '  inner join art on art.codice=lot.art_codice ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
  end
  object lot_ds: TMyDataSource
    DataSet = lot
    Left = 795
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1, obsoleto'#9
      'from art'
      'where'
      'codice=:codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 830
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 855
  end
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'invubm.codice_01, '
      'invubm.codice_02, '
      'invubm.codice_03, '
      'invubm.codice_04, '
      'invubm.codice_05, '
      'invubm.tub_codice, '
      'invubm.art_codice, '
      'invubm.descrizione,'
      'invubm.quantita_teorica, '
      'invubm.quantita_rilevata,'
      'invubm.rettifica'
      'from a31invubm invubm'
      'where'
      'invubm.codice_01=:codice_01 and'
      'invubm.codice_02=:codice_02 and'
      'invubm.codice_03=:codice_03 and'
      'invubm.codice_04=:codice_04 and'
      'invubm.codice_05=:codice_05 and'
      'invubm.tub_codice=:tub_codice'
      'order by 1,2,3,4,5,6')
    AfterScroll = ubmAfterScroll
    Options.DefaultValues = True
    Options.TrimVarChar = True
    MasterSource = query_ds
    MasterFields = 'codice_01;codice_02;codice_03;codice_04;codice_05'
    DetailFields = 'codice_01;codice_02;codice_03;codice_04;codice_05'
    Left = 410
    Top = 515
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_02'
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'codice_03'
        Value = '0000'
      end
      item
        DataType = ftString
        Name = 'codice_04'
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'codice_05'
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'tub_codice'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_02'
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'codice_03'
        Value = '0000'
      end
      item
        DataType = ftString
        Name = 'codice_04'
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'codice_05'
        Value = '000'
      end>
  end
  object ubm_ds: TMyDataSource
    DataSet = ubm
    Left = 475
    Top = 515
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'inv.lotto,'
      'inv.art_codice,'
      'inv.tub_codice,'
      'inv.quantita_teorica,'
      'inv.quantita_rilevata,'
      'inv.gestito'
      'from a31invlot inv'
      'where '
      'inv.art_codice=:art_codice and'
      'inv.tub_codice=:tub_codice'
      ''
      'ORDER BY 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 980
    Top = 560
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = '160360I0000'
      end
      item
        DataType = ftString
        Name = 'tub_codice'
        Value = 'P707010101'
      end>
  end
  object ltm_ds: TMyDataSource
    DataSet = ltm
    OnStateChange = ltm_dsStateChange
    Left = 1030
    Top = 555
  end
  object ubma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT '
      'ubm.art_codice,'
      'ubm.tub_codice,'
      'art.descrizione1 art_descrizione1,'
      'art.tcm_codice,'
      'tub.a31tsu_codice_01,'
      'tub.a31tsu_codice_02,'
      'tub.a31tsu_codice_03,'
      'tub.a31tsu_codice_04,'
      'tub.a31tsu_codice_05,'
      'tsu4.ordine tsu_ordine_04,'
      'tsu5.ordine tsu_ordine_05,'
      'SUM(ubm.quantita*ubm.segno) quantita'
      'from ubm'
      'INNER JOIN ART ON ART.CODICE=UBM.ART_CODICE'
      'INNER JOIN TUB ON TUB.CODICE=UBM.TUB_CODICE'
      
        'INNER JOIN A31TSU TSU4 ON TSU4.CODICE_01=TUB.A31TSU_CODICE_01 AN' +
        'D TSU4.CODICE_02=TUB.A31TSU_CODICE_02 AND'
      
        '                          TSU4.CODICE_03=TUB.A31TSU_CODICE_03 AN' +
        'D TSU4.CODICE_04=TUB.A31TSU_CODICE_04 AND TSU4.CODICE_05='#39#39
      
        'INNER JOIN A31TSU TSU5 ON TSU5.CODICE_01=TUB.A31TSU_CODICE_01 AN' +
        'D TSU5.CODICE_02=TUB.A31TSU_CODICE_02 AND'
      
        '                          TSU5.CODICE_03=TUB.A31TSU_CODICE_03 AN' +
        'D TSU5.CODICE_04=TUB.A31TSU_CODICE_04 AND TSU5.CODICE_05=TUB.A31' +
        'TSU_CODICE_05'
      'WHERE'
      'ART_CODICE=:art_codice'
      'GROUP BY 1,2,3,4,5,6,7,8, 9, 10'
      'HAVING SUM(ubm.quantita*ubm.segno) <>0'
      'ORDER BY 1,2')
    AfterScroll = ubmaAfterScroll
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 570
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = '160360I0000'
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1170
    Top = 65531
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor]
      Color = 14149876
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15136253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = 7346457
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9818092
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8036607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4159924
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clOlive
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2179167
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor]
      Color = 15725290
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clTeal
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clTeal
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13886416
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8170097
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsItalic]
      TextColor = 6592345
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object TreeListStyleSheetDevExpress: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle5
      Styles.Inactive = cxStyle9
      Styles.Selection = cxStyle13
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle3
      Styles.ColumnHeader = cxStyle4
      Styles.ContentEven = cxStyle6
      Styles.ContentOdd = cxStyle7
      Styles.Footer = cxStyle8
      Styles.IncSearch = cxStyle10
      Styles.Indicator = cxStyle11
      Styles.Preview = cxStyle12
      BuiltIn = True
    end
    object TreeListStyleSheetUserFormat1: TcxTreeListStyleSheet
      Caption = 'UserFormat1'
      Styles.Content = cxStyle17
      Styles.Inactive = cxStyle21
      Styles.Selection = cxStyle24
      Styles.BandBackground = cxStyle14
      Styles.BandHeader = cxStyle15
      Styles.ColumnHeader = cxStyle16
      Styles.ContentEven = cxStyle18
      Styles.ContentOdd = cxStyle19
      Styles.Footer = cxStyle20
      Styles.Indicator = cxStyle22
      Styles.Preview = cxStyle23
      BuiltIn = True
    end
    object TreeListStyleSheetSpruce: TcxTreeListStyleSheet
      Caption = 'Spruce'
      Styles.Content = cxStyle28
      Styles.Inactive = cxStyle32
      Styles.Selection = cxStyle35
      Styles.BandBackground = cxStyle25
      Styles.BandHeader = cxStyle26
      Styles.ColumnHeader = cxStyle27
      Styles.ContentEven = cxStyle29
      Styles.ContentOdd = cxStyle30
      Styles.Footer = cxStyle31
      Styles.Indicator = cxStyle33
      Styles.Preview = cxStyle34
      BuiltIn = True
    end
  end
  object query_inv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT '
      'tsu.codice_01, '
      'tsu.codice_02, '
      'tsu.codice_03, '
      'tsu1.descrizione tsu_descrizione1, '
      
        'if(tsu2.codice_02='#39#39'  and tsu2.codice_03='#39#39'  and tsu2.codice_04=' +
        #39#39' and tsu2.codice_05='#39#39', '#39#39', tsu2.descrizione) tsu_descrizione2' +
        ', '
      
        'if(tsu3.codice_03='#39#39'  and tsu3.codice_04='#39#39'  and tsu3.codice_05=' +
        #39#39', '#39#39', tsu3.descrizione) tsu_descrizione3, '
      
        'if(tsu4.codice_04='#39#39'  and tsu4.codice_05='#39#39', '#39#39', tsu4.descrizion' +
        'e) tsu_descrizione4, '
      'if(tsu5.codice_05='#39#39', '#39#39', tsu5.descrizione) tsu_descrizione5,'
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 0, 2) COL_01_02, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 0, 3) COL_01_03, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 1, 1) COL_02_01, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 1, 2) COL_02_02, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 1, 3) COL_02_03, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 2, 1) COL_03_01, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 2, 2) COL_03_02, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 2, 3) COL_03_03, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 3, 1) COL_04_01, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 3, 2) COL_04_02, '
      
        'F_A31_PROMAU_TSU_QTA_UBI( :art_codice,tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 3, 3) COL_04_03 '
      'from a31tsu tsu  '
      
        'INNER JOIN a31tsu tsu1 ON tsu1.codice_01=tsu.codice_01 and tsu1.' +
        'codice_02='#39#39' and tsu1.codice_03='#39#39' and tsu1.codice_04='#39#39' and tsu' +
        '1.codice_05='#39#39'  '
      
        'INNER JOIN a31tsu tsu2 ON tsu2.codice_01=tsu.codice_01 and tsu2.' +
        'codice_02=tsu.codice_02 and tsu2.codice_03='#39#39' and tsu2.codice_04' +
        '='#39#39' and tsu1.codice_05='#39#39'  '
      
        'INNER JOIN a31tsu tsu3 ON tsu3.codice_01=tsu.codice_01 and tsu3.' +
        'codice_02=tsu.codice_02 and tsu3.codice_03=tsu.codice_03  and ts' +
        'u3.codice_04='#39#39' and tsu3.codice_05='#39#39'  '
      
        'INNER JOIN a31tsu tsu4 ON tsu4.codice_01=tsu.codice_01 and tsu4.' +
        'codice_02=tsu.codice_02 and tsu4.codice_03=tsu.codice_03  and ts' +
        'u4.codice_04=tsu.codice_04 and tsu4.codice_05='#39#39'  '
      
        'INNER JOIN a31tsu tsu5 ON tsu5.codice_01=tsu.codice_01 and tsu5.' +
        'codice_02=tsu.codice_02 and tsu5.codice_03=tsu.codice_03  and ts' +
        'u5.codice_04=tsu.codice_04 and tsu5.codice_05=tsu.codice_05  '
      'WHERE'
      
        'concat(tsu.codice_01,'#39'_'#39',tsu.codice_02,'#39'_'#39',tsu.codice_03,'#39'_'#39',tsu' +
        '.codice_04,'#39'_'#39',tsu.codice_05) in '
      '(SELECT v.tsu_codice '
      #9'from  v_a31_promau_art_codice_ubi v'
      #9'WHERE'
      #9'v.art_codice=:art_codice'
      '   ORDER BY 1) ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 290
    Top = 50
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object tsu3: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select a31tsu.descrizione , a31tsu.id'
      'from a31tsu '
      'where'
      'a31tsu.codice_01=:codice_01 and'
      'a31tsu.codice_02=:codice_02 and'
      'a31tsu.codice_03=:codice_03 and'
      'a31tsu.codice_04='#39#39' and'
      'a31tsu.codice_05='#39#39' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 360
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_02'
        Value = '000'
      end
      item
        DataType = ftUnknown
        Name = 'codice_03'
        Value = nil
      end>
  end
  object tsu3_ds: TMyDataSource
    DataSet = tsu3
    Left = 405
    Top = 150
  end
  object tsu4: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select a31tsu.descrizione , a31tsu.id'
      'from a31tsu '
      'where'
      'a31tsu.codice_01=:codice_01 and'
      'a31tsu.codice_02=:codice_02 and'
      'a31tsu.codice_03=:codice_03 and'
      'a31tsu.codice_04=:codice_04 and'
      'a31tsu.codice_05='#39#39' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 355
    Top = 190
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_02'
        Value = '000'
      end
      item
        DataType = ftUnknown
        Name = 'codice_03'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_04'
        Value = nil
      end>
  end
  object tsu4_ds: TMyDataSource
    DataSet = tsu4
    Left = 400
    Top = 200
  end
  object tsu5: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select a31tsu.descrizione , a31tsu.id'
      'from a31tsu '
      'where'
      'a31tsu.codice_01=:codice_01 and'
      'a31tsu.codice_02=:codice_02 and'
      'a31tsu.codice_03=:codice_03 and'
      'a31tsu.codice_04=:codice_04 and'
      'a31tsu.codice_05=:codice_05 ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 325
    Top = 225
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_02'
        Value = '000'
      end
      item
        DataType = ftUnknown
        Name = 'codice_03'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_04'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_05'
        Value = nil
      end>
  end
  object tsu5_ds: TMyDataSource
    DataSet = tsu5
    Left = 360
    Top = 235
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from tma'
      'where'
      'codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 715
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 745
  end
  object tub: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from tub'
      'where'
      'a31tsu_codice_01=:codice_01 and'
      'tma_codice<>'#39#39' and'
      'ubicazione_unica='#39'si'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 1015
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_01'
        Value = nil
      end>
  end
  object tmo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tmo'
      'where codice = :codice'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 985
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
end
