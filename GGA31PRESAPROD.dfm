inherited A31PRESAPROD: TA31PRESAPROD
  Caption = 'A31PRESAPROD'
  ClientHeight = 684
  ClientWidth = 1443
  ExplicitWidth = 1459
  ExplicitHeight = 743
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1443
    ExplicitWidth = 1443
    object tool_analisi: TToolButton
      Left = 279
      Top = 0
      Hint = 'analisi odp'
      Caption = 'tool_analisi'
      Enabled = False
      ImageIndex = 56
      OnClick = tool_analisiClick
    end
    object tool_esporta_xls: TToolButton
      AlignWithMargins = True
      Left = 310
      Top = 0
      Hint = 'esporta su file excel'
      Caption = 'esporta xls'
      Enabled = False
      ImageIndex = 52
      OnClick = tool_esporta_xlsClick
    end
    object tool_foglio_lav: TToolButton
      Left = 341
      Top = 0
      Hint = 'genera '
      Caption = 'tool foglio lavoro'
      Enabled = False
      ImageIndex = 53
      OnClick = tool_foglio_lavClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 664
    Width = 1443
    ExplicitTop = 664
    ExplicitWidth = 1443
  end
  inherited tab_control: TRzPageControl
    Width = 1443
    Height = 630
    ExplicitWidth = 1443
    ExplicitHeight = 630
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 1441
      ExplicitHeight = 607
      inherited pannello_elaborazione: TRzPanel
        Width = 1441
        Height = 607
        ExplicitWidth = 1441
        ExplicitHeight = 607
        inherited pannello_parametri: TRzPanel
          Width = 1441
          Height = 569
          ExplicitWidth = 1441
          ExplicitHeight = 569
          object RzLabel1: TRzLabel
            Left = 15
            Top = 45
            Width = 71
            Height = 13
            Caption = 'data consegna'
          end
          object RzLabel2: TRzLabel
            Left = 15
            Top = 90
            Width = 54
            Height = 13
            Caption = 'tipo articolo'
          end
          object Label14: TRzLabel
            Left = 14
            Top = 0
            Width = 38
            Height = 13
            Caption = 'fornitore'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Panel2: TRzPanel
            Left = 0
            Top = 538
            Width = 1441
            Height = 31
            Align = alBottom
            BorderOuter = fsLowered
            TabOrder = 4
            object v_selcli: TRzRapidFireButton
              Left = 120
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
          object v_alla_data: trzdatetimeedit_go
            Left = 14
            Top = 60
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
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            OnExit = v_alla_dataExit
          end
          object v_tipo_articolo: TComboBox
            Left = 15
            Top = 105
            Width = 145
            Height = 21
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ItemIndex = 0
            ParentFont = False
            TabOrder = 3
            Text = 'tutti'
            Items.Strings = (
              'tutti'
              'finiti'
              'semilavorati')
          end
          object v_frn_codice: trzedit_go
            Left = 14
            Top = 15
            Width = 90
            Height = 21
            Hint = 'codice fornitore [F4 F5 F6]'
            Text = ''
            Enabled = False
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
            OnExit = v_frn_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc_frn
            lookcollprogram = 'GESNOM'
            lookcolltable = 'FRN'
            lookcollvisname = 'FRN'
          end
          object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
            Left = 109
            Top = 15
            Width = 771
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = frn_ds
            DataField = 'descrizione'
            ReadOnly = True
            AutoSize = False
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
            OnExit = EsportazionedatiinformatoExcel1Click
          end
          object v_con_fdl: TCheckBox
            Left = 20
            Top = 160
            Width = 191
            Height = 17
            Caption = 'gi'#224' con foglio di lavoro'
            TabOrder = 5
          end
        end
        inherited Panel4: TRzPanel
          Top = 569
          Width = 1441
          ExplicitTop = 569
          ExplicitWidth = 1441
          inherited Bevel1: TBevel
            Width = 1441
            ExplicitWidth = 708
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 1441
      ExplicitHeight = 607
      inherited pannello_esposizione: TRzPanel
        Width = 1441
        Height = 607
        ExplicitWidth = 1441
        ExplicitHeight = 607
        object v_griglia: TcxGrid
          Left = 0
          Top = 0
          Width = 1441
          Height = 371
          Align = alClient
          PopupMenu = Popup_griglia
          TabOrder = 0
          object v_grigliaDB: TcxGridDBTableView
            OnDblClick = v_grigliaDBDblClick
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = v_grigliaDBCustomDrawCell
            DataController.DataSource = query_ds
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,###0'
                Kind = skSum
                Position = spFooter
                Column = v_grigliaDBquantita
              end
              item
                Format = '#,###0'
                Kind = skSum
                Column = v_grigliaDBquantita
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###0'
                Kind = skSum
                Column = v_grigliaDBquantita
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 20
            object v_grigliaDBid_origine: TcxGridDBColumn
              Caption = 'seleziona'
              DataBinding.FieldName = 'id_origine'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Width = 56
            end
            object v_grigliaDBevadibile: TcxGridDBColumn
              DataBinding.FieldName = 'evadibile'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'si'
              Properties.ValueUnchecked = 'no'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 66
            end
            object v_grigliaDBdata_consegna: TcxGridDBColumn
              Caption = 'data consegna'
              DataBinding.FieldName = 'data_consegna'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 126
            end
            object v_grigliaDBprogressivo: TcxGridDBColumn
              DataBinding.FieldName = 'progressivo'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              SortIndex = 1
              SortOrder = soAscending
              Width = 91
            end
            object v_grigliaDBnumero_produzione: TcxGridDBColumn
              Caption = 'numero produzione'
              Visible = False
              Width = 95
            end
            object v_grigliaDBart_codice: TcxGridDBColumn
              Caption = 'articolo'
              DataBinding.FieldName = 'art_codice'
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 93
            end
            object v_grigliaDBquantita: TcxGridDBColumn
              Caption = 'da evadere'
              DataBinding.FieldName = 'quantita'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '#,###0'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 84
            end
            object v_grigliaDBcodice_articolo_cliente: TcxGridDBColumn
              Caption = 'codice art. cliente'
              DataBinding.FieldName = 'codice_articolo_cliente'
              Width = 97
            end
            object v_grigliaDBart_descrizione1: TcxGridDBColumn
              Caption = 'descrizione riga 1'
              DataBinding.FieldName = 'art_descrizione1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 211
            end
            object v_grigliaDBart_descrizione2: TcxGridDBColumn
              Caption = 'descrizione riga 2'
              DataBinding.FieldName = 'art_descrizione2'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 169
            end
            object v_grigliaDBnom_descrizione1: TcxGridDBColumn
              Caption = 'descrizione cliente'
              DataBinding.FieldName = 'nom_descrizione1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 198
            end
            object v_grigliaDBdoc_progressivo_origine: TcxGridDBColumn
              Caption = 'progr org'
              DataBinding.FieldName = 'DOC_PROGRESSIVO_ORIGINE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object v_grigliaDBriga_origine: TcxGridDBColumn
              Caption = 'riga org'
              DataBinding.FieldName = 'doc_riga_ORIGINE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object v_grigliaDBcli_codice: TcxGridDBColumn
              Caption = 'codice cliente'
              DataBinding.FieldName = 'cli_codice'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 101
            end
            object v_grigliaDBovt_numero_documento: TcxGridDBColumn
              Caption = 'riferimento cliente'
              DataBinding.FieldName = 'ovt_numero_documento'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 98
            end
            object v_grigliaDBovt_data_documento: TcxGridDBColumn
              Caption = 'data documento'
              DataBinding.FieldName = 'ovt_data_documento'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 117
            end
          end
          object v_grigliaLiv1: TcxGridLevel
            GridView = v_grigliaDB
          end
        end
        object v_griglia2: TcxGrid
          Left = 0
          Top = 371
          Width = 1441
          Height = 236
          Align = alBottom
          PopupMenu = Popup_griglia
          TabOrder = 1
          object v_griglia2DB: TcxGridDBTableView
            OnDblClick = v_griglia2DBDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = query_comp_ds
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,###0'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '#,###0'
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###0'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 20
            object v_griglia2DBprogressivo: TcxGridDBColumn
              DataBinding.FieldName = 'progressivo'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
            end
            object v_griglia2DBriga: TcxGridDBColumn
              DataBinding.FieldName = 'riga'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
            end
            object v_griglia2DBart_codice: TcxGridDBColumn
              Caption = 'codice articolo'
              DataBinding.FieldName = 'art_codice'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
            end
            object v_griglia2DBart_codice_componente: TcxGridDBColumn
              Caption = 'codice articolo componente'
              DataBinding.FieldName = 'art_codice_componente'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
            end
            object v_griglia2DBart_descrizione1: TcxGridDBColumn
              Caption = 'descrizione articolo'
              DataBinding.FieldName = 'art_descrizione1'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
            end
            object v_griglia2DBdata_consegna: TcxGridDBColumn
              Caption = 'data consegna'
              DataBinding.FieldName = 'data_consegna'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
              Width = 124
            end
            object v_griglia2DBnr_col_01: TcxGridDBColumn
              Caption = 'esistenza'
              DataBinding.FieldName = 'nr_col_01'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
              Width = 109
            end
            object v_griglia2DBnr_col_02: TcxGridDBColumn
              Caption = 'impegnato'
              DataBinding.FieldName = 'nr_col_02'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
              Width = 82
            end
            object v_griglia2DBnr_col_03: TcxGridDBColumn
              Caption = 'dispo'
              DataBinding.FieldName = 'nr_col_03'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentVert = vaBottom
            end
          end
          object v_griglia2Liv1: TcxGridLevel
            GridView = v_griglia2DB
          end
        end
      end
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'select '
      'opt.progressivo, '
      'opt.documento_origine, '
      'opt.DOC_PROGRESSIVO_ORIGINE, '
      'opt.doc_riga_ORIGINE, '
      'coalesce(ovt.riferimento,'#39#39') riferimento_cliente,'
      
        'case when opt.documento_origine= '#39'ordine ven'#39' then ovt.numero_do' +
        'cumento '
      
        '     when opt.documento_origine= '#39'ordine produzione'#39' then opt.nu' +
        'mero_documento '
      #9'  end ovt_numero_documento, '
      
        'case when opt.documento_origine= '#39'ordine ven'#39' then ovt.data_docu' +
        'mento '
      
        '     when opt.documento_origine= '#39'ordine produzione'#39' then opt.da' +
        'ta_documento '
      #9'  end ovt_data_documento, '
      'opt.a31cli_codice, nom.descrizione1 nom_descrizione1, '
      
        'opt.art_codice, art.descrizione1 art_descrizione1, art.descrizio' +
        'ne2 art_descrizione2, '
      'arcl.codice_articolo_cliente,'
      'arcl.a31art_esponente,'
      
        'opt.quantita, opt.data_consegna, opt.id_origine, opt.tma_codice_' +
        'materie_prime, '#39'no'#39' evadibile'
      'from opt  '
      'left join ovt on ovt.progressivo=opt.doc_progressivo_origine '
      
        'left join ovr on ovr.progressivo=opt.doc_progressivo_origine and' +
        ' ovr.riga=opt.doc_riga_origine '
      'left join art on art.codice=opt.art_codice '
      
        'left join arcl on arcl.art_codice=art.codice and arcl.cli_codice' +
        '=opt.a31cli_codice'
      'left join nom on nom.codice=opt.a31cli_codice '
      'where (1 = 1) '
      'and ( opt.documento_origine in ('#39'ordine ven'#39', '#39#39') )'
      'and ( opt.data_consegna <=:data_consegna )   '
      
        'order by opt.data_consegna, ovt.cli_codice, opt.doc_progressivo_' +
        'origine')
    Left = 395
    Top = 140
    ParamData = <
      item
        DataType = ftDate
        Name = 'data_consegna'
        Value = 401768d
      end>
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from opt'
      'where'
      'opt.progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object upd_opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set tma_codice=:tma_codice'
      'where '
      'opr.progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ins_opc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'insert into opc ( progressivo, sequenza, fas_codice, quantita, t' +
        'ipo_operazione, note,quantita_consuntivo, quantita_iniziata, qua' +
        'ntita_prodotti, situazione, data_ora_inizio, data_ora_fine, data' +
        '_consegna )'
      'values '
      
        '( :progressivo, :sequenza, :fas_codice, :quantita, :tipo_operazi' +
        'one, :note, :quantita_consuntivo, :quantita_iniziata, :quantita_' +
        'prodotti, :situazione, :data_ora_inizio, :data_ora_fine, :data_c' +
        'onsegna )')
    Filtered = True
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 195
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'sequenza'
        Value = 0
      end
      item
        DataType = ftWideString
        Name = 'fas_codice'
        Value = ' '
      end
      item
        DataType = ftFloat
        Name = 'quantita'
        Value = 0.000000000000000000
      end
      item
        DataType = ftWideString
        Name = 'tipo_operazione'
        Value = ''
      end
      item
        DataType = ftWideMemo
        Name = 'note'
        Value = ' '
      end
      item
        DataType = ftFloat
        Name = 'quantita_consuntivo'
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'quantita_iniziata'
        Value = 0.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'quantita_prodotti'
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'situazione'
        Value = ' '
      end
      item
        DataType = ftDateTime
        Name = 'data_ora_inizio'
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'data_ora_fine'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'data_consegna'
        Value = nil
      end>
  end
  object opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from opr '
      'where '
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object promau_mag: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select * from'
      'promau_mag'
      'where'
      'utn_codice=:utn_codice and'
      'art_codice=:art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 515
    Top = 325
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object query_sor: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select '
      'opt.progressivo, '
      'opt.documento_origine, '
      'opt.DOC_PROGRESSIVO_ORIGINE, '
      'opt.doc_riga_ORIGINE, '
      'coalesce(ovt.riferimento,'#39#39') riferimento_cliente,'
      
        'case when opt.documento_origine= '#39'ordine ven'#39' then ovt.numero_do' +
        'cumento '
      
        '     when opt.documento_origine= '#39'ordine produzione'#39' then opt.nu' +
        'mero_documento '
      #9'  end ovt_numero_documento, '
      
        'case when opt.documento_origine= '#39'ordine ven'#39' then ovt.data_docu' +
        'mento '
      
        '     when opt.documento_origine= '#39'ordine produzione'#39' then opt.da' +
        'ta_documento '
      #9'  end ovt_data_documento, '
      'opt.a31cli_codice, nom.descrizione1 nom_descrizione1, '
      
        'opt.art_codice, art.descrizione1 art_descrizione1, art.descrizio' +
        'ne2 art_descrizione2, '
      'arc.codice_articolo_cliente,'
      
        'opt.quantita, opt.data_consegna, opt.id_origine, opt.tma_codice_' +
        'materie_prime '
      'from opt '
      
        'left join opc on opc.progressivo=opt.progressivo and opc.fas_cod' +
        'ice='#39'START'#39' '
      'left join ovt on ovt.progressivo=opt.doc_progressivo_origine '
      
        'left join ovr on ovr.progressivo=opt.doc_progressivo_origine and' +
        ' ovr.riga=opt.doc_riga_origine '
      'left join art on art.codice=opt.art_codice '
      
        'left join arc on arc.art_codice=art.codice and arc.cli_codice=op' +
        't.a31cli_codice'
      'left join nom on nom.codice=opt.a31cli_codice '
      'where (1 = 1) '
      'and ( opt.documento_origine in ('#39'ordine ven'#39', '#39#39') )'
      'and ( opt.data_consegna <=:data_consegna ) '
      'and ( opc.progressivo is null )  '
      
        'order by opt.data_consegna, ovt.cli_codice, opt.doc_progressivo_' +
        'origine')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 5
    ParamData = <
      item
        DataType = ftDate
        Name = 'data_consegna'
        Value = 42004d
      end>
  end
  object mag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(tmag.esistenza) esistenza'
      'from mag'
      'inner join tma on tma.codice=mag.tma_codice'
      'where'
      'mag.art_codice=:art_codice and'
      'tma.proprieta='#39'si'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 610
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object promau_pianif: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select * from'
      'promau_pianif'
      'where'
      'utn_codice=:utn_codice and'
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 515
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object frn: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', citta) descrizi' +
        'one'
      'from frn'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 585
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object frn_ds: TMyDataSource
    DataSet = frn
    Left = 625
    Top = 70
  end
  object opc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      
        'opt.progressivo, ovt.cli_codice, nom.descrizione1 nom_descrizion' +
        'e1, opt.frn_codice,'
      
        'ovt.numero_documento ovt_numero_documento, ovt.data_documento ov' +
        't_data_documento,'
      
        'opt.art_codice, ovr.descrizione1 ovr_descrizione1, ovr.descrizio' +
        'ne2 ovr_descrizione2,'
      
        'opt.quantita, opt.data_consegna, opt.id_origine, opt.tma_codice_' +
        'materie_prime, opt.tma_codice_finiti'
      'from opt'
      'left join ovt on ovt.progressivo=opt.doc_progressivo_origine'
      
        'left join ovr on ovr.progressivo=opt.doc_progressivo_origine and' +
        ' ovr.riga=opt.doc_riga_origine'
      'left join art on art.codice=opt.art_codice '
      'left join nom on nom.codice=ovt.cli_codice '
      'where'
      'opt.utente =:utente and'
      'opt.id_origine=:id_origine'
      'order by opt.progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 145
    ParamData = <
      item
        DataType = ftWideString
        Name = 'utente'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_origine'
        Value = 0
      end>
  end
  object upd_opc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opc'
      'set situazione=:situazione, quantita_iniziata=:quantita'
      'where'
      'id=:id')
    Filtered = True
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 700
    Top = 250
    ParamData = <
      item
        DataType = ftWideString
        Name = 'situazione'
        Value = ' '
      end
      item
        DataType = ftFloat
        Name = 'quantita'
        Value = 0.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object promau_componenti: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select * from'
      'promau_componenti'
      'where'
      'utn_codice=:utn_codice and'
      'progressivo=:progressivo and'
      'riga =:riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    MasterSource = query_ds
    Left = 515
    Top = 265
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
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
  object query_comp_ds: TMyDataSource
    AutoEdit = False
    DataSet = query_comp
    Left = 315
    Top = 210
  end
  object query_comp: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select *'
      'from promau_componenti'
      'where'
      'utn_codice=:utn_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object ins_movfas: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opc'
      'set situazione=:situazione, quantita_iniziata=:quantita'
      'where'
      'id=:id')
    Filtered = True
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 705
    Top = 305
    ParamData = <
      item
        DataType = ftWideString
        Name = 'situazione'
        Value = ' '
      end
      item
        DataType = ftFloat
        Name = 'quantita'
        Value = 0.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object upd_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opt'
      'set id_origine=0'
      'where '
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 695
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object XLSWrite: TXLSReadWriteII5
    ComponentVersion = '5.20.65'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 480
    Top = 10
  end
  object query_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'opt.progressivo, '
      'opt.documento_origine, '
      'opt.DOC_PROGRESSIVO_ORIGINE, '
      'opt.doc_riga_ORIGINE, '
      'coalesce(ovt.riferimento,'#39#39') riferimento_cliente,'
      
        'case when opt.documento_origine= '#39'ordine ven'#39' then ovt.numero_do' +
        'cumento '
      
        '     when opt.documento_origine= '#39'ordine produzione'#39' then opt.nu' +
        'mero_documento '
      #9'  end ovt_numero_documento, '
      
        'case when opt.documento_origine= '#39'ordine ven'#39' then ovt.data_docu' +
        'mento '
      
        '     when opt.documento_origine= '#39'ordine produzione'#39' then opt.da' +
        'ta_documento '
      #9'  end ovt_data_documento, '
      'opt.a31cli_codice, nom.descrizione1 nom_descrizione1, '
      
        'opt.art_codice, art.descrizione1 art_descrizione1, art.descrizio' +
        'ne2 art_descrizione2, '
      'arcl.codice_articolo_cliente,'
      
        'opt.quantita, opt.data_consegna, opt.id_origine, opt.tma_codice_' +
        'materie_prime, '#39'no'#39' evadibile'
      'from opt '
      
        'left join opc on opc.progressivo=opt.progressivo and opc.fas_cod' +
        'ice='#39'START'#39' '
      'left join ovt on ovt.progressivo=opt.doc_progressivo_origine '
      
        'left join ovr on ovr.progressivo=opt.doc_progressivo_origine and' +
        ' ovr.riga=opt.doc_riga_origine '
      'left join art on art.codice=opt.art_codice '
      
        'left join arcl on arcl.art_codice=art.codice and arcl.cli_codice' +
        '=opt.a31cli_codice'
      'left join nom on nom.codice=opt.a31cli_codice '
      'where (1 = 1) '
      'and ( opt.documento_origine in ('#39'ordine ven'#39', '#39#39') )'
      'and ( opt.data_consegna <=:data_consegna ) '
      'and ( opc.progressivo is null )  '
      
        'order by opt.data_consegna, ovt.cli_codice, opt.doc_progressivo_' +
        'origine')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 335
    Top = 140
    ParamData = <
      item
        DataType = ftDate
        Name = 'data_consegna'
        Value = 401768d
      end>
  end
  object opt_old: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      
        'opt.progressivo, opt.numero_documento numero_produzione, ovt.cli' +
        '_codice, nom.descrizione1 nom_descrizione1, opt.frn_codice,'
      
        'ovt.numero_documento ovt_numero_documento, ovt.data_documento ov' +
        't_data_documento,'
      
        'opt.art_codice, ovr.descrizione1 ovr_descrizione1, ovr.descrizio' +
        'ne2 ovr_descrizione2,'
      
        'opt.quantita, opt.data_consegna, opt.id_origine, opt.tma_codice_' +
        'materie_prime, opt.tma_codice_finiti'
      'from opt'
      'left join ovt on ovt.progressivo=opt.doc_progressivo_origine'
      
        'left join ovr on ovr.progressivo=opt.doc_progressivo_origine and' +
        ' ovr.riga=opt.doc_riga_origine'
      'left join art on art.codice=opt.art_codice '
      'left join nom on nom.codice=ovt.cli_codice '
      'where'
      'opt.utente =:utente and'
      'opt.id_origine=:id_origine'
      'order by opt.progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 450
    Top = 105
    ParamData = <
      item
        DataType = ftWideString
        Name = 'utente'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_origine'
        Value = 0
      end>
  end
end
