object DMPedido: TDMPedido
  OldCreateOrder = False
  Left = 205
  Top = 169
  Height = 489
  Width = 788
  object qryDadosPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PEDIDOS'
      'WHERE PED_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 32
    Top = 24
    object qryDadosPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosPedidoPED_CLI_ID: TIntegerField
      FieldName = 'PED_CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosPedidoPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosPedidoPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object qryDadosPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryDadosPedidoPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object qryDadosPedidoPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object qryDadosPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryDadosPedidoPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryDadosPedidoPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
  end
  object dspDadosPedido: TDataSetProvider
    DataSet = qryDadosPedido
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 72
  end
  object dsDadosPedido: TDataSource
    DataSet = cdsDadosPedido
    Left = 32
    Top = 168
  end
  object cdsDadosPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosPedido'
    Left = 31
    Top = 120
    object cdsDadosPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosPedidoPED_CLI_ID: TIntegerField
      FieldName = 'PED_CLI_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosPedidoPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosPedidoPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object cdsDadosPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsDadosPedidoPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object cdsDadosPedidoPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object cdsDadosPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsDadosPedidoPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsDadosPedidoPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object qryViewPedido_Cliente: TSQLQuery
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
      'ORDER BY CLIENTES.cli_cliente ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 48
    Top = 240
    object qryViewPedido_ClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewPedido_ClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewPedido_ClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewPedido_ClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewPedido_ClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewPedido_ClienteCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewPedido_ClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewPedido_ClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewPedido_ClienteCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewPedido_ClienteCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewPedido_ClienteCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewPedido_ClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewPedido_ClienteCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewPedido_ClienteCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewPedido_ClienteCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewPedido_ClienteCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewPedido_Cliente: TDataSetProvider
    DataSet = qryViewPedido_Cliente
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 288
  end
  object dsViewPedido_Cliente: TDataSource
    DataSet = cdsViewPedido_Cliente
    Left = 48
    Top = 384
  end
  object cdsViewPedido_Cliente: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedido_Cliente'
    Left = 47
    Top = 336
    object cdsViewPedido_ClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewPedido_ClienteCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewPedido_ClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewPedido_ClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewPedido_ClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewPedido_ClienteCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewPedido_ClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewPedido_ClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewPedido_ClienteCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewPedido_ClienteCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewPedido_ClienteCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewPedido_ClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewPedido_ClienteCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewPedido_ClienteCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewPedido_ClienteCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewPedido_ClienteCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object qryViewPedido_Usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM USUARIOS')
    SQLConnection = DMConnection.SQLConnection
    Left = 208
    Top = 240
    object qryViewPedido_UsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qryViewPedido_UsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object qryViewPedido_UsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object qryViewPedido_UsuarioUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object qryViewPedido_UsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object qryViewPedido_UsuarioUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object qryViewPedido_UsuarioUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object qryViewPedido_UsuarioUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object qryViewPedido_UsuarioUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryViewPedido_UsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object qryViewPedido_UsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object qryViewPedido_UsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object qryViewPedido_UsuarioUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object qryViewPedido_UsuarioUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object qryViewPedido_UsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryViewPedido_UsuarioUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object dspViewPedido_Usuario: TDataSetProvider
    DataSet = qryViewPedido_Usuario
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 288
  end
  object dsViewPedido_Usuario: TDataSource
    DataSet = cdsViewPedido_Usuario
    Left = 208
    Top = 384
  end
  object cdsViewPedido_Usuario: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedido_Usuario'
    Left = 207
    Top = 336
    object cdsViewPedido_UsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsViewPedido_UsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object cdsViewPedido_UsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object cdsViewPedido_UsuarioUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object cdsViewPedido_UsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object cdsViewPedido_UsuarioUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object cdsViewPedido_UsuarioUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object cdsViewPedido_UsuarioUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object cdsViewPedido_UsuarioUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsViewPedido_UsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object cdsViewPedido_UsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object cdsViewPedido_UsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object cdsViewPedido_UsuarioUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object cdsViewPedido_UsuarioUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object cdsViewPedido_UsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsViewPedido_UsuarioUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object dsViewClienteCodigo: TDataSource
    DataSet = cdsViewClienteCodigo
    Left = 128
    Top = 400
  end
  object dspViewClienteCodigo: TDataSetProvider
    DataSet = qryViewClienteCodigo
    Left = 128
    Top = 304
  end
  object qryViewClienteCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CLIENTES'
      'WHERE CLI_CLIENTE = :CLIENTE'
      '')
    SQLConnection = DMConnection.SQLConnection
    Left = 128
    Top = 256
    object qryViewClienteCodigoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewClienteCodigoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object qryViewClienteCodigoCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object qryViewClienteCodigoCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object qryViewClienteCodigoCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object qryViewClienteCodigoCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object qryViewClienteCodigoCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object qryViewClienteCodigoCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object qryViewClienteCodigoCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object qryViewClienteCodigoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object qryViewClienteCodigoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object qryViewClienteCodigoCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object qryViewClienteCodigoCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsViewClienteCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewClienteCodigo'
    Left = 128
    Top = 355
    object cdsViewClienteCodigoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewClienteCodigoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_MUNICIPIO: TStringField
      FieldName = 'CLI_MUNICIPIO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_INSC_EST: TStringField
      FieldName = 'CLI_INSC_EST'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 100
    end
    object cdsViewClienteCodigoCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 30
    end
    object cdsViewClienteCodigoCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Size = 1
    end
    object cdsViewClienteCodigoCLI_ATIVO: TStringField
      FieldName = 'CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object qryViewBuscaPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PEDIDOS.*,'
      '       CLIENTES.cli_id,'
      '       CLIENTES.cli_cliente'
      'FROM PEDIDOS, CLIENTES'
      'WHERE CLIENTES.cli_id = PEDIDOS.ped_cli_id'
      'AND PEDIDOS.ped_id =:ID'
      'AND CLIENTES.cli_cliente LIKE :CLIENTE')
    SQLConnection = DMConnection.SQLConnection
    Left = 296
    Top = 256
    object qryViewBuscaPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
      Required = True
    end
    object qryViewBuscaPedidoPED_CLI_ID: TIntegerField
      FieldName = 'PED_CLI_ID'
      Required = True
    end
    object qryViewBuscaPedidoPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
      Required = True
    end
    object qryViewBuscaPedidoPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object qryViewBuscaPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryViewBuscaPedidoPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object qryViewBuscaPedidoPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object qryViewBuscaPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryViewBuscaPedidoPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewBuscaPedidoPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewBuscaPedidoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryViewBuscaPedidoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object dspViewBuscaPedido: TDataSetProvider
    DataSet = qryViewBuscaPedido
    UpdateMode = upWhereKeyOnly
    Left = 296
    Top = 304
  end
  object dsViewBuscaPedido: TDataSource
    DataSet = cdsViewBuscaPedido
    Left = 296
    Top = 400
  end
  object cdsViewBuscaPedido: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewBuscaPedido'
    Left = 295
    Top = 352
    object cdsViewBuscaPedidoPED_ID: TIntegerField
      FieldName = 'PED_ID'
      Required = True
    end
    object cdsViewBuscaPedidoPED_CLI_ID: TIntegerField
      FieldName = 'PED_CLI_ID'
      Required = True
    end
    object cdsViewBuscaPedidoPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
      Required = True
    end
    object cdsViewBuscaPedidoPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object cdsViewBuscaPedidoPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsViewBuscaPedidoPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object cdsViewBuscaPedidoPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object cdsViewBuscaPedidoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsViewBuscaPedidoPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewBuscaPedidoPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewBuscaPedidoCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object cdsViewBuscaPedidoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object qryViewPedidoItens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_ITENS'
      'WHERE ITENSPED_PED_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 184
    Top = 24
    object qryViewPedidoItensITENSPED_PED_ID: TIntegerField
      FieldName = 'ITENSPED_PED_ID'
      Required = True
    end
    object qryViewPedidoItensITENSPED_PRODUTO: TStringField
      FieldName = 'ITENSPED_PRODUTO'
      Size = 100
    end
    object qryViewPedidoItensITENSPED_QUANT: TIntegerField
      FieldName = 'ITENSPED_QUANT'
    end
    object qryViewPedidoItensITENSPED_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object qryViewPedidoItensITENSPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewPedidoItensITENSPED_SEQUE: TIntegerField
      FieldName = 'ITENSPED_SEQUE'
    end
    object qryViewPedidoItensITENSPED_ORC_ID: TIntegerField
      FieldName = 'ITENSPED_ORC_ID'
    end
  end
  object dspViewPedidoItens: TDataSetProvider
    DataSet = qryViewPedidoItens
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 72
  end
  object dsViewPedidoItens: TDataSource
    DataSet = cdsViewPedidoItens
    Left = 184
    Top = 168
  end
  object cdsViewPedidoItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedidoItens'
    Left = 183
    Top = 120
    object cdsViewPedidoItensITENSPED_PED_ID: TIntegerField
      FieldName = 'ITENSPED_PED_ID'
      Required = True
    end
    object cdsViewPedidoItensITENSPED_PRODUTO: TStringField
      FieldName = 'ITENSPED_PRODUTO'
      Size = 100
    end
    object cdsViewPedidoItensITENSPED_QUANT: TIntegerField
      FieldName = 'ITENSPED_QUANT'
    end
    object cdsViewPedidoItensITENSPED_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_UNIT'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewPedidoItensITENSPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsViewPedidoItensITENSPED_SEQUE: TIntegerField
      FieldName = 'ITENSPED_SEQUE'
    end
    object cdsViewPedidoItensITENSPED_ORC_ID: TIntegerField
      FieldName = 'ITENSPED_ORC_ID'
    end
  end
  object qryDadosPedidoItens: TSQLQuery
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
      'SELECT * FROM PEDIDOS_ITENS'
      'WHERE ITENSPED_PED_ID = :ID'
      'AND ITENSPED_SEQUE = :SEQUE')
    SQLConnection = DMConnection.SQLConnection
    Left = 112
    Top = 8
    object qryDadosPedidoItensITENSPED_ORC_ID: TIntegerField
      FieldName = 'ITENSPED_ORC_ID'
    end
    object qryDadosPedidoItensITENSPED_PED_ID: TIntegerField
      FieldName = 'ITENSPED_PED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosPedidoItensITENSPED_SEQUE: TIntegerField
      FieldName = 'ITENSPED_SEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDadosPedidoItensITENSPED_PRODUTO: TStringField
      FieldName = 'ITENSPED_PRODUTO'
      Size = 100
    end
    object qryDadosPedidoItensITENSPED_QUANT: TIntegerField
      FieldName = 'ITENSPED_QUANT'
    end
    object qryDadosPedidoItensITENSPED_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_UNIT'
      Precision = 15
      Size = 2
    end
    object qryDadosPedidoItensITENSPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
  end
  object dspDadosPedidoItens: TDataSetProvider
    DataSet = qryDadosPedidoItens
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 56
  end
  object dsDadosPedidoItens: TDataSource
    DataSet = cdsDadosPedidoItens
    Left = 112
    Top = 152
  end
  object cdsDadosPedidoItens: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosPedidoItens'
    Left = 111
    Top = 104
    object cdsDadosPedidoItensITENSPED_ORC_ID: TIntegerField
      FieldName = 'ITENSPED_ORC_ID'
    end
    object cdsDadosPedidoItensITENSPED_PED_ID: TIntegerField
      FieldName = 'ITENSPED_PED_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosPedidoItensITENSPED_SEQUE: TIntegerField
      FieldName = 'ITENSPED_SEQUE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDadosPedidoItensITENSPED_PRODUTO: TStringField
      FieldName = 'ITENSPED_PRODUTO'
      Size = 100
    end
    object cdsDadosPedidoItensITENSPED_QUANT: TIntegerField
      FieldName = 'ITENSPED_QUANT'
    end
    object cdsDadosPedidoItensITENSPED_VALOR_UNIT: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_UNIT'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDadosPedidoItensITENSPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'ITENSPED_VALOR_TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object qryViewPedidoMax: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(PEDIDOS.ped_id) MAX_ID'
      'FROM PEDIDOS')
    SQLConnection = DMConnection.SQLConnection
    Left = 256
    Top = 8
    object qryViewPedidoMaxMAX_ID: TIntegerField
      FieldName = 'MAX_ID'
    end
  end
  object dspViewPedidoMax: TDataSetProvider
    DataSet = qryViewPedidoMax
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 56
  end
  object dsViewPedidoMax: TDataSource
    DataSet = cdsViewPedidoMax
    Left = 256
    Top = 152
  end
  object cdsViewPedidoMax: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedidoMax'
    Left = 255
    Top = 104
    object cdsViewPedidoMaxMAX_ID: TIntegerField
      FieldName = 'MAX_ID'
    end
  end
  object qryViewPedidoItens_Soma: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(PEDIDOS_ITENS.itensped_valor_total) AS SOMA'
      'FROM PEDIDOS_ITENS'
      'WHERE PEDIDOS_ITENS.itensped_ped_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 448
    Top = 256
    object qryViewPedidoItens_SomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      Precision = 15
      Size = 0
    end
  end
  object dspViewPedidoItens_Soma: TDataSetProvider
    DataSet = qryViewPedidoItens_Soma
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 304
  end
  object dsViewPedidoItens_Soma: TDataSource
    DataSet = cdsViewPedidoItens_Soma
    Left = 448
    Top = 400
  end
  object cdsViewPedidoItens_Soma: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedidoItens_Soma'
    Left = 448
    Top = 352
    object cdsViewPedidoItens_SomaSOMA: TFMTBCDField
      FieldName = 'SOMA'
      DisplayFormat = '0.00'
      EditFormat = 'R$ 0.00'
      Precision = 15
      Size = 0
    end
  end
  object dsViewPedido_Manutencao: TDataSource
    DataSet = cdsViewPedido_Manutencao
    Left = 344
    Top = 168
  end
  object dspViewPedido_Manutencao: TDataSetProvider
    DataSet = qryViewPedido_Manutencao
    Left = 344
    Top = 72
  end
  object qryViewPedido_Manutencao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PEDIDOS.ped_id,'
      'PEDIDOS.ped_data_pedido,'
      'PEDIDOS.ped_data_manut,'
      'CLIENTES.cli_cliente'
      'FROM PEDIDOS, CLIENTES'
      'WHERE CLIENTES.cli_id = PEDIDOS.ped_cli_id'
      'AND CURRENT_DATE >= PEDIDOS.ped_data_manut'
      'AND PEDIDOS.ped_manut_efetuada = '#39'F'#39
      'ORDER BY PED_ID ASC')
    SQLConnection = DMConnection.SQLConnection
    Left = 344
    Top = 24
    object qryViewPedido_ManutencaoPED_ID: TIntegerField
      FieldName = 'PED_ID'
      Required = True
    end
    object qryViewPedido_ManutencaoPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object qryViewPedido_ManutencaoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryViewPedido_ManutencaoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object cdsViewPedido_Manutencao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedido_Manutencao'
    Left = 344
    Top = 123
    object cdsViewPedido_ManutencaoPED_ID: TIntegerField
      FieldName = 'PED_ID'
      Required = True
    end
    object cdsViewPedido_ManutencaoPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object cdsViewPedido_ManutencaoPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsViewPedido_ManutencaoCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object qryViewPedido_Busca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VIEW_PEDIDO'
      'WHERE VIEW_PEDIDO.PED_ID = :ID'
      'OR VIEW_PEDIDO.CLI_CLIENTE LIKE :CLIENTE')
    SQLConnection = DMConnection.SQLConnection
    Left = 368
    Top = 240
    object qryViewPedido_BuscaPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object qryViewPedido_BuscaPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
    end
    object qryViewPedido_BuscaPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object qryViewPedido_BuscaPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object qryViewPedido_BuscaPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object qryViewPedido_BuscaPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object qryViewPedido_BuscaPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object qryViewPedido_BuscaPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object qryViewPedido_BuscaPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object qryViewPedido_BuscaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryViewPedido_BuscaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object dspViewPedido_Busca: TDataSetProvider
    DataSet = qryViewPedido_Busca
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 288
  end
  object dsViewPedido_Busca: TDataSource
    DataSet = cdsViewPedido_Busca
    Left = 368
    Top = 384
  end
  object cdsViewPedido_Busca: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedido_Busca'
    Left = 367
    Top = 336
    object cdsViewPedido_BuscaPED_ID: TIntegerField
      FieldName = 'PED_ID'
    end
    object cdsViewPedido_BuscaPED_USU_ID: TIntegerField
      FieldName = 'PED_USU_ID'
    end
    object cdsViewPedido_BuscaPED_DATA_PEDIDO: TDateField
      FieldName = 'PED_DATA_PEDIDO'
    end
    object cdsViewPedido_BuscaPED_DATA_ENTREGA: TDateField
      FieldName = 'PED_DATA_ENTREGA'
    end
    object cdsViewPedido_BuscaPED_DETALHES: TBlobField
      FieldName = 'PED_DETALHES'
      Size = 1
    end
    object cdsViewPedido_BuscaPED_PERIODO_MANUT: TIntegerField
      FieldName = 'PED_PERIODO_MANUT'
    end
    object cdsViewPedido_BuscaPED_DATA_MANUT: TDateField
      FieldName = 'PED_DATA_MANUT'
    end
    object cdsViewPedido_BuscaPED_MANUT_EFETUADA: TStringField
      FieldName = 'PED_MANUT_EFETUADA'
      FixedChar = True
      Size = 1
    end
    object cdsViewPedido_BuscaPED_VALOR_TOTAL: TFMTBCDField
      FieldName = 'PED_VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cdsViewPedido_BuscaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object cdsViewPedido_BuscaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
  end
  object dsViewPedido_VerificaOrcamento: TDataSource
    DataSet = cdsViewPedido_VerificaOrcamento
    Left = 448
    Top = 152
  end
  object dspViewPedido_VerificaOrcamento: TDataSetProvider
    DataSet = qryViewPedido_VerificaOrcamento
    Left = 448
    Top = 56
  end
  object qryViewPedido_VerificaOrcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ORCPED_ID,'
      'ORCPED_VALORPARCELADO'
      'FROM ORCAMENTOPEDIDOS'
      'WHERE ORCAMENTOPEDIDOS.orcped_id = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 448
    Top = 8
    object qryViewPedido_VerificaOrcamentoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
      Required = True
    end
    object qryViewPedido_VerificaOrcamentoORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELADO'
      Precision = 15
      Size = 2
    end
  end
  object cdsViewPedido_VerificaOrcamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewPedido_VerificaOrcamento'
    Left = 448
    Top = 107
    object cdsViewPedido_VerificaOrcamentoORCPED_ID: TIntegerField
      FieldName = 'ORCPED_ID'
      Required = True
    end
    object cdsViewPedido_VerificaOrcamentoORCPED_VALORPARCELADO: TFMTBCDField
      FieldName = 'ORCPED_VALORPARCELADO'
      Precision = 15
      Size = 2
    end
  end
end
