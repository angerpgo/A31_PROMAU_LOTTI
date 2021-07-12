inherited A31ELASWING: TA31ELASWING
  Caption = 'A31ELASWING'
  ClientHeight = 289
  ClientWidth = 612
  ExplicitWidth = 618
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 612
    ExplicitWidth = 612
  end
  inherited statusbar: TStatusBar
    Top = 269
    Width = 612
    ExplicitTop = 269
    ExplicitWidth = 612
  end
  inherited tab_control: TRzPageControl
    Width = 612
    Height = 235
    ActivePage = tab_pagina2
    TabIndex = 1
    ExplicitWidth = 612
    ExplicitHeight = 235
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 610
      ExplicitHeight = 212
      inherited pannello_elaborazione: TRzPanel
        Width = 610
        Height = 212
        ExplicitWidth = 610
        ExplicitHeight = 212
        inherited pannello_parametri: TRzPanel
          Width = 610
          Height = 174
          ExplicitWidth = 610
          ExplicitHeight = 174
          object v_tutti: TcxCheckBox
            Left = 15
            Top = 4
            AutoSize = False
            Caption = 'tutti'
            Properties.Alignment = taRightJustify
            State = cbsChecked
            TabOrder = 0
            Height = 21
            Width = 105
          end
          object v_oat: TcxCheckBox
            Left = 15
            Top = 29
            AutoSize = False
            Caption = 'ordini acquisto'
            Properties.Alignment = taRightJustify
            TabOrder = 1
            Height = 21
            Width = 105
          end
          object v_dat: TcxCheckBox
            Left = 15
            Top = 49
            AutoSize = False
            Caption = 'ddt     acquisto'
            Properties.Alignment = taRightJustify
            TabOrder = 2
            Height = 21
            Width = 105
          end
          object v_fat: TcxCheckBox
            Left = 15
            Top = 69
            AutoSize = False
            Caption = 'fatture acquisto'
            Properties.Alignment = taRightJustify
            TabOrder = 3
            Height = 21
            Width = 105
          end
          object v_mag: TcxCheckBox
            Left = 141
            Top = 30
            AutoSize = False
            Caption = 'giacenza articoli'
            Properties.Alignment = taRightJustify
            TabOrder = 4
            Height = 21
            Width = 105
          end
        end
        inherited Panel4: TRzPanel
          Top = 174
          Width = 610
          ExplicitLeft = 0
          ExplicitTop = 174
          ExplicitWidth = 610
          inherited Bevel1: TBevel
            Width = 610
            ExplicitWidth = 610
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 610
      ExplicitHeight = 212
      inherited pannello_esposizione: TRzPanel
        Width = 610
        Height = 212
        ExplicitWidth = 610
        ExplicitHeight = 212
        object v_griglia: trzdbgrid_go
          Left = 0
          Top = 41
          Width = 610
          Height = 171
          Align = alClient
          DataSource = query_ds
          DrawingStyle = gdsClassic
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
        end
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 610
          Height = 41
          Align = alTop
          TabOrder = 1
          object v_in_elaborazione: TRzLabel
            Left = 15
            Top = 10
            Width = 576
            Height = 18
            AutoSize = False
            Caption = 'messaggio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object sw_cash: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT * FROM sw_cashflow_acq')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 414
    Top = 65
  end
  object pagamenti: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 414
    Top = 100
  end
  object sw_mmr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'insert into sw_mmr( data_registrazione, tmo_codice, tma_codice, ' +
        'art_codice, quantita )'
      
        'values ( :data_registrazione, :tmo_codice, :tma_codice, :art_cod' +
        'ice, :quantita )')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 414
    Top = 140
    ParamData = <
      item
        DataType = ftDate
        Name = 'data_registrazione'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'tmo_codice'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'quantita'
        Value = nil
      end>
  end
  object ese_prec: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'select * from ese'
      'where'
      'dit_codice=:dit_codice and'
      'codice=:ese_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dit_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ese_codice'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT * FROM art'
      'where'
      'obsoleto='#39'no'#39' '
      'order by art.codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 464
    Top = 100
  end
  object a31param: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from a31param'
      'where '
      'codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 464
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT * FROM tma'
      'where'
      'proprieta='#39'si'#39
      'order by tma.codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 499
    Top = 100
  end
end
