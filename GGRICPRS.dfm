inherited RICPRS: TRICPRS
  Left = 341
  Top = 228
  Caption = 'RICPRS'
  ClientHeight = 277
  ClientWidth = 609
  ExplicitWidth = 615
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 609
    ExplicitWidth = 609
  end
  inherited statusbar: TStatusBar
    Top = 257
    Width = 609
    ExplicitTop = 257
    ExplicitWidth = 609
  end
  inherited tab_control: TRzPageControl
    Width = 609
    Height = 223
    ExplicitWidth = 609
    ExplicitHeight = 223
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 607
      ExplicitHeight = 200
      inherited pannello_elaborazione: TRzPanel
        Width = 607
        Height = 200
        ExplicitWidth = 607
        ExplicitHeight = 200
        inherited ProgressBar: TProgressBar
          Left = 565
          Top = 26
          TabOrder = 1
          ExplicitLeft = 565
          ExplicitTop = 26
        end
        inherited pannello_parametri: TRzPanel
          Width = 607
          Height = 156
          TabOrder = 0
          ExplicitWidth = 607
          ExplicitHeight = 156
          object Label1: TRzLabel
            Left = 3
            Top = 20
            Width = 543
            Height = 41
            Alignment = taCenter
            AutoSize = False
            Caption = 'RICOSTRUZIONE PROGRESSIVI (PRS)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -24
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TRzLabel
            Left = 5
            Top = 65
            Width = 541
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Ricrea i progressivi delle tabelle di gestionale open'
          end
          object v_operazione: TRzLabel
            Left = 5
            Top = 105
            Width = 541
            Height = 26
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        inherited Panel4: TRzPanel
          Top = 156
          Width = 607
          Height = 44
          ExplicitTop = 156
          ExplicitWidth = 607
          ExplicitHeight = 44
          inherited Bevel1: TBevel
            Width = 607
            ExplicitWidth = 601
          end
          inherited v_esci: TRzRapidFireButton
            Left = 98
            Top = 11
            ExplicitLeft = 98
            ExplicitTop = 11
          end
          inherited v_conferma: TRzBitBtn
            Left = 8
            Top = 11
            ExplicitLeft = 8
            ExplicitTop = 11
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      inherited pannello_esposizione: TRzPanel
        Width = 607
        Height = 200
        ExplicitWidth = 607
        ExplicitHeight = 200
        object v_messaggio: TRzLabel
          Left = 24
          Top = 0
          Width = 569
          Height = 25
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object v_griglia: trzdbgrid_go
          Left = 0
          Top = 46
          Width = 607
          Height = 154
          Align = alBottom
          DataSource = tabella_ds
          DrawingStyle = gdsClassic
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
        end
      end
    end
  end
  inherited Popup_griglia: TPopupMenu
    Left = 406
  end
  inherited sor: TMyTable
    Left = 454
  end
  inherited sor1: TMyTable
    Left = 324
    Top = 65528
  end
  inherited sor2: TMyTable
    Left = 302
    Top = 65528
  end
  inherited sor_ds: TMyDataSource
    Left = 344
    Top = 65528
  end
  inherited sor1_ds: TMyDataSource
    Left = 354
    Top = 65528
  end
  inherited sor2_ds: TMyDataSource
    Left = 364
    Top = 65528
  end
  inherited query: TMyQuery_go
    Left = 252
    Top = 65525
  end
  inherited query_ds: TMyDataSource
    Left = 577
    Top = 65527
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object prs: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'select *'
      'from prs'
      'where codice_ditta = :codice_ditta and codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 482
    Top = 65525
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_ditta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object prs_delete: TMyQuery_go
    Connection = ARC.arc
    SQL.Strings = (
      'delete from prs'
      'where codice_ditta = :codice_ditta'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 517
    Top = 65525
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice_ditta'
        Value = nil
      end>
  end
end
