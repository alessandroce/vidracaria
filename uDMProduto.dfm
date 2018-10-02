object DMProduto: TDMProduto
  OldCreateOrder = False
  Left = 316
  Top = 167
  Height = 439
  Width = 572
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
    Left = 32
    Top = 16
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
    Left = 32
    Top = 64
  end
  object dsDadosProduto: TDataSource
    DataSet = cdsDadosProduto
    Left = 32
    Top = 160
  end
  object cdsDadosProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosProduto'
    Left = 31
    Top = 112
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
    Left = 103
    Top = 42
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
    Left = 103
    Top = 90
  end
  object dsViewProduto: TDataSource
    DataSet = cdsViewProduto
    Left = 103
    Top = 186
  end
  object cdsViewProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewProduto'
    Left = 102
    Top = 138
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
    Left = 206
    Top = 15
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
    Left = 206
    Top = 63
  end
  object dsViewLookup_TipoProduto: TDataSource
    DataSet = cdsViewLookup_TipoProduto
    Left = 206
    Top = 159
  end
  object cdsViewLookup_TipoProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewLookup_TipoProduto'
    Left = 205
    Top = 111
    object cdsViewLookup_TipoProdutoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object cdsViewLookup_TipoProdutoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
  object qryViewLookup_LinhaProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_LINHA'
      'ORDER BY PRL_DESCRICAO ASC'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 302
    Top = 47
    object qryViewLookup_LinhaProdutoPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      Required = True
    end
    object qryViewLookup_LinhaProdutoPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
    object qryViewLookup_LinhaProdutoPRL_DH_CA: TSQLTimeStampField
      FieldName = 'PRL_DH_CA'
    end
  end
  object dspViewLookup_LinhaProduto: TDataSetProvider
    DataSet = qryViewLookup_LinhaProduto
    UpdateMode = upWhereKeyOnly
    Left = 302
    Top = 95
  end
  object dsViewLookup_LinhaProduto: TDataSource
    DataSet = cdsViewLookup_LinhaProduto
    Left = 302
    Top = 191
  end
  object cdsViewLookup_LinhaProduto: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewLookup_LinhaProduto'
    Left = 301
    Top = 143
    object cdsViewLookup_LinhaProdutoPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      Required = True
    end
    object cdsViewLookup_LinhaProdutoPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
    object cdsViewLookup_LinhaProdutoPRL_DH_CA: TSQLTimeStampField
      FieldName = 'PRL_DH_CA'
    end
  end
end
