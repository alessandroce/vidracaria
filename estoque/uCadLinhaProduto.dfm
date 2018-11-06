inherited FCadLinhaProduto: TFCadLinhaProduto
  Caption = 'FCadLinhaProduto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1PRL_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'PRL_ID'
          end
          object grConsultaDBTableView1PRL_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRL_DESCRICAO'
            Width = 496
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited btImprimir: TSpeedButton
          Visible = False
        end
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [1]
        Left = 56
        Top = 80
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 56
        Top = 120
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 96
        Width = 134
        Height = 21
        DataField = 'PRL_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 56
        Top = 136
        Width = 400
        Height = 21
        DataField = 'PRL_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from produto_linha'
      'where'
      '  PRL_ID = :OLD_PRL_ID')
    InsertSQL.Strings = (
      'insert into produto_linha'
      '  (PRL_ID, PRL_DESCRICAO, PRL_DH_CA)'
      'values'
      '  (:PRL_ID, :PRL_DESCRICAO, :PRL_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from produto_linha '
      'where'
      '  PRL_ID = :PRL_ID')
    SelectSQL.Strings = (
      'select * from produto_linha where prl_id = :FId')
    ModifySQL.Strings = (
      'update produto_linha'
      'set'
      '  PRL_ID = :PRL_ID,'
      '  PRL_DESCRICAO = :PRL_DESCRICAO,'
      '  PRL_DH_CA = :PRL_DH_CA'
      'where'
      '  PRL_ID = :OLD_PRL_ID')
    GeneratorField.Field = 'PRL_ID'
    GeneratorField.Generator = 'GEN_PRODUTO_LINHA'
    object ibCadastroPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      Origin = 'PRODUTO_LINHA.PRL_ID'
      Required = True
    end
    object ibCadastroPRL_DESCRICAO: TIBStringField
      FieldName = 'PRL_DESCRICAO'
      Origin = 'PRODUTO_LINHA.PRL_DESCRICAO'
      Size = 100
    end
    object ibCadastroPRL_DH_CA: TDateTimeField
      FieldName = 'PRL_DH_CA'
      Origin = 'PRODUTO_LINHA.PRL_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      
        'select produto_linha.prl_id ID, produto_linha.* from produto_lin' +
        'ha')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRODUTO_LINHA.PRL_ID'
      Required = True
    end
    object qConsultaPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      Origin = 'PRODUTO_LINHA.PRL_ID'
      Required = True
    end
    object qConsultaPRL_DESCRICAO: TIBStringField
      FieldName = 'PRL_DESCRICAO'
      Origin = 'PRODUTO_LINHA.PRL_DESCRICAO'
      Size = 100
    end
    object qConsultaPRL_DH_CA: TDateTimeField
      FieldName = 'PRL_DH_CA'
      Origin = 'PRODUTO_LINHA.PRL_DH_CA'
    end
  end
end
