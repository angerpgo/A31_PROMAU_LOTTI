inherited A31ARF: TA31ARF
  Left = 317
  Top = 159
  Caption = 'A31ARCCL Ricerca articoli per codice cliente'
  ClientHeight = 566
  ClientWidth = 1387
  ExplicitLeft = -273
  ExplicitWidth = 1393
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  object v_griglia: trzdbgrid_go
    Left = 0
    Top = 0
    Width = 1387
    Height = 566
    Align = alClient
    Color = 16776176
    DataSource = query_ds
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = []
    OnDblClick = v_grigliaDblClick
    OnKeyDown = v_grigliaKeyDown
    Columns = <
      item
        Color = clWindow
        Expanded = False
        FieldName = 'codice_articolo_cliente'
        Title.Caption = 'articolo cliente'
        Title.Color = clLime
        Width = 149
        Visible = True
      end
      item
        Color = clWindow
        Expanded = False
        FieldName = 'art_codice'
        Title.Caption = 'codice articolo'
        Title.Color = clYellow
        Width = 150
        Visible = True
      end
      item
        Color = clWindow
        Expanded = False
        FieldName = 'art_descrizione'
        Title.Caption = 'descrizione'
        Title.Color = clYellow
        Width = 478
        Visible = True
      end
      item
        Color = clWindow
        Expanded = False
        FieldName = 'frn_codice'
        Title.Caption = 'codice fornitore'
        Width = 119
        Visible = True
      end
      item
        Color = clWindow
        Expanded = False
        FieldName = 'nom_descrizione1'
        Title.Caption = 'ragione sociale'
        Width = 338
        Visible = True
      end>
  end
  object query: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select '#39#39' codice_articolo_cliente, '#39#39' art_codice, '#39#39' art_descriz' +
        'ione, '#39#39' frn_codice, '#39#39' nom_descrizione1')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 255
    Top = 270
  end
  object query_ds: TMyDataSource
    DataSet = query
    Left = 280
    Top = 270
  end
end
