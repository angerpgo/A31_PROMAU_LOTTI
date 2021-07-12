inherited A31ASSAPPCL: TA31ASSAPPCL
  Left = 216
  Top = 94
  Caption = 'A31ASSAPPCL'
  ClientHeight = 648
  ClientWidth = 994
  ExplicitWidth = 1010
  ExplicitHeight = 707
  DesignSize = (
    994
    648)
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 994
    ExplicitWidth = 994
    inherited v_tool_numero_record: TToolButton
      Enabled = False
    end
    object tool_saldo_acconto: TToolButton
      Left = 589
      Top = 0
      Caption = 'tool_saldo_acconto'
      Enabled = False
      ImageIndex = 80
      OnClick = tool_saldo_accontoClick
    end
    object tool_evasione: TToolButton
      Left = 620
      Top = 0
      Caption = 'tool_evasione'
      Enabled = False
      ImageIndex = 82
      OnClick = tool_evasioneClick
    end
    object tool_etiart: TToolButton
      Left = 651
      Top = 0
      Hint = 'stampa etichette con programma ETIART'
      Caption = 'tool_etiart'
      Enabled = False
      ImageIndex = 115
      OnClick = tool_etiartClick
    end
    object tool_missioni: TToolButton
      Left = 682
      Top = 0
      Caption = 'tool_missioni'
      ImageIndex = 140
    end
  end
  object ProgressBar: TProgressBar [1]
    Left = 745
    Top = 35
    Width = 16
    Height = 16
    Step = 20
    TabOrder = 1
    Visible = False
  end
  inherited statusbar: TStatusBar
    Top = 628
    Width = 994
    ExplicitTop = 628
    ExplicitWidth = 994
  end
  inherited pannello_campi: TRzPanel
    Width = 890
    Height = 594
    TabOrder = 6
    ExplicitWidth = 890
    ExplicitHeight = 594
    inherited tab_control: TRzPageControl
      Top = 525
      Width = 890
      Height = 69
      ExplicitTop = 525
      ExplicitWidth = 890
      ExplicitHeight = 69
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 888
        ExplicitHeight = 49
        object v_l_prezzo: TRzLabel
          Left = 200
          Top = 5
          Width = 92
          Height = 13
          Caption = 'quantit'#224' approntata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label28: TRzLabel
          Left = 410
          Top = 5
          Width = 69
          Height = 13
          Caption = 'saldo/acconto'
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
          Left = 80
          Top = 5
          Width = 18
          Height = 13
          Caption = 'colli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label6: TRzLabel
          Left = 140
          Top = 5
          Width = 48
          Height = 13
          Caption = 'confezioni'
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
          Left = 5
          Top = 5
          Width = 52
          Height = 13
          Caption = 'u.m. ordine'
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
          Left = 305
          Top = 5
          Width = 95
          Height = 13
          Caption = 'qt'#224' approntata base'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_quantita: trzdbnumericedit_go
          Left = 200
          Top = 20
          Width = 96
          Height = 21
          Hint = 
            'quantit'#224' approntata [F3 = ricalcola colli/confezioni] [F11 = ass' +
            'egna tutta la quantit'#224' della riga]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'quantita_approntata'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnChange = v_quantitaChange
          OnEnter = v_quantitaEnter
          OnExit = v_quantitaExit
          OnKeyDown = v_quantitaKeyDown
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;0.0000'
          decimalplaces = 4
        end
        object Panel1: TRzPanel
          Left = 540
          Top = 0
          Width = 321
          Height = 41
          BorderOuter = fsNone
          Enabled = False
          TabOrder = 4
          object Label1: TRzLabel
            Left = 75
            Top = 5
            Width = 44
            Height = 13
            Caption = 'esistenza'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label3: TRzLabel
            Left = 190
            Top = 5
            Width = 80
            Height = 13
            Caption = 'approntato totale'
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
            Left = 5
            Top = 5
            Width = 57
            Height = 13
            Caption = 'u.m. articolo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_esistenza: trzdbnumericedit_go
            Left = 75
            Top = 20
            Width = 101
            Height = 21
            Hint = 'quantit'#224' approntata [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = query_codice_ds
            DataField = 'esistenza'
            Alignment = taLeftJustify
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_quantitaExit
            AllowBlank = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;0.0000'
            decimalplaces = 4
          end
          object v_approntato: trzdbnumericedit_go
            Left = 190
            Top = 20
            Width = 101
            Height = 21
            Hint = 'quantit'#224' approntata [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            DataSource = query_codice_ds
            DataField = 'approntato'
            Alignment = taLeftJustify
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
            OnExit = v_quantitaExit
            AllowBlank = False
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;0.0000'
            decimalplaces = 4
          end
          object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
            Left = 5
            Top = 20
            Width = 56
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = query_codice_ds
            DataField = 'tum_codice'
            ReadOnly = True
            AutoSize = False
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
          end
        end
        object v_saldo_acconto_approntato: trzdbcombobox_go
          Left = 410
          Top = 20
          Width = 91
          Height = 21
          Hint = 'tipo di evasione del documento di livello superiore'
          DataField = 'saldo_acconto_approntato'
          DataSource = tabella_ds
          Style = csDropDownList
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnChange = v_saldo_acconto_approntatoChange
          OnExit = v_saldo_acconto_approntatoExit
          Items.Strings = (
            'acconto'
            'saldo')
        end
        object v_numero_colli_approntato: trzdbnumericedit_go
          Left = 80
          Top = 20
          Width = 51
          Height = 21
          Hint = 'numero colli'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'numero_colli_approntato'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnEnter = v_numero_colli_approntatoEnter
          OnExit = v_numero_colli_approntatoExit
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object v_numero_confezioni_approntato: trzdbnumericedit_go
          Left = 140
          Top = 20
          Width = 51
          Height = 21
          Hint = 'numero confezioni'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'numero_confezioni_approntato'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnEnter = v_numero_confezioni_approntatoEnter
          OnExit = v_numero_confezioni_approntatoExit
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = '#'
          decimalplaces = 0
        end
        object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
          Left = 5
          Top = 20
          Width = 61
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_ds
          DataField = 'TUM_CODICE'
          ReadOnly = True
          AutoSize = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
        end
        object v_tum_quantita_approntata_base: trzdbnumericedit_go
          Left = 305
          Top = 20
          Width = 96
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_ds
          DataField = 'tum_quantita_approntata_base'
          ReadOnly = True
          Alignment = taLeftJustify
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
          OnChange = v_quantitaChange
          OnEnter = v_quantitaEnter
          OnExit = v_quantitaExit
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;0.0000'
          decimalplaces = 4
        end
      end
    end
  end
  inherited pannello_codice: TRzPanel
    Top = 145
    Width = 891
    Height = 406
    TabOrder = 3
    ExplicitTop = 145
    ExplicitWidth = 891
    ExplicitHeight = 406
    inherited v_griglia: trzdbgrid_go
      Width = 891
      Height = 296
      Hint = 
        '[doppio click = esegui gestione ordini] [Invio = evasione a sald' +
        'o della riga] [Canc = annulla approntamento riga]'
      Align = alTop
      TitleFont.Style = []
      OnDblClick = v_grigliaDblClick
      OnKeyDown = v_grigliaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'numero_documento'
          Title.Alignment = taRightJustify
          Title.Caption = 'ordine'
          Title.Color = clYellow
          Width = 67
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'riga'
          Title.Alignment = taRightJustify
          Title.Color = clYellow
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'serie_documento'
          Title.Caption = 'serie'
          Title.Color = clYellow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'data_documento'
          Title.Alignment = taCenter
          Title.Caption = 'data'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_codice'
          Title.Caption = 'articolo'
          Title.Color = clYellow
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ovr_descrizione'
          Title.Caption = 'descrizione'
          Title.Color = clYellow
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tma_codice'
          Title.Caption = 'deposito'
          Title.Color = clYellow
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'data_consegna'
          Title.Alignment = taCenter
          Title.Caption = 'consegna'
          Title.Color = clYellow
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tum_codice'
          Title.Caption = 'u.m.'
          Title.Color = clYellow
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantita'
          Title.Alignment = taRightJustify
          Title.Caption = 'evadere'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantita_approntata'
          Title.Alignment = taRightJustify
          Title.Caption = 'approntato'
          Title.Color = clYellow
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'evadere_approntato'
          Title.Alignment = taCenter
          Title.Caption = 'evadi'
          Title.Color = clYellow
          Width = 34
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'esistenza'
          Title.Alignment = taRightJustify
          Title.Color = clYellow
          Width = 78
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'approntato'
          Title.Alignment = taRightJustify
          Title.Caption = 'tot.approntato'
          Title.Color = clYellow
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'disponibilita_approntato'
          Title.Alignment = taRightJustify
          Title.Caption = 'disp. approntato'
          Title.Color = clYellow
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'disponibilita'
          Title.Alignment = taRightJustify
          Title.Color = clYellow
          Width = 84
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'numero_colli'
          Title.Alignment = taRightJustify
          Title.Caption = 'colli'
          Title.Color = clYellow
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'numero_confezioni'
          Title.Alignment = taRightJustify
          Title.Caption = 'confezioni'
          Title.Color = clYellow
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'numero_colli_approntato'
          Title.Alignment = taRightJustify
          Title.Caption = 'colli approntati'
          Title.Color = clYellow
          Width = 75
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'numero_confezioni_approntato'
          Title.Alignment = taRightJustify
          Title.Caption = 'confezioni approntate'
          Title.Color = clYellow
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'indirizzo'
          Title.Caption = 'filiale'
          Title.Color = clYellow
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'riferimento'
          Title.Color = clYellow
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cms_codice'
          Title.Caption = 'commessa'
          Title.Color = clYellow
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipologia'
          Title.Caption = 'sottocommessa'
          Title.Color = clYellow
          Width = 100
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'sequenza'
          Title.Alignment = taRightJustify
          Title.Color = clYellow
          Width = 52
          Visible = True
        end>
    end
    object RzPanel2: TRzPanel
      Left = 0
      Top = 296
      Width = 435
      Height = 110
      Align = alClient
      BorderInner = fsGroove
      TabOrder = 1
      object v_griglia2: TcxGrid
        Left = 4
        Top = 4
        Width = 427
        Height = 102
        Align = alClient
        TabOrder = 0
        object v_griglia2DB: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
          DataController.DataSource = a31ubm_ds
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
              Caption = 'LOTTI ARTICOLI APPRONTATI PER UBICAZIONE'
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
          object v_griglia2DBBtsu_codice_01: TcxGridDBBandedColumn
            Caption = 'area'
            DataBinding.FieldName = 'a31tsu_codice_01'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object v_griglia2DBBDtsu_codice_02: TcxGridDBBandedColumn
            Caption = 'corr'
            DataBinding.FieldName = 'a31tsu_codice_02'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object v_griglia2DBBDtsu_codice_03: TcxGridDBBandedColumn
            Caption = 'ripiano'
            DataBinding.FieldName = 'a31tsu_codice_03'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object v_griglia2DBBDtsu_codice_04: TcxGridDBBandedColumn
            Caption = 'colonna'
            DataBinding.FieldName = 'a31tsu_codice_04'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object v_griglia2DBBDtsu_codice_05: TcxGridDBBandedColumn
            Caption = 'cella'
            DataBinding.FieldName = 'a31tsu_codice_05'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object v_griglia2Liv1: TcxGridLevel
          GridView = v_griglia2DBBD
        end
      end
    end
    object v_griglia3: TcxGrid
      Left = 435
      Top = 296
      Width = 456
      Height = 110
      Align = alRight
      TabOrder = 2
      object v_griglia3DBBD: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v_griglia3DBBDCellDblClick
        DataController.DataSource = a31ltm_ds
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
            Caption = 'LOTTI PRELEVATI'
            FixedKind = fkLeft
            Options.Moving = False
            Options.Sizing = False
          end>
        object v_griglia3DBBDlotto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'lotto'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 150
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
        object v_griglia3DBBDqta_prel: TcxGridDBBandedColumn
          Caption = 'qta prelevata'
          DataBinding.FieldName = 'a31_quantita'
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object v_griglia3Liv1: TcxGridLevel
        GridView = v_griglia3DBBD
      end
    end
  end
  object pannello_parametri: TRzPanel [5]
    Left = 0
    Top = 35
    Width = 886
    Height = 107
    Anchors = [akLeft, akTop, akRight]
    BorderOuter = fsNone
    TabOrder = 2
    OnEnter = pannello_parametriEnter
    OnExit = pannello_parametriExit
    object Label2: TRzLabel
      Left = 5
      Top = 0
      Width = 66
      Height = 13
      Caption = 'codice cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label47: TRzLabel
      Left = 5
      Top = 70
      Width = 134
      Height = 13
      Caption = 'codice documento evasione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label7: TRzLabel
      Left = 460
      Top = 0
      Width = 67
      Height = 13
      Caption = 'filiale/impianto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label9: TRzLabel
      Left = 555
      Top = 35
      Width = 97
      Height = 13
      Caption = 'da/a data consegna'
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
      Left = 725
      Top = 35
      Width = 50
      Height = 13
      Caption = 'spedizione'
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
      Left = 780
      Top = 35
      Width = 51
      Height = 13
      Caption = 'automezzo'
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
      Left = 5
      Top = 35
      Width = 120
      Height = 13
      Caption = 'codice documento ordine'
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
      Left = 460
      Top = 35
      Width = 67
      Height = 13
      Caption = 'numero ordine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_cli_codice: trzedit_go
      Left = 5
      Top = 15
      Width = 91
      Height = 21
      Hint = 'codice cliente [F4 F5 F6]'
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
      TabOrder = 0
      OnEnter = v_cli_codiceEnter
      OnExit = v_cli_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_cli
      lookcollprogram = 'GESNOM'
      lookcolltable = 'CLI'
      lookcollvisname = 'CLI'
    end
    object v_tdo_codice_approntamento: trzedit_go
      Left = 5
      Top = 85
      Width = 61
      Height = 21
      Hint = 'codice causale di generazione documento di evasione'
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
      OnExit = v_tdo_codice_approntamentoExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTDO'
      lookcolltable = 'TDO'
      lookcollvisname = 'TDO'
    end
    object v_tdo_descrizione_approntamento: trzdbeditdescrizione_go
      Left = 70
      Top = 85
      Width = 301
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
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
    object v_cli_descrizione1: trzdbeditdescrizione_go
      Left = 100
      Top = 15
      Width = 356
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = cli_ds
      DataField = 'cli_descrizione'
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
    object v_ind_codice: trzedit_go
      Left = 460
      Top = 15
      Width = 91
      Height = 21
      Hint = 'codice filiale [F4 F5 F6]'
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
      TabOrder = 1
      OnEnter = v_ind_codiceEnter
      OnExit = v_ind_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESIND'
      lookcolltable = 'IND'
      lookcollvisname = 'INDCLI'
    end
    object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
      Left = 555
      Top = 15
      Width = 331
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = ind_ds
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
      TabOrder = 4
    end
    object v_a_data_consegna: trzdatetimeedit_go
      Left = 640
      Top = 50
      Width = 81
      Height = 21
      Hint = 
        'data di consegna di fine selezione [Alt+Gi'#249' per aprire il calend' +
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
      TabOrder = 8
      OnExit = v_a_data_consegnaExit
    end
    object v_da_data_consegna: trzdatetimeedit_go
      Left = 555
      Top = 50
      Width = 81
      Height = 21
      Hint = 
        'data di consegna di inizio selezione [Alt+Gi'#249' per aprire il cale' +
        'ndario]'
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
    end
    object v_numerazione: TRzCheckBox
      Left = 375
      Top = 88
      Width = 79
      Height = 15
      Hint = 
        'spunta per assegnare la numerazione fiscale al documento da gene' +
        'rare'
      Caption = 'numerazione'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
      Left = 780
      Top = 49
      Width = 106
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = query_codice_ds
      DataField = 'automezzo'
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
    object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
      Left = 725
      Top = 49
      Width = 51
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = query_codice_ds
      DataField = 'tsp_codice'
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
    object v_tdo_codice_ordine: trzedit_go
      Left = 5
      Top = 50
      Width = 61
      Height = 21
      Hint = 'codice causale di generazione documento di evasione'
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
      TabOrder = 5
      OnEnter = v_tdo_codice_ordineEnter
      OnExit = v_tdo_codice_ordineExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTDO'
      lookcolltable = 'TDO'
      lookcollvisname = 'TDV'
    end
    object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
      Left = 70
      Top = 50
      Width = 386
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tdo_ordine_ds
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
    object v_numero_ordine: trznumericedit_go
      Left = 460
      Top = 50
      Width = 91
      Height = 21
      Hint = 'numero ordine da analizzare (0=tutti)'
      Margins.Left = 1
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 6
      OnEnter = v_numero_ordineEnter
      OnExit = v_numero_ordineExit
      IntegersOnly = False
      DisplayFormat = '#'
    end
    object RzPanel1: TRzPanel
      Left = 455
      Top = 72
      Width = 431
      Height = 34
      BorderOuter = fsNone
      TabOrder = 14
      object Label23: TRzLabel
        Left = 195
        Top = 0
        Width = 50
        Height = 13
        Caption = 'spedizione'
        ShowAccelChar = False
        Transparent = True
      end
      object Label35: TRzLabel
        Left = 270
        Top = -2
        Width = 109
        Height = 13
        Caption = 'data ora inizio trasporto'
        ShowAccelChar = False
        Transparent = True
      end
      object RzLabel7: TRzLabel
        Left = 7
        Top = 0
        Width = 69
        Height = 13
        Caption = 'codice articolo'
        ShowAccelChar = False
        Transparent = True
      end
      object trzdbeditdescrizione_go2: trzdbeditdescrizione_go
        Left = 245
        Top = 13
        Width = 21
        Height = 21
        Hint = '-'
        TabStop = False
        DataSource = query_codice_ds
        DataField = 'tsp_descrizione'
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
        TabOrder = 0
        Visible = False
      end
      object v_data_inizio_trasporto: trzdbdatetimeedit_go
        Left = 270
        Top = 13
        Width = 91
        Height = 21
        Hint = 
          'data di inizio del trasporto [ Alt+Gi'#249' per aprire il calendario]' +
          ' [F11 = data e ora automatiche]'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = query_codice_ds
        DataField = 'data_inizio_trasporto'
        ReadOnly = True
        AutoSelect = False
        Color = clBtnFace
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
        CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
        CaptionTodayBtn = 'oggi'
        CaptionClearBtn = 'annulla'
        Date = 43980.000000000000000000
        EditType = etDate
        DropButtonVisible = False
      end
      object v_ora_inizio_trasporto: trzdbnumericedit_go
        Left = 365
        Top = 13
        Width = 30
        Height = 21
        Hint = 'ora di inizio del trasporto'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = query_codice_ds
        DataField = 'ora_inizio_trasporto'
        ReadOnly = True
        Alignment = taLeftJustify
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 2
        AllowBlank = False
        IntegersOnly = False
        DisplayFormat = '00'
        decimalplaces = 0
      end
      object v_minuto_inizio_trasporto: trzdbnumericedit_go
        Left = 400
        Top = 13
        Width = 30
        Height = 21
        Hint = 'minuto di inizio del trasporto'
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataSource = query_codice_ds
        DataField = 'minuto_inizio_trasporto'
        ReadOnly = True
        Alignment = taLeftJustify
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 3
        AllowBlank = False
        IntegersOnly = False
        DisplayFormat = '00'
        decimalplaces = 0
      end
      object v_art_codice: trzedit_go
        Left = 6
        Top = 13
        Width = 261
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
        TabOrder = 4
        OnEnter = v_art_codiceEnter
        OnExit = v_art_codiceExit
        OnKeyPress = v_art_codiceKeyPress
        lookcolldatabase = 'arc.arcdit'
        lookcollpopupmenu = ARC.pop_arc_art
        lookcollprogram = 'GESART'
        lookcolltable = 'ART'
        lookcollvisname = 'ART'
      end
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 890
    Width = 104
    Height = 594
    ExplicitLeft = 890
    ExplicitWidth = 104
    ExplicitHeight = 594
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Width = 104
      Height = 568
      ExplicitWidth = 104
      ExplicitHeight = 568
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 23
        ExplicitWidth = 102
        ExplicitHeight = 544
        object v_selcms: TRzRapidFireButton
          Left = 0
          Top = 0
          Width = 101
          Height = 26
          Caption = 'filtro commesse'
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
          OnClick = v_selcmsClick
        end
        object v_crea_documento: TRzRapidFireButton
          Left = 0
          Top = 77
          Width = 101
          Height = 26
          Hint = 'genera documento di vendita'
          Caption = 'genera documento'
          Enabled = False
          OnClick = v_crea_documentoClick
        end
        object v_generazione_massiva: TRzRapidFireButton
          Left = 0
          Top = 112
          Width = 101
          Height = 26
          Hint = 'generazione massiva documento di vendita per zona spedizione'
          Caption = 'genera per zona'
          Enabled = False
          OnClick = v_generazione_massivaClick
        end
        object v_assegna_tutto: TRzRapidFireButton
          Left = 0
          Top = 147
          Width = 101
          Height = 26
          Hint = 'assegna approntato a tutte le righe '
          Caption = 'assegna tutto'
          Enabled = False
          OnClick = v_assegna_tuttoClick
        end
        object v_automezzo: TRzRapidFireButton
          Left = 0
          Top = 182
          Width = 101
          Height = 26
          Hint = 'assegna automezzo a tutti gli ordini approntati'
          Caption = 'assegna automezzo'
          Enabled = False
          OnClick = v_automezzoClick
        end
        object v_cruscotto_articolo: TRzRapidFireButton
          Left = 0
          Top = 217
          Width = 101
          Height = 26
          Hint = 'cruscotto articolo [F6]'
          Caption = 'cruscotto [F6]'
          Enabled = False
          OnClick = v_cruscotto_articoloClick
        end
        object v_packing_list: TRzRapidFireButton
          Left = 0
          Top = 252
          Width = 101
          Height = 26
          Hint = 'preparazione packing list'
          Caption = 'packing list'
          Enabled = False
          OnClick = v_packing_listClick
        end
        object v_lettore: TRzRapidFireButton
          Left = 0
          Top = 425
          Width = 101
          Height = 26
          Hint = 'acquisizione dati da lettore calamaio'
          Caption = 'lettore'
          Enabled = False
          OnClick = v_lettoreClick
        end
        object v_lotti: TRzRapidFireButton
          Left = 0
          Top = 287
          Width = 101
          Height = 26
          Caption = 'lotti'
          Enabled = False
          OnClick = v_lottiClick
        end
        object v_ubicazioni: TRzRapidFireButton
          Left = 0
          Top = 322
          Width = 101
          Height = 26
          Caption = 'ubicazioni'
          Enabled = False
          OnClick = v_ubicazioniClick
        end
        object v_ordine_produzione: TRzRapidFireButton
          Left = 0
          Top = 367
          Width = 101
          Height = 26
          Hint = 'genera ordine di produzione'
          Caption = 'ordine produzione'
          Enabled = False
          OnClick = v_ordine_produzioneClick
        end
        object v_spedizione: TRzRapidFireButton
          Left = -1
          Top = 42
          Width = 101
          Height = 26
          Hint = 'modifica i dati della spedizione'
          Caption = 'spedizione'
          Enabled = False
          OnClick = v_spedizioneClick
        end
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 23
        ExplicitWidth = 102
        ExplicitHeight = 544
      end
      inherited tab_pannello_ricerca: TRzTabSheet
        inherited lbl_hint: TRzLabel
          Width = 96
          Height = 476
          ExplicitWidth = 96
          ExplicitHeight = 476
        end
        inherited v_barra_ricerca: TSearchBox
          Width = 100
          ExplicitWidth = 100
        end
        inherited pannello_ricerca: TRzPanel
          Width = 102
          ExplicitWidth = 102
          inherited btn_cancella_ricerca: TRzRapidFireButton
            Left = 82
            ExplicitLeft = 82
          end
        end
      end
    end
    inherited RzPanel1_bottoni_nuovi: TRzPanel
      Width = 104
      ExplicitWidth = 104
      inherited tool_f8: TRzRapidFireButton
        Width = 51
        Visible = False
        ExplicitWidth = 51
      end
      inherited tool_f9: TRzRapidFireButton
        Left = 50
        Width = 51
        Visible = False
        ExplicitLeft = 50
        ExplicitWidth = 51
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select ovr.*, ovt.cli_codice'
      'from ovr'
      'inner join ovt on ovt.progressivo = ovr.progressivo'
      'where ovr.progressivo = :progressivo and ovr.riga = :riga')
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
  inherited tabella_iva: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from ovt'
      'where progressivo = :progressivo'
      ' ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  inherited tabella_righe: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from ovr'
      'where progressivo = :progressivo and riga = :riga')
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
  inherited query: TMyQuery_go
    SQL.Strings = (
      '')
    ParamData = <>
  end
  inherited query_codice: TMyQuery_go
    SQL.Strings = (
      
        'select ovt.cli_codice cli_codice, cli.descrizione1 cli_descrizio' +
        'ne1, cli.descrizione2 cli_descrizione2,'
      
        'cli.via cli_via, cli.citta cli_citta, ovt.accettato, tdo.richies' +
        'ta_accettazione, '#39#39' riferimento, '#39#39' indirizzo,'
      
        'ovr.art_codice, '#39#39' ovr_descrizione, ovr.tum_codice, ovr.quantita' +
        ' - ovr.quantita_evasa quantita,'
      
        'ovr.quantita_approntata, ovr.tum_quantita_approntata_base, ovr.p' +
        'rogressivo, ovr.riga, ovr.tma_codice, ovt.data_documento, ovt.nu' +
        'mero_documento,'
      
        'ovt.serie_documento, ovr.data_consegna, art.lotti, evadere_appro' +
        'ntato, ovr.data_consegna, mag.esistenza, mag.approntato,'
      
        '(mag.esistenza - mag.approntato) disponibilita_approntato, (mag.' +
        'esistenza - mag.impegnato + mag.ordinato) disponibilita,'
      
        'ovr.numero_colli, ovr.numero_confezioni, ovr.numero_colli_appron' +
        'tato, ovr.numero_confezioni_approntato,'
      
        'ovr.cms_codice, ovr.tipologia, ovr.sequenza, ovt.tsp_codice, ovt' +
        '.automezzo,'
      
        #39#39' tsp_descrizione, null data_inizio_trasporto, 0 ora_inizio_tra' +
        'sporto, 0 minuto_inizio_trasporto'
      'from ovr'
      'inner join ovt on ovt.progressivo = ovr.progressivo'
      'inner join tdo on tdo.codice = ovt.tdo_codice'
      'inner join art on art.codice = ovr.art_codice'
      'inner join cli on cli.codice = ovt.cli_codice'
      
        'left join mag on mag.art_codice = ovr.art_codice and mag.tma_cod' +
        'ice = ovr.tma_codice')
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cli.*, concat(trim(cli.descrizione1), '#39' '#39', cli.citta) cli' +
        '_descrizione'
      'from cli'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 360
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object approntato: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 515
    Top = 65526
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 540
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object testata_documento_evaso: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 565
    Top = 65526
  end
  object riga_documento_evaso: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 590
    Top = 65526
  end
  object totale_colli: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 680
    Top = 65526
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ltm'
      'where documento_origine = '#39'ordine ven'#39
      
        'and doc_progressivo_origine = :codice1 and doc_riga_origine = :c' +
        'odice2'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 775
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice2'
        Value = nil
      end>
  end
  object ore: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select lot_codice, sum(esistenza) quantita'
      'from ore'
      
        'where ovr_progressivo_assegnato = :ovr_progressivo_assegnato and' +
        ' ovr_riga_assegnata = :ovr_riga_assegnata and esistenza <> 0'
      'group by lot_codice'
      'order by lot_codice'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 805
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_assegnato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_riga_assegnata'
        Value = nil
      end>
  end
  object ors: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into ors'
      
        '(codice_sscc, data_registrazione, quantita_scarico, documento_or' +
        'igine, doc_progressivo_origine, doc_riga_origine)'
      'values'
      
        '(:codice_sscc, :data_registrazione, :quantita_scarico, :document' +
        'o_origine, :doc_progressivo_origine, :doc_riga_origine)'
      ''
      ''
      ''
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 835
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_sscc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita_scarico'
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
      end>
  end
  object ore_dettaglio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select codice_sscc, esistenza'
      'from ore'
      
        'where ovr_progressivo_assegnato = :ovr_progressivo_assegnato and' +
        ' ovr_riga_assegnata = :ovr_riga_assegnata and esistenza <> 0'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 865
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_assegnato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_riga_assegnata'
        Value = nil
      end>
  end
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update ovr'
      'set evadere_approntato = '#39#39', saldo_acconto_approntato = '#39#39
      'where progressivo = :progressivo and riga = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 895
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
  object testata: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 710
    Top = 65526
  end
  object righe: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 65526
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 380
    Top = 65527
  end
  object query_opt_rda_oar: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '#39'ordine produzione'#39' tipo_documento'
      'from opt'
      
        'where opt.ovr_progressivo = :ovr_progressivo and opt.ovr_riga = ' +
        ':ovr_riga and opt.quantita_evasa < :quantita'
      'union all'
      'select '#39'ordine fornitore'#39' tipo_documento'
      'from oar'
      
        'where oar.ovr_progressivo = :ovr_progressivo and oar.ovr_riga = ' +
        ':ovr_riga and oar.quantita_evasa < :quantita'
      'union all'
      'select '#39'richiesta d'#39#39'acquisto'#39' tipo_documento'
      'from rda'
      
        'where rda.ovr_progressivo = :ovr_progressivo and rda.ovr_riga = ' +
        ':ovr_riga and'
      'rda.situazione <> '#39'evaso'#39' and rda.situazione <> '#39'annullato'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 925
    Top = 65526
    ParamData = <
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
        Name = 'quantita'
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
        Name = 'quantita'
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
      end>
  end
  object tabella_ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select ovt.*, cli.tiv_codice cli_tiv_codice, cli.data_esenzione_' +
        'iva cli_data_esenzione_iva'
      'from ovt'
      'inner join cli on cli.codice = ovt.cli_codice'
      'where ovt.progressivo = :progressivo'
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 705
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object cfg: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cfg.*, F_FIDO_FATTURARE(cfg.cfg_codice) importo_fatturare' +
        '_fido'
      'from cfg'
      'where cfg.cfg_tipo = '#39'C'#39' and cfg.cfg_codice = :cfg_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 720
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end>
  end
  object importo_ordinato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select ovt.listino_con_iva,'
      'case'
      
        'when ovt.listino_con_iva = '#39'si'#39' then round(sum((ovr.importo - ov' +
        'r.importo_evaso) * cast(ovt.cambio as binary)), 2)'
      
        'when ovt.listino_con_iva = '#39'no'#39' then round(sum((ovr.importo - ov' +
        'r.importo_evaso) * cast(ovt.cambio as binary) * (1 + tiv.percent' +
        'uale / 100)), 2)'
      'end importo'
      'from ovr'
      'inner join ovt on (ovt.progressivo = ovr.progressivo)'
      'inner join tiv on (tiv.codice = ovr.tiv_codice)'
      'where cli_codice = :cli_codice'
      
        'and (ovr.situazione = '#39'inserito'#39' or ovr.situazione = '#39'evaso parz' +
        'iale'#39')'
      'group by ovt.listino_con_iva'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 740
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object pat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from pat pat'
      'inner join tts tts on (tts.codice = pat.tts_codice)'
      
        'where pat.cfg_tipo = '#39'C'#39' and pat.cfg_codice = :cfg_codice and (p' +
        'at.importo_dovuto = pat.importo_pagato)'
      'and tts.rischio = '#39'si'#39' and pat.data_scadenza > :data_scadenza'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 755
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_scadenza'
        Value = nil
      end>
  end
  object cpv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      
        'case when cpvtdo.gen_codice is null then cpv.gen_codice else cpv' +
        'tdo.gen_codice end gen_codice,'
      
        'case when cpvtdo.gen_codice_omaggi is null then cpv.gen_codice_o' +
        'maggi else cpvtdo.gen_codice end gen_codice_omaggi,'
      
        'case when cpvtdo.gen_codice_sconti is null then cpv.gen_codice_s' +
        'conti else cpvtdo.gen_codice_sconti end gen_codice_sconti'
      'from cpv'
      
        'left join cpvtdo on cpvtdo.id_cpv = cpv.id and cpvtdo.tdo_codice' +
        ' = :tdo_codice'
      'where tcc_codice = :tcc_codice and tca_codice = :tca_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tcc_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tca_codice'
        Value = nil
      end>
  end
  object utntdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tdo_codice'
      'from utntdo'
      'where utn_codice = :utn_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 675
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object iva_diversa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 820
    Top = 20
  end
  object ind: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select ind.*, concat(trim(ind.via), '#39' '#39', ind.citta) descrizione'
      'from ind'
      
        'where ind.cli_codice = :cli_codice and ind.indirizzo = :indirizz' +
        'o'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 615
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'indirizzo'
        Value = nil
      end>
  end
  object ind_ds: TMyDataSource
    DataSet = ind
    Left = 635
    Top = 65526
  end
  object testata_esistente: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 850
    Top = 20
  end
  object ovt_tsp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update ovt'
      'set tsp_codice = :tsp_codice, automezzo = :automezzo'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 880
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tsp_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'automezzo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object pkt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from pkt'
      
        'where cli_codice = :cli_codice and tipo_documento = '#39'assegnazion' +
        'e approntato'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 910
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end>
  end
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 940
    Top = 20
  end
  object query_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39'rda'#39' archivio, art_codice, rda.progressivo, rda.situazio' +
        'ne, 0 riga'
      'from rda'
      
        'where rda.ovr_progressivo = :ovr_progressivo_01 and rda.ovr_riga' +
        ' = :riga_01'
      'union all'
      
        'select '#39'oar'#39' archivio, art_codice, oar.progressivo, oar.situazio' +
        'ne, oar.riga'
      'from oar'
      
        'where oar.ovr_progressivo = :ovr_progressivo_02 and oar.ovr_riga' +
        ' = :riga_02 and oar.ovr_tipo = '#39'cliente'#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 645
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_01'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga_01'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_02'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga_02'
        Value = nil
      end>
  end
  object query_esiste_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) quantita, count(id) numero'
      'from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = :ovr_progressivo_03 and'
      'doc_riga_origine = :riga_03')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 615
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ovr_progressivo_03'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga_03'
        Value = nil
      end>
  end
  object ovt_ds: TMyDataSource
    DataSet = ovt
    Left = 430
    Top = 65527
  end
  object ovt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ovt'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object tdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tdo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object ovt_update: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update ovt'
      'set data_inizio_trasporto = :data_inizio_trasporto,'
      'ora_inizio_trasporto = :ora_inizio_trasporto,'
      'minuto_inizio_trasporto = :minuto_inizio_trasporto,'
      'tsp_codice = :tsp_codice,'
      'tst_codice = :tst_codice,'
      'tpo_codice = :tpo_codice,'
      'tab_codice = :tab_codice,'
      'causale_trasporto = :causale_trasporto,'
      'consegna_bartolini = :consegna_bartolini'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data_inizio_trasporto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ora_inizio_trasporto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'minuto_inizio_trasporto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tsp_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tst_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tpo_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tab_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'causale_trasporto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'consegna_bartolini'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object tdo_ordine: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tdo_codice_evasione_diretta'
      'from tdo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 360
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tdo_ordine_ds: TMyDataSource
    DataSet = tdo_ordine
    Left = 380
    Top = 21
  end
  object a31ubm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'v.art_codice,'
      'v.art_descrizione1,'
      'v.a31tsu_codice_01,'
      'v.a31tsu_codice_02,'
      'v.a31tsu_codice_03,'
      'v.a31tsu_codice_04,'
      'v.a31tsu_codice_05,'
      'sum(v.quantita) quantita'
      'from v_a31prom_lot_approntati v '
      'where'
      'v.documento_origine='#39'ordine ven'#39' and'
      'v.doc_progressivo_origine=:progressivo and'
      'v.doc_riga_origine=:riga and'
      'v.esistenza='#39'approntato'#39
      'group by 1,2,3,4,5,6,7'
      'order by v.lotto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 415
    Top = 520
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 7875
      end
      item
        DataType = ftInteger
        Name = 'riga'
        Value = 10
      end>
  end
  object a31ubm_ds: TMyDataSource
    DataSet = a31ubm
    Left = 475
    Top = 515
  end
  object a31ltm_ds: TMyDataSource
    DataSet = a31ltm
    Left = 660
    Top = 470
  end
  object a31ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'v.lotto,'
      '(v.quantita) quantita,'
      '(v.a31_quantita) a31_quantita'
      'from v_a31prom_lot_approntati v '
      'where'
      'v.documento_origine='#39'ordine ven'#39' and'
      'v.doc_progressivo_origine=:progressivo and'
      'v.doc_riga_origine=:riga and'
      'v.esistenza='#39'approntato'#39
      'order by v.lotto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 625
    Top = 460
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 7875
      end
      item
        DataType = ftInteger
        Name = 'riga'
        Value = 10
      end>
  end
end
