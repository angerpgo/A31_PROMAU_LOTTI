unit GGA31ASSTIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.DateUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGELABORA, VirtualTable, MyAccess,
  query_go, Data.DB, DBAccess, MemDS, Vcl.Menus, RzButton, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzPanel, RzTabs, Vcl.ToolWin, Vcl.StdCtrls, RzLabel;

type
  TA31ASSTIN = class(TELABORA)
    Label1: TRzLabel;
    v_operazione: TRzLabel;
    procedure v_confermaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  protected
    procedure assegna_prodotti_finiti;
    procedure assegna_semilavorati_esterni;
    procedure assegna_semilavorati_promau;
  public
    { Public declarations }
  end;

var
  A31ASSTIN: TA31ASSTIN;

implementation

{$r *.dfm}


uses DMARC, ZZLIBRERIE_PROMAU;

procedure TA31ASSTIN.v_confermaClick(Sender: TObject);
begin
  inherited;
  v_conferma.enabled := false;
  assegna_prodotti_finiti;
  assegna_semilavorati_esterni;
  assegna_semilavorati_promau;
  v_conferma.enabled := true;

  Close;
end;

procedure TA31ASSTIN.assegna_prodotti_finiti;
begin

  v_operazione.caption := 'PRODOTTI FINITI - AZZERAMENTO CAT.INVENTARIO';

  query.close;
  query.sql.clear;
  query.sql.add('update art');
  query.sql.add('set tin_codice=''0'' ');
  query.sql.add('where tin_codice=''FIN'' ');
  query.execsql;

  v_operazione.caption := 'PRODOTTI FINITI - AZZERAMENTO TABELLA TMP_ART';

  query.close;
  query.sql.clear;
  query.sql.add('truncate table tmp_art');
  query.execsql;

  v_operazione.caption := 'PRODOTTI FINITI - INSERIMENTO ARTICOLI FINITI DA DSB';
  query.sql.clear;
  query.sql.add('insert into tmp_art( codice )  ');
  query.sql.add('select distinct art.codice ');
  query.sql.add('from art');
  query.sql.add('inner join dsb on dsb.art_codice_padre=art.codice');
  query.sql.add('left  join dsb dsb2 on dsb2.art_codice_figlio=art.codice');
  query.sql.add('where ');
  query.sql.add('tcm_codice<>''ACQ'' ');
  query.sql.add('and art.frn_codice<>'''' ');
  query.sql.add('and dsb2.art_codice_padre is null');
  query.execsql;

  v_operazione.caption := 'PRODOTTI FINITI - AGGIORNAMENTO ANAGRAFICA PRODOTTI FINITI';
  query.sql.clear;
  query.sql.add('update art ');
  query.sql.add('set tin_codice=''FIN'' ');
  query.sql.add('where ');
  query.sql.add('art.codice in ( select codice from tmp_art )');
  query.execsql;

end;

procedure TA31ASSTIN.assegna_semilavorati_esterni;
begin

  v_operazione.caption := 'SEMILAVORATI ESTERNI - AZZERAMENTO TABELLA TMP_ART';

  query.sql.clear;
  query.sql.add('update art');
  query.sql.add('set tin_codice=''0'' ');
  query.sql.add('where tin_codice=''SME'' ');
  query.execsql;

  query.close;
  query.sql.clear;
  query.sql.add('truncate table tmp_art');
  query.execsql;

  v_operazione.caption := 'SEMILAVORATI ESTERNI - INSERIMENTO ARTICOLI SEMILAVORATI ESTERNI DA DSB';
  query.sql.clear;
  query.sql.add('insert into tmp_art( codice )  ');
  query.sql.add('select distinct art.codice ');
  query.sql.add('from art');
    query.sql.add('inner join dsb on dsb.art_codice_padre=art.codice');
  query.sql.add('left  join dsb dsb2 on dsb2.art_codice_figlio=art.codice');
  query.sql.add('where ');
  query.sql.add('art.tcm_codice<>''ACQ'' ');
  query.sql.add('and art.frn_codice<>' + quotedstr(promau_frn_codice));
  query.sql.add('and dsb2.art_codice_padre is not null');
  query.execsql;

  v_operazione.caption := 'SEMILAVORATI ESTERNI - AGGIORNAMENTO ANAGRAFICA SEMILAVORATI ESTERNI';
  query.sql.clear;
  query.sql.add('update art ');
  query.sql.add('set tin_codice=''SME'' ');
  query.sql.add('where ');
  query.sql.add('art.codice in ( select codice from tmp_art )');
  query.execsql;

end;

procedure TA31ASSTIN.assegna_semilavorati_promau;
begin

  v_operazione.caption := 'SEMILAVORATI PROMAU - AZZERAMENTO TABELLA TMP_ART';

  query.sql.clear;
  query.sql.add('update art');
  query.sql.add('set tin_codice=''0'' ');
  query.sql.add('where tin_codice=''SMP'' ');
  query.execsql;

  query.close;
  query.sql.clear;
  query.sql.add('truncate table tmp_art');
  query.execsql;

  v_operazione.caption := 'SEMILAVORATI PROMAU - INSERIMENTO ARTICOLI SEMILAVORATI PROMAU DA DSB';

  query.sql.clear;
  query.sql.add('insert into tmp_art( codice )  ');
  query.sql.add('select distinct art.codice ');
  query.sql.add('from art');
  query.sql.add('inner join dsb on dsb.art_codice_padre=art.codice');
  query.sql.add('left  join dsb dsb2 on dsb2.art_codice_figlio=art.codice');
  query.sql.add('where ');
  query.sql.add('tcm_codice<>''ACQ'' ');
  query.sql.add('and art.frn_codice=' + quotedstr(promau_frn_codice));
  query.sql.add('and dsb2.art_codice_padre is not null');
  query.execsql;

  v_operazione.caption := 'SEMILAVORATI PROMAU - AGGIORNAMENTO ANAGRAFICA SEMILAVORATI PROMAU';
  query.sql.clear;
  query.sql.add('update art ');
  query.sql.add('set tin_codice=''SMP'' ');
  query.sql.add('where ');
  query.sql.add('art.codice in ( select codice from tmp_art )');
  query.execsql;

end;

procedure TA31ASSTIN.FormCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
  v_operazione.caption := '';
end;

procedure TA31ASSTIN.FormShow(Sender: TObject);
begin
  inherited;
  promau_inizializza_variabili;
end;

initialization

registerclass(tA31ASSTIN);

end.
