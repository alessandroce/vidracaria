object FormOrcamentoPedidoPrint_Fabrica: TFormOrcamentoPedidoPrint_Fabrica
  Left = 223
  Top = 167
  Width = 827
  Height = 569
  VertScrollBar.Position = 236
  Caption = 'Or'#231'amento/Pedido F'#225'brica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object OrcamentoPedido: TRLReport
    Left = 0
    Top = -236
    Width = 794
    Height = 1123
    DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = OrcamentoPedidoBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 190
      Width = 718
      Height = 32
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 11
        Top = 2
        Width = 258
        Height = 27
        Caption = 'OR'#199'AMENTO/PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 276
        Top = 6
        Width = 63
        Height = 18
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 348
        Top = 4
        Width = 156
        Height = 22
        DataField = 'VS_ORCPED_ID'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 478
        Top = 7
        Width = 35
        Height = 16
        Caption = 'Data:'
      end
      object RLDBText2: TRLDBText
        Left = 518
        Top = 7
        Width = 125
        Height = 16
        DataField = 'VS_ORCPED_DATA'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 636
        Top = 0
        Width = 118
        Height = 16
        Info = itPageNumber
        Text = 'Pag.:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 222
      Width = 718
      Height = 99
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel4: TRLLabel
        Left = 8
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 79
        Top = 16
        Width = 103
        Height = 13
        DataField = 'VS_CLI_CLIENTE'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 8
        Top = 31
        Width = 69
        Height = 13
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 392
        Top = 31
        Width = 48
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 8
        Top = 47
        Width = 69
        Height = 13
        Caption = 'Municipio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 392
        Top = 47
        Width = 32
        Height = 13
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 8
        Top = 63
        Width = 65
        Height = 13
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 210
        Top = 63
        Width = 54
        Height = 13
        Caption = 'Celular:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 392
        Top = 63
        Width = 32
        Height = 13
        Caption = 'Fax:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 79
        Top = 31
        Width = 118
        Height = 13
        DataField = 'VS_CLI_ENDERECO'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 79
        Top = 47
        Width = 119
        Height = 13
        DataField = 'VS_CLI_MUNICIPIO'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 448
        Top = 31
        Width = 100
        Height = 13
        DataField = 'VS_CLI_BAIRRO'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 448
        Top = 47
        Width = 77
        Height = 13
        DataField = 'VS_CLI_CEP'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 79
        Top = 63
        Width = 84
        Height = 13
        DataField = 'VS_CLI_FONE'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 266
        Top = 63
        Width = 106
        Height = 13
        DataField = 'VS_CLI_CELULAR'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 448
        Top = 63
        Width = 76
        Height = 13
        DataField = 'VS_CLI_FAX'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 525
      Width = 718
      Height = 45
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand4BeforePrint
      object RLDBMemo1: TRLDBMemo
        Left = 16
        Top = 25
        Width = 681
        Height = 13
        DataField = 'VS_ORCPED_OBSERVACAO'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 16
        Top = 9
        Width = 77
        Height = 13
        Caption = 'Observa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 570
      Width = 718
      Height = 93
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel29: TRLLabel
        Left = 546
        Top = 2
        Width = 74
        Height = 13
        Caption = 'TOTAL M'#178' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 538
        Top = 18
        Width = 82
        Height = 13
        Caption = 'TOTAL Mc/ :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText27: TRLDBText
        Left = 625
        Top = 2
        Width = 81
        Height = 13
        DataField = 'MQUADRADO'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcPedido_SomaPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText28: TRLDBText
        Left = 626
        Top = 18
        Width = 70
        Height = 13
        DataField = 'MCORRIDO'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcPedido_SomaPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 351
      Width = 718
      Height = 79
      DataFields = 'VS_TIPO'
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 35
        Width = 718
        Height = 18
        object RLDBText11: TRLDBText
          Left = 16
          Top = 2
          Width = 141
          Height = 13
          DataField = 'VS_ITENS_DESCRICAO'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 464
          Top = 2
          Width = 124
          Height = 13
          DataField = 'VS_ITENS_LARGURA'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 511
          Top = 2
          Width = 114
          Height = 13
          DataField = 'VS_ITENS_ALTURA'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 560
          Top = 2
          Width = 156
          Height = 13
          DataField = 'VS_ITENS_COMPRIMENTO'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 614
          Top = 2
          Width = 156
          Height = 13
          DataField = 'VS_ITENS_QTDADE_PECA'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 645
          Top = 2
          Width = 104
          Height = 13
          DataField = 'VS_MQUADRADO'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 680
          Top = 2
          Width = 93
          Height = 13
          DataField = 'VS_MCORRIDO'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 35
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel14: TRLLabel
          Left = 6
          Top = 0
          Width = 63
          Height = 14
          Caption = 'Produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 16
          Top = 20
          Width = 60
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 461
          Top = 20
          Width = 33
          Height = 13
          Caption = 'Larg.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 510
          Top = 20
          Width = 23
          Height = 13
          Caption = 'Alt.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 554
          Top = 20
          Width = 42
          Height = 13
          Caption = 'Comp.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 611
          Top = 20
          Width = 21
          Height = 13
          Caption = 'Qt.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 648
          Top = 22
          Width = 19
          Height = 13
          Caption = 'M'#178
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 679
          Top = 22
          Width = 24
          Height = 13
          Caption = 'Mc/'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 53
        Width = 718
        Height = 8
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 663
      Width = 718
      Height = 36
      BandType = btSummary
      object RLLabel22: TRLLabel
        Left = 16
        Top = 8
        Width = 67
        Height = 13
        Caption = 'Atendente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 85
        Top = 8
        Width = 62
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 152
      BandType = btTitle
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 321
      Width = 718
      Height = 30
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel12: TRLLabel
        Left = 8
        Top = 8
        Width = 161
        Height = 13
        Caption = 'Tipo do Or'#231'amento/Pedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 176
        Top = 8
        Width = 146
        Height = 13
        DataField = 'VS_ORCTP_DESCRICAO'
        DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 430
      Width = 718
      Height = 95
      DataFields = 'VS_TIPO'
      object RLDetailGrid2: TRLDetailGrid
        Left = 0
        Top = 35
        Width = 718
        Height = 18
        object RLDBText18: TRLDBText
          Left = 16
          Top = 2
          Width = 141
          Height = 13
          DataField = 'VS_ITENS_DESCRICAO'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 464
          Top = 2
          Width = 124
          Height = 13
          DataField = 'VS_ITENS_LARGURA'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 511
          Top = 2
          Width = 114
          Height = 13
          DataField = 'VS_ITENS_ALTURA'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 560
          Top = 2
          Width = 156
          Height = 13
          DataField = 'VS_ITENS_COMPRIMENTO'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 614
          Top = 2
          Width = 156
          Height = 13
          DataField = 'VS_ITENS_QTDADE_PECA'
          DataSource = DMOrcamentoPedidoPrint.dsViewOrcamentoPedidoPrint
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 35
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel27: TRLLabel
          Left = 6
          Top = 0
          Width = 75
          Height = 14
          Caption = 'Acess'#243'rios'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 16
          Top = 20
          Width = 60
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 461
          Top = 20
          Width = 33
          Height = 13
          Caption = 'Larg.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 510
          Top = 20
          Width = 23
          Height = 13
          Caption = 'Alt.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 554
          Top = 20
          Width = 42
          Height = 13
          Caption = 'Comp.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 611
          Top = 20
          Width = 21
          Height = 13
          Caption = 'Qt.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 648
          Top = 20
          Width = 19
          Height = 13
          Caption = 'M'#178
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 679
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Mc/'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand11: TRLBand
        Left = 0
        Top = 53
        Width = 718
        Height = 20
        BandType = btColumnFooter
      end
    end
  end
end
