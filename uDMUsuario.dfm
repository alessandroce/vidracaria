object DMUsuario: TDMUsuario
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 470
  Width = 643
  object qryDadosUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM USUARIOS'
      'WHERE USU_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 80
    Top = 48
    object qryDadosUsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosUsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object qryDadosUsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object qryDadosUsuarioUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object qryDadosUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object qryDadosUsuarioUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object qryDadosUsuarioUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object qryDadosUsuarioUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object qryDadosUsuarioUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryDadosUsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object qryDadosUsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object qryDadosUsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object qryDadosUsuarioUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object qryDadosUsuarioUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object qryDadosUsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosUsuarioUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
    object qryDadosUsuarioUSU_EXCLUIR: TStringField
      FieldName = 'USU_EXCLUIR'
      FixedChar = True
      Size = 1
    end
    object qryDadosUsuarioUSU_FUNCAO: TIntegerField
      FieldName = 'USU_FUNCAO'
      Required = True
    end
    object qryDadosUsuarioUSU_COMISSAO_PEDIDO: TFMTBCDField
      FieldName = 'USU_COMISSAO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryDadosUsuarioUSU_DESCONTO_PEDIDO: TFMTBCDField
      FieldName = 'USU_DESCONTO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryDadosUsuarioUSU_DESCONTO_ORCAMENTO: TFMTBCDField
      FieldName = 'USU_DESCONTO_ORCAMENTO'
      Precision = 15
      Size = 2
    end
  end
  object dspDadosUsuario: TDataSetProvider
    DataSet = qryDadosUsuario
    Left = 80
    Top = 96
  end
  object cdsDadosUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosUsuario'
    Left = 80
    Top = 144
    object cdsDadosUsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosUsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object cdsDadosUsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object cdsDadosUsuarioUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object cdsDadosUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object cdsDadosUsuarioUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object cdsDadosUsuarioUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object cdsDadosUsuarioUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object cdsDadosUsuarioUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsDadosUsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object cdsDadosUsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object cdsDadosUsuarioUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object cdsDadosUsuarioUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object cdsDadosUsuarioUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object cdsDadosUsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosUsuarioUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
    object cdsDadosUsuarioUSU_EXCLUIR: TStringField
      FieldName = 'USU_EXCLUIR'
      FixedChar = True
      Size = 1
    end
    object cdsDadosUsuarioUSU_FUNCAO: TIntegerField
      FieldName = 'USU_FUNCAO'
      Required = True
    end
    object cdsDadosUsuarioUSU_COMISSAO_PEDIDO: TFMTBCDField
      FieldName = 'USU_COMISSAO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsDadosUsuarioUSU_DESCONTO_PEDIDO: TFMTBCDField
      FieldName = 'USU_DESCONTO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsDadosUsuarioUSU_DESCONTO_ORCAMENTO: TFMTBCDField
      FieldName = 'USU_DESCONTO_ORCAMENTO'
      Precision = 15
      Size = 2
    end
  end
  object dsDadosUsuario: TDataSource
    DataSet = cdsDadosUsuario
    Left = 80
    Top = 192
  end
  object qryViewUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT USU_ID, USU_NOME,'
      'USU_FONE_RES, USU_FONE_CEL,'
      'USU_ATIVO'
      'FROM USUARIOS'
      'WHERE USU_NOME LIKE :NOME'
      'ORDER BY USUARIOS.USU_NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 160
    Top = 64
    object qryViewUsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object qryViewUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object qryViewUsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object qryViewUsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object qryViewUsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewUsuario: TDataSetProvider
    DataSet = qryViewUsuario
    Left = 160
    Top = 112
  end
  object cdsViewUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewUsuario'
    Left = 160
    Top = 160
    object cdsViewUsuarioUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object cdsViewUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object cdsViewUsuarioUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object cdsViewUsuarioUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object cdsViewUsuarioUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsViewUsuario: TDataSource
    DataSet = cdsViewUsuario
    Left = 160
    Top = 208
  end
  object dsViewEstado: TDataSource
    DataSet = cdsViewEstado
    Left = 237
    Top = 196
  end
  object dspViewEstado: TDataSetProvider
    DataSet = qryViewEstado
    Left = 237
    Top = 100
  end
  object qryViewEstado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADO')
    SQLConnection = DMConnection.SQLConnection
    Left = 237
    Top = 52
    object qryViewEstadoEST_INDEX: TIntegerField
      FieldName = 'EST_INDEX'
    end
    object qryViewEstadoEST_SIGLA: TStringField
      FieldName = 'EST_SIGLA'
      FixedChar = True
      Size = 2
    end
    object qryViewEstadoEST_ESTADO: TStringField
      FieldName = 'EST_ESTADO'
      Size = 50
    end
  end
  object cdsViewEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewEstado'
    Left = 237
    Top = 148
    object cdsViewEstadoEST_INDEX: TIntegerField
      FieldName = 'EST_INDEX'
    end
    object cdsViewEstadoEST_SIGLA: TStringField
      FieldName = 'EST_SIGLA'
      FixedChar = True
      Size = 2
    end
    object cdsViewEstadoEST_ESTADO: TStringField
      FieldName = 'EST_ESTADO'
      Size = 50
    end
  end
  object dsDadosNovasPermissoes: TDataSource
    DataSet = cdsDadosNovasPermissoes
    Left = 328
    Top = 216
  end
  object cdsDadosNovasPermissoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosNovasPermissoes'
    Left = 328
    Top = 168
    object cdsDadosNovasPermissoesMENUPERM_USUARIO_ID: TIntegerField
      FieldName = 'MENUPERM_USUARIO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosNovasPermissoesMENUPERM_CAD_CLIENTES: TStringField
      FieldName = 'MENUPERM_CAD_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CAD_PRODUTOS: TStringField
      FieldName = 'MENUPERM_CAD_PRODUTOS'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CAD_BANCOS: TStringField
      FieldName = 'MENUPERM_CAD_BANCOS'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CAD_USUARIOS: TStringField
      FieldName = 'MENUPERM_CAD_USUARIOS'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CONS_CLIENTES: TStringField
      FieldName = 'MENUPERM_CONS_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CONS_ORCAMENTOS: TStringField
      FieldName = 'MENUPERM_CONS_ORCAMENTOS'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CONS_PEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_ITENSPEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField
      FieldName = 'MENUPERM_CONS_ORDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_LAN_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_LAN_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_LAN_PEDIDO: TStringField
      FieldName = 'MENUPERM_LAN_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField
      FieldName = 'MENUPERM_LAN_PRDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_REL_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_REL_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_REL_PEDIDO: TStringField
      FieldName = 'MENUPERM_REL_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_FIN_DUPLICATA: TStringField
      FieldName = 'MENUPERM_FIN_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_FIN_RECIBO: TStringField
      FieldName = 'MENUPERM_FIN_RECIBO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_SIS_CONFIGURACOES: TStringField
      FieldName = 'MENUPERM_SIS_CONFIGURACOES'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField
      FieldName = 'MENUPERM_SIS_CADASTROEMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_SIS_SAIR: TStringField
      FieldName = 'MENUPERM_SIS_SAIR'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_MN_CADASTRO: TStringField
      FieldName = 'MENUPERM_MN_CADASTRO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_MN_CONSULTA: TStringField
      FieldName = 'MENUPERM_MN_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_MN_LANCAMENTO: TStringField
      FieldName = 'MENUPERM_MN_LANCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_MN_RELATORIO: TStringField
      FieldName = 'MENUPERM_MN_RELATORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_MN_FINANCEIRO: TStringField
      FieldName = 'MENUPERM_MN_FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_MN_SISTEMA: TStringField
      FieldName = 'MENUPERM_MN_SISTEMA'
      FixedChar = True
      Size = 1
    end
    object cdsDadosNovasPermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField
      FieldName = 'MENUPERM_REL_ETIQUETACLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object dspDadosNovasPermissoes: TDataSetProvider
    DataSet = qryDadosNovasPermissoes
    Left = 328
    Top = 120
  end
  object qryDadosNovasPermissoes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM MENUPERMISSAO'
      '  WHERE MENUPERM_USUARIO_ID  =  :USUARIO')
    SQLConnection = DMConnection.SQLConnection
    Left = 328
    Top = 72
    object qryDadosNovasPermissoesMENUPERM_USUARIO_ID: TIntegerField
      FieldName = 'MENUPERM_USUARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosNovasPermissoesMENUPERM_CAD_CLIENTES: TStringField
      FieldName = 'MENUPERM_CAD_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CAD_PRODUTOS: TStringField
      FieldName = 'MENUPERM_CAD_PRODUTOS'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOPRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CAD_BANCOS: TStringField
      FieldName = 'MENUPERM_CAD_BANCOS'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CAD_USUARIOS: TStringField
      FieldName = 'MENUPERM_CAD_USUARIOS'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CONS_CLIENTES: TStringField
      FieldName = 'MENUPERM_CONS_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CONS_ORCAMENTOS: TStringField
      FieldName = 'MENUPERM_CONS_ORCAMENTOS'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CONS_PEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_ITENSPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField
      FieldName = 'MENUPERM_CONS_ORDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_LAN_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_LAN_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_LAN_PEDIDO: TStringField
      FieldName = 'MENUPERM_LAN_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField
      FieldName = 'MENUPERM_LAN_PRDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_REL_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_REL_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_REL_PEDIDO: TStringField
      FieldName = 'MENUPERM_REL_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_FIN_DUPLICATA: TStringField
      FieldName = 'MENUPERM_FIN_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_FIN_RECIBO: TStringField
      FieldName = 'MENUPERM_FIN_RECIBO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_SIS_CONFIGURACOES: TStringField
      FieldName = 'MENUPERM_SIS_CONFIGURACOES'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField
      FieldName = 'MENUPERM_SIS_CADASTROEMITENTE'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_SIS_SAIR: TStringField
      FieldName = 'MENUPERM_SIS_SAIR'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_MN_CADASTRO: TStringField
      FieldName = 'MENUPERM_MN_CADASTRO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_MN_CONSULTA: TStringField
      FieldName = 'MENUPERM_MN_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_MN_LANCAMENTO: TStringField
      FieldName = 'MENUPERM_MN_LANCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_MN_RELATORIO: TStringField
      FieldName = 'MENUPERM_MN_RELATORIO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_MN_FINANCEIRO: TStringField
      FieldName = 'MENUPERM_MN_FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_MN_SISTEMA: TStringField
      FieldName = 'MENUPERM_MN_SISTEMA'
      FixedChar = True
      Size = 1
    end
    object qryDadosNovasPermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField
      FieldName = 'MENUPERM_REL_ETIQUETACLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object qryViewUsuarioFuncao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM USUARIOS_FUNCAO')
    SQLConnection = DMConnection.SQLConnection
    Left = 440
    Top = 64
    object qryViewUsuarioFuncaoUSUF_ID: TIntegerField
      FieldName = 'USUF_ID'
      Required = True
    end
    object qryViewUsuarioFuncaoUSUF_DESCRICAO: TStringField
      FieldName = 'USUF_DESCRICAO'
      Size = 60
    end
  end
  object dspViewUsuarioFuncao: TDataSetProvider
    DataSet = qryViewUsuarioFuncao
    Left = 440
    Top = 112
  end
  object cdsViewUsuarioFuncao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewUsuarioFuncao'
    Left = 440
    Top = 160
    object cdsViewUsuarioFuncaoUSUF_ID: TIntegerField
      FieldName = 'USUF_ID'
      Required = True
    end
    object cdsViewUsuarioFuncaoUSUF_DESCRICAO: TStringField
      FieldName = 'USUF_DESCRICAO'
      Size = 60
    end
  end
  object dsViewUsuarioFuncao: TDataSource
    DataSet = cdsViewUsuarioFuncao
    Left = 440
    Top = 208
  end
end
