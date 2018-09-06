object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 385
  Width = 446
  object dsViewManutencaoProduto: TDataSource
    DataSet = cdsViewManutencaoProduto
    Left = 80
    Top = 176
  end
  object dspViewManutencaoProduto: TDataSetProvider
    DataSet = qryViewManutencaoProduto
    Left = 80
    Top = 80
  end
  object qryViewManutencaoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID,'
      '    CASE WHEN(TIPO='#39'O'#39') THEN '#39'OR'#199'AME'#39' ELSE '#39'PEDIDO'#39' END AS TIPO,'
      '    DATA,'
      '    DATA_MANUT,'
      '    MANUT_EFETUADA,'
      '    CLIENTE'
      'FROM VIEW_ORCPED_PED_MANUTENCAO')
    SQLConnection = DMConnection.SQLConnection
    Left = 80
    Top = 32
    object qryViewManutencaoProdutoID: TIntegerField
      FieldName = 'ID'
    end
    object qryViewManutencaoProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 6
    end
    object qryViewManutencaoProdutoDATA: TDateField
      FieldName = 'DATA'
    end
    object qryViewManutencaoProdutoDATA_MANUT: TDateField
      FieldName = 'DATA_MANUT'
    end
    object qryViewManutencaoProdutoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object qryViewManutencaoProdutoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsViewManutencaoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewManutencaoProduto'
    Left = 80
    Top = 131
    object cdsViewManutencaoProdutoID: TIntegerField
      FieldName = 'ID'
    end
    object cdsViewManutencaoProdutoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 6
    end
    object cdsViewManutencaoProdutoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsViewManutencaoProdutoDATA_MANUT: TDateField
      FieldName = 'DATA_MANUT'
    end
    object cdsViewManutencaoProdutoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsViewManutencaoProdutoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
  end
  object dsViewPedidoManutencao: TDataSource
    DataSet = cdsViewPedidoManutencao
    Left = 184
    Top = 192
  end
  object dspViewPedidoManutencao: TDataSetProvider
    DataSet = qryViewPedidoManutencao
    Left = 184
    Top = 96
  end
  object qryViewPedidoManutencao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_PEDIDO_MANUTENCAO')
    SQLConnection = DMConnection.SQLConnection
    Left = 184
    Top = 48
    object qryViewPedidoManutencaoID: TIntegerField
      FieldName = 'ID'
    end
    object qryViewPedidoManutencaoDATA: TDateField
      FieldName = 'DATA'
    end
    object qryViewPedidoManutencaoDATA_MANUT: TDateField
      FieldName = 'DATA_MANUT'
    end
    object qryViewPedidoManutencaoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewPedidoManutencaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
  end
  object cdsViewPedidoManutencao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedidoManutencao'
    Left = 184
    Top = 147
    object cdsViewPedidoManutencaoID: TIntegerField
      FieldName = 'ID'
    end
    object cdsViewPedidoManutencaoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsViewPedidoManutencaoDATA_MANUT: TDateField
      FieldName = 'DATA_MANUT'
    end
    object cdsViewPedidoManutencaoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewPedidoManutencaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
  end
end
