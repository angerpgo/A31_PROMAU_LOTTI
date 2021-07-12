unit ZZDICINT;

interface

uses sysutils, controls, query_go, MyAccess, dateutils, variants,
  DMARC, ZZDICINT_SQL;

type

  TDICINT = class
  protected
    cfg_tipo: string;
    cli_frn, lti_assegna, lti_capienza, ind_assegna: tmyquery_go;
  public
    constructor create(cliente_fornitore: string);
    destructor destroy; override;

    procedure assegna_tiv_codice(lti_progressivo: integer; tabella: tmyquery_go);
    procedure capienza_tiv_codice(tabella: tmyquery_go);
  end;

implementation

constructor TDICINT.create(cliente_fornitore: string);
begin
  cfg_tipo := cliente_fornitore;

  if cfg_tipo = 'F' then
  begin
    cli_frn := tmyquery_go.create(nil);
    cli_frn.connection := arc.arcdit;

    cli_frn.sql.add('select codice, tiv_codice, data_esenzione_iva from frn where codice = :codice');

    //fornitore assegna
    lti_assegna := tmyquery_go.create(nil);
    lti_assegna.connection := arc.arcdit;

    lti_assegna.sql.add('select lti.progressivo, lti.tiv_codice, lti.operazione_singola, lti.importo,');

    dicint_sql_frn(lti_assegna);

    lti_assegna.sql.add('importo_utilizzato');

    lti_assegna.sql.add('from lti');
    lti_assegna.sql.add('where lti.chiusa = ''no''');
    lti_assegna.sql.add('and lti.cfg_tipo = ''F''');
    lti_assegna.sql.add('and lti.cfg_codice = :cfg_codice');
    lti_assegna.sql.add('and lti.anno_riferimento = :anno');

    //fornitore capienza
    lti_capienza := tmyquery_go.create(nil);
    lti_capienza.connection := arc.arcdit;

    lti_capienza.sql.add('select lti.operazione_singola, lti.importo,');

    dicint_sql_frn(lti_capienza);

    lti_capienza.sql.add('importo_utilizzato,');

    //  solo ordini
    dicint_sql_frn_ordini(lti_capienza);
    lti_capienza.sql.add('importo_utilizzato_ordini');

    lti_capienza.sql.add('from lti');
    lti_capienza.sql.add('where lti.progressivo = :lti_progressivo');
    lti_capienza.sql.add('and lti.anno_riferimento = :anno');
  end
  else
  begin
    cli_frn := tmyquery_go.create(nil);
    cli_frn.connection := arc.arcdit;

    cli_frn.sql.add('select codice, tiv_codice, data_esenzione_iva from cli where codice = :codice');

    //cliente assegna
    lti_assegna := tmyquery_go.create(nil);
    lti_assegna.connection := arc.arcdit;

    lti_assegna.sql.add('select lti.progressivo, lti.tiv_codice, lti.operazione_singola, lti.importo,');

    dicint_sql_cli(lti_assegna);

    lti_assegna.sql.add('importo_utilizzato');

    lti_assegna.sql.add('from lti');
    lti_assegna.sql.add('where lti.chiusa = ''no''');
    lti_assegna.sql.add('and lti.cfg_tipo = ''C''');
    lti_assegna.sql.add('and lti.cfg_codice = :cfg_codice');
    lti_assegna.sql.add('and lti.anno_riferimento = :anno');

    //cliente capienza
    lti_capienza := tmyquery_go.create(nil);
    lti_capienza.connection := arc.arcdit;

    lti_capienza.sql.add('select lti.operazione_singola, lti.importo,');

    dicint_sql_cli(lti_capienza);

    lti_capienza.sql.add('importo_utilizzato,');

    //  solo ordini
    dicint_sql_cli_ordini(lti_capienza);
    lti_capienza.sql.add('importo_utilizzato_ordini');

    lti_capienza.sql.add('from lti');
    lti_capienza.sql.add('where lti.progressivo = :lti_progressivo');
    lti_capienza.sql.add('and lti.anno_riferimento = :anno');

    //filiale cliente (prioritaria su tutto)
    ind_assegna := tmyquery_go.create(nil);
    ind_assegna.connection := arc.arcdit;

    ind_assegna.sql.add('select tiv_codice from ind where cli_codice = :cli_codice and indirizzo = :indirizzo');
  end;
end;

destructor TDICINT.destroy;
begin
  freeandnil(cli_frn);
  freeandnil(lti_assegna);
  freeandnil(lti_capienza);
  freeandnil(ind_assegna);
end;

procedure TDICINT.assegna_tiv_codice(lti_progressivo: integer; tabella: tmyquery_go);
var
  campo, tiv_codice_ind: string;
  assegnato: boolean;
