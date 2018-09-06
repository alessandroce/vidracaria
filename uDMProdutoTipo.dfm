object DMProdutoTipo: TDMProdutoTipo
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 388
  Width = 552
  object qryDadosProdutoTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_TIPO'
      'WHERE PRODTP_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 104
    Top = 32
    object qryDadosProdutoTipoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosProdutoTipoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
  object dspDadosProdutoTipo: TDataSetProvider
    DataSet = qryDadosProdutoTipo
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 80
  end
  object dsDadosProdutoTipo: TDataSource
    DataSet = cdsDadosProdutoTipo
    Left = 104
    Top = 176
  end
  object cdsDadosProdutoTipo: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosProdutoTipo'
    Left = 103
    Top = 128
    object cdsDadosProdutoTipoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosProdutoTipoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
  object qryViewProdutoTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_TIPO'
      'WHERE PRODTP_DESCRICAO LIKE :NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 215
    Top = 58
    object qryViewProdutoTipoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object qryViewProdutoTipoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
  object dspViewProdutoTipo: TDataSetProvider
    DataSet = qryViewProdutoTipo
    UpdateMode = upWhereKeyOnly
    Left = 215
    Top = 106
  end
  object dsViewProdutoTipo: TDataSource
    DataSet = cdsViewProdutoTipo
    Left = 215
    Top = 202
  end
  object cdsViewProdutoTipo: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewProdutoTipo'
    Left = 214
    Top = 154
    object cdsViewProdutoTipoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object cdsViewProdutoTipoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
end
