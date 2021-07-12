inherited A31GESTRASFIN: TA31GESTRASFIN
  Caption = 'A31GESTRASFIN'
  ClientWidth = 829
  ExplicitWidth = 835
  ExplicitHeight = 703
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 829
    ExplicitTop = -1
    ExplicitWidth = 829
    object tool_genera_lotto: TToolButton
      Left = 186
      Top = 0
      Caption = 'tool_pulisci'
      ImageIndex = 82
      OnClick = tool_genera_lottoClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 604
    Width = 829
    Height = 50
    ExplicitTop = 604
    ExplicitWidth = 827
    ExplicitHeight = 50
  end
  object pannello_collo: TRzPanel [2]
    Left = 0
    Top = 241
    Width = 829
    Height = 119
    Align = alTop
    BorderOuter = fsGroove
    TabOrder = 3
    ExplicitTop = 328
    object RzLabel1: TRzLabel
      Left = 5
      Top = 15
      Width = 57
      Height = 13
      Caption = 'codice collo'
    end
    object RzLabel2: TRzLabel
      Left = 535
      Top = 15
      Width = 38
      Height = 13
      Caption = 'quantit'#224
    end
    object RzLabel5: TRzLabel
      Left = 5
      Top = 55
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
    object RzLabel6: TRzLabel
      Left = 114
      Top = 55
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
    object v_quantita: trznumericedit_go
      Left = 535
      Top = 28
      Width = 96
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
      TabStop = False
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = ',0;-,0;#'
      decimalplaces = 0
    end
    object v_lotto: trzedit_go
      Left = 5
      Top = 28
      Width = 511
      Height = 21
      Text = ''
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      OnExit = v_lottoExit
      OnKeyDown = v_lottoKeyDown
      lookcolldatabase = 'arc.arcdit'
      lookcollprogram = 'geslot'
      lookcolltable = 'lot'
      lookcollvisname = 'lot'
    end
    object v_art_codice: trzdbeditdescrizione_go
      Left = 4
      Top = 70
      Width = 104
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'art_codice'
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
    object v_art_descrizione1: trzdbeditdescrizione_go
      Left = 112
      Top = 70
      Width = 264
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'art_descrizione1'
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
    object v_art_descrizione2: trzdbeditdescrizione_go
      Left = 380
      Top = 70
      Width = 253
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'art_descrizione2'
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
    object v_aggiungi_lotto: TRzBitBtn
      Left = 665
      Top = 28
      Width = 111
      Height = 26
      Hint = 'aggiungi'
      Caption = 'aggiungi'
      Enabled = False
      TabOrder = 5
      OnClick = v_aggiungi_lottoClick
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
  end
  object v_lista: TListBox [3]
    Left = 0
    Top = 570
    Width = 829
    Height = 34
    Align = alBottom
    ItemHeight = 13
    TabOrder = 5
  end
  object pannello_ubicazione_destinazione: TRzPanel [4]
    Left = 0
    Top = 136
    Width = 829
    Height = 105
    Align = alTop
    BorderInner = fsFlat
    BorderOuter = fsFlat
    TabOrder = 2
    object RzLabel3: TRzLabel
      Left = 5
      Top = 5
      Width = 148
      Height = 13
      Caption = 'codice ubicazione destinazione'
    end
    object RzLabel7: TRzLabel
      Left = 5
      Top = 51
      Width = 55
      Height = 13
      Caption = 'codice mag'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_tma_codice_dest: trzdbedit_go
      Left = 4
      Top = 68
      Width = 46
      Height = 21
      Hint = 'codice magazzino'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = a31tsu_ds
      DataField = 'TMA_CODICE'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      lookcolldatabase = 'arc.arcdit'
    end
    object v_tub_codice_dest: trzedit_go
      Left = 5
      Top = 20
      Width = 324
      Height = 21
      Text = ''
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      OnEnter = v_tub_codice_destEnter
      OnExit = v_tub_codice_destExit
      OnKeyDown = v_tub_codice_destKeyDown
      OnKeyPress = v_tub_codice_destKeyPress
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTUB'
      lookcolltable = 'TUB'
      lookcollvisname = 'TUB'
    end
    object v_trasferisci_colli: TRzBitBtn
      Left = 665
      Top = 20
      Width = 111
      Height = 26
      Hint = 'trasferisci colli'
      Caption = 'trasferisci colli'
      TabOrder = 2
      OnClick = v_trasferisci_colliClick
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
    object tub_codice_alternativo_dest: trzdbeditdescrizione_go
      Left = 342
      Top = 20
      Width = 253
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
      DataField = 'codice_alternativo'
      ReadOnly = True
      AutoSize = False
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      FocusColor = clBtnFace
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
    end
  end
  object v_griglia: TcxGrid [5]
    Left = 0
    Top = 360
    Width = 829
    Height = 210
    Align = alClient
    TabOrder = 4
    ExplicitTop = 447
    ExplicitHeight = 95
    object v_grigliaDB: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = a31trasf_ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object v_grigliaDBART_CODICE: TcxGridDBColumn
        Caption = 'codice articolo'
        DataBinding.FieldName = 'ART_CODICE'
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object v_grigliaDBCollo: TcxGridDBColumn
        Caption = 'collo'
        DataBinding.FieldName = 'LOT_CODICE'
      end
      object v_grigliaDBTUB_CODICE_SCARICO: TcxGridDBColumn
        Caption = 'ubicazione scarico'
        DataBinding.FieldName = 'TUB_CODICE_SCARICO'
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object v_grigliaDBTMA_CODICE_SCARICO: TcxGridDBColumn
        Caption = 'mag scarico'
        DataBinding.FieldName = 'TMA_CODICE_SCARICO'
        HeaderAlignmentHorz = taCenter
        Width = 96
      end
      object v_grigliaDBTUB_CODICE_CARICO: TcxGridDBColumn
        Caption = 'ubicazione carico'
        DataBinding.FieldName = 'TUB_CODICE_CARICO'
        Width = 120
      end
      object v_grigliaDBTMA_CODICE_CARICO: TcxGridDBColumn
        Caption = 'mag carico'
        DataBinding.FieldName = 'TMA_CODICE_CARICO'
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object v_grigliaDBQUANTITA: TcxGridDBColumn
        Caption = 'quantit'#224
        DataBinding.FieldName = 'QUANTITA'
        HeaderAlignmentHorz = taCenter
      end
    end
    object v_grigliaLiv1: TcxGridLevel
      GridView = v_grigliaDB
    end
  end
  object pannello_ubicazione_sorgente: TRzPanel [6]
    Left = 0
    Top = 34
    Width = 829
    Height = 102
    Align = alTop
    BorderInner = fsFlat
    BorderOuter = fsFlat
    TabOrder = 1
    object RzLabel9: TRzLabel
      Left = 5
      Top = 6
      Width = 130
      Height = 13
      Caption = 'codice ubicazione partenza'
    end
    object RzLabel10: TRzLabel
      Left = 5
      Top = 51
      Width = 55
      Height = 13
      Caption = 'codice mag'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
    end
    object v_tma_codice: trzdbedit_go
      Left = 4
      Top = 68
      Width = 46
      Height = 21
      Hint = 'codice magazzino'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = a31tsu_sorg_ds
      DataField = 'TMA_CODICE'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 0
      lookcolldatabase = 'arc.arcdit'
    end
    object v_tub_codice_sorg: trzedit_go
      Left = 5
      Top = 24
      Width = 324
      Height = 21
      Text = ''
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      OnExit = v_tub_codice_sorgExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTUB'
      lookcolltable = 'TUB'
      lookcollvisname = 'TUB'
    end
    object tub_codice_alternativo_sorg: trzdbeditdescrizione_go
      Left = 342
      Top = 20
      Width = 253
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_sorg_ds
      DataField = 'codice_alternativo'
      ReadOnly = True
      AutoSize = False
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      FocusColor = clBtnFace
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
    end
  end
  object a31etichette: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from'
      'a31etichette'
      'where progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 554
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ltm'
      'where'
      'progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 592
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ubm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ubm'
      'where'
      'ubm.progressivo=:progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 632
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object lotto_ubi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'ltm.*,'
      'art.descrizione1 art_descrizione1,'
      'art.descrizione2 art_descrizione2,'
      'art.lotti'
      'from v_a31promau_lotto_ubi ltm'
      'inner join art on art.codice=ltm.art_codice'
      'where'
      'ltm.lotto=:lotto'
      'order by ltm.ltm_id desc limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 712
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lotto'
        Value = nil
      end>
  end
  object lotto_ubi_ds: TMyDataSource
    DataSet = lotto_ubi
    Left = 740
    Top = 5
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'opt.a31cli_codice, opt.tma_codice_finiti'
      'from opt'
      'where'
      'opt.PROGRESSIVO = ('
      'select doc_progressivo_origine'
      'from oar'
      'where'
      'oar.documento_origine='#39'produzione'#39' and'
      'oar.progressivo=:doc_progressivo_origine and'
      'oar.riga =:doc_riga_origine )')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 779
    ParamData = <
      item
        DataType = ftInteger
        Name = 'doc_progressivo_origine'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'doc_riga_origine'
        Value = 0
      end>
  end
  object xxr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from dar'
      'where progressivo=:progressivo and riga=:riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 672
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
  object ltp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'lot.art_codice,'
      'lot.lotto,'
      'lot.descrizione,'
      'lot.data_scadenza,'
      'ltp.esistenza'
      'from ltp'
      'inner join lot on lot.lotto=ltp.LOT_CODICE'
      'where'
      'ltp.lot_codice=:lotto and'
      'ltp.tma_codice=:tma_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 637
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lotto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end>
  end
  object tub: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'tub.codice,'
      'tub.descrizione,'
      'tub.ubicazione_unica'
      'from tub'
      'where'
      'tub.codice=:tub_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 497
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tub_codice'
        Value = nil
      end>
  end
  object a31tsu: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      't.*'
      'from v_a31promau_tub t'
      'where'
      't.codice=:tub_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 502
    Top = 60
    ParamData = <
      item
        DataType = ftWideString
        Name = 'tub_codice'
        Value = 'P4-A-001-003-003'
      end>
  end
  object a31tsu_ds: TMyDataSource
    DataSet = a31tsu
    Left = 550
    Top = 55
  end
  object a31trasf: TMyQuery_go
    SQLInsert.Strings = (
      'INSERT INTO a31trasf'
      
        '  (ID, UTENTE, data_ora, UTENTE_CREAZIONE, data_ora_creazione, i' +
        'd_origine, PROGRESSIVO, UTN_CODICE, ART_CODICE, LOT_CODICE, TUB_' +
        'CODICE_CARICO, TUB_CODICE_SCARICO, TMA_CODICE_CARICO, TMA_CODICE' +
        '_SCARICO, QUANTITA)'
      'VALUES'
      
        '  (:ID, :UTENTE, :data_ora, :UTENTE_CREAZIONE, :data_ora_creazio' +
        'ne, :id_origine, :PROGRESSIVO, :UTN_CODICE, :ART_CODICE, :LOT_CO' +
        'DICE, :TUB_CODICE_CARICO, :TUB_CODICE_SCARICO, :TMA_CODICE_CARIC' +
        'O, :TMA_CODICE_SCARICO, :QUANTITA)')
    SQLDelete.Strings = (
      'DELETE FROM a31trasf'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE a31trasf'
      'SET'
      
        '  ID = :ID, UTENTE = :UTENTE, data_ora = :data_ora, UTENTE_CREAZ' +
        'IONE = :UTENTE_CREAZIONE, data_ora_creazione = :data_ora_creazio' +
        'ne, id_origine = :id_origine, PROGRESSIVO = :PROGRESSIVO, UTN_CO' +
        'DICE = :UTN_CODICE, ART_CODICE = :ART_CODICE, LOT_CODICE = :LOT_' +
        'CODICE, TUB_CODICE_CARICO = :TUB_CODICE_CARICO, TUB_CODICE_SCARI' +
        'CO = :TUB_CODICE_SCARICO, TMA_CODICE_CARICO = :TMA_CODICE_CARICO' +
        ', TMA_CODICE_SCARICO = :TMA_CODICE_SCARICO, QUANTITA = :QUANTITA'
      'WHERE'
      '  ID = :Old_ID')
    SQLRefresh.Strings = (
      
        'SELECT ID, UTENTE, data_ora, UTENTE_CREAZIONE, data_ora_creazion' +
        'e, id_origine, PROGRESSIVO, UTN_CODICE, ART_CODICE, LOT_CODICE, ' +
        'TUB_CODICE_CARICO, TUB_CODICE_SCARICO, TMA_CODICE_CARICO, TMA_CO' +
        'DICE_SCARICO, QUANTITA FROM a31trasf'
      'WHERE'
      '  ID = :ID')
    SQLLock.Strings = (
      'SELECT * FROM a31trasf'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM a31trasf')
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'a31trasf.*,'
      'tubs.ubicazione_unica tubs_ubicazione_unica ,'
      'tubc.ubicazione_unica tubc_ubicazione_unica'
      'from a31trasf'
      'inner join tub tubs on tubs.codice = a31trasf.tub_codice_scarico'
      'inner join tub tubc on tubc.codice = a31trasf.tub_codice_carico'
      'where'
      'a31TRASF.utn_codice=:utn_codice'
      'order by a31trasf.lot_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 692
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'utn_codice'
        Value = 'GO'
      end>
  end
  object a31trasf_ds: TMyDataSource
    DataSet = a31trasf
    Left = 735
    Top = 75
  end
  object a31tsu_sorg: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      't.*'
      'from v_a31promau_tub t'
      'where'
      't.codice=:tub_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 577
    Top = 145
    ParamData = <
      item
        DataType = ftWideString
        Name = 'tub_codice'
        Value = 'P4-A-001-003-003'
      end>
  end
  object a31tsu_sorg_ds: TMyDataSource
    DataSet = a31tsu_sorg
    Left = 625
    Top = 145
  end
  object lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'lot.art_codice,'
      'lot.lotto,'
      'lot.descrizione,'
      'lot.data_scadenza,'
      'lot.esistenza'
      'from lot'
      'where'
      'lot.lotto=:lotto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 637
    Top = 110
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lotto'
        Value = nil
      end>
  end
end
