inherited CARLTMINH: TCARLTMINH
  Caption = 'CARLTMINH'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pannello_campi: TRzPanel
    inherited tab_control: TRzPageControl
      FixedDimension = 18
      inherited tab_pagina1: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 19
        object RzLabel1: TRzLabel [7]
          Left = 145
          Top = 90
          Width = 84
          Height = 13
          Caption = 'quantit'#224' verificata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        inherited Panel1: TRzPanel
          Left = 328
          TabOrder = 5
          ExplicitLeft = 328
          inherited Label1: TRzLabel
            Left = 3
            ExplicitLeft = 3
          end
          inherited Label5: TRzLabel
            Left = 133
            ExplicitLeft = 133
          end
          inherited v_quantita_totale: trzdbnumericedit_go
            Left = 3
            ExplicitLeft = 3
          end
          inherited v_quantita_riga_documento: trznumericedit_go
            Left = 133
            ExplicitLeft = 133
          end
        end
        inherited RzDBEditDescrizione_go3: trzdbeditdescrizione_go
          TabOrder = 6
        end
        inherited RzDBEditDescrizione_go4: trzdbeditdescrizione_go
          TabOrder = 7
        end
        inherited RzDBEditDescrizione_go5: trzdbeditdescrizione_go
          TabOrder = 8
        end
        object v_quantita_verificata: trzdbnumericedit_go
          Left = 145
          Top = 105
          Width = 121
          Height = 21
          Hint = 'Alt+Gi'#249' per aprire la calcolatrice [F11=saldo riga]'
          Margins.Left = 1
          Margins.Top = 1
          DataSource = tabella_ds
          DataField = 'a31_quantita'
          Alignment = taLeftJustify
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
          TabOrder = 4
          AllowBlank = False
          IntegersOnly = False
          DisplayFormat = ',0.0000;-,0.0000;#'
          decimalplaces = 4
        end
      end
    end
  end
  inherited pannello_bottoni_nuovi: TRzPanel
    inherited tab_pannello_bottoni_nuovi: TRzPageControl
      FixedDimension = 19
      inherited tab_pannello_bottoni_nuovi_base: TRzTabSheet
        ExplicitLeft = 1
        ExplicitTop = 23
        ExplicitWidth = 116
      end
    end
  end
  inherited query_codice: TMyQuery_go
    SQLInsert.Strings = (
      'INSERT INTO ltm'
      
        '  (ART_CODICE, LOTTO, DOC_PROGRESSIVO_ORIGINE, QUANTITA, ESISTEN' +
        'ZA, DOCUMENTO_ORIGINE, DOC_RIGA_ORIGINE, PROGRESSIVO, a31_quanti' +
        'ta)'
      'VALUES'
      
        '  (:ART_CODICE, :LOTTO, :DOC_PROGRESSIVO_ORIGINE, :QUANTITA, :ES' +
        'ISTENZA, :DOCUMENTO_ORIGINE, :DOC_RIGA_ORIGINE, :PROGRESSIVO, :a' +
        '31_quantita)')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ltm')
    SQL.Strings = (
      
        'select ltm.documento_origine, ltm.doc_progressivo_origine, ltm.d' +
        'oc_riga_origine, ltm.progressivo,'
      
        'ltm.art_codice, ltm.lotto, lot.descrizione lot_descrizione, lot.' +
        'data_scadenza lot_data_scadenza,'
      
        'ltm.quantita, ltm.esistenza, 0 lot_esistenza, 0 ltp_esistenza, 0' +
        ' approntato, 0 disponibilita,'
      'ltm.a31_quantita'
      'from ltm'
      'inner join lot on lot.lotto = ltm.lotto'
      'order by ltm.progressivo')
  end
  inherited esiste_lotto: TMyQuery_go
    Left = 920
    Top = 200
  end
  inherited update_data_scadenza: TMyQuery_go
    Left = 905
  end
end
