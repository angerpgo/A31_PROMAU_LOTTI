inherited A31GESCOLLO: TA31GESCOLLO
  Caption = 'ristampa etichetta '
  ClientWidth = 827
  ExplicitWidth = 833
  ExplicitHeight = 703
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 827
    ExplicitWidth = 827
    object tool_genera_lotto: TToolButton
      Left = 186
      Top = 0
      Caption = 'tool_pulisci'
      ImageIndex = 82
    end
  end
  inherited statusbar: TStatusBar
    Width = 827
    ExplicitWidth = 827
  end
  object RzPanel1: TRzPanel [2]
    Left = 0
    Top = 34
    Width = 827
    Height = 207
    Align = alTop
    BorderOuter = fsGroove
    TabOrder = 2
    object RzLabel1: TRzLabel
      Left = 5
      Top = 15
      Width = 22
      Height = 13
      Caption = 'collo'
    end
    object RzLabel2: TRzLabel
      Left = 535
      Top = 15
      Width = 38
      Height = 13
      Caption = 'quantit'#224
    end
    object RzLabel3: TRzLabel
      Left = 685
      Top = 13
      Width = 85
      Height = 13
      Caption = 'quantit'#224' prelevata'
    end
    object v_l_frn_codice: TRzLabel
      Left = 3
      Top = 98
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
    object RzLabel4: TRzLabel
      Left = 65
      Top = 100
      Width = 51
      Height = 13
      Caption = 'ubicazione'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
      Transparent = True
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
      Top = 30
      Width = 96
      Height = 21
      Hint = '[Alt+Gi'#249'=apre calcolatrice]'
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
    object v_quantita_prelevata: trznumericedit_go
      Left = 685
      Top = 30
      Width = 96
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
      TabOrder = 2
      IntegersOnly = False
      DisplayFormat = ',0;-,0;#'
      decimalplaces = 0
    end
    object v_genera_lotto: TRzBitBtn
      Left = 685
      Top = 67
      Width = 111
      Height = 26
      Hint = 'genera nuovo lotto'
      Caption = 'genera collo'
      TabOrder = 3
      OnClick = v_genera_lottoClick
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
    object v_tma_codice: trzdbedit_go
      Left = 4
      Top = 115
      Width = 46
      Height = 21
      Hint = 'codice fornitore [F4 F5 F6]'
      Margins.Left = 1
      Margins.Top = 1
      DataSource = lotto_ubi_ds
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
      TabOrder = 4
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTMA'
      lookcolltable = 'TMA'
      lookcollvisname = 'TMA'
    end
    object v_tsu1_codice_01: trzdbeditdescrizione_go
      Left = 62
      Top = 115
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'a31tsu_codice_01'
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
    object rzdbeditdescrizione_go1: trzdbeditdescrizione_go
      Left = 110
      Top = 115
      Width = 215
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'tsu1_descrizione'
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
    object v_tsu_codice_02: trzdbeditdescrizione_go
      Left = 330
      Top = 115
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'a31tsu_codice_02'
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
    object rzdbeditdescrizione_go3: trzdbeditdescrizione_go
      Left = 378
      Top = 115
      Width = 253
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'tsu1_descrizione'
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
    object v_tsu_codice_03: trzdbeditdescrizione_go
      Left = 62
      Top = 145
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'a31tsu_codice_03'
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
    object rzdbeditdescrizione_go4: trzdbeditdescrizione_go
      Left = 110
      Top = 145
      Width = 215
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'tsu3_descrizione'
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
    object v_tsu_codice_04: trzdbeditdescrizione_go
      Left = 330
      Top = 145
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'a31tsu_codice_04'
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
      TabOrder = 11
    end
    object rzdbeditdescrizione_go6: trzdbeditdescrizione_go
      Left = 378
      Top = 145
      Width = 253
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'tsu4_descrizione'
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
      TabOrder = 12
    end
    object v_tsu_codice_05: trzdbeditdescrizione_go
      Left = 62
      Top = 175
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'a31tsu_codice_05'
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
      TabOrder = 13
    end
    object rzdbeditdescrizione_go5: trzdbeditdescrizione_go
      Left = 110
      Top = 175
      Width = 215
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'tsu5_descrizione'
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
      TabOrder = 14
    end
    object v_tub_codice: trzdbeditdescrizione_go
      Left = 330
      Top = 175
      Width = 173
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = lotto_ubi_ds
      DataField = 'tub_codice'
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
      TabOrder = 15
    end
    object v_lotto: trzedit_go
      Left = 5
      Top = 28
      Width = 511
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
      TabOrder = 0
      OnExit = v_lottoExit
      OnKeyDown = v_lottoKeyDown
      OnKeyPress = v_lottoKeyPress
      lookcolldatabase = 'arc.arcdit'
      lookcollprogram = 'geslot'
      lookcolltable = 'lot'
      lookcollvisname = 'lot'
    end
    object v_art_codice: trzdbeditdescrizione_go
      Left = 4
      Top = 71
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
      TabOrder = 16
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
      TabOrder = 17
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
      TabOrder = 18
    end
    object v_ristampa_eti: TRzBitBtn
      Left = 685
      Top = 112
      Width = 121
      Height = 26
      Hint = 'ristampa etichetta'
      Caption = 'ristampa etichetta'
      TabOrder = 19
      OnClick = v_ristampa_etiClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F0F000BCAC
        AC00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EEEBEB00FFFFFF00FBFBFB00B4A1A100613232006331
        3100643A3A00A9949400EDE9E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00E8E3E3008465650099727200825353005E32320076434300824C4C008454
        52006F3C3C0062303000522323007E5E5E00C3B4B400F9F8F800F8F6F600A48F
        8F006C414100C0A5A500E1CBCB00D5ADAD007B4A4A009C6F6F00E9DCD900FFF7
        E900D1B6A70091655C0062313000592928004E202000552C2C00653C3C008659
        5900B7979700D0BABA00EADDDD00E3C7C7006A3C3C00572B2B008E6B6A00F7EB
        DD00FFF0D900FFEACA00F4D8B100B68B720062322F004D1F1F006A3A3A00A67F
        7F00BFA0A000D8C5C500F4EEEE00F0E2E200EBD9D900D3B6B600956C6C006739
        390056292800926A5E00C29A84008C5954005C2C2C00856868006C3E3E00AD88
        8800C6ABAB00E0CFCF00FEFCFC00FFFFFF00FAF4F400F4EBEB00F0E1E100EBD8
        D800D1B5B500966D6D0074454500D8B2B2004B1E1E00DED6D6006F414100B592
        9200CFB6B600C9B2B200D8C5C500FCF8F800FFFFFF00FFFFFF00FFFEFE00FAF4
        F400F4EAEA0093B18B00ABB69D00E6CECE004B1E1E00E0D8D8007F505000C199
        9900572929004B1E1E004B1E1E004F22220079505000C7B0B000FCFAFA00FFFF
        FF00FFFFFF00176817000152020097B08E0059303000FBFBFB00795454006B38
        3800864F4F006736360079504D00977369005C2F2D004E2020004E212100754A
        4A00BCA4A400E7EAE30096BF96009A8B8300A38C8C00FFFFFF00FFFFFF00EEEB
        EB00C3B4B4005F353500C7B1AB00FFF3E100FFEED400E1C4A90093695A004C1F
        1F004B1E1E0056292900AE8F8F007B585800F9F8F800FFFFFF00FFFFFF00FFFF
        FF00E3DBDB005B313100FCFAF600FFF7EB00FFF2DD00FFEDD000E7CBAC005123
        220068383800663B3B00AE999900F9F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
        FF009C82820099797900FFFFFF00FFFBF400FFF6E600FFF0D900A37E6F008767
        6700C3B4B400F9F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
        FB005A313100A98E8E00E7E0E000FFFFFE00FFF8EF00FFF3E2006B403E00D1C6
        C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00A18888007C5A5A005C32320054282800714A4900896562005A2F2F00FBFB
        FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F1EEEE00D1C6C600B29F9F00C3B4B400FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
  end
  object v_lista: TListBox [3]
    Left = 0
    Top = 241
    Width = 827
    Height = 393
    Align = alClient
    ItemHeight = 13
    TabOrder = 3
    ExplicitTop = 236
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
      'documento_origine=:documento_origine and'
      'doc_progressivo_origine=:doc_progressivo_origine and'
      'doc_riga_origine =:doc_riga_origine'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 632
    ParamData = <
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
        DataType = ftString
        Name = 'lotto'
        Value = '201651000000001'
      end>
  end
  object lotto_ubi_ds: TMyDataSource
    DataSet = lotto_ubi
    Left = 750
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
    Left = 784
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
end
