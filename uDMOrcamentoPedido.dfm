object DMOrcamentoPedido: TDMOrcamentoPedido
  OldCreateOrder = False
  Left = 57
  Top = 48
  Height = 631
  Width = 905
  object qryViewOrcPedido_BuscaProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM PRODUTO'
      'WHERE PROD_DESCRICAO LIKE :DESCRICAO'
      'AND PRODUTO.PROD_PRODTP_ID = 25'
      'ORDER BY PRODUTO.PROD_DESCRICAO')
    SQLConnection = DMConnection.SQLConnection
    Left = 80
    Top = 232
    object qryViewOrcPedido_BuscaProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object qryViewOrcPedido_BuscaProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object qryViewOrcPedido_BuscaProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryViewOrcPedido_BuscaProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcPedido_BuscaProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaProdutoPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryViewOrcPedido_BuscaProdutoPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaProdutoPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaProdutoPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaProdutoPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
  end
  object dspViewOrcPedido_BuscaProduto: TDataSetProvider
    DataSet = qryViewOrcPedido_BuscaProduto
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 280
  end
  object dsViewOrcPedido_BuscaProduto: TDataSource
    DataSet = cdsViewOrcPedido_BuscaProduto
    Left = 80
    Top = 376
  end
  object cdsViewOrcPedido_BuscaProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_BuscaProduto'
    Left = 80
    Top = 328
    object cdsViewOrcPedido_BuscaProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaProdutoPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
  end
  object qryViewOrcPedido_BuscaCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CLI_ID, CLI_CLIENTE'
      'FROM CLIENTES'
      'WHERE CLI_CLIENTE LIKE :NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 184
    Top = 248
    object qryViewOrcPedido_BuscaClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewOrcPedido_BuscaClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object dspViewOrcPedido_BuscaCliente: TDataSetProvider
    DataSet = qryViewOrcPedido_BuscaCliente
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 296
  end
  object dsViewOrcPedido_BuscaCliente: TDataSource
    DataSet = cdsViewOrcPedido_BuscaCliente
    Left = 184
    Top = 392
  end
  object cdsViewOrcPedido_BuscaCliente: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_BuscaCliente'
    Left = 184
    Top = 344
    object cdsViewOrcPedido_BuscaClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewOrcPedido_BuscaClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object qryDadosOrcPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORDPED_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ORCAMENTOPEDIDOS'
      'WHERE ORCAMENTOPEDIDOS.orcped_id = :ORDPED_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 40
    Top = 8
    object qryDadosOrcPedidoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcPedidoORCPED_CLI_ID: TIntegerField
      FieldName = 'ORCPED_CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcPedidoORCPED_USU_ID: TIntegerField
      FieldName = 'ORCPED_USU_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcPedidoORCPED_ORCTP_ID: TIntegerField
      FieldName = 'ORCPED_ORCTP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosOrcPedidoORCPED_DATA: TDateField
      FieldName = 'ORCPED_DATA'
    end
    object qryDadosOrcPedidoORCPED_TIPO: TStringField
      FieldName = 'ORCPED_TIPO'
      FixedChar = True
      Size = 1
    end
    object qryDadosOrcPedidoORCPED_OBSERVACAO: TBlobField
      FieldName = 'ORCPED_OBSERVACAO'
      Size = 1
    end
    object qryDadosOrcPedidoORCPED_MENSAGENS: TBlobField
      FieldName = 'ORCPED_MENSAGENS'
      Size = 1
    end
    object qryDadosOrcPedidoORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedidoORCPED_TIPO_PAGTO: TStringField
      FieldName = 'ORCPED_TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object qryDadosOrcPedidoORCPED_PERIODO_MANUT: TIntegerField
      FieldName = 'ORCPED_PERIODO_MANUT'
    end
    object qryDadosOrcPedidoORCPED_DATA_MANUT: TDateField
      FieldName = 'ORCPED_DATA_MANUT'
    end
    object qryDadosOrcPedidoORCPED_MANUT_EFETUADA: TStringField
      FieldName = 'ORCPED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryDadosOrcPedidoORCPED_PORCENTAGEM: TStringField
      FieldName = 'ORCPED_PORCENTAGEM'
      Size = 30
    end
    object qryDadosOrcPedidoORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL_PORCENT'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedidoORCPED_DESCONTO: TFMTBCDField
      FieldName = 'ORCPED_DESCONTO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedidoORCPED_VALORVENDA: TFMTBCDField
      FieldName = 'ORCPED_VALORVENDA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedidoORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELADO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedidoORCPED_PARCELADOEM: TIntegerField
      FieldName = 'ORCPED_PARCELADOEM'
    end
    object qryDadosOrcPedidoORCPED_VALORPARCELA: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedidoORCPED_DATAREVISAO: TDateField
      FieldName = 'ORCPED_DATAREVISAO'
    end
    object qryDadosOrcPedidoORCPED_TEMREVISAO: TStringField
      FieldName = 'ORCPED_TEMREVISAO'
      FixedChar = True
      Size = 1
    end
    object qryDadosOrcPedidoORCPED_ACRESCIMO: TFMTBCDField
      FieldName = 'ORCPED_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedidoORCPED_CORALUMINIO: TStringField
      FieldName = 'ORCPED_CORALUMINIO'
      Size = 100
    end
    object qryDadosOrcPedidoORCPED_CORCOMPONENTE: TStringField
      FieldName = 'ORCPED_CORCOMPONENTE'
      Size = 100
    end
  end
  object dspDadosOrcPedido: TDataSetProvider
    DataSet = qryDadosOrcPedido
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 56
  end
  object dsDadosOrcPedido: TDataSource
    DataSet = cdsDadosOrcPedido
    Left = 40
    Top = 152
  end
  object cdsDadosOrcPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOrcPedido'
    Left = 40
    Top = 104
    object cdsDadosOrcPedidoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcPedidoORCPED_CLI_ID: TIntegerField
      FieldName = 'ORCPED_CLI_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcPedidoORCPED_USU_ID: TIntegerField
      FieldName = 'ORCPED_USU_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcPedidoORCPED_ORCTP_ID: TIntegerField
      FieldName = 'ORCPED_ORCTP_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosOrcPedidoORCPED_DATA: TDateField
      FieldName = 'ORCPED_DATA'
    end
    object cdsDadosOrcPedidoORCPED_TIPO: TStringField
      FieldName = 'ORCPED_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosOrcPedidoORCPED_OBSERVACAO: TBlobField
      FieldName = 'ORCPED_OBSERVACAO'
      Size = 1
    end
    object cdsDadosOrcPedidoORCPED_MENSAGENS: TBlobField
      FieldName = 'ORCPED_MENSAGENS'
      Size = 1
    end
    object cdsDadosOrcPedidoORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedidoORCPED_TIPO_PAGTO: TStringField
      FieldName = 'ORCPED_TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosOrcPedidoORCPED_PERIODO_MANUT: TIntegerField
      FieldName = 'ORCPED_PERIODO_MANUT'
    end
    object cdsDadosOrcPedidoORCPED_DATA_MANUT: TDateField
      FieldName = 'ORCPED_DATA_MANUT'
    end
    object cdsDadosOrcPedidoORCPED_MANUT_EFETUADA: TStringField
      FieldName = 'ORCPED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsDadosOrcPedidoORCPED_PORCENTAGEM: TStringField
      FieldName = 'ORCPED_PORCENTAGEM'
      Size = 30
    end
    object cdsDadosOrcPedidoORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL_PORCENT'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedidoORCPED_DESCONTO: TFMTBCDField
      FieldName = 'ORCPED_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedidoORCPED_VALORVENDA: TFMTBCDField
      FieldName = 'ORCPED_VALORVENDA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedidoORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELADO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedidoORCPED_PARCELADOEM: TIntegerField
      FieldName = 'ORCPED_PARCELADOEM'
    end
    object cdsDadosOrcPedidoORCPED_VALORPARCELA: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedidoORCPED_DATAREVISAO: TDateField
      FieldName = 'ORCPED_DATAREVISAO'
    end
    object cdsDadosOrcPedidoORCPED_TEMREVISAO: TStringField
      FieldName = 'ORCPED_TEMREVISAO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosOrcPedidoORCPED_ACRESCIMO: TFMTBCDField
      FieldName = 'ORCPED_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedidoORCPED_CORALUMINIO: TStringField
      FieldName = 'ORCPED_CORALUMINIO'
      Size = 100
    end
    object cdsDadosOrcPedidoORCPED_CORCOMPONENTE: TStringField
      FieldName = 'ORCPED_CORCOMPONENTE'
      Size = 100
    end
  end
  object qryDadosOrcPedido_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ITENS_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO_ITENS'
      'WHERE PRODUTO_ITENS.ITENS_ID = :ITENS_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 120
    Top = 24
    object qryDadosOrcPedido_ItensITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcPedido_ItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object qryDadosOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object qryDadosOrcPedido_ItensITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object qryDadosOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object qryDadosOrcPedido_ItensITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object qryDadosOrcPedido_ItensITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_ACABAMENTO: TStringField
      FieldName = 'ITENS_ACABAMENTO'
      Size = 100
    end
    object qryDadosOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField
      FieldName = 'ITENS_QTDE_ACABAMENTO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField
      FieldName = 'ITENS_COR_ACABAMENTO'
      Size = 100
    end
    object qryDadosOrcPedido_ItensITENS_PRODUTO: TIntegerField
      FieldName = 'ITENS_PRODUTO'
    end
  end
  object dspDadosOrcPedido_Itens: TDataSetProvider
    DataSet = qryDadosOrcPedido_Itens
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 72
  end
  object dsDadosOrcPedido_Itens: TDataSource
    DataSet = cdsDadosOrcPedido_Itens
    Left = 120
    Top = 168
  end
  object cdsDadosOrcPedido_Itens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOrcPedido_Itens'
    Left = 120
    Top = 120
    object cdsDadosOrcPedido_ItensITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcPedido_ItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object cdsDadosOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object cdsDadosOrcPedido_ItensITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object cdsDadosOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object cdsDadosOrcPedido_ItensITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object cdsDadosOrcPedido_ItensITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_ACABAMENTO: TStringField
      FieldName = 'ITENS_ACABAMENTO'
      Size = 100
    end
    object cdsDadosOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField
      FieldName = 'ITENS_QTDE_ACABAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField
      FieldName = 'ITENS_COR_ACABAMENTO'
      Size = 100
    end
    object cdsDadosOrcPedido_ItensITENS_PRODUTO: TIntegerField
      FieldName = 'ITENS_PRODUTO'
    end
  end
  object qryViewOrcPedido_VerificaCadastroCli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_ORCPEDIDO_BUSCACLIENTE'
      'WHERE CLIENTE = :NOME'
      'AND CADASTRO = '#39'T'#39
      'ORDER BY CLIENTE')
    SQLConnection = DMConnection.SQLConnection
    Left = 304
    Top = 232
    object IntegerField1: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CADASTRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
  end
  object dspViewOrcPedido_VerificaCadastroCli: TDataSetProvider
    DataSet = qryViewOrcPedido_VerificaCadastroCli
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 280
  end
  object dsViewOrcPedido_VerificaCadastroCli: TDataSource
    DataSet = cdsViewOrcPedido_VerificaCadastroCli
    Left = 304
    Top = 376
  end
  object cdsViewOrcPedido_VerificaCadastroCli: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_VerificaCadastroCli'
    Left = 304
    Top = 328
    object IntegerField2: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'CADASTRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
  end
  object qryViewOrcPedido_Numero: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(ORCAMENTOPEDIDOS.orcped_id) AS ORCPEDIDO_ULTGRAV'
      'FROM ORCAMENTOPEDIDOS')
    SQLConnection = DMConnection.SQLConnection
    Left = 800
    Top = 40
    object qryViewOrcPedido_NumeroORCPEDIDO_ULTGRAV: TIntegerField
      FieldName = 'ORCPEDIDO_ULTGRAV'
    end
  end
  object dspViewOrcPedido_Numero: TDataSetProvider
    DataSet = qryViewOrcPedido_Numero
    UpdateMode = upWhereKeyOnly
    Left = 800
    Top = 88
  end
  object dsViewOrcPedido_Numero: TDataSource
    DataSet = cdsViewOrcPedido_Numero
    Left = 800
    Top = 184
  end
  object cdsViewOrcPedido_Numero: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_Numero'
    Left = 800
    Top = 136
    object cdsViewOrcPedido_NumeroORCPEDIDO_ULTGRAV: TIntegerField
      FieldName = 'ORCPEDIDO_ULTGRAV'
    end
  end
  object qryViewOrcPedido_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORCPEDIDO_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ORCAMENTOPEDIDOS.ORCPED_VALOR_TOTAL,'
      '    PRODUTO_ITENS.*'
      'FROM ORCAMENTOPEDIDOS, PRODUTO_ITENS'
      'WHERE ORCAMENTOPEDIDOS.orcped_id = PRODUTO_ITENS.itens_orcped_id'
      'AND ORCAMENTOPEDIDOS.orcped_id = :ORCPEDIDO_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 344
    Top = 24
    object qryViewOrcPedido_ItensORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object qryViewOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object qryViewOrcPedido_ItensITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object qryViewOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object qryViewOrcPedido_ItensITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object qryViewOrcPedido_ItensITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_ACABAMENTO: TStringField
      FieldName = 'ITENS_ACABAMENTO'
      Size = 100
    end
    object qryViewOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField
      FieldName = 'ITENS_QTDE_ACABAMENTO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField
      FieldName = 'ITENS_COR_ACABAMENTO'
      Size = 100
    end
    object qryViewOrcPedido_ItensITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
      Required = True
    end
    object qryViewOrcPedido_ItensITENS_PRODUTO: TIntegerField
      FieldName = 'ITENS_PRODUTO'
    end
  end
  object dspViewOrcPedido_Itens: TDataSetProvider
    DataSet = qryViewOrcPedido_Itens
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 72
  end
  object dsViewOrcPedido_Itens: TDataSource
    DataSet = cdsViewOrcPedido_Itens
    Left = 344
    Top = 168
  end
  object cdsViewOrcPedido_Itens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_Itens'
    Left = 344
    Top = 120
    object cdsViewOrcPedido_ItensORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object cdsViewOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object cdsViewOrcPedido_ItensITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object cdsViewOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object cdsViewOrcPedido_ItensITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object cdsViewOrcPedido_ItensITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_ACABAMENTO: TStringField
      FieldName = 'ITENS_ACABAMENTO'
      Size = 100
    end
    object cdsViewOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField
      FieldName = 'ITENS_QTDE_ACABAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField
      FieldName = 'ITENS_COR_ACABAMENTO'
      Size = 100
    end
    object cdsViewOrcPedido_ItensITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
      Required = True
    end
    object cdsViewOrcPedido_ItensITENS_PRODUTO: TIntegerField
      FieldName = 'ITENS_PRODUTO'
    end
  end
  object qryViewOrcPedido_ItensSoma: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORCPEDIDO_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(PRODUTO_ITENS.itens_valor_total) AS SOMA'
      'FROM PRODUTO_ITENS'
      'WHERE PRODUTO_ITENS.itens_orcped_id = :ORCPEDIDO_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 896
    Top = 24
    object qryViewOrcPedido_ItensSomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      Precision = 15
      Size = 0
    end
  end
  object dspViewOrcPedido_ItensSoma: TDataSetProvider
    DataSet = qryViewOrcPedido_ItensSoma
    UpdateMode = upWhereKeyOnly
    Left = 896
    Top = 72
  end
  object dsViewOrcPedido_ItensSoma: TDataSource
    DataSet = cdsViewOrcPedido_ItensSoma
    Left = 896
    Top = 168
  end
  object cdsViewOrcPedido_ItensSoma: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_ItensSoma'
    Left = 896
    Top = 120
    object cdsViewOrcPedido_ItensSomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 0
    end
  end
  object qryViewOrcPedido_ItensPagMax: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ITENS_ORCPED_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT MAX(VIEW_ORCAMENTOPEDIDOS_ITENS.itens_valor_total)  AS PA' +
        'GMAX'
      'FROM VIEW_ORCAMENTOPEDIDOS_ITENS'
      
        'WHERE view_orcamentopedidos_itens.itens_orcped_id =:ITENS_ORCPED' +
        '_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 440
    Top = 40
    object qryViewOrcPedido_ItensPagMaxPAGMAX: TFMTBCDField
      FieldName = 'PAGMAX'
      Precision = 15
      Size = 2
    end
  end
  object dspViewOrcPedido_ItensPagMax: TDataSetProvider
    DataSet = qryViewOrcPedido_ItensPagMax
    UpdateMode = upWhereKeyOnly
    Left = 440
    Top = 88
  end
  object dsViewOrcPedido_ItensPagMax: TDataSource
    DataSet = cdsViewOrcPedido_ItensPagMax
    Left = 440
    Top = 184
  end
  object cdsViewOrcPedido_ItensPagMax: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_ItensPagMax'
    Left = 440
    Top = 136
    object cdsViewOrcPedido_ItensPagMaxPAGMAX: TFMTBCDField
      FieldName = 'PAGMAX'
      Precision = 15
      Size = 2
    end
  end
  object dsViewOrcPedido_Busca: TDataSource
    DataSet = cdsViewOrcPedido_Busca
    Left = 416
    Top = 392
  end
  object dspViewOrcPedido_Busca: TDataSetProvider
    DataSet = qryViewOrcPedido_Busca
    Left = 416
    Top = 296
  end
  object qryViewOrcPedido_Busca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMERO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM VIEW_ORCAMENTOPEDIDO'
      '  WHERE 1 = 1'
      '  AND VIEW_ORCAMENTOPEDIDO.cliente LIKE :CLIENTE'
      '  AND VIEW_ORCAMENTOPEDIDO.numero = :NUMERO'
      '  ORDER BY VIEW_ORCAMENTOPEDIDO.numero')
    SQLConnection = DMConnection.SQLConnection
    Left = 416
    Top = 248
    object qryViewOrcPedido_BuscaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qryViewOrcPedido_BuscaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object qryViewOrcPedido_BuscaCLIENTE2: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object qryViewOrcPedido_BuscaTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 9
    end
    object qryViewOrcPedido_BuscaORCPED_DATA: TDateField
      FieldName = 'ORCPED_DATA'
    end
    object qryViewOrcPedido_BuscaORCPED_TIPO: TStringField
      FieldName = 'ORCPED_TIPO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcPedido_BuscaORCPED_OBSERVACAO: TBlobField
      FieldName = 'ORCPED_OBSERVACAO'
      Size = 1
    end
    object qryViewOrcPedido_BuscaORCPED_MENSAGENS: TBlobField
      FieldName = 'ORCPED_MENSAGENS'
      Size = 1
    end
    object qryViewOrcPedido_BuscaORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaORCPED_TIPO_PAGTO: TStringField
      FieldName = 'ORCPED_TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcPedido_BuscaORCPED_PERIODO_MANUT: TIntegerField
      FieldName = 'ORCPED_PERIODO_MANUT'
    end
    object qryViewOrcPedido_BuscaORCPED_DATA_MANUT: TDateField
      FieldName = 'ORCPED_DATA_MANUT'
    end
    object qryViewOrcPedido_BuscaORCPED_MANUT_EFETUADA: TStringField
      FieldName = 'ORCPED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcPedido_BuscaORCPED_PORCENTAGEM: TStringField
      FieldName = 'ORCPED_PORCENTAGEM'
      Size = 30
    end
    object qryViewOrcPedido_BuscaORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL_PORCENT'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaORCPED_DESCONTO: TFMTBCDField
      FieldName = 'ORCPED_DESCONTO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaORCPED_ACRESCIMO: TFMTBCDField
      FieldName = 'ORCPED_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaORCPED_VALORVENDA: TFMTBCDField
      FieldName = 'ORCPED_VALORVENDA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELADO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaORCPED_PARCELADOEM: TIntegerField
      FieldName = 'ORCPED_PARCELADOEM'
    end
    object qryViewOrcPedido_BuscaORCPED_VALORPARCELA: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_BuscaORCPED_DATAREVISAO: TDateField
      FieldName = 'ORCPED_DATAREVISAO'
    end
    object qryViewOrcPedido_BuscaORCPED_TEMREVISAO: TStringField
      FieldName = 'ORCPED_TEMREVISAO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcPedido_BuscaORCPED_CORALUMINIO: TStringField
      FieldName = 'ORCPED_CORALUMINIO'
      Size = 100
    end
    object qryViewOrcPedido_BuscaORCPED_CORCOMPONENTE: TStringField
      FieldName = 'ORCPED_CORCOMPONENTE'
      Size = 100
    end
  end
  object cdsViewOrcPedido_Busca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_Busca'
    Left = 416
    Top = 347
    object cdsViewOrcPedido_BuscaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsViewOrcPedido_BuscaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsViewOrcPedido_BuscaCLIENTE2: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsViewOrcPedido_BuscaTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 9
    end
    object cdsViewOrcPedido_BuscaORCPED_DATA: TDateField
      FieldName = 'ORCPED_DATA'
    end
    object cdsViewOrcPedido_BuscaORCPED_TIPO: TStringField
      FieldName = 'ORCPED_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcPedido_BuscaORCPED_OBSERVACAO: TBlobField
      FieldName = 'ORCPED_OBSERVACAO'
      Size = 1
    end
    object cdsViewOrcPedido_BuscaORCPED_MENSAGENS: TBlobField
      FieldName = 'ORCPED_MENSAGENS'
      Size = 1
    end
    object cdsViewOrcPedido_BuscaORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaORCPED_TIPO_PAGTO: TStringField
      FieldName = 'ORCPED_TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcPedido_BuscaORCPED_PERIODO_MANUT: TIntegerField
      FieldName = 'ORCPED_PERIODO_MANUT'
    end
    object cdsViewOrcPedido_BuscaORCPED_DATA_MANUT: TDateField
      FieldName = 'ORCPED_DATA_MANUT'
    end
    object cdsViewOrcPedido_BuscaORCPED_MANUT_EFETUADA: TStringField
      FieldName = 'ORCPED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcPedido_BuscaORCPED_PORCENTAGEM: TStringField
      FieldName = 'ORCPED_PORCENTAGEM'
      Size = 30
    end
    object cdsViewOrcPedido_BuscaORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL_PORCENT'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaORCPED_DESCONTO: TFMTBCDField
      FieldName = 'ORCPED_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaORCPED_ACRESCIMO: TFMTBCDField
      FieldName = 'ORCPED_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaORCPED_VALORVENDA: TFMTBCDField
      FieldName = 'ORCPED_VALORVENDA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELADO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaORCPED_PARCELADOEM: TIntegerField
      FieldName = 'ORCPED_PARCELADOEM'
    end
    object cdsViewOrcPedido_BuscaORCPED_VALORPARCELA: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_BuscaORCPED_DATAREVISAO: TDateField
      FieldName = 'ORCPED_DATAREVISAO'
    end
    object cdsViewOrcPedido_BuscaORCPED_TEMREVISAO: TStringField
      FieldName = 'ORCPED_TEMREVISAO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcPedido_BuscaORCPED_CORALUMINIO: TStringField
      FieldName = 'ORCPED_CORALUMINIO'
      Size = 100
    end
    object cdsViewOrcPedido_BuscaORCPED_CORCOMPONENTE: TStringField
      FieldName = 'ORCPED_CORCOMPONENTE'
      Size = 100
    end
  end
  object dsViewClienteCodigo: TDataSource
    DataSet = cdsViewClienteCodigo
    Left = 536
    Top = 168
  end
  object dspViewClienteCodigo: TDataSetProvider
    DataSet = qryViewClienteCodigo
    Left = 536
    Top = 72
  end
  object qryViewClienteCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CLIENTES'
      'WHERE CLI_CLIENTE = :CLIENTE'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 536
    Top = 24
    object qryViewClienteCodigoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewClienteCodigoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewClienteCodigoCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewClienteCodigoCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewClienteCodigoCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewClienteCodigoCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewClienteCodigoCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewClienteCodigoCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewClienteCodigoCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewClienteCodigoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewClienteCodigoCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewClienteCodigoCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsViewClienteCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewClienteCodigo'
    Left = 536
    Top = 123
    object cdsViewClienteCodigoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewClienteCodigoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewClienteCodigoCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsViewOrcPedido_Cliente: TDataSource
    DataSet = cdsViewOrcPedido_Cliente
    Left = 616
    Top = 184
  end
  object dspViewOrcPedido_Cliente: TDataSetProvider
    DataSet = qryViewOrcPedido_Cliente
    Left = 616
    Top = 88
  end
  object qryViewOrcPedido_Cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CLIENTES'
      'WHERE CLI_CLIENTE LIKE :CLIENTE'
      'ORDER BY CLI_CLIENTE ASC'
      ''
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 616
    Top = 40
    object qryViewOrcPedido_ClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewOrcPedido_ClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewOrcPedido_ClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewOrcPedido_ClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewOrcPedido_ClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewOrcPedido_ClienteCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewOrcPedido_ClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewOrcPedido_ClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewOrcPedido_ClienteCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewOrcPedido_ClienteCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewOrcPedido_ClienteCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewOrcPedido_ClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewOrcPedido_ClienteCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewOrcPedido_ClienteCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewOrcPedido_ClienteCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewOrcPedido_ClienteCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsViewOrcPedido_Cliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_Cliente'
    Left = 616
    Top = 139
    object cdsViewOrcPedido_ClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewOrcPedido_ClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewOrcPedido_ClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewOrcPedido_ClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewOrcPedido_ClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewOrcPedido_ClienteCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewOrcPedido_ClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewOrcPedido_ClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewOrcPedido_ClienteCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewOrcPedido_ClienteCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewOrcPedido_ClienteCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewOrcPedido_ClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewOrcPedido_ClienteCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewOrcPedido_ClienteCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewOrcPedido_ClienteCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewOrcPedido_ClienteCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsViewOrcPedido_Usuario: TDataSource
    DataSet = cdsViewOrcPedido_Usuario
    Left = 704
    Top = 168
  end
  object dspViewOrcPedido_Usuario: TDataSetProvider
    DataSet = qryViewOrcPedido_Usuario
    Left = 704
    Top = 72
  end
  object qryViewOrcPedido_Usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM USUARIOS'
      'ORDER BY USU_NOME ASC'
      ''
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 704
    Top = 24
    object qryViewOrcPedido_UsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object qryViewOrcPedido_UsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object qryViewOrcPedido_UsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object qryViewOrcPedido_UsuarioUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object qryViewOrcPedido_UsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object qryViewOrcPedido_UsuarioUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object qryViewOrcPedido_UsuarioUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object qryViewOrcPedido_UsuarioUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object qryViewOrcPedido_UsuarioUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryViewOrcPedido_UsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object qryViewOrcPedido_UsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object qryViewOrcPedido_UsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object qryViewOrcPedido_UsuarioUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object qryViewOrcPedido_UsuarioUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object qryViewOrcPedido_UsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcPedido_UsuarioUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object cdsViewOrcPedido_Usuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_Usuario'
    Left = 704
    Top = 123
    object cdsViewOrcPedido_UsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object cdsViewOrcPedido_UsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object cdsViewOrcPedido_UsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object cdsViewOrcPedido_UsuarioUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object cdsViewOrcPedido_UsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object cdsViewOrcPedido_UsuarioUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object cdsViewOrcPedido_UsuarioUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object cdsViewOrcPedido_UsuarioUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object cdsViewOrcPedido_UsuarioUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsViewOrcPedido_UsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object cdsViewOrcPedido_UsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object cdsViewOrcPedido_UsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object cdsViewOrcPedido_UsuarioUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object cdsViewOrcPedido_UsuarioUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object cdsViewOrcPedido_UsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcPedido_UsuarioUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object dsViewOrcPedido_Tipo: TDataSource
    DataSet = cdsViewOrcPedido_Tipo
    Left = 496
    Top = 376
  end
  object dspViewOrcPedido_Tipo: TDataSetProvider
    DataSet = qryViewOrcPedido_Tipo
    Left = 496
    Top = 280
  end
  object qryViewOrcPedido_Tipo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM ORCAMENTO_TIPO'
      'WHERE ORCAMENTO_TIPO.orctp_descricao LIKE :TIPO'
      'ORDER BY ORCTP_DESCRICAO ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 496
    Top = 232
    object qryViewOrcPedido_TipoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object qryViewOrcPedido_TipoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object cdsViewOrcPedido_Tipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_Tipo'
    Left = 496
    Top = 331
    object cdsViewOrcPedido_TipoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object cdsViewOrcPedido_TipoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object dsViewOrcPedido_Manutencao: TDataSource
    DataSet = cdsViewOrcPedido_Manutencao
    Left = 592
    Top = 392
  end
  object dspViewOrcPedido_Manutencao: TDataSetProvider
    DataSet = qryViewOrcPedido_Manutencao
    Left = 592
    Top = 296
  end
  object qryViewOrcPedido_Manutencao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ORCAMENTOPEDIDOS.orcped_id,'
      'ORCAMENTOPEDIDOS.orcped_data,'
      'ORCAMENTOPEDIDOS.orcped_data_manut,'
      'CLIENTES.cli_cliente'
      'FROM ORCAMENTOPEDIDOS, CLIENTES'
      'WHERE CLIENTES.cli_id = ORCAMENTOPEDIDOS.orcped_cli_id'
      'AND CURRENT_DATE >= ORCAMENTOPEDIDOS.orcped_data_manut'
      'AND ORCAMENTOPEDIDOS.orcped_manut_efetuada = '#39'F'#39
      'ORDER BY ORCPED_ID ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 592
    Top = 248
    object qryViewOrcPedido_ManutencaoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
      Required = True
    end
    object qryViewOrcPedido_ManutencaoORCPED_DATA_MANUT: TDateField
      FieldName = 'ORCPED_DATA_MANUT'
    end
    object qryViewOrcPedido_ManutencaoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewOrcPedido_ManutencaoORCPED_DATA: TDateField
      FieldName = 'ORCPED_DATA'
    end
  end
  object cdsViewOrcPedido_Manutencao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_Manutencao'
    Left = 592
    Top = 347
    object cdsViewOrcPedido_ManutencaoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
      Required = True
    end
    object cdsViewOrcPedido_ManutencaoORCPED_DATA_MANUT: TDateField
      FieldName = 'ORCPED_DATA_MANUT'
    end
    object cdsViewOrcPedido_ManutencaoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewOrcPedido_ManutencaoORCPED_DATA: TDateField
      FieldName = 'ORCPED_DATA'
    end
  end
  object dsViewOrcPedido_tipoBusca: TDataSource
    DataSet = cdsViewOrcPedido_tipoBusca
    Left = 688
    Top = 376
  end
  object dspViewOrcPedido_tipoBusca: TDataSetProvider
    DataSet = qryViewOrcPedido_tipoBusca
    Left = 688
    Top = 280
  end
  object qryViewOrcPedido_tipoBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM ORCAMENTO_TIPO'
      'WHERE ORCAMENTO_TIPO.orctp_descricao LIKE :TIPO'
      'ORDER BY ORCTP_DESCRICAO ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 688
    Top = 224
    object qryViewOrcPedido_tipoBuscaORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object qryViewOrcPedido_tipoBuscaORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object cdsViewOrcPedido_tipoBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_tipoBusca'
    Left = 688
    Top = 331
    object cdsViewOrcPedido_tipoBuscaORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object cdsViewOrcPedido_tipoBuscaORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object dsViewTipoCodigo: TDataSource
    DataSet = cdsViewTipoCodigo
    Left = 776
    Top = 392
  end
  object dspViewTipoCodigo: TDataSetProvider
    DataSet = qryViewTipoCodigo
    Left = 776
    Top = 296
  end
  object qryViewTipoCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM ORCAMENTO_TIPO'
      'WHERE ORCAMENTO_TIPO.orctp_descricao =:TIPO'
      'ORDER BY ORCTP_DESCRICAO ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 776
    Top = 248
    object qryViewTipoCodigoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object qryViewTipoCodigoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object cdsViewTipoCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewTipoCodigo'
    Left = 776
    Top = 347
    object cdsViewTipoCodigoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object cdsViewTipoCodigoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object qryViewOrcPedido_ItensAcessorio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORCPEDIDO_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '    ORCAMENTOPEDIDOS.ORCPED_VALOR_TOTAL,'
      '    ACESSORIOS_ITENS.*'
      'FROM ORCAMENTOPEDIDOS, ACESSORIOS_ITENS'
      
        'WHERE ORCAMENTOPEDIDOS.orcped_id = ACESSORIOS_ITENS.itens_orcped' +
        '_id'
      'AND ORCAMENTOPEDIDOS.orcped_id = :ORCPEDIDO_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 880
    Top = 232
    object qryViewOrcPedido_ItensAcessorioORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object qryViewOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object qryViewOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object qryViewOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object qryViewOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object qryViewOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
  end
  object dspViewOrcPedido_ItensAcessorio: TDataSetProvider
    DataSet = qryViewOrcPedido_ItensAcessorio
    UpdateMode = upWhereKeyOnly
    Left = 880
    Top = 280
  end
  object cdsViewOrcPedido_ItensAcessorio: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_ItensAcessorio'
    Left = 880
    Top = 328
    object cdsViewOrcPedido_ItensAcessorioORCPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ORCPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
  end
  object dsViewOrcPedido_ItensAcessorio: TDataSource
    DataSet = cdsViewOrcPedido_ItensAcessorio
    Left = 880
    Top = 376
  end
  object qryDadosOrcPedido_ItensAcessorio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORDPED_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ACESSORIOS_ITENS'
      'WHERE ACESSORIOS_ITENS.itens_orcped_id = :ORDPED_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 1016
    Top = 40
    object qryDadosOrcPedido_ItensAcessorioITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
  end
  object dspDadosOrcPedido_ItensAcessorio: TDataSetProvider
    DataSet = qryDadosOrcPedido_ItensAcessorio
    UpdateMode = upWhereKeyOnly
    Left = 1016
    Top = 88
  end
  object dsDadosOrcPedido_ItensAcessorio: TDataSource
    DataSet = cdsDadosOrcPedido_ItensAcessorio
    Left = 1016
    Top = 184
  end
  object cdsDadosOrcPedido_ItensAcessorio: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOrcPedido_ItensAcessorio'
    Left = 1016
    Top = 136
    object cdsDadosOrcPedido_ItensAcessorioITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField
      FieldName = 'ITENS_QTDADE_PECA'
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField
      FieldName = 'ITENS_TAMANHO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENS_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField
      FieldName = 'ITENS_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField
      FieldName = 'ITENS_COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField
      FieldName = 'ITENS_QTDADE_GAVETA'
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENS_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField
      FieldName = 'ITENS_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField
      FieldName = 'ITENS_DESCRICAO'
      Size = 100
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField
      FieldName = 'ITENS_SEQUE'
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField
      FieldName = 'ITENS_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField
      FieldName = 'ITENS_QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField
      FieldName = 'ITENS_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField
      FieldName = 'ITENS_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
  end
  object qryGetNewHandle: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMConnection.SQLConnection
    Left = 992
    Top = 248
    object qryGetNewHandleGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dspGetNewHandle: TDataSetProvider
    DataSet = qryGetNewHandle
    UpdateMode = upWhereKeyOnly
    Left = 992
    Top = 296
  end
  object cdsGetNewHandle: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetNewHandle'
    Left = 992
    Top = 344
    object cdsGetNewHandleGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object dsGetNewHandle: TDataSource
    DataSet = cdsGetNewHandle
    Left = 992
    Top = 392
  end
  object qryAcabamentoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ACABAMENTO_ITENS'
      'WHERE ACABAMENTO_ITENS.ITEM_PRODUTO = :ITEM')
    SQLConnection = DMConnection.SQLConnection
    Left = 680
    Top = 464
    object qryAcabamentoItensITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAcabamentoItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object qryAcabamentoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryAcabamentoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryAcabamentoItensCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
    object qryAcabamentoItensITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      Required = True
    end
    object qryAcabamentoItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
  end
  object dspAcabamentoItens: TDataSetProvider
    DataSet = qryAcabamentoItens
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 512
  end
  object cdsAcabamentoItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcabamentoItens'
    Left = 680
    Top = 568
    object cdsAcabamentoItensITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
    end
    object cdsAcabamentoItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object cdsAcabamentoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsAcabamentoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsAcabamentoItensCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
    object cdsAcabamentoItensITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      Required = True
    end
    object cdsAcabamentoItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
  end
  object dsAcabamentoItens: TDataSource
    DataSet = cdsAcabamentoItens
    Left = 680
    Top = 616
  end
  object qryDadosOrcPedido_AcabamentoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ITENS_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ACABAMENTO_ITENS'
      'WHERE ACABAMENTO_ITENS.ITEM_ID = :ITENS_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 232
    Top = 8
    object qryDadosOrcPedido_AcabamentoItensITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
    object qryDadosOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
    end
    object qryDadosOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object qryDadosOrcPedido_AcabamentoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryDadosOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryDadosOrcPedido_AcabamentoItensCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
  end
  object dspDadosOrcPedido_AcabamentoItens: TDataSetProvider
    DataSet = qryDadosOrcPedido_AcabamentoItens
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 56
  end
  object dsDadosOrcPedido_AcabamentoItens: TDataSource
    DataSet = cdsDadosOrcPedido_AcabamentoItens
    Left = 232
    Top = 152
  end
  object cdsDadosOrcPedido_AcabamentoItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOrcPedido_AcabamentoItens'
    Left = 232
    Top = 104
    object cdsDadosOrcPedido_AcabamentoItensITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
    end
    object cdsDadosOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object cdsDadosOrcPedido_AcabamentoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsDadosOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsDadosOrcPedido_AcabamentoItensCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
    object cdsDadosOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryViewOrcPedido_AcabamentoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ITENS_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ACABAMENTO_ITENS'
      'WHERE ACABAMENTO_ITENS.ITENS_ORCPED_ID = :ITENS_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 96
    Top = 456
    object qryViewOrcPedido_AcabamentoItensITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      Required = True
    end
    object qryViewOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
    end
    object qryViewOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object qryViewOrcPedido_AcabamentoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryViewOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object qryViewOrcPedido_AcabamentoItensCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
    object qryViewOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
  end
  object dspViewOrcPedido_AcabamentoItens: TDataSetProvider
    DataSet = qryViewOrcPedido_AcabamentoItens
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 504
  end
  object dsViewOrcPedido_AcabamentoItens: TDataSource
    DataSet = cdsViewOrcPedido_AcabamentoItens
    Left = 96
    Top = 600
  end
  object cdsViewOrcPedido_AcabamentoItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedido_AcabamentoItens'
    Left = 96
    Top = 552
    object cdsViewOrcPedido_AcabamentoItensITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      Required = True
    end
    object cdsViewOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField
      FieldName = 'ITEM_PRODUTO'
    end
    object cdsViewOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 50
    end
    object cdsViewOrcPedido_AcabamentoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsViewOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 2
    end
    object cdsViewOrcPedido_AcabamentoItensCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
    object cdsViewOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
      Required = True
    end
  end
  object qryDadosDeleteProdutoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_ITENS WHERE ITENS_ORCPED_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 240
    Top = 472
  end
  object dspDadosDeleteProdutoItens: TDataSetProvider
    DataSet = qryDadosDeleteProdutoItens
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 520
  end
  object dsDadosDeleteProdutoItens: TDataSource
    DataSet = cdsDadosDeleteProdutoItens
    Left = 240
    Top = 616
  end
  object cdsDadosDeleteProdutoItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosDeleteProdutoItens'
    Left = 240
    Top = 568
  end
  object qryDadosDeleteAcabamentoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM ACABAMENTO_ITENS WHERE ITENS_ORCPED_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 352
    Top = 448
  end
  object dspDadosDeleteAcabamentoItens: TDataSetProvider
    DataSet = qryDadosDeleteAcabamentoItens
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 496
  end
  object dsDadosDeleteAcabamentoItens: TDataSource
    DataSet = cdsDadosDeleteAcabamentoItens
    Left = 352
    Top = 592
  end
  object cdsDadosDeleteAcabamentoItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosDeleteAcabamentoItens'
    Left = 352
    Top = 544
  end
  object qryDadosDeleteAcessorioItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM ACESSORIOS_ITENS WHERE ITENS_ORCPED_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 464
    Top = 464
  end
  object dspDadosDeleteAcessorioItens: TDataSetProvider
    DataSet = qryDadosDeleteAcessorioItens
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 512
  end
  object dsDadosDeleteAcessorioItens: TDataSource
    DataSet = cdsDadosDeleteAcessorioItens
    Left = 464
    Top = 608
  end
  object cdsDadosDeleteAcessorioItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosDeleteAcessorioItens'
    Left = 464
    Top = 560
  end
end