begin
  assegnato := false;

  if cfg_tipo = 'C' then
  begin
    read_tabella(cli_frn, tabella.fieldbyname('cli_codice').asstring);
    campo := 'tdo_codice_differite';
    read_tabella(ind_assegna, vararrayof([tabella.fieldbyname('cli_codice').asstring, tabella.fieldbyname('indirizzo').asstring]));
    tiv_codice_ind := ind_assegna.fieldbyname('tiv_codice').asstring;
  end
  else
  begin
    read_tabella(cli_frn, tabella.fieldbyname('frn_codice').asstring);
    campo := 'tda_codice_differite';
    tiv_codice_ind := '';
  end;

  if ((copy(tabella.fieldbyname('tipo_documento').asstring, 1, 3) = 'ddt') and (tabella.fieldbyname(campo).asstring = '')) or
    ((copy(tabella.fieldbyname('tipo_documento').asstring, 1, 5) = 'bolla') and (tabella.fieldbyname(campo).asstring = '')) or
    ((cli_frn.fieldbyname('tiv_codice').asstring = '') and (tiv_codice_ind = '')) then
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('lti_progressivo').asinteger := 0;
      tabella.fieldbyname('tiv_codice').asstring := '';
    end;
  end
  else
  begin
    if tabella_edit(tabella) then
    begin
      tabella.fieldbyname('lti_progressivo').asinteger := 0;
      tabella.fieldbyname('tiv_codice').asstring := '';
    end;

    if cfg_tipo = 'C' then
    begin
      if ind_assegna.fieldbyname('tiv_codice').asstring <> '' then
      begin
        if tabella_edit(tabella) then
        begin
          tabella.fieldbyname('lti_progressivo').asinteger := 0;
          tabella.fieldbyname('tiv_codice').asstring := ind_assegna.fieldbyname('tiv_codice').asstring;
        end;

        assegnato := true;
      end;
    end;

    if not assegnato then
    begin
      if cli_frn.fieldbyname('data_esenzione_iva').asdatetime = 0 then
      begin
        if lti_progressivo <> 0 then
        begin
          assegnato := false;

          lti_assegna.close;
          lti_assegna.parambyname('cfg_codice').asstring := cli_frn.fieldbyname('codice').asstring;
          lti_assegna.parambyname('anno').asinteger := yearof(tabella.fieldbyname('data_documento').asdatetime);
          lti_assegna.open;
          while not lti_assegna.eof do
          begin
            if lti_progressivo = lti_assegna.fieldbyname('progressivo').asinteger then
            begin
              if ((lti_assegna.fieldbyname('operazione_singola').asstring = 'si') and
                (lti_assegna.fieldbyname('importo_utilizzato').asfloat <> 0)) then
              begin
                messaggio(200, 'la dichiarazione d''intento [' + inttostr(lti_progressivo) + '] è già stata utilizzata');
              end
              else if ((lti_assegna.fieldbyname('operazione_singola').asstring = 'no') and
                (lti_assegna.fieldbyname('importo_utilizzato').asfloat >= lti_assegna.fieldbyname('importo').asfloat)) then
              begin
                messaggio(200, 'l''importo della dichiarazione d''intento [' + inttostr(lti_progressivo) + '] è già stato utilizzato completamente');
              end
              else
              begin
                if tabella_edit(tabella) then
                begin
                  tabella.fieldbyname('lti_progressivo').asinteger := lti_assegna.fieldbyname('progressivo').asinteger;
                  tabella.fieldbyname('tiv_codice').asstring := lti_assegna.fieldbyname('tiv_codice').asstring;
                end;

                assegnato := true;
                break;
              end;
            end;

            lti_assegna.next;
          end;

          if not assegnato then
          begin
            if messaggio(300, 'annullare il riferimento della lettera d''intento sul documento') = 1 then
            begin
              if tabella_edit(tabella) then
              begin
                tabella.fieldbyname('lti_progressivo').asinteger := 0;
                tabella.fieldbyname('tiv_codice').asstring := '';
              end;
            end;
          end;
        end
        else
        begin
          lti_assegna.close;
          lti_assegna.parambyname('cfg_codice').asstring := cli_frn.fieldbyname('codice').asstring;
          lti_assegna.parambyname('anno').asinteger := yearof(tabella.fieldbyname('data_documento').asdatetime);
          lti_assegna.open;
          if lti_assegna.isempty then
          begin
            if tabella_edit(tabella) then
            begin
              tabella.fieldbyname('lti_progressivo').asinteger := 0;
              tabella.fieldbyname('tiv_codice').asstring := '';
            end;
          end
          else
          begin
            while not lti_assegna.eof do
            begin
              if (lti_assegna.fieldbyname('operazione_singola').asstring = 'si') and
                (lti_assegna.fieldbyname('importo_utilizzato').asfloat <> 0) then
              begin
                //ignora
              end
              else if (lti_assegna.fieldbyname('operazione_singola').asstring = 'no') and
                (lti_assegna.fieldbyname('importo').asfloat <=
                lti_assegna.fieldbyname('importo_utilizzato').asfloat) then
              begin
                //ignora
              end
              else
              begin
                if (lti_progressivo = 0) or
                  (lti_progressivo = lti_assegna.fieldbyname('progressivo').asinteger) then
                begin
                  if tabella_edit(tabella) then
                  begin
                    tabella.fieldbyname('lti_progressivo').asinteger := lti_assegna.fieldbyname('progressivo').asinteger;
                    tabella.fieldbyname('tiv_codice').asstring := lti_assegna.fieldbyname('tiv_codice').asstring;
                  end;
                  break;
                end;
              end;

              lti_assegna.next;
            end;
          end;
        end;
      end
      else if tabella.fieldbyname('data_documento').asdatetime <= cli_frn.fieldbyname('data_esenzione_iva').asdatetime then
      begin
        if tabella.fieldbyname('tiv_codice').asstring <> cli_frn.fieldbyname('tiv_codice').asstring then
        begin
          if tabella_edit(tabella) then
          begin
            tabella.fieldbyname('tiv_codice').asstring := cli_frn.fieldbyname('tiv_codice').asstring;
          end;
        end;
      end;
    end;
  end;
