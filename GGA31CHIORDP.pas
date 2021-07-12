unit GGA31CHIORDP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGFORMBASE, MyAccess, query_go, Data.DB,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, RzLabel,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, raizeedit_go, RzButton, Vcl.ExtCtrls,
  RzPanel;

type
  TA31CHIORDP = class(TFORMBASE)
    Panel4: TRzPanel;
    Bevel1: TBevel;
    v_conferma: TRzBitBtn;
    v_esci: TRzBitBtn;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    v_griglia: trzdbgrid_go;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    opt_ds: TMyDataSource;
    v_griglia2: trzdbgrid_go;
    RzLabel3: TRzLabel;
    Timer1: TTimer;
    v_log: TMemo;
    procedure v_confermaClick(Sender: TObject);
    procedure v_esciClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  protected
    procedure elabora_ordini_vendita(elabora: boolean);
    procedure elabora_orfani_vendita(elabora: boolean);
    procedure elabora_ordini_acquisto(elabora: boolean);
    procedure elabora_orfani_acquisto(elabora: boolean);
    procedure elabora_orfani_produzione(elabora: boolean);
    procedure elabora_chiusura_odp;
    procedure elabora_semilav_odp(opt_progressivo, progressivo, riga: integer; documento_origine: string; var livello: integer);
  public
    opt_chiusi: integer;
    filetesto: textfile;
    nome_file: string;
  end;

var
  A31CHIORDP: TA31CHIORDP;

implementation

{$r *.dfm}


uses DMARC, GGELABORA, ZZLIBRERIE_PROMAU;

procedure TA31CHIORDP.v_confermaClick(Sender: TObject);
begin
  inherited;
  if messaggio(300, 'Si desidera chiudere ordini di produzione appesi ') = 1 then
  begin
    elabora_chiusura_odp;
  end;
  close;
end;

procedure TA31CHIORDP.v_esciClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TA31CHIORDP.elabora_chiusura_odp;
begin
  opt_chiusi := 0;

  try
    nome_file := cartella_root_installazione + '\A31CHIORDP_' + formatdatetime('yyyymmdd', now) + '.log';
    v_log.lines.clear;
    elabora_ordini_vendita(true);
    elabora_orfani_vendita(true);

    elabora_ordini_acquisto(true);
    elabora_orfani_acquisto(true);

    elabora_orfani_produzione(true);

    v_log.lines.add('sono stati chiusi ' + formatfloat('#,###0', opt_chiusi) + ' ordini di produzione');
    v_log.Lines.SaveToFile(nome_file);
  finally

  end;

  messaggio(100, 'Sono stati chiusi ' + formatfloat('#,###0', opt_chiusi) + ' ordini di produzione');

  esegui(nome_file);
end;

procedure TA31CHIORDP.elabora_ordini_vendita(elabora: boolean);
var
  conta, livello: integer;
begin
  RzLabel1.caption := 'ORDINI DI VENDITA';

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('opt.progressivo,  ');
  query.sql.add('opt.doc_progressivo_origine,  ');
  query.sql.add('opt.doc_riga_origine,  ');
  query.sql.add('opt.data_documento,  ');
  query.sql.add('ovt.cli_codice,  ');
  query.sql.add('nom.descrizione1 nom_descrizione1, ');
  query.sql.add('opt.art_codice,  ');
  query.sql.add('opt.quantita,  ');
  query.sql.add('opt.situazione  ');
  query.sql.add('from ovt  ');
  query.sql.add('inner join ovr ON ovr.progressivo = ovt.progressivo  ');
  query.sql.add('inner join opt on opt.doc_progressivo_origine = ovr.progressivo and OPT.doc_riga_origine = ovr.riga  ');
  query.sql.add('inner join nom on nom.codice = ovt.cli_codice  ');
  query.sql.add('where  ');
  query.sql.add('ovr.situazione in (''annullato'', ''evaso'') and  ');
  query.sql.add('opt.documento_origine=''ordine ven'' and ');
  query.sql.add('opt.situazione <> ''evaso''  ');
  query.sql.add('order BY ovr.progressivo, ovr.riga  ');
  query.sql.savetofile('c:\temp\01_ovr_appesi.sql');
  conta := 0;
  livello := 1;

  query.open;
  v_log.lines.add('ordini di vendita - ' + formatfloat('#,###0', query.recordcount));
  if elabora then
  begin
    while not query.eof do
    begin
      conta := conta + 1;
      if conta >= 10 then
      begin
        conta := 0;
        application.processmessages;
      end;

      elabora_semilav_odp(query.fieldbyname('progressivo').asinteger, query.fieldbyname('doc_progressivo_origine').asinteger, query.fieldbyname('doc_riga_origine').asinteger, 'ordine ven', livello);
      query.next;
    end;
  end;

  query.close;
