object FormRelatorioBancoPrint: TFormRelatorioBancoPrint
  Left = 192
  Top = 107
  Width = 823
  Height = 593
  Caption = 'Relat'#243'rio de Banco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelatorioBanco: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DMRelatorioBanco.dsViewRelatorioBancos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      BandType = btTitle
      object RLLabel11: TRLLabel
        Left = 8
        Top = 6
        Width = 198
        Height = 24
        Caption = 'Relat'#243'rio de Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 296
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
      Top = 78
      Width = 718
      Height = 17
      BandType = btTitle
      Color = clSilver
      ParentColor = False
      Transparent = False
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 95
      Width = 718
      Height = 29
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 8
        Top = 8
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 124
      Width = 718
      Height = 20
      object RLDBText1: TRLDBText
        Left = 8
        Top = 2
        Width = 123
        Height = 16
        DataField = 'BANC_DESCRICAO'
        DataSource = DMRelatorioBanco.dsViewRelatorioBancos
      end
    end
  end
end
