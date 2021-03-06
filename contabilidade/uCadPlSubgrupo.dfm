inherited FCadPlSubgrupo: TFCadPlSubgrupo
  Caption = 'FCadPlSubgrupo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1PSG_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'PSG_CODIGO'
            Width = 100
          end
          object grConsultaDBTableView1PSG_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PSG_DESCRICAO'
            Width = 300
          end
          object grConsultaDBTableView1GRUPO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'GRUPO'
            Width = 160
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
        Left = 42
        Top = 82
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label2: TLabel [2]
        Left = 40
        Top = 128
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label3: TLabel [3]
        Left = 40
        Top = 168
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 144
        Width = 134
        Height = 21
        DataField = 'PSG_CODIGO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 184
        Width = 400
        Height = 21
        DataField = 'PSG_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 40
        Top = 96
        Width = 250
        Height = 21
        DataField = 'PGR_DESCRICAO'
        DataSource = dsPlanoContas
        Enabled = False
        TabOrder = 3
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from pl_subgrupo'
      'where'
      '  PSG_ID = :OLD_PSG_ID')
    InsertSQL.Strings = (
      'insert into pl_subgrupo'
      '  (PSG_ID, PSG_PGR_ID, PSG_CODIGO, PSG_DESCRICAO, PSG_DH_CA)'
      'values'
      
        '  (:PSG_ID, :PSG_PGR_ID, :PSG_CODIGO, :PSG_DESCRICAO, :PSG_DH_CA' +
        ')')
    RefreshSQL.Strings = (
      'Select *'
      'from pl_subgrupo '
      'where'
      '  PSG_ID = :PSG_ID')
    SelectSQL.Strings = (
      'select * from pl_subgrupo where psg_id = :FId')
    ModifySQL.Strings = (
      'update pl_subgrupo'
      'set'
      '  PSG_ID = :PSG_ID,'
      '  PSG_PGR_ID = :PSG_PGR_ID,'
      '  PSG_CODIGO = :PSG_CODIGO,'
      '  PSG_DESCRICAO = :PSG_DESCRICAO,'
      '  PSG_DH_CA = :PSG_DH_CA'
      'where'
      '  PSG_ID = :OLD_PSG_ID')
    GeneratorField.Field = 'PSG_ID'
    GeneratorField.Generator = 'GEN_PL_SUBGRUPO'
    object ibCadastroPSG_ID: TIntegerField
      FieldName = 'PSG_ID'
      Origin = 'PL_SUBGRUPO.PSG_ID'
      Required = True
    end
    object ibCadastroPSG_PGR_ID: TIntegerField
      FieldName = 'PSG_PGR_ID'
      Origin = 'PL_SUBGRUPO.PSG_PGR_ID'
      Required = True
    end
    object ibCadastroPSG_CODIGO: TIntegerField
      FieldName = 'PSG_CODIGO'
      Origin = 'PL_SUBGRUPO.PSG_CODIGO'
    end
    object ibCadastroPSG_DESCRICAO: TIBStringField
      FieldName = 'PSG_DESCRICAO'
      Origin = 'PL_SUBGRUPO.PSG_DESCRICAO'
      Size = 100
    end
    object ibCadastroPSG_DH_CA: TDateTimeField
      FieldName = 'PSG_DH_CA'
      Origin = 'PL_SUBGRUPO.PSG_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select pl_subgrupo.psg_id ID,'
      '       pl_subgrupo.*,'
      '       (select pl_grupo.pgr_descricao from pl_grupo'
      '       where pl_grupo.pgr_id=pl_subgrupo.psg_pgr_id) grupo'
      '  from pl_subgrupo')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'PL_SUBGRUPO.PSG_ID'
      Required = True
    end
    object qConsultaPSG_ID: TIntegerField
      FieldName = 'PSG_ID'
      Origin = 'PL_SUBGRUPO.PSG_ID'
      Required = True
    end
    object qConsultaPSG_PGR_ID: TIntegerField
      FieldName = 'PSG_PGR_ID'
      Origin = 'PL_SUBGRUPO.PSG_PGR_ID'
      Required = True
    end
    object qConsultaPSG_CODIGO: TIntegerField
      FieldName = 'PSG_CODIGO'
      Origin = 'PL_SUBGRUPO.PSG_CODIGO'
    end
    object qConsultaPSG_DESCRICAO: TIBStringField
      FieldName = 'PSG_DESCRICAO'
      Origin = 'PL_SUBGRUPO.PSG_DESCRICAO'
      Size = 100
    end
    object qConsultaPSG_DH_CA: TDateTimeField
      FieldName = 'PSG_DH_CA'
      Origin = 'PL_SUBGRUPO.PSG_DH_CA'
    end
    object qConsultaGRUPO: TIBStringField
      FieldName = 'GRUPO'
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
  object qGrupo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      '  from pl_grupo'
      ' order by pgr_codigo')
    Left = 368
    Top = 64
    object qGrupoPGR_ID: TIntegerField
      FieldName = 'PGR_ID'
      Origin = 'PL_GRUPO.PGR_ID'
      Required = True
    end
    object qGrupoPGR_CODIGO: TIntegerField
      FieldName = 'PGR_CODIGO'
      Origin = 'PL_GRUPO.PGR_CODIGO'
    end
    object qGrupoPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = 'PL_GRUPO.PGR_DESCRICAO'
      Size = 100
    end
    object qGrupoPGR_DH_CA: TDateTimeField
      FieldName = 'PGR_DH_CA'
      Origin = 'PL_GRUPO.PGR_DH_CA'
    end
  end
  object dsGrupo: TDataSource
    DataSet = qGrupo
    Left = 416
    Top = 64
  end
  object frxDBSubgrupo: TfrxDBDataset
    UserName = 'frxDBSubgrupo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'PSG_ID=PSG_ID'
      'PSG_PGR_ID=PSG_PGR_ID'
      'PSG_CODIGO=PSG_CODIGO'
      'PSG_DESCRICAO=PSG_DESCRICAO'
      'PSG_DH_CA=PSG_DH_CA'
      'GRUPO=GRUPO')
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 412
    Top = 175
  end
  object qPlanoContas: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pl_grupo.pgr_descricao'
      '  from pl_subgrupo'
      ' left join pl_grupo on (pl_grupo.pgr_id=pl_subgrupo.psg_pgr_id)'
      ' where pl_subgrupo.psg_id = :psg_id')
    Left = 368
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psg_id'
        ParamType = ptUnknown
      end>
    object qPlanoContasPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = 'PL_GRUPO.PGR_DESCRICAO'
      Size = 100
    end
  end
  object dsPlanoContas: TDataSource
    DataSet = qPlanoContas
    Left = 416
    Top = 112
  end
end
