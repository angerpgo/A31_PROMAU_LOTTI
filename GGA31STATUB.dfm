inherited A31STATUB: TA31STATUB
  Caption = 'A31STATUB'
  ClientHeight = 315
  ClientWidth = 672
  ExplicitWidth = 688
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 672
    ExplicitWidth = 672
  end
  inherited pannello_parametri: TRzPanel
    Width = 672
    Height = 198
    ExplicitLeft = 5
    ExplicitWidth = 672
    ExplicitHeight = 198
    object l_da_codice_struttura: TRzLabel [0]
      Left = 15
      Top = 35
      Width = 138
      Height = 13
      Caption = 'da codice struttura ubicazioni'
    end
    object RzLabel1: TRzLabel [1]
      Left = 15
      Top = 80
      Width = 132
      Height = 13
      Caption = 'a codice struttura ubicazioni'
    end
    object RzLabel2: TRzLabel [2]
      Left = 15
      Top = 129
      Width = 26
      Height = 13
      Caption = 'livello'
    end
    inherited ProgressBar: TProgressBar
      Left = 590
      ExplicitLeft = 590
    end
    object v_da_codice_01: trzedit_go
      Left = 15
      Top = 50
      Width = 40
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
      TabOrder = 1
    end
    object v_da_codice_02: trzedit_go
      Left = 60
      Top = 50
      Width = 40
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
    end
    object v_da_codice_03: trzedit_go
      Left = 105
      Top = 50
      Width = 40
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
    end
    object v_da_codice_04: trzedit_go
      Left = 150
      Top = 50
      Width = 40
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
      TabOrder = 4
    end
    object v_da_codice_05: trzedit_go
      Left = 200
      Top = 50
      Width = 40
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
      TabOrder = 5
    end
    object v_a_codice_01: trzedit_go
      Left = 15
      Top = 95
      Width = 40
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
      OnExit = v_a_codice_01Exit
    end
    object v_a_codice_02: trzedit_go
      Left = 60
      Top = 95
      Width = 40
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
      TabOrder = 7
      OnExit = v_a_codice_02Exit
    end
    object v_a_codice_03: trzedit_go
      Left = 105
      Top = 95
      Width = 40
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
      TabOrder = 8
      OnExit = v_a_codice_03Exit
    end
    object v_a_codice_04: trzedit_go
      Left = 150
      Top = 95
      Width = 40
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
      TabOrder = 9
      OnExit = v_a_codice_04Exit
    end
    object v_a_codice_05: trzedit_go
      Left = 200
      Top = 95
      Width = 40
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
      TabOrder = 10
      OnExit = v_a_codice_05Exit
    end
    object v_livello: trznumericedit_go
      Left = 15
      Top = 145
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
      TabOrder = 11
      IntegersOnly = False
      DisplayFormat = ',0.00;-,0.00;#'
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 232
    Width = 672
    ExplicitTop = 190
    ExplicitWidth = 672
    inherited Bevel1: TBevel
      Width = 672
      ExplicitLeft = 5
      ExplicitWidth = 672
    end
    inherited Label1: TRzLabel
      Top = 21
      ExplicitTop = 21
    end
    inherited v_modello: trzcombobox_go
      Top = 36
      ExplicitTop = 36
    end
    inherited v_conferma: TRzBitBtn
      Left = 580
      ExplicitLeft = 580
    end
    inherited v_esci: TRzBitBtn
      Left = 580
      ExplicitLeft = 580
    end
    inherited v_interrompi: TRzBitBtn
      Left = 485
      Top = 36
      ExplicitLeft = 485
      ExplicitTop = 36
    end
  end
  inherited statusbar: TStatusBar
    Top = 295
    Width = 672
    ExplicitTop = 253
    ExplicitWidth = 672
  end
  inherited sor2: TMyTable
    Top = 15
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'SELECT'
      ':livello livello,'
      'tsu.codice_01, '
      'tsu.codice_02, '
      'tsu.codice_03, '
      'tsu.codice_04, '
      'tsu.codice_05, '
      #39#39' tub_codice, '
      'tsu1.descrizione tsu_descrizione1,'
      
        'if(tsu2.codice_02='#39#39'  and tsu2.codice_03='#39#39'  and tsu2.codice_04=' +
        #39#39' and tsu2.codice_05='#39#39','#39#39', tsu2.descrizione) tsu_descrizione2,'
      
        'if(tsu3.codice_03='#39#39'  and tsu3.codice_04='#39#39' and tsu3.codice_05='#39 +
        #39','#39#39', tsu3.descrizione) tsu_descrizione3,'
      
        'if(tsu4.codice_04='#39#39' and tsu4.codice_05='#39#39','#39#39', tsu4.descrizione)' +
        ' tsu_descrizione4,'
      'if(tsu5.codice_05='#39#39' ,'#39#39', tsu5.descrizione) tsu_descrizione5,'
      'tsu.descrizione tub_descrizione'
      'from a31tsu tsu'
      
        'INNER JOIN a31tsu tsu1 ON tsu1.codice_01=tsu.codice_01 and tsu1.' +
        'codice_02='#39#39' and tsu1.codice_03='#39#39' and tsu1.codice_04='#39#39' and tsu' +
        '1.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu2 ON tsu2.codice_01=tsu.codice_01 and tsu2.' +
        'codice_02=tsu.codice_02 and tsu2.codice_03='#39#39' and tsu2.codice_04' +
        '='#39#39' and tsu1.codice_05='#39#39
      
        'left JOIN a31tsu tsu3 ON tsu3.codice_01=tsu.codice_01 and tsu3.c' +
        'odice_02=tsu.codice_02 and tsu3.codice_03=tsu.codice_03  and tsu' +
        '3.codice_04='#39#39' and tsu3.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu4 ON tsu4.codice_01=tsu.codice_01 and tsu4.' +
        'codice_02=tsu.codice_02 and tsu4.codice_03=tsu.codice_03  and ts' +
        'u4.codice_04=tsu.codice_04 and tsu4.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu5 ON tsu5.codice_01=tsu.codice_01 and tsu5.' +
        'codice_02=tsu.codice_02 and tsu5.codice_03=tsu.codice_03  and ts' +
        'u5.codice_04=tsu.codice_04 and tsu5.codice_05=tsu.codice_05'
      'where '
      'tsu.codice_01 between :da_codice_01 and :a_codice_01 and'
      'tsu.codice_02 between :da_codice_02 and :a_codice_02 and'
      'tsu.codice_03 between :da_codice_03 and :a_codice_03 and'
      'tsu.codice_04 between :da_codice_04 and :a_codice_04 and'
      'tsu.codice_05 between :da_codice_05 and :a_codice_05 '
      'union all'
      'SELECT '
      ':livello livello,'
      'tub.a31tsu_codice_01 codice_01, '
      'tub.a31tsu_codice_02 codice_02, '
      'tub.a31tsu_codice_03 codice_03,'
      'tub.a31tsu_codice_04 codice_04,'
      'tub.a31tsu_codice_05 codice_05, '
      'tub.codice tub_codice,'
      'tsu1.descrizione tsu_descrizione1,'
      
        'if(tsu2.codice_02='#39#39' and tsu3.codice_03='#39#39' and tsu3.codice_04='#39#39 +
        ' and tsu3.codice_05='#39#39','#39#39', tsu2.descrizione) tsu_descrizione2,'
      
        'if(tsu3.codice_03='#39#39' and tsu3.codice_04='#39#39' and tsu3.codice_05='#39#39 +
        ' ,'#39#39',  tsu3.descrizione) tsu_descrizione3,'
      
        'if(tsu4.codice_04='#39#39' and tsu3.codice_05='#39#39','#39#39', tsu4.descrizione)' +
        ' tsu_descrizione4,'
      'if(tsu5.codice_05='#39#39' ,'#39#39', tsu5.descrizione) tsu_descrizione5,'
      'tub.descrizione tub_descrizione'
      'from tub'
      
        'INNER JOIN a31tsu tsu1 ON tsu1.codice_01=tub.a31tsu_codice_01 an' +
        'd tsu1.codice_02='#39#39' and tsu1.codice_03='#39#39' and tsu1.codice_04='#39#39' ' +
        'and tsu1.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu2 ON tsu2.codice_01=tub.a31tsu_codice_01 an' +
        'd tsu2.codice_02=tub.a31tsu_codice_02 and tsu2.codice_03='#39#39'  and' +
        ' tsu2.codice_04='#39#39' AND tsu2.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu3 ON tsu3.codice_01=tub.a31tsu_codice_01 an' +
        'd tsu3.codice_02=tub.a31tsu_codice_02 and tsu3.codice_03=tub.a31' +
        'tsu_codice_03  and tsu3.codice_04='#39#39' and tsu3.codice_05='#39#39
      
        'INNER JOIN a31tsu tsu4 ON tsu4.codice_01=tub.a31tsu_codice_01 an' +
        'd tsu4.codice_02=tub.a31tsu_codice_02 and tsu4.codice_03=tub.a31' +
        'tsu_codice_03  and tsu4.codice_04=tub.a31tsu_codice_04 and tsu4.' +
        'codice_05='#39#39
      
        'INNER JOIN a31tsu tsu5 ON tsu5.codice_01=tub.a31tsu_codice_01 an' +
        'd tsu5.codice_02=tub.a31tsu_codice_02 and tsu5.codice_03=tub.a31' +
        'tsu_codice_03  and tsu5.codice_04=tub.a31tsu_codice_04 and tsu5.' +
        'codice_05=tub.a31tsu_codice_05'
      'where'
      'tub.ubicazione_unica ='#39'no'#39' AND'
      'tub.a31tsu_codice_01 between :da_codice_01 and :a_codice_01 and'
      'tub.a31tsu_codice_02 between :da_codice_02 and :a_codice_02 and'
      'tub.a31tsu_codice_03 between :da_codice_03 and :a_codice_03 and'
      'tub.a31tsu_codice_04 between :da_codice_04 and :a_codice_04 and'
      'tub.a31tsu_codice_05 between :da_codice_05 and :a_codice_05 '
      'order by 1,2,3,4,5,6')
    Left = 285
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'livello'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'da_codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'a_codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'da_codice_02'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_02'
        Value = 'ZZZZ'
      end
      item
        DataType = ftString
        Name = 'da_codice_03'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_03'
        Value = 'ZZZZ'
      end
      item
        DataType = ftString
        Name = 'da_codice_04'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_04'
        Value = 'ZZZZ'
      end
      item
        DataType = ftString
        Name = 'da_codice_05'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_05'
        Value = 'ZZZZ'
      end
      item
        DataType = ftUnknown
        Name = 'livello'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'da_codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'a_codice_01'
        Value = 'P4'
      end
      item
        DataType = ftString
        Name = 'da_codice_02'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_02'
        Value = 'ZZZZ'
      end
      item
        DataType = ftString
        Name = 'da_codice_03'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_03'
        Value = 'ZZZZ'
      end
      item
        DataType = ftString
        Name = 'da_codice_04'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_04'
        Value = 'ZZZZ'
      end
      item
        DataType = ftString
        Name = 'da_codice_05'
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'a_codice_05'
        Value = 'ZZZZ'
      end>
  end
  inherited query_ds: TMyDataSource
    Left = 320
    Top = 65
  end
  inherited ppReport: TppReport
    Template.FileName = 
      'C:\GestionaleOpen\go_utenti\A31_PROMAU\report\A31STATUB_STANDARD' +
      '.RTM'
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Image_parametri: TppImage
        LayerName = Foreground
      end
      inherited pp_Label8_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label9_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label12_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label13_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label14_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label15_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label16_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label17_parametri: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_copia_schermo: TppImage
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      inherited pp_Shape1: TppShape
        LayerName = Foreground
      end
      inherited pp_Shape3: TppShape
        LayerName = Foreground
      end
      inherited pp_Image1: TppImage
        LayerName = Foreground
      end
      inherited pp_Label1: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label19: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label4: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label2: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label5: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label10: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label6: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label3: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4498
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'tub_codice'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 41150
        mmTop = 0
        mmWidth = 19623
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'tub_codice'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 4498
        mmLeft = 62053
        mmTop = 0
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited pp_Shape2: TppShape
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_utente: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [4]
      BreakName = 'codice_01'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          DataField = 'codice_01'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 6879
          mmTop = 305
          mmWidth = 6811
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup [5]
      BreakName = 'codice_02'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          DataField = 'codice_02'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 13288
          mmTop = 265
          mmWidth = 6811
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup [6]
      BreakName = 'codice_03'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          DataField = 'codice_03'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 20638
          mmTop = 0
          mmWidth = 6879
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup [7]
      BreakName = 'codice_04'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          DataField = 'codice_04'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 26458
          mmTop = 0
          mmWidth = 6879
          BandType = 3
          GroupNo = 3
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup5: TppGroup [8]
      BreakName = 'codice_05'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          DataField = 'codice_05'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 4498
          mmLeft = 33867
          mmTop = 265
          mmWidth = 6879
          BandType = 3
          GroupNo = 4
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  inherited ppReport_registri_fiscali: TppReport
    inherited ppHeaderBand2_registri_fiscali: TppHeaderBand
      inherited pp_Shape4_registri_fiscali: TppShape
        LayerName = pp_Foreground1
      end
      inherited pp_Shape5_registri_fiscali: TppShape
        LayerName = pp_Foreground1
      end
      inherited pp_dit_descrizione1_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_via_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_descrizione2_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_citta_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_registro_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_Label8_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_pagina_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_Label9_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_anno_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_codice_fiscale_registri_fiscali1: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_codice_fiscale_registri_fiscali2: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_partita_iva_registri_fiscali1: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_dit_partita_iva_registri_fiscali2: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
    end
    inherited ppFooterBand2_registri_fiscali: TppFooterBand
      inherited pp_Shape6_registri_fiscali: TppShape
        LayerName = pp_Foreground1
      end
      inherited pp_Label21_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
      inherited pp_Label22_registri_fiscali: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground1
      end
    end
  end
  inherited ppReport_documenti: TppReport
    inherited ppHeaderBand_documenti_01: TppHeaderBand
      inherited pp_Shape401: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_Shape_documenti_02: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione1: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione2: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_via: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_citta: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_codice_fiscale: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_codice_fiscale: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_partita_iva: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_partita_iva: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_capitale_sociale: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_capitale_sociale: TppVariable
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_registro_imprese: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_registro_imprese: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_telefono: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_telefono: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_fax: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_fax: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_web: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_web: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_e_mail: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_e_mail: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_spettabile: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_marchio: TppImage
        LayerName = pp_Foreground2
      end
      inherited pp_Label_descrizione_documento: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_numero_pagina: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_copia_interna: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited ppnumero_pagina: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione: TppLabel
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
    end
    inherited ppFooterBand_documenti_01: TppFooterBand
      inherited pp_Shape_documenti_03: TppShape
        LayerName = pp_Foreground2
      end
    end
  end
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
end
