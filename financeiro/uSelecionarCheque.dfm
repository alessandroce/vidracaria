inherited FSelecionarCheque: TFSelecionarCheque
  Left = 299
  Top = 165
  Height = 400
  Caption = 'FSelecionarCheque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 71
    Width = 584
    Height = 250
    Align = alClient
    TabOrder = 1
    object grConsulta: TcxGrid
      Left = 1
      Top = 1
      Width = 582
      Height = 248
      Align = alClient
      TabOrder = 0
      object grConsultaDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = grConsultaDBTableView1CellDblClick
        DataController.DataSource = dsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Clique aqui para definir um filtro'
        FilterRow.SeparatorWidth = 5
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsView.NoDataToDisplayInfoText = 'Sem registros para exibir'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grConsultaDBTableView1SELECIONAR: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 40
          IsCaptionAssigned = True
        end
        object grConsultaDBTableView1CHQ_ID: TcxGridDBColumn
          DataBinding.FieldName = 'CHQ_ID'
          Visible = False
        end
        object grConsultaDBTableView1CHQ_BANCO: TcxGridDBColumn
          Caption = 'Banco'
          DataBinding.FieldName = 'CHQ_BANCO'
          Options.Editing = False
        end
        object grConsultaDBTableView1CHQ_CONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'CHQ_CONTA'
          Options.Editing = False
        end
        object grConsultaDBTableView1CHQ_AGENCIA: TcxGridDBColumn
          Caption = 'Ag'#234'ncia'
          DataBinding.FieldName = 'CHQ_AGENCIA'
          Options.Editing = False
          Width = 94
        end
        object grConsultaDBTableView1CHQ_NUMERO: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'CHQ_NUMERO'
          Options.Editing = False
        end
        object grConsultaDBTableView1CHQ_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'CHQ_VALOR'
          Options.Editing = False
          Width = 94
        end
      end
      object grConsultaLevel1: TcxGridLevel
        GridView = grConsultaDBTableView1
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 321
    Width = 584
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btCancelar: TBitBtn
      Left = 210
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btCancelarClick
      Kind = bkCancel
    end
    object btOK: TBitBtn
      Left = 298
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = btOKClick
      Kind = bkOK
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 30
    Width = 584
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object lblVezes: TLabel
      Left = 295
      Top = 14
      Width = 28
      Height = 13
      Caption = 'vezes'
      Visible = False
    end
    object lblOcorrencia: TLabel
      Left = 189
      Top = 14
      Width = 52
      Height = 13
      Caption = 'Ocorr'#234'ncia'
      Visible = False
    end
    object edOcorrencia: TEdit
      Left = 249
      Top = 10
      Width = 40
      Height = 21
      Enabled = False
      TabOrder = 0
      Visible = False
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Todos'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inverter'
      TabOrder = 2
      OnClick = BitBtn4Click
    end
  end
  inherited ActionList1: TActionList
    Top = 120
  end
  inherited ImageList1: TImageList
    Top = 120
  end
  inherited frxReport1: TfrxReport
    Top = 120
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxIBXComponents1: TfrxIBXComponents
    Top = 120
  end
  object qConsulta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '#39'N'#39' selecionar,'
      '    CHQ_ID,'
      '    CHQ_BANCO,'
      '    CHQ_CONTA,'
      '    CHQ_AGENCIA,'
      '    CHQ_NUMERO,'
      '    CHQ_VALOR'
      '  from cheque'
      ' where not exists ('
      '                 select null'
      '                   from pagarreceber_cheque'
      
        '                  where pagarreceber_cheque.pac_chq_id=cheque.ch' +
        'q_id'
      '                   )'
      '   and coalesce(cheque.chq_situacao,0)=0')
    Left = 392
    Top = 112
    object qConsultaSELECIONAR: TIBStringField
      FieldName = 'SELECIONAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qConsultaCHQ_ID: TIntegerField
      FieldName = 'CHQ_ID'
      Origin = 'CHEQUE.CHQ_ID'
      Required = True
    end
    object qConsultaCHQ_BANCO: TIBStringField
      FieldName = 'CHQ_BANCO'
      Origin = 'CHEQUE.CHQ_BANCO'
      Size = 15
    end
    object qConsultaCHQ_CONTA: TIBStringField
      FieldName = 'CHQ_CONTA'
      Origin = 'CHEQUE.CHQ_CONTA'
      Size = 15
    end
    object qConsultaCHQ_AGENCIA: TIBStringField
      FieldName = 'CHQ_AGENCIA'
      Origin = 'CHEQUE.CHQ_AGENCIA'
      Size = 6
    end
    object qConsultaCHQ_NUMERO: TIBStringField
      FieldName = 'CHQ_NUMERO'
      Origin = 'CHEQUE.CHQ_NUMERO'
      Size = 15
    end
    object qConsultaCHQ_VALOR: TIBBCDField
      FieldName = 'CHQ_VALOR'
      Origin = 'CHEQUE.CHQ_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 520
    Top = 112
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 480
    Top = 112
    object cdsConsultaSELECIONAR: TStringField
      FieldName = 'SELECIONAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCHQ_ID: TIntegerField
      FieldName = 'CHQ_ID'
      Required = True
    end
    object cdsConsultaCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 15
    end
    object cdsConsultaCHQ_CONTA: TStringField
      FieldName = 'CHQ_CONTA'
      Size = 15
    end
    object cdsConsultaCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 6
    end
    object cdsConsultaCHQ_NUMERO: TStringField
      FieldName = 'CHQ_NUMERO'
      Size = 15
    end
    object cdsConsultaCHQ_VALOR: TBCDField
      FieldName = 'CHQ_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 432
    Top = 112
  end
end
