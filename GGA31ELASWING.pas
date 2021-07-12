unit GGA31ELASWING;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox,
  Vcl.StdCtrls, RzLabel, Vcl.Grids, Vcl.DBGrids, RzDBGrid, raizeedit_go, DMARC, ZZCALSCA;

type
  TA31ELASWING = class(TELABORA)
    v_tutti: TcxCheckBox;
    v_oat: TcxCheckBox;
    v_dat: TcxCheckBox;
    v_fat: TcxCheckBox;
    v_mag: TcxCheckBox;
    v_griglia: trzdbgrid_go;
    RzPanel1: TRzPanel;
    v_in_elaborazione: TRzLabel;
    sw_cash: TMyQuery_go;
    pagamenti: TMyQuery_go;
    sw_mmr: TMyQuery_go;
    ese_prec: TMyQuery_go;
    art: TMyQuery_go;
    a31param: TMyQuery_go;
    tma: TMyQuery_go;
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  protected
    progressivo: integer;
    calsca: tcalsca;
    tabella_scadenze: array of scadenze;
    procedure esporta_da_go_a_swing;
    procedure esporta_ordini_di_acquisto;
    procedure esporta_ddt_di_acquisto;
    procedure esporta_fatture_di_acquisto;
    procedure esporta_giacenze_articoli;
    procedure assegna_tabella(query: tdataset; data_scadenza: tdatetime; importo: double);
  public

  end;

var
  A31ELASWING: TA31ELASWING;

implementation

{$r *.dfm}

procedure TA31ELASWING.esporta_da_go_a_swing;
var
  nome_tabella: string;
begin
  controllo_interrompi;

  sw_cash.close;
  sw_cash.sql.clear;
  sw_cash.sql.add('delete from sw_cashflow_acq');
  sw_cash.execsql;

  sw_cash.sql.clear;
  sw_cash.sql.add('select * from sw_cashflow_acq');
  sw_cash.sql.add('where');
  sw_cash.sql.add('utn_codice=:utn_codice and');
  sw_cash.sql.add('progressivo=:progressivo');

  esporta_ordini_di_acquisto;
  esporta_ddt_di_acquisto;
  esporta_fatture_di_acquisto;
  esporta_giacenze_articoli;

  if parametro_schedulato = 'no' then
  begin
    messaggio(100, 'elaborazione terminata con successo');
  end
  else
  begin
    close;
  end;

end;

procedure TA31ELASWING.esporta_ordini_di_acquisto;
var
  i: word;
  data_fattura: tdatetime;
  importo_fattura_euro: double;
