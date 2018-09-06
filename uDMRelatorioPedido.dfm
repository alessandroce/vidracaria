object DMRelatorioPedido: TDMRelatorioPedido
  OldCreateOrder = False
  Left = 228
  Top = 181
  Height = 317
  Width = 431
  object qryViewRelatorioPedido_Busca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATADE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM VIEW_PEDIDO'
      'WHERE VIEW_PEDIDO.PED_ID =:ID'
      'AND VIEW_PEDIDO.CLI_CLIENTE LIKE :CLIENTE'
      'AND VIEW_PEDIDO.ped_data_pedido BETWEEN :DATADE AND :DATAATE')
    SQLConnection = DMConnection.SQLConnection
    Left = 96
    Top = 32
    object qryViewRelatorioPedido_BuscaPED_ID: TIntegerField
      FieldName = 'PED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryViewRelatorioPedido_BuscaPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryViewRelatorioPedido_BuscaPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object qryViewRelatorioPedido_BuscaPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryViewRelatorioPedido_BuscaPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object qryViewRelatorioPedido_BuscaPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object qryViewRelatorioPedido_BuscaPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryViewRelatorioPedido_BuscaPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewRelatorioPedido_BuscaPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewRelatorioPedido_BuscaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryViewRelatorioPedido_BuscaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object dspViewRelatorioPedido_Busca: TDataSetProvider
    DataSet = qryViewRelatorioPedido_Busca
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 80
  end
  object dsViewRelatorioPedido_Busca: TDataSource
    DataSet = cdsViewRelatorioPedido_Busca
    Left = 96
    Top = 176
  end
  object cdsViewRelatorioPedido_Busca: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioPedido_Busca'
    Left = 95
    Top = 128
    object cdsViewRelatorioPedido_BuscaPED_ID: TIntegerField
      FieldName = 'PED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsViewRelatorioPedido_BuscaPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsViewRelatorioPedido_BuscaPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object cdsViewRelatorioPedido_BuscaPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsViewRelatorioPedido_BuscaPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object cdsViewRelatorioPedido_BuscaPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object cdsViewRelatorioPedido_BuscaPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsViewRelatorioPedido_BuscaPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewRelatorioPedido_BuscaPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewRelatorioPedido_BuscaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsViewRelatorioPedido_BuscaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
end
