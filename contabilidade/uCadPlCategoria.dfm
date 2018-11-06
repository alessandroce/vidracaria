inherited FCadPlCategoria: TFCadPlCategoria
  Caption = 'FCadPlCategoria'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1PCA_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'PCA_CODIGO'
            Width = 100
          end
          object grConsultaDBTableView1PCA_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PCA_DESCRICAO'
            Width = 400
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [1]
        Left = 40
        Top = 80
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 40
        Top = 120
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 96
        Width = 134
        Height = 21
        DataField = 'PCA_CODIGO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 136
        Width = 400
        Height = 21
        DataField = 'PCA_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from pl_categoria'
      'where'
      '  PCA_ID = :OLD_PCA_ID')
    InsertSQL.Strings = (
      'insert into pl_categoria'
      '  (PCA_ID, PCA_CODIGO, PCA_DESCRICAO, PCA_DH_CA)'
      'values'
      '  (:PCA_ID, :PCA_CODIGO, :PCA_DESCRICAO, :PCA_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from pl_categoria '
      'where'
      '  PCA_ID = :PCA_ID')
    SelectSQL.Strings = (
      'select * from pl_categoria where pca_id = :FId')
    ModifySQL.Strings = (
      'update pl_categoria'
      'set'
      '  PCA_ID = :PCA_ID,'
      '  PCA_CODIGO = :PCA_CODIGO,'
      '  PCA_DESCRICAO = :PCA_DESCRICAO,'
      '  PCA_DH_CA = :PCA_DH_CA'
      'where'
      '  PCA_ID = :OLD_PCA_ID')
    GeneratorField.Field = 'PCA_ID'
    GeneratorField.Generator = 'GEN_PL_CATEGORIA'
    object ibCadastroPCA_ID: TIntegerField
      FieldName = 'PCA_ID'
      Origin = 'PL_CATEGORIA.PCA_ID'
      Required = True
    end
    object ibCadastroPCA_CODIGO: TIntegerField
      FieldName = 'PCA_CODIGO'
      Origin = 'PL_CATEGORIA.PCA_CODIGO'
    end
    object ibCadastroPCA_DESCRICAO: TIBStringField
      FieldName = 'PCA_DESCRICAO'
      Origin = 'PL_CATEGORIA.PCA_DESCRICAO'
      Size = 100
    end
    object ibCadastroPCA_DH_CA: TDateTimeField
      FieldName = 'PCA_DH_CA'
      Origin = 'PL_CATEGORIA.PCA_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      
        'select pl_categoria.pca_id ID, pl_categoria.* from pl_categoria ' +
        'order by pca_descricao')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'PL_CATEGORIA.PCA_ID'
      Required = True
    end
    object qConsultaPCA_ID: TIntegerField
      FieldName = 'PCA_ID'
      Origin = 'PL_CATEGORIA.PCA_ID'
      Required = True
    end
    object qConsultaPCA_CODIGO: TIntegerField
      FieldName = 'PCA_CODIGO'
      Origin = 'PL_CATEGORIA.PCA_CODIGO'
    end
    object qConsultaPCA_DESCRICAO: TIBStringField
      FieldName = 'PCA_DESCRICAO'
      Origin = 'PL_CATEGORIA.PCA_DESCRICAO'
      Size = 100
    end
    object qConsultaPCA_DH_CA: TDateTimeField
      FieldName = 'PCA_DH_CA'
      Origin = 'PL_CATEGORIA.PCA_DH_CA'
    end
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Imprimir: TAction
      OnExecute = Act_Btn_ImprimirExecute
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBCategoria: TfrxDBDataset
    UserName = 'frxDBCategoria'
    CloseDataSource = False
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 164
    Top = 183
  end
end
