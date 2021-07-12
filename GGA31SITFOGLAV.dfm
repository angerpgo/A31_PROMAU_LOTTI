inherited A31SITFOGLAV: TA31SITFOGLAV
  Caption = 'A31SITFOGLAV'
  ClientHeight = 316
  ClientWidth = 1053
  ExplicitWidth = 1059
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1053
    object tool_stampa: TToolButton
      Left = 279
      Top = 0
      Caption = 'tool_stampa'
      ImageIndex = 0
      OnClick = tool_stampaClick
    end
  end
  inherited statusbar: TStatusBar
    Top = 296
    Width = 1053
    ExplicitTop = 215
  end
  inherited tab_control: TRzPageControl
    Width = 1053
    Height = 262
    ExplicitHeight = 181
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 990
      ExplicitHeight = 158
      inherited pannello_elaborazione: TRzPanel
        Width = 1051
        Height = 239
        ExplicitHeight = 158
        inherited pannello_parametri: TRzPanel
          Width = 1051
          Height = 201
          ExplicitHeight = 120
          object Label2: TRzLabel
            Left = 5
            Top = 0
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
          object Label4: TRzLabel
            Left = 5
            Top = 40
            Width = 47
            Height = 13
            Caption = 'situazione'
            FocusControl = v_dettaglio
            ShowAccelChar = False
            Transparent = True
          end
          object v_art_codice: trzedit_go
            Left = 5
            Top = 15
            Width = 186
            Height = 21
            Hint = 'codice articolo [F4 F5 F6]'
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
            TabOrder = 0
            OnExit = v_art_codiceExit
            lookcolldatabase = 'arc.arcdit'
            lookcollpopupmenu = ARC.pop_arc_art
            lookcollprogram = 'GESART'
            lookcolltable = 'ART'
            lookcollvisname = 'ART'
          end
          object v_art_descrizione: trzdbeditdescrizione_go
            Left = 195
            Top = 16
            Width = 776
            Height = 21
            Hint = '-'
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            DataSource = art_ds
            DataField = 'DESCRIZIONE'
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
          object v_dettaglio: trzcombobox_go
            Left = 5
            Top = 55
            Width = 156
            Height = 21
            Hint = 'tipo analisi'
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
            TabOrder = 2
            Text = 'tutti'
            Items.Strings = (
              'inserito'
              'evaso'
              'evaso parziale'
              'tutti')
            ItemIndex = 3
          end
          object pannello_bottoni: TRzPanel
            Left = 0
            Top = 170
            Width = 1051
            Height = 31
            Align = alBottom
            BorderOuter = fsLowered
            TabOrder = 3
            ExplicitTop = 89
            ExplicitWidth = 990
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
        inherited Panel4: TRzPanel
          Top = 201
          Width = 1051
          ExplicitLeft = 0
          ExplicitTop = 120
          inherited Bevel1: TBevel
            Width = 1051
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 990
      ExplicitHeight = 158
      inherited pannello_esposizione: TRzPanel
        Width = 1051
        Height = 239
        ExplicitHeight = 158
        object v_griglia: TcxGrid
          Left = 0
          Top = 0
          Width = 1051
          Height = 239
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 370
          ExplicitTop = -20
          ExplicitWidth = 250
          ExplicitHeight = 200
          object v_grigliaDB: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = query_ds
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object v_grigliaDBprogressivo: TcxGridDBColumn
              DataBinding.FieldName = 'progressivo'
              HeaderAlignmentHorz = taCenter
              Width = 72
            end
            object v_grigliaDBcli_codice: TcxGridDBColumn
              Caption = 'codice cliente'
              DataBinding.FieldName = 'cli_codice'
              HeaderAlignmentHorz = taCenter
              Width = 85
            end
            object v_grigliaDBcodice_articolo_cliente: TcxGridDBColumn
              Caption = 'codice articolo cliente'
              DataBinding.FieldName = 'codice_articolo_cliente'
              HeaderAlignmentHorz = taCenter
              Width = 121
            end
            object v_grigliaDBcodice: TcxGridDBColumn
              DataBinding.FieldName = 'codice'
              HeaderAlignmentHorz = taCenter
              Width = 97
            end
            object v_grigliaDBdescrizione: TcxGridDBColumn
              DataBinding.FieldName = 'descrizione'
              HeaderAlignmentHorz = taCenter
              Width = 240
            end
            object v_grigliaDBa31art_esponente: TcxGridDBColumn
              Caption = 'esponente'
              DataBinding.FieldName = 'a31art_esponente'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object v_grigliaDBqta_da_produrre: TcxGridDBColumn
              Caption = 'qt'#224' da prod'
              DataBinding.FieldName = 'qta_da_produrre'
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object v_grigliaDBqta_prodotta: TcxGridDBColumn
              Caption = 'qt'#224' prodotta'
              DataBinding.FieldName = 'qta_prodotta'
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object v_grigliaDBdata_consegna: TcxGridDBColumn
              Caption = 'data consegna'
              DataBinding.FieldName = 'data_consegna'
              HeaderAlignmentHorz = taCenter
              Width = 105
            end
            object v_grigliaDBsituazione: TcxGridDBColumn
              DataBinding.FieldName = 'situazione'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
          end
          object v_grigliaLiv1: TcxGridLevel
            GridView = v_grigliaDB
          end
        end
      end
    end
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      ' select '
      
        ' fg.progressivo, fg.cli_codice, fg.codice_articolo_cliente, fg.a' +
        '31art_esponente, fg.qta_da_produrre, fg.qta_prodotta, fg.data_co' +
        'nsegna, fg.situazione,'
      
        ' art.codice, concat(trim(art.descrizione1), '#39#39' '#39#39' ,art.descrizio' +
        'ne2) descrizione, art.tum_codice, art.tub_codice, '
      ' mag.tma_codice, tma.descrizione,'
      
        ' coalesce(mag.esistenza, 0) esistenza, coalesce(mag.impegnato, 0' +
        ') impegnato, coalesce(mag.approntato, 0) approntato,'
      
        ' coalesce(mag.ordinato, 0) ordinato, (mag.esistenza - mag.impegn' +
        'ato + mag.ordinato) disponibilita'
      ' from a31foglav fg'
      ' left join art on art.codice = fg.art_codice'
      ' left join mag on mag.art_codice = art.codice'
      ' left join tma on tma.codice = mag.tma_codice'
      ' where 1 = 1'
      'limit 10')
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object art_ds: TMyDataSource
    DataSet = art
    Left = 360
    Top = 65526
  end
  object art: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select obsoleto, concat(trim(descrizione1), '#39' '#39', descrizione2) d' +
        'escrizione'
      'from art'
      'where codice = :codice'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' ')
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
end
