inherited FSelecionarPadrao: TFSelecionarPadrao
  Left = 299
  Top = 165
  Height = 400
  Caption = 'FSelecionarPadrao'
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
    object BitBtn4: TBitBtn
      Left = 5
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 2
      Visible = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
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
    Left = 360
    Top = 72
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    OnDataChange = dsConsultaDataChange
    Left = 496
    Top = 72
  end
  object dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 408
    Top = 72
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 448
    Top = 72
  end
end
