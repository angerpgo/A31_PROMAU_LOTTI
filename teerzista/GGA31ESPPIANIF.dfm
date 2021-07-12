inherited A31ESPPIANIF: TA31ESPPIANIF
  Caption = 'A31ESPPIANIF'
  ClientHeight = 294
  ClientWidth = 552
  ExplicitWidth = 568
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 552
    ExplicitWidth = 552
  end
  inherited statusbar: TStatusBar
    Top = 274
    Width = 552
    ExplicitTop = 274
    ExplicitWidth = 552
  end
  inherited tab_control: TRzPageControl
    Width = 552
    Height = 240
    ExplicitWidth = 552
    ExplicitHeight = 240
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 550
      ExplicitHeight = 217
      inherited pannello_elaborazione: TRzPanel
        Width = 550
        Height = 217
        ExplicitWidth = 550
        ExplicitHeight = 217
        inherited pannello_parametri: TRzPanel
          Width = 550
          Height = 179
          ExplicitWidth = 550
          ExplicitHeight = 179
          object Label1: TRzLabel
            Left = 3
            Top = 15
            Width = 543
            Height = 71
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'Esportazione ordini clienti aperti e ordini di produzione intern' +
              'i aperti'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -24
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object v_operazione: TRzLabel
            Left = 10
            Top = 135
            Width = 541
            Height = 26
            AutoSize = False
            Caption = 'v_operazione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object v_unico_file: TCheckBox
            Left = 10
            Top = 105
            Width = 97
            Height = 17
            Caption = 'file unico'
            TabOrder = 0
          end
        end
        inherited Panel4: TRzPanel
          Top = 179
          Width = 550
          ExplicitTop = 179
          ExplicitWidth = 550
          inherited Bevel1: TBevel
            Width = 550
            ExplicitWidth = 550
          end
        end
      end
    end
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object xlswrite: TXLSReadWriteII5
    ComponentVersion = '5.20.65'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 25
    Top = 65
  end
end
