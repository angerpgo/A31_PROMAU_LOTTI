inherited A31GESART: TA31GESART
  Caption = 'A31GESART'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pannello_campi: TRzPanel
    inherited tab_control: TRzPageControl
      ActivePage = tab_personalizzati
      TabIndex = 7
      FixedDimension = 18
      inherited tab_pagina2: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 872
        ExplicitHeight = 526
        inherited GroupBox3: TGroupBox
          inherited v_descrizione2_lingua_01: trzdbedit_go
            Left = 485
            Top = 25
            ExplicitLeft = 485
            ExplicitTop = 25
          end
        end
        inherited v_peso_netto: trzdbnumericedit_go
          Left = 94
          CheckRange = True
          ExplicitLeft = 94
        end
        inherited tab_control_note: TRzPageControl
          ActivePage = tab_pagina2_note
          TabIndex = 1
          FixedDimension = 20
          inherited tab_pagina1_note: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 724
            ExplicitHeight = 99
          end
          inherited tab_pagina2_note: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 724
            ExplicitHeight = 99
          end
          inherited tab_pagina3_note: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 724
            ExplicitHeight = 99
            inherited DBMemo2: trzdbmemo_go
              Width = 724
              Height = 99
              ExplicitWidth = 724
              ExplicitHeight = 99
            end
          end
          inherited tab_pagina4_note: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 724
            ExplicitHeight = 99
            inherited DBMemo3: trzdbmemo_go
              Width = 724
              Height = 99
              ExplicitWidth = 724
              ExplicitHeight = 99
            end
          end
          inherited tab_pagina5_note: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 724
            ExplicitHeight = 99
          end
          inherited tab_pagina6_note: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 724
            ExplicitHeight = 99
          end
        end
      end
      inherited tab_pagina3: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 872
        ExplicitHeight = 526
      end
      inherited tab_pagina4: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 872
        ExplicitHeight = 526
      end
      inherited tab_pagina5: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 872
        ExplicitHeight = 526
        inherited tab_control_breve: TRzPageControl
          FixedDimension = 20
          inherited tab_pagina1_breve: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
          end
          inherited tab_pagina2_breve: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
          end
          inherited tab_pagina3_breve: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
            inherited trzdbmemo_go3: trzdbmemo_go
              Width = 424
              Height = 104
              ExplicitWidth = 424
              ExplicitHeight = 104
            end
          end
          inherited tab_pagina4_breve: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
            inherited trzdbmemo_go4: trzdbmemo_go
              Width = 424
              ExplicitWidth = 424
            end
          end
          inherited tab_pagina5_breve: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
            inherited trzdbmemo_go5: trzdbmemo_go
              Width = 424
              Height = 104
              ExplicitWidth = 424
              ExplicitHeight = 104
            end
          end
          inherited tab_pagina6_breve: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
            inherited trzdbmemo_go6: trzdbmemo_go
              Width = 424
              Height = 104
              ExplicitWidth = 424
              ExplicitHeight = 104
            end
          end
        end
        inherited tab_control_estesa: TRzPageControl
          FixedDimension = 20
          inherited tab_pagina1_estesa: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
          end
          inherited tab_pagina2_estesa: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
            inherited trzdbmemo_go7: trzdbmemo_go
              ExplicitHeight = 104
            end
          end
          inherited tab_pagina3_estesa: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
            inherited trzdbmemo_go8: trzdbmemo_go
              ExplicitHeight = 104
            end
          end
          inherited tab_pagina4_estesa: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
          end
          inherited tab_pagina5_estesa: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
            inherited trzdbmemo_go10: trzdbmemo_go
              ExplicitHeight = 104
            end
          end
          inherited tab_pagina6_estesa: TRzTabSheet
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 424
            ExplicitHeight = 104
          end
        end
      end
      inherited tab_colore_codice_barre: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 872
        ExplicitHeight = 526
      end
      inherited tab_modelli_stampa: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        ExplicitWidth = 872
        ExplicitHeight = 526
      end
      object tab_personalizzati: TRzTabSheet
        Caption = 'personalizzati'
        ExplicitLeft = -3
        ExplicitTop = 14
        object l_a31art_codice_imballo: TRzLabel
          Left = 5
          Top = 48
          Width = 67
          Height = 13
          Caption = 'codice imballo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object l_a31_codice_stampo: TRzLabel
          Left = 5
          Top = 10
          Width = 69
          Height = 13
          Caption = 'codice stampo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object l_a31_note_imballo: TRzLabel
          Left = 5
          Top = 95
          Width = 56
          Height = 13
          Caption = 'note imballo'
          FocusControl = v_a31_note_imballo
          ShowAccelChar = False
          Transparent = True
        end
        object v_a31art_codice_stampo: trzdbedit_go
          Left = 5
          Top = 23
          Width = 191
          Height = 21
          Hint = 'codice articolo stampo[F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31art_codice_stampo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_a31art_codice_stampoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESART'
          lookcolltable = 'ART'
          lookcollvisname = 'ART'
        end
        object v_a31art_descrizione_stampo: trzdbeditdescrizione_go
          Left = 205
          Top = 23
          Width = 661
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_stampo_ds
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
        object v_a31art_codice_imballo: trzdbedit_go
          Left = 5
          Top = 63
          Width = 191
          Height = 21
          Hint = 'codice articolo imballo [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31art_codice_imballo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_a31art_codice_imballoExit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'GESART'
          lookcolltable = 'ART'
          lookcollvisname = 'ART'
        end
        object v_a31art_descrizione_imballo: trzdbeditdescrizione_go
          Left = 200
          Top = 63
          Width = 661
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = art_imb_ds
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
        object v_a31_note_imballo: trzdbedit_go
          Left = 5
          Top = 110
          Width = 656
          Height = 21
          Hint = 
            'titolo pagina articolo in virtuemart prioritaria sulla descrizio' +
            'ne articolo'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'titolo_pagina_virtuemart'
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
        object RzDBCheckBox1: TRzDBCheckBox
          Left = 770
          Top = 112
          Width = 88
          Height = 15
          Hint = 
            'spunta per eseguire sempre la gestione della descrizione su docu' +
            'menti vendita e acquisto'
          DataField = 'a31_peso_verificato'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'peso verificato'
          TabOrder = 5
        end
        object RzDBCheckBox2: TRzDBCheckBox
          Left = 10
          Top = 161
          Width = 115
          Height = 15
          Hint = 
            'spunta per eseguire sempre la gestione della descrizione su docu' +
            'menti vendita e acquisto'
          DataField = 'a31_etichetta_in'
          DataSource = tabella_ds
          ValueChecked = 'si'
          ValueUnchecked = 'no'
          Caption = 'etichetta in per FIFO'
          TabOrder = 6
        end
      end
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        object v_a31gescpa: TRzRapidFireButton
          Left = -3
          Top = 124
          Width = 114
          Height = 21
          Hint = 'gestione contropartite di vendita a percentuale'
          Caption = 'c/p vendita %'
          OnClick = v_a31gescpaClick
        end
      end
      inherited tab_pannello_ricerca: TRzTabSheet
        inherited pannello_ricerca: TRzPanel
          inherited lbl_indice: TRzLabel
            Width = 50
            Height = 24
          end
        end
      end
    end
  end
  inherited vuo: TMyQuery_go
    Left = 812
  end
  object art_stampo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', descrizione2) d' +
        'escrizione, tipo_articolo'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 650
    Top = 485
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_stampo_ds: TMyDataSource
    DataSet = art_stampo
    Left = 690
    Top = 485
  end
  object art_imb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', descrizione2) d' +
        'escrizione, tipo_articolo'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 655
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_imb_ds: TMyDataSource
    DataSet = art_imb
    Left = 695
    Top = 530
  end
end
