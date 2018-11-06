inherited FCadGrupoPerfil: TFCadGrupoPerfil
  Caption = 'FCadGrupoPerfil'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsConsulta
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1GRPE_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'GRPE_ID'
          end
          object grConsultaDBTableView1GRPE_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'GRPE_DESCRICAO'
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
        Left = 48
        Top = 96
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 48
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      inherited Panel1: TPanel
        inherited btCancelar: TSpeedButton
          Left = 456
        end
      end
      object DBEdit1: TDBEdit
        Left = 48
        Top = 112
        Width = 134
        Height = 21
        DataField = 'GRPE_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 48
        Top = 152
        Width = 400
        Height = 21
        DataField = 'GRPE_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from grupo_perfil'
      'where'
      '  GRPE_ID = :OLD_GRPE_ID')
    InsertSQL.Strings = (
      'insert into grupo_perfil'
      '  (GRPE_ID, GRPE_DESCRICAO, GRPE_DH_CA)'
      'values'
      '  (:GRPE_ID, :GRPE_DESCRICAO, :GRPE_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from grupo_perfil '
      'where'
      '  GRPE_ID = :GRPE_ID')
    SelectSQL.Strings = (
      'select * from grupo_perfil where grupo_perfil.grpe_id = :FId')
    ModifySQL.Strings = (
      'update grupo_perfil'
      'set'
      '  GRPE_ID = :GRPE_ID,'
      '  GRPE_DESCRICAO = :GRPE_DESCRICAO,'
      '  GRPE_DH_CA = :GRPE_DH_CA'
      'where'
      '  GRPE_ID = :OLD_GRPE_ID')
    GeneratorField.Field = 'GRPE_ID'
    GeneratorField.Generator = 'GEN_GRUPO_PERFIL'
    object ibCadastroGRPE_ID: TIntegerField
      FieldName = 'GRPE_ID'
      Origin = 'GRUPO_PERFIL.GRPE_ID'
      Required = True
    end
    object ibCadastroGRPE_DESCRICAO: TIBStringField
      FieldName = 'GRPE_DESCRICAO'
      Origin = 'GRUPO_PERFIL.GRPE_DESCRICAO'
      Size = 100
    end
    object ibCadastroGRPE_DH_CA: TDateTimeField
      FieldName = 'GRPE_DH_CA'
      Origin = 'GRUPO_PERFIL.GRPE_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select grupo_perfil.grpe_id ID, grupo_perfil.* from grupo_perfil')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'GRUPO_PERFIL.GRPE_ID'
      Required = True
    end
    object qConsultaGRPE_ID: TIntegerField
      FieldName = 'GRPE_ID'
      Origin = 'GRUPO_PERFIL.GRPE_ID'
      Required = True
    end
    object qConsultaGRPE_DESCRICAO: TIBStringField
      FieldName = 'GRPE_DESCRICAO'
      Origin = 'GRUPO_PERFIL.GRPE_DESCRICAO'
      Size = 100
    end
    object qConsultaGRPE_DH_CA: TDateTimeField
      FieldName = 'GRPE_DH_CA'
      Origin = 'GRUPO_PERFIL.GRPE_DH_CA'
    end
  end
end
