object DMAdiantamentosPedido: TDMAdiantamentosPedido
  OldCreateOrder = False
  Left = 200
  Top = 178
  Height = 377
  Width = 548
  object qryDadosAdiantamentosPedido: TSQLQuery
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
      'FROM  ADIANTAMENTOS_PEDIDO'
      'WHERE adiantped_ped_id = :ID'
      'AND adiantped_seque = :SEQUE'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 64
    Top = 24
    object qryDadosAdiantamentosPedidoADIANTPED_PED_ID: TIntegerField
      FieldName = 'ADIANTPED_PED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosAdiantamentosPedidoADIANTPED_BANCO_ID: TIntegerField
      FieldName = 'ADIANTPED_BANCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object qryDadosAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      Precision = 15
      Size = 2
    end
    object qryDadosAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object qryDadosAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object qryDadosAdiantamentosPedidoADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
    object qryDadosAdiantamentosPedidoADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object qryDadosAdiantamentosPedidoADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 1
    end
  end
  object dspDadosAdiantamentosPedido: TDataSetProvider
    DataSet = qryDadosAdiantamentosPedido
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 72
  end
  object cdsDadosAdiantamentosPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosAdiantamentosPedido'
    Left = 64
    Top = 120
    object cdsDadosAdiantamentosPedidoADIANTPED_PED_ID: TIntegerField
      FieldName = 'ADIANTPED_PED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_BANCO_ID: TIntegerField
      FieldName = 'ADIANTPED_BANCO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object cdsDadosAdiantamentosPedidoADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDadosAdiantamentosPedido: TDataSource
    DataSet = cdsDadosAdiantamentosPedido
    Left = 64
    Top = 168
  end
  object qryViewAdiantamentosPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM VIEW_ADIANTAMENTOS_PEDIDO'
      'WHERE ped_id = :ID'
      'order by VIEW_ADIANTAMENTOS_PEDIDO.adiantped_seque')
    SQLConnection = DMConnection.SQLConnection
    Left = 168
    Top = 40
    object qryViewAdiantamentosPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
    end
    object qryViewAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object qryViewAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      Precision = 15
      Size = 2
    end
    object qryViewAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object qryViewAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object qryViewAdiantamentosPedidoADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 8
    end
    object qryViewAdiantamentosPedidoADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 7
    end
    object qryViewAdiantamentosPedidoADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewAdiantamentosPedidoBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
    end
    object qryViewAdiantamentosPedidoBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryViewAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
  end
  object dspViewAdiantamentosPedido: TDataSetProvider
    DataSet = qryViewAdiantamentosPedido
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 88
  end
  object cdsViewAdiantamentosPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentosPedido'
    Left = 168
    Top = 136
    object cdsViewAdiantamentosPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
    end
    object cdsViewAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object cdsViewAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object cdsViewAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object cdsViewAdiantamentosPedidoADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 8
    end
    object cdsViewAdiantamentosPedidoADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 7
    end
    object cdsViewAdiantamentosPedidoADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewAdiantamentosPedidoBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
    end
    object cdsViewAdiantamentosPedidoBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsViewAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
  end
  object dsViewAdiantamentosPedido: TDataSource
    DataSet = cdsViewAdiantamentosPedido
    Left = 168
    Top = 184
  end
  object qryViewAdiantamentosPedido_Bancos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM  BANCOS'
      'WHERE BANC_ATIVO = '#39'T'#39)
    SQLConnection = DMConnection.SQLConnection
    Left = 280
    Top = 24
    object qryViewAdiantamentosPedido_BancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object qryViewAdiantamentosPedido_BancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryViewAdiantamentosPedido_BancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewAdiantamentosPedido_Bancos: TDataSetProvider
    DataSet = qryViewAdiantamentosPedido_Bancos
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 72
  end
  object cdsViewAdiantamentosPedido_Bancos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentosPedido_Bancos'
    Left = 280
    Top = 120
    object cdsViewAdiantamentosPedido_BancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object cdsViewAdiantamentosPedido_BancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsViewAdiantamentosPedido_BancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsViewAdiantamentosPedido_Bancos: TDataSource
    DataSet = cdsViewAdiantamentosPedido_Bancos
    Left = 280
    Top = 168
  end
  object qryViewAdiantamentosPedido_Soma: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(ADIANTAMENTOS_PEDIDO.adiantped_valor) AS SOMA'
      'FROM ADIANTAMENTOS_PEDIDO'
      'WHERE ADIANTAMENTOS_PEDIDO.adiantped_ped_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 392
    Top = 40
    object qryViewAdiantamentosPedido_SomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      Precision = 15
      Size = 2
    end
  end
  object dspViewAdiantamentosPedido_Soma: TDataSetProvider
    DataSet = qryViewAdiantamentosPedido_Soma
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 88
  end
  object cdsViewAdiantamentosPedido_Soma: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentosPedido_Soma'
    Left = 392
    Top = 136
    object cdsViewAdiantamentosPedido_SomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      Precision = 15
      Size = 2
    end
  end
  object dsViewAdiantamentosPedido_Soma: TDataSource
    DataSet = cdsViewAdiantamentosPedido_Soma
    Left = 392
    Top = 184
  end
end
