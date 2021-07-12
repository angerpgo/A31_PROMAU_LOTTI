unit GGCALSTD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGSTAMPA, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess,
  Menus, StdCtrls, Buttons, ExtCtrls, ComCtrls, RzTabs,
  Mask, ToolWin, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, ppdevice, DBCtrls,
  RzButton, RzSpnEdt, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL, IdSASLAnonymous,
  IdExplicitTLSClientServerBase, IdSMTPBase, MemDS, VirtualTable, ZZVALDSB, ZZTIPINV, zzprzinv, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  ppParameter, DBAccess, RzEdit, ppDesignLayer;

type

  TCALSTD = class(TSTAMPA)
    pp_DBText5: TppDBText;
    pp_Label8: TppLabel;
    pp_DBText11: TppDBText;
    pp_DBText1: TppDBText;
    pp_Label9: TppLabel;
    Label7: TRzlabel;
    v_tla_codice: TRzEdit_go;
    query_figlio: tmyquery_go;
    dsb: tmyquery_go;
    pp_DBText2: TppDBText;
    pp_Label12: TppLabel;
    lsa: tmyquery_go;
    v_aggiornamento: TRzcheckbox;
    Label2: TRzlabel;
    v_valore_base: TRzCombobox_go;
    v_tla_descrizione: TRzDBEditDescrizione_go;
    Label4: TRzlabel;
    v_trl_codice: TRzEdit_go;
    v_trl_descrizione: TRzDBEditDescrizione_go;
    v_usa_prezzo_medio: TRzcheckbox;
    art_frn: tmyquery_go;
    materia_prima: TMyQuery_go;
    lsa_update: TMyQuery_go;
    RzLabel1: TRzLabel;
    v_art_codice: trzedit_go;
    RzDBEditDescrizione_go3: trzdbeditdescrizione_go;
    art: TMyQuery_go;
    art_ds: TMyDataSource;
    v_solo_finiti: TRzCheckBox;
    finito: TMyQuery_go;
    v_stampa_finiti: TRzCheckBox;
    solo_finiti: TMyQuery_go;

    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pannello_parametriEnter(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure v_valore_baseChange(Sender: TObject);
    procedure v_tla_codiceExit(Sender: TObject);
    procedure v_valore_baseExit(Sender: TObject);
    procedure v_trl_codiceExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pp_DBText5DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure pp_DBText5DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure v_art_codiceExit(Sender: TObject);
    procedure v_aggiornamentoClick(Sender: TObject);
    procedure v_aggiornamentoExit(Sender: TObject);
  protected
    valdsb: tvaldsb;
    tipinv: ttipinv;
    przinv: tprzinv;

    tabella_controllo_tla: tmyquery_go;
    tabella_controllo_trl: tmyquery_go;
    tabella_controllo_tla_ds: tmydatasource;
    tabella_controllo_trl_ds: tmydatasource;

    prezzo_inventario: double;

    procedure assegna_valore_valore_base;
    procedure tla_codice_controllo(blocco: boolean);
    procedure trl_codice_controllo(blocco: boolean);
    procedure v_art_codice_controllo(blocco: boolean);

    procedure esplodi_dsb(art_codice: string);
    procedure valorizza;

    function ha_figlio(art_codice: string): boolean;
    function esplodi_distinta(art_codice: string): double;
  public
    SHart_codice_passato: string;

    procedure controllo_campi; override;
    procedure stampa; override;
    procedure esegue_stampa; override;
    procedure visualizza_stampa_elabora; override;
  end;

var
  CALSTD: TCALSTD;

implementation

uses DMARC, ZZLIBRERIE, ZZLOW_LEVEL_CODE;

{$r *.dfm}


procedure TCALSTD.controllo_campi;
begin
  assegna_valore_valore_base;
  tla_codice_controllo(true);
  trl_codice_controllo(true);
  v_art_codice_controllo(true);
end;

procedure TCALSTD.visualizza_stampa_elabora;
begin
  tla_codice_controllo(false);
  trl_codice_controllo(false);
  v_art_codice_controllo(false);
end;

procedure TCALSTD.stampa;
begin
  nome_tabella := 'calstd_finiti';
  azzera_tabella(nome_tabella, sor);
  sor.indexfieldnames := 'utn_codice;art_codice';

  nome_tabella := 'calstd_materie_prime';
  azzera_tabella(nome_tabella, sor1);
  sor1.indexfieldnames := 'utn_codice;art_codice';

  controllo_interrompi;

  calcola_low_level_code;

  valorizza;

  if v_stampa_finiti.checked then
  begin
    solo_finiti.close;
    solo_finiti.execsql;
  end;

  //  stampa nuova
  assegna_query_stampa;

  if pos('/*ORDER BY*/', query_stampa.sql.text) = 0 then
  begin
    ordinamento_query_stampa := 'order by t.art_codice';
    query_stampa.sql.add(ordinamento_query_stampa);
  end;
  //  stampa nuova fine

  inherited;
end;

procedure TCALSTD.valorizza;
var
  valorizzazione: string;
  costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
  aggiorna: boolean;
  alla_data: tdate;
begin
 if v_art_codice.text = '' then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('insert into arc_ordinamento.calstd_materie_prime (utn_codice, art_codice)');
    query.sql.add('select @utn_codice, codice from art');
    query.execsql;
  end
  else
  begin
    sor1.append;
    sor1.fieldbyname('art_codice').asstring := v_art_codice.text;
    sor1.post;
    esplodi_dsb(v_art_codice.text);
  end;

  query.close;
  query.sql.clear;
  query.sql.add('select art.low_level_code, art.codice art_codice, art.descrizione1 art_descrizione1, art.descrizione2 art_descrizione2');
  query.sql.add('from arc_ordinamento.calstd_materie_prime c');
  query.sql.add('inner join art on art.codice = c.art_codice');
  query.sql.add('where utn_codice = @utn_codice');
  query.sql.add('order by 1');

  query.open;
  while not query.eof do
  begin
    sor.append;

    sor.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
    sor.fieldbyname('art_descrizione1').asstring := query.fieldbyname('art_descrizione1').asstring;
    sor.fieldbyname('art_descrizione2').asstring := query.fieldbyname('art_descrizione2').asstring;
    sor.fieldbyname('costo').asfloat := 0;

    sor.edit;

    alla_data := date;
    if alla_data > data_bilancio then
    begin
      alla_data := data_bilancio;
    end;

    if query.fieldbyname('low_level_code').asinteger = 0 then
    begin
      //  calcola il costo materie prime
      if v_valore_base.itemindex = 0 then
      begin
        valorizzazione := 'prezzo medio';
        przinv.przinv(sor.fieldbyname('art_codice').asstring, '', valorizzazione, esercizio, alla_data, 0, prezzo_inventario,
          'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
        sor.fieldbyname('costo').asfloat := prezzo_inventario;
      end
      else if v_valore_base.itemindex = 1 then
      begin
        valorizzazione := 'ultimo costo';
        przinv.przinv(sor.fieldbyname('art_codice').asstring, '', valorizzazione, esercizio, alla_data, 0, prezzo_inventario,
          'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
        sor.fieldbyname('costo').asfloat := prezzo_inventario;
      end
      else if v_valore_base.itemindex = 2 then
      begin
        lsa.close;
        lsa.params[0].asstring := sor.fieldbyname('art_codice').asstring;
        lsa.params[1].asstring := v_tla_codice.text;
        lsa.params[2].asdate := date;
        lsa.params[3].asdate := date;
        lsa.open;
        if not lsa.eof then
        begin
          sor.fieldbyname('costo').asfloat := lsa.fieldbyname('prezzo').asfloat;
        end
        else
        begin
          if v_usa_prezzo_medio.checked then
          begin
            valorizzazione := 'prezzo medio';
            przinv.przinv(sor.fieldbyname('art_codice').asstring, '', valorizzazione, esercizio, alla_data, 0, prezzo_inventario,
              'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
            sor.fieldbyname('costo').asfloat := prezzo_inventario;
          end;
        end;
      end
      else if v_valore_base.itemindex = 3 then
      begin
        valorizzazione := 'fifo a scatti';
        przinv.przinv(sor.fieldbyname('art_codice').asstring, '', valorizzazione, esercizio, alla_data, 0, prezzo_inventario,
          'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
        sor.fieldbyname('costo').asfloat := prezzo_inventario;
      end
      else if v_valore_base.itemindex = 4 then
      begin
        lsa.close;
        lsa.params[0].asstring := sor.fieldbyname('art_codice').asstring;
        read_tabella(art_frn, sor.fieldbyname('art_codice').asstring);
        lsa.params[1].asstring := art_frn.fieldbyname('tla_codice').asstring;
        lsa.params[2].asdate := date;
        lsa.params[3].asdate := date;
        lsa.open;
        if not lsa.eof then
        begin
          sor.fieldbyname('costo').asfloat := lsa.fieldbyname('prezzo').asfloat;
        end
        else
        begin
          if v_usa_prezzo_medio.checked then
          begin
            valorizzazione := 'prezzo medio';
            przinv.przinv(sor.fieldbyname('art_codice').asstring, '', valorizzazione, esercizio, alla_data, 0, prezzo_inventario,
              'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
            sor.fieldbyname('costo').asfloat := prezzo_inventario;
          end;
        end;
      end
      else if v_valore_base.itemindex = 5 then
      begin
        lsa.close;
        lsa.params[0].asstring := sor.fieldbyname('art_codice').asstring;
        lsa.params[1].asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
        lsa.params[2].asdate := date;
        lsa.params[3].asdate := date;
        lsa.open;
        if not lsa.eof then
        begin
          sor.fieldbyname('costo').asfloat := lsa.fieldbyname('prezzo').asfloat;
        end
        else
        begin
          if v_usa_prezzo_medio.checked then
          begin
            valorizzazione := 'prezzo medio';
            przinv.przinv(sor.fieldbyname('art_codice').asstring, '', valorizzazione, esercizio, alla_data, 0, prezzo_inventario,
              'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
            sor.fieldbyname('costo').asfloat := prezzo_inventario;
          end;
        end;
      end
      else if v_valore_base.itemindex = 6 then
      begin
        valorizzazione := 'prezzo medio mensile';
        przinv.przinv(sor.fieldbyname('art_codice').asstring, '', valorizzazione, esercizio, alla_data, 0, prezzo_inventario,
          'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
        sor.fieldbyname('costo').asfloat := prezzo_inventario;
      end;
    end
    else
    begin
      //  semilavorati finiti
      sor.fieldbyname('costo').asfloat := esplodi_distinta(sor.fieldbyname('art_codice').asstring);
    end;

    //  maggiorazione (solo se materia prima)
    if trim(v_trl_codice.text) <> '' then
    begin
      read_tabella(materia_prima, query.fieldbyname('art_codice').asstring);
      if materia_prima.isempty then
      begin
        sor.fieldbyname('costo').asfloat := sor.fieldbyname('costo').asfloat * (1 + tabella_controllo_trl.fieldbyname('ricarico').asfloat / 100);

        if sor.fieldbyname('costo').asfloat <= tabella_controllo_trl.fieldbyname('limite_01').asfloat then
        begin
          if tabella_controllo_trl.fieldbyname('valore_01').asfloat <> 0 then
          begin
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat / tabella_controllo_trl.fieldbyname('valore_01').asfloat, 0);
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat * tabella_controllo_trl.fieldbyname('valore_01').asfloat,
              decimali_prezzo_acq_euro);
          end;
        end
        else if sor.fieldbyname('costo').asfloat <= tabella_controllo_trl.fieldbyname('limite_02').asfloat then
        begin
          if tabella_controllo_trl.fieldbyname('valore_02').asfloat <> 0 then
          begin
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat / tabella_controllo_trl.fieldbyname('valore_02').asfloat, 0);
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat * tabella_controllo_trl.fieldbyname('valore_02').asfloat,
              decimali_prezzo_acq_euro);
          end;
        end
        else if sor.fieldbyname('costo').asfloat <= tabella_controllo_trl.fieldbyname('limite_03').asfloat then
        begin
          if tabella_controllo_trl.fieldbyname('valore_03').asfloat <> 0 then
          begin
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat / tabella_controllo_trl.fieldbyname('valore_03').asfloat, 0);
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat * tabella_controllo_trl.fieldbyname('valore_03').asfloat,
              decimali_prezzo_acq_euro);
          end;
        end
        else if sor.fieldbyname('costo').asfloat <= tabella_controllo_trl.fieldbyname('limite_04').asfloat then
        begin
          if tabella_controllo_trl.fieldbyname('valore_04').asfloat <> 0 then
          begin
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat / tabella_controllo_trl.fieldbyname('valore_04').asfloat, 0);
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat * tabella_controllo_trl.fieldbyname('valore_04').asfloat,
              decimali_prezzo_acq_euro);
          end;
        end
        else if sor.fieldbyname('costo').asfloat <= tabella_controllo_trl.fieldbyname('limite_05').asfloat then
        begin
          if tabella_controllo_trl.fieldbyname('valore_05').asfloat <> 0 then
          begin
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat / tabella_controllo_trl.fieldbyname('valore_05').asfloat, 0);
            sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat * tabella_controllo_trl.fieldbyname('valore_05').asfloat,
              decimali_prezzo_acq_euro);
          end;
        end
        else
        begin
          sor.fieldbyname('costo').asfloat := arrotonda(sor.fieldbyname('costo').asfloat, decimali_prezzo_acq_euro);
        end;
      end;
    end;

    if sor.fieldbyname('costo').asfloat <> 0 then
    begin
      sor.post;
    end
    else
    begin
      sor.cancel;
    end;

    controllo_interrompi;

    query.next;
  end;

  if v_aggiornamento.checked then
  begin
    sor.close;
    sor.open;
    while not sor.eof do
    begin
      aggiorna := true;

      if v_solo_finiti.checked then
      begin
        if read_tabella(finito, sor.fieldbyname('art_codice').asstring) then
        begin
          aggiorna := false;
        end;
      end;

      if aggiorna then
      begin
        lsa_update.close;
        lsa_update.parambyname('art_codice').asstring := sor.fieldbyname('art_codice').asstring;
        lsa_update.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
        lsa_update.parambyname('data_inizio').asdate := date;
        lsa_update.open;

        if lsa_update.isempty then
        begin
          lsa_update.append;
          lsa_update.fieldbyname('art_codice').asstring := sor.fieldbyname('art_codice').asstring;
          lsa_update.fieldbyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
          lsa_update.fieldbyname('data_inizio').asdatetime := date;
          lsa_update.fieldbyname('prezzo').asfloat := sor.fieldbyname('costo').asfloat;
          lsa_update.post;

          arc.aggiorna_data_fine('lsa', 'A', 'art_codice', sor.fieldbyname('art_codice').asstring,
            'tla_codice', arc.dit.fieldbyname('tla_codice_costo_standard').asstring, '', '', '', '', '', '', date);
        end
        else
        begin
          lsa_update.edit;
          lsa_update.fieldbyname('prezzo').asfloat := sor.fieldbyname('costo').asfloat;
          lsa_update.post;
        end;
      end;

      sor.next;
    end;
  end;
