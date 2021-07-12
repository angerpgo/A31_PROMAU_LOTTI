inherited A31EVAORDP: TA31EVAORDP
  Left = 192
  Top = 58
  Caption = 'A31EVAORDP'
  ClientHeight = 730
  ClientWidth = 1334
  ExplicitWidth = 1350
  ExplicitHeight = 789
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1334
    ExplicitWidth = 1334
    object tool_cruart: TToolButton
      Left = 279
      Top = 0
      Caption = 'tool_cruart'
      ImageIndex = 96
      OnClick = tool_cruartClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 710
    Width = 1334
    ExplicitTop = 710
    ExplicitWidth = 1334
  end
  inherited tab_control: TRzPageControl
    Width = 1334
    Height = 676
    ActivePage = tab_pagina2
    TabIndex = 1
    ExplicitWidth = 1334
    ExplicitHeight = 676
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 1332
      ExplicitHeight = 653
      inherited pannello_elaborazione: TRzPanel
        Width = 1332
        Height = 653
        ExplicitWidth = 1332
        ExplicitHeight = 653
        inherited ProgressBar: TProgressBar
          Left = 730
          Top = 20
          ExplicitLeft = 730
          ExplicitTop = 20
        end
        inherited pannello_parametri: TRzPanel
          Width = 1332
          Height = 615
          ExplicitWidth = 1332
          ExplicitHeight = 615
          object Label3: TRzLabel
            Left = 5
            Top = 40
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
          object Label2: TRzLabel
            Left = 5
            Top = 0
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
          object Label1: TRzLabel
            Left = 92
            Top = 40
            Width = 83
            Height = 13
            Caption = 'data registrazione'
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
            Left = 5
            Top = 80
            Width = 141
            Height = 13
            Caption = 'progressivo ordine produzione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_alla_data: trzdatetimeedit_go
            Left = 5
            Top = 55
            Width = 80
            Height = 21
            Hint = #13' Alt+Gi'#249' per aprire il calendario'
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
            TabOrder = 1
            OnExit = v_alla_dataExit
          end
          object v_art_codice: trzedit_go
            Left = 5
            Top = 15
            Width = 166
            Height = 21
            Hint = 
              'codice articolo [F4 F5 F6] [F9 = visualizza ordini produzioni no' +
              'n evasi]'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 20
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_art_codiceExit
            OnKeyDown = v_art_codiceKeyDown
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc_art
            lookcollprogram = 'GESART'
            lookcolltable = 'ART'
            lookcollvisname = 'ART'
          end
          object v_data_registrazione: trzdatetimeedit_go
            Left = 92
            Top = 55
            Width = 80
            Height = 21
            Hint = #13' Alt+Gi'#249' per aprire il calendario'
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
            TabOrder = 2
            OnExit = v_data_registrazioneExit
          end
          object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
            Left = 175
            Top = 15
            Width = 616
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = art_01_ds
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
            TabOrder = 3
          end
          object v_progressivo: trznumericedit_go
            Left = 5
            Top = 95
            Width = 166
            Height = 21
            Hint = 'progressivo ordine produzione'
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
            TabOrder = 4
            OnExit = v_progressivoExit
            IntegersOnly = False
            DisplayFormat = '#'
            decimalplaces = 0
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESORDP'
            lookcolltable = 'OPT'
            lookcollvisname = 'OPT'
          end
          object RzDBEditDescrizione_go2: trzdbeditdescrizione_go
            Left = 175
            Top = 95
            Width = 616
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = opt_01_ds
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
        end
        inherited Panel4: TRzPanel
          Top = 615
          Width = 1332
          ExplicitTop = 615
          ExplicitWidth = 1332
          inherited Bevel1: TBevel
            Width = 1332
            ExplicitWidth = 1141
          end
          inherited v_conferma: TRzBitBtn
            Left = 3
            ExplicitLeft = 3
          end
          inherited v_esci: TRzBitBtn
            Left = 93
            ExplicitLeft = 93
          end
          object v_lettore: TRzBitBtn
            Left = 898
            Top = 7
            Width = 86
            Height = 26
            Hint = 'acquisizione movimenti da lettore laser portatile'
            Caption = 'lettore'
            TabOrder = 2
            OnClick = v_lettoreClick
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 1332
      ExplicitHeight = 653
      inherited pannello_esposizione: TRzPanel
        Width = 1332
        Height = 653
        ExplicitWidth = 1332
        ExplicitHeight = 653
        object Splitter1: TSplitter
          Left = 0
          Top = 141
          Width = 1332
          Height = 8
          Cursor = crVSplit
          Align = alTop
          Beveled = True
          ExplicitWidth = 984
        end
        object Panel1: TRzPanel
          Left = 0
          Top = 545
          Width = 1332
          Height = 108
          Align = alBottom
          BorderOuter = fsNone
          TabOrder = 2
          DesignSize = (
            1332
            108)
          object Panel2: TRzPanel
            Left = 0
            Top = 2
            Width = 1201
            Height = 104
            BorderOuter = fsNone
            TabOrder = 0
            OnEnter = Panel2Enter
            OnExit = Panel2Exit
            object v_l_prezzo: TRzLabel
              Left = 5
              Top = 5
              Width = 80
              Height = 13
              Caption = 'quantit'#224' prodotta'
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
              Left = 135
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
            object RzLabel1: TRzLabel
              Left = 5
              Top = 60
              Width = 64
              Height = 13
              Caption = 'scarti  per CQ'
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
              Left = 385
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
            object RzLabel4: TRzLabel
              Left = 135
              Top = 60
              Width = 87
              Height = 13
              Caption = 'scarti da rottamare'
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
              Left = 260
              Top = 60
              Width = 94
              Height = 13
              Caption = 'scarti da recuperare'
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
              Left = 760
              Top = 7
              Width = 97
              Height = 13
              Caption = 'deposito carico finito'
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
              Left = 760
              Top = 60
              Width = 146
              Height = 13
              Caption = 'deposito scarico da recuperare'
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
              Left = 5
              Top = 20
              Width = 116
              Height = 21
              Hint = 'quantit'#224' prodotta [Alt+Gi'#249' per aprire la calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = sor_ds
              DataField = 'quantita_evasa'
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
              OnExit = v_quantitaExit
              AllowBlank = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_saldo_acconto: trzdbcombobox_go
              Left = 135
              Top = 20
              Width = 101
              Height = 21
              Hint = 'tipo di evasione del documento di livello superiore'
              DataField = 'saldo_acconto'
              DataSource = sor_ds
              ReadOnly = True
              Style = csDropDownList
              Color = clBtnFace
              FlatButtons = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 1
              TabStop = False
              Items.Strings = (
                'acconto'
                'saldo')
            end
            object v_saldo_materie_prime: TRzDBCheckBox
              Left = 630
              Top = 81
              Width = 109
              Height = 15
              Hint = 
                'spunta per scaricare a saldo le materie prime se la quantit'#224' a s' +
                'aldo del finito '#232' diversa dall'#39'ordinato'
              DataField = 'saldo_materie_prime'
              DataSource = sor_ds
              ValueChecked = 'si'
              ValueUnchecked = 'no'
              Caption = 'saldo materie prime'
              TabOrder = 7
              Visible = False
            end
            object v_scarti: TRzDBCheckBox
              Left = 630
              Top = 66
              Width = 118
              Height = 15
              Hint = 
                'spunta per non eseguire la valorizzazione della quantit'#224' non eva' +
                'sa'
              DataField = 'scarti'
              DataSource = sor_ds
              ValueChecked = 'si'
              ValueUnchecked = 'no'
              Caption = 'non valorizzare scarti'
              TabOrder = 8
              Visible = False
              OnClick = v_scartiClick
            end
            object v_scarti_CQ: trzdbnumericedit_go
              Left = 5
              Top = 75
              Width = 116
              Height = 21
              Hint = 'scarti cq [Alt+Gi'#249' per aprire la calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = sor_ds
              DataField = 'quantita_scarti'
              Alignment = taLeftJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 4
              OnExit = v_quantitaExit
              AllowBlank = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_descrizione: trzdbedit_go
              Left = 385
              Top = 20
              Width = 368
              Height = 21
              DataSource = sor_ds
              DataField = 'descrizione'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 9
            end
            object v_scarti_da_rottamare: trzdbnumericedit_go
              Left = 135
              Top = 75
              Width = 116
              Height = 21
              Hint = 'scarti da rottamare [Alt+Gi'#249' per aprire la calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = sor_ds
              DataField = 'a31scarti_da_rottamare'
              Alignment = taLeftJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 5
              OnExit = v_quantitaExit
              AllowBlank = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_scarti_da_recuperare: trzdbnumericedit_go
              Left = 260
              Top = 75
              Width = 116
              Height = 21
              Hint = 'scarti da recuperare [Alt+Gi'#249' per aprire la calcolatrice]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = sor_ds
              DataField = 'a31scarti_da_recuperare'
              Alignment = taLeftJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 6
              OnExit = v_quantitaExit
              AllowBlank = False
              IntegersOnly = False
              DisplayFormat = ',0.0000;-,0.0000;#'
              decimalplaces = 4
            end
            object v_tma_codice_finiti: trzdbedit_go
              Left = 760
              Top = 20
              Width = 50
              Height = 21
              Hint = 'codice del deposito di carico del prodotto finito [F4 F5 F6]'
              Margins.Left = 1
              Margins.Top = 1
              DataSource = sor_ds
              DataField = 'tma_codice_finiti'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnlyColor = clBtnFace
              ReadOnlyColorOnFocus = True
              TabOrder = 2
              OnExit = v_tma_codice_finitiExit
              lookcolldatabase = 'arc.arcdit'
              lookcollpopupmenu = ARC.pop_arc
              lookcollprogram = 'GESTMA'
              lookcolltable = 'TMA'
              lookcollvisname = 'TMA'
            end
            object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
              Left = 814
              Top = 20
              Width = 371
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
              TabOrder = 3
            end
            object v_recupero_da_scarti: TRzDBCheckBox
              Left = 260
              Top = 21
              Width = 104
              Height = 15
              Hint = 
                'spunta per non eseguire la valorizzazione della quantit'#224' non eva' +
                'sa'
              DataField = 'a31recupero_da_scarti'
              DataSource = sor_ds
              ValueChecked = 'si'
              ValueUnchecked = 'no'
              Caption = 'recupero da scarti'
              TabOrder = 10
              OnClick = v_recupero_da_scartiClick
            end
            object v_tma_codice_materie_prime: trzdbedit_go
              Left = 760
              Top = 75
              Width = 50
              Height = 21
              Hint = 
                'codice del deposito di scarico del prodotto recuperato [F4 F5 F6' +
                ']'
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataSource = sor_ds
              DataField = 'TMA_CODICE_MATERIE_PRIME'
              ReadOnly = True
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
              lookcolldatabase = 'arc.arcdit'
              lookcollpopupmenu = ARC.pop_arc
              lookcollprogram = 'GESTMA'
              lookcolltable = 'TMA'
              lookcollvisname = 'TMA'
            end
            object trzdbeditdescrizione_go2: trzdbeditdescrizione_go
              Left = 814
              Top = 75
              Width = 371
              Height = 21
              Hint = '-'
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataSource = tmas_ds
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
            object GroupBox1: TGroupBox
              Left = 385
              Top = 60
              Width = 216
              Height = 45
              Caption = 'situazione esistenza articolo da recuperare'
              Enabled = False
              TabOrder = 13
              object Label18: TRzLabel
                Left = 5
                Top = 19
                Width = 40
                Height = 13
                Caption = 'deposito'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentFont = False
                ShowAccelChar = False
                Transparent = True
              end
              object v_esistenza_deposito: trzdbnumericedit_go
                Left = 50
                Top = 15
                Width = 100
                Height = 21
                Hint = 'esistenza dell'#39'articolo nel deposito principale'
                Margins.Left = 1
                Margins.Top = 1
                DataSource = esistenza_deposito_ds
                DataField = 'ESISTENZA'
                Alignment = taLeftJustify
                Color = clYellow
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = [fsBold]
                FramingPreference = fpCustomFraming
                ParentFont = False
                ReadOnlyColor = clBtnFace
                ReadOnlyColorOnFocus = True
                TabOrder = 0
                OnChange = v_esistenza_depositoChange
                AllowBlank = False
                IntegersOnly = False
                DisplayFormat = ',0.0000;-,0.0000;#'
                decimalplaces = 4
              end
            end
          end
          object v_memorizza: TRzBitBtn
            Left = 1204
            Top = 20
            Width = 123
            Height = 26
            Hint = 'memorizza le produzioni assegnate'
            Anchors = [akRight, akBottom]
            Caption = 'memorizza produzione'
            Enabled = False
            TabOrder = 1
            TabStop = False
            OnClick = v_memorizzaClick
          end
        end
        object Panel3: TRzPanel
          Left = 0
          Top = 0
          Width = 1332
          Height = 141
          Align = alTop
          TabOrder = 0
          object v_griglia_righe: trzdbgrid_go
            Left = 2
            Top = 2
            Width = 1328
            Height = 137
            TabStop = False
            Align = alClient
            Color = 16776176
            DataSource = query_ordini_fornitori_ds
            DrawingStyle = gdsClassic
            options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
            PopupMenu = Popup_griglia
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Color = clWhite
                Expanded = False
                FieldName = 'art_codice'
                Title.Caption = 'codice articolo'
                Title.Color = clLime
                Width = 123
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'art_descrizione1'
                Title.Caption = 'descrizione'
                Title.Color = clYellow
                Width = 235
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'frn_descrizione1'
                Title.Caption = 'fornitore'
                Title.Color = clYellow
                Width = 221
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'tum_codice'
                Title.Caption = 'u.m.'
                Title.Color = clYellow
                Width = 41
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'quantita'
                Title.Alignment = taRightJustify
                Title.Caption = 'qt'#224' residua'
                Title.Color = clYellow
                Width = 68
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clWhite
                Expanded = False
                FieldName = 'data_consegna'
                Title.Alignment = taCenter
                Title.Caption = 'consegna'
                Title.Color = clYellow
                Visible = True
              end>
          end
        end
        object Panel5: TRzPanel
          Left = 0
          Top = 149
          Width = 1332
          Height = 396
          Align = alClient
          Caption = 'Panel5'
          TabOrder = 1
          object v_griglia: trzdbgrid_go
            Left = 2
            Top = 2
            Width = 1328
            Height = 392
            Hint = 
              '[INVIO=asegnazione automatica quantit'#224' residua] [TAB=imputazione' +
              ' manuale quantit'#224' prodotta]'
            Align = alClient
            Color = 16776176
            DataSource = sor_ds
            DrawingStyle = gdsClassic
            options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
            PopupMenu = Popup_griglia
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            OnDblClick = v_grigliaDblClick
            OnEnter = v_grigliaEnter
            OnExit = v_grigliaExit
            OnKeyDown = v_grigliaKeyDown
            OnTitleClick = v_grigliaTitleClick
            Columns = <
              item
                Alignment = taCenter
                Color = clWhite
                Expanded = False
                FieldName = 'DATA_CONSEGNA'
                Title.Alignment = taCenter
                Title.Caption = 'consegna'
                Title.Color = clAqua
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'ART_CODICE'
                Title.Caption = 'codice articolo'
                Title.Color = clLime
                Width = 123
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'art_descrizione'
                Title.Caption = 'descrizione'
                Title.Color = clAqua
                Width = 267
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'TUM_CODICE'
                Title.Caption = 'u.m.'
                Title.Color = clAqua
                Width = 41
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'QUANTITA'
                Title.Alignment = taRightJustify
                Title.Caption = 'qt'#224' residua'
                Title.Color = clAqua
                Width = 68
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'QUANTITA_EVASA'
                Title.Alignment = taRightJustify
                Title.Caption = 'qt'#224' prodotta'
                Title.Color = clAqua
                Width = 70
                Visible = True
              end
              item
                Color = clWindow
                Expanded = False
                FieldName = 'codice_articolo_cliente'
                Title.Caption = 'codice art. cliente'
                Width = 164
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clWhite
                Expanded = False
                FieldName = 'DATA_DOCUMENTO'
                Title.Alignment = taCenter
                Title.Caption = 'data ordine'
                Title.Color = clAqua
                Visible = True
              end
              item
                Color = clWindow
                Expanded = False
                FieldName = 'top_codice'
                Title.Caption = 'documento'
                Title.Color = clAqua
                Width = 59
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'numero_documento'
                Title.Alignment = taRightJustify
                Title.Caption = 'numero ordine'
                Title.Color = clAqua
                Width = 74
                Visible = True
              end
              item
                Color = clWindow
                Expanded = False
                FieldName = 'serie_documento'
                Title.Caption = 'serie'
                Title.Color = clAqua
                Width = 46
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'NUMERO_ORDINE_CLIENTE'
                Title.Caption = 'ordine cliente'
                Title.Color = clAqua
                Width = 66
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'DATA_ORDINE_CLIENTE'
                Title.Caption = 'data ordine'
                Title.Color = clAqua
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'DESCRIZIONE_CLIENTE'
                Title.Caption = 'cliente'
                Title.Color = clAqua
                Width = 200
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clWindow
                Expanded = False
                FieldName = 'avanzamento_fasi'
                Title.Alignment = taCenter
                Title.Caption = 'avanzamento fasi'
                Title.Color = clAqua
                Width = 94
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited sor: TMyTable
    TableName = 'EVAORDP'
    AfterScroll = sorAfterScroll
  end
  inherited tabella_iva: TMyQuery_go
    Connection = nil
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select cli.codice cli_codice, cli.descrizione1 cli_descrizione1,' +
        ' cli.citta cli_citta, '#39#39' avanzamento_fasi,'
      
        '  art.codice art_codice, art.descrizione1 art_descrizione1, art.' +
        'descrizione2 art_descrizione2,'
      
        '  art.tum_codice, dvt.data_documento, dvt.numero_documento, dvt.' +
        'serie_documento, dvr.quantita,'
      
        '  dvr.prezzo, dvr.importo, dvt.tipo_documento, dvt.progressivo, ' +
        'dvr.riga, dvt.situazione,'
      
        '  dvt.tdo_codice, tdo.descrizione tdo_descrizione, dvt.tva_codic' +
        'e, dvt.cambio, dvt.ese_codice,'
      
        '  dvt.tmo_codice, dvr.tma_codice, dvt.tmo_codice_collegato, dvt.' +
        'tma_codice_collegato, dvt.tag_codice'
      'from dvr dvr'
      'inner join dvt dvt on (dvt.progressivo = dvr.progressivo)'
      'inner join cli cli on (cli.codice = dvt.cli_codice)'
      'inner join art art on (art.codice = dvr.art_codice)'
      'inner join tdo tdo on (tdo.codice = dvt.tdo_codice)')
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select opt.*, ovt.numero_documento numero_ordine_cliente, top.sc' +
        'arico_prima_fase, '
      
        'ovt.data_documento data_ordine_cliente, cli.descrizione1 descriz' +
        'ione_cliente,'
      '(select quantita_prodotti from opc '
      
        'where progressivo = opt.progressivo and situazione = '#39'completata' +
        #39
      'order by sequenza desc limit 1) quantita_ciclo'
      'from opt'
      'left join ovt on ovt.progressivo = opt.ovr_progressivo'
      'left join cli on cli.codice = ovt.cli_codice'
      'left join top on top.codice = opt.top_codice'
      'where opt.progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 280
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from opr'
      'where progressivo = :progressivo'
      'order by riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 310
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tipo_articolo, valore_costo_standard'
      'from art'
      'where codice = :codice'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 345
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object lsa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo'
      'from lsa'
      'where art_codice = :codice and tla_codice = :codice1 and '
      '  (data_inizio <= :codice2 and data_fine >= :codice3)'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice3'
        Value = nil
      end>
  end
  object query_ordini_fornitori: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select art.codice art_codice, art.descrizione1 art_descrizione1,'
      
        'art.descrizione2 art_descrizione2, art.tum_codice, opt.progressi' +
        'vo, frn.descrizione1 frn_descrizione1,'
      '(opt.quantita - opt.quantita_evasa) quantita, opt.data_consegna,'
      
        'opt.tmo_codice_finiti, opt.tma_codice_finiti, opt.tmo_codice_mat' +
        'erie_prime, opt.tma_codice_materie_prime'
      'from opt opt'
      'inner join art art on (art.codice = opt.art_codice)'
      'inner join frn frn on (frn.codice = opt.frn_codice)'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 65526
  end
  object query_ordini_fornitori_ds: TMyDataSource
    DataSet = query_ordini_fornitori
    Left = 450
    Top = 65526
  end
  object mmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from mmt'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 505
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object mmr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from mmr'
      'where progressivo = :progressivo and riga = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
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
  object art_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1) , '#39' '#39' , descrizione2)' +
        ' descrizione'
      'from art'
      'where codice = :codice'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 590
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
    Left = 605
    Top = 65526
  end
  object opt_01: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat('#39'ordine:'#39', '#39' '#39', cast(numero_documento as char(9)),' +
        ' '#39' '#39', + cast(data_documento as char(10)), '#39'  '#39','
      'art_codice) descrizione'
      'from opt'
      'where progressivo = :progressivo'
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
    Left = 625
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object opt_01_ds: TMyDataSource
    DataSet = opt_01
    Left = 640
    Top = 65526
  end
  object opc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opc'
      'set situazione = :situazione'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 555
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'situazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ltm'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 675
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ltm_approntato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ltm'
      
        'where documento_origine = '#39'ordine produzione'#39' and doc_progressiv' +
        'o_origine = :progressivo and doc_riga_origine = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 705
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
  object query_sor: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select *'
      'from evaordp'
      'where utn_codice = :utn_codice'
      'order by id'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 75
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object mmr_costo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(importo + importo_spese) importo'
      'from mmr'
      'inner join mmt on mmt.progressivo = mmr.progressivo'
      
        'where mmt.documento_origine = '#39'ordini produzione'#39' and mmt.doc_pr' +
        'ogressivo_origine = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 735
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'insert into ubm ( progressivo, data_registrazione, art_codice, t' +
        'ub_codice, tipo_movimento, quantita, documento_origine, doc_prog' +
        'ressivo_origine, doc_riga_origine,segno , tmo_codice)'
      'values '
      
        '( :progressivo, :data_registrazione, :art_codice, :tub_codice, :' +
        'tipo_movimento, :quantita, :documento_origine, :doc_progressivo_' +
        'origine, :doc_riga_origine, :segno , :tmo_codice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tub_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo_movimento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
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
        Name = 'segno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmo_codice'
        Value = nil
      end>
  end
  object upd_opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set tma_codice=:tma_codice'
      'where'
      'opr.progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 825
    Top = 5
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
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 880
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice=:codice'
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
    Left = 865
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object esistenza_deposito_ds: TMyDataSource
    DataSet = esistenza_deposito
    Left = 1025
  end
  object esistenza_deposito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select esistenza'
      'from mag'
      'where art_codice = :codice and tma_codice = :codice1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 995
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end>
  end
  object tmas: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione'
      'from tma'
      'where codice=:codice'
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
    Left = 915
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmas_ds: TMyDataSource
    DataSet = tmas
    Left = 930
    Top = 5
  end
end
