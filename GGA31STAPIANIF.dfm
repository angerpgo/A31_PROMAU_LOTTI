inherited A31STAPIANIF: TA31STAPIANIF
  Caption = 'A31STAPIANIF'
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    inherited tool_stampa_pdf: TToolButton
      OnClick = tool_stampa_pdfClick
    end
    inherited tool_visualizza_file: TToolButton
      Down = False
    end
  end
  inherited pannello_parametri: TRzPanel
    Height = 429
    ExplicitHeight = 429
    object Panel1: TRzPanel
      Left = 0
      Top = 0
      Width = 791
      Height = 76
      Align = alTop
      TabOrder = 1
      OnExit = Panel1Exit
      object Label2: TRzLabel
        Left = 31
        Top = 15
        Width = 96
        Height = 13
        Caption = 'dalla data consegna'
      end
      object Label3: TRzLabel
        Left = 170
        Top = 15
        Width = 90
        Height = 13
        Caption = 'alla data consegna'
      end
      object v_data_dal: trzdatetimeedit_go
        Left = 30
        Top = 35
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
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 0
      end
      object v_data_al: trzdatetimeedit_go
        Left = 170
        Top = 35
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
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 1
      end
    end
    object Panel3: TRzPanel
      Left = 0
      Top = 278
      Width = 791
      Height = 151
      Align = alBottom
      TabOrder = 2
      object v_seleziona_pianificazione: TGroupBox
        Left = 2
        Top = 2
        Width = 266
        Height = 147
        Align = alLeft
        Caption = 'Documenti  Pianificazione'
        TabOrder = 0
        object v_ordini_clienti: TRzCheckBox
          Left = 25
          Top = 30
          Width = 124
          Height = 15
          Caption = 'consegna ordini clienti'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = v_ordini_clientiClick
        end
        object v_ordini_produzione: TRzCheckBox
          Left = 25
          Top = 55
          Width = 149
          Height = 15
          Caption = 'consegna ordini produzione'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = v_ordini_produzioneClick
        end
        object v_ordini_conto_terzi: TRzCheckBox
          Left = 25
          Top = 77
          Width = 191
          Height = 15
          Caption = 'consegna ordini di conto lavoro/terzi'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = v_ordini_conto_terziClick
        end
        object v_controllo_giacenza_materia_prima: TRzCheckBox
          Left = 25
          Top = 102
          Width = 163
          Height = 15
          Caption = 'controllo giacenza componenti'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
      end
      object GroupBox1: TGroupBox
        Left = 268
        Top = 2
        Width = 521
        Height = 147
        Align = alClient
        Caption = 'Componenti Pianificazione'
        TabOrder = 1
        object v_lavorazioni: TRzCheckBox
          Left = 25
          Top = 30
          Width = 69
          Height = 15
          Caption = 'lavorazioni'
          State = cbUnchecked
          TabOrder = 0
        end
        object v_componenti: TRzCheckBox
          Left = 25
          Top = 55
          Width = 74
          Height = 15
          Caption = 'componenti'
          State = cbUnchecked
          TabOrder = 1
        end
        object v_ordinamento_lavorazioni: trzcombobox_go
          Left = 105
          Top = 30
          Width = 145
          Height = 21
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
          Text = 'crescente'
          Items.Strings = (
            'crescente'
            'decrescente')
          ItemIndex = 0
        end
      end
    end
    object Panel2: TRzPanel
      Left = 0
      Top = 76
      Width = 791
      Height = 202
      Align = alClient
      TabOrder = 3
      object Label4: TRzLabel
        Left = 30
        Top = 5
        Width = 63
        Height = 13
        Caption = 'oggetto email'
      end
      object v_oggetto_email: trzedit_go
        Left = 30
        Top = 22
        Width = 476
        Height = 21
        Text = 'PIANIFICAZIONE PRODUZIONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnlyColor = clBtnFace
        ReadOnlyColorOnFocus = True
        TabOrder = 0
      end
      object RzPanel1: TRzPanel
        Left = 2
        Top = 169
        Width = 787
        Height = 31
        Align = alBottom
        BorderOuter = fsLowered
        TabOrder = 1
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
        object v_seltmo: TRzRapidFireButton
          Left = 120
          Top = 4
          Width = 111
          Height = 22
          Caption = 'filtro movimenti'
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
        end
        object v_selcli: TRzRapidFireButton
          Left = 350
          Top = 4
          Width = 111
          Height = 22
          Caption = 'filtro clienti'
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
          OnClick = v_selcliClick
        end
        object v_selfrn: TRzRapidFireButton
          Left = 465
          Top = 4
          Width = 111
          Height = 22
          Caption = 'filtro fornitori'
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
          OnClick = v_selfrnClick
        end
        object v_seltma: TRzRapidFireButton
          Left = 235
          Top = 4
          Width = 111
          Height = 22
          Caption = 'filtro depositi'
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
        end
      end
    end
  end
  inherited pannello_selezione: TRzPanel
    Top = 463
    Height = 71
    ExplicitTop = 463
    ExplicitHeight = 71
    inherited Bevel1: TBevel
      ExplicitWidth = 806
    end
    inherited v_conferma: TRzBitBtn
      Left = 700
      ExplicitLeft = 700
    end
    inherited v_esci: TRzBitBtn
      Left = 700
      ExplicitLeft = 700
    end
    inherited v_interrompi: TRzBitBtn
      Left = 480
      ExplicitLeft = 480
    end
  end
  inherited sor: TMyTable
    TableName = 'promau_pianif'
  end
  inherited sor1_ds: TMyDataSource
    DataSet = query_sor1
  end
  inherited ppDBTabella: TppDBPipeline
    DataSource = sor_ds
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    Template.FileName = 
      'C:\GestionaleOpen\go_utenti\A31_PROMAU\report\A31STAPIANIF_STAND' +
      'ARD.RTM'
    Left = 630
    Top = 35
    DataPipelineName = 'ppDBTabella'
    inherited pp_selezioni_stampa: TppTitleBand
      inherited pp_Shape4_parametri: TppShape
        LayerName = Foreground
      end
      inherited pp_Shape5_parametri: TppShape
        LayerName = Foreground
      end
      inherited pp_Image_parametri: TppImage [2]
        LayerName = Foreground
      end
      inherited pp_copia_schermo: TppImage [3]
        LayerName = Foreground
      end
      inherited pp_Label11: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label8_parametri: TppLabel [5]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label9_parametri: TppLabel [6]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label12_parametri: TppLabel [7]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label13_parametri: TppLabel [8]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label14_parametri: TppLabel [9]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label15_parametri: TppLabel [10]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label16_parametri: TppLabel [11]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label17_parametri: TppLabel [12]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_SystemVariable3_parametri: TppSystemVariable [13]
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      Visible = False
      mmHeight = 17463
      inherited pp_Shape1: TppShape
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Shape3: TppShape
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Image1: TppImage
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label1: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label19: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label4: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label2: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label5: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label10: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label6: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_Label3: TppLabel
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
      inherited pp_SystemVariable1: TppSystemVariable
        SaveOrder = -1
        Visible = False
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 14023
      object ppRegion5: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'Region5'
        Caption = 'Region5'
        ParentWidth = True
        Pen.Color = clWhite
        Stretch = True
        mmHeight = 14023
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape8: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape8'
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 1058
          mmTop = 1323
          mmWidth = 282046
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          DataField = 'descrizione_magazzino'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2455
          mmLeft = 93398
          mmTop = 2382
          mmWidth = 30956
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          DataField = 'nr_col_00'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 125148
          mmTop = 2382
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          DataField = 'nr_col_01'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 138907
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          DataField = 'nr_col_02'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 152665
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          DataField = 'nr_col_03'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 165629
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          DataField = 'nr_col_04'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 179123
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          DataField = 'nr_col_05'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 192617
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText9'
          DataField = 'nr_col_06'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 205846
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText10'
          DataField = 'nr_col_07'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 219075
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText101'
          DataField = 'nr_col_08'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 232305
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText12'
          DataField = 'nr_col_09'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 245269
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          DataField = 'nr_col_10'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 257176
          mmTop = 2381
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText16'
          DataField = 'nr_col_11'
          DataPipeline = ppDBTabella
          DisplayFormat = '#,0.00;-#,0.00; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2836
          mmLeft = 270934
          mmTop = 2381
          mmWidth = 10583
          BandType = 4
          LayerName = Foreground
        end
        object ppVariable1: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable1'
          OnDrawCommandClick = ppVariable1DrawCommandClick
          OnDrawCommandCreate = ppVariable1DrawCommandCreate
          BlankWhenZero = False
          CalcOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 2910
          mmTop = 2381
          mmWidth = 32015
          BandType = 4
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 138377
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 152136
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine14: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line14'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 165365
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 178594
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line16'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 192088
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line17'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 205317
          mmTop = 1853
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine18: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line18'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 218811
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line19'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 231775
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine20: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line20'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 244740
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line201'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 257440
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line22'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5821
          mmLeft = 270140
          mmTop = 1323
          mmWidth = 1058
          BandType = 4
          LayerName = Foreground
        end
        object ppVariable3: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'Variable3'
          BlankWhenZero = False
          CalcOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4763
          mmLeft = 35454
          mmTop = 2117
          mmWidth = 55563
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          DataField = 'disp_col_01'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 138907
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText18: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText18'
          DataField = 'disp_col_02'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 152665
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText19: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText19'
          DataField = 'disp_col_03'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText35: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText35'
          DataField = 'disp_col_04'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 179123
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText36: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText36'
          DataField = 'disp_col_05'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 192617
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText37: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText37'
          DataField = 'disp_col_06'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 205846
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText38: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText103'
          DataField = 'disp_col_07'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 219075
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText39: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText39'
          DataField = 'disp_col_08'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 232305
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText40: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText40'
          DataField = 'disp_col_09'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 245269
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText41: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText41'
          DataField = 'disp_col_10'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 257176
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText42: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText42'
          DataField = 'disp_col_11'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 270934
          mmTop = 9260
          mmWidth = 10583
          BandType = 4
          LayerName = Foreground
        end
        object ppDBText43: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText43'
          DataField = 'disp_col_00'
          DataPipeline = ppDBTabella
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBTabella'
          mmHeight = 2910
          mmLeft = 125148
          mmTop = 9260
          mmWidth = 12700
          BandType = 4
          LayerName = Foreground
        end
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 6350
      inherited pp_Shape2: TppShape
        ParentWidth = True
        mmLeft = 0
        mmWidth = 284427
        LayerName = Foreground
      end
      inherited pp_SystemVariable6: TppSystemVariable
        SaveOrder = -1
        TextAlignment = taCentered
        mmHeight = 3175
        mmLeft = 259557
        mmTop = 2117
        mmWidth = 20638
        LayerName = Foreground
      end
      inherited pp_Label20: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_utente: TppLabel [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pp_Label7: TppLabel [4]
        SaveOrder = -1
        mmLeft = 51858
        mmTop = 2117
        LayerName = Foreground
      end
    end
    object ppGroup2: TppGroup [4]
      BreakName = 'ordine_articolo'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'nom_descrizione'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
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
        mmHeight = 64823
        mmPrintPosition = 0
        object pplogo: TppImage
          DesignLayer = ppDesignLayer1
          UserName = 'logo'
          AlignHorizontal = ahCenter
          AlignVertical = avCenter
          MaintainAspectRatio = False
          Stretch = True
          mmHeight = 19050
          mmLeft = 2117
          mmTop = 1058
          mmWidth = 56092
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label23'
          AutoSize = False
          Caption = 'Sede legale: Strada per Novara 155 - 28062 Cameri (NO)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 62442
          mmTop = 1588
          mmWidth = 98425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label24'
          AutoSize = False
          Caption = 'Stabilimento: Corso Sempione 39 - 28062 Cameri (NO) '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3217
          mmLeft = 62442
          mmTop = 5292
          mmWidth = 98161
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          AutoSize = False
          Caption = 'PLANNING AND LOGISTIC DPT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4064
          mmLeft = 62442
          mmTop = 9260
          mmWidth = 63500
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label26'
          AutoSize = False
          Caption = 'tel: +39(0) 3211816142 - fax +39(0) 3211850997'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 62442
          mmTop = 13758
          mmWidth = 98161
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label27'
          AutoSize = False
          Caption = 'bellomi@promau.com - elia@promau.com'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Microsoft Sans Serif'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 62442
          mmTop = 17198
          mmWidth = 98161
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppRegion1: TppRegion
          DesignLayer = ppDesignLayer1
          UserName = 'Region1'
          Caption = 'Region1'
          Pen.Color = clWhite
          Pen.Style = psAlternate
          Stretch = True
          mmHeight = 16140
          mmLeft = 0
          mmTop = 22225
          mmWidth = 284163
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppShape11: TppShape
            DesignLayer = ppDesignLayer1
            UserName = 'Shape14'
            Shape = stRoundRect
            mmHeight = 13229
            mmLeft = 0
            mmTop = 24077
            mmWidth = 116681
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppDBText30: TppDBText
            DesignLayer = ppDesignLayer1
            UserName = 'DBText30'
            DataField = 'frn_codice'
            DataPipeline = ppDBTabella
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppDBTabella'
            mmHeight = 5027
            mmLeft = 5027
            mmTop = 30692
            mmWidth = 19579
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppDBText31: TppDBText
            DesignLayer = ppDesignLayer1
            UserName = 'DBText31'
            DataField = 'NOM_DESCRIZIONE'
            DataPipeline = ppDBTabella
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppDBTabella'
            mmHeight = 5027
            mmLeft = 25665
            mmTop = 30428
            mmWidth = 68792
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel20: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label38'
            Caption = 'Spettabile'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3217
            mmLeft = 5292
            mmTop = 26194
            mmWidth = 12192
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppShape13: TppShape
            DesignLayer = ppDesignLayer1
            UserName = 'Shape16'
            Shape = stRoundRect
            mmHeight = 13229
            mmLeft = 175684
            mmTop = 23813
            mmWidth = 108479
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel35: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label52'
            Caption = 'Planner'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3217
            mmLeft = 178330
            mmTop = 25665
            mmWidth = 9483
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppDBText32: TppDBText
            DesignLayer = ppDesignLayer1
            UserName = 'DBText32'
            DataField = 'planner'
            DataPipeline = ppDBTabella
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            DataPipelineName = 'ppDBTabella'
            mmHeight = 5027
            mmLeft = 178065
            mmTop = 30163
            mmWidth = 68792
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
        end
        object ppRegion4: TppRegion
          DesignLayer = ppDesignLayer1
          UserName = 'Region4'
          Brush.Style = bsClear
          Caption = 'Region4'
          ParentWidth = True
          Pen.Color = clWhite
          Stretch = True
          Transparent = True
          mmHeight = 10319
          mmLeft = 0
          mmTop = 38365
          mmWidth = 284427
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppLine23: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line11'
            Pen.Width = 6
            Weight = 4.500000000000000000
            mmHeight = 1588
            mmLeft = 2910
            mmTop = 42334
            mmWidth = 116681
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object pp_tipo_archivio: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label29'
            AutoSize = False
            Caption = 'PIANIFICAZIONE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 16
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            mmHeight = 6350
            mmLeft = 119856
            mmTop = 40217
            mmWidth = 45244
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine24: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line24'
            Pen.Width = 6
            Weight = 4.500000000000000000
            mmHeight = 1588
            mmLeft = 165894
            mmTop = 42598
            mmWidth = 116681
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
        end
        object ppRegion2: TppRegion
          DesignLayer = ppDesignLayer1
          UserName = 'Region2'
          Caption = 'Region2'
          Pen.Color = clWhite
          Pen.Style = psAlternate
          Stretch = True
          mmHeight = 15081
          mmLeft = 0
          mmTop = 49213
          mmWidth = 284163
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppShape2: TppShape
            DesignLayer = ppDesignLayer1
            UserName = 'Shape5'
            Shape = stRoundRect
            mmHeight = 12171
            mmLeft = 1058
            mmTop = 50006
            mmWidth = 282046
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel2: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label12'
            Caption = 'articolo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 1588
            mmTop = 51858
            mmWidth = 13758
            BandType = 3
            GroupNo = 0
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
            mmHeight = 3175
            mmLeft = 35454
            mmTop = 52388
            mmWidth = 23813
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_00: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_00'
            AutoSize = False
            Caption = 'col 00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 9790
            mmLeft = 125148
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_01: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_01'
            AutoSize = False
            Caption = 'col 01'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 138907
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_02: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_02'
            AutoSize = False
            Caption = 'col 02'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 152665
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_03: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_03'
            AutoSize = False
            Caption = 'col 03'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 165629
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_04: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_04'
            AutoSize = False
            Caption = 'col 04'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 179123
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_05: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'l_col_05'
            AutoSize = False
            Caption = 'col 05'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 192617
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_06: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label14'
            AutoSize = False
            Caption = 'col 06'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 205846
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_07: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label15'
            AutoSize = False
            Caption = 'col 07'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 219075
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_08: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label16'
            AutoSize = False
            Caption = 'col 08'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 232305
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_09: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label17'
            AutoSize = False
            Caption = 'col 09'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 245269
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_10: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label18'
            AutoSize = False
            Caption = 'col 10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 257176
            mmTop = 51594
            mmWidth = 12700
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppl_col_11: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label21'
            AutoSize = False
            Caption = 'col 11'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            TextAlignment = taCentered
            Transparent = True
            WordWrap = True
            mmHeight = 10054
            mmLeft = 270934
            mmTop = 51594
            mmWidth = 10583
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine2: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line2'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 138377
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine3: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line3'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 152136
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine4: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line4'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 165365
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine5: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line5'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 178594
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine6: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line6'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 192088
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine7: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line7'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 205317
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine8: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line8'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 218546
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine9: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line9'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 231775
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine10: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line10'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 12435
            mmLeft = 245005
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine11: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line101'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 11906
            mmLeft = 257440
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLine12: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line12'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 11906
            mmLeft = 270140
            mmTop = 50006
            mmWidth = 1058
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
          object ppLabel10: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label28'
            Caption = 'provenienza'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = []
            Transparent = True
            mmHeight = 3175
            mmLeft = 92604
            mmTop = 52123
            mmWidth = 15081
            BandType = 3
            GroupNo = 0
            LayerName = Foreground
          end
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup [6]
      BreakName = 'art_codice'
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
        Visible = False
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 13758
        mmPrintPosition = 0
        object ppRegion7: TppRegion
          DesignLayer = ppDesignLayer1
          UserName = 'Region7'
          ParentWidth = True
          Pen.Color = clWhite
          Stretch = True
          mmHeight = 13494
          mmLeft = 0
          mmTop = 0
          mmWidth = 284427
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppShape6: TppShape
            DesignLayer = ppDesignLayer1
            UserName = 'Shape7'
            Brush.Color = clSilver
            Shape = stRoundRect
            mmHeight = 10848
            mmLeft = 1058
            mmTop = 1588
            mmWidth = 282046
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppDBText46: TppDBText
            DesignLayer = ppDesignLayer1
            UserName = 'DBText46'
            DataField = 'art_descrizione1'
            DataPipeline = ppDBTabella
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            DataPipelineName = 'ppDBTabella'
            mmHeight = 3217
            mmLeft = 37042
            mmTop = 6615
            mmWidth = 87313
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine47: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line47'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 138377
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine48: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line48'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 152136
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine49: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line49'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 165365
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine50: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line50'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 178594
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine51: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line51'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 192088
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine52: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line52'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 205317
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine53: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line53'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 218811
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine54: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line54'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 231775
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine55: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line204'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 244740
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine56: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line56'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 257440
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLine57: TppLine
            DesignLayer = ppDesignLayer1
            UserName = 'Line57'
            Position = lpLeft
            Weight = 0.750000000000000000
            mmHeight = 10848
            mmLeft = 270140
            mmTop = 1588
            mmWidth = 1058
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppDBText60: TppDBText
            DesignLayer = ppDesignLayer1
            UserName = 'DBText60'
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
            mmLeft = 2910
            mmTop = 6615
            mmWidth = 32015
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
          object ppLabel1: TppLabel
            DesignLayer = ppDesignLayer1
            UserName = 'Label9'
            Caption = 'articolo da produrre'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Name = 'Microsoft Sans Serif'
            Font.Size = 8
            Font.Style = [fsBold]
            Transparent = True
            mmHeight = 3175
            mmLeft = 3440
            mmTop = 2381
            mmWidth = 45244
            BandType = 3
            GroupNo = 2
            LayerName = Foreground
          end
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppSubReport2: TppSubReport
          DesignLayer = ppDesignLayer1
          UserName = 'SubReport2'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'ppdbComponenti'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 284427
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppdbComponenti
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.Duplex = dpNone
            PrinterSetup.Orientation = poLandscape
            PrinterSetup.PaperName = 'A4'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 6350
            PrinterSetup.mmMarginLeft = 6350
            PrinterSetup.mmMarginRight = 6350
            PrinterSetup.mmMarginTop = 6350
            PrinterSetup.mmPaperHeight = 210079
            PrinterSetup.mmPaperWidth = 297127
            PrinterSetup.PaperSize = 9
            Template.Format = ftASCII
            Version = '17.01'
            mmColumnWidth = 0
            DataPipelineName = 'ppdbComponenti'
            object ppTitleBand2: TppTitleBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 8202
              mmPrintPosition = 0
              object ppShape7: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape7'
                Brush.Color = clScrollBar
                ParentWidth = True
                Shape = stRoundRect
                mmHeight = 7408
                mmLeft = 0
                mmTop = 0
                mmWidth = 284427
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel4: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label1'
                AutoSize = False
                Caption = 'COMPONENTI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Microsoft Sans Serif'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 3175
                mmLeft = 2117
                mmTop = 2646
                mmWidth = 281253
                BandType = 1
                LayerName = Foreground2
              end
            end
            object ppDetailBand3: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 8996
              mmPrintPosition = 0
              object ppRegion3: TppRegion
                DesignLayer = ppDesignLayer3
                UserName = 'Region3'
                Caption = 'Region3'
                ParentWidth = True
                Pen.Color = clWhite
                Stretch = True
                mmHeight = 8996
                mmLeft = 0
                mmTop = 0
                mmWidth = 284427
                BandType = 4
                LayerName = Foreground2
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                object ppShape1: TppShape
                  DesignLayer = ppDesignLayer3
                  UserName = 'Shape1'
                  ParentWidth = True
                  Shape = stRoundRect
                  mmHeight = 6085
                  mmLeft = 0
                  mmTop = 1853
                  mmWidth = 284427
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText14: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText14'
                  OnDrawCommandClick = ppDBText14DrawCommandClick
                  OnDrawCommandCreate = ppDBText14DrawCommandCreate
                  DataField = 'ART_CODICE_COMPONENTE'
                  DataPipeline = ppdbComponenti
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 3175
                  mmLeft = 7144
                  mmTop = 2117
                  mmWidth = 39158
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText15: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText15'
                  DataField = 'descrizione_magazzino'
                  DataPipeline = ppdbComponenti
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 3175
                  mmLeft = 93398
                  mmTop = 2382
                  mmWidth = 30956
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText17: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText17'
                  DataField = 'nr_col_00'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 125148
                  mmTop = 2382
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText20: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText20'
                  DataField = 'nr_col_01'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 138907
                  mmTop = 2117
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText21: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText21'
                  DataField = 'nr_col_02'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 152665
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText22: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText22'
                  DataField = 'nr_col_03'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 165629
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText23: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText23'
                  DataField = 'nr_col_04'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 179123
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText24: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText24'
                  DataField = 'nr_col_05'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 192617
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText25: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText25'
                  DataField = 'nr_col_06'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 205846
                  mmTop = 2117
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText26: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText102'
                  DataField = 'nr_col_07'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 219075
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText27: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText27'
                  DataField = 'nr_col_08'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 232305
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText28: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText28'
                  DataField = 'nr_col_09'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 245269
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText29: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText29'
                  DataField = 'nr_col_10'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 257176
                  mmTop = 1853
                  mmWidth = 12700
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText33: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText33'
                  DataField = 'nr_col_11'
                  DataPipeline = ppdbComponenti
                  DisplayFormat = '#,0.00;-#,0.00; '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  ParentDataPipeline = False
                  TextAlignment = taRightJustified
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 4763
                  mmLeft = 270934
                  mmTop = 1853
                  mmWidth = 10583
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppVariable2: TppVariable
                  DesignLayer = ppDesignLayer3
                  UserName = 'Variable2'
                  BlankWhenZero = False
                  CalcOrder = 0
                  DataType = dtInteger
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  Visible = False
                  mmHeight = 3175
                  mmLeft = 529
                  mmTop = 2382
                  mmWidth = 4498
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppDBText34: TppDBText
                  DesignLayer = ppDesignLayer3
                  UserName = 'DBText34'
                  DataField = 'art_descrizione1'
                  DataPipeline = ppdbComponenti
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Microsoft Sans Serif'
                  Font.Size = 8
                  Font.Style = []
                  Transparent = True
                  DataPipelineName = 'ppdbComponenti'
                  mmHeight = 3175
                  mmLeft = 47625
                  mmTop = 2382
                  mmWidth = 44715
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine25: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line25'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 138377
                  mmTop = 1853
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine26: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line26'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 152136
                  mmTop = 1853
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine27: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line27'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 165365
                  mmTop = 1853
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine28: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line28'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 178594
                  mmTop = 1853
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine29: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line29'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 192088
                  mmTop = 1853
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine30: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line30'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 205317
                  mmTop = 1853
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine31: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line31'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 218811
                  mmTop = 2117
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine32: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line32'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 231775
                  mmTop = 2382
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine33: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line202'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 244740
                  mmTop = 1853
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine34: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line34'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 257440
                  mmTop = 2117
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
                object ppLine35: TppLine
                  DesignLayer = ppDesignLayer3
                  UserName = 'Line35'
                  Position = lpLeft
                  Weight = 0.750000000000000000
                  mmHeight = 5821
                  mmLeft = 270140
                  mmTop = 2117
                  mmWidth = 1058
                  BandType = 4
                  LayerName = Foreground2
                end
              end
            end
            object ppSummaryBand1: TppSummaryBand
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 3704
              mmPrintPosition = 0
              object ppShape10: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape10'
                Brush.Color = clScrollBar
                ParentWidth = True
                Shape = stRoundRect
                mmHeight = 3440
                mmLeft = 0
                mmTop = 264
                mmWidth = 284427
                BandType = 7
                LayerName = Foreground2
              end
            end
            object raCodeModule2: TraCodeModule
              object raProgramInfo1: TraProgramInfo
                raClassName = 'TraEventHandler'
                raProgram.ProgramName = 'DetailAfterGenerate'
                raProgram.ProgramType = ttProcedure
                raProgram.Source = 
                  'procedure DetailAfterGenerate;'#13#10'begin'#13#10'      if dbComponenti['#39'di' +
                  'sp_col_00'#39']='#39'no'#39' then'#13#10'    begin'#13#10'       dbtext17.font.color := ' +
                  'clred;'#13#10'    end;'#13#10'    if dbComponenti['#39'disp_col_01'#39']='#39'no'#39' then'#13#10 +
                  '    begin'#13#10'       dbtext20.font.color := clred;'#13#10'    end;'#13#10'    i' +
                  'f dbComponenti['#39'disp_col_02'#39']='#39'no'#39' then'#13#10'    begin'#13#10'       dbtex' +
                  't21.font.color := clred;'#13#10'    end;'#13#10'    if dbComponenti['#39'disp_co' +
                  'l_03'#39']='#39'no'#39' then'#13#10'    begin'#13#10'       dbtext22.font.color := clred' +
                  ';'#13#10'    end;'#13#10'    if dbComponenti['#39'disp_col_04'#39']='#39'no'#39' then'#13#10'    b' +
                  'egin'#13#10'       dbtext23.font.color := clred;'#13#10'    end;'#13#10'    if dbC' +
                  'omponenti['#39'disp_col_05'#39']='#39'no'#39' then'#13#10'    begin'#13#10'       dbtext24.f' +
                  'ont.color := clred;'#13#10'    end;'#13#10'    if dbComponenti['#39'disp_col_06'#39 +
                  ']='#39'no'#39' then'#13#10'    begin'#13#10'       dbtext25.font.color := clred;'#13#10'  ' +
                  '  end;'#13#10'    if dbComponenti['#39'disp_col_07'#39']='#39'no'#39' then'#13#10'    begin'#13 +
                  #10'       dbtext27.font.color := clred;'#13#10'    end;'#13#10'    if dbCompon' +
                  'enti['#39'disp_col_08'#39']='#39'no'#39' then'#13#10'    begin'#13#10'       dbtext28.font.c' +
                  'olor := clred;'#13#10'    end;'#13#10'    if dbComponenti['#39'disp_col_09'#39']='#39'no' +
                  #39' then'#13#10'    begin'#13#10'       dbtext29.font.color := clred;'#13#10'    end' +
                  ';'#13#10'    if dbComponenti['#39'disp_col_10'#39']='#39'no'#39' then'#13#10'    begin'#13#10'    ' +
                  '   dbtext33.font.color := clred;'#13#10'    end;'#13#10'    if dbComponenti[' +
                  #39'disp_col_11'#39']='#39'no'#39' then'#13#10'    begin'#13#10'       dbtext34.font.color ' +
                  ':= clred;'#13#10'    end;'#13#10#13#10#13#10'end;'#13#10
                raProgram.ComponentName = 'Detail'
                raProgram.EventName = 'AfterGenerate'
                raProgram.EventID = 25
                raProgram.CaretPos = (
                  49
                  40)
              end
            end
            object ppDesignLayers3: TppDesignLayers
              object ppDesignLayer3: TppDesignLayer
                UserName = 'Foreground2'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
        object ppShape3: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape6'
          ParentWidth = True
          Shape = stRoundRect
          mmHeight = 2646
          mmLeft = 0
          mmTop = 5821
          mmWidth = 284427
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
      end
    end
    object ppGroup5: TppGroup [7]
      BreakName = 'sequenza'
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup [8]
      BreakName = 'fas_codice'
      DataPipeline = ppDBTabella
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTabella'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object raCodeModule1: TraCodeModule [9]
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnCalc(var Value: Variant);'#13#10'begin'#13#10'Value := ' +
          'dbtabella['#39'art_codice'#39'];'#13#10#13#10'  if dbtabella['#39'fas_codice'#39'] <> '#39#39' t' +
          'hen'#13#10'  begin'#13#10'    Value := dbtabella['#39'fas_codice'#39'];'#13#10'  end;'#13#10'  '#13 +
          #10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable3OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable3OnCalc(var Value: Variant);'#13#10'begin'#13#10'Value := ' +
          'dbtabella['#39'art_descrizione1'#39'];'#13#10#13#10'  if dbtabella['#39'fas_codice'#39'] <' +
          '> '#39#39' then'#13#10'  begin'#13#10'    Value := dbtabella['#39'fas_descrizione'#39'];'#13#10 +
          '  end;'#13#10#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable3'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'GroupHeaderBand1BeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 'procedure GroupHeaderBand1BeforePrint;'#13#10'begin'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'GroupHeaderBand1'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'GroupHeaderBand3BeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure GroupHeaderBand3BeforePrint;'#13#10'begin'#13#10'   GroupHeaderBan' +
          'd3.visible := true;'#13#10'  if dbtabella['#39'tipo_articolo'#39']='#39'spedizione' +
          #39' then'#13#10'  begin'#13#10'    GroupHeaderBand3.visible := false;'#13#10'  end;'#13 +
          #10#13#10'end;'#13#10
        raProgram.ComponentName = 'GroupHeaderBand3'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo6: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'GroupFooterBand3BeforePrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure GroupFooterBand3BeforePrint;'#13#10'begin'#13#10'     GroupFooterB' +
          'and3.visible := true;'#13#10'  if dbtabella['#39'tipo_articolo'#39']='#39'spedizio' +
          'ne'#39' then'#13#10'  begin'#13#10'    GroupFooterBand3.visible := false;'#13#10'  end' +
          ';'#13#10'end;'#13#10
        raProgram.ComponentName = 'GroupFooterBand3'
        raProgram.EventName = 'BeforePrint'
        raProgram.EventID = 24
        raProgram.CaretPos = (
          0
          0)
      end
    end
  end
  inherited ppReport_registri_fiscali: TppReport
    Left = 305
    Top = 25
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
    Left = 425
    Top = 35
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
  inherited query_sor: TMyQuery_go
    SQL.Strings = (
      'select * from promau_pianif'
      'where'
      'utn_codice=:utn_codice'
      
        'order by utn_codice,ordine_articolo,nom_descrizione,frn_codice,a' +
        'rt_codice')
    Left = 520
    Top = 65
    ParamData = <
      item
        DataType = ftString
        Name = 'utn_codice'
        Value = 'GO'
      end>
  end
  inherited tabella_nmc: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited query_parametri_ds: TMyDataSource
    Left = 690
    Top = 0
  end
  inherited query_stampa: TMyQuery_go
    Top = 5
  end
  object ppdbComponenti: TppDBPipeline
    DataSource = sor1_ds
    CloseDataSource = True
    SkipWhenNoRecords = False
    UserName = 'dbComponenti'
    Left = 618
    Top = 160
    MasterDataPipelineName = 'ppDBTabella'
    object ppdbComponentippMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'utn_codice'
      GuidCollationType = gcString
      DetailFieldName = 'utn_codice'
      DetailSortOrder = soAscending
    end
    object ppdbComponentippMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'frn_codice'
      GuidCollationType = gcString
      DetailFieldName = 'frn_codice'
      DetailSortOrder = soAscending
    end
  end
  object query_sor1: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select * from promau_componenti'
      'where'
      'utn_codice=:utn_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    MasterSource = query_ds
    DetailFields = 'utn_codice;frn_codice;art_codice'
    Left = 555
    Top = 175
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'utn_codice'
        Value = nil
      end>
  end
  object query_sor2: TMyQuery_go
    Connection = ARC.arcsor
    SQL.Strings = (
      'select * from promau_pianif'
      'where'
      'utn_codice=:utn_codice and'
      'frn_codice=:frn_codice and'
      'art_codice=:art_codice and'
      'sequenza=:sequenza and'
      'fas_codice=:fas_codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 530
    Top = 125
    ParamData = <
      item
        DataType = ftString
        Name = 'utn_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'frn_codice'
        Value = ''
      end
      item
        DataType = ftString
        Name = 'art_codice'
        Value = ' '
      end
      item
        DataType = ftInteger
        Name = 'sequenza'
        Value = 0
      end
      item
        DataType = ftString
        Name = 'fas_codice'
        Value = ' '
      end>
  end
  object frn_promau: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select * from nom'
      'where'
      'codice =:codice')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 685
    Top = 65
    ParamData = <
      item
        DataType = ftString
        Name = 'codice'
        Value = ''
      end>
  end
  object dat: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select dat.* from dat'
      'where'
      'dat.frn_codice=:frn_codice '
      'order by dat.data_documento desc limit 1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 730
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frn_codice'
        Value = nil
      end>
  end
end
