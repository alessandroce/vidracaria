inherited FCadPlItem: TFCadPlItem
  Caption = 'FCadPlItem'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
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
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label2: TLabel [1]
        Left = 19
        Top = 160
        Width = 46
        Height = 13
        Caption = 'Subgrupo'
      end
      object Label3: TLabel [2]
        Left = 19
        Top = 76
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label4: TLabel [3]
        Left = 104
        Top = 76
        Width = 70
        Height = 13
        Caption = 'Cod. Reduzido'
        FocusControl = DBEdit2
      end
      object Label5: TLabel [4]
        Left = 19
        Top = 245
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label6: TLabel [5]
        Left = 19
        Top = 200
        Width = 95
        Height = 13
        Caption = 'Categoria para DRE'
      end
      object Label1: TLabel [6]
        Left = 19
        Top = 120
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      inherited Panel1: TPanel
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 19
        Top = 92
        Width = 79
        Height = 21
        DataField = 'PIT_CODIGO'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 92
        Width = 79
        Height = 21
        DataField = 'PIT_CODIGOREDUZIDO'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 19
        Top = 261
        Width = 500
        Height = 21
        DataField = 'PIT_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 19
        Top = 216
        Width = 400
        Height = 21
        DataField = 'PIT_PCA_ID'
        DataSource = dsCadastro
        KeyField = 'PCA_ID'
        ListField = 'PCA_DESCRICAO'
        ListSource = dsCategoria
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 19
        Top = 134
        Width = 400
        Height = 21
        DataField = 'PGR_DESCRICAO'
        DataSource = dsPlanoContas
        Enabled = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 19
        Top = 174
        Width = 400
        Height = 21
        DataField = 'PSG_DESCRICAO'
        DataSource = dsPlanoContas
        Enabled = False
        TabOrder = 3
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    OnNewRecord = ibCadastroNewRecord
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
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from pl_categoria order by pl_categoria.pca_descricao')
    Left = 592
    Top = 48
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
    Left = 640
    Top = 48
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
    Left = 548
    Top = 55
  end
  object qPlanoContas: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pl_subgrupo.psg_descricao,'
      '       pl_grupo.pgr_descricao'
      '  from pl_item'
      
        ' left join pl_subgrupo on (pl_subgrupo.psg_id=pl_item.pit_psg_id' +
        ')'
      ' left join pl_grupo on (pl_grupo.pgr_id=pl_subgrupo.psg_pgr_id)'
      ' where pl_item.pit_id = :pit_id')
    Left = 592
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pit_id'
        ParamType = ptUnknown
      end>
    object qPlanoContasPSG_DESCRICAO: TIBStringField
      FieldName = 'PSG_DESCRICAO'
      Origin = 'PL_SUBGRUPO.PSG_DESCRICAO'
      Size = 100
    end
    object qPlanoContasPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = 'PL_GRUPO.PGR_DESCRICAO'
      Size = 100
    end
  end
  object dsPlanoContas: TDataSource
    DataSet = qPlanoContas
    Left = 632
    Top = 104
  end
end
