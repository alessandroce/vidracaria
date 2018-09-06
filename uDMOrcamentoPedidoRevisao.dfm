object DMOrcamentoPedidoRevisao: TDMOrcamentoPedidoRevisao
  OldCreateOrder = False
  Left = 233
  Top = 177
  Height = 305
  Width = 596
  object dsViewOrcPedidoRevisao_VerificaRevisao: TDataSource
    DataSet = cdsViewOrcPedidoRevisao_VerificaRevisao
    Left = 216
    Top = 176
  end
  object dspViewOrcPedidoRevisao_VerificaRevisao: TDataSetProvider
    DataSet = qryViewOrcPedidoRevisao_VerificaRevisao
    Left = 216
    Top = 80
  end
  object qryViewOrcPedidoRevisao_VerificaRevisao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM ORCAMENTOPEDIDOS_REVISAO'
      '  WHERE ORCAMENTOPEDIDOS_REVISAO.orcpedrev_orcped_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 216
    Top = 32
    object qryViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_ORCPED_ID: TIntegerField
      FieldName = 'ORCPEDREV_ORCPED_ID'
      Required = True
    end
    object qryViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_MARCA_REVISAO: TStringField
      FieldName = 'ORCPEDREV_MARCA_REVISAO'
      FixedChar = True
      Size = 1
    end
    object qryViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_PROX_REVISAO: TDateField
      FieldName = 'ORCPEDREV_PROX_REVISAO'
    end
  end
  object cdsViewOrcPedidoRevisao_VerificaRevisao: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOrcPedidoRevisao_VerificaRevisao'
    Left = 216
    Top = 128
    object cdsViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_ORCPED_ID: TIntegerField
      FieldName = 'ORCPEDREV_ORCPED_ID'
      Required = True
    end
    object cdsViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_MARCA_REVISAO: TStringField
      FieldName = 'ORCPEDREV_MARCA_REVISAO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_PROX_REVISAO: TDateField
      FieldName = 'ORCPEDREV_PROX_REVISAO'
    end
  end
  object dsDadosOrcPedidoRevisao: TDataSource
    DataSet = cdsDadosOrcPedidoRevisao
    Left = 72
    Top = 192
  end
  object dspDadosOrcPedidoRevisao: TDataSetProvider
    DataSet = qryDadosOrcPedidoRevisao
    Left = 72
    Top = 96
  end
  object qryDadosOrcPedidoRevisao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM ORCAMENTOPEDIDOS_REVISAO'
      '  WHERE ORCAMENTOPEDIDOS_REVISAO.orcpedrev_orcped_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 72
    Top = 48
    object qryDadosOrcPedidoRevisaoORCPEDREV_ORCPED_ID: TIntegerField
      FieldName = 'ORCPEDREV_ORCPED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOrcPedidoRevisaoORCPEDREV_MARCA_REVISAO: TStringField
      FieldName = 'ORCPEDREV_MARCA_REVISAO'
      FixedChar = True
      Size = 1
    end
    object qryDadosOrcPedidoRevisaoORCPEDREV_PROX_REVISAO: TDateField
      FieldName = 'ORCPEDREV_PROX_REVISAO'
    end
  end
  object cdsDadosOrcPedidoRevisao: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOrcPedidoRevisao'
    Left = 72
    Top = 144
    object cdsDadosOrcPedidoRevisaoORCPEDREV_ORCPED_ID: TIntegerField
      FieldName = 'ORCPEDREV_ORCPED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOrcPedidoRevisaoORCPEDREV_MARCA_REVISAO: TStringField
      FieldName = 'ORCPEDREV_MARCA_REVISAO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosOrcPedidoRevisaoORCPEDREV_PROX_REVISAO: TDateField
      FieldName = 'ORCPEDREV_PROX_REVISAO'
    end
  end
end
