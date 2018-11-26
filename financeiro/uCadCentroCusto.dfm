inherited FCadCentroCusto: TFCadCentroCusto
  Caption = 'FCadCentroCusto'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1CCO_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CCO_CODIGO'
          end
          object grConsultaDBTableView1CCO_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'CCO_DESCRICAO'
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
        DataField = 'CCO_CODIGO'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 136
        Width = 400
        Height = 21
        DataField = 'CCO_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from centrocusto'
      'where'
      '  CCO_ID = :OLD_CCO_ID')
    InsertSQL.Strings = (
      'insert into centrocusto'
      '  (CCO_ID, CCO_CODIGO, CCO_DESCRICAO, CCO_DH_CA)'
      'values'
      '  (:CCO_ID, :CCO_CODIGO, :CCO_DESCRICAO, :CCO_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from centrocusto '
      'where'
      '  CCO_ID = :CCO_ID')
    SelectSQL.Strings = (
      'select * from centrocusto where cco_id = :FId')
    ModifySQL.Strings = (
      'update centrocusto'
      'set'
      '  CCO_ID = :CCO_ID,'
      '  CCO_CODIGO = :CCO_CODIGO,'
      '  CCO_DESCRICAO = :CCO_DESCRICAO,'
      '  CCO_DH_CA = :CCO_DH_CA'
      'where'
      '  CCO_ID = :OLD_CCO_ID')
    GeneratorField.Field = 'CCO_ID'
    GeneratorField.Generator = 'GEN_CENTROCUSTO'
    object ibCadastroCCO_ID: TIntegerField
      FieldName = 'CCO_ID'
      Origin = 'CENTROCUSTO.CCO_ID'
      Required = True
    end
    object ibCadastroCCO_CODIGO: TIntegerField
      FieldName = 'CCO_CODIGO'
      Origin = 'CENTROCUSTO.CCO_CODIGO'
    end
    object ibCadastroCCO_DESCRICAO: TIBStringField
      FieldName = 'CCO_DESCRICAO'
      Origin = 'CENTROCUSTO.CCO_DESCRICAO'
      Size = 100
    end
    object ibCadastroCCO_DH_CA: TDateTimeField
      FieldName = 'CCO_DH_CA'
      Origin = 'CENTROCUSTO.CCO_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select * from centrocusto order by cco_descricao')
    object qConsultaCCO_ID: TIntegerField
      FieldName = 'CCO_ID'
      Origin = 'CENTROCUSTO.CCO_ID'
      Required = True
    end
    object qConsultaCCO_CODIGO: TIntegerField
      FieldName = 'CCO_CODIGO'
      Origin = 'CENTROCUSTO.CCO_CODIGO'
    end
    object qConsultaCCO_DESCRICAO: TIBStringField
      FieldName = 'CCO_DESCRICAO'
      Origin = 'CENTROCUSTO.CCO_DESCRICAO'
      Size = 100
    end
    object qConsultaCCO_DH_CA: TDateTimeField
      FieldName = 'CCO_DH_CA'
      Origin = 'CENTROCUSTO.CCO_DH_CA'
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
  object frxCentroCusto: TfrxDBDataset
    UserName = 'frxCentroCusto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CCO_ID=CCO_ID'
      'CCO_CODIGO=CCO_CODIGO'
      'CCO_DESCRICAO=CCO_DESCRICAO'
      'CCO_DH_CA=CCO_DH_CA')
    DataSet = qConsulta
    BCDToCurrency = False
    Left = 180
    Top = 167
  end
end