end;

procedure TA31CHIORDP.elabora_orfani_vendita(elabora: boolean);
var
  conta, livello: integer;
begin
  RzLabel1.caption := 'ORFANI DI VENDITA';

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('opt.progressivo,  ');
  query.sql.add('opt.documento_origine,  ');
  query.sql.add('opt.doc_progressivo_origine,  ');
  query.sql.add('opt.doc_riga_origine,  ');
  query.sql.add('opt.data_documento,  ');
  query.sql.add('opt.art_codice,  ');
  query.sql.add('opt.quantita,  ');
  query.sql.add('opt.situazione  ');
  query.sql.add('from opt  ');
  query.sql.add('left join ovr on ovr.progressivo=opt.doc_progressivo_origine  and ovr.riga=opt.doc_riga_origine ');
  query.sql.add('where  ');
  query.sql.add('opt.documento_origine=''ordine ven'' and ');
  query.sql.add('opt.situazione <> ''evaso'' and  ');
  query.sql.add('ovr.progressivo is null  ');
  query.sql.add('order by ovr.progressivo, ovr.riga');

  query.sql.savetofile('c:\temp\02_ovr_orfani_appesi.sql');
  conta := 0;
  livello := 1;

  query.open;
  v_log.lines.add('orfani ordini di vendita - ' + formatfloat('#,###0', query.recordcount));
  if elabora then
  begin
    while not query.eof do
    begin
      conta := conta + 1;
      if conta >= 10 then
      begin
        conta := 0;
        application.processmessages;
      end;

      elabora_semilav_odp(query.fieldbyname('progressivo').asinteger, query.fieldbyname('doc_progressivo_origine').asinteger, query.fieldbyname('doc_riga_origine').asinteger, query.fieldbyname('documento_origine').asstring, livello);
      query.next;
    end;
    begin
      query.close;
    end;

  end;
  query.close;
  rzlabel3.Caption := rzlabel3.Caption + ' O- ' + inttostr(query.recordcount);
end;

procedure TA31CHIORDP.elabora_ordini_acquisto(elabora: boolean);
var
  conta, livello: integer;
begin
  RzLabel1.caption := 'ORDINI DI ACQUISTO';

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('opt.progressivo,  ');
  query.sql.add('opt.doc_progressivo_origine,  ');
  query.sql.add('opt.doc_riga_origine,  ');
  query.sql.add('opt.data_documento,  ');
  query.sql.add('oat.frn_codice,  ');
  query.sql.add('nom.descrizione1 nom_descrizione1, ');
  query.sql.add('opt.art_codice,  ');
  query.sql.add('opt.quantita,  ');
  query.sql.add('opt.situazione  ');
  query.sql.add('from oat  ');
  query.sql.add('inner join oar on oar.progressivo = oat.progressivo  ');
  query.sql.add('inner join opt on opt.progressivo= oar.doc_progressivo_origine  and oar.documento_origine=''produzione''  ');
  query.sql.add('inner join nom on nom.codice = oat.frn_codice  ');
  query.sql.add('where  ');
  query.sql.add('oar.documento_origine=''ordine produzione'' and ');
  query.sql.add('opt.situazione <> ''evaso'' and  ');
  query.sql.add('oat.situazione= ''evaso''  ');
  query.sql.add('order by oar.progressivo, oar.riga  ');
  query.sql.savetofile('c:\temp\03_oar_appesi.sql');
  conta := 0;
  livello := 1;

  query.open;
  v_log.lines.add('ordini di c/lavoro - ' + formatfloat('#,###0', query.recordcount));
  if elabora then
  begin
    while not query.eof do
    begin
      conta := conta + 1;
      if conta >= 10 then
      begin
        conta := 0;
        application.processmessages;
      end;

      elabora_semilav_odp(query.fieldbyname('progressivo').asinteger, query.fieldbyname('doc_progressivo_origine').asinteger, query.fieldbyname('doc_riga_origine').asinteger, 'produzione', livello);
      query.next;
    end;
  end;

  rzlabel3.Caption := rzlabel3.Caption + ' A- ' + inttostr(query.recordcount);
  query.close;
end;

procedure TA31CHIORDP.elabora_orfani_acquisto(elabora: boolean);
var
  conta, livello: integer;
