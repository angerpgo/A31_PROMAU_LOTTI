unit GGA31GESCAG;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, GGGESGRI, Menus, DB, query_go, MyAccess, 
 Grids, dbgrids, RzDBGrid, ComCtrls, RzTabs, ToolWin,
 StdCtrls, Mask, ExtCtrls, DBCtrls, 
 Buttons,
 RzSpnEdt, rzLabel, RzPanel, RzDBEdit, RzListVw, RzTreeVw, RzDBChk,
 RzRadChk, RzButton, RzSplit, RzCmboBx, RzPrgres, RzShellDialogs, RzDBCmbo, raizeedit_go,
  DBAccess, MemDS, RzEdit;

type

  TA31GESCAG = class(TGESGRI)
    Label5: TRzlabel;
    v_gen_codice: trzdbedit_go;
    v_l_percentuale: TRzlabel;
    v_percentuale: TRzDBNumericEdit_go;
    gen: TMyQuery_go;
    gen_ds: TMyDataSource;
    RzDBEditDescrizione_go1: TRzDBEditDescrizione_go;
    procedure FormCreate(Sender: TObject);
    procedure v_gen_codiceExit(Sender: TObject);
  protected
    procedure gen_codice_controllo(blocco: boolean);
    procedure esegui_query_tabella; override;
  public
    procedure assegna_codice; override;
    procedure codice_base_controllo(blocco: boolean); override;
    procedure visualizza_descrizioni; override;

    procedure controllo_codice; override;
    procedure controllo_campi; override;

    procedure after_post; override;
    procedure before_post; override;
    procedure after_delete; override;

    procedure abilitazioni; override;
  end;

var
  A31GESCAG: TA31GESCAG;

implementation

{$R *.dfm}
uses DMARC;

procedure TA31GESCAG.FormCreate(Sender: TObject);
begin
  inherited;

  //----------------------------------------------------------------------------
  //  parte nuova
  //----------------------------------------------------------------------------
  testo_query := 'select cag.*, gen.descrizione1 gen_descrizione1, gen.descrizione2 gen_descrizione2 ' +
    'from a31cag cag ' +
    'inner join gen on gen.codice = cag.gen_codice ' +
    'where cag.art_codice = :parametro';
  //----------------------------------------------------------------------------
  //  parte nuova
  //----------------------------------------------------------------------------
  //

  testo_query_distinct := 'select distinct art.codice, concat(trim(art.descrizione1), '' '', art.descrizione2) descrizione ' +
    'from a31cag cag ' +
    'inner join art on art.codice = cag.art_codice ' +
    'order by 1';

  if importi_archivi = 'nascondi' then
  begin
    v_l_percentuale.visible := false;
    v_percentuale.visible := false;
    v_griglia.columns[3].visible := false;
  end
  else if importi_archivi = 'visualizza' then
  begin
    v_l_percentuale.enabled := false;
    v_percentuale.enabled := false;
    v_percentuale.color := clbtnface;
  end;
end;

procedure TA31GESCAG.assegna_codice;
begin
  inherited;
  //----------------------------------------------------------------------------
  //  parte nuova (modificare il vecchio)
  //----------------------------------------------------------------------------
  codice := vararrayof([control_codice_base.text, v_gen_codice.text]);
  //----------------------------------------------------------------------------
  //  parte nuova
  //----------------------------------------------------------------------------
end;


//----------------------------------------------------------------------------
//  parte nuova
//----------------------------------------------------------------------------

procedure TA31GESCAG.codice_base_controllo(blocco: boolean);
begin
  inherited;
end;

//----------------------------------------------------------------------------
//  parte nuova
//----------------------------------------------------------------------------

procedure TA31GESCAG.controllo_codice;
begin
  //----------------------------------------------------------------------------
  //  parte nuova (levato controllo codice base)
  //----------------------------------------------------------------------------
  gen_codice_controllo(true);
  //----------------------------------------------------------------------------
  //  parte nuova (levato controllo codice base)
  //----------------------------------------------------------------------------
end;

procedure TA31GESCAG.visualizza_descrizioni;
begin
  inherited;
  gen_codice_controllo(false);
end;

procedure TA31GESCAG.controllo_campi;
begin
end;

procedure TA31GESCAG.after_post;
begin
  inherited;
end;

procedure TA31GESCAG.after_delete;
begin
  inherited;
end;

procedure TA31GESCAG.before_post;
begin
  inherited;
end;

procedure TA31GESCAG.abilitazioni;
begin
end;

procedure TA31GESCAG.v_gen_codiceExit(Sender: TObject);
begin
  inherited;
  gen_codice_controllo(true);
end;

procedure TA31GESCAG.gen_codice_controllo(blocco: boolean);
begin
  tabella_controllo(false, gen, v_gen_codice, blocco, nil, nil, tabella);
end;

procedure TA31GESCAG.esegui_query_tabella;
begin
  inherited;
  (v_griglia.columns.items[3].field as tfloatfield).displayformat := formato_display_percentuale;
end;

initialization
  registerclass(TA31GESCAG);

end.
