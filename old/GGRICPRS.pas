unit GGRICPRS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGELABORA, MemDS, VirtualTable, Menus, DB,
  StdCtrls, Buttons, ComCtrls, RzTabs, ExtCtrls, ToolWin, Grids, dbgrids, RzDBGrid,
  Mask, RzButton, query_go, MyAccess, inifiles, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres,
  RzSpnEdt, RzShellDialogs, RzDBCmbo, raizeedit_go, DBAccess;

type

  TRICPRS = class(TELABORA)
    v_griglia: TRzDBGrid_go;
    v_messaggio: TRzlabel;
    Label1: TRzlabel;
    Label2: TRzlabel;
    v_operazione: TRzlabel;
    prs: tmyquery_go;
    prs_delete: tmyquery_go;
    procedure v_confermaClick(Sender: TObject);
  protected
    procedure assegna_prs(connessione: TMyConnection_go; nome_tabella: string);
    procedure esegui_personalizzato; virtual;
  public
  end;

var
  RICPRS: TRICPRS;

implementation

uses DMARC, ZZLIBRERIE;

{$R *.dfm}


procedure TRICPRS.v_confermaClick(Sender: TObject);
begin
  inherited;

  // assegna progressivi standard
  prs_delete.close;
  prs_delete.parambyname('codice_ditta').asstring := ditta;
  prs_delete.execsql;

  assegna_prs(arc.arc, 'cpt');
  assegna_prs(arc.arc, 'modt');
  assegna_prs(arc.arc, 'msg');
  assegna_prs(arc.arc, 'scd');

  assegna_prs(arc.arcdit, 'agd');
  assegna_prs(arc.arcdit, 'ard');
  assegna_prs(arc.arcdit, 'artmt');
  assegna_prs(arc.arcdit, 'asb');
  assegna_prs(arc.arcdit, 'ass_soci');
  assegna_prs(arc.arcdit, 'ass_cariche');
  assegna_prs(arc.arcdit, 'ass_quota_tessere');
  assegna_prs(arc.arcdit, 'att');
  assegna_prs(arc.arcdit, 'blkt');
  assegna_prs(arc.arcdit, 'bnt');
  assegna_prs(arc.arcdit, 'brt');
  assegna_prs(arc.arcdit, 'bvt');
  assegna_prs(arc.arcdit, 'camdoc');
  assegna_prs(arc.arcdit, 'cascon');
  assegna_prs(arc.arcdit, 'cat');
  assegna_prs(arc.arcdit, 'ccf');
  assegna_prs(arc.arcdit, 'cem');
  assegna_prs(arc.arcdit, 'cls');
  assegna_prs(arc.arcdit, 'cmd');
  assegna_prs(arc.arcdit, 'cmm');
  assegna_prs(arc.arcdit, 'cot');
  assegna_prs(arc.arcdit, 'cspanat');
  assegna_prs(arc.arcdit, 'cvt');
  assegna_prs(arc.arcdit, 'dat');
  assegna_prs(arc.arcdit, 'dis');
  assegna_prs(arc.arcdit, 'dvt');
  assegna_prs(arc.arcdit, 'dwt');
  assegna_prs(arc.arcdit, 'fat');
  assegna_prs(arc.arcdit, 'f24');
  assegna_prs(arc.arcdit, 'f24era');
  assegna_prs(arc.arcdit, 'f24inps');
  assegna_prs(arc.arcdit, 'f24reg');
  assegna_prs(arc.arcdit, 'f24imu');
  assegna_prs(arc.arcdit, 'f24ina');
  assegna_prs(arc.arcdit, 'f24alt');
  assegna_prs(arc.arcdit, 'fat');
  assegna_prs(arc.arcdit, 'fetagt');
  assegna_prs(arc.arcdit, 'fetagtdt');
  assegna_prs(arc.arcdit, 'fetagrdt');
  assegna_prs(arc.arcdit, 'fls');
  assegna_prs(arc.arcdit, 'fvt');
  assegna_prs(arc.arcdit, 'hdt');
  assegna_prs(arc.arcdit, 'iat');
  assegna_prs(arc.arcdit, 'idt');
  assegna_prs(arc.arcdit, 'ivd');
  assegna_prs(arc.arcdit, 'lct');
  assegna_prs(arc.arcdit, 'lsvtfa');
  assegna_prs(arc.arcdit, 'lti');
  assegna_prs(arc.arcdit, 'ltm');
  assegna_prs(arc.arcdit, 'macipt');
  assegna_prs(arc.arcdit, 'macint');
  assegna_prs(arc.arcdit, 'mcs');
  assegna_prs(arc.arcdit, 'mima');
  assegna_prs(arc.arcdit, 'mmt');
  assegna_prs(arc.arcdit, 'nct');
  assegna_prs(arc.arcdit, 'ngt');
  assegna_prs(arc.arcdit, 'ntt');
  assegna_prs(arc.arcdit, 'oat');
  assegna_prs(arc.arcdit, 'olt');
  assegna_prs(arc.arcdit, 'opt');
  assegna_prs(arc.arcdit, 'ors');
  assegna_prs(arc.arcdit, 'ovt');
  assegna_prs(arc.arcdit, 'pat');
  assegna_prs(arc.arcdit, 'pca');
  assegna_prs(arc.arcdit, 'pct');
  assegna_prs(arc.arcdit, 'per');
  assegna_prs(arc.arcdit, 'percu');
  assegna_prs(arc.arcdit, 'pkt');
  assegna_prs(arc.arcdit, 'pkpt');
  assegna_prs(arc.arcdit, 'pnt');
  assegna_prs(arc.arcdit, 'prr');
  assegna_prs(arc.arcdit, 'prv');
  assegna_prs(arc.arcdit, 'psp');
  assegna_prs(arc.arcdit, 'pva');
  assegna_prs(arc.arcdit, 'pvt');
  assegna_prs(arc.arcdit, 'pvvart');
  assegna_prs(arc.arcdit, 'pvvt');
  assegna_prs(arc.arcdit, 'put');
  assegna_prs(arc.arcdit, 'rat');
  assegna_prs(arc.arcdit, 'rct');
  assegna_prs(arc.arcdit, 'rda');
  assegna_prs(arc.arcdit, 'rdo');
  assegna_prs(arc.arcdit, 'ripct');
  assegna_prs(arc.arcdit, 'rmt');
  assegna_prs(arc.arcdit, 'rtr');
  assegna_prs(arc.arcdit, 'sal');
  assegna_prs(arc.arcdit, 'sdt');
  assegna_prs(arc.arcdit, 'slc');
  assegna_prs(arc.arcdit, 'smt');
  assegna_prs(arc.arcdit, 'sot');
  assegna_prs(arc.arcdit, 'spd');
  assegna_prs(arc.arcdit, 'tbamov');
  assegna_prs(arc.arcdit, 'tnt');
  assegna_prs(arc.arcdit, 'vet');
  assegna_prs(arc.arcdit, 'vuodoc');
  assegna_prs(arc.arcdit, 'put');
  assegna_prs(arc.arcdit, 'ubm');
  assegna_prs(arc.arcdit, 'fet');

  esegui_personalizzato;

  close;
