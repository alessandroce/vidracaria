object DMConfiguracoes: TDMConfiguracoes
  OldCreateOrder = False
  Left = 246
  Top = 183
  Height = 302
  Width = 297
  object qryDadosConfiguracoes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM CONFIGURACOES'
      'WHERE CONFIGURACOES.config_id =:ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 72
    Top = 24
    object qryDadosConfiguracoesCONFIG_ID: TIntegerField
      FieldName = 'CONFIG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosConfiguracoesCONFIG_JUROSMES: TFMTBCDField
      FieldName = 'CONFIG_JUROSMES'
      Precision = 15
      Size = 2
    end
  end
  object dspDadosConfiguracoes: TDataSetProvider
    DataSet = qryDadosConfiguracoes
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 72
  end
  object cdsDadosConfiguracoes: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosConfiguracoes'
    Left = 72
    Top = 120
    object cdsDadosConfiguracoesCONFIG_ID: TIntegerField
      FieldName = 'CONFIG_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosConfiguracoesCONFIG_JUROSMES: TFMTBCDField
      FieldName = 'CONFIG_JUROSMES'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object dsDadosConfiguracoes: TDataSource
    DataSet = cdsDadosConfiguracoes
    Left = 72
    Top = 168
  end
end
