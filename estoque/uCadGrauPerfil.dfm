inherited FCadGrauPerfil: TFCadGrauPerfil
  Caption = 'FCadGrauPerfil'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsConsulta
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1GRAP_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'GRAP_ID'
          end
          object grConsultaDBTableView1GRAP_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'GRAP_DESCRICAO'
            Width = 500
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
        Left = 72
        Top = 104
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 72
        Top = 144
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 120
        Width = 134
        Height = 21
        DataField = 'GRAP_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 160
        Width = 400
        Height = 21
        DataField = 'GRAP_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from grau_perfil'
      'where'
      '  GRAP_ID = :OLD_GRAP_ID')
    InsertSQL.Strings = (
      'insert into grau_perfil'
      '  (GRAP_ID, GRAP_DESCRICAO, GRAP_DH_CA)'
      'values'
      '  (:GRAP_ID, :GRAP_DESCRICAO, :GRAP_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from grau_perfil '
      'where'
      '  GRAP_ID = :GRAP_ID')
    SelectSQL.Strings = (
      'select * from grau_perfil where grap_id = :FId')
    ModifySQL.Strings = (
      'update grau_perfil'
      'set'
      '  GRAP_ID = :GRAP_ID,'
      '  GRAP_DESCRICAO = :GRAP_DESCRICAO,'
      '  GRAP_DH_CA = :GRAP_DH_CA'
      'where'
      '  GRAP_ID = :OLD_GRAP_ID')
    GeneratorField.Field = 'GRAP_ID'
    GeneratorField.Generator = 'GEN_GRAU_PERFIL'
    object ibCadastroGRAP_ID: TIntegerField
      FieldName = 'GRAP_ID'
      Origin = 'GRAU_PERFIL.GRAP_ID'
      Required = True
    end
    object ibCadastroGRAP_DESCRICAO: TIBStringField
      FieldName = 'GRAP_DESCRICAO'
      Origin = 'GRAU_PERFIL.GRAP_DESCRICAO'
      Size = 100
    end
    object ibCadastroGRAP_DH_CA: TDateTimeField
      FieldName = 'GRAP_DH_CA'
      Origin = 'GRAU_PERFIL.GRAP_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select grau_perfil.grap_id ID, grau_perfil.* from grau_perfil')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'GRAU_PERFIL.GRAP_ID'
      Required = True
    end
    object qConsultaGRAP_ID: TIntegerField
      FieldName = 'GRAP_ID'
      Origin = 'GRAU_PERFIL.GRAP_ID'
      Required = True
    end
    object qConsultaGRAP_DESCRICAO: TIBStringField
      FieldName = 'GRAP_DESCRICAO'
      Origin = 'GRAU_PERFIL.GRAP_DESCRICAO'
      Size = 100
    end
    object qConsultaGRAP_DH_CA: TDateTimeField
      FieldName = 'GRAP_DH_CA'
      Origin = 'GRAU_PERFIL.GRAP_DH_CA'
    end
  end
end
