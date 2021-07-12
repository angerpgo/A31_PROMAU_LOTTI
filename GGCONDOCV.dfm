inherited CONDOCV: TCONDOCV
  Left = 422
  Top = 197
  Caption = 'CONDOCV'
  ClientHeight = 316
  ClientWidth = 614
  ExplicitWidth = 620
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 614
    ExplicitWidth = 614
  end
  inherited statusbar: TStatusBar
    Top = 296
    Width = 614
    ExplicitTop = 296
    ExplicitWidth = 614
  end
  inherited tab_control: TRzPageControl
    Width = 614
    Height = 262
    ExplicitWidth = 614
    ExplicitHeight = 262
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 612
      ExplicitHeight = 239
      inherited pannello_elaborazione: TRzPanel
        Width = 612
        Height = 239
        ExplicitWidth = 612
        ExplicitHeight = 239
        inherited ProgressBar: TProgressBar
          Left = 495
          Top = 45
          ExplicitLeft = 495
          ExplicitTop = 45
        end
        inherited pannello_parametri: TRzPanel
          Width = 612
          Height = 201
          ExplicitWidth = 612
          ExplicitHeight = 201
          object Label11: TRzLabel
            Left = 5
            Top = 10
            Width = 102
            Height = 13
            Caption = 'dalla data documento'
            ShowAccelChar = False
            Transparent = True
          end
          object Label12: TRzLabel
            Left = 120
            Top = 10
            Width = 96
            Height = 13
            Caption = 'alla data documento'
            ShowAccelChar = False
            Transparent = True
          end
          object Label24: TRzLabel
            Left = 5
            Top = 100
            Width = 121
            Height = 13
            Caption = 'documenti da consolidare'
            FocusControl = v_consolidare
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Label1: TRzLabel
            Left = 5
            Top = 55
            Width = 47
            Height = 13
            Caption = 'dalla serie'
            ShowAccelChar = False
            Transparent = True
          end
          object Label2: TRzLabel
            Left = 120
            Top = 55
            Width = 41
            Height = 13
            Caption = 'alla serie'
            ShowAccelChar = False
            Transparent = True
          end
          object v_documento: TRzLabel
            Left = 5
            Top = 155
            Width = 129
            Height = 13
            Caption = 'Documento in elaborazione'
          end
          object v_dalla_data_documento: trzdatetimeedit_go
            Left = 5
            Top = 25
            Width = 101
            Height = 21
            Hint = 
              'data documento di inizio selezione [Alt+Gi'#249' per aprire il calend' +
              'ario]'
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
            TabOrder = 0
            OnExit = v_dalla_data_documentoExit
          end
          object v_alla_data_documento: trzdatetimeedit_go
            Left = 120
            Top = 25
            Width = 101
            Height = 21
            Hint = 
              'data documento di fine selezione [Alt+Gi'#249' per aprire il calendar' +
              'io]'
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
            TabOrder = 1
            OnEnter = v_alla_data_documentoEnter
            OnExit = v_alla_data_documentoExit
          end
          object v_consolidare: trzcombobox_go
            Left = 5
            Top = 115
            Width = 216
            Height = 21
            Hint = 'tipo documento da consolidare'
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
            TabOrder = 4
            Text = 'fatture, note credito, corrispettivi'
            Items.Strings = (
              'fatture, note credito, corrispettivi'
              'fatture, note credito'
              'corrispettivi'
              'singolo documento'
              'corrispettivi con omaggi'
              'vendite negozio')
            ItemIndex = 0
          end
          object v_dalla_serie: trzedit_go
            Left = 5
            Top = 70
            Width = 101
            Height = 21
            Hint = 'numero serie di inizio selezione'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
          end
          object v_alla_serie: trzedit_go
            Left = 120
            Top = 70
            Width = 101
            Height = 21
            Hint = 'numero serie di fine selezione'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 3
            OnExit = v_alla_serieExit
          end
        end
        inherited Panel4: TRzPanel
          Top = 201
          Width = 612
          ExplicitTop = 201
          ExplicitWidth = 612
          inherited Bevel1: TBevel
            Width = 612
            ExplicitWidth = 515
          end
          inherited v_esci: TRzRapidFireButton
            Left = 99
            ExplicitLeft = 99
          end
          inherited v_conferma: TRzBitBtn
            Left = 4
            ExplicitLeft = 4
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 579
      ExplicitHeight = 239
      inherited pannello_esposizione: TRzPanel
        Width = 579
        Height = 239
        ExplicitWidth = 579
        ExplicitHeight = 239
      end
    end
  end
  inherited tabella_iva: TMyQuery_go
    MasterSource = tabella_ds
    MasterFields = 'progressivo'
  end
  inherited tabella_righe: TMyQuery_go
    MasterSource = tabella_ds
    MasterFields = 'progressivo'
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object testata: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 265
    Top = 65526
  end
  object righe: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 275
    Top = 65526
  end
  object iva: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 285
    Top = 65526
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cli'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 330
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tco: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from tco'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 345
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tpa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from tpa'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 355
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object pat_immediato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select pat.progressivo, pat.importo_dovuto, pat.importo_dovuto_e' +
        'uro, pat.tva_codice'
      'from pat'
      
        'where pat.pnr_progressivo = :pnr_progressivo and pat.pnr_riga = ' +
        ':pnr_riga'
      'order by pat.data_scadenza'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 365
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pnr_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pnr_riga'
        Value = nil
      end>
  end
  object pnt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from pnt'
      'where progressivo = :progressivo'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 375
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object pnr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from pnr'
      'where progressivo = :progressivo and riga = :riga'
      'order by riga desc'
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 65526
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
  object tag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tag.*,'
      '(select t.imponibile_ridotto_secondo from tag t'
      'where t.codice ='
      'case'
      'when :tag_codice_ca <> '#39#39' then :tag_codice_ca'
      'else tag.tag_codice_capo_area'
      'end) imponibile_ridotto_secondo_ca'
      'from tag'
      'where tag.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 395
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tag_codice_ca'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tag_codice_ca'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object cfg: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cfg'
      'where cfg_tipo = '#39'C'#39
      'and cfg_codice = :cfg_codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end>
  end
  object documenti_progressivo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from fvt'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 430
    Top = 65526
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object rtr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from rtr'
      'where progressivo = :progressivo'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object pat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from pat'
      'where progressivo = :progressivo'
      ''
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object pas: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from pas'
      'where progressivo = :progressivo and riga = :riga'
      ''
      ''
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 415
    Top = 25
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
  object ntt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into ntt'
      
        '(progressivo, acquisti_cessioni, mese_rettifica, trimestre_retti' +
        'fica, anno_rettifica, segno_rettifica,'
      
        'numero_documento, data_documento, serie_documento, partita_iva, ' +
        'stato, data_competenza,'
      
        'natura_transazione, condizioni_consegna, modalita_trasporto, pae' +
        'se_provenienza,'
      
        'paese_destinazione, documento_origine, doc_progressivo_origine, ' +
        'modalita_erogazione, modalita_incasso,'
      'stato_pagamento)'
      'values'
      
        '(:progressivo, :acquisti_cessioni, :mese_rettifica, :trimestre_r' +
        'ettifica, :anno_rettifica, :segno_rettifica,'
      
        ':numero_documento, :data_documento, :serie_documento, :partita_i' +
        'va, :stato, :data_competenza,'
      
        ':natura_transazione, :condizioni_consegna, :modalita_trasporto, ' +
        ':paese_provenienza,'
      
        ':paese_destinazione, :documento_origine, :doc_progressivo_origin' +
        'e, :modalita_erogazione, :modalita_incasso,'
      ':stato_pagamento)'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'acquisti_cessioni'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mese_rettifica'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'trimestre_rettifica'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'anno_rettifica'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'segno_rettifica'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'numero_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'serie_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'partita_iva'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'stato'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_competenza'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'natura_transazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'condizioni_consegna'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'modalita_trasporto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'paese_provenienza'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'paese_destinazione'
        Value = nil
      end
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
        Name = 'modalita_erogazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'modalita_incasso'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'stato_pagamento'
        Value = nil
      end>
  end
  object ntr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into ntr'
      
        '(progressivo, riga, provincia_origine, importo_euro, importo_sta' +
        'tistico,'
      'massa_netta, unita_supplementari, nomenclatura)'
      'values'
      
        '(:progressivo, :riga, :provincia_origine, :importo_euro, :import' +
        'o_statistico,'
      ':massa_netta, :unita_supplementari, :nomenclatura)'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 25
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
      end
      item
        DataType = ftUnknown
        Name = 'provincia_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'importo_euro'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'importo_statistico'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'massa_netta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'unita_supplementari'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nomenclatura'
        Value = nil
      end>
  end
  object tabella_ivd: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into ivd'
      
        '(progressivo, cfg_tipo, cfg_codice, tco_codice, gen_codice, nume' +
        'ro_documento, serie_documento, data_documento,'
      
        'data_registrazione, protocollo, serie_protocollo, pni_progressiv' +
        'o, pni_riga, tiv_codice,'
      
        'importo_imponibile_euro, importo_iva_euro, importo_indetraibile_' +
        'euro)'
      'values'
      
        '(:progressivo, :cfg_tipo, :cfg_codice, :tco_codice, :gen_codice,' +
        ' :numero_documento, :serie_documento, :data_documento,'
      
        ':data_registrazione, :protocollo, :serie_protocollo, :pni_progre' +
        'ssivo, :pni_riga, :tiv_codice,'
      
        ':importo_imponibile_euro, :importo_iva_euro, :importo_indetraibi' +
        'le_euro)'
      ''
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cfg_tipo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cfg_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tco_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'gen_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'numero_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'serie_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'protocollo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'serie_protocollo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pni_progressivo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pni_riga'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tiv_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'importo_imponibile_euro'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'importo_iva_euro'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'importo_indetraibile_euro'
        Value = nil
      end>
  end
  object stv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from stv'
      'where tag_codice = :tag_codice'
      'and cli_codice = :cli_codice'
      'and ind_codice = :ind_codice'
      'and art_codice = :art_codice'
      'and anno = :anno'
      'and mese = :mese'
      'and serie_documento = :serie_documento')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 415
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tag_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ind_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'anno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mese'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'serie_documento'
        Value = nil
      end>
  end
  object pro: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 55
  end
  object pni: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from pni'
      'where progressivo = :progressivo'
      '/*'
      'and riga = :riga'
      '*/')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object gen: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select gen.codice, gen.gestione_competenze, gen.partitario, gen.' +
        'gestione_cespiti, tpc.tipo, gen.iva_del_margine_analitica'
      'from gen'
      
        'inner join tpc on tpc.codice_01 = gen.tpc_codice_01 and tpc.codi' +
        'ce_02 = '#39#39' and tpc.codice_03 = '#39#39' and tpc.codice_04 = '#39#39
      'where gen.codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 415
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tabella_corrispettivi: TVirtualTable
    IndexFieldNames = 'data_registrazione;tco_codice;tiv_codice'
    FieldDefs = <
      item
        Name = 'data_registrazione'
        DataType = ftDate
      end
      item
        Name = 'tco_codice'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'tiv_codice'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'imponibile'
        DataType = ftFloat
      end
      item
        Name = 'gen_codice'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'imposta'
        DataType = ftFloat
      end>
    Left = 489
    Top = 88
    Data = {
      030006001200646174615F72656769737472617A696F6E650900000000000000
      0A0074636F5F636F6469636501000400000000000A007469765F636F64696365
      01000400000000000A00696D706F6E6962696C6506000000000000000A006765
      6E5F636F6469636501000800000000000700696D706F73746106000000000000
      00000000000000}
    object tabella_corrispettividata_registrazione: TDateField
      FieldName = 'data_registrazione'
    end
    object tabella_corrispettivitco_codice: TStringField
      FieldName = 'tco_codice'
      Size = 4
    end
    object tabella_corrispettivitiv_codice: TStringField
      FieldName = 'tiv_codice'
      Size = 4
    end
    object tabella_corrispettiviimponibile: TFloatField
      FieldName = 'imponibile'
    end
    object tabella_corrispettiviimposta: TFloatField
      FieldName = 'imposta'
    end
  end
  object tiv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select percentuale'
      'from tiv'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 85
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object ind: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select indirizzo'
      'from dvt'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object pni_zucchetti: TVirtualTable
    IndexFieldNames = 'tiv_codice'
    Left = 415
    Top = 115
    Data = {03000000000000000000}
    object pni_zucchettitiv_codice: TStringField
      FieldName = 'tiv_codice'
      Size = 4
    end
    object pni_zucchettiimponibile: TFloatField
      FieldName = 'importo_imponibile'
    end
    object pni_zucchettiimponibile_euro: TFloatField
      FieldName = 'importo_imponibile_euro'
    end
    object pni_zucchettiiva: TFloatField
      FieldName = 'importo_iva'
    end
    object pni_zucchettiiva_euro: TFloatField
      FieldName = 'importo_iva_euro'
    end
    object pni_zucchettiindetraiile: TFloatField
      FieldName = 'importo_indetraibile'
    end
    object pni_zucchettiindetraibile_euro: TFloatField
      FieldName = 'importo_indetraibile_euro'
    end
  end
  object pagamenti: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 455
    Top = 115
  end
  object ngt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select ngt.data_registrazione,'
      
        '(select sum(importo) from ngv where progressivo = ngt.progressiv' +
        'o)   '
      'from ngt'
      'where ngt.data_registrazione = :data_registrazione'
      'group by 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
        Value = nil
      end>
  end
  object sconti_ngt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select ngt.data_registrazione, sum(importo_totale_vendite - impo' +
        'rto_totale_resi - importo_totale) importo_sconto'
      'from ngt'
      'where ngt.data_registrazione between :dalla_data and :alla_data'
      'group by 1'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dalla_data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'alla_data'
        Value = nil
      end>
  end
  object neg: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select doc_progressivo_origine'
      'from fvr'
      
        'where progressivo = :progressivo and documento_origine = '#39'vendit' +
        'a negozio'#39
      'limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object righe_no_gen: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    Top = 150
  end
  object tng: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from tng'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select gen_codice'
      'from tma'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object pro_pat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select tag.liquidazione, tag.codice tag_codice, pro.importo_impo' +
        'nibile, pro.importo_provvigioni, '
      'pat.progressivo pat_progressivo, pat.importo_dovuto,'
      '(select sum(importo_dovuto) from pat pat_01 '
      
        'where pat_01.data_documento = pro.data_documento and pat_01.seri' +
        'e_documento = pro.serie_documento '
      
        'and pat_01.numero_documento = pro.numero_documento) totale_impor' +
        'to_dovuto,'
      '(select count(*) from pat pat_02 '
      
        'where pat_02.data_documento = pro.data_documento and pat_02.seri' +
        'e_documento = pro.serie_documento '
      
        'and pat_02.numero_documento = pro.numero_documento) numero_scade' +
        'nze'
      'from pro'
      'inner join tag on tag.codice = pro.tag_codice'
      'inner join pat on pat.data_documento = pro.data_documento '
      
        'and pat.serie_documento = pro.serie_documento and pat.numero_doc' +
        'umento = pro.numero_documento'
      'where pro.data_documento = :data_documento '
      'and pro.serie_documento = :serie_documento'
      'and pro.numero_documento = :numero_documento'
      'and tag.liquidazione = '#39'incasso scadenza'#39
      'order by tag.codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 385
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'serie_documento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'numero_documento'
        Value = nil
      end>
  end
  object cassa: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select riecascon.*,'
      'case '
      
        'when ttsmag.gen_codice_cassa_contanti is not null then ttsmag.ge' +
        'n_codice_cassa_contanti'
      'else tts.gen_codice_cassa_contanti'
      'end gen_codice_contanti'
      'from riecascon'
      'inner join tts on tts.codice = riecascon.descrizione'
      
        'left join ttsmag on ttsmag.tts_codice = riecascon.descrizione an' +
        'd ttsmag.tma_codice = riecascon.tma_codice'
      
        'where riecascon.tma_codice = :tma_codice and riecascon.data = :d' +
        'ata and riecascon.tipo = 40'
      'order by riecascon.descrizione')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 425
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end>
  end
  object vuodoc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select cpv.gen_codice, round(vuodoc.quantita * vuodoc.prezzo * v' +
        'uodoc.segno, 2) importo '
      'from vuodoc'
      'inner join vuo on vuo.codice = vuodoc.vuo_codice '
      'inner join art on art.codice = vuo.art_codice '
      
        'inner join cpv on cpv.tcc_codice = :tcc_codice and cpv.tca_codic' +
        'e = art.tca_codice'
      
        'where cfg_tipo = '#39'C'#39' and documento_origine = :documento_origine ' +
        'and doc_progressivo_origine = :doc_progressivo_origine')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcc_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'documento_origine'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'doc_progressivo_origine'
        Value = nil
      end>
  end
  object prvm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tag_codice, percentuale '
      'from prvm'
      'where progressivo = :progressivo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object fvr_nc: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select distinct pat.progressivo, pat.importo_saldo, '
      
        '(select max(riga) from pas where progressivo = pat.progressivo) ' +
        'pas_riga'
      'from fvr'
      'inner join fvt on fvt.progressivo = fvr.doc_progressivo_origine'
      
        'inner join pat on pat.cfg_tipo = '#39'C'#39' and pat.cfg_codice = fvt.cl' +
        'i_codice and pat.data_documento = fvt.data_documento '
      
        'and pat.numero_documento = fvt.numero_documento and pat.serie_do' +
        'cumento = fvt.serie_documento'
      
        'where fvr.progressivo = :progressivo and left(fvr.documento_orig' +
        'ine, 7) = '#39'fattura'#39
      'and pat.importo_saldo <> 0'
      'order by pat.data_scadenza')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 420
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object ngi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select ngi.tiv_codice, sum(ngi.importo) importo'
      'from ngi'
      'inner join ngt on ngt.progressivo = ngi.progressivo'
      'where ngt.contabilita = '#39'no'#39' and ngt.fattura = '#39'no'#39
      'and ngt.data_registrazione = :data_registrazione'
      'and ngt.tma_codice = :tma_codice'
      'group by 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tma_codice'
        Value = nil
      end>
  end
  object ddt_acconto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select pat.progressivo '
      'from dvr   '
      
        'inner join ovr on ovr.progressivo = dvr.doc_progressivo_origine ' +
        'and ovr.riga = dvr.doc_riga_origine   '
      
        'inner join pat on pat.progressivo_ordine_acconto = ovr.progressi' +
        'vo'
      
        'where dvr.progressivo = :progressivo and dvr.riga = :riga and dv' +
        'r.documento_origine = '#39'ordine ven'#39
      'and pat.importo_saldo <> 0')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 490
    Top = 180
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
  object fattura_acconto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select pat.progressivo '
      'from ovr   '
      
        'inner join pat on pat.progressivo_ordine_acconto = ovr.progressi' +
        'vo'
      'where ovr.progressivo = :progressivo and ovr.riga = :riga'
      'and pat.importo_saldo <> 0')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 460
    Top = 180
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
  object bolla_acconto: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select pat.progressivo '
      'from bvr   '
      
        'inner join ovr on ovr.progressivo = bvr.doc_progressivo_origine ' +
        'and ovr.riga = bvr.doc_riga_origine   '
      
        'inner join pat on pat.progressivo_ordine_acconto = ovr.progressi' +
        'vo'
      
        'where bvr.progressivo = :progressivo and bvr.riga = :riga and bv' +
        'r.documento_origine = '#39'ordine ven'#39
      'and pat.importo_saldo <> 0')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 180
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
  object query_dcm: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select utente_modifica'
      'from dcm'
      'where tabella = :tabella'
      'and progressivo = :progressivo'
      
        'and utente_creazione <> substring(user(), 1, locate('#39'@'#39', user())' +
        ' - 1)'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tabella'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
  object nom_rappresentanza: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select partita_iva,'
      
        '(select partita_iva from nmd where nom_codice = nom.codice and d' +
        'ata_fine >= :data order by data_fine limit 1) nmd_partita_iva'
      'from nom'
      'where nom.codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 520
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object ritclit: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ritclit'
      'where progressivo = :progressivo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'progressivo'
        Value = nil
      end>
  end
end
