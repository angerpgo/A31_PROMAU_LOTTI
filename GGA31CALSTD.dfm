inherited A31CALSTD: TA31CALSTD
  Left = 374
  Top = 209
  Caption = 'A31CALSTD'
  ClientHeight = 301
  ClientWidth = 624
  Font.Name = 'Sakkal Majalla'
  ExplicitWidth = 630
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 14
  inherited toolbar: TToolBar
    Width = 624
    ExplicitWidth = 624
  end
  inherited pannello_parametri: TRzPanel
    Width = 624
    Height = 184
    ExplicitWidth = 624
    ExplicitHeight = 184
    object v_messaggio: TRzLabel [0]
      Left = 185
      Top = 203
      Width = 437
      Height = 18
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited ProgressBar: TProgressBar
      Left = 545
      ExplicitLeft = 545
    end
    object v_aggiornamento: TRzCheckBox
      Left = 10
      Top = 128
      Width = 150
      Height = 16
      Hint = 
        'spunta per aggiornare, con il valore calcolato, l'#39'anagrafica art' +
        'icoli'
      Caption = 'aggiorna anagrafica articoli'
      State = cbUnchecked
      TabOrder = 1
    end
    object Panel1: TRzPanel
      Left = 0
      Top = 153
      Width = 624
      Height = 31
      Align = alBottom
      BorderOuter = fsLowered
      TabOrder = 2
      ExplicitLeft = -3
      object v_selart: TRzRapidFireButton
        Left = 5
        Top = 4
        Width = 111
        Height = 22
        Caption = 'filtro articoli'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C01E0000C01E00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000811E00FF811E00FF811E00FF7E1E
          01FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000811E00FFFCE6B1FFE59C51FF791E
          02FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000811E00FFFCE5AFFFE69F55FF791E
          02FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000811E00FFFBE2ADFFE7A158FF791E
          02FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000083200021811E00FF8C2D09FF811E00FF7D1E
          01FF7F1B001B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000822001B8B5622FF2FCD59CFFF8CB8CFF9D4E
          26F4832001A90000000000000000000000000000000000000000000000000000
          00000000000000000000801D00578A2704EEF6C990FFFEDAA3FFF6C483FFD193
          5AFF7D2305F4811E003C00000000000000000000000000000000000000000000
          00000000000084230012821F00E8D59055FAFBDCB1FFFBD197FFF3BC7AFFE5A5
          60FF9A4F27FC822101D7953B0003000000000000000000000000000000000000
          000000000000811E0096A14617E8F6CB96FFFEE5BFFFF8CA8BFFF0B673FFE7A4
          5AFFBB743AFF7B290CF5811E0069000000000000000000000000000000000000
          0000811E003C832101F3E7A966FFFCE5C5FFFEE3BCFFF6C282FFEDB06AFFE59D
          52FFC97B38FF8F451FFF7E2002F2842300120000000000000000000000009518
          0006821F00D4C06D34EEF4CA92FFFEF4E5FFFCDAABFFF2BC79FFEAA962FFE297
          4AFFD78235FFA45520FF752B0FF9831F009C000000000000000000000000811E
          0078913007E0EDB06AFFFCEBD5FFFFFBF4FFF7CB91FFEFB570FFE7A359FFDE90
          42FFD77F2EFFB05A1CFF813814FF761F04F8821F00300000000000000000811E
          00F9811E00FF811E00FF811E00FF811E00FF811E00FF811E00FF811E00FF811E
          00FF811E00FF801E00FF7D1E01FF7B1E01FF821E00C400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = v_selartClick
      end
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 218
    Width = 624
    ExplicitTop = 218
    ExplicitWidth = 624
    inherited Bevel1: TBevel
      Width = 624
      ExplicitWidth = 575
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
    Top = 281
    Width = 624
    ExplicitTop = 281
    ExplicitWidth = 624
  end
  inherited sor: TMyTable
    TableName = 'A31CALSTD'
    IndexFieldNames = 'utn_codice,art_codice'
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
    Template.FileName = 
      'C:\GestionaleOpen\go_utenti\A31_PROMAU\report\A31CALSTD_STANDARD' +
      '.RTM'
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        ParentWidth = True
        mmLeft = 0
        mmTop = 265
        mmWidth = 210079
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
        mmLeft = 0
        mmWidth = 210079
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape [11]
        ParentWidth = True
        mmLeft = 0
        mmTop = 10848
        mmWidth = 210079
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable
        SaveOrder = -1
        mmLeft = 0
        mmTop = 6085
        mmWidth = 210079
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
        ParentWidth = True
        mmLeft = 0
        mmTop = 0
        mmWidth = 210079
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
        ParentWidth = True
        mmLeft = 0
        mmTop = 10583
        mmWidth = 210079
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
        mmHeight = 3175
        mmLeft = 190236
        mmTop = 11906
        mmWidth = 18521
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
        mmWidth = 57150
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
        mmHeight = 3175
        mmLeft = 190236
        mmTop = 265
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        DataField = 'FRN_CODICE'
        DataPipeline = ppDBTabella
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTabella'
        mmHeight = 3175
        mmLeft = 166688
        mmTop = 265
        mmWidth = 23019
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
        ParentWidth = True
        mmLeft = 0
        mmWidth = 210079
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
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited query_stampa: TMyQuery_go
    SQL.Strings = (
      'SELECT *'
      'FROM ARC_ORDINAMENTO.STADSB T')
  end
  object query_figlio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from dsb'
      'where art_codice_padre = :art_codice limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 505
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update art'
      
        'set valorizzazione_gestionale='#39'costo standard'#39', valore_costo_sta' +
        'ndard = :valore_costo_standard'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'valore_costo_standard'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice'
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
  object cls: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '#39'cls'#39' fonte, art_codice,prezzo , data_inizio, data_fine'
      'from cls'
      'where'
      'art_codice=:art_codice and'
      'data_inizio <=current_date and'
      'data_fine >=current_date'
      'union all '
      'select '#39'cls'#39' fonte, art_codice,prezzo , data_inizio, data_fine'
      'from a31cls'
      'where'
      'art_codice=:art_codice and'
      'data_inizio <=current_date and'
      'data_fine >=current_date'
      'order by 4 desc')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object fls: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select prezzo'
      'from fls'
      'where'
      'fls.frn_codice=:frn_codice and'
      'fls.art_codice=:art_codice and'
      'fls.data_inizio <= current_date and'
      'fls.data_fine >= current_date'
      'order by data_inizio')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object semilav: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT'
      'dsb.*'
      'FROM DSB'
      
        'left join dsb dsbp on dsbp.art_codice_figlio=dsb.art_codice_padr' +
        'e'
      'WHERE'
      '( dsb.art_codice_figlio=:art_codice_figlio ) and'
      '( ( dsb.data_inizio<=current_date) or'
      ' ( dsb.data_inizio IS NULL ) ) and'
      '( dsb.data_fine >=current_date ) and'
      '( dsbp.art_codice_padre is null ) '
      'order by 2')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 110
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_figlio'
        Value = nil
      end>
  end
  object MyQuery_go1: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from far'
      'inner join fat on fat.PROGRESSIVO=far.progressivo'
      'where'
      'fat.frn_codice=:frn_codice AND'
      'far.art_codice=:art_codice'
      'order by data_documento desc limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 475
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object semilavp: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT'
      'dsb.*'
      'FROM DSB'
      
        'left join dsb dsbp on dsbp.art_codice_figlio=dsb.art_codice_padr' +
        'e'
      'WHERE'
      'dsb.art_codice_figlio=:art_codice_figlio and'
      '( (dsb.data_inizio is null )  OR '
      '  (dsb.data_inizio<=current_date) )  and'
      'dsb.data_fine >=current_date and'
      'dsbp.art_codice_padre is not null '
      'order by 2')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 560
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice_figlio'
        Value = nil
      end>
  end
  object aggsem: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      
        'set costo_produzione_codice_padre = :costo_produzione_codice_pad' +
        're,'
      'costo_codice_padre = :costo_codice_padre,'
      'a31costo_lavorazione = :a31costo_lavorazione,'
      'a31costo_kg=:a31costo_kg,'
      'a31costo_lavest = :a31costo_lavest'
      'where utn_codice = :utn_codice'
      'and art_codice_padre = :art_codice_padre')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo_produzione_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavorazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_kg'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavest'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object dsb: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 315
    Top = 10
  end
  object query_padre: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from dsb'
      'where art_codice_figlio = :art_codice limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 400
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object art_figlio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select tum_codice_dsb, tum_codice, descrizione_tecnica, indice_r' +
        'evisione, codice_alternativo, art.tcm_codice,'
      
        '  art.tub_codice, art.materia_prima, art.tum_coefficiente_dsb, a' +
        'rt.operazione_coefficiente_dsb, art.frn_codice,'
      '  tub.descrizione tub_descrizione'
      'from art'
      'inner join tub on tub.codice = art.tub_codice'
      'where art.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cla_figli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cla.art_codice, cla.sequenza, cla.fas_codice, fas.descriz' +
        'ione fas_descrizione,'
      'fas.tum_codice, fas.tipo_operazione, cla.note,'
      ''
      'case'
      'when fas.tipo_operazione = '#39'ignora'#39' then 0'
      
        'when fas.tipo_operazione = '#39'globale'#39' then (cla.quantita_attrezza' +
        'ggio + cla.quantita) / :quantita'
      'when fas.tipo_operazione = '#39'singola'#39' then'
      'case'
      
        'when cla.operatore = '#39'*'#39' then cla.quantita_attrezzaggio + round(' +
        'cla.quantita / :quantita, 4)'
      
        'when cla.operatore = '#39'/'#39' then cla.quantita_attrezzaggio + round(' +
        'cla.quantita / :quantita, 4)'
      'else 0'
      'end'
      'end quantita,'
      ''
      'case'
      'when fas.tipo_operazione = '#39'ignora'#39' then 0'
      'when fas.tipo_operazione = '#39'globale'#39
      
        'then F_COSTO_UNITARIO_FASE(fas.codice, '#39#39#39#39') * (cla.quantita_att' +
        'rezzaggio + cla.quantita) / :quantita'
      'when fas.tipo_operazione = '#39'singola'#39' then'
      'case'
      
        'when cla.operatore = '#39'*'#39' then round(F_COSTO_UNITARIO_FASE(fas.co' +
        'dice, '#39#39'), 6) *'
      
        'round((cla.quantita_attrezzaggio + :quantita * cla.quantita), 4)' +
        ' / :quantita'
      
        'when cla.operatore = '#39'/'#39' then round(F_COSTO_UNITARIO_FASE(fas.co' +
        'dice, '#39#39'), 6) *'
      
        'round((cla.quantita_attrezzaggio + :quantita / cla.quantita), 4)' +
        ' / :quantita'
      'else 0'
      'end'
      'end costo_unitario,'
      ''
      
        'art_cla.codice art_codice_cla, concat(trim(art_cla.descrizione1)' +
        ', '#39' '#39', art_cla.descrizione2) art_descrizione_cla'
      'from cla'
      'inner join art on art.codice = cla.art_codice'
      'inner join fas on fas.codice = cla.fas_codice'
      'left join dsb on dsb.art_codice_padre = cla.art_codice'
      
        'and dsb.cla_sequenza = cla.sequenza and dsb.fas_codice = cla.fas' +
        '_codice'
      'left join art art_cla on art_cla.codice = dsb.art_codice_figlio'
      'where cla.art_codice = :art_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 375
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantita'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object sor_livello: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 205
    Top = 85
  end
  object sor_update: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      
        'set costo_codice_figlio = costo_codice_figlio + :costo * quantit' +
        'a'
      'where id = :id')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 50
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object sor_update_produzione: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      
        'set costo_produzione_codice_figlio = :costo_produzione_codice_fi' +
        'glio,'
      
        'costo_codice_figlio := costo_codice_figlio + :costo_produzione_c' +
        'odice_figlio * quantita,'
      'a31costo_lavest = :a31costo_lavest'
      'where id = :id')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 120
    Top = 90
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo_produzione_codice_figlio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_produzione_codice_figlio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavest'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object query_materie_prime: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'SELECT DISTINCT S.LIVELLO, S.ID'
      'FROM ARC_ORDINAMENTO.STADSB S'
      'INNER JOIN ART ON ART.CODICE = S.ART_CODICE'
      'WHERE S.UTN_CODICE = :UTENTE AND ART.MATERIA_PRIMA = '#39'si'#39
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 305
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UTENTE'
        Value = nil
      end>
  end
  object dsb_39: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 280
    Top = 80
  end
  object calsem: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      
        'select art_codice_padre, sum(costo_codice_figlio) costo_codice_p' +
        'adre'
      'from stadsb'
      'where livello = 1'
      'and utn_codice = :utn_codice'
      'group by 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 265
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object MyQuery_go2: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'update stadsb'
      
        'set costo_produzione_codice_padre = :costo_produzione_codice_pad' +
        're,'
      'costo_codice_padre = :costo_codice_padre,'
      'a31costo_lavorazione = :a31costo_lavorazione,'
      'a31costo_kg=:a31costo_kg,'
      'a31costo_lavest = :a31costo_lavest'
      'where utn_codice = :utn_codice'
      'and art_codice_padre = :art_codice_padre')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 300
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'costo_produzione_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'costo_codice_padre'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavorazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_kg'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'a31costo_lavest'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice_padre'
        Value = nil
      end>
  end
  object dsb_01: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 355
    Top = 160
  end
  object dsb_02: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 160
  end
  object dsb_03: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 160
  end
  object dsb_04: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    Top = 160
  end
  object dsb_05: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 450
    Top = 163
  end
  object dsb_06: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 475
    Top = 163
  end
  object dsb_07: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 163
  end
  object dsb_08: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 163
  end
  object dsb_09: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 163
  end
  object dsb_10: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 555
    Top = 163
  end
  object dsb_11: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 335
    Top = 205
  end
  object dsb_12: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 360
    Top = 205
  end
  object dsb_13: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 205
  end
  object dsb_14: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 205
  end
  object dsb_15: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 430
    Top = 208
  end
  object dsb_16: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 208
  end
  object dsb_17: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 470
    Top = 208
  end
  object dsb_18: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 208
  end
  object dsb_19: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 208
  end
  object dsb_20: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 535
    Top = 208
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
    Left = 190
    Top = 190
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
    Left = 225
    Top = 185
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
end
