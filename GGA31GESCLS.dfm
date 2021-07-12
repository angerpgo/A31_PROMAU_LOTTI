inherited A31GESCLS: TA31GESCLS
  Left = 221
  Top = 50
  Caption = 'A31GESCLS'
  ClientHeight = 653
  ClientWidth = 1229
  ExplicitWidth = 1245
  ExplicitHeight = 712
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1229
    ExplicitWidth = 1229
    object tool_filtro: TToolButton
      Left = 589
      Top = 0
      Hint = 'bottone premuto = solo condizioni attive alla data attuale'
      Caption = 'tool_filtro'
      ImageIndex = 92
      Style = tbsCheck
      OnClick = tool_filtroClick
    end
    object ToolButton1: TToolButton
      Left = 620
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 93
      OnClick = ToolButton1Click
    end
  end
  inherited statusbar: TStatusBar
    Top = 633
    Width = 1229
    ExplicitTop = 633
    ExplicitWidth = 1229
  end
  inherited pannello_campi: TRzPanel
    Width = 1111
    Height = 599
    ExplicitWidth = 1111
    ExplicitHeight = 599
    inherited tab_control: TRzPageControl
      Top = 412
      Width = 1111
      Height = 187
      ExplicitTop = 412
      ExplicitWidth = 1111
      ExplicitHeight = 187
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitWidth = 1109
        ExplicitHeight = 167
        object v_l_prezzo: TRzLabel
          Left = 188
          Top = 113
          Width = 31
          Height = 13
          Caption = 'prezzo'
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
          Top = 0
          Width = 31
          Height = 13
          Caption = 'cliente'
          FocusControl = v_cli_codice
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
          Left = 5
          Top = 70
          Width = 34
          Height = 13
          Caption = 'articolo'
          FocusControl = v_art_codice
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
          Top = 113
          Width = 83
          Height = 13
          Caption = 'data inizio validit'#224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label8: TRzLabel
          Left = 5
          Top = 35
          Width = 42
          Height = 13
          Caption = 'contratto'
          FocusControl = v_contratto
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
          Left = 95
          Top = 113
          Width = 77
          Height = 13
          Caption = 'data fine validit'#224
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
          Left = 185
          Top = 35
          Width = 44
          Height = 13
          Caption = 'posizione'
          FocusControl = v_posizione
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
          Left = 295
          Top = 113
          Width = 21
          Height = 13
          Caption = 'note'
          FocusControl = v_note
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_prezzo: trzdbnumericedit_go
          Left = 186
          Top = 128
          Width = 96
          Height = 21
          Hint = 'prezzo unitario [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'prezzo'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0.000000;-,0.000000;#'
          decimalplaces = 4
        end
        object v_cli_codice: trzdbedit_go
          Left = 5
          Top = 15
          Width = 91
          Height = 21
          Hint = 'codice cliente [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'cli_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_cli_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_cli
          lookcollprogram = 'GESCLI'
          lookcolltable = 'CLI'
          lookcollvisname = 'CLI'
        end
        object v_cli_descrizione1: trzdbeditdescrizione_go
          Left = 100
          Top = 15
          Width = 446
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
          TabOrder = 4
        end
        object v_cli_citta: trzdbeditdescrizione_go
          Left = 550
          Top = 15
          Width = 316
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
          TabOrder = 5
        end
        object v_art_codice: trzdbedit_go
          Left = 5
          Top = 85
          Width = 170
          Height = 21
          Hint = 'codice articolo [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'art_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnChange = v_art_codiceChange
          OnExit = v_art_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_art
          lookcollprogram = 'GESART'
          lookcolltable = 'ART'
          lookcollvisname = 'ART'
        end
        object v_art_descrizione1: trzdbeditdescrizione_go
          Left = 185
          Top = 85
          Width = 376
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
          TabOrder = 6
        end
        object v_art_descrizione2: trzdbeditdescrizione_go
          Left = 565
          Top = 85
          Width = 316
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
          TabOrder = 7
        end
        object v_data_inizio: trzdbdatetimeedit_go
          Left = 5
          Top = 128
          Width = 80
          Height = 21
          Hint = 
            'data di inizio validit'#224' del listino [Alt+Gi'#249' per aprire il calen' +
            'dario]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_inizio'
          AutoSelect = False
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
          OnExit = v_data_inizioExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 44083.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_contratto: trzdbedit_go
          Left = 5
          Top = 50
          Width = 170
          Height = 21
          Hint = 'contratto del cliente'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'contratto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnEnter = v_contrattoEnter
          OnExit = v_contrattoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
        end
        object v_data_fine: trzdbdatetimeedit_go
          Left = 95
          Top = 128
          Width = 80
          Height = 21
          Hint = 
            'data di fine validit'#224' del listino [Alt+Gi'#249' per aprire il calenda' +
            'rio]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_fine'
          AutoSelect = False
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
          OnExit = v_data_fineExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 44083.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object Panel2: TRzPanel
          Left = 550
          Top = 37
          Width = 321
          Height = 36
          BorderOuter = fsNone
          Enabled = False
          TabOrder = 12
        end
        object v_posizione: trzdbedit_go
          Left = 185
          Top = 50
          Width = 161
          Height = 21
          Hint = 'posizione del contratto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'posizione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_posizioneExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
        end
        object v_note: trzdbedit_go
          Left = 295
          Top = 128
          Width = 581
          Height = 21
          Hint = 'posizione del contratto'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'note'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 11
          OnExit = v_posizioneExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
        end
      end
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 1106
    Height = 371
    ExplicitWidth = 1106
    ExplicitHeight = 371
    inherited v_griglia: trzdbgrid_go
      Width = 1106
      Height = 371
      Columns = <
        item
          Expanded = False
          FieldName = 'cli_codice'
          Title.Caption = 'cliente'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_descrizione1'
          Title.Caption = 'descrizione'
          Title.Color = clYellow
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'contratto'
          Title.Color = clYellow
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'posizione'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codice_articolo_cliente'
          Title.Caption = 'cod. art. cliente'
          Title.Color = clYellow
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_codice'
          Title.Caption = 'articolo'
          Title.Color = clYellow
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_descrizione1'
          Title.Caption = 'descrizione'
          Title.Color = clYellow
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'note'
          Title.Alignment = taCenter
          Width = 122
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'data_inizio'
          Title.Alignment = taCenter
          Title.Caption = 'inizio'
          Title.Color = clYellow
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'data_fine'
          Title.Alignment = taCenter
          Title.Caption = 'fine'
          Title.Color = clYellow
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prezzo'
          Title.Alignment = taRightJustify
          Title.Color = clYellow
          Visible = True
        end>
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 1111
    Height = 599
    ExplicitLeft = 1111
    ExplicitHeight = 599
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Height = 573
      ExplicitHeight = 573
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 547
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from a31cls'
      'where progressivo = :progressivo')
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      ''
      ''
      ' '
      ' ')
    ParamData = <>
  end
  inherited query_codice: TMyQuery_go
    SQL.Strings = (
      'select cls.cli_codice, cli.descrizione1 cli_descrizione1, '
      'cls.art_codice, art.descrizione1 art_descrizione1,'
      'cls.progressivo,'
      
        'cls.data_inizio, cls.data_fine, cls.prezzo,  0 prezzo_netto, '#39#39' ' +
        'codice_articolo_cliente,'
      'cls.note'
      'from a31cls cls'
      'left join cli on cli.codice = cls.cli_codice'
      'left join art on art.codice = cls.art_codice')
  end
  object cls: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from a31cls'
      'where id <> :id'
      'and cli_codice = :cli_codice '
      'and contratto =  :contratto'
      'and posizione =  :posizione'
      'and art_codice = :art_codice'
      'and ((:data_inizio between data_inizio and data_fine)'
      'or (:data_fine between data_inizio and data_fine))')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 725
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'contratto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'posizione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
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
  object cliart: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select codice_articolo_cliente'
      'from arc'
      'where cli_codice = :cli_codice and art_codice = :art_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 355
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object cliart_ds: TMyDataSource
    DataSet = cliart
    Left = 375
    Top = 65526
  end
  object tlv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tlv'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 430
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tlv_ds: TMyDataSource
    DataSet = tlv
    Left = 450
    Top = 65526
  end
end
