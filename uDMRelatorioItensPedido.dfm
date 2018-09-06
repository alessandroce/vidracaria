object DMRelatorioItensPedido: TDMRelatorioItensPedido
  OldCreateOrder = False
  Left = 229
  Top = 181
  Height = 317
  Width = 432
  object qryViewRelatorioItensPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATADE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_REL_PEDIDOS_ITENS'
      'WHERE PED_DATA BETWEEN :DATADE AND :DATAATE'
      'AND ITENS_PRODUTO LIKE :ITEM'
      'AND CLI_NOME LIKE :CLIENTE'
      'ORDER BY PED_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 96
    Top = 32
    object qryViewRelatorioItensPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewRelatorioItensPedidoITENS_PRODUTO: TStringField
      FieldName = 'ITENS_PRODUTO'
      Size = 100
    end
    object qryViewRelatorioItensPedidoPED_DATA: TDateField
      FieldName = 'PED_DATA'
    end
    object qryViewRelatorioItensPedidoPED_MANUT: TIntegerField
      FieldName = 'PED_MANUT'
    end
    object qryViewRelatorioItensPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryViewRelatorioItensPedidoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object qryViewRelatorioItensPedidoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
  end
  object dspViewRelatorioItensPedido: TDataSetProvider
    DataSet = qryViewRelatorioItensPedido
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 80
  end
  object dsViewRelatorioItensPedido: TDataSource
    DataSet = cdsViewRelatorioItensPedido
    Left = 96
    Top = 176
  end
  object cdsViewRelatorioItensPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioItensPedido'
    Left = 95
    Top = 128
    object cdsViewRelatorioItensPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewRelatorioItensPedidoITENS_PRODUTO: TStringField
      FieldName = 'ITENS_PRODUTO'
      Size = 100
    end
    object cdsViewRelatorioItensPedidoPED_DATA: TDateField
      FieldName = 'PED_DATA'
    end
    object cdsViewRelatorioItensPedidoPED_MANUT: TIntegerField
      FieldName = 'PED_MANUT'
    end
    object cdsViewRelatorioItensPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsViewRelatorioItensPedidoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object cdsViewRelatorioItensPedidoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
  end
end
