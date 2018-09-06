object FormRelatorioTipoProdutoPrint: TFormRelatorioTipoProdutoPrint
  Left = 192
  Top = 107
  Width = 823
  Height = 593
  Caption = 'Relat'#243'rio de Tipo de Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelatorioTipoProduto: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DMRelatorioTipoProduto.dsViewRelatorioProdutoTipo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 38
      BandType = btTitle
      object RLLabel11: TRLLabel
        Left = 8
        Top = 4
        Width = 295
        Height = 24
        Caption = 'Relat'#243'rio de Tipo de Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 344
        Top = 8
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 656
        Top = 0
        Width = 118
        Height = 16
        Info = itPageNumber
        Text = 'Pag.:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 76
      Width = 718
      Height = 19
      BandType = btTitle
      Color = clSilver
      ParentColor = False
      Transparent = False
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 121
      Width = 718
      Height = 19
      object RLDBText1: TRLDBText
        Left = 8
        Top = 1
        Width = 140
        Height = 16
        DataField = 'PRODTP_DESCRICAO'
        DataSource = DMRelatorioTipoProduto.dsViewRelatorioProdutoTipo
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 95
      Width = 718
      Height = 26
      BandType = btTitle
      object RLLabel2: TRLLabel
        Left = 8
        Top = 2
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
    end
  end
end
