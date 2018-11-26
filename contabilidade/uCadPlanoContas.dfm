inherited FCadPlanoContas: TFCadPlanoContas
  Left = 224
  Top = 172
  Width = 800
  Caption = 'FCadPlanoContas'
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBarraForm: TPanel
    Width = 784
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 80
    Width = 784
    Height = 342
    TabOrder = 1
    Visible = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGrupo
      DataController.KeyFieldNames = 'PGR_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem registro para exibir>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      Styles.Content = cxSt_Grupo
      object cxGrid1DBTableView1PGR_CODIGO: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'PGR_CODIGO'
        Width = 30
      end
      object cxGrid1DBTableView1PGR_DESCRICAO: TcxGridDBColumn
        Caption = 'Grupo'
        DataBinding.FieldName = 'PGR_DESCRICAO'
        Width = 700
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSubGrupo
      DataController.DetailKeyFieldNames = 'PSG_PGR_ID'
      DataController.KeyFieldNames = 'PSG_ID'
      DataController.MasterKeyFieldNames = 'PGR_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem registro para exibir>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      Styles.Content = cxSt_Subgrupo
      object cxGrid1DBTableView2PSG_CODIGO: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'PSG_CODIGO'
        Width = 30
      end
      object cxGrid1DBTableView2PSG_DESCRICAO: TcxGridDBColumn
        Caption = 'Subgrupo'
        DataBinding.FieldName = 'PSG_DESCRICAO'
        Width = 682
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsItem
      DataController.DetailKeyFieldNames = 'PIT_PSG_ID'
      DataController.KeyFieldNames = 'PIT_ID'
      DataController.MasterKeyFieldNames = 'PSG_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem registro para exibir>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      Styles.Content = cxSt_Item
      object cxGrid1DBTableView3PIT_CODIGO: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'PIT_CODIGO'
        Width = 30
      end
      object cxGrid1DBTableView3PIT_CODIGOREDUZIDO: TcxGridDBColumn
        Caption = 'Cod. Reduzido'
        DataBinding.FieldName = 'PIT_CODIGOREDUZIDO'
        Width = 30
      end
      object cxGrid1DBTableView3PIT_DESCRICAO: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'PIT_DESCRICAO'
        Width = 651
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
        object cxGrid1Level3: TcxGridLevel
          GridView = cxGrid1DBTableView3
        end
      end
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 423
    Width = 784
    Height = 19
    Panels = <>
  end
  object pnBarraPg: TPanel [3]
    Left = 0
    Top = 30
    Width = 784
    Height = 50
    Align = alTop
    TabOrder = 3
    DesignSize = (
      784
      50)
    object btNovo: TSpeedButton
      Left = 3
      Top = 2
      Width = 60
      Height = 45
      Action = Act_Btn_Novo
      BiDiMode = bdLeftToRight
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C30E0000C30E00000001000005000000FFFFFF0000FF
        FF00C0C0C0008000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101010101
        0101010101010104010101010101010101010101010101040101010101010101
        0101010101040404040401010101010101010101010101040101040404040404
        0404040404040104010104000000000000000000000401010101040004040004
        0400040400040101010104000000000000000000000401010101040303030303
        0303030303030301010101030000000000000000000003010101010300040400
        0404000404000301010101030000000000000000000003010101010303030303
        0303030303030301010101030203030203030203030203010101010303030303
        0303030303030301010101010101010101010101010101010101}
      Layout = blGlyphTop
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
    end
    object btAlterar: TSpeedButton
      Left = 63
      Top = 2
      Width = 60
      Height = 45
      Action = Act_Btn_Alterar
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF003F000000FF00FF003F000000FF00FF003F000000FF00FF003F00
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
        00003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
        00003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
        00003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F00
        000000FFFF003F3F3F003F000000FF00FF00FF00FF00FF00FF00FF00FF003F00
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F00
        000000FFFF00BFBFBF003F000000FF00FF00FF00FF00FF00FF00FF00FF003F00
        0000FFFFFF003F0000003F0000003F0000003F000000FFFFFF00FFFFFF003F3F
        3F003F00000000FFFF003F3F3F003F000000FF00FF00FF00FF00FF00FF003F00
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF003F00000000FFFF00BFBFBF003F000000FF00FF00FF00FF00FF00FF003F00
        0000FFFFFF003F0000003F0000003F0000003F0000003F000000FFFFFF00FFFF
        FF00FFFFFF003F00000000FFFF003F3F3F003F000000FF00FF00FF00FF003F00
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF003F00000000FFFF003F0000003F0000003F3F3F00FF00FF003F00
        0000FFFFFF003F0000003F0000003F000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF003F0000003F00000000003F00666666003F000000FF00FF003F00
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF003F0000003F0000003F0000003F000000FF00FF00FF00FF003F00
        00003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F00
        00003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
        00003F000000FFFFFF003F000000FFFFFF003F000000FFFFFF003F000000FFFF
        FF003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
        00003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F00
        00003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
    end
    object btExcluir: TSpeedButton
      Left = 123
      Top = 2
      Width = 60
      Height = 45
      Action = Act_Btn_Excluir
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000007000000FFFFFF0000FF
        FF00C0C0C0008000800000008000800000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101010101
        0101010401010101010101010101010101010404010101010104010101010101
        0101040404010101040101010101010101010104040101040401060606060606
        0606060606040403010106020202020202020202030404010101060206060206
        0602060204030404010106020202020202020204040202040403060505050505
        0503040505050501030401050000000000040300000005010101010500060600
        0606000606000501010101050000000000000000000005010101010505050505
        0505050505050501010101050205050205050205050205010101010505050505
        0505050505050501010101010101010101010101010101010101}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object btSair: TSpeedButton
      Left = 722
      Top = 2
      Width = 60
      Height = 45
      Action = Act_Btn_Sair
      Anchors = [akLeft]
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B000000010000030000000000FF00CC99
        9900000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0200000000000002000000000000000002020000000000020000000000000000
        0201020000000002000000000202020202010102000000020000000002010101
        0101010102000002000000000201010101010101010200020000000002010101
        0101010102000002000000000202020202010102000000020000000000000000
        0201020000000002000000000000000002020000000000020000000000000000
        0200000000000002000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
    end
    object btImprimir: TSpeedButton
      Left = 183
      Top = 2
      Width = 60
      Height = 45
      Action = Act_Btn_Imprimir
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC0000000000CCCCCC0000000000FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000CCCCCC0000000000FF00FF0000000000CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000FFFF0000FFFF0000FF
        FF00CCCCCC00CCCCCC00000000000000000000000000FF00FF0000000000CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0084848400848484008484
        8400CCCCCC00CCCCCC0000000000CCCCCC0000000000FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000CCCCCC00CCCCCC000000000000000000CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC0000000000CCCCCC0000000000CCCCCC0000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000CCCCCC0000000000CCCCCC000000000000000000FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000CCCCCC0000000000CCCCCC0000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
        0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
        000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
    end
    object rgAtivo: TRadioGroup
      Left = 258
      Top = 8
      Width = 239
      Height = 35
      Columns = 3
      Items.Strings = (
        'Todos'
        'Ativo'
        'Inativo')
      TabOrder = 0
      Visible = False
    end
  end
  object cxGrid2: TcxGrid [4]
    Left = 0
    Top = 80
    Width = 784
    Height = 343
    Align = alClient
    TabOrder = 4
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
      DataController.DataSource = dsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem registro para exibir>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      object cxGridDBTableView1CODIGO: TcxGridDBColumn
        Caption = 'Sequencia'
        DataBinding.FieldName = 'CODIGO'
        Width = 126
      end
      object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 637
      end
      object cxGridDBTableView1NIVEL: TcxGridDBColumn
        DataBinding.FieldName = 'NIVEL'
        Visible = False
      end
      object cxGridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
    end
    object cxGridDBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSubGrupo
      DataController.DetailKeyFieldNames = 'PSG_PGR_ID'
      DataController.KeyFieldNames = 'PSG_ID'
      DataController.MasterKeyFieldNames = 'PGR_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem registro para exibir>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      Styles.Content = cxSt_Subgrupo
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'PSG_CODIGO'
        Width = 30
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Subgrupo'
        DataBinding.FieldName = 'PSG_DESCRICAO'
        Width = 682
      end
    end
    object cxGridDBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsItem
      DataController.DetailKeyFieldNames = 'PIT_PSG_ID'
      DataController.KeyFieldNames = 'PIT_ID'
      DataController.MasterKeyFieldNames = 'PSG_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem registro para exibir>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      Styles.Content = cxSt_Item
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'PIT_CODIGO'
        Width = 30
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = 'Cod. Reduzido'
        DataBinding.FieldName = 'PIT_CODIGOREDUZIDO'
        Width = 30
      end
      object cxGridDBColumn7: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'PIT_DESCRICAO'
        Width = 651
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  inherited ActionList1: TActionList
    Left = 152
    inherited Act_Btn_Alterar: TAction
      OnExecute = Act_Btn_AlterarExecute
    end
    inherited Act_Btn_Excluir: TAction
      OnExecute = Act_Btn_ExcluirExecute
    end
    inherited Act_Btn_Imprimir: TAction
      OnExecute = Act_Btn_ImprimirExecute
    end
    inherited Act_Btn_Sair: TAction
      OnExecute = Act_Btn_SairExecute
    end
    inherited Act_Btn_Novo: TAction
      OnExecute = Act_Btn_NovoExecute
    end
    object Btn_PlGrupo: TAction
      Category = 'Menu'
      Caption = 'Grupo'
      Hint = 'Cadastro de Grupo do Plano de Contas'
      OnExecute = Btn_PlGrupoExecute
    end
    object Btn_PlSubgrupo: TAction
      Category = 'Menu'
      Caption = 'Subgrupo'
      Hint = 'Cadastro de Subgrupo do Plano de Contas'
      OnExecute = Btn_PlSubgrupoExecute
    end
    object Btn_PlItem: TAction
      Category = 'Menu'
      Caption = 'Item'
      Hint = 'Cadastro de Item do Plano de Contas'
      OnExecute = Btn_PlItemExecute
    end
    object Btn_Categoria: TAction
      Category = 'Menu'
      Caption = 'Categoria'
      Hint = 'Cadastro de Categoria do Plano de Contas'
      OnExecute = Btn_CategoriaExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 120
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qGrupo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterOpen = qGrupoAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 1 conta, pl_grupo.* from pl_grupo')
    Left = 296
    Top = 8
    object qGrupoPGR_ID: TIntegerField
      FieldName = 'PGR_ID'
      Origin = '"PL_GRUPO"."PGR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qGrupoPGR_CODIGO: TIntegerField
      FieldName = 'PGR_CODIGO'
      Origin = '"PL_GRUPO"."PGR_CODIGO"'
    end
    object qGrupoPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = '"PL_GRUPO"."PGR_DESCRICAO"'
      Size = 100
    end
    object qGrupoPGR_DH_CA: TDateTimeField
      FieldName = 'PGR_DH_CA'
      Origin = '"PL_GRUPO"."PGR_DH_CA"'
    end
    object qGrupoCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
  end
  object qSubGrupo: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterOpen = qSubGrupoAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 2 conta, pl_subgrupo.* from pl_subgrupo')
    Left = 376
    Top = 8
    object qSubGrupoPSG_ID: TIntegerField
      FieldName = 'PSG_ID'
      Origin = '"PL_SUBGRUPO"."PSG_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSubGrupoPSG_PGR_ID: TIntegerField
      FieldName = 'PSG_PGR_ID'
      Origin = '"PL_SUBGRUPO"."PSG_PGR_ID"'
      Required = True
    end
    object qSubGrupoPSG_CODIGO: TIntegerField
      FieldName = 'PSG_CODIGO'
      Origin = '"PL_SUBGRUPO"."PSG_CODIGO"'
    end
    object qSubGrupoPSG_DESCRICAO: TIBStringField
      FieldName = 'PSG_DESCRICAO'
      Origin = '"PL_SUBGRUPO"."PSG_DESCRICAO"'
      Size = 100
    end
    object qSubGrupoPSG_DH_CA: TDateTimeField
      FieldName = 'PSG_DH_CA'
      Origin = '"PL_SUBGRUPO"."PSG_DH_CA"'
    end
    object qSubGrupoCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
  end
  object qItem: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterOpen = qItemAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 3 conta, pl_item.* from pl_item')
    Left = 456
    Top = 8
    object qItemPIT_ID: TIntegerField
      FieldName = 'PIT_ID'
      Origin = '"PL_ITEM"."PIT_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qItemPIT_PSG_ID: TIntegerField
      FieldName = 'PIT_PSG_ID'
      Origin = '"PL_ITEM"."PIT_PSG_ID"'
    end
    object qItemPIT_PCA_ID: TIntegerField
      FieldName = 'PIT_PCA_ID'
      Origin = '"PL_ITEM"."PIT_PCA_ID"'
    end
    object qItemPIT_CODIGO: TIntegerField
      FieldName = 'PIT_CODIGO'
      Origin = '"PL_ITEM"."PIT_CODIGO"'
    end
    object qItemPIT_CODIGOREDUZIDO: TIntegerField
      FieldName = 'PIT_CODIGOREDUZIDO'
      Origin = '"PL_ITEM"."PIT_CODIGOREDUZIDO"'
    end
    object qItemPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Origin = '"PL_ITEM"."PIT_DESCRICAO"'
      Size = 100
    end
    object qItemPIT_DH_CA: TDateTimeField
      FieldName = 'PIT_DH_CA'
      Origin = '"PL_ITEM"."PIT_DH_CA"'
    end
    object qItemCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
  end
  object dsGrupo: TDataSource
    DataSet = qGrupo
    Left = 336
    Top = 8
  end
  object dsSubGrupo: TDataSource
    DataSet = qSubGrupo
    Left = 416
    Top = 8
  end
  object dsItem: TDataSource
    DataSet = qItem
    Left = 496
    Top = 8
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 8
    PixelsPerInch = 96
    object cxSt_Grupo: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxSt_Subgrupo: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxSt_Item: TcxStyle
    end
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 136
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Grupo1: TMenuItem
        Action = Btn_PlGrupo
      end
      object BtnPlSubgrupo1: TMenuItem
        Action = Btn_PlSubgrupo
      end
      object Item1: TMenuItem
        Action = Btn_PlItem
      end
      object Categoria1: TMenuItem
        Action = Btn_Categoria
      end
    end
  end
  object qPlanoContas: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterOpen = qGrupoAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pl_grupo.pgr_codigo||'#39'.'#39'||'
      '       pl_subgrupo.psg_codigo||'#39'.'#39'||'
      '       pl_item.pit_codigo cod_contabil,'
      '       pl_grupo.pgr_codigo,'
      '       pl_grupo.pgr_descricao,'
      '       pl_subgrupo.psg_codigo,'
      '       pl_subgrupo.psg_descricao,'
      '       pl_item.pit_codigo,'
      '       pl_item.pit_codigoreduzido,'
      '       pl_item.pit_descricao,'
      '       pl_categoria.pca_descricao'
      '  from pl_grupo'
      
        ' left join pl_subgrupo on (pl_subgrupo.psg_pgr_id=pl_grupo.pgr_i' +
        'd)'
      ' left join pl_item on (pl_item.pit_psg_id=pl_subgrupo.psg_id)'
      
        ' left join pl_categoria on (pl_categoria.pca_id=pl_item.pit_pca_' +
        'id)')
    Left = 240
    Top = 120
    object qPlanoContasCOD_CONTABIL: TIBStringField
      FieldName = 'COD_CONTABIL'
      ProviderFlags = []
      Size = 35
    end
    object qPlanoContasPGR_CODIGO: TIntegerField
      FieldName = 'PGR_CODIGO'
      Origin = '"PL_GRUPO"."PGR_CODIGO"'
    end
    object qPlanoContasPGR_DESCRICAO: TIBStringField
      FieldName = 'PGR_DESCRICAO'
      Origin = '"PL_GRUPO"."PGR_DESCRICAO"'
      Size = 100
    end
    object qPlanoContasPSG_CODIGO: TIntegerField
      FieldName = 'PSG_CODIGO'
      Origin = '"PL_SUBGRUPO"."PSG_CODIGO"'
    end
    object qPlanoContasPSG_DESCRICAO: TIBStringField
      FieldName = 'PSG_DESCRICAO'
      Origin = '"PL_SUBGRUPO"."PSG_DESCRICAO"'
      Size = 100
    end
    object qPlanoContasPIT_CODIGO: TIntegerField
      FieldName = 'PIT_CODIGO'
      Origin = '"PL_ITEM"."PIT_CODIGO"'
    end
    object qPlanoContasPIT_CODIGOREDUZIDO: TIntegerField
      FieldName = 'PIT_CODIGOREDUZIDO'
      Origin = '"PL_ITEM"."PIT_CODIGOREDUZIDO"'
    end
    object qPlanoContasPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Origin = '"PL_ITEM"."PIT_DESCRICAO"'
      Size = 100
    end
    object qPlanoContasPCA_DESCRICAO: TIBStringField
      FieldName = 'PCA_DESCRICAO'
      Origin = '"PL_CATEGORIA"."PCA_DESCRICAO"'
      Size = 100
    end
  end
  object dsPlanoContas: TDataSource
    DataSet = qPlanoContas
    Left = 280
    Top = 120
  end
  object frxDBPlanoContas: TfrxDBDataset
    UserName = 'frxDBPlanoContas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_CONTABIL=COD_CONTABIL'
      'PGR_CODIGO=PGR_CODIGO'
      'PGR_DESCRICAO=PGR_DESCRICAO'
      'PSG_CODIGO=PSG_CODIGO'
      'PSG_DESCRICAO=PSG_DESCRICAO'
      'PIT_CODIGO=PIT_CODIGO'
      'PIT_CODIGOREDUZIDO=PIT_CODIGOREDUZIDO'
      'PIT_DESCRICAO=PIT_DESCRICAO'
      'PCA_DESCRICAO=PCA_DESCRICAO')
    DataSource = dsPlanoContas
    BCDToCurrency = False
    Left = 232
    Top = 192
  end
  object qConsulta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 0 nivel,'
      '       0 id,'
      '       lpad(0,2,'#39'0'#39') codigo,'
      '       '#39'PLANO DE CONTAS'#39' descricao'
      '  from rdb$database'
      'union all'
      'select nivel, id, codigo, descricao'
      '  from ('
      '    select nivel, id, codigo, descricao'
      '      from ('
      '            select 1 nivel,'
      '                   coalesce(pl_grupo.pgr_id,0) id,'
      '                   lpad(pl_grupo.pgr_codigo,2,'#39'0'#39') codigo,'
      '                   pl_grupo.pgr_descricao descricao'
      '              from pl_grupo'
      '             where pl_grupo.pgr_id>-1'
      '            union all'
      '            select 2 nivel,'
      '                   coalesce(pl_subgrupo.psg_id,0) id,'
      
        '                   lpad(coalesce(pl_grupo.pgr_codigo,'#39'0'#39'),2,'#39'0'#39')' +
        '||'#39'.'#39'||'
      
        '                   lpad(coalesce(pl_subgrupo.psg_codigo,'#39'0'#39'),2,'#39 +
        '0'#39') codigo,'
      '                   '#39'    '#39'||pl_subgrupo.psg_descricao descricao'
      '              from pl_grupo'
      
        '             left join pl_subgrupo on (pl_subgrupo.psg_pgr_id=pl' +
        '_grupo.pgr_id)'
      '             where pl_grupo.pgr_id>-1'
      '            union all'
      '            select 3 nivel,'
      '                   coalesce(pl_item.pit_id,0) id,'
      
        '                   lpad(coalesce(pl_grupo.pgr_codigo,'#39'0'#39'),2,'#39'0'#39')' +
        ' ||'#39'.'#39'||'
      
        '                   lpad(coalesce(pl_subgrupo.psg_codigo,'#39'0'#39'),2,'#39 +
        '0'#39') ||'#39'.'#39'||'
      
        '                   lpad(coalesce(pl_item.pit_codigo,'#39'0'#39'),2,'#39'0'#39') ' +
        'codigo,'
      '                   '#39'        '#39'||pl_item.pit_descricao descricao'
      '              from pl_grupo'
      
        '             left join pl_subgrupo on (pl_subgrupo.psg_pgr_id=pl' +
        '_grupo.pgr_id)'
      
        '             left join pl_item on (pl_item.pit_psg_id=pl_subgrup' +
        'o.psg_id)'
      '             where pl_grupo.pgr_id>-1)'
      '     where ID>0'
      '     order by CODIGO'
      ')')
    Left = 400
    Top = 144
    object qConsultaNIVEL: TIntegerField
      FieldName = 'NIVEL'
      ProviderFlags = []
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object qConsultaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 8
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = qConsulta
    Left = 440
    Top = 144
  end
end
