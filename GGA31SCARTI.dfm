inherited A31SCARTI: TA31SCARTI
  Caption = 'A31SCARTI'
  ClientHeight = 667
  ClientWidth = 906
  ExplicitWidth = 912
  ExplicitHeight = 716
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 906
    ExplicitWidth = 917
    object tool_importa_xls: TToolButton
      Left = 186
      Top = 0
      Caption = 'tool importa xls'
      ImageIndex = 52
      OnClick = tool_importa_xlsClick
    end
    object tool_salva: TToolButton
      Left = 217
      Top = 0
      Caption = 'tool salva'
      ImageIndex = 38
      OnClick = tool_salvaClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 647
    Width = 906
    ExplicitTop = 651
    ExplicitWidth = 917
  end
  object RzPanel1: TRzPanel [2]
    Left = 0
    Top = 34
    Width = 906
    Height = 102
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 917
    object RzLabel1: TRzLabel
      Left = 11
      Top = 5
      Width = 36
      Height = 13
      Caption = 'scarti al'
    end
    object RzLabel3: TRzLabel
      Left = 135
      Top = 5
      Width = 97
      Height = 13
      Caption = 'deposito carico finito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel6: TRzLabel
      Left = 135
      Top = 50
      Width = 139
      Height = 13
      Caption = 'deposito scarico da rottamare'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel2: TRzLabel
      Left = 522
      Top = 10
      Width = 142
      Height = 13
      Caption = 'causale scarico deposito finito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel4: TRzLabel
      Left = 522
      Top = 50
      Width = 134
      Height = 13
      Caption = 'carico deposito da rottamare'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_scarti_al: trzdatetimeedit_go
      Left = 10
      Top = 20
      Width = 81
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calendario]'
      CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
      CaptionTodayBtn = 'oggi'
      CaptionClearBtn = 'annulla'
      EditType = etDate
      AutoSelect = False
      DropButtonVisible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnExit = v_scarti_alExit
    end
    object v_tma_descrizione_finito: trzdbeditdescrizione_go
      Left = 190
      Top = 20
      Width = 315
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tma_fin_ds
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
    object v_tma_descrizione_materia_prima: trzdbeditdescrizione_go
      Left = 190
      Top = 65
      Width = 315
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tma_mat_ds
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
      TabOrder = 2
    end
    object v_tma_codice_finito: trzedit_go
      Left = 135
      Top = 21
      Width = 50
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
      TabOrder = 3
      OnExit = v_tma_codice_finitoExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTMA'
      lookcolltable = 'TMA'
      lookcollvisname = 'TMAST'
    end
    object v_tma_codice_materia_prima: trzedit_go
      Left = 135
      Top = 65
      Width = 50
      Height = 21
      TabStop = False
      Text = ''
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 4
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTMA'
      lookcolltable = 'TMA'
      lookcollvisname = 'TMA'
    end
    object v_azzera_dati: TCheckBox
      Left = 10
      Top = 65
      Width = 97
      Height = 17
      Caption = 'azzera dati'
      TabOrder = 5
    end
    object v_tmo_codice_scarico: trzedit_go
      Left = 522
      Top = 26
      Width = 50
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
      TabOrder = 6
      OnExit = v_tma_codice_finitoExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcolltable = 'TMO'
      lookcollvisname = 'TMO'
    end
    object v_tmo_descrizione_finito: trzdbeditdescrizione_go
      Left = 577
      Top = 25
      Width = 315
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tmo_sca_ds
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
      TabOrder = 7
    end
    object v_tmo_codice_carico: trzedit_go
      Left = 522
      Top = 65
      Width = 50
      Height = 21
      TabStop = False
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 8
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcolltable = 'TMO'
      lookcollvisname = 'TMO'
    end
    object v_tmo_descrizione_materia_prima: trzdbeditdescrizione_go
      Left = 577
      Top = 65
      Width = 315
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tmo_car_ds
      DataField = 'DESCRIZIONE'
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
      TabOrder = 9
    end
  end
  object RzPanel2: TRzPanel [3]
    Left = 0
    Top = 136
    Width = 906
    Height = 511
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 917
    ExplicitHeight = 515
    object v_griglia: trzdbgrid_go
      Left = 2
      Top = 2
      Width = 902
      Height = 507
      Align = alClient
      DataSource = query_ds
      DrawingStyle = gdsClassic
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      OnDblClick = v_grigliaDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'art_codice'
          Title.Alignment = taCenter
          Title.Caption = 'codice articolo'
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'art_descrizione'
          Title.Alignment = taCenter
          Title.Caption = 'descrizione articolo'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantita'
          Title.Alignment = taCenter
          Title.Caption = 'quantit'#224
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantita_non_stornata'
          Title.Alignment = taCenter
          Title.Caption = 'qt'#224' da ripristinare'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_origine'
          Title.Alignment = taCenter
          Title.Caption = 'progressivo magazzino'
          Width = 122
          Visible = True
        end>
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'select * from a31scarti'
      'where '
      'utn_codice=:utn_codice '
      'order by art_codice')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  inherited query_ds: TMyDataSource
    Left = 285
    Top = 65531
  end
  object tma_fin: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from tma'
      'where '
      'codice=:codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_fin_ds: TMyDataSource
    DataSet = tma_fin
    Left = 465
    Top = 35
  end
  object tma_mat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from tma'
      'where '
      'codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma_mat_ds: TMyDataSource
    DataSet = tma_mat
    Left = 465
    Top = 90
  end
  object XLSRead: TXLSReadWriteII5
    ComponentVersion = '5.20.65'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 700
    Top = 65531
  end
  object query_del: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from a31scarti'
      'where '
      'utn_codice=:utn_codice '
      'order by art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 585
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object tmo_sca: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from tmo'
      'where '
      'codice=:codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 800
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tmo_sca_ds: TMyDataSource
    DataSet = tmo_sca
    Left = 840
    Top = 40
  end
  object tmo_car_ds: TMyDataSource
    DataSet = tmo_car
    Left = 845
    Top = 95
  end
  object tmo_car: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from tmo'
      'where '
      'codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 805
    Top = 90
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from opt'
      'where'
      'art_codice=:art_codice  and'
      'situazione='#39'evaso'#39
      'ORDER BY data_ora_creazione desc'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 820
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object opc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from opc'
      'where'
      'progressivo=:progressivo'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 825
    Top = 235
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object movfas: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from movfas'
      'where'
      'id_opc=:id_opc')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 825
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_opc'
        Value = nil
      end>
  end
end
