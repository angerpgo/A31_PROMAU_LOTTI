unit GGCONDOCV;

interface

uses
  windows, messages, sysutils, variants, classes, graphics, controls, forms,
  dialogs, ggelabora, db, query_go, myaccess, menus,
  stdctrls, buttons, comctrls, rztabs, extctrls, toolwin,
  mask, memds, virtualtable, dmarc,
  rzbutton, zzpagimm, zzcalsca, zzdesautpri, zztotven, rzlabel, rzpanel, rzdbedit, rzlistvw, rztreevw, rzdbchk,
  rzradchk, rzsplit, rzcmbobx, rzprgres,
  rzspnedt, rzshelldialogs, rzdbcmbo, raizeedit_go, rzedit, dbaccess;

type

  TCONDOCV = class(TELABORA)
    label11: trzlabel;
    v_dalla_data_documento: trzdatetimeedit_go;
    label12: trzlabel;
    v_alla_data_documento: trzdatetimeedit_go;
    testata: tmyquery_go;
    righe: tmyquery_go;
    iva: tmyquery_go;
    cli: tmyquery_go;
    tco: tmyquery_go;
    tpa: tmyquery_go;
    pat_immediato: tmyquery_go;
    pnt: tmyquery_go;
    pnr: tmyquery_go;
    tag: tmyquery_go;
    cfg: tmyquery_go;
    documenti_progressivo: tmyquery_go;
    rtr: tmyquery_go;
    pat: tmyquery_go;
    pas: tmyquery_go;
    ntt: tmyquery_go;
    ntr: tmyquery_go;
    tabella_ivd: tmyquery_go;
    stv: tmyquery_go;
    pro: tmyquery_go;
    pni: tmyquery_go;
    gen: tmyquery_go;
    tabella_corrispettivi: tvirtualtable;
    tabella_corrispettividata_registrazione: tdatefield;
    tabella_corrispettivitco_codice: tstringfield;
    tabella_corrispettivitiv_codice: tstringfield;
    tabella_corrispettiviimponibile: tfloatfield;
    tabella_corrispettiviimposta: tfloatfield;
    tiv: tmyquery_go;
    ind: tmyquery_go;
    label24: trzlabel;
    v_consolidare: trzcombobox_go;
    pni_zucchetti: tvirtualtable;
    pni_zucchettitiv_codice: tstringfield;
    pni_zucchettiimponibile: tfloatfield;
    pni_zucchettiimponibile_euro: tfloatfield;
    pni_zucchettiiva: tfloatfield;
    pni_zucchettiiva_euro: tfloatfield;
    pni_zucchettiindetraiile: tfloatfield;
    pni_zucchettiindetraibile_euro: tfloatfield;
    pagamenti: tmyquery_go;
    v_dalla_serie: trzedit_go;
    v_alla_serie: trzedit_go;
    label1: trzlabel;
    label2: trzlabel;
    ngt: tmyquery_go;
    sconti_ngt: tmyquery_go;
    neg: tmyquery_go;
    righe_no_gen: tmyquery_go;
    v_documento: trzlabel;
    tng: tmyquery_go;
    tma: tmyquery_go;
    pro_pat: tmyquery_go;
    cassa: TMyQuery_go;
    vuodoc: TMyQuery_go;
    prvm: TMyQuery_go;
    fvr_nc: TMyQuery_go;
    ngi: TMyQuery_go;
    ddt_acconto: TMyQuery_go;
    fattura_acconto: TMyQuery_go;
    bolla_acconto: TMyQuery_go;
    query_dcm: TMyQuery_go;
    nom_rappresentanza: TMyQuery_go;
    procedure v_alla_data_documentoenter(sender: tobject);
    procedure v_dalla_data_documentoexit(sender: tobject);
    procedure v_alla_data_documentoexit(sender: tobject);
    procedure v_confermaclick(sender: tobject);
    procedure formcreate(sender: tobject);
    procedure pannello_parametrienter(sender: tobject);
    procedure formshow(sender: tobject);
    procedure formkeydown(sender: tobject; var key: word;
      shift: tshiftstate);
    procedure formdestroy(sender: tobject);
    procedure v_alla_serieexit(sender: tobject);
  protected
    pagimm: tpagimm;
    calsca: tcalsca;
    desautpri: tdesautpri;
    totven: ttotven;

    tiv_codice_arrotonda_valuta, gen_codice_arrotonda_valuta, gen_codice_tco, gen_codice_storno_tco,
      gen_codice_spese_tco, gen_codice_sconti_tco, gen_codice: string;
    importo_totale_imponibile, totale_iva, totale_iva_euro: double;
    segno: integer;
    tabella_contropartite: array of contropartite;
    tabella_scadenze: array of scadenze;

    importo_totale_provvigioni, percentuale_sconti_provvigioni_agente,
      percentuale_sconti_provvigioni_capo_area: double;
    tipo_provvigioni_agente, tipo_provvigioni_capo_area: word;

    codice_partita: string;
    gestione_cespiti_tco, gestione_cespiti_gen: string;

    progressivo_pat: integer;

    quantita_stv, importo_stv, importo_provvigioni_stv: double;
    chiusura_cliente, tco_codice_chiusura_cliente, gen_codice_chiusura_cliente: string;

    progressivo_corrispettivi, riga_corrispettivi: integer;
    totale_imponibile_corrispettivi, totale_iva_corrispettivi: double;
    test_data_registrazione: tdate;
    test_tco_codice: string;

    procedure assegna_valore_dalla_data_documento;
    procedure assegna_valore_alla_data_documento;
    procedure messaggio_aggiorna(tipo: string);
    procedure alla_serie_controllo;

    procedure crea_pat(tipo_conto: string);
    procedure crea_pas;
    procedure iva_sospensione;
    procedure crea_stv(tag_codice, cli_codice, ind_codice, art_codice: string; anno, mese: word; quantita, importo,
      importo_provvigioni: double);
    procedure stv_spese(art_codice: string; importo: double);
    procedure vendite_negozio;

    procedure crea_pnt_corrispettivi;
    procedure crea_pni_corrispettivi;
    procedure crea_pnr_corrispettivi;
    procedure crea_cespiti;
    procedure ventilazione_negozio;
    procedure scorporo_negozio;
    procedure cassa_contanti;
    procedure buoni_negozio;
    procedure chiusura_documento_origine;

    procedure giroconto_pagamento;
    procedure verifica_acconti;
  public
    procedure controllo_campi; override;
  end;

implementation

uses GGCREPARINH, GGGESMCS, ZZLIBRERIE, GGMOVPARINH;

{$r *.dfm}


procedure tcondocv.controllo_campi;
begin
  assegna_valore_dalla_data_documento;
  assegna_valore_alla_data_documento;
  alla_serie_controllo;
end;

procedure tcondocv.v_alla_data_documentoenter(sender: tobject);
begin
  inherited;
  if v_alla_data_documento.date = 0 then
  begin
    v_alla_data_documento.date := v_dalla_data_documento.date;
  end;
end;

procedure tcondocv.v_confermaclick(sender: tobject);
var
  totale_documento, totale_documento_euro, totale, totale_euro, totale_sconto, totale_sconto_finale,
    totale_imponibile, totale_imponibile_euro, importo, sconto_finale, sconto_totale, importo_imponibile_provvigioni,
    totale_sconto_cassa, totale_trasporto, totale_bollo, totale_incasso, importo_imponibile_provvigioni_ca,
    importo_sconto_cassa_scorporato, importo_sconto_finale_scorporato, importo_sconto_scorporato,
    importo_extra_scorporato, importo_trasporto_scorporato, importo_bollo_scorporato, importo_incasso_scorporato: double;
  progressivo_pnt, progressivo_pnt_immediato, progressivo_intra: integer;
  uscita, aggiorna_documento: boolean;
  i, indice, riga, riga_pas, riga_intra, anno, mese, giorno: word;
  totale_documento_iva, totale_iva_contropartita: double;
  primo_indice: word;

  pnt_documento, tipo_documento_iva_del_margine: string;
  stringa, art_codice_sconti_fattura, art_codice_sconto_cassa, art_codice_spese_extra, art_codice_spese_trasporto,
    art_codice_spese_bollo, art_codice_spese_incasso, art_codice_cassa_professionisti, partite: string;
  sconti_fattura, sconto_cassa, spese_extra, spese_trasporto, spese_bollo, spese_incasso, cassa_professionisti: double;
  righe_pat: integer;
  importo_rata_ritenuta, importo_assegnato_ritenuta, importo_iva_del_margine, importo_iva_del_margine_valuta, importo_spese_trasporto,
    spese_trasporto_fattura, totale_spese_trasporto: double;
  ind_codice, tni_codice: string;
  prosegui: boolean;
  importo_cambio: double;
  gen_cambio: string;

  //modifica
  importo_cpv: double;
  a31cag: tmyquery_go;
  //modifica fine
