inherited FPagamentosDiversos: TFPagamentosDiversos
  Left = 293
  Top = 164
  Caption = 'FPagamentosDiversos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 30
    Width = 584
    Height = 171
    Align = alTop
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Bevel1: TBevel
      Left = 8
      Top = 101
      Width = 561
      Height = 55
    end
    object Label3: TLabel
      Left = 17
      Top = 108
      Width = 85
      Height = 13
      Caption = 'Forma pagamento'
    end
    object lblOcorrencia: TLabel
      Left = 381
      Top = 130
      Width = 52
      Height = 13
      Caption = 'Ocorr'#234'ncia'
    end
    object lblVezes: TLabel
      Left = 487
      Top = 130
      Width = 28
      Height = 13
      Caption = 'vezes'
    end
    object Label7: TLabel
      Left = 16
      Top = 10
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label8: TLabel
      Left = 128
      Top = 10
      Width = 63
      Height = 13
      Caption = 'Numero Doc.'
    end
    object Label9: TLabel
      Left = 272
      Top = 10
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label1: TLabel
      Left = 16
      Top = 58
      Width = 64
      Height = 13
      Caption = 'Valor Entrada'
    end
    object Label2: TLabel
      Left = 112
      Top = 58
      Width = 75
      Height = 13
      Caption = 'Valor Parcelado'
    end
    object Label4: TLabel
      Left = 225
      Top = 108
      Width = 64
      Height = 13
      Caption = 'Periodicidade'
    end
    object Label5: TLabel
      Left = 212
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 126
      Width = 202
      Height = 21
      KeyField = 'FOP_ID'
      ListField = 'FOP_DESCRICAO'
      ListSource = dsConta
      TabOrder = 6
    end
    object edOcorrencia: TEdit
      Left = 441
      Top = 126
      Width = 40
      Height = 21
      TabOrder = 8
      Text = '1'
      OnChange = edOcorrenciaChange
      OnKeyPress = Edit3KeyPress
    end
    object Edit2: TEdit
      Left = 128
      Top = 26
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 272
      Top = 26
      Width = 90
      Height = 21
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit1: TEdit
      Left = 16
      Top = 74
      Width = 90
      Height = 21
      TabOrder = 3
      OnChange = Edit1Change
      OnKeyPress = Edit3KeyPress
    end
    object cbMensalmente: TComboBox
      Left = 225
      Top = 126
      Width = 144
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 7
      Text = 'Mensalmente'
      Items.Strings = (
        'Diariamente'
        'Semanalmente'
        'Mensalmente'
        'Bimestralmente'
        'Trimestralmente'
        'Semestralmente'
        'Anualmente')
    end
    object Edit4: TEdit
      Left = 112
      Top = 74
      Width = 90
      Height = 21
      TabOrder = 4
      OnKeyPress = Edit3KeyPress
    end
    object cxDateEdit1: TcxDateEdit
      Left = 16
      Top = 26
      TabOrder = 0
      Width = 97
    end
    object Edit5: TEdit
      Left = 212
      Top = 72
      Width = 313
      Height = 21
      TabOrder = 5
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 420
    Width = 584
    Height = 41
    Align = alBottom
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 210
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
    object BitBtn2: TBitBtn
      Left = 298
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkOK
    end
  end
  object grConsulta: TcxGrid [3]
    Left = 0
    Top = 246
    Width = 584
    Height = 174
    Align = alBottom
    TabOrder = 4
    object grConsultaDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
        end
        item
          Kind = skSum
          Column = grConsultaDBTableView1VALOR
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Clique aqui para definir um filtro'
      FilterRow.SeparatorWidth = 5
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsView.NoDataToDisplayInfoText = 'Sem registros para exibir'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grConsultaDBTableView1DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Options.Editing = False
        Width = 225
      end
      object grConsultaDBTableView1FORMAP: TcxGridDBColumn
        Caption = 'Forma pagamento'
        DataBinding.FieldName = 'FORMAP'
        Visible = False
        Width = 225
      end
      object grConsultaDBTableView1FORMAP_ID: TcxGridDBColumn
        Caption = 'Forma pagamento'
        DataBinding.FieldName = 'FORMAP_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'FOP_ID'
        Properties.ListColumns = <
          item
            Width = 50
            FieldName = 'FOP_ID'
          end
          item
            Width = 80
            FieldName = 'FOP_DESCRICAO'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListSource = dsContaCombo
        Width = 225
      end
      object grConsultaDBTableView1VALOR: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VALOR'
        Options.Editing = False
        Width = 118
      end
      object grConsultaDBTableView1DATA_VENCTO: TcxGridDBColumn
        Caption = 'Data Vencimento'
        DataBinding.FieldName = 'DATA_VENCTO'
        Width = 100
      end
    end
    object grConsultaLevel1: TcxGridLevel
      GridView = grConsultaDBTableView1
    end
  end
  object BitBtn3: TBitBtn [4]
    Left = 339
    Top = 210
    Width = 110
    Height = 30
    Caption = 'Refazer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn [5]
    Left = 456
    Top = 210
    Width = 110
    Height = 30
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  inherited ActionList1: TActionList
    Top = 65512
  end
  inherited ImageList1: TImageList
    Top = 65512
  end
  inherited frxReport1: TfrxReport
    Top = 65512
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxIBXComponents1: TfrxIBXComponents
    Top = 65512
  end
  object qConta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from forma_pgto')
    Left = 448
    Top = 16
    object qContaFOP_ID: TIntegerField
      FieldName = 'FOP_ID'
      Origin = 'FORMA_PGTO.FOP_ID'
      Required = True
    end
    object qContaFOP_DESCRICAO: TIBStringField
      FieldName = 'FOP_DESCRICAO'
      Origin = 'FORMA_PGTO.FOP_DESCRICAO'
      Size = 100
    end
    object qContaFOP_TIPO: TIntegerField
      FieldName = 'FOP_TIPO'
      Origin = '"FORMA_PGTO"."FOP_TIPO"'
    end
    object qContaFOP_BANCO_ID: TIntegerField
      FieldName = 'FOP_BANCO_ID'
      Origin = '"FORMA_PGTO"."FOP_BANCO_ID"'
    end
    object qContaFOP_DH_CA: TDateTimeField
      FieldName = 'FOP_DH_CA'
      Origin = '"FORMA_PGTO"."FOP_DH_CA"'
    end
    object qContaFOP_FLAG: TIntegerField
      FieldName = 'FOP_FLAG'
      Origin = '"FORMA_PGTO"."FOP_FLAG"'
    end
  end
  object dsConta: TDataSource
    DataSet = qConta
    Left = 496
    Top = 16
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 240
    object cdsItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsItemFORMAP: TStringField
      FieldName = 'FORMAP'
      Size = 100
    end
    object cdsItemFORMAP_ID: TIntegerField
      FieldName = 'FORMAP_ID'
    end
    object cdsItemVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsItemDATA_VENCTO: TDateField
      FieldName = 'DATA_VENCTO'
    end
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 320
    Top = 240
  end
  object ibCadastro: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    DeleteSQL.Strings = (
      'delete from pagarreceber'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into pagarreceber'
      
        '  (PAR_ANEXO, PAR_BAIXADO, PAR_CAT_ID, PAR_CCO_ID, PAR_CETROCUST' +
        'O, PAR_CLI_ID, '
      
        '   PAR_CONTA_ID, PAR_DATACOMPETENCIA, PAR_DATAPGTO, PAR_DATAVENC' +
        'TO, PAR_DESCONTOTAXA, '
      
        '   PAR_DESCRICAO, PAR_DH_CA, PAR_ID, PAR_JUROMULTA, PAR_NUMDOC, ' +
        'PAR_OBSERVACAO, '
      
        '   PAR_PAGO, PAR_PAGREC, PAR_PARCELAMAX, PAR_PARCELANUM, PAR_PAR' +
        'CELAPAI, '
      
        '   PAR_TIPOBAIXA, PAR_VALOR, PAR_VALORPAGO, PAR_VENDACOMISSIONAD' +
        'A_ID, PAR_VENDEDOR_ID)'
      'values'
      
        '  (:PAR_ANEXO, :PAR_BAIXADO, :PAR_CAT_ID, :PAR_CCO_ID, :PAR_CETR' +
        'OCUSTO, '
      
        '   :PAR_CLI_ID, :PAR_CONTA_ID, :PAR_DATACOMPETENCIA, :PAR_DATAPG' +
        'TO, :PAR_DATAVENCTO, '
      
        '   :PAR_DESCONTOTAXA, :PAR_DESCRICAO, :PAR_DH_CA, :PAR_ID, :PAR_' +
        'JUROMULTA, '
      
        '   :PAR_NUMDOC, :PAR_OBSERVACAO, :PAR_PAGO, :PAR_PAGREC, :PAR_PA' +
        'RCELAMAX, '
      
        '   :PAR_PARCELANUM, :PAR_PARCELAPAI, :PAR_TIPOBAIXA, :PAR_VALOR,' +
        ' :PAR_VALORPAGO, '
      '   :PAR_VENDACOMISSIONADA_ID, :PAR_VENDEDOR_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_ID,'
      '  PAR_PAGREC,'
      '  PAR_DESCRICAO,'
      '  PAR_CAT_ID,'
      '  PAR_CONTA_ID,'
      '  PAR_DATACOMPETENCIA,'
      '  PAR_DATAVENCTO,'
      '  PAR_VALOR,'
      '  PAR_CLI_ID,'
      '  PAR_CETROCUSTO,'
      '  PAR_OBSERVACAO,'
      '  PAR_ANEXO,'
      '  PAR_PAGO,'
      '  PAR_DATAPGTO,'
      '  PAR_DESCONTOTAXA,'
      '  PAR_JUROMULTA,'
      '  PAR_VALORPAGO,'
      '  PAR_DH_CA,'
      '  PAR_PARCELANUM,'
      '  PAR_PARCELAMAX,'
      '  PAR_PARCELAPAI,'
      '  PAR_NUMDOC,'
      '  PAR_CCO_ID,'
      '  PAR_BAIXADO,'
      '  PAR_TIPOBAIXA,'
      '  PAR_VENDEDOR_ID,'
      '  PAR_VENDACOMISSIONADA_ID'
      'from pagarreceber '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select pagarreceber.*'
      '  from pagarreceber'
      ' where PAR_ID = -1')
    ModifySQL.Strings = (
      'update pagarreceber'
      'set'
      '  PAR_ANEXO = :PAR_ANEXO,'
      '  PAR_BAIXADO = :PAR_BAIXADO,'
      '  PAR_CAT_ID = :PAR_CAT_ID,'
      '  PAR_CCO_ID = :PAR_CCO_ID,'
      '  PAR_CETROCUSTO = :PAR_CETROCUSTO,'
      '  PAR_CLI_ID = :PAR_CLI_ID,'
      '  PAR_CONTA_ID = :PAR_CONTA_ID,'
      '  PAR_DATACOMPETENCIA = :PAR_DATACOMPETENCIA,'
      '  PAR_DATAPGTO = :PAR_DATAPGTO,'
      '  PAR_DATAVENCTO = :PAR_DATAVENCTO,'
      '  PAR_DESCONTOTAXA = :PAR_DESCONTOTAXA,'
      '  PAR_DESCRICAO = :PAR_DESCRICAO,'
      '  PAR_DH_CA = :PAR_DH_CA,'
      '  PAR_ID = :PAR_ID,'
      '  PAR_JUROMULTA = :PAR_JUROMULTA,'
      '  PAR_NUMDOC = :PAR_NUMDOC,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_PAGREC = :PAR_PAGREC,'
      '  PAR_PARCELAMAX = :PAR_PARCELAMAX,'
      '  PAR_PARCELANUM = :PAR_PARCELANUM,'
      '  PAR_PARCELAPAI = :PAR_PARCELAPAI,'
      '  PAR_TIPOBAIXA = :PAR_TIPOBAIXA,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALORPAGO = :PAR_VALORPAGO,'
      '  PAR_VENDACOMISSIONADA_ID = :PAR_VENDACOMISSIONADA_ID,'
      '  PAR_VENDEDOR_ID = :PAR_VENDEDOR_ID'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    Left = 448
    Top = 64
    object ibCadastroPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibCadastroPAR_PAGREC: TIntegerField
      FieldName = 'PAR_PAGREC'
      Origin = '"PAGARRECEBER"."PAR_PAGREC"'
    end
    object ibCadastroPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
    object ibCadastroPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
      Origin = '"PAGARRECEBER"."PAR_CAT_ID"'
    end
    object ibCadastroPAR_CONTA_ID: TIntegerField
      FieldName = 'PAR_CONTA_ID'
      Origin = '"PAGARRECEBER"."PAR_CONTA_ID"'
    end
    object ibCadastroPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
      Origin = '"PAGARRECEBER"."PAR_DATACOMPETENCIA"'
    end
    object ibCadastroPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = '"PAGARRECEBER"."PAR_DATAVENCTO"'
    end
    object ibCadastroPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = '"PAGARRECEBER"."PAR_VALOR"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
      Origin = '"PAGARRECEBER"."PAR_CLI_ID"'
    end
    object ibCadastroPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = '"PAGARRECEBER"."PAR_CETROCUSTO"'
      Size = 100
    end
    object ibCadastroPAR_OBSERVACAO: TIBStringField
      FieldName = 'PAR_OBSERVACAO'
      Origin = '"PAGARRECEBER"."PAR_OBSERVACAO"'
      Size = 255
    end
    object ibCadastroPAR_ANEXO: TMemoField
      FieldName = 'PAR_ANEXO'
      Origin = '"PAGARRECEBER"."PAR_ANEXO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ibCadastroPAR_PAGO: TIBStringField
      FieldName = 'PAR_PAGO'
      Origin = '"PAGARRECEBER"."PAR_PAGO"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroPAR_DATAPGTO: TDateField
      FieldName = 'PAR_DATAPGTO'
      Origin = '"PAGARRECEBER"."PAR_DATAPGTO"'
    end
    object ibCadastroPAR_DESCONTOTAXA: TIBBCDField
      FieldName = 'PAR_DESCONTOTAXA'
      Origin = '"PAGARRECEBER"."PAR_DESCONTOTAXA"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_JUROMULTA: TIBBCDField
      FieldName = 'PAR_JUROMULTA'
      Origin = '"PAGARRECEBER"."PAR_JUROMULTA"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_VALORPAGO: TIBBCDField
      FieldName = 'PAR_VALORPAGO'
      Origin = '"PAGARRECEBER"."PAR_VALORPAGO"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = '"PAGARRECEBER"."PAR_DH_CA"'
    end
    object ibCadastroPAR_PARCELANUM: TIntegerField
      FieldName = 'PAR_PARCELANUM'
      Origin = '"PAGARRECEBER"."PAR_PARCELANUM"'
    end
    object ibCadastroPAR_PARCELAMAX: TIntegerField
      FieldName = 'PAR_PARCELAMAX'
      Origin = '"PAGARRECEBER"."PAR_PARCELAMAX"'
    end
    object ibCadastroPAR_PARCELAPAI: TIntegerField
      FieldName = 'PAR_PARCELAPAI'
      Origin = '"PAGARRECEBER"."PAR_PARCELAPAI"'
    end
    object ibCadastroPAR_NUMDOC: TIBStringField
      FieldName = 'PAR_NUMDOC'
      Origin = 'PAGARRECEBER.PAR_NUMDOC'
      Size = 15
    end
    object ibCadastroPAR_BAIXADO: TIBStringField
      FieldName = 'PAR_BAIXADO'
      Origin = '"PAGARRECEBER"."PAR_BAIXADO"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroPAR_CCO_ID: TIntegerField
      FieldName = 'PAR_CCO_ID'
      Origin = 'PAGARRECEBER.PAR_CCO_ID'
    end
    object ibCadastroPAR_TIPOBAIXA: TIBStringField
      FieldName = 'PAR_TIPOBAIXA'
      Origin = '"PAGARRECEBER"."PAR_TIPOBAIXA"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroPAR_VENDACOMISSIONADA_ID: TIntegerField
      FieldName = 'PAR_VENDACOMISSIONADA_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDACOMISSIONADA_ID"'
    end
    object ibCadastroPAR_VENDEDOR_ID: TIntegerField
      FieldName = 'PAR_VENDEDOR_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDEDOR_ID"'
    end
  end
  object dsCadastro: TDataSource
    DataSet = ibCadastro
    Left = 496
    Top = 64
  end
  object qContaCombo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from forma_pgto')
    Left = 448
    Top = 112
    object qContaComboFOP_ID: TIntegerField
      FieldName = 'FOP_ID'
      Origin = 'FORMA_PGTO.FOP_ID'
      Required = True
    end
    object qContaComboFOP_TIPO: TIntegerField
      FieldName = 'FOP_TIPO'
      Origin = 'FORMA_PGTO.FOP_TIPO'
    end
    object qContaComboFOP_DESCRICAO: TIBStringField
      FieldName = 'FOP_DESCRICAO'
      Origin = 'FORMA_PGTO.FOP_DESCRICAO'
      Size = 100
    end
    object qContaComboFOP_BANCO_ID: TIntegerField
      FieldName = 'FOP_BANCO_ID'
      Origin = 'FORMA_PGTO.FOP_BANCO_ID'
    end
    object qContaComboFOP_DH_CA: TDateTimeField
      FieldName = 'FOP_DH_CA'
      Origin = 'FORMA_PGTO.FOP_DH_CA'
    end
    object qContaComboFOP_FLAG: TIntegerField
      FieldName = 'FOP_FLAG'
      Origin = 'FORMA_PGTO.FOP_FLAG'
    end
  end
  object dsContaCombo: TDataSource
    DataSet = qContaCombo
    Left = 496
    Top = 112
  end
  object ibCadastro2: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    DeleteSQL.Strings = (
      'delete from movfinanceiro'
      'where'
      '  MOV_ID = :OLD_MOV_ID')
    InsertSQL.Strings = (
      'insert into movfinanceiro'
      
        '  (MOV_ANO, MOV_BAN_ID_AP, MOV_BAN_ID_CC, MOV_CAT_ID, MOV_CCO_ID' +
        ', MOV_CLI_ID, '
      
        '   MOV_DATAMOV, MOV_DESCRICAO, MOV_DH_CA, MOV_ID, MOV_MESANOREF,' +
        ' MOV_NUMDOC, '
      '   MOV_OBSERVACAO, MOV_PAR_ID, MOV_TIPOBAIXA, MOV_VALOR)'
      'values'
      
        '  (:MOV_ANO, :MOV_BAN_ID_AP, :MOV_BAN_ID_CC, :MOV_CAT_ID, :MOV_C' +
        'CO_ID, '
      
        '   :MOV_CLI_ID, :MOV_DATAMOV, :MOV_DESCRICAO, :MOV_DH_CA, :MOV_I' +
        'D, :MOV_MESANOREF, '
      
        '   :MOV_NUMDOC, :MOV_OBSERVACAO, :MOV_PAR_ID, :MOV_TIPOBAIXA, :M' +
        'OV_VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  MOV_ID,'
      '  MOV_ANO,'
      '  MOV_CLI_ID,'
      '  MOV_CAT_ID,'
      '  MOV_CCO_ID,'
      '  MOV_PAR_ID,'
      '  MOV_DATAMOV,'
      '  MOV_MESANOREF,'
      '  MOV_VALOR,'
      '  MOV_OBSERVACAO,'
      '  MOV_DESCRICAO,'
      '  MOV_NUMDOC,'
      '  MOV_TIPOBAIXA,'
      '  MOV_BAN_ID_CC,'
      '  MOV_BAN_ID_AP,'
      '  MOV_DH_CA'
      'from movfinanceiro '
      'where'
      '  MOV_ID = :MOV_ID')
    SelectSQL.Strings = (
      'select movfinanceiro.*'
      '  from movfinanceiro'
      ' where movfinanceiro.mov_id = -1')
    ModifySQL.Strings = (
      'update movfinanceiro'
      'set'
      '  MOV_ANO = :MOV_ANO,'
      '  MOV_BAN_ID_AP = :MOV_BAN_ID_AP,'
      '  MOV_BAN_ID_CC = :MOV_BAN_ID_CC,'
      '  MOV_CAT_ID = :MOV_CAT_ID,'
      '  MOV_CCO_ID = :MOV_CCO_ID,'
      '  MOV_CLI_ID = :MOV_CLI_ID,'
      '  MOV_DATAMOV = :MOV_DATAMOV,'
      '  MOV_DESCRICAO = :MOV_DESCRICAO,'
      '  MOV_DH_CA = :MOV_DH_CA,'
      '  MOV_ID = :MOV_ID,'
      '  MOV_MESANOREF = :MOV_MESANOREF,'
      '  MOV_NUMDOC = :MOV_NUMDOC,'
      '  MOV_OBSERVACAO = :MOV_OBSERVACAO,'
      '  MOV_PAR_ID = :MOV_PAR_ID,'
      '  MOV_TIPOBAIXA = :MOV_TIPOBAIXA,'
      '  MOV_VALOR = :MOV_VALOR'
      'where'
      '  MOV_ID = :OLD_MOV_ID')
    GeneratorField.Field = 'MOV_ID'
    GeneratorField.Generator = 'GEN_MOVFINANCEIRO'
    Left = 360
    Top = 64
    object ibCadastro2MOV_ID: TIntegerField
      FieldName = 'MOV_ID'
      Origin = 'MOVFINANCEIRO.MOV_ID'
    end
    object ibCadastro2MOV_CLI_ID: TIntegerField
      FieldName = 'MOV_CLI_ID'
      Origin = 'MOVFINANCEIRO.MOV_CLI_ID'
    end
    object ibCadastro2MOV_CAT_ID: TIntegerField
      FieldName = 'MOV_CAT_ID'
      Origin = 'MOVFINANCEIRO.MOV_CAT_ID'
    end
    object ibCadastro2MOV_CCO_ID: TIntegerField
      FieldName = 'MOV_CCO_ID'
      Origin = 'MOVFINANCEIRO.MOV_CCO_ID'
    end
    object ibCadastro2MOV_PAR_ID: TIntegerField
      FieldName = 'MOV_PAR_ID'
      Origin = 'MOVFINANCEIRO.MOV_PAR_ID'
    end
    object ibCadastro2MOV_DATAMOV: TDateField
      FieldName = 'MOV_DATAMOV'
      Origin = 'MOVFINANCEIRO.MOV_DATAMOV'
    end
    object ibCadastro2MOV_MESANOREF: TIBStringField
      FieldName = 'MOV_MESANOREF'
      Origin = 'MOVFINANCEIRO.MOV_MESANOREF'
      Size = 7
    end
    object ibCadastro2MOV_VALOR: TIBBCDField
      FieldName = 'MOV_VALOR'
      Origin = 'MOVFINANCEIRO.MOV_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastro2MOV_OBSERVACAO: TIBStringField
      FieldName = 'MOV_OBSERVACAO'
      Origin = 'MOVFINANCEIRO.MOV_OBSERVACAO'
      Size = 255
    end
    object ibCadastro2MOV_NUMDOC: TIBStringField
      FieldName = 'MOV_NUMDOC'
      Origin = 'MOVFINANCEIRO.MOV_NUMDOC'
      Size = 15
    end
    object ibCadastro2MOV_DH_CA: TDateTimeField
      FieldName = 'MOV_DH_CA'
      Origin = 'MOVFINANCEIRO.MOV_DH_CA'
    end
    object ibCadastro2MOV_TIPOBAIXA: TIBStringField
      FieldName = 'MOV_TIPOBAIXA'
      Origin = '"MOVFINANCEIRO"."MOV_TIPOBAIXA"'
      FixedChar = True
      Size = 1
    end
    object ibCadastro2MOV_DESCRICAO: TIBStringField
      FieldName = 'MOV_DESCRICAO'
      Origin = '"MOVFINANCEIRO"."MOV_DESCRICAO"'
      Size = 255
    end
    object ibCadastro2MOV_ANO: TIntegerField
      FieldName = 'MOV_ANO'
      Origin = '"MOVFINANCEIRO"."MOV_ANO"'
      Required = True
    end
    object ibCadastro2MOV_BAN_ID_CC: TIntegerField
      FieldName = 'MOV_BAN_ID_CC'
      Origin = '"MOVFINANCEIRO"."MOV_BAN_ID_CC"'
    end
    object ibCadastro2MOV_BAN_ID_AP: TIntegerField
      FieldName = 'MOV_BAN_ID_AP'
      Origin = '"MOVFINANCEIRO"."MOV_BAN_ID_AP"'
    end
  end
  object dsCadastro2: TDataSource
    DataSet = ibCadastro2
    Left = 408
    Top = 64
  end
end
