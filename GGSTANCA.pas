unit GGSTANCA;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, GGSTAMPA, StdCtrls, ExtCtrls, ppModule, ppBands,
 ppVar, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
 ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess,
 Menus, Buttons, ComCtrls, RzTabs, ToolWin, Mask, 
 IdMessage, IdBaseComponent, IdComponent,
 IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, 
 ppBarCod, 
 RzButton, RzSpnEdt, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
 IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL, IdSASLAnonymous,
 IdExplicitTLSClientServerBase, IdSMTPBase, MemDS, VirtualTable, ppSubRpt, ppMemo, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
 RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  RzEdit, ppParameter, DBAccess, ppDesignLayer;

type

  TSTANCA = class(TSTAMPA)
    ppDBPipeline1: TppDBPipeline;
    Label9: TRzlabel;
    v_dal_progressivo: TRzNumericEdit_go;
    Label10: TRzlabel;
    v_al_progressivo: TRzNumericEdit_go;
    Label11: TRzlabel;
    v_dalla_data: TRzDateTimeEdit_go;
    Label12: TRzlabel;
    v_alla_data: TRzDateTimeEdit_go;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    ppDBText11: TppDBText;
    ppLabel8: TppLabel;
    ppDBText12: TppDBText;
    ppLabel9: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel10: TppLabel;
    ppDBText16: TppDBText;
    ppLabel11: TppLabel;
    ppDBText17: TppDBText;
    ppLabel12: TppLabel;
    ppDBText18: TppDBText;
    ppLabel13: TppLabel;
    ppDBText19: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel14: TppLabel;
    ppShape1: TppShape;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppRegion1: TppRegion;
    ppDBMemo2: TppDBMemo;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText25: TppDBText;
    ppLabel19: TppLabel;
    Label2: TRzlabel;
    v_situazione: TRzCombobox_go;
    procedure v_confermaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_al_progressivoEnter(Sender: TObject);
    procedure v_al_progressivoExit(Sender: TObject);
    procedure v_alla_dataEnter(Sender: TObject);
    procedure v_alla_dataExit(Sender: TObject);
  protected
    procedure al_progressivo_controllo;
    procedure alla_data_controllo;
  public
    progressivo: integer;

    procedure controllo_campi; override;
    procedure stampa; override;
    procedure esegue_stampa; override;
  end;

var
  STANCA: TSTANCA;

implementation

{$R *.dfm}

uses DMARC;

procedure TSTANCA.FormShow(Sender: TObject);
begin
  inherited;

  try
    progressivo := codice;
  except
    progressivo := 0;
  end;

  if progressivo <> 0 then
  begin
    read_tabella(arc.arcdit, 'nct', 'progressivo', progressivo, 'data_registrazione, chiusa');

    v_dal_progressivo.value := progressivo;
    v_al_progressivo.value := progressivo;
    v_dalla_data.date := archivio.fieldbyname('data_registrazione').asdatetime;
    v_alla_data.date := archivio.fieldbyname('data_registrazione').asdatetime;
    if archivio.fieldbyname('chiusa').asstring = 'si' then
    begin
      v_situazione.itemindex := 1;
    end
    else
    begin
      v_situazione.itemindex := 0;
    end;

    colore_control(pannello_parametri, false);
    pannello_parametri.enabled := false;

    if v_conferma.canfocus then
    begin
      v_conferma.setfocus;
    end;
  end;
end;

