inherited STANCA: TSTANCA
  Left = 368
  Top = 245
  Caption = 'STANCA'
  ClientHeight = 284
  ClientWidth = 624
  ExplicitWidth = 630
  ExplicitHeight = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 624
    ExplicitWidth = 624
  end
  inherited pannello_parametri: TRzPanel
    Width = 624
    Height = 167
    ExplicitWidth = 624
    ExplicitHeight = 167
    object Label9: TRzLabel [0]
      Left = 5
      Top = 5
      Width = 71
      Height = 13
      Caption = 'dal progressivo'
      ShowAccelChar = False
      Transparent = True
    end
    object Label10: TRzLabel [1]
      Left = 290
      Top = 5
      Width = 65
      Height = 13
      Caption = 'al progressivo'
      ShowAccelChar = False
      Transparent = True
    end
    object Label11: TRzLabel [2]
      Left = 5
      Top = 45
      Width = 46
      Height = 13
      Caption = 'dalla data'
      ShowAccelChar = False
      Transparent = True
    end
    object Label12: TRzLabel [3]
      Left = 290
      Top = 45
      Width = 40
      Height = 13
      Caption = 'alla data'
      ShowAccelChar = False
      Transparent = True
    end
    object Label2: TRzLabel [4]
      Left = 5
      Top = 85
      Width = 47
      Height = 13
      Caption = 'situazione'
      ShowAccelChar = False
      Transparent = True
    end
    object v_dal_progressivo: trznumericedit_go
      Left = 5
      Top = 20
      Width = 81
      Height = 21
      Hint = 'progressivo di inizio selezione'
      Margins.Left = 1
      Margins.Top = 1
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
      IntegersOnly = False
      DisplayFormat = '0'
      decimalplaces = 0
      lookcolltable = 'XXX'
    end
    object v_al_progressivo: trznumericedit_go
      Left = 290
      Top = 20
      Width = 81
      Height = 21
      Hint = 'progressivo di fine selezione'
      Margins.Left = 1
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      OnEnter = v_al_progressivoEnter
      OnExit = v_al_progressivoExit
      IntegersOnly = False
      DisplayFormat = '0'
      decimalplaces = 0
    end
    object v_dalla_data: trzdatetimeedit_go
      Left = 5
      Top = 60
      Width = 81
      Height = 21
      Hint = 'data di inizio selezione'
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
    end
    object v_alla_data: trzdatetimeedit_go
      Left = 290
      Top = 60
      Width = 81
      Height = 21
      Hint = 'data di fine selezione'
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
      OnEnter = v_alla_dataEnter
      OnExit = v_alla_dataExit
    end
    object v_situazione: trzcombobox_go
      Left = 5
      Top = 100
      Width = 81
      Height = 21
      Hint = 'situazione'
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      FlatButtons = True
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 5
      Text = 'aperte'
      Items.Strings = (
        'aperte'
        'chiuse'
        'tutte')
      ItemIndex = 0
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 201
    Width = 624
    ExplicitTop = 201
    ExplicitWidth = 624
    inherited Bevel1: TBevel
      Width = 624
      ExplicitWidth = 569
    end
    inherited v_modello: trzcombobox_go
      Width = 320
      ExplicitWidth = 320
    end
    inherited v_conferma: TRzBitBtn
      Left = 535
      ExplicitLeft = 535
    end
    inherited v_esci: TRzBitBtn
      Left = 535
      ExplicitLeft = 535
    end
  end
  inherited statusbar: TStatusBar
    Top = 264
    Width = 624
    ExplicitTop = 264
    ExplicitWidth = 624
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select 0 progressivo, null data_registrazione, '#39#39' tnc_codice, '#39#39 +
        ' tnc_descrizione,'
      
        #39#39' ttn_codice, '#39#39' ttn_descrizione, '#39#39' art_codice, '#39#39' art_descriz' +
        'ione,'
      #39#39' frn_codice, '#39#39' frn_descrizione,'
      
        '0 quantita_lotto, 0 quantita_non_conforme, null note, '#39#39' chiusa,' +
        ' null data_chiusura,'
      
        #39#39' documento_origine, null data_documento_origine, 0 numero_docu' +
        'mento_origine, '#39#39' commessa, '#39#39' sottocommessa,'
      
        'null data_registrazione_righe, '#39#39' tac_codice, '#39#39' tac_descrizione' +
        ', null note_righe,'
      
        #39#39' documento_origine_righe, 0 doc_progressivo_origine_righe, 0 d' +
        'oc_riga_origine_righe'
      '')
  end
  inherited ppDBTabella: TppDBPipeline
    object ppDBTabellappField1: TppField
      FieldAlias = 'progressivo'
      FieldName = 'progressivo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object ppDBTabellappField2: TppField
      FieldAlias = 'data_registrazione'
      FieldName = 'data_registrazione'
      FieldLength = 0
      DisplayWidth = 0
      Position = 1
    end
    object ppDBTabellappField3: TppField
      FieldAlias = 'tnc_codice'
      FieldName = 'tnc_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 2
    end
    object ppDBTabellappField4: TppField
      FieldAlias = 'tnc_descrizione'
      FieldName = 'tnc_descrizione'
      FieldLength = 0
      DisplayWidth = 0
      Position = 3
    end
    object ppDBTabellappField5: TppField
      FieldAlias = 'ttn_codice'
      FieldName = 'ttn_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 4
    end
    object ppDBTabellappField6: TppField
      FieldAlias = 'ttn_descrizione'
      FieldName = 'ttn_descrizione'
      FieldLength = 0
      DisplayWidth = 0
      Position = 5
    end
    object ppDBTabellappField7: TppField
      FieldAlias = 'art_codice'
      FieldName = 'art_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 6
    end
    object ppDBTabellappField8: TppField
      FieldAlias = 'art_descrizione'
      FieldName = 'art_descrizione'
      FieldLength = 0
      DisplayWidth = 0
      Position = 7
    end
    object ppDBTabellappField9: TppField
      FieldAlias = 'frn_codice'
      FieldName = 'frn_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 8
    end
    object ppDBTabellappField10: TppField
      FieldAlias = 'frn_descrizione'
      FieldName = 'frn_descrizione'
      FieldLength = 0
      DisplayWidth = 0
      Position = 9
    end
    object ppDBTabellappField11: TppField
      FieldAlias = 'quantita_lotto'
      FieldName = 'quantita_lotto'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 10
    end
    object ppDBTabellappField12: TppField
      FieldAlias = 'quantita_non_conforme'
      FieldName = 'quantita_non_conforme'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 11
    end
    object ppDBTabellappField13: TppField
      FieldAlias = 'note'
      FieldName = 'note'
      FieldLength = 0
      DisplayWidth = 0
      Position = 12
    end
    object ppDBTabellappField14: TppField
      FieldAlias = 'chiusa'
      FieldName = 'chiusa'
      FieldLength = 0
      DisplayWidth = 0
      Position = 13
    end
    object ppDBTabellappField15: TppField
      FieldAlias = 'data_chiusura'
      FieldName = 'data_chiusura'
      FieldLength = 0
      DisplayWidth = 0
      Position = 14
    end
    object ppDBTabellappField16: TppField
      FieldAlias = 'documento_origine'
      FieldName = 'documento_origine'
      FieldLength = 0
      DisplayWidth = 0
      Position = 15
    end
    object ppDBTabellappField17: TppField
      FieldAlias = 'data_documento_origine'
      FieldName = 'data_documento_origine'
      FieldLength = 0
      DisplayWidth = 0
      Position = 16
    end
    object ppDBTabellappField18: TppField
      FieldAlias = 'numero_documento_origine'
      FieldName = 'numero_documento_origine'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 17
    end
    object ppDBTabellappField19: TppField
      FieldAlias = 'commessa'
      FieldName = 'commessa'
      FieldLength = 0
      DisplayWidth = 0
      Position = 18
    end
    object ppDBTabellappField20: TppField
      FieldAlias = 'sottocommessa'
      FieldName = 'sottocommessa'
      FieldLength = 0
      DisplayWidth = 0
      Position = 19
    end
    object ppDBTabellappField21: TppField
      FieldAlias = 'data_registrazione_righe'
      FieldName = 'data_registrazione_righe'
      FieldLength = 0
      DisplayWidth = 0
      Position = 20
    end
    object ppDBTabellappField22: TppField
      FieldAlias = 'tac_codice'
      FieldName = 'tac_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 21
    end
    object ppDBTabellappField23: TppField
      FieldAlias = 'tac_descrizione'
      FieldName = 'tac_descrizione'
      FieldLength = 0
      DisplayWidth = 0
      Position = 22
    end
    object ppDBTabellappField24: TppField
      FieldAlias = 'note_righe'
      FieldName = 'note_righe'
      FieldLength = 0
      DisplayWidth = 0
      Position = 23
    end
    object ppDBTabellappField25: TppField
      FieldAlias = 'documento_origine_righe'
      FieldName = 'documento_origine_righe'
      FieldLength = 0
      DisplayWidth = 0
      Position = 24
    end
    object ppDBTabellappField26: TppField
      FieldAlias = 'doc_progressivo_origine_righe'
      FieldName = 'doc_progressivo_origine_righe'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 25
    end
    object ppDBTabellappField27: TppField
      FieldAlias = 'doc_riga_origine_righe'
      FieldName = 'doc_riga_origine_righe'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 26
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.mmPaperHeight = 296863
    Template.FileName = 'C:\GestionaleOpen\go_604\report\STANCA_STANDARD.RTM'
    Left = 295
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        LayerName = Foreground
      end
      inherited pp_Image_parametri: TppImage [1]
        LayerName = Foreground
      end
      inherited pp_Label8_parametri: TppLabel [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label9_parametri: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label12_parametri: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label13_parametri: TppLabel [5]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label14_parametri: TppLabel [6]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label15_parametri: TppLabel [7]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label16_parametri: TppLabel [8]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label17_parametri: TppLabel [9]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape [10]
        LayerName = Foreground
      end
      inherited pp_copia_schermo: TppImage [11]
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable
        SaveOrder = -1
        mmLeft = 169334
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel [13]
        SaveOrder = -1
        TextAlignment = taCentered
        mmLeft = 55563
        mmTop = 13229
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 18521
      inherited pp_Shape1: TppShape
        LayerName = Foreground
      end
      inherited pp_Image1: TppImage [1]
        LayerName = Foreground
      end
      inherited pp_Label1: TppLabel [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label19: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label4: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label2: TppLabel [5]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label5: TppLabel [6]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label10: TppLabel [7]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label6: TppLabel [8]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label3: TppLabel [9]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable [10]
        SaveOrder = -1
        mmLeft = 169334
        LayerName = Foreground
      end
      inherited pp_Shape3: TppShape [11]
        Visible = False
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 19844
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        DataField = 'tac_codice'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 19315
        mmTop = 1058
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        DataField = 'tac_descrizione'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 35983
        mmTop = 1058
        mmWidth = 62442
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        DataField = 'data_registrazione_righe'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 2381
        mmTop = 1058
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        DataField = 'documento_origine_righe'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 100542
        mmTop = 1058
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        DataField = 'doc_progressivo_origine_righe'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 128323
        mmTop = 1058
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'note_righe'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 12435
        mmLeft = 35983
        mmTop = 5292
        mmWidth = 160073
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        DataField = 'doc_riga_origine_righe'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 146579
        mmTop = 1058
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited pp_Shape2: TppShape
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel [1]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_utente: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable [4]
        SaveOrder = -1
        mmLeft = 164571
        mmTop = 1588
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [4]
      BreakName = 'progressivo'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 54240
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label102'
          Border.Weight = 1.000000000000000000
          Caption = 'progressivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 1588
          mmTop = 529
          mmWidth = 14605
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          DataField = 'progressivo'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 20373
          mmTop = 529
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          Border.Weight = 1.000000000000000000
          Caption = 'data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 44450
          mmTop = 529
          mmWidth = 5503
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          DataField = 'data_registrazione'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 54240
          mmTop = 529
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          Border.Weight = 1.000000000000000000
          Caption = 'articolo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 1588
          mmTop = 9525
          mmWidth = 9059
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          DataField = 'art_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 20373
          mmTop = 9525
          mmWidth = 31485
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          DataField = 'art_descrizione'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 54240
          mmTop = 9525
          mmWidth = 142082
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          Border.Weight = 1.000000000000000000
          Caption = 'fornitore'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 1588
          mmTop = 14023
          mmWidth = 10329
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          DataField = 'frn_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 20373
          mmTop = 14023
          mmWidth = 31485
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          DataField = 'frn_descrizione'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 54240
          mmTop = 14023
          mmWidth = 142082
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          Border.Weight = 1.000000000000000000
          Caption = 'tipologia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 1588
          mmTop = 5027
          mmWidth = 10414
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          DataField = 'ttn_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 20373
          mmTop = 5027
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          DataField = 'ttn_descrizione'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 37306
          mmTop = 5027
          mmWidth = 62442
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          Border.Weight = 1.000000000000000000
          Caption = 'causale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 105569
          mmTop = 5027
          mmWidth = 9737
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          DataField = 'tnc_codice'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 116946
          mmTop = 5027
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          DataField = 'tnc_descrizione'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 133615
          mmTop = 5027
          mmWidth = 62442
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          Border.Weight = 1.000000000000000000
          Caption = 'quantit'#224' lotto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 1588
          mmTop = 18521
          mmWidth = 16129
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          DataField = 'quantita_lotto'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 20373
          mmTop = 18521
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          Border.Weight = 1.000000000000000000
          Caption = 'qt'#224' non conforme'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 54240
          mmTop = 18521
          mmWidth = 21971
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          DataField = 'quantita_non_conforme'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 78581
          mmTop = 18521
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label18'
          Border.Weight = 1.000000000000000000
          Caption = 'doc. origine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 1588
          mmTop = 22754
          mmWidth = 14520
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          DataField = 'documento_origine'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 20373
          mmTop = 22754
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText14'
          DataField = 'numero_documento_origine'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 54240
          mmTop = 22754
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText15'
          DataField = 'data_documento_origine'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 70379
          mmTop = 22754
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label21'
          Border.Weight = 1.000000000000000000
          Caption = 'commessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 105569
          mmTop = 22754
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText16'
          DataField = 'commessa'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 120386
          mmTop = 22754
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label22'
          Border.Weight = 1.000000000000000000
          Caption = 'sottocommessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 150019
          mmTop = 22754
          mmWidth = 19939
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText17: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText17'
          DataField = 'sottocommessa'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 170657
          mmTop = 22754
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label23'
          Border.Weight = 1.000000000000000000
          Caption = 'chiusa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 105569
          mmTop = 529
          mmWidth = 8170
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText18: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText18'
          DataField = 'chiusa'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 116946
          mmTop = 529
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label24'
          Border.Weight = 1.000000000000000000
          Caption = 'data chiusura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 133615
          mmTop = 529
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText19: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText19'
          DataField = 'data_chiusura'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 3217
          mmLeft = 153194
          mmTop = 529
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBMemo1: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo1'
          CharWrap = False
          DataField = 'note'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = [fsBold]
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 12435
          mmLeft = 1588
          mmTop = 31221
          mmWidth = 195263
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          Border.Weight = 1.000000000000000000
          Caption = 'note'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 1588
          mmTop = 26988
          mmWidth = 5503
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppRegion1: TppRegion
          DesignLayer = ppDesignLayer1
          UserName = 'Region1'
          Pen.Style = psClear
          ShiftRelativeTo = ppDBMemo1
          mmHeight = 7673
          mmLeft = 0
          mmTop = 44715
          mmWidth = 199496
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppShape1: TppShape
            DesignLayer = ppDesignLayer1
            UserName = 'Shape4'
            Shape = stRoundRect
            mmHeight = 6085
            mmLeft = 794
            mmTop = 45244
            mmWidth = 196586
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel15: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label26'
            Border.Weight = 1.000000000000000000
            Caption = 'data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3217
            mmLeft = 7408
            mmTop = 46567
            mmWidth = 5503
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel16: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label27'
            Border.Weight = 1.000000000000000000
            Caption = 'azione'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3217
            mmLeft = 19315
            mmTop = 46567
            mmWidth = 8297
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel17: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label28'
            Border.Weight = 1.000000000000000000
            Caption = 'documento origine'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3217
            mmLeft = 100542
            mmTop = 46567
            mmWidth = 23156
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel18: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label29'
            Border.Weight = 1.000000000000000000
            Caption = 'progressivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3217
            mmLeft = 131498
            mmTop = 46567
            mmWidth = 14605
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel19: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label30'
            Border.Weight = 1.000000000000000000
            Caption = 'riga'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3217
            mmLeft = 154252
            mmTop = 46567
            mmWidth = 4657
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
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
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = (
      'select vet.tsm_codice, tsm.descrizione tsm_descrizione,'
      
        'vet.tsm_codice_sconto, tsm_sconto.descrizione tsm_sconto_descriz' +
        'ione,'
      'vet.importo_sconto, sum(ver.importo) importo_totale'
      'from vet'
      'inner join ver on ver.progressivo = vet.progressivo'
      'left join tsm on tsm.codice = vet.tsm_codice'
      
        'left join tsm tsm_sconto on tsm_sconto.codice = vet.tsm_codice_s' +
        'conto'
      'where vet.progressivo = :progressivo'
      'group by 1,2,3,4,5'
      ''
      '')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
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
    AutoStop = True
    Template.FileName = 'C:\GestionaleOpen\go_604\report\STAVENC_STANDARD.RTM'
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
      inherited pp_documenti_marchio: TppImage [22]
        LayerName = pp_Foreground2
      end
      inherited pp_Label_descrizione_documento: TppLabel [23]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_numero_pagina: TppLabel [24]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_copia_interna: TppLabel [25]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited ppnumero_pagina: TppLabel [26]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione: TppLabel [27]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_spettabile: TppLabel [28]
        SaveOrder = -1
        mmHeight = 2381
        mmLeft = 102129
        mmTop = 30956
        LayerName = pp_Foreground2
      end
    end
    inherited ppDetailBand_documenti_01: TppDetailBand
      PrintHeight = phDynamic
      mmHeight = 0
    end
    inherited ppFooterBand_documenti_01: TppFooterBand
      mmHeight = 8467
      inherited pp_Shape_documenti_03: TppShape
        mmHeight = 6879
        LayerName = pp_Foreground2
      end
    end
  end
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = query_righe_ds
    UserName = 'DBTabella1'
    Left = 348
    Top = 10
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'tsm_codice'
      FieldName = 'tsm_codice'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'tsm_descrizione'
      FieldName = 'tsm_descrizione'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'tsm_codice_sconto'
      FieldName = 'tsm_codice_sconto'
      FieldLength = 4
      DisplayWidth = 4
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'tsm_sconto_descrizione'
      FieldName = 'tsm_sconto_descrizione'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'importo_sconto'
      FieldName = 'importo_sconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'importo_totale'
      FieldName = 'importo_totale'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
  end
end
