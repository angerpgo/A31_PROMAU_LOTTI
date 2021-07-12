inherited A31STAPICKIN: TA31STAPICKIN
  Caption = 'A31STAPICKIN'
  ClientHeight = 353
  ClientWidth = 679
  ExplicitWidth = 695
  ExplicitHeight = 412
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 679
    ExplicitWidth = 679
  end
  inherited pannello_parametri: TRzPanel
    Width = 679
    Height = 236
    ExplicitTop = 29
    ExplicitWidth = 679
    ExplicitHeight = 236
  end
  inherited pannello_selezione: TRzPanel
    Top = 270
    Width = 679
    ExplicitTop = 270
    ExplicitWidth = 679
    inherited Bevel1: TBevel
      Width = 679
      ExplicitWidth = 679
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
      ExplicitLeft = 485
    end
  end
  inherited statusbar: TStatusBar
    Top = 333
    Width = 679
    ExplicitTop = 333
    ExplicitWidth = 679
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'select '
      't.progressivo,'
      't.tipo_documento,'
      't.progressivo_acq,'
      't.data_registrazione,'
      't.data_documento,'
      't.numero_documento,'
      't.serie_documento,'
      't.frn_codice,'
      'nom.descrizione1 nom_descrizione1,'
      't.data_controlo,'
      't.flag_controllo,'
      'r.riga,'
      'r.art_codice,'
      'r.descrizione1,'
      'r.descrizione2,'
      'r.quantita,'
      'r.quantita_rilevata,'
      '(r.quantita-r.quantita_rilevata) delta,'
      'r.flag_controllo flag_controllo-riga'
      'from a31pickt t'
      'inner join a31pickr r on r.progressivo=t.progressivo'
      
        'left join ltm on ltm.DOCUMENTO_ORIGINE='#39'movimenti magazzino'#39' and' +
        ' '
      
        '                  ltm.DOC_PROGRESSIVO_ORIGINE=F_A31_PROMAU_MMT_P' +
        'ROGRESSIVO('#39'ddt acq'#39', t.progressivo_acq, r.riga, '#39'progressivo'#39') ' +
        ' and'
      
        '                  ltm.doc_riga_origine=F_A31_PROMAU_MMT_PROGRESS' +
        'IVO('#39'ddt acq'#39', t.progressivo_acq, r.riga, '#39'riga'#39') '
      '         '
      'where t.progressivo=18         '
      'order by '
      'r.progressivo,r.riga,ltm.lotto')
  end
  inherited ppReport: TppReport
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
  object ltm_ds: TMyDataSource
    DataSet = ltm
    Left = 460
    Top = 55
  end
  object ltm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      't.progressivo_acq,'
      'r.progressivo,'
      'r.riga,'
      'ltm.lotto,'
      'ltm.art_codice,'
      'ltm.quantita,'
      'ltm.quantita_entrate,'
      'ltm.quantita_uscite'
      'ltm.descrizione'
      'from a31pickt t'
      'inner join a31pickr r on r.progressivo=t.progressivo'
      
        'left join ltm on ltm.DOCUMENTO_ORIGINE='#39'movimenti magazzino'#39' and' +
        ' '
      
        '                  ltm.DOC_PROGRESSIVO_ORIGINE=F_A31_PROMAU_MMT_P' +
        'ROGRESSIVO('#39'ddt acq'#39', t.progressivo_acq, r.riga, '#39'progressivo'#39') ' +
        ' and'
      
        '                  ltm.doc_riga_origine=F_A31_PROMAU_MMT_PROGRESS' +
        'IVO('#39'ddt acq'#39', t.progressivo_acq, r.riga, '#39'riga'#39') '
      ''
      'where'
      'r.progressivo=:progressivo and'
      'r.riga=:riga'
      'order by ltm.lotto         ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 410
    Top = 50
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 18
      end
      item
        DataType = ftInteger
        Name = 'riga'
        Value = 1
      end>
  end
end
