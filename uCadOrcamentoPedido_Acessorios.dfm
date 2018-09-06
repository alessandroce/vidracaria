object FormCadOrcamentoPedido_Acessorios: TFormCadOrcamentoPedido_Acessorios
  Left = 312
  Top = 194
  BorderStyle = bsDialog
  Caption = 'Inserindo Acess'#243'rios'
  ClientHeight = 190
  ClientWidth = 522
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
    Top = 171
    Width = 522
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 130
    Width = 522
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
    Width = 522
    Height = 130
    Align = alClient
    TabOrder = 2
    object btLocalizar: TSpeedButton
      Left = 466
      Top = 9
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
      Left = 217
      Top = 41
      Width = 49
      Height = 13
      Caption = 'Espessura'
    end
    object lblAltura: TLabel
      Left = 285
      Top = 41
      Width = 27
      Height = 13
      Caption = 'Altura'
    end
    object lblLargura: TLabel
      Left = 354
      Top = 41
      Width = 36
      Height = 13
      Caption = 'Largura'
    end
    object lblMedida: TLabel
      Left = 422
      Top = 41
      Width = 35
      Height = 13
      Caption = 'Medida'
    end
    object lblValot: TLabel
      Left = 89
      Top = 41
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblQuantidade: TLabel
      Left = 24
      Top = 41
      Width = 55
      Height = 13
      Caption = 'Quantidade'
    end
    object lblUnidadeMedida: TLabel
      Left = 156
      Top = 41
      Width = 49
      Height = 13
      Caption = 'Unid.Med.'
    end
    object lblValorTotal: TLabel
      Left = 24
      Top = 81
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object edProduto: TEdit
      Left = 24
      Top = 10
      Width = 442
      Height = 21
      TabOrder = 0
      OnKeyPress = edProdutoKeyPress
    end
    object edEspessura: TEdit
      Left = 217
      Top = 56
      Width = 55
      Height = 21
      TabOrder = 4
    end
    object edAltura: TEdit
      Left = 285
      Top = 56
      Width = 55
      Height = 21
      TabOrder = 5
    end
    object edLargura: TEdit
      Left = 354
      Top = 56
      Width = 55
      Height = 21
      TabOrder = 6
    end
    object edMedida: TEdit
      Left = 422
      Top = 56
      Width = 55
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 7
    end
    object edValor: TEdit
      Left = 89
      Top = 56
      Width = 55
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object edQuantidade: TEdit
      Left = 24
      Top = 56
      Width = 55
      Height = 21
      TabOrder = 1
    end
    object edUnidadeMedida: TEdit
      Left = 156
      Top = 56
      Width = 55
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
    end
    object edValorTotal: TEdit
      Left = 24
      Top = 96
      Width = 55
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 8
    end
  end
end
