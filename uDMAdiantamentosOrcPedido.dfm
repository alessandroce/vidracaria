object DMAdiantamentoOrcPedido: TDMAdiantamentoOrcPedido
  OldCreateOrder = False
  Left = 228
  Top = 189
  Height = 352
  Width = 647
  object qryDadosAdiantamentosOrcPedido: TSQLQuery
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
      'FROM  ADIANTAMENTOS_ORCPEDIDO'
      'WHERE adiantped_orcped_id = :ID'
      'AND adiantped_seque = :SEQUE'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 88
    Top = 24
    object qryDadosAdiantamentosOrcPedidoADIANTPED_ORCPED_ID: TIntegerField
      FieldName = 'ADIANTPED_ORCPED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_BANCO_ID: TIntegerField
      FieldName = 'ADIANTPED_BANCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      Precision = 15
      Size = 2
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object qryDadosAdiantamentosOrcPedidoADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 1
    end
  end
  object dspDadosAdiantamentosOrcPedido: TDataSetProvider
    DataSet = qryDadosAdiantamentosOrcPedido
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 72
  end
  object cdsDadosAdiantamentosOrcPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosAdiantamentosOrcPedido'
    Left = 88
    Top = 120
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_ORCPED_ID: TIntegerField
      FieldName = 'ADIANTPED_ORCPED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_BANCO_ID: TIntegerField
      FieldName = 'ADIANTPED_BANCO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_SEQUE: TIntegerField
      FieldName = 'ADIANTPED_SEQUE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANTPED_PARCELA_DESCRICAO'
      Size = 30
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_VALOR: TFMTBCDField
      FieldName = 'ADIANTPED_VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_NUM_CHEQUE: TStringField
      FieldName = 'ADIANTPED_NUM_CHEQUE'
      Size = 30
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANTPED_DATA_APRESENTACAO'
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_ATIVO: TStringField
      FieldName = 'ADIANTPED_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANTPED_BANCO_AGENCIA'
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_ESPECIE: TStringField
      FieldName = 'ADIANTPED_ESPECIE'
      FixedChar = True
      Size = 1
    end
    object cdsDadosAdiantamentosOrcPedidoADIANTPED_CONDICAO: TStringField
      FieldName = 'ADIANTPED_CONDICAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDadosAdiantamentosOrcPedido: TDataSource
    DataSet = cdsDadosAdiantamentosOrcPedido
    Left = 88
    Top = 168
  end
  object qryViewAdiantamentosOrcPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM '
      'VIEW_ADIANTAMENTOS_ORCPEDIDO'
      'WHERE ORCPED_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 192
    Top = 40
    object qryViewAdiantamentosOrcPedidoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
    end
    object qryViewAdiantamentosOrcPedidoADIANT_SEQUE: TIntegerField
      FieldName = 'ADIANT_SEQUE'
    end
    object qryViewAdiantamentosOrcPedidoADIANT_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANT_PARCELA_DESCRICAO'
      Size = 30
    end
    object qryViewAdiantamentosOrcPedidoADIANT_VALOR: TFMTBCDField
      FieldName = 'ADIANT_VALOR'
      Precision = 15
      Size = 2
    end
    object qryViewAdiantamentosOrcPedidoADIANT_NUM_CHEQUE: TStringField
      FieldName = 'ADIANT_NUM_CHEQUE'
      Size = 30
    end
    object qryViewAdiantamentosOrcPedidoADIANT_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANT_DATA_APRESENTACAO'
    end
    object qryViewAdiantamentosOrcPedidoADIANT_ESPECIE: TStringField
      FieldName = 'ADIANT_ESPECIE'
      FixedChar = True
      Size = 8
    end
    object qryViewAdiantamentosOrcPedidoADIANT_CONDICAO: TStringField
      FieldName = 'ADIANT_CONDICAO'
      FixedChar = True
      Size = 7
    end
    object qryViewAdiantamentosOrcPedidoADIANT_ATIVO: TStringField
      FieldName = 'ADIANT_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewAdiantamentosOrcPedidoBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
    end
    object qryViewAdiantamentosOrcPedidoBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryViewAdiantamentosOrcPedidoADIANT_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANT_BANCO_AGENCIA'
    end
  end
  object dspViewAdiantamentosOrcPedido: TDataSetProvider
    DataSet = qryViewAdiantamentosOrcPedido
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 88
  end
  object cdsViewAdiantamentosOrcPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentosOrcPedido'
    Left = 192
    Top = 136
    object cdsViewAdiantamentosOrcPedidoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_SEQUE: TIntegerField
      FieldName = 'ADIANT_SEQUE'
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_PARCELA_DESCRICAO: TStringField
      FieldName = 'ADIANT_PARCELA_DESCRICAO'
      Size = 30
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_VALOR: TFMTBCDField
      FieldName = 'ADIANT_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_NUM_CHEQUE: TStringField
      FieldName = 'ADIANT_NUM_CHEQUE'
      Size = 30
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_DATA_APRESENTACAO: TDateField
      FieldName = 'ADIANT_DATA_APRESENTACAO'
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_ESPECIE: TStringField
      FieldName = 'ADIANT_ESPECIE'
      FixedChar = True
      Size = 8
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_CONDICAO: TStringField
      FieldName = 'ADIANT_CONDICAO'
      FixedChar = True
      Size = 7
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_ATIVO: TStringField
      FieldName = 'ADIANT_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewAdiantamentosOrcPedidoBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
    end
    object cdsViewAdiantamentosOrcPedidoBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsViewAdiantamentosOrcPedidoADIANT_BANCO_AGENCIA: TIntegerField
      FieldName = 'ADIANT_BANCO_AGENCIA'
    end
  end
  object dsViewAdiantamentosOrcPedido: TDataSource
    DataSet = cdsViewAdiantamentosOrcPedido
    Left = 192
    Top = 184
  end
  object qryViewAdiantamentosOrcPedido_Bancos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM  BANCOS'
      'WHERE BANC_ATIVO = '#39'T'#39)
    SQLConnection = DMConnection.SQLConnection
    Left = 320
    Top = 24
    object qryViewAdiantamentosOrcPedido_BancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object qryViewAdiantamentosOrcPedido_BancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryViewAdiantamentosOrcPedido_BancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewAdiantamentosOrcPedido_Bancos: TDataSetProvider
    DataSet = qryViewAdiantamentosOrcPedido_Bancos
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 72
  end
  object cdsViewAdiantamentosOrcPedido_Bancos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentosOrcPedido_Bancos'
    Left = 320
    Top = 120
    object cdsViewAdiantamentosOrcPedido_BancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object cdsViewAdiantamentosOrcPedido_BancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsViewAdiantamentosOrcPedido_BancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsViewAdiantamentosOrcPedido_Bancos: TDataSource
    DataSet = cdsViewAdiantamentosOrcPedido_Bancos
    Left = 320
    Top = 168
  end
  object qryViewAdiantamentosOrcPedido_Soma: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(ADIANTAMENTOS_ORCPEDIDO.adiantped_valor) AS SOMA'
      'FROM ADIANTAMENTOS_ORCPEDIDO'
      'WHERE ADIANTAMENTOS_ORCPEDIDO.adiantped_orcped_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 448
    Top = 40
    object qryViewAdiantamentosOrcPedido_SomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      Precision = 15
      Size = 2
    end
  end
  object dspViewAdiantamentosOrcPedido_Soma: TDataSetProvider
    DataSet = qryViewAdiantamentosOrcPedido_Soma
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 88
  end
  object cdsViewAdiantamentosOrcPedido_Soma: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewAdiantamentosOrcPedido_Soma'
    Left = 448
    Top = 136
    object cdsViewAdiantamentosOrcPedido_SomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      Precision = 15
      Size = 2
    end
  end
  object dsViewAdiantamentosOrcPedido_Soma: TDataSource
    DataSet = cdsViewAdiantamentosOrcPedido_Soma
    Left = 448
    Top = 184
  end
end
