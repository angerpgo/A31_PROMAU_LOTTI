inherited A31ELAOBS: TA31ELAOBS
  Caption = 'A31ELAOBS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tab_control: TRzPageControl
    FixedDimension = 21
    inherited tab_pagina1: TRzTabSheet
      inherited pannello_elaborazione: TRzPanel
        inherited pannello_parametri: TRzPanel
          object RzLabel1: TRzLabel
            Left = 14
            Top = 15
            Width = 40
            Height = 13
            Caption = 'alla data'
          end
          object RzLabel2: TRzLabel
            Left = 150
            Top = 15
            Width = 82
            Height = 13
            Caption = 'gg obsolescienza'
          end
          object v_data_consegna_al: trzdatetimeedit_go
            Left = 14
            Top = 31
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
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 0
            OnExit = v_data_consegna_alExit
          end
          object v_gg_obsoleto: trznumericedit_go
            Left = 150
            Top = 30
            Width = 65
            Height = 21
            Hint = '[Alt+Gi'#249'=apre calcolatrice]'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnlyColor = clBtnFace
            ReadOnlyColorOnFocus = True
            TabOrder = 1
            IntegersOnly = False
            DisplayFormat = ',0.00;-,0.00;#'
          end
        end
      end
    end
    inherited tab_pagina2: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 22
      ExplicitWidth = 990
      ExplicitHeight = 478
      inherited pannello_esposizione: TRzPanel
        object v_griglia: trzdbgrid_go
          Left = 0
          Top = 0
          Width = 990
          Height = 266
          Align = alTop
          DataSource = query_ds
          DrawingStyle = gdsClassic
          options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'art_codice'
              Title.Caption = 'codice articolo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'art_descrizione1'
              Title.Caption = 'descrizione articolo'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcm_codice'
              Title.Caption = 'cat.merc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tin_codice'
              Title.Caption = 'cat. inv.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'esistenza'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valore_costo_standard'
              Title.Caption = 'costo std'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valore_totale'
              Title.Caption = 'valore totale'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_ultimo_mov'
              Title.Caption = 'data ultimo mov'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gg_obsoleto'
              Title.Caption = 'gg obsoleto'
              Visible = True
            end>
        end
        object rzdbgrid_go1: trzdbgrid_go
          Left = 0
          Top = 266
          Width = 990
          Height = 212
          Align = alClient
          DataSource = tabella_ds
          DrawingStyle = gdsClassic
          options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'liv'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'art_codice_figlio'
              Title.Caption = 'codice articolo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'artp_descrizione1'
              Title.Caption = 'descrizione articolo'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcm_codice'
              Title.Caption = 'cat.merc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tin_codice'
              Title.Caption = 'cat. inv.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'esistenza'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valore_costo_standard'
              Title.Caption = 'costo std'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valore_totale'
              Title.Caption = 'valore totale'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'data_ultimo_mov'
              Title.Caption = 'data ultimo mov'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gg_obsoleto'
              Title.Caption = 'gg obsoleto'
              Visible = True
            end>
        end
      end
    end
  end
  inherited sor: TMyTable
    TableName = 'stadsb'
  end
  inherited tabella_ds: TMyDataSource
    DataSet = dbs
  end
  inherited query: TMyQuery_go
    SQL.Strings = (
      'select '
      'art.codice art_codice, '
      'art.descrizione1 art_descrizione1,'
      'art.descrizione2 art_descrizione2,'
      'art.descrizione1_lingua_01 codice_auto,'
      'art.tcm_codice,'
      'art.tin_codice,'
      'mag.esistenza, '
      'art.valore_costo_standard ,'
      'mag.esistenza*art.valore_costo_standard valore_totale,'
      
        'F_ULTIMA_DATA_MOV_ART_CODICE(ART.CODICE, :alla_data ) data_ultim' +
        'o_mov,'
      
        'datediff(current_date,F_ULTIMA_DATA_MOV_ART_CODICE(ART.CODICE, :' +
        'alla_data ) ) gg_obsoleto'
      'from art'
      'inner join mag on mag.art_codice=art.codice'
      
        'inner join tma on tma.codice=mag.tma_codice and tma.proprieta='#39's' +
        'i'#39
      'where'
      'art.TCM_CODICE='#39'PRO'#39' AND'
      'mag.ESISTENZA >0  and'
      
        'art.codice in ( select mmr.art_codice from mmr where mmr.art_cod' +
        'ice=art.codice and mmr.PROGRESSIVO'
      
        'in ( select progressivo from mmt where data_registrazione <=:all' +
        'a_data'
      
        'and mmt.TMO_CODICE IN  ( '#39'ACQ'#39', '#39'SCMP'#39', '#39'CAFI'#39', '#39'VEN'#39' , '#39'REIN'#39' )' +
        ' ) )'
      
        'and ( datediff(current_date , F_ULTIMA_DATA_MOV_ART_CODICE(ART.C' +
        'ODICE, current_date ) ) >=:gg_obsoleto ) and'
      
        'not exists( select art_codice_padre from dsb where dsb.art_codic' +
        'e_figlio=art.codice )'
      'order by 1')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'alla_data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'alla_data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'alla_data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'gg_obsoleto'
        Value = nil
      end>
  end
  inherited tabella_virtuale: TVirtualTable
    Data = {03000000000000000000}
  end
  object mmt: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      
        'select mmt.progressivo, mmt.tma_codice, mmt.tmo_codice, mmr.art_' +
        'codice, mmr.quantita'
      'from mmt'
      'inner join mmr on mmr.progressivo=mmt.progressivo'
      'where'
      'mmt.data_registrazione=:data_registrazione and'
      'mmr.art_codice=:art_codice'
      'order by mmt.id desc')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 350
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data_registrazione'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
  object dbs: TMyQuery_go
    Connection = ARC.arcdit
    SQL.Strings = (
      'select '
      ':liv '#39'liv'#39','
      'dsb.art_codice_padre,'
      'dsb.art_codice_figlio,'
      'art.codice art_codice, '
      'art.descrizione1 art_descrizione1,'
      'art.descrizione2 art_descrizione2,'
      'art.descrizione1 artp_descrizione1,'
      'art.descrizione2 artp_descrizione2,'
      'art.descrizione1_lingua_01 codice_auto,'
      'art.tcm_codice,'
      'art.tin_codice,'
      'art.valore_costo_standard ,'
      
        'F_ULTIMA_DATA_MOV_ART_CODICE(ART.CODICE, :alla_data ) data_ultim' +
        'o_mov,'
      
        'datediff(current_date,F_ULTIMA_DATA_MOV_ART_CODICE(ART.CODICE, :' +
        'alla_data ) ) gg_obsoleto,'
      'sum(mag.esistenza) esistenza, '
      'sum(mag.esistenza)*art.valore_costo_standard valore_totale'
      'from dsb '
      'inner join art on art.codice =dsb.art_codice_padre'
      'inner join art artf on artf.codice =dsb.art_codice_figlio'
      'inner join mag on mag.art_codice=art.codice'
      
        'inner join tma on tma.codice=mag.tma_codice and tma.proprieta='#39's' +
        'i'#39
      'where'
      'dsb.art_codice_padre=:art_codice'
      'group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14'
      'order by 2,3')
    Options.DefaultValues = True
    Options.TrimVarChar = True
    Left = 380
    Top = 65531
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'liv'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'alla_data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'alla_data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'art_codice'
        Value = nil
      end>
  end
end