end;

procedure TCALSTD.v_aggiornamentoClick(Sender: TObject);
begin
  inherited;

  if v_aggiornamento.checked then
  begin
    abilita_campo(v_solo_finiti);
  end
  else
  begin
    disabilita_campo(v_solo_finiti);
  end;
end;

procedure TCALSTD.v_aggiornamentoExit(Sender: TObject);
begin
  inherited;

  if not v_aggiornamento.checked then
  begin
    v_solo_finiti.checked := false;
  end;
end;

procedure TCALSTD.v_art_codiceExit(Sender: TObject);
begin
  inherited;
  v_art_codice_controllo(true);
end;

procedure TCALSTD.v_art_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, art, v_art_codice, blocco, nil, nil, nil);
end;

procedure TCALSTD.v_confermaClick(Sender: TObject);
begin
  inherited;

  esegue_stampa;
end;

procedure TCALSTD.esegue_stampa;
begin
  inherited;
end;

procedure TCALSTD.FormCreate(Sender: TObject);
begin
  valdsb := tvaldsb.create;
  tipinv := ttipinv.create;
  przinv := tprzinv.create;

  tabella_controllo_tla := tmyquery_go.create(self);
  tabella_controllo_tla_ds := tmydatasource.create(self);
  tabella_controllo_tla_ds.dataset := tabella_controllo_tla;
  tabella_controllo_tla.connection := arc.arcdit;
  tabella_controllo_tla.sql.text := 'select codice, descrizione from tla where codice = :codice';
  v_tla_descrizione.datasource := tabella_controllo_tla_ds;
  v_tla_descrizione.datafield := 'descrizione';

  tabella_controllo_trl := tmyquery_go.create(self);
  tabella_controllo_trl_ds := tmydatasource.create(self);
  tabella_controllo_trl_ds.dataset := tabella_controllo_trl;
  tabella_controllo_trl.connection := arc.arcdit;
  tabella_controllo_trl.sql.text := 'select * from trl where codice = :codice';
  v_trl_descrizione.datasource := tabella_controllo_trl_ds;
  v_trl_descrizione.datafield := 'descrizione';

  inherited;

  interruzione_elaborazione := true;
