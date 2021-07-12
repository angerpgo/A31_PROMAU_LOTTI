inherited A31IMPUBM: TA31IMPUBM
  Left = 219
  Top = 187
  Caption = 'A31IMPUBM'
  ClientHeight = 325
  ClientWidth = 877
  Menu = nil
  ExplicitWidth = 893
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 877
    ExplicitWidth = 877
  end
  inherited statusbar: TStatusBar
    Top = 305
    Width = 877
    ExplicitTop = 305
    ExplicitWidth = 877
  end
  inherited tab_control: TRzPageControl
    Width = 877
    Height = 271
    ExplicitWidth = 877
    ExplicitHeight = 271
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitWidth = 875
      ExplicitHeight = 248
      inherited pannello_elaborazione: TRzPanel
        Width = 875
        Height = 248
        ExplicitWidth = 875
        ExplicitHeight = 248
        inherited pannello_parametri: TRzPanel
          Width = 875
          Height = 210
          ExplicitWidth = 875
          ExplicitHeight = 210
          object Label2: TRzLabel
            Left = 5
            Top = 140
            Width = 104
            Height = 13
            Caption = 'nome file importazione'
            ShowAccelChar = False
            Transparent = True
          end
          object v_sfoglia: TRzRapidFireButton
            Left = 802
            Top = 155
            Width = 65
            Height = 21
            Hint = 'ricerca il modello desiderato nella cartella "report" '
            Caption = 'Sfoglia'
            OnClick = v_sfogliaClick
          end
          object Label4: TRzLabel
            Left = 5
            Top = 55
            Width = 86
            Height = 13
            Caption = 'codice movimento'
            ShowAccelChar = False
            Transparent = True
          end
          object Label8: TRzLabel
            Left = 5
            Top = 100
            Width = 75
            Height = 13
            Caption = 'data movimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = False
          end
          object RzLabel1: TRzLabel
            Left = 5
            Top = 5
            Width = 85
            Height = 13
            Caption = 'codice magazzino'
            ShowAccelChar = False
            Transparent = True
          end
          object RzLabel2: TRzLabel
            Left = 627
            Top = 58
            Width = 71
            Height = 13
            Caption = 'tipo movimento'
            ShowAccelChar = False
            Transparent = True
          end
          object v_tmo_codice_carico: trzedit_go
            Left = 5
            Top = 74
            Width = 81
            Height = 21
            Hint = 'codice movimento di carico [F4 F5 F6]'
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
            TabOrder = 2
            OnExit = v_tmo_codice_caricoExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object RzDBEditDescrizione_go4: trzdbeditdescrizione_go
            Left = 90
            Top = 74
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
            TabOrder = 3
          end
          object v_data: trzdatetimeedit_go
            Left = 5
            Top = 115
            Width = 81
            Height = 21
            Hint = 'data del movimento di chiusura'
            CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
            CaptionTodayBtn = 'oggi'
            CaptionClearBtn = 'annulla'
            EditType = etDate
            AutoSelect = False
            DropButtonVisible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 4
          end
          object v_nome_file: trzedit_go
            Left = 5
            Top = 156
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
            TabOrder = 5
            OnExit = v_tmo_codice_caricoExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object v_tma_codice: trzedit_go
            Left = 5
            Top = 20
            Width = 81
            Height = 21
            Hint = 'codice movimento di carico [F4 F5 F6]'
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
            TabOrder = 0
            OnExit = v_tma_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcollprogram = 'GESTMO'
            lookcolltable = 'TMO'
            lookcollvisname = 'TMO'
          end
          object trzdbeditdescrizione_go1: trzdbeditdescrizione_go
            Left = 95
            Top = 20
            Width = 521
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
            TabOrder = 1
          end
          object rzdbeditdescrizione_go1: trzdbeditdescrizione_go
            Left = 625
            Top = 74
            Width = 226
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
            TabOrder = 6
          end
        end
        inherited Panel4: TRzPanel
          Top = 210
          Width = 875
          ExplicitTop = 210
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
      ExplicitHeight = 148
      inherited pannello_esposizione: TRzPanel
        Width = 875
        Height = 228
        ExplicitWidth = 875
        ExplicitHeight = 148
        object v_log: TMemo
          Left = 0
          Top = 0
          Width = 875
          Height = 228
          Align = alClient
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 345
          ExplicitTop = 30
          ExplicitWidth = 185
          ExplicitHeight = 89
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
  object ubm_giac: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'mmr.tma_codice,'
      'ubm.art_codice,'
      'ubm.tub_codice,'
      
        'sum(ubm.quantita*(case when ubm.tipo_movimento='#39'carico'#39' then 1 e' +
        'lse -1 end)) quantita'
      'from ubm'
      
        'inner join mmr on mmr.PROGRESSIVO=ubm.doc_progressivo_origine an' +
        'd mmr.RIGA=ubm.doc_riga_origine and ubm.documento_origine='#39'movim' +
        'enti magazzino'#39
      'where'
      'mmr.tma_codice=:tma_codice and'
      'ubm.art_codice=:art_codice and'
      'ubm.tub_codice=:tub_codice and'
      'ubm.tipo_movimento in ( '#39'carico'#39', '#39'scarico'#39' )'
      'group by mmr.tma_codice,ubm.art_codice,  ubm.tub_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tma_codice'
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
end
