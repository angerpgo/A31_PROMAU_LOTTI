inherited A31IMPCLS: TA31IMPCLS
  Caption = 'A31IMPCLS'
  ClientHeight = 239
  ClientWidth = 718
  ExplicitWidth = 734
  ExplicitHeight = 298
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 718
    ExplicitWidth = 718
  end
  inherited statusbar: TStatusBar
    Top = 219
    Width = 718
    ExplicitTop = 219
    ExplicitWidth = 718
  end
  inherited tab_control: TRzPageControl
    Width = 718
    Height = 185
    ExplicitWidth = 718
    ExplicitHeight = 185
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 716
      ExplicitHeight = 162
      inherited pannello_elaborazione: TRzPanel
        Width = 716
        Height = 162
        ExplicitWidth = 716
        ExplicitHeight = 162
        inherited pannello_parametri: TRzPanel
          Width = 716
          Height = 124
          ExplicitWidth = 716
          ExplicitHeight = 124
          object Label2: TRzLabel
            Left = 6
            Top = 60
            Width = 41
            Height = 13
            Caption = 'file excel'
            ShowAccelChar = False
            Transparent = True
          end
          object Label1: TRzLabel
            Left = 6
            Top = 0
            Width = 66
            Height = 13
            Caption = 'codice cliente'
            ShowAccelChar = False
            Transparent = True
          end
          object v_nome_file: trzedit_go
            Left = 6
            Top = 75
            Width = 396
            Height = 21
            Text = ''
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
          end
          object v_sfoglia: TRzButton
            Left = 425
            Top = 73
            Caption = '&Sfoglia'
            TabOrder = 3
            OnClick = v_sfogliaClick
          end
          object v_cli_codice: trzedit_go
            Left = 6
            Top = 17
            Width = 148
            Height = 21
            Hint = 'codice documento[F4 F5 F6]'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_cli_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcolltable = 'CLI'
            lookcollvisname = 'CLI'
          end
          object v_cli_descrizione1: trzdbeditdescrizione_go
            Left = 190
            Top = 18
            Width = 326
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = cli_ds
            DataField = 'DESCRIZIONE1'
            ReadOnly = True
            AutoSize = False
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
          end
        end
        inherited Panel4: TRzPanel
          Top = 124
          Width = 716
          ExplicitTop = 124
          ExplicitWidth = 716
          inherited Bevel1: TBevel
            Width = 716
            ExplicitWidth = 716
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 716
      ExplicitHeight = 327
      inherited pannello_esposizione: TRzPanel
        Width = 716
        Height = 327
        ExplicitWidth = 716
        ExplicitHeight = 327
        object v_messaggio: TMemo
          Left = 0
          Top = 0
          Width = 716
          Height = 327
          Align = alClient
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object xlsread: TXLSReadWriteII5
    ComponentVersion = '5.20.65'
    Version = xvExcel97
    DirectRead = False
    DirectWrite = False
    Left = 395
    Top = 5
  end
  object xlsdialog: TRzOpenDialog
    Filter = 'Excel|*.xls'
    Left = 435
    Top = 5
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 465
    Top = 50
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cli'
      'where'
      'codice=:codice'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 514
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
end
