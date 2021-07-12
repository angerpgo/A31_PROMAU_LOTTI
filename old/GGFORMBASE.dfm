inherited FORMBASE: TFORMBASE
  Left = 283
  Top = 144
  Caption = 'FORMBASE'
  ClientHeight = 654
  ClientWidth = 790
  TransparentColorValue = clSilver
  Menu = menu
  Scaled = False
  ShowHint = True
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  ExplicitWidth = 806
  ExplicitHeight = 713
  PixelsPerInch = 96
  TextHeight = 13
  object toolbar: TToolBar
    Left = 0
    Top = 0
    Width = 790
    Height = 34
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 31
    Color = clBtnFace
    DoubleBuffered = False
    DrawingStyle = dsGradient
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    GradientEndColor = clBtnFace
    Images = ARC.immagine_24
    ParentColor = False
    ParentDoubleBuffered = False
    TabOrder = 0
    Transparent = False
    StyleElements = []
    object tool_ctrl_f4: TToolButton
      Left = 0
      Top = 0
      Hint = 'esegui help personalizzato [Ctrl+F4]'
      Caption = 'tool_ctrl_f4'
      ImageIndex = 58
      OnClick = tool_ctrl_f4Click
    end
    object tool_ctrl_f2: TToolButton
      Left = 31
      Top = 0
      Hint = 'aggiungi programma alla lista dei preferiti'
      Caption = 'tool_ctrl_f2'
      ImageIndex = 12
      OnClick = tool_ctrl_f2Click
    end
    object tool_invio_messaggio: TToolButton
      Left = 62
      Top = 0
      Hint = 'invio messaggio codificato'
      Caption = 'tool_invio_messaggio'
      Enabled = False
      ImageIndex = 34
      OnClick = tool_invio_messaggioClick
    end
    object tool_f4: TToolButton
      Left = 93
      Top = 0
      Hint = 'ricerca nell'#39'archivio collegato in modalit'#224' lookup [F4]'
      Caption = 'tool_f4'
      Enabled = False
      ImageIndex = 2
      OnClick = tool_f4Click
    end
    object tool_f5: TToolButton
      Left = 124
      Top = 0
      Hint = 'gestisci archivio collegato [F5]'
      Caption = 'tool_f5'
      Enabled = False
      ImageIndex = 26
      OnClick = tool_f5Click
    end
    object tool_f6: TToolButton
      Left = 155
      Top = 0
      Hint = 
        'visualizza dati e programmi derivati dell'#39'archivio collegato [F6' +
        ']'
      Caption = 'tool_f6'
      Enabled = False
      ImageIndex = 39
      OnClick = tool_f6Click
    end
  end
  object statusbar: TStatusBar
    Left = 0
    Top = 634
    Width = 790
    Height = 20
    Panels = <
      item
        Width = 80
      end
      item
        Width = 50
      end>
    OnDblClick = statusbarDblClick
  end
  object menu: TMainMenu
    AutoHotkeys = maManual
    Images = ARC.immagine_16
    Top = 65526
    object mnu_utente: TMenuItem
      Caption = 'utente'
      Enabled = False
      Hint = 'utente attivo e tipologia programma'
    end
    object mnu_help: TMenuItem
      Caption = '&Aiuto'
      object Assistenza1: TMenuItem
        Caption = 'Assistenza (Alt+H[h])'
        ImageIndex = 120
        OnClick = Assistenza1Click
      end
      object Utilizzotastifunzione1: TMenuItem
        Caption = 'Utilizzo tasti funzione'
        ImageIndex = 49
        OnClick = Utilizzotastifunzione1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mnu_about: TMenuItem
        Caption = 'about'
        ImageIndex = 50
        OnClick = mnu_aboutClick
      end
    end
    object mnu_zoom: TMenuItem
      Caption = '&Zoom'
      object zoom_avanti: TMenuItem
        Caption = 'Zoom avanti'
        ImageIndex = 140
        OnClick = zoom_avantiClick
      end
      object zoom_indietro: TMenuItem
        Caption = 'Zoom indietro'
        ImageIndex = 141
        OnClick = zoom_indietroClick
      end
    end
    object mnu_preferiti: TMenuItem
      Caption = '&Preferiti'
      OnClick = mnu_preferitiClick
    end
    object mnu_finestre_aperte: TMenuItem
      Caption = '&Finestre aperte'
      OnClick = mnu_finestre_aperteClick
    end
    object mnu_prg_codice_diretto: TMenuItem
      Caption = 'prg_codice_diretto'
      OnClick = mnu_prg_codice_direttoClick
    end
    object mnu_lista_vmc: TMenuItem
      Caption = 'lista_vmc'
    end
  end
  object Popup_griglia: TPopupMenu
    Images = ARC.immagine_16
    Left = 20
    Top = 65526
    object EsportazionedatiinformatoExcel1: TMenuItem
      Caption = 'Esportazione dati in formato Excel / Open Office'
      ImageIndex = 29
      OnClick = EsportazionedatiinformatoExcel1Click
    end
    object EsportazionedatiinformatoCSV1: TMenuItem
      Caption = 'Esportazione dati in formato CSV (con punto e virgola)'
      ImageIndex = 35
      OnClick = EsportazionedatiinformatoCSV1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Salvadimensionicolonne1: TMenuItem
      Caption = 'Salva dimensioni colonne'
      ImageIndex = 82
      OnClick = Salvadimensionicolonne1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Copiacolonnaselezionatanellaclipboard1: TMenuItem
      Caption = 'Copia colonna selezionata nella clipboard'
      ImageIndex = 132
      OnClick = Copiacolonnaselezionatanellaclipboard1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object SintassiSQL1: TMenuItem
      Caption = 'Sintassi SQL'
      ImageIndex = 124
      OnClick = SintassiSQL1Click
    end
  end
  object sor: TMyTable
    TableName = 'go_sor'
    Connection = ARC.arcsor
    BeforePost = sorBeforePost
    Left = 75
    Top = 65526
  end
  object sor1: TMyTable
    TableName = 'go_sor1'
    Connection = ARC.arcsor
    BeforePost = sor1BeforePost
    Left = 85
    Top = 65526
  end
  object sor2: TMyTable
    TableName = 'go_sor2'
    Connection = ARC.arcsor
    BeforePost = sor2BeforePost
    Left = 95
    Top = 65526
  end
  object sor_ds: TMyDataSource
    DataSet = sor
    Left = 110
    Top = 65526
  end
  object sor1_ds: TMyDataSource
    DataSet = sor1
    Left = 120
    Top = 65526
  end
  object sor2_ds: TMyDataSource
    DataSet = sor2
    Left = 130
    Top = 65526
  end
  object tabella: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 155
    Top = 65526
  end
  object tabella_iva: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 165
    Top = 65526
  end
  object tabella_righe: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 175
    Top = 65526
  end
  object tabella_dettaglio: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 185
    Top = 65526
  end
  object tabella_ds: TMyDataSource
    DataSet = tabella
    Left = 200
    Top = 65526
  end
  object tabella_iva_ds: TMyDataSource
    DataSet = tabella_iva
    Left = 210
    Top = 65526
  end
  object tabella_righe_ds: TMyDataSource
    DataSet = tabella_righe
    Left = 220
    Top = 65526
  end
  object tabella_dettaglio_ds: TMyDataSource
    DataSet = tabella_dettaglio
    Left = 230
    Top = 65526
  end
  object query: TMyQuery_go
    Connection = ARC.arcdit
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 255
    Top = 65526
  end
  object query_ds: TMyDataSource
    DataSet = query
    Left = 270
    Top = 65526
  end
end
