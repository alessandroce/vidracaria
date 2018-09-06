object DMRelatorioTipoProduto: TDMRelatorioTipoProduto
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 300
  Width = 208
  object qryViewRelatorioProdutoTipo: TSQLQuery
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
    Left = 73
    Top = 18
    object qryViewRelatorioProdutoTipoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object qryViewRelatorioProdutoTipoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
  object dspViewRelatorioProdutoTipo: TDataSetProvider
    DataSet = qryViewRelatorioProdutoTipo
    UpdateMode = upWhereKeyOnly
    Left = 73
    Top = 66
  end
  object dsViewRelatorioProdutoTipo: TDataSource
    DataSet = cdsViewRelatorioProdutoTipo
    Left = 73
    Top = 162
  end
  object cdsViewRelatorioProdutoTipo: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioProdutoTipo'
    Left = 72
    Top = 114
    object cdsViewRelatorioProdutoTipoPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object cdsViewRelatorioProdutoTipoPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
  end
end
