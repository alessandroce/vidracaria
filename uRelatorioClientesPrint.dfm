object FormRelatorioClientesPrint: TFormRelatorioClientesPrint
  Left = 195
  Top = 167
  Width = 823
  Height = 593
  Caption = 'Relat'#243'rio de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelatorioClientes: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DMCadClientes.dsViewBuscaClientes
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
        Top = 6
        Width = 214
        Height = 24
        Caption = 'Relat'#243'rio de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 320
        Top = 10
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 640
        Top = 0
        Width = 116
        Height = 16
        Info = itPageNumber
        Text = 'pag.:'
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 76
      Width = 718
      Height = 143
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel1: TRLLabel
        Left = 8
        Top = 1
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
      object RLDBText1: TRLDBText
        Left = 72
        Top = 1
        Width = 83
        Height = 16
        DataField = 'CLI_CLIENTE'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel2: TRLLabel
        Left = 8
        Top = 19
        Width = 63
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object RLDBText2: TRLDBText
        Left = 70
        Top = 19
        Width = 103
        Height = 16
        DataField = 'CLI_ENDERECO'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel3: TRLLabel
        Left = 400
        Top = 19
        Width = 42
        Height = 16
        Caption = 'Bairro:'
      end
      object RLDBText3: TRLDBText
        Left = 440
        Top = 19
        Width = 79
        Height = 16
        DataField = 'CLI_BAIRRO'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel4: TRLLabel
        Left = 400
        Top = 37
        Width = 35
        Height = 16
        Caption = 'CEP:'
      end
      object RLDBText4: TRLDBText
        Left = 434
        Top = 37
        Width = 57
        Height = 16
        DataField = 'CLI_CEP'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel5: TRLLabel
        Left = 8
        Top = 37
        Width = 63
        Height = 16
        Caption = 'Munic'#237'pio:'
      end
      object RLDBText5: TRLDBText
        Left = 78
        Top = 37
        Width = 96
        Height = 16
        DataField = 'CLI_MUNICIPIO'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel6: TRLLabel
        Left = 8
        Top = 53
        Width = 56
        Height = 16
        Caption = 'Telefone:'
      end
      object RLDBText6: TRLDBText
        Left = 70
        Top = 53
        Width = 66
        Height = 16
        DataField = 'CLI_FONE'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel7: TRLLabel
        Left = 224
        Top = 53
        Width = 30
        Height = 16
        Caption = 'Fax:'
      end
      object RLDBText7: TRLDBText
        Left = 254
        Top = 53
        Width = 54
        Height = 16
        DataField = 'CLI_FAX'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel8: TRLLabel
        Left = 8
        Top = 69
        Width = 41
        Height = 16
        Caption = 'CNPJ:'
      end
      object RLDBText8: TRLDBText
        Left = 48
        Top = 69
        Width = 63
        Height = 16
        DataField = 'CLI_CNPJ'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel9: TRLLabel
        Left = 192
        Top = 69
        Width = 60
        Height = 16
        Caption = 'Insc.Est.:'
      end
      object RLDBText9: TRLDBText
        Left = 256
        Top = 69
        Width = 92
        Height = 16
        DataField = 'CLI_INSC_EST'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel10: TRLLabel
        Left = 400
        Top = 69
        Width = 60
        Height = 16
        Caption = 'Atividade:'
      end
      object RLDBText10: TRLDBText
        Left = 459
        Top = 69
        Width = 97
        Height = 16
        DataField = 'CLI_ATIVIDADE'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel12: TRLLabel
        Left = 400
        Top = 1
        Width = 53
        Height = 16
        Caption = 'Contato:'
      end
      object RLDBText11: TRLDBText
        Left = 450
        Top = 1
        Width = 91
        Height = 16
        DataField = 'CLI_CONTATO'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel13: TRLLabel
        Left = 400
        Top = 53
        Width = 48
        Height = 16
        Caption = 'Celular:'
      end
      object RLDBText12: TRLDBText
        Left = 448
        Top = 53
        Width = 89
        Height = 16
        DataField = 'CLI_CELULAR'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel14: TRLLabel
        Left = 8
        Top = 87
        Width = 41
        Height = 16
        Caption = 'Email:'
      end
      object RLDBText13: TRLDBText
        Left = 48
        Top = 87
        Width = 69
        Height = 16
        DataField = 'CLI_EMAIL'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLDBMemo1: TRLDBMemo
        Left = 8
        Top = 120
        Width = 641
        Height = 16
        Behavior = [beSiteExpander]
        DataField = 'CLI_INFO_ADICIONAL'
        DataSource = DMCadClientes.dsViewBuscaClientes
      end
      object RLLabel15: TRLLabel
        Left = 8
        Top = 103
        Width = 85
        Height = 16
        Caption = 'Info Adicional:'
      end
    end
  end
end
