inherited A31GESTSU: TA31GESTSU
  Left = 356
  Top = 210
  Caption = 'A31GESTSU'
  ClientHeight = 233
  ClientWidth = 781
  ExplicitWidth = 787
  ExplicitHeight = 282
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 781
    ExplicitWidth = 781
    object v_treeview: TToolButton
      Left = 589
      Top = 0
      Hint = 'visualizza struttura ad albero ubicazioni magazzino'
      Caption = 'v_treeview'
      ImageIndex = 37
      OnClick = v_treeviewClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 213
    Width = 781
    ExplicitTop = 213
    ExplicitWidth = 781
  end
  inherited pannello_campi: TRzPanel
    Width = 663
    Height = 179
    ExplicitWidth = 663
    ExplicitHeight = 179
    object Label2: TRzLabel [0]
      Left = 240
      Top = 5
      Width = 53
      Height = 13
      Caption = 'descrizione'
      FocusControl = v_descrizione
      ShowAccelChar = False
      Transparent = True
    end
    inherited tab_control: TRzPageControl
      Top = 50
      Width = 663
      Height = 129
      TabOrder = 1
      ExplicitTop = 50
      ExplicitWidth = 663
      ExplicitHeight = 129
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = -3
        ExplicitTop = 14
        ExplicitWidth = 661
        ExplicitHeight = 109
        object RzLabel1: TRzLabel
          Left = 5
          Top = 50
          Width = 29
          Height = 13
          Caption = 'ordine'
        end
        object RzLabel2: TRzLabel
          Left = 3
          Top = 7
          Width = 75
          Height = 13
          Caption = 'codifica promau'
          Transparent = True
        end
        object v_ordine: trzdbnumericedit_go
          Left = 5
          Top = 66
          Width = 65
          Height = 21
          Hint = '[Alt+Gi'#249'=apre calcolatrice]'
          DataSource = tabella_ds
          DataField = 'ordine'
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 1
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
        object v_codifica_promau: trzdbedit_go
          Left = 5
          Top = 23
          Width = 443
          Height = 21
          Hint = 'descrizione breve'
          DataSource = tabella_ds
          DataField = 'CODIFICA_PROMAU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 0
          OnExit = v_descrizioneExit
        end
      end
    end
    object v_descrizione: trzdbedit_go
      Left = 240
      Top = 20
      Width = 410
      Height = 21
      Hint = 'descrizione '
      DataSource = tabella_ds
      DataField = 'descrizione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnExit = v_descrizioneExit
    end
  end
  inherited pannello_codice: TRzPanel
    Width = 221
    ExplicitWidth = 221
    object Label1: TRzLabel
      Left = 5
      Top = 5
      Width = 32
      Height = 13
      Caption = 'codice'
      FocusControl = v_codice_01
      ShowAccelChar = False
      Transparent = True
    end
    object v_codice_01: trzdbedit_go
      Left = 5
      Top = 20
      Width = 40
      Height = 21
      Hint = 'codice del primo livello del piano dei conti (mastro) [F2 F3]'
      DataSource = tabella_ds
      DataField = 'codice_01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnExit = v_codice_01Exit
      lookcolldatabase = 'arc.arcdit'
      lookcollprogram = 'GESTMA'
      lookcolltable = 'A31TSU'
      lookcollvisname = 'TMA'
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'A31TSU'
      lookupvisname = 'A31TSU'
    end
    object v_codice_02: trzdbedit_go
      Left = 47
      Top = 20
      Width = 40
      Height = 21
      Hint = 'codice del secondo livello del piano dei conti (gruppo) [F2 F3]'
      DataSource = tabella_ds
      DataField = 'codice_02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      OnExit = v_codice_02Exit
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'A31TSU'
      lookupvisname = 'A31TSU'
    end
    object v_codice_03: trzdbedit_go
      Left = 89
      Top = 20
      Width = 40
      Height = 21
      Hint = 
        'codice del terzo livello del piano dei conti (sottogruppo) [F2 F' +
        '3]'
      DataSource = tabella_ds
      DataField = 'codice_03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      OnExit = v_codice_03Exit
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'A31TSU'
      lookupvisname = 'A31TSU'
    end
    object v_codice_04: trzdbedit_go
      Left = 131
      Top = 20
      Width = 40
      Height = 21
      Hint = 'codice del quarto livello del piano dei conti (conto) [F2 F3]'
      DataSource = tabella_ds
      DataField = 'codice_04'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
      OnExit = v_codice_04Exit
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'A31TSU'
      lookupvisname = 'A31TSU'
    end
    object v_codice_05: trzdbedit_go
      Left = 173
      Top = 20
      Width = 40
      Height = 21
      Hint = 'codice del quarto livello del piano dei conti (conto) [F2 F3]'
      DataSource = tabella_ds
      DataField = 'codice_05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 4
      OnExit = v_codice_05Exit
      lookupdatabase = 'arc.arcdit'
      lookuppopupmenu = ARC.pop_arc
      lookuptable = 'A31TSU'
      lookupvisname = 'A31TSU'
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    Left = 663
    Height = 179
    ExplicitLeft = 663
    ExplicitHeight = 179
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      Height = 153
      ExplicitHeight = 153
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 23
        ExplicitWidth = 116
        ExplicitHeight = 129
      end
      inherited tab_pannello_bottoni_nuovi_extra: TRzTabSheet
        ExplicitHeight = 129
      end
      inherited tab_pannello_ricerca: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 23
        ExplicitWidth = 116
        ExplicitHeight = 129
        inherited lbl_hint: TRzLabel
          Height = 61
          ExplicitHeight = 61
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
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from a31tsu'
      
        'where codice_01 = :codice_01 and codice_02 = :codice_02 and codi' +
        'ce_03 = :codice_03 and codice_04 = :codice_04 and codice_05 = :c' +
        'odice_05'
      ''
      ' '
      ' ')
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
  object query_ri: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 135
    Top = 140
  end
end
