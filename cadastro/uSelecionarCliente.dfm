inherited FSelecionarCli: TFSelecionarCli
  Left = 299
  Top = 165
  Height = 400
  Caption = 'FSelecionarCli'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 30
    Width = 584
    Height = 291
    Align = alClient
    TabOrder = 1
    object grConsulta: TcxGrid
      Left = 1
      Top = 1
      Width = 582
      Height = 289
      Align = alClient
      TabOrder = 0
      object grConsultaDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
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
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'Sem registros para exibir'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grConsultaDBTableView1CLI_ID: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CLI_ID'
        end
        object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'CLI_CLIENTE'
          Width = 500
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
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qConsulta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select clientes.cli_id,'
      '       clientes.cli_cliente'
      '  from clientes'
      ' where ((clientes.cli_tipocli = :TipoCli) or (0 = :TipoCli))'
      ' order by clientes.cli_cliente')
    Left = 432
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoCli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoCli'
        ParamType = ptUnknown
      end>
    object qConsultaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = '"CLIENTES"."CLI_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = qConsulta
    OnDataChange = dsConsultaDataChange
    Left = 496
    Top = 72
  end
end
