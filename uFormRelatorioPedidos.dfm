object FormRelatorioPedidos: TFormRelatorioPedidos
  Left = 205
  Top = 178
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Pedidos'
  ClientHeight = 481
  ClientWidth = 752
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 735
    Height = 73
    TabOrder = 0
    object Label4: TLabel
      Left = 297
      Top = 36
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label5: TLabel
      Left = 144
      Top = 36
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de '
    end
    object Label7: TLabel
      Left = 20
      Top = 23
      Width = 90
      Height = 29
      Caption = 'Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 432
      Top = 30
      Width = 78
      Height = 25
      Action = bt_Localizar
      Caption = 'Gerar'
      TabOrder = 0
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000007777777000000070FFFFFFF07777700000000070F7
        7777F07777000000000070F77777F07770007000000070F77780008700077000
        000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
        08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
        EFEFFF0770777000000077780000000708777000000077770077777807777000
        0000777770077700777770000000777777800087777770000000777777777777
        777770000000}
    end
    object DateTimePicker1: TDateTimePicker
      Left = 203
      Top = 32
      Width = 89
      Height = 21
      Date = 39834.672872534720000000
      Time = 39834.672872534720000000
      TabOrder = 1
      OnChange = DateTimePicker1Change
    end
    object DateTimePicker2: TDateTimePicker
      Left = 321
      Top = 32
      Width = 89
      Height = 21
      Date = 39834.672897858800000000
      Time = 39834.672897858800000000
      TabOrder = 2
      OnChange = DateTimePicker2Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 89
    Width = 735
    Height = 296
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 7
      Top = 16
      Width = 721
      Height = 273
      DataSource = DMRelatorioPedido.dsViewRelatorioPedido_Busca
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnMouseMove = DBGrid1MouseMove
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PED_ID'
          Title.Caption = 'N'#250'mero'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CLIENTE'
          Title.Caption = 'Cliente'
          Width = 444
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_DATA_PEDIDO'
          Title.Caption = 'Data Pedido'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_VALOR_TOTAL'
          Title.Caption = 'Valor'
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 390
    Width = 737
    Height = 43
    TabOrder = 2
    object Label3: TLabel
      Left = 496
      Top = 16
      Width = 80
      Height = 18
      Caption = 'Total: R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 585
      Top = 16
      Width = 58
      Height = 18
      Caption = 'Label6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BitBtn2: TBitBtn
    Left = 576
    Top = 440
    Width = 75
    Height = 30
    Action = bt_Visualizar
    Caption = 'Visualizar'
    TabOrder = 3
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC0000000000CCCCCC0000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC0000000000FF00FF0000000000CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000FFFF0000FFFF0000FF
      FF00CCCCCC00CCCCCC00000000000000000000000000FF00FF0000000000CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0084848400848484008484
      8400CCCCCC00CCCCCC0000000000CCCCCC0000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC00CCCCCC000000000000000000CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC0000000000CCCCCC0000000000CCCCCC0000000000FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC0000000000CCCCCC000000000000000000FF00FF00FF00
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000CCCCCC0000000000CCCCCC0000000000FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn3: TBitBtn
    Left = 664
    Top = 440
    Width = 75
    Height = 30
    Action = bt_Fechar
    Caption = 'Fechar'
    TabOrder = 4
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000CC99990000000000FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000CC999900CC9999000000
      0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000CC999900CC999900CC999900CC999900CC999900CC999900CC99
      990000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000CC999900CC999900CC999900CC999900CC999900CC999900CC99
      9900CC99990000000000FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000CC999900CC999900CC999900CC999900CC999900CC999900CC99
      990000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000CC999900CC9999000000
      0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000CC99990000000000FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object ImageList2: TImageList
    Left = 318
    Top = 257
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000
      0000CCCCCC000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC0000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0000FFFF0000FFFF0000FFFF00CCCCCC00CCCC
      CC00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC9999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00848484008484840084848400CCCCCC00CCCC
      CC0000000000CCCCCC0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC999900CC99990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00CCCCCC00000000000000000000000000FFFFFF000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      800000000000000000000000000000000000000000000000000000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000
      0000CCCCCC0000000000CCCCCC00000000000000000000000000FFFFFF008080
      800000000000FFFF0000000000000000000000000000FFFFFF00000000000000
      000000000000808080000000000000000000000000000000000000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC999900CC9999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC0000000000CCCCCC0000000000000000000000000000000000FFFFFF000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000CCCCCC0000000000CCCCCC00000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC999900CC99990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC9999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF803FFFFF0000C007803EFFFF0000
      80039F3CFDFB000000019F38FCFB000000019C11FC7B000000019803C03B0000
      00009007C01B000000008013C00B00008000801BC01B0000C000801BC03B0000
      E001801BFC7B0000E007E013FCFB0000F007F3E7FDFB0000F003F9CFFFFF0000
      F803FC1FFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionList2: TActionList
    Images = ImageList2
    Left = 350
    Top = 257
    object bt_Visualizar: TAction
      Category = 'botao'
      Caption = 'Visualizar'
      Hint = 'Visualisar impress'#227'o'
      ImageIndex = 0
      OnExecute = bt_VisualizarExecute
    end
    object bt_Fechar: TAction
      Category = 'botao'
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 2
      OnExecute = bt_FecharExecute
    end
    object bt_Localizar: TAction
      Category = 'botao'
      Caption = 'Gerar'
      Hint = 'Localizar'
      ImageIndex = 1
      OnExecute = bt_LocalizarExecute
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 382
    Top = 256
  end
end
