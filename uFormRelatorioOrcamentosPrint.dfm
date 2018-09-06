object FormRelatorioOrcamentoPrint: TFormRelatorioOrcamentoPrint
  Left = 192
  Top = 170
  Width = 799
  Height = 480
  Caption = 'RElat'#243'rio Or'#231'amentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    DataSource = DMRelatorioOrcamento.dsViewRelatorioOrcamento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 14
      BandType = btTitle
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 52
      Width = 1047
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
        Width = 169
        Height = 29
        Caption = 'Or'#231'amentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 185
        Top = 29
        Width = 47
        Height = 13
        Caption = 'Per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 640
        Top = 2
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 106
      Width = 1047
      Height = 70
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 1047
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
          Width = 47
          Height = 13
          Caption = 'N'#186' Ped.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 132
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
        object RLLabel5: TRLLabel
          Left = 921
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
        object RLLabel6: TRLLabel
          Left = 524
          Top = 14
          Width = 28
          Height = 13
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 801
          Top = 14
          Width = 98
          Height = 13
          Caption = 'Data Or'#231'amento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 72
          Top = 14
          Width = 46
          Height = 13
          Caption = 'N'#186' Orc.'
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
        Width = 1047
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
          DataSource = DMRelatorioOrcamento.dsViewRelatorioOrcamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 131
          Top = 3
          Width = 64
          Height = 13
          DataField = 'CLI_NOME'
          DataSource = DMRelatorioOrcamento.dsViewRelatorioOrcamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 921
          Top = 3
          Width = 95
          Height = 13
          DataField = 'ORC_VALOR'
          DataSource = DMRelatorioOrcamento.dsViewRelatorioOrcamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Text = 'R$ '
        end
        object RLDBText3: TRLDBText
          Left = 523
          Top = 3
          Width = 65
          Height = 13
          DataField = 'ORC_TIPO'
          DataSource = DMRelatorioOrcamento.dsViewRelatorioOrcamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 803
          Top = 3
          Width = 69
          Height = 13
          DataField = 'DATA_ORC'
          DataSource = DMRelatorioOrcamento.dsViewRelatorioOrcamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 70
          Top = 3
          Width = 51
          Height = 13
          DataField = 'ORC_ID'
          DataSource = DMRelatorioOrcamento.dsViewRelatorioOrcamento
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
      Top = 192
      Width = 1047
      Height = 52
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 827
        Top = 20
        Width = 94
        Height = 18
        Alignment = taRightJustify
        Caption = 'TOTAL R$'
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
      Top = 176
      Width = 1047
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
    end
  end
end
