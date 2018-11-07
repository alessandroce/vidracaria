inherited FCadPlGrupo: TFCadPlGrupo
  Caption = 'FCadPlGrupo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1PGR_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'PGR_CODIGO'
          end
          object grConsultaDBTableView1PGR_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PGR_DESCRICAO'
            Width = 500
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
        Left = 64
        Top = 88
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 64
        Top = 128
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 104
        Width = 100
        Height = 21
        DataField = 'PGR_CODIGO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 144
        Width = 400
        Height = 21
        DataField = 'PGR_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from pl_grupo'
      'where'
      '  PGR_ID = :OLD_PGR_ID')
    InsertSQL.Strings = (
      'insert into pl_grupo'
      '  (PGR_ID, PGR_CODIGO, PGR_DESCRICAO, PGR_DH_CA)'
      'values'
      '  (:PGR_ID, :PGR_CODIGO, :PGR_DESCRICAO, :PGR_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from pl_grupo '
      'where'
      '  PGR_ID = :PGR_ID')
    SelectSQL.Strings = (
      'select * from pl_grupo where pgr_id = :FId')
    ModifySQL.Strings = (
      'update pl_grupo'
      'set'
      '  PGR_ID = :PGR_ID,'
      '  PGR_CODIGO = :PGR_CODIGO,'
      '  PGR_DESCRICAO = :PGR_DESCRICAO,'
      '  PGR_DH_CA = :PGR_DH_CA'
      'where'
      '  PGR_ID = :OLD_PGR_ID')
    GeneratorField.Field = 'PGR_ID'
    GeneratorField.Generator = 'GEN_PL_GRUPO'
    object ibCadastroPGR_ID: TIntegerField
      FieldName = 'PGR_ID'
      Origin = 'PL_GRUPO.PGR_ID'
      Required = True
    end
    object ibCadastroPGR_CODIGO: TIntegerField
      FieldName = 'PGR_CODIGO'
      Origin = 'PL_GRUPO.PGR_CODIGO'
    end
    object ibCadastroPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = 'PL_GRUPO.PGR_DESCRICAO'
      Size = 100
    end
    object ibCadastroPGR_DH_CA: TDateTimeField
      FieldName = 'PGR_DH_CA'
      Origin = 'PL_GRUPO.PGR_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select pl_grupo.pgr_id ID, pl_grupo.* from pl_grupo')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'PL_GRUPO.PGR_ID'
      Required = True
    end
    object qConsultaPGR_ID: TIntegerField
      FieldName = 'PGR_ID'
      Origin = 'PL_GRUPO.PGR_ID'
      Required = True
    end
    object qConsultaPGR_CODIGO: TIntegerField
      FieldName = 'PGR_CODIGO'
      Origin = 'PL_GRUPO.PGR_CODIGO'
    end
    object qConsultaPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = 'PL_GRUPO.PGR_DESCRICAO'
      Size = 100
    end
    object qConsultaPGR_DH_CA: TDateTimeField
      FieldName = 'PGR_DH_CA'
      Origin = 'PL_GRUPO.PGR_DH_CA'
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
  object frxDBGrupo: TfrxDBDataset
    UserName = 'frxDBGrupo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'PGR_ID=PGR_ID'
      'PGR_CODIGO=PGR_CODIGO'
      'PGR_DESCRICAO=PGR_DESCRICAO'
      'PGR_DH_CA=PGR_DH_CA')
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 388
    Top = 151
  end
end
