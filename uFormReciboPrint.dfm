object FormReciboPrint: TFormReciboPrint
  Left = 197
  Top = 187
  Width = 823
  Height = 546
  Caption = 'Recibo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Recibo: TRLReport
    Left = 0
    Top = -8
    Width = 794
    Height = 454
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 120.000000000000000000
    BeforePrint = ReciboBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 89
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel14: TRLLabel
        Left = 16
        Top = 68
        Width = 683
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '_________________________________'
      end
      object RLLabel1: TRLLabel
        Left = 270
        Top = 22
        Width = 159
        Height = 34
        Caption = 'R E C I B O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 478
        Top = 22
        Width = 53
        Height = 34
        Caption = 'R$ '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 534
        Top = 22
        Width = 139
        Height = 34
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 28
        Top = 12
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
      object RLDBText2: TRLDBText
        Left = 28
        Top = 29
        Width = 103
        Height = 13
        DataField = 'EMIT_ENDERECO'
        DataSource = DMDuplicata.dsViewDuplicata_Emitente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 28
        Top = 45
        Width = 32
        Height = 13
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 60
        Top = 45
        Width = 62
        Height = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 28
        Top = 61
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
      object RLDBText3: TRLDBText
        Left = 68
        Top = 61
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
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 127
      Width = 718
      Height = 114
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLMemo1: TRLMemo
        Left = 27
        Top = 17
        Width = 664
        Height = 16
        Behavior = [beSiteExpander]
      end
      object RLLabel4: TRLLabel
        Left = 296
        Top = 17
        Width = 121
        Height = 16
        Caption = 'Recebi(emos) de:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLLabel5: TRLLabel
        Left = 424
        Top = 17
        Width = 62
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLLabel6: TRLLabel
        Left = 296
        Top = 41
        Width = 122
        Height = 16
        Caption = 'A import'#226'ncia de:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLLabel7: TRLLabel
        Left = 296
        Top = 79
        Width = 88
        Height = 16
        Caption = 'Referente '#224':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLLabel8: TRLLabel
        Left = 425
        Top = 41
        Width = 62
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLLabel9: TRLLabel
        Left = 390
        Top = 79
        Width = 62
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 241
      Width = 718
      Height = 76
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel13: TRLLabel
        Left = 500
        Top = 41
        Width = 64
        Height = 13
        Caption = 'Assinatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 16
        Top = 14
        Width = 298
        Height = 16
        Caption = 'Para maior clareza firmo(amos) o prensente.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 16
        Top = 39
        Width = 70
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 382
        Top = 28
        Width = 317
        Height = 16
        Caption = '_______________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
