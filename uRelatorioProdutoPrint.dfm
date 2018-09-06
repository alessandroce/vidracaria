object FormRelatorioProdutoPrint: TFormRelatorioProdutoPrint
  Left = 192
  Top = 107
  Width = 823
  Height = 593
  Caption = 'Relat'#243'rio de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelatorioProduto: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DMRelatorioProduto.dsViewRelatorioProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 39
      BandType = btTitle
      object RLLabel11: TRLLabel
        Left = 8
        Top = 4
        Width = 214
        Height = 24
        Caption = 'Relat'#243'rio de Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 320
        Top = 8
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 640
        Top = 0
        Width = 118
        Height = 16
        Info = itPageNumber
        Text = 'Pag.:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 77
      Width = 718
      Height = 21
      BandType = btTitle
      Color = clSilver
      ParentColor = False
      Transparent = False
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 116
      Width = 718
      Height = 21
      object RLDBText1: TRLDBText
        Left = 9
        Top = 2
        Width = 124
        Height = 16
        DataField = 'PROD_DESCRICAO'
        DataSource = DMRelatorioProduto.dsViewRelatorioProduto
      end
      object RLDBText2: TRLDBText
        Left = 432
        Top = 2
        Width = 92
        Height = 16
        DataField = 'PROD_VALOR'
        DataSource = DMRelatorioProduto.dsViewRelatorioProduto
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 98
      Width = 718
      Height = 18
      BandType = btTitle
      object RLLabel5: TRLLabel
        Left = 10
        Top = -1
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
      object RLLabel4: TRLLabel
        Left = 432
        Top = -1
        Width = 38
        Height = 16
        Caption = 'Valor:'
      end
    end
  end
end
