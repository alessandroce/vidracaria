object DMOrcamentoTipo: TDMOrcamentoTipo
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 266
  Width = 308
  object qryDadosOrcamentoTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM ORCAMENTO_TIPO'
      'WHERE ORCTP_ID =:ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 56
    Top = 16
    object qryDadosOrcamentoTipoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcamentoTipoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object dspDadosOrcamentoTipo: TDataSetProvider
    DataSet = qryDadosOrcamentoTipo
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 64
  end
  object dsDadosOrcamentoTipo: TDataSource
    DataSet = cdsDadosOrcamentoTipo
    Left = 56
    Top = 160
  end
  object cdsDadosOrcamentoTipo: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOrcamentoTipo'
    Left = 55
    Top = 112
    object cdsDadosOrcamentoTipoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcamentoTipoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object qryViewOrcamentoTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM ORCAMENTO_TIPO'
      'WHERE ORCTP_DESCRICAO LIKE :DESCRICAO'
      'ORDER BY ORCTP_DESCRICAO ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 208
    Top = 16
    object qryViewOrcamentoTipoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object qryViewOrcamentoTipoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
  object dspViewOrcamentoTipo: TDataSetProvider
    DataSet = qryViewOrcamentoTipo
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 64
  end
  object dsViewOrcamentoTipo: TDataSource
    DataSet = cdsViewOrcamentoTipo
    Left = 208
    Top = 160
  end
  object cdsViewOrcamentoTipo: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcamentoTipo'
    Left = 207
    Top = 112
    object cdsViewOrcamentoTipoORCTP_ID: TIntegerField
      FieldName = 'ORCTP_ID'
      Required = True
    end
    object cdsViewOrcamentoTipoORCTP_DESCRICAO: TStringField
      FieldName = 'ORCTP_DESCRICAO'
      Size = 100
    end
  end
end
