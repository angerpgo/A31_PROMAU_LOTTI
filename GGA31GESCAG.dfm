inherited A31GESCAG: TA31GESCAG
  Left = 282
  Top = 154
  Caption = 'A31GESCAG'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pannello_campi: TRzPanel
    inherited tab_control: TRzPageControl
      Top = 411
      Height = 80
      ExplicitTop = 411
      ExplicitHeight = 80
      FixedDimension = 21
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 22
        ExplicitWidth = 791
        ExplicitHeight = 57
        object v_l_percentuale: TRzLabel
          Left = 5
          Top = 5
          Width = 56
          Height = 13
          Caption = 'percentuale'
          ShowAccelChar = False
          Transparent = True
        end
        object v_percentuale: trzdbnumericedit_go
          Left = 5
          Top = 20
          Width = 121
          Height = 21
          Hint = 
            'percentuale di competenza del centro di imputazione [Alt+Gi'#249' per' +
            ' aprire la calcolatrice]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'percentuale'
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
          TabOrder = 0
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0.00;-,0.00;#'
        end
      end
    end
  end
  inherited pannello_codice: TRzPanel
    Height = 361
    ExplicitHeight = 361
    object Label5: TRzLabel [0]
      Left = 5
      Top = 320
      Width = 76
      Height = 13
      Caption = 'codice generale'
      FocusControl = v_gen_codice
      ShowAccelChar = False
      Transparent = True
    end
    inherited v_griglia: trzdbgrid_go
      Height = 316
      Columns = <
        item
          Expanded = False
          FieldName = 'gen_codice'
          Title.Caption = ' conto generale'
          Title.Color = clYellow
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'gen_descrizione1'
          Title.Caption = 'descrizione'
          Title.Color = clYellow
          Width = 296
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'gen_descrizione2'
          Title.Caption = 'descrizione2'
          Title.Color = clYellow
          Width = 237
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'percentuale'
          Title.Alignment = taRightJustify
          Title.Color = clYellow
          Width = 84
          Visible = True
        end>
    end
    object v_gen_codice: trzdbedit_go
      Left = 5
      Top = 335
      Width = 91
      Height = 21
      Hint = 'codice generale imputazione [F4 F5 F6]'
      DataSource = tabella_ds
      DataField = 'gen_codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      OnExit = v_gen_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_gen
      lookcollprogram = 'GESGEN'
      lookcolltable = 'GEN'
      lookcollvisname = 'GEN'
    end
    object RzDBEditDescrizione_go1: trzdbeditdescrizione_go
      Left = 100
      Top = 335
      Width = 691
      Height = 21
      Hint = '-'
      TabStop = False
      DataSource = gen_ds
      DataField = 'DESCRIZIONE'
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
  inherited pannello_codice_base: TRzPanel
    inherited Label1: TRzLabel
      Width = 69
      Caption = 'codice articolo'
      ExplicitWidth = 69
    end
    inherited Label_descrizione_base: TRzLabel
      Left = 170
      ExplicitLeft = 170
    end
    inherited v_codice_base: trzdbedit_go
      Width = 161
      Hint = 'codice articolo [F2 F4 F5 F6]'
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_gen
      lookcollprogram = 'GESART'
      lookcolltable = 'ART'
      lookcollvisname = 'ART'
      lookupdatabase = 'arc.arcdit'
      lookuptable = 'CAC'
      lookupvisname = 'CAC'
      ExplicitWidth = 161
    end
    inherited v_descrizione_base: trzdbeditdescrizione_go
      Left = 170
      Width = 621
      ExplicitLeft = 170
      ExplicitWidth = 621
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 23
        ExplicitWidth = 116
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from a31cag'
      'where art_codice = :art_codice and gen_codice = :gen_codice'
      ' '
      ' '
      ' ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'gen_codice'
        Value = nil
      end>
  end
  inherited tabella_righe: TMyQuery_go
    SQL.Strings = (
      
        'select codice, concat(trim(descrizione1), '#39' '#39', descrizione2) des' +
        'crizione'
      'from art'
      'where codice = :codice'
      ''
      ' '
      ' ')
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select cag.*, gen.descrizione1 gen_descrizione1, gen.descrizione' +
        '2 gen_descrizione2'
      'from a31cag cag'
      'inner join gen on gen.codice = cag.gen_codice'
      'where cag.art_codice = :parametro'
      '')
  end
  inherited query_codice_base: TMyQuery_go
    SQL.Strings = (
      'select codice, obsoleto'
      'from art'
      'where codice = :codice')
  end
  object gen: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select concat(trim(descrizione1), '#39' '#39', descrizione2) descrizione' +
        ', obsoleto'
      'from gen'
      'where codice = :codice'
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
  object gen_ds: TMyDataSource
    DataSet = gen
    Left = 490
    Top = 65526
  end
end
