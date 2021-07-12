inherited A31STARMA: TA31STARMA
  Caption = 'A31STARMA'
  ClientHeight = 364
  ClientWidth = 676
  ExplicitWidth = 692
  ExplicitHeight = 423
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel2: TRzLabel [0]
    Left = 15
    Top = 15
    Width = 63
    Height = 13
    Caption = 'data richiesta'
  end
  object RzLabel3: TRzLabel [1]
    Left = 17
    Top = 15
    Width = 63
    Height = 13
    Caption = 'data richiesta'
  end
  inherited toolbar: TToolBar
    Width = 676
    ExplicitWidth = 676
  end
  inherited pannello_parametri: TRzPanel
    Width = 676
    Height = 247
    ExplicitWidth = 676
    ExplicitHeight = 247
    object RzLabel1: TRzLabel [0]
      Left = 14
      Top = 15
      Width = 96
      Height = 13
      Caption = 'dalla data consegna'
    end
    object RzLabel4: TRzLabel [1]
      Left = 130
      Top = 15
      Width = 90
      Height = 13
      Caption = 'alla data consegna'
    end
    inherited ProgressBar: TProgressBar
      Left = 585
      ExplicitLeft = 585
    end
    object v_data_consegna_dal: trzdatetimeedit_go
      Left = 14
      Top = 30
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
      TabOrder = 1
      OnExit = v_data_consegna_dalExit
    end
    object v_data_consegna_al: trzdatetimeedit_go
      Left = 130
      Top = 30
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
      TabOrder = 2
      OnEnter = v_data_consegna_alEnter
      OnExit = v_data_consegna_alExit
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 281
    Width = 676
    ExplicitTop = 281
    ExplicitWidth = 676
    inherited Bevel1: TBevel
      Width = 676
      ExplicitWidth = 676
    end
    inherited v_conferma: TRzBitBtn
      Left = 580
      Top = 1
      ExplicitLeft = 580
      ExplicitTop = 1
    end
    inherited v_esci: TRzBitBtn
      Left = 580
      Top = 31
      ExplicitLeft = 580
      ExplicitTop = 31
    end
    inherited v_interrompi: TRzBitBtn
      Left = 485
      Top = 28
      ExplicitLeft = 485
      ExplicitTop = 28
    end
  end
  inherited statusbar: TStatusBar
    Top = 344
    Width = 676
    ExplicitTop = 344
    ExplicitWidth = 676
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'SELECT '
      '0 progressivo,'
      'cast( opc.data_ora as date) data_richiesta,'
      'artc.codice_alternativo artc_ubicazione,'
      'artc.codice,'
      'artc.DESCRIZIONE1 artc_descrizione1,'
      'sum(opr.quantita) quantita,'
      'sum(magp2.esistenza) esistenza_P2, '
      'sum(magp4.esistenza) esistenza_P4 '
      'from opc '
      'inner join opt on opt.progressivo=opt.progressivo'
      'inner join opr on opr.progressivo=opc.progressivo'
      'left  join art artf on artf.codice=opt.art_codice'
      'left  join art artc on artc.codice=opr.art_codice'
      
        'left  join mag magp2 on magp2.art_codice=opr.art_codice and magp' +
        '2.tma_codice ='#39'P2'#39
      
        'left  join mag magp4 on magp4.art_codice=opr.art_codice and magp' +
        '4.tma_codice ='#39'P4'#39
      'where'
      'opc.fas_codice='#39'START'#39' and'
      'opt.data_consegna between :dal and :al '
      'group by 1,2,3,4,5'
      'order by 1,2')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'al'
        Value = nil
      end>
  end
  inherited ppReport: TppReport
    Template.FileName = 
      'C:\GestionaleOpen\go_utenti\A31_PROMAU_902\report\A31STARMA_STAN' +
      'DARD.RTM'
    Left = 445
    Top = 55
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        mmWidth = 208757
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape
        mmWidth = 208757
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
      mmHeight = 20373
      inherited pp_Shape3: TppShape [0]
        LayerName = Foreground
      end
      inherited pp_Shape1: TppShape [1]
        mmWidth = 208757
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
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Caption = 'ubicazione articolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3439
        mmLeft = 3704
        mmTop = 12965
        mmWidth = 23284
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 26453
        mmTop = 14553
        mmWidth = 8724
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Caption = 'codice articolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3439
        mmLeft = 34660
        mmTop = 12965
        mmWidth = 18257
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 53220
        mmTop = 14553
        mmWidth = 15349
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Caption = 'descrizione articolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3439
        mmLeft = 68263
        mmTop = 12965
        mmWidth = 23812
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 92337
        mmTop = 14553
        mmWidth = 72233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Caption = 'qt'#224' richiesta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3439
        mmLeft = 164569
        mmTop = 12965
        mmWidth = 15082
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Caption = 'qt'#224' prelevata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3439
        mmLeft = 188384
        mmTop = 12965
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 528
        mmLeft = 179657
        mmTop = 14552
        mmWidth = 8721
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5556
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'artc_ubicazione'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3438
        mmLeft = 1322
        mmTop = 530
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'artc_descrizione1'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3438
        mmLeft = 68263
        mmTop = 530
        mmWidth = 96309
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'codice'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3438
        mmLeft = 34660
        mmTop = 530
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'quantita'
        DataPipeline = ppDBTabella
        DisplayFormat = '#,0;-#,0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3438
        mmLeft = 164569
        mmTop = 530
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        mmHeight = 5553
        mmLeft = 188384
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited pp_Shape2: TppShape
        mmWidth = 208757
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
      BreakName = 'progressivo'
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppSubReport1: TppSubReport
          DesignLayer = ppDesignLayer1
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'ppDBTabella2'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 210079
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBTabella2
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.Duplex = dpNone
            PrinterSetup.PaperName = 'A4'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 0
            PrinterSetup.mmMarginLeft = 0
            PrinterSetup.mmMarginRight = 0
            PrinterSetup.mmMarginTop = 0
            PrinterSetup.mmPaperHeight = 297127
            PrinterSetup.mmPaperWidth = 210079
            PrinterSetup.PaperSize = 9
            Template.Format = ftASCII
            Version = '17.01'
            mmColumnWidth = 0
            DataPipelineName = 'ppDBTabella2'
            object ppTitleBand1: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 3440
              mmPrintPosition = 0
            end
            object ppDetailBand2: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 5292
              mmPrintPosition = 0
              object ppDBText10: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText10'
                DataField = 'artc_ubicazione'
                DataPipeline = ppDBTabella2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBTabella2'
                mmHeight = 4498
                mmLeft = 126471
                mmTop = 0
                mmWidth = 39158
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText11: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText101'
                DataField = 'quantita'
                DataPipeline = ppDBTabella2
                DisplayFormat = '#,0;-#,0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBTabella2'
                mmHeight = 4498
                mmLeft = 166159
                mmTop = 0
                mmWidth = 16669
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText12: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText102'
                DataField = 'artc_descrizione1'
                DataPipeline = ppDBTabella2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBTabella2'
                mmHeight = 4498
                mmLeft = 36777
                mmTop = 0
                mmWidth = 78317
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText13: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText13'
                DataField = 'artc_codice'
                DataPipeline = ppDBTabella2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBTabella2'
                mmHeight = 4498
                mmLeft = 265
                mmTop = 0
                mmWidth = 35983
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText14: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText14'
                DataField = 'quantita'
                DataPipeline = ppDBTabella2
                DisplayFormat = '#,0;-#,0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBTabella2'
                mmHeight = 4498
                mmLeft = 183357
                mmTop = 0
                mmWidth = 12171
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText15: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText15'
                DataField = 'quantita'
                DataPipeline = ppDBTabella2
                DisplayFormat = '#,0;-#,0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBTabella2'
                mmHeight = 4498
                mmLeft = 195792
                mmTop = 0
                mmWidth = 12171
                BandType = 4
                LayerName = Foreground1
              end
            end
            object ppPageStyle1: TppPageStyle
              Background.Brush.Style = bsClear
              EndPage = 0
              SinglePage = 0
              StartPage = 0
              mmBottomOffset = 0
              mmHeight = 297127
              mmPrintPosition = 0
            end
            object ppSummaryBand1: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppGroup2: TppGroup
              BreakName = 'artc_codice'
              DataPipeline = ppDBTabella2
              GroupFileSettings.NewFile = False
              GroupFileSettings.EmailFile = False
              OutlineSettings.CreateNode = True
              NewPage = True
              StartOnOddPage = False
              UserName = 'Group2'
              mmNewColumnThreshold = 0
              mmNewPageThreshold = 0
              DataPipelineName = 'ppDBTabella2'
              NewFile = False
              object ppGroupHeaderBand2: TppGroupHeaderBand
                Background.Brush.Style = bsClear
                mmBottomOffset = 0
                mmHeight = 20108
                mmPrintPosition = 0
                object ppShape02: TppShape
                  DesignLayer = ppDesignLayer2
                  UserName = 'Shape02'
                  Shape = stRoundRect
                  mmHeight = 9788
                  mmLeft = 265
                  mmTop = 0
                  mmWidth = 208757
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppDBText5: TppDBText
                  DesignLayer = ppDesignLayer2
                  UserName = 'DBText5'
                  DataField = 'artc_codice'
                  DataPipeline = ppDBTabella2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  DataPipelineName = 'ppDBTabella2'
                  mmHeight = 4498
                  mmLeft = 6879
                  mmTop = 4238
                  mmWidth = 34660
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppDBText6: TppDBText
                  DesignLayer = ppDesignLayer2
                  UserName = 'DBText6'
                  DataField = 'artc_descrizione1'
                  DataPipeline = ppDBTabella2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  DataPipelineName = 'ppDBTabella2'
                  mmHeight = 4498
                  mmLeft = 43392
                  mmTop = 4238
                  mmWidth = 92604
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppLabel6: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label1'
                  Caption = 'codice articolo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3439
                  mmLeft = 6879
                  mmTop = 794
                  mmWidth = 18257
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppLabel7: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label2'
                  Caption = 'descrizione articolo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3439
                  mmLeft = 43392
                  mmTop = 794
                  mmWidth = 23812
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppShape3: TppShape
                  DesignLayer = ppDesignLayer2
                  UserName = 'Shape1'
                  Shape = stRoundRect
                  mmHeight = 5027
                  mmLeft = 265
                  mmTop = 10054
                  mmWidth = 208757
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppLabel8: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label3'
                  Caption = 'progressivo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3440
                  mmLeft = 1852
                  mmTop = 10054
                  mmWidth = 14288
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppLabel10: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label5'
                  Caption = 'codice cliente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3440
                  mmLeft = 20106
                  mmTop = 10054
                  mmWidth = 17463
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppLabel11: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label6'
                  Caption = 'descrizione cliente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3440
                  mmLeft = 38098
                  mmTop = 10054
                  mmWidth = 23019
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppDBText7: TppDBText
                  DesignLayer = ppDesignLayer2
                  UserName = 'DBText7'
                  DataField = 'progressivo'
                  DataPipeline = ppDBTabella2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppDBTabella2'
                  mmHeight = 4498
                  mmLeft = 1852
                  mmTop = 15609
                  mmWidth = 16933
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppDBText8: TppDBText
                  DesignLayer = ppDesignLayer2
                  UserName = 'DBText8'
                  DataField = 'nom_codice'
                  DataPipeline = ppDBTabella2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'ppDBTabella2'
                  mmHeight = 4498
                  mmLeft = 20108
                  mmTop = 15610
                  mmWidth = 17463
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppDBText9: TppDBText
                  DesignLayer = ppDesignLayer2
                  UserName = 'DBText9'
                  DataField = 'nom_descrizione1'
                  DataPipeline = ppDBTabella2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'ppDBTabella2'
                  mmHeight = 4498
                  mmLeft = 38100
                  mmTop = 15610
                  mmWidth = 57679
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppDBText16: TppDBText
                  DesignLayer = ppDesignLayer2
                  UserName = 'DBText16'
                  DataField = 'artc_codice'
                  DataPipeline = ppDBTabella2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'ppDBTabella2'
                  mmHeight = 4498
                  mmLeft = 93398
                  mmTop = 15609
                  mmWidth = 35983
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppDBText17: TppDBText
                  DesignLayer = ppDesignLayer2
                  UserName = 'DBText17'
                  DataField = 'artc_descrizione1'
                  DataPipeline = ppDBTabella2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'ppDBTabella2'
                  mmHeight = 4498
                  mmLeft = 129911
                  mmTop = 15609
                  mmWidth = 78317
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppLabel15: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label10'
                  Caption = 'codice art. finito'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3440
                  mmLeft = 95515
                  mmTop = 10054
                  mmWidth = 19844
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
                object ppLabel16: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label102'
                  Caption = 'descrizione articolo finito'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3440
                  mmLeft = 129911
                  mmTop = 10054
                  mmWidth = 30427
                  BandType = 3
                  GroupNo = 0
                  LayerName = Foreground1
                end
              end
              object ppGroupFooterBand2: TppGroupFooterBand
                Background.Brush.Style = bsClear
                HideWhenOneDetail = False
                mmBottomOffset = 0
                mmHeight = 2117
                mmPrintPosition = 0
                object ppLine5: TppLine
                  DesignLayer = ppDesignLayer2
                  UserName = 'Line5'
                  ParentWidth = True
                  Weight = 0.750000000000000000
                  mmHeight = 1852
                  mmLeft = 0
                  mmTop = 265
                  mmWidth = 210079
                  BandType = 5
                  GroupNo = 0
                  LayerName = Foreground1
                end
              end
            end
            object ppGroup3: TppGroup
              BreakName = 'progressivo'
              DataPipeline = ppDBTabella2
              GroupFileSettings.NewFile = False
              GroupFileSettings.EmailFile = False
              OutlineSettings.CreateNode = True
              NewPage = True
              StartOnOddPage = False
              UserName = 'Group3'
              mmNewColumnThreshold = 0
              mmNewPageThreshold = 0
              DataPipelineName = 'ppDBTabella2'
              NewFile = False
              object ppGroupHeaderBand3: TppGroupHeaderBand
                Background.Brush.Style = bsClear
                mmBottomOffset = 0
                mmHeight = 5027
                mmPrintPosition = 0
                object ppShape4: TppShape
                  DesignLayer = ppDesignLayer2
                  UserName = 'Shape3'
                  Shape = stRoundRect
                  mmHeight = 5027
                  mmLeft = 0
                  mmTop = 0
                  mmWidth = 209552
                  BandType = 3
                  GroupNo = 1
                  LayerName = Foreground1
                end
                object ppLabel12: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label7'
                  Caption = 'ubicazione articolo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  mmHeight = 3440
                  mmLeft = 126471
                  mmTop = 793
                  mmWidth = 39158
                  BandType = 3
                  GroupNo = 1
                  LayerName = Foreground1
                end
                object ppLabel13: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label8'
                  Caption = 'qt'#224' rich.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  Transparent = True
                  mmHeight = 3439
                  mmLeft = 166159
                  mmTop = 794
                  mmWidth = 12435
                  BandType = 3
                  GroupNo = 1
                  LayerName = Foreground1
                end
                object ppLabel9: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label4'
                  AutoSize = False
                  Caption = 'P2'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  TextAlignment = taCentered
                  Transparent = True
                  mmHeight = 3439
                  mmLeft = 183357
                  mmTop = 794
                  mmWidth = 12171
                  BandType = 3
                  GroupNo = 1
                  LayerName = Foreground1
                end
                object ppLabel14: TppLabel
                  DesignLayer = ppDesignLayer2
                  UserName = 'Label9'
                  AutoSize = False
                  Caption = 'P4'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = [fsBold]
                  TextAlignment = taCentered
                  Transparent = True
                  mmHeight = 3440
                  mmLeft = 195792
                  mmTop = 794
                  mmWidth = 12171
                  BandType = 3
                  GroupNo = 1
                  LayerName = Foreground1
                end
              end
              object ppGroupFooterBand3: TppGroupFooterBand
                Background.Brush.Style = bsClear
                HideWhenOneDetail = False
                mmBottomOffset = 0
                mmHeight = 1323
                mmPrintPosition = 0
                object ppLine6: TppLine
                  DesignLayer = ppDesignLayer2
                  UserName = 'Line6'
                  ParentWidth = True
                  Weight = 0.750000000000000000
                  mmHeight = 1323
                  mmLeft = 0
                  mmTop = 0
                  mmWidth = 210079
                  BandType = 5
                  GroupNo = 1
                  LayerName = Foreground1
                end
              end
            end
            object ppDesignLayers2: TppDesignLayers
              object ppDesignLayer3: TppDesignLayer
                UserName = 'PageLayer1'
                LayerType = ltPage
                Index = 0
              end
              object ppDesignLayer2: TppDesignLayer
                UserName = 'Foreground1'
                LayerType = ltBanded
                Index = 1
              end
            end
          end
        end
      end
    end
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = (
      'select'
      'opt.progressivo,'
      'ovt.numero_documento,'
      'ovt.data_documento,'
      'ovr.descrizione2 ovr_descrizione2,'
      'cast( opc.data_ora as date) data_richiesta,'
      'artc.codice_alternativo artc_ubicazione,'
      'artc.codice artc_codice,'
      'artc.descrizione1 artc_descrizione1,'
      'artc.descrizione2 artc_descrizione2,'
      'nom.codice nom_codice,'
      'nom.descrizione1 nom_descrizione1,'
      'opr.quantita'
      'from opc'
      'inner join opt on opt.progressivo=opt.progressivo'
      'left join opr on opr.progressivo=opc.progressivo'
      'left join ovt on ovt.progressivo=opt.ovr_progressivo'
      
        'left join ovr on ovr.progressivo=opt.ovr_progressivo and ovr.rig' +
        'a=opt.ovr_riga'
      'left join art artc on artc.codice=opr.art_codice'
      'left join nom on nom.codice=ovt.cli_codice'
      'where'
      'opc.fas_codice=:fas_codice and'
      'cast( opc.data_ora_creazione as date )=:data_richiesta'
      'order by 4,1')
    ParamData = <
      item
        DataType = ftWideString
        Name = 'fas_codice'
        Value = 'START'
      end
      item
        DataType = ftDate
        Name = 'data_richiesta'
        Value = 41996d
      end>
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
  object ppDBTabella2: TppDBPipeline
    DataSource = query_righe_ds
    SkipWhenNoRecords = False
    UserName = 'DBTabella2'
    Left = 323
    Top = 60
  end
end
