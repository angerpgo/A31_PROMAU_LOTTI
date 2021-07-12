unit GGA31STAMAG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGSTAMPA, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess, ppdevice,
  Menus, StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs,
  Mask, ToolWin, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, RzButton, RzSpnEdt, MemDS,
  VirtualTable, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL, IdSASLAnonymous,
  IdExplicitTLSClientServerBase, IdSMTPBase, zzprzinv, ppStrtch, ppSubRpt, ppMemo, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  RzEdit, ppParameter, DBAccess, ppDesignLayer;

type

  TA31STAMAG = class(TSTAMPA)
    v_alla_data: TRzDateTimeEdit_go;
    Label4: TRzlabel;
    v_esistenza_zero: TRzcheckbox;
    inventario: tmyquery_go;
    prezzo: tmyquery_go;
    pp_DBText1: TppDBText;
    pp_DBText2: TppDBText;
    pp_DBText3: TppDBText;
    pp_DBText6: TppDBText;
    valore: tmyquery_go;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    pp_DBText9: TppDBText;
    pp_Label8: TppLabel;
    pp_Label9: TppLabel;
    pp_Label13: TppLabel;
    pp_Line1: TppLine;
    pp_Line2: TppLine;
    pp_DBCalc3: TppDBCalc;
    mag: tmyquery_go;
    pp_Label_l_alla_data: TppLabel;
    pp_Label_alla_data: TppLabel;
    Label2: TRzlabel;
    v_valorizzazione: TRzCombobox_go;
    pannello_bottoni: TRzPanel;
    v_selart: TRzRapidFireButton;
    v_seltma: TRzRapidFireButton;
    query_qta: tmyquery_go;
    query_val: tmyquery_go;
    Label3: TRzlabel;
    v_ordinamento: TRzCombobox_go;
    lsa: tmyquery_go;
    quantita_totale: tmyquery_go;
    ppDBPipeline1: TppDBPipeline;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc2: TppDBCalc;
    query_stampa_lifo: TMyQuery_go;
    query_stampa_lifo_ds: TMyDataSource;
    v_apertura: TRzCheckBox;
    v_elabora_mag: TRzCheckBox;
    RzLabel1: TRzLabel;
    v_controllo_esistenza: trzcombobox_go;
    sor_update: TMyQuery_go;
    v_dalla_data: trzdatetimeedit_go;
    RzLabel2: TRzLabel;
    ppDBCalc1: TppDBCalc;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppDesignLayer2: TppDesignLayer;
    ppPageStyle1: TppPageStyle;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppDBText10: TppDBText;
    v_dettaglio_tma: TRzCheckBox;
    procedure v_alla_dataExit(Sender: TObject);
    procedure v_tipo_valorizzazioneExit(Sender: TObject);
    procedure v_esistenza_zeroExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure pp_DBText2DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pp_DBText2DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
    procedure v_seltmaClick(Sender: TObject);
  protected
    przinv: tprzinv;

    autoinc: integer;
    //
    //  parametri selart
    //
    selezione_art_codice, da_art_codice, a_art_codice,
      selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
      selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
      selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
      selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
      selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
      selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
      selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice,
      selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
      selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice: string;
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista, art_tsa_codice_lista, art_frn_codice_lista,
      art_tin_codice_lista, art_tub_codice_lista: tstringlist;
    tasto_escape_art, art_escludi_obsoleti, art_eseguito: boolean;
    //
    selezione_tma_codice, da_tma_codice, a_tma_codice: string;
    tma_codice_lista: tstringlist;
    tasto_escape_tma, tma_eseguito: boolean;

    v_data_inizio, v_data_fine: tdatetime;

    procedure call_selart;
    procedure call_seltma;
    //
    //  fine variabili selart
    //
    procedure alla_data_controllo;

    function assegna_costo(tipo_valorizzazione: integer): double;
    procedure assegna_query_tma_tutti;
  public
    art_codice_passato, tma_codice_passato: string;

    procedure controllo_campi; override;
    procedure stampa; override;
    procedure esegue_stampa; override;
  end;

