unit ZZVALDSB;

interface

uses sysutils, controls, query_go, MyAccess,
  ZZTIPINV, ZZPRZINV, ZZCALFAS;

type

  TVALDSB = class
  protected
    tipinv: ttipinv;
    przinv: tprzinv;
    calfas: tcalfas;

    calstd_padre, calstd_lsa, opr, opc, lsa, cla: tmyquery_go;
  public
    constructor create;
    destructor destroy; override;
    //modifica
    function valorizza_dsb(art_codice, tla_codice: string; usa_costo_standard: boolean;
      var costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
      valorizzazione_forzata: string = ''; tipo_costo: string = 'tutti'; quantita_produzione: double = 1): double;
    function calcola_costo_produzione(progressivo, riga: integer; solo_ciclo: boolean;
      data_registrazione: tdate = 0; tipo_inventario: string = ''): double;
  end;

implementation

uses DMARC, ZZLIBRERIE;

constructor TVALDSB.create;
begin
  tipinv := ttipinv.create;
  przinv := tprzinv.create;
  calfas := tcalfas.create;

  calstd_padre := tmyquery_go.create(nil);
  calstd_padre.connection := arc.arcdit;
  calstd_padre.sql.text := 'select art_codice_padre from dsb where art_codice_padre = :art_codice_padre limit 1';

  calstd_lsa := tmyquery_go.create(nil);
  calstd_lsa.connection := arc.arcdit;
  calstd_lsa.sql.text := 'select prezzo from lsa where art_codice = :art_codice and tla_codice = :tla_codice ' +
    'and data_inizio <= :data_inizio and data_fine >= :data_fine';

  cla := tmyquery_go.create(nil);
  cla.connection := arc.arcdit;
  cla.sql.text := 'select cla.*, fas.tipo_operazione fas_tipo_operazione, fas.mac_codice ' +
    'from cla ' +
    'inner join fas on fas.codice = cla.fas_codice ' +
    'where cla.art_codice = :art_codice and fas.tipo_operazione <> ''ignora''';

  opr := tmyquery_go.create(nil);
  opr.connection := arc.arcdit;

  lsa := tmyquery_go.create(nil);
  lsa.connection := arc.arcdit;

  opc := tmyquery_go.create(nil);
  opc.connection := arc.arcdit;
end;

destructor TVALDSB.destroy;
begin
  tipinv.free;
  przinv.free;
  calfas.free;

  calstd_padre.free;
  calstd_lsa.free;
  cla.free;
  opr.free;
  lsa.free;
  opc.free;
end;

function TVALDSB.valorizza_dsb(art_codice, tla_codice: string; usa_costo_standard: boolean;
  var costo_totale, costo_componenti, costo_cicli_singoli, costo_cicli_globali: double;
  valorizzazione_forzata: string = ''; tipo_costo: string = 'tutti'; quantita_produzione: double = 1):double;
var
  costo, prezzo_inventario: double;
  valorizzazione: string;

  quantita: double;
  c_totale, c_componenti, c_cicli_singoli, c_cicli_globali: double;

  dsb: tmyquery_go;
  //modifica
  a31lav_est: tmyquery_go;
  //modifica fine
