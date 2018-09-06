object DMProduto: TDMProduto
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 439
  Width = 487
  object qryDadosProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
      'WHERE PROD_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 104
    Top = 32
    object qryDadosProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryDadosProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object qryDadosProdutoPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 3
    end
  end
  object dspDadosProduto: TDataSetProvider
    DataSet = qryDadosProduto
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 80
  end
  object dsDadosProduto: TDataSource
    DataSet = cdsDadosProduto
    Left = 104
    Top = 176
  end
  object cdsDadosProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosProduto'
    Left = 103
    Top = 128
    object cdsDadosProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsDadosProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosProdutoPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 3
    end
  end
  object qryViewProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
      'WHERE PROD_DESCRICAO LIKE :NOME'
      'ORDER BY PROD_DESCRICAO')
    SQLConnection = DMConnection.SQLConnection
    Left = 215
    Top = 58
    object qryViewProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object qryViewProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object qryViewProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryViewProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object qryViewProdutoPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 3
    end
  end
  object dspViewProduto: TDataSetProvider
    DataSet = qryViewProduto
    UpdateMode = upWhereKeyOnly
    Left = 215
    Top = 106
  end
  object dsViewProduto: TDataSource
    DataSet = cdsViewProduto
    Left = 215
    Top = 202
  end
  object cdsViewProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewProduto'
    Left = 214
    Top = 154
    object cdsViewProdutoPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object cdsViewProdutoPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object cdsViewProdutoPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsViewProdutoPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewProdutoPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewProdutoPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 3
    end
  end
  object qryViewLookup_TipoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_TIPO'
      'ORDER BY PRODTP_DESCRICAO ASC'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 318
    Top = 31
    object qryViewLookup_TipoProdutoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object qryViewLookup_TipoProdutoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
  object dspViewLookup_TipoProduto: TDataSetProvider
    DataSet = qryViewLookup_TipoProduto
    UpdateMode = upWhereKeyOnly
    Left = 318
    Top = 79
  end
  object dsViewLookup_TipoProduto: TDataSource
    DataSet = cdsViewLookup_TipoProduto
    Left = 318
    Top = 175
  end
  object cdsViewLookup_TipoProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewLookup_TipoProduto'
    Left = 317
    Top = 127
    object cdsViewLookup_TipoProdutoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object cdsViewLookup_TipoProdutoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
end
