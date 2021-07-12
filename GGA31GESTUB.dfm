inherited A31GESTUB: TA31GESTUB
  Caption = 'A31GESTUB'
  ClientHeight = 370
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    ExplicitWidth = 901
  end
  inherited statusbar: TStatusBar
    Top = 350
    ExplicitTop = 350
    ExplicitWidth = 901
  end
  inherited pannello_campi: TRzPanel
    Height = 316
    ExplicitWidth = 783
    ExplicitHeight = 316
    inherited Label2: TRzLabel
      Left = 295
      Top = 6
      ExplicitLeft = 295
      ExplicitTop = 6
    end
    inherited tab_control: TRzPageControl
      Top = 52
      Height = 264
      ExplicitTop = 52
      ExplicitWidth = 783
      ExplicitHeight = 264
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = -3
        ExplicitWidth = 781
        ExplicitHeight = 244
        inherited Label5: TRzLabel
          Top = 191
          ExplicitTop = 191
        end
        object l_a31tsu: TRzLabel [1]
          Left = 5
          Top = 48
          Width = 92
          Height = 13
          Caption = 'struttura ubicazione'
          FocusControl = v_a31tsu_codice_01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object RzLabel1: TRzLabel [2]
          Left = 295
          Top = 2
          Width = 82
          Height = 13
          Caption = 'codice PROMAU'
          Transparent = True
        end
        inherited v_ubicazione_unica: TRzDBCheckBox
          Left = 3
          Top = 17
          ExplicitLeft = 3
          ExplicitTop = 17
        end
        inherited v_tma_codice: trzdbedit_go
          Top = 208
          TabOrder = 8
          ExplicitTop = 208
        end
        inherited v_tva_descrizione: trzdbeditdescrizione_go
          Left = 84
          Top = 208
          TabOrder = 9
          ExplicitLeft = 84
          ExplicitTop = 208
        end
        object v_a31tsu_codice_01: trzdbedit_go
          Left = 5
          Top = 63
          Width = 40
          Height = 21
          Hint = 'codice 1 livello struttura ubicazione [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31tsu_codice_01'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 2
          OnExit = v_a31tsu_codice_01Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'A31GESTSU'
          lookcolltable = 'A31TSU'
          lookcollvisname = 'A31TSU'
        end
        object v_a31tsu_codice_02: trzdbedit_go
          Left = 5
          Top = 88
          Width = 40
          Height = 21
          Hint = 'codice 2 livello struttura ubicazione [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31tsu_codice_02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 3
          OnExit = v_a31tsu_codice_02Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'A31GESTSU'
          lookcolltable = 'A31TSU'
          lookcollvisname = 'A31TSU'
        end
        object v_a31tsu_codice_03: trzdbedit_go
          Left = 5
          Top = 113
          Width = 40
          Height = 21
          Hint = 'codice 3 livello struttura ubicazione [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31tsu_codice_03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          OnExit = v_a31tsu_codice_03Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'A31GESTSU'
          lookcolltable = 'A31TSU'
          lookcollvisname = 'A31TSU'
        end
        object v_a31tsu_codice_04: trzdbedit_go
          Left = 5
          Top = 138
          Width = 40
          Height = 21
          Hint = 'codice 4 livello struttura ubicazione [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31tsu_codice_04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 5
          OnExit = v_a31tsu_codice_04Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'A31GESTSU'
          lookcolltable = 'A31TSU'
          lookcollvisname = 'A31TSU'
        end
        object v_a31tsu_codice_05: trzdbedit_go
          Left = 6
          Top = 163
          Width = 40
          Height = 21
          Hint = 'codice 4 livello struttura ubicazione [F4 F5 F6]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31tsu_codice_05'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 6
          OnExit = v_a31tsu_codice_05Exit
          lookcolldatabase = 'arc.arcdit'
          lookcollpopupmenu = ARC.pop_arc
          lookcollprogram = 'A31GESTSU'
          lookcolltable = 'A31TSU'
          lookcollvisname = 'A31TSU'
        end
        object v_a31tsu_descrizione_05: trzdbeditdescrizione_go
          Left = 50
          Top = 163
          Width = 403
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = a31tsu_ds
          DataField = 'tsu_descrizione5'
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
        object v_a31tsu_descrizione_01: trzdbeditdescrizione_go
          Left = 49
          Top = 63
          Width = 403
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = a31tsu_ds
          DataField = 'tsu_descrizione1'
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
          TabOrder = 10
        end
        object v_a31tsu_descrizione_02: trzdbeditdescrizione_go
          Left = 50
          Top = 88
          Width = 403
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = a31tsu_ds
          DataField = 'tsu_descrizione2'
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
        object v_a31tsu_descrizione_03: trzdbeditdescrizione_go
          Left = 50
          Top = 113
          Width = 403
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = a31tsu_ds
          DataField = 'tsu_descrizione3'
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
        object v_a31tsu_descrizione_04: trzdbeditdescrizione_go
          Left = 50
          Top = 138
          Width = 403
          Height = 21
          Hint = '-'
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataSource = a31tsu_ds
          DataField = 'tsu_descrizione4'
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
        object v_codiec_alternativo: trzdbedit_go
          Left = 295
          Top = 15
          Width = 325
          Height = 21
          Hint = 'descrizione'
          DataSource = tabella_ds
          DataField = 'codice_alternativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          OnExit = v_descrizioneExit
        end
      end
    end
    inherited v_descrizione: trzdbedit_go
      Left = 295
      ExplicitLeft = 295
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 296
    ExplicitWidth = 296
    inherited v_codice: trzdbedit_go
      Width = 270
      ExplicitWidth = 270
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Height = 316
    ExplicitLeft = 783
    ExplicitHeight = 316
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Height = 290
      ExplicitHeight = 290
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitHeight = 266
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitHeight = 266
      end
      inherited tab_pannello_ricerca: TRzTabSheet
        ExplicitHeight = 266
        inherited lbl_hint: TRzLabel
          Height = 198
          ExplicitHeight = 193
        end
        inherited pannello_ricerca: TRzPanel
          inherited lbl_indice: TRzLabel
            Width = 50
            Height = 24
          end
        end
      end
    end
  end
  object a31tsu: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'tsu.CODICE_01,'
      'tsu.CODICE_02,'
      'tsu.CODICE_03,'
      'tsu.CODICE_04,'
      'tsu.CODICE_05,'
      'tsu1.codice_01,'
      'tsu1.descrizione tsu_descrizione1,'
      
        'if(tsu2.codice_02='#39#39'  and tsu2.codice_03='#39#39'  and tsu2.codice_04=' +
        #39#39' and tsu2.codice_05='#39#39','#39#39', tsu2.descrizione) tsu_descrizione2,'
      
        'if(tsu3.codice_03='#39#39'  and tsu3.codice_04='#39#39'  and tsu3.codice_05=' +
        #39#39','#39#39', tsu3.descrizione) tsu_descrizione3,'
      
        'if(tsu4.codice_04='#39#39'  and tsu4.codice_05='#39#39','#39#39', tsu4.descrizione' +
        ') tsu_descrizione4,'
      'if(tsu5.codice_05='#39#39','#39#39', tsu5.descrizione) tsu_descrizione5'
      ''
      'FROM A31TSU TSU'
      
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
      ''
      'where'
      'tsu.codice_01 =:codice_01 and '
      'tsu.codice_02=:codice_02 and '
      'tsu.codice_03 =:codice_03 and '
      'tsu.codice_04=:codice_04 and '
      'tsu.codice_05=:codice_05')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 595
    Top = 265
    ParamData = <
      item
        DataType = ftString
        Name = 'codice_01'
        Value = 'P4'
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
  object a31tsu_ds: TMyDataSource
    DataSet = a31tsu
    Left = 565
    Top = 165
  end
end