implementation

uses DMARC, ZZLIBRERIE, ZZTMA_TAG;

{$r *.dfm}


procedure TA31STAMAG.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  alla_data_controllo;
  if controllo then
  begin
    if (v_alla_data.date = date) or (v_alla_data.date = data_bilancio) then
    begin
      abilita_campo(v_elabora_mag);
    end
    else
    begin
      v_elabora_mag.checked := false;
    end;
  end;
end;

procedure TA31STAMAG.alla_data_controllo;
begin
  inherited;
  if controllo then
  begin
    if (v_alla_data.date < data_inizio) or (v_alla_data.date > data_bilancio) then
    begin
      messaggio(000, 'la data di elaborazione non è compresa nell''esercizio fiscale');
      v_alla_data.date := data_bilancio;
      if v_alla_data.canfocus then
      begin
        v_alla_data.setfocus;
      end;
      abort;
    end;
  end;
end;

procedure TA31STAMAG.v_tipo_valorizzazioneExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TA31STAMAG.v_esistenza_zeroExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TA31STAMAG.controllo_campi;
begin
  alla_data_controllo;
end;

procedure TA31STAMAG.FormShow(Sender: TObject);
var
  tag: tmyquery_go;
begin
  inherited;

  v_alla_data.date := data_bilancio;

  tma_codice_passato := assegna_tma_tag;
end;

procedure TA31STAMAG.stampa;
var
  test_art_codice, valorizzazione, codice_raggruppamento, descrizione_raggruppamento: string;
  costo: double;
  tipo_valorizzazione: integer;
begin
  controllo_interrompi;

  v_data_inizio := data_inizio_precedente;
  v_data_fine := v_dalla_data.date - 1;

  nome_tabella := 'stainv';
  azzera_tabella(nome_tabella, sor);

  autoinc := 0;

  screen.cursor := crhourglass;

  query.close;
  query.connection := arc.arcsor;
  query.sql.clear;
  query.sql.add('drop table if exists a31stamag_utente;');
  query.sql.add('create table a31stamag_utente like a31stamag;');
  query.sql.add('delete from a31stamag_utente;');
  query.execsql;

  query_qta.close;
  query_qta.sql.clear;
  query_qta.sql.add('insert into arc_ordinamento.a31stamag_utente(utn_codice,');
  query_qta.sql.add('art_codice, art_codice_alternativo, ');
  query_qta.sql.add('art_tum_codice, ');
  query_qta.sql.add('art_descrizione1, art_descrizione2, tin_codice, tin_descrizione, tub_codice,');
  query_qta.sql.add('tmr_codice, tmr_descrizione, tipo_inventario, ');
  query_qta.sql.add('codice_ordinamento, ');
  query_qta.sql.add('quantita_prec,  ');
  query_qta.sql.add('quantita_entrate, ');
  query_qta.sql.add('quantita_uscite, ');
  query_qta.sql.add('quantita_fin, ');
  query_qta.sql.add('valore_prec, ');
  query_qta.sql.add('valore_entrate, ');
  query_qta.sql.add('valore_uscite, ');
  query_qta.sql.add('valore_fin ) ');

  if    (da_tma_codice = '') and
    (a_tma_codice = 'zzzz') and
    (tma_codice_lista.Count = 0) then
  begin
    assegna_query_tma_tutti;
  end;

  //  esistenza precedente
  if esercizio_chiuso_magazzino_precedente = 'no' then
  begin
    v_data_inizio := data_inizio_precedente;
  end;

  try
    query_qta.parambyname('data_inizio').asdate := v_data_inizio;
  except
  end;

  try
    query_qta.parambyname('data_fine').asdate := v_data_fine;
  except
  end;

  try
    query_qta.parambyname('dalla_data').asdate := v_dalla_data.date;
  except
  end;

  try
    query_qta.parambyname('alla_data').asdate := v_alla_data.date;
  except
  end;

  query_qta.execsql;

  (*
    //  valorizzazione
    if not v_solo_quantita.checked then
    begin
    query_sor.close;
    query_sor.sql.clear;
    query_sor.sql.add('select stainv.*, t.tla_codice_costo_standard from stainv');
    query_sor.sql.add('inner join arc_' + ditta + '.tma t on t.codice = stainv.tma_codice');
    query_sor.sql.add('where utn_codice = :utente order by art_codice');
    query_sor.parambyname('utente').asstring := utente;
    query_sor.open;
    while not query_sor.eof do
    begin
    if test_art_codice <> query_sor.fieldbyname('art_codice').asstring then
    begin
    costo := assegna_costo(query_sor.fieldbyname('tipo_inventario').asinteger);
    test_art_codice := query_sor.fieldbyname('art_codice').asstring;
    end;

    sor_update.close;
    sor_update.parambyname('prezzo').asfloat := costo;
    sor_update.parambyname('quantita').asfloat := query_sor.fieldbyname('quantita').asfloat;
    sor_update.parambyname('id').asinteger := query_sor.fieldbyname('id').asinteger;
    sor_update.execsql;

    controllo_interrompi;

    query_sor.next;
    end;
    end;
  *)
  //  stampa nuova
  assegna_query_stampa;

  if pos('/*ORDER BY*/', query_stampa.sql.text) = 0 then
  begin
    ordinamento_query_stampa := 'order by t.codice_raggruppamento,t.codice_ordinamento,t.art_codice,t.tma_codice';
    query_stampa.sql.add(ordinamento_query_stampa);
  end;

  query_stampa.open;

  pp_report.printersetup.MarginLeft := 0;
  pp_report.printersetup.MarginRight := 0;
  pp_report.printersetup.MarginTop := 0;
  pp_report.printersetup.MarginBottom := 0;

  inherited;