begin
  v_in_elaborazione.caption := 'ordini fornitori aperti';

  progressivo := arc.utn.fieldbyname('id').asinteger * 10000;

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add(' ''01 ordini acquisto'' tipo_documento,');
  query.sql.add('oat.progressivo,');
  query.sql.add('oat.frn_codice,');
  query.sql.add('oat.tva_codice,');
  query.sql.add('oat.tpa_codice,');
  query.sql.add('oat.data_documento,');
  query.sql.add('oat.numero_documento,');
  query.sql.add('oat.cambio,');
  query.sql.add('tpa.numero_rate,');
  query.sql.add('oar.art_codice,');
  query.sql.add('oar.data_consegna,');
  query.sql.add('oar.quantita,');
  query.sql.add('oar.prezzo,');
  query.sql.add('oar.importo_iva_euro,');
  query.sql.add('oar.importo,');
  query.sql.add('oar.importo_evaso,');
  query.sql.add('oar.importo_euro,');
  query.sql.add('(oat.importo_totale_euro-(select sum(oar.importo_euro) from oar where oar.progressivo=oat.progressivo) ) spese_extra');
  query.sql.add('from oar');
  query.sql.add('inner join oat on oat.progressivo=oar.progressivo');
  query.sql.add('inner join tpa on tpa.codice=oat.tpa_codice');
  query.sql.add('where');
  query.sql.add('oar.art_codice <>'''' ');
  query.sql.add('and ((oar.situazione = ''inserito'') or (oar.situazione = ''evaso parziale'')) ');
  query.sql.add('and oat.situazione <> ''evaso''');
  query.sql.add('order by oat.frn_codice,oar.data_consegna');
  query.open;
  while not query.eof do
  begin
    controllo_interrompi;

    if query.fieldbyname('data_consegna').asstring <> '' then
    begin
      data_fattura := query.fieldbyname('data_consegna').asdatetime;
    end
    else
    begin
      data_fattura := query.fieldbyname('data_documento').asdatetime;
    end;

    importo_fattura_euro := arrotonda((query.fieldbyname('importo').asfloat - query.fieldbyname('importo_evaso').asfloat) / query.fieldbyname('cambio').asfloat);

    pagamenti.close;
    pagamenti.sql.text := 'select * from oap where progressivo = :progressivo';
    read_tabella(pagamenti, query.fieldbyname('progressivo').asinteger);
    if not pagamenti.isempty then
    begin
      setlength(tabella_scadenze, pagamenti.recordcount);
    end
    else
    begin
      setlength(tabella_scadenze, query.fieldbyname('numero_rate').asinteger);
    end;

    calsca.calsca('F', query.fieldbyname('frn_codice').asstring, query.fieldbyname('tva_codice').asstring, query.fieldbyname('tpa_codice').asstring, 0, importo_fattura_euro, 0, query.fieldbyname('importo_iva_euro').asfloat, data_fattura, tabella_scadenze, nil);

    for i := 0 to length(tabella_scadenze) - 1 do
    begin
      assegna_tabella(query, tabella_scadenze[i].data_scadenza, tabella_scadenze[i].importo_scadenza_euro);
    end;

    query.next;
  end;

end;

procedure TA31ELASWING.FormCreate(Sender: TObject);
begin
  inherited;
  calsca := tcalsca.create;
  a31param.close;
  a31param.parambyname('codice').asstring := ditta;
  a31param.open;
  if a31param.eof then
  begin
    a31param.edit;
    a31param.fieldbyname('codice').asstring := ditta;
    a31param.post;
  end;

end;

procedure TA31ELASWING.FormDestroy(Sender: TObject);
begin
  inherited;
  calsca.free;
end;

procedure TA31ELASWING.FormShow(Sender: TObject);
begin
  inherited;
  if parametro_schedulato = 'si' then
  begin
    v_conferma.click;
  end;

end;

procedure TA31ELASWING.esporta_ddt_di_acquisto;
var
  i: word;
  data_fattura: tdatetime;
  importo_fattura_euro: double;