end;

procedure TRICPRS.assegna_prs(connessione: TMyConnection_go; nome_tabella: string);
var
  codice_ditta, nome_progressivo: string;
begin
  v_operazione.caption := nome_tabella;
  v_operazione.refresh;

  if lowercase(connessione.database) = 'arc' then
  begin
    codice_ditta := '';
  end
  else
  begin
    codice_ditta := ditta;
  end;

  controllo_interrompi;

  query.connection := connessione;
  prs.open;

  if nome_tabella = 'brt' then
  begin
    nome_progressivo := '_PRR_SEGNACOLLO';
  end
  else
  begin
    nome_progressivo := '_PROGRESSIVO';
  end;

  query.close;
  query.sql.text := 'select max(progressivo) progressivo from ' + nome_tabella;
  query.open;
  if not query.isempty then
  begin
    prs.close;
    prs.parambyname('codice_ditta').asstring := codice_ditta;
    prs.parambyname('codice').asstring := 'S_' + uppercase(nome_tabella) + nome_progressivo;
    prs.open;

    if prs.isempty then
    begin
      prs.append;
      prs.fieldbyname('codice_ditta').asstring := codice_ditta;
      prs.fieldbyname('codice').asstring := 'S_' + uppercase(nome_tabella) + nome_progressivo;
      prs.post;
      prs.refresh;
    end;
    prs.edit;
    prs.fieldbyname('valore').asfloat := query.fieldbyname('progressivo').asfloat;
    prs.post;
  end;

  query.close;
  prs.close;
end;

procedure TRICPRS.esegui_personalizzato;
begin
 assegna_prs(arc.arcdit, 'a31cls');
  assegna_prs(arc.arcdit, 'a31etichette');
  assegna_prs(arc.arcdit, 'a31foglav');
end;

initialization

registerclass(tricprs);

end.
