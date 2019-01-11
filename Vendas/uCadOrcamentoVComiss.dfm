inherited FCadOrcamentoVComiss: TFCadOrcamentoVComiss
  Left = 227
  Top = 146
  Height = 600
  Caption = 'FCadOrcamentoVComiss'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 532
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Height = 434
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1VCOR_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCOR_ID'
            Visible = False
          end
          object grConsultaDBTableView1VCOR_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'VCOR_CODIGO'
          end
          object grConsultaDBTableView1VCOR_DATAEMISSAO: TcxGridDBColumn
            Caption = 'Data Emiss'#227'o'
            DataBinding.FieldName = 'VCOR_DATAEMISSAO'
            Width = 100
          end
          object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_CLIENTE'
            Width = 300
          end
          object grConsultaDBTableView1VCOR_CLIENTE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCOR_CLIENTE_ID'
            Visible = False
          end
          object grConsultaDBTableView1VCOR_CONDICAOPAGTO: TcxGridDBColumn
            Caption = 'Condi'#231#227'o Pagamento'
            DataBinding.FieldName = 'VCOR_CONDICAOPAGTO'
            Width = 300
          end
          object grConsultaDBTableView1VCOR_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'VCOR_DH_CA'
            Visible = False
          end
          object grConsultaDBTableView1VCOR_VALORTOTAL: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VCOR_VALORTOTAL'
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited rgAtivo: TRadioGroup
          Left = 656
          Width = 49
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 484
      end
    end
    inherited tsCadastro: TTabSheet
      object Bevel2: TBevel [0]
        Left = 0
        Top = 284
        Width = 776
        Height = 56
        Align = alBottom
      end
      object Label1: TLabel [2]
        Left = 40
        Top = 108
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [3]
        Left = 160
        Top = 108
        Width = 65
        Height = 13
        Caption = 'Data Emiss'#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [4]
        Left = 280
        Top = 108
        Width = 51
        Height = 13
        Caption = 'Valor Total'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [5]
        Left = 40
        Top = 193
        Width = 101
        Height = 13
        Caption = 'Condi'#231#227'o pagamento'
      end
      object Label5: TLabel [6]
        Left = 10
        Top = 290
        Width = 44
        Height = 13
        Caption = 'Ambiente'
      end
      object Label6: TLabel [7]
        Left = 295
        Top = 290
        Width = 66
        Height = 13
        Caption = 'Discrimina'#231#227'o'
      end
      object Label7: TLabel [8]
        Left = 580
        Top = 290
        Width = 49
        Height = 13
        Caption = 'Valor Unit.'
      end
      object Label13: TLabel [9]
        Left = 40
        Top = 151
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 124
        Width = 110
        Height = 21
        DataField = 'VCOR_CODIGO'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 124
        Width = 110
        Height = 21
        DataField = 'VCOR_DATAEMISSAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 280
        Top = 124
        Width = 65
        Height = 21
        DataField = 'VCOR_VALORTOTAL'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 40
        Top = 209
        Width = 497
        Height = 66
        DataField = 'VCOR_CONDICAOPAGTO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 340
        Width = 776
        Height = 163
        Align = alBottom
        TabOrder = 10
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsCadastroItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1VCORI_VALORUNIT
            end
            item
              Kind = skCount
              Column = cxGrid1DBTableView1VCORI_AMBIENTE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = 'Sem registro para exibir'
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGrid1DBTableView1VCORI_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_ID'
            Visible = False
          end
          object cxGrid1DBTableView1VCORI_VCOR_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_VCOR_ID'
            Visible = False
          end
          object cxGrid1DBTableView1VCORI_AMBIENTE: TcxGridDBColumn
            Caption = 'Ambiente'
            DataBinding.FieldName = 'VCORI_AMBIENTE'
            Width = 293
          end
          object cxGrid1DBTableView1VCORI_DISCRIMINACAO: TcxGridDBColumn
            Caption = 'Discrimina'#231#227'o'
            DataBinding.FieldName = 'VCORI_DISCRIMINACAO'
            Width = 286
          end
          object cxGrid1DBTableView1VCORI_VALORUNIT: TcxGridDBColumn
            Caption = 'Valor Unit.'
            DataBinding.FieldName = 'VCORI_VALORUNIT'
            Width = 103
          end
          object cxGrid1DBTableView1VCORI_QTDADE: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_QTDADE'
            Visible = False
          end
          object cxGrid1DBTableView1VCORI_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_DH_CA'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 40
        Top = 167
        Width = 373
        Height = 21
        DataField = 'VCOR_CLIENTE_ID'
        DataSource = dsCadastro
        KeyField = 'CLI_ID'
        ListField = 'CLI_CLIENTE'
        ListSource = dsCliente
        TabOrder = 4
      end
      object btCACliente: TBitBtn
        Left = 413
        Top = 166
        Width = 22
        Height = 20
        Hint = 'Adicionar'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btCAClienteClick
      end
      object btEXCliente: TBitBtn
        Left = 435
        Top = 166
        Width = 22
        Height = 20
        Hint = 'Apagar'
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = btEXClienteClick
      end
      object btCAItens: TBitBtn
        Left = 691
        Top = 292
        Width = 35
        Height = 30
        Hint = 'Adicionar Item'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btCAItensClick
      end
      object btEXItens: TBitBtn
        Left = 733
        Top = 292
        Width = 35
        Height = 30
        Hint = 'Apagar Item'
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = btEXItensClick
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 40
        Top = 58
        Width = 257
        Height = 41
        Caption = '  Situa'#231#227'o  '
        Columns = 3
        DataField = 'VCOR_SITUACAO'
        DataSource = dsCadastro
        Items.Strings = (
          'Aberto'
          'Fechado'
          'Cancelado')
        TabOrder = 11
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object edAmbiente: TEdit
        Left = 10
        Top = 306
        Width = 280
        Height = 21
        TabOrder = 12
      end
      object edDiscriminacao: TEdit
        Left = 295
        Top = 306
        Width = 280
        Height = 21
        TabOrder = 13
      end
      object edValorUnit: TEdit
        Left = 580
        Top = 306
        Width = 100
        Height = 21
        TabOrder = 14
        OnKeyPress = edValorUnitKeyPress
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    AfterClose = ibCadastroAfterClose
    AfterOpen = ibCadastroAfterOpen
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from vcomiss_orcamento'
      'where'
      '  VCOR_ID = :OLD_VCOR_ID')
    InsertSQL.Strings = (
      'insert into vcomiss_orcamento'
      '  (VCOR_ID, VCOR_CODIGO, VCOR_DATAEMISSAO, VCOR_CLIENTE_ID, '
      'VCOR_VALORTOTAL, '
      '   VCOR_CONDICAOPAGTO, VCOR_DH_CA, VCOR_SITUACAO)'
      'values'
      '  (:VCOR_ID, :VCOR_CODIGO, :VCOR_DATAEMISSAO, :VCOR_CLIENTE_ID, '
      ':VCOR_VALORTOTAL, '
      '   :VCOR_CONDICAOPAGTO, :VCOR_DH_CA, :VCOR_SITUACAO)')
    RefreshSQL.Strings = (
      'Select *'
      'from vcomiss_orcamento '
      'where'
      '  VCOR_ID = :VCOR_ID')
    SelectSQL.Strings = (
      'select *'
      '  from vcomiss_orcamento'
      ' where vcor_id = :FId')
    ModifySQL.Strings = (
      'update vcomiss_orcamento'
      'set'
      '  VCOR_ID = :VCOR_ID,'
      '  VCOR_CODIGO = :VCOR_CODIGO,'
      '  VCOR_DATAEMISSAO = :VCOR_DATAEMISSAO,'
      '  VCOR_CLIENTE_ID = :VCOR_CLIENTE_ID,'
      '  VCOR_VALORTOTAL = :VCOR_VALORTOTAL,'
      '  VCOR_CONDICAOPAGTO = :VCOR_CONDICAOPAGTO,'
      '  VCOR_DH_CA = :VCOR_DH_CA,'
      '  VCOR_SITUACAO = :VCOR_SITUACAO'
      'where'
      '  VCOR_ID = :OLD_VCOR_ID')
    GeneratorField.Field = 'VCOR_ID'
    GeneratorField.Generator = 'GEN_VCOMISS_ORCAMENTO'
    Top = 16
    object ibCadastroVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object ibCadastroVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DATAEMISSAO"'
      EditMask = '!99/99/0000;1;_'
    end
    object ibCadastroVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CLIENTE_ID"'
    end
    object ibCadastroVCOR_VALORTOTAL: TIBBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_VALORTOTAL"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroVCOR_CONDICAOPAGTO: TIBStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CONDICAOPAGTO"'
      Size = 100
    end
    object ibCadastroVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DH_CA"'
    end
    object ibCadastroVCOR_SITUACAO: TIntegerField
      FieldName = 'VCOR_SITUACAO'
      Origin = 'VCOMISS_ORCAMENTO.VCOR_SITUACAO'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select vcomiss_orcamento.vcor_id ID, vcomiss_orcamento.*,'
      '       clientes.cli_cliente'
      '  from vcomiss_orcamento'
      
        ' left join clientes on (clientes.cli_id=vcomiss_orcamento.vcor_c' +
        'liente_id)'
      ' where vcor_id > -1')
    object qConsultaVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object qConsultaVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DATAEMISSAO"'
    end
    object qConsultaVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CLIENTE_ID"'
    end
    object qConsultaVCOR_VALORTOTAL: TIBBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_VALORTOTAL"'
      Precision = 18
      Size = 2
    end
    object qConsultaVCOR_CONDICAOPAGTO: TIBStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CONDICAOPAGTO"'
      Size = 100
    end
    object qConsultaVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DH_CA"'
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      Required = True
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ibCadastroItem: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterInsert = ibCadastroItemAfterInsert
    BeforeInsert = ibCadastroItemBeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from vcomiss_orcamento_item'
      'where'
      '  VCORI_ID = :OLD_VCORI_ID')
    InsertSQL.Strings = (
      'insert into vcomiss_orcamento_item'
      
        '  (VCORI_AMBIENTE, VCORI_DH_CA, VCORI_DISCRIMINACAO, VCORI_ID, V' +
        'CORI_QTDADE, '
      '   VCORI_VALORUNIT, VCORI_VCOR_ID)'
      'values'
      
        '  (:VCORI_AMBIENTE, :VCORI_DH_CA, :VCORI_DISCRIMINACAO, :VCORI_I' +
        'D, :VCORI_QTDADE, '
      '   :VCORI_VALORUNIT, :VCORI_VCOR_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  VCORI_ID,'
      '  VCORI_VCOR_ID,'
      '  VCORI_AMBIENTE,'
      '  VCORI_DISCRIMINACAO,'
      '  VCORI_VALORUNIT,'
      '  VCORI_QTDADE,'
      '  VCORI_DH_CA'
      'from vcomiss_orcamento_item '
      'where'
      '  VCORI_ID = :VCORI_ID')
    SelectSQL.Strings = (
      'select *'
      '  from vcomiss_orcamento_item'
      ' where vcori_vcor_id = :VCOR_ID'
      ' order by vcori_ambiente'
      '')
    ModifySQL.Strings = (
      'update vcomiss_orcamento_item'
      'set'
      '  VCORI_AMBIENTE = :VCORI_AMBIENTE,'
      '  VCORI_DH_CA = :VCORI_DH_CA,'
      '  VCORI_DISCRIMINACAO = :VCORI_DISCRIMINACAO,'
      '  VCORI_ID = :VCORI_ID,'
      '  VCORI_QTDADE = :VCORI_QTDADE,'
      '  VCORI_VALORUNIT = :VCORI_VALORUNIT,'
      '  VCORI_VCOR_ID = :VCORI_VCOR_ID'
      'where'
      '  VCORI_ID = :OLD_VCORI_ID')
    GeneratorField.Field = 'VCORI_ID'
    GeneratorField.Generator = 'GEN_VCOMISS_ORCAMENTO_ITEM'
    DataSource = dsCadastro
    Left = 384
    Top = 56
    object ibCadastroItemVCORI_ID: TIntegerField
      FieldName = 'VCORI_ID'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroItemVCORI_VCOR_ID: TIntegerField
      FieldName = 'VCORI_VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_VCOR_ID"'
      Required = True
    end
    object ibCadastroItemVCORI_AMBIENTE: TIBStringField
      FieldName = 'VCORI_AMBIENTE'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_AMBIENTE"'
      Size = 100
    end
    object ibCadastroItemVCORI_DISCRIMINACAO: TIBStringField
      FieldName = 'VCORI_DISCRIMINACAO'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_DISCRIMINACAO"'
      Size = 100
    end
    object ibCadastroItemVCORI_VALORUNIT: TIBBCDField
      FieldName = 'VCORI_VALORUNIT'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_VALORUNIT"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroItemVCORI_QTDADE: TIntegerField
      FieldName = 'VCORI_QTDADE'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_QTDADE"'
    end
    object ibCadastroItemVCORI_DH_CA: TDateTimeField
      FieldName = 'VCORI_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_DH_CA"'
    end
  end
  object dsCadastroItem: TDataSource
    DataSet = ibCadastroItem
    OnDataChange = dsCadastroItemDataChange
    Left = 432
    Top = 56
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cli_id, cli_cliente'
      '  from clientes'
      'order by cli_cliente')
    Left = 480
    Top = 160
    object qClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = 'CLIENTES.CLI_ID'
      Required = True
    end
    object qClienteCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
    end
  end
  object dsCliente: TDataSource
    DataSet = qCliente
    Left = 528
    Top = 160
  end
end
