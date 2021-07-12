inherited A31MOVUBM: TA31MOVUBM
  Left = 219
  Top = 187
  Caption = 'A31MOVUBM'
  ClientHeight = 342
  ClientWidth = 877
  Menu = nil
  ExplicitWidth = 883
  ExplicitHeight = 371
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 877
    ExplicitWidth = 877
  end
  inherited statusbar: TStatusBar
    Top = 322
    Width = 877
    ExplicitTop = 322
    ExplicitWidth = 877
  end
  inherited tab_control: TRzPageControl
    Width = 877
    Height = 288
    ExplicitWidth = 877
    ExplicitHeight = 288
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 875
      ExplicitHeight = 265
      inherited pannello_elaborazione: TRzPanel
        Width = 875
        Height = 265
        ExplicitWidth = 875
        ExplicitHeight = 265
        inherited pannello_parametri: TRzPanel
          Width = 875
          Height = 227
          ExplicitWidth = 875
          ExplicitHeight = 227
          object Label2: TRzLabel
            Left = 5
            Top = 170
            Width = 104
            Height = 13
            Caption = 'nome file importazione'
            ShowAccelChar = False
            Transparent = True
          end
          object v_sfoglia: TRzRapidFireButton
            Left = 802
            Top = 185
            Width = 65
            Height = 21
            Hint = 'ricerca il modello desiderato nella cartella "report" '
            Caption = 'Sfoglia'
            OnClick = v_sfogliaClick
          end
          object Label4: TRzLabel
            Left = 5
            Top = 120
            Width = 86
            Height = 13
            Caption = 'codice movimento'
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel1: TRzLabel
            Left = 5
            Top = 65
            Width = 85
            Height = 13
            Caption = 'codice magazzino'
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel2: TRzLabel
            Left = 627
            Top = 120
            Width = 71
            Height = 13
            Caption = 'tipo movimento'
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel3: TRzLabel
            Left = 6
            Top = 5
            Width = 107
            Height = 13
            Caption = 'progressivo magazzino'
            ShowAccelChar = False
            Transparent = True
          end
          object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
            Left = 90
            Top = 134
            Width = 521
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_carico_ds
            DataField = 'descrizione'
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
            TabOrder = 4
          end
          object v_nome_file: trzedit_go
            Left = 5
            Top = 186
            Width = 771
            Height = 21
            Hint = 'nome file da importare'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 20
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_tma_codice: trzedit_go
            Left = 5
            Top = 80
            Width = 81
            Height = 21
            Hint = 'codice movimento di carico [F4 F5 F6]'
            Text = ''
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 20
            ParentFont = False
            ReadOnly = True
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
            Left = 95
            Top = 80
            Width = 516
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tma_ds
            DataField = 'descrizione'
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
            TabOrder = 3
          end
          object rzdbeditdescrizione_go1: trzdbeditdescrizione_go
            Left = 627
            Top = 135
            Width = 240
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tmo_carico_ds
            DataField = 'tipo_movimento'
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
            TabOrder = 5
          end
          object v_tmo_codice_carico: trzedit_go
            Left = 5
            Top = 134
            Width = 81
            Height = 21
            Hint = 'codice movimento di carico [F4 F5 F6]'
            Text = ''
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 20
            ParentFont = False
            ReadOnly = True
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 6
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_progressivo: trznumericedit_go
            Left = 5
            Top = 20
            Width = 65
            Height = 21
            Hint = '[Alt+Gi'#249'=apre calcolatrice]'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_progressivoExit
            IntegersOnly = False
            DisplayFormat = ',0;-,0;#'
            decimalplaces = 0
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'gesmov'
            lookcolltable = 'mmt'
            lookcollvisname = 'mmt'
          end
        end
        inherited Panel4: TRzPanel
          Top = 227
          Width = 875
          ExplicitTop = 227
          ExplicitWidth = 875
          inherited Bevel1: TBevel
            Width = 875
            ExplicitWidth = 801
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 875
      ExplicitHeight = 248
      inherited pannello_esposizione: TRzPanel
        Width = 875
        Height = 265
        ExplicitWidth = 875
        ExplicitHeight = 248
        object v_log: TMemo
          Left = 0
          Top = 0
          Width = 875
          Height = 265
          Align = alClient
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 248
        end
      end
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select mmt.progressivo, mmr.riga, mmt.data_registrazione, mmt.tm' +
        'o_codice, '
      
        'mmr.art_codice, art.descrizione1 art_descrizione1, mmr.tma_codic' +
        'e, mmr.quantita'
      'from mmt'
      'inner join mmr on mmr.progressivo=mmt.progressivo'
      'inner join art on art.codice = mmr.art_codice'
      'where mmt.progressivo=41068'
      'order by mmr.progressivo,mmr.riga')
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object OpenDialog: TOpenDialog
    Left = 535
    Top = 5
  end
  object XLSRead: TXLSReadWriteII5
    ComponentVersion = '5.20.65'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 590
    Top = 10
  end
  object tmo_carico: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, esistenza, tma_codice, tipo_movimento'
      'from tmo'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_carico_ds: TMyDataSource
    DataSet = tmo_carico
    Left = 495
  end
  object mmr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from mmr')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 435
    Top = 35
  end
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ubm'
      'where '
      'documento_origine='#39'movimenti magazzino'#39' and'
      'doc_progressivo_origine=:progressivo and'
      'doc_riga_origine=:riga and'
      'art_codice=:art_codice and'
      'tub_codice=:tub_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 485
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riga'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tub_codice'
        Value = nil
      end>
  end
  object ultima_riga: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select max(riga) riga '
      'from mmr'
      'where'
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 395
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione, tub_codice'
      'from tma'
      'where'
      'codice =:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_ds: TMyDataSource
    DataSet = tma
    Left = 430
  end
  object mmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select mmt.*, tmo.esistenza'
      'from mmt'
      'inner join tmo on tmo.codice=mmt.tmo_codice'
      'where '
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object mmt_coll: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select mmt.*, tmo.esistenza'
      'from mmt'
      'inner join tmo on tmo.codice=mmt.tmo_codice'
      'where '
      'documento_origine='#39'movimenti magazzino'#39'and'
      'doc_progressivo_origine=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
end
