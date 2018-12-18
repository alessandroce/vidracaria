inherited FSelecionarVenda: TFSelecionarVenda
  Caption = 'FSelecionarVenda'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        object grConsultaDBTableView1VEC_NUMDOCUMENTO: TcxGridDBColumn
          Caption = 'Codigo Venda'
          DataBinding.FieldName = 'VEC_NUMDOCUMENTO'
          Width = 82
        end
        object grConsultaDBTableView1VENDEDOR: TcxGridDBColumn
          Caption = 'Vendedor'
          DataBinding.FieldName = 'VENDEDOR'
          Width = 200
        end
        object grConsultaDBTableView1CLIENTE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLIENTE'
          Width = 200
        end
        object grConsultaDBTableView1VEC_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VEC_VALOR'
          Width = 87
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
      'select venda_comissionada.vec_id ID,'
      '       venda_comissionada.vec_id CODIGO,'
      '       '#39' '#39' DESCRICAO,'
      '       vend.cli_cliente vendedor,'
      '       cli.cli_id cliente_id,'
      '       cli.cli_cliente cliente,'
      '       venda_comissionada.vec_numdocumento,'
      '       venda_comissionada.vec_data,'
      '       venda_comissionada.vec_valor'
      '  from venda_comissionada'
      
        ' left join clientes vend on (vend.cli_id = venda_comissionada.ve' +
        'c_vendedor_id)'
      
        ' left join clientes cli on (cli.cli_id = venda_comissionada.vec_' +
        'cliente_id)'
      ' where not exists (select null'
      '                     from conferencia_medida'
      
        '                    where conferencia_medida.cmed_venda_id=venda' +
        '_comissionada.vec_id)')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_ID"'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VENDA_COMISSIONADA"."VEC_ID"'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qConsultaVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaVEC_NUMDOCUMENTO: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
      Origin = '"VENDA_COMISSIONADA"."VEC_NUMDOCUMENTO"'
    end
    object qConsultaVEC_DATA: TDateField
      FieldName = 'VEC_DATA'
      Origin = '"VENDA_COMISSIONADA"."VEC_DATA"'
    end
    object qConsultaVEC_VALOR: TIBBCDField
      FieldName = 'VEC_VALOR'
      Origin = '"VENDA_COMISSIONADA"."VEC_VALOR"'
      Precision = 18
      Size = 2
    end
    object qConsultaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTES.CLI_ID'
    end
  end
  inherited cdsConsulta: TClientDataSet
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
      FixedChar = True
      Size = 1
    end
    object cdsConsultaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object cdsConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsConsultaVEC_NUMDOCUMENTO: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
    end
    object cdsConsultaVEC_DATA: TDateField
      FieldName = 'VEC_DATA'
    end
    object cdsConsultaVEC_VALOR: TBCDField
      FieldName = 'VEC_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
  end
end