end;

procedure TCALSTD.FormDestroy(Sender: TObject);
begin
  inherited;
  valdsb.free;
  tipinv.free;
  przinv.free;
end;

procedure TCALSTD.assegna_valore_valore_base;
begin
  if v_valore_base.itemindex <> 2 then
  begin
    v_tla_codice.text := '';
    v_tla_descrizione.text := '';
  end;
end;

function TCALSTD.ha_figlio(art_codice: string): boolean;
begin
  query_figlio.close;
  query_figlio.params[0].asstring := art_codice;
  query_figlio.open;
  result := not query_figlio.eof;
end;

procedure TCALSTD.FormShow(Sender: TObject);
begin
  inherited;

  if arc.dit.fieldbyname('tla_codice_costo_standard').asstring = '' then
  begin
    messaggio(200, 'non è stato indicato in anagrafica ditta il codice listino' + slinebreak +
      'da utilizzare per il costo standard');
    disabilita_campo(v_conferma);
  end;
end;

procedure TCALSTD.pannello_parametriEnter(Sender: TObject);
begin
  inherited;

  if (importi_magazzino = 'visualizza') or (importi_magazzino = 'nascondi') then
  begin
    messaggio(000, 'l''utente non può operare con questo programma');
    close;
    abort;
  end;
end;

