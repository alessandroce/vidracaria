object FormCadOrcamentoPedido_Produtos: TFormCadOrcamentoPedido_Produtos
  Left = 443
  Top = 182
  BorderStyle = bsDialog
  Caption = 'Inserindo Produto'
  ClientHeight = 312
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 293
    Width = 534
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 252
    Width = 534
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btFechar: TBitBtn
      Left = 344
      Top = 5
      Width = 75
      Height = 30
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btFecharClick
    end
    object btGravar: TBitBtn
      Left = 424
      Top = 5
      Width = 75
      Height = 30
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btGravarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 252
    Align = alClient
    TabOrder = 2
    object btLocalizar: TSpeedButton
      Left = 497
      Top = 7
      Width = 25
      Height = 22
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF008080800000000000000000000000
        000080808000FF00FF00000000000000000000000000FF00FF00FF00FF000000
        0000FFFFFF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFF
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF00FF00FF000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00000000008080800000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FFFFFF008080800000000000FFFF0000000000000000000000000000FFFF
        FF0000000000FF00FF000000000080808000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
        FF0000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
        FF0000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFF
        FF0000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008080800000000000000000000000000000000000000000000000
        000000000000FF00FF000000000080808000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF008080800000000000000000000000
        000080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btLocalizarClick
    end
    object lblEspessura: TLabel
      Left = 205
      Top = 37
      Width = 49
      Height = 13
      Caption = 'Espessura'
    end
    object lblAltura: TLabel
      Left = 271
      Top = 37
      Width = 27
      Height = 13
      Caption = 'Altura'
    end
    object lblLargura: TLabel
      Left = 335
      Top = 37
      Width = 36
      Height = 13
      Caption = 'Largura'
    end
    object lblMedida: TLabel
      Left = 400
      Top = 37
      Width = 35
      Height = 13
      Caption = 'Medida'
    end
    object lblValot: TLabel
      Left = 75
      Top = 37
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblQuantidade: TLabel
      Left = 10
      Top = 37
      Width = 55
      Height = 13
      Caption = 'Quantidade'
    end
    object lblUnidadeMedida: TLabel
      Left = 140
      Top = 37
      Width = 49
      Height = 13
      Caption = 'Unid.Med.'
    end
    object lblValorTotal: TLabel
      Left = 466
      Top = 37
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object Label1: TLabel
      Left = 135
      Top = 88
      Width = 60
      Height = 13
      Caption = 'Acabamento'
    end
    object Label2: TLabel
      Left = 281
      Top = 88
      Width = 26
      Height = 13
      Caption = 'Qtde.'
    end
    object Label3: TLabel
      Left = 332
      Top = 88
      Width = 16
      Height = 13
      Caption = 'Cor'
    end
    object Bevel1: TBevel
      Left = 11
      Top = 80
      Width = 510
      Height = 8
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object edProduto: TEdit
      Left = 10
      Top = 8
      Width = 483
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edProdutoKeyPress
    end
    object edEspessura: TEdit
      Left = 205
      Top = 52
      Width = 55
      Height = 21
      TabOrder = 1
      OnChange = edEspessuraChange
      OnKeyPress = edEspessuraKeyPress
    end
    object edAltura: TEdit
      Left = 270
      Top = 52
      Width = 55
      Height = 21
      TabOrder = 2
      OnChange = edAlturaChange
      OnExit = edAlturaExit
      OnKeyPress = edAlturaKeyPress
    end
    object edLargura: TEdit
      Left = 335
      Top = 52
      Width = 55
      Height = 21
      TabOrder = 3
      OnChange = edLarguraChange
      OnExit = edLarguraExit
      OnKeyPress = edLarguraKeyPress
    end
    object edMedida: TEdit
      Left = 400
      Top = 52
      Width = 55
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
      OnChange = edMedidaChange
    end
    object edValor: TEdit
      Left = 75
      Top = 52
      Width = 55
      Height = 21
      Color = clWhite
      TabOrder = 5
      OnChange = edValorChange
      OnExit = edValorExit
      OnKeyPress = edValorKeyPress
    end
    object edQuantidade: TEdit
      Left = 10
      Top = 52
      Width = 55
      Height = 21
      TabOrder = 6
      OnChange = edQuantidadeChange
      OnExit = edQuantidadeExit
      OnKeyPress = edQuantidadeKeyPress
    end
    object edUnidadeMedida: TEdit
      Left = 140
      Top = 52
      Width = 55
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 7
      OnChange = edUnidadeMedidaChange
    end
    object edValorTotal: TEdit
      Left = 466
      Top = 52
      Width = 55
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 8
      OnChange = edValorTotalChange
    end
    object cbAcabamento: TComboBox
      Left = 135
      Top = 103
      Width = 141
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 9
      Items.Strings = (
        ''
        'LAPIDADO'
        'CORTADO'
        'BISOTE'
        'FURO DOBRADI'#199'A'
        'DOBRADI'#199'A'
        'PELICILA'
        'PINTURA'
        'TEMPERADO')
    end
    object edQtdeAcabamento: TEdit
      Left = 281
      Top = 103
      Width = 47
      Height = 21
      TabOrder = 10
      OnChange = edAlturaChange
      OnExit = edAlturaExit
      OnKeyPress = edAlturaKeyPress
    end
    object cbCorAcabamento: TComboBox
      Left = 332
      Top = 103
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 11
      Items.Strings = (
        ''
        'AREIA'
        'AZUL'
        'BERINGELA'
        'BRANCO'
        'BRONZE'
        'CINZA'
        'CONCRETO'
        'FENDY'
        'FUME'
        'INCOLOR'
        'MARROM'
        'PRETO'
        'VERDE')
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 129
      Width = 515
      Height = 119
      TabOrder = 12
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsAcabamentoProduto
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ITENS_ORCPED_ID: TcxGridDBColumn
          DataBinding.FieldName = 'ITENS_ORCPED_ID'
        end
        object cxGrid1DBTableView1ITENS_PRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'ITENS_PRODUTO'
        end
        object cxGrid1DBTableView1TIPO_ACABAMENTO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO_ACABAMENTO'
          Width = 111
        end
        object cxGrid1DBTableView1ACABAMENTO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'ACABAMENTO'
          Width = 220
        end
        object cxGrid1DBTableView1QTDE_ACABAMENTO: TcxGridDBColumn
          Caption = 'Qtde.'
          DataBinding.FieldName = 'QTDE_ACABAMENTO'
          Width = 65
        end
        object cxGrid1DBTableView1COR_ACABAMENTO: TcxGridDBColumn
          Caption = 'Cor'
          DataBinding.FieldName = 'COR_ACABAMENTO'
          Width = 124
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btIncluir: TBitBtn
      Left = 459
      Top = 99
      Width = 30
      Height = 25
      TabOrder = 13
      OnClick = btIncluirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000002000000FFFFFF006699
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
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000000000000000000000000001010100000000000000000000000001
        0101010100000000000000000000010101010101010000000000000001010101
        0101010101010100000000000101010001010100010101000000000001010000
        0101010000010100000000000000000001010100000000000000000000000000
        0101010000000000000000000000000001010100000000000000000000000000
        0101010000000000000000000000000001010100000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btExcluir: TBitBtn
      Left = 491
      Top = 99
      Width = 30
      Height = 25
      TabOrder = 14
      OnClick = btExcluirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000002000000FFFFFF006699
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
        0000000000000000000000000000000000000000000000000000000000000000
        0101010000000000000000000000000001010100000000000000000000000000
        0101010000000000000000000000000001010100000000000000000000000000
        0101010000000000000000000101000001010100000101000000000001010100
        0101010001010100000000000101010101010101010101000000000000000101
        0101010101000000000000000000000101010101000000000000000000000000
        0101010000000000000000000000000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object cbTipoAcabamento: TComboBox
      Left = 8
      Top = 103
      Width = 123
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 15
      Items.Strings = (
        ''
        'PORTA'
        'VIDRO'
        'ESPELHO')
    end
  end
  object cdsAcabamentoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 152
    object cdsAcabamentoProdutoITENS_ORCPED_ID: TIntegerField
      FieldName = 'ITENS_ORCPED_ID'
    end
    object cdsAcabamentoProdutoITENS_PRODUTO: TIntegerField
      FieldName = 'ITENS_PRODUTO'
    end
    object cdsAcabamentoProdutoACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      Size = 100
    end
    object cdsAcabamentoProdutoQTDE_ACABAMENTO: TFloatField
      FieldName = 'QTDE_ACABAMENTO'
    end
    object cdsAcabamentoProdutoCOR_ACABAMENTO: TStringField
      FieldName = 'COR_ACABAMENTO'
      Size = 100
    end
    object cdsAcabamentoProdutoTIPO_ACABAMENTO: TStringField
      FieldName = 'TIPO_ACABAMENTO'
      Size = 100
    end
  end
  object dsAcabamentoProduto: TDataSource
    DataSet = cdsAcabamentoProduto
    Left = 56
    Top = 152
  end
end
