object DMDuplicata: TDMDuplicata
  OldCreateOrder = False
  Left = 194
  Top = 114
  Height = 298
  Width = 302
  object dsViewDuplicata_Emitente: TDataSource
    DataSet = cdsViewDuplicata_Emitente
    Left = 104
    Top = 168
  end
  object dspViewDuplicata_Emitente: TDataSetProvider
    DataSet = qryViewDuplicata_Emitente
    Left = 104
    Top = 72
  end
  object qryViewDuplicata_Emitente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM EMITENTE'
      'WHERE EMIT_ID = :ID')
    SQLConnection = DMConnection.SQLConnection
    Left = 104
    Top = 24
    object qryViewDuplicata_EmitenteEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      Required = True
    end
    object qryViewDuplicata_EmitenteEMIT_RAZAOSOCIAL: TStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object qryViewDuplicata_EmitenteEMIT_RESPONSAVEL: TStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Size = 50
    end
    object qryViewDuplicata_EmitenteEMIT_ENDERECO: TStringField
      FieldName = 'EMIT_ENDERECO'
      Size = 100
    end
    object qryViewDuplicata_EmitenteEMIT_BAIRRO: TStringField
      FieldName = 'EMIT_BAIRRO'
      Size = 50
    end
    object qryViewDuplicata_EmitenteEMIT_MUNICIPIO: TStringField
      FieldName = 'EMIT_MUNICIPIO'
      Size = 50
    end
    object qryViewDuplicata_EmitenteEMIT_CEP: TStringField
      FieldName = 'EMIT_CEP'
      Size = 50
    end
    object qryViewDuplicata_EmitenteEMIT_ESTADO: TStringField
      FieldName = 'EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryViewDuplicata_EmitenteEMIT_CNPJ: TStringField
      FieldName = 'EMIT_CNPJ'
      Size = 30
    end
    object qryViewDuplicata_EmitenteEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Size = 30
    end
    object qryViewDuplicata_EmitenteEMIT_TELEFONE: TStringField
      FieldName = 'EMIT_TELEFONE'
      Size = 15
    end
    object qryViewDuplicata_EmitenteEDIT_EMAIL: TStringField
      FieldName = 'EDIT_EMAIL'
      Size = 50
    end
  end
  object cdsViewDuplicata_Emitente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewDuplicata_Emitente'
    Left = 104
    Top = 123
    object cdsViewDuplicata_EmitenteEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      Required = True
    end
    object cdsViewDuplicata_EmitenteEMIT_RAZAOSOCIAL: TStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object cdsViewDuplicata_EmitenteEMIT_RESPONSAVEL: TStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Size = 50
    end
    object cdsViewDuplicata_EmitenteEMIT_ENDERECO: TStringField
      FieldName = 'EMIT_ENDERECO'
      Size = 100
    end
    object cdsViewDuplicata_EmitenteEMIT_BAIRRO: TStringField
      FieldName = 'EMIT_BAIRRO'
      Size = 50
    end
    object cdsViewDuplicata_EmitenteEMIT_MUNICIPIO: TStringField
      FieldName = 'EMIT_MUNICIPIO'
      Size = 50
    end
    object cdsViewDuplicata_EmitenteEMIT_CEP: TStringField
      FieldName = 'EMIT_CEP'
      Size = 50
    end
    object cdsViewDuplicata_EmitenteEMIT_ESTADO: TStringField
      FieldName = 'EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsViewDuplicata_EmitenteEMIT_CNPJ: TStringField
      FieldName = 'EMIT_CNPJ'
      Size = 30
    end
    object cdsViewDuplicata_EmitenteEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
      Size = 30
    end
    object cdsViewDuplicata_EmitenteEMIT_TELEFONE: TStringField
      FieldName = 'EMIT_TELEFONE'
      Size = 15
    end
    object cdsViewDuplicata_EmitenteEDIT_EMAIL: TStringField
      FieldName = 'EDIT_EMAIL'
      Size = 50
    end
  end
end
