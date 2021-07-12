unit GGCARLTMINH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GGCARLTM, Data.DB, MyAccess, query_go,
  DBAccess, MemDS, Vcl.Menus, Vcl.Buttons, RzSpnEdt, raizeedit_go, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, RzEdit, RzDBEdit, Vcl.StdCtrls, Vcl.Mask, RzLabel,
  RzTabs, Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls, Vcl.ToolWin, Vcl.WinXCtrls;

type
  TCARLTMINH = class(TCARLTM)
    RzLabel1: TRzLabel;
    v_quantita_verificata: trzdbnumericedit_go;
    procedure v_grigliaKeyPress(Sender: TObject; var Key: Char);
    procedure v_grigliaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  protected
    stringa: string;
    a31_ltm: tmyquery_go;
    a31_lotto: tmyquery_go;
    procedure cerca_lotto;
  public

  end;

var
  CARLTMINH: TCARLTMINH;

implementation

{$r *.dfm}


uses GGIMPALF, DMARC;

procedure TCARLTMINH.FormCreate(Sender: TObject);
begin
  inherited;
  a31_ltm := tmyquery_go.create(nil);
  a31_ltm.Connection := arc.arcdit;
  a31_ltm.sql.add('select sum(quantita)-sum(a31_quantita) nr from ltm ');
  a31_ltm.sql.add('where ');
  a31_ltm.sql.add('ltm.documento_origine=''ordine ven'' and ');
  a31_ltm.sql.add('ltm.doc_progressivo_origine=:doc_progressivo_origine and ');
  a31_ltm.sql.add('ltm.doc_riga_origine=:doc_riga_origine ');

  a31_lotto := tmyquery_go.create(nil);
  a31_lotto.connection := arc.arcdit;
  a31_lotto.sql.add('select * from ltm ');
  a31_lotto.sql.add('where ');
  a31_lotto.sql.add('ltm.documento_origine=''ordine ven'' and ');
  a31_lotto.sql.add('ltm.doc_progressivo_origine=:doc_progressivo_origine and ');
  a31_lotto.sql.add('ltm.doc_riga_origine=:doc_riga_origine and ');
  a31_lotto.sql.add('ltm.lotto=:lotto ')
end;

procedure TCARLTMINH.FormDestroy(Sender: TObject);
begin
  inherited;
  a31_ltm.free;
end;

procedure TCARLTMINH.FormShow(Sender: TObject);
begin

  testo_query_codice :=
    'select ltm.documento_origine, ltm.doc_progressivo_origine, ltm.doc_riga_origine, ltm.progressivo, ' +
    'ltm.art_codice, ltm.lotto, lot.descrizione lot_descrizione, lot.data_scadenza lot_data_scadenza, ' +
    'ltm.quantita, lot.esistenza lot_esistenza, coalesce(ltp.esistenza, 0) ltp_esistenza, coalesce(ltp.approntato, 0) approntato, ' +
    'coalesce(ltp.disponibilita, 0) disponibilita ' +
    'ltm.a31_quantita ' +
    'from ltm ' +
    'left join lot on lot.art_codice = ltm.art_codice and lot.lotto = ltm.lotto ' +
    'left join ltp on ltp.art_codice = ltm.art_codice and ltp.lot_codice = ltm.lotto and ltp.tma_codice = ltm.tma_codice ' +
    'where ltm.documento_origine = :documento_origine ' +
    'and ltm.doc_progressivo_origine = :doc_progressivo_origine ' +
    'and ltm.doc_riga_origine = :doc_riga_origine';

  inherited;
end;

procedure TCARLTMINH.v_grigliaEnter(Sender: TObject);
begin
  inherited;
  if query_codice.fieldbyname('approntato').asinteger = 0 then
  begin
    v_quantita_verificata.readonly := true;
  end
  else
  begin
    v_quantita_verificata.readonly := false;

    cerca_lotto;
  end;

end;

procedure TCARLTMINH.v_grigliaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if query_codice.fieldbyname(v_griglia.columns[v_griglia.selectedindex].fieldname).datatype in [ftstring, ftwidestring] then
  begin
    if (key >= ' ') and (key <= 'z') then
    begin
      cerca_lotto;
    end;
  end

end;

procedure TCARLTMINH.cerca_lotto;
var
  pr: timpalf;
  fine_lotti: boolean;
begin

  fine_lotti := false;
  while not fine_lotti do
  begin
    a31_ltm.close;
    a31_ltm.parambyname('doc_progressivo_origine').asinteger := query_codice.fieldbyname('doc_progressivo_origine').asinteger;
    a31_ltm.parambyname('doc_riga_origine').asinteger := query_codice.fieldbyname('doc_riga_origine').asinteger;
    a31_ltm.open;

    if a31_ltm.fieldbyname('nr').asinteger > 0 then
    begin
      try
        pr := Timpalf.Create(nil);
        pr.v_form_caption := v_griglia.columns[v_griglia.selectedindex].title.caption;
        pr.v_descrizione_caption := v_griglia.columns[v_griglia.selectedindex].title.caption;
        pr.input_visarc := true;
        pr.help := '';

        pr.valore_passato := '';
        pr.tipo_campo := 'alfa';
        pr.v_width_campo := query_codice.fieldbyname(v_griglia.columns[v_griglia.selectedindex].fieldname).size;
        pr.decimali := 0;

        pr.showmodal;
        if not pr.premuto_escape then
        begin
          a31_lotto.close;
          a31_lotto.parambyname('doc_progressivo_origine').asinteger := query_codice.fieldbyname('doc_progressivo_origine').asinteger;
          a31_lotto.parambyname('doc_riga_origine').asinteger := query_codice.fieldbyname('doc_riga_origine').asinteger;
          a31_lotto.parambyname('doc_riga_origine').asinteger := query_codice.fieldbyname('doc_riga_origine').asinteger;
          a31_lotto.parambyname('lotto').asstring := pr.valore_passato;
          a31_lotto.open;

          if not a31_lotto.eof then
          begin
            if a31_lotto.fieldbyname('a31_quantita').asfloat < tabella.fieldbyname('quantita').asfloat then
            begin
              a31_lotto.edit;
              a31_lotto.fieldbyname('a31_quantita').asfloat := tabella.fieldbyname('a31_quantita').asfloat + 1;

              a31_lotto.post;
              tabella.refresh;
            end;
          end;

          a31_ltm.close;
          a31_ltm.parambyname('doc_progressivo_origine').asinteger := query_codice.fieldbyname('doc_progressivo_origine').asinteger;
          a31_ltm.parambyname('doc_riga_origine').asinteger := query_codice.fieldbyname('doc_riga_origine').asinteger;
          a31_ltm.open;
          if a31_ltm.fieldbyname('nr').asinteger = 0 then
          begin
            fine_lotti := true;
          end;

        end
        else
        begin
          fine_lotti := true;
        end;

      finally
        pr.free;
      end;

    end
    else
    begin
      fine_lotti := true;
    end;

  end;

  a31_ltm.close;

end;

end.
