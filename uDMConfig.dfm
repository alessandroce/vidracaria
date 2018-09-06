object DMConfig: TDMConfig
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 366
  Width = 514
  object dsDadosConfig: TDataSource
    DataSet = cdsDadosConfig
    Left = 112
    Top = 160
  end
  object dspDadosConfig: TDataSetProvider
    DataSet = qryDadosConfig
    Left = 112
    Top = 64
  end
  object qryDadosConfig: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONFIG'
      'WHERE CONFIG_ID=:ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 112
    Top = 16
    object qryDadosConfigCONFIG_ID: TIntegerField
      FieldName = 'CONFIG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosConfigCONFIG_TEXTO: TBlobField
      FieldName = 'CONFIG_TEXTO'
      Size = 1
    end
  end
  object cdsDadosConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosConfig'
    Left = 112
    Top = 115
    object cdsDadosConfigCONFIG_ID: TIntegerField
      FieldName = 'CONFIG_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosConfigCONFIG_TEXTO: TBlobField
      FieldName = 'CONFIG_TEXTO'
      Size = 1
    end
  end
  object dsDadosConfigImpressao: TDataSource
    DataSet = cdsDadosConfigImpressao
    Left = 216
    Top = 176
  end
  object dspDadosConfigImpressao: TDataSetProvider
    DataSet = qryDadosConfigImpressao
    Left = 216
    Top = 80
  end
  object qryDadosConfigImpressao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONFIG_IMPRESSAO'
      'WHERE ID=:ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 216
    Top = 32
    object qryDadosConfigImpressaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryDadosConfigImpressaoPAPERHEIGHT: TIntegerField
      FieldName = 'PAPERHEIGHT'
    end
    object qryDadosConfigImpressaoPAPERWIDTH: TIntegerField
      FieldName = 'PAPERWIDTH'
    end
    object qryDadosConfigImpressaoORIENTATION: TStringField
      FieldName = 'ORIENTATION'
      Size = 15
    end
    object qryDadosConfigImpressaoBOTTOMMARGIN: TIntegerField
      FieldName = 'BOTTOMMARGIN'
    end
    object qryDadosConfigImpressaoLEFTMARGIN: TIntegerField
      FieldName = 'LEFTMARGIN'
    end
    object qryDadosConfigImpressaoRIGHTMARGIN: TIntegerField
      FieldName = 'RIGHTMARGIN'
    end
    object qryDadosConfigImpressaoTOPMARGIN: TIntegerField
      FieldName = 'TOPMARGIN'
    end
  end
  object cdsDadosConfigImpressao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosConfigImpressao'
    Left = 216
    Top = 131
    object cdsDadosConfigImpressaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDadosConfigImpressaoPAPERHEIGHT: TIntegerField
      FieldName = 'PAPERHEIGHT'
    end
    object cdsDadosConfigImpressaoPAPERWIDTH: TIntegerField
      FieldName = 'PAPERWIDTH'
    end
    object cdsDadosConfigImpressaoORIENTATION: TStringField
      FieldName = 'ORIENTATION'
      Size = 15
    end
    object cdsDadosConfigImpressaoBOTTOMMARGIN: TIntegerField
      FieldName = 'BOTTOMMARGIN'
    end
    object cdsDadosConfigImpressaoLEFTMARGIN: TIntegerField
      FieldName = 'LEFTMARGIN'
    end
    object cdsDadosConfigImpressaoRIGHTMARGIN: TIntegerField
      FieldName = 'RIGHTMARGIN'
    end
    object cdsDadosConfigImpressaoTOPMARGIN: TIntegerField
      FieldName = 'TOPMARGIN'
    end
  end
end
