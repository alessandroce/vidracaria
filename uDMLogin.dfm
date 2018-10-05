object DMLogin: TDMLogin
  OldCreateOrder = False
  Left = 296
  Top = 209
  Height = 286
  Width = 465
  object dsDadosLogin: TDataSource
    DataSet = cdsDadosLogin
    Left = 147
    Top = 192
  end
  object dspDadosLogin: TDataSetProvider
    DataSet = qryDadosLogin
    Left = 147
    Top = 88
  end
  object qryDadosLogin: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SENHA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT USUARIOS.usu_login,'
      ' USUARIOS.usu_id,'
      ' usuarios.usu_senha,'
      ' usuarios.usu_login_tipo'
      'FROM USUARIOS'
      'WHERE upper(USUARIOS.usu_login) = upper(:LOGIN)'
      'AND upper(USUARIOS.usu_senha) = upper(:SENHA)')
    SQLConnection = DMConnection.SQLConnection
    Left = 147
    Top = 40
    object qryDadosLoginUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object qryDadosLoginUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object qryDadosLoginUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object qryDadosLoginUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object cdsDadosLogin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosLogin'
    Left = 147
    Top = 144
    object cdsDadosLoginUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cdsDadosLoginUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object cdsDadosLoginUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object cdsDadosLoginUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object dsDadosPrin: TDataSource
    DataSet = cdsDadosPrin
    Left = 51
    Top = 184
  end
  object dspDadosPrin: TDataSetProvider
    DataSet = qryDadosPrin
    Left = 51
    Top = 80
  end
  object qryDadosPrin: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM USUARIOS'
      'WHERE upper(USUARIOS.usu_login) = upper(:LOGIN)')
    SQLConnection = DMConnection.SQLConnection
    Left = 51
    Top = 32
    object qryDadosPrinUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosPrinUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object qryDadosPrinUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object qryDadosPrinUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object qryDadosPrinUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object qryDadosPrinUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object qryDadosPrinUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object qryDadosPrinUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object qryDadosPrinUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryDadosPrinUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object qryDadosPrinUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object qryDadosPrinUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object qryDadosPrinUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object qryDadosPrinUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object qryDadosPrinUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryDadosPrinUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object cdsDadosPrin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosPrin'
    Left = 51
    Top = 136
    object cdsDadosPrinUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosPrinUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object cdsDadosPrinUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object cdsDadosPrinUSU_SENHA_CONF: TStringField
      FieldName = 'USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object cdsDadosPrinUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object cdsDadosPrinUSU_ENDERECO: TStringField
      FieldName = 'USU_ENDERECO'
      Size = 40
    end
    object cdsDadosPrinUSU_BAIRRO: TStringField
      FieldName = 'USU_BAIRRO'
      Size = 30
    end
    object cdsDadosPrinUSU_CIDADE: TStringField
      FieldName = 'USU_CIDADE'
      Size = 30
    end
    object cdsDadosPrinUSU_ESTADO: TStringField
      FieldName = 'USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsDadosPrinUSU_FONE_RES: TStringField
      FieldName = 'USU_FONE_RES'
    end
    object cdsDadosPrinUSU_FONE_CEL: TStringField
      FieldName = 'USU_FONE_CEL'
    end
    object cdsDadosPrinUSU_EMAIL: TStringField
      FieldName = 'USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object cdsDadosPrinUSU_RG: TStringField
      FieldName = 'USU_RG'
    end
    object cdsDadosPrinUSU_CPF: TStringField
      FieldName = 'USU_CPF'
    end
    object cdsDadosPrinUSU_ATIVO: TStringField
      FieldName = 'USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsDadosPrinUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object dsViewLogin_Lookup: TDataSource
    DataSet = cdsViewLogin_Lookup
    Left = 235
    Top = 176
  end
  object dspViewLogin_Lookup: TDataSetProvider
    DataSet = qryViewLogin_Lookup
    Left = 235
    Top = 72
  end
  object qryViewLogin_Lookup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USUARIOS.usu_login,'
      ' USUARIOS.usu_id,'
      ' usuarios.usu_senha,'
      ' usuarios.usu_login_tipo'
      'FROM USUARIOS'
      'order by USUARIOS.usu_login')
    SQLConnection = DMConnection.SQLConnection
    Left = 235
    Top = 24
    object qryViewLogin_LookupUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object qryViewLogin_LookupUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object qryViewLogin_LookupUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object qryViewLogin_LookupUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
  object cdsViewLogin_Lookup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewLogin_Lookup'
    Left = 235
    Top = 128
    object cdsViewLogin_LookupUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Required = True
      Size = 30
    end
    object cdsViewLogin_LookupUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object cdsViewLogin_LookupUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 15
    end
    object cdsViewLogin_LookupUSU_LOGIN_TIPO: TStringField
      FieldName = 'USU_LOGIN_TIPO'
      Size = 30
    end
  end
end
