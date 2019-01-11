inherited FSelecionarOrcamentoVComiss: TFSelecionarOrcamentoVComiss
  Caption = 'FSelecionarOrcamentoVComiss'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        object grConsultaDBTableView1VCOR_ID: TcxGridDBColumn
          DataBinding.FieldName = 'VCOR_ID'
          Visible = False
        end
        object grConsultaDBTableView1VCOR_CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'VCOR_CODIGO'
        end
        object grConsultaDBTableView1VCOR_DATAEMISSAO: TcxGridDBColumn
          Caption = 'Data Emiss'#227'o'
          DataBinding.FieldName = 'VCOR_DATAEMISSAO'
          Width = 100
        end
        object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLI_CLIENTE'
          Width = 300
        end
        object grConsultaDBTableView1VCOR_CLIENTE_ID: TcxGridDBColumn
          DataBinding.FieldName = 'VCOR_CLIENTE_ID'
          Visible = False
        end
        object grConsultaDBTableView1VCOR_VALORTOTAL: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VCOR_VALORTOTAL'
          Width = 100
        end
        object grConsultaDBTableView1VCOR_CONDICAOPAGTO: TcxGridDBColumn
          Caption = 'Condi'#231#227'o Pagamento'
          DataBinding.FieldName = 'VCOR_CONDICAOPAGTO'
          Width = 300
        end
        object grConsultaDBTableView1VCOR_DH_CA: TcxGridDBColumn
          DataBinding.FieldName = 'VCOR_DH_CA'
          Visible = False
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
      'select vcomiss_orcamento.vcor_id ID,'
      '       vcomiss_orcamento.vcor_codigo CODIGO,'
      '       '#39' '#39' DESCRICAO,'
      '       vcomiss_orcamento.*,'
      '       clientes.cli_cliente'
      '  from vcomiss_orcamento'
      
        ' join clientes on (clientes.cli_id=vcomiss_orcamento.vcor_client' +
        'e_id)'
      ' where clientes.cli_id = :cli_id'
      '   and not exists(select null'
      '                    from venda_comissionada'
      
        '                   where venda_comissionada.vec_vcor_id=vcomiss_' +
        'orcamento.vcor_id )')
    ParamData = <
      item
        DataType = ftString
        Name = 'cli_id'
        ParamType = ptUnknown
      end>
    object qConsultaVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object qConsultaVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DATAEMISSAO"'
    end
    object qConsultaVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CLIENTE_ID"'
    end
    object qConsultaVCOR_VALORTOTAL: TIBBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_VALORTOTAL"'
      Precision = 18
      Size = 2
    end
    object qConsultaVCOR_CONDICAOPAGTO: TIBStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CONDICAOPAGTO"'
      Size = 100
    end
    object qConsultaVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DH_CA"'
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConsultaVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object cdsConsultaVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DATAEMISSAO"'
    end
    object cdsConsultaVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CLIENTE_ID"'
    end
    object cdsConsultaVCOR_VALORTOTAL: TBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_VALORTOTAL"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVCOR_CONDICAOPAGTO: TStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CONDICAOPAGTO"'
      Size = 100
    end
    object cdsConsultaVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DH_CA"'
    end
    object cdsConsultaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      Required = True
    end
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 1
    end
  end
end
