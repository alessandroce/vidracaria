object DMBancos: TDMBancos
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 372
  Width = 348
  object qryDadosBancos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM BANCOS'
      'WHERE BANC_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 56
    Top = 24
    object qryDadosBancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosBancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryDadosBancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspDadosBancos: TDataSetProvider
    DataSet = qryDadosBancos
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 72
  end
  object dsDadosBancos: TDataSource
    DataSet = cdsDadosBancos
    Left = 56
    Top = 168
  end
  object qryViewBancos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM BANCOS'
      'WHERE BANC_DESCRICAO LIKE :NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 120
    Top = 40
    object qryViewBancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object qryViewBancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryViewBancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewBancos: TDataSetProvider
    DataSet = qryViewBancos
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 88
  end
  object dsViewBancos: TDataSource
    DataSet = cdsViewBancos
    Left = 120
    Top = 184
  end
  object cdsViewBancos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewBancos'
    Left = 120
    Top = 136
    object cdsViewBancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object cdsViewBancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsViewBancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsDadosBancos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosBancos'
    Left = 55
    Top = 120
    object cdsDadosBancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object cdsDadosBancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsDadosBancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
