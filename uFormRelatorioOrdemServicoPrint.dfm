object FormRelatorioOrdemServicoPrint: TFormRelatorioOrdemServicoPrint
  Left = 198
  Top = 162
  BorderStyle = bsDialog
  Caption = 'FormRelatorioOrdemServicoPrint'
  ClientHeight = 546
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 529
    DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 19
      Width = 718
      Height = 35
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 263
        Top = 3
        Width = 201
        Height = 22
        Caption = 'ORDEM DE SERVI'#199'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 600
        Top = 0
        Width = 118
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'Pag.:'
      end
      object RLLabel29: TRLLabel
        Left = 479
        Top = 3
        Width = 26
        Height = 22
        Caption = 'N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 511
        Top = 3
        Width = 64
        Height = 22
        DataField = 'OS_ID'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 54
        Top = 20
        Width = 96
        Height = 13
        DataField = 'EMIT_TELEFONE'
        DataSource = DMDuplicata.dsViewDuplicata_Emitente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 12
        Top = 20
        Width = 39
        Height = 13
        Caption = 'FONE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 12
        Top = 6
        Width = 125
        Height = 13
        DataField = 'EMIT_RAZAOSOCIAL'
        DataSource = DMDuplicata.dsViewDuplicata_Emitente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 54
      Width = 718
      Height = 21
      BandType = btTitle
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 8
        Top = 2
        Width = 81
        Height = 13
        Caption = 'Atendimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 191
        Top = 2
        Width = 58
        Height = 13
        Caption = 'Situa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 90
        Top = 2
        Width = 97
        Height = 13
        DataField = 'ATENDIMENTO'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 249
        Top = 2
        Width = 70
        Height = 13
        DataField = 'SITUACAO'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText21: TRLDBText
        Left = 564
        Top = 2
        Width = 98
        Height = 13
        DataField = 'DATA_ENTRADA'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel34: TRLLabel
        Left = 527
        Top = 2
        Width = 36
        Height = 13
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel45: TRLLabel
        Left = 387
        Top = 2
        Width = 64
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText25: TRLDBText
        Left = 448
        Top = 2
        Width = 60
        Height = 13
        DataField = 'TECNICO'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 75
      Width = 718
      Height = 51
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Color = clGray
      Borders.FixedBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLDBText7: TRLDBText
        Left = 57
        Top = 2
        Width = 64
        Height = 13
        DataField = 'CLI_NOME'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 8
        Top = 2
        Width = 49
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 528
        Top = 2
        Width = 54
        Height = 13
        Caption = 'Contato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 582
        Top = 2
        Width = 88
        Height = 13
        DataField = 'CLI_CONTATO'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 8
        Top = 18
        Width = 62
        Height = 13
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 68
        Top = 18
        Width = 95
        Height = 13
        DataField = 'CLI_ENDERECO'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 296
        Top = 34
        Width = 49
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 344
        Top = 34
        Width = 78
        Height = 13
        DataField = 'CLI_CIDADE'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 8
        Top = 34
        Width = 44
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText11: TRLDBText
        Left = 50
        Top = 34
        Width = 77
        Height = 13
        DataField = 'CLI_BAIRRO'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 528
        Top = 18
        Width = 36
        Height = 13
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 561
        Top = 18
        Width = 61
        Height = 13
        DataField = 'CLI_FONE'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel35: TRLLabel
        Left = 528
        Top = 34
        Width = 28
        Height = 13
        Caption = 'Cel:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText24: TRLDBText
        Left = 561
        Top = 34
        Width = 83
        Height = 13
        DataField = 'CLI_CELULAR'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 220
      Width = 718
      Height = 24
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      BeforePrint = RLBand9BeforePrint
      object RLLabel25: TRLLabel
        Left = 551
        Top = 5
        Width = 65
        Height = 13
        Caption = 'TOTAL R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel32: TRLLabel
        Left = 8
        Top = 4
        Width = 43
        Height = 14
        Caption = 'TOTAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 618
        Top = 5
        Width = 67
        Height = 13
        DataField = 'OS_VALOR'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 244
      Width = 718
      Height = 64
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLDBMemo1: TRLDBMemo
        Left = 8
        Top = 19
        Width = 689
        Height = 13
        Behavior = [beSiteExpander]
        DataField = 'OBS_GERAL'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 8
        Top = 3
        Width = 152
        Height = 13
        Caption = 'Observa'#231#245'es Servi'#231'os:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 308
      Width = 718
      Height = 51
      BandType = btColumnFooter
      object RLLabel36: TRLLabel
        Left = 8
        Top = 14
        Width = 99
        Height = 13
        Caption = 'Encerrada em:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 175
        Top = 14
        Width = 17
        Height = 13
        Caption = #224's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 368
        Top = 15
        Width = 347
        Height = 13
        Caption = '_________________________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 482
        Top = 31
        Width = 126
        Height = 13
        Caption = 'Assinatura do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel41: TRLLabel
        Left = 104
        Top = 14
        Width = 62
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 196
        Top = 14
        Width = 62
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 261
        Top = 14
        Width = 22
        Height = 13
        Caption = 'Hs.'
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
      Top = 172
      Width = 718
      Height = 48
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Color = clGray
      Borders.FixedBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLDBMemo2: TRLDBMemo
        Left = 24
        Top = 11
        Width = 337
        Height = 13
        Behavior = [beSiteExpander]
        DataField = 'OBSERVACAO'
        DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
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
      Top = 126
      Width = 718
      Height = 46
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        BandType = btColumnHeader
        object RLLabel7: TRLLabel
          Left = 80
          Top = 1
          Width = 75
          Height = 13
          Caption = 'Itens Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 8
          Top = 1
          Width = 60
          Height = 13
          Caption = 'Pedido N'#176
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 17
        Width = 718
        Height = 18
        object RLDBText2: TRLDBText
          Left = 80
          Top = 2
          Width = 39
          Height = 13
          DataField = 'ITENS'
          DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 22
          Top = 2
          Width = 48
          Height = 13
          DataField = 'PED_ID'
          DataSource = DMRelatorioOrdemServico.dsViewRelatorioOrdemServico
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.17 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 728
    Top = 392
  end
end