begin
  if (esercizio_chiuso = 'si') or (esercizio_chiuso_magazzino = 'si') then
  begin
    messaggio(200, 'l''esercizio (parte contabile o magazzino) è stato dichiarato chiuso' + slinebreak +
      'l''operazione non è eseguibile');
  end
  else
  begin
    if v_consolidare.text = 'vendite negozio' then
    begin
      vendite_negozio;
    end
    else
    begin
      riga_intra := 0;

      apri_transazione;
      try
        try
          art_codice_spese_extra := arc.dit.fieldbyname('art_codice_spese_extra').asstring;
          art_codice_spese_trasporto := arc.dit.fieldbyname('art_codice_spese_trasporto').asstring;
          art_codice_spese_bollo := arc.dit.fieldbyname('art_codice_bollo').asstring;
          art_codice_spese_incasso := arc.dit.fieldbyname('art_codice_spese_incasso').asstring;
          art_codice_sconti_fattura := arc.dit.fieldbyname('art_codice_sconti_fattura').asstring;
          art_codice_sconto_cassa := arc.dit.fieldbyname('art_codice_sconto_cassa').asstring;
          art_codice_cassa_professionisti := arc.dit.fieldbyname('art_codice_cassa_professionisti').asstring;
          chiusura_cliente := arc.dit.fieldbyname('chiusura_cliente').asstring;
          tco_codice_chiusura_cliente := arc.dit.fieldbyname('tco_codice_chiusura_cliente').asstring;
          gen_codice_chiusura_cliente := arc.dit.fieldbyname('gen_codice_chiusura_cliente').asstring;
          tiv_codice_arrotonda_valuta := arc.dit.fieldbyname('tiv_codice_arrotonda_valuta').asstring;
          gen_codice_arrotonda_valuta := arc.dit.fieldbyname('gen_codice_arrotonda_valuta').asstring;

          query.sql.clear;

          if (codice[0] = '') or (codice[0] = 'fattura accompagnatoria') or (codice[0] = 'fattura differita') or
            (codice[0] = 'fattura immediata') or (codice[0] = 'nota credito') then
          begin
            if (v_consolidare.itemindex <> 2) and (v_consolidare.text <> 'corrispettivi con omaggi') then
            begin
              query.sql.add('select fvt.data_documento, fvt.serie_documento, fvt.numero_documento,');
              query.sql.add('fvt.progressivo, fvt.tipo_documento');
              query.sql.add('from fvt');
              if codice[1] = 0 then
              begin
                query.sql.add('where fvt.data_documento between :dalla_data and :alla_data');
                query.sql.add('and fvt.serie_documento between :dalla_serie and :alla_serie');
                query.sql.add('and fvt.situazione = ''evaso''');
                query.sql.add('and fvt.ese_codice = ' + quotedstr(esercizio));
              end
              else
              begin
                query.sql.add('where fvt.progressivo = :progressivo');
                query.sql.add('and fvt.ese_codice = ' + quotedstr(esercizio));
              end;
            end;
          end;

          if (v_consolidare.itemindex <> 1) and (v_consolidare.text <> 'corrispettivi con omaggi') then
          begin
            if (query.sql.text <> '') and ((codice[0] = '') or (codice[0] = 'corrispettivo')) then
            begin
              query.sql.add('union all');
            end;

            if (codice[0] = '') or (codice[0] = 'corrispettivo') then
            begin
              query.sql.add('select cvt.data_documento, cvt.serie_documento, cvt.numero_documento,');
              query.sql.add('cvt.progressivo, cvt.tipo_documento');
              query.sql.add('from cvt');
              if codice[1] = 0 then
              begin
                query.sql.add('where cvt.data_documento between :dalla_data and :alla_data');
                query.sql.add('and cvt.serie_documento between :dalla_serie and :alla_serie');
                query.sql.add('and cvt.situazione = ''evaso''');
                query.sql.add('and cvt.ese_codice = ' + quotedstr(esercizio));
              end
              else
              begin
                query.sql.add('where cvt.progressivo = :progressivo');
                query.sql.add('and cvt.ese_codice = ' + quotedstr(esercizio));
              end;
            end;
          end;

          if v_consolidare.text = 'corrispettivi con omaggi' then
          begin
            query.sql.clear;
            query.sql.add('select cvt.data_documento, cvt.serie_documento, cvt.numero_documento,');
            query.sql.add('cvt.progressivo, cvt.tipo_documento');
            query.sql.add('from cvt');
            query.sql.add('where cvt.data_documento between :dalla_data and :alla_data');
            query.sql.add('and cvt.serie_documento between :dalla_serie and :alla_serie');
            query.sql.add('and cvt.situazione = ''evaso''');
            query.sql.add('and cvt.ese_codice = ' + quotedstr(esercizio));
            query.sql.add('and exists(select cvr_01.id from cvr cvr_01 inner join cvt cvt_01');
            query.sql.add('on cvt_01.progressivo = cvr_01.progressivo');
            query.sql.add('where cvt_01.data_documento between :dalla_data and :alla_data');
            query.sql.add('and cvt_01.serie_documento between :dalla_serie and :alla_serie');
            query.sql.add('and cvt_01.situazione = ''evaso'' and cvr_01.tipo_movimento = ''omaggio''');
            query.sql.add('and cvr_01.progressivo = cvt.progressivo)');
          end;

          query.sql.add('order by 1,2,3');

          if codice[1] = 0 then
          begin
            query.parambyname('dalla_data').asdate := v_dalla_data_documento.date;
            query.parambyname('alla_data').asdate := v_alla_data_documento.date;
            query.parambyname('dalla_serie').asstring := v_dalla_serie.text;
            query.parambyname('alla_serie').asstring := v_alla_serie.text;
          end
          else
          begin
            query.parambyname('progressivo').asinteger := codice[1];
          end;

          query.close;
          query.open;

          while not query.eof do
          begin
            testata.close;
            righe.close;
            iva.close;
            pagamenti.close;

            testata.sql.clear;
            righe.sql.clear;
            righe_no_gen.sql.clear;
            iva.sql.clear;
            pagamenti.sql.clear;

            if query.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
            begin
              testata.sql.add('select cvt.*, '''' codice_fiscale from cvt');
              testata.sql.add('inner join tdo on tdo.codice = cvt.tdo_codice');
              testata.sql.add('where cvt.progressivo = :progressivo');
              righe.sql.add('select * from cvr where progressivo = :progressivo');
              righe_no_gen.sql.add('select * from cvr where progressivo = :progressivo and art_codice <> '''' and gen_codice = ''''');
              iva.sql.add('select * from cvi where progressivo = :progressivo');
              pagamenti.sql.add('select * from cvp where progressivo = :progressivo');
            end
            else
            begin
              testata.sql.add('select fvt.*, ind.codice_fiscale from fvt');
              testata.sql.add('inner join tdo on tdo.codice = fvt.tdo_codice');
              testata.sql.add('left join ind on ind.cli_codice = fvt.cli_codice and ind.indirizzo = fvt.indirizzo');
              testata.sql.add('where fvt.progressivo = :progressivo');
              righe.sql.add('select * from fvr where progressivo = :progressivo');
              righe_no_gen.sql.add('select * from fvr where progressivo = :progressivo and art_codice <> '''' and gen_codice = ''''');
              iva.sql.add('select * from fvi where progressivo = :progressivo');
              pagamenti.sql.add('select * from fvp where progressivo = :progressivo');
            end;
            testata.params[0].asfloat := query.fieldbyname('progressivo').asfloat;
            testata.open;

            if not testata.eof then
            begin
              prosegui := true;
              if arc.dit.fieldbyname('avviso_documento_in_modifica').asstring = 'si' then
              begin
                query_dcm.close;
                if testata.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
                begin
                  query_dcm.parambyname('tabella').asstring := 'cvt';
                end
                else
                begin
                  query_dcm.parambyname('tabella').asstring := 'fvt';
                end;
                query_dcm.parambyname('progressivo').asinteger := testata.fieldbyname('progressivo').asinteger;
                query_dcm.open;
                if not query_dcm.isempty then
                begin
                  prosegui := false;
                  messaggio(200, 'il documento ' + testata.fieldbyname('tipo_documento').asstring + ' ' +
                    testata.fieldbyname('numero_documento').asstring + ' ' + testata.fieldbyname('serie_documento').asstring +
                    ' del ' + testata.fieldbyname('data_documento').asstring + slinebreak +
                    'intestatario ' + testata.fieldbyname('cli_codice').asstring + slinebreak +
                    'è in gestione da un altro utente e non verrà consolidato');
                end;
              end;

              if prosegui then
              begin
                if testata.fieldbyname('tco_codice').asstring <> '' then
                begin
                  righe_no_gen.close;
                  righe_no_gen.params[0].asinteger := query.fieldbyname('progressivo').asinteger;
                  righe_no_gen.open;
                  if not righe_no_gen.isempty then
                  begin
                    messaggio(200, 'la fattura: ' + testata.fieldbyname('numero_documento').asstring +
                      '  del cliente: ' + testata.fieldbyname('cli_codice').asstring + #13 +
                      'ha righe senza la contropartita contabile');
                    prosegui := false;
                  end;
                end;

                if prosegui then
                begin
                  tco.close;
                  tco.params[0].asstring := testata.fieldbyname('tco_codice').asstring;
                  tco.open;
                  if testata.fieldbyname('tipo_documento').asstring = 'nota credito' then
                  begin
                    segno := -1;
                  end
                  else
                  begin
                    if not tco.isempty and (tco.fieldbyname('segno_registro_iva').asstring = 'decrementa') then
                    begin
                      segno := -1;
                    end
                    else
                    begin
                      segno := 1;
                    end;
                  end;

                  if (tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si') and
                    (tco.fieldbyname('cfg_tipo_03').asstring = 'G') and
                    (tco.fieldbyname('cfg_codice_03').asstring <> '') then
                  begin
                    gen_codice_tco := tco.fieldbyname('cfg_codice_03').asstring;
                    gen_codice_storno_tco := tco.fieldbyname('cfg_codice_03').asstring;
                  end
                  else
                  begin
                    gen_codice_tco := '';
                    gen_codice_storno_tco := '';
                  end;

                  if (tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si') then
                  begin
                    if (tco.fieldbyname('cfg_tipo_04').asstring = 'G') and
                      (tco.fieldbyname('cfg_codice_04').asstring <> '') then
                    begin
                      gen_codice_spese_tco := tco.fieldbyname('cfg_codice_04').asstring;
                    end
                    else if (tco.fieldbyname('cfg_tipo_03').asstring = 'G') and
                      (tco.fieldbyname('cfg_codice_03').asstring <> '') and
                      (tco.fieldbyname('cfg_dare_avere_03').asstring <> '') then
                    begin
                      gen_codice_spese_tco := tco.fieldbyname('cfg_codice_03').asstring;
                    end
                    else
                    begin
                      gen_codice_spese_tco := '';
                    end;
                  end
                  else
                  begin
                    gen_codice_spese_tco := '';
                  end;

                  if (tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si') then
                  begin
                    if (tco.fieldbyname('cfg_tipo_05').asstring = 'G') and
                      (tco.fieldbyname('cfg_codice_05').asstring <> '') then
                    begin
                      gen_codice_sconti_tco := tco.fieldbyname('cfg_codice_05').asstring;
                    end
                    else if (tco.fieldbyname('cfg_tipo_03').asstring = 'G') and
                      (tco.fieldbyname('cfg_codice_03').asstring <> '') and
                      (tco.fieldbyname('cfg_dare_avere_03').asstring <> '') then
                    begin
                      gen_codice_sconti_tco := tco.fieldbyname('cfg_codice_03').asstring;
                    end
                    else
                    begin
                      gen_codice_sconti_tco := '';
                    end;
                  end
                  else
                  begin
                    gen_codice_sconti_tco := '';
                  end;

                  progressivo_intra := 0;

                  gestione_cespiti_tco := 'no';
                  gestione_cespiti_gen := 'no';

                  // testata.edit;
                  cli.close;
                  cli.params[0].asstring := testata.fieldbyname('cli_codice').asstring;
                  cli.open;

                  righe.close;
                  righe.params[0].asfloat := query.fieldbyname('progressivo').asfloat;
                  righe.open;

                  iva.close;
                  iva.params[0].asfloat := query.fieldbyname('progressivo').asfloat;
                  iva.open;

                  pagamenti.close;
                  pagamenti.params[0].asfloat := query.fieldbyname('progressivo').asfloat;
                  pagamenti.open;

                  tag.close;
                  tag.params[0].asstring := testata.fieldbyname('tag_codice').asstring;
                  tag.open;

                  // aggiorna contabilità
                  if testata.fieldbyname('tco_codice').asstring <> '' then
                  begin
                    if (testata.fieldbyname('tipo_documento').asstring = 'corrispettivo') and (codice[0] = '') and
                      (v_consolidare.text <> 'corrispettivi con omaggi') then
                    begin
                      if (arc.dit.fieldbyname('gen_codice_ventilazione').asstring = '') or
                        (arc.dit.fieldbyname('gen_codice_corrispettivi').asstring = '') then
                      begin
                        messaggio(200, 'in anagrafica ditta manca il sottoconto della contropartita vendite [ricavi ventilazione] o' + #13 +
                          'il codice dell''intestatario del documento [sottoconto contabile consolidamento corrispettivi]');
                      end
                      else
                      begin
                        iva.first;
                        while not iva.eof do
                        begin
                          if not tabella_corrispettivi.locate('data_registrazione;tco_codice;tiv_codice',
                            vararrayof([testata.fieldbyname('data_documento').asdatetime, testata.fieldbyname('tco_codice').asstring,
                            iva.fieldbyname('tiv_codice').asstring]), []) then
                          begin
                            tabella_corrispettivi.append;
                            tabella_corrispettivi.fieldbyname('data_registrazione').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                            tabella_corrispettivi.fieldbyname('tco_codice').asstring := testata.fieldbyname('tco_codice').asstring;
                            tabella_corrispettivi.fieldbyname('tiv_codice').asstring := iva.fieldbyname('tiv_codice').asstring;
                            tabella_corrispettivi.fieldbyname('imponibile').asfloat := 0;
                            tabella_corrispettivi.post;
                          end;

                          tabella_corrispettivi.edit;
                          tabella_corrispettivi.fieldbyname('imponibile').asfloat := tabella_corrispettivi.fieldbyname('imponibile').asfloat +
                            iva.fieldbyname('importo_imponibile').asfloat + iva.fieldbyname('importo_iva').asfloat;
                          tabella_corrispettivi.post;

                          iva.next;
                        end;
                      end;
                    end
                    else
                    begin
                      tco.close;
                      tco.params[0].asstring := testata.fieldbyname('tco_codice').asstring;
                      tco.open;
                      gestione_cespiti_tco := tco.fieldbyname('gestione_cespiti').asstring;

                      tpa.params[0].asstring := testata.fieldbyname('tpa_codice').asstring;
                      tpa.close;
                      tpa.open;

                      if (testata.fieldbyname('cambio').asfloat <> 1) and
                        ((tiv_codice_arrotonda_valuta = '') or (gen_codice_arrotonda_valuta = '')) then
                      begin
                        messaggio_aggiorna('valuta');
                      end
                      else if (testata.fieldbyname('listino_con_iva').asstring = 'si') and
                        ((tiv_codice_arrotonda_valuta = '') or (gen_codice_arrotonda_valuta = '')) then
                      begin
                        messaggio_aggiorna('listino');
                      end
                      else
                      begin
                        if testata.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
                        begin
                          pnt_documento := 'pnt_corrispettivi';
                        end
                        else
                        begin
                          pnt_documento := 'pnt_vendite';
                        end;
                        if arc.esistenza_documento(pnt_documento, testata.fieldbyname('serie_documento').asstring, '',
                          testata.fieldbyname('data_documento').asdatetime, testata.fieldbyname('numero_documento').asinteger, 0) then
                        begin
                          messaggio(000, 'in primanota esiste già un documento con lo stesso numero [' + testata.fieldbyname('numero_documento').asstring + ']' + #13 +
                            'verranno aggiornati gli archivi non contabili (statistiche, provvigioni, intrastat)' + #13 +
                            'ed il documento verrà aggiornato in situazione [consolidato]' + #13 + #13 +
                            'volendo correggere la numerazione va eseguito lo storno del consolidamento');
                        end
                        else
                        begin
                          // scrivo testata primanota
                          progressivo_pnt := arc.setta_valore_generatore(tmyconnection_go(pnt.connection), 'pnt_progressivo');

                          pnt.append;

                          pnt.fieldbyname('progressivo').asinteger := progressivo_pnt;
                          pnt.parambyname('progressivo').asinteger := progressivo_pnt;
                          pnt.parambyname('progressivo').asinteger := progressivo_pnt;
                          pnt.fieldbyname('data_registrazione').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                          pnt.fieldbyname('tco_codice').asstring := testata.fieldbyname('tco_codice').asstring;
                          pnt.fieldbyname('tco_descrizione').asstring := tco.fieldbyname('descrizione').asstring;
                          pnt.fieldbyname('tipo_documento_iva').asstring := tco.fieldbyname('tipo_registro_iva').asstring;
                          pnt.fieldbyname('documento_iva').asstring := 'si';
                          pnt.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                          pnt.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                          pnt.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                          pnt.fieldbyname('cfg_tipo').asstring := 'C';
                          if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                          begin
                            pnt.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                          end
                          else
                          begin
                            pnt.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                          end;
                          pnt.fieldbyname('intra').asstring := testata.fieldbyname('intra').asstring;
                          if trim(pnt.fieldbyname('intra').asstring) = '' then
                          begin
                            pnt.fieldbyname('intra').asstring := 'no';
                          end;
                          if read_tabella(arc.arcdit, 'tna', 'codice', testata.fieldbyname('tna_codice').asstring) then
                          begin
                            pnt.fieldbyname('intra').asstring := archivio.fieldbyname('intra').asstring;
                          end;
                          pnt.fieldbyname('tva_codice').asstring := testata.fieldbyname('tva_codice').asstring;
                          pnt.fieldbyname('ese_codice').asstring := esercizio;
                          pnt.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;

                          if testata.fieldbyname('data_competenza_iva').value <> null then
                          begin
                            pnt.fieldbyname('data_competenza_iva').asdatetime := testata.fieldbyname('data_competenza_iva').asdatetime;
                          end
                          else
                          begin
                            pnt.fieldbyname('data_competenza_iva').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                            decodedate(pnt.fieldbyname('data_competenza_iva').asdatetime, anno, mese, giorno);
                            incamonth(anno, mese, giorno, tco.fieldbyname('mesi_competenza_iva').asinteger);
                            pnt.fieldbyname('data_competenza_iva').asdatetime := encodedate(anno, mese, giorno);
                          end;

                          pnt.fieldbyname('iva_sospensione').asstring := testata.fieldbyname('iva_sospensione').asstring;
                          if trim(pnt.fieldbyname('iva_sospensione').asstring) = '' then
                          begin
                            pnt.fieldbyname('iva_sospensione').asstring := 'no';
                          end;
                          pnt.fieldbyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
                          pnt.fieldbyname('doc_progressivo_origine').asfloat := testata.fieldbyname('progressivo').asfloat;
                          pnt.fieldbyname('competenza_anno_precedente').asstring := testata.fieldbyname('competenza_anno_precedente').asstring;
                          pnt.fieldbyname('contratto_elenco_cli_for').asstring := testata.fieldbyname('contratto_elenco_cli_for').asstring;
                          pnt.fieldbyname('pagamento_elenco_cli_for').asstring := testata.fieldbyname('pagamento_elenco_cli_for').asstring;
                          pnt.fieldbyname('data_fattura_riferimento').asdatetime := testata.fieldbyname('data_fattura_riferimento').asdatetime;
                          pnt.fieldbyname('numero_fattura_riferimento').asinteger := testata.fieldbyname('numero_fattura_riferimento').asinteger;
                          pnt.fieldbyname('serie_fattura_riferimento').asstring := testata.fieldbyname('serie_fattura_riferimento').asstring;
                          pnt.fieldbyname('codice_fiscale').asstring := testata.fieldbyname('codice_fiscale').asstring;

                          pnt.post;
                          pnt.refresh;

                          controllo_interrompi;

                          // scrivo iva primanota
                          totale_documento := 0;
                          totale_documento_euro := 0;
                          totale_iva := 0;
                          totale_iva_euro := 0;
                          totale_imponibile_euro := 0;
                          riga := 0;
                          importo_totale_imponibile := 0;

                          iva.first;
                          totale_imponibile := 0;
                          while not iva.eof do
                          begin
                            pni.append;

                            pni.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                            riga := riga + 1;
                            pni.fieldbyname('riga').asinteger := riga;
                            pni.fieldbyname('tiv_codice').asstring := iva.fieldbyname('tiv_codice').asstring;
                            pni.fieldbyname('importo_imponibile').asfloat := iva.fieldbyname('importo_imponibile').asfloat;
                            pni.fieldbyname('importo_iva').asfloat := iva.fieldbyname('importo_iva').asfloat + iva.fieldbyname('importo_iva_rettifica').asfloat;
                            pni.fieldbyname('importo_indetraibile').asfloat := 0;

                            pni.fieldbyname('importo_imponibile_euro').asfloat := arrotonda
                              (pni.fieldbyname('importo_imponibile').asfloat / testata.fieldbyname('cambio').asfloat);
                            pni.fieldbyname('importo_iva_euro').asfloat := arrotonda
                              (pni.fieldbyname('importo_iva').asfloat / testata.fieldbyname('cambio').asfloat);
                            pni.fieldbyname('importo_indetraibile_euro').asfloat := 0;

                            totale_documento := arrotonda(totale_documento + pni.fieldbyname('importo_imponibile').asfloat +
                              pni.fieldbyname('importo_iva').asfloat);
                            totale_documento_euro := arrotonda(totale_documento_euro + pni.fieldbyname('importo_imponibile_euro').asfloat +
                              pni.fieldbyname('importo_iva_euro').asfloat);
                            totale_imponibile := arrotonda(totale_imponibile + pni.fieldbyname('importo_imponibile').asfloat);
                            totale_imponibile_euro := arrotonda(totale_imponibile_euro + pni.fieldbyname('importo_imponibile_euro').asfloat);
                            totale_iva := arrotonda(totale_iva + pni.fieldbyname('importo_iva').asfloat);
                            totale_iva_euro := arrotonda(totale_iva_euro + pni.fieldbyname('importo_iva_euro').asfloat);

                            controllo_interrompi;

                            iva_sospensione;

                            // flag omaggi
                            if iva.fieldbyname('tipo_movimento').asstring = 'omaggio' then
                            begin
                              pni.fieldbyname('omaggio').asstring := 'si';
                            end
                            else
                            begin
                              pni.fieldbyname('omaggio').asstring := 'no';
                            end;

                            importo_totale_imponibile := arrotonda
                              (importo_totale_imponibile + pni.fieldbyname('importo_imponibile').asfloat);

                            pni.post;

                            // storno imponibile omaggi e sconto merce
                            if (iva.fieldbyname('tipo_movimento').asstring = 'omaggio') or
                              (iva.fieldbyname('tipo_movimento').asstring = 'sconto merce') then
                            begin
                              pni.append;

                              pni.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                              riga := riga + 1;
                              pni.fieldbyname('riga').asinteger := riga;
                              if iva.fieldbyname('tipo_movimento').asstring = 'omaggio' then
                              begin
                                pni.fieldbyname('tiv_codice').asstring := testata.fieldbyname('tiv_codice_omaggi').asstring;
                                pni.fieldbyname('importo_iva').asfloat := 0;
                                pni.fieldbyname('omaggio').asstring := 'si';
                              end
                              else
                              begin
                                pni.fieldbyname('tiv_codice').asstring := iva.fieldbyname('tiv_codice').asstring;
                                pni.fieldbyname('importo_iva').asfloat := arrotonda
                                  ((iva.fieldbyname('importo_iva').asfloat + iva.fieldbyname('importo_iva_rettifica').asfloat) * -1);
                                pni.fieldbyname('omaggio').asstring := 'no';
                              end;
                              pni.fieldbyname('importo_imponibile').asfloat := arrotonda
                                (iva.fieldbyname('importo_imponibile').asfloat * -1);
                              pni.fieldbyname('importo_indetraibile').asfloat := 0;

                              pni.fieldbyname('importo_imponibile_euro').asfloat := arrotonda
                                (pni.fieldbyname('importo_imponibile').asfloat / testata.fieldbyname('cambio').asfloat);
                              pni.fieldbyname('importo_iva_euro').asfloat := arrotonda
                                (pni.fieldbyname('importo_iva').asfloat / testata.fieldbyname('cambio').asfloat);
                              pni.fieldbyname('importo_indetraibile_euro').asfloat := 0;

                              totale_documento := arrotonda(totale_documento + pni.fieldbyname('importo_imponibile').asfloat +
                                pni.fieldbyname('importo_iva').asfloat);
                              totale_documento_euro := arrotonda(totale_documento_euro + pni.fieldbyname('importo_imponibile_euro').asfloat +
                                pni.fieldbyname('importo_iva_euro').asfloat);
                              totale_imponibile := arrotonda(totale_imponibile + pni.fieldbyname('importo_imponibile').asfloat);
                              totale_imponibile_euro := arrotonda(totale_imponibile_euro + pni.fieldbyname('importo_imponibile_euro').asfloat);
                              totale_iva := arrotonda(totale_iva + pni.fieldbyname('importo_iva').asfloat);
                              totale_iva_euro := arrotonda(totale_iva_euro + pni.fieldbyname('importo_iva_euro').asfloat);

                              iva_sospensione;

                              importo_totale_imponibile := arrotonda
                                (importo_totale_imponibile + pni.fieldbyname('importo_imponibile').asfloat);

                              pni.post;
                            end;

                            controllo_interrompi;

                            iva.next;
                          end;
                          // riga per arrotondamento iva euro
                          if arrotonda(totale_documento / testata.fieldbyname('cambio').asfloat) <> arrotonda(totale_documento_euro) then
                          begin
                            pni.append;

                            pni.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                            riga := riga + 1;
                            pni.fieldbyname('riga').asinteger := riga;
                            pni.fieldbyname('tiv_codice').asstring := tiv_codice_arrotonda_valuta;
                            pni.fieldbyname('importo_imponibile').asfloat := 0;
                            pni.fieldbyname('importo_iva').asfloat := 0;
                            pni.fieldbyname('importo_indetraibile').asfloat := 0;
                            pni.fieldbyname('importo_iva_euro').asfloat := 0;
                            pni.fieldbyname('importo_imponibile_euro').asfloat := arrotonda
                              (totale_documento / testata.fieldbyname('cambio').asfloat - totale_documento_euro);
                            pni.fieldbyname('importo_indetraibile_euro').asfloat := 0;

                            iva_sospensione;

                            pni.post;
                          end;

                          // scrivo righe (prima calcolo le c/p)
                          totale := 0;
                          totale_euro := 0;
                          indice := 0;
                          riga := 0;

                          for i := 0 to 99 do
                          begin
                            tabella_contropartite[i].tiv_codice_contropartita_zucchetti := '';
                            tabella_contropartite[i].gen_codice_contropartita := '';
                            tabella_contropartite[i].importo_contropartita := 0;
                            tabella_contropartite[i].importo_iva_contropartita := 0;
                            tabella_contropartite[i].cambio := 0;
                          end;

                          righe.first;
                          while not righe.eof do
                          begin
                            if righe.fieldbyname('art_codice').asstring <> '' then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'no' then
                              begin
                                gen_codice_tco := righe.fieldbyname('gen_codice').asstring;
                                gen_codice_storno_tco := righe.fieldbyname('gen_codice_storno').asstring;
                              end;

                              //modifica
                              // contropartire multiple a %
                              importo_cpv := 0;
                              a31cag := tmyquery_go.create(nil);
                              a31cag.connection := arc.arcdit;
                              a31cag.sql.add('select * from a31cag where art_codice=:art_codice order by gen_codice');
                              a31cag.parambyname('art_codice').asstring := righe.fieldbyname('art_codice').asstring;
                              a31cag.open;
                              if not a31cag.eof then
                              begin
                                if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                                begin
                                  tabella_contropartite[99].importo_contropartita := (righe.fieldbyname('importo').asfloat);
                                end
                                else
                                begin
                                  tabella_contropartite[99].importo_contropartita := (righe.fieldbyname('importo').asfloat - righe.fieldbyname('importo_iva').asfloat);
                                end;

                                riga := 0;
                                while not a31cag.eof do
                                begin

                                  for i := 0 to 98 do
                                  begin
                                    if (tabella_contropartite[i].gen_codice_contropartita = '') or 
                                       ((tabella_contropartite[i].gen_codice_contropartita = a31cag.fieldbyname('gen_codice').asstring) and
                                        (tabella_contropartite[i].cambio = righe.fieldbyname('cambio_acconto').asfloat)) then
                                    begin
                                      tabella_contropartite[i].gen_codice_contropartita := a31cag.fieldbyname('gen_codice').asstring;
                                      break;
                                    end;

                                  end;

                                  if riga + 1 = a31cag.recordcount then
                                  begin
                                    tabella_contropartite[i].importo_contropartita := tabella_contropartite[i].importo_contropartita + tabella_contropartite[99].importo_contropartita;
                                  end
                                  else
                                  begin
                                    if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                                    begin
                                      importo_cpv := (righe.fieldbyname('importo').asfloat * (a31cag.fieldbyname('percentuale').asfloat / 100));
                                      tabella_contropartite[i].importo_contropartita := arrotonda(tabella_contropartite[i].importo_contropartita + importo_cpv);
                                    end
                                    else
                                    begin
                                      importo_cpv := ((righe.fieldbyname('importo').asfloat - righe.fieldbyname('importo_iva').asfloat) * (a31cag.fieldbyname('percentuale').asfloat / 100));
                                      tabella_contropartite[i].importo_contropartita := arrotonda(tabella_contropartite[i].importo_contropartita + importo_cpv);
                                    end;
                                  end;
                                  tabella_contropartite[99].importo_contropartita := tabella_contropartite[99].importo_contropartita - importo_cpv;

                                  riga := riga + 1;

                                  a31cag.next;
                                end;
                                a31cag.close;
                                freeandnil(a31cag);
                              end
                              else
                              begin
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  (tabella_contropartite[i].gen_codice_contropartita = gen_codice_tco) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice_tco;
                                  tabella_contropartite[i].cambio := righe.fieldbyname('cambio_acconto').asfloat;
                                  if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                                  begin
                                    tabella_contropartite[i].importo_contropartita := arrotonda
                                      (tabella_contropartite[i].importo_contropartita + righe.fieldbyname('importo').asfloat);
                                  end
                                  else
                                  begin
                                    tabella_contropartite[i].importo_contropartita := arrotonda
                                      (tabella_contropartite[i].importo_contropartita + righe.fieldbyname('importo').asfloat -
                                      righe.fieldbyname('importo_iva').asfloat);
                                  end;

                                  break;
                                end;
                              end;
                              end;
                              //modifica fine
                              if (righe.fieldbyname('tipo_movimento').asstring = 'omaggio') or
                                (righe.fieldbyname('tipo_movimento').asstring = 'sconto merce') then
                              begin
                                for i := 0 to 99 do
                                begin
                                  if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                    ((tabella_contropartite[i].gen_codice_contropartita = gen_codice_storno_tco) and
                                    (tabella_contropartite[i].cambio = righe.fieldbyname('cambio_acconto').asfloat)) then
                                  begin
                                    tabella_contropartite[i].gen_codice_contropartita := gen_codice_storno_tco;
                                    tabella_contropartite[i].cambio := righe.fieldbyname('cambio_acconto').asfloat;
                                    if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                                    begin
                                      tabella_contropartite[i].importo_contropartita := arrotonda
                                        (tabella_contropartite[i].importo_contropartita - righe.fieldbyname('importo').asfloat);
                                    end
                                    else
                                    begin
                                      tabella_contropartite[i].importo_contropartita := arrotonda
                                        (tabella_contropartite[i].importo_contropartita - (righe.fieldbyname('importo').asfloat -
                                        righe.fieldbyname('importo_iva').asfloat));
                                    end;

                                    break;
                                  end;
                                end;
                              end;
                            end;

                            controllo_interrompi;

                            righe.next;
                          end;

                          //  vuoti
                          vuodoc.close;
                          if testata.fieldbyname('tcc_codice').asstring <> '' then
                          begin
                            vuodoc.parambyname('tcc_codice').asstring := testata.fieldbyname('tcc_codice').asstring;
                          end
                          else
                          begin
                            vuodoc.parambyname('tcc_codice').asstring := cli.fieldbyname('tcc_codice').asstring;
                          end;
                          vuodoc.parambyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring;
                          vuodoc.parambyname('doc_progressivo_origine').asinteger := testata.fieldbyname('progressivo').asinteger;
                          vuodoc.open;

                          while not vuodoc.eof do
                          begin
                            if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'no' then
                            begin
                              gen_codice_tco := vuodoc.fieldbyname('gen_codice').asstring;
                            end;

                            for i := 0 to 99 do
                            begin
                              if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                ((tabella_contropartite[i].gen_codice_contropartita = gen_codice_tco) and
                                (tabella_contropartite[i].cambio = 0)) then
                              begin
                                tabella_contropartite[i].gen_codice_contropartita := gen_codice_tco;
                                tabella_contropartite[i].importo_contropartita := arrotonda
                                  (tabella_contropartite[i].importo_contropartita + vuodoc.fieldbyname('importo').asfloat);
                                break;
                              end;
                            end;

                            vuodoc.next;
                          end;

                          // contropartita sconti spese e sconti
                          totale_sconto := 0;
                          totale_sconto_finale := 0;
                          totale_trasporto := 0;
                          totale_bollo := 0;
                          totale_incasso := 0;

                          if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                          begin
                            // sconti piede fattura
                            if (testata.fieldbyname('importo_sconto_finale').asfloat + testata.fieldbyname('importo_sconto').asfloat) <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_sconti_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_sconti_fattura').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita - (testata.fieldbyname('importo_sconto_finale').asfloat +
                                    testata.fieldbyname('importo_sconto').asfloat));

                                  break;
                                end;
                              end;
                            end;

                            // sconto cassa
                            if testata.fieldbyname('importo_sconto_cassa').asfloat <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_sconti_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_sconto_cassa').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita - testata.fieldbyname('importo_sconto_cassa').asfloat);

                                  break;
                                end;
                              end;
                            end;

                            // cassa professionisti
                            if testata.fieldbyname('importo_cassa_professionisti').asfloat <> 0 then
                            begin
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita =
                                  testata.fieldbyname('gen_codice_cassa_professionisti').asstring) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := testata.fieldbyname('gen_codice_cassa_professionisti').asstring;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + testata.fieldbyname('importo_cassa_professionisti').asfloat);

                                  break;
                                end;
                              end;
                            end;

                            // spese extra
                            if testata.fieldbyname('importo_spese_extra').asfloat <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_spese_extra').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + testata.fieldbyname('importo_spese_extra').asfloat);

                                  break;
                                end;
                              end;
                            end;

                            // spese trasporto
                            if testata.fieldbyname('importo_spese_trasporto').asfloat <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_trasporto').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + testata.fieldbyname('importo_spese_trasporto').asfloat);

                                  break;
                                end;
                              end;
                            end;

                            // spese bollo
                            if testata.fieldbyname('importo_bollo').asfloat <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_bollo').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  (tabella_contropartite[i].gen_codice_contropartita = gen_codice) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + testata.fieldbyname('importo_bollo').asfloat);

                                  break;
                                end;
                              end;
                            end;

                            // spese incasso
                            if testata.fieldbyname('importo_spese_incasso').asfloat <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_incasso').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + testata.fieldbyname('importo_spese_incasso').asfloat);

                                  break;
                                end;
                              end;
                            end;
                          end
                          else
                          begin
                            // listino con iva

                            importo_sconto_cassa_scorporato := 0;
                            importo_sconto_finale_scorporato := 0;
                            importo_sconto_scorporato := 0;
                            importo_trasporto_scorporato := 0;
                            importo_bollo_scorporato := 0;
                            importo_incasso_scorporato := 0;
                            importo_extra_scorporato := 0;
                            iva.first;
                            while not iva.eof do
                            begin
                              read_tabella(arc.arcdit, 'tiv', 'codice', iva.fieldbyname('tiv_codice').asstring, 'percentuale');

                              importo_sconto_finale_scorporato := importo_sconto_finale_scorporato +
                                arc.scorporo(iva.fieldbyname('importo_sconto_percentuale').asfloat, archivio.fieldbyname('percentuale').asfloat);
                              importo_sconto_scorporato := importo_sconto_scorporato +
                                arc.scorporo(iva.fieldbyname('importo_sconto').asfloat, archivio.fieldbyname('percentuale').asfloat);
                              importo_sconto_cassa_scorporato := importo_sconto_cassa_scorporato +
                                arc.scorporo(iva.fieldbyname('importo_sconto_cassa').asfloat, archivio.fieldbyname('percentuale').asfloat);
                              importo_extra_scorporato := importo_extra_scorporato +
                                arc.scorporo(iva.fieldbyname('importo_extra').asfloat, archivio.fieldbyname('percentuale').asfloat);
                              importo_trasporto_scorporato := importo_trasporto_scorporato +
                                arc.scorporo(iva.fieldbyname('importo_trasporto').asfloat, archivio.fieldbyname('percentuale').asfloat);
                              importo_bollo_scorporato := importo_bollo_scorporato +
                                arc.scorporo(iva.fieldbyname('importo_bollo').asfloat, archivio.fieldbyname('percentuale').asfloat);
                              importo_incasso_scorporato := importo_incasso_scorporato +
                                arc.scorporo(iva.fieldbyname('importo_incasso').asfloat, archivio.fieldbyname('percentuale').asfloat);

                              iva.next;
                            end;

                            // sconti piede fattura
                            if (importo_sconto_finale_scorporato + importo_sconto_scorporato) <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_sconti_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_sconti_fattura').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita - (importo_sconto_finale_scorporato +
                                    importo_sconto_scorporato));
                                  break;
                                end;
                              end;
                            end;

                            // sconto cassa
                            if importo_sconto_cassa_scorporato <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_sconti_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_sconto_cassa').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita - importo_sconto_cassa_scorporato);
                                  break;
                                end;
                              end;
                            end;

                            // spese extra
                            if importo_extra_scorporato <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_spese_extra').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + importo_extra_scorporato);

                                  break;
                                end;
                              end;
                            end;

                            // spese trasporto
                            if importo_trasporto_scorporato <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_trasporto').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + importo_trasporto_scorporato);

                                  break;
                                end;
                              end;
                            end;

                            // spese bollo
                            if importo_bollo_scorporato <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_bollo').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + importo_bollo_scorporato);

                                  break;
                                end;
                              end;
                            end;

                            // spese incasso
                            if importo_incasso_scorporato <> 0 then
                            begin
                              if tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si' then
                              begin
                                gen_codice := gen_codice_spese_tco;
                              end
                              else
                              begin
                                gen_codice := testata.fieldbyname('gen_codice_incasso').asstring;
                              end;
                              for i := 0 to 99 do
                              begin
                                if (tabella_contropartite[i].gen_codice_contropartita = '') or
                                  ((tabella_contropartite[i].gen_codice_contropartita = gen_codice) and
                                  (tabella_contropartite[i].cambio = 0)) then
                                begin
                                  tabella_contropartite[i].gen_codice_contropartita := gen_codice;
                                  tabella_contropartite[i].importo_contropartita := arrotonda
                                    (tabella_contropartite[i].importo_contropartita + importo_incasso_scorporato);

                                  break;
                                end;
                              end;
                            end;
                          end;

                          // cliente
                          pnr.append;

                          pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                          riga := riga + 1;
                          pnr.fieldbyname('riga').asinteger := riga;
                          pnr.fieldbyname('cfg_tipo').asstring := 'C';

                          if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                          begin
                            pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                          end
                          else
                          begin
                            pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                          end;
                          if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                          begin
                            if totale_documento > 0 then
                            begin
                              pnr.fieldbyname('importo_dare').asfloat := totale_documento;
                              pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                (totale_documento / testata.fieldbyname('cambio').asfloat);
                            end
                            else
                            begin
                              pnr.fieldbyname('importo_avere').asfloat := totale_documento * -1;
                              pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                (totale_documento * -1 / testata.fieldbyname('cambio').asfloat);
                            end;
                          end
                          else
                          begin
                            if totale_documento > 0 then
                            begin
                              pnr.fieldbyname('importo_avere').asfloat := totale_documento;
                              pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                (totale_documento / testata.fieldbyname('cambio').asfloat);
                            end
                            else
                            begin
                              pnr.fieldbyname('importo_dare').asfloat := totale_documento * -1;
                              pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                (totale_documento * -1 / testata.fieldbyname('cambio').asfloat);
                            end;
                          end;
                          if (cli.fieldbyname('partitario').asstring = 'si') and (tco.fieldbyname('gestione_partite').asstring = 'si') then
                          begin
                            if (testata.fieldbyname('tipo_documento').asstring = 'nota credito') and
                              (read_tabella(fvr_nc, testata.fieldbyname('progressivo').asinteger)) then
                            begin
                              pnr.fieldbyname('partite').asstring := 'M';
                            end
                            else
                            begin
                              pnr.fieldbyname('partite').asstring := 'A';
                            end;
                          end;

                          codice_partita := pnr.fieldbyname('cfg_tipo').asstring + ' ' + pnr.fieldbyname('cfg_codice').asstring;
                          if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                          begin
                            pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                          end
                          else
                          begin
                            pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                              (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                              pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                              pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                              'partita', codice_partita);
                          end;

                          pnr.parambyname('progressivo').asinteger := pnr.fieldbyname('progressivo').asinteger;
                          pnr.parambyname('riga').asinteger := pnr.fieldbyname('riga').asinteger;

                          pnr.post;
                          pnr.refresh;

                          // scadenziario
                          if pnr.fieldbyname('partite').asstring = 'A' then
                          begin
                            crea_pat(pnr.fieldbyname('cfg_tipo').asstring);
                            verifica_acconti;
                          end
                          else if pnr.fieldbyname('partite').asstring = 'M' then
                          begin
                            crea_pas;
                          end;

                          controllo_interrompi;

                          // riga iva
                          pnr.append;

                          pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                          riga := riga + 1;
                          pnr.fieldbyname('riga').asinteger := riga;
                          pnr.fieldbyname('cfg_tipo').asstring := tco.fieldbyname('cfg_tipo_02').asstring;
                          pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_02').asstring;
                          if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                          begin
                            if totale_iva > 0 then
                            begin
                              pnr.fieldbyname('importo_avere').asfloat := totale_iva;
                              pnr.fieldbyname('importo_avere_euro').asfloat := totale_iva_euro;
                            end
                            else
                            begin
                              pnr.fieldbyname('importo_dare').asfloat := totale_iva * -1;
                              pnr.fieldbyname('importo_dare_euro').asfloat := totale_iva_euro * -1;
                            end;
                          end
                          else
                          begin
                            if totale_iva > 0 then
                            begin
                              pnr.fieldbyname('importo_dare').asfloat := totale_iva;
                              pnr.fieldbyname('importo_dare_euro').asfloat := totale_iva_euro;
                            end
                            else
                            begin
                              pnr.fieldbyname('importo_avere').asfloat := totale_iva * -1;
                              pnr.fieldbyname('importo_avere_euro').asfloat := totale_iva_euro * -1;
                            end;
                          end;
                          if pnr.fieldbyname('cfg_tipo').asstring = 'C' then
                          begin
                            read_tabella(arc.arcdit, 'cli', 'codice', pnr.fieldbyname('cfg_codice').asstring, 'partitario');
                          end
                          else if pnr.fieldbyname('cfg_tipo').asstring = 'F' then
                          begin
                            read_tabella(arc.arcdit, 'frn', 'codice', pnr.fieldbyname('cfg_codice').asstring, 'partitario');
                          end
                          else if pnr.fieldbyname('cfg_tipo').asstring = 'G' then
                          begin
                            read_tabella(arc.arcdit, 'gen', 'codice', pnr.fieldbyname('cfg_codice').asstring, 'partitario');
                          end;
                          if (archivio.fieldbyname('partitario').asstring = 'si') and (tco.fieldbyname('gestione_partite').asstring = 'si') then
                          begin
                            pnr.fieldbyname('partite').asstring := 'A';
                          end;

                          if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                          begin
                            pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                          end
                          else
                          begin
                            pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                              (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                              pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                              pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                              'contropartite', codice_partita);
                          end;

                          pnr.parambyname('progressivo').asinteger := pnr.fieldbyname('progressivo').asinteger;
                          pnr.parambyname('riga').asinteger := pnr.fieldbyname('riga').asinteger;

                          pnr.post;
                          pnr.refresh;

                          partite := pnr.fieldbyname('partite').asstring;

                          // scadenziario
                          if pnr.fieldbyname('partite').asstring = 'A' then
                          begin
                            crea_pat(pnr.fieldbyname('cfg_tipo').asstring);
                          end;

                          controllo_interrompi;

                          // contropartite
                          if testata.fieldbyname('listino_con_iva').asstring = 'si' then
                          begin
                            totale := 0;
                            for i := 0 to 99 do
                            begin
                              totale := arrotonda(totale + tabella_contropartite[i].importo_contropartita);
                            end;
                            if totale <> importo_totale_imponibile then
                            begin
                              tabella_contropartite[0].importo_contropartita := arrotonda
                                (tabella_contropartite[0].importo_contropartita - totale + importo_totale_imponibile);
                            end;
                          end;

                          for i := 0 to 99 do
                          begin
                            if (tabella_contropartite[i].gen_codice_contropartita <> '') and
                              (tabella_contropartite[i].importo_contropartita <> 0) then
                            begin
                              pnr.append;

                              pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                              riga := riga + 1;
                              pnr.fieldbyname('riga').asinteger := riga;
                              pnr.fieldbyname('cfg_tipo').asstring := tco.fieldbyname('cfg_tipo_03').asstring;
                              pnr.fieldbyname('cfg_tipo').asstring := 'G';
                              pnr.fieldbyname('cfg_codice').asstring := tabella_contropartite[i].gen_codice_contropartita;
                              if tabella_contropartite[i].importo_contropartita >= 0 then
                              begin
                                if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                                begin
                                  pnr.fieldbyname('importo_avere').asfloat := tabella_contropartite[i].importo_contropartita;
                                  pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                    (tabella_contropartite[i].importo_contropartita / testata.fieldbyname('cambio').asfloat);
                                end
                                else
                                begin
                                  pnr.fieldbyname('importo_dare').asfloat := tabella_contropartite[i].importo_contropartita;
                                  pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                    (tabella_contropartite[i].importo_contropartita / testata.fieldbyname('cambio').asfloat);
                                end;
                              end
                              else
                              begin
                                if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                                begin
                                  pnr.fieldbyname('importo_dare').asfloat := arrotonda
                                    (tabella_contropartite[i].importo_contropartita * -1);
                                  pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                    (tabella_contropartite[i].importo_contropartita * -1 / testata.fieldbyname('cambio').asfloat);
                                end
                                else
                                begin
                                  pnr.fieldbyname('importo_avere').asfloat := arrotonda
                                    (tabella_contropartite[i].importo_contropartita * -1);
                                  pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                    (tabella_contropartite[i].importo_contropartita * -1 / testata.fieldbyname('cambio').asfloat);
                                end;
                              end;
                              read_tabella(gen, pnr.fieldbyname('cfg_codice').asstring);

                              if (gen.fieldbyname('partitario').asstring = 'si') and (tco.fieldbyname('gestione_partite').asstring = 'si') then
                              begin
                                pnr.fieldbyname('partite').asstring := 'A';
                              end;
                              gestione_cespiti_gen := gen.fieldbyname('gestione_cespiti').asstring;

                              if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                              begin
                                pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                              end
                              else
                              begin
                                pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                                  (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                  pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                  pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                  'contropartite', codice_partita);
                              end;

                              pnr.parambyname('progressivo').asinteger := pnr.fieldbyname('progressivo').asinteger;
                              pnr.parambyname('riga').asinteger := pnr.fieldbyname('riga').asinteger;

                              pnr.post;
                              pnr.refresh;

                              //  iva del margine analitica
                              if (tco.fieldbyname('iva_del_margine_analitica').asstring = 'si') and (pnr.fieldbyname('cfg_tipo').asstring = 'G') then
                              begin
                                read_tabella(gen, pnr.fieldbyname('cfg_codice').asstring);
                                if gen.fieldbyname('iva_del_margine_analitica').asstring = 'si' then
                                begin
                                  if pnr.fieldbyname('importo_dare_euro').asfloat <> 0 then
                                  begin
                                    importo_iva_del_margine := pnr.fieldbyname('importo_dare_euro').asfloat;
                                    importo_iva_del_margine_valuta := pnr.fieldbyname('importo_dare').asfloat;
                                  end
                                  else
                                  begin
                                    importo_iva_del_margine := pnr.fieldbyname('importo_avere_euro').asfloat;
                                    importo_iva_del_margine_valuta := pnr.fieldbyname('importo_avere').asfloat;
                                  end;

                                  if testata.fieldbyname('tipo_documento').asstring = 'nota credito' then
                                  begin
                                    tipo_documento_iva_del_margine := 'nota credito';
                                  end
                                  else
                                  begin
                                    tipo_documento_iva_del_margine := 'fattura';
                                  end;

                                  esegui_carmima(vararrayof([pnr.fieldbyname('progressivo').asinteger, pnr.fieldbyname('riga').asinteger]),
                                    pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                    pnt.fieldbyname('serie_protocollo').asstring, pnt.fieldbyname('data_documento').asdatetime,
                                    pnt.fieldbyname('numero_documento').asinteger, pnt.fieldbyname('serie_documento').asstring,
                                    tipo_documento_iva_del_margine, tco.fieldbyname('tipo_registro_iva').asstring, pnt.fieldbyname('cfg_tipo').asstring,
                                    pnt.fieldbyname('cfg_codice').asstring, pnr.fieldbyname('cfg_codice').asstring, importo_iva_del_margine,
                                    testata.fieldbyname('tiv_codice').asstring, importo_iva_del_margine_valuta, testata.fieldbyname('cambio').asfloat);
                                end;
                              end;

                              // competenze (ratei risconti)
                              if (gen.fieldbyname('gestione_competenze').asstring = 'si') and
                                (tco.fieldbyname('gestione_competenze').asstring = 'si') then
                              begin
                                righe.first;
                                while not righe.eof do
                                begin
                                  if (righe.fieldbyname('tipo_movimento').asstring = 'normale') and
                                    (righe.fieldbyname('gen_codice').asstring = gen.fieldbyname('codice').asstring) and
                                    (righe.fieldbyname('data_inizio_competenza').asdatetime <> 0) and
                                    (righe.fieldbyname('data_fine_competenza').asdatetime <> 0) then
                                  begin
                                    rtr.open;
                                    rtr.append;

                                    rtr.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(rtr.connection), 'rtr_progressivo');
                                    rtr.fieldbyname('gen_codice').asstring := pnr.fieldbyname('cfg_codice').asstring;
                                    rtr.fieldbyname('data_registrazione').asstring := pnt.fieldbyname('data_registrazione').asstring;
                                    rtr.fieldbyname('pnr_progressivo').asinteger := pnr.fieldbyname('progressivo').asinteger;
                                    rtr.fieldbyname('pnr_riga').asinteger := pnr.fieldbyname('riga').asinteger;
                                    rtr.fieldbyname('data_inizio').asdatetime := righe.fieldbyname('data_inizio_competenza').asdatetime;
                                    rtr.fieldbyname('data_fine').asdatetime := righe.fieldbyname('data_fine_competenza').asdatetime;
                                    if pnr.fieldbyname('importo_dare_euro').asfloat <> 0 then
                                    begin
                                      rtr.fieldbyname('importo_dare_euro').asfloat := righe.fieldbyname('importo_euro').asfloat;
                                    end;
                                    if pnr.fieldbyname('importo_avere_euro').asfloat <> 0 then
                                    begin
                                      rtr.fieldbyname('importo_avere_euro').asfloat := righe.fieldbyname('importo_euro').asfloat;
                                    end;
                                    rtr.fieldbyname('descrizione').asstring := pnr.fieldbyname('descrizione').asstring;
                                    rtr.post;
                                    rtr.close;
                                  end;

                                  righe.next;
                                end;
                              end;

                              // scadenziario
                              if pnr.fieldbyname('partite').asstring = 'A' then
                              begin
                                crea_pat(pnr.fieldbyname('cfg_tipo').asstring);
                              end;

                              // cespiti
                              if (gestione_cespiti_tco = 'si') and (gestione_cespiti_gen = 'si') then
                              begin
                                messaggio(100, 'il documento prevede la gestione dell''archivio dei cespiti');

                                crea_cespiti;
                              end;

                              //  cambio sulla riga
                              if (tabella_contropartite[i].cambio <> 0) and
                                (tabella_contropartite[i].cambio <> testata.fieldbyname('cambio').asfloat) then
                              begin
                                importo_cambio :=
                                  arrotonda
                                  (tabella_contropartite[i].importo_contropartita / testata.fieldbyname('cambio').asfloat) -
                                  arrotonda
                                  (tabella_contropartite[i].importo_contropartita / tabella_contropartite[i].cambio);
                                if tabella_contropartite[i].cambio > testata.fieldbyname('cambio').asfloat then
                                begin
                                  gen_cambio := arc.dit.fieldbyname('gen_codice_utile_cambio').asstring;
                                end
                                else
                                begin
                                  gen_cambio := arc.dit.fieldbyname('gen_codice_perdita_cambio').asstring;
                                end;

                                pnr.append;

                                pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                                riga := riga + 1;
                                pnr.fieldbyname('riga').asinteger := riga;
                                pnr.fieldbyname('cfg_tipo').asstring := tco.fieldbyname('cfg_tipo_03').asstring;
                                pnr.fieldbyname('cfg_tipo').asstring := 'G';
                                pnr.fieldbyname('cfg_codice').asstring := tabella_contropartite[i].gen_codice_contropartita;
                                if importo_cambio < 0 then
                                begin
                                  if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                                  begin
                                    pnr.fieldbyname('importo_avere').asfloat := 0;
                                    pnr.fieldbyname('importo_avere_euro').asfloat := importo_cambio;
                                  end
                                  else
                                  begin
                                    pnr.fieldbyname('importo_dare').asfloat := 0;
                                    pnr.fieldbyname('importo_dare_euro').asfloat := importo_cambio;
                                  end;
                                end
                                else
                                begin
                                  if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                                  begin
                                    pnr.fieldbyname('importo_dare').asfloat := 0;
                                    pnr.fieldbyname('importo_dare_euro').asfloat := importo_cambio;
                                  end
                                  else
                                  begin
                                    pnr.fieldbyname('importo_avere').asfloat := 0;
                                    pnr.fieldbyname('importo_avere_euro').asfloat := importo_cambio;
                                  end;
                                end;

                                read_tabella(gen, pnr.fieldbyname('cfg_codice').asstring);
                                if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                                begin
                                  pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                                end
                                else
                                begin
                                  pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                                    (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                    pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                    pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                    'contropartite', codice_partita);
                                end;

                                pnr.post;

                                //  UTILE / PERODTA CAMBIO
                                pnr.append;

                                pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                                riga := riga + 1;
                                pnr.fieldbyname('riga').asinteger := riga;
                                pnr.fieldbyname('cfg_tipo').asstring := tco.fieldbyname('cfg_tipo_03').asstring;
                                pnr.fieldbyname('cfg_tipo').asstring := 'G';
                                pnr.fieldbyname('cfg_codice').asstring := gen_cambio;
                                if importo_cambio < 0 then
                                begin
                                  if tco.fieldbyname('cfg_dare_avere_01').asstring = 'A' then
                                  begin
                                    pnr.fieldbyname('importo_avere').asfloat := 0;
                                    pnr.fieldbyname('importo_avere_euro').asfloat := importo_cambio;
                                  end
                                  else
                                  begin
                                    pnr.fieldbyname('importo_dare').asfloat := 0;
                                    pnr.fieldbyname('importo_dare_euro').asfloat := importo_cambio;
                                  end;
                                end
                                else
                                begin
                                  if tco.fieldbyname('cfg_dare_avere_01').asstring = 'A' then
                                  begin
                                    pnr.fieldbyname('importo_dare').asfloat := 0;
                                    pnr.fieldbyname('importo_dare_euro').asfloat := importo_cambio;
                                  end
                                  else
                                  begin
                                    pnr.fieldbyname('importo_avere').asfloat := 0;
                                    pnr.fieldbyname('importo_avere_euro').asfloat := importo_cambio;
                                  end;
                                end;

                                read_tabella(gen, pnr.fieldbyname('cfg_codice').asstring);
                                if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                                begin
                                  pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                                end
                                else
                                begin
                                  pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                                    (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                    pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                    pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                    'contropartite', codice_partita);
                                end;

                                pnr.post;
                              end;

                              controllo_interrompi;
                            end;
                          end;

                          // controllo quadratura
                          pnt.refresh;
                          totale := pnt.fieldbyname('importo_sbilancio').asfloat;
                          totale_euro := pnt.fieldbyname('importo_sbilancio_euro').asfloat;
                          if (totale <> 0) or (totale_euro <> 0) then
                          begin
                            stringa := pnt.fieldbyname('numero_documento').asstring;
                            if pnt.fieldbyname('serie_documento').asstring <> '' then
                            begin
                              stringa := stringa + '/' + pnt.fieldbyname('serie_documento').asstring;
                            end;
                            messaggio(200, 'il movimento di primanota relativo al documento ' + stringa + ' è sbilanciato' + #13 +
                              'verrà eseguita una rettifica automatica sull''ultima riga del documento');

                            pnr.append;

                            pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                            riga := riga + 1;
                            pnr.fieldbyname('riga').asinteger := riga;
                            pnr.fieldbyname('cfg_tipo').asstring := 'G';
                            pnr.fieldbyname('cfg_codice').asstring := gen_codice_arrotonda_valuta;
                            if totale <> 0 then
                            begin
                            if totale > 0 then
                            begin
                              pnr.fieldbyname('importo_avere').asfloat := totale;
                              pnr.fieldbyname('importo_avere_euro').asfloat := totale_euro;
                            end
                            else
                            begin
                              pnr.fieldbyname('importo_dare').asfloat := arrotonda(totale * -1);
                              pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda(totale_euro * -1);
                            end;
                            end
                            else
                            begin
                              if totale_euro > 0 then
                              begin
                                pnr.fieldbyname('importo_avere').asfloat := totale;
                                pnr.fieldbyname('importo_avere_euro').asfloat := totale_euro;
                              end
                              else
                              begin
                                pnr.fieldbyname('importo_dare').asfloat := arrotonda(totale * -1);
                                pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda(totale_euro * -1);
                              end;
                            end;
                            read_tabella(gen, pnr.fieldbyname('cfg_codice').asstring);

                            if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                            begin
                              pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                            end
                            else
                            begin
                              pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                                (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                'contropartite', codice_partita);
                            end;

                            pnr.parambyname('progressivo').asinteger := pnr.fieldbyname('progressivo').asinteger;
                            pnr.parambyname('riga').asinteger := pnr.fieldbyname('riga').asinteger;

                            pnr.post;
                            pnr.refresh;

                            controllo_interrompi;
                          end;

                          // giro ritenuta d'acconto (con aggiornamento scadenze)
                          //riga := 0;
                          riga_pas := 0;
                          if testata.fieldbyname('importo_ritenuta').asfloat <> 0 then
                          begin
                            // scadenziario ritenuta
                            importo_assegnato_ritenuta := 0;
                            pat_immediato.close;
                            pat_immediato.params[0].asfloat := progressivo_pnt;
                            pat_immediato.params[1].asinteger := 1;
                            pat_immediato.open;
                            righe_pat := pat_immediato.recordcount;
                            pat_immediato.first;
                            while not pat_immediato.eof do
                            begin
                              // riga cliente giroconto ritenuta
                              pnr.append;

                              pnr.fieldbyname('progressivo').asfloat := progressivo_pnt;
                              riga := riga + 1;
                              pnr.fieldbyname('riga').asinteger := riga;
                              pnr.fieldbyname('cfg_tipo').asstring := 'C';

                              if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                              begin
                                pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                              end
                              else
                              begin
                                pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                              end;

                              if testata.fieldbyname('tipo_documento').asstring = 'nota credito' then
                              begin
                                importo_rata_ritenuta := arrotonda(pat_immediato.fieldbyname('importo_dovuto').asfloat * -1 / testata.fieldbyname('importo_totale').asfloat *
                                  testata.fieldbyname('importo_ritenuta').asfloat);
                              end
                              else
                              begin
                                importo_rata_ritenuta := arrotonda(pat_immediato.fieldbyname('importo_dovuto').asfloat / testata.fieldbyname('importo_totale').asfloat *
                                  testata.fieldbyname('importo_ritenuta').asfloat);
                              end;
                              importo_assegnato_ritenuta := arrotonda(importo_assegnato_ritenuta + importo_rata_ritenuta);

                              if (riga = righe_pat) and (importo_assegnato_ritenuta <> testata.fieldbyname('importo_ritenuta').asfloat) then
                              begin
                                importo_rata_ritenuta := arrotonda
                                  (importo_rata_ritenuta + testata.fieldbyname('importo_ritenuta').asfloat - importo_assegnato_ritenuta);
                              end;

                              if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                              begin
                                pnr.fieldbyname('importo_avere').asfloat := importo_rata_ritenuta;
                                pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                  (importo_rata_ritenuta / testata.fieldbyname('cambio').asfloat);
                              end
                              else
                              begin
                                pnr.fieldbyname('importo_dare').asfloat := importo_rata_ritenuta;
                                pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                  (importo_rata_ritenuta / testata.fieldbyname('cambio').asfloat);
                              end;

                              pnr.fieldbyname('partite').asstring := 'M';

                              if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                              begin
                                pnr.fieldbyname('descrizione').asstring := trim(testata.fieldbyname('descrizione_primanota').asstring +
                                  ' ') + 'giroconto ritenuta d''acconto';
                              end
                              else
                              begin
                                pnr.fieldbyname('descrizione').asstring := trim(desautpri.descrizione_automatica_primanota
                                  (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                  pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                  pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                  'contropartite', codice_partita) + ' ') + 'giroconto ritenuta d''acconto';
                              end;

                              pas.close;
                              pas.parambyname('progressivo').asinteger := 0;
                              pas.parambyname('riga').asinteger := 0;
                              pas.open;
                              pas.append;

                              pas.fieldbyname('progressivo').asfloat := pat_immediato.fieldbyname('progressivo').asfloat;
                              riga_pas := riga_pas + 1;
                              pas.fieldbyname('riga').asinteger := riga_pas;
                              pas.fieldbyname('data_registrazione').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                              pas.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                              pas.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                              pas.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                              pas.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;

                              if pnr.fieldbyname('importo_dare').asfloat > 0 then
                              begin
                                pas.fieldbyname('importo_pagato').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_dare').asfloat * -1);
                                pas.fieldbyname('importo_pagato_euro').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_dare_euro').asfloat * -1);
                              end;
                              if pnr.fieldbyname('importo_avere').asfloat > 0 then
                              begin
                                pas.fieldbyname('importo_pagato').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_avere').asfloat);
                                pas.fieldbyname('importo_pagato_euro').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_avere_euro').asfloat);
                              end;

                              pas.fieldbyname('descrizione').asstring := pnr.fieldbyname('descrizione').asstring;
                              pas.fieldbyname('pnr_progressivo').asfloat := pnr.fieldbyname('progressivo').asfloat;
                              pas.fieldbyname('pnr_riga').asinteger := pnr.fieldbyname('riga').asinteger;

                              pas.post;

                              pnr.post;

                              controllo_interrompi;

                              pat_immediato.next;
                            end;

                            // riga c/p giroconto ritenuta
                            pnr.append;

                            pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                            riga := riga + 1;
                            pnr.fieldbyname('riga').asinteger := riga;
                            pnr.fieldbyname('cfg_tipo').asstring := 'G';
                            pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('gen_codice_ritenuta').asstring;
                            if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                            begin
                              pnr.fieldbyname('importo_dare').asfloat := testata.fieldbyname('importo_ritenuta').asfloat;
                              pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                (testata.fieldbyname('importo_ritenuta').asfloat / testata.fieldbyname('cambio').asfloat);
                            end
                            else
                            begin
                              pnr.fieldbyname('importo_avere').asfloat := testata.fieldbyname('importo_ritenuta').asfloat;
                              pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                (testata.fieldbyname('importo_ritenuta').asfloat / testata.fieldbyname('cambio').asfloat);
                            end;

                            if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                            begin
                              pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                            end
                            else
                            begin
                              pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                                (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                'contropartite', codice_partita);
                            end;

                            pnr.post;
                          end;

                          // giro enasarco (con aggiornamento scadenze)
                          //riga := 0;
                          if testata.fieldbyname('importo_enasarco').asfloat <> 0 then
                          begin
                            // scadenziario enasarco
                            importo_assegnato_ritenuta := 0;
                            pat_immediato.close;
                            pat_immediato.params[0].asfloat := progressivo_pnt;
                            pat_immediato.params[1].asinteger := 1;
                            pat_immediato.open;
                            righe_pat := pat_immediato.recordcount;
                            pat_immediato.first;
                            while not pat_immediato.eof do
                            begin
                              // riga cliente giroconto enasarco
                              pnr.append;

                              pnr.fieldbyname('progressivo').asfloat := progressivo_pnt;
                              riga := riga + 1;
                              pnr.fieldbyname('riga').asinteger := riga;
                              pnr.fieldbyname('cfg_tipo').asstring := 'C';

                              if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                              begin
                                pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                              end
                              else
                              begin
                                pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                              end;

                              importo_rata_ritenuta := arrotonda(pat_immediato.fieldbyname('importo_dovuto').asfloat / testata.fieldbyname('importo_totale').asfloat *
                                testata.fieldbyname('importo_enasarco').asfloat);
                              importo_assegnato_ritenuta := arrotonda(importo_assegnato_ritenuta + importo_rata_ritenuta);

                              if (riga = righe_pat) and (importo_assegnato_ritenuta <> testata.fieldbyname('importo_enasarco').asfloat) then
                              begin
                                importo_rata_ritenuta := arrotonda
                                  (importo_rata_ritenuta + testata.fieldbyname('importo_enasarco').asfloat - importo_assegnato_ritenuta);
                              end;

                              if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                              begin
                                pnr.fieldbyname('importo_avere').asfloat := importo_rata_ritenuta;
                                pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                  (importo_rata_ritenuta / testata.fieldbyname('cambio').asfloat);
                              end
                              else
                              begin
                                pnr.fieldbyname('importo_dare').asfloat := importo_rata_ritenuta;
                                pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                  (importo_rata_ritenuta / testata.fieldbyname('cambio').asfloat);
                              end;

                              pnr.fieldbyname('partite').asstring := 'M';

                              if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                              begin
                                pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                              end
                              else
                              begin
                                pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                                  (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                  pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                  pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                  'contropartite', codice_partita);
                              end;

                              pas.close;
                              pas.parambyname('progressivo').asinteger := 0;
                              pas.parambyname('riga').asinteger := 0;
                              pas.open;
                              pas.append;

                              pas.fieldbyname('progressivo').asfloat := pat_immediato.fieldbyname('progressivo').asfloat;
                              riga_pas := riga_pas + 1;
                              pas.fieldbyname('riga').asinteger := riga_pas;
                              pas.fieldbyname('data_registrazione').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                              pas.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                              pas.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                              pas.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                              pas.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;

                              if pnr.fieldbyname('importo_dare').asfloat > 0 then
                              begin
                                pas.fieldbyname('importo_pagato').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_dare').asfloat * -1);
                                pas.fieldbyname('importo_pagato_euro').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_dare_euro').asfloat * -1);
                              end;
                              if pnr.fieldbyname('importo_avere').asfloat > 0 then
                              begin
                                pas.fieldbyname('importo_pagato').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_avere').asfloat);
                                pas.fieldbyname('importo_pagato_euro').asfloat := arrotonda
                                  (pnr.fieldbyname('importo_avere_euro').asfloat);
                              end;

                              pas.fieldbyname('pnr_progressivo').asfloat := pnr.fieldbyname('progressivo').asfloat;
                              pas.fieldbyname('pnr_riga').asinteger := pnr.fieldbyname('riga').asinteger;

                              pas.post;

                              pnr.post;

                              controllo_interrompi;

                              pat_immediato.next;
                            end;

                            // riga c/p giroconto enasarco
                            pnr.append;

                            pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
                            riga := riga + 1;
                            pnr.fieldbyname('riga').asinteger := riga;
                            pnr.fieldbyname('cfg_tipo').asstring := 'G';
                            pnr.fieldbyname('cfg_codice').asstring := testata.fieldbyname('gen_codice_cassa_professionisti').asstring;
                            if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
                            begin
                              pnr.fieldbyname('importo_dare').asfloat := testata.fieldbyname('importo_enasarco').asfloat;
                              pnr.fieldbyname('importo_dare_euro').asfloat := arrotonda
                                (testata.fieldbyname('importo_enasarco').asfloat / testata.fieldbyname('cambio').asfloat);
                            end
                            else
                            begin
                              pnr.fieldbyname('importo_avere').asfloat := testata.fieldbyname('importo_enasarco').asfloat;
                              pnr.fieldbyname('importo_avere_euro').asfloat := arrotonda
                                (testata.fieldbyname('importo_enasarco').asfloat / testata.fieldbyname('cambio').asfloat);
                            end;

                            if testata.fieldbyname('descrizione_primanota').asstring <> '' then
                            begin
                              pnr.fieldbyname('descrizione').asstring := testata.fieldbyname('descrizione_primanota').asstring;
                            end
                            else
                            begin
                              pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
                                (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
                                pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
                                pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
                                'contropartite', codice_partita);
                            end;

                            pnr.post;
                          end;

                          // pagamento immediato
                          if ((tpa.fieldbyname('pagamento_immediato').asstring = 'si') or (testata.fieldbyname('importo_incassato').asfloat <> 0)) and
                            (tpa.fieldbyname('gen_codice').asstring <> '') and (tpa.fieldbyname('tco_codice').asstring <> '') then
                          begin
                            pagimm.pagamento_immediato(progressivo_pnt, tpa.fieldbyname('gen_codice').asstring,
                              tpa.fieldbyname('tco_codice').asstring, tpa.fieldbyname('data_registrazione').asstring,
                              testata.fieldbyname('importo_incassato').asfloat, false,
                              testata.fieldbyname('incasso_saldo').asstring, tpa.fieldbyname('gen_codice_abbuoni').asstring);
                          end
                          else if tpa.fieldbyname('chiusura_cliente').asstring = 'si' then
                          begin
                            pagimm.pagamento_immediato(progressivo_pnt, gen_codice_chiusura_cliente,
                              tco_codice_chiusura_cliente, 'data fiscale', 0,
                              false, true);
                          end;
                        end;
                      end;
                    end;
                  end;

                  // salta tutto per fatture da negozio
                  if testata.fieldbyname('tipo_documento').asstring = 'fattura immediata' then
                  begin
                    neg.close;
                    neg.parambyname('progressivo').asinteger := testata.fieldbyname('progressivo').asinteger;
                    neg.open;
                  end
                  else
                  begin
                    neg.close;
                  end;

                  // provvigioni e statistiche
                  // calcolo l'incidenza degli sconti di testata per sottrarli dall'imponibile per il conteggio
                  importo_totale_provvigioni := 0;
                  tipo_provvigioni_agente := 0;
                  percentuale_sconti_provvigioni_agente := 0;
                  tipo_provvigioni_capo_area := 0;
                  percentuale_sconti_provvigioni_capo_area := 0;
                  read_tabella(arc.arcdit, 'tag', 'codice', testata.fieldbyname('tag_codice').asstring,
                    'provvigioni_netto_sconti, provvigioni_netto_sconto_cassa, tag_codice_capo_area');
                  if archivio.fieldbyname('provvigioni_netto_sconti').asstring = 'si' then
                  begin
                    tipo_provvigioni_agente := tipo_provvigioni_agente + 1;
                  end;
                  if archivio.fieldbyname('provvigioni_netto_sconto_cassa').asstring = 'si' then
                  begin
                    tipo_provvigioni_agente := tipo_provvigioni_agente + 2;
                  end;

                  if testata.fieldbyname('tag_codice_ca').asstring <> '' then
                  begin
                    if read_tabella(arc.arcdit, 'tag', 'codice', testata.fieldbyname('tag_codice_ca').asstring,
                      'provvigioni_netto_sconti, provvigioni_netto_sconto_cassa') then
                    begin
                      if archivio.fieldbyname('provvigioni_netto_sconti').asstring = 'si' then
                      begin
                        tipo_provvigioni_capo_area := tipo_provvigioni_capo_area + 1;
                      end;
                      if archivio.fieldbyname('provvigioni_netto_sconto_cassa').asstring = 'si' then
                      begin
                        tipo_provvigioni_capo_area := tipo_provvigioni_capo_area + 2;
                      end;
                    end;
                  end
                  else
                  begin
                    if read_tabella(arc.arcdit, 'tag', 'codice', archivio.fieldbyname('tag_codice_capo_area').asstring,
                      'provvigioni_netto_sconti, provvigioni_netto_sconto_cassa') then
                    begin
                      if archivio.fieldbyname('provvigioni_netto_sconti').asstring = 'si' then
                      begin
                        tipo_provvigioni_capo_area := tipo_provvigioni_capo_area + 1;
                      end;
                      if archivio.fieldbyname('provvigioni_netto_sconto_cassa').asstring = 'si' then
                      begin
                        tipo_provvigioni_capo_area := tipo_provvigioni_capo_area + 2;
                      end;
                    end;
                  end;

                  righe.first;
                  while not righe.eof do
                  begin
                    if righe.fieldbyname('tipo_movimento').asstring = 'normale' then
                    begin
                      importo_totale_provvigioni := importo_totale_provvigioni + righe.fieldbyname('importo').asfloat;
                    end;

                    righe.next;
                  end;

                  if tipo_provvigioni_agente = 1 then
                  begin
                    try
                      if importo_totale_provvigioni <> 0 then
                      begin
                        percentuale_sconti_provvigioni_agente :=
                          (testata.fieldbyname('importo_sconto').asfloat + testata.fieldbyname('importo_sconto_finale').asfloat) *
                          100 / importo_totale_provvigioni;
                      end
                      else
                      begin
                        percentuale_sconti_provvigioni_agente := 0;
                      end;
                    except
                      percentuale_sconti_provvigioni_agente := 0;
                    end;
                  end
                  else if tipo_provvigioni_agente = 2 then
                  begin
                    try
                      if importo_totale_provvigioni <> 0 then
                      begin
                        percentuale_sconti_provvigioni_agente :=
                          (testata.fieldbyname('importo_sconto_cassa').asfloat) * 100 / importo_totale_provvigioni;
                      end
                      else
                      begin
                        percentuale_sconti_provvigioni_agente := 0;
                      end;
                    except
                      percentuale_sconti_provvigioni_agente := 0;
                    end;
                  end
                  else if tipo_provvigioni_agente = 3 then
                  begin
                    try
                      if importo_totale_provvigioni <> 0 then
                      begin
                        percentuale_sconti_provvigioni_agente :=
                          (testata.fieldbyname('importo_sconto').asfloat + testata.fieldbyname('importo_sconto_finale').asfloat +
                          testata.fieldbyname('importo_sconto_cassa').asfloat) * 100 / importo_totale_provvigioni;
                      end
                      else
                      begin
                        percentuale_sconti_provvigioni_agente := 0;
                      end;
                    except
                      percentuale_sconti_provvigioni_agente := 0;
                    end;
                  end;

                  if tipo_provvigioni_capo_area = 1 then
                  begin
                    try
                      if importo_totale_provvigioni <> 0 then
                      begin
                        percentuale_sconti_provvigioni_capo_area :=
                          (testata.fieldbyname('importo_sconto').asfloat + testata.fieldbyname('importo_sconto_finale').asfloat) *
                          100 / importo_totale_provvigioni;
                      end
                      else
                      begin
                        percentuale_sconti_provvigioni_capo_area := 0;
                      end;
                    except
                      percentuale_sconti_provvigioni_capo_area := 0;
                    end;
                  end
                  else if tipo_provvigioni_capo_area = 2 then
                  begin
                    try
                      if importo_totale_provvigioni <> 0 then
                      begin
                        percentuale_sconti_provvigioni_capo_area :=
                          (testata.fieldbyname('importo_sconto_cassa').asfloat) * 100 / importo_totale_provvigioni;
                      end
                      else
                      begin
                        percentuale_sconti_provvigioni_capo_area := 0;
                      end;
                    except
                      percentuale_sconti_provvigioni_capo_area := 0;
                    end;
                  end
                  else if tipo_provvigioni_capo_area = 3 then
                  begin
                    try
                      if importo_totale_provvigioni <> 0 then
                      begin
                        percentuale_sconti_provvigioni_capo_area :=
                          (testata.fieldbyname('importo_sconto').asfloat + testata.fieldbyname('importo_sconto_finale').asfloat +
                          testata.fieldbyname('importo_sconto_cassa').asfloat) * 100 / importo_totale_provvigioni;
                      end
                      else
                      begin
                        percentuale_sconti_provvigioni_capo_area := 0;
                      end;
                    except
                      percentuale_sconti_provvigioni_capo_area := 0;
                    end;
                  end;

                  spese_trasporto_fattura := arrotonda(testata.fieldbyname('importo_spese_trasporto').asfloat / testata.fieldbyname('cambio').asfloat);

                  righe.first;
                  while not righe.eof do
                  begin
                    righe.edit;

                    if neg.isempty then
                    begin
                      if (righe.fieldbyname('kit').asstring <> 'mp') or
                        ((righe.fieldbyname('kit').asstring = 'mp') and
                        (arc.dit.fieldbyname('modalita_kit').asstring <> 'kit')) then
                      begin
                        if righe.fieldbyname('art_codice').asstring <> '' then
                        begin
                          importo_imponibile_provvigioni := righe.fieldbyname('importo').asfloat;
                          importo_imponibile_provvigioni_ca := righe.fieldbyname('importo').asfloat;
                          importo_imponibile_provvigioni := importo_imponibile_provvigioni * (100 - percentuale_sconti_provvigioni_agente) / 100;
                          importo_imponibile_provvigioni_ca := importo_imponibile_provvigioni_ca * (100 - percentuale_sconti_provvigioni_capo_area) / 100;

                          if righe.fieldbyname('conteggio_su_margine').asstring = 'si' then
                          begin
                            if righe.fieldbyname('quantita').asfloat = 0 then
                            begin
                              importo_imponibile_provvigioni := importo_imponibile_provvigioni - righe.fieldbyname('costo_unitario').asfloat;
                              importo_imponibile_provvigioni_ca := importo_imponibile_provvigioni_ca - righe.fieldbyname('costo_unitario').asfloat;
                            end
                            else
                            begin
                              importo_imponibile_provvigioni := importo_imponibile_provvigioni -
                                arrotonda(righe.fieldbyname('quantita').asfloat * righe.fieldbyname('costo_unitario').asfloat);
                              importo_imponibile_provvigioni_ca := importo_imponibile_provvigioni_ca -
                                arrotonda(righe.fieldbyname('quantita').asfloat * righe.fieldbyname('costo_unitario').asfloat);
                            end;
                          end;

                          // calcolo provvigioni sulla riga del documento
                          if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                          begin
                            righe.fieldbyname('importo_percentuale_provvigioni').asfloat := arrotonda
                              (importo_imponibile_provvigioni * righe.fieldbyname('percentuale_provvigioni').asfloat / 100);
                            righe.fieldbyname('importo_percentuale_provv_ca').asfloat := arrotonda
                              (importo_imponibile_provvigioni_ca * righe.fieldbyname('percentuale_provvigioni_ca').asfloat / 100);
                          end
                          else
                          begin
                            righe.fieldbyname('importo_percentuale_provvigioni').asfloat := arrotonda
                              ((importo_imponibile_provvigioni - righe.fieldbyname('importo_iva').asfloat) *
                              righe.fieldbyname('percentuale_provvigioni').asfloat / 100);
                            righe.fieldbyname('importo_percentuale_provv_ca').asfloat := arrotonda
                              ((importo_imponibile_provvigioni_ca - righe.fieldbyname('importo_iva').asfloat) *
                              righe.fieldbyname('percentuale_provvigioni_ca').asfloat / 100);
                          end;

                          if righe.fieldbyname('tipo_movimento').asstring = 'normale' then
                          begin
                            // provvigioni agente
                            if not((righe.fieldbyname('importo_percentuale_provvigioni').asfloat = 0) and
                              (righe.fieldbyname('importo_provvigioni').asfloat = 0)) then
                            begin
                              pro.close;
                              pro.sql.clear;
                              pro.sql.add('select * from pro where tag_codice = :tag_codice');
                              pro.sql.add('and data_documento = :data_documento');
                              pro.sql.add('and numero_documento = :numero_documento');
                              pro.sql.add('and serie_documento = :serie_documento');
                              pro.sql.add('and pat_progressivo = :pat_progressivo');

                              pro.parambyname('tag_codice').asstring := testata.fieldbyname('tag_codice').asstring;
                              pro.parambyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                              pro.parambyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                              pro.parambyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                              pro.parambyname('pat_progressivo').asinteger := 0;

                              pro.open;
                              if pro.isempty then
                              begin
                                pro.append;

                                pro.fieldbyname('tag_codice').asstring := testata.fieldbyname('tag_codice').asstring;
                                pro.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                                pro.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                                pro.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                                pro.fieldbyname('pat_progressivo').asinteger := 0;
                                if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                                begin
                                  pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                                end
                                else
                                begin
                                  pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                                end;
                                pro.fieldbyname('tva_codice').asstring := testata.fieldbyname('tva_codice').asstring;
                                pro.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;

                                pro.fieldbyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
                                pro.fieldbyname('doc_progressivo_origine').asfloat := testata.fieldbyname('progressivo').asfloat;

                                pro.post;

                                pro.close;
                                pro.open;
                              end;
                              pro.edit;

                              if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                              begin
                                pro.fieldbyname('importo_imponibile').asfloat := arrotonda
                                  (pro.fieldbyname('importo_imponibile').asfloat + importo_imponibile_provvigioni * segno);
                              end
                              else
                              begin
                                pro.fieldbyname('importo_imponibile').asfloat := arrotonda
                                  (pro.fieldbyname('importo_imponibile').asfloat + importo_imponibile_provvigioni * segno -
                                  righe.fieldbyname('importo_iva').asfloat * segno);
                              end;

                              pro.fieldbyname('importo_provvigioni').asfloat := arrotonda
                                (pro.fieldbyname('importo_provvigioni').asfloat +
                                righe.fieldbyname('importo_percentuale_provvigioni').asfloat * segno +
                                righe.fieldbyname('importo_provvigioni').asfloat * segno);

                              pro.post;

                              controllo_interrompi;
                            end;

                            // provvigioni capo area (o secondo agente)
                            if not((righe.fieldbyname('importo_percentuale_provv_ca').asfloat = 0) and
                              (righe.fieldbyname('importo_provvigioni_ca').asfloat = 0)) and
                              ((testata.fieldbyname('tag_codice_ca').asstring <> '') or
                              (tag.fieldbyname('tag_codice_capo_area').asstring <> '')) then
                            begin
                              if not tag.eof then
                              begin
                                pro.close;
                                pro.sql.clear;
                                pro.sql.add('select * from pro where tag_codice = :tag_codice');
                                pro.sql.add('and data_documento = :data_documento');
                                pro.sql.add('and numero_documento = :numero_documento');
                                pro.sql.add('and serie_documento = :serie_documento');
                                pro.sql.add('and pat_progressivo = :pat_progressivo');

                                if testata.fieldbyname('tag_codice_ca').asstring <> '' then
                                begin
                                  pro.parambyname('tag_codice').asstring := testata.fieldbyname('tag_codice_ca').asstring;
                                end
                                else
                                begin
                                  pro.parambyname('tag_codice').asstring := tag.fieldbyname('tag_codice_capo_area').asstring;
                                end;
                                pro.parambyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                                pro.parambyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                                pro.parambyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                                pro.parambyname('pat_progressivo').asinteger := 0;

                                pro.open;
                                if pro.isempty then
                                begin
                                  pro.append;

                                  if testata.fieldbyname('tag_codice_ca').asstring <> '' then
                                  begin
                                    pro.fieldbyname('tag_codice').asstring := testata.fieldbyname('tag_codice_ca').asstring;
                                  end
                                  else
                                  begin
                                    pro.fieldbyname('tag_codice').asstring := tag.fieldbyname('tag_codice_capo_area').asstring;
                                  end;
                                  pro.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                                  pro.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                                  pro.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                                  pro.fieldbyname('pat_progressivo').asinteger := 0;
                                  if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                                  begin
                                    pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                                  end
                                  else
                                  begin
                                    pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                                  end;
                                  pro.fieldbyname('tva_codice').asstring := testata.fieldbyname('tva_codice').asstring;
                                  pro.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;
                                  pro.fieldbyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
                                  pro.fieldbyname('doc_progressivo_origine').asfloat := testata.fieldbyname('progressivo').asfloat;

                                  pro.post;
                                  pro.close;
                                  pro.open;
                                end;
                                pro.edit;

                                if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                                begin
                                  pro.fieldbyname('importo_imponibile').asfloat := arrotonda
                                    (pro.fieldbyname('importo_imponibile').asfloat + importo_imponibile_provvigioni_ca * segno);
                                end
                                else
                                begin
                                  pro.fieldbyname('importo_imponibile').asfloat := arrotonda
                                    (pro.fieldbyname('importo_imponibile').asfloat + importo_imponibile_provvigioni_ca * segno -
                                    righe.fieldbyname('importo_iva').asfloat * segno);
                                end;
                                pro.fieldbyname('importo_provvigioni').asfloat := arrotonda
                                  (pro.fieldbyname('importo_provvigioni').asfloat +
                                  righe.fieldbyname('importo_percentuale_provv_ca').asfloat * segno +
                                  righe.fieldbyname('importo_provvigioni_ca').asfloat * segno);

                                pro.post;

                                controllo_interrompi;
                              end;
                            end;

                            // provvigioni multilivello
                            if arc.dit.fieldbyname('provvigioni_multilivello').asstring = 'si' then
                            begin
                              archivio.close;
                              if testata.fieldbyname('tipo_documento').asstring = 'fattura differita' then
                              begin
                                read_tabella(arc.arcdit, 'dvr', 'progressivo;riga',
                                  vararrayof([righe.fieldbyname('doc_progressivo_origine').asinteger, righe.fieldbyname('doc_riga_origine').asinteger]),
                                  'documento_origine, doc_progressivo_origine');
                                if archivio.fieldbyname('documento_origine').asstring = 'ordine ven' then
                                begin
                                  read_tabella(arc.arcdit, 'ovt', 'progressivo', archivio.fieldbyname('doc_progressivo_origine').asinteger, 'tipo_documento, progressivo');
                                end
                                else
                                begin
                                  archivio.close;
                                end;
                              end
                              else
                              begin
                                if righe.fieldbyname('documento_origine').asstring = 'ordine ven' then
                                begin
                                  read_tabella(arc.arcdit, 'ovt', 'progressivo', righe.fieldbyname('doc_progressivo_origine').asinteger, 'tipo_documento, progressivo');
                                end;
                              end;

                              if not archivio.isempty and (archivio.fieldbyname('tipo_documento').asstring = 'ordine') then
                              begin
                                read_tabella(prvm, archivio.fieldbyname('progressivo').asinteger);
                                while not prvm.eof do
                                begin
                                  pro.close;
                                  pro.sql.clear;
                                  pro.sql.add('select * from pro where tag_codice = :tag_codice');
                                  pro.sql.add('and data_documento = :data_documento');
                                  pro.sql.add('and numero_documento = :numero_documento');
                                  pro.sql.add('and serie_documento = :serie_documento');
                                  pro.sql.add('and pat_progressivo = :pat_progressivo');

                                  pro.parambyname('tag_codice').asstring := prvm.fieldbyname('tag_codice').asstring;
                                  pro.parambyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                                  pro.parambyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                                  pro.parambyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                                  pro.parambyname('pat_progressivo').asinteger := 0;

                                  pro.open;
                                  if pro.isempty then
                                  begin
                                    pro.append;

                                    pro.fieldbyname('tag_codice').asstring := prvm.fieldbyname('tag_codice').asstring;
                                    pro.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                                    pro.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                                    pro.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                                    pro.fieldbyname('pat_progressivo').asinteger := 0;
                                    if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                                    begin
                                      pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                                    end
                                    else
                                    begin
                                      pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                                    end;
                                    pro.fieldbyname('tva_codice').asstring := testata.fieldbyname('tva_codice').asstring;
                                    pro.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;
                                    pro.fieldbyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
                                    pro.fieldbyname('doc_progressivo_origine').asfloat := testata.fieldbyname('progressivo').asfloat;

                                    pro.post;
                                    pro.close;
                                    pro.open;
                                  end;
                                  pro.edit;

                                  pro.fieldbyname('importo_imponibile').asfloat := arrotonda
                                    (pro.fieldbyname('importo_imponibile').asfloat + importo_imponibile_provvigioni);

                                  pro.fieldbyname('importo_provvigioni').asfloat := arrotonda
                                    (pro.fieldbyname('importo_provvigioni').asfloat +
                                    importo_imponibile_provvigioni * prvm.fieldbyname('percentuale').asfloat / 100);

                                  pro.post;

                                  prvm.next;
                                end;
                              end;
                            end;

                          end;

                          // aggiorna statistiche
                          decodedate(testata.fieldbyname('data_documento').asdatetime, anno, mese, giorno);

                          quantita_stv := arrotonda(righe.fieldbyname('tum_quantita_base').asfloat * segno, 4);

                          if righe.fieldbyname('tipo_movimento').asstring = 'normale' then
                          begin
                            if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                            begin
                              importo_stv := arrotonda(righe.fieldbyname('importo_euro').asfloat * segno);
                            end
                            else
                            begin
                              importo_stv := arrotonda((righe.fieldbyname('importo_euro').asfloat - righe.fieldbyname('importo_iva_euro').asfloat) * segno);
                            end;
                          end
                          else
                          begin
                            importo_stv := 0;
                          end;

                          importo_provvigioni_stv := arrotonda(righe.fieldbyname('importo_percentuale_provvigioni').asfloat * segno / testata.fieldbyname('cambio').asfloat +
                            righe.fieldbyname('importo_provvigioni').asfloat * segno / testata.fieldbyname('cambio').asfloat +
                            righe.fieldbyname('importo_percentuale_provv_ca').asfloat * segno / testata.fieldbyname('cambio').asfloat +
                            righe.fieldbyname('importo_provvigioni_ca').asfloat * segno / testata.fieldbyname('cambio').asfloat);

                          if righe.fieldbyname('documento_origine').asstring = 'ddt ven' then
                          begin
                            ind.close;
                            ind.parambyname('progressivo').asinteger := righe.fieldbyname('doc_progressivo_origine').asinteger;
                            ind.open;
                            ind_codice := ind.fieldbyname('indirizzo').asstring;
                          end
                          else
                          begin
                            ind_codice := testata.fieldbyname('indirizzo').asstring;
                          end;
                          crea_stv(testata.fieldbyname('tag_codice').asstring, testata.fieldbyname('cli_codice').asstring,
                            ind_codice, righe.fieldbyname('art_codice').asstring, anno, mese,
                            quantita_stv, importo_stv, importo_provvigioni_stv);

                          controllo_interrompi;

                          // intra
                          if testata.fieldbyname('intra').asstring = 'si' then
                          begin
                            if progressivo_intra = 0 then
                            begin
                              // crea testata per nuovo documento
                              ntt.close;

                              progressivo_intra := arc.setta_valore_generatore(tmyconnection_go(ntt.connection), 'ntt_progressivo');
                              ntt.parambyname('progressivo').asinteger := progressivo_intra;
                              if testata.fieldbyname('rettifica_intra').asstring = 'si' then
                              begin
                                ntt.parambyname('acquisti_cessioni').asstring := 'rettifica cessioni';
                                ntt.parambyname('mese_rettifica').asinteger := testata.fieldbyname('mese_rettifica_intra').asinteger;
                                ntt.parambyname('trimestre_rettifica').asinteger := testata.fieldbyname('trimestre_rettifica_intra').asinteger;
                                ntt.parambyname('anno_rettifica').asinteger := testata.fieldbyname('anno_rettifica_intra').asinteger;
                                if segno = 1 then
                                begin
                                  ntt.parambyname('segno_rettifica').asstring := 'positivo';
                                end
                                else
                                begin
                                  ntt.parambyname('segno_rettifica').asstring := 'negativo';
                                end;
                              end
                              else
                              begin
                                ntt.parambyname('acquisti_cessioni').asstring := 'cessioni';
                                ntt.parambyname('mese_rettifica').asinteger := 0;
                                ntt.parambyname('trimestre_rettifica').asinteger := 0;
                                ntt.parambyname('anno_rettifica').asinteger := 0;
                                ntt.parambyname('segno_rettifica').asstring := '';
                              end;
                              ntt.parambyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                              ntt.parambyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                              ntt.parambyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;

                              if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                              begin
                                read_tabella(arc.arcdit, 'nom', 'codice', testata.fieldbyname('cli_codice_fatturazione').asstring);
                              end
                              else
                              begin
                                read_tabella(arc.arcdit, 'nom', 'codice', testata.fieldbyname('cli_codice').asstring);
                              end;

                              if archivio.fieldbyname('nom_codice_rappresentanza').asstring <> '' then
                              begin
                                nom_rappresentanza.close;
                                nom_rappresentanza.parambyname('codice').asstring := archivio.fieldbyname('nom_codice_rappresentanza').asstring;
                                nom_rappresentanza.parambyname('data').asdate := testata.fieldbyname('data_documento').asdatetime;
                                nom_rappresentanza.open;
                                if not nom_rappresentanza.isempty then
                                begin
                                  if nom_rappresentanza.fieldbyname('nmd_partita_iva').asstring <> '' then
                                  begin
                                    ntt.parambyname('partita_iva').asstring := nom_rappresentanza.fieldbyname('nmd_partita_iva').asstring;
                                  end
                                  else
                                  begin
                                    ntt.parambyname('partita_iva').asstring := nom_rappresentanza.fieldbyname('partita_iva').asstring;
                                  end;
                                end
                                else
                                begin
                                  ntt.parambyname('partita_iva').asstring := archivio.fieldbyname('partita_iva').asstring;
                                end;
                              end
                              else
                              begin
                                ntt.parambyname('partita_iva').asstring := archivio.fieldbyname('partita_iva').asstring;
                              end;

                              read_tabella(arc.arcdit, 'tna', 'codice', archivio.fieldbyname('tna_codice').asstring, 'codice_iso');
                              ntt.parambyname('stato').asstring := copy(archivio.fieldbyname('codice_iso').asstring, 1, 2);
                              ntt.parambyname('stato_pagamento').asstring := copy(archivio.fieldbyname('codice_iso').asstring, 1, 2);
                              ntt.parambyname('data_competenza').asdatetime := testata.fieldbyname('data_documento').asdatetime;

                              read_tabella(arc.arcdit, 'tpa', 'codice', testata.fieldbyname('tpa_codice').asstring, 'modalita_incasso_intra');
                              ntt.parambyname('modalita_incasso').asstring := archivio.fieldbyname('modalita_incasso_intra').asstring;

                              read_tabella(arc.arcdit, 'tdo', 'codice', testata.fieldbyname('tdo_codice').asstring, 'transazione_intra, modalita_erogazione_intra');
                              ntt.parambyname('modalita_erogazione').asstring := archivio.fieldbyname('modalita_erogazione_intra').asstring;
                              if arc.dit.fieldbyname('ignora_natura_transazione_ven').asstring = 'no' then
                              begin
                                ntt.parambyname('natura_transazione').asstring := archivio.fieldbyname('transazione_intra').asstring;
                              end
                              else
                              begin
                                ntt.parambyname('natura_transazione').asstring := '';
                              end;
                              if testata.fieldbyname('rettifica_intra').asstring = 'no' then
                              begin
                                read_tabella(arc.arcdit, 'tpo', 'codice', testata.fieldbyname('tpo_codice').asstring, 'condizioni_consegna_intra');
                                ntt.parambyname('condizioni_consegna').asstring := archivio.fieldbyname('condizioni_consegna_intra').asstring;
                                read_tabella(arc.arcdit, 'tsp', 'codice', testata.fieldbyname('tsp_codice').asstring, 'tipo_trasporto_intra');
                                ntt.parambyname('modalita_trasporto').asstring := archivio.fieldbyname('tipo_trasporto_intra').asstring;
                                if (testata.fieldbyname('tna_codice').asstring <> '') and
                                  (testata.fieldbyname('tna_codice').asstring <> testata.fieldbyname('tna_codice_intra').asstring) then
                                begin
                                  read_tabella(arc.arcdit, 'tna', 'codice', testata.fieldbyname('tna_codice').asstring, 'codice_iso');
                                end
                                else
                                begin
                                  read_tabella(arc.arcdit, 'tna', 'codice', testata.fieldbyname('tna_codice_intra').asstring, 'codice_iso');
                                end;
                                ntt.parambyname('paese_destinazione').asstring := copy(archivio.fieldbyname('codice_iso').asstring, 1, 2);

                                // solo per acquisti
                                // ntt.parambyname('paese_provenienza').asstring :=
                                // ntt.parambyname('provincia_destinazione').asstring :=
                              end
                              else
                              begin
                                ntt.parambyname('condizioni_consegna').asstring := '';
                                ntt.parambyname('modalita_trasporto').asstring := '';
                                ntt.parambyname('paese_destinazione').asstring := '';
                              end;

                              ntt.parambyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
                              ntt.parambyname('doc_progressivo_origine').asfloat := testata.fieldbyname('progressivo').asfloat;

                              ntt.execsql;

                              riga_intra := 0;
                            end;

                            ntr.close;

                            riga_intra := riga_intra + 1;
                            ntr.parambyname('progressivo').asfloat := progressivo_intra;
                            ntr.parambyname('riga').asinteger := riga_intra;
                            read_tabella(arc.arcdit, 'art', 'codice', righe.fieldbyname('art_codice').asstring,
                              'dichiarazione_intra, tipo_articolo, provincia_origine_intra, peso_netto, coefficiente_intra, tni_codice');
                            if (archivio.fieldbyname('dichiarazione_intra').asstring = 'si') and (righe.fieldbyname('tipo_movimento').asstring = 'normale') then
                            begin
                              ntr.parambyname('provincia_origine').asstring := archivio.fieldbyname('provincia_origine_intra').asstring;
                              if ntr.parambyname('provincia_origine').asstring = '' then
                              begin
                                ntr.parambyname('provincia_origine').asstring := provincia_ditta;
                              end;

                              // solo per acquisti   paese_origine
                              // solo per acquisti   importo_valuta (arrotondato) e solo se il paese ha la valuta <> euro
                              try
                                importo_spese_trasporto := arrotonda
                                  (spese_trasporto_fattura * righe.fieldbyname('importo_euro').asfloat /
                                  (testata.fieldbyname('importo_totale_imponibile_euro').asfloat - spese_trasporto_fattura));
                              except
                                importo_spese_trasporto := 0;
                              end;
                              // non gestito perchè comunque l'importo è arrotondato
                              // totale_spese_trasporto := arrotonda(totale_spese_trasporto + importo_spese_trasporto);

                              ntr.parambyname('importo_euro').asfloat := righe.fieldbyname('importo_euro').asfloat + importo_spese_trasporto;
                              ntr.parambyname('importo_statistico').asfloat := righe.fieldbyname('importo_euro').asfloat + importo_spese_trasporto;
                              if righe.fieldbyname('importo_statistico_intra').asfloat <> 0 then
                              begin
                                ntr.parambyname('importo_statistico').asfloat := righe.fieldbyname('importo_statistico_intra').asfloat + importo_spese_trasporto;
                              end;

                              ntr.parambyname('massa_netta').asfloat := righe.fieldbyname('tum_quantita_base').asfloat * archivio.fieldbyname('peso_netto').asfloat;
                              (*
                                if ntr.parambyname('massa_netta').asfloat = 0 then
                                begin
                                ntr.parambyname('massa_netta').asfloat := 1;
                                end;
                              *)
                              ntr.parambyname('unita_supplementari').asfloat := righe.fieldbyname('tum_quantita_base').asfloat * archivio.fieldbyname('coefficiente_intra').asfloat;

                              //  se nota credito non di rettifica (stesso periodo) inverte il segni
                              if (testata.fieldbyname('tipo_documento').asstring = 'nota credito') and
                                (testata.fieldbyname('rettifica_intra').asstring = 'no') then
                              begin
                                ntr.parambyname('importo_euro').asfloat := ntr.parambyname('importo_euro').asfloat * -1;
                                ntr.parambyname('importo_statistico').asfloat := ntr.parambyname('importo_statistico').asfloat * -1;
                                ntr.parambyname('massa_netta').asfloat := ntr.parambyname('massa_netta').asfloat * -1;
                                ntr.parambyname('unita_supplementari').asfloat := ntr.parambyname('unita_supplementari').asfloat * -1;
                              end;

                              if righe.fieldbyname('tni_codice').asstring = '' then
                              begin
                                tni_codice := archivio.fieldbyname('tni_codice').asstring;
                              end
                              else
                              begin
                                tni_codice := righe.fieldbyname('tni_codice').asstring;
                              end;
                              read_tabella(arc.arcdit, 'tni', 'codice', tni_codice, 'nomenclatura');
                              ntr.parambyname('nomenclatura').asstring := archivio.fieldbyname('nomenclatura').asstring;

                              ntr.execsql;
                            end;
                          end;
                        end;
                      end;
                    end;

                    righe.fieldbyname('situazione').asstring := 'consolidato';
                    righe.post;

                    righe.next;
                  end;

                  if neg.isempty then
                  begin
                    // statistiche per spese e sconti
                    spese_extra := 0;
                    spese_trasporto := 0;
                    spese_bollo := 0;
                    spese_incasso := 0;
                    sconti_fattura := 0;
                    sconto_cassa := 0;
                    cassa_professionisti := 0;
                    iva.first;
                    while not iva.eof do
                    begin
                      if testata.fieldbyname('listino_con_iva').asstring = 'no' then
                      begin
                        spese_extra := arrotonda(spese_extra + iva.fieldbyname('importo_extra').asfloat);
                        spese_trasporto := arrotonda(spese_trasporto + iva.fieldbyname('importo_trasporto').asfloat);
                        spese_bollo := arrotonda(spese_bollo + iva.fieldbyname('importo_bollo').asfloat);
                        spese_incasso := arrotonda(spese_incasso + iva.fieldbyname('importo_incasso').asfloat);
                        sconti_fattura := arrotonda(sconti_fattura +
                          (iva.fieldbyname('importo_sconto_percentuale').asfloat + iva.fieldbyname('importo_sconto').asfloat) * -1);
                        sconto_cassa := arrotonda(sconto_cassa + iva.fieldbyname('importo_sconto_cassa').asfloat * -1);
                        cassa_professionisti := arrotonda(cassa_professionisti + iva.fieldbyname('importo_cassa_professionisti').asfloat);
                      end
                      else
                      begin
                        read_tabella(arc.arcdit, 'tiv', 'codice', iva.fieldbyname('tiv_codice').asstring, 'percentuale');

                        spese_extra := spese_extra +
                          arc.scorporo(iva.fieldbyname('importo_extra').asfloat, archivio.fieldbyname('percentuale').asfloat) * segno;
                        spese_trasporto := spese_trasporto +
                          arc.scorporo(iva.fieldbyname('importo_trasporto').asfloat, archivio.fieldbyname('percentuale').asfloat) * segno;
                        spese_bollo := spese_bollo +
                          arc.scorporo(iva.fieldbyname('importo_bollo').asfloat, archivio.fieldbyname('percentuale').asfloat) * segno;
                        spese_incasso := spese_incasso +
                          arc.scorporo(iva.fieldbyname('importo_incasso').asfloat, archivio.fieldbyname('percentuale').asfloat) * segno;
                        sconti_fattura := sconti_fattura +
                          arc.scorporo(iva.fieldbyname('importo_sconto_percentuale').asfloat + iva.fieldbyname('importo_sconto').asfloat,
                          archivio.fieldbyname('percentuale').asfloat) * segno * -1;
                        sconto_cassa := sconto_cassa +
                          arc.scorporo(iva.fieldbyname('importo_sconto_cassa').asfloat, archivio.fieldbyname('percentuale').asfloat) * segno * -1;
                        cassa_professionisti := cassa_professionisti +
                          arc.scorporo(iva.fieldbyname('importo_cassa_professionisti').asfloat, archivio.fieldbyname('percentuale').asfloat) * segno;
                      end;

                      iva.next;
                    end;

                    if spese_extra <> 0 then
                    begin
                      stv_spese(art_codice_spese_extra, spese_extra);
                    end;
                    if spese_trasporto <> 0 then
                    begin
                      stv_spese(art_codice_spese_trasporto, spese_trasporto);
                    end;
                    if spese_bollo <> 0 then
                    begin
                      stv_spese(art_codice_spese_bollo, spese_bollo);
                    end;
                    if spese_incasso <> 0 then
                    begin
                      stv_spese(art_codice_spese_incasso, spese_incasso);
                    end;
                    if sconti_fattura <> 0 then
                    begin
                      stv_spese(art_codice_sconti_fattura, sconti_fattura);
                    end;
                    if sconto_cassa <> 0 then
                    begin
                      stv_spese(art_codice_sconto_cassa, sconto_cassa);
                    end;
                    if cassa_professionisti <> 0 then
                    begin
                      stv_spese(art_codice_cassa_professionisti, cassa_professionisti);
                    end;
                  end;

                  testata.edit;
                  testata.fieldbyname('situazione').asstring := 'consolidato';
                  testata.post;
                  testata.refresh;

                  // provvigioni separate per scadenza
                  read_tabella(pro_pat, vararrayof([testata.fieldbyname('data_documento').asdatetime,
                    testata.fieldbyname('serie_documento').asstring, testata.fieldbyname('numero_documento').asinteger]));

                  //  ci potrebbero essere problemi di arrotondamento (centesimi) che gestiremo
                  while not pro_pat.eof do
                  begin
                    pro.append;

                    pro.fieldbyname('tag_codice').asstring := pro_pat.fieldbyname('tag_codice').asstring;
                    pro.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                    pro.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                    pro.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                    pro.fieldbyname('pat_progressivo').asinteger := pro_pat.fieldbyname('pat_progressivo').asinteger;
                    if testata.fieldbyname('cli_codice_fatturazione').asstring <> '' then
                    begin
                      pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice_fatturazione').asstring;
                    end
                    else
                    begin
                      pro.fieldbyname('cli_codice').asstring := testata.fieldbyname('cli_codice').asstring;
                    end;
                    pro.fieldbyname('tva_codice').asstring := testata.fieldbyname('tva_codice').asstring;
                    pro.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;
                    pro.fieldbyname('documento_origine').asstring := testata.fieldbyname('tipo_documento').asstring + ' ven';
                    pro.fieldbyname('doc_progressivo_origine').asfloat := testata.fieldbyname('progressivo').asfloat;

                    pro.fieldbyname('importo_imponibile').asfloat := arrotonda(pro_pat.fieldbyname('importo_imponibile').asfloat *
                      pro_pat.fieldbyname('importo_dovuto').asfloat / pro_pat.fieldbyname('totale_importo_dovuto').asfloat);

                    pro.fieldbyname('importo_provvigioni').asfloat := arrotonda(pro_pat.fieldbyname('importo_provvigioni').asfloat *
                      pro_pat.fieldbyname('importo_dovuto').asfloat / pro_pat.fieldbyname('totale_importo_dovuto').asfloat);

                    pro.post;

                    pro_pat.next;
                  end;

                  //  cancella provvigioni originarie
                  pro.close;
                  pro.sql.clear;
                  pro.sql.add('select pro.* from pro');
                  pro.sql.add('inner join tag on tag.codice = pro.tag_codice');
                  pro.sql.add('where pro.data_documento = :data_documento');
                  pro.sql.add('and pro.numero_documento = :numero_documento');
                  pro.sql.add('and pro.serie_documento = :serie_documento');
                  pro.sql.add('and pro.pat_progressivo = 0');
                  pro.sql.add('and tag.liquidazione = ''incasso scadenza''');
                  pro.parambyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
                  pro.parambyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
                  pro.parambyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
                  pro.open;
                  while not pro.eof do
                  begin
                    pro.delete;
                  end;
                end;

                controllo_interrompi;

                commit_transazione('transazione sul documento con progressivo ' +
                  query.fieldbyname('progressivo').asstring + ' non eseguita');
              end;
            end;

            if testata.fieldbyname('chiusura_documento_origine').asstring = 'si' then
            begin
              chiusura_documento_origine;
            end;

            v_documento.caption := 'Documento in elaborazione ' + formatdatetime('dd/mm/yyyy', query.fieldbyname('data_documento').asdatetime) +
              '  ' + query.fieldbyname('numero_documento').asstring + '  ' + query.fieldbyname('serie_documento').asstring;
            application.processmessages;

            query.next;
          end;

          if not tabella_corrispettivi.isempty then
          begin
            test_data_registrazione := 0;
            test_tco_codice := '';
            tabella_corrispettivi.first;
            while not tabella_corrispettivi.eof do
            begin
              if (test_data_registrazione <> tabella_corrispettivi.fieldbyname('data_registrazione').asdatetime) or
                (test_tco_codice <> tabella_corrispettivi.fieldbyname('tco_codice').asstring) then
              begin
                if test_tco_codice <> '' then
                begin
                  crea_pnr_corrispettivi;
                end;
                crea_pnt_corrispettivi;

                test_data_registrazione := tabella_corrispettivi.fieldbyname('data_registrazione').asdatetime;
                test_tco_codice := tabella_corrispettivi.fieldbyname('tco_codice').asstring;
              end;
              crea_pni_corrispettivi;

              tabella_corrispettivi.next;
            end;
            crea_pnr_corrispettivi;

            commit_transazione('transazione sui corrispettivi del ' +
              tabella_corrispettivi.fieldbyname('data_registrazione').asstring + ' non eseguita');
          end;
        except
          on e: exception do
          begin
            rollback_transazione(e.message);
          end;
        end;
      finally
        chiudi_transazione;
      end;
    end;

    inherited;
  end;

  close;
