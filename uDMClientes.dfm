object DMCadClientes: TDMCadClientes
  OldCreateOrder = False
  Left = 300
  Top = 167
  Height = 324
  Width = 730
  object dsDadosCadClientes: TDataSource
    DataSet = cdsDadosCadClientes
    Left = 48
    Top = 200
  end
  object cdsDadosCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosCadClientes'
    Left = 48
    Top = 152
    object cdsDadosCadClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosCadClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsDadosCadClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsDadosCadClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsDadosCadClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsDadosCadClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsDadosCadClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsDadosCadClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsDadosCadClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsDadosCadClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsDadosCadClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsDadosCadClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsDadosCadClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsDadosCadClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsDadosCadClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsDadosCadClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosCadClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object qryDadosCadClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM CLIENTES '
      'WHERE CLI_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 48
    Top = 40
    object qryDadosCadClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosCadClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryDadosCadClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryDadosCadClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryDadosCadClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryDadosCadClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryDadosCadClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryDadosCadClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryDadosCadClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryDadosCadClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryDadosCadClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryDadosCadClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryDadosCadClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryDadosCadClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryDadosCadClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryDadosCadClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosCadClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object dspDadosCadClientes: TDataSetProvider
    DataSet = qryDadosCadClientes
    Left = 48
    Top = 96
  end
  object dsViewBuscaClientes: TDataSource
    DataSet = cdsViewBuscaClientes
    Left = 192
    Top = 192
  end
  object cdsViewBuscaClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewBuscaClientes'
    BeforeScroll = cdsViewBuscaClientesBeforeScroll
    AfterScroll = cdsViewBuscaClientesAfterScroll
    Left = 192
    Top = 144
    object cdsViewBuscaClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewBuscaClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewBuscaClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewBuscaClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewBuscaClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewBuscaClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewBuscaClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewBuscaClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewBuscaClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewBuscaClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewBuscaClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewBuscaClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewBuscaClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewBuscaClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewBuscaClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewBuscaClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewBuscaClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object qryViewBuscaClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLI_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CLIENTES'
      'WHERE CLI_CLIENTE LIKE :CLI_CLIENTE'
      'AND CLIENTES.cli_ativo = '#39'T'#39
      'ORDER BY CLI_CLIENTE ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 192
    Top = 40
    object qryViewBuscaClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewBuscaClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewBuscaClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewBuscaClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewBuscaClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewBuscaClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewBuscaClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewBuscaClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewBuscaClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewBuscaClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewBuscaClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewBuscaClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewBuscaClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewBuscaClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewBuscaClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewBuscaClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewBuscaClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object dspViewBuscaClientes: TDataSetProvider
    DataSet = qryViewBuscaClientes
    Left = 192
    Top = 88
  end
  object dsDadosCadClientesObras: TDataSource
    DataSet = cdsDadosCadClientesObras
    Left = 336
    Top = 176
  end
  object cdsDadosCadClientesObras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosCadClientesObras'
    Left = 336
    Top = 128
    object cdsDadosCadClientesObrasOBR_ID: TIntegerField
      FieldName = 'OBR_ID'
      Required = True
    end
    object cdsDadosCadClientesObrasOBR_CLI_ID: TIntegerField
      FieldName = 'OBR_CLI_ID'
      Required = True
    end
    object cdsDadosCadClientesObrasOBR_CLIENTE: TStringField
      FieldName = 'OBR_CLIENTE'
      Size = 100
    end
    object cdsDadosCadClientesObrasOBR_ENDERECO: TStringField
      FieldName = 'OBR_ENDERECO'
      Size = 100
    end
    object cdsDadosCadClientesObrasOBR_BAIRRO: TStringField
      FieldName = 'OBR_BAIRRO'
      Size = 100
    end
    object cdsDadosCadClientesObrasOBR_CEP: TStringField
      FieldName = 'OBR_CEP'
      Size = 30
    end
    object cdsDadosCadClientesObrasOBR_MUNICIPIO: TStringField
      FieldName = 'OBR_MUNICIPIO'
      Size = 100
    end
    object cdsDadosCadClientesObrasOBR_FONE: TStringField
      FieldName = 'OBR_FONE'
      Size = 30
    end
    object cdsDadosCadClientesObrasOBR_FAX: TStringField
      FieldName = 'OBR_FAX'
      Size = 30
    end
    object cdsDadosCadClientesObrasOBR_CNPJ: TStringField
      FieldName = 'OBR_CNPJ'
      Size = 30
    end
    object cdsDadosCadClientesObrasOBR_INSC_EST: TStringField
      FieldName = 'OBR_INSC_EST'
      Size = 30
    end
    object cdsDadosCadClientesObrasOBR_ATIVIDADE: TStringField
      FieldName = 'OBR_ATIVIDADE'
      Size = 100
    end
    object cdsDadosCadClientesObrasOBR_EMAIL: TStringField
      FieldName = 'OBR_EMAIL'
      Size = 100
    end
    object cdsDadosCadClientesObrasOBR_CONTATO: TStringField
      FieldName = 'OBR_CONTATO'
      Size = 100
    end
    object cdsDadosCadClientesObrasOBR_CELULAR: TStringField
      FieldName = 'OBR_CELULAR'
      Size = 30
    end
    object cdsDadosCadClientesObrasOBR_INFO_ADICIONAL: TBlobField
      FieldName = 'OBR_INFO_ADICIONAL'
      Size = 1
    end
    object cdsDadosCadClientesObrasOBR_ATIVO: TStringField
      FieldName = 'OBR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosCadClientesObrasOBR_COMPLEMENTO: TStringField
      FieldName = 'OBR_COMPLEMENTO'
      Size = 100
    end
  end
  object qryDadosCadClientesObras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM OBRAS'
      'WHERE OBR_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 336
    Top = 32
    object qryDadosCadClientesObrasOBR_ID: TIntegerField
      FieldName = 'OBR_ID'
      Required = True
    end
    object qryDadosCadClientesObrasOBR_CLI_ID: TIntegerField
      FieldName = 'OBR_CLI_ID'
      Required = True
    end
    object qryDadosCadClientesObrasOBR_CLIENTE: TStringField
      FieldName = 'OBR_CLIENTE'
      Size = 100
    end
    object qryDadosCadClientesObrasOBR_ENDERECO: TStringField
      FieldName = 'OBR_ENDERECO'
      Size = 100
    end
    object qryDadosCadClientesObrasOBR_BAIRRO: TStringField
      FieldName = 'OBR_BAIRRO'
      Size = 100
    end
    object qryDadosCadClientesObrasOBR_CEP: TStringField
      FieldName = 'OBR_CEP'
      Size = 30
    end
    object qryDadosCadClientesObrasOBR_MUNICIPIO: TStringField
      FieldName = 'OBR_MUNICIPIO'
      Size = 100
    end
    object qryDadosCadClientesObrasOBR_FONE: TStringField
      FieldName = 'OBR_FONE'
      Size = 30
    end
    object qryDadosCadClientesObrasOBR_FAX: TStringField
      FieldName = 'OBR_FAX'
      Size = 30
    end
    object qryDadosCadClientesObrasOBR_CNPJ: TStringField
      FieldName = 'OBR_CNPJ'
      Size = 30
    end
    object qryDadosCadClientesObrasOBR_INSC_EST: TStringField
      FieldName = 'OBR_INSC_EST'
      Size = 30
    end
    object qryDadosCadClientesObrasOBR_ATIVIDADE: TStringField
      FieldName = 'OBR_ATIVIDADE'
      Size = 100
    end
    object qryDadosCadClientesObrasOBR_EMAIL: TStringField
      FieldName = 'OBR_EMAIL'
      Size = 100
    end
    object qryDadosCadClientesObrasOBR_CONTATO: TStringField
      FieldName = 'OBR_CONTATO'
      Size = 100
    end
    object qryDadosCadClientesObrasOBR_CELULAR: TStringField
      FieldName = 'OBR_CELULAR'
      Size = 30
    end
    object qryDadosCadClientesObrasOBR_INFO_ADICIONAL: TBlobField
      FieldName = 'OBR_INFO_ADICIONAL'
      Size = 1
    end
    object qryDadosCadClientesObrasOBR_ATIVO: TStringField
      FieldName = 'OBR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosCadClientesObrasOBR_COMPLEMENTO: TStringField
      FieldName = 'OBR_COMPLEMENTO'
      Size = 100
    end
  end
  object dspDadosCadClientesObras: TDataSetProvider
    DataSet = qryDadosCadClientesObras
    Left = 336
    Top = 80
  end
  object dsViewCadClientes: TDataSource
    DataSet = cdsViewCadClientes
    Left = 120
    Top = 208
  end
  object cdsViewCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewCadClientes'
    Left = 120
    Top = 160
    object cdsViewCadClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewCadClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewCadClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewCadClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewCadClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewCadClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewCadClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewCadClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewCadClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewCadClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewCadClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewCadClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewCadClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewCadClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewCadClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewCadClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewCadClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object qryViewCadClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      'WHERE CLI_CLIENTE LIKE  :NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 120
    Top = 56
    object qryViewCadClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qryViewCadClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewCadClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewCadClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewCadClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewCadClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewCadClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewCadClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewCadClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewCadClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewCadClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewCadClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewCadClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewCadClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewCadClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewCadClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewCadClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object dspViewCadClientes: TDataSetProvider
    DataSet = qryViewCadClientes
    Left = 120
    Top = 104
  end
  object qryViewCadClientesObras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM OBRAS'
      'WHERE OBR_CLIENTE LIKE  :NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 424
    Top = 48
    object qryViewCadClientesObrasOBR_ID: TIntegerField
      FieldName = 'OBR_ID'
      Required = True
    end
    object qryViewCadClientesObrasOBR_CLI_ID: TIntegerField
      FieldName = 'OBR_CLI_ID'
      Required = True
    end
    object qryViewCadClientesObrasOBR_CLIENTE: TStringField
      FieldName = 'OBR_CLIENTE'
      Size = 100
    end
    object qryViewCadClientesObrasOBR_ENDERECO: TStringField
      FieldName = 'OBR_ENDERECO'
      Size = 100
    end
    object qryViewCadClientesObrasOBR_BAIRRO: TStringField
      FieldName = 'OBR_BAIRRO'
      Size = 100
    end
    object qryViewCadClientesObrasOBR_CEP: TStringField
      FieldName = 'OBR_CEP'
      Size = 30
    end
    object qryViewCadClientesObrasOBR_MUNICIPIO: TStringField
      FieldName = 'OBR_MUNICIPIO'
      Size = 100
    end
    object qryViewCadClientesObrasOBR_FONE: TStringField
      FieldName = 'OBR_FONE'
      Size = 30
    end
    object qryViewCadClientesObrasOBR_FAX: TStringField
      FieldName = 'OBR_FAX'
      Size = 30
    end
    object qryViewCadClientesObrasOBR_CNPJ: TStringField
      FieldName = 'OBR_CNPJ'
      Size = 30
    end
    object qryViewCadClientesObrasOBR_INSC_EST: TStringField
      FieldName = 'OBR_INSC_EST'
      Size = 30
    end
    object qryViewCadClientesObrasOBR_ATIVIDADE: TStringField
      FieldName = 'OBR_ATIVIDADE'
      Size = 100
    end
    object qryViewCadClientesObrasOBR_EMAIL: TStringField
      FieldName = 'OBR_EMAIL'
      Size = 100
    end
    object qryViewCadClientesObrasOBR_CONTATO: TStringField
      FieldName = 'OBR_CONTATO'
      Size = 100
    end
    object qryViewCadClientesObrasOBR_CELULAR: TStringField
      FieldName = 'OBR_CELULAR'
      Size = 30
    end
    object qryViewCadClientesObrasOBR_INFO_ADICIONAL: TBlobField
      FieldName = 'OBR_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewCadClientesObrasOBR_ATIVO: TStringField
      FieldName = 'OBR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewCadClientesObrasOBR_COMPLEMENTO: TStringField
      FieldName = 'OBR_COMPLEMENTO'
      Size = 100
    end
  end
  object dspViewCadClientesObras: TDataSetProvider
    DataSet = qryViewCadClientesObras
    Left = 424
    Top = 96
  end
  object cdsViewCadClientesObras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewCadClientesObras'
    Left = 424
    Top = 152
    object cdsViewCadClientesObrasOBR_ID: TIntegerField
      FieldName = 'OBR_ID'
      Required = True
    end
    object cdsViewCadClientesObrasOBR_CLI_ID: TIntegerField
      FieldName = 'OBR_CLI_ID'
      Required = True
    end
    object cdsViewCadClientesObrasOBR_CLIENTE: TStringField
      FieldName = 'OBR_CLIENTE'
      Size = 100
    end
    object cdsViewCadClientesObrasOBR_ENDERECO: TStringField
      FieldName = 'OBR_ENDERECO'
      Size = 100
    end
    object cdsViewCadClientesObrasOBR_BAIRRO: TStringField
      FieldName = 'OBR_BAIRRO'
      Size = 100
    end
    object cdsViewCadClientesObrasOBR_CEP: TStringField
      FieldName = 'OBR_CEP'
      Size = 30
    end
    object cdsViewCadClientesObrasOBR_MUNICIPIO: TStringField
      FieldName = 'OBR_MUNICIPIO'
      Size = 100
    end
    object cdsViewCadClientesObrasOBR_FONE: TStringField
      FieldName = 'OBR_FONE'
      Size = 30
    end
    object cdsViewCadClientesObrasOBR_FAX: TStringField
      FieldName = 'OBR_FAX'
      Size = 30
    end
    object cdsViewCadClientesObrasOBR_CNPJ: TStringField
      FieldName = 'OBR_CNPJ'
      Size = 30
    end
    object cdsViewCadClientesObrasOBR_INSC_EST: TStringField
      FieldName = 'OBR_INSC_EST'
      Size = 30
    end
    object cdsViewCadClientesObrasOBR_ATIVIDADE: TStringField
      FieldName = 'OBR_ATIVIDADE'
      Size = 100
    end
    object cdsViewCadClientesObrasOBR_EMAIL: TStringField
      FieldName = 'OBR_EMAIL'
      Size = 100
    end
    object cdsViewCadClientesObrasOBR_CONTATO: TStringField
      FieldName = 'OBR_CONTATO'
      Size = 100
    end
    object cdsViewCadClientesObrasOBR_CELULAR: TStringField
      FieldName = 'OBR_CELULAR'
      Size = 30
    end
    object cdsViewCadClientesObrasOBR_INFO_ADICIONAL: TBlobField
      FieldName = 'OBR_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewCadClientesObrasOBR_ATIVO: TStringField
      FieldName = 'OBR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewCadClientesObrasOBR_COMPLEMENTO: TStringField
      FieldName = 'OBR_COMPLEMENTO'
      Size = 100
    end
  end
  object dsViewCadClientesObras: TDataSource
    DataSet = cdsViewCadClientesObras
    Left = 424
    Top = 200
  end
  object dsViewBuscaClientesObras: TDataSource
    DataSet = cdsViewBuscaClientesObras
    Left = 504
    Top = 184
  end
  object cdsViewBuscaClientesObras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewBuscaClientesObras'
    BeforeScroll = cdsViewBuscaClientesBeforeScroll
    AfterScroll = cdsViewBuscaClientesAfterScroll
    Left = 504
    Top = 136
    object cdsViewBuscaClientesObrasOBR_ID: TIntegerField
      FieldName = 'OBR_ID'
      Required = True
    end
    object cdsViewBuscaClientesObrasOBR_CLI_ID: TIntegerField
      FieldName = 'OBR_CLI_ID'
      Required = True
    end
    object cdsViewBuscaClientesObrasOBR_CLIENTE: TStringField
      FieldName = 'OBR_CLIENTE'
      Size = 100
    end
    object cdsViewBuscaClientesObrasOBR_ENDERECO: TStringField
      FieldName = 'OBR_ENDERECO'
      Size = 100
    end
    object cdsViewBuscaClientesObrasOBR_BAIRRO: TStringField
      FieldName = 'OBR_BAIRRO'
      Size = 100
    end
    object cdsViewBuscaClientesObrasOBR_CEP: TStringField
      FieldName = 'OBR_CEP'
      Size = 30
    end
    object cdsViewBuscaClientesObrasOBR_MUNICIPIO: TStringField
      FieldName = 'OBR_MUNICIPIO'
      Size = 100
    end
    object cdsViewBuscaClientesObrasOBR_FONE: TStringField
      FieldName = 'OBR_FONE'
      Size = 30
    end
    object cdsViewBuscaClientesObrasOBR_FAX: TStringField
      FieldName = 'OBR_FAX'
      Size = 30
    end
    object cdsViewBuscaClientesObrasOBR_CNPJ: TStringField
      FieldName = 'OBR_CNPJ'
      Size = 30
    end
    object cdsViewBuscaClientesObrasOBR_INSC_EST: TStringField
      FieldName = 'OBR_INSC_EST'
      Size = 30
    end
    object cdsViewBuscaClientesObrasOBR_ATIVIDADE: TStringField
      FieldName = 'OBR_ATIVIDADE'
      Size = 100
    end
    object cdsViewBuscaClientesObrasOBR_EMAIL: TStringField
      FieldName = 'OBR_EMAIL'
      Size = 100
    end
    object cdsViewBuscaClientesObrasOBR_CONTATO: TStringField
      FieldName = 'OBR_CONTATO'
      Size = 100
    end
    object cdsViewBuscaClientesObrasOBR_CELULAR: TStringField
      FieldName = 'OBR_CELULAR'
      Size = 30
    end
    object cdsViewBuscaClientesObrasOBR_INFO_ADICIONAL: TBlobField
      FieldName = 'OBR_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewBuscaClientesObrasOBR_ATIVO: TStringField
      FieldName = 'OBR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewBuscaClientesObrasOBR_COMPLEMENTO: TStringField
      FieldName = 'OBR_COMPLEMENTO'
      Size = 100
    end
  end
  object qryViewBuscaClientesObras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLI_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM OBRAS'
      'WHERE OBR_CLIENTE LIKE :CLI_CLIENTE'
      'AND OBR_ATIVO = '#39'T'#39
      'ORDER BY OBR_CLIENTE ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 504
    Top = 32
    object qryViewBuscaClientesObrasOBR_ID: TIntegerField
      FieldName = 'OBR_ID'
      Required = True
    end
    object qryViewBuscaClientesObrasOBR_CLI_ID: TIntegerField
      FieldName = 'OBR_CLI_ID'
      Required = True
    end
    object qryViewBuscaClientesObrasOBR_CLIENTE: TStringField
      FieldName = 'OBR_CLIENTE'
      Size = 100
    end
    object qryViewBuscaClientesObrasOBR_ENDERECO: TStringField
      FieldName = 'OBR_ENDERECO'
      Size = 100
    end
    object qryViewBuscaClientesObrasOBR_BAIRRO: TStringField
      FieldName = 'OBR_BAIRRO'
      Size = 100
    end
    object qryViewBuscaClientesObrasOBR_CEP: TStringField
      FieldName = 'OBR_CEP'
      Size = 30
    end
    object qryViewBuscaClientesObrasOBR_MUNICIPIO: TStringField
      FieldName = 'OBR_MUNICIPIO'
      Size = 100
    end
    object qryViewBuscaClientesObrasOBR_FONE: TStringField
      FieldName = 'OBR_FONE'
      Size = 30
    end
    object qryViewBuscaClientesObrasOBR_FAX: TStringField
      FieldName = 'OBR_FAX'
      Size = 30
    end
    object qryViewBuscaClientesObrasOBR_CNPJ: TStringField
      FieldName = 'OBR_CNPJ'
      Size = 30
    end
    object qryViewBuscaClientesObrasOBR_INSC_EST: TStringField
      FieldName = 'OBR_INSC_EST'
      Size = 30
    end
    object qryViewBuscaClientesObrasOBR_ATIVIDADE: TStringField
      FieldName = 'OBR_ATIVIDADE'
      Size = 100
    end
    object qryViewBuscaClientesObrasOBR_EMAIL: TStringField
      FieldName = 'OBR_EMAIL'
      Size = 100
    end
    object qryViewBuscaClientesObrasOBR_CONTATO: TStringField
      FieldName = 'OBR_CONTATO'
      Size = 100
    end
    object qryViewBuscaClientesObrasOBR_CELULAR: TStringField
      FieldName = 'OBR_CELULAR'
      Size = 30
    end
    object qryViewBuscaClientesObrasOBR_INFO_ADICIONAL: TBlobField
      FieldName = 'OBR_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewBuscaClientesObrasOBR_ATIVO: TStringField
      FieldName = 'OBR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewBuscaClientesObrasOBR_COMPLEMENTO: TStringField
      FieldName = 'OBR_COMPLEMENTO'
      Size = 100
    end
  end
  object dspViewBuscaClientesObras: TDataSetProvider
    DataSet = qryViewBuscaClientesObras
    Left = 504
    Top = 80
  end
  object dsViewLookup_Clientes: TDataSource
    DataSet = cdsViewLookup_Clientes
    Left = 600
    Top = 200
  end
  object cdsViewLookup_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewLookup_Clientes'
    BeforeScroll = cdsViewBuscaClientesBeforeScroll
    AfterScroll = cdsViewBuscaClientesAfterScroll
    Left = 600
    Top = 152
    object cdsViewLookup_ClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewLookup_ClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewLookup_ClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewLookup_ClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewLookup_ClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewLookup_ClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewLookup_ClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewLookup_ClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewLookup_ClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewLookup_ClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewLookup_ClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewLookup_ClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewLookup_ClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewLookup_ClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewLookup_ClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewLookup_ClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewLookup_ClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object qryViewLookup_Clientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      'WHERE CLIENTES.CLI_ATIVO='#39'T'#39
      'ORDER BY CLIENTES.CLI_CLIENTE ASC'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 600
    Top = 48
    object qryViewLookup_ClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewLookup_ClientesCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewLookup_ClientesCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewLookup_ClientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewLookup_ClientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewLookup_ClientesCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewLookup_ClientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewLookup_ClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewLookup_ClientesCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewLookup_ClientesCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewLookup_ClientesCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewLookup_ClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewLookup_ClientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewLookup_ClientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewLookup_ClientesCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewLookup_ClientesCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewLookup_ClientesCLI_COMPLEMENTO: TStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 100
    end
  end
  object dspViewLookup_Clientes: TDataSetProvider
    DataSet = qryViewLookup_Clientes
    Left = 600
    Top = 96
  end
end