procedure TSTANCA.stampa;
begin
  query.close;
  query.sql.text := 'select nct.progressivo, nct.data_registrazione, ncr.data_registrazione data_registrazione_righe, ' +
    'nct.tnc_codice, tnc.descrizione tnc_descrizione, ' +
    'tnc.ttn_codice, ttn.descrizione ttn_descrizione, ' +
    'nct.art_codice, concat(trim(art.descrizione1), '' '', art.descrizione2) art_descrizione, ' +
    'nct.frn_codice, concat(trim(frn.descrizione1), '' '', frn.citta) frn_descrizione, ' +
    'nct.quantita_lotto, nct.quantita_non_conforme, nct.note, nct.chiusa, nct.data_chiusura, nct.documento_origine, ' +
    'case when nct.documento_origine = ''ddt acq'' ' +
    'then (select data_documento from dat where progressivo = nct.doc_progressivo_origine) ' +
    'else (select data_documento from fat where progressivo = nct.doc_progressivo_origine) ' +
    'end data_documento_origine, ' +
    'case when nct.documento_origine = ''ddt acq'' ' +
    'then (select numero_documento from dat where progressivo = nct.doc_progressivo_origine) ' +
    'else (select numero_documento from fat where progressivo = nct.doc_progressivo_origine) ' +
    'end numero_documento_origine, ' +
    'case when nct.documento_origine = ''ddt acq'' ' +
    'then (select cms_codice from dar where progressivo = nct.doc_progressivo_origine and riga = nct.doc_riga_origine) ' +
    'else (select cms_codice from far where progressivo = nct.doc_progressivo_origine and riga = nct.doc_riga_origine) ' +
    'end commessa, ' +
    'case when nct.documento_origine = ''ddt acq'' ' +
    'then (select tipologia from dar where progressivo = nct.doc_progressivo_origine and riga = nct.doc_riga_origine) ' +
    'else (select tipologia from far where progressivo = nct.doc_progressivo_origine and riga = nct.doc_riga_origine) ' +
    'end sottocommessa, ' +
    'ncr.tac_codice, tac.descrizione tac_descrizione, ncr.note note_righe, ' +
    'ncr.documento_origine documento_origine_righe, ncr.doc_progressivo_origine doc_progressivo_origine_righe, ' +
    'ncr.doc_riga_origine doc_riga_origine_righe ' +

  'from nct ' +
    'inner join ncr on ncr.progressivo = nct.progressivo ' +
    'inner join tnc on tnc.codice = nct.tnc_codice ' +
    'inner join ttn on ttn.codice = tnc.ttn_codice ' +
    'inner join art on art.codice = nct.art_codice ' +
    'left join frn on frn.codice = nct.frn_codice ' +
    'inner join tac on tac.codice = ncr.tac_codice ' +

  'where nct.progressivo between :dal_progressivo and :al_progressivo ' +
    'and nct.data_registrazione between :dalla_data and :alla_data';
  if v_situazione.text = 'aperte' then
  begin
    query.sql.text := query.sql.text + ' and nct.chiusa = ''no''';
  end
  else if v_situazione.text = 'chiuse' then
  begin
    query.sql.text := query.sql.text + ' and nct.chiusa = ''si''';
  end;

  query.sql.text := query.sql.text + ' order by 1,2,3';

  query.parambyname('dal_progressivo').asfloat := v_dal_progressivo.value;
  query.parambyname('al_progressivo').asfloat := v_al_progressivo.value;
  query.parambyname('dalla_data').asdate := v_dalla_data.date;
  query.parambyname('alla_data').asdate := v_alla_data.date;

  query.open;

  inherited;
end;

procedure TSTANCA.v_alla_dataEnter(Sender: TObject);
begin
  inherited;
  if v_alla_data.date = 0 then
  begin
    v_alla_data.date := v_dalla_data.date;
  end;
end;

procedure TSTANCA.v_alla_dataExit(Sender: TObject);
begin
  inherited;
  alla_data_controllo;
end;

procedure TSTANCA.alla_data_controllo;
begin
  if controllo then
  begin
    if v_alla_data.date = 0 then
    begin
      v_alla_data.text := data_31_12_9999;
    end;
  end;
end;

procedure TSTANCA.v_al_progressivoEnter(Sender: TObject);
begin
  inherited;
  if v_al_progressivo.value = 0 then
  begin
    v_al_progressivo.value := v_dal_progressivo.value;
    v_al_progressivo.selectall;
  end;
end;

procedure TSTANCA.v_al_progressivoExit(Sender: TObject);
begin
  inherited;
  al_progressivo_controllo;
end;

procedure TSTANCA.al_progressivo_controllo;
begin
  if controllo then
  begin
    if v_al_progressivo.value = 0 then
    begin
      v_al_progressivo.value := 999999999;
    end;
  end;
end;

procedure TSTANCA.v_confermaClick(Sender: TObject);
begin
  inherited;

  descrizione_documenti := 'marchio';

  esegue_stampa;
end;

procedure TSTANCA.esegue_stampa;
begin
  inherited;
end;

procedure TSTANCA.controllo_campi;
begin
  al_progressivo_controllo;
  alla_data_controllo;
end;

initialization
  registerclass(tstanca);

end.

