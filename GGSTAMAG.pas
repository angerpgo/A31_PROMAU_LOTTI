unit GGSTAMAG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GGSTAMPA, StdCtrls, ExtCtrls, ppModule, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, query_go, MyAccess,
  Menus, Buttons, ComCtrls, RzTabs, ToolWin, Mask,
  IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,

  RzButton, RzSpnEdt, MemDS, VirtualTable, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdUserPassProvider, IdSASLUserPass, IdSASLLogin, IdSASL, IdSASLAnonymous,
  IdExplicitTLSClientServerBase, IdSMTPBase, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
  RzRadChk, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  ppParameter, DBAccess, RzEdit, ppDesignLayer;

type

  TSTAMAG = class(TSTAMPA)
    pp_Label12: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    pp_DBText1: TppDBText;
    pp_DBText5: TppDBText;
    pp_DBText2: TppDBText;
    pp_DBText3: TppDBText;
    pp_DBText4: TppDBText;
    pp_DBText6: TppDBText;
    pp_DBText7: TppDBText;
    pp_Label8: TppLabel;
    pp_Label9: TppLabel;
    pp_Label13: TppLabel;
    pp_Label14: TppLabel;
    pp_Line1: TppLine;
    pp_DBText8: TppDBText;
    pp_DBText9: TppDBText;
    pp_DBText10: TppDBText;
    pp_Label15: TppLabel;
    pp_Label16: TppLabel;
    pp_Label17: TppLabel;
    pp_Variable1: TppVariable;
    pp_Label18: TppLabel;
    pp_Line2: TppLine;
    pp_Line3: TppLine;
    pp_Line4: TppLine;
    pp_Line5: TppLine;
    pp_Line6: TppLine;
    pp_Label21: TppLabel;
    pp_DBText11: TppDBText;
    v_esistenza_zero: TRzcheckbox;
    Label7: TRzlabel;
    v_ordinamento: TRzCombobox_go;
    Label2: TRzlabel;
    v_dettaglio: TRzCombobox_go;
    Panel1: TRzpanel;
    v_selart: TRzRapidFireButton;
    v_seltma: TRzRapidFireButton;
    procedure v_ordinamentoExit(Sender: TObject);
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pp_Variable1Print(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure v_selartClick(Sender: TObject);
    procedure v_seltmaClick(Sender: TObject);
  protected
    { Protected declarations }
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

    selezione_tma_codice, da_tma_codice, a_tma_codice: string;
    tma_codice_lista: tstringlist;
    tasto_escape_tma, tma_eseguito: boolean;
    //
    procedure call_selart;
    procedure call_seltma;
    //
    //  fine variabili selart
    //
  public
    art_codice_passato, tma_codice_passato: string;

    procedure controllo_campi; override;
    procedure stampa; override;
    procedure esegue_stampa; override;
  end;

var
  STAMAG: TSTAMAG;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE;

procedure TSTAMAG.controllo_campi;
begin
end;

procedure TSTAMAG.stampa;
begin
  query.close;
  query.sql.clear;
  query.sql.add('select art.codice art_codice, art.descrizione1 art_descrizione1, art.descrizione2 art_descrizione2,');
  query.sql.add('mag.tma_codice, tma.descrizione tma_descrizione, mag.scorta_minima, mag.lotto_riordino,');
  query.sql.add('mag.esistenza, mag.impegnato, mag.ordinato, mag.approntato, art.codice_alternativo,');
  query.sql.add('mag.data_carico, mag.prezzo_carico, mag.data_scarico, mag.prezzo_scarico, art.tum_codice,');
  //modifica
  query.sql.add('( select codice_articolo_cliente from arcl where arcl.art_codice=art.codice and arcl.cli_codice=''00000814'' ) codice_articolo_cliente_ferrari');
  //modifica fine
  query.sql.add('from art');
  query.sql.add('left join mag  on ( mag.art_codice=art.codice )');
  query.sql.add('left join tma  on (tma.codice = mag.tma_codice)');

  query.sql.add('where art.tipo_articolo = ''fiscale''');
  limart(art_escludi_obsoleti, query, false, selezione_art_codice, da_art_codice, a_art_codice,
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

  limtma_sql(query, false, selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_lista);

  if v_dettaglio.itemindex = 0 then
  begin
    query.Sql.add('and (art.obsoleto = ''no'')');
  end
  else if v_dettaglio.itemindex = 1 then
  begin
    query.Sql.add('and (art.obsoleto = ''si'')');
  end;

  if not v_esistenza_zero.checked then
  begin
    query.sql.add('and mag.esistenza <> 0');
  end;

  if v_ordinamento.itemindex = 0 then
  begin
    query.sql.add('order by art.codice');
  end
  else if v_ordinamento.itemindex = 1 then
  begin
    query.sql.add('order by art.descrizione1, art.descrizione2');
  end
  else
  begin
    query.sql.add('order by art.codice_alternativo');
  end;

  inherited;
end;

procedure TSTAMAG.v_ordinamentoExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TSTAMAG.v_selartClick(Sender: TObject);
begin
  inherited;
  call_selart;
end;

procedure TSTAMAG.v_seltmaClick(Sender: TObject);
begin
  inherited;
  call_seltma;
end;

procedure TSTAMAG.FormCreate(Sender: TObject);
begin
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
end;

procedure TSTAMAG.call_selart;
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

procedure TSTAMAG.call_seltma;
begin
  esegui_seltma(selezione_tma_codice, da_tma_codice, a_tma_codice, tma_codice_passato, tma_codice_lista, tasto_escape_tma, tma_eseguito);
  if tasto_escape_tma then
  begin
    close;
    abort;
  end;
end;

procedure TSTAMAG.v_confermaClick(Sender: TObject);
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

  inherited;
  esegue_stampa;
end;

procedure TSTAMAG.esegue_stampa;
begin
  inherited;
end;

procedure TSTAMAG.pp_Variable1Print(Sender: TObject);
begin
  inherited;
  try
    pp_variable1.value := arrotonda(query.fieldbyname('esistenza').asfloat - query.fieldbyname('impegnato').asfloat +
      query.fieldbyname('ordinato').asfloat, 4);
  except
  end;
end;

procedure TSTAMAG.FormDestroy(Sender: TObject);
begin
  inherited;

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

initialization

registerclass(tstamag);

end.
