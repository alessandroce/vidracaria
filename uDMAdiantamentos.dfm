object DMAdiantamentos: TDMAdiantamentos
  OldCreateOrder = False
  Left = 217
  Top = 234
  Height = 373
  Width = 589
  object qryDadosAdiantamentos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQUE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM  ADIANTAMENTOS'
      'WHERE ADIANT_ORCPED_ID = :ID'
      'AND ADIANT_SEQUE = :SEQUE'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 64
    Top = 24
    object qryDadosAdiantamentosADIANT_ORCPED_ID: TIntegerField
      FieldName = 'ADIANT_ORCPED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosAdiantamentosADIANT_BANCO_ID: TIntegerField
      FieldName = 'ADIANT_BANCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANT_PARCELA_DESCRICAO'
      Size = 30
    end
    object qryDadosAdiantamentosADIANT_VALOR: TFMTBCDField
      FieldName = 'ADIANT_VALOR'
      Precision = 15
      Size = 2
    end
    object qryDadosAdiantamentosADIANT_NUM_CHEQUE: TStringField
      FieldName = 'ADIANT_NUM_CHEQUE'
      Size = 30
    end
    object qryDadosAdiantamentosADIANT_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANT_DATA_APRESENTACAO'
    end
    object qryDadosAdiantamentosADIANT_ATIVO: TStringField
      FieldName = 'ADIANT_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANT_BANCO_AGENCIA'
    end
    object qryDadosAdiantamentosADIANT_ESPECIE: TStringField
      FieldName = 'ADIANT_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object qryDadosAdiantamentosADIANT_CONDICAO: TStringField
      FieldName = 'ADIANT_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object qryDadosAdiantamentosADIANT_SEQUE: TIntegerField
      FieldName = 'ADIANT_SEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspDadosAdiantamentos: TDataSetProvider
    DataSet = qryDadosAdiantamentos
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 72
  end
  object cdsDadosAdiantamentos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosAdiantamentos'
    Left = 64
    Top = 120
    object cdsDadosAdiantamentosADIANT_ORCPED_ID: TIntegerField
      FieldName = 'ADIANT_ORCPED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosAdiantamentosADIANT_BANCO_ID: TIntegerField
      FieldName = 'ADIANT_BANCO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANT_PARCELA_DESCRICAO'
      Size = 30
    end
    object cdsDadosAdiantamentosADIANT_VALOR: TFMTBCDField
      FieldName = 'ADIANT_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosAdiantamentosADIANT_NUM_CHEQUE: TStringField
      FieldName = 'ADIANT_NUM_CHEQUE'
      Size = 30
    end
    object cdsDadosAdiantamentosADIANT_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANT_DATA_APRESENTACAO'
    end
    object cdsDadosAdiantamentosADIANT_ATIVO: TStringField
      FieldName = 'ADIANT_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANT_BANCO_AGENCIA'
    end
    object cdsDadosAdiantamentosADIANT_ESPECIE: TStringField
      FieldName = 'ADIANT_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object cdsDadosAdiantamentosADIANT_CONDICAO: TStringField
      FieldName = 'ADIANT_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosAdiantamentosADIANT_SEQUE: TIntegerField
      FieldName = 'ADIANT_SEQUE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
  end
  object dsDadosAdiantamentos: TDataSource
    DataSet = cdsDadosAdiantamentos
    Left = 64
    Top = 168
  end
  object qryViewAdiantamentos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM VIEW_ADIANTAMENTOS'
      'WHERE orcped_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 152
    Top = 40
    object qryViewAdiantamentosORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
    end
    object qryViewAdiantamentosADIANT_SEQUE: TIntegerField
      FieldName = 'ADIANT_SEQUE'
    end
    object qryViewAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANT_PARCELA_DESCRICAO'
      Size = 30
    end
    object qryViewAdiantamentosADIANT_VALOR: TFMTBCDField
      FieldName = 'ADIANT_VALOR'
      Precision = 15
      Size = 2
    end
    object qryViewAdiantamentosADIANT_NUM_CHEQUE: TStringField
      FieldName = 'ADIANT_NUM_CHEQUE'
      Size = 30
    end
    object qryViewAdiantamentosADIANT_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANT_DATA_APRESENTACAO'
    end
    object qryViewAdiantamentosADIANT_ESPECIE: TStringField
      FieldName = 'ADIANT_ESPECIE'
      FixedChar = True
      Size = 8
    end
    object qryViewAdiantamentosADIANT_CONDICAO: TStringField
      FieldName = 'ADIANT_CONDICAO'
      FixedChar = True
      Size = 7
    end
    object qryViewAdiantamentosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
    end
    object qryViewAdiantamentosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryViewAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANT_BANCO_AGENCIA'
    end
    object qryViewAdiantamentosADIANT_ATIVO: TStringField
      FieldName = 'ADIANT_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewAdiantamentos: TDataSetProvider
    DataSet = qryViewAdiantamentos
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 88
  end
  object cdsViewAdiantamentos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentos'
    Left = 152
    Top = 136
    object cdsViewAdiantamentosORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
    end
    object cdsViewAdiantamentosADIANT_SEQUE: TIntegerField
      FieldName = 'ADIANT_SEQUE'
    end
    object cdsViewAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANT_PARCELA_DESCRICAO'
      Size = 30
    end
    object cdsViewAdiantamentosADIANT_VALOR: TFMTBCDField
      FieldName = 'ADIANT_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewAdiantamentosADIANT_NUM_CHEQUE: TStringField
      FieldName = 'ADIANT_NUM_CHEQUE'
      Size = 30
    end
    object cdsViewAdiantamentosADIANT_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANT_DATA_APRESENTACAO'
    end
    object cdsViewAdiantamentosADIANT_ESPECIE: TStringField
      FieldName = 'ADIANT_ESPECIE'
      FixedChar = True
      Size = 8
    end
    object cdsViewAdiantamentosADIANT_CONDICAO: TStringField
      FieldName = 'ADIANT_CONDICAO'
      FixedChar = True
      Size = 7
    end
    object cdsViewAdiantamentosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
    end
    object cdsViewAdiantamentosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsViewAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANT_BANCO_AGENCIA'
    end
    object cdsViewAdiantamentosADIANT_ATIVO: TStringField
      FieldName = 'ADIANT_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsViewAdiantamentos: TDataSource
    DataSet = cdsViewAdiantamentos
    Left = 152
    Top = 184
  end
  object qryViewAdiantamentos_Bancos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM  BANCOS ')
    SQLConnection = DMConnection.SQLConnection
    Left = 248
    Top = 24
    object qryViewAdiantamentos_BancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object qryViewAdiantamentos_BancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
  end
  object dspViewAdiantamentos_Bancos: TDataSetProvider
    DataSet = qryViewAdiantamentos_Bancos
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 72
  end
  object cdsViewAdiantamentos_Bancos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentos_Bancos'
    Left = 248
    Top = 120
    object cdsViewAdiantamentos_BancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object cdsViewAdiantamentos_BancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
  end
  object dsViewAdiantamentos_Bancos: TDataSource
    DataSet = cdsViewAdiantamentos_Bancos
    Left = 248
    Top = 168
  end
end
