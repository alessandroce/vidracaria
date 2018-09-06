object DMOrdemServico: TDMOrdemServico
  OldCreateOrder = False
  Left = 291
  Top = 169
  Height = 495
  Width = 657
  object dsViewOS_Atend: TDataSource
    DataSet = cdsViewOS_Atend
    Left = 102
    Top = 176
  end
  object dspViewOS_Atend: TDataSetProvider
    DataSet = qryViewOS_Atend
    Left = 102
    Top = 80
  end
  object qryViewOS_Atend: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM ORDEM_SERVICO_ATENDTIPO')
    SQLConnection = DMConnection.SQLConnection
    Left = 102
    Top = 32
    object qryViewOS_AtendOSATENDTIPO_ID: TIntegerField
      FieldName = 'OSATENDTIPO_ID'
      Required = True
    end
    object qryViewOS_AtendOSATENDTIPO_DESCRICAO: TStringField
      FieldName = 'OSATENDTIPO_DESCRICAO'
      Size = 50
    end
  end
  object cdsViewOS_Atend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_Atend'
    Left = 102
    Top = 131
    object cdsViewOS_AtendOSATENDTIPO_ID: TIntegerField
      FieldName = 'OSATENDTIPO_ID'
      Required = True
    end
    object cdsViewOS_AtendOSATENDTIPO_DESCRICAO: TStringField
      FieldName = 'OSATENDTIPO_DESCRICAO'
      Size = 50
    end
  end
  object dsViewOS_Situacao: TDataSource
    DataSet = cdsViewOS_Situacao
    Left = 176
    Top = 152
  end
  object dspViewOS_Situacao: TDataSetProvider
    DataSet = qryViewOS_Situacao
    Left = 176
    Top = 56
  end
  object qryViewOS_Situacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM ORDEM_SEVICO_SITUACAO'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 176
    Top = 8
    object qryViewOS_SituacaoOSSIT_ID: TIntegerField
      FieldName = 'OSSIT_ID'
      Required = True
    end
    object qryViewOS_SituacaoOSSIT_DESCRICAO: TStringField
      FieldName = 'OSSIT_DESCRICAO'
      Size = 30
    end
  end
  object cdsViewOS_Situacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_Situacao'
    Left = 176
    Top = 107
    object cdsViewOS_SituacaoOSSIT_ID: TIntegerField
      FieldName = 'OSSIT_ID'
      Required = True
    end
    object cdsViewOS_SituacaoOSSIT_DESCRICAO: TStringField
      FieldName = 'OSSIT_DESCRICAO'
      Size = 30
    end
  end
  object dsViewOS_ClienteCodigo: TDataSource
    DataSet = cdsViewOS_ClienteCodigo
    Left = 352
    Top = 152
  end
  object dspViewOS_ClienteCodigo: TDataSetProvider
    DataSet = qryViewOS_ClienteCodigo
    Left = 352
    Top = 56
  end
  object qryViewOS_ClienteCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CLI_ID,'
      'CLI_CLIENTE,'
      'CLI_FONE,'
      'CLI_CELULAR'
      'FROM CLIENTES'
      'WHERE CLI_CLIENTE = :NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 352
    Top = 8
    object qryViewOS_ClienteCodigoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewOS_ClienteCodigoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewOS_ClienteCodigoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewOS_ClienteCodigoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
  end
  object cdsViewOS_ClienteCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_ClienteCodigo'
    Left = 352
    Top = 107
    object cdsViewOS_ClienteCodigoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewOS_ClienteCodigoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewOS_ClienteCodigoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewOS_ClienteCodigoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
  end
  object dsViewOSMaxID: TDataSource
    DataSet = cdsViewOSMaxID
    Left = 498
    Top = 152
  end
  object dspViewOSMaxID: TDataSetProvider
    DataSet = qryViewOSMaxID
    Left = 498
    Top = 56
  end
  object qryViewOSMaxID: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(ORDEM_SERVICOS.oserv_id)as OSERV_ID'
      'from ORDEM_SERVICOS')
    SQLConnection = DMConnection.SQLConnection
    Left = 498
    Top = 8
    object qryViewOSMaxIDOSERV_ID: TIntegerField
      FieldName = 'OSERV_ID'
    end
  end
  object cdsViewOSMaxID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOSMaxID'
    Left = 498
    Top = 107
    object cdsViewOSMaxIDOSERV_ID: TIntegerField
      FieldName = 'OSERV_ID'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
  end
  object dsViewOSBusca: TDataSource
    DataSet = cdsViewOSBusca
    Left = 562
    Top = 168
  end
  object dspViewOSBusca: TDataSetProvider
    DataSet = qryViewOSBusca
    Left = 562
    Top = 72
  end
  object qryViewOSBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT VIEW_ORDEM_SERVICOS.numero,'
      'CASE WHEN (VIEW_ORDEM_SERVICOS.numero IN ('
      'SELECT CONTAS_RECEBER.ctr_osserv_id'
      ' FROM CONTAS_RECEBER)) THEN '#39'T'#39' ELSE '#39'F'#39' end AS CONTARECEBER,'
      'VIEW_ORDEM_SERVICOS.equipamento,'
      'VIEW_ORDEM_SERVICOS.problemareclamado,'
      'VIEW_ORDEM_SERVICOS.total_servicos,'
      'VIEW_ORDEM_SERVICOS.total_pecas,'
      'VIEW_ORDEM_SERVICOS.total_os,'
      'CAST(VIEW_ORDEM_SERVICOS.datahora_ent AS DATE) AS DATA_ENTRADA,'
      'CAST(VIEW_ORDEM_SERVICOS.datahora_saida AS DATE) AS DATA_SAIDA,'
      'VIEW_ORDEM_SERVICOS.cliente,'
      'VIEW_ORDEM_SERVICOS.atendimento,'
      'VIEW_ORDEM_SERVICOS.situacao,'
      'VIEW_ORDEM_SERVICOS.tecnico'
      'FROM VIEW_ORDEM_SERVICOS'
      'WHERE 1 = 1')
    SQLConnection = DMConnection.SQLConnection
    Left = 562
    Top = 24
    object qryViewOSBuscaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object qryViewOSBuscaEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 100
    end
    object qryViewOSBuscaPROBLEMARECLAMADO: TStringField
      FieldName = 'PROBLEMARECLAMADO'
      Size = 200
    end
    object qryViewOSBuscaTOTAL_SERVICOS: TFMTBCDField
      FieldName = 'TOTAL_SERVICOS'
      Precision = 15
      Size = 2
    end
    object qryViewOSBuscaTOTAL_PECAS: TFMTBCDField
      FieldName = 'TOTAL_PECAS'
      Precision = 15
      Size = 2
    end
    object qryViewOSBuscaTOTAL_OS: TFMTBCDField
      FieldName = 'TOTAL_OS'
      Precision = 15
      Size = 2
    end
    object qryViewOSBuscaDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object qryViewOSBuscaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object qryViewOSBuscaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object qryViewOSBuscaATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Size = 50
    end
    object qryViewOSBuscaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object qryViewOSBuscaTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 30
    end
  end
  object cdsViewOSBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOSBusca'
    Left = 562
    Top = 123
    object cdsViewOSBuscaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsViewOSBuscaEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 100
    end
    object cdsViewOSBuscaPROBLEMARECLAMADO: TStringField
      FieldName = 'PROBLEMARECLAMADO'
      Size = 200
    end
    object cdsViewOSBuscaTOTAL_SERVICOS: TFMTBCDField
      FieldName = 'TOTAL_SERVICOS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewOSBuscaTOTAL_PECAS: TFMTBCDField
      FieldName = 'TOTAL_PECAS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewOSBuscaTOTAL_OS: TFMTBCDField
      FieldName = 'TOTAL_OS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewOSBuscaDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object cdsViewOSBuscaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
    end
    object cdsViewOSBuscaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsViewOSBuscaATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Size = 50
    end
    object cdsViewOSBuscaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsViewOSBuscaTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 30
    end
  end
  object dsViewOS_ClienteOS: TDataSource
    DataSet = cdsViewOS_ClienteOS
    Left = 48
    Top = 384
  end
  object dspViewOS_ClienteOS: TDataSetProvider
    DataSet = qryViewOS_ClienteOS
    Left = 48
    Top = 288
  end
  object qryViewOS_ClienteOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CLI_ID,'
      'CLI_CLIENTE,'
      'CLI_FONE,'
      'CLI_FAX,'
      'CLI_CELULAR'
      'FROM CLIENTES'
      'WHERE CLI_CLIENTE LIKE :NOME'
      'ORDER BY CLI_CLIENTE')
    SQLConnection = DMConnection.SQLConnection
    Left = 48
    Top = 240
    object qryViewOS_ClienteOSCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewOS_ClienteOSCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewOS_ClienteOSCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewOS_ClienteOSCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewOS_ClienteOSCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
  end
  object cdsViewOS_ClienteOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_ClienteOS'
    Left = 48
    Top = 339
    object cdsViewOS_ClienteOSCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewOS_ClienteOSCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewOS_ClienteOSCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewOS_ClienteOSCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewOS_ClienteOSCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
  end
  object dsViewOS_ClienteNome: TDataSource
    DataSet = cdsViewOS_ClienteNome
    Left = 128
    Top = 400
  end
  object dspViewOS_ClienteNome: TDataSetProvider
    DataSet = qryViewOS_ClienteNome
    Left = 128
    Top = 304
  end
  object qryViewOS_ClienteNome: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CLI_ID,'
      'CLI_CLIENTE,'
      'CLI_FONE,'
      'CLI_CELULAR'
      'FROM CLIENTES'
      'WHERE CLI_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 128
    Top = 256
    object qryViewOS_ClienteNomeCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewOS_ClienteNomeCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewOS_ClienteNomeCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewOS_ClienteNomeCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
  end
  object cdsViewOS_ClienteNome: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_ClienteNome'
    Left = 128
    Top = 355
    object cdsViewOS_ClienteNomeCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewOS_ClienteNomeCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewOS_ClienteNomeCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewOS_ClienteNomeCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
  end
  object dsViewOS_Cliente: TDataSource
    DataSet = cdsViewOS_Cliente
    Left = 432
    Top = 168
  end
  object dspViewOS_Cliente: TDataSetProvider
    DataSet = qryViewOS_Cliente
    Left = 432
    Top = 72
  end
  object qryViewOS_Cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CLIENTES'
      'ORDER BY CLIENTES.cli_cliente ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 432
    Top = 24
    object qryViewOS_ClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewOS_ClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewOS_ClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewOS_ClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewOS_ClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewOS_ClienteCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewOS_ClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewOS_ClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewOS_ClienteCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewOS_ClienteCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewOS_ClienteCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewOS_ClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewOS_ClienteCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewOS_ClienteCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewOS_ClienteCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewOS_ClienteCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewOS_ClienteCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object cdsViewOS_Cliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_Cliente'
    Left = 432
    Top = 123
    object cdsViewOS_ClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewOS_ClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewOS_ClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewOS_ClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewOS_ClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewOS_ClienteCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewOS_ClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewOS_ClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewOS_ClienteCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewOS_ClienteCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewOS_ClienteCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewOS_ClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewOS_ClienteCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewOS_ClienteCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewOS_ClienteCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewOS_ClienteCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewOS_ClienteCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object dsDadosOS: TDataSource
    DataSet = cdsDadosOS
    Left = 40
    Top = 152
  end
  object dspDadosOS: TDataSetProvider
    DataSet = qryDadosOS
    Left = 40
    Top = 56
  end
  object qryDadosOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ORDEM_SERVICOS'
      'WHERE OSERV_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 40
    Top = 8
    object qryDadosOSOSERV_ID: TIntegerField
      FieldName = 'OSERV_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOSOSERV_ITENSPED_PED_ID: TIntegerField
      FieldName = 'OSERV_ITENSPED_PED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosOSOSERV_ITENSPED_SEQUE: TIntegerField
      FieldName = 'OSERV_ITENSPED_SEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosOSOSERV_ATENDENTE: TIntegerField
      FieldName = 'OSERV_ATENDENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOSOSERV_CLI_ID: TIntegerField
      FieldName = 'OSERV_CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOSOSERV_OSIT_ID: TIntegerField
      FieldName = 'OSERV_OSIT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOSOSERV_OSATENDTIPO_ID: TIntegerField
      FieldName = 'OSERV_OSATENDTIPO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOSOSERV_USU_TECNICO: TIntegerField
      FieldName = 'OSERV_USU_TECNICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOSOSERV_DATAEHORA_ENT: TSQLTimeStampField
      FieldName = 'OSERV_DATAEHORA_ENT'
    end
    object qryDadosOSOSERV_DATAEHORA_SAIDA: TSQLTimeStampField
      FieldName = 'OSERV_DATAEHORA_SAIDA'
    end
    object qryDadosOSOSERV_OBS: TBlobField
      FieldName = 'OSERV_OBS'
      Size = 1
    end
    object qryDadosOSOSERV_DESCRICAO: TStringField
      FieldName = 'OSERV_DESCRICAO'
      Size = 100
    end
    object qryDadosOSOSERV_TOTAL_OS: TFMTBCDField
      FieldName = 'OSERV_TOTAL_OS'
      Precision = 15
      Size = 2
    end
    object qryDadosOSOSERV_TOTAL_SERVICOS: TFMTBCDField
      FieldName = 'OSERV_TOTAL_SERVICOS'
      Precision = 15
      Size = 2
    end
    object qryDadosOSOSERV_TOTAL_ESTOQUE: TFMTBCDField
      FieldName = 'OSERV_TOTAL_ESTOQUE'
      Precision = 15
      Size = 2
    end
    object qryDadosOSOSERV_PROB_RECLAMADO: TStringField
      FieldName = 'OSERV_PROB_RECLAMADO'
      Size = 200
    end
    object qryDadosOSOSERV_OBSGERAIS: TBlobField
      FieldName = 'OSERV_OBSGERAIS'
      Size = 1
    end
    object qryDadosOSOSERV_OBSSERVICO: TBlobField
      FieldName = 'OSERV_OBSSERVICO'
      Size = 1
    end
  end
  object dsViewOS_Tecnico: TDataSource
    DataSet = cdsViewOS_Tecnico
    Left = 264
    Top = 168
  end
  object dspViewOS_Tecnico: TDataSetProvider
    DataSet = qryViewOS_Tecnico
    Left = 264
    Top = 72
  end
  object qryViewOS_Tecnico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USUARIOS.usu_id,'
      'USUARIOS.usu_login,'
      'USUARIOS.usu_nome'
      ''
      'FROM USUARIOS , USUARIOS_FUNCAO'
      'WHERE USUARIOS_FUNCAO.usuf_id = USUARIOS.usu_funcao'
      'AND USUARIOS.usu_ativo = '#39'T'#39)
    SQLConnection = DMConnection.SQLConnection
    Left = 264
    Top = 24
    object qryViewOS_TecnicoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object qryViewOS_TecnicoUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object qryViewOS_TecnicoUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
  end
  object cdsViewOS_Tecnico: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_Tecnico'
    Left = 264
    Top = 120
    object cdsViewOS_TecnicoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object cdsViewOS_TecnicoUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object cdsViewOS_TecnicoUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
  end
  object cdsDadosOS: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOS'
    Left = 40
    Top = 104
    object cdsDadosOSOSERV_ID: TIntegerField
      FieldName = 'OSERV_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOSOSERV_ITENSPED_PED_ID: TIntegerField
      FieldName = 'OSERV_ITENSPED_PED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosOSOSERV_ITENSPED_SEQUE: TIntegerField
      FieldName = 'OSERV_ITENSPED_SEQUE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosOSOSERV_ATENDENTE: TIntegerField
      FieldName = 'OSERV_ATENDENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOSOSERV_CLI_ID: TIntegerField
      FieldName = 'OSERV_CLI_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOSOSERV_OSIT_ID: TIntegerField
      FieldName = 'OSERV_OSIT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOSOSERV_OSATENDTIPO_ID: TIntegerField
      FieldName = 'OSERV_OSATENDTIPO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOSOSERV_USU_TECNICO: TIntegerField
      FieldName = 'OSERV_USU_TECNICO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOSOSERV_DATAEHORA_ENT: TSQLTimeStampField
      FieldName = 'OSERV_DATAEHORA_ENT'
    end
    object cdsDadosOSOSERV_DATAEHORA_SAIDA: TSQLTimeStampField
      FieldName = 'OSERV_DATAEHORA_SAIDA'
    end
    object cdsDadosOSOSERV_OBS: TBlobField
      FieldName = 'OSERV_OBS'
      Size = 1
    end
    object cdsDadosOSOSERV_DESCRICAO: TStringField
      FieldName = 'OSERV_DESCRICAO'
      Size = 100
    end
    object cdsDadosOSOSERV_TOTAL_OS: TFMTBCDField
      FieldName = 'OSERV_TOTAL_OS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosOSOSERV_TOTAL_SERVICOS: TFMTBCDField
      FieldName = 'OSERV_TOTAL_SERVICOS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosOSOSERV_TOTAL_ESTOQUE: TFMTBCDField
      FieldName = 'OSERV_TOTAL_ESTOQUE'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosOSOSERV_PROB_RECLAMADO: TStringField
      FieldName = 'OSERV_PROB_RECLAMADO'
      Size = 200
    end
    object cdsDadosOSOSERV_OBSGERAIS: TBlobField
      FieldName = 'OSERV_OBSGERAIS'
      Size = 1
    end
    object cdsDadosOSOSERV_OBSSERVICO: TBlobField
      FieldName = 'OSERV_OBSSERVICO'
      Size = 1
    end
  end
  object qryViewOS_ItensPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_ORDEM_SERVICOS_ITENS'
      'WHERE OSERV_ID = :ID'
      'ORDER BY OSERV_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 208
    Top = 240
    object qryViewOS_ItensPedidoOSERV_ID: TIntegerField
      FieldName = 'OSERV_ID'
    end
    object qryViewOS_ItensPedidoITENSPED_ID: TIntegerField
      FieldName = 'ITENSPED_ID'
    end
    object qryViewOS_ItensPedidoSEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object qryViewOS_ItensPedidoITEM: TStringField
      FieldName = 'ITEM'
      Size = 100
    end
    object qryViewOS_ItensPedidoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryViewOS_ItensPedidoDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object qryViewOS_ItensPedidoOSERVITENS_ID: TIntegerField
      FieldName = 'OSERVITENS_ID'
    end
  end
  object dspViewOS_ItensPedido: TDataSetProvider
    DataSet = qryViewOS_ItensPedido
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 288
  end
  object dsViewOS_ItensPedido: TDataSource
    DataSet = cdsViewOS_ItensPedido
    Left = 208
    Top = 384
  end
  object cdsViewOS_ItensPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_ItensPedido'
    Left = 207
    Top = 336
    object cdsViewOS_ItensPedidoOSERV_ID: TIntegerField
      FieldName = 'OSERV_ID'
    end
    object cdsViewOS_ItensPedidoITENSPED_ID: TIntegerField
      FieldName = 'ITENSPED_ID'
    end
    object cdsViewOS_ItensPedidoSEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object cdsViewOS_ItensPedidoITEM: TStringField
      FieldName = 'ITEM'
      Size = 100
    end
    object cdsViewOS_ItensPedidoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object cdsViewOS_ItensPedidoDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object cdsViewOS_ItensPedidoOSERVITENS_ID: TIntegerField
      FieldName = 'OSERVITENS_ID'
    end
  end
  object qryViewOS_BuscaPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_ORDEM_SERVICOS_PEDIDOS'
      'WHERE CLI_ID = :ID'
      'AND itens_produto LIKE :ITEM'
      'ORDER BY PED_ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 296
    Top = 256
    object qryViewOS_BuscaPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewOS_BuscaPedidoITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
    end
    object qryViewOS_BuscaPedidoITENS_PRODUTO: TStringField
      FieldName = 'ITENS_PRODUTO'
      Size = 100
    end
    object qryViewOS_BuscaPedidoPED_DATA: TDateField
      FieldName = 'PED_DATA'
    end
    object qryViewOS_BuscaPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryViewOS_BuscaPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryViewOS_BuscaPedidoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewOS_BuscaPedidoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryViewOS_BuscaPedidoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object qryViewOS_BuscaPedidoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object qryViewOS_BuscaPedidoSEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object qryViewOS_BuscaPedidoITENS_VALOR: TFMTBCDField
      FieldName = 'ITENS_VALOR'
      Precision = 15
      Size = 2
    end
  end
  object dspViewOS_BuscaPedido: TDataSetProvider
    DataSet = qryViewOS_BuscaPedido
    UpdateMode = upWhereKeyOnly
    Left = 296
    Top = 304
  end
  object dsViewOS_BuscaPedido: TDataSource
    DataSet = cdsViewOS_BuscaPedido
    Left = 296
    Top = 400
  end
  object cdsViewOS_BuscaPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_BuscaPedido'
    Left = 295
    Top = 352
    object cdsViewOS_BuscaPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewOS_BuscaPedidoITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
    end
    object cdsViewOS_BuscaPedidoITENS_PRODUTO: TStringField
      FieldName = 'ITENS_PRODUTO'
      Size = 100
    end
    object cdsViewOS_BuscaPedidoPED_DATA: TDateField
      FieldName = 'PED_DATA'
    end
    object cdsViewOS_BuscaPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsViewOS_BuscaPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsViewOS_BuscaPedidoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewOS_BuscaPedidoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object cdsViewOS_BuscaPedidoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object cdsViewOS_BuscaPedidoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object cdsViewOS_BuscaPedidoSEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object cdsViewOS_BuscaPedidoITENS_VALOR: TFMTBCDField
      FieldName = 'ITENS_VALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object qryDadosOS_ItensPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ORDEM_SERVICO_ITENS'
      'WHERE ORDEM_SERVICO_ITENS.ositens_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 384
    Top = 232
    object qryDadosOS_ItensPedidoOSITENS_ID: TIntegerField
      FieldName = 'OSITENS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOS_ItensPedidoOSITENS_OSERV_ID: TIntegerField
      FieldName = 'OSITENS_OSERV_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOS_ItensPedidoOSITENS_ITENSPED_PED_ID: TIntegerField
      FieldName = 'OSITENS_ITENSPED_PED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOS_ItensPedidoOSITENS_SEQUE: TIntegerField
      FieldName = 'OSITENS_SEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosOS_ItensPedidoOSITENS_PRODUTO: TStringField
      FieldName = 'OSITENS_PRODUTO'
      Size = 100
    end
    object qryDadosOS_ItensPedidoOSITENS_VALOR: TFMTBCDField
      FieldName = 'OSITENS_VALOR'
      Precision = 15
      Size = 2
    end
    object qryDadosOS_ItensPedidoOSITENS_DATA_PEDIDO: TDateField
      FieldName = 'OSITENS_DATA_PEDIDO'
    end
  end
  object dspDadosOS_ItensPedido: TDataSetProvider
    DataSet = qryDadosOS_ItensPedido
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 280
  end
  object dsDadosOS_ItensPedido: TDataSource
    DataSet = cdsDadosOS_ItensPedido
    Left = 384
    Top = 376
  end
  object cdsDadosOS_ItensPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosOS_ItensPedido'
    Left = 383
    Top = 328
    object cdsDadosOS_ItensPedidoOSITENS_ID: TIntegerField
      FieldName = 'OSITENS_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOS_ItensPedidoOSITENS_OSERV_ID: TIntegerField
      FieldName = 'OSITENS_OSERV_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOS_ItensPedidoOSITENS_ITENSPED_PED_ID: TIntegerField
      FieldName = 'OSITENS_ITENSPED_PED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOS_ItensPedidoOSITENS_SEQUE: TIntegerField
      FieldName = 'OSITENS_SEQUE'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosOS_ItensPedidoOSITENS_PRODUTO: TStringField
      FieldName = 'OSITENS_PRODUTO'
      Size = 100
    end
    object cdsDadosOS_ItensPedidoOSITENS_VALOR: TFMTBCDField
      FieldName = 'OSITENS_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsDadosOS_ItensPedidoOSITENS_DATA_PEDIDO: TDateField
      FieldName = 'OSITENS_DATA_PEDIDO'
    end
  end
  object qryViewOS_VisualizarPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_ORDEM_SERVICOS_PEDIDOS'
      'WHERE PED_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 480
    Top = 256
    object qryViewOS_VisualizarPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewOS_VisualizarPedidoITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
    end
    object qryViewOS_VisualizarPedidoITENS_PRODUTO: TStringField
      FieldName = 'ITENS_PRODUTO'
      Size = 100
    end
    object qryViewOS_VisualizarPedidoPED_DATA: TDateField
      FieldName = 'PED_DATA'
    end
    object qryViewOS_VisualizarPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryViewOS_VisualizarPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryViewOS_VisualizarPedidoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewOS_VisualizarPedidoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryViewOS_VisualizarPedidoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object qryViewOS_VisualizarPedidoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object qryViewOS_VisualizarPedidoSEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object qryViewOS_VisualizarPedidoITENS_VALOR: TFMTBCDField
      FieldName = 'ITENS_VALOR'
      Precision = 15
      Size = 2
    end
  end
  object dspViewOS_VisualizarPedido: TDataSetProvider
    DataSet = qryViewOS_VisualizarPedido
    UpdateMode = upWhereKeyOnly
    Left = 480
    Top = 304
  end
  object dsViewOS_VisualizarPedido: TDataSource
    DataSet = cdsViewOS_VisualizarPedido
    Left = 480
    Top = 400
  end
  object cdsViewOS_VisualizarPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewOS_VisualizarPedido'
    Left = 479
    Top = 352
    object cdsViewOS_VisualizarPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewOS_VisualizarPedidoITENS_ID: TIntegerField
      FieldName = 'ITENS_ID'
    end
    object cdsViewOS_VisualizarPedidoITENS_PRODUTO: TStringField
      FieldName = 'ITENS_PRODUTO'
      Size = 100
    end
    object cdsViewOS_VisualizarPedidoPED_DATA: TDateField
      FieldName = 'PED_DATA'
    end
    object cdsViewOS_VisualizarPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsViewOS_VisualizarPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsViewOS_VisualizarPedidoMANUT_EFETUADA: TStringField
      FieldName = 'MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewOS_VisualizarPedidoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object cdsViewOS_VisualizarPedidoCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 100
    end
    object cdsViewOS_VisualizarPedidoUSU_ID: TIntegerField
      FieldName = 'USU_ID'
    end
    object cdsViewOS_VisualizarPedidoSEQUE: TIntegerField
      FieldName = 'SEQUE'
    end
    object cdsViewOS_VisualizarPedidoITENS_VALOR: TFMTBCDField
      FieldName = 'ITENS_VALOR'
      Precision = 15
      Size = 2
    end
  end
end
