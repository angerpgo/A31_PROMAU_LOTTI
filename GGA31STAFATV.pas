unit GGA31STAFATV;

interface

uses
  System.DateUtils, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGSTAMPA, Data.DB, VirtualTable, ppVar,
  ppBands, ppClass, ppParameter, ppDesignLayer, ppCtrls, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, MyAccess, query_go,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, RzButton, Vcl.StdCtrls, RzCmboBx,
  raizeedit_go, Vcl.Buttons, RzSpnEdt, RzLabel, Vcl.ExtCtrls, RzPanel,
  Vcl.ToolWin, Vcl.Mask, RzEdit;

type
  TA31STAFATV = class(TSTAMPA)
    Label11: TRzLabel;
    v_dalla_data_documento: trzdatetimeedit_go;
    Label12: TRzLabel;
    v_alla_data_documento: trzdatetimeedit_go;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine6: TppLine;
    ppShape1: TppShape;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel1: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppDesignLayer2: TppDesignLayer;
    ppLine4: TppLine;
    ppLine10: TppLine;
    ppLine5: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine19: TppLine;
    procedure v_alla_data_documentoExit(Sender: TObject);
    procedure v_alla_data_documentoEnter(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
  private
    { Private declarations }
    procedure controllo_campi; override;
    procedure controllo_alla_data;
    procedure stampa; override;
  public
    { Public declarations }
  end;

var
  A31STAFATV: TA31STAFATV;

implementation

{$r *.dfm}


uses DMARC;

procedure TA31STAFATV.controllo_campi;
begin
  controllo_alla_data;
end;

procedure TA31STAFATV.v_alla_data_documentoEnter(Sender: TObject);
begin
  inherited;

  if v_alla_data_documento.date = 0 then
  begin
    v_alla_data_documento.date := v_dalla_data_documento.date;
  end;

end;

procedure TA31STAFATV.v_alla_data_documentoExit(Sender: TObject);
begin
  inherited;
  controllo_alla_data;
end;

procedure TA31STAFATV.v_confermaClick(Sender: TObject);
begin
  inherited;
  esegue_stampa;
end;

procedure TA31STAFATV.controllo_alla_data;
begin

  if v_alla_data_documento.date < v_dalla_data_documento.date then
  begin
    messaggio(000, 'Parametro Alla data non valido');
    abort;
    v_alla_data_documento.setfocus;
  end;

end;

procedure TA31STAFATV.stampa;

var
  dal_periodo_anno, al_periodo_anno: tdatetime;
  dalla_data_prec, alla_data_prec: tdatetime;
  dd, mm, yy: Word;
begin
  DecodeDate(v_alla_data_documento.date, yy, mm, dd);
  //-----------------------------
  // progressivo dell'anno
  //-----------------------------
  dal_periodo_anno := strtodate('01' + Formatsettings.Dateseparator + '01' + Formatsettings.Dateseparator + inttostr(yy));
  //-----------------------------

  //-----------------------------
  // periodo precedente
  //-----------------------------
  dd := DaysInAMonth(yy, mm);
  al_periodo_anno := v_alla_data_documento.date;

  mm := mm - 1;
  if mm < 1 then
  begin
    mm := 1;
    yy := yy;
    dalla_data_prec := strtodate('01' + Formatsettings.Dateseparator + '01' + Formatsettings.Dateseparator + inttostr(yy));
    alla_data_prec := dalla_data_prec;
  end
  else
  begin

    dalla_data_prec := strtodate('01' + Formatsettings.Dateseparator + '01' + Formatsettings.Dateseparator + inttostr(yy));

    dd := DaysInAMonth(yy, mm);
    alla_data_prec := strtodate(inttostr(dd) + Formatsettings.Dateseparator + inttostr(mm) + Formatsettings.Dateseparator + inttostr(yy));
  end;
  //-----------------------------

  query.close;
  query.sql.clear;
  query.sql.add('SELECT');
  query.sql.add('TAG_CODICE,');
  query.sql.add('TAG_DESCRIZIONE,');
  query.sql.add('CLI_CODICE,');
  query.sql.add('CLI_DESCRIZIONE1 CLI_DESCRIZIONE1,');
  query.sql.add('SUM(VENDUTO_ANNO) VENDUTO_ANNO ,');
  query.sql.add('SUM(RESI_ANNO) RESI_ANNO, ');
  query.sql.add('SUM(VENDUTO_X_1) VENDUTO_X_1 ,');
  query.sql.add('SUM(RESI_X_1) RESI_X_1, ');
  query.sql.add('SUM(VENDUTO) VENDUTO ,');
  query.sql.add('SUM(RESI) RESI, ');
  query.sql.add('SUM(VENDUTO-RESI) SALDO ');
  query.sql.add('FROM ');
  query.sql.add('( ');
  // PROGRESSIVO ANNO
  // X-1
  // ddt
  query.sql.add('SELECT ');
  query.sql.add('DVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('DVT.CLI_CODICE, ');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, ');
  query.sql.add('SUM(DVR.IMPORTO_EURO) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1,');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI');
  query.sql.add('FROM DVR ');
  query.sql.add('INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('dvt.data_documento > ''2015-04-08'' ');
  query.sql.add('and dvt.data_documento between :dal_periodo_anno and :al_periodo_anno ');
  query.sql.add('and tdo.TIPO_DOCUMENTO = ''ddt'' ');
  query.sql.add('AND dvt.tco_codice <> '''' ');
  query.sql.add('and dvt.SITUAZIONE <> ''consolidato'' ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('union all');
  // RESI
  query.sql.add('SELECT ');
  query.sql.add('DVT.TAG_CODICE, ');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('DVT.CLI_CODICE,');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, ');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(DVR.IMPORTO_EURO) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1 ,');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI ');
  query.sql.add('FROM DVR ');
  query.sql.add('INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('DVT.data_documento between :dal_periodo_anno and :al_periodo_anno  ');
  query.sql.add('and tdo.TIPO_DOCUMENTO = ''ddt'' ');
  query.sql.add('and DVT.tco_codice = ''''  ');
  query.sql.add('and DVT.tmo_codice in (select codice from tmo where esistenza = ''decrementa'')  ');
  query.sql.add('group by 1, 2, 3, 4 ');
  // FATTURE
  query.sql.add('UNION ALL');
  query.sql.add('SELECT ');
  query.sql.add('FVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('FVT.CLI_CODICE, ');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,');
  query.sql.add('SUM(FVR.IMPORTO_EURO) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1, ');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI ');
  query.sql.add('FROM FVR ');
  query.sql.add('INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('fvt.data_documento > ''2015-04-08''');
  query.sql.add('and fvt.data_documento between :dal_periodo_anno and :al_periodo_anno ');
  query.sql.add('and tdo.TIPO_DOCUMENTO IN (''fattura immediata'', ''fattura differita'', ''fattura accompagnatoria'' ) ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('UNION ALL');
  // RESI
  query.sql.add('SELECT ');
  query.sql.add('FVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('FVT.CLI_CODICE,');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,');
  query.sql.add('SUM(0) VENDUTO_ANNO,');
  query.sql.add('COALESCE(SUM(FVR.IMPORTO_EURO), 0) RESI_ANNO,');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1, ');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI');
  query.sql.add('FROM FVR ');
  query.sql.add('INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('FVT.TDO_CODICE IN (SELECT codice from tdo where tdo.tipo_documento = ''nota credito'') and ');
  query.sql.add('FVT.data_documento between :dal_periodo_anno and :al_periodo_anno ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('UNION ALL');
  // X-1
  // ddt
  query.sql.add('SELECT ');
  query.sql.add('DVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('DVT.CLI_CODICE, ');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, ');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(DVR.IMPORTO_EURO) VENDUTO_X_1, ');
  query.sql.add('sum(0) RESI_X_1, ');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI');
  query.sql.add('FROM DVR ');
  query.sql.add('INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('dvt.data_documento > ''2015-04-08'' ');
  query.sql.add('and dvt.data_documento between :dal_prec and :al_prec ');
  query.sql.add('and tdo.TIPO_DOCUMENTO = ''ddt'' ');
  query.sql.add('AND dvt.tco_codice <> '''' ');
  query.sql.add('and dvt.SITUAZIONE <> ''consolidato'' ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('union all');
  // RESI
  query.sql.add('SELECT ');
  query.sql.add('DVT.TAG_CODICE, ');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('DVT.CLI_CODICE,');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, ');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0)VENDUTO_X_1, ');
  query.sql.add('coalesce(SUM(DVR.IMPORTO_EURO), 0) RESI_X_1 ,');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI ');
  query.sql.add('FROM DVR ');
  query.sql.add('INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('DVT.data_documento between :dal_prec and :al_prec  ');
  query.sql.add('and tdo.TIPO_DOCUMENTO = ''ddt'' ');
  query.sql.add('and DVT.tco_codice = ''''  ');
  query.sql.add('and DVT.tmo_codice in (select codice from tmo where esistenza = ''decrementa'')  ');
  query.sql.add('group by 1, 2, 3, 4 ');
  // FATTURE
  query.sql.add('UNION ALL');
  query.sql.add('SELECT ');
  query.sql.add('FVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('FVT.CLI_CODICE, ');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(FVR.IMPORTO_EURO) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1, ');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI ');
  query.sql.add('FROM FVR ');
  query.sql.add('INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('fvt.data_documento > ''2015-04-08''');
  query.sql.add('and fvt.data_documento between :dal_prec and :al_prec ');
  query.sql.add('and tdo.TIPO_DOCUMENTO IN (''fattura immediata'', ''fattura differita'', ''fattura accompagnatoria'' ) ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('UNION ALL');
  // RESI
  query.sql.add('SELECT ');
  query.sql.add('FVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('FVT.CLI_CODICE,');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1,');
  query.sql.add('COALESCE(SUM(FVR.IMPORTO_EURO), 0) RESI_X_1,');
  query.sql.add('SUM(0) VENDUTO, ');
  query.sql.add('SUM(0) RESI');
  query.sql.add('FROM FVR ');
  query.sql.add('INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('FVT.TDO_CODICE IN (SELECT codice from tdo where tdo.tipo_documento = ''nota credito'') and ');
  query.sql.add('FVT.data_documento between :dal_prec and :al_prec ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('UNION ALL');
  // X
  // DDT
  query.sql.add('SELECT ');
  query.sql.add('DVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('DVT.CLI_CODICE, ');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, ');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1, ');
  query.sql.add('SUM(DVR.IMPORTO_EURO) VENDUTO, ');
  query.sql.add('sum(0) RESI ');
  query.sql.add('FROM DVR ');
  query.sql.add('INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('dvt.data_documento > ''2015-04-08'' ');
  query.sql.add('and dvt.data_documento between :dal and :al ');
  query.sql.add('and tdo.TIPO_DOCUMENTO = ''ddt'' ');
  query.sql.add('AND dvt.tco_codice <> '''' ');
  query.sql.add('and dvt.SITUAZIONE <> ''consolidato'' ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('union all');
  // RESI
  query.sql.add('SELECT ');
  query.sql.add('DVT.TAG_CODICE, ');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('DVT.CLI_CODICE,');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1, ');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1, ');
  query.sql.add('SUM(0)VENDUTO, ');
  query.sql.add('coalesce(SUM(DVR.IMPORTO_EURO), 0) RESI ');
  query.sql.add('FROM DVR ');
  query.sql.add('INNER JOIN DVT ON DVT.PROGRESSIVO = DVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = DVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = DVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = DVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('DVT.data_documento between :dal and :al  ');
  query.sql.add('and tdo.TIPO_DOCUMENTO = ''ddt'' ');
  query.sql.add('and DVT.tco_codice = ''''  ');
  query.sql.add('and DVT.tmo_codice in (select codice from tmo where esistenza = ''decrementa'')  ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('UNION ALL');
  // FVT
  query.sql.add('SELECT ');
  query.sql.add('FVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('FVT.CLI_CODICE, ');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1, ');
  query.sql.add('SUM(FVR.IMPORTO_EURO) VENDUTO, ');
  query.sql.add('SUM(0) RESI ');
  query.sql.add('FROM FVR ');
  query.sql.add('INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('fvt.data_documento > ''2015-04-08''');
  query.sql.add('and fvt.data_documento between :dal and :al ');
  query.sql.add('and tdo.TIPO_DOCUMENTO IN (''fattura immediata'', ''fattura differita'' , ''fattura accompagnatoria'' ) ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add('UNION ALL');
  // RESI
  query.sql.add('SELECT ');
  query.sql.add('FVT.TAG_CODICE,');
  query.sql.add('TAG.DESCRIZIONE TAG_DESCRIZIONE,');
  query.sql.add('FVT.CLI_CODICE,');
  query.sql.add('CLI.DESCRIZIONE1 CLI_DESCRIZIONE1,');
  query.sql.add('SUM(0) VENDUTO_ANNO, ');
  query.sql.add('SUM(0) RESI_ANNO, ');
  query.sql.add('SUM(0) VENDUTO_X_1, ');
  query.sql.add('SUM(0) RESI_X_1, ');
  query.sql.add('SUM(0) VENDUTO,');
  query.sql.add('COALESCE(SUM(FVR.IMPORTO_EURO), 0) RESI ');
  query.sql.add('FROM FVR ');
  query.sql.add('INNER JOIN FVT ON FVT.PROGRESSIVO = FVR.PROGRESSIVO ');
  query.sql.add('INNER JOIN CLI ON CLI.CODICE = FVT.CLI_CODICE ');
  query.sql.add('INNER JOIN TAG ON TAG.CODICE = FVT.TAG_CODICE ');
  query.sql.add('INNER JOIN TDO ON TDO.CODICE = FVT.TDO_CODICE ');
  query.sql.add('WHERE ');
  query.sql.add('FVT.TDO_CODICE IN (SELECT codice from tdo where tdo.tipo_documento = ''nota credito'') and ');
  query.sql.add('FVT.data_documento between :dal and :al ');
  query.sql.add('group by 1, 2, 3, 4 ');
  query.sql.add(') QUERY ');
  query.sql.add('group by 1, 2, 3, 4');
  query.sql.add('order by 1, 3, 5 ');
  // query.sql.savetofile('c:\temp\A31STAFATV.sql');
  query.parambyname('dal_periodo_anno').asdatetime := dal_periodo_anno;
  query.parambyname('al_periodo_anno').asdatetime := al_periodo_anno;
  query.parambyname('dal_prec').asdatetime := dalla_data_prec;
  query.parambyname('al_prec').asdatetime := alla_data_prec;
  query.parambyname('dal').asdatetime := v_dalla_data_documento.date;
  query.parambyname('al').asdatetime := v_alla_data_documento.date;

  ppLabel4.caption := 'Statistiche di vendite per Agente/cliente dal ' + v_dalla_data_documento.text + ' alla data ' + v_alla_data_documento.text;
  inherited;
end;

initialization

registerclass(ta31stafatv);

end.
