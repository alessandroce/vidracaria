object DMCadClientes: TDMCadClientes
  OldCreateOrder = False
  Left = 214
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
end
