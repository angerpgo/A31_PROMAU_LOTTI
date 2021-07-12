inherited CALSTD: TCALSTD
  Left = 374
  Top = 209
  Caption = 'CALSTD'
  ClientHeight = 354
  ClientWidth = 727
  ExplicitWidth = 743
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 727
    ExplicitWidth = 727
  end
  inherited pannello_parametri: TRzPanel
    Width = 727
    Height = 237
    ExplicitWidth = 727
    ExplicitHeight = 237
    object Label7: TRzLabel [0]
      Left = 5
      Top = 50
      Width = 69
      Height = 13
      Caption = 'listino acquisto'
      ShowAccelChar = False
      Transparent = True
    end
    object Label2: TRzLabel [1]
      Left = 5
      Top = 5
      Width = 55
      Height = 13
      Caption = 'valore base'
      FocusControl = v_valore_base
      ShowAccelChar = False
      Transparent = True
    end
    object Label4: TRzLabel [2]
      Left = 5
      Top = 95
      Width = 81
      Height = 13
      Caption = 'categoria ricarico'
      ShowAccelChar = False
      Transparent = True
    end
    object RzLabel1: TRzLabel [3]
      Left = 5
      Top = 180
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
    inherited ProgressBar: TProgressBar
      Left = 545
      ExplicitLeft = 545
    end
    object v_tla_codice: trzedit_go
      Left = 5
      Top = 65
      Width = 50
      Height = 21
      Hint = 'gruppo merceologico di fine selezione'
      Text = ''
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      OnExit = v_tla_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTLA'
      lookcolltable = 'TLA'
      lookcollvisname = 'TLA'
    end
    object v_aggiornamento: TRzCheckBox
      Left = 5
      Top = 148
      Width = 162
      Height = 15
      Hint = 
        'spunta per aggiornare, con il valore calcolato, l'#39'anagrafica art' +
        'icoli'
      Caption = 'aggiorna listino costo standard'
      State = cbUnchecked
      TabOrder = 4
      OnClick = v_aggiornamentoClick
      OnExit = v_aggiornamentoExit
    end
    object v_valore_base: trzcombobox_go
      Left = 5
      Top = 20
      Width = 196
      Height = 21
      Hint = 'selezionare il tipo di costo da utilizzare per la valorizzazione'
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
      TabOrder = 1
      Text = 'costo standard'
      OnChange = v_valore_baseChange
      OnExit = v_valore_baseExit
      Items.Strings = (
        'prezzo medio'
        'ultimo prezzo carico'
        'listino di acquisto'
        'fifo a scatti'
        'listini di acquisto'
        'costo standard'
        'prezzo medio mensile')
      ItemIndex = 5
    end
    object v_tla_descrizione: trzdbeditdescrizione_go
      Left = 60
      Top = 65
      Width = 661
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
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
    object v_trl_codice: trzedit_go
      Left = 5
      Top = 110
      Width = 50
      Height = 21
      Hint = 'gruppo merceologico di fine selezione'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 3
      OnExit = v_trl_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc
      lookcollprogram = 'GESTRL'
      lookcolltable = 'TRL'
      lookcollvisname = 'TRL'
    end
    object v_trl_descrizione: trzdbeditdescrizione_go
      Left = 60
      Top = 110
      Width = 661
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
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
    object v_usa_prezzo_medio: TRzCheckBox
      Left = 385
      Top = 148
      Width = 164
      Height = 15
      Hint = 'spunta per utilizzare in alternativa il prezzo medio ponderato'
      Caption = 'usa prezzo medio in alternativa'
      State = cbUnchecked
      TabOrder = 6
    end
    object v_art_codice: trzedit_go
      Left = 5
      Top = 195
      Width = 161
      Height = 21
      Hint = 'codice articolo da valorizzare (spazio = tutti) [F4 F5 F6]'
      Text = ''
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnlyColor = clBtnFace
      ReadOnlyColorOnFocus = True
      TabOrder = 8
      OnExit = v_art_codiceExit
      lookcolldatabase = 'arc.arcdit'
      lookcollpopupmenu = ARC.pop_arc_art
      lookcollprogram = 'GESART'
      lookcolltable = 'ART'
      lookcollvisname = 'ART'
    end
    object RzDBEditDescrizione_go3: trzdbeditdescrizione_go
      Left = 170
      Top = 195
      Width = 551
      Height = 21
      Hint = '-'
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataSource = art_ds
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
      TabOrder = 11
    end
    object v_solo_finiti: TRzCheckBox
      Left = 205
      Top = 148
      Width = 141
      Height = 15
      Hint = 
        'spunta per aggiornare, con il valore calcolato, solo l'#39'anagrafic' +
        'a dei prodotti finiti'
      Caption = 'aggiorna solo prodotti finiti'
      Enabled = False
      State = cbUnchecked
      TabOrder = 5
    end
    object v_stampa_finiti: TRzCheckBox
      Left = 580
      Top = 148
      Width = 139
      Height = 15
      Hint = 'spunta per stampare solo i prodotti finiti'
      Caption = 'stampa solo i prodotti finiti'
      State = cbUnchecked
      TabOrder = 7
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 271
    Width = 727
    ExplicitTop = 271
    ExplicitWidth = 727
    inherited Bevel1: TBevel
      Width = 727
      ExplicitWidth = 575
    end
    inherited v_modello: trzcombobox_go
      Width = 424
      ExplicitWidth = 424
    end
    inherited v_conferma: TRzBitBtn
      Left = 640
      ExplicitLeft = 640
    end
    inherited v_esci: TRzBitBtn
      Left = 640
      ExplicitLeft = 640
    end
    inherited v_interrompi: TRzBitBtn
      Left = 670
      Top = 18
      ExplicitLeft = 670
      ExplicitTop = 18
    end
  end
  inherited statusbar: TStatusBar
    Top = 334
    Width = 727
    ExplicitTop = 334
    ExplicitWidth = 727
  end
  inherited sor: TMyTable
    TableName = 'calstd'
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      
        'select codice art_codice, descrizione1 art_descrizione1, descriz' +
        'ione2 art_descrizione2'
      'from art'
      'where tipo_articolo = '#39'fiscale'#39)
  end
  inherited ppDBTabella: TppDBPipeline
    DataSource = query_stampa_ds
  end
  inherited ppReport: TppReport
    Template.FileName = 'C:\GestionaleOpen\go_605\report\CALSTD_STANDARD.RTM'
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        mmTop = 265
        mmWidth = 195792
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
      inherited pp_copia_schermo: TppImage [10]
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape [11]
        mmTop = 10848
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable
        SaveOrder = -1
        mmLeft = 174625
        mmTop = 6085
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel [13]
        SaveOrder = -1
        mmLeft = 67733
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      inherited pp_Shape1: TppShape
        mmTop = 0
        mmWidth = 195792
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
      inherited pp_Shape3: TppShape [10]
        mmTop = 10583
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        mmLeft = 175684
        mmTop = 5556
        LayerName = Foreground
      end
      object pp_Label8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = '_Label8'
        Border.Weight = 1.000000000000000000
        Caption = 'codice articolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 1588
        mmTop = 11906
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Caption = 'descrizione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 35983
        mmTop = 11906
        mmWidth = 14266
        BandType = 0
        LayerName = Foreground
      end
      object pp_Label12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.Weight = 1.000000000000000000
        Caption = 'costo standard'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3217
        mmLeft = 175684
        mmTop = 11906
        mmWidth = 18584
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3969
      object pp_DBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        OnDrawCommandClick = pp_DBText5DrawCommandClick
        OnDrawCommandCreate = pp_DBText5DrawCommandCreate
        Border.Weight = 1.000000000000000000
        DataField = 'art_codice'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 1588
        mmTop = 265
        mmWidth = 34131
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        DataField = 'art_descrizione1'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 35983
        mmTop = 265
        mmWidth = 72761
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        DataField = 'art_descrizione2'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 109009
        mmTop = 265
        mmWidth = 65352
        BandType = 4
        LayerName = Foreground
      end
      object pp_DBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        DataField = 'costo'
        DataPipeline = ppDBTabella
        DisplayFormat = ',0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3217
        mmLeft = 175155
        mmTop = 265
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited pp_utente: TppLabel [0]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Shape2: TppShape [1]
        mmWidth = 195792
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        mmTop = 1588
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel
        SaveOrder = -1
        mmTop = 1588
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable [4]
        SaveOrder = -1
        mmLeft = 174096
        mmTop = 1588
        LayerName = Foreground
      end
    end
  end
  inherited query_righe: TMyQuery_go
    SQL.Strings = (
      'select *'
      'from mmr mmr'
      'inner join mmt mmt on (mmt.progressivo = mmr.progressivo)'
      
        'where mmr.art_codice = :art_codice and mmt.data_registrazione > ' +
        ':data_registrazione limit 1'
      '')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
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
    inherited ppHeaderBand_documenti_01: TppHeaderBand
      inherited pp_Shape401: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_Shape_documenti_02: TppShape
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_marchio: TppImage [2]
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione1: TppLabel [3]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_descrizione2: TppLabel [4]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_via: TppLabel [5]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_citta: TppLabel [6]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_codice_fiscale: TppLabel [7]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_codice_fiscale: TppLabel [8]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_partita_iva: TppLabel [9]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_partita_iva: TppLabel [10]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_capitale_sociale: TppLabel [11]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_capitale_sociale: TppVariable [12]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_registro_imprese: TppLabel [13]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_registro_imprese: TppLabel [14]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_telefono: TppLabel [15]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_telefono: TppLabel [16]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_fax: TppLabel [17]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_fax: TppLabel [18]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_web: TppLabel [19]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_web: TppLabel [20]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_e_mail: TppLabel [21]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_documenti_dit_e_mail: TppLabel [22]
        SaveOrder = -1
        LayerName = pp_Foreground2
      end
      inherited pp_Label_spettabile: TppLabel [23]
        SaveOrder = -1
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
  inherited query_sor: TMyQuery_go
    SQL.Strings = (
      'select costo'
      'from calstd_finiti'
      'where utn_codice = :utn_codice'
      'and art_codice = :art_codice')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited query_stampa: TMyQuery_go
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.CALSTD_FINITI T')
  end
  object query_figlio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from dsb'
      'where art_codice_padre = :art_codice limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object dsb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select dsb.art_codice_figlio, dsb.prezzo,'
      'case'
      'when art.tum_codice_dsb = '#39#39' then dsb.quantita'
      
        'else round(cast(dsb.quantita as binary) * cast(art.tum_coefficie' +
        'nte_dsb as binary), 4)'
      'end quantita'
      'from dsb'
      'inner join art art on (art.codice = dsb.art_codice_figlio)'
      'left join tma on tma.codice = dsb.tma_codice'
      'where art_codice_padre = :art_codice_padre'
      'and (data_inizio <= :data_inizio or data_inizio is null)'
      'and data_fine >= :data_fine'
      
        '-- and (tma.ignora_articoli_produzione is null or tma.ignora_art' +
        'icoli_produzione = '#39'no'#39')'
      ''
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_inizio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_fine'
        Value = nil
      end>
  end
  object lsa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select'
      'case when tsm.percentuale_totale is null then lsa.prezzo'
      'else prezzo * tsm.percentuale_totale / 100'
      'end prezzo'
      'from lsa'
      'left join tsm on tsm.codice = lsa.tsm_codice'
      'where lsa.art_codice = :codice and lsa.tla_codice = :codice1 and'
      'lsa.data_inizio <= :codice2 and lsa.data_fine >= :codice3'
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 440
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice3'
        Value = nil
      end>
  end
  object art_frn: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select frn.tla_codice'
      'from art'
      'inner join frn on frn.codice = art.frn_codice'
      'where art.codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 500
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object materia_prima: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from dsb'
      'where dsb.art_codice_padre = :art_codice_padre'
      'limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object lsa_update: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from lsa'
      'where art_codice = :art_codice'
      'and tla_codice = :tla_codice'
      'and data_inizio = :data_inizio'
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tla_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_inizio'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', descrizione2) d' +
        'escrizione'
      'from art'
      'where codice = :codice'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 615
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 635
    Top = 65526
  end
  object finito: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select id'
      'from dsb'
      'where art_codice_figlio = :art_codice'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 590
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object solo_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'delete from arc_ordinamento.calstd_finiti'
      
        'where exists(select id from dsb where dsb.art_codice_figlio = ca' +
        'lstd_finiti.art_codice)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 630
    Top = 30
  end
end
