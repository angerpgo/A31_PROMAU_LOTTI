inherited A31GESTRASF: TA31GESTRASF
  Caption = 'A31GESTRASF'
  ClientWidth = 827
  ExplicitWidth = 833
  ExplicitHeight = 703
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Top = 215
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
    Top = 604
    Width = 827
    Height = 50
    ExplicitTop = 604
    ExplicitWidth = 827
    ExplicitHeight = 50
  end
  object RzPanel1: TRzPanel [2]
    Left = 0
    Top = 0
    Width = 827
    Height = 215
    Align = alTop
    BorderOuter = fsGroove
    TabOrder = 1
    ExplicitTop = -6
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
    object v_l_frn_codice: TRzLabel
      Left = 4
      Top = 100
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
      Top = 28
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
    object v_tma_codice: trzdbedit_go
      Left = 5
      Top = 117
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
      TabOrder = 2
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTMA'
      lookcolltable = 'TMA'
      lookcollvisname = 'TMA'
    end
    object v_tsu1_codice_01: trzdbeditdescrizione_go
      Left = 62
      Top = 117
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
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
      TabOrder = 10
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
      TabOrder = 11
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
      TabOrder = 12
    end
    object v_tub_codice_sorg: trzdbeditdescrizione_go
      Left = 329
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
      TabOrder = 13
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
      TabOrder = 14
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
      TabOrder = 15
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
      TabOrder = 16
    end
    object v_trasferisci_colli: TRzBitBtn
      Left = 675
      Top = 25
      Width = 111
      Height = 26
      Hint = 'trasferisci colli'
      Caption = 'trasferisci colli'
      TabOrder = 17
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
  end
  object v_lista: TListBox [3]
    Left = 0
    Top = 548
    Width = 827
    Height = 56
    Align = alBottom
    ItemHeight = 13
    TabOrder = 4
  end
  object RzPanel2: TRzPanel [4]
    Left = 0
    Top = 249
    Width = 827
    Height = 150
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
    object RzLabel8: TRzLabel
      Left = 65
      Top = 51
      Width = 113
      Height = 13
      Caption = 'ubicazione destinazione'
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
    object v_a31tsu_codice_01_dest: trzdbeditdescrizione_go
      Left = 65
      Top = 67
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 1
    end
    object v_a31tsu_descrizione_01_dest: trzdbeditdescrizione_go
      Left = 115
      Top = 68
      Width = 215
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 2
    end
    object v_a31tsu_codice_02_dest: trzdbeditdescrizione_go
      Left = 335
      Top = 67
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 3
    end
    object v_a31tsu_descrizione_02_dest: trzdbeditdescrizione_go
      Left = 385
      Top = 67
      Width = 253
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
      DataField = 'tsu2_descrizione'
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
    object v_a31tsu_codice_03_dest: trzdbeditdescrizione_go
      Left = 65
      Top = 92
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 5
    end
    object v_a31tsu_descrizione_03_dest: trzdbeditdescrizione_go
      Left = 115
      Top = 92
      Width = 215
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 6
    end
    object v_a31tsu_codice_04_dest: trzdbeditdescrizione_go
      Left = 335
      Top = 92
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 7
    end
    object v_a31tsu_descrizione_04_dest: trzdbeditdescrizione_go
      Left = 385
      Top = 92
      Width = 253
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 8
    end
    object v_a31tsu_codice_05_dest: trzdbeditdescrizione_go
      Left = 65
      Top = 117
      Width = 44
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 9
    end
    object v_a31tsu_descrizione_05_dest: trzdbeditdescrizione_go
      Left = 115
      Top = 117
      Width = 215
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = a31tsu_ds
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
      TabOrder = 10
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
      TabOrder = 11
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
    object v_aggiungi_lotto: TRzBitBtn
      Left = 345
      Top = 20
      Width = 111
      Height = 26
      Hint = 'aggiungi'
      Caption = 'aggiungi'
      Enabled = False
      TabOrder = 12
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
  object v_griglia: TcxGrid [5]
    Left = 0
    Top = 399
    Width = 827
    Height = 149
    Align = alTop
    TabOrder = 3
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
        DataBinding.FieldName = 'TUB_CODICE_SCARICO'
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
      'from lot'
      'inner join ltp on ltp.LOT_CODICE=lot.lotto'
      'where'
      'lot.lotto=:lotto')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 637
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lotto'
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
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      't.* from a31trasf t'
      'where'
      't.utn_codice=:utn_codice'
      'order by t.lot_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 692
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object a31trasf_ds: TMyDataSource
    DataSet = a31trasf
    Left = 735
    Top = 75
  end
end
