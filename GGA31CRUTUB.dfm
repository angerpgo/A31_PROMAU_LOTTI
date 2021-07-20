inherited A31CRUTUB: TA31CRUTUB
  AlignWithMargins = True
  Caption = 'A31CRUTUB'
  ClientHeight = 859
  ClientWidth = 1264
  ExplicitWidth = 1270
  ExplicitHeight = 908
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1264
    ExplicitWidth = 1264
  end
  inherited statusbar: TStatusBar
    Top = 839
    Width = 1264
    ExplicitTop = 839
    ExplicitWidth = 1264
  end
  object pannello_base: TRzPanel [2]
    Left = 0
    Top = 34
    Width = 1264
    Height = 97
    Align = alTop
    TabOrder = 2
    OnEnter = pannello_baseEnter
    OnExit = pannello_baseExit
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
    object RzLabel3: TRzLabel
      Left = 505
      Top = 6
      Width = 22
      Height = 13
      Caption = 'collo'
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
      Top = 45
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
      TabOrder = 2
    end
    object v_codice_02: trzedit_go
      Left = 6
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
      TabOrder = 3
      OnEnter = v_codice_02Enter
      OnExit = v_codice_02Exit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'A31CARTUB'
      lookcolltable = 'A31TSU'
      lookcollvisname = 'A31TSU2'
    end
    object v_lotto: trzedit_go
      Left = 505
      Top = 20
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
      TabOrder = 4
      OnEnter = v_lottoEnter
      OnExit = v_lottoExit
      OnKeyDown = v_lottoKeyDown
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESLOT'
      lookcolltable = 'LOT'
      lookcollvisname = 'LOT'
    end
    object v_art_codice: trzedit_go
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
      TabOrder = 5
      OnExit = v_art_codiceExit
      OnKeyDown = v_art_codiceKeyDown
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_art
      lookcollprogram = 'GESART'
      lookcolltable = 'ART'
      lookcollvisname = 'ART'
    end
    object v_lot_descrizione: trzdbeditdescrizione_go
      Left = 720
      Top = 20
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
      TabOrder = 6
    end
    object v_art_descrizione1: trzdbeditdescrizione_go
      Left = 720
      Top = 60
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
      TabOrder = 7
    end
    object v_lot_esistente: TCheckBox
      Left = 1145
      Top = 20
      Width = 97
      Height = 17
      Caption = ' esistenza >0'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object v_griglia: TcxGrid [3]
    Left = 0
    Top = 131
    Width = 1264
    Height = 335
    Align = alTop
    TabOrder = 3
    OnEnter = v_grigliaEnter
    LookAndFeel.NativeStyle = False
    object v_grigliaDBBD: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = v_grigliaDBBDCustomDrawCell
      OnFocusedItemChanged = v_grigliaDBBDFocusedItemChanged
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
          Width = 375
        end
        item
          Caption = 'RIPIANO A TERRA'
          Options.Moving = False
          Options.Sizing = False
          Width = 220
        end
        item
          Caption = 'RIPIANO 1'
          Options.Moving = False
          Options.Sizing = False
          Width = 220
        end
        item
          Caption = 'RIPIANO 2'
          Options.Moving = False
          Options.Sizing = False
          Width = 220
        end
        item
          Caption = 'RIPIANO 3'
          FixedKind = fkRight
          Options.Moving = False
          Options.Sizing = False
          Width = 220
        end>
      object v_grigliaDBBDarea: TcxGridDBBandedColumn
        Caption = 'Area'
        DataBinding.FieldName = 'codice_01'
        HeaderAlignmentHorz = taCenter
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object v_grigliaDBBDcorr: TcxGridDBBandedColumn
        Caption = 'Corridoio'
        DataBinding.FieldName = 'codice_02'
        HeaderAlignmentHorz = taCenter
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object v_grigliaDBBDripiano: TcxGridDBBandedColumn
        Caption = 'Colonna'
        DataBinding.FieldName = 'codice_03'
        HeaderAlignmentHorz = taCenter
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object v_grigliaDBBDtsu_descrizione3: TcxGridDBBandedColumn
        Caption = 'Descrizione'
        DataBinding.FieldName = 'tsu_descrizione3'
        HeaderAlignmentHorz = taCenter
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_01_01: TcxGridDBBandedColumn
        Caption = 'cella 1'
        DataBinding.FieldName = 'COL_01_01'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_01_02: TcxGridDBBandedColumn
        Caption = 'cella 2'
        DataBinding.FieldName = 'COL_01_02'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_01_03: TcxGridDBBandedColumn
        Caption = 'cella 3'
        DataBinding.FieldName = 'COL_01_03'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_02_01: TcxGridDBBandedColumn
        Caption = 'cella 1'
        DataBinding.FieldName = 'COL_02_01'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_02_02: TcxGridDBBandedColumn
        Caption = 'cella 2'
        DataBinding.FieldName = 'COL_02_02'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_02_03: TcxGridDBBandedColumn
        Caption = 'cella 3'
        DataBinding.FieldName = 'COL_02_03'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_03_01: TcxGridDBBandedColumn
        Caption = 'cella 1'
        DataBinding.FieldName = 'COL_03_01'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_03_02: TcxGridDBBandedColumn
        Caption = 'cella 2'
        DataBinding.FieldName = 'COL_03_02'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_03_03: TcxGridDBBandedColumn
        Caption = 'cella 3'
        DataBinding.FieldName = 'COL_03_03'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_04_01: TcxGridDBBandedColumn
        Caption = 'cella 1'
        DataBinding.FieldName = 'COL_04_01'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_04_02: TcxGridDBBandedColumn
        Caption = 'cella 2'
        DataBinding.FieldName = 'COL_04_02'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object v_grigliaDBBDCol_04_03: TcxGridDBBandedColumn
        Caption = 'cella 3'
        DataBinding.FieldName = 'COL_04_03'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,###0;-#,###0;0'
        Properties.Precision = 0
        Properties.QuickClose = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object v_grigliaLevel1: TcxGridLevel
      GridView = v_grigliaDBBD
    end
  end
  object RzPanel2: TRzPanel [4]
    Left = 0
    Top = 466
    Width = 1264
    Height = 373
    Align = alClient
    BorderInner = fsGroove
    TabOrder = 4
    object v_griglia2: TcxGrid
      Left = 4
      Top = 4
      Width = 806
      Height = 365
      Align = alLeft
      TabOrder = 0
      OnEnter = v_griglia2Enter
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
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ubm_ds
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##0;-#,##0;0'
            Kind = skSum
            Position = spFooter
            Column = v_griglia2DBBDquantita
          end
          item
            Format = '#,##0;-#,##0;0'
            Kind = skSum
            Column = v_griglia2DBBDquantita
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0;-#,##0;0'
            Kind = skSum
            Column = v_griglia2DBBDquantita
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'ARTICOLI PER UBICAZIONE'
            FixedKind = fkLeft
            Options.Moving = False
            Options.Sizing = False
          end>
        object v_griglia2DBBDart_codice: TcxGridDBBandedColumn
          Caption = 'codice articolo'
          DataBinding.FieldName = 'art_codice'
          HeaderAlignmentHorz = taCenter
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object v_griglia2DBBDart_descrizione1: TcxGridDBBandedColumn
          Caption = 'descrizione articolo'
          DataBinding.FieldName = 'art_descrizione1'
          HeaderAlignmentHorz = taCenter
          Width = 400
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object v_griglia2DBBDtcm_codice: TcxGridDBBandedColumn
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object v_griglia2DBBDtub_codice: TcxGridDBBandedColumn
          Caption = 'ubicazione'
          DataBinding.FieldName = 'tub_codice'
          HeaderAlignmentHorz = taCenter
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object v_griglia2DBBDquantita: TcxGridDBBandedColumn
          Caption = 'quantit'#224
          DataBinding.FieldName = 'quantita'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0;-#,##0;0'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object v_griglia2Liv1: TcxGridLevel
        GridView = v_griglia2DBBD
      end
    end
    object v_griglia3: TcxGrid
      Left = 810
      Top = 4
      Width = 450
      Height = 365
      Align = alClient
      TabOrder = 1
      OnEnter = v_griglia3Enter
      object v_griglia3DBBD: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ltm_ds
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,###0;-#,###0;0'
            Kind = skSum
            Position = spFooter
            Column = v_griglia3DBBDquantita
          end
          item
            Format = '#,###0;-#,###0;0'
            Kind = skSum
            Column = v_griglia3DBBDquantita
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###0;-#,###0;0'
            Kind = skSum
            Column = v_griglia3DBBDquantita
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'COLLI PER ARTICOLO/UBICAZIONE'
            FixedKind = fkLeft
            Options.Moving = False
            Options.Sizing = False
          end>
        object v_griglia3DBBDdata_produzione: TcxGridDBBandedColumn
          Caption = 'data produzione'
          DataBinding.FieldName = 'data_ora_creazione'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object v_griglia3DBBDlotto: TcxGridDBBandedColumn
          Caption = 'collo'
          DataBinding.FieldName = 'lotto'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object v_griglia3DBBDquantita: TcxGridDBBandedColumn
          DataBinding.FieldName = 'quantita'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###0;-#,###0;0'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 150
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object v_griglia3Liv1: TcxGridLevel
        GridView = v_griglia3DBBD
      end
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'SELECT'
      'tsu.codice_01, '
      'tsu.codice_02, '
      'tsu.codice_03, '
      'tsu1.descrizione_breve tsu_descrizione1,'
      
        'if(tsu2.codice_02='#39#39'  and tsu2.codice_03='#39#39'  and tsu2.codice_04=' +
        #39#39' and tsu2.codice_05='#39#39','#39#39', tsu2.descrizione) tsu_descrizione2,'
      
        'if(tsu3.codice_03='#39#39'  and tsu3.codice_04='#39#39'  and tsu3.codice_05=' +
        #39#39','#39#39', tsu3.descrizione) tsu_descrizione3,'
      
        'if(tsu4.codice_04='#39#39'  and tsu4.codice_05='#39#39','#39#39', tsu4.descrizione' +
        ') tsu_descrizione4,'
      'if(tsu5.codice_05='#39#39','#39#39', tsu5.descrizione) tsu_descrizione5,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 0, 1) COL_01_01,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 0, 2) COL_01_02,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 0, 3) COL_01_03,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 1, 1) COL_02_01,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 1, 2) COL_02_02,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 1, 3) COL_02_03,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 2, 1) COL_03_01,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 2, 2) COL_03_02,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 2, 3) COL_03_03,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 3, 1) COL_04_01,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 3, 2) COL_04_02,'
      
        'F_A31_PROMAU_TSU_QTA_UBI(:art_codice, tsu.codice_01, tsu.codice_' +
        '02,tsu.codice_03, 3, 3) COL_04_03'
      'from a31tsu tsu'
      
        'INNER JOIN a31tsu tsu1 ON tsu1.codice_01=tsu.codice_01 and tsu1.' +
        'codice_02='#39#39' and tsu1.codice_03='#39#39' and tsu1.codice_04='#39#39' and tsu' +
        '1.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu2 ON tsu2.codice_01=tsu.codice_01 and tsu2.' +
        'codice_02=tsu.codice_02 and tsu2.codice_03='#39#39' and tsu2.codice_04' +
        '='#39#39' and tsu1.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu3 ON tsu3.codice_01=tsu.codice_01 and tsu3.' +
        'codice_02=tsu.codice_02 and tsu3.codice_03=tsu.codice_03  and ts' +
        'u3.codice_04='#39#39' and tsu3.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu4 ON tsu4.codice_01=tsu.codice_01 and tsu4.' +
        'codice_02=tsu.codice_02 and tsu4.codice_03=tsu.codice_03  and ts' +
        'u4.codice_04=tsu.codice_04 and tsu4.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu5 ON tsu5.codice_01=tsu.codice_01 and tsu5.' +
        'codice_02=tsu.codice_02 and tsu5.codice_03=tsu.codice_03  and ts' +
        'u5.codice_04=tsu.codice_04 and tsu5.codice_05=tsu.codice_05'
      'WHERE '
      'tsu.codice_01=:codice_01  AND'
      'tsu.codice_02=:codice_02 AND'
      'tsu.codice_03<> '#39#39'  AND'
      'tsu.codice_04= '#39#39'  AND'
      'tsu.codice_05= '#39#39' '
      ''
      'ORDER BY 1,2,3')
    AfterScroll = queryAfterScroll
    Left = 290
    Top = 0
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
      end
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'codice_02'
        Value = '001'
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
    Left = 395
    Top = 65531
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
      end>
  end
  object tsu1_ds: TMyDataSource
    DataSet = tsu1
    Left = 435
  end
  object tsu2_ds: TMyDataSource
    DataSet = tsu2
    Left = 510
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
    Left = 480
    Top = 65531
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
      'select '#9
      'lot.lotto, '
      'lot.art_codice, '
      'lot.esistenza,'
      'lot.chiuso,'
      'art.descrizione1 art_descrizione1, '
      'art.tcm_codice '
      'from lot '
      'inner join art on art.codice=lot.art_codice'
      'where'
      'lot.lotto=:codice ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 850
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = '0'
      end>
  end
  object lot_ds: TMyDataSource
    DataSet = lot
    Left = 880
    Top = 45
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
    Left = 870
    Top = 90
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 910
    Top = 95
  end
  object ubm: TMyQuery_go
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
      'SUM(ubm.quantita*ubm.segno) quantita'
      'from ubm'
      'INNER JOIN ART ON ART.CODICE=UBM.ART_CODICE'
      'INNER JOIN TUB ON TUB.CODICE=UBM.TUB_CODICE'
      
        'INNER JOIN A31TSU TSU ON TSU.CODICE_01=TUB.A31TSU_CODICE_01 AND ' +
        'TSU.CODICE_02=TUB.A31TSU_CODICE_02 AND'
      
        '                         TSU.CODICE_03=TUB.A31TSU_CODICE_03 AND ' +
        'TSU.CODICE_04=TUB.A31TSU_CODICE_04 AND TSU.CODICE_05=TUB.A31TSU_' +
        'CODICE_05'
      'WHERE'
      'TSU.CODICE_01=:codice_01 AND'
      'TSU.CODICE_02=:codice_02 AND'
      'TSU.CODICE_03=:codice_03 AND'
      'TSU.CODICE_04= ( SELECT CODICE_04 '
      '                 FROM A31TSU TSU4'
      '                 WHERE '
      #9'         TSU4.CODICE_01=TUB.A31TSU_CODICE_01 AND '
      #9#9' TSU4.CODICE_02=TUB.A31TSU_CODICE_02 AND'
      '                 TSU4.CODICE_03=TUB.A31TSU_CODICE_03 AND '
      '                 TSU4.CODICE_04<>'#39#39' AND  '#9#9#9#9'  '
      #9#9' TSU4.ORDINE =:codice_04 AND '
      #9#9' TSU4.CODICE_05='#39#39
      #9#9' ORDER BY TSU4.ORDINE LIMIT 1) AND'
      'TSU.ORDINE=:codice_05'
      ''
      'GROUP BY 1,2,3,4,5,6,7,8'
      'HAVING SUM(ubm.quantita*ubm.segno) >0'
      'ORDER BY 1,2'
      '')
    AfterScroll = ubmAfterScroll
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 415
    Top = 515
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_01'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_02'
        Value = nil
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
  object ubm_ds: TMyDataSource
    DataSet = ubm
    Left = 475
    Top = 515
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'lot.data_ora_creazione, '
      'lot.lotto,'
      'lot.esistenza quantita'
      'from lot'
      'where '
      'lot.art_codice=:art_codice and'
      'lot.CHIUSO='#39'no'#39
      'ORDER BY 1,2')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 915
    Top = 530
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = #39'160360I0000'#39
      end>
  end
  object ltm_ds: TMyDataSource
    DataSet = ltm
    Left = 990
    Top = 555
  end
  object ubma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT '
      'ubi.art_codice,'
      'ubi.tub_codice,'
      'art.descrizione1 art_descrizione1,'
      'art.tcm_codice,'
      'tub.a31tsu_codice_01,'
      'tub.a31tsu_codice_02,'
      'tub.a31tsu_codice_03,'
      'tub.a31tsu_codice_04,'
      'tub.a31tsu_codice_05,'
      'tsu4.ordine tsu_ordine_04,'
      'tsu5.ordine tsu_ordine_05,'
      'ubi.esistenza quantita'
      'from ubi'
      'INNER JOIN ART ON ART.CODICE=UBI.ART_CODICE'
      'INNER JOIN TUB ON TUB.CODICE=UBI.TUB_CODICE'
      
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
      'ART_CODICE=:art_codice and'
      'ubi.esistenza<>0'
      'ORDER BY 1,2')
    AfterCancel = queryAfterScroll
    AfterScroll = ubmaAfterScroll
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 575
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = '160360I0000'
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1160
    Top = 90
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
  object querya: TMyQuery_go
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
    AfterScroll = queryAfterScroll
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
  object lotto_ubi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'ltm.*'
      'from v_a31promau_lotto_ubi ltm'
      'where'
      'ltm.lotto=:lotto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 925
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lotto'
        Value = nil
      end>
  end
end
