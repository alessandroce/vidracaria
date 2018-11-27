inherited FMovFinanceiro: TFMovFinanceiro
  Left = 318
  Top = 172
  Caption = 'FMovFinanceiro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Label13: TLabel
      Left = 20
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label1: TLabel
      Left = 20
      Top = 126
      Width = 45
      Height = 13
      Caption = 'Categoria'
    end
    object Label15: TLabel
      Left = 20
      Top = 217
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object Label6: TLabel
      Left = 234
      Top = 171
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEdit1
    end
    object Label7: TLabel
      Left = 20
      Top = 171
      Width = 83
      Height = 13
      Caption = 'Num. Documento'
      FocusControl = DBEdit3
    end
    object Label2: TLabel
      Left = 20
      Top = 10
      Width = 75
      Height = 13
      Caption = 'M'#234's Movimento'
    end
    object Label4: TLabel
      Left = 128
      Top = 171
      Width = 78
      Height = 13
      Caption = 'Data Movimento'
    end
    object Bevel1: TBevel
      Left = 16
      Top = 63
      Width = 441
      Height = 9
      Shape = bsTopLine
    end
    object DBText1: TDBText
      Left = 412
      Top = 99
      Width = 49
      Height = 17
      DataField = 'MOV_PAR_ID'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 472
      Top = 1
      Width = 311
      Height = 360
      Align = alRight
      TabOrder = 12
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsCadastro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1MOV_DATAMOV: TcxGridDBColumn
          Caption = 'Data Movto'
          DataBinding.FieldName = 'MOV_DATAMOV'
          Width = 71
        end
        object cxGrid1DBTableView1MOV_MESANOREF: TcxGridDBColumn
          Caption = 'M'#234's Ano ref.'
          DataBinding.FieldName = 'MOV_MESANOREF'
          Width = 66
        end
        object cxGrid1DBTableView1MOV_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'MOV_VALOR'
          Width = 71
        end
        object cxGrid1DBTableView1MOV_NUMDOC: TcxGridDBColumn
          Caption = 'Num. Doc.'
          DataBinding.FieldName = 'MOV_NUMDOC'
          Width = 90
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 20
      Top = 96
      Width = 317
      Height = 21
      DataField = 'MOV_CLI_ID'
      DataSource = dsCadastro
      KeyField = 'CLI_ID'
      ListField = 'CLI_CLIENTE'
      ListSource = dsCliente
      TabOrder = 1
    end
    object btCACliente: TBitBtn
      Left = 336
      Top = 95
      Width = 22
      Height = 21
      Caption = '+'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btCAClienteClick
    end
    object btEXCliente: TBitBtn
      Left = 359
      Top = 95
      Width = 22
      Height = 21
      Caption = 'x'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btEXClienteClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 20
      Top = 142
      Width = 317
      Height = 21
      DataField = 'MOV_CAT_ID'
      DataSource = dsCadastro
      KeyField = 'PIT_ID'
      ListField = 'PIT_DESCRICAO'
      ListSource = dsCategoria
      TabOrder = 5
    end
    object btCACategorai: TBitBtn
      Left = 336
      Top = 142
      Width = 22
      Height = 21
      Caption = '+'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btCACategoraiClick
    end
    object btEXCategorai: TBitBtn
      Left = 358
      Top = 142
      Width = 22
      Height = 21
      Caption = 'x'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btEXCategoraiClick
    end
    object DBMemo1: TDBMemo
      Left = 20
      Top = 234
      Width = 413
      Height = 44
      DataField = 'MOV_OBSERVACAO'
      DataSource = dsCadastro
      TabOrder = 11
    end
    object DBEdit1: TDBEdit
      Left = 234
      Top = 187
      Width = 100
      Height = 21
      DataField = 'MOV_VALOR'
      DataSource = dsCadastro
      TabOrder = 10
    end
    object DBEdit3: TDBEdit
      Left = 20
      Top = 187
      Width = 97
      Height = 21
      DataField = 'MOV_NUMDOC'
      DataSource = dsCadastro
      TabOrder = 8
    end
    object BitBtn1: TBitBtn
      Left = 385
      Top = 95
      Width = 22
      Height = 21
      Hint = 'Pagar/Receber'
      Caption = '$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 20
      Top = 26
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'JANEIRO'
      OnChange = ComboBox1Change
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 128
      Top = 187
      DataBinding.DataField = 'MOV_DATAMOV'
      DataBinding.DataSource = dsCadastro
      TabOrder = 9
      Width = 97
    end
  end
  inherited pnBarraPg: TPanel
    inherited btAlterar: TSpeedButton
      Tag = 1
    end
    inherited btExcluir: TSpeedButton
      Tag = 2
    end
    inherited btSair: TSpeedButton
      Tag = 6
    end
    inherited btImprimir: TSpeedButton
      Tag = 3
    end
    inherited btCancelar: TSpeedButton
      Tag = 4
      Left = 243
      Top = 2
    end
    inherited btSalvar: TSpeedButton
      Tag = 5
      Left = 303
      Top = 2
    end
  end
  inherited dsCadastro: TDataSource
    OnDataChange = dsCadastroDataChange
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from movfinanceiro'
      'where'
      '  MOV_ID = :OLD_MOV_ID')
    InsertSQL.Strings = (
      'insert into movfinanceiro'
      '  (MOV_ID, MOV_CLI_ID, MOV_CAT_ID, MOV_CCO_ID, MOV_PAR_ID, '
      'MOV_DATAMOV, '
      '   MOV_MESANOREF, MOV_VALOR, MOV_OBSERVACAO, MOV_NUMDOC, '
      'MOV_DH_CA)'
      'values'
      '  (:MOV_ID, :MOV_CLI_ID, :MOV_CAT_ID, :MOV_CCO_ID, :MOV_PAR_ID, '
      ':MOV_DATAMOV, '
      '   :MOV_MESANOREF, :MOV_VALOR, :MOV_OBSERVACAO, :MOV_NUMDOC, '
      ':MOV_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from movfinanceiro '
      'where'
      '  MOV_ID = :MOV_ID')
    SelectSQL.Strings = (
      'select *'
      '  from movfinanceiro'
      ' where extract(month from movfinanceiro.mov_datamov) = :mes')
    ModifySQL.Strings = (
      'update movfinanceiro'
      'set'
      '  MOV_ID = :MOV_ID,'
      '  MOV_CLI_ID = :MOV_CLI_ID,'
      '  MOV_CAT_ID = :MOV_CAT_ID,'
      '  MOV_CCO_ID = :MOV_CCO_ID,'
      '  MOV_PAR_ID = :MOV_PAR_ID,'
      '  MOV_DATAMOV = :MOV_DATAMOV,'
      '  MOV_MESANOREF = :MOV_MESANOREF,'
      '  MOV_VALOR = :MOV_VALOR,'
      '  MOV_OBSERVACAO = :MOV_OBSERVACAO,'
      '  MOV_NUMDOC = :MOV_NUMDOC,'
      '  MOV_DH_CA = :MOV_DH_CA'
      'where'
      '  MOV_ID = :OLD_MOV_ID')
    GeneratorField.Field = 'MOV_ID'
    GeneratorField.Generator = 'GEN_MOVFINANCEIRO'
    object ibCadastroMOV_ID: TIntegerField
      FieldName = 'MOV_ID'
      Origin = 'MOVFINANCEIRO.MOV_ID'
      Required = True
    end
    object ibCadastroMOV_CLI_ID: TIntegerField
      FieldName = 'MOV_CLI_ID'
      Origin = 'MOVFINANCEIRO.MOV_CLI_ID'
    end
    object ibCadastroMOV_CAT_ID: TIntegerField
      FieldName = 'MOV_CAT_ID'
      Origin = 'MOVFINANCEIRO.MOV_CAT_ID'
    end
    object ibCadastroMOV_CCO_ID: TIntegerField
      FieldName = 'MOV_CCO_ID'
      Origin = 'MOVFINANCEIRO.MOV_CCO_ID'
    end
    object ibCadastroMOV_DATAMOV: TDateField
      FieldName = 'MOV_DATAMOV'
      Origin = 'MOVFINANCEIRO.MOV_DATAMOV'
    end
    object ibCadastroMOV_MESANOREF: TIBStringField
      FieldName = 'MOV_MESANOREF'
      Origin = 'MOVFINANCEIRO.MOV_MESANOREF'
      Size = 7
    end
    object ibCadastroMOV_VALOR: TIBBCDField
      FieldName = 'MOV_VALOR'
      Origin = 'MOVFINANCEIRO.MOV_VALOR'
      Precision = 18
      Size = 2
    end
    object ibCadastroMOV_OBSERVACAO: TIBStringField
      FieldName = 'MOV_OBSERVACAO'
      Origin = 'MOVFINANCEIRO.MOV_OBSERVACAO'
      Size = 255
    end
    object ibCadastroMOV_NUMDOC: TIBStringField
      FieldName = 'MOV_NUMDOC'
      Origin = 'MOVFINANCEIRO.MOV_NUMDOC'
      Size = 15
    end
    object ibCadastroMOV_DH_CA: TDateTimeField
      FieldName = 'MOV_DH_CA'
      Origin = 'MOVFINANCEIRO.MOV_DH_CA'
    end
    object ibCadastroMOV_PAR_ID: TIntegerField
      FieldName = 'MOV_PAR_ID'
      Origin = 'MOVFINANCEIRO.MOV_PAR_ID'
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select cli_id, cli_cliente'
      '  from clientes'
      'order by cli_cliente')
    Left = 592
    Top = 104
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
    Left = 640
    Top = 104
  end
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select pl_item.pit_id,'
      '       pl_item.pit_codigo,'
      '       pl_item.pit_codigoreduzido,'
      '       pl_item.pit_descricao'
      '  from pl_item'
      ' join pl_subgrupo on (pl_subgrupo.psg_id=pl_item.pit_psg_id)'
      ' join pl_grupo on (pl_grupo.pgr_id=pl_subgrupo.psg_pgr_id)'
      'order by pl_item.pit_descricao')
    Left = 592
    Top = 152
    object qCategoriaPIT_ID: TIntegerField
      FieldName = 'PIT_ID'
      Origin = 'PL_ITEM.PIT_ID'
      Required = True
    end
    object qCategoriaPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Size = 114
    end
    object qCategoriaPIT_CODIGO: TIntegerField
      FieldName = 'PIT_CODIGO'
      Origin = '"PL_ITEM"."PIT_CODIGO"'
    end
    object qCategoriaPIT_CODIGOREDUZIDO: TIntegerField
      FieldName = 'PIT_CODIGOREDUZIDO'
      Origin = '"PL_ITEM"."PIT_CODIGOREDUZIDO"'
    end
  end
  object dsCategoria: TDataSource
    DataSet = qCategoria
    Left = 640
    Top = 152
  end
  object qCentroCusto: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select *'
      '  from centrocusto'
      ' order by cco_descricao')
    Left = 592
    Top = 200
    object qCentroCustoCCO_ID: TIntegerField
      FieldName = 'CCO_ID'
      Origin = 'CENTROCUSTO.CCO_ID'
      Required = True
    end
    object qCentroCustoCCO_CODIGO: TIntegerField
      FieldName = 'CCO_CODIGO'
      Origin = 'CENTROCUSTO.CCO_CODIGO'
    end
    object qCentroCustoCCO_DESCRICAO: TIBStringField
      FieldName = 'CCO_DESCRICAO'
      Origin = 'CENTROCUSTO.CCO_DESCRICAO'
      Size = 100
    end
    object qCentroCustoCCO_DH_CA: TDateTimeField
      FieldName = 'CCO_DH_CA'
      Origin = 'CENTROCUSTO.CCO_DH_CA'
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = qCentroCusto
    Left = 624
    Top = 200
  end
end
