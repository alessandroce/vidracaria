object DMRelatorioOrcamento: TDMRelatorioOrcamento
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 304
  Width = 509
  object qryViewRelatorioOrcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_REL_ORCAMENTO_FECHADO')
    SQLConnection = DMConnection.SQLConnection
    Left = 96
    Top = 32
    object qryViewRelatorioOrcamentoORC_ID: TIntegerField
      FieldName = 'ORC_ID'
    end
    object qryViewRelatorioOrcamentoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewRelatorioOrcamentoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object qryViewRelatorioOrcamentoORC_TIPO: TStringField
      FieldName = 'ORC_TIPO'
      Size = 100
    end
    object qryViewRelatorioOrcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qryViewRelatorioOrcamentoDATA_PED: TDateField
      FieldName = 'DATA_PED'
    end
    object qryViewRelatorioOrcamentoDATA_ORC: TDateField
      FieldName = 'DATA_ORC'
    end
    object qryViewRelatorioOrcamentoDATA_REVISAO: TDateField
      FieldName = 'DATA_REVISAO'
    end
    object qryViewRelatorioOrcamentoORC_VALOR: TFMTBCDField
      FieldName = 'ORC_VALOR'
      Precision = 15
      Size = 2
    end
  end
  object dspViewRelatorioOrcamento: TDataSetProvider
    DataSet = qryViewRelatorioOrcamento
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 80
  end
  object dsViewRelatorioOrcamento: TDataSource
    DataSet = cdsViewRelatorioOrcamento
    Left = 96
    Top = 176
  end
  object cdsViewRelatorioOrcamento: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioOrcamento'
    Left = 95
    Top = 128
    object cdsViewRelatorioOrcamentoORC_ID: TIntegerField
      FieldName = 'ORC_ID'
    end
    object cdsViewRelatorioOrcamentoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewRelatorioOrcamentoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object cdsViewRelatorioOrcamentoORC_TIPO: TStringField
      FieldName = 'ORC_TIPO'
      Size = 100
    end
    object cdsViewRelatorioOrcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsViewRelatorioOrcamentoDATA_PED: TDateField
      FieldName = 'DATA_PED'
    end
    object cdsViewRelatorioOrcamentoDATA_ORC: TDateField
      FieldName = 'DATA_ORC'
    end
    object cdsViewRelatorioOrcamentoDATA_REVISAO: TDateField
      FieldName = 'DATA_REVISAO'
    end
    object cdsViewRelatorioOrcamentoORC_VALOR: TFMTBCDField
      FieldName = 'ORC_VALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object qryViewRelatorioOrcamento_QtdPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATADE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT COUNT(DISTINCT(VIEW_RELATORIO_ORCAMENTO.ped_id)) AS QTPED' +
        'IDO'
      'FROM VIEW_RELATORIO_ORCAMENTO'
      
        'WHERE VIEW_RELATORIO_ORCAMENTO.ped_data BETWEEN :DATADE AND :DAT' +
        'AATE')
    SQLConnection = DMConnection.SQLConnection
    Left = 216
    Top = 48
    object qryViewRelatorioOrcamento_QtdPedidoQTPEDIDO: TIntegerField
      FieldName = 'QTPEDIDO'
      Required = True
    end
  end
  object dspViewRelatorioOrcamento_QtdPedido: TDataSetProvider
    DataSet = qryViewRelatorioOrcamento_QtdPedido
    UpdateMode = upWhereKeyOnly
    Left = 216
    Top = 96
  end
  object dsViewRelatorioOrcamento_QtdPedido: TDataSource
    DataSet = cdsViewRelatorioOrcamento_QtdPedido
    Left = 216
    Top = 192
  end
  object cdsViewRelatorioOrcamento_QtdPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioOrcamento_QtdPedido'
    Left = 215
    Top = 144
    object cdsViewRelatorioOrcamento_QtdPedidoQTPEDIDO: TIntegerField
      FieldName = 'QTPEDIDO'
      Required = True
    end
  end
end
