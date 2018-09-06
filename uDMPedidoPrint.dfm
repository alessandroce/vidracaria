object DMPedidoPrint: TDMPedidoPrint
  OldCreateOrder = False
  Left = 218
  Top = 187
  Height = 526
  Width = 618
  object qryViewPedidoPrint: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT VIEW_PEDIDO_PRINT.*'
      'FROM VIEW_PEDIDO_PRINT'
      'WHERE VIEW_PEDIDO_PRINT.ped_id =:ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 64
    Top = 32
    object qryViewPedidoPrintCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryViewPedidoPrintCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewPedidoPrintCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewPedidoPrintCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
    object qryViewPedidoPrintCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewPedidoPrintCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewPedidoPrintCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewPedidoPrintCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewPedidoPrintCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewPedidoPrintCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewPedidoPrintCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewPedidoPrintTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 13
    end
    object qryViewPedidoPrintITPED_PROD__VALOR: TStringField
      FieldName = 'ITPED_PROD__VALOR'
      Size = 100
    end
    object qryViewPedidoPrintITPED_QUANT__DATA_APRES: TStringField
      FieldName = 'ITPED_QUANT__DATA_APRES'
    end
    object qryViewPedidoPrintITENSPED_VALOR_UNIT: TStringField
      FieldName = 'ITENSPED_VALOR_UNIT'
      Size = 15
    end
    object qryViewPedidoPrintITENSPED_VALOR_TOTAL: TStringField
      FieldName = 'ITENSPED_VALOR_TOTAL'
      Size = 15
    end
    object qryViewPedidoPrintITENSPED_SEQUE: TStringField
      FieldName = 'ITENSPED_SEQUE'
      Size = 15
    end
    object qryViewPedidoPrintPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewPedidoPrintPED_CLI_ID: TIntegerField
      FieldName = 'PED_CLI_ID'
    end
    object qryViewPedidoPrintPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
    end
    object qryViewPedidoPrintPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object qryViewPedidoPrintPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryViewPedidoPrintPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object qryViewPedidoPrintPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object qryViewPedidoPrintPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryViewPedidoPrintPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewPedidoPrintPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewPedidoPrintUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object qryViewPedidoPrintITPED_ID__PARC_DESC: TStringField
      FieldName = 'ITPED_ID__PARC_DESC'
      Size = 30
    end
  end
  object dspViewPedidoPrint: TDataSetProvider
    DataSet = qryViewPedidoPrint
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 80
  end
  object dsViewPedidoPrint: TDataSource
    DataSet = cdsViewPedidoPrint
    Left = 64
    Top = 176
  end
  object cdsViewPedidoPrint: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedidoPrint'
    Left = 63
    Top = 128
    object cdsViewPedidoPrintCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object cdsViewPedidoPrintCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewPedidoPrintCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewPedidoPrintCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
    object cdsViewPedidoPrintCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewPedidoPrintCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewPedidoPrintCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewPedidoPrintCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewPedidoPrintCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewPedidoPrintCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewPedidoPrintCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewPedidoPrintTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 13
    end
    object cdsViewPedidoPrintITPED_PROD__VALOR: TStringField
      FieldName = 'ITPED_PROD__VALOR'
      Size = 100
    end
    object cdsViewPedidoPrintITPED_QUANT__DATA_APRES: TStringField
      FieldName = 'ITPED_QUANT__DATA_APRES'
    end
    object cdsViewPedidoPrintITENSPED_VALOR_UNIT: TStringField
      FieldName = 'ITENSPED_VALOR_UNIT'
      Size = 15
    end
    object cdsViewPedidoPrintITENSPED_VALOR_TOTAL: TStringField
      FieldName = 'ITENSPED_VALOR_TOTAL'
      Size = 15
    end
    object cdsViewPedidoPrintITENSPED_SEQUE: TStringField
      FieldName = 'ITENSPED_SEQUE'
      Size = 15
    end
    object cdsViewPedidoPrintPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewPedidoPrintPED_CLI_ID: TIntegerField
      FieldName = 'PED_CLI_ID'
    end
    object cdsViewPedidoPrintPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
    end
    object cdsViewPedidoPrintPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object cdsViewPedidoPrintPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsViewPedidoPrintPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object cdsViewPedidoPrintPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object cdsViewPedidoPrintPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsViewPedidoPrintPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewPedidoPrintPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewPedidoPrintUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object cdsViewPedidoPrintITPED_ID__PARC_DESC: TStringField
      FieldName = 'ITPED_ID__PARC_DESC'
      Size = 30
    end
  end
  object qryViewPedido_AdiantamentoPedPrint: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ADIANTAMENTOS_PEDIDO.*'
      'FROM ADIANTAMENTOS_PEDIDO, PEDIDOS'
      'WHERE ADIANTAMENTOS_PEDIDO.adiantped_ped_id = PEDIDOS.ped_id'
      'AND PEDIDOS.ped_id =:ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 176
    Top = 48
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_PED_ID: TIntegerField
      FieldName = 'ADIANTPED_PED_ID'
      Required = True
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_ID: TIntegerField
      FieldName = 'ADIANTPED_BANCO_ID'
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      Precision = 15
      Size = 2
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object qryViewPedido_AdiantamentoPedPrintADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewPedido_AdiantamentoPedPrint: TDataSetProvider
    DataSet = qryViewPedido_AdiantamentoPedPrint
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 96
  end
  object dsViewPedido_AdiantamentoPedPrint: TDataSource
    DataSet = cdsViewPedido_AdiantamentoPedPrint
    Left = 176
    Top = 192
  end
  object cdsViewPedido_AdiantamentoPedPrint: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedido_AdiantamentoPedPrint'
    Left = 175
    Top = 144
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_PED_ID: TIntegerField
      FieldName = 'ADIANTPED_PED_ID'
      Required = True
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_ID: TIntegerField
      FieldName = 'ADIANTPED_BANCO_ID'
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object cdsViewPedido_AdiantamentoPedPrintADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 1
    end
  end
  object qryViewPedidoPrintSoma: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(PEDIDOS_ITENS.itensped_valor_total) AS SOMA'
      'FROM PEDIDOS_ITENS, PEDIDOS, CLIENTES'
      'WHERE PEDIDOS_ITENS.itensped_ped_id = PEDIDOS.ped_id'
      'AND PEDIDOS.ped_cli_id = CLIENTES.cli_id'
      'AND PEDIDOS.ped_id =:ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 288
    Top = 32
    object qryViewPedidoPrintSomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      Precision = 15
      Size = 2
    end
  end
  object dspViewPedidoPrintSoma: TDataSetProvider
    DataSet = qryViewPedidoPrintSoma
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 80
  end
  object dsViewPedidoPrintSoma: TDataSource
    DataSet = cdsViewPedidoPrintSoma
    Left = 288
    Top = 176
  end
  object cdsViewPedidoPrintSoma: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedidoPrintSoma'
    Left = 287
    Top = 128
    object cdsViewPedidoPrintSomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
end
