inherited A31IMPMAG: TA31IMPMAG
  Caption = 'A31IMPMAG'
  ClientHeight = 182
  ClientWidth = 718
  ExplicitWidth = 734
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 718
    ExplicitWidth = 718
  end
  inherited statusbar: TStatusBar
    Top = 162
    Width = 718
    ExplicitTop = 162
    ExplicitWidth = 718
  end
  inherited tab_control: TRzPageControl
    Width = 718
    Height = 128
    ExplicitWidth = 718
    ExplicitHeight = 128
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 716
      ExplicitHeight = 105
      inherited pannello_elaborazione: TRzPanel
        Width = 716
        Height = 105
        ExplicitWidth = 716
        ExplicitHeight = 105
        inherited pannello_parametri: TRzPanel
          Width = 716
          Height = 67
          ExplicitWidth = 716
          ExplicitHeight = 67
          object Label2: TRzLabel
            Left = 6
            Top = 15
            Width = 41
            Height = 13
            Caption = 'file excel'
            ShowAccelChar = False
            Transparent = True
          end
          object v_nome_file: trzedit_go
            Left = 6
            Top = 30
            Width = 605
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
            TabOrder = 0
          end
          object v_sfoglia: TRzButton
            Left = 630
            Top = 28
            Caption = '&Sfoglia'
            TabOrder = 1
            OnClick = v_sfogliaClick
          end
        end
        inherited Panel4: TRzPanel
          Top = 67
          Width = 716
          ExplicitTop = 67
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
end