end;

procedure TCONDOCV.chiusura_documento_origine;
var
  righe_documento, righe_origine, ddt_origine: tmyquery_go;
begin
  righe_documento := tmyquery_go.create(nil);
  righe_documento.connection := arc.arcdit;

  righe_origine := tmyquery_go.create(nil);
  righe_origine.connection := arc.arcdit;

  ddt_origine := tmyquery_go.create(nil);
  ddt_origine.connection := arc.arcdit;

  //  origine preventivo / ordine
  righe_documento.sql.add('select distinct documento_origine, doc_progressivo_origine');
  if query.fieldbyname('tipo_documento').asstring = 'corrispettivo' then
  begin
    righe_documento.sql.add('from cvr');
  end
  else
  begin
    righe_documento.sql.add('from fvr');
  end;
  righe_documento.sql.add('where progressivo = ' + testata.fieldbyname('progressivo').asstring);
  righe_documento.sql.add('and documento_origine <> '''' and documento_origine <> ''ddt ven'' and documento_origine <> ''bolla ven''');
  righe_documento.sql.add('and doc_progressivo_origine <> 0');
  righe_documento.open;

  while not righe_documento.eof do
  begin
    righe_origine.sql.clear;
    if (righe_documento.fieldbyname('documento_origine').asstring = 'preventivo ven') or
      (righe_documento.fieldbyname('documento_origine').asstring = 'preventivo nominativi ven') then
    begin
      righe_origine.sql.add('update pvr');
    end
    else //  ordini
    begin
      righe_origine.sql.add('update ovr');
    end;
    righe_origine.sql.add('set quantita_approntata = 0, tum_quantita_approntata_base = 0, situazione = ''evaso'',');
    righe_origine.sql.add('note = concat(coalesce(note, ''''), '' '', ''RIGA CHIUSA IN AUTOMATICO DA CONSOLIDAMENTO DOCUMENTO EVASIONE'')');
    righe_origine.sql.add('where progressivo = ' + righe_documento.fieldbyname('doc_progressivo_origine').asstring);
    righe_origine.sql.add('and (situazione = ''inserito'' or situazione = ''evaso parziale'')');
    righe_origine.execsql;

    righe_documento.next;
  end;

  //  origine ddt
  (*
    ddt_origine.sql.add('select distinct documento_origine, doc_progressivo_origine');
    ddt_origine.sql.add('from fvr');
    ddt_origine.sql.add('where progressivo = ' + testata.fieldbyname('progressivo').asstring);
    ddt_origine.sql.add('and documento_origine <> '''' and (documento_origine = ''ddt ven'' or documento_origine = ''bolla ven'')');
    ddt_origine.sql.add('and doc_progressivo_origine <> 0');
    ddt_origine.open;

    while not ddt_origine.eof do
    begin



    ddt_origine.next;
    end;
  *)

  righe_documento.close;
  righe_documento.sql.clear;
  righe_documento.sql.add('select distinct dvr.documento_origine, dvr.doc_progressivo_origine');
  righe_documento.sql.add('from fvr');
  righe_documento.sql.add('inner join dvr on dvr.progressivo = fvr.doc_progressivo_origine');
  righe_documento.sql.add('where fvr.progressivo = ' + testata.fieldbyname('progressivo').asstring);
  righe_documento.sql.add('and fvr.documento_origine = ''ddt ven'' and fvr.doc_progressivo_origine <> 0');
  righe_documento.sql.add('and dvr.documento_origine <> '''' and dvr.doc_progressivo_origine <> 0');

  righe_documento.sql.add('union all');

  righe_documento.sql.add('select distinct bvr.documento_origine, bvr.doc_progressivo_origine');
  righe_documento.sql.add('from fvr');
  righe_documento.sql.add('inner join bvr on bvr.progressivo = fvr.doc_progressivo_origine');
  righe_documento.sql.add('where fvr.progressivo = ' + testata.fieldbyname('progressivo').asstring);
  righe_documento.sql.add('and fvr.documento_origine = ''bolla ven'' and fvr.doc_progressivo_origine <> 0');
  righe_documento.sql.add('and bvr.documento_origine <> '''' and bvr.doc_progressivo_origine <> 0');

  righe_documento.open;

  while not righe_documento.eof do
  begin
    righe_origine.sql.clear;
    if (righe_documento.fieldbyname('documento_origine').asstring = 'preventivo ven') or
      (righe_documento.fieldbyname('documento_origine').asstring = 'preventivo nominativi ven') then
    begin
      righe_origine.sql.add('update pvr');
    end
    else //  ordini
    begin
      righe_origine.sql.add('update ovr');
    end;
    righe_origine.sql.add('set quantita_approntata = 0, tum_quantita_approntata_base = 0, situazione = ''evaso'',');
    righe_origine.sql.add('note = concat(coalesce(note, ''''), '' '', ''RIGA CHIUSA IN AUTOMATICO DA CONSOLIDAMENTO DOCUMENTO EVASIONE'')');
    righe_origine.sql.add('where progressivo = ' + righe_documento.fieldbyname('doc_progressivo_origine').asstring);
    righe_origine.sql.add('and (situazione = ''inserito'' or situazione = ''evaso parziale'')');
    righe_origine.execsql;

    righe_documento.next;
  end;

  freeandnil(ddt_origine);
  freeandnil(righe_origine);
  freeandnil(righe_documento);
end;

procedure tcondocv.crea_pnt_corrispettivi;
begin
  progressivo_corrispettivi := arc.setta_valore_generatore(tmyconnection_go(pnt.connection), 'pnt_progressivo');

  pnt.append;

  pnt.fieldbyname('progressivo').asinteger := progressivo_corrispettivi;
  pnt.parambyname('progressivo').asinteger := progressivo_corrispettivi;
  pnt.fieldbyname('data_registrazione').asdatetime := tabella_corrispettivi.fieldbyname('data_registrazione').asdatetime;
  pnt.fieldbyname('tco_codice').asstring := tabella_corrispettivi.fieldbyname('tco_codice').asstring;
  read_tabella(tco, tabella_corrispettivi.fieldbyname('tco_codice').asstring);
  pnt.fieldbyname('tco_descrizione').asstring := tco.fieldbyname('descrizione').asstring;
  pnt.fieldbyname('tipo_documento_iva').asstring := tco.fieldbyname('tipo_registro_iva').asstring;
  pnt.fieldbyname('documento_iva').asstring := 'si';
  pnt.fieldbyname('numero_documento').asinteger := 0;
  pnt.fieldbyname('data_documento').asdatetime := tabella_corrispettivi.fieldbyname('data_registrazione').asdatetime;
  pnt.fieldbyname('cfg_tipo').asstring := 'G';
  pnt.fieldbyname('cfg_codice').asstring := arc.dit.fieldbyname('gen_codice_corrispettivi').asstring;
  pnt.fieldbyname('intra').asstring := 'no';
  pnt.fieldbyname('tva_codice').asstring := divisa_di_conto;
  pnt.fieldbyname('ese_codice').asstring := esercizio;
  pnt.fieldbyname('cambio').asfloat := 1;
  pnt.fieldbyname('data_competenza_iva').asdatetime := tabella_corrispettivi.fieldbyname('data_registrazione').asdatetime;
  pnt.fieldbyname('iva_sospensione').asstring := 'no';

  pnt.post;
  pnt.refresh;

  riga_corrispettivi := 0;
  totale_imponibile_corrispettivi := 0;
  totale_iva_corrispettivi := 0;

  controllo_interrompi;
end;

procedure tcondocv.crea_pni_corrispettivi;
var
  importo: double;
begin
  pni.append;

  pni.fieldbyname('progressivo').asfloat := progressivo_corrispettivi;
  riga_corrispettivi := riga_corrispettivi + 1;
  pni.fieldbyname('riga').asinteger := riga_corrispettivi;
  pni.fieldbyname('tiv_codice').asstring := tabella_corrispettivi.fieldbyname('tiv_codice').asstring;
  read_tabella(tiv, pni.fieldbyname('tiv_codice').asstring);
  importo := arc.scorporo(tabella_corrispettivi.fieldbyname('imponibile').asfloat, tiv.fieldbyname('percentuale').asfloat);
  pni.fieldbyname('importo_imponibile').asfloat := importo;
  pni.fieldbyname('importo_iva').asfloat := arrotonda(tabella_corrispettivi.fieldbyname('imponibile').asfloat - importo);
  pni.fieldbyname('importo_indetraibile').asfloat := 0;

  pni.fieldbyname('importo_imponibile_euro').asfloat := pni.fieldbyname('importo_imponibile').asfloat;
  pni.fieldbyname('importo_iva_euro').asfloat := pni.fieldbyname('importo_iva').asfloat;
  pni.fieldbyname('importo_indetraibile_euro').asfloat := 0;

  totale_imponibile_corrispettivi := arrotonda(totale_imponibile_corrispettivi + pni.fieldbyname('importo_imponibile_euro').asfloat);
  totale_iva_corrispettivi := arrotonda(totale_iva_corrispettivi + pni.fieldbyname('importo_iva_euro').asfloat);

  pni.post;

  controllo_interrompi;
end;

procedure tcondocv.crea_pnr_corrispettivi;
begin
  // riga cassa
  pnr.append;
  pnr.fieldbyname('progressivo').asfloat := progressivo_corrispettivi;
  pnr.fieldbyname('riga').asinteger := 1;
  pnr.fieldbyname('cfg_tipo').asstring := 'G';
  pnr.fieldbyname('cfg_codice').asstring := arc.dit.fieldbyname('gen_codice_corrispettivi').asstring;
  pnr.fieldbyname('importo_dare').asfloat := totale_imponibile_corrispettivi + totale_iva_corrispettivi;
  pnr.fieldbyname('importo_dare_euro').asfloat := pnr.fieldbyname('importo_dare').asfloat;
  pnr.post;

  controllo_interrompi;

  // riga iva
  pnr.append;
  pnr.fieldbyname('progressivo').asfloat := progressivo_corrispettivi;
  pnr.fieldbyname('riga').asinteger := 2;
  pnr.fieldbyname('cfg_tipo').asstring := tco.fieldbyname('cfg_tipo_02').asstring;
  pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_02').asstring;
  pnr.fieldbyname('importo_avere').asfloat := totale_iva_corrispettivi;
  pnr.fieldbyname('importo_avere_euro').asfloat := totale_iva_corrispettivi;
  pnr.post;

  controllo_interrompi;

  // contropartite
  read_tabella(tco, pnt.fieldbyname('tco_codice').asstring);

  pnr.append;
  pnr.fieldbyname('progressivo').asfloat := progressivo_corrispettivi;
  pnr.fieldbyname('riga').asinteger := 3;
  pnr.fieldbyname('cfg_tipo').asstring := 'G';
  if (tco.fieldbyname('contropartita_acquisti_vendite').asstring = 'si') and
    (tco.fieldbyname('cfg_codice_03').asstring <> '') then
  begin
    pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_03').asstring;
  end
  else
  begin
    pnr.fieldbyname('cfg_codice').asstring := arc.dit.fieldbyname('gen_codice_ventilazione').asstring;
  end;

  pnr.fieldbyname('importo_avere').asfloat := totale_imponibile_corrispettivi;
  pnr.fieldbyname('importo_avere_euro').asfloat := totale_imponibile_corrispettivi;
  pnr.post;

  controllo_interrompi;
end;

procedure tcondocv.stv_spese(art_codice: string; importo: double);
var
  importo_spese: double;
  anno, mese, giorno: word;
begin
  decodedate(testata.fieldbyname('data_documento').asdatetime, anno, mese, giorno);

  importo_spese := arrotonda(importo * segno / testata.fieldbyname('cambio').asfloat);

  crea_stv(testata.fieldbyname('tag_codice').asstring, testata.fieldbyname('cli_codice').asstring,
    testata.fieldbyname('indirizzo').asstring, art_codice, anno, mese, 0, importo_spese, 0);
end;

procedure tcondocv.assegna_valore_dalla_data_documento;
begin
  if controllo then
  begin
    if (v_dalla_data_documento.date < data_inizio) or (v_dalla_data_documento.date > data_bilancio) then
    begin
      v_dalla_data_documento.date := data_inizio;
    end;
  end;
end;

procedure tcondocv.assegna_valore_alla_data_documento;
begin
  if controllo then
  begin
    if (v_alla_data_documento.date < data_inizio) or (v_alla_data_documento.date > data_bilancio) then
    begin
      v_alla_data_documento.date := data_bilancio;
    end;
  end;
end;

procedure tcondocv.v_dalla_data_documentoexit(sender: tobject);
begin
  inherited;
  assegna_valore_dalla_data_documento;
end;

procedure tcondocv.v_alla_data_documentoexit(sender: tobject);
begin
  inherited;
  assegna_valore_alla_data_documento;
end;

procedure tcondocv.v_alla_serieexit(sender: tobject);
begin
  inherited;
  alla_serie_controllo;
end;

procedure tcondocv.alla_serie_controllo;
begin
  if v_alla_serie.text = '' then
  begin
    v_alla_serie.text := 'zzzz';
  end;
end;

procedure tcondocv.formcreate(sender: tobject);
begin
  pagimm := tpagimm.create;
  calsca := tcalsca.create;
  desautpri := tdesautpri.create;
  totven := ttotven.create;

  inherited;

  pnt.open;
  pnr.open;
  pni.open;

  tabella_corrispettivi.open;

  setlength(tabella_contropartite, 100);
end;

procedure tcondocv.formdestroy(sender: tobject);
begin
  inherited;
  pagimm.free;
  calsca.free;
  desautpri.free;
  totven.free;
end;

procedure tcondocv.messaggio_aggiorna(tipo: string);
var
  descrizione: string;
begin
  if tipo = 'valuta' then
  begin
    descrizione := 'l''eventuale arrotondamento valuta (codice iva e codice sottoconto)';
  end
  else if tipo = 'listino' then
  begin
    descrizione := 'l''eventuale arrotondamento causato dallo scorporo (codice iva e codice sottoconto)';
  end;

  messaggio(000, 'il documento: ' +
    testata.fieldbyname('tipo_documento').asstring + #13 +
    ' numero ' +
    inttostr(testata.fieldbyname('numero_documento').asinteger) + ' ' +
    testata.fieldbyname('serie_documento').asstring + ' del ' +
    testata.fieldbyname('data_documento').asstring + #13 + #13 +
    'non verrà aggiornato in contabilità perchè non sono previsti in anagrafica ditta' + #13 +
    'i riferimenti per registrare ' + descrizione + #13 + #13 +
    'gli altri aggiornamenti verranno invece effettuati');
end;

procedure tcondocv.crea_pas;
var
  importo, importo_pas: double;
begin
  if pnr.fieldbyname('importo_dare').asfloat > 0 then
  begin
    importo := pnr.fieldbyname('importo_dare').asfloat * -1;
  end
  else if pnr.fieldbyname('importo_avere').asfloat > 0 then
  begin
    importo := pnr.fieldbyname('importo_avere').asfloat;
  end;

  fvr_nc.first;
  while not fvr_nc.eof do
  begin
    if importo > fvr_nc.fieldbyname('importo_saldo').asfloat then
    begin
      importo_pas := fvr_nc.fieldbyname('importo_saldo').asfloat;
      importo := importo - fvr_nc.fieldbyname('importo_saldo').asfloat;
    end
    else
    begin
      importo_pas := importo;
      importo := 0;
    end;

    pas.open;
    pas.append;

    pas.fieldbyname('progressivo').asinteger := fvr_nc.fieldbyname('progressivo').asinteger;
    pas.fieldbyname('riga').asinteger := fvr_nc.fieldbyname('pas_riga').asinteger + 1;
    pas.fieldbyname('data_registrazione').asdatetime := testata.fieldbyname('data_documento').asdatetime;
    pas.fieldbyname('numero_documento').asinteger := testata.fieldbyname('numero_documento').asinteger;
    pas.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
    pas.fieldbyname('data_documento').asdatetime := testata.fieldbyname('data_documento').asdatetime;
    pas.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;

    pas.fieldbyname('importo_pagato').asfloat := importo_pas;
    pas.fieldbyname('importo_pagato_euro').asfloat := importo_pas / testata.fieldbyname('cambio').asfloat;

    pas.fieldbyname('pnr_progressivo').asinteger := pnr.fieldbyname('progressivo').asinteger;
    pas.fieldbyname('pnr_riga').asinteger := pnr.fieldbyname('riga').asinteger;

    pas.fieldbyname('descrizione').asstring := testata.fieldbyname('tipo_documento').asstring + ' ' +
      testata.fieldbyname('numero_documento').asstring;
    if testata.fieldbyname('serie_documento').asstring <> '' then
    begin
      pas.fieldbyname('descrizione').asstring := pas.fieldbyname('descrizione').asstring + '/' +
        testata.fieldbyname('serie_documento').asstring;
    end;
    pas.fieldbyname('descrizione').asstring := pas.fieldbyname('descrizione').asstring + ' ' +
      testata.fieldbyname('data_documento').asstring;

    pas.post;

    if importo = 0 then
    begin
      break
    end
    else
    begin
      fvr_nc.next;
    end;
  end;
end;

procedure tcondocv.crea_pat(tipo_conto: string);
var
  pr: tcreparinh;
  data_pagamento: tdate;
  importo, importo_euro: double;
  i, numero_rate: word;
  importo_acconto: double;
begin
  importo_euro := 0;
  data_pagamento := testata.fieldbyname('data_inizio_conteggio').asdatetime;
  if data_pagamento = 0 then
  begin
    data_pagamento := testata.fieldbyname('data_documento').asdatetime;
  end;

  if (tipo_conto <> 'C') or (testata.fieldbyname('scadenziario_manuale').asstring = 'si') then
  begin
    codice_passato := vararrayof([pnr.fieldbyname('progressivo').asfloat,
      pnr.fieldbyname('riga').asinteger, 0]);

    pr := tcreparinh.create(nil);
    try
      if pr.esegui_form then
      begin
        pr.programma_chiamante := 'condocv';
        pr.tpa_codice := testata.fieldbyname('tpa_codice').asstring;
        pr.codice_abi := testata.fieldbyname('codice_abi').asstring;
        pr.codice_cab := testata.fieldbyname('codice_cab').asstring;
        pr.tba_codice := testata.fieldbyname('tba_codice').asstring;
        pr.conto_corrente := testata.fieldbyname('conto_corrente').asstring;
        pr.cin := testata.fieldbyname('cin').asstring;
        pr.iban_stringa := testata.fieldbyname('iban').asstring;
        pr.bic := testata.fieldbyname('bic').asstring;
        pr.codice := codice_passato;
        pr.cfg_tipo := pnr.fieldbyname('cfg_tipo').asstring;
        pr.cfg_codice := pnr.fieldbyname('cfg_codice').asstring;
        if tipo_conto = 'C' then
        begin
          read_tabella(arc.arcdit, 'cli', 'codice', pnr.fieldbyname('cfg_codice').asstring, 'descrizione1, descrizione2');
        end
        else if tipo_conto = 'G' then
        begin
          read_tabella(arc.arcdit, 'gen', 'codice', pnr.fieldbyname('cfg_codice').asstring, 'descrizione1, descrizione2');
        end;
        pr.cfg_descrizione1 := archivio.fieldbyname('descrizione1').asstring;
        pr.cfg_descrizione2 := archivio.fieldbyname('descrizione2').asstring;
        pr.data_registrazione := pnt.fieldbyname('data_registrazione').asdatetime;
        pr.numero_documento_riferimento := pnt.fieldbyname('numero_documento').asfloat;
        pr.serie_documento_riferimento := pnt.fieldbyname('serie_documento').asstring;
        pr.data_documento_riferimento := pnt.fieldbyname('data_documento').asdatetime;
        pr.data_inizio_conteggio := data_pagamento;
        pr.descrizione := pnt.fieldbyname('tco_descrizione').asstring;
        pr.tva_codice := pnt.fieldbyname('tva_codice').asstring;
        pr.cambio := pnt.fieldbyname('cambio').asfloat;
        pr.protocollo := pnt.fieldbyname('protocollo').asfloat;
        pr.serie_protocollo := pnt.fieldbyname('serie_protocollo').asstring;
        pr.iva_sospensione := pnt.fieldbyname('iva_sospensione').asstring;
        if pnr.fieldbyname('importo_dare').asfloat > 0 then
        begin
          pr.importo := pnr.fieldbyname('importo_dare').asfloat;
          pr.importo_euro := pnr.fieldbyname('importo_dare_euro').asfloat;
        end
        else if pnr.fieldbyname('importo_avere').asfloat > 0 then
        begin
          pr.importo := arrotonda(pnr.fieldbyname('importo_avere').asfloat * -1);
          pr.importo_euro := arrotonda(pnr.fieldbyname('importo_avere_euro').asfloat * -1);
        end;

        pr.importo_iva := 0;
        pr.importo_iva_euro := 0;
        if pnt.fieldbyname('documento_iva').asstring = 'si' then
        begin
          if pnr.fieldbyname('riga').asinteger = 1 then
          begin
            pr.importo_iva := testata.fieldbyname('importo_totale_iva').asfloat;
            pr.importo_iva_euro := testata.fieldbyname('importo_totale_iva').asfloat;
            if (pnt.fieldbyname('documento_iva').asstring = 'si') and (pnt.fieldbyname('intra').asstring = 'si') and
              (pnt.fieldbyname('tipo_documento_iva').asstring = 'acquisti') then
            begin
              pr.importo_iva := 0;
              pr.importo_iva_euro := 0;
            end;
          end;
        end;
        pr.pagamenti := pagamenti;

        if testata.fieldbyname('gestione_alimentari').asstring = 'si' then
        begin
          pr.gestione_alimentari := true;
        end
        else
        begin
          pr.gestione_alimentari := false;
        end;

        pr.showmodal;

        tpa.close;
        tpa.params[0].asstring := pr.tpa_codice;
        tpa.open;
      end;
    finally
      pr.free;
    end;

    application.processmessages;
  end
  else
  begin
    importo := 0;
    if pnr.fieldbyname('importo_dare').asfloat > 0 then
    begin
      importo := pnr.fieldbyname('importo_dare').asfloat;
      importo_euro := pnr.fieldbyname('importo_dare_euro').asfloat;
    end
    else if pnr.fieldbyname('importo_avere').asfloat > 0 then
    begin
      importo := arrotonda(pnr.fieldbyname('importo_avere').asfloat * -1);
      importo_euro := arrotonda(pnr.fieldbyname('importo_avere_euro').asfloat * -1);
    end;

    if importo <> 0 then
    begin
      numero_rate := tpa.fieldbyname('numero_rate').asinteger;
      if not pagamenti.isempty then
      begin
        numero_rate := pagamenti.recordcount;
      end;
      setlength(tabella_scadenze, numero_rate);

      if pnr.fieldbyname('importo_dare').asfloat > 0 then
      begin
        calsca.calsca(pnt.fieldbyname('cfg_tipo').asstring, pnt.fieldbyname('cfg_codice').asstring,
          pnt.fieldbyname('tva_codice').asstring, testata.fieldbyname('tpa_codice').asstring, importo,
          importo_euro, totale_iva, totale_iva_euro, data_pagamento,
          tabella_scadenze, pagamenti);
      end
      else if pnr.fieldbyname('importo_avere').asfloat > 0 then
      begin
        calsca.calsca(pnt.fieldbyname('cfg_tipo').asstring, pnt.fieldbyname('cfg_codice').asstring,
          pnt.fieldbyname('tva_codice').asstring, testata.fieldbyname('tpa_codice').asstring, importo,
          importo_euro, totale_iva * -1, totale_iva_euro * -1, data_pagamento,
          tabella_scadenze, pagamenti);
      end;

      if testata.fieldbyname('tva_codice').asstring = divisa_di_conto then
      begin
        importo_acconto := testata.fieldbyname('importo_acconto').asfloat;
      end
      else
      begin
        importo_acconto := 0;
      end;

      for i := 0 to numero_rate - 1 do
      begin
        if importo_acconto >= tabella_scadenze[i].importo_scadenza then
        begin
          importo_acconto := importo_acconto - tabella_scadenze[i].importo_scadenza;
        end
        else
        begin
          tabella_scadenze[i].importo_scadenza := tabella_scadenze[i].importo_scadenza - importo_acconto;
          tabella_scadenze[i].importo_scadenza_euro := tabella_scadenze[i].importo_scadenza_euro - importo_acconto;

          importo_acconto := 0;
        end;

        pat.close;
        pat.parambyname('progressivo').asinteger := 0;
        pat.open;
        pat.append;

        progressivo_pat := arc.setta_valore_generatore(tmyconnection_go(pat.connection), 'pat_progressivo');

        pat.fieldbyname('progressivo').asinteger := progressivo_pat;
        pat.fieldbyname('pat_progressivo').asfloat := progressivo_pat;
        pat.parambyname('progressivo').asinteger := progressivo_pat;
        pat.fieldbyname('cfg_tipo').asstring := pnr.fieldbyname('cfg_tipo').asstring;
        pat.fieldbyname('cfg_codice').asstring := pnr.fieldbyname('cfg_codice').asstring;
        pat.fieldbyname('ind_codice').asstring := testata.fieldbyname('indirizzo').asstring;
        pat.fieldbyname('numero_documento').asinteger := pnt.fieldbyname('numero_documento').asinteger;
        pat.fieldbyname('serie_documento').asstring := pnt.fieldbyname('serie_documento').asstring;
        pat.fieldbyname('data_documento').asdatetime := pnt.fieldbyname('data_documento').asdatetime;
        pat.fieldbyname('tpa_codice').asstring := testata.fieldbyname('tpa_codice').asstring;
        pat.fieldbyname('tag_codice').asstring := testata.fieldbyname('tag_codice').asstring;
        if pnt.fieldbyname('cfg_tipo').asstring = 'C' then
        begin
          pat.fieldbyname('codice_abi').asstring := testata.fieldbyname('codice_abi').asstring;
          pat.fieldbyname('codice_cab').asstring := testata.fieldbyname('codice_cab').asstring;
          pat.fieldbyname('tba_codice').asstring := testata.fieldbyname('tba_codice').asstring;
          pat.fieldbyname('conto_corrente').asstring := testata.fieldbyname('conto_corrente').asstring;
          pat.fieldbyname('cin').asstring := testata.fieldbyname('cin').asstring;
          pat.fieldbyname('iban').asstring := testata.fieldbyname('iban').asstring;
          pat.fieldbyname('bic').asstring := testata.fieldbyname('bic').asstring;
        end;
        pat.fieldbyname('tva_codice').asstring := testata.fieldbyname('tva_codice').asstring;
        pat.fieldbyname('cambio').asfloat := testata.fieldbyname('cambio').asfloat;
        pat.fieldbyname('protocollo').asfloat := 0;
        pat.fieldbyname('serie_protocollo').asstring := '';
        pat.fieldbyname('data_registrazione').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;
        pat.fieldbyname('iva_sospensione').asstring := testata.fieldbyname('iva_sospensione').asstring;
        pat.fieldbyname('data_scadenza').asdatetime := tabella_scadenze[i].data_scadenza;
        pat.fieldbyname('tts_codice').asstring := tabella_scadenze[i].tipo_pagamento;
        pat.fieldbyname('importo_dovuto').asfloat := tabella_scadenze[i].importo_scadenza;
        pat.fieldbyname('importo_saldo').asfloat := tabella_scadenze[i].importo_scadenza;
        pat.fieldbyname('importo_dovuto_euro').asfloat := tabella_scadenze[i].importo_scadenza_euro;
        pat.fieldbyname('pnr_progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
        pat.fieldbyname('pnr_riga').asinteger := pnr.fieldbyname('riga').asinteger;
        pat.fieldbyname('descrizione').asstring := pnt.fieldbyname('tco_descrizione').asstring;
        pat.fieldbyname('codice_cup').asstring := testata.fieldbyname('codice_cup').asstring;
        pat.fieldbyname('codice_cig').asstring := testata.fieldbyname('codice_cig').asstring;
        pat.fieldbyname('gestione_alimentari').asstring := testata.fieldbyname('gestione_alimentari').asstring;

        pat.post;
      end;
    end;
  end;
end;

procedure tcondocv.iva_sospensione;
begin
  // iva sospensione
  if testata.fieldbyname('iva_sospensione').asstring = 'si' then
  begin
    tabella_ivd.close;

    tabella_ivd.parambyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(tabella_ivd.connection), 'ivd_progressivo');
    tabella_ivd.parambyname('cfg_tipo').asstring := pnt.fieldbyname('cfg_tipo').asstring;
    tabella_ivd.parambyname('cfg_codice').asstring := pnt.fieldbyname('cfg_codice').asstring;
    tabella_ivd.parambyname('tco_codice').asstring := pnt.fieldbyname('tco_codice').asstring;
    tabella_ivd.parambyname('gen_codice').asstring := tco.fieldbyname('gen_codice_iva').asstring;
    tabella_ivd.parambyname('numero_documento').asinteger := pnt.fieldbyname('numero_documento').asinteger;
    tabella_ivd.parambyname('serie_documento').asstring := pnt.fieldbyname('serie_documento').asstring;
    tabella_ivd.parambyname('data_documento').asdatetime := pnt.fieldbyname('data_documento').asdatetime;
    tabella_ivd.parambyname('data_registrazione').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;
    tabella_ivd.parambyname('protocollo').asfloat := 0;
    tabella_ivd.parambyname('serie_protocollo').asstring := '';
    tabella_ivd.parambyname('pni_progressivo').asfloat := pni.fieldbyname('progressivo').asfloat;
    tabella_ivd.parambyname('pni_riga').asinteger := pni.fieldbyname('riga').asinteger;
    tabella_ivd.parambyname('tiv_codice').asstring := pni.fieldbyname('tiv_codice').asstring;
    tabella_ivd.parambyname('importo_imponibile_euro').asfloat := pni.fieldbyname('importo_imponibile_euro').asfloat;
    tabella_ivd.parambyname('importo_iva_euro').asfloat := pni.fieldbyname('importo_iva_euro').asfloat;
    tabella_ivd.parambyname('importo_indetraibile_euro').asfloat := pni.fieldbyname('importo_indetraibile_euro').asfloat;

    tabella_ivd.execsql;
  end;
end;

procedure tcondocv.pannello_parametrienter(sender: tobject);
begin
  inherited;

  if (importi_vendite = 'visualizza') or (importi_vendite = 'nascondi') then
  begin
    messaggio(000, 'l''utente non può operare con questo programma');
    close;
    abort;
  end;
end;

procedure tcondocv.formshow(sender: tobject);
begin
  if parametri_extra_programma_chiamato[0] <> null then
  begin
    esecuzione_automatica := parametri_extra_programma_chiamato[0];
  end;

  if codice[0] <> '' then
  begin
    v_consolidare.itemindex := 3;
    v_consolidare.enabled := false;
    v_consolidare.color := clbtnface;

    v_dalla_data_documento.enabled := false;
    v_alla_data_documento.enabled := false;

    v_dalla_data_documento.color := clbtnface;
    v_alla_data_documento.color := clbtnface;

    v_dalla_serie.enabled := false;
    v_alla_serie.enabled := false;

    v_dalla_serie.color := clbtnface;
    v_alla_serie.color := clbtnface;

    if codice[2] = 'si' then
    begin
      v_esci.enabled := false;
    end;

    if v_conferma.canfocus then
    begin
      v_conferma.setfocus;
    end;
  end
  else
  begin
    v_consolidare.items.delete(3);
  end;

  inherited;
end;

procedure tcondocv.formkeydown(sender: tobject;
  var
  key: word;
  shift: tshiftstate);
begin
  if codice[2] = 'si' then
  begin
    //
  end
  else
  begin
    inherited;
  end;
end;

procedure tcondocv.crea_stv(tag_codice, cli_codice, ind_codice, art_codice: string;
  anno, mese: word; quantita, importo, importo_provvigioni: double);
begin
  stv.close;
  stv.parambyname('tag_codice').asstring := tag_codice;
  stv.parambyname('cli_codice').asstring := cli_codice;
  stv.parambyname('ind_codice').asstring := ind_codice;
  stv.parambyname('art_codice').asstring := art_codice;
  stv.parambyname('anno').asinteger := anno;
  stv.parambyname('mese').asinteger := mese;
  if arc.dit.fieldbyname('serie_statistiche').asstring = 'si' then
  begin
    stv.parambyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
  end
  else
  begin
    stv.parambyname('serie_documento').asstring := '';
  end;
  stv.open;

  if stv.isempty then
  begin
    stv.append;

    stv.fieldbyname('tag_codice').asstring := tag_codice;
    stv.fieldbyname('cli_codice').asstring := cli_codice;
    stv.fieldbyname('ind_codice').asstring := ind_codice;
    stv.fieldbyname('art_codice').asstring := art_codice;
    stv.fieldbyname('anno').asinteger := anno;
    stv.fieldbyname('mese').asinteger := mese;
    if arc.dit.fieldbyname('serie_statistiche').asstring = 'si' then
    begin
      stv.fieldbyname('serie_documento').asstring := testata.fieldbyname('serie_documento').asstring;
    end
    else
    begin
      stv.fieldbyname('serie_documento').asstring := '';
    end;

    stv.post;
    stv.close;
    stv.open;
  end;

  stv.edit;

  stv.fieldbyname('quantita').asfloat := arrotonda(stv.fieldbyname('quantita').asfloat + quantita);
  stv.fieldbyname('importo').asfloat := arrotonda(stv.fieldbyname('importo').asfloat + importo);
  stv.fieldbyname('importo_provvigioni').asfloat := arrotonda(stv.fieldbyname('importo_provvigioni').asfloat + importo_provvigioni);

  stv.post;
end;

procedure tcondocv.crea_cespiti;
var
  pr: tgesmcs;
begin
  pr := tgesmcs.create(nil);
  if pr.esegui_form then
  begin
    pr.codice := vararrayof(['', 0]);
    pr.documento_origine := 'primanota';
    pr.doc_progressivo_origine := pnt.fieldbyname('progressivo').asinteger;
    pr.doc_riga_origine := pnr.fieldbyname('riga').asinteger;
    pr.tmc_codice := tco.fieldbyname('tmc_codice').asstring;
    pr.data_registrazione := pnt.fieldbyname('data_registrazione').asdatetime;
    pr.data_documento := pnt.fieldbyname('data_documento').asdatetime;
    pr.numero_documento := pnt.fieldbyname('numero_documento').asinteger;
    pr.serie_documento := pnt.fieldbyname('serie_documento').asstring;
    if pnt.fieldbyname('cfg_tipo').asstring = 'C' then
    begin
      pr.cli_for_descrizione := trim(cli.fieldbyname('descrizione1').asstring) + ' ' + cli.fieldbyname('citta').asstring;
      if pnr.fieldbyname('importo_avere_euro').asfloat <> 0 then
      begin
        pr.importo := pnr.fieldbyname('importo_avere_euro').asfloat;
      end
      else
      begin
        pr.importo := arrotonda(pnr.fieldbyname('importo_avere_euro').asfloat * -1);
      end;
    end;
    pr.showmodal;
  end;
  pr.free;
end;

procedure tcondocv.vendite_negozio;
begin
  if arc.dit.fieldbyname('tco_codice_negozio').asstring = '' then
  begin
    messaggio(000, 'non è stata impostata la causale contabile in anagrafica ditta');
  end
  else
  begin
    read_tabella(tng, 'TNG');
    read_tabella(tco, arc.dit.fieldbyname('tco_codice_negozio').asstring);
    apri_transazione;
    try
      if tco.fieldbyname('corrispettivi_da_ventilare').asstring = 'si' then
      begin
        ventilazione_negozio;
      end
      else
      begin
        scorporo_negozio;
      end;
      buoni_negozio;

      query.sql.clear;
      query.sql.add('update ngt set contabilita = ''si''');
      query.sql.add('where data_registrazione between :dalla_data and :alla_data');
      query.sql.add('and contabilita = ''no'' and fattura = ''no''');

      query.parambyname('dalla_data').asdate := v_dalla_data_documento.date;
      query.parambyname('alla_data').asdate := v_alla_data_documento.date;

      query.execsql;

      commit_transazione;
    finally
      chiudi_transazione;
    end;
  end;

  //  cassa contanti
  if arc.dit.fieldbyname('tco_codice_cassa_contanti').asstring <> '' then
  begin
    read_tabella(tng, 'TNG');
    read_tabella(tco, arc.dit.fieldbyname('tco_codice_cassa_contanti').asstring);
    apri_transazione;
    try
      query.close;
      query.sql.clear;
      query.sql.add('select riecascon.*, tma.gen_codice tma_gen_codice, tba.gen_codice tba_gen_codice,');
      //  totale incassi
      query.sql.add('(select sum(importo) from riecascon r where r.tma_codice = riecascon.tma_codice');
      query.sql.add('and r.data = riecascon.data and r.tipo = 40) importo_totale,');
      //  totale assegni versati e conto di giro
      query.sql.add('0 importo_totale_assegni_versati, '''' gen_codice_assegni,');

      //  totale contanti versati e conto di giro
      query.sql.add('coalesce((select sum(importo) from riecascon r where r.tma_codice = riecascon.tma_codice');
      query.sql.add('and r.data = riecascon.data and r.tipo = 80), 0) importo_totale_contanti_versati,');
      query.sql.add('(select case when ttsmag.gen_codice_cassa_contanti is null then tts.gen_codice_cassa_contanti');
      query.sql.add('else ttsmag.gen_codice_cassa_contanti end');
      query.sql.add('from riecascon r');
      query.sql.add('inner join tts on tts.codice = r.descrizione');
      query.sql.add('left join ttsmag on ttsmag.tts_codice = r.descrizione and ttsmag.tma_codice = r.tma_codice');
      query.sql.add('where tts.tipo_scadenza = ''contante'' and r.tma_codice = riecascon.tma_codice');
      query.sql.add('and r.data = riecascon.data and r.tipo = 40) gen_codice_contanti');

      query.sql.add('from riecascon');
      query.sql.add('inner join tma on tma.codice = riecascon.tma_codice');
      query.sql.add('left join tba on tba.codice = tma.tba_codice');
      query.sql.add('where riecascon.descrizione = '''' and tipo = 0');
      query.sql.add('and riecascon.data between :dalla_data and :alla_data');
      query.sql.add('order by riecascon.tma_codice, riecascon.data');

      query.parambyname('dalla_data').asdate := v_dalla_data_documento.date;
      query.parambyname('alla_data').asdate := v_alla_data_documento.date;

      query.open;

      cassa_contanti;

      query.close;
      query.sql.clear;
      query.sql.add('update riecascon set descrizione = ''contabilizzato''');
      query.sql.add('where data between :dalla_data and :alla_data');
      query.sql.add('and descrizione = ''''');

      query.parambyname('dalla_data').asdate := v_dalla_data_documento.date;
      query.parambyname('alla_data').asdate := v_alla_data_documento.date;

      query.execsql;

      commit_transazione;
    finally
      chiudi_transazione;
    end;
  end;
end;

procedure tcondocv.cassa_contanti;
var
  riga: integer;
  test_data: tdate;
  test_tma_codice: string;
  totale: double;
begin
  query.first;
  while not query.eof do
  begin
    if query.fieldbyname('importo_totale').asfloat <> 0 then
    begin
      if (test_data <> query.fieldbyname('data').asdatetime) or (test_tma_codice <> query.fieldbyname('tma_codice').asstring) then
      begin
        pnt.append;

        pnt.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(pnt.connection), 'pnt_progressivo');
        pnt.parambyname('progressivo').asinteger := pnt.fieldbyname('progressivo').asinteger;
        pnt.fieldbyname('data_registrazione').asdatetime := query.fieldbyname('data').asdatetime;
        pnt.fieldbyname('tco_codice').asstring := arc.dit.fieldbyname('tco_codice_cassa_contanti').asstring;
        read_tabella(arc.arcdit, 'tco', 'codice', arc.dit.fieldbyname('tco_codice_cassa_contanti').asstring, 'descrizione');
        pnt.fieldbyname('tco_descrizione').asstring := archivio.fieldbyname('descrizione').asstring;
        pnt.fieldbyname('data_documento').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;
        pnt.fieldbyname('serie_documento').asstring := query.fieldbyname('tma_codice').asstring;
        pnt.fieldbyname('tva_codice').asstring := divisa_di_conto;
        pnt.fieldbyname('ese_codice').asstring := esercizio;
        pnt.fieldbyname('cambio').asfloat := 1;
        pnt.fieldbyname('documento_origine').asstring := 'cassa contanti';

        pnt.post;
        pnt.refresh;

        test_data := query.fieldbyname('data').asdatetime;
        test_tma_codice := query.fieldbyname('tma_codice').asstring;
        riga := 0;
        totale := 0;
        controllo_interrompi;
      end;

      // totale cassa
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      riga := riga + 1;
      pnr.fieldbyname('riga').asinteger := riga;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      read_tabella(arc.arcdit, 'tco', 'codice', arc.dit.fieldbyname('tco_codice_negozio').asstring);
      pnr.fieldbyname('cfg_codice').asstring := archivio.fieldbyname('cfg_codice_01').asstring;
      pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_totale').asfloat;
      pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_totale').asfloat;

      codice_partita := pnr.fieldbyname('cfg_tipo').asstring + ' ' + pnr.fieldbyname('cfg_codice').asstring;

      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'partita', codice_partita);

      pnr.post;

      read_tabella(cassa, vararrayof([query.fieldbyname('tma_codice').asstring, query.fieldbyname('data').asdatetime]));
      while not cassa.eof do
      begin
        // c/partita
        pnr.append;

        pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
        riga := riga + 1;
        pnr.fieldbyname('riga').asinteger := riga;
        pnr.fieldbyname('cfg_tipo').asstring := 'G';
        pnr.fieldbyname('cfg_codice').asstring := cassa.fieldbyname('gen_codice_contanti').asstring;
        pnr.fieldbyname('importo_dare').asfloat := cassa.fieldbyname('importo').asfloat;
        pnr.fieldbyname('importo_dare_euro').asfloat := cassa.fieldbyname('importo').asfloat;

        pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
          (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
          pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
          pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
          'contropartite', codice_partita);

        pnr.post;

        cassa.next;
      end;

      //  versamento banca
      if (query.fieldbyname('tba_gen_codice').asstring <> '') and
        (query.fieldbyname('importo_totale_assegni_versati').asfloat + query.fieldbyname('importo_totale_contanti_versati').asfloat <> 0) then
      begin
        //  giroconto assegni
        if query.fieldbyname('importo_totale_assegni_versati').asfloat <> 0 then
        begin
          // c/partita
          pnr.append;

          pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
          riga := riga + 1;
          pnr.fieldbyname('riga').asinteger := riga;
          pnr.fieldbyname('cfg_tipo').asstring := 'G';
          pnr.fieldbyname('cfg_codice').asstring := query.fieldbyname('gen_codice_assegni').asstring;
          pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_totale_assegni_versati').asfloat;
          pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_totale_assegni_versati').asfloat;

          pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
            (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
            pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
            pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
            'contropartite', codice_partita);

          pnr.post;
        end;

        //  giroconto contanti
        if query.fieldbyname('importo_totale_contanti_versati').asfloat <> 0 then
        begin
          // c/partita
          pnr.append;

          pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
          riga := riga + 1;
          pnr.fieldbyname('riga').asinteger := riga;
          pnr.fieldbyname('cfg_tipo').asstring := 'G';
          pnr.fieldbyname('cfg_codice').asstring := query.fieldbyname('gen_codice_contanti').asstring;
          pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_totale_contanti_versati').asfloat;
          pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_totale_contanti_versati').asfloat;

          pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
            (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
            pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
            pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
            'contropartite', codice_partita);

          pnr.post;
        end;

        //  versamento banca
        // c/partita
        pnr.append;

        pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
        riga := riga + 1;
        pnr.fieldbyname('riga').asinteger := riga;
        pnr.fieldbyname('cfg_tipo').asstring := 'G';
        pnr.fieldbyname('cfg_codice').asstring := query.fieldbyname('tba_gen_codice').asstring;
        pnr.fieldbyname('importo_dare').asfloat :=
          query.fieldbyname('importo_totale_assegni_versati').asfloat + query.fieldbyname('importo_totale_contanti_versati').asfloat;
        pnr.fieldbyname('importo_dare_euro').asfloat :=
          query.fieldbyname('importo_totale_assegni_versati').asfloat + query.fieldbyname('importo_totale_contanti_versati').asfloat;

        pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
          (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
          pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
          pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
          'contropartite', codice_partita);

        pnr.post;
      end;
    end;

    v_documento.caption := 'Data in elaborazione cassa contanti ' + formatdatetime('dd/mm/yyyy', query.fieldbyname('data').asdatetime);
    application.processmessages;

    query.next;
  end;
end;

procedure tcondocv.ventilazione_negozio;
var
  riga: integer;
  test_data: tdate;
  codice_partita: string;

  progressivo_cnt: double;
  esiste_numerazione_cnt: boolean;
begin
  pnt.open;
  pnr.open;

  query.sql.clear;
  query.sql.add('select gio.giorno data_registrazione,');
  query.sql.add('coalesce((select sum(importo_totale) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo,');

  query.sql.add('coalesce((select sum(importo_incasso_01) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_01,');

  query.sql.add('coalesce((select sum(importo_incasso_02) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_02,');

  query.sql.add('coalesce((select sum(importo_incasso_03) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_03,');

  query.sql.add('coalesce((select sum(importo_incasso_04) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_04,');

  query.sql.add('coalesce((select sum(importo_incasso_05) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_05,');

  query.sql.add('coalesce((select sum(importo_incasso_06) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_06,');

  query.sql.add('coalesce((select sum(importo_incasso_07) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_07,');

  query.sql.add('coalesce((select sum(importo_incasso_08) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_08,');

  query.sql.add('coalesce((select sum(importo_incasso_09) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_09,');

  query.sql.add('coalesce((select sum(importo_incasso_10) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_incasso_10,');

  query.sql.add('coalesce((select sum(importo_non_incassato) from ngt');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_non_incassato,');

  query.sql.add('coalesce((select sum(valore) from bnd');
  query.sql.add('inner join ngt on ngt.progressivo = bnd.ngt_progressivo');
  query.sql.add('where ngt.data_registrazione = gio.giorno and ngt.contabilita = ''no'' and ngt.fattura = ''no''), 0) importo_buoni');

  query.sql.add('from gio');
  query.sql.add('where gio.giorno between :dalla_data and :alla_data');
  query.sql.add('order by 1,2');

  query.parambyname('dalla_data').asdate := v_dalla_data_documento.date;
  query.parambyname('alla_data').asdate := v_alla_data_documento.date;

  query.open;

  // cassa
  while not query.eof do
  begin
    if query.fieldbyname('importo').asfloat <> 0 then
    begin
      if test_data <> query.fieldbyname('data_registrazione').asdatetime then
      begin
        pnt.append;

        pnt.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(pnt.connection), 'pnt_progressivo');
        pnt.parambyname('progressivo').asinteger := pnt.fieldbyname('progressivo').asinteger;
        pnt.fieldbyname('data_registrazione').asdatetime := query.fieldbyname('data_registrazione').asdatetime;
        pnt.fieldbyname('tco_codice').asstring := arc.dit.fieldbyname('tco_codice_negozio').asstring;
        pnt.fieldbyname('tco_descrizione').asstring := tco.fieldbyname('descrizione').asstring;
        pnt.fieldbyname('data_documento').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;

        pnt.fieldbyname('serie_documento').asstring := tco.fieldbyname('serie_numerazione').asstring;

        progressivo_cnt := 0;
        esiste_numerazione_cnt := true;
        while esiste_numerazione_cnt do
        begin
          arc.assegna_numerazione(arc.arcdit, 'CORRISPETTIVI CLIENTI', pnt.fieldbyname('serie_documento').asstring,
            pnt.fieldbyname('data_documento').asdatetime, progressivo_cnt);
          pnt.fieldbyname('numero_documento').asfloat := progressivo_cnt;

          if arc.esistenza_documento('pnt_corrispettivi', pnt.fieldbyname('serie_documento').asstring, '',
            pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('numero_documento').asfloat,
            pnt.fieldbyname('progressivo').asinteger) then
          begin
            //  se esiste numerazione resetta il progressivo per assegnazione automatica numerazione
            progressivo_cnt := 0;
          end
          else
          begin
            //  altrimenti setta variabile per finire il loop
            esiste_numerazione_cnt := false;
          end;
        end;

        pnt.fieldbyname('data_competenza_iva').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;
        pnt.fieldbyname('tva_codice').asstring := divisa_di_conto;
        pnt.fieldbyname('ese_codice').asstring := esercizio;
        pnt.fieldbyname('cambio').asfloat := 1;
        pnt.fieldbyname('documento_origine').asstring := 'vendita negozio';

        pnt.post;
        pnt.refresh;

        test_data := query.fieldbyname('data_registrazione').asdatetime;
        riga := 0;
        controllo_interrompi;
      end;

      // partita
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      riga := riga + 1;
      pnr.fieldbyname('riga').asinteger := riga;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_01').asstring;
      if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo').asfloat;
        pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo').asfloat;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo').asfloat;
        pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo').asfloat;
      end;

      codice_partita := pnr.fieldbyname('cfg_tipo').asstring + ' ' + pnr.fieldbyname('cfg_codice').asstring;
      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'partita', codice_partita);

      pnr.post;

      // c/partita
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      riga := riga + 1;
      pnr.fieldbyname('riga').asinteger := riga;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_03').asstring;
      if tco.fieldbyname('cfg_dare_avere_03').asstring = 'D' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo').asfloat;
        pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo').asfloat;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo').asfloat;
        pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo').asfloat;
      end;

      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'contropartite', codice_partita);

      pnr.post;
    end;

    giroconto_pagamento;

    v_documento.caption := 'Data in elaborazione ' + formatdatetime('dd/mm/yyyy', query.fieldbyname('data_registrazione').asdatetime);
    application.processmessages;

    query.next;
  end;
end;

procedure tcondocv.giroconto_pagamento;
var
  i, riga: integer;
  importo_pagamento: double;
  stringa, gen_codice_resto: string;
begin
  if arc.dit.fieldbyname('tco_codice_cassa_contanti').asstring = '' then
  begin
    riga := pnr.fieldbyname('riga').asinteger;

    //  contropartite pagamento
    importo_pagamento := 0;
    for i := 1 to 10 do
    begin
      stringa := setta_lunghezza(i, 2, 0, '0');
      if tng.fieldbyname('gen_codice_' + stringa).asstring <> '' then
      begin
        importo_pagamento := importo_pagamento + query.fieldbyname('importo_incasso_' + stringa).asfloat;
      end;
    end;
    if tng.fieldbyname('gen_codice_non_incassato').asstring <> '' then
    begin
      importo_pagamento := importo_pagamento + query.fieldbyname('importo_non_incassato').asfloat;
    end;

    gen_codice_resto := '';

    if importo_pagamento <> 0 then
    begin
      //  storno cassa
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      riga := riga + 1;
      pnr.fieldbyname('riga').asinteger := riga;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_01').asstring;
      if tco.fieldbyname('cfg_dare_avere_01').asstring = 'A' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := importo_pagamento;
        pnr.fieldbyname('importo_dare_euro').asfloat := importo_pagamento;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := importo_pagamento;
        pnr.fieldbyname('importo_avere_euro').asfloat := importo_pagamento;
      end;

      pnr.fieldbyname('descrizione').asstring := 'Giroconto per dettagli incasso';

      pnr.post;

      //  tipi incasso
      for i := 1 to 10 do
      begin
        stringa := setta_lunghezza(i, 2, 0, '0');
        if query.fieldbyname('importo_incasso_' + stringa).asfloat <> 0 then
        begin
          pnr.append;

          pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
          riga := riga + 1;
          pnr.fieldbyname('riga').asinteger := riga;
          pnr.fieldbyname('cfg_tipo').asstring := 'G';
          pnr.fieldbyname('cfg_codice').asstring := tng.fieldbyname('gen_codice_' + stringa).asstring;
          if gen_codice_resto = '' then
          begin
            gen_codice_resto := tng.fieldbyname('gen_codice_' + stringa).asstring;
          end;
          if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
          begin
            pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo_incasso_' + stringa).asfloat;
            pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo_incasso_' + stringa).asfloat;
          end
          else
          begin
            pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_incasso_' + stringa).asfloat;
            pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_incasso_' + stringa).asfloat;
          end;

          pnr.fieldbyname('descrizione').asstring := 'Incasso: ' + tng.fieldbyname('tipo_pagamento_' + stringa).asstring;

          pnr.post;
        end;
      end;

      if query.fieldbyname('importo_non_incassato').asfloat <> 0 then
      begin
        pnr.append;

        pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
        riga := riga + 1;
        pnr.fieldbyname('riga').asinteger := riga;
        pnr.fieldbyname('cfg_tipo').asstring := 'G';
        if query.fieldbyname('importo_non_incassato').asfloat > 0 then
        begin
          pnr.fieldbyname('cfg_codice').asstring := tng.fieldbyname('gen_codice_non_incassato').asstring;
          if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
          begin
            pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo_non_incassato').asfloat;
            pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo_non_incassato').asfloat;
          end
          else
          begin
            pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_non_incassato').asfloat;
            pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_non_incassato').asfloat;
          end;

          pnr.fieldbyname('descrizione').asstring := 'Importo non incassato';
        end
        else
        begin
          pnr.fieldbyname('cfg_codice').asstring := gen_codice_resto;
          if tco.fieldbyname('cfg_dare_avere_01').asstring = 'A' then
          begin
            pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo_non_incassato').asfloat * -1;
            pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo_non_incassato').asfloat * -1;
          end
          else
          begin
            pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_non_incassato').asfloat * -1;
            pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_non_incassato').asfloat * -1;
          end;

          pnr.fieldbyname('descrizione').asstring := 'Resto';
        end;

        pnr.post;
      end;
    end;
  end;
end;

procedure tcondocv.buoni_negozio;
var
  riga: integer;
  test_data: tdate;
  codice_partita: string;
begin
  query.first;
  while not query.eof do
  begin
    if query.fieldbyname('importo_buoni').asfloat <> 0 then
    begin
      if test_data <> query.fieldbyname('data_registrazione').asdatetime then
      begin
        pnt.append;

        pnt.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(pnt.connection), 'pnt_progressivo');
        pnt.parambyname('progressivo').asinteger := pnt.fieldbyname('progressivo').asinteger;
        pnt.fieldbyname('data_registrazione').asdatetime := query.fieldbyname('data_registrazione').asdatetime;
        pnt.fieldbyname('tco_codice').asstring := tng.fieldbyname('tco_codice_buoni_negozio').asstring;
        read_tabella(arc.arcdit, 'tco', 'codice', tng.fieldbyname('tco_codice_buoni_negozio').asstring, 'descrizione');
        pnt.fieldbyname('tco_descrizione').asstring := archivio.fieldbyname('descrizione').asstring;
        pnt.fieldbyname('data_documento').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;
        pnt.fieldbyname('tva_codice').asstring := divisa_di_conto;
        pnt.fieldbyname('ese_codice').asstring := esercizio;
        pnt.fieldbyname('cambio').asfloat := 1;
        pnt.fieldbyname('documento_origine').asstring := 'vendita negozio';

        pnt.post;
        pnt.refresh;

        test_data := query.fieldbyname('data_registrazione').asdatetime;
        riga := 0;
        controllo_interrompi;
      end;

      // partita
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      riga := riga + 1;
      pnr.fieldbyname('riga').asinteger := riga;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_01').asstring;
      if tco.fieldbyname('cfg_dare_avere_01').asstring = 'A' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo_buoni').asfloat;
        pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo_buoni').asfloat;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_buoni').asfloat;
        pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_buoni').asfloat;
      end;

      codice_partita := pnr.fieldbyname('cfg_tipo').asstring + ' ' + pnr.fieldbyname('cfg_codice').asstring;
      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'partita', codice_partita);

      pnr.post;

      // c/partita
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      riga := riga + 1;
      pnr.fieldbyname('riga').asinteger := riga;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      pnr.fieldbyname('cfg_codice').asstring := tng.fieldbyname('gen_codice_buoni_negozio').asstring;
      if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo_buoni').asfloat;
        pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo_buoni').asfloat;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo_buoni').asfloat;
        pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo_buoni').asfloat;
      end;

      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'contropartite', codice_partita);

      pnr.post;
    end;

    v_documento.caption := 'Data in elaborazione ' + formatdatetime('dd/mm/yyyy', query.fieldbyname('data_registrazione').asdatetime);
    application.processmessages;

    query.next;
  end;
end;

procedure tcondocv.scorporo_negozio;
var
  riga: integer;
  codice_partita: string;
  importo_imponibile, importo_iva: double;

  progressivo_cnt: double;
  esiste_numerazione_cnt: boolean;
begin
  pnt.open;
  pni.open;
  pnr.open;

  query.sql.add('select ngt.data_registrazione, ngt.tma_codice,');
  query.sql.add('sum(ngt.importo_totale) importo, sum(ngt.importo_incasso_01) importo_incasso_01,');
  query.sql.add('sum(ngt.importo_incasso_02) importo_incasso_02, sum(ngt.importo_incasso_03) importo_incasso_03,');
  query.sql.add('sum(ngt.importo_incasso_04) importo_incasso_04, sum(ngt.importo_incasso_05) importo_incasso_05,');
  query.sql.add('sum(ngt.importo_incasso_06) importo_incasso_06, sum(ngt.importo_incasso_07) importo_incasso_07,');
  query.sql.add('sum(ngt.importo_incasso_08) importo_incasso_08, sum(ngt.importo_incasso_09) importo_incasso_09,');
  query.sql.add('sum(ngt.importo_incasso_10) importo_incasso_10, sum(ngt.importo_non_incassato) importo_non_incassato,');

  query.sql.add('coalesce(');
  query.sql.add('sum((select sum(valore) from bnd');
  query.sql.add('where bnd.ngt_progressivo = ngt.progressivo)), 0) importo_buoni');

  query.sql.add('from ngt');
  query.sql.add('where ngt.contabilita = ''no'' and ngt.fattura = ''no''');
  query.sql.add('and ngt.data_registrazione between :dalla_data and :alla_data');
  query.sql.add('group by 1,2');

  query.parambyname('dalla_data').asdate := v_dalla_data_documento.date;
  query.parambyname('alla_data').asdate := v_alla_data_documento.date;

  query.open;

  // cassa
  while not query.eof do
  begin
    if query.fieldbyname('importo').asfloat <> 0 then
    begin
      pnt.append;

      pnt.fieldbyname('progressivo').asinteger := arc.setta_valore_generatore(tmyconnection_go(pnt.connection), 'pnt_progressivo');
      pnt.parambyname('progressivo').asinteger := pnt.fieldbyname('progressivo').asinteger;
      pnt.fieldbyname('data_registrazione').asdatetime := query.fieldbyname('data_registrazione').asdatetime;
      pnt.fieldbyname('tco_codice').asstring := arc.dit.fieldbyname('tco_codice_negozio').asstring;
      pnt.fieldbyname('tco_descrizione').asstring := tco.fieldbyname('descrizione').asstring;
      pnt.fieldbyname('data_documento').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;
      pnt.fieldbyname('serie_documento').asstring := tco.fieldbyname('serie_numerazione').asstring;

      progressivo_cnt := 0;
      esiste_numerazione_cnt := true;
      while esiste_numerazione_cnt do
      begin
        arc.assegna_numerazione(arc.arcdit, 'CORRISPETTIVI CLIENTI', pnt.fieldbyname('serie_documento').asstring,
          pnt.fieldbyname('data_documento').asdatetime, progressivo_cnt);
        pnt.fieldbyname('numero_documento').asfloat := progressivo_cnt;

        if arc.esistenza_documento('pnt_corrispettivi', pnt.fieldbyname('serie_documento').asstring, '',
          pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('numero_documento').asfloat,
          pnt.fieldbyname('progressivo').asinteger) then
        begin
          //  se esiste numerazione resetta il progressivo per assegnazione automatica numerazione
          progressivo_cnt := 0;
        end
        else
        begin
          //  altrimenti setta variabile per finire il loop
          esiste_numerazione_cnt := false;
        end;
      end;

      pnt.fieldbyname('tipo_documento_iva').asstring := tco.fieldbyname('tipo_registro_iva').asstring;
      pnt.fieldbyname('documento_iva').asstring := 'si';
      pnt.fieldbyname('cfg_tipo').asstring := 'G';
      pnt.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_01').asstring;
      pnt.fieldbyname('data_competenza_iva').asdatetime := pnt.fieldbyname('data_registrazione').asdatetime;
      pnt.fieldbyname('tva_codice').asstring := divisa_di_conto;
      pnt.fieldbyname('ese_codice').asstring := esercizio;
      pnt.fieldbyname('cambio').asfloat := 1;
      pnt.fieldbyname('documento_origine').asstring := 'vendita negozio';

      pnt.post;

      riga := 0;
      importo_imponibile := 0;
      importo_iva := 0;

      // iva
      ngi.close;
      ngi.parambyname('data_registrazione').asdate := pnt.fieldbyname('data_registrazione').asdatetime;
      ngi.parambyname('tma_codice').asstring := query.fieldbyname('tma_codice').asstring;
      ngi.open;

      while not ngi.eof do
      begin
        pni.append;

        pni.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
        riga := riga + 1;
        pni.fieldbyname('riga').asinteger := riga;
        pni.fieldbyname('tiv_codice').asstring := ngi.fieldbyname('tiv_codice').asstring;
        read_tabella(arc.arcdit, 'tiv', 'codice', ngi.fieldbyname('tiv_codice').asstring, 'percentuale');
        pni.fieldbyname('importo_imponibile').asfloat := arc.scorporo(ngi.fieldbyname('importo').asfloat, archivio.fieldbyname('percentuale').asfloat);
        pni.fieldbyname('importo_iva').asfloat := ngi.fieldbyname('importo').asfloat - pni.fieldbyname('importo_imponibile').asfloat;
        pni.fieldbyname('importo_indetraibile').asfloat := 0;
        pni.fieldbyname('importo_imponibile_euro').asfloat := pni.fieldbyname('importo_imponibile').asfloat;
        pni.fieldbyname('importo_iva_euro').asfloat := pni.fieldbyname('importo_iva').asfloat;
        pni.fieldbyname('importo_indetraibile_euro').asfloat := 0;

        importo_imponibile := importo_imponibile + pni.fieldbyname('importo_imponibile').asfloat;
        importo_iva := importo_iva + pni.fieldbyname('importo_iva').asfloat;

        pni.post;

        ngi.next;
      end;

      riga := 0;

      // partita
      pnr.append;

      pnr.fieldbyname('progressivo').asinteger := pnt.fieldbyname('progressivo').asinteger;
      pnr.fieldbyname('riga').asinteger := 1;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_01').asstring;
      if tco.fieldbyname('cfg_dare_avere_01').asstring = 'D' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := query.fieldbyname('importo').asfloat;
        pnr.fieldbyname('importo_dare_euro').asfloat := query.fieldbyname('importo').asfloat;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := query.fieldbyname('importo').asfloat;
        pnr.fieldbyname('importo_avere_euro').asfloat := query.fieldbyname('importo').asfloat;
      end;

      codice_partita := pnr.fieldbyname('cfg_tipo').asstring + ' ' + pnr.fieldbyname('cfg_codice').asstring;
      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'partita', codice_partita);

      pnr.post;

      // c/iva
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      pnr.fieldbyname('riga').asinteger := 2;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_02').asstring;
      if tco.fieldbyname('cfg_dare_avere_02').asstring = 'D' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := importo_iva;
        pnr.fieldbyname('importo_dare_euro').asfloat := importo_iva;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := importo_iva;
        pnr.fieldbyname('importo_avere_euro').asfloat := importo_iva;
      end;

      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'contropartite', codice_partita);

      pnr.post;

      // c/partita
      pnr.append;

      pnr.fieldbyname('progressivo').asfloat := pnt.fieldbyname('progressivo').asfloat;
      pnr.fieldbyname('riga').asinteger := 3;
      pnr.fieldbyname('cfg_tipo').asstring := 'G';
      read_tabella(tma, query.fieldbyname('tma_codice').asstring);
      if tma.fieldbyname('gen_codice').asstring = '' then
      begin
        pnr.fieldbyname('cfg_codice').asstring := tco.fieldbyname('cfg_codice_03').asstring;
      end
      else
      begin
        pnr.fieldbyname('cfg_codice').asstring := tma.fieldbyname('gen_codice').asstring;
      end;
      if tco.fieldbyname('cfg_dare_avere_03').asstring = 'D' then
      begin
        pnr.fieldbyname('importo_dare').asfloat := importo_imponibile;
        pnr.fieldbyname('importo_dare_euro').asfloat := importo_imponibile;
      end
      else
      begin
        pnr.fieldbyname('importo_avere').asfloat := importo_imponibile;
        pnr.fieldbyname('importo_avere_euro').asfloat := importo_imponibile;
      end;

      pnr.fieldbyname('descrizione').asstring := desautpri.descrizione_automatica_primanota
        (pnt.fieldbyname('numero_documento').asfloat, pnt.fieldbyname('serie_documento').asstring,
        pnt.fieldbyname('data_documento').asdatetime, pnt.fieldbyname('protocollo').asfloat,
        pnt.fieldbyname('data_registrazione').asdatetime, pnt.fieldbyname('tco_codice').asstring,
        'contropartite', codice_partita);

      pnr.post;
    end;

    giroconto_pagamento;

    v_documento.caption := 'Data in elaborazione ' + formatdatetime('dd/mm/yyyy', query.fieldbyname('data_registrazione').asdatetime);
    application.processmessages;

    query.next;

    controllo_interrompi;
  end;
