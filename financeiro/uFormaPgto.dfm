inherited FCadFormaPgto: TFCadFormaPgto
  Left = 304
  Top = 168
  Width = 800
  Caption = 'FCadFormaPgto'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Width = 784
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Width = 776
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1FOP_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'FOP_ID'
          end
          object grConsultaDBTableView1DESC_TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'DESC_TIPO'
            Width = 95
          end
          object grConsultaDBTableView1FOP_DESCRICAO: TcxGridDBColumn
            Caption = 'Forma Pgto'
            DataBinding.FieldName = 'FOP_DESCRICAO'
            Width = 300
          end
          object grConsultaDBTableView1DESC_BANCO: TcxGridDBColumn
            Caption = 'Banco'
            DataBinding.FieldName = 'DESC_BANCO'
            Width = 300
          end
        end
      end
      inherited pnBarraPg: TPanel
        Width = 776
        inherited btSair: TSpeedButton
          Left = 716
        end
        inherited btImprimir: TSpeedButton
          Visible = False
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
      object Label1: TLabel [1]
        Left = 39
        Top = 128
        Width = 53
        Height = 13
        Caption = 'Forma pgto'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 39
        Top = 176
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      inherited Panel1: TPanel
        Width = 776
        inherited btSalvar: TSpeedButton
          Left = 716
        end
        inherited btCancelar: TSpeedButton
          Left = 657
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 39
        Top = 64
        Width = 497
        Height = 41
        Caption = '  Tipo  '
        Columns = 4
        DataField = 'FOP_TIPO'
        DataSource = dsCadastro
        Items.Strings = (
          'Caixa'
          'Banco'
          'Pagar/Receber'
          'Boleto')
        TabOrder = 1
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit1: TDBEdit
        Left = 39
        Top = 144
        Width = 400
        Height = 21
        DataField = 'FOP_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 39
        Top = 192
        Width = 401
        Height = 21
        DataField = 'FOP_BANCO_ID'
        DataSource = dsCadastro
        KeyField = 'BANC_ID'
        ListField = 'BANC_DESCRICAO'
        ListSource = dsBanco
        TabOrder = 3
      end
    end
  end
  inherited pnBarraForm: TPanel
    Width = 784
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from forma_pgto'
      'where'
      '  FOP_ID = :OLD_FOP_ID')
    InsertSQL.Strings = (
      'insert into forma_pgto'
      '  (FOP_BANCO_ID, FOP_DESCRICAO, FOP_DH_CA, FOP_ID, FOP_TIPO)'
      'values'
      
        '  (:FOP_BANCO_ID, :FOP_DESCRICAO, :FOP_DH_CA, :FOP_ID, :FOP_TIPO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  FOP_ID,'
      '  FOP_TIPO,'
      '  FOP_DESCRICAO,'
      '  FOP_BANCO_ID,'
      '  FOP_DH_CA'
      'from forma_pgto '
      'where'
      '  FOP_ID = :FOP_ID')
    SelectSQL.Strings = (
      'select * from forma_pgto where fop_id = :FId')
    ModifySQL.Strings = (
      'update forma_pgto'
      'set'
      '  FOP_BANCO_ID = :FOP_BANCO_ID,'
      '  FOP_DESCRICAO = :FOP_DESCRICAO,'
      '  FOP_DH_CA = :FOP_DH_CA,'
      '  FOP_ID = :FOP_ID,'
      '  FOP_TIPO = :FOP_TIPO'
      'where'
      '  FOP_ID = :OLD_FOP_ID')
    GeneratorField.Field = 'FOP_ID'
    GeneratorField.Generator = 'GEN_FORMA_PGTO'
    object ibCadastroFOP_ID: TIntegerField
      FieldName = 'FOP_ID'
      Origin = '"FORMA_PGTO"."FOP_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroFOP_TIPO: TIntegerField
      FieldName = 'FOP_TIPO'
      Origin = '"FORMA_PGTO"."FOP_TIPO"'
    end
    object ibCadastroFOP_DESCRICAO: TIBStringField
      FieldName = 'FOP_DESCRICAO'
      Origin = '"FORMA_PGTO"."FOP_DESCRICAO"'
      Size = 100
    end
    object ibCadastroFOP_BANCO_ID: TIntegerField
      FieldName = 'FOP_BANCO_ID'
      Origin = '"FORMA_PGTO"."FOP_BANCO_ID"'
    end
    object ibCadastroFOP_DH_CA: TDateTimeField
      FieldName = 'FOP_DH_CA'
      Origin = '"FORMA_PGTO"."FOP_DH_CA"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select forma_pgto.fop_id ID,'
      '       forma_pgto.*,'
      '       case when(forma_pgto.FOP_TIPO=1) THEN '#39'CAIXA'#39
      '            when(forma_pgto.FOP_TIPO=2) THEN '#39'BANCO'#39
      '            when(forma_pgto.FOP_TIPO=3) THEN '#39'PAGAR/RECEBER'#39
      '            when(forma_pgto.FOP_TIPO=4) THEN '#39'BOLETO'#39
      '       end desc_tipo,'
      '       bancos.BANC_DESCRICAO desc_banco'
      '  from forma_pgto'
      ' left Join bancos on (bancos.BANC_ID=FORMA_PGTO.FOP_BANCO_ID)')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"FORMA_PGTO"."FOP_ID"'
      Required = True
    end
    object qConsultaFOP_ID: TIntegerField
      FieldName = 'FOP_ID'
      Origin = '"FORMA_PGTO"."FOP_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaFOP_TIPO: TIntegerField
      FieldName = 'FOP_TIPO'
      Origin = '"FORMA_PGTO"."FOP_TIPO"'
    end
    object qConsultaFOP_DESCRICAO: TIBStringField
      FieldName = 'FOP_DESCRICAO'
      Origin = '"FORMA_PGTO"."FOP_DESCRICAO"'
      Size = 100
    end
    object qConsultaFOP_BANCO_ID: TIntegerField
      FieldName = 'FOP_BANCO_ID'
      Origin = '"FORMA_PGTO"."FOP_BANCO_ID"'
    end
    object qConsultaFOP_DH_CA: TDateTimeField
      FieldName = 'FOP_DH_CA'
      Origin = '"FORMA_PGTO"."FOP_DH_CA"'
    end
    object qConsultaDESC_TIPO: TIBStringField
      FieldName = 'DESC_TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 13
    end
    object qConsultaDESC_BANCO: TIBStringField
      FieldName = 'DESC_BANCO'
      Origin = '"BANCOS"."BANC_DESCRICAO"'
      Size = 100
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qBanco: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    SQL.Strings = (
      'select * from bancos order by banc_descricao')
    Left = 328
    Top = 304
    object qBancoBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Origin = '"BANCOS"."BANC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qBancoBANC_DESCRICAO: TIBStringField
      FieldName = 'BANC_DESCRICAO'
      Origin = '"BANCOS"."BANC_DESCRICAO"'
      Size = 100
    end
    object qBancoBANC_AGENCIA_CODIGO: TIBStringField
      FieldName = 'BANC_AGENCIA_CODIGO'
      Origin = '"BANCOS"."BANC_AGENCIA_CODIGO"'
      Size = 30
    end
    object qBancoBANC_AGENCIA_NOME: TIBStringField
      FieldName = 'BANC_AGENCIA_NOME'
      Origin = '"BANCOS"."BANC_AGENCIA_NOME"'
      Size = 100
    end
    object qBancoBANC_CONTA_CODIGO: TIBStringField
      FieldName = 'BANC_CONTA_CODIGO'
      Origin = '"BANCOS"."BANC_CONTA_CODIGO"'
      Size = 30
    end
    object qBancoBANC_CONTA_TITULAR: TIBStringField
      FieldName = 'BANC_CONTA_TITULAR'
      Origin = '"BANCOS"."BANC_CONTA_TITULAR"'
      Size = 100
    end
    object qBancoBANC_CONTA_TIPO: TIntegerField
      FieldName = 'BANC_CONTA_TIPO'
      Origin = '"BANCOS"."BANC_CONTA_TIPO"'
    end
    object qBancoBANC_ATIVO: TIBStringField
      FieldName = 'BANC_ATIVO'
      Origin = '"BANCOS"."BANC_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qBancoBANC_DH_CA: TDateTimeField
      FieldName = 'BANC_DH_CA'
      Origin = '"BANCOS"."BANC_DH_CA"'
    end
  end
  object dsBanco: TDataSource
    DataSet = qBanco
    Left = 376
    Top = 304
  end
end
