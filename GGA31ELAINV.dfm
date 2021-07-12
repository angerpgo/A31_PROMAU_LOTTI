inherited A31ELAINV: TA31ELAINV
  Caption = 'A31ELAINV'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tab_control: TRzPageControl
    ActivePage = tab_pagina2
    TabIndex = 1
    FixedDimension = 21
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 990
      ExplicitHeight = 478
      inherited pannello_esposizione: TRzPanel
        object v_griglia: trzdbgrid_go
          Left = 0
          Top = 41
          Width = 990
          Height = 437
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
          Width = 990
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
  inherited query: TMyQuery_go
    Top = 65531
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object query_righe: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
  end
end