procedure TCALSTD.ppReportBeforePrint(Sender: TObject);
begin
  inherited;
  try
    pp_dbtext2.displayformat := formato_display_prezzo;
  except
  end;

  if v_visualizza.down then
  begin
    try
      pp_dbtext5.font.color := clblue;
    except
    end;
  end;
end;

procedure TCALSTD.pp_DBText5DrawCommandClick(Sender, aDrawCommand: TObject);
begin
  inherited;

  query_stampa.recno := TppDrawCommand(aDrawCommand).Tag;

  esegui_programma('GESART', query_stampa.fieldbyname('art_codice').asstring, true);
end;

procedure TCALSTD.pp_DBText5DrawCommandCreate(Sender, aDrawCommand: TObject);
begin
  inherited;

  TppDrawCommand(aDrawCommand).Tag := query_stampa.recno;
end;

procedure TCALSTD.v_valore_baseChange(Sender: TObject);
begin
  inherited;
  if v_valore_base.ItemIndex = 2 then
  begin
    v_tla_codice.enabled := true;
    v_tla_codice.color := clwindow;
  end
  else
  begin
    v_tla_codice.enabled := false;
    v_tla_codice.color := clbtnface;
  end;
end;

procedure TCALSTD.v_tla_codiceExit(Sender: TObject);
begin
  inherited;
  tla_codice_controllo(true);