end;

procedure tcondocv.verifica_acconti;
var
  pr: tmovparinh;

  pat_progressivo: integer;
begin
  pat_progressivo := 0;
  if ((testata.fieldbyname('tipo_documento').asstring = 'fattura immediata') or
    (testata.fieldbyname('tipo_documento').asstring = 'fattura accompagnatoria')) and
    (righe.fieldbyname('documento_origine').asstring = 'ordine ven') then
  begin
    read_tabella(fattura_acconto, vararrayof([righe.fieldbyname('doc_progressivo_origine').asinteger, righe.fieldbyname('doc_riga_origine').asinteger]));
    pat_progressivo := fattura_acconto.fieldbyname('progressivo').asinteger;
  end
  else if (testata.fieldbyname('tipo_documento').asstring = 'fattura differita') and
    (righe.fieldbyname('documento_origine').asstring = 'ddt ven') then
  begin
    read_tabella(ddt_acconto, vararrayof([righe.fieldbyname('doc_progressivo_origine').asinteger, righe.fieldbyname('doc_riga_origine').asinteger]));
    pat_progressivo := ddt_acconto.fieldbyname('progressivo').asinteger;
  end
  else if (testata.fieldbyname('tipo_documento').asstring = 'fattura differita') and
    (righe.fieldbyname('documento_origine').asstring = 'bolla ven') then
  begin
    read_tabella(bolla_acconto, vararrayof([righe.fieldbyname('doc_progressivo_origine').asinteger, righe.fieldbyname('doc_riga_origine').asinteger]));
    pat_progressivo := bolla_acconto.fieldbyname('progressivo').asinteger;
  end;

  if pat_progressivo <> 0 then
  begin
    pr := tmovparinh.create(nil);
    if pr.esegui_form then
    begin
      pr.codice := vararrayof([pnr.fieldbyname('progressivo').asinteger, pnr.fieldbyname('riga').asinteger, 0, 0]);
      pr.cfg_tipo := pnr.fieldbyname('cfg_tipo').asstring;
      pr.cfg_codice := pnr.fieldbyname('cfg_codice').asstring;
      pr.data_registrazione := pnt.fieldbyname('data_registrazione').asdatetime;
      pr.numero_documento := pnt.fieldbyname('numero_documento').asfloat;
      pr.serie_documento := pnt.fieldbyname('serie_documento').asstring;
      pr.data_documento := pnt.fieldbyname('data_documento').asdatetime;
      //pr.descrizione := descrizione;
      pr.tva_codice := pnt.fieldbyname('tva_codice').asstring;
      pr.cambio := pnt.fieldbyname('cambio').asfloat;
      if pnr.fieldbyname('importo_dare').asfloat > 0 then
      begin
        pr.importo := pnr.fieldbyname('importo_dare').asfloat * -1;
      end
      else
      begin
        pr.importo := pnr.fieldbyname('importo_avere').asfloat;
      end;
      if pnr.fieldbyname('importo_dare_euro').asfloat > 0 then
      begin
        pr.importo := pnr.fieldbyname('importo_dare_euro').asfloat * -1;
      end
      else
      begin
        pr.importo := pnr.fieldbyname('importo_avere_euro').asfloat;
      end;

      pr.acconto := true;
      pr.progressivo_automatico := pat_progressivo;

      pr.showmodal;
    end;
    pr.free;
  end;
end;

initialization

registerclass(tcondocv);

end.
