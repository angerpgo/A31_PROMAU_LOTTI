inherited A31CREAUBM: TA31CREAUBM
  Caption = 'A31CREAUBM'
  ClientHeight = 178
  ClientWidth = 718
  ExplicitWidth = 734
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 718
    ExplicitWidth = 718
  end
  inherited statusbar: TStatusBar
    Top = 158
    Width = 718
    ExplicitTop = 158
    ExplicitWidth = 718
  end
  inherited tab_control: TRzPageControl
    Width = 718
    Height = 124
    ExplicitWidth = 718
    ExplicitHeight = 124
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitWidth = 716
      ExplicitHeight = 101
      inherited pannello_elaborazione: TRzPanel
        Width = 716
        Height = 101
        ExplicitWidth = 716
        ExplicitHeight = 101
        inherited pannello_parametri: TRzPanel
          Width = 716
          Height = 63
          ExplicitWidth = 716
          ExplicitHeight = 63
          object Label8: TRzLabel
            Left = 5
            Top = 5
            Width = 46
            Height = 13
            Caption = 'dalla data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label2: TRzLabel
            Left = 102
            Top = 5
            Width = 40
            Height = 13
            Caption = 'alla data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object v_dalla_data: trzdatetimeedit_go
            Left = 5
            Top = 20
            Width = 80
            Height = 21
            Hint = 
              'data registrazione di inizio selezione [Alt+Gi'#249' per aprire il ca' +
              'lendario]'
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
            TabOrder = 0
            OnExit = v_dalla_dataExit
          end
          object v_alla_data: trzdatetimeedit_go
            Left = 102
            Top = 20
            Width = 80
            Height = 21
            Hint = 
              'data registrazione di fine selezione [Alt+Gi'#249' per aprire il cale' +
              'ndario]'
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
            TabOrder = 1
            OnExit = v_alla_dataExit
          end
          object v_art_codice: trzedit_go
            Left = 200
            Top = 20
            Width = 226
            Height = 21
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            lookcolldatabase = 'arc.arc.dit'
            lookcollprogram = 'GESART'
            lookcolltable = 'ART'
            lookcollvisname = 'ART'
          end
        end
        inherited Panel4: TRzPanel
          Top = 63
          Width = 716
          ExplicitTop = 63
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
      ExplicitHeight = 101
      inherited pannello_esposizione: TRzPanel
        Width = 716
        Height = 101
        ExplicitWidth = 716
        ExplicitHeight = 101
        object v_messaggio: TMemo
          Left = 0
          Top = 0
          Width = 716
          Height = 101
          Align = alClient
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
        end
        object trzdbgrid_go1: trzdbgrid_go
          Left = 0
          Top = 0
          Width = 716
          Height = 101
          Align = alClient
          DataSource = query_ds
          DrawingStyle = gdsClassic
          options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
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
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'insert into ubm ( progressivo, data_registrazione, art_codice, t' +
        'ub_codice, tipo_movimento, quantita, documento_origine, doc_prog' +
        'ressivo_origine, doc_riga_origine,segno , tmo_codice)'
      'values '
      
        '( :progressivo, :data_registrazione, :art_codice, :tub_codice, :' +
        'tipo_movimento, :quantita, :documento_origine, :doc_progressivo_' +
        'origine, :doc_riga_origine, :segno , :tmo_codice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 770
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
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
      end
      item
        DataType = ftUnknown
        Name = 'tipo_movimento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documento_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_riga_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'segno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmo_codice'
        Value = nil
      end>
  end
end
