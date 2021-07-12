inherited SITORDVES: TSITORDVES
  Left = 207
  Caption = 'SITORDVES'
  ClientHeight = 648
  ClientWidth = 994
  ExplicitWidth = 1000
  ExplicitHeight = 697
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 994
    ExplicitWidth = 994
  end
  inherited statusbar: TStatusBar
    Top = 628
    Width = 994
    ExplicitTop = 628
    ExplicitWidth = 994
  end
  inherited tab_control: TRzPageControl
    Width = 994
    Height = 594
    ExplicitWidth = 994
    ExplicitHeight = 594
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 992
      ExplicitHeight = 571
      inherited pannello_elaborazione: TRzPanel
        Width = 992
        Height = 571
        ExplicitWidth = 992
        ExplicitHeight = 571
        inherited pannello_parametri: TRzPanel
          Width = 992
          Height = 533
          ExplicitWidth = 992
          ExplicitHeight = 533
          object Label2: TRzLabel
            Left = 5
            Top = 80
            Width = 69
            Height = 13
            Caption = 'codice articolo'
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
            Left = 435
            Top = 120
            Width = 46
            Height = 13
            Caption = 'dalla data'
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
            Left = 520
            Top = 120
            Width = 40
            Height = 13
            Caption = 'alla data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label21: TRzLabel
            Left = 5
            Top = 160
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
          object Label1: TRzLabel
            Left = 435
            Top = 160
            Width = 75
            Height = 13
            Caption = 'codice deposito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label14: TRzLabel
            Left = 5
            Top = 0
            Width = 31
            Height = 13
            Caption = 'cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_cli_descrizione2: TRzLabel
            Left = 382
            Top = 19
            Width = 280
            Height = 13
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label12: TRzLabel
            Left = 5
            Top = 200
            Width = 68
            Height = 13
            Caption = 'codice agente'
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
            Left = 770
            Top = 120
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
          object Label13: TRzLabel
            Left = 5
            Top = 240
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
          object Label15: TRzLabel
            Left = 125
            Top = 240
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
          object Label18: TRzLabel
            Left = 247
            Top = 240
            Width = 34
            Height = 13
            Caption = 'importo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label25: TRzLabel
            Left = 625
            Top = 120
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
          object Label23: TRzLabel
            Left = 5
            Top = 120
            Width = 90
            Height = 13
            Caption = 'descrizione articolo'
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
            Left = 435
            Top = 240
            Width = 101
            Height = 13
            Caption = 'situazione righe ordini'
            FocusControl = v_situazione
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label27: TRzLabel
            Left = 630
            Top = 240
            Width = 77
            Height = 13
            Caption = 'righe approntate'
            FocusControl = v_approntato
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
            Left = 5
            Top = 40
            Width = 23
            Height = 13
            Caption = 'filiale'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_art_codice: trzedit_go
            Left = 5
            Top = 95
            Width = 161
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
            TabOrder = 2
            OnExit = v_art_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc_art
            lookcollprogram = 'GESART'
            lookcolltable = 'ART'
            lookcollvisname = 'ART'
          end
          object v_dalla_data: trzdatetimeedit_go
            Left = 435
            Top = 135
            Width = 80
            Height = 21
            Hint = 
              'data documento di inizio selezione [Alt+Gi'#249' per aprire il calend' +
              'ario]'
            CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
            CaptionTodayBtn = 'oggi'
            CaptionClearBtn = 'annulla'
            EditType = etDate
            PopupHeight = 0
            PopupWidth = 0
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
            TabOrder = 4
          end
          object v_alla_data: trzdatetimeedit_go
            Left = 520
            Top = 135
            Width = 80
            Height = 21
            Hint = 
              'data documento di fine selezione [Alt+Gi'#249' per aprire il calendar' +
              'io]'
            CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
            CaptionTodayBtn = 'oggi'
            CaptionClearBtn = 'annulla'
            EditType = etDate
            PopupHeight = 0
            PopupWidth = 0
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
            OnEnter = v_alla_dataEnter
            OnExit = v_alla_dataExit
          end
          object v_tdo_codice: trzedit_go
            Left = 5
            Top = 175
            Width = 50
            Height = 21
            Hint = 'codice documento [F4 F5 F6]'
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
            TabOrder = 8
            OnEnter = v_tdo_codiceEnter
            OnExit = v_tdo_codiceExit
            lookcolldatabase = 'ARC.ARCDIT'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTDO'
            lookcolltable = 'TDO'
            lookcollvisname = 'TDV'
          end
          object v_tma_codice: trzedit_go
            Left = 435
            Top = 175
            Width = 50
            Height = 21
            Hint = 'codice deposito [F4 F5 F6]'
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
          object v_cli_codice: trzedit_go
            Left = 5
            Top = 15
            Width = 90
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
            OnChange = v_cli_codiceChange
            OnExit = v_cli_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc_cli
            lookcollprogram = 'GESNOM'
            lookcolltable = 'CLI'
            lookcollvisname = 'CLI'
          end
          object v_tag_codice: trzedit_go
            Left = 5
            Top = 215
            Width = 50
            Height = 21
            Hint = 'codice agente [F4 F5 F6]'
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
            OnExit = v_tag_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTAG'
            lookcolltable = 'TAG'
            lookcollvisname = 'TAG'
          end
          object v_data_consegna: trzdatetimeedit_go
            Left = 770
            Top = 135
            Width = 80
            Height = 21
            Hint = 
              'data consegna di fine selezione [Alt+Gi'#249' per aprire il calendari' +
              'o]'
            CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
            CaptionTodayBtn = 'oggi'
            CaptionClearBtn = 'annulla'
            EditType = etDate
            PopupHeight = 0
            PopupWidth = 0
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
            OnExit = v_data_consegnaExit
          end
          object v_quantita: trznumericedit_go
            Left = 5
            Top = 255
            Width = 106
            Height = 21
            Hint = 'quantit'#224' da selezionare [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 11
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;#'
            decimalplaces = 4
          end
          object v_prezzo: trznumericedit_go
            Left = 125
            Top = 255
            Width = 106
            Height = 21
            Hint = 
              'prezzo unitario da selezionare [Alt+Gi'#249' per aprire la calcolatri' +
              'ce]'
            Margins.Left = 1
            Margins.Top = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 12
            IntegersOnly = False
            DisplayFormat = ',0.0000;-,0.0000;#'
            decimalplaces = 4
          end
          object v_importo: trznumericedit_go
            Left = 247
            Top = 255
            Width = 106
            Height = 21
            Hint = 'importo da selezionare [Alt+Gi'#249' per aprire la calcolatrice]'
            Margins.Left = 1
            Margins.Top = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 13
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
          object v_numero_ordine: trznumericedit_go
            Left = 625
            Top = 135
            Width = 76
            Height = 21
            Hint = 'numero ordine da selezionare'
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
            TabOrder = 6
            IntegersOnly = False
            DisplayFormat = '#'
            decimalplaces = 0
          end
          object v_art_descrizione: trzedit_go
            Left = 5
            Top = 135
            Width = 416
            Height = 21
            Hint = 'descrizione articolo su documenti (ricerca con funzione "like")'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 40
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 3
            OnExit = v_art_codiceExit
          end
          object v_situazione: trzcombobox_go
            Left = 435
            Top = 255
            Width = 106
            Height = 21
            Hint = 'situazione delle righe ordini da selezionare'
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
            TabOrder = 14
            Text = 'tutte'
            OnExit = v_situazioneExit
            Items.Strings = (
              'tutte'
              'non evase'
              'evase'
              'annullate')
            ItemIndex = 0
          end
          object v_approntato: trzcombobox_go
            Left = 630
            Top = 255
            Width = 106
            Height = 21
            Hint = 
              'selezione delle righe per cui '#232' stata gi'#224' stata approntata una q' +
              'uantita di evasione'
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
            TabOrder = 15
            Text = 'tutte'
            OnExit = v_situazioneExit
            Items.Strings = (
              'tutte'
              'si'
              'no')
            ItemIndex = 0
          end
          object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
            Left = 100
            Top = 15
            Width = 751
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = cli_ds
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
            TabOrder = 16
          end
          object v_ind_codice: trzedit_go
            Left = 5
            Top = 55
            Width = 90
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
            Left = 100
            Top = 55
            Width = 751
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
            TabOrder = 17
          end
          object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
            Left = 170
            Top = 95
            Width = 681
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = art_ds
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
            TabOrder = 18
          end
          object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
            Left = 60
            Top = 175
            Width = 361
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tdo_ds
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
            TabOrder = 19
          end
          object RzDBEditDescrizione_go5: trzdbeditdescrizione_go
            Left = 490
            Top = 175
            Width = 361
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tma_ds
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
            TabOrder = 20
          end
          object RzDBEditDescrizione_go6: trzdbeditdescrizione_go
            Left = 60
            Top = 215
            Width = 361
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tag_ds
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
            TabOrder = 21
          end
          object Panel2: TRzPanel
            Left = 0
            Top = 502
            Width = 992
            Height = 31
            Align = alBottom
            BorderOuter = fsLowered
            TabOrder = 22
            object v_selcms: TRzRapidFireButton
              Left = 5
              Top = 4
              Width = 111
              Height = 22
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
          end
        end
        inherited Panel4: TRzPanel
          Top = 533
          Width = 992
          ExplicitTop = 533
          ExplicitWidth = 992
          inherited Bevel1: TBevel
            Width = 992
            ExplicitWidth = 861
          end
          inherited v_conferma: TRzBitBtn
            Left = 3
            ExplicitLeft = 3
          end
          inherited v_esci: TRzBitBtn
            Left = 98
            ExplicitLeft = 98
          end
        end
      end
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select cli.codice cli_codice, '#39#39' cli_descrizione, art.codice art' +
        '_codice, '#39#39' art_descrizione,'
      
        '  art.tum_codice, ovt.data_documento, ovt.numero_documento, ovt.' +
        'serie_documento, ovr.quantita,'
      
        '  ovr.quantita_evasa, 0 quantita_evadere, ovr.prezzo, ovr.import' +
        'o, ovt.tipo_documento, ovt.progressivo, ovr.riga, ovr.tsm_codice' +
        ','
      '  ovt.tdo_codice, ovt.tva_codice, ovt.cambio, ovr.data_consegna,'
      
        '  ovt.tag_codice, tag.descrizione tag_descrizione, ovr.situazion' +
        'e, ovr.quantita_approntata,'
      
        '  ovt.tmo_codice, ovr.tma_codice, ovt.tmo_codice_collegato, ovt.' +
        'tma_codice_collegato, ovr.tsm_codice_art,'
      
        '  ovr.cms_codice, ovr.tipologia, '#39#39' avanzamento, '#39#39' situazione_a' +
        'vanzamento '
      'from ovr'
      'inner join ovt ovt on (ovt.progressivo = ovr.progressivo)'
      'inner join cli cli on (cli.codice = ovt.cli_codice)'
      'inner join art art on (art.codice = ovr.art_codice)'
      'left outer join tag tag on (tag.codice = ovt.tag_codice)'
      ''
      ' '
      ' ')
    AfterScroll = queryAfterScroll
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object query_totale: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select sum(quantita) quantita, sum(quantita_evasa) quantita_evas' +
        'a from pvr'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 290
    Top = 65526
  end
  object query_totale_ds: TMyDataSource
    DataSet = query_totale
    Left = 320
    Top = 65526
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', citta) descrizi' +
        'one'
      'from cli'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 355
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 370
    Top = 65526
  end
  object ind: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', trim(via), '#39' '#39',' +
        ' citta) descrizione'
      'from ind'
      'where cli_codice = :cli_codice and indirizzo = :indirizzo'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
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
    Left = 395
    Top = 65526
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', descrizione2) d' +
        'escrizione'
      'from art'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 420
    Top = 65526
  end
  object tdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tdo'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
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
  object tdo_ds: TMyDataSource
    DataSet = tdo
    Left = 445
    Top = 65526
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
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
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 470
    Top = 65526
  end
  object tag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tag'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tag_ds: TMyDataSource
    DataSet = tag
    Left = 495
    Top = 65526
  end
end
