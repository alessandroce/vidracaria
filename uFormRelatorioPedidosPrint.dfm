object FormRelatorioPedidosPrint: TFormRelatorioPedidosPrint
  Left = 193
  Top = 162
  Width = 798
  Height = 637
  Caption = 'Relat'#243'rio de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DMRelatorioPedido.dsViewRelatorioPedido_Busca
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 152
      BandType = btTitle
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 190
      Width = 718
      Height = 54
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 8
        Top = 15
        Width = 114
        Height = 29
        Caption = 'Pedidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 144
        Top = 29
        Width = 54
        Height = 13
        Caption = 'Per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 640
        Top = 2
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 244
      Width = 718
      Height = 70
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 35
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLLabel12: TRLLabel
          Left = 8
          Top = 14
          Width = 18
          Height = 13
          Caption = 'N'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 68
          Top = 14
          Width = 44
          Height = 13
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 465
          Top = 14
          Width = 73
          Height = 13
          Caption = 'Data Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 577
          Top = 14
          Width = 34
          Height = 13
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLDetailGrid2: TRLDetailGrid
        Left = 0
        Top = 35
        Width = 718
        Height = 19
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLDBText13: TRLDBText
          Left = 6
          Top = 3
          Width = 48
          Height = 13
          DataField = 'PED_ID'
          DataSource = DMRelatorioPedido.dsViewRelatorioPedido_Busca
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 67
          Top = 3
          Width = 80
          Height = 13
          DataField = 'CLI_CLIENTE'
          DataSource = DMRelatorioPedido.dsViewRelatorioPedido_Busca
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 577
          Top = 3
          Width = 136
          Height = 13
          DataField = 'PED_VALOR_TOTAL'
          DataSource = DMRelatorioPedido.dsViewRelatorioPedido_Busca
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Text = 'R$ '
        end
        object RLDBText1: TRLDBText
          Left = 467
          Top = 3
          Width = 78
          Height = 13
          DataField = 'PED_DATA_PEDIDO'
          DataSource = DMRelatorioPedido.dsViewRelatorioPedido_Busca
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 330
      Width = 718
      Height = 52
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 668
        Top = 20
        Width = 29
        Height = 18
        Alignment = taRightJustify
        Caption = 'R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 314
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
    end
  end
end
