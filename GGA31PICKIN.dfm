inherited A31PICKIN: TA31PICKIN
  Caption = 'A31PICKIN'
  ClientHeight = 656
  ClientWidth = 1014
  ExplicitWidth = 1020
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1014
    ExplicitWidth = 1014
  end
  inherited statusbar: TStatusBar
    Top = 636
    Width = 1014
    ExplicitTop = 636
    ExplicitWidth = 1014
  end
  inherited pannello_campi: TRzPanel
    Width = 896
    Height = 602
    ExplicitWidth = 896
    ExplicitHeight = 602
    object RzLabel1: TRzLabel [0]
      Left = 110
      Top = 0
      Width = 73
      Height = 13
      Caption = 'tipo documento'
    end
    object RzLabel2: TRzLabel [1]
      Left = 265
      Top = 0
      Width = 75
      Height = 13
      Caption = 'progressivo acq'
      Enabled = False
    end
    object RzLabel5: TRzLabel [2]
      Left = 392
      Top = 0
      Width = 83
      Height = 13
      Caption = 'data registrazione'
    end
    object RzLabel6: TRzLabel [3]
      Left = 505
      Top = 0
      Width = 77
      Height = 13
      Caption = 'data documento'
    end
    object RzLabel8: TRzLabel [4]
      Left = 590
      Top = 0
      Width = 91
      Height = 13
      Caption = 'numero documento'
    end
    object RzLabel9: TRzLabel [5]
      Left = 802
      Top = 19
      Width = 5
      Height = 13
      Caption = '/'
    end
    object RzLabel10: TRzLabel [6]
      Left = 852
      Top = 0
      Width = 18
      Height = 13
      Caption = 'rev.'
    end
    inherited tab_control: TRzPageControl
      Height = 101
      TabOrder = 9
      ExplicitHeight = 101
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 81
        object v_l_frn_codice: TRzLabel
          Left = 5
          Top = 37
          Width = 73
          Height = 13
          Caption = 'codice fornitore'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object v_frn_codice: trzdbedit_go
          Left = 5
          Top = 50
          Width = 90
          Height = 21
          Hint = 'codice fornitore [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'frn_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_frn_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_frn
          lookcollprogram = 'GESNOM'
          lookcolltable = 'FRN'
          lookcollvisname = 'FRN'
        end
        object v_frn_descrizione: trzdbeditdescrizione_go
          Left = 102
          Top = 50
          Width = 696
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = frn_ds
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
          TabOrder = 2
        end
        object v_data_controllo: trzdbdatetimeedit_go
          Left = 5
          Top = 10
          Width = 80
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calendario]'
          DataSource = tabella_ds
          DataField = 'data_controllo'
          AutoSelect = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_data_controlloExit
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 44403.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
      end
    end
    object v_data_registrazione: trzdbdatetimeedit_go
      Left = 390
      Top = 15
      Width = 78
      Height = 21
      Hint = 
        'data di registrazione del documento [Alt+Gi'#249' per aprire il calen' +
        'dario]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'DATA_REGISTRAZIONE'
      AutoSelect = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      Date = 44403.000000000000000000
      EditType = etDate
      DropButtonVisible = False
    end
    object v_giorno: trzedit_go
      Left = 471
      Top = 15
      Width = 29
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
    object v_data_documento: trzdbdatetimeedit_go
      Left = 505
      Top = 15
      Width = 78
      Height = 21
      Hint = 'data documento [Alt+Gi'#249' per aprire il calendario]'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'data_documento'
      AutoSelect = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 4
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      Date = 44403.000000000000000000
      EditType = etDate
      DropButtonVisible = False
    end
    object v_numero_documento_alfa: trzdbedit_go
      Left = 590
      Top = 15
      Width = 119
      Height = 21
      Hint = 'numero documento alfanumerico'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'numero_documento_alfa'
      Enabled = False
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
    object v_numero_documento: trzdbnumericedit_go
      Left = 715
      Top = 15
      Width = 84
      Height = 21
      Hint = 'numero documento'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'numero_documento'
      Alignment = taLeftJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 6
      AllowBlank = False
      IntegersOnly = False
      DisplayFormat = '0'
      decimalplaces = 0
    end
    object v_serie_documento: trzdbedit_go
      Left = 810
      Top = 15
      Width = 34
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'serie_documento'
      Enabled = False
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
    object v_revisione: trzdbnumericedit_go
      Left = 850
      Top = 15
      Width = 24
      Height = 21
      Hint = 'numero revisione'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tabella_ds
      DataField = 'revisione'
      Alignment = taLeftJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 8
      AllowBlank = False
      IntegersOnly = False
      DisplayFormat = '#'
      decimalplaces = 0
    end
    object v_progressivo_acq: trzdbnumericedit_go
      Left = 265
      Top = 13
      Width = 94
      Height = 21
      Hint = '[Invio o Ins= inserisce nuovo record]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = tabella_ds
      DataField = 'progressivo_acq'
      Alignment = taLeftJustify
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
      OnExit = v_progressivo_acqExit
      OnKeyDown = v_progressivo_acqKeyDown
      AllowBlank = False
      IntegersOnly = False
      DisplayFormat = '#'
      decimalplaces = 0
    end
    object v_tipo_documento: trzdbcombobox_go
      Left = 110
      Top = 15
      Width = 143
      Height = 21
      Hint = 'tipo documento'
      DataField = 'tipo_documento'
      DataSource = tabella_ds
      Style = csDropDownList
      Enabled = False
      FlatButtons = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      TabStop = False
      OnChange = v_tipo_documentoChange
      Items.Strings = (
        'ddt'
        'fattura differita'
        'fattura immediata')
    end
  end
  inherited pannello_codice: TRzPanel
    inherited v_progressivo: trzdbnumericedit_go
      Left = 4
      Top = 13
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'A31PICKT'
      lookupvisname = 'A31PICKT'
      ExplicitLeft = 4
      ExplicitTop = 13
    end
  end
  inherited pannello_griglia_righe: TRzPanel
    Top = 180
    Width = 893
    Height = 365
    ExplicitTop = 180
    ExplicitWidth = 893
    ExplicitHeight = 365
    inherited v_griglia_righe: trzdbgrid_go
      Width = 893
      Height = 365
      Columns = <
        item
          Expanded = False
          FieldName = 'riga'
          Title.Color = clYellow
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'riga_acq'
          Title.Caption = 'riga acq'
          Title.Color = clYellow
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'art_codice'
          Title.Caption = 'codice articolo'
          Title.Color = clYellow
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descrizione1'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero_colli'
          Title.Caption = 'nr colli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantita'
          Title.Caption = 'quantit'#224
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantita_rilevata'
          Title.Caption = 'qt'#224' rilevata'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'differenza'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_ora'
          Title.Caption = 'data produzione'
          Width = 80
          Visible = True
        end>
    end
  end
  inherited pannello_righe: TRzPanel
    Top = 546
    Width = 890
    Height = 89
    ExplicitTop = 546
    ExplicitWidth = 890
    ExplicitHeight = 89
    inherited tab_control_righe: TRzPageControl
      Width = 890
      Height = 89
      ExplicitWidth = 890
      ExplicitHeight = 89
      FixedDimension = 1
      inherited tab_pagina_righe: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 5
        ExplicitWidth = 886
        ExplicitHeight = 81
        object Label19: TRzLabel
          Left = 5
          Top = 0
          Width = 69
          Height = 13
          Caption = 'codice articolo'
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
        object Label72: TRzLabel
          Left = 170
          Top = 0
          Width = 53
          Height = 13
          Caption = 'descrizione'
          FocusControl = v_descrizione1_riga
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label24: TRzLabel
          Left = 780
          Top = 0
          Width = 20
          Height = 13
          Caption = 'u.m.'
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
        object Label36: TRzLabel
          Left = 820
          Top = 0
          Width = 51
          Height = 13
          Caption = 'ubicazione'
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
        object Label26: TRzLabel
          Left = 5
          Top = 40
          Width = 38
          Height = 13
          Caption = 'quantit'#224
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
        object RzLabel3: TRzLabel
          Left = 445
          Top = 42
          Width = 75
          Height = 13
          Caption = 'quantit'#224' rilevata'
          FocusControl = v_art_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
          Visible = False
        end
        object RzLabel4: TRzLabel
          Left = 575
          Top = 40
          Width = 46
          Height = 13
          Caption = 'differenza'
          FocusControl = v_art_codice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
          Visible = False
        end
        object RzLabel7: TRzLabel
          Left = 115
          Top = 40
          Width = 30
          Height = 13
          Caption = 'nr colli'
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
        object RzLabel11: TRzLabel
          Left = 235
          Top = 40
          Width = 76
          Height = 13
          Caption = 'data produzione'
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
        object v_art_codice: trzdbedit_go
          Left = 5
          Top = 13
          Width = 160
          Height = 21
          Hint = 
            '[Ctrl+F8=equivalenti][Ctrl+F9=analisi listini][Ctrl+F11=ult.prz.' +
            'for.][Alt+F9=RMA][F9=art.for.][Alt+F8=non conformit'#224'][Ctrl+F7=ar' +
            'ticoli potenziali][Ctrl+F2=articoli dell'#39'intestatario documento]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'art_codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_art_codiceExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc_art
          lookcollprogram = 'GESART'
          lookcolltable = 'ART'
          lookcollvisname = 'ART'
        end
        object v_descrizione1_riga: trzdbedit_go
          Left = 169
          Top = 13
          Width = 321
          Height = 21
          Hint = 'descrizione della riga (prima parte)'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
          DataField = 'descrizione1'
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
        end
        object v_descrizione2_riga: trzdbedit_go
          Left = 495
          Top = 13
          Width = 281
          Height = 21
          Hint = 'descrizione della riga (seconda parte)'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
          DataField = 'descrizione2'
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
        end
        object v_art_tum_codice: trzdbeditdescrizione_go
          Left = 780
          Top = 13
          Width = 36
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_ds
          DataField = 'tum_codice'
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
        object v_art_tub_codice: trzdbeditdescrizione_go
          Left = 820
          Top = 13
          Width = 51
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
        object v_quantita: trzdbnumericedit_go
          Left = 1
          Top = 57
          Width = 91
          Height = 21
          Hint = 
            'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice] [CTRL+F11=quantit'#224 +
            ' u.m. base]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'quantita'
          ReadOnly = True
          Alignment = taLeftJustify
          Color = clYellow
          DisabledColor = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clYellow
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          OnExit = v_quantitaExit
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;#'
          decimalplaces = 0
        end
        object v_quantita_rilevata: trzdbnumericedit_go
          Left = 445
          Top = 57
          Width = 91
          Height = 21
          Hint = 
            'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice] [CTRL+F11=quantit'#224 +
            ' u.m. base]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'quantita_rilevata'
          ReadOnly = True
          Alignment = taLeftJustify
          Color = clAqua
          DisabledColor = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clAqua
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          Visible = False
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;#'
          decimalplaces = 0
        end
        object rzdbnumericedit_go1: trzdbnumericedit_go
          Left = 575
          Top = 57
          Width = 91
          Height = 21
          Hint = 
            'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice] [CTRL+F11=quantit'#224 +
            ' u.m. base]'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = tabella_righe_ds
          DataField = 'differenza'
          Alignment = taLeftJustify
          Color = clLime
          DisabledColor = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 7
          Visible = False
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;#'
          decimalplaces = 0
        end
        object v_flag_controllato_riga: TDBCheckBox
          Left = 720
          Top = 57
          Width = 106
          Height = 17
          Alignment = taLeftJustify
          Caption = 'controllata merce'
          DataField = 'flag_controllato'
          DataSource = tabella_righe_ds
          TabOrder = 8
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Visible = False
        end
        object v_nr_colli: trzdbnumericedit_go
          Left = 115
          Top = 57
          Width = 91
          Height = 21
          Hint = 
            'quantit'#224' [Alt+Gi'#249' per aprire la calcolatrice] [CTRL+F11=quantit'#224 +
            ' u.m. base]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_righe_ds
          DataField = 'numero_colli'
          Alignment = taLeftJustify
          Color = clAqua
          DisabledColor = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clYellow
          ReadOnlyColorOnFocus = True
          TabOrder = 9
          OnExit = v_nr_colliExit
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0;-,0;#'
          decimalplaces = 0
        end
        object v_data_produzione: trzdbdatetimeedit_go
          Left = 235
          Top = 57
          Width = 81
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calendario]'
          DataSource = tabella_righe_ds
          DataField = 'data_produzione'
          AutoSelect = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 10
          CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
          CaptionTodayBtn = 'oggi'
          CaptionClearBtn = 'annulla'
          Date = 44403.000000000000000000
          EditType = etDate
          DropButtonVisible = False
        end
      end
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 896
    Height = 602
    ExplicitLeft = 896
    ExplicitHeight = 602
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Height = 534
      ActivePage = tab_pannello_bottoni_nuovi_base
      TabIndex = 0
      ExplicitHeight = 534
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 510
        inherited v_bottone_dati_extra_righe: TRzRapidFireButton
          Top = 484
          ExplicitTop = 484
        end
        object v_genera_lotti: TRzRapidFireButton
          Left = 0
          Top = 25
          Width = 114
          Height = 26
          Hint = 'genera lotti'
          Caption = 'genera colli'
          OnClick = v_genera_lottiClick
        end
        object v_documento_origine: TRzRapidFireButton
          Left = 0
          Top = 75
          Width = 114
          Height = 26
          Hint = 'documento origine'
          Caption = 'documento origine'
          Visible = False
          OnClick = v_documento_origineClick
        end
        object v_movimento_magazzino: TRzRapidFireButton
          Left = 0
          Top = 100
          Width = 114
          Height = 26
          Hint = 'documento origine'
          Caption = 'movimento magazzino'
          Visible = False
          OnClick = v_movimento_magazzinoClick
        end
        object v_lotto: TRzRapidFireButton
          Left = 0
          Top = 50
          Width = 114
          Height = 26
          Hint = 'gestione lotti'
          Caption = 'gestione colli'
          OnClick = v_lottoClick
        end
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 510
      end
      inherited tab_pannello_ricerca: TRzTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 510
        inherited lbl_hint: TRzLabel
          Height = 442
          ExplicitHeight = 442
        end
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQLInsert.Strings = (
      'INSERT INTO a31pickt'
      
        '  (ID, CODICE, DESCRIZIONE, UTENTE, data_ora, UTENTE_CREAZIONE, ' +
        'data_ora_creazione, id_origine, progressivo, tipo_documento, pro' +
        'gressivo_acq, progressivo_mmt, tda_codice, data_controllo, flag_' +
        'controllato, data_registrazione, data_documento, numero_document' +
        'o, numero_documento_alfa, serie_documento, revisione, frn_codice' +
        ')'
      'VALUES'
      
        '  (:ID, :CODICE, :DESCRIZIONE, :UTENTE, :data_ora, :UTENTE_CREAZ' +
        'IONE, :data_ora_creazione, :id_origine, :progressivo, :tipo_docu' +
        'mento, :progressivo_acq, :progressivo_mmt, :tda_codice, :data_co' +
        'ntrollo, :flag_controllato, :data_registrazione, :data_documento' +
        ', :numero_documento, :numero_documento_alfa, :serie_documento, :' +
        'revisione, :frn_codice)')
    SQLDelete.Strings = (
      'DELETE FROM a31pickt'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE a31pickt'
      'SET'
      
        '  ID = :ID, CODICE = :CODICE, DESCRIZIONE = :DESCRIZIONE, UTENTE' +
        ' = :UTENTE, data_ora = :data_ora, UTENTE_CREAZIONE = :UTENTE_CRE' +
        'AZIONE, data_ora_creazione = :data_ora_creazione, id_origine = :' +
        'id_origine, progressivo = :progressivo, tipo_documento = :tipo_d' +
        'ocumento, progressivo_acq = :progressivo_acq, progressivo_mmt = ' +
        ':progressivo_mmt, tda_codice = :tda_codice, data_controllo = :da' +
        'ta_controllo, flag_controllato = :flag_controllato, data_registr' +
        'azione = :data_registrazione, data_documento = :data_documento, ' +
        'numero_documento = :numero_documento, numero_documento_alfa = :n' +
        'umero_documento_alfa, serie_documento = :serie_documento, revisi' +
        'one = :revisione, frn_codice = :frn_codice'
      'WHERE'
      '  ID = :Old_ID')
    SQLRefresh.Strings = (
      
        'SELECT ID, CODICE, DESCRIZIONE, UTENTE, data_ora, UTENTE_CREAZIO' +
        'NE, data_ora_creazione, id_origine, progressivo, tipo_documento,' +
        ' progressivo_acq, progressivo_mmt, tda_codice, data_controllo, f' +
        'lag_controllato, data_registrazione, data_documento, numero_docu' +
        'mento, numero_documento_alfa, serie_documento, revisione, frn_co' +
        'dice FROM a31pickt'
      'WHERE'
      '  ID = :ID')
    SQLLock.Strings = (
      'SELECT * FROM a31pickt'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM a31pickt')
    SQL.Strings = (
      'select a31pickt.*'
      'from a31pickt '
      'where a31pickt.progressivo = :progressivo'
      ''
      ' '
      ' ')
  end
  inherited tabella_righe: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from a31pickr'
      'where progressivo = :progressivo'
      'order by riga')
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = (
      'select count(*) nr '
      'from a31pickr '
      'where '
      'progressivo=:progressivo and'
      'flag_controllato='#39#39'no'#39#39)
  end
  object frn_ds: TMyDataSource
    DataSet = frn
    Left = 760
  end
  object frn: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1, obsoleto'
      'from frn'
      'where codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 730
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select codice, descrizione1,descrizione2, tum_codice,  obsoleto'
      'from art'
      'where codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 800
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 830
  end
  object xxt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'mmr.progressivo progressivo_mmr,'
      'mmr.riga riga_mmr,'
      'xxr.riga,'
      'xxr.ART_CODICE,'
      'xxr.quantita,'
      'xxr.DOCUMENTO_ORIGINE,'
      'xxr.DOC_PROGRESSIVO_ORIGINE,'
      'xxr.doc_riga_origine,'
      'ltm.lotto,'
      'ltm.quantita'
      'from dar xxr'
      
        'inner join mmt on mmt.doc_progressivo_origine=xxr.progressivo an' +
        'd mmt.documento_origine='#39'ddt acq'#39
      
        'inner join mmr on mmr.progressivo=mmt.progressivo and mmr.doc_ri' +
        'ga_origine=xxr.riga  '
      
        'inner join ltm on ltm.DOC_PROGRESSIVO_ORIGINE=mmr.PROGRESSIVO an' +
        'd ltm.doc_riga_origine=mmr.riga and ltm.DOCUMENTO_ORIGINE='#39'movim' +
        'enti magazzino'#39
      'where '
      'xxr.progressivo=:progressivo and '
      'xxr.situazione='#39'evaso'#39
      'order by xxr.riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 870
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object xxr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'mmr.progressivo progressivo_mmr,'
      'mmr.riga riga_mmr,'
      'xxr.riga,'
      'xxr.ART_CODICE,'
      'xxr.descrizione1,'
      'xxr.descrizione2,'
      'xxr.DOCUMENTO_ORIGINE,'
      'xxr.DOC_PROGRESSIVO_ORIGINE,'
      'xxr.doc_riga_origine,'
      'ltm.lotto,'
      'ltm.quantita'
      'from dar xxr'
      
        'inner join mmt on mmt.doc_progressivo_origine=xxr.progressivo an' +
        'd mmt.documento_origine='#39'ddt acq'#39
      
        'inner join mmr on mmr.progressivo=mmt.progressivo and mmr.doc_ri' +
        'ga_origine=xxr.riga  '
      
        'inner join ltm on ltm.DOC_PROGRESSIVO_ORIGINE=mmr.PROGRESSIVO an' +
        'd ltm.doc_riga_origine=mmr.riga and ltm.DOCUMENTO_ORIGINE='#39'movim' +
        'enti magazzino'#39
      'where '
      'xxr.progressivo=:progressivo and '
      'xxr.situazione='#39'evaso'#39
      'order by xxr.riga,ltm.progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 900
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 850
    Top = 81
  end
  object pickt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select progressivo from a31pickt'
      'where '
      'progressivo_acq=:progressivo ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 945
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'insert into ltm( progressivo, art_codice, lotto, tma_codice, doc' +
        'umento_origine, doc_progressivo_origine, doc_riga_origine, data_' +
        'registrazione, quantita, esistenza, descrizione )'
      
        'values( :progressivo, :art_codice, :lotto, :tma_codice, :documen' +
        'to_origine, :doc_progressivo_origine, :doc_riga_origine, :data_r' +
        'egistrazione, :quantita, :esistenza, :descrizione );')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 734
    Top = 75
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
        Name = 'lotto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
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
        Name = 'data_registrazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'esistenza'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'descrizione'
        Value = nil
      end>
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ltm'
      'where'
      'documento_origine='#39'movimento_magazzino'#39' and'
      'doc_progressivo_origine=:progressivo and'
      'doc_riga_origine=:riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 779
    Top = 75
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
  object mmr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'mmt.data_registrazione,'
      'mmt.tmo_codice,'
      'mmt.cfg_tipo,'
      'mmt.cfg_codice,'
      'mmt.tipo_documento,'
      'mmr.*'
      'from mmt'
      'inner join mmr on mmr.progressivo=mmt.progressivo'
      'where '
      'mmt.documento_origine =:documento_origine and'
      'mmt.doc_progressivo_origine=:doc_progressivo_origine and'
      'mmr.doc_riga_origine=:doc_riga_origine')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 814
    Top = 120
    ParamData = <
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
  object del_ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'delete from ltm'
      'where'
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 809
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object a31etichette: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from'
      'a31etichette'
      'where progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 533
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'opt.a31cli_codice, opt.tma_codice_finiti'
      'from opt'
      'where'
      'opt.PROGRESSIVO = ('
      'select doc_progressivo_origine'
      'from oar'
      'where'
      'oar.documento_origine='#39'produzione'#39' and'
      'oar.progressivo=:doc_progressivo_origine and'
      'oar.riga =:doc_riga_origine )')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 478
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'doc_progressivo_origine'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'doc_riga_origine'
        Value = 0
      end>
  end
  object arcl: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from arcl'
      'where'
      'arcl.codice_articolo_cliente=:codice_articolo_cliente'
      'order by art_codice, cli_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 704
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_articolo_cliente'
        Value = nil
      end>
  end
  object arf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select arf.frn_codice, nom.descrizione1 nom_descrizione1, arf.ar' +
        't_codice, arf.codice_articolo_fornitore'
      'from arf'
      'left join art on art.codice=arf.art_codice'
      'left join nom on nom.codice=arf.frn_codice'
      'where'
      'arf.frn_codice=:frn_codice and'
      'arf.codice_articolo_fornitore=:codice_articolo_fornitore'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 709
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_articolo_fornitore'
        Value = nil
      end>
  end
end