end;

procedure TCALSTD.tla_codice_controllo(blocco: boolean);
begin
  if v_valore_base.itemindex = 2 then
  begin
    tabella_controllo(false, tabella_controllo_tla, v_tla_codice, blocco, nil, nil, nil);
  end;
end;

procedure TCALSTD.v_valore_baseExit(Sender: TObject);
begin
  inherited;
  assegna_valore_valore_base;
end;

procedure TCALSTD.v_trl_codiceExit(Sender: TObject);
begin
  inherited;
  trl_codice_controllo(true);
end;

procedure TCALSTD.trl_codice_controllo(blocco: boolean);
begin
  tabella_controllo(true, tabella_controllo_trl, v_trl_codice, blocco, nil, nil, nil);
end;

function TCALSTD.esplodi_distinta(art_codice: string): double;
var
  costo, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
begin
  costo := 0;

  dsb.close;
  dsb.params[0].asstring := art_codice;
  dsb.params[1].asdate := date;
  dsb.params[2].asdate := date;
  dsb.open;
  while not dsb.eof do
  begin
    if read_tabella(query_sor, vararrayof([utente, dsb.fieldbyname('art_codice_figlio').asstring])) then
    begin
      costo := costo + arrotonda(query_sor.fieldbyname('costo').asfloat * dsb.fieldbyname('quantita').asfloat, decimali_prezzo_acq_euro);
    end;

    dsb.next;
  end;

  //  costo lavorazione
  valdsb.valorizza_dsb(art_codice, arc.dit.fieldbyname('tla_codice').asstring,
    false, costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali);

  result := arrotonda(costo + costo_cicli_singoli + costo_cicli_globali, decimali_prezzo_acq_euro);
