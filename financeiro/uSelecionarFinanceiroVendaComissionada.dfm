inherited FSelecionarFinanceiroVendaComissionada: TFSelecionarFinanceiroVendaComissionada
  Caption = 'FSelecionarFinanceiroVendaComissionada'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        OptionsSelection.CellSelect = True
        object grConsultaDBTableView1SELECIONAR: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 50
          IsCaptionAssigned = True
        end
        object grConsultaDBTableView1PAR_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PAR_ID'
          Visible = False
          Options.Editing = False
        end
        object grConsultaDBTableView1PAR_DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'PAR_DESCRICAO'
          Options.Editing = False
          Width = 250
        end
        object grConsultaDBTableView1DESC_CLIENTE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'DESC_CLIENTE'
          Options.Editing = False
          Width = 250
        end
        object grConsultaDBTableView1PAR_DATACOMPETENCIA: TcxGridDBColumn
          Caption = 'Data Compet'#234'ncia'
          DataBinding.FieldName = 'PAR_DATACOMPETENCIA'
          Options.Editing = False
          Width = 250
        end
        object grConsultaDBTableView1PAR_DATAVENCTO: TcxGridDBColumn
          Caption = 'Data Vencimento'
          DataBinding.FieldName = 'PAR_DATAVENCTO'
          Options.Editing = False
          Width = 250
        end
        object grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'PAR_VALOR'
          Options.Editing = False
          Width = 100
        end
        object grConsultaDBTableView1PAR_CETROCUSTO: TcxGridDBColumn
          Caption = 'Centro Custo'
          DataBinding.FieldName = 'PAR_CETROCUSTO'
          Options.Editing = False
          Width = 250
        end
        object grConsultaDBTableView1PIT_DESCRICAO: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'PIT_DESCRICAO'
          Options.Editing = False
          Width = 250
        end
      end
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select '#39'N'#39' selecionar,'
      '       pagarreceber.par_id ID,'
      '       pagarreceber.par_id,'
      '       pagarreceber.par_id CODIGO,'
      '       pagarreceber.par_descricao,'
      '       pagarreceber.par_descricao DESCRICAO,'
      '       clientes.cli_id,'
      '       clientes.cli_cliente desc_cliente,'
      '       pagarreceber.par_datacompetencia,'
      '       pagarreceber.par_datavencto,'
      '       pagarreceber.par_valor,'
      '       pagarreceber.par_cetrocusto,'
      '       pagarreceber.par_vendedor_id,'
      '       pl_item.pit_descricao'
      '  from pagarreceber'
      ' left join clientes on (clientes.cli_id=pagarreceber.par_cli_id)'
      ' left join pl_item on (pl_item.pit_id=pagarreceber.par_cat_id)'
      ' where pagarreceber.par_pagrec=1'
      '   and pl_item.pit_id=3'
      '   and not exists'
      '       (select null'
      '          from venda_comissionada'
      
        '         where venda_comissionada.vec_id=pagarreceber.par_vendac' +
        'omissionada_id)'
      ' order by clientes.cli_cliente, pagarreceber.par_descricao')
    object qConsultaSELECIONAR: TIBStringField
      FieldName = 'SELECIONAR'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qConsultaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
    object qConsultaDESC_CLIENTE: TIBStringField
      FieldName = 'DESC_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
      Origin = '"PAGARRECEBER"."PAR_DATACOMPETENCIA"'
    end
    object qConsultaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = '"PAGARRECEBER"."PAR_DATAVENCTO"'
    end
    object qConsultaPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = '"PAGARRECEBER"."PAR_VALOR"'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = '"PAGARRECEBER"."PAR_CETROCUSTO"'
      Size = 100
    end
    object qConsultaPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Origin = '"PL_ITEM"."PIT_DESCRICAO"'
      Size = 100
    end
    object qConsultaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = '"CLIENTES"."CLI_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qConsultaPAR_VENDEDOR_ID: TIntegerField
      FieldName = 'PAR_VENDEDOR_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDEDOR_ID"'
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaSELECIONAR: TStringField
      FieldName = 'SELECIONAR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Required = True
    end
    object cdsConsultaPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 100
    end
    object cdsConsultaDESC_CLIENTE: TStringField
      FieldName = 'DESC_CLIENTE'
      Size = 100
    end
    object cdsConsultaPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
    end
    object cdsConsultaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
    end
    object cdsConsultaPAR_VALOR: TBCDField
      FieldName = 'PAR_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_CETROCUSTO: TStringField
      FieldName = 'PAR_CETROCUSTO'
      Size = 100
    end
    object cdsConsultaPIT_DESCRICAO: TStringField
      FieldName = 'PIT_DESCRICAO'
      Size = 100
    end
    object cdsConsultaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object cdsConsultaPAR_VENDEDOR_ID: TIntegerField
      FieldName = 'PAR_VENDEDOR_ID'
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