end;

procedure TDICINT.capienza_tiv_codice(tabella: tmyquery_go);
begin
//modifica
  if (copy(tabella.fieldbyname('tipo_documento').asstring, 1, 10) <> 'preventivo') and
    (copy(tabella.fieldbyname('tipo_documento').asstring, 1, 7) <> 'ordine') and
    (tabella.fieldbyname('lti_progressivo').asinteger <> 0) then
//mdofica fine
  begin
    lti_capienza.close;
    lti_capienza.parambyname('lti_progressivo').asinteger := tabella.fieldbyname('lti_progressivo').asinteger;
    lti_capienza.parambyname('anno').asinteger := yearof(tabella.fieldbyname('data_documento').asdatetime);
    lti_capienza.open;

    if lti_capienza.isempty then
    begin
      messaggio(200, 'la dichiarazione d''intento con progressivo [' + tabella.fieldbyname('lti_progressivo').asstring +
        '] non esiste' + slinebreak +
        'oppure è stata emessa per un anno diverso da quello del documento [' +
        inttostr(yearof(tabella.fieldbyname('data_documento').asdatetime)) + ']' + slinebreak + slinebreak +
        'provvedere manualmente all''annullamento dell''assegnazione');
    end
    else
    begin
      if lti_capienza.fieldbyname('importo').asfloat < lti_capienza.fieldbyname('importo_utilizzato').asfloat then
      begin
        messaggio(200, 'la capienza della dichiarazione d''intento [' +
          formatfloat(',0.00', lti_capienza.fieldbyname('importo').asfloat) +
          ' ' + divisa_di_conto + '] è stata superata' + slinebreak +
          'l''importo utilizzato è di [' + formatfloat(',0.00', lti_capienza.fieldbyname('importo_utilizzato').asfloat) +
          ' ' + divisa_di_conto + ']' + slinebreak + slinebreak +
          'provvedere manualmente all''annullamento dell''assegnazione');
      end
      else if lti_capienza.fieldbyname('importo').asfloat <
        (lti_capienza.fieldbyname('importo_utilizzato').asfloat + lti_capienza.fieldbyname('importo_utilizzato_ordini').asfloat) then
      begin
        messaggio(200, 'la capienza della dichiarazione d''intento [' +
          formatfloat(',0.00', lti_capienza.fieldbyname('importo').asfloat) +
          ' ' + divisa_di_conto + '] è stata superata includendo gli ordini' + slinebreak + slinebreak +

          'l''importo utilizzato senza ordini è di [' + formatfloat(',0.00', lti_capienza.fieldbyname('importo_utilizzato').asfloat) +
          ' ' + divisa_di_conto + ']' + slinebreak + slinebreak +

          'l''importo utilizzato con gli ordini è di [' + formatfloat(',0.00',
          lti_capienza.fieldbyname('importo_utilizzato').asfloat + lti_capienza.fieldbyname('importo_utilizzato_ordini').asfloat) +
          ' ' + divisa_di_conto + ']');
      end;
    end;
  end;
end;

end.
