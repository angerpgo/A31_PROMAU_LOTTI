inherited A31ASSTIN: TA31ASSTIN
  Caption = 'A31ASSTIN'
  ClientHeight = 268
  ClientWidth = 552
  ExplicitWidth = 558
  ExplicitHeight = 316
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 552
    ExplicitWidth = 552
  end
  inherited statusbar: TStatusBar
    Top = 248
    Width = 552
    ExplicitTop = 248
    ExplicitWidth = 552
  end
  inherited tab_control: TRzPageControl
    Width = 552
    Height = 214
    ExplicitWidth = 552
    ExplicitHeight = 214
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 550
      ExplicitHeight = 191
      inherited pannello_elaborazione: TRzPanel
        Width = 550
        Height = 191
        ExplicitWidth = 550
        ExplicitHeight = 191
        inherited pannello_parametri: TRzPanel
          Width = 550
          Height = 153
          ExplicitWidth = 550
          ExplicitHeight = 153
          object Label1: TRzLabel
            Left = 3
            Top = 15
            Width = 543
            Height = 71
            Alignment = taCenter
            AutoSize = False
            Caption = 'ASSEGNAZIONE CATEGORIA INVENTARIO ARTICOLI DI  PRODUZIONE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -24
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object v_operazione: TRzLabel
            Left = 5
            Top = 105
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
        end
        inherited Panel4: TRzPanel
          Top = 153
          Width = 550
          ExplicitTop = 153
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
end
