inherited FCadBancos: TFCadBancos
  Left = 205
  Top = 168
  Height = 502
  Caption = 'FCadBancos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 434
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Height = 336
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1BANC_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'BANC_ID'
          end
          object grConsultaDBTableView1BANC_DESCRICAO: TcxGridDBColumn
            Caption = 'Banco'
            DataBinding.FieldName = 'BANC_DESCRICAO'
            Width = 300
          end
          object grConsultaDBTableView1BANC_AGENCIA_CODIGO: TcxGridDBColumn
            Caption = 'Ag'#234'ncia'
            DataBinding.FieldName = 'BANC_AGENCIA_CODIGO'
            Width = 80
          end
          object grConsultaDBTableView1BANC_AGENCIA_NOME: TcxGridDBColumn
            Caption = 'Local Ag'#234'ncioa'
            DataBinding.FieldName = 'BANC_AGENCIA_NOME'
            Width = 300
          end
          object grConsultaDBTableView1BANC_CONTA_CODIGO: TcxGridDBColumn
            Caption = 'Conta'
            DataBinding.FieldName = 'BANC_CONTA_CODIGO'
          end
          object grConsultaDBTableView1BANC_CONTA_TITULAR: TcxGridDBColumn
            Caption = 'Titular'
            DataBinding.FieldName = 'BANC_CONTA_TITULAR'
            Width = 300
          end
          object grConsultaDBTableView1BANC_CONTA_TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'BANC_CONTA_TIPO'
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
      inherited sbBarraStatus: TStatusBar
        Top = 386
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [1]
        Left = 48
        Top = 120
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 48
        Top = 160
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [3]
        Left = 192
        Top = 160
        Width = 26
        Height = 13
        Caption = 'Local'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [4]
        Left = 48
        Top = 200
        Width = 28
        Height = 13
        Caption = 'Conta'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [5]
        Left = 192
        Top = 200
        Width = 29
        Height = 13
        Caption = 'Titular'
        FocusControl = DBEdit5
      end
      object Label13: TLabel [6]
        Left = 122
        Top = 80
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object Label12: TLabel [7]
        Left = 48
        Top = 80
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object DBEdit1: TDBEdit
        Left = 48
        Top = 136
        Width = 441
        Height = 21
        DataField = 'BANC_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 48
        Top = 176
        Width = 137
        Height = 21
        DataField = 'BANC_AGENCIA_CODIGO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 192
        Top = 176
        Width = 300
        Height = 21
        DataField = 'BANC_AGENCIA_NOME'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 48
        Top = 216
        Width = 137
        Height = 21
        DataField = 'BANC_CONTA_CODIGO'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 192
        Top = 216
        Width = 300
        Height = 21
        DataField = 'BANC_CONTA_TITULAR'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object btCACliente: TBitBtn
        Left = 98
        Top = 95
        Width = 22
        Height = 22
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btCAClienteClick
      end
      object DBEdit7: TDBEdit
        Left = 48
        Top = 96
        Width = 50
        Height = 21
        DataField = 'BFEB_CODIGO'
        DataSource = dsBanco
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 120
        Top = 96
        Width = 368
        Height = 21
        DataField = 'BFEB_DESCRICAO'
        DataSource = dsBanco
        TabOrder = 8
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    AfterEdit = ibCadastroAfterEdit
    DeleteSQL.Strings = (
      'delete from bancos'
      'where'
      '  BANC_ID = :OLD_BANC_ID')
    InsertSQL.Strings = (
      'insert into bancos'
      '  (BANC_ID, BANC_DESCRICAO, BANC_AGENCIA_CODIGO, '
      'BANC_AGENCIA_NOME, BANC_CONTA_CODIGO, '
      '   BANC_CONTA_TITULAR, BANC_CONTA_TIPO, BANC_ATIVO, BANC_DH_CA, '
      'BANC_BANCO_ID)'
      'values'
      '  (:BANC_ID, :BANC_DESCRICAO, :BANC_AGENCIA_CODIGO, '
      ':BANC_AGENCIA_NOME, '
      '   :BANC_CONTA_CODIGO, :BANC_CONTA_TITULAR, :BANC_CONTA_TIPO, '
      ':BANC_ATIVO, '
      '   :BANC_DH_CA, :BANC_BANCO_ID)')
    RefreshSQL.Strings = (
      'Select *'
      'from bancos '
      'where'
      '  BANC_ID = :BANC_ID')
    SelectSQL.Strings = (
      'select * from bancos where banc_id = :FId')
    ModifySQL.Strings = (
      'update bancos'
      'set'
      '  BANC_ID = :BANC_ID,'
      '  BANC_DESCRICAO = :BANC_DESCRICAO,'
      '  BANC_AGENCIA_CODIGO = :BANC_AGENCIA_CODIGO,'
      '  BANC_AGENCIA_NOME = :BANC_AGENCIA_NOME,'
      '  BANC_CONTA_CODIGO = :BANC_CONTA_CODIGO,'
      '  BANC_CONTA_TITULAR = :BANC_CONTA_TITULAR,'
      '  BANC_CONTA_TIPO = :BANC_CONTA_TIPO,'
      '  BANC_ATIVO = :BANC_ATIVO,'
      '  BANC_DH_CA = :BANC_DH_CA,'
      '  BANC_BANCO_ID = :BANC_BANCO_ID'
      'where'
      '  BANC_ID = :OLD_BANC_ID')
    GeneratorField.Field = 'BANC_ID'
    GeneratorField.Generator = 'GEN_BANCOS'
    object ibCadastroBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Origin = '"BANCOS"."BANC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroBANC_DESCRICAO: TIBStringField
      FieldName = 'BANC_DESCRICAO'
      Origin = '"BANCOS"."BANC_DESCRICAO"'
      Size = 100
    end
    object ibCadastroBANC_AGENCIA_CODIGO: TIBStringField
      FieldName = 'BANC_AGENCIA_CODIGO'
      Origin = '"BANCOS"."BANC_AGENCIA_CODIGO"'
      Size = 30
    end
    object ibCadastroBANC_AGENCIA_NOME: TIBStringField
      FieldName = 'BANC_AGENCIA_NOME'
      Origin = '"BANCOS"."BANC_AGENCIA_NOME"'
      Size = 100
    end
    object ibCadastroBANC_CONTA_CODIGO: TIBStringField
      FieldName = 'BANC_CONTA_CODIGO'
      Origin = '"BANCOS"."BANC_CONTA_CODIGO"'
      Size = 30
    end
    object ibCadastroBANC_CONTA_TITULAR: TIBStringField
      FieldName = 'BANC_CONTA_TITULAR'
      Origin = '"BANCOS"."BANC_CONTA_TITULAR"'
      Size = 100
    end
    object ibCadastroBANC_CONTA_TIPO: TIntegerField
      FieldName = 'BANC_CONTA_TIPO'
      Origin = '"BANCOS"."BANC_CONTA_TIPO"'
    end
    object ibCadastroBANC_ATIVO: TIBStringField
      FieldName = 'BANC_ATIVO'
      Origin = '"BANCOS"."BANC_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroBANC_DH_CA: TDateTimeField
      FieldName = 'BANC_DH_CA'
      Origin = '"BANCOS"."BANC_DH_CA"'
    end
    object ibCadastroBANC_BANCO_ID: TIntegerField
      FieldName = 'BANC_BANCO_ID'
      Origin = 'BANCOS.BANC_BANCO_ID'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select bancos.banc_id ID, bancos.*'
      '  from bancos')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"BANCOS"."BANC_ID"'
      Required = True
    end
    object qConsultaBANC_ID: TIntegerField
      FieldName = 'BANC_ID'
      Origin = '"BANCOS"."BANC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaBANC_DESCRICAO: TIBStringField
      FieldName = 'BANC_DESCRICAO'
      Origin = '"BANCOS"."BANC_DESCRICAO"'
      Size = 100
    end
    object qConsultaBANC_AGENCIA_CODIGO: TIBStringField
      FieldName = 'BANC_AGENCIA_CODIGO'
      Origin = '"BANCOS"."BANC_AGENCIA_CODIGO"'
      Size = 30
    end
    object qConsultaBANC_AGENCIA_NOME: TIBStringField
      FieldName = 'BANC_AGENCIA_NOME'
      Origin = '"BANCOS"."BANC_AGENCIA_NOME"'
      Size = 100
    end
    object qConsultaBANC_CONTA_CODIGO: TIBStringField
      FieldName = 'BANC_CONTA_CODIGO'
      Origin = '"BANCOS"."BANC_CONTA_CODIGO"'
      Size = 30
    end
    object qConsultaBANC_CONTA_TITULAR: TIBStringField
      FieldName = 'BANC_CONTA_TITULAR'
      Origin = '"BANCOS"."BANC_CONTA_TITULAR"'
      Size = 100
    end
    object qConsultaBANC_CONTA_TIPO: TIntegerField
      FieldName = 'BANC_CONTA_TIPO'
      Origin = '"BANCOS"."BANC_CONTA_TIPO"'
    end
    object qConsultaBANC_ATIVO: TIBStringField
      FieldName = 'BANC_ATIVO'
      Origin = '"BANCOS"."BANC_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qConsultaBANC_DH_CA: TDateTimeField
      FieldName = 'BANC_DH_CA'
      Origin = '"BANCOS"."BANC_DH_CA"'
    end
    object qConsultaBANC_BANCO_ID: TIntegerField
      FieldName = 'BANC_BANCO_ID'
      Origin = 'BANCOS.BANC_BANCO_ID'
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qBanco: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCadastro
    SQL.Strings = (
      'select *'
      '  from bancos_febraban'
      ' where bfeb_id = :id')
    Left = 480
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qBancoBFEB_ID: TIntegerField
      FieldName = 'BFEB_ID'
      Origin = 'BANCOS_FEBRABAN.BFEB_ID'
      Required = True
    end
    object qBancoBFEB_CODIGO: TIBStringField
      FieldName = 'BFEB_CODIGO'
      Origin = 'BANCOS_FEBRABAN.BFEB_CODIGO'
      Size = 15
    end
    object qBancoBFEB_DESCRICAO: TIBStringField
      FieldName = 'BFEB_DESCRICAO'
      Origin = 'BANCOS_FEBRABAN.BFEB_DESCRICAO'
      Size = 100
    end
    object qBancoBFEB_DH_CA: TDateTimeField
      FieldName = 'BFEB_DH_CA'
      Origin = 'BANCOS_FEBRABAN.BFEB_DH_CA'
    end
  end
  object dsBanco: TDataSource
    DataSet = qBanco
    Left = 528
    Top = 64
  end
end
