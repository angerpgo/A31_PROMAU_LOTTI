unit GGA31STAOBS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGSTAMPA, Data.DB, VirtualTable, ppVar,
  ppBands, ppClass, ppParameter, ppDesignLayer, ppCtrls, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, MyAccess, query_go,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, RzButton, Vcl.StdCtrls, RzCmboBx,
  raizeedit_go, Vcl.Buttons, RzSpnEdt, RzLabel, Vcl.ExtCtrls, RzPanel,
  Vcl.ToolWin, Vcl.Mask, RzEdit, ppModule, raCodMod, ppStrtch, ppSubRpt;

type
  TA31STAOBS = class(TSTAMPA)
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLine4: TppLine;
    RzLabel1: TRzLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBTabella2: TppDBPipeline;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppShape02: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape3: TppShape;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    ppPageStyle1: TppPageStyle;
    ppDesignLayer3: TppDesignLayer;
    ppShape4: TppShape;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel9: TppLabel;
    ppDBText15: TppDBText;
    ppLabel14: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine6: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    v_gg_obsoleto: trznumericedit_go;
    v_data_consegna_al: trzdatetimeedit_go;
    RzLabel4: TRzLabel;
    procedure v_confermaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v_data_consegna_alExit(Sender: TObject);
    procedure v_data_consegna_alEnter(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure stampa; override;
  end;

var
  A31STAOBS: TA31STAOBS;

implementation

{$r *.dfm}

uses DMARC,ZZLIBRERIE_PROMAU;

procedure TA31STAOBS.FormShow(Sender: TObject);
begin
  inherited;
  promau_inizializza_variabili;

  v_data_consegna_al.date := now;
end;

procedure TA31STAOBS.stampa;
begin
  query.close;
  query.sql.clear;
  query.sql.add('select ');
  query.sql.add('0 progressivo,');
  //  query.sql.add('cast( opt.data_consegna as date) data_consegna,');
  query.sql.add('artc.codice_alternativo artc_ubicazione,');
  query.sql.add('artc.codice,');
  query.sql.add('artc.descrizione1 artc_descrizione1,');
  query.sql.add('artc.descrizione2 artc_descrizione2,');
  query.sql.add('sum(opr.quantita) quantita, ');
  query.sql.add('sum(magp2.esistenza) esistenza_P2, ');
  query.sql.add('sum(magp4.esistenza) esistenza_P4 ');
  query.sql.add('from opt ');
  query.sql.add('inner join opr on opr.progressivo=opt.progressivo ');
  query.sql.add('left  join art artf on artf.codice=opt.art_codice ');
  query.sql.add('left  join art artc on artc.codice=opr.art_codice ');
  query.sql.add('left  join mag magp2 on magp2.art_codice=opr.art_codice and magp2.tma_codice =''P2'' ');
  query.sql.add('left  join mag magp4 on magp4.art_codice=opr.art_codice and magp4.tma_codice =''P4'' ');
  query.sql.add('where ');
  query.sql.add('opt.progressivo in ( select progressivo from opc where opc.progressivo=opt.progressivo and opc.fas_codice=:fas_codice ) and ');
  query.sql.add('opt.data_consegna between :dal and :al ');
  query.sql.add('group by 1,2,3,4,5 ');
  query.sql.add('order by 1,2,3');

  query.parambyname('fas_codice').asstring := promau_fas_codice;
  query.parambyname('dal').asdatetime := date;
  query.parambyname('al').asdatetime := v_data_consegna_al.date;
  query.open;

  query_righe.close;
  query_righe.sql.clear;
  query_righe.sql.add('select ');
  query_righe.sql.add('opr.progressivo,');
  query_righe.sql.add('opr.riga,');
  query_righe.sql.add('ovt.numero_documento,');
  query_righe.sql.add('ovt.data_documento,');
  query_righe.sql.add('ovr.descrizione2 ovr_descrizione2,');
  query_righe.sql.add('nom.codice nom_codice,');
  query_righe.sql.add('nom.descrizione1 nom_descrizione1,');
  query_righe.sql.add('cast( opt.data_consegna as date) data_consegna,');
  query_righe.sql.add('artf.codice artf_codice,');
  query_righe.sql.add('artf.descrizione1 artf_descrizione1,');
  query_righe.sql.add('artf.descrizione2 artf_descrizione2,');
  query_righe.sql.add('arcl.codice_articolo_cliente, ');
  query_righe.sql.add('artc.codice artc_codice,');
  query_righe.sql.add('artc.tum_codice artc_tum_codice,');
  query_righe.sql.add('artc.descrizione1 artc_descrizione1,');
  query_righe.sql.add('artc.descrizione2 artc_descrizione2,');
  query_righe.sql.add('artc.codice_alternativo artc_ubicazione,');
  query_righe.sql.add('opt.quantita quantita_finito, ');
  query_righe.sql.add('opr.quantita, ');
  query_righe.sql.add('magp2.esistenza esistenza_P2, ');
  query_righe.sql.add('magp4.esistenza esistenza_P4 ');
  query_righe.sql.add('from opt ');
  query_righe.sql.add('inner join opr on opr.progressivo=opt.progressivo ');
  query_righe.sql.add('left join ovt on ovt.progressivo=opt.ovr_progressivo');
  query_righe.sql.add('left join ovr on ovr.progressivo=opt.ovr_progressivo and ovr.riga=opt.ovr_riga');
  query_righe.sql.add('left join nom on nom.codice=opt.A31cli_codice ');
  query_righe.sql.add('left join arcl arcl on arcl.art_codice=opt.art_codice and arcl.cli_codice=opt.a31cli_codice ');
  query_righe.sql.add('left join art artf on artf.codice=opt.art_codice ');
  query_righe.sql.add('left join art artc on artc.codice=opr.art_codice ');
  query_righe.sql.add('left join mag magp2 on magp2.art_codice=opr.art_codice and magp2.tma_codice =''P2'' ');
  query_righe.sql.add('left join mag magp4 on magp4.art_codice=opr.art_codice and magp4.tma_codice =''P4'' ');
  query_righe.sql.add('where ');
  query_righe.sql.add('opt.progressivo in ( select progressivo from opc where opc.progressivo=opt.progressivo and opc.fas_codice=:fas_codice ) and ');
  query_righe.sql.add('opt.data_consegna between :dal and :al ');
  query_righe.sql.add('order by opr.art_codice,opt.data_consegna, opt.progressivo ');

  query_righe.parambyname('fas_codice').asstring := promau_fas_codice;
  query_righe.parambyname('dal').asdatetime := date;
  query_righe.parambyname('al').asdatetime := v_data_consegna_al.date;
  query_righe.open;

  inherited;
  Close;
end;

procedure TA31STAOBS.v_confermaClick(Sender: TObject);
begin
  inherited;
  esegui_stampa;
end;

procedure TA31STAOBS.v_data_consegna_alEnter(Sender: TObject);
begin
  inherited;
  v_data_consegna_al.date := date;
end;

procedure TA31STAOBS.v_data_consegna_alExit(Sender: TObject);
begin
  inherited;

  if v_data_consegna_al.date < date then
  begin
    messaggio(000, 'Data consegna non valida');
    v_data_consegna_al.selectall;
    v_data_consegna_al.setfocus;
    abort;
  end;

end;

initialization

registerclass(tA31STAOBS);

end.
