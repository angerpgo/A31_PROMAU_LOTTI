inherited A31VISLOT: TA31VISLOT
  Caption = 'A31VISLOT'
  ClientHeight = 709
  ClientWidth = 1264
  ExplicitWidth = 1280
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 13
  inherited toolbar: TToolBar
    Width = 1264
  end
  inherited statusbar: TStatusBar
    Top = 689
    Width = 1264
  end
  object v_griglia: trzdbgrid_go [2]
    Left = 0
    Top = 34
    Width = 1264
    Height = 655
    Align = alClient
    DataSource = query_ds
    DrawingStyle = gdsClassic
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = []
    OnTitleClick = v_grigliaTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'lotto'
        Title.Color = clYellow
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'art_codice'
        Title.Caption = 'codice articolo'
        Title.Color = clYellow
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'art_descrizione1'
        Title.Caption = 'descrizione articolo'
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'esistenza'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TMA_CODICE'
        Title.Caption = 'mag'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tub_codice'
        Title.Caption = 'ubi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'a31tsu_codice_01'
        Title.Caption = 'area'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tsu2_descrizione'
        Title.Caption = 'corridoio'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tsu3_descrizione'
        Title.Caption = 'colonna'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tsu4_descrizione'
        Title.Caption = 'ripiano'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tsu5_descrizione'
        Title.Caption = 'cella'
        Width = 100
        Visible = True
      end>
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'SELECT v.* '
      'FROM v_a31promau_lotto_ubi v'
      'order by v.lotto, v.art_codice')
  end
end
