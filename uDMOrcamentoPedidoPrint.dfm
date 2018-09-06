object DMOrcamentoPedidoPrint: TDMOrcamentoPedidoPrint
  OldCreateOrder = False
  Left = 422
  Top = 200
  Height = 322
  Width = 498
  object qryViewOrcamentoPedidoPrint: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftInteger
        Name = 'VE_ORCPED_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SP_VIEW_ORCAMENTOPEDIDO_PRINT(:VE_ORCPED_ID)')
    SQLConnection = DMConnection.SQLConnection
    Left = 88
    Top = 24
    object qryViewOrcamentoPedidoPrintVS_ORCPED_ID: TIntegerField
      FieldName = 'VS_ORCPED_ID'
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_CLI_ID: TIntegerField
      FieldName = 'VS_ORCPED_CLI_ID'
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_USU_ID: TIntegerField
      FieldName = 'VS_ORCPED_USU_ID'
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_ORCTP_ID: TIntegerField
      FieldName = 'VS_ORCPED_ORCTP_ID'
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_DATA: TDateField
      FieldName = 'VS_ORCPED_DATA'
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_TIPO: TStringField
      FieldName = 'VS_ORCPED_TIPO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_OBSERVACAO: TBlobField
      FieldName = 'VS_ORCPED_OBSERVACAO'
      Size = 1
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_MENSAGENS: TBlobField
      FieldName = 'VS_ORCPED_MENSAGENS'
      Size = 1
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'VS_ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_TIPO_PAGTO: TStringField
      FieldName = 'VS_ORCPED_TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_PERIODO_MANUT: TIntegerField
      FieldName = 'VS_ORCPED_PERIODO_MANUT'
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_DATA_MANUT: TDateField
      FieldName = 'VS_ORCPED_DATA_MANUT'
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_MANUT_EFETUADA: TStringField
      FieldName = 'VS_ORCPED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_PORCENTAGEM: TStringField
      FieldName = 'VS_ORCPED_PORCENTAGEM'
      Size = 30
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField
      FieldName = 'VS_ORCPED_VALOR_TOTAL_PORCENT'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_DESCONTO: TFMTBCDField
      FieldName = 'VS_ORCPED_DESCONTO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_VALORVENDA: TFMTBCDField
      FieldName = 'VS_ORCPED_VALORVENDA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'VS_ORCPED_VALORPARCELADO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELA: TFMTBCDField
      FieldName = 'VS_ORCPED_VALORPARCELA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ORCPED_PARCELADOEM: TIntegerField
      FieldName = 'VS_ORCPED_PARCELADOEM'
    end
    object qryViewOrcamentoPedidoPrintVS_USU_NOME: TStringField
      FieldName = 'VS_USU_NOME'
      Size = 40
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_ID: TIntegerField
      FieldName = 'VS_CLI_ID'
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_CLIENTE: TStringField
      FieldName = 'VS_CLI_CLIENTE'
      Size = 100
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_ENDERECO: TStringField
      FieldName = 'VS_CLI_ENDERECO'
      Size = 100
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_BAIRRO: TStringField
      FieldName = 'VS_CLI_BAIRRO'
      Size = 100
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_CEP: TStringField
      FieldName = 'VS_CLI_CEP'
      Size = 30
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_MUNICIPIO: TStringField
      FieldName = 'VS_CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_FONE: TStringField
      FieldName = 'VS_CLI_FONE'
      Size = 30
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_FAX: TStringField
      FieldName = 'VS_CLI_FAX'
      Size = 30
    end
    object qryViewOrcamentoPedidoPrintVS_CLI_CELULAR: TStringField
      FieldName = 'VS_CLI_CELULAR'
      Size = 30
    end
    object qryViewOrcamentoPedidoPrintVS_TIPO: TStringField
      FieldName = 'VS_TIPO'
      FixedChar = True
      Size = 10
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_QTDADE_PECA: TIntegerField
      FieldName = 'VS_ITENS_QTDADE_PECA'
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'VS_ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_LARGURA: TFMTBCDField
      FieldName = 'VS_ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'VS_ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'VS_ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_ALTURA: TFMTBCDField
      FieldName = 'VS_ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_DESCRICAO: TStringField
      FieldName = 'VS_ITENS_DESCRICAO'
      Size = 100
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_UNIDMEDIDA: TStringField
      FieldName = 'VS_ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_ESPESSURA: TFMTBCDField
      FieldName = 'VS_ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'VS_ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'VS_ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_ORCTP_DESCRICAO: TStringField
      FieldName = 'VS_ORCTP_DESCRICAO'
      Size = 100
    end
    object qryViewOrcamentoPedidoPrintVS_MQUADRADO: TFMTBCDField
      FieldName = 'VS_MQUADRADO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_MCORRIDO: TFMTBCDField
      FieldName = 'VS_MCORRIDO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcamentoPedidoPrintVS_MLINEAR: TFMTBCDField
      FieldName = 'VS_MLINEAR'
      Precision = 15
      Size = 2
    end
  end
  object dspViewOrcamentoPedidoPrint: TDataSetProvider
    DataSet = qryViewOrcamentoPedidoPrint
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 72
  end
  object cdsViewOrcamentoPedidoPrint: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcamentoPedidoPrint'
    Left = 88
    Top = 120
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_ID: TIntegerField
      FieldName = 'VS_ORCPED_ID'
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_CLI_ID: TIntegerField
      FieldName = 'VS_ORCPED_CLI_ID'
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_USU_ID: TIntegerField
      FieldName = 'VS_ORCPED_USU_ID'
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_ORCTP_ID: TIntegerField
      FieldName = 'VS_ORCPED_ORCTP_ID'
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_DATA: TDateField
      FieldName = 'VS_ORCPED_DATA'
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_TIPO: TStringField
      FieldName = 'VS_ORCPED_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_OBSERVACAO: TBlobField
      FieldName = 'VS_ORCPED_OBSERVACAO'
      Size = 1
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_MENSAGENS: TBlobField
      FieldName = 'VS_ORCPED_MENSAGENS'
      Size = 1
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'VS_ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_TIPO_PAGTO: TStringField
      FieldName = 'VS_ORCPED_TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_PERIODO_MANUT: TIntegerField
      FieldName = 'VS_ORCPED_PERIODO_MANUT'
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_DATA_MANUT: TDateField
      FieldName = 'VS_ORCPED_DATA_MANUT'
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_MANUT_EFETUADA: TStringField
      FieldName = 'VS_ORCPED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_PORCENTAGEM: TStringField
      FieldName = 'VS_ORCPED_PORCENTAGEM'
      Size = 30
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField
      FieldName = 'VS_ORCPED_VALOR_TOTAL_PORCENT'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_DESCONTO: TFMTBCDField
      FieldName = 'VS_ORCPED_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_VALORVENDA: TFMTBCDField
      FieldName = 'VS_ORCPED_VALORVENDA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'VS_ORCPED_VALORPARCELADO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELA: TFMTBCDField
      FieldName = 'VS_ORCPED_VALORPARCELA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCPED_PARCELADOEM: TIntegerField
      FieldName = 'VS_ORCPED_PARCELADOEM'
    end
    object cdsViewOrcamentoPedidoPrintVS_USU_NOME: TStringField
      FieldName = 'VS_USU_NOME'
      Size = 40
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_ID: TIntegerField
      FieldName = 'VS_CLI_ID'
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_CLIENTE: TStringField
      FieldName = 'VS_CLI_CLIENTE'
      Size = 100
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_ENDERECO: TStringField
      FieldName = 'VS_CLI_ENDERECO'
      Size = 100
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_BAIRRO: TStringField
      FieldName = 'VS_CLI_BAIRRO'
      Size = 100
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_CEP: TStringField
      FieldName = 'VS_CLI_CEP'
      Size = 30
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_MUNICIPIO: TStringField
      FieldName = 'VS_CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_FONE: TStringField
      FieldName = 'VS_CLI_FONE'
      Size = 30
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_FAX: TStringField
      FieldName = 'VS_CLI_FAX'
      Size = 30
    end
    object cdsViewOrcamentoPedidoPrintVS_CLI_CELULAR: TStringField
      FieldName = 'VS_CLI_CELULAR'
      Size = 30
    end
    object cdsViewOrcamentoPedidoPrintVS_TIPO: TStringField
      FieldName = 'VS_TIPO'
      FixedChar = True
      Size = 10
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_QTDADE_PECA: TIntegerField
      FieldName = 'VS_ITENS_QTDADE_PECA'
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'VS_ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_LARGURA: TFMTBCDField
      FieldName = 'VS_ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'VS_ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'VS_ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_ALTURA: TFMTBCDField
      FieldName = 'VS_ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_DESCRICAO: TStringField
      FieldName = 'VS_ITENS_DESCRICAO'
      Size = 100
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_UNIDMEDIDA: TStringField
      FieldName = 'VS_ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_ESPESSURA: TFMTBCDField
      FieldName = 'VS_ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'VS_ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'VS_ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_ORCTP_DESCRICAO: TStringField
      FieldName = 'VS_ORCTP_DESCRICAO'
      Size = 100
    end
    object cdsViewOrcamentoPedidoPrintVS_MQUADRADO: TFMTBCDField
      FieldName = 'VS_MQUADRADO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_MCORRIDO: TFMTBCDField
      FieldName = 'VS_MCORRIDO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcamentoPedidoPrintVS_MLINEAR: TFMTBCDField
      FieldName = 'VS_MLINEAR'
      Precision = 15
      Size = 2
    end
  end
  object dsViewOrcamentoPedidoPrint: TDataSource
    DataSet = cdsViewOrcamentoPedidoPrint
    Left = 88
    Top = 168
  end
  object qryViewOrcPedido_SomaPrint: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VE_ORCPED_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '    SUM(VS_ITENS_VALOR_TOTAL) AS VALOR_TOTAL,'
      '    SUM(VS_MQUADRADO) AS MQUADRADO,'
      '    SUM(VS_MCORRIDO) AS MCORRIDO'
      'FROM SP_VIEW_ORCAMENTOPEDIDO_PRINT(:VE_ORCPED_ID)')
    SQLConnection = DMConnection.SQLConnection
    Left = 192
    Top = 40
    object qryViewOrcPedido_SomaPrintVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_SomaPrintMQUADRADO: TFMTBCDField
      FieldName = 'MQUADRADO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_SomaPrintMCORRIDO: TFMTBCDField
      FieldName = 'MCORRIDO'
      Precision = 15
      Size = 2
    end
  end
  object dspViewOrcPedido_SomaPrint: TDataSetProvider
    DataSet = qryViewOrcPedido_SomaPrint
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 88
  end
  object dsViewOrcPedido_SomaPrint: TDataSource
    DataSet = cdsViewOrcPedido_SomaPrint
    Left = 192
    Top = 184
  end
  object cdsViewOrcPedido_SomaPrint: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_SomaPrint'
    Left = 192
    Top = 136
    object cdsViewOrcPedido_SomaPrintVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_SomaPrintMQUADRADO: TFMTBCDField
      FieldName = 'MQUADRADO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_SomaPrintMCORRIDO: TFMTBCDField
      FieldName = 'MCORRIDO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object qryAcabamento: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM ACABAMENTO_ITENS'
      ' WHERE ACABAMENTO_ITENS.ITENS_ORCPED_ID = :ID'
      '   AND ACABAMENTO_ITENS.ITEM_PRODUTO    = :ITEM')
    SQLConnection = DMConnection.SQLConnection
    Left = 328
    Top = 16
    object qryAcabamentoITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      Required = True
    end
    object qryAcabamentoITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object qryAcabamentoITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
    end
    object qryAcabamentoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object qryAcabamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryAcabamentoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryAcabamentoCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
  end
  object dspAcabamento: TDataSetProvider
    DataSet = qryAcabamento
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 64
  end
  object cdsAcabamento: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcabamento'
    Left = 328
    Top = 112
    object cdsAcabamentoITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      Required = True
    end
    object cdsAcabamentoITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object cdsAcabamentoITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
    end
    object cdsAcabamentoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object cdsAcabamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsAcabamentoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsAcabamentoCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
  end
  object dsAcabamento: TDataSource
    DataSet = cdsAcabamento
    Left = 328
    Top = 160
  end
end
