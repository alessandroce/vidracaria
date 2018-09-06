object DMMenuPermissao: TDMMenuPermissao
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 324
  Width = 344
  object dsDados3Permissoes: TDataSource
    DataSet = cdsDados3Permissoes
    Left = 64
    Top = 176
  end
  object cdsDados3Permissoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDados3Permissoes'
    Left = 64
    Top = 128
    object cdsDados3PermissoesMENUPERM_USUARIO_ID: TIntegerField
      FieldName = 'MENUPERM_USUARIO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDados3PermissoesMENUPERM_CAD_CLIENTES: TStringField
      FieldName = 'MENUPERM_CAD_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CAD_PRODUTOS: TStringField
      FieldName = 'MENUPERM_CAD_PRODUTOS'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CAD_BANCOS: TStringField
      FieldName = 'MENUPERM_CAD_BANCOS'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CAD_USUARIOS: TStringField
      FieldName = 'MENUPERM_CAD_USUARIOS'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CONS_CLIENTES: TStringField
      FieldName = 'MENUPERM_CONS_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CONS_ORCAMENTOS: TStringField
      FieldName = 'MENUPERM_CONS_ORCAMENTOS'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CONS_PEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_ITENSPEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField
      FieldName = 'MENUPERM_CONS_ORDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_LAN_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_LAN_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_LAN_PEDIDO: TStringField
      FieldName = 'MENUPERM_LAN_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField
      FieldName = 'MENUPERM_LAN_PRDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_REL_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_REL_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_REL_PEDIDO: TStringField
      FieldName = 'MENUPERM_REL_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_FIN_DUPLICATA: TStringField
      FieldName = 'MENUPERM_FIN_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_FIN_RECIBO: TStringField
      FieldName = 'MENUPERM_FIN_RECIBO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_SIS_CONFIGURACOES: TStringField
      FieldName = 'MENUPERM_SIS_CONFIGURACOES'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField
      FieldName = 'MENUPERM_SIS_CADASTROEMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_SIS_SAIR: TStringField
      FieldName = 'MENUPERM_SIS_SAIR'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_MN_CADASTRO: TStringField
      FieldName = 'MENUPERM_MN_CADASTRO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_MN_CONSULTA: TStringField
      FieldName = 'MENUPERM_MN_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_MN_LANCAMENTO: TStringField
      FieldName = 'MENUPERM_MN_LANCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_MN_RELATORIO: TStringField
      FieldName = 'MENUPERM_MN_RELATORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_MN_FINANCEIRO: TStringField
      FieldName = 'MENUPERM_MN_FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_MN_SISTEMA: TStringField
      FieldName = 'MENUPERM_MN_SISTEMA'
      FixedChar = True
      Size = 1
    end
    object cdsDados3PermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField
      FieldName = 'MENUPERM_REL_ETIQUETACLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object dspDados3Permissoes: TDataSetProvider
    DataSet = qryDados3Permissoes
    Left = 64
    Top = 80
  end
  object qryDados3Permissoes: TSQLQuery
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
    Left = 64
    Top = 32
    object qryDados3PermissoesMENUPERM_USUARIO_ID: TIntegerField
      FieldName = 'MENUPERM_USUARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDados3PermissoesMENUPERM_CAD_CLIENTES: TStringField
      FieldName = 'MENUPERM_CAD_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CAD_PRODUTOS: TStringField
      FieldName = 'MENUPERM_CAD_PRODUTOS'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOPRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CAD_BANCOS: TStringField
      FieldName = 'MENUPERM_CAD_BANCOS'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CAD_USUARIOS: TStringField
      FieldName = 'MENUPERM_CAD_USUARIOS'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField
      FieldName = 'MENUPERM_CAD_TIPOORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CONS_CLIENTES: TStringField
      FieldName = 'MENUPERM_CONS_CLIENTES'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CONS_ORCAMENTOS: TStringField
      FieldName = 'MENUPERM_CONS_ORCAMENTOS'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CONS_PEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField
      FieldName = 'MENUPERM_CONS_ITENSPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField
      FieldName = 'MENUPERM_CONS_ORDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_LAN_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_LAN_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_LAN_PEDIDO: TStringField
      FieldName = 'MENUPERM_LAN_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField
      FieldName = 'MENUPERM_LAN_PRDEMSERVICO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_REL_ORCAMENTO: TStringField
      FieldName = 'MENUPERM_REL_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_REL_PEDIDO: TStringField
      FieldName = 'MENUPERM_REL_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_FIN_DUPLICATA: TStringField
      FieldName = 'MENUPERM_FIN_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_FIN_RECIBO: TStringField
      FieldName = 'MENUPERM_FIN_RECIBO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_SIS_CONFIGURACOES: TStringField
      FieldName = 'MENUPERM_SIS_CONFIGURACOES'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField
      FieldName = 'MENUPERM_SIS_CADASTROEMITENTE'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_SIS_SAIR: TStringField
      FieldName = 'MENUPERM_SIS_SAIR'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_MN_CADASTRO: TStringField
      FieldName = 'MENUPERM_MN_CADASTRO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_MN_CONSULTA: TStringField
      FieldName = 'MENUPERM_MN_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_MN_LANCAMENTO: TStringField
      FieldName = 'MENUPERM_MN_LANCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_MN_RELATORIO: TStringField
      FieldName = 'MENUPERM_MN_RELATORIO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_MN_FINANCEIRO: TStringField
      FieldName = 'MENUPERM_MN_FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_MN_SISTEMA: TStringField
      FieldName = 'MENUPERM_MN_SISTEMA'
      FixedChar = True
      Size = 1
    end
    object qryDados3PermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField
      FieldName = 'MENUPERM_REL_ETIQUETACLIENTE'
      FixedChar = True
      Size = 1
    end
  end
  object Qusuarios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM VIEW_USUARIOS'
      'WHERE EXCLUIR = '#39'F'#39
      'ORDER BY LOGIN')
    SQLConnection = DMConnection.SQLConnection
    Left = 144
    Top = 51
    object QusuariosUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object QusuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object QusuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
    object QusuariosEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      FixedChar = True
      Size = 1
    end
  end
  object dspusuarios: TDataSetProvider
    DataSet = Qusuarios
    Left = 144
    Top = 99
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspusuarios'
    Left = 144
    Top = 147
    object cdsUsuariosUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object cdsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object cdsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 15
    end
    object cdsUsuariosEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      FixedChar = True
      Size = 1
    end
  end
  object DSusuarios: TDataSource
    DataSet = cdsUsuarios
    Left = 144
    Top = 195
  end
end