end;

function TA31STAMAG.assegna_costo(tipo_valorizzazione: integer): double;
var
  tipo_inventario: string;
  prezzo_inventario: double;
  crea_storico: string;
begin
  result := 0;

  query_val.close;
  query_val.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
  query_val.parambyname('ese_codice').asstring := esercizio;
  try
    query_val.parambyname('data_inizio').asdate := data_inizio;
  except
  end;
  try
    query_val.parambyname('alla_data').asdate := v_alla_data.date;
  except
  end;
  try
    query_val.parambyname('ese_codice_precedente').asstring := esercizio_precedente;
  except
  end;

  query_val.open;

  if not query_val.isempty then
  begin
    if query_sor.fieldbyname('tipo_inventario').asinteger = 1 then
    begin
      try
        //query_sor.fieldbyname('prezzo').asfloat := arrotonda
        result := arrotonda
          ((query_val.fieldbyname('valore_entrate_val_storico').asfloat + query_val.fieldbyname('valore_apertura').asfloat) /
          (query_val.fieldbyname('quantita_entrate_val_storico').asfloat + query_val.fieldbyname('quantita_apertura').asfloat),
          decimali_max_prezzo_acq);
      except
        //query_sor.fieldbyname('prezzo').asfloat := 0;
        result := 0;
      end;
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 4 then
    begin
      //if query_sor.fieldbyname('prezzo').asfloat = 0 then
      if result = 0 then
      begin
        if query_val.fieldbyname('valore_costo_standard').asfloat <> 0 then
        begin
          result := query_val.fieldbyname('valore_costo_standard').asfloat;
        end
        else
        begin
          lsa.close;
          lsa.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
          if query_sor.fieldbyname('tla_codice_costo_standard').asstring <> '' then
          begin
            lsa.parambyname('tla_codice').asstring := query_sor.fieldbyname('tla_codice_costo_standard').asstring;
          end
          else
          begin
            lsa.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
          end;
          lsa.parambyname('data').asdate := v_alla_data.date;
          lsa.open;
          if not lsa.eof then
          begin
            //query_sor.fieldbyname('prezzo').asfloat := lsa.fieldbyname('prezzo').asfloat;
            result := lsa.fieldbyname('prezzo').asfloat;
          end;
        end;
      end;
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 5 then
    begin
      //query_sor.fieldbyname('prezzo').asfloat := query_val.fieldbyname('prezzo_carico_storico').asfloat;
      result := query_val.fieldbyname('prezzo_carico_storico').asfloat;
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 8 then
    begin
      try
        //query_sor.fieldbyname('prezzo').asfloat := arrotonda
        result := arrotonda
          (query_val.fieldbyname('valore_entrate_val').asfloat / query_val.fieldbyname('quantita_entrate_val').asfloat, decimali_max_prezzo_acq);
      except
        //query_sor.fieldbyname('prezzo').asfloat := 0;
        result := 0;
      end;
    END
    else
    begin
      try
        //query_sor.fieldbyname('prezzo').asfloat := arrotonda
        result := arrotonda
          (query_val.fieldbyname('valore_entrate_val_storico').asfloat / query_val.fieldbyname('quantita_entrate_val_storico').asfloat, decimali_max_prezzo_acq);
      except
        //query_sor.fieldbyname('prezzo').asfloat := 0;
        result := 0;
      end;
    end;
  end
  else if query_sor.fieldbyname('tipo_inventario').asinteger = 9 then
  begin
    result := przinv.prezzo_medio_mensile(query_sor.fieldbyname('art_codice').asstring, v_alla_data.date);
  end
  else
  begin
    //  lifo - lifo ultimo mese - fifo - fifo a scatti

    //  calcolo esistenza globale dell'articolo da utilizzare per gli scaglioni lifo e fifo
    quantita_totale.close;
    quantita_totale.connection := arc.arcdit;
    quantita_totale.sql.clear;

    if (selezione_tma_codice = 'incluso in') and (da_tma_codice = '') and (a_tma_codice = 'zzzz') then
    begin
      quantita_totale.sql.add('select sum(quantita) quantita from arc_ordinamento.stainv s');
      quantita_totale.sql.add('where s.art_codice = :art_codice and s.utn_codice = :utn_codice');

      quantita_totale.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
      quantita_totale.parambyname('utn_codice').asstring := utente;
    end
    else
    begin
      if v_elabora_mag.checked then
      begin
        quantita_totale.sql.add('select sum(');

        quantita_totale.sql.add('coalesce((select sum(magese.esistenza + magese.quantita_chiusura)');
        quantita_totale.sql.add('from magese');
        quantita_totale.sql.add('inner join tma on tma.codice = magese.tma_codice');
        quantita_totale.sql.add('where magese.ese_codice = :ese_codice and tma.proprieta = ''si''');
        quantita_totale.sql.add('and magese.art_codice = art.codice), 0)');

        if esercizio_chiuso_magazzino_precedente = 'no' then
        begin
          quantita_totale.sql.add('+');

          quantita_totale.sql.add('coalesce((select sum(magese.esistenza + magese.quantita_chiusura)');
          quantita_totale.sql.add('from magese');
          quantita_totale.sql.add('inner join tma on tma.codice = magese.tma_codice');
          quantita_totale.sql.add('where magese.ese_codice = :ese_codice_precedente and tma.proprieta = ''si''');
          quantita_totale.sql.add('and magese.art_codice = art.codice), 0)');

          quantita_totale.parambyname('ese_codice_precedente').asstring := esercizio_precedente;
        end;

        quantita_totale.sql.add(')');
      end
      else
      begin
        quantita_totale.sql.text := 'select ' +
          'coalesce((select sum(mmr.quantita_entrate - mmr.quantita_uscite) ' +
          'from mmr ' +
          'inner join mmt on mmt.progressivo = mmr.progressivo ' +
          'inner join tmo on tmo.codice = mmt.tmo_codice ' +
          'inner join tma on tma.codice = mmr.tma_codice ' +
          'where mmt.ese_codice = :ese_codice and mmr.art_codice = art.codice ' +
          'and ((mmt.data_registrazione between :data_inizio and :alla_data) ' +
          'or (tmo.tipo_movimento = ''apertura inventario'')) ' +
          'and tma.proprieta = ''si'' ' +
          'and tmo.tipo_movimento <> ''chiusura inventario''), 0 )';

        //  esercizio precedente
        if esercizio_chiuso_magazzino_precedente = 'no' then
        begin
          quantita_totale.sql.add('+ f_esistenza(art.codice, '''', @ese_codice_precedente, @data_inizio_precedente, @data_bilancio_precedente)');
        end;

        quantita_totale.parambyname('data_inizio').asdate := data_inizio;
        quantita_totale.parambyname('alla_data').asdate := v_alla_data.date;
      end;

      quantita_totale.sql.add('quantita');

      quantita_totale.sql.add('from art where art.codice = :art_codice');
    end;

    quantita_totale.parambyname('art_codice').asstring := query_sor.fieldbyname('art_codice').asstring;
    try
      quantita_totale.parambyname('ese_codice').asstring := esercizio;
    except
    end;
    quantita_totale.open;

    crea_storico := 'no';
    if query_sor.fieldbyname('tipo_inventario').asinteger = 2 then
    begin
      tipo_inventario := 'l.i.f.o.';
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 3 then
    begin
      tipo_inventario := 'l.i.f.o. ultimo mese';
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 6 then
    begin
      tipo_inventario := 'f.i.f.o.';
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 7 then
    begin
      tipo_inventario := 'f.i.f.o. a scatti';
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 8 then
    begin
      tipo_inventario := 'prezzo medio anno';
    end
    else if query_sor.fieldbyname('tipo_inventario').asinteger = 9 then
    begin
      tipo_inventario := 'prezzo medio mensile';
    end;

    przinv.przinv(query_sor.fieldbyname('art_codice').asstring, query_sor.fieldbyname('tma_codice').asstring, tipo_inventario,
      esercizio, v_alla_data.date, quantita_totale.fieldbyname('quantita').asfloat, prezzo_inventario, crea_storico);
    //query_sor.fieldbyname('prezzo').asfloat := prezzo_inventario;
    result := prezzo_inventario;
  end;
end;

procedure TA31STAMAG.v_confermaClick(Sender: TObject);
var
  prosegui: boolean;
  mmt, lif: tmyquery_go;
begin
  if richiesta_filtri then
  begin
    if (arc.dit.fieldbyname('richiesta_filtri').asstring = 'si') or (art_codice_passato <> '') then
    begin
      if not art_eseguito then
      begin
        call_selart;
      end;
      art_eseguito := false;
    end;

    if (arc.dit.fieldbyname('richiesta_filtri').asstring = 'si') or (tma_codice_passato <> '') then
    begin
      if not tma_eseguito then
      begin
        call_seltma;
      end;
      tma_eseguito := false;
    end;
  end;

  inherited;
  esegue_stampa;
end;

procedure TA31STAMAG.esegue_stampa;
begin
  inherited;
end;

procedure TA31STAMAG.FormCreate(Sender: TObject);
begin
  przinv := tprzinv.create;

  inherited;

  tma_codice_lista := tstringlist.create;

  art_codice_lista := tstringlist.create;
  art_tmr_codice_lista := tstringlist.create;
  art_tcm_codice_lista := tstringlist.create;
  art_tgm_codice_lista := tstringlist.create;
  art_tsa_codice_lista := tstringlist.create;
  art_frn_codice_lista := tstringlist.create;
  art_tin_codice_lista := tstringlist.create;
  art_tub_codice_lista := tstringlist.create;

  interruzione_elaborazione := true;
end;

procedure TA31STAMAG.call_selart;
begin
  esegui_selart(selezione_art_codice, da_art_codice, a_art_codice,
    selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
    selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
    selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
    selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
    selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
    selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
    selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice, art_codice_passato,
    selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
    selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista,
    tasto_escape_art, art_escludi_obsoleti, art_eseguito);
  if tasto_escape_art then
  begin
    close;
    abort;
  end;
end;

procedure TA31STAMAG.call_seltma;
begin
  esegui_seltma(selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_passato, tma_codice_lista, tasto_escape_tma, tma_eseguito);
  if tasto_escape_tma then
  begin
    close;
    abort;
  end;
end;

procedure TA31STAMAG.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TA31STAMAG.v_seltmaClick(Sender: TObject);
begin
  inherited;
  call_seltma;
end;

procedure TA31STAMAG.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  try
    pp_label_alla_data.text := v_alla_data.text;
  except
  end;
end;

procedure TA31STAMAG.pp_DBText2DrawCommandClick(Sender,
  aDrawCommand: TObject);
begin
  inherited;

  query_stampa.recno := TppDrawCommand(aDrawCommand).Tag;
  esegui_programma('SCHART', query_stampa.fieldbyname('art_codice').asstring, true);
end;

procedure TA31STAMAG.pp_DBText2DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;

  TppDrawCommand(aDrawCommand).Tag := query_stampa.recno;
end;

procedure TA31STAMAG.ppReportBeforePrint(Sender: TObject);
begin
  inherited;
  try
    pp_dbtext6.displayformat := formato_display_quantita_zero;
  except
  end;

  if v_visualizza.down then
  begin
    try
      pp_dbtext2.font.color := clblue;
    except
    end;
  end;
end;

procedure TA31STAMAG.FormDestroy(Sender: TObject);
begin
  inherited;

  freeandnil(przinv);

  freeandnil(art_codice_lista);
  freeandnil(art_codice_lista);
  freeandnil(art_tmr_codice_lista);
  freeandnil(art_tcm_codice_lista);
  freeandnil(art_tgm_codice_lista);
  freeandnil(art_tsa_codice_lista);
  freeandnil(art_frn_codice_lista);
  freeandnil(art_tin_codice_lista);
  freeandnil(art_tub_codice_lista);

  freeandnil(tma_codice_lista);
end;

procedure TA31STAMAG.assegna_query_tma_tutti;
begin
  query_qta.sql.add('select ' + quotedstr(utente) + ' utn_codice, ');
  query_qta.sql.add('art.codice art_codice, art.codice_alternativo art_codice_alternativo,');
  query_qta.sql.add('art.tum_codice art_tum_codice, ');
  query_qta.sql.add('concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione1,');

  if v_valorizzazione.itemindex = 0 then
  begin
    query_qta.sql.add('case');
    query_qta.sql.add('when art.tipo_inventario <> '''' then art.tipo_inventario');
    query_qta.sql.add('when tin.tipo_inventario <> '''' then tin.tipo_inventario');
    query_qta.sql.add('else ' + quotedstr(arc.dit.fieldbyname('tipo_inventario').asstring));
    query_qta.sql.add('end art_descrizione2,');
  end
  else
  begin
    query_qta.sql.add(quotedstr(v_valorizzazione.text) + ' art_descrizione2,');
  end;

  query_qta.sql.add('art.tin_codice, tin.descrizione tin_descrizione, art.tub_codice,');
  query_qta.sql.add('art.tmr_codice, tmr.descrizione tmr_descrizione,');
  query_qta.sql.add(inttostr(v_valorizzazione.itemindex) + ' tipo_inventario,');

  if v_ordinamento.itemindex = 0 then
  begin
    query_qta.sql.add('art.codice codice_ordinamento,');
  end
  else
  begin
    query_qta.sql.add('art.descrizione1 codice_ordinamento,');
  end;

  query_qta.sql.add('F_ESISTENZA_PERS(ART.CODICE, '''',:data_inizio,:data_fine       ) QTA_PREC,');
  query_qta.sql.add('F_QUANTITA_PERS(ART.CODICE, :dalla_data,:alla_data, ''entrate'' ) QTA_ENTRATE, ');
  query_qta.sql.add('F_QUANTITA_PERS(ART.CODICE, :dalla_data,:alla_data, ''uscite''  ) QTA_USCITE, ');
  query_qta.sql.add('F_QUANTITA_PERS(ART.CODICE, :data_inizio,:alla_data, ''totale'' ) SALDO,  ');
  query_qta.sql.add('F_VALORE_PERS(ART.CODICE,:data_inizio,:data_fine, ''totale''     ) VALORE_PREC,');
  query_qta.sql.add('F_VALORE_PERS(ART.CODICE,:dalla_data,:alla_data, ''entrate''    ) VALORE_ENTRATE,');
  query_qta.sql.add('F_VALORE_PERS(ART.CODICE,:dalla_data,:alla_data, ''uscite''     ) VALORE_USCITE,');
  query_qta.sql.add('F_VALORE_PERS(ART.CODICE, :data_inizio,:alla_data  , ''totale'' ) VALORE_FIN  ');
  query_qta.sql.add('from art');
  query_qta.sql.add('inner join tin on tin.codice = art.tin_codice');
  query_qta.sql.add('inner join tub on tub.codice = art.tub_codice');
  query_qta.sql.add('left join tmr on tmr.codice = art.tmr_codice');
  query_qta.sql.add('left join lsa on lsa.art_codice = art.codice and');
  query_qta.sql.add('lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and');
  query_qta.sql.add(':alla_data between lsa.data_inizio and lsa.data_fine');

  query_qta.sql.add('where art.tipo_articolo = ''fiscale''');
  query_qta.sql.add('and (  F_QUANTITA_PERS(ART.CODICE, :data_inizio, :alla_data, ''totale'' ) <>0  or ');
  query_qta.sql.add('        F_QUANTITA_PERS(ART.CODICE, :dalla_data, :alla_data, ''entrate'' )   <> 0   or');
  query_qta.sql.add('        F_QUANTITA_PERS(ART.CODICE, :dalla_data, :alla_data, ''uscite'' )   <> 0 ) ');

  limart(art_escludi_obsoleti, query_qta, false, selezione_art_codice, da_art_codice, a_art_codice,
    selezione_art_tmr_codice, da_art_tmr_codice, a_art_tmr_codice,
    selezione_art_tcm_codice, da_art_tcm_codice, a_art_tcm_codice,
    selezione_art_tgm_codice, da_art_tgm_codice, a_art_tgm_codice,
    selezione_art_descrizione, da_art_descrizione, a_art_descrizione,
    selezione_art_tsa_codice, da_art_tsa_codice, a_art_tsa_codice,
    selezione_art_frn_codice, da_art_frn_codice, a_art_frn_codice,
    selezione_art_tin_codice, da_art_tin_codice, a_art_tin_codice,
    selezione_art_codice_alternativo, da_art_codice_alternativo, a_art_codice_alternativo,
    selezione_art_tub_codice, da_art_tub_codice, a_art_tub_codice,
    art_codice_lista, art_tmr_codice_lista, art_tcm_codice_lista, art_tgm_codice_lista,
    art_tsa_codice_lista, art_frn_codice_lista, art_tin_codice_lista, art_tub_codice_lista);

  limtma_sql(query_qta, false, selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_lista);
end;

initialization

registerclass(TA31STAMAG);

end.
