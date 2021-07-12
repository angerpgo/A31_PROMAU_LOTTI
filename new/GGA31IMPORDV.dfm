inherited A31IMPORDV: TA31IMPORDV
  Caption = 'A31IMPORDV'
  ClientHeight = 603
  ClientWidth = 1049
  ExplicitWidth = 1055
  ExplicitHeight = 652
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1049
    ExplicitWidth = 1049
  end
  inherited statusbar: TStatusBar
    Top = 583
    Width = 1049
    ExplicitTop = 583
    ExplicitWidth = 1049
  end
  inherited tab_control: TRzPageControl
    Width = 1049
    Height = 549
    ExplicitWidth = 1049
    ExplicitHeight = 549
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitWidth = 1047
      ExplicitHeight = 526
      inherited pannello_elaborazione: TRzPanel
        Width = 1047
        Height = 526
        ExplicitWidth = 1047
        ExplicitHeight = 526
        inherited pannello_parametri: TRzPanel
          Width = 1047
          Height = 488
          Caption = 'selezione'
          ExplicitWidth = 1047
          ExplicitHeight = 488
          object Label1: TRzLabel
            Left = 6
            Top = 0
            Width = 66
            Height = 13
            Caption = 'codice cliente'
            ShowAccelChar = False
            Transparent = True
          end
          object Label2: TRzLabel
            Left = 6
            Top = 135
            Width = 41
            Height = 13
            Caption = 'file excel'
            ShowAccelChar = False
            Transparent = True
          end
          object Label4: TRzLabel
            Left = 6
            Top = 182
            Width = 95
            Height = 13
            Caption = 'settimane congelate'
            ShowAccelChar = False
            Transparent = True
          end
          object Label5: TRzLabel
            Left = 131
            Top = 182
            Width = 139
            Height = 13
            Caption = 'data consegna cancellazione'
            ShowAccelChar = False
            Transparent = True
          end
          object Label6: TRzLabel
            Left = 6
            Top = 85
            Width = 123
            Height = 13
            Caption = 'codice fornitore PROMAU'
            ShowAccelChar = False
            Transparent = True
          end
          object Label7: TRzLabel
            Left = 6
            Top = 227
            Width = 122
            Height = 13
            Caption = 'settimane anticipo fornitori'
            ShowAccelChar = False
            Transparent = True
          end
          object Label3: TRzLabel
            Left = 6
            Top = 40
            Width = 88
            Height = 13
            Caption = 'codice documento'
            ShowAccelChar = False
            Transparent = True
          end
          object v_nome_file: trzedit_go
            Left = 9
            Top = 150
            Width = 605
            Height = 21
            Text = ''
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 6
          end
          object v_sfoglia: TRzButton
            Left = 636
            Top = 149
            Caption = '&Sfoglia'
            TabOrder = 7
            OnClick = v_sfogliaClick
          end
          object v_cli_codice: trzedit_go
            Left = 6
            Top = 17
            Width = 148
            Height = 21
            Hint = 'codice documento[F4 F5 F6]'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnClick = v_cli_codiceClick
            OnExit = v_cli_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcolltable = 'CLI'
            lookcollvisname = 'CLI'
          end
          object v_cli_descrizione1: trzdbeditdescrizione_go
            Left = 190
            Top = 18
            Width = 326
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = cli_ds
            DataField = 'DESCRIZIONE1'
            ReadOnly = True
            AutoSize = False
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
          end
          object v_controllo_ordini: TRzCheckBox
            Left = 5
            Top = 279
            Width = 87
            Height = 15
            Caption = 'controllo ordini'
            Checked = True
            State = cbChecked
            TabOrder = 8
            Visible = False
          end
          object v_ordini_clienti: TRzCheckBox
            Left = 110
            Top = 279
            Width = 135
            Height = 15
            Caption = 'generazione ordini clienti'
            Checked = True
            State = cbChecked
            TabOrder = 9
            Visible = False
          end
          object v_ordini_produzione: TRzCheckBox
            Left = 255
            Top = 279
            Width = 160
            Height = 15
            Caption = 'generazione ordini produzione'
            Checked = True
            State = cbChecked
            TabOrder = 10
            Visible = False
          end
          object v_data_inizio_consegna: trzdatetimeedit_go
            Left = 130
            Top = 200
            Width = 81
            Height = 21
            Hint = '[Alt+Gi'#249'=apre calendario]'
            CalendarElements = [ceYear, ceMonth, ceArrows, ceDaysOfWeek, ceFillDays, ceTodayButton]
            CaptionTodayBtn = 'oggi'
            CaptionClearBtn = 'annulla'
            EditType = etDate
            AutoSelect = False
            DropButtonVisible = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 12
          end
          object v_frn_codice: trzedit_go
            Left = 6
            Top = 102
            Width = 148
            Height = 21
            Hint = 'codice fornitore [F4 F5 F6]'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 4
            OnExit = v_frn_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcolltable = 'FRN'
            lookcollvisname = 'FRN'
          end
          object v_frn_descrizione1: trzdbeditdescrizione_go
            Left = 187
            Top = 102
            Width = 326
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = frn_opt_ds
            DataField = 'DESCRIZIONE1'
            ReadOnly = True
            AutoSize = False
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 5
          end
          object v_dispo: TRzCheckBox
            Left = 5
            Top = 309
            Width = 169
            Height = 15
            Caption = 'controllo disponibilit'#224' magazzino'
            Checked = True
            State = cbChecked
            TabOrder = 11
          end
          object v_visualizza_giacenze: TRzCheckBox
            Left = 185
            Top = 309
            Width = 110
            Height = 15
            Caption = 'visualizza giacenze'
            State = cbUnchecked
            TabOrder = 13
          end
          object v_settimane: TRzSpinEdit
            Left = 10
            Top = 201
            Width = 101
            Height = 21
            Max = 100.000000000000000000
            Value = 1.000000000000000000
            TabOrder = 14
          end
          object v_frn_anticipo: TRzSpinEdit
            Left = 10
            Top = 246
            Width = 101
            Height = 21
            Max = 100.000000000000000000
            Value = 1.000000000000000000
            TabOrder = 15
          end
          object v_tdo_descrizione: trzdbeditdescrizione_go
            Left = 190
            Top = 57
            Width = 326
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = tdo_ds
            DataField = 'DESCRIZIONE'
            ReadOnly = True
            AutoSize = False
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 3
          end
          object v_tdo_codice: trzedit_go
            Left = 6
            Top = 57
            Width = 51
            Height = 21
            Hint = 'codice documento[F4 F5 F6]'
            Text = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 4
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 2
            OnExit = v_tdo_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc
            lookcolltable = 'TDO'
            lookcollvisname = 'TDO'
          end
          object GroupBox1: TGroupBox
            Left = 5
            Top = 340
            Width = 386
            Height = 126
            Caption = 'CANCELLAZIONE DEFINITIVA'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
            TabStop = True
            Visible = False
            object v_cancella_oat_terzi_totale: TCheckBox
              Left = 15
              Top = 35
              Width = 306
              Height = 17
              Caption = '  totale ordini c/lavoro terzi fornitori'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clLime
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object v_cancella_opt_totale: TCheckBox
              Left = 15
              Top = 60
              Width = 276
              Height = 17
              Caption = '  totale ordini di produzione interni'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object v_cancella_ovt_totale: TCheckBox
              Left = 15
              Top = 85
              Width = 276
              Height = 17
              Caption = '  totale ordini clienti'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        inherited Panel4: TRzPanel
          Top = 488
          Width = 1047
          ExplicitTop = 488
          ExplicitWidth = 1047
          inherited Bevel1: TBevel
            Width = 1047
            ExplicitWidth = 557
          end
          inherited v_conferma: TRzBitBtn
            Left = 8
            ExplicitLeft = 8
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 1047
      ExplicitHeight = 526
      inherited pannello_esposizione: TRzPanel
        Width = 1047
        Height = 526
        ExplicitWidth = 1047
        ExplicitHeight = 526
        object v_griglia: TcxGrid
          Left = 0
          Top = 0
          Width = 1047
          Height = 526
          Align = alClient
          TabOrder = 0
          object v_griglia_db: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = v_griglia_dbCellClick
            DataController.DataSource = sor2_ds
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsBehavior.IncSearch = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.HeaderHeight = 40
            object v_griglia_dbriferimento: TcxGridDBColumn
              DataBinding.FieldName = 'riferimento'
              Visible = False
              GroupIndex = 0
              Options.Moving = False
            end
            object v_griglia_dbpos_riga: TcxGridDBColumn
              Caption = 'pos riga ordine'
              DataBinding.FieldName = 'pos_riga'
              Visible = False
              GroupIndex = 1
              SortIndex = 0
              SortOrder = soAscending
              Width = 87
            end
            object v_griglia_dbtipo_riga: TcxGridDBColumn
              Caption = 'tipo ordine'
              DataBinding.FieldName = 'tipo_riga'
            end
            object v_griglia_dbart_codice: TcxGridDBColumn
              Caption = 'articolo'
              DataBinding.FieldName = 'art_codice'
            end
            object v_griglia_dbart_codice_cli: TcxGridDBColumn
              Caption = 'codice cliente'
              DataBinding.FieldName = 'art_codice_cli'
            end
            object v_griglia_dbqta_00: TcxGridDBColumn
              Caption = 'qta 00'
              DataBinding.FieldName = 'qta_00'
            end
            object v_griglia_dbqta_01: TcxGridDBColumn
              Caption = 'qta 01'
              DataBinding.FieldName = 'qta_01'
            end
            object v_griglia_dbqta_02: TcxGridDBColumn
              DataBinding.FieldName = 'qta_02'
            end
            object v_griglia_dbqta_03: TcxGridDBColumn
              DataBinding.FieldName = 'qta_03'
            end
            object v_griglia_dbqta_04: TcxGridDBColumn
              DataBinding.FieldName = 'qta_04'
            end
            object v_griglia_dbqta_05: TcxGridDBColumn
              DataBinding.FieldName = 'qta_05'
            end
            object v_griglia_dbqta_06: TcxGridDBColumn
              DataBinding.FieldName = 'qta_06'
            end
            object v_griglia_dbqta_07: TcxGridDBColumn
              DataBinding.FieldName = 'qta_07'
            end
            object v_griglia_dbqta_08: TcxGridDBColumn
              DataBinding.FieldName = 'qta_08'
            end
            object v_griglia_dbqta_09: TcxGridDBColumn
              DataBinding.FieldName = 'qta_09'
            end
            object v_griglia_dbqta_10: TcxGridDBColumn
              DataBinding.FieldName = 'qta_10'
            end
            object v_griglia_dbqta_11: TcxGridDBColumn
              DataBinding.FieldName = 'qta_11'
              IsCaptionAssigned = True
            end
            object v_griglia_dbqta_12: TcxGridDBColumn
              DataBinding.FieldName = 'qta_12'
              IsCaptionAssigned = True
            end
            object v_griglia_dbqta_13: TcxGridDBColumn
              DataBinding.FieldName = 'qta_13'
              IsCaptionAssigned = True
            end
            object v_griglia_dbqta_14: TcxGridDBColumn
              DataBinding.FieldName = 'qta_14'
              IsCaptionAssigned = True
            end
            object v_griglia_dbqta_15: TcxGridDBColumn
              DataBinding.FieldName = 'qta_15'
              IsCaptionAssigned = True
            end
            object v_griglia_dbprogressivo: TcxGridDBColumn
              DataBinding.FieldName = 'progressivo'
              Visible = False
            end
          end
          object v_griglia_liv1: TcxGridLevel
            GridView = v_griglia_db
          end
        end
        object v_filtro: TRzButton
          Left = 570
          Top = 10
          Caption = 'filtro'
          TabOrder = 1
          OnClick = v_filtroClick
        end
      end
    end
  end
  inherited sor: TMyTable
    TableName = 'promau_impordv'
    Left = 103
  end
  inherited sor2: TMyTable
    TableName = 'promau_impordv'
  end
  inherited tabella_virtuale: TVirtualTable
    FieldDefs = <
      item
        Name = 'art_codice'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'quantita'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'data_consegna'
        DataType = ftDateTime
      end>
    Left = 660
    Top = 230
    Data = {
      030003000A006172745F636F64696365010014000000000008007175616E7469
      7461060000000F0000000D00646174615F636F6E7365676E610B000000000000
      00000000000000}
  end
  object xlsread: TXLSReadWriteII5
    ComponentVersion = '5.20.65'
    Version = xvExcel97
    DirectRead = False
    DirectWrite = False
    Left = 140
    Top = 105
  end
  object xlsdialog: TRzOpenDialog
    Filter = 'Excel|*.xls'
    InitialDir = 'c:\temp'
    Left = 430
  end
  object ovt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ovt'
      'where'
      'cli_codice=:cli_codice and'
      'riferimento=:riferimento')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 480
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riferimento'
        Value = nil
      end>
  end
  object ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ovr'
      'where'
      'progressivo=:progressivo and'
      'art_codice=:art_codice and'
      'cms_codice=:cms_codice and'
      'tipologia=:tipologia and'
      'situazione in ( '#39'evaso parziale'#39')')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 755
    Top = 70
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 0
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'cms_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tipologia'
        Value = ''
      end>
  end
  object cpv: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from cpv'
      'where'
      'tcc_codice=:tcc_codice and'
      'tca_codice=:tca_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 824
    Top = 78
    ParamData = <
      item
        DataType = ftString
        Name = 'tcc_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tca_codice'
        Value = ''
      end>
  end
  object cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select cli.*, nom.tva_codice '
      'from cli'
      'inner join nom on nom.codice=cli.codice'
      'where'
      'cli.codice=:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 374
    Top = 43
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object cli_ds: TMyDataSource
    DataSet = cli
    Left = 325
    Top = 45
  end
  object query_esiste_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) quantita, count(id) numero'
      'from opt'
      
        'where documento_origine = '#39'ordine ven'#39' and doc_progressivo_origi' +
        'ne = :progressivo and'
      'doc_riga_origine = :riga'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 690
    Top = 175
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'riga'
        Value = 0
      end>
  end
  object opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from opt'
      'where'
      'documento_origine ='#39'ordine ven'#39' and'
      'doc_progressivo_origine=:progressivo and'
      'doc_riga_origine =:riga')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'riga'
        Value = 0
      end>
  end
  object opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'insert into opr'
      '  (progressivo, riga, art_codice, quantita, semilavorato,'
      
        '   costo_unitario, tma_codice, formula, note, quantita_approntat' +
        'a, assistenza_tecnica, a31data_consegna )'
      'values'
      '  (:progressivo, :riga, :art_codice, :quantita, :semilavorato,'
      
        '   :costo_unitario, :tma_codice, :formula, :note, :quantita_appr' +
        'ontata, :assistenza_tecnica, :a31data_consegna)')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 555
    Top = 55
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'riga'
        Value = 0
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'quantita'
        Value = 0.000000000000000000
      end
      item
        DataType = ftString
        Name = 'semilavorato'
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'costo_unitario'
        Value = 0.000000000000000000
      end
      item
        DataType = ftString
        Name = 'tma_codice'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'formula'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'note'
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'quantita_approntata'
        Value = 0.000000000000000000
      end
      item
        DataType = ftString
        Name = 'assistenza_tecnica'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'a31data_consegna'
        Value = nil
      end>
  end
  object mag: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from mag'
      'where'
      'art_codice=:art_codice and'
      'tma_codice=:tma_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 110
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tma_codice'
        Value = ' '
      end>
  end
  object dsb: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select dsb.*, art.tipo_articolo'
      'from dsb'
      'inner join art on art.codice = dsb.art_codice_figlio'
      'where art_codice_padre = :art_codice_padre'
      
        '  and (data_inizio <= :data_inizio or data_inizio is null) and d' +
        'ata_fine >= :data_fine'
      ''
      'order by sequenza,art_codice_figlio')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 555
    Top = 175
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice_padre'
        Value = ''
      end
      item
        DataType = ftDate
        Name = 'data_inizio'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'data_fine'
        Value = nil
      end>
  end
  object art_finiti: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select art.codice, art.obsoleto, concat(trim(art.descrizione1), ' +
        #39' '#39', trim(art.descrizione2), '#39' '#39', art.codice_alternativo) descri' +
        'zione,'
      
        'art.tum_codice, art.frn_codice, art.tipo_articolo, art.tcm_codic' +
        'e, art.vd2_codice, art.lotti, frn.tma_codice_conto_terzi,'
      
        'coalesce((select id from arv where art_codice = art.codice limit' +
        ' 1), 0) arv_id,'
      
        '( select sum(cla.gg_anticipo) from cla where cla.art_codice=art.' +
        'codice ) gg_anticipo,'
      
        'case when art.frn_codice='#39'00001651'#39' and art.tcm_codice = '#39'P1'#39'  t' +
        'hen '#39'SEDE'#39
      
        '     when art.frn_codice='#39'00001651'#39' and art.tcm_codice = '#39'PRO'#39' t' +
        'hen '#39'P2'#39
      
        '     when art.frn_codice='#39'00001651'#39' and art.tcm_codice = '#39'FLO'#39' t' +
        'hen '#39'P3'#39' '
      '     else '#39'IN'#39' end tma_codice_finiti '
      'from art'
      'left join frn on frn.codice = art.frn_codice'
      'left join cla on cla.art_codice=art.codice'
      'where '
      'art.codice = :codice and'
      'art.obsoleto='#39'no'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 550
    Top = 225
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object query_figlio: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from dsb'
      'where art_codice_padre = :art_codice_padre'
      
        'and (data_inizio <= :data_dal or data_inizio is null) and data_f' +
        'ine >= :data_al'
      'limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 630
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice_padre'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'data_dal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_al'
        Value = nil
      end>
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 485
    Top = 110
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object dsb_tma: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select tma_codice'
      'from dsb'
      
        'where art_codice_padre = :art_codice_padre and art_codice_figlio' +
        ' = :art_codice_figlio and'
      
        '(data_inizio <= :data_inizio or data_inizio is null) and data_fi' +
        'ne >= :data_fine'
      ''
      ' '
      ' ')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 795
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice_padre'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'art_codice_figlio'
        Value = ''
      end
      item
        DataType = ftDate
        Name = 'data_inizio'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'data_fine'
        Value = nil
      end>
  end
  object mag_approntato: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select sum(scorta_minima) scorta_minima, sum(lotto_riordino) lot' +
        'to_riordino, sum(impegnato) impegnato, sum(ordinato) ordinato, s' +
        'um(esistenza) esistenza, sum(approntato) approntato'
      'from mag'
      'inner join tma on tma.codice=mag.tma_codice'
      'where'
      'mag.art_codice=:art_codice and'
      'tma.proprieta='#39'si'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 225
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ''
      end>
  end
  object art_costo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from art'
      'where codice = :codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 785
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object frn_rda: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from frn'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 790
    Top = 340
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object opr_semilav: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select opr.progressivo,opr.riga,opr.art_codice,opr.quantita '
      'from opr'
      'inner join opt on opt.progressivo=opr.progressivo'
      'where'
      'opr.progressivo=:progressivo and'
      'opr.art_codice=:art_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 820
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 0
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ''
      end>
  end
  object cxLocalizer1: TcxLocalizer
    Left = 445
    Top = 80
  end
  object sor_go: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select *'
      'from frn'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 465
    Top = 335
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codice'
        Value = nil
      end>
  end
  object sor_xls: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select *'
      'from frn'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 465
    Top = 370
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object query_sor: TMyQuery_go
    Connection = ARC.arcsor
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 330
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfOffice11
    Left = 515
    Top = 285
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 430
    Top = 250
    PixelsPerInch = 96
    object cxCellaModificata: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxCellaNormale: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
  end
  object opc: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 600
    Top = 60
  end
  object frn_opt_ds: TMyDataSource
    DataSet = frn_opt
    Left = 695
    Top = 120
  end
  object frn_opt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from frn'
      'where'
      'codice=:codice'
      ''
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 624
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object corsi: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select sum(quantita) numero_corsi'
      'from ovr'
      'inner join ovt on ovt.progressivo = ovr.progressivo'
      'inner join art on art.codice = ovr.art_codice'
      
        'where (ovr.art_codice = :art_codice or art.tcm_codice = :tcm_cod' +
        'ice or'
      
        'art.tgm_codice = :tgm_codice or art.tsa_codice = :tsa_codice or ' +
        'art.ts3_codice = :ts3_codice) and'
      
        'ovt.nostro_riferimento <> '#39#39' and extract(year from ovt.data_docu' +
        'mento) = :anno'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 655
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tcm_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tgm_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tsa_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ts3_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'anno'
        Value = ''
      end>
  end
  object ovt_c: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ovt'
      'where'
      'cli_codice=:cli_codice and'
      'riferimento=:riferimento')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 510
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'riferimento'
        Value = nil
      end>
  end
  object arc_cli: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from'
      'arcl'
      'where'
      'cli_codice=:cli_codice and'
      'codice_articolo_cliente=:codice_articolo_cliente and'
      'a31art_esponente=:art_esponente')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 730
    Top = 260
    ParamData = <
      item
        DataType = ftString
        Name = 'cli_codice'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'codice_articolo_cliente'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_esponente'
        Value = nil
      end>
  end
  object upd_opr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update opr'
      'set a31data_consegna=:a31data_consegna'
      'where '
      'progressivo=:progressivo and '
      'semilavorato='#39'no'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 670
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a31data_consegna'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 0
      end>
  end
  object ovr_id: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from ovr'
      'where'
      'id=:id')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 760
    Top = 130
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        Value = 0
      end>
  end
  object tdo_ds: TMyDataSource
    DataSet = tdo
    Left = 320
    Top = 95
  end
  object tdo: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from tdo'
      'where'
      'codice=:codice and'
      'tipo_documento='#39'ordine'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 374
    Top = 108
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object mag_tot: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select mag.art_codice,sum(mag.esistenza) esistenza, sum(mag.impe' +
        'gnato) impegnato, sum(mag.ordinato) ordinato, '
      
        'sum(mag.scorta_minima) scorta_minima, sum(mag.scorta_massima) sc' +
        'orta_massima, sum(mag.lotto_riordino) lotto_riordino'
      'from mag'
      'inner join tma on tma.codice=mag.tma_codice'
      'where'
      'mag.art_codice=:art_codice and'
      'tma.proprieta='#39'si'#39
      'group by 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 620
    Top = 115
    ParamData = <
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ''
      end>
  end
  object assnum_cnt: TMyQuery_go
    SQL.Strings = (
      'select * from cnt'
      'where anno = :anno and tipo = :tipo and sottotipo = :sottotipo'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    LockMode = lmPessimistic
    Left = 60
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sottotipo'
        Value = nil
      end>
  end
  object upd_ovr: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'update ovr'
      'set situazione='#39'annullata'#39
      'where '
      'progressivo=:progressivo and'
      'art_codice=:art_codice and'
      'cms_codice=:cms_codice and'
      'tipologia=:tipologia and'
      'data_consegna<=:data_consegna and'
      'situazione='#39'evaso parziale'#39)
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 750
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'progressivo'
        Value = 0
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cms_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tipologia'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_consegna'
        Value = nil
      end>
  end
  object ins_sor: TMyQuery_go
    Connection = ARC.arcsor
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 330
  end
  object sor_cms: TMyQuery_go
    Connection = ARC.arcsor
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 370
  end
  object sor_articoli: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select *'
      'from frn'
      'where codice = :codice'
      '')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 370
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object query_sor2: TMyQuery_go
    Connection = ARC.arcsor
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 405
    Top = 290
  end
  object query_pos: TMyQuery_go
    Connection = ARC.arcsor
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 465
    Top = 290
  end
  object ind: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select *'
      'from ind'
      'where'
      'ind.cli_codice=:cli_codice and'
      'ind.indirizzo=:indirizzo')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 434
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_codice'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'indirizzo'
        Value = nil
      end>
  end
  object query_righe: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 340
    Top = 65531
  end
end