begin
  //modifica
  result := 0;
  a31lav_est := tmyquery_go.create(nil);
  a31lav_est.Connection := arc.arcdit;
  a31lav_est.sql.add('select art.frn_codice, art.tcm_codice, dar.prezzo, ');
  a31lav_est.sql.add('case ');
  a31lav_est.sql.add('when(dar.tum_codice <> art.tum_codice_dsb) and (art.operazione_coefficiente_dsb = ''/'') then ');
  a31lav_est.sql.add('  dar.prezzo/1000 ');
  a31lav_est.sql.add('when(dar.tum_codice <> art.tum_codice_dsb) and (art.operazione_coefficiente_dsb = ''*/'') then ');
  a31lav_est.sql.add('    dar.prezzo * 1000 ');
  a31lav_est.sql.add('else ');
  a31lav_est.sql.add('    dar.prezzo ');
  a31lav_est.sql.add('end prezzo_dsb ');
  a31lav_est.sql.add('from dat ');
  a31lav_est.sql.add('inner join dar on dar.progressivo = dat.progressivo ');
  a31lav_est.sql.add('inner join art on art.codice = dar.art_codice ');
  a31lav_est.sql.add('where ');
  a31lav_est.sql.add('dar.art_codice =:art_codice ');
  a31lav_est.sql.add('order by dat.data_registrazione desc limit 1 ');
  //modifica fine

  costo_totale := 0;
  costo_componenti := 0;
  costo_cicli_singoli := 0;
  costo_cicli_globali := 0;

  if usa_costo_standard then
  begin
    calstd_lsa.close;
    calstd_lsa.parambyname('art_codice').asstring := art_codice;
    calstd_lsa.parambyname('tla_codice').asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
    calstd_lsa.parambyname('data_inizio').asdate := date;
    calstd_lsa.parambyname('data_fine').asdate := date;
    calstd_lsa.open;

    costo_totale := calstd_lsa.fieldbyname('prezzo').asfloat;
    costo_componenti := calstd_lsa.fieldbyname('prezzo').asfloat;
  end;

  if costo_totale = 0 then
  begin
    if (tipo_costo = 'tutti') or (tipo_costo = 'materiali') then
    begin
      dsb := tmyquery_go.create(nil);
      dsb.connection := arc.arcdit;
      dsb.sql.text := 'select dsb.art_codice_figlio, ' +
        'dsb.quantita, art.tum_coefficiente_dsb, art.operazione_coefficiente_dsb,' +
        'lsa.prezzo valore_costo_standard, dsb.prezzo ' +
        'from dsb ' +
        'inner join art on art.codice = dsb.art_codice_figlio ' +

        'left join lsa on lsa.art_codice = art.codice and ' +
        'lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and ' +
        'current_date between lsa.data_inizio and lsa.data_fine ' +

        'where dsb.art_codice_padre = :art_codice_padre ' +
        'and (dsb.data_inizio <= :data_inizio or dsb.data_inizio is null) and dsb.data_fine >= :data_fine';

      //  costo materiali
      dsb.close;
      dsb.parambyname('art_codice_padre').asstring := art_codice;
      dsb.parambyname('data_inizio').asdate := date;
      dsb.parambyname('data_fine').asdate := date;
      dsb.open;
      while not dsb.eof do
      begin
        calstd_padre.close;
        calstd_padre.parambyname('art_codice_padre').asstring := dsb.fieldbyname('art_codice_figlio').asstring;
        calstd_padre.open;
        if calstd_padre.isempty then
        begin
          if dsb.fieldbyname('prezzo').asfloat = 0 then
          begin
            if usa_costo_standard then
            begin
              if dsb.fieldbyname('tum_coefficiente_dsb').asfloat <> 0 then
              begin
                if dsb.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
                begin
                  costo_totale := arrotonda(costo_totale + (dsb.fieldbyname('quantita').asfloat * dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('valore_costo_standard').asfloat), 6);
                  costo_componenti := arrotonda(costo_componenti + (dsb.fieldbyname('quantita').asfloat * dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('valore_costo_standard').asfloat), 6);
                end
                else if dsb.fieldbyname('operazione_coefficiente_dsb').asstring = '/' then
                begin
                  costo_totale := arrotonda(costo_totale + (dsb.fieldbyname('quantita').asfloat / dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('valore_costo_standard').asfloat), 6);
                  costo_componenti := arrotonda(costo_componenti + (dsb.fieldbyname('quantita').asfloat / dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('valore_costo_standard').asfloat), 6);
                end;
              end
              else
              begin
                costo_totale := arrotonda(costo_totale + dsb.fieldbyname('quantita').asfloat * dsb.fieldbyname('valore_costo_standard').asfloat, 6);
                costo_componenti := arrotonda(costo_componenti + dsb.fieldbyname('quantita').asfloat * dsb.fieldbyname('valore_costo_standard').asfloat, 6);
              end;
            end
            else
            begin
              prezzo_inventario := 0;
              if valorizzazione_forzata = '' then
              begin
                valorizzazione := tipinv.tipo_inventario('gestionale', art_codice);
              end
              else
              begin
                valorizzazione := valorizzazione_forzata;
              end;
              przinv.przinv(dsb.fieldbyname('art_codice_figlio').asstring, '', valorizzazione, esercizio, now, 0, prezzo_inventario,
                'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
              if dsb.fieldbyname('tum_coefficiente_dsb').asfloat <> 0 then
              begin
                if dsb.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
                begin
                  prezzo_inventario := prezzo_inventario * dsb.fieldbyname('tum_coefficiente_dsb').asfloat;
                end
                else if dsb.fieldbyname('operazione_coefficiente_dsb').asstring = '/' then
                begin
                  prezzo_inventario := prezzo_inventario / dsb.fieldbyname('tum_coefficiente_dsb').asfloat;
                end;
              end;

              costo_totale := arrotonda(costo_totale + dsb.fieldbyname('quantita').asfloat * prezzo_inventario, 6);
              costo_componenti := arrotonda(costo_componenti + dsb.fieldbyname('quantita').asfloat * prezzo_inventario, 6);
            end;
          end
          else
          begin
            if dsb.fieldbyname('tum_coefficiente_dsb').asfloat <> 0 then
            begin
              if dsb.fieldbyname('operazione_coefficiente_dsb').asstring = '*' then
              begin
                costo_totale := arrotonda(costo_totale + dsb.fieldbyname('quantita').asfloat * dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('prezzo').asfloat, 6);
                costo_componenti := arrotonda(costo_componenti + dsb.fieldbyname('quantita').asfloat * dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('prezzo').asfloat, 6);
              end
              else if dsb.fieldbyname('operazione_coefficiente_dsb').asstring = '/' then
              begin
                costo_totale := arrotonda(costo_totale + (dsb.fieldbyname('quantita').asfloat / dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('prezzo').asfloat), 6);
                costo_componenti := arrotonda(costo_componenti + (dsb.fieldbyname('quantita').asfloat / dsb.fieldbyname('tum_coefficiente_dsb').asfloat * dsb.fieldbyname('prezzo').asfloat), 6);
              end;
            end;
          end;
        end
        else
        begin
          c_totale := 0;
          c_componenti := 0;
          c_cicli_singoli := 0;
          c_cicli_globali := 0;

          valorizza_dsb(dsb.fieldbyname('art_codice_figlio').asstring, tla_codice, usa_costo_standard,
            c_totale, c_componenti, c_cicli_singoli, c_cicli_globali, valorizzazione_forzata);

          costo_totale := costo_totale + dsb.fieldbyname('quantita').asfloat * c_totale;
          costo_componenti := costo_componenti + dsb.fieldbyname('quantita').asfloat * c_componenti;
        end;

        dsb.next;
      end;

      freeandnil(dsb);
    end;

    //  costo produzione
    if (tipo_costo = 'tutti') or (tipo_costo = 'lavorazioni') then
    begin
      calstd_lsa.close;
      calstd_lsa.parambyname('art_codice').asstring := art_codice;
      calstd_lsa.parambyname('tla_codice').asstring := tla_codice;
      calstd_lsa.parambyname('data_inizio').asdate := date;
      calstd_lsa.parambyname('data_fine').asdate := date;
      calstd_lsa.open;
      if not calstd_lsa.isempty then
      begin
        costo_totale := arrotonda(costo_totale + calstd_lsa.fieldbyname('prezzo').asfloat, 6);
        costo_cicli_globali := arrotonda(costo_cicli_singoli + calstd_lsa.fieldbyname('prezzo').asfloat, 6);
      end
      else
      begin

        //  cicli
        cla.close;
        cla.parambyname('art_codice').asstring := art_codice;
        cla.open;

        while not cla.eof do
        begin
          if cla.fieldbyname('fas_codice').asstring = 'LAVEST' then
          begin
            //modifica
            costo := 0;

            read_tabella(arc.arcdit, 'art', 'codice', art_codice);
            if archivio.fieldbyname('tcm_codice').asstring = 'EST' then
            begin
              a31lav_est.close;
              a31lav_est.parambyname('art_codice').asstring := art_codice;
              a31lav_est.open;
              if (a31lav_est.fieldbyname('frn_codice').asstring <> '00001651') then
              begin
                costo := a31lav_est.fieldbyname('prezzo').asfloat;
                result :=  result+ costo;
              end
            end
          end
          else
          begin

            if cla.fieldbyname('fas_tipo_operazione').asstring = 'globale' then
            begin
              quantita := cla.fieldbyname('quantita').asfloat;
            end
            else if cla.fieldbyname('fas_tipo_operazione').asstring = 'singola' then
            begin
              if cla.fieldbyname('operatore').asstring = '*' then
              begin
                quantita := arrotonda(quantita_produzione * cla.fieldbyname('quantita').asfloat, 4);
              end
              else
              begin
                quantita := arrotonda(quantita_produzione / cla.fieldbyname('quantita').asfloat, 4);
              end;
            end;

            costo := calfas.calcola_costo('', art_codice, art_codice,
              cla.fieldbyname('fas_codice').asstring, cla.fieldbyname('mac_codice').asstring,
              date, quantita);
          end;

          costo_cicli_singoli := costo_cicli_singoli + costo;

          costo_totale := costo_totale + costo;

          cla.next;
        end;
      end;
      a31lav_est.close;
      //modifica fine
    end;
  end;
end;

function TVALDSB.calcola_costo_produzione(progressivo, riga: integer; solo_ciclo: boolean;
  data_registrazione: tdate = 0; tipo_inventario: string = ''):
  double;
var
  valorizzazione: string;
  costo, importo, prezzo_inventario: double;
begin
  result := 0;
  costo := 0;
  importo := 0;
  prezzo_inventario := 0;
  if data_registrazione = 0 then
  begin
    data_registrazione := date;
  end;

  opr.sql.text := 'select opr.art_codice, opt.art_codice opt_art_codice, opt.quantita opt_quantita, opr.quantita opr_quantita, ' +
    'opr.costo_unitario, lsa.prezzo valore_costo_standard, tma.tla_codice_costo_standard, opr.tma_codice, opt.avanzamento_fasi ' +
    'from opr ' +
    'inner join opt on opt.progressivo = opr.progressivo ' +
    'inner join art on art.codice = opr.art_codice ' +
    'inner join tma on tma.codice = opr.tma_codice ' +

    'left join lsa on lsa.art_codice = art.codice and ' +
    'lsa.tla_codice = (select tla_codice_costo_standard from arc.dit05 where codice = @dit_codice) and ' +
    'current_date between lsa.data_inizio and lsa.data_fine ' +

    'where opr.progressivo = :progressivo';
  if riga <> 0 then
  begin
    opr.sql.text := opr.sql.text + ' and opr.riga = :riga';
  end;

  lsa.sql.text := 'select prezzo from lsa where art_codice = :art_codice ' +
    'and tla_codice = :codice1 and data_inizio <= :data_inizio and data_fine >= :data_fine';

  opr.params[0].asinteger := progressivo;

  //  calcola il costo di una singola riga
  if riga <> 0 then
  begin
    opr.params[1].asinteger := riga;
  end;

  opr.open;

  if not opr.isempty then
  begin
    if not solo_ciclo then
    begin
      while not opr.eof do
      begin
        costo := opr.fieldbyname('costo_unitario').asfloat;
        if costo = 0 then
        begin
          if tipo_inventario = '' then
          begin
            valorizzazione := tipinv.tipo_inventario('produzione', opr.fieldbyname('art_codice').asstring);
          end
          else
          begin
            valorizzazione := tipo_inventario;
          end;

          if valorizzazione = 'costo standard' then
          begin
            if opr.fieldbyname('valore_costo_standard').asfloat <> 0 then
            begin
              costo := opr.fieldbyname('valore_costo_standard').asfloat;
            end
            else
            begin
              lsa.close;
              lsa.params[0].asstring := opr.fieldbyname('art_codice').asstring;
              if opr.fieldbyname('tla_codice_costo_standard').asstring <> '' then
              begin
                lsa.params[1].asstring := opr.fieldbyname('tla_codice_costo_standard').asstring;
              end
              else
              begin
                lsa.params[1].asstring := arc.dit.fieldbyname('tla_codice_costo_standard').asstring;
              end;
              lsa.params[2].asdate := data_registrazione;
              lsa.params[3].asdate := data_registrazione;
              lsa.open;
              if not lsa.eof then
              begin
                costo := lsa.fieldbyname('prezzo').asfloat;
              end
              else
              begin
                valorizzazione := 'prezzo medio';
                przinv.przinv(opr.fieldbyname('art_codice').asstring, opr.fieldbyname('tma_codice').asstring, valorizzazione, esercizio,
                  data_registrazione, 0, prezzo_inventario,
                  'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
                costo := prezzo_inventario;
              end;
            end;
          end
          else
          begin
            przinv.przinv(opr.fieldbyname('art_codice').asstring, opr.fieldbyname('tma_codice').asstring, valorizzazione, esercizio,
              data_registrazione, 0, prezzo_inventario,
              'no', arc.dit.fieldbyname('inventario_raggruppato').asstring = 'si');
            costo := prezzo_inventario;
          end;
        end;
        if riga <> 0 then
        begin
          importo := costo;
        end
        else
        begin
          importo := arrotonda(importo + (opr.fieldbyname('opr_quantita').asfloat * costo), decimali_max_prezzo_acq);
        end;

        opr.next;
      end;
    end;

    //  costo ciclo se si analizza solo il prodotto finito
    if riga = 0 then
    begin
      if opr.fieldbyname('avanzamento_fasi').asstring = 'no' then
      begin
        opc.sql.text := 'select (select coalesce(sum(opc.costo_totale), 0) ' +
          'from opc where opc.progressivo = opt.progressivo) / opt.quantita prezzo ' +
          'from opt where opt.progressivo = :progressivo';
      end
      else
      begin
        opc.sql.text := 'select (coalesce((select sum(opc.costo_totale * opc.quantita_consuntivo / opc.quantita) ' +
          'from opc where opc.progressivo = opt.progressivo and opc.frn_codice = ''''), 0) + ' +
          'coalesce((select sum(opc.costo_totale) ' +
          'from opc where opc.progressivo = opt.progressivo and opc.frn_codice <> ''''), 0)) / opt.quantita prezzo ' +
          'from opt where opt.progressivo = :progressivo';
      end;

      opc.close;
      opc.params[0].asinteger := progressivo;
      opc.open;
      if opc.fieldbyname('prezzo').asfloat = 0 then
      begin
        lsa.close;
        lsa.params[0].asstring := opr.fieldbyname('opt_art_codice').asstring;
        lsa.params[1].asstring := arc.dit.fieldbyname('tla_codice').asstring;
        lsa.params[2].asdate := data_registrazione;
        lsa.params[3].asdate := data_registrazione;
        lsa.open;
        if not lsa.eof then
        begin
          try
            importo := arrotonda
              (((importo / opr.fieldbyname('opt_quantita').asfloat) + lsa.fieldbyname('prezzo').asfloat), decimali_max_prezzo_acq);
          except
            raise;
          end;
        end
        else
        begin
          try
            importo := arrotonda
              (importo / opr.fieldbyname('opt_quantita').asfloat, decimali_max_prezzo_acq);
          except
            raise;
          end;
        end;
      end
      else
      begin
        try
          importo := arrotonda
            (((importo / opr.fieldbyname('opt_quantita').asfloat) + opc.fieldbyname('prezzo').asfloat), decimali_max_prezzo_acq);
        except
          raise;
        end;
      end;
    end;

    result := importo;
  end;
end;

end.
