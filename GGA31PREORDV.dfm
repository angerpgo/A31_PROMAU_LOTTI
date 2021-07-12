inherited A31PREORDV: TA31PREORDV
  Caption = 'A31PREORDV'
  ClientHeight = 751
  ClientWidth = 1111
  ExplicitWidth = 1117
  ExplicitHeight = 800
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel5: TRzLabel [0]
    Left = 637
    Top = 81
    Width = 53
    Height = 13
    Caption = 'descrizione'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  inherited toolbar: TToolBar
    Width = 1111
    ExplicitTop = -1
    ExplicitWidth = 1111
    object tool_cruart: TToolButton
      Left = 186
      Top = 0
      Hint = 'cruscotto articoli [F6]'
      Caption = 'cruart'
      ImageIndex = 96
      OnClick = tool_cruartClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 731
    Width = 1111
    ExplicitTop = 731
    ExplicitWidth = 1111
  end
  object panello_parametri: TRzPanel [3]
    Left = 0
    Top = 34
    Width = 1111
    Height = 192
    Align = alTop
    TabOrder = 2
    OnEnter = panello_parametriEnter
    OnExit = panello_parametriExit
    ExplicitTop = 30
    object Label1: TRzLabel
      Left = 5
      Top = 5
      Width = 32
      Height = 13
      Caption = 'codice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label15: TRzLabel
      Left = 105
      Top = 5
      Width = 53
      Height = 13
      Caption = 'descrizione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object Label6: TRzLabel
      Left = 875
      Top = 138
      Width = 90
      Height = 13
      Caption = 'alla data consegna'
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel1: TRzLabel
      Left = 5
      Top = 47
      Width = 67
      Height = 13
      Caption = 'filiale/impianto'
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
      Left = 102
      Top = 47
      Width = 53
      Height = 13
      Caption = 'descrizione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel3: TRzLabel
      Left = 5
      Top = 139
      Width = 69
      Height = 13
      Caption = 'codice articolo'
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
      Left = 176
      Top = 138
      Width = 90
      Height = 13
      Caption = 'descrizione articolo'
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
      Left = 660
      Top = 47
      Width = 20
      Height = 13
      Caption = 'citt'#224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel7: TRzLabel
      Left = 5
      Top = 90
      Width = 88
      Height = 13
      Caption = 'codice documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel8: TRzLabel
      Left = 102
      Top = 90
      Width = 56
      Height = 13
      Caption = 'descrizione '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_cli_codice: trzedit_go
      Left = 5
      Top = 20
      Width = 91
      Height = 21
      Hint = 'seleziona il codice cliente e conferma con [Invio] [F4 F5 F6]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnExit = v_cli_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_cli
      lookcollprogram = 'GESNOM'
      lookcolltable = 'CLI'
      lookcollvisname = 'CLI'
    end
    object v_cli_descrizione: trzdbeditdescrizione_go
      Left = 100
      Top = 22
      Width = 550
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = cli_ds
      DataField = 'descrizione1'
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
    object v_alla_data_consegna: trzdatetimeedit_go
      Left = 875
      Top = 157
      Width = 80
      Height = 21
      Hint = 
        'data consegna ordine di fine selezione [Alt+Gi'#249' per aprire il ca' +
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
      TabOrder = 4
      OnExit = v_alla_data_consegnaExit
    end
    object v_conferma: TRzBitBtn
      Left = 971
      Top = 155
      Width = 111
      Height = 26
      Hint = 'trasferisci colli'
      Caption = 'conferma'
      TabOrder = 6
      OnClick = v_confermaClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000FCFBFB00FCF9
        F700FCF8F400FCF9F500FCF8F100FCFBF900F9F6ED00FCFBF800F6F8F200F1F7
        EE00D3EBD000BDE2B900DFF0DD00C7E7C500A9B5A900A9AFA900A9AEA900C3C5
        C300C3C4C3000C560E000B4F0D000B4D0C000E5D1000126C1400116514001D79
        22001B611E001E6321001E5A200048714A0012961B000F781500188B20001A8C
        220062C069002E5A31004A8D4E0068C26F0073C679004D8551004D7B50004C70
        4E004E7250004C6E4E00BEE5C100219C2C0024A030003183380044B24E0048B5
        510049B653004AB755004DB756004FB858004FB7580051B85A0052B95C0053B9
        5B0052B85A0055B95D0058BC620057BB5F0058BB600052A55A006EC67600ABDF
        B000A7BBA900EBF7EC00149F2400179E260019A32A001DA22D0020AB31002FAC
        3C0037A744003DB24B0042B54F0043B6510044B5510045B5510046B6520048B6
        54004BB756004DB858004E9E570070C779009BD9A20022AE360024B2370024A9
        350025AC380029AC3A002CAE3F0034AE440038B0470039B148003FB34F0041B6
        51004EAD5B005AB6660077CB820099D9A200AEE1B500ACC3AF0026B23C0025AD
        3C0027AD3C0028AE3D0028AC3C0029AD3D002DB1420033B046003FB8520042B8
        54008DD699001CAD38001CAC38001DAC37001EAC37001FAE39001FAD39001FAD
        3A0020B03C0022B33E0021AE3C0021AD3B0021AD3C0022AE3C0023AD3C0024AE
        3D0025B03E0024AD3C002BB845002CB244003AC9550036B64C0057C26B0063C0
        750087D49600C5EBCC001CAD39001DAE3C001DAD3A001EB03C001FB23E001FB1
        3E0020B33F001FAE3B003ABE550040CF5F0040C25B005EC673006DCC8100A0DF
        AD00B5E5BF00B1C8B6001FB2400020B3420021B6440021B5420021B5440022B7
        460021B3420028BB4A002ABE4D0031C4540032C455003CCC5C0063C6790021B6
        460023B8490023B7480024B94A0024B8480024B84A0048D66D0052D27300C3C7
        C40062D6830073D08C0078D691007DD99900B5CDBD00C5C8C600C3C6C400FCFC
        FC00FFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000BABABABA0F28
        1B14151C2A10BABABABABABA11271F475B5F4B492D132B12BABABA112F456C5D
        40263C343930202312BABA54465A5C5602040622363B3A2129BA4244766B6601
        0302040B32353D3116106277818B0507010302042533373E2E1D6D917499B900
        724103020D4F52385E1A689C8D7A9A9869700803025550534E1884A0918D7375
        7D6A6501030A4D51601794AB9D918F73788087090103644C6F19A8A3A99D908F
        7379838A07010C6159249BA7ACA99F908F8C7E8543072C711E0EBAB3A5AAA99F
        908F8E7C97886E483FBABAB7B2A6AEA19F908F937F82574AB8BABABAB7B5AFA4
        AD9EA2927B5863B1BABABABABABAB6B4B09586968967BABABABA}
    end
    object v_indirizzo: trzedit_go
      Left = 5
      Top = 62
      Width = 91
      Height = 21
      Hint = 'seleziona il codice cliente e conferma con [Invio] [F4 F5 F6]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      OnEnter = v_indirizzoEnter
      OnExit = v_indirizzoExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_cli
      lookcollprogram = 'GESIND'
      lookcolltable = 'IND'
      lookcollvisname = 'INDCLI'
    end
    object v_ind_descrizione1: trzdbeditdescrizione_go
      Left = 102
      Top = 64
      Width = 550
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = ind_ds
      DataField = 'descrizione1'
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
    object v_art_codice: trzedit_go
      Left = 5
      Top = 158
      Width = 165
      Height = 21
      Hint = 'seleziona il codice articolo e conferma con [Invio] [F4 F5 F6]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
      OnExit = v_art_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_art
      lookcollprogram = 'GESART'
      lookcolltable = 'ART'
      lookcollvisname = 'ART'
    end
    object v_art_descrizione1: trzdbeditdescrizione_go
      Left = 174
      Top = 155
      Width = 476
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = art_ds
      DataField = 'descrizione1'
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
      TabOrder = 8
    end
    object rzdbeditdescrizione_go1: trzdbeditdescrizione_go
      Left = 656
      Top = 64
      Width = 436
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = ind_ds
      DataField = 'descrizione1'
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
    object v_tdo_codice: trzedit_go
      Left = 5
      Top = 105
      Width = 91
      Height = 21
      Hint = 
        'seleziona il codice ordine cliente e conferma con [Invio] [F4 F5' +
        ' F6]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_cli
      lookcollprogram = 'GESIND'
      lookcolltable = 'TDO'
      lookcollvisname = 'TDO'
    end
    object v_tdo_descrizione: trzdbeditdescrizione_go
      Left = 100
      Top = 105
      Width = 550
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = tdo_ds
      DataField = 'descrizione1'
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
      TabOrder = 10
    end
  end
  object RzPanel3: TRzPanel [4]
    Left = 0
    Top = 226
    Width = 1111
    Height = 505
    Align = alClient
    TabOrder = 3
    ExplicitTop = 181
    ExplicitHeight = 550
    object v_griglia_righe: TcxGrid
      Left = 2
      Top = 2
      Width = 1107
      Height = 501
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 546
      object v_griglia_righeDB: TcxGridDBTableView
        OnKeyDown = v_griglia_righeDBKeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = query_righe_ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle12
        Styles.OnGetContentStyle = v_griglia_righeDBStylesGetContentStyle
        Styles.Header = cxStyle12
        object v_griglia_righeDBColumn3: TcxGridDBColumn
        end
        object v_griglia_righeDBColumn1: TcxGridDBColumn
        end
        object v_griglia_righeDBColumn2: TcxGridDBColumn
        end
        object v_griglia_righeDBart_codice: TcxGridDBColumn
          Caption = 'codice articolo'
          DataBinding.FieldName = 'art_codice'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object v_griglia_righeDBcodice_articolo_cliente: TcxGridDBColumn
          Caption = 'codice articolo cliente'
          DataBinding.FieldName = 'codice_articolo_cliente'
          HeaderAlignmentHorz = taCenter
          Width = 157
        end
        object v_griglia_righeDBdata_consegna: TcxGridDBColumn
          Caption = 'data consegna'
          DataBinding.FieldName = 'data_consegna'
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxYellow
          Width = 117
        end
        object v_griglia_righeDBart_descrizione1: TcxGridDBColumn
          Caption = 'descrizione articolo'
          DataBinding.FieldName = 'art_descrizione1'
          HeaderAlignmentHorz = taCenter
          Width = 270
        end
        object v_griglia_righeDBda_consegnare: TcxGridDBColumn
          Caption = 'da evadere'
          DataBinding.FieldName = 'da_consegnare'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object v_griglia_righeDBP4: TcxGridDBColumn
          DataBinding.FieldName = 'P4'
          HeaderAlignmentHorz = taCenter
        end
        object v_griglia_righeDBP6: TcxGridDBColumn
          DataBinding.FieldName = 'P6'
          HeaderAlignmentHorz = taCenter
        end
        object v_griglia_righeDBin_spedizione: TcxGridDBColumn
          Caption = 'in spedizione'
          DataBinding.FieldName = 'in_spedizione'
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object v_griglia_righeDBqta_approntata: TcxGridDBColumn
          Caption = 'approntata'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
      end
      object v_griglia_righeLiv1: TcxGridLevel
        GridView = v_griglia_righeDB
      end
    end
  end
  inherited tabella: TMyQuery_go
    SQL.Strings = (
      'select '
      'ovr.* '
      'from ovr'
      'where'
      'ovr.progressivo=:progressivo and'
      'ovr.riga=:riga')
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
  inherited query: TMyQuery_go
    SQL.Strings = (
      'select'
      'ovt.cli_codice,'
      'ovr.art_codice,'
      'arcl.codice_articolo_cliente,'
      'ovr.descrizione1 art_descrizione1,'
      
        'sum(ovr.tum_quantita_base-ovr.quantita_evasa-ovr.quantita_appron' +
        'tata) da_consegnare,'
      'F_A31_PROMAU_ARTICOLI_IN_SPEDIZIONE (ovr.art_codice, '#39'P4'#39') P4,'
      'F_A31_PROMAU_ARTICOLI_IN_SPEDIZIONE (ovr.art_codice, '#39'P6'#39') P6,'
      
        'F_A31_PROMAU_ARTICOLI_IN_SPEDIZIONE (ovr.art_codice, '#39'SPED'#39') in_' +
        'spedizione,'
      'ovr.situazione '
      'FROM ovr'
      'INNER JOIN ovt ON ovt.progressivo=ovr.progressivo'
      'INNER JOIN art on art.codice=ovr.art_codice'
      
        'left join arcl on arcl.cli_codice=ovt.cli_codice and arcl.art_co' +
        'dice=ovr.art_codice'
      'WHERE'
      'ovt.cli_codice=:cli_codice and'
      'ovr.data_consegna <=:data_consegna and'
      'ovr.situazione IN ('#39'inserito'#39', '#39'evaso parziale'#39') and'
      'art.tipo_articolo ='#39'fiscale'#39
      'GROUP BY  1,2'
      'ordER BY ovr.data_consegna, ovt.cli_codice')
    ParamData = <
      item
        DataType = ftWideString
        Name = 'cli_codice'
        Value = '00000814'
      end
      item
        DataType = ftDate
        Name = 'data_consegna'
        Value = 44375d
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1015
    Top = 185
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBackground
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxLime: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object TreeListStyleSheetDevExpress: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle5
      Styles.Inactive = cxStyle9
      Styles.Selection = cxStyle13
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle3
      Styles.ColumnHeader = cxStyle4
      Styles.ContentEven = cxStyle6
      Styles.ContentOdd = cxStyle7
      Styles.Footer = cxStyle8
      Styles.IncSearch = cxStyle10
      Styles.Indicator = cxStyle11
      Styles.Preview = cxStyle12
      BuiltIn = True
    end
  end
  object query_righe_ds: TMyDataSource
    DataSet = query_righe
    Left = 360
    Top = 65531
  end
  object query_righe: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'v.progressivo,'
      'v.riga,'
      'v.tdo_codice,'
      'v.numero_documento,'
      'v.serie_documento,'
      'v.id_origine,'
      'v.art_codice,'
      'v.data_consegna,'
      'v.codice_articolo_cliente,'
      'v.descrizione1 art_descrizione1,'
      'v.quantita,'
      'v.quantita_approntata,'
      'v.a31_mag_P4,'
      'v.a31_mag_P6,'
      'v.a31_mag_OUT'
      'FROM arc_ordinamento.evaordv v'
      'WHERE'
      'v.utn_codice=:utn_codice'
      'order by v.data_consegna, v.cli_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 340
    Top = 65526
    ParamData = <
      item
        DataType = ftWideString
        Name = 'utn_codice'
        Value = 'GO'
      end>
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'cli.codice, cli.descrizione1, cli.obsoleto'
      'from cli'
      'where'
      'cli.codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 450
  end
  object ind: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      
        'ind.cli_codice, ind.indirizzo, ind.descrizione1, ind.obsoleto, i' +
        'nd.citta'
      'from ind'
      'where'
      'ind.cli_codice=:cli_codice and'
      'ind.indirizzo=:indirizzo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'indirizzo'
        Value = nil
      end>
  end
  object ind_ds: TMyDataSource
    DataSet = ind
    Left = 515
    Top = 5
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'art.codice, art.descrizione1, art.obsoleto'
      'from art'
      'where'
      'art.codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 680
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 705
  end
  object tdo_ds: TMyDataSource
    DataSet = tdo
    Left = 630
    Top = 10
  end
  object tdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'tdo.codice, tdo.descrizione'
      'from tdo'
      'where'
      'tdo.codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 605
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
end
