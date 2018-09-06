object DMRelatorioProduto: TDMRelatorioProduto
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 317
  Width = 317
  object dsViewRelatorioProduto: TDataSource
    DataSet = cdsViewRelatorioProduto
    Left = 109
    Top = 180
  end
  object dspViewRelatorioProduto: TDataSetProvider
    DataSet = qryViewRelatorioProduto
    Left = 109
    Top = 84
  end
  object qryViewRelatorioProduto: TSQLQuery
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
      'WHERE PROD_DESCRICAO LIKE :DESCRICAO')
    SQLConnection = DMConnection.SQLConnection
    Left = 109
    Top = 36
    object qryViewRelatorioProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object qryViewRelatorioProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object qryViewRelatorioProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryViewRelatorioProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewRelatorioProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
  end
  object cdsViewRelatorioProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioProduto'
    Left = 109
    Top = 132
    object cdsViewRelatorioProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object cdsViewRelatorioProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object cdsViewRelatorioProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsViewRelatorioProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewRelatorioProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
end
