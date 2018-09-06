object DMEmitente: TDMEmitente
  OldCreateOrder = False
  Left = 168
  Top = 96
  Height = 298
  Width = 432
  object dsDadosEmitente: TDataSource
    DataSet = cdsDadosEmitente
    Left = 40
    Top = 168
  end
  object cdsDadosEmitente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDadosEmitente'
    Left = 40
    Top = 120
    object cdsDadosEmitenteEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsDadosEmitenteEMIT_RAZAOSOCIAL: TStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object cdsDadosEmitenteEMIT_RESPONSAVEL: TStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Size = 50
    end
    object cdsDadosEmitenteEMIT_ENDERECO: TStringField
      FieldName = 'EMIT_ENDERECO'
      Size = 100
    end
    object cdsDadosEmitenteEMIT_BAIRRO: TStringField
      FieldName = 'EMIT_BAIRRO'
      Size = 50
    end
    object cdsDadosEmitenteEMIT_MUNICIPIO: TStringField
      FieldName = 'EMIT_MUNICIPIO'
      Size = 50
    end
    object cdsDadosEmitenteEMIT_CEP: TStringField
      FieldName = 'EMIT_CEP'
      Size = 50
    end
    object cdsDadosEmitenteEMIT_ESTADO: TStringField
      FieldName = 'EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsDadosEmitenteEMIT_CNPJ: TStringField
      FieldName = 'EMIT_CNPJ'
      Size = 30
    end
    object cdsDadosEmitenteEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Size = 30
    end
    object cdsDadosEmitenteEMIT_TELEFONE: TStringField
      FieldName = 'EMIT_TELEFONE'
      Size = 15
    end
    object cdsDadosEmitenteEDIT_EMAIL: TStringField
      FieldName = 'EDIT_EMAIL'
      Size = 50
    end
  end
  object dspDadosEmitente: TDataSetProvider
    DataSet = qryDadosEmitente
    Left = 40
    Top = 72
  end
  object qryDadosEmitente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM EMITENTE WHERE EMIT_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 40
    Top = 24
    object qryDadosEmitenteEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosEmitenteEMIT_RAZAOSOCIAL: TStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object qryDadosEmitenteEMIT_RESPONSAVEL: TStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Size = 50
    end
    object qryDadosEmitenteEMIT_ENDERECO: TStringField
      FieldName = 'EMIT_ENDERECO'
      Size = 100
    end
    object qryDadosEmitenteEMIT_BAIRRO: TStringField
      FieldName = 'EMIT_BAIRRO'
      Size = 50
    end
    object qryDadosEmitenteEMIT_MUNICIPIO: TStringField
      FieldName = 'EMIT_MUNICIPIO'
      Size = 50
    end
    object qryDadosEmitenteEMIT_CEP: TStringField
      FieldName = 'EMIT_CEP'
      Size = 50
    end
    object qryDadosEmitenteEMIT_ESTADO: TStringField
      FieldName = 'EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryDadosEmitenteEMIT_CNPJ: TStringField
      FieldName = 'EMIT_CNPJ'
      Size = 30
    end
    object qryDadosEmitenteEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Size = 30
    end
    object qryDadosEmitenteEMIT_TELEFONE: TStringField
      FieldName = 'EMIT_TELEFONE'
      Size = 15
    end
    object qryDadosEmitenteEDIT_EMAIL: TStringField
      FieldName = 'EDIT_EMAIL'
      Size = 50
    end
  end
  object dsViewEmitente: TDataSource
    DataSet = cdsViewEmitente
    Left = 120
    Top = 184
  end
  object cdsViewEmitente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewEmitente'
    Left = 120
    Top = 136
    object cdsViewEmitenteEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      Required = True
    end
    object cdsViewEmitenteEMIT_RAZAOSOCIAL: TStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object cdsViewEmitenteEMIT_RESPONSAVEL: TStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Size = 50
    end
    object cdsViewEmitenteEMIT_ENDERECO: TStringField
      FieldName = 'EMIT_ENDERECO'
      Size = 100
    end
    object cdsViewEmitenteEMIT_BAIRRO: TStringField
      FieldName = 'EMIT_BAIRRO'
      Size = 50
    end
    object cdsViewEmitenteEMIT_MUNICIPIO: TStringField
      FieldName = 'EMIT_MUNICIPIO'
      Size = 50
    end
    object cdsViewEmitenteEMIT_CEP: TStringField
      FieldName = 'EMIT_CEP'
      Size = 50
    end
    object cdsViewEmitenteEMIT_ESTADO: TStringField
      FieldName = 'EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsViewEmitenteEMIT_CNPJ: TStringField
      FieldName = 'EMIT_CNPJ'
      Size = 30
    end
    object cdsViewEmitenteEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Size = 30
    end
    object cdsViewEmitenteEMIT_TELEFONE: TStringField
      FieldName = 'EMIT_TELEFONE'
      Size = 15
    end
    object cdsViewEmitenteEDIT_EMAIL: TStringField
      FieldName = 'EDIT_EMAIL'
      Size = 50
    end
  end
  object dspViewEmitente: TDataSetProvider
    DataSet = qryViewEmitente
    Left = 120
    Top = 88
  end
  object qryViewEmitente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM EMITENTE '
      'WHERE EMIT_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 120
    Top = 40
    object qryViewEmitenteEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      Required = True
    end
    object qryViewEmitenteEMIT_RAZAOSOCIAL: TStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object qryViewEmitenteEMIT_RESPONSAVEL: TStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Size = 50
    end
    object qryViewEmitenteEMIT_ENDERECO: TStringField
      FieldName = 'EMIT_ENDERECO'
      Size = 100
    end
    object qryViewEmitenteEMIT_BAIRRO: TStringField
      FieldName = 'EMIT_BAIRRO'
      Size = 50
    end
    object qryViewEmitenteEMIT_MUNICIPIO: TStringField
      FieldName = 'EMIT_MUNICIPIO'
      Size = 50
    end
    object qryViewEmitenteEMIT_CEP: TStringField
      FieldName = 'EMIT_CEP'
      Size = 50
    end
    object qryViewEmitenteEMIT_ESTADO: TStringField
      FieldName = 'EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryViewEmitenteEMIT_CNPJ: TStringField
      FieldName = 'EMIT_CNPJ'
      Size = 30
    end
    object qryViewEmitenteEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Size = 30
    end
    object qryViewEmitenteEMIT_TELEFONE: TStringField
      FieldName = 'EMIT_TELEFONE'
      Size = 15
    end
    object qryViewEmitenteEDIT_EMAIL: TStringField
      FieldName = 'EDIT_EMAIL'
      Size = 50
    end
  end
end