begin
  v_in_elaborazione.caption := 'ddt fornitori fatture da ricevere';

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add(' ''02 ddt acquisto da fatturare'' tipo_documento,');
  query.sql.add('dat.progressivo,');
  query.sql.add('dat.frn_codice,');
  query.sql.add('dat.tva_codice,');
  query.sql.add('dat.tpa_codice,');
  query.sql.add('dat.data_documento,');
  query.sql.add('dat.numero_documento,');
  query.sql.add('dat.cambio,');
  query.sql.add('tpa.numero_rate,');
  query.sql.add('dar.art_codice,');
  query.sql.add('dar.data_consegna,');
  query.sql.add('dar.quantita,');
  query.sql.add('dar.prezzo,');
  query.sql.add('dar.importo_iva_euro,');
  query.sql.add('dar.importo,');
  query.sql.add('dar.importo_evaso,');
  query.sql.add('dar.importo_euro,');
  query.sql.add('(dat.importo_totale_euro-(select sum(dar.importo_euro) from dar where dar.progressivo=dat.progressivo) ) spese_extra');
  query.sql.add('from dar');
  query.sql.add('inner join dat on dat.progressivo=dar.progressivo');
  query.sql.add('inner join tpa on tpa.codice=dat.tpa_codice');
  query.sql.add('where');
  query.sql.add('( dar.art_codice <>'''' ) ');
  query.sql.add('and ( dat.TDA_CODICE_DIFFERITE <> '''' )');
  query.sql.add('and ( dat.non_fatturare = ''no'' )');
  query.sql.add('and ((dar.situazione = ''inserito'') or (dar.situazione = ''evaso parziale'')) ');
  query.sql.add('and ( dat.situazione <> ''evaso'') ');
  query.sql.add('order by dat.frn_codice,dar.data_consegna');
  query.open;
  while not query.eof do
  begin
    controllo_interrompi;

    if query.fieldbyname('data_consegna').asstring <> '' then
    begin
      data_fattura := query.fieldbyname('data_consegna').asdatetime;
    end
    else
    begin
      data_fattura := query.fieldbyname('data_documento').asdatetime;
    end;

    importo_fattura_euro := arrotonda((query.fieldbyname('importo').asfloat - query.fieldbyname('importo_evaso').asfloat) / query.fieldbyname('cambio').asfloat);

    pagamenti.close;
    pagamenti.sql.text := 'select * from oap where progressivo = :progressivo';
    read_tabella(pagamenti, query.fieldbyname('progressivo').asinteger);
    if not pagamenti.isempty then
    begin
      setlength(tabella_scadenze, pagamenti.recordcount);
    end
    else
    begin
      setlength(tabella_scadenze, query.fieldbyname('numero_rate').asinteger);
    end;

    calsca.calsca('F', query.fieldbyname('frn_codice').asstring, query.fieldbyname('tva_codice').asstring, query.fieldbyname('tpa_codice').asstring, 0, importo_fattura_euro, 0, query.fieldbyname('importo_iva_euro').asfloat, data_fattura, tabella_scadenze, nil);

    for i := 0 to length(tabella_scadenze) - 1 do
    begin
      assegna_tabella(query, tabella_scadenze[i].data_scadenza, tabella_scadenze[i].importo_scadenza_euro);
    end;

    query.next;
  end;

end;

procedure TA31ELASWING.esporta_fatture_di_acquisto;
var
  data_fattura, data_consegna: tdatetime;
  importo_fattura_euro: double;
  i: integer;