begin
  RzLabel1.caption := 'ORFANI DA C/LAVORO';

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('opt.progressivo,  ');
  query.sql.add('opt.documento_origine,  ');
  query.sql.add('opt.doc_progressivo_origine,  ');
  query.sql.add('opt.doc_riga_origine,  ');
  query.sql.add('opt.data_documento,  ');
  query.sql.add('opt.art_codice,  ');
  query.sql.add('opt.quantita,  ');
  query.sql.add('opt.situazione  ');
  query.sql.add('from opt  ');
  query.sql.add('left join oar on oar.doc_progressivo_origine=opt.progressivo ');
  query.sql.add('where  ');
  query.sql.add('( (opt.frn_codice <>'''') and ( opt.frn_codice <> ' + quotedstr(promau_frn_codice) + ') ) and ');
  query.sql.add('opt.situazione <> ''evaso'' and  ');
  query.sql.add('oar.progressivo is null  ');
  query.sql.add('ORDER BY opt.progressivo  ');
  query.sql.savetofile('c:\temp\04_oar_orfani_appesi.sql');
  conta := 0;
  livello := 1;

  query.open;
  v_log.lines.add('orfani c/lavoro - ' + formatfloat('#,###0', query.recordcount));
  if elabora then
  begin
    while not query.eof do
    begin
      conta := conta + 1;
      if conta >= 10 then
      begin
        conta := 0;
        application.processmessages;
      end;

      elabora_semilav_odp(query.fieldbyname('progressivo').asinteger, query.fieldbyname('doc_progressivo_origine').asinteger, query.fieldbyname('doc_riga_origine').asinteger, query.fieldbyname('documento_origine').asstring, livello);
      query.next;
    end;
    begin
      query.close;
    end;

  end;
  rzlabel3.Caption := rzlabel3.Caption + ' O- ' + inttostr(query.recordcount);
  query.close;
end;

procedure TA31CHIORDP.elabora_orfani_produzione(elabora: boolean);
var
  conta, livello: integer;
begin
  RzLabel1.caption := 'ORFANI PRODUZIONE';

  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('opt.progressivo,  ');
  query.sql.add('opt.doc_progressivo_origine,  ');
  query.sql.add('opt.doc_riga_origine,  ');
  query.sql.add('opt.data_documento,  ');
  query.sql.add('opt.art_codice,  ');
  query.sql.add('opt.quantita,  ');
  query.sql.add('opt.situazione  ');
  query.sql.add('from opt  ');
  query.sql.add('left join opt optt on optt.progressivo=opt.doc_progressivo_origine  ');
  query.sql.add('where  ');
  query.sql.add('opt.documento_origine=''ordine produzione'' and ');
  query.sql.add('opt.situazione <> ''evaso'' and  ');
  query.sql.add('( ( optt.progressivo is NULL  ) OR (optt.situazione=''evaso'' ) ) ');
  query.sql.add('order by opt.progressivo ');
  query.sql.savetofile('c:\temp\05_opt_orfani_produzione.sql');
  conta := 0;
  livello := 1;

  query.open;
  v_log.lines.add('orfani ordini produzione - ' + formatfloat('#,###0', query.recordcount));
  if elabora then
  begin
    while not query.eof do
    begin
      conta := conta + 1;
      if conta >= 10 then
      begin
        conta := 0;
        application.processmessages;
      end;

      elabora_semilav_odp(query.fieldbyname('progressivo').asinteger, query.fieldbyname('doc_progressivo_origine').asinteger, query.fieldbyname('doc_riga_origine').asinteger, '', livello);
      query.next;
    end;
    begin
      query.close;
    end;

  end;
  query.close;
  rzlabel3.Caption := rzlabel3.Caption + ' O- ' + inttostr(query.recordcount);
end;

procedure TA31CHIORDP.elabora_semilav_odp(opt_progressivo, progressivo, riga: integer; documento_origine: string; var livello: integer);
var
  opt: tmyquery_go;
  opr: tmyquery_go;
  opc: tmyquery_go;
begin
  opc := tmyquery_go.create(nil);
  opc.Connection := arc.arcdit;
  opc.sql.add('update opc');
  opc.sql.add('set situazione=''completata'' ');
  opc.sql.add('where');
  opc.sql.add('opc.progressivo=:progressivo ');

  opr := tmyquery_go.create(nil);
  opr.Connection := arc.arcdit;
  opr.sql.add('select * from opr');
  opr.sql.add('where');
  opr.sql.add('opr.progressivo=:progressivo ');
  opr.sql.add('order by opr.riga');

  opt := tmyquery_go.create(nil);
  opt.Connection := arc.arcdit;
  opt.sql.add('SELECT ');
  opt.sql.add('opt.id, ');
  opt.sql.add('opt.progressivo, ');
  opt.sql.add('opt.documento_origine, ');
  opt.sql.add('opt.doc_progressivo_origine, ');
  opt.sql.add('opt.doc_riga_origine, ');
  opt.sql.add('opt.data_documento, ');
  opt.sql.add('opt.descrizione, ');
  opt.sql.add('opt.art_codice, ');
  opt.sql.add('opt.quantita, ');
  opt.sql.add('opt.situazione ');
  opt.sql.add('from opt ');
  opt.sql.add('where ');
  if (livello = 1) and (documento_origine <> '') then
  begin
    opt.sql.add('opt.documento_origine =:documento_origine and');
    opt.sql.add('opt.doc_progressivo_origine=:doc_progressivo and opt.doc_riga_origine=:doc_riga and ');
  end
  else if documento_origine <> '' then
  begin
    documento_origine := 'ordine produzione';
    opt.sql.add('opt.documento_origine =:documento_origine and');
    opt.sql.add('opt.doc_progressivo_origine=:doc_progressivo and '); // and opt.doc_riga_origine=:doc_riga ');
  end
  else if documento_origine = '' then
  begin
    //  opt.sql.add('opt.documento_origine =:documento_origine and');
    opt.sql.add('opt.progressivo=:doc_progressivo and '); // and opt.doc_riga_origine=:doc_riga ');
  end;

  opt.sql.add('opt.situazione <> ''evaso'' ');
  if documento_origine <> '' then
  begin
    opt.parambyname('documento_origine').asstring := documento_origine;
  end;

  if documento_origine = '' then
  begin
    opt.parambyname('doc_progressivo').asinteger := opt_progressivo;
  end
  else
  begin
    opt.parambyname('doc_progressivo').asinteger := progressivo;
  end;

  if (livello = 1) and (documento_origine <> '') then
  begin
    opt.parambyname('doc_riga').asinteger := riga;
  end;
  opt.open;

  if not opt.eof then
  begin

    read_tabella(arc.arcdit, 'art', 'codice', opt.fieldbyname('art_codice').asstring);
    if (archivio.fieldbyname('tcm_codice').asstring = 'ACQ') then
    begin
      v_log.lines.add('opt progressivo ' + formatfloat('#,###0', opt.fieldbyname('progressivo').asfloat) + ' ' + opt.fieldbyname('situazione').asstring);

      opt.edit;
      opt.fieldbyname('descrizione').asstring := opt.fieldbyname('descrizione').asstring + #13 + #10 + 'CHIUSURA FORZATA DA A31CHIORDP ' + datetimetostr(now);
      opt.fieldbyname('situazione').asstring := 'evaso';
      opt.post;

      opt_chiusi := opt_chiusi + 1;
    end;

    opt_ds.dataset := opr;

    opr.close;
    opr.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
    opr.open;
    while not opr.eof do
    begin
      documento_origine := 'ordine produzione';
      if opr.fieldbyname('situazione').asstring <> 'evaso' then
      begin
        opr.edit;
        opr.fieldbyname('note').asstring := opr.fieldbyname('note').asstring + #13 + #10 + 'CHIUSURA FORZATA DA A31CHIORDP ' + datetimetostr(now);
        opr.fieldbyname('situazione').asstring := 'evaso';
        opr.post;
      end;

      livello := livello + 1;
      elabora_semilav_odp(opr.fieldbyname('progressivo').asinteger, opr.fieldbyname('progressivo').asinteger, opr.fieldbyname('riga').asinteger, documento_origine, livello);
      livello := livello - 1;
      opt_ds.dataset := opr;

      opr.next;
    end;

    opc.parambyname('progressivo').asinteger := opt.fieldbyname('progressivo').asinteger;
    opc.execsql;

    read_tabella(arc.arcdit, 'art', 'codice', opt.fieldbyname('art_codice').asstring);
    if (opt.fieldbyname('situazione').asstring <> 'evaso') then
    begin
      v_log.lines.add('opt progressivo ' + formatfloat('#,###0', opt.fieldbyname('progressivo').asfloat) + ' ' + opt.fieldbyname('situazione').asstring);

      opt.edit;
      opt.fieldbyname('descrizione').asstring := opt.fieldbyname('descrizione').asstring + #13 + #10 + 'CHIUSURA FORZATA DA A31CHIORDP ' + datetimetostr(now);
      opt.fieldbyname('situazione').asstring := 'evaso';
      opt.post;

      opt_chiusi := opt_chiusi + 1;
    end;

  end;
  opt.close;
  opr.close;

  freeandnil(opt);
  freeandnil(opr);
  freeandnil(opc);
end;

procedure TA31CHIORDP.Timer1Timer(Sender: TObject);
begin
  inherited;
  timer1.enabled := false;

  screen.cursor := crhourglass;
  nome_file := cartella_root_installazione + '\A31CHIORDP_' + formatdatetime('yyyymmdd', now) + '.log';
  v_log.lines.clear;

  elabora_ordini_vendita(false);
  elabora_orfani_vendita(false);

  elabora_ordini_acquisto(false);
  elabora_orfani_acquisto(false);

  elabora_orfani_produzione(false);
  screen.cursor := crdefault;

end;

initialization

registerclass(ta31chiordp);

end.
