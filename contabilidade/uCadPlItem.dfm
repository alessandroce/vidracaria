inherited FCadPlItem: TFCadPlItem
  Width = 800
  Caption = 'FCadPlItem'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Width = 784
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Width = 776
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1PIT_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'PIT_CODIGO'
            Width = 100
          end
          object grConsultaDBTableView1PIT_CODIGOREDUZIDO: TcxGridDBColumn
            Caption = 'Cod. Reduzido'
            DataBinding.FieldName = 'PIT_CODIGOREDUZIDO'
            Width = 100
          end
          object grConsultaDBTableView1PIT_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PIT_DESCRICAO'
            Width = 300
          end
          object grConsultaDBTableView1PSG_DESCRICAO: TcxGridDBColumn
            Caption = 'Subgrupo'
            DataBinding.FieldName = 'PSG_DESCRICAO'
            Width = 300
          end
          object grConsultaDBTableView1PGR_DESCRICAO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'PGR_DESCRICAO'
            Width = 300
          end
        end
      end
      inherited pnBarraPg: TPanel
        Width = 776
        inherited btSair: TSpeedButton
          Left = 716
        end
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Width = 776
      end
    end
    inherited tsCadastro: TTabSheet
      inherited Bevel1: TBevel
        Width = 776
      end
      object Label2: TLabel [1]
        Left = 18
        Top = 122
        Width = 46
        Height = 13
        Caption = 'Subgrupo'
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 232
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label4: TLabel [3]
        Left = 160
        Top = 232
        Width = 70
        Height = 13
        Caption = 'Cod. Reduzido'
        FocusControl = DBEdit2
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 280
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label6: TLabel [5]
        Left = 18
        Top = 174
        Width = 95
        Height = 13
        Caption = 'Categoria para DRE'
      end
      object Label1: TLabel [6]
        Left = 18
        Top = 72
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      inherited Panel1: TPanel
        Width = 776
        TabOrder = 5
        inherited btSalvar: TSpeedButton
          Left = 716
        end
        inherited btCancelar: TSpeedButton
          Left = 657
        end
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 18
        Top = 138
        Width = 250
        Height = 21
        DataField = 'PIT_PSG_ID'
        DataSource = dsCadastro
        KeyField = 'PSG_ID'
        ListField = 'PSG_DESCRICAO'
        ListSource = dsSubgrupo
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 248
        Width = 134
        Height = 21
        DataField = 'PIT_CODIGO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 248
        Width = 134
        Height = 21
        DataField = 'PIT_CODIGOREDUZIDO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 296
        Width = 400
        Height = 21
        DataField = 'PIT_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 18
        Top = 190
        Width = 250
        Height = 21
        DataField = 'PIT_PCA_ID'
        DataSource = dsCadastro
        KeyField = 'PCA_ID'
        ListField = 'PCA_DESCRICAO'
        ListSource = dsCategoria
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 18
        Top = 88
        Width = 250
        Height = 21
        DataField = 'PGR_DESCRICAO'
        DataSource = dsGrupo
        TabOrder = 6
      end
    end
  end
  inherited pnBarraForm: TPanel
    Width = 784
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from pl_item'
      'where'
      '  PIT_ID = :OLD_PIT_ID')
    InsertSQL.Strings = (
      'insert into pl_item'
      
        '  (PIT_ID, PIT_PSG_ID, PIT_PCA_ID, PIT_CODIGO, PIT_CODIGOREDUZID' +
        'O, '
      'PIT_DESCRICAO, '
      '   PIT_DH_CA)'
      'values'
      
        '  (:PIT_ID, :PIT_PSG_ID, :PIT_PCA_ID, :PIT_CODIGO, :PIT_CODIGORE' +
        'DUZIDO, '
      '   :PIT_DESCRICAO, :PIT_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from pl_item '
      'where'
      '  PIT_ID = :PIT_ID')
    SelectSQL.Strings = (
      'select * from pl_item where pl_item.pit_id = :FId')
    ModifySQL.Strings = (
      'update pl_item'
      'set'
      '  PIT_ID = :PIT_ID,'
      '  PIT_PSG_ID = :PIT_PSG_ID,'
      '  PIT_PCA_ID = :PIT_PCA_ID,'
      '  PIT_CODIGO = :PIT_CODIGO,'
      '  PIT_CODIGOREDUZIDO = :PIT_CODIGOREDUZIDO,'
      '  PIT_DESCRICAO = :PIT_DESCRICAO,'
      '  PIT_DH_CA = :PIT_DH_CA'
      'where'
      '  PIT_ID = :OLD_PIT_ID')
    GeneratorField.Field = 'PIT_ID'
    GeneratorField.Generator = 'GEN_PL_ITEM'
    object ibCadastroPIT_ID: TIntegerField
      FieldName = 'PIT_ID'
      Origin = 'PL_ITEM.PIT_ID'
      Required = True
    end
    object ibCadastroPIT_PSG_ID: TIntegerField
      FieldName = 'PIT_PSG_ID'
      Origin = 'PL_ITEM.PIT_PSG_ID'
    end
    object ibCadastroPIT_PCA_ID: TIntegerField
      FieldName = 'PIT_PCA_ID'
      Origin = 'PL_ITEM.PIT_PCA_ID'
    end
    object ibCadastroPIT_CODIGO: TIntegerField
      FieldName = 'PIT_CODIGO'
      Origin = 'PL_ITEM.PIT_CODIGO'
    end
    object ibCadastroPIT_CODIGOREDUZIDO: TIntegerField
      FieldName = 'PIT_CODIGOREDUZIDO'
      Origin = 'PL_ITEM.PIT_CODIGOREDUZIDO'
    end
    object ibCadastroPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Origin = 'PL_ITEM.PIT_DESCRICAO'
      Size = 100
    end
    object ibCadastroPIT_DH_CA: TDateTimeField
      FieldName = 'PIT_DH_CA'
      Origin = 'PL_ITEM.PIT_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select pl_item.pit_id ID,'
      '       pl_item.*,'
      '       pl_subgrupo.psg_descricao,'
      '       pl_grupo.pgr_descricao'
      '  from pl_item'
      
        ' left join pl_subgrupo on (pl_subgrupo.psg_id=pl_item.pit_psg_id' +
        ')'
      ' left join pl_grupo on (pl_grupo.pgr_id=pl_subgrupo.psg_pgr_id)'
      ' order by pl_item.pit_descricao')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'PL_ITEM.PIT_ID'
      Required = True
    end
    object qConsultaPIT_ID: TIntegerField
      FieldName = 'PIT_ID'
      Origin = 'PL_ITEM.PIT_ID'
      Required = True
    end
    object qConsultaPIT_PSG_ID: TIntegerField
      FieldName = 'PIT_PSG_ID'
      Origin = 'PL_ITEM.PIT_PSG_ID'
    end
    object qConsultaPIT_PCA_ID: TIntegerField
      FieldName = 'PIT_PCA_ID'
      Origin = 'PL_ITEM.PIT_PCA_ID'
    end
    object qConsultaPIT_CODIGO: TIntegerField
      FieldName = 'PIT_CODIGO'
      Origin = 'PL_ITEM.PIT_CODIGO'
    end
    object qConsultaPIT_CODIGOREDUZIDO: TIntegerField
      FieldName = 'PIT_CODIGOREDUZIDO'
      Origin = 'PL_ITEM.PIT_CODIGOREDUZIDO'
    end
    object qConsultaPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Origin = 'PL_ITEM.PIT_DESCRICAO'
      Size = 100
    end
    object qConsultaPIT_DH_CA: TDateTimeField
      FieldName = 'PIT_DH_CA'
      Origin = 'PL_ITEM.PIT_DH_CA'
    end
    object qConsultaPSG_DESCRICAO: TIBStringField
      FieldName = 'PSG_DESCRICAO'
      Origin = 'PL_SUBGRUPO.PSG_DESCRICAO'
      Size = 100
    end
    object qConsultaPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = 'PL_GRUPO.PGR_DESCRICAO'
      Size = 100
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
  object qSubgrupo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select *'
      '  from pl_subgrupo'
      ' order by psg_codigo')
    Left = 368
    Top = 120
    object qSubgrupoPSG_ID: TIntegerField
      FieldName = 'PSG_ID'
      Origin = 'PL_SUBGRUPO.PSG_ID'
      Required = True
    end
    object qSubgrupoPSG_PGR_ID: TIntegerField
      FieldName = 'PSG_PGR_ID'
      Origin = 'PL_SUBGRUPO.PSG_PGR_ID'
      Required = True
    end
    object qSubgrupoPSG_CODIGO: TIntegerField
      FieldName = 'PSG_CODIGO'
      Origin = 'PL_SUBGRUPO.PSG_CODIGO'
    end
    object qSubgrupoPSG_DESCRICAO: TIBStringField
      FieldName = 'PSG_DESCRICAO'
      Origin = 'PL_SUBGRUPO.PSG_DESCRICAO'
      Size = 100
    end
    object qSubgrupoPSG_DH_CA: TDateTimeField
      FieldName = 'PSG_DH_CA'
      Origin = 'PL_SUBGRUPO.PSG_DH_CA'
    end
  end
  object dsSubgrupo: TDataSource
    DataSet = qSubgrupo
    Left = 416
    Top = 120
  end
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from pl_categoria order by pl_categoria.pca_descricao')
    Left = 368
    Top = 168
    object qCategoriaPCA_ID: TIntegerField
      FieldName = 'PCA_ID'
      Origin = 'PL_CATEGORIA.PCA_ID'
      Required = True
    end
    object qCategoriaPCA_CODIGO: TIntegerField
      FieldName = 'PCA_CODIGO'
      Origin = 'PL_CATEGORIA.PCA_CODIGO'
    end
    object qCategoriaPCA_DESCRICAO: TIBStringField
      FieldName = 'PCA_DESCRICAO'
      Origin = 'PL_CATEGORIA.PCA_DESCRICAO'
      Size = 100
    end
    object qCategoriaPCA_DH_CA: TDateTimeField
      FieldName = 'PCA_DH_CA'
      Origin = 'PL_CATEGORIA.PCA_DH_CA'
    end
  end
  object dsCategoria: TDataSource
    DataSet = qCategoria
    Left = 416
    Top = 168
  end
  object qGrupo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    DataSource = dsSubgrupo
    SQL.Strings = (
      'select distinct pl_grupo.pgr_descricao'
      '  from pl_grupo'
      ' join pl_subgrupo on (pl_subgrupo.psg_pgr_id=pl_grupo.pgr_id)'
      ' where pl_grupo.pgr_id = :PSG_PGR_ID'
      ' order by pl_grupo.pgr_descricao')
    Left = 368
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PSG_PGR_ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qGrupoPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = 'PL_GRUPO.PGR_DESCRICAO'
      Size = 100
    end
  end
  object dsGrupo: TDataSource
    DataSet = qGrupo
    Left = 416
    Top = 64
  end
  object frxDBItem: TfrxDBDataset
    UserName = 'frxDBItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'PIT_ID=PIT_ID'
      'PIT_PSG_ID=PIT_PSG_ID'
      'PIT_PCA_ID=PIT_PCA_ID'
      'PIT_CODIGO=PIT_CODIGO'
      'PIT_CODIGOREDUZIDO=PIT_CODIGOREDUZIDO'
      'PIT_DESCRICAO=PIT_DESCRICAO'
      'PIT_DH_CA=PIT_DH_CA'
      'PSG_DESCRICAO=PSG_DESCRICAO'
      'PGR_DESCRICAO=PGR_DESCRICAO')
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 324
    Top = 175
  end
end