begin
  v_in_elaborazione.caption := 'scadenze fornitori';

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add(' ''03 scadenze fornitori'' tipo_documento, ');
  query.sql.add('fat.progressivo,');
  query.sql.add('fat.frn_codice,');
  query.sql.add('fat.tva_codice,');
  query.sql.add('fat.tpa_codice,');
  query.sql.add('fat.data_documento,');
  query.sql.add('fat.numero_documento,');
  query.sql.add('fat.cambio,');
  query.sql.add('tpa.numero_rate,');
  query.sql.add('far.art_codice,');
  query.sql.add('far.data_consegna,');
  query.sql.add('far.quantita,');
  query.sql.add('far.prezzo,');
  query.sql.add('far.importo_iva_euro,');
  query.sql.add('far.importo,');
  query.sql.add('far.importo_evaso,');
  query.sql.add('far.importo_euro,');
  query.sql.add('(fat.importo_totale_euro-(select sum(far.importo_euro) from far where far.progressivo=fat.progressivo) ) spese_extra');
  query.sql.add('from far');
  query.sql.add('inner join fat on fat.progressivo=far.progressivo');
  query.sql.add('inner join tpa on tpa.codice=fat.tpa_codice');
  query.sql.add('where');
  query.sql.add('fat.progressivo in ( ');
  query.sql.add('select doc_progressivo_origine ');
  query.sql.add('from pnt ');
  query.sql.add('inner join pat on pat.pnr_progressivo=pnt.progressivo ');
  query.sql.add('where ');
  query.sql.add('pnt.documento_origine=''fattura acq'' and ');
  query.sql.add('pat.IMPORTO_SALDO <>0) ');
  query.sql.add('and ( far.art_codice <>'''' ) ');
  query.sql.add('and ( fat.non_fatturare = ''no'' )');
  query.sql.add('order by fat.frn_codice,far.data_consegna');

  query.open;
  while not query.eof do
  begin
    controllo_interrompi;

    if query.fieldbyname('data_consegna').asstring <> '' then
    begin
      data_fattura := query.fieldbyname('data_consegna').asdatetime;
    end
    else
    begin
      data_fattura := query.fieldbyname('data_documento').asdatetime;
    end;

    importo_fattura_euro := arrotonda((query.fieldbyname('importo').asfloat - query.fieldbyname('importo_evaso').asfloat) / query.fieldbyname('cambio').asfloat);

    pagamenti.close;
    pagamenti.sql.text := 'select * from oap where progressivo = :progressivo';
    read_tabella(pagamenti, query.fieldbyname('progressivo').asinteger);
    if not pagamenti.isempty then
    begin
      setlength(tabella_scadenze, pagamenti.recordcount);
    end
    else
    begin
      setlength(tabella_scadenze, query.fieldbyname('numero_rate').asinteger);
    end;

    calsca.calsca('F', query.fieldbyname('frn_codice').asstring, query.fieldbyname('tva_codice').asstring, query.fieldbyname('tpa_codice').asstring, 0, importo_fattura_euro, 0, query.fieldbyname('importo_iva_euro').asfloat, data_fattura, tabella_scadenze, nil);

    for i := 0 to length(tabella_scadenze) - 1 do
    begin
      assegna_tabella(query, tabella_scadenze[i].data_scadenza, tabella_scadenze[i].importo_scadenza_euro);
    end;

    query.next;
  end;

end;

procedure TA31ELASWING.esporta_giacenze_articoli;
var
  data_giacenza: tdatetime;
begin
  v_in_elaborazione.caption := 'giacenze articoli';

  ese_prec.close;
  ese_prec.parambyname('dit_codice').asstring := ditta;
  ese_prec.parambyname('ese_codice').asstring := esercizio_precedente;
  ese_prec.open;

  if ese_prec.FieldByName('esercizio_chiuso_magazzino').AsString = 'no' then
  begin
    data_inizio := ese_prec.FieldByName('data_inizio').AsDateTime;
    data_fine := ese_prec.FieldByName('data_fine').AsDateTime;
  end
  else
  begin
    exit;
  end;

  data_giacenza := data_inizio;
  if a31param.fieldbyname('data_giacenza').asdatetime > data_inizio then
  begin
    data_giacenza := a31param.fieldbyname('data_giacenza').asdatetime + 1;
  end;

  sw_mmr.close;
  sw_mmr.sql.clear;
  sw_mmr.sql.add('delete from sw_mmr');
  sw_mmr.sql.add('where');
  sw_mmr.sql.add('data_registrazione>:data_registrazione');
  sw_mmr.parambyname('data_registrazione').asdatetime := data_giacenza;
  sw_mmr.execsql;

  sw_mmr.sql.clear;
  sw_mmr.sql.add('insert into sw_mmr(data_registrazione, tmo_codice, tma_codice, art_codice, quantita) ');
  sw_mmr.sql.add('values (:data_registrazione, :tmo_codice, :tma_codice, :art_codice, :quantita) ');

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('F_ESISTENZA_PERS(:art_codice,:tma_codice,:data_inizio,:data_fine) saldo');
  query_ds.dataset := art;

  if data_giacenza <= date then
  begin

    while data_giacenza <= date do
    begin

      art.close;
      art.open;
      while not art.eof do
      begin
        controllo_interrompi;

        tma.close;
        tma.sql.clear;
        tma.sql.add('select *');
        tma.sql.add('from tma');
        tma.sql.add('where');
        tma.sql.add('proprieta=''si'' and');
        tma.sql.add('a31_swing_giacenze=''si'' ');
        tma.open;
        while not tma.eof do
        begin
          controllo_interrompi;
          v_in_elaborazione.caption := datetostr(data_giacenza) + ' MAG. ' + tma.fieldbyname('codice').asstring + ' ' + art.fieldbyname('codice').asstring + ' ' + art.fieldbyname('descrizione1').asstring;

          query.close;
          query.parambyname('art_codice').asstring := art.fieldbyname('codice').asstring;
          query.parambyname('tma_codice').asstring := tma.fieldbyname('codice').asstring;
          //query.parambyname('ese_codice').asstring := esercizio;
          query.parambyname('data_inizio').asdatetime := data_inizio;
          query.parambyname('data_fine').asdatetime := data_giacenza;
          query.open;
          if query.fieldbyname('saldo').asfloat <> 0 then
          begin
            sw_mmr.parambyname('data_registrazione').asdatetime := data_giacenza;
            sw_mmr.parambyname('tmo_codice').asstring := 'APIN';
            sw_mmr.parambyname('art_codice').asstring := art.fieldbyname('codice').asstring;
            sw_mmr.parambyname('tma_codice').asstring := tma.fieldbyname('a31_tma_codice').asstring;
            sw_mmr.parambyname('quantita').asfloat := query.fieldbyname('saldo').asfloat;
            sw_mmr.execsql;
          end;
          tma.next;
        end; // while tma

        art.next;
      end; // while art

      data_giacenza := data_giacenza + 1;
    end; // data_giac

    a31param.edit;
    a31param.fieldbyname('data_giacenza').asdatetime := data_giacenza - 1;
    a31param.post;
  end;

  art.close;
  tma.close;
  query.close;

end;

procedure TA31ELASWING.v_confermaClick(Sender: TObject);
begin
  tab_pagina2_abilitata := true;
  inherited;

  if v_tutti.checked then
  begin
    esporta_da_go_a_swing;
  end
  else if v_oat.checked then
  begin
    esporta_ordini_di_acquisto;
  end
  else if v_dat.checked then
  begin
    esporta_ddt_di_acquisto;
  end
  else if v_fat.checked then
  begin
    esporta_fatture_di_acquisto;
  end
  else if v_mag.checked then
  begin
    esporta_giacenze_articoli;
  end;

  if parametro_schedulato = 'si' then
  begin
    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;

end;

procedure TA31ELASWING.assegna_tabella(query: tdataset; data_scadenza: tdatetime; importo: double);
begin
  progressivo := progressivo + 10;

  sw_cash.close;
  sw_cash.parambyname('utn_codice').asstring := utente;
  sw_cash.parambyname('progressivo').asinteger := progressivo;
  sw_cash.open;

  sw_cash.append;
  sw_cash.fieldbyname('utn_codice').asstring := utente;
  sw_cash.fieldbyname('progressivo').asinteger := progressivo;
  sw_cash.fieldbyname('tipo_documento').asstring := query.fieldbyname('tipo_documento').asstring;
  sw_cash.fieldbyname('frn_codice').asstring := query.fieldbyname('frn_codice').asstring;
  sw_cash.fieldbyname('numero_documento').asstring := query.fieldbyname('numero_documento').asstring;
  sw_cash.fieldbyname('data_documento').asdatetime := query.fieldbyname('data_documento').asdatetime;
  // sw_cash.fieldbyname('serie_documento').asstring := query.fieldbyname('serie_documento').asstring;
  sw_cash.fieldbyname('art_codice').asstring := query.fieldbyname('art_codice').asstring;
  sw_cash.fieldbyname('data_scadenza').asdatetime := data_scadenza;
  sw_cash.fieldbyname('quantita').asfloat := query.fieldbyname('quantita').asfloat;
  sw_cash.fieldbyname('importo').asfloat := importo;
  sw_cash.post;
end;

initialization

registerclass(tA31ELASWING);

end.
