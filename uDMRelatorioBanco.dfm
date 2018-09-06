object DMRelatorioBanco: TDMRelatorioBanco
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 359
  Width = 309
  object qryViewRelatorioBancos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM BANCOS'
      'WHERE BANC_DESCRICAO LIKE :NOME')
    SQLConnection = DMConnection.SQLConnection
    Left = 120
    Top = 40
    object qryViewRelatorioBancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object qryViewRelatorioBancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object qryViewRelatorioBancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspViewRelatorioBancos: TDataSetProvider
    DataSet = qryViewRelatorioBancos
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 88
  end
  object dsViewRelatorioBancos: TDataSource
    DataSet = cdsViewRelatorioBancos
    Left = 120
    Top = 184
  end
  object cdsViewRelatorioBancos: TMyClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViewRelatorioBancos'
    Left = 120
    Top = 136
    object cdsViewRelatorioBancosBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Required = True
    end
    object cdsViewRelatorioBancosBANC_DESCRICAO: TStringField
      FieldName = 'BANC_DESCRICAO'
      Size = 50
    end
    object cdsViewRelatorioBancosBANC_ATIVO: TStringField
      FieldName = 'BANC_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
