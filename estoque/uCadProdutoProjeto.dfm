inherited FCadProdutoProjeto: TFCadProdutoProjeto
  Caption = 'Produtos do projeto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1PROD_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_ID'
          end
          object grConsultaDBTableView1PROD_PRODTP_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_PRODTP_ID'
          end
          object grConsultaDBTableView1PROD_SIGLA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_SIGLA'
          end
          object grConsultaDBTableView1PROD_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_DESCRICAO'
          end
          object grConsultaDBTableView1PROD_DESCRICAO_LONGA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_DESCRICAO_LONGA'
          end
          object grConsultaDBTableView1PROD_ATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_ATIVO'
          end
          object grConsultaDBTableView1PROD_VALOR: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_VALOR'
          end
          object grConsultaDBTableView1PROD_UNIDMEDIDA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_UNIDMEDIDA'
          end
          object grConsultaDBTableView1PROD_ESPESSURA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_ESPESSURA'
          end
          object grConsultaDBTableView1PROD_LARGURA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_LARGURA'
          end
          object grConsultaDBTableView1PROD_ALTURA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_ALTURA'
          end
          object grConsultaDBTableView1PROD_MEDIDA_METRO: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_MEDIDA_METRO'
          end
          object grConsultaDBTableView1PROD_CAMINHOIMAGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_CAMINHOIMAGEM'
          end
          object grConsultaDBTableView1PROD_PRL_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_PRL_ID'
          end
          object grConsultaDBTableView1PROD_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_DH_CA'
          end
        end
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  PROD_ID = :OLD_PROD_ID')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (PROD_ALTURA, PROD_ATIVO, PROD_CAMINHOIMAGEM, PROD_DESCRICAO, ' +
        'PROD_DESCRICAO_LONGA, '
      
        '   PROD_ESPESSURA, PROD_ID, PROD_LARGURA, PROD_MEDIDA_METRO, PRO' +
        'D_PRL_ID, '
      '   PROD_PRODTP_ID, PROD_SIGLA, PROD_UNIDMEDIDA, PROD_VALOR)'
      'values'
      
        '  (:PROD_ALTURA, :PROD_ATIVO, :PROD_CAMINHOIMAGEM, :PROD_DESCRIC' +
        'AO, :PROD_DESCRICAO_LONGA, '
      
        '   :PROD_ESPESSURA, :PROD_ID, :PROD_LARGURA, :PROD_MEDIDA_METRO,' +
        ' :PROD_PRL_ID, '
      '   :PROD_PRODTP_ID, :PROD_SIGLA, :PROD_UNIDMEDIDA, :PROD_VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  PROD_ID,'
      '  PROD_PRODTP_ID,'
      '  PROD_SIGLA,'
      '  PROD_DESCRICAO,'
      '  PROD_DESCRICAO_LONGA,'
      '  PROD_ATIVO,'
      '  PROD_VALOR,'
      '  PROD_UNIDMEDIDA,'
      '  PROD_ESPESSURA,'
      '  PROD_LARGURA,'
      '  PROD_ALTURA,'
      '  PROD_MEDIDA_METRO,'
      '  PROD_CAMINHOIMAGEM,'
      '  PROD_PRL_ID'
      'from PRODUTO '
      'where'
      '  PROD_ID = :PROD_ID')
    SelectSQL.Strings = (
      'SELECT * FROM PRODUTO WHERE PROD_ID = :FId')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  PROD_ALTURA = :PROD_ALTURA,'
      '  PROD_ATIVO = :PROD_ATIVO,'
      '  PROD_CAMINHOIMAGEM = :PROD_CAMINHOIMAGEM,'
      '  PROD_DESCRICAO = :PROD_DESCRICAO,'
      '  PROD_DESCRICAO_LONGA = :PROD_DESCRICAO_LONGA,'
      '  PROD_ESPESSURA = :PROD_ESPESSURA,'
      '  PROD_ID = :PROD_ID,'
      '  PROD_LARGURA = :PROD_LARGURA,'
      '  PROD_MEDIDA_METRO = :PROD_MEDIDA_METRO,'
      '  PROD_PRL_ID = :PROD_PRL_ID,'
      '  PROD_PRODTP_ID = :PROD_PRODTP_ID,'
      '  PROD_SIGLA = :PROD_SIGLA,'
      '  PROD_UNIDMEDIDA = :PROD_UNIDMEDIDA,'
      '  PROD_VALOR = :PROD_VALOR'
      'where'
      '  PROD_ID = :OLD_PROD_ID')
    object ibCadastroPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = '"PRODUTO"."PROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Origin = '"PRODUTO"."PROD_PRODTP_ID"'
    end
    object ibCadastroPROD_SIGLA: TIBStringField
      FieldName = 'PROD_SIGLA'
      Origin = '"PRODUTO"."PROD_SIGLA"'
    end
    object ibCadastroPROD_DESCRICAO: TIBStringField
      FieldName = 'PROD_DESCRICAO'
      Origin = '"PRODUTO"."PROD_DESCRICAO"'
      Size = 100
    end
    object ibCadastroPROD_DESCRICAO_LONGA: TIBStringField
      FieldName = 'PROD_DESCRICAO_LONGA'
      Origin = '"PRODUTO"."PROD_DESCRICAO_LONGA"'
      Size = 255
    end
    object ibCadastroPROD_ATIVO: TIBStringField
      FieldName = 'PROD_ATIVO'
      Origin = '"PRODUTO"."PROD_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroPROD_VALOR: TIBBCDField
      FieldName = 'PROD_VALOR'
      Origin = '"PRODUTO"."PROD_VALOR"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPROD_UNIDMEDIDA: TIBStringField
      FieldName = 'PROD_UNIDMEDIDA'
      Origin = '"PRODUTO"."PROD_UNIDMEDIDA"'
      FixedChar = True
      Size = 2
    end
    object ibCadastroPROD_ESPESSURA: TIBBCDField
      FieldName = 'PROD_ESPESSURA'
      Origin = '"PRODUTO"."PROD_ESPESSURA"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPROD_LARGURA: TIBBCDField
      FieldName = 'PROD_LARGURA'
      Origin = '"PRODUTO"."PROD_LARGURA"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPROD_ALTURA: TIBBCDField
      FieldName = 'PROD_ALTURA'
      Origin = '"PRODUTO"."PROD_ALTURA"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPROD_MEDIDA_METRO: TIBBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Origin = '"PRODUTO"."PROD_MEDIDA_METRO"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPROD_CAMINHOIMAGEM: TIBStringField
      FieldName = 'PROD_CAMINHOIMAGEM'
      Origin = '"PRODUTO"."PROD_CAMINHOIMAGEM"'
      Size = 100
    end
    object ibCadastroPROD_PRL_ID: TIntegerField
      FieldName = 'PROD_PRL_ID'
      Origin = '"PRODUTO"."PROD_PRL_ID"'
      Required = True
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'SELECT PROD_ID Id, PRODUTO.* FROM PRODUTO WHERE PROD_ID>-1')
    object qConsultaPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = '"PRODUTO"."PROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Origin = '"PRODUTO"."PROD_PRODTP_ID"'
    end
    object qConsultaPROD_SIGLA: TIBStringField
      FieldName = 'PROD_SIGLA'
      Origin = '"PRODUTO"."PROD_SIGLA"'
    end
    object qConsultaPROD_DESCRICAO: TIBStringField
      FieldName = 'PROD_DESCRICAO'
      Origin = '"PRODUTO"."PROD_DESCRICAO"'
      Size = 100
    end
    object qConsultaPROD_DESCRICAO_LONGA: TIBStringField
      FieldName = 'PROD_DESCRICAO_LONGA'
      Origin = '"PRODUTO"."PROD_DESCRICAO_LONGA"'
      Size = 255
    end
    object qConsultaPROD_ATIVO: TIBStringField
      FieldName = 'PROD_ATIVO'
      Origin = '"PRODUTO"."PROD_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qConsultaPROD_VALOR: TIBBCDField
      FieldName = 'PROD_VALOR'
      Origin = '"PRODUTO"."PROD_VALOR"'
      Precision = 18
      Size = 2
    end
    object qConsultaPROD_UNIDMEDIDA: TIBStringField
      FieldName = 'PROD_UNIDMEDIDA'
      Origin = '"PRODUTO"."PROD_UNIDMEDIDA"'
      FixedChar = True
      Size = 2
    end
    object qConsultaPROD_ESPESSURA: TIBBCDField
      FieldName = 'PROD_ESPESSURA'
      Origin = '"PRODUTO"."PROD_ESPESSURA"'
      Precision = 18
      Size = 2
    end
    object qConsultaPROD_LARGURA: TIBBCDField
      FieldName = 'PROD_LARGURA'
      Origin = '"PRODUTO"."PROD_LARGURA"'
      Precision = 18
      Size = 2
    end
    object qConsultaPROD_ALTURA: TIBBCDField
      FieldName = 'PROD_ALTURA'
      Origin = '"PRODUTO"."PROD_ALTURA"'
      Precision = 18
      Size = 2
    end
    object qConsultaPROD_MEDIDA_METRO: TIBBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Origin = '"PRODUTO"."PROD_MEDIDA_METRO"'
      Precision = 18
      Size = 2
    end
    object qConsultaPROD_CAMINHOIMAGEM: TIBStringField
      FieldName = 'PROD_CAMINHOIMAGEM'
      Origin = '"PRODUTO"."PROD_CAMINHOIMAGEM"'
      Size = 100
    end
    object qConsultaPROD_PRL_ID: TIntegerField
      FieldName = 'PROD_PRL_ID'
      Origin = '"PRODUTO"."PROD_PRL_ID"'
      Required = True
    end
    object qConsultaPROD_DH_CA: TDateTimeField
      FieldName = 'PROD_DH_CA'
      Origin = '"PRODUTO"."PROD_DH_CA"'
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"PRODUTO"."PROD_ID"'
      Required = True
    end
  end
end
