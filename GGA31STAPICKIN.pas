unit GGA31STAPICKIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGSTAMPA, Data.DB, VirtualTable, ppVar,
  ppBands, ppClass, ppParameter, ppDesignLayer, ppCtrls, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, MyAccess, query_go,
  DBAccess, MemDS, Vcl.Menus, Vcl.ComCtrls, RzButton, Vcl.StdCtrls, RzCmboBx,
  raizeedit_go, Vcl.Buttons, RzSpnEdt, RzLabel, Vcl.ExtCtrls, RzPanel,
  Vcl.ToolWin, ppStrtch, ppSubRpt, Vcl.Mask, RzEdit;

type
  TA31STAPICKIN = class(TSTAMPA)
    ltm_ds: TMyDataSource;
    ltm: TMyQuery_go;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  A31STAPICKIN: TA31STAPICKIN;

implementation

{$R *.dfm}

uses DMARC;

end.


select
r.progressivo,
r.riga,
ltm.*

from a31pickt t
inner join a31pickr r on r.progressivo=t.progressivo
left join ltm on ltm.DOCUMENTO_ORIGINE='movimenti magazzino' and
                  ltm.DOC_PROGRESSIVO_ORIGINE=F_A31_PROMAU_MMT_PROGRESSIVO('ddt acq', t.progressivo_acq, r.riga, 'progressivo')  and
                  ltm.doc_riga_origine=F_A31_PROMAU_MMT_PROGRESSIVO('ddt acq', t.progressivo_acq, r.riga, 'riga')

where t.progressivo=18
order by
r.progressivo,r.riga,ltm.lotto
