inherited STOORDP: TSTOORDP
  Left = 355
  Top = 185
  Caption = 'STOORDP'
  ClientHeight = 251
  ClientWidth = 644
  ExplicitWidth = 660
  ExplicitHeight = 310
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 644
    ExplicitWidth = 644
  end
  inherited statusbar: TStatusBar
    Top = 231
    Width = 644
    ExplicitTop = 231
    ExplicitWidth = 644
  end
  inherited tab_control: TRzPageControl
    Width = 644
    Height = 197
    ExplicitWidth = 644
    ExplicitHeight = 197
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 642
      ExplicitHeight = 174
      inherited pannello_elaborazione: TRzPanel
        Width = 642
        Height = 174
        ExplicitWidth = 642
        ExplicitHeight = 174
        inherited ProgressBar: TProgressBar
          Left = 495
          Top = 45
          ExplicitLeft = 495
          ExplicitTop = 45
        end
        inherited pannello_parametri: TRzPanel
          Width = 642
          Height = 136
          ExplicitWidth = 642
          ExplicitHeight = 136
          object Label9: TRzLabel
            Left = 5
            Top = 5
            Width = 70
            Height = 13
            Caption = 'dal documento'
            ShowAccelChar = False
            Transparent = True
          end
          object Label10: TRzLabel
            Left = 125
            Top = 5
            Width = 64
            Height = 13
            Caption = 'al documento'
            ShowAccelChar = False
            Transparent = True
          end
          object Label11: TRzLabel
            Left = 5
            Top = 45
            Width = 102
            Height = 13
            Caption = 'dalla data documento'
            ShowAccelChar = False
            Transparent = True
          end
          object Label12: TRzLabel
            Left = 125
            Top = 45
            Width = 96
            Height = 13
            Caption = 'alla data documento'
            ShowAccelChar = False
            Transparent = True
          end
          object v_dal_numero_documento: trznumericedit_go
            Left = 5
            Top = 20
            Width = 101
            Height = 21
            Hint = 'numero documento di inizio selezione [F4]'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 9
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnChange = v_dal_numero_documentoChange
            IntegersOnly = False
            DisplayFormat = '0'
            decimalplaces = 0
            lookcolltable = 'OPT'
          end
          object v_al_numero_documento: trznumericedit_go
            Left = 125
            Top = 20
            Width = 101
            Height = 21
            Hint = 'numero documento di fine selezione [F4]'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 9
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
            OnChange = v_al_numero_documentoChange
            OnEnter = v_al_numero_documentoEnter
            IntegersOnly = False
            DisplayFormat = '0'
            decimalplaces = 0
            lookcolltable = 'OPT'
          end
          object v_dalla_data_documento: trzdatetimeedit_go
            Left = 5
            Top = 60
            Width = 101
            Height = 21
            Hint = 
              'data documento di inizio selezione [Alt+Gi'#249' per aprire il calend' +
              'ario]'
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
            TabOrder = 2
            OnChange = v_dalla_data_documentoChange
          end
          object v_alla_data_documento: trzdatetimeedit_go
            Left = 125
            Top = 60
            Width = 101
            Height = 21
            Hint = 
              'data documento di fine selezione [Alt+Gi'#249' per aprire il calendar' +
              'io]'
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
            TabOrder = 3
            OnChange = v_alla_data_documentoChange
            OnEnter = v_alla_data_documentoEnter
          end
          object v_storno_collegati: TRzCheckBox
            Left = 5
            Top = 100
            Width = 118
            Height = 15
            Hint = 
              'spunta per stornare anche gli ordini derivati da quello in elabo' +
              'razione'
            Caption = 'storno ordini collegati'
            State = cbUnchecked
            TabOrder = 4
          end
        end
        inherited Panel4: TRzPanel
          Top = 136
          Width = 642
          ExplicitTop = 136
          ExplicitWidth = 642
          inherited Bevel1: TBevel
            Width = 642
            ExplicitWidth = 515
          end
          inherited v_conferma: TRzBitBtn
            OnEnter = v_confermaEnter
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 521
      ExplicitHeight = 143
      inherited pannello_esposizione: TRzPanel
        Width = 521
        Height = 143
        ExplicitWidth = 521
        ExplicitHeight = 143
      end
    end
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object testata: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 285
    Top = 65526
  end
  object righe: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 305
    Top = 65526
  end
  object mmt: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 340
    Top = 65526
  end
  object mmr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from mmr'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 360
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 65526
  end
  object cmm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cmm'
      
        'where tipo_documento = :codice0 and modulo_utilizzo = :codice1 a' +
        'nd'
      '  doc_progressivo = :codice2 and doc_riga = :codice3')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice0'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice3'
        Value = nil
      end>
  end
  object documenti_progressivo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from fvt'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * '
      'from ovr'
      'where progressivo = :progressivo and riga = :riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 485
    Top = 65526
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
      end>
  end
  object query_fas: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select opc.*'
      'from opc'
      'where '
      'opc.progressivo = :progressivo and'
      'opc.situazione='#39'completata'#39
      'order by opc.sequenza desc')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 555
    Top = 65529
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
end