end;

PROCEDURE TCALSTD.esplodi_dsb(art_codice: string);
var
  dsb: tmyquery_go;
begin
  dsb := tmyquery_go.create(nil);
  dsb.connection := arc.arcdit;
  dsb.sql.add('select dsb.art_codice_figlio, dsb.prezzo,');
  dsb.sql.add('case');
  dsb.sql.add('when art.tum_codice_dsb = '''' then dsb.quantita');
  dsb.sql.add('else round(cast(dsb.quantita as binary) * cast(art.tum_coefficiente_dsb as binary), 4)');
  dsb.sql.add('end quantita');
  dsb.sql.add('from dsb');
  dsb.sql.add('inner join art art on (art.codice = dsb.art_codice_figlio)');
  dsb.sql.add('left join tma on tma.codice = dsb.tma_codice');
  dsb.sql.add('where art_codice_padre = :art_codice_padre');
  dsb.sql.add('and (data_inizio <= :data_inizio or data_inizio is null)');
  dsb.sql.add('and data_fine >= :data_fine');
  //dsb.sql.add('and (tma.ignora_articoli_produzione is null or tma.ignora_articoli_produzione = ''no'')');
  dsb.params[0].asstring := art_codice;
  dsb.params[1].asdate := date;
  dsb.params[2].asdate := date;
  dsb.open;
  while not dsb.eof do
  begin
    if not sor1.locate('utn_codice;art_codice', vararrayof([utente, dsb.fieldbyname('art_codice_figlio').asstring]), []) then
    begin
      sor1.append;
      sor1.fieldbyname('art_codice').asstring := dsb.fieldbyname('art_codice_figlio').asstring;
      sor1.post;

      if ha_figlio(dsb.fieldbyname('art_codice_figlio').asstring) then
      begin
        esplodi_dsb(dsb.fieldbyname('art_codice_figlio').asstring);
      end;
    end;

    dsb.next;
  end;

  freeandnil(dsb);
end;

initialization

registerclass(tcalstd);

end.
