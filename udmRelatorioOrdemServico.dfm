object DMRelatorioOrdemServico: TDMRelatorioOrdemServico
  OldCreateOrder = False
  Left = 235
  Top = 189
  Height = 398
  Width = 640
  object dsViewRelatorioOrdemServico: TDataSource
    DataSet = cdsViewRelatorioOrdemServico
    Left = 88
    Top = 176
  end
  object dspViewRelatorioOrdemServico: TDataSetProvider
    DataSet = qryViewRelatorioOrdemServico
    Left = 88
    Top = 80
  end
  object qryViewRelatorioOrdemServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'OS_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_RELATORIO_ORDEMSERVICO'
      'WHERE VIEW_RELATORIO_ORDEMSERVICO.OS_ID = :OS_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 88
    Top = 32
    object qryViewRelatorioOrdemServicoOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object qryViewRelatorioOrdemServicoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object qryViewRelatorioOrdemServicoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewRelatorioOrdemServicoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewRelatorioOrdemServicoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewRelatorioOrdemServicoCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewRelatorioOrdemServicoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewRelatorioOrdemServicoCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 100
    end
    object qryViewRelatorioOrdemServicoEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 100
    end
    object qryViewRelatorioOrdemServicoPROB_RECLAMADO: TStringField
      FieldName = 'PROB_RECLAMADO'
      Size = 200
    end
    object qryViewRelatorioOrdemServicoDATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
    end
    object qryViewRelatorioOrdemServicoDATA_SAIDA: TSQLTimeStampField
      FieldName = 'DATA_SAIDA'
    end
    object qryViewRelatorioOrdemServicoOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object qryViewRelatorioOrdemServicoATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Size = 50
    end
    object qryViewRelatorioOrdemServicoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object qryViewRelatorioOrdemServicoTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 30
    end
    object qryViewRelatorioOrdemServicoITENS: TStringField
      FieldName = 'ITENS'
      Size = 100
    end
    object qryViewRelatorioOrdemServicoOBS_GERAL: TBlobField
      FieldName = 'OBS_GERAL'
      Size = 1
    end
    object qryViewRelatorioOrdemServicoOBS_SERVICO: TBlobField
      FieldName = 'OBS_SERVICO'
      Size = 1
    end
    object qryViewRelatorioOrdemServicoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewRelatorioOrdemServicoOS_VALOR: TFMTBCDField
      FieldName = 'OS_VALOR'
      Precision = 15
      Size = 2
    end
  end
  object cdsViewRelatorioOrdemServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioOrdemServico'
    Left = 88
    Top = 131
    object cdsViewRelatorioOrdemServicoOS_ID: TIntegerField
      FieldName = 'OS_ID'
    end
    object cdsViewRelatorioOrdemServicoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object cdsViewRelatorioOrdemServicoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewRelatorioOrdemServicoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewRelatorioOrdemServicoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewRelatorioOrdemServicoCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewRelatorioOrdemServicoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewRelatorioOrdemServicoCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 100
    end
    object cdsViewRelatorioOrdemServicoEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 100
    end
    object cdsViewRelatorioOrdemServicoPROB_RECLAMADO: TStringField
      FieldName = 'PROB_RECLAMADO'
      Size = 200
    end
    object cdsViewRelatorioOrdemServicoDATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
    end
    object cdsViewRelatorioOrdemServicoDATA_SAIDA: TSQLTimeStampField
      FieldName = 'DATA_SAIDA'
    end
    object cdsViewRelatorioOrdemServicoOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 1
    end
    object cdsViewRelatorioOrdemServicoATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Size = 50
    end
    object cdsViewRelatorioOrdemServicoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsViewRelatorioOrdemServicoTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 30
    end
    object cdsViewRelatorioOrdemServicoITENS: TStringField
      FieldName = 'ITENS'
      Size = 100
    end
    object cdsViewRelatorioOrdemServicoOBS_GERAL: TBlobField
      FieldName = 'OBS_GERAL'
      Size = 1
    end
    object cdsViewRelatorioOrdemServicoOBS_SERVICO: TBlobField
      FieldName = 'OBS_SERVICO'
      Size = 1
    end
    object cdsViewRelatorioOrdemServicoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewRelatorioOrdemServicoOS_VALOR: TFMTBCDField
      FieldName = 'OS_VALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
end
