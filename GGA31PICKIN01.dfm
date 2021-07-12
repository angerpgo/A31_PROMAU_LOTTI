inherited A31PICKIN01: TA31PICKIN01
  Left = 180
  Top = 335
  ActiveControl = v_nr_colli
  Caption = 'A31PICKIN01'
  ClientHeight = 431
  ClientWidth = 666
  Position = poDesktopCenter
  ExplicitWidth = 672
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  object v_l_frn_codice: TRzLabel [0]
    Left = 10
    Top = 37
    Width = 73
    Height = 13
    Caption = 'codice fornitore'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object RzLabel1: TRzLabel [1]
    Left = 5
    Top = 254
    Width = 110
    Height = 13
    Caption = 'codice articolo fornitore'
    FocusControl = v_codice_articolo_fornitore
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object Label19: TRzLabel [2]
    Left = 4
    Top = 181
    Width = 69
    Height = 13
    Caption = 'codice articolo'
    FocusControl = v_art_codice
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object RzLabel2: TRzLabel [3]
    Left = 372
    Top = 130
    Width = 63
    Height = 13
    Caption = 'quantit'#224' collo'
    FocusControl = v_quantita_collo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object RzLabel3: TRzLabel [4]
    Left = 12
    Top = 130
    Width = 17
    Height = 13
    Caption = 'riga'
    FocusControl = v_codice_articolo_fornitore
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object RzLabel4: TRzLabel [5]
    Left = 10
    Top = 75
    Width = 77
    Height = 13
    Caption = 'data documento'
  end
  object RzLabel5: TRzLabel [6]
    Left = 109
    Top = 75
    Width = 91
    Height = 13
    Caption = 'numero documento'
  end
  object RzLabel6: TRzLabel [7]
    Left = 233
    Top = 93
    Width = 5
    Height = 13
    Caption = '/'
  end
  object RzLabel7: TRzLabel [8]
    Left = 5
    Top = 308
    Width = 71
    Height = 13
    AutoSize = False
    Caption = 'codice collo'
    FocusControl = v_lotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object RzLabel8: TRzLabel [9]
    Left = 282
    Top = 130
    Width = 58
    Height = 13
    Caption = 'quantit'#224' riga'
    FocusControl = v_quantita_riga
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object RzLabel9: TRzLabel [10]
    Left = 101
    Top = 130
    Width = 30
    Height = 13
    Caption = 'nr colli'
    FocusControl = v_nr_colli
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowAccelChar = False
    Transparent = True
  end
  object RzLabel10: TRzLabel [11]
    Left = 180
    Top = 130
    Width = 59
    Height = 13
    Caption = 'nr colli creati'
    FocusControl = v_nr_colli_creati
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
    Width = 666
    ExplicitWidth = 666
  end
  inherited statusbar: TStatusBar
    Top = 411
    Width = 666
    ExplicitTop = 411
    ExplicitWidth = 666
  end
  object v_frn_codice: trzdbedit_go [14]
    Left = 10
    Top = 50
    Width = 90
    Height = 21
    Hint = 'codice fornitore [F4 F5 F6]'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = xxr_ds
    DataField = 'frn_codice'
    Enabled = False
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
  object v_frn_descrizione: trzdbeditdescrizione_go [15]
    Left = 109
    Top = 48
    Width = 549
    Height = 21
    Hint = '-'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = xxr_ds
    DataField = 'frn_descrizione'
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
  object v_art_descrizione1: trzdbedit_go [16]
    Left = 180
    Top = 198
    Width = 476
    Height = 21
    Hint = 'descrizione della riga (prima parte)'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = art_ds
    DataField = 'descrizione1'
    Enabled = False
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
  object v_art_descrizione2: trzdbedit_go [17]
    Left = 180
    Top = 223
    Width = 476
    Height = 21
    Hint = 'descrizione della riga (prima parte)'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = art_ds
    DataField = 'descrizione2'
    Enabled = False
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
  object v_codice_articolo_fornitore: trzedit_go [18]
    Left = 6
    Top = 271
    Width = 160
    Height = 21
    Hint = 
      '[Ctrl+F8=equivalenti][Ctrl+F9=analisi listini][Ctrl+F11=ult.prz.' +
      'for.][Alt+F9=RMA][F9=art.for.][Alt+F8=non conformit'#224'][Ctrl+F7=ar' +
      'ticoli potenziali][Ctrl+F2=articoli dell'#39'intestatario documento]'
    Margins.Left = 1
    Margins.Top = 1
    Text = ''
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnlyColor = clBtnFace
    ReadOnlyColorOnFocus = True
    TabOrder = 13
    lookcolldatabase = 'arc.arcdit'
    lookcollpopupmenu = ARC.pop_arc_art
    lookcollprogram = 'GESART'
    lookcolltable = 'ART'
    lookcollvisname = 'ART'
  end
  object v_arf_descrizione1: trzdbedit_go [19]
    Left = 180
    Top = 269
    Width = 476
    Height = 21
    Hint = 'descrizione della riga (prima parte)'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = arf_ds
    DataField = 'descrizione_articolo_fornitore'
    Enabled = False
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
  object v_art_codice: trzedit_go [20]
    Left = 5
    Top = 198
    Width = 160
    Height = 21
    Hint = 
      '[Ctrl+F8=equivalenti][Ctrl+F9=analisi listini][Ctrl+F11=ult.prz.' +
      'for.][Alt+F9=RMA][F9=art.for.][Alt+F8=non conformit'#224'][Ctrl+F7=ar' +
      'ticoli potenziali][Ctrl+F2=articoli dell'#39'intestatario documento]'
    Margins.Left = 1
    Margins.Top = 1
    Text = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnlyColor = clBtnFace
    ReadOnlyColorOnFocus = True
    TabOrder = 7
    OnEnter = v_art_codiceEnter
    OnExit = v_art_codiceExit
    OnKeyDown = v_art_codiceKeyDown
    lookcolldatabase = 'arc.arcdit'
    lookcollpopupmenu = ARC.pop_arc_art
    lookcollprogram = 'GESART'
    lookcolltable = 'A31PICK3'
    lookcollvisname = 'A31PICKR01'
  end
  object pannello_bottoni: TRzPanel [21]
    Left = 0
    Top = 370
    Width = 666
    Height = 41
    Align = alBottom
    BorderInner = fsFlat
    BorderOuter = fsFlat
    TabOrder = 17
    object v_esci: TRzRapidFireButton
      Left = 100
      Top = 8
      Width = 86
      Height = 26
      Hint = 'esci dal programma'
      Caption = 'Esci'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000FCF9F600FCEE
        DB00FCF2E400FCF6ED00FCEBD100FCEDD600FCF1DF00FCF8F100FCF5E800FCFC
        FB00AFB6CF005E78E0005F77DE00AEB4CC00C4C5C9002143E200314FE100415F
        E2005A71DA001B38DC001C3ADB001F3EE0004C62E8004A60E4004F65E8005067
        E800566AD500172DD000273DD600293FD5003246D7003348D800364ADB003548
        D600374CDB003C53E2003C51DF003D52E0003F56E4003C4FDB004156E0004358
        E000455BE4007986DD001328CA001328C9001427CB001A2BCA001F30C7002233
        CC002437D3002638CF002839CF002A3DD400293BD0002C3FD4002D40D4002E41
        D4002D3ED1002E3FD1003043D4003041D1003346D6003548D9005462CF005965
        D200616DD400707BD700747ED800747ED700747FD7007B86DD007E87DB00949B
        DC00AAADC8000D1AB9000E1CBB00101DBD00101DBB00101CB6001323C5001420
        BC001521BE001727C5001825BB001725B7001C2AC6001C2ABF003E49C500414C
        C6004F58C300555FCE005560CC00555FCA005660CB005862CE005962CE005B65
        D0006871D2007079D600727BD700959BDC000A12AC000B16B7000B16B6000D19
        BB000C15B2000C16B1000C15AE000D16AC000D15AB000E17AC00101AB300131A
        9F00131A9E002F38B9004850C2005158C400545BC500A6A7BB000A10A9000A11
        A9000A11A6000A0FA5000A10A5000A0FA3000A10A3000A0FA2000A10A2000B12
        AB000A0EA0000A0FA0000A0E9F000A0F9F000A0E9B000C12AB000B11A5000B10
        8E00181B84002C319C00353AB1003A3EB300494DAF004C50AF0046489A00575A
        BE00575BBE00A9AAC2000A0D9B000A0D9A000A0D98000A0C93000B0D92000B0D
        69000C0E6F000A0B5E000D0E76000A0B5A000D0E6F0018196A001B1C6E001B1C
        60002A2A65004B4C94004B4C8600464677004949750049497400494A7400A9A9
        B400A6A6AF00A6A6AE00C3C3C700C3C3C600C3C3C400FCFCFC00FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B0B0B0B0A9A4
        A09B9DA1A8ABB0B0B0B0B0B0ADA3894F2F371F325599A7AEB0B0B0AD8B6C5333
        383F242A162372A2AEB0B08F6A5263413439202547651871A6B093676B610703
        43363C48050449269AAA7468785900070364440601052B1954A556667C795B00
        0703080206482817359F2E80837B815C00070308453E2729229E1B8586827B5E
        09000703453A21271E9C1C7A968676AFAF09000703463B21318A1A4B978DAFAF
        AF5D5F000703423D51900D139692AFAF757D6E60000764308777B0122C98918C
        94847E6D5862574E8EB0B00E112D9697969584886F704D73ACB0B0B00E0B0F4C
        7C7F7C6669505AACB0B0B0B0B0B00A0C1015141D404AB0B0B0B0}
      OnClick = v_esciClick
    end
    object v_conferma: TRzBitBtn
      Left = 8
      Top = 9
      Width = 86
      Height = 26
      Hint = 'conferma l'#39'elaborazione'
      Caption = 'Conferma'
      TabOrder = 0
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
  end
  object v_quantita_collo: trznumericedit_go [22]
    Left = 372
    Top = 149
    Width = 65
    Height = 21
    Hint = '[Alt+Gi'#249'=apre calcolatrice]'
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
    TabOrder = 16
    OnExit = v_quantita_colloExit
    IntegersOnly = False
    DisplayFormat = ',0;-,0;0'
    decimalplaces = 0
  end
  object v_tcm_codice: trzdbedit_go [23]
    Left = 6
    Top = 223
    Width = 160
    Height = 21
    Hint = 'descrizione della riga (prima parte)'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = art_ds
    DataField = 'tcm_codice'
    Enabled = False
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
  object v_riga: trznumericedit_go [24]
    Left = 8
    Top = 145
    Width = 65
    Height = 21
    Hint = '[Alt+Gi'#249'=apre calcolatrice]'
    TabStop = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnlyColor = clBtnFace
    ReadOnlyColorOnFocus = True
    TabOrder = 15
    IntegersOnly = False
    DisplayFormat = ',0;-,0;0'
    decimalplaces = 0
  end
  object v_data_documento: trzdbdatetimeedit_go [25]
    Left = 10
    Top = 90
    Width = 77
    Height = 21
    Hint = 'data documento [Alt+Gi'#249' per aprire il calendario]'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = xxr_ds
    DataField = 'data_documento'
    AutoSelect = False
    Enabled = False
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
    CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
    CaptionTodayBtn = 'oggi'
    CaptionClearBtn = 'annulla'
    Date = 44356.000000000000000000
    EditType = etDate
    DropButtonVisible = False
  end
  object v_numero_documento_alfa: trzdbedit_go [26]
    Left = 109
    Top = 92
    Width = 118
    Height = 21
    Hint = 'numero documento alfanumerico'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = xxr_ds
    DataField = 'numero_documento'
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
  end
  object v_serie_documento: trzdbedit_go [27]
    Left = 244
    Top = 90
    Width = 34
    Height = 21
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = xxr_ds
    DataField = 'serie_documento'
    Enabled = False
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
  object v_lotto: trzedit_go [28]
    Left = 5
    Top = 325
    Width = 160
    Height = 21
    Hint = 
      '[Ctrl+F8=equivalenti][Ctrl+F9=analisi listini][Ctrl+F11=ult.prz.' +
      'for.][Alt+F9=RMA][F9=art.for.][Alt+F8=non conformit'#224'][Ctrl+F7=ar' +
      'ticoli potenziali][Ctrl+F2=articoli dell'#39'intestatario documento]'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    Text = ''
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ReadOnlyColor = clBtnFace
    ReadOnlyColorOnFocus = True
    TabOrder = 11
    lookcolldatabase = 'arc.arcdit'
  end
  object v_lot_descrizione: trzdbedit_go [29]
    Left = 179
    Top = 325
    Width = 476
    Height = 21
    Hint = 'descrizione della riga (prima parte)'
    Margins.Left = 1
    Margins.Top = 1
    TabStop = False
    DataSource = arf_ds
    DataField = 'descrizione_articolo_fornitore'
    Enabled = False
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
  object v_stessa_qta: TRzCheckBox [30]
    Left = 315
    Top = 92
    Width = 67
    Height = 15
    Caption = 'stessa qta'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object v_quantita_riga: trznumericedit_go [31]
    Left = 282
    Top = 147
    Width = 65
    Height = 21
    Hint = '[Alt+Gi'#249'=apre calcolatrice]'
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
    TabOrder = 19
    IntegersOnly = False
    DisplayFormat = ',0;-,0;0'
    decimalplaces = 0
  end
  object v_nr_colli: trznumericedit_go [32]
    Left = 100
    Top = 149
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
    TabOrder = 20
    IntegersOnly = False
    DisplayFormat = ',0;-,0;0'
    decimalplaces = 0
  end
  object v_nr_colli_creati: trznumericedit_go [33]
    Left = 180
    Top = 145
    Width = 65
    Height = 21
    Hint = '[Alt+Gi'#249'=apre calcolatrice]'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ReadOnlyColor = clYellow
    ReadOnlyColorOnFocus = True
    TabOrder = 21
    IntegersOnly = False
    DisplayFormat = ',0;-,0;0'
    decimalplaces = 0
  end
  inherited query_ds: TMyDataSource
    Left = 290
    Top = 65531
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select descrizione1, descrizione2, tcm_codice, obsoleto'
      'from art'
      'where'
      'codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 330
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 365
  end
  object arf: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art_codice, codice_articolo_fornitore,descrizione_articol' +
        'o_fornitore'
      'from arf'
      'where'
      'frn_codice=:frn_codice and'
      'codice_articolo_fornitore=:codice_articolo_fornitore')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice_articolo_fornitore'
        Value = nil
      end>
  end
  object arf_ds: TMyDataSource
    DataSet = arf
    Left = 435
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    Left = 625
  end
  object pickr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select riga, quantita, quantita_rilevata'
      'from a31pickr'
      'where'
      'progressivo=:progressivo and'
      'art_codice=:art_codice and'
      'quantita-quantita_rilevata > 0 and'
      'flag_controllato='#39'no'#39
      'order by riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 564
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object pickr_ds: TMyDataSource
    DataSet = pickr
    Left = 594
    Top = 5
  end
  object xxr_ds: TMyDataSource
    DataSet = xxr
    Left = 609
    Top = 80
  end
  object lot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select r.riga, r.lotto, r.art_codice, r.quantita , r.quantita_ri' +
        'levata'
      'from a31pickr r'
      'where'
      'progressivo=:progressivo ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 50
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
      'select ltm.*'
      'from ltm'
      'where'
      'ltm.documento_origine=:documento_origine and'
      'ltm.doc_progressivo_origine=:progressivo and'
      'ltm.doc_riga_origine=:riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 450
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'documento_origine'
        Value = nil
      end
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
  object a31etichette: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from'
      'a31etichette'
      'where progressivo=:progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 533
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
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
    Left = 478
    Top = 60
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
    SQLInsert.Strings = (
      'INSERT INTO a31pickr'
      
        '  (ID, UTENTE, data_ora, UTENTE_CREAZIONE, data_ora_creazione, i' +
        'd_origine, progressivo, riga, art_codice, lotto, descrizione1, d' +
        'escrizione2, numero_colli, quantita, quantita_rilevata, differen' +
        'za, flag_controllato, tma_codice, riga_acq, progressivo_mmt, rig' +
        'a_mmt, documento_origine, doc_progressivo_origine, doc_riga_orig' +
        'ine)'
      'VALUES'
      
        '  (:ID, :UTENTE, :data_ora, :UTENTE_CREAZIONE, :data_ora_creazio' +
        'ne, :id_origine, :progressivo, :riga, :art_codice, :lotto, :desc' +
        'rizione1, :descrizione2, :numero_colli, :quantita, :quantita_ril' +
        'evata, :differenza, :flag_controllato, :tma_codice, :riga_acq, :' +
        'progressivo_mmt, :riga_mmt, :documento_origine, :doc_progressivo' +
        '_origine, :doc_riga_origine)')
    SQLDelete.Strings = (
      'DELETE FROM a31pickr'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE a31pickr'
      'SET'
      
        '  ID = :ID, UTENTE = :UTENTE, data_ora = :data_ora, UTENTE_CREAZ' +
        'IONE = :UTENTE_CREAZIONE, data_ora_creazione = :data_ora_creazio' +
        'ne, id_origine = :id_origine, progressivo = :progressivo, riga =' +
        ' :riga, art_codice = :art_codice, lotto = :lotto, descrizione1 =' +
        ' :descrizione1, descrizione2 = :descrizione2, numero_colli = :nu' +
        'mero_colli, quantita = :quantita, quantita_rilevata = :quantita_' +
        'rilevata, differenza = :differenza, flag_controllato = :flag_con' +
        'trollato, tma_codice = :tma_codice, riga_acq = :riga_acq, progre' +
        'ssivo_mmt = :progressivo_mmt, riga_mmt = :riga_mmt, documento_or' +
        'igine = :documento_origine, doc_progressivo_origine = :doc_progr' +
        'essivo_origine, doc_riga_origine = :doc_riga_origine'
      'WHERE'
      '  ID = :Old_ID')
    SQLRefresh.Strings = (
      
        'SELECT ID, UTENTE, data_ora, UTENTE_CREAZIONE, data_ora_creazion' +
        'e, id_origine, progressivo, riga, art_codice, lotto, descrizione' +
        '1, descrizione2, numero_colli, quantita, quantita_rilevata, diff' +
        'erenza, flag_controllato, tma_codice, riga_acq, progressivo_mmt,' +
        ' riga_mmt, documento_origine, doc_progressivo_origine, doc_riga_' +
        'origine FROM a31pickr'
      'WHERE'
      '  ID = :ID')
    SQLLock.Strings = (
      'SELECT * FROM a31pickr'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM a31pickr')
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      'a31pickt.frn_codice, '
      'frn.descrizione1 frn_descrizione,'
      'a31pickt.data_documento, '
      'a31pickt.numero_documento,'
      'a31pickt.serie_documento,'
      'a31pickr.*'
      'from a31pickr'
      
        'inner join a31pickt on a31pickt.progressivo=a31pickr.progressivo' +
        ' '
      'left join frn on frn.codice=a31pickt.frn_codice'
      'where '
      'a31pickr.progressivo=:progressivo and '
      'a31pickr.riga=:riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 609
    Top = 130
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 7
      end
      item
        DataType = ftInteger
        Name = 'riga'
        Value = 10
      end>
  end
end
