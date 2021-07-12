inherited A31GESFOGLAV: TA31GESFOGLAV
  Caption = 'A31GESFOGLAV'
  ClientHeight = 543
  ClientWidth = 1140
  ExplicitWidth = 1146
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1140
    ExplicitWidth = 1140
  end
  inherited statusbar: TStatusBar
    Top = 523
    Width = 1140
    ExplicitTop = 523
    ExplicitWidth = 1140
  end
  inherited pannello_campi: TRzPanel
    Width = 1022
    Height = 489
    ExplicitWidth = 1022
    ExplicitHeight = 489
    inherited tab_control: TRzPageControl
      Top = 293
      Width = 1022
      ExplicitTop = 293
      ExplicitWidth = 1022
      FixedDimension = 21
      inherited tab_pagina1: TRzTabSheet
        ExplicitWidth = 1020
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
          Top = 39
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
        object Label7: TRzLabel
          Left = 5
          Top = 80
          Width = 103
          Height = 13
          Caption = 'codice articolo cliente'
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
          Top = 115
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
        object v_l_tum_prezzo: TRzLabel
          Left = 170
          Top = 116
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
        object RzLabel1: TRzLabel
          Left = 550
          Top = 80
          Width = 121
          Height = 13
          Caption = 'esponente articolo cliente'
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
          Left = 330
          Top = 115
          Width = 70
          Height = 13
          Caption = 'quantit'#224' evasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
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
          DataSource = cli_ds
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
          TabOrder = 1
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
          TabOrder = 2
        end
        object v_art_codice: trzdbedit_go
          Left = 5
          Top = 54
          Width = 161
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
          OnEnter = v_art_codiceEnter
          OnExit = v_art_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_art
          lookcollprogram = 'GESARC02'
          lookcolltable = 'ARCL'
          lookcollvisname = 'ARCL04'
        end
        object v_art_descrizione1: trzdbeditdescrizione_go
          Left = 170
          Top = 54
          Width = 376
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
        object v_art_descrizione2: trzdbeditdescrizione_go
          Left = 550
          Top = 54
          Width = 316
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
          DataField = 'descrizione2'
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
        object v_codice_articolo_cliente: trzdbedit_go
          Left = 5
          Top = 95
          Width = 316
          Height = 21
          Hint = 'codice articolo cliente [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'codice_articolo_cliente'
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
        object v_data_consegna: trzdbdatetimeedit_go
          Left = 5
          Top = 130
          Width = 79
          Height = 21
          Hint = 
            'data consegna articolo produzione [Alt+Gi'#249' per aprire il calenda' +
            'rio]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'data_consegna'
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
          TabOrder = 7
          OnExit = v_data_consegnaExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 43019.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
        object v_quantita_da_produrre: trzdbnumericedit_go
          Left = 170
          Top = 130
          Width = 95
          Height = 21
          Hint = 'quantit'#224' da produrre [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'qta_da_produrre'
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
          TabOrder = 8
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;#'
          decimalplaces = 0
        end
        object v_a31art_esponente: trzdbedit_go
          Left = 550
          Top = 95
          Width = 111
          Height = 21
          Hint = 'esponente articolo cliente'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31art_esponente'
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
        object v_quantita_evasa: trzdbnumericedit_go
          Left = 330
          Top = 130
          Width = 121
          Height = 21
          Hint = 'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'qta_prodotta'
          Alignment = taLeftJustify
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;#'
          decimalplaces = 4
        end
      end
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 1016
    ExplicitWidth = 1016
    inherited v_griglia: trzdbgrid_go
      Width = 1016
      Columns = <
        item
          Expanded = False
          FieldName = 'progressivo'
          Title.Color = clYellow
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_ora_creazione'
          Title.Caption = 'data ora creazione'
          Title.Color = clYellow
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_consegna'
          Title.Caption = 'data consegna'
          Title.Color = clYellow
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_codice'
          Title.Caption = 'codice cliente'
          Title.Color = clYellow
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_descrizione1'
          Title.Caption = 'descrizione cliente'
          Title.Color = clYellow
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codice_articolo_cliente'
          Title.Caption = 'codice articolo cliente'
          Title.Color = clYellow
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_codice'
          Title.Caption = 'codice articolo'
          Title.Color = clYellow
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qta_da_produrre'
          Title.Caption = 'qta da produrre'
          Title.Color = clYellow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'a31_artesponente'
          Title.Caption = 'esp'
          Title.Color = clYellow
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_descrizione1'
          Title.Caption = 'descrizione articolo'
          Title.Color = clYellow
          Width = 230
          Visible = True
        end>
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 1022
    Height = 489
    ExplicitLeft = 1022
    ExplicitHeight = 489
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Height = 463
      ExplicitHeight = 463
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitHeight = 439
        object Label16: TRzLabel
          Left = 0
          Top = 0
          Width = 47
          Height = 13
          Caption = 'situazione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_situazione: trzdbedit_go
          Left = 0
          Top = 12
          Width = 114
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_ds
          DataField = 'situazione'
          ReadOnly = True
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clLime
          ReadOnlyColorOnFocus = True
          TabOrder = 0
        end
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from a31foglav'
      'where progressivo = :progressivo')
  end
  inherited query_codice: TMyQuery_go
    SQL.Strings = (
      'select '
      'f.progressivo,'
      'f.data_ora_creazione,'
      'f.data_consegna,'
      'art.codice art_codice,'
      'f.codice_articolo_cliente,'
      'f.a31art_esponente,'
      'f.cli_codice,'
      'cli.descrizione1 cli_descrizione1,'
      
        'left(arcl.descrizione_articolo_cliente,40) descrizione_articolo_' +
        'cliente,'
      'art.descrizione1 art_descrizione1,'
      'f.qta_da_produrre'
      'from a31foglav f'
      'left join cli  on cli.codice=f.cli_codice'
      'left join art  on art.codice=f.art_codice'
      
        'left join arcl on arcl.cli_codice=f.cli_codice and arcl.art_codi' +
        'ce=f.art_codice')
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1, obsoleto'
      'from cli'
      'where codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 615
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1, descrizione2,obsoleto'
      'from art'
      'where codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 645
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 660
  end
  object arcl: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from arcl'
      'where cli_codice=:cli_codice and art_codice=:art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 690
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
  object MyDataSource1: TMyDataSource
    DataSet = arcl
    Left = 705
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opt'
      'set a31foglav_progressivo=0'
      'where '
      'a31foglav_progressivo=:a31foglav_progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 735
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a31foglav_progressivo'
        Value = nil
      end>
  end
end
