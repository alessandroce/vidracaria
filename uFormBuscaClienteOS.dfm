object FormBuscaClienteOS: TFormBuscaClienteOS
  Left = 287
  Top = 259
  Width = 385
  Height = 252
  Caption = 'Busca de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbMensagem: TLabel
    Left = 9
    Top = 178
    Width = 164
    Height = 13
    Caption = 'REGISTRO N'#195'O ENCONTRADO!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object btnFechar: TSpeedButton
    Left = 295
    Top = 173
    Width = 75
    Height = 25
    Action = Act_Btn_Fechar
    Flat = True
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
  object btnCadastro: TSpeedButton
    Left = 216
    Top = 173
    Width = 75
    Height = 25
    Action = Act_Btn_Cadastrar
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF0000000000FF00FF00FF00FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FF00FF00FF00FF00FF00FF00FF00FF008000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000000000FFFFFF0080000000FF00FF00FF00FF00FF00FF00FF00FF008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FF00FF00FF00FF00FF00FF00FF00FF008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF008000
      0000C0C0C0008000000080000000C0C0C0008000000080000000C0C0C0008000
      000080000000C0C0C00080000000FF00FF00FF00FF00FF00FF00FF00FF008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Visible = False
  end
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 63
    Height = 13
    Caption = 'Filtrar por: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 69
    Top = 5
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object sbBuscaMensalista: TStatusBar
    Left = 0
    Top = 198
    Width = 370
    Height = 16
    BiDiMode = bdLeftToRight
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Fun'#231#245'es:'
        Width = 60
      end
      item
        Alignment = taCenter
        Text = 'F2 - Cadastro'
        Width = 80
      end
      item
        Alignment = taCenter
        Text = 'F10 - Fechar'
        Width = 90
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 43
    Width = 361
    Height = 121
    DataSource = DMOrdemServico.dsViewOS_ClienteOS
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_CLIENTE'
        Title.Caption = 'Clientes'
        Width = 330
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 19
    Width = 361
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object ImageList1: TImageList
    Left = 128
    Top = 104
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC9999000000000000000000000000000000
      000000000000000000000000000000000000000000007F0000007F0000007F00
      00000000000000000000FFFFFF000000000000000000BFBFBF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC999900CC99990000000000000000000000
      000000000000000000000000000000000000000000007F000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000BFBFBF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC999900000000000000
      000000000000000000000000000000000000000000007F000000FFFFFF007F7F
      7F007F7F7F0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC999900CC9999000000
      000000000000000000000000000000000000000000007F000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC999900000000000000
      000000000000000000000000000000000000000000007F000000FFFFFF007F7F
      7F007F7F7F00FFFFFF0000000000FFFFFF00000000007F7F7F007F7F7F000000
      0000FFFFFF000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC999900CC99990000000000000000000000
      000000000000000000000000000000000000000000007F000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC9999000000000000000000000000000000
      000000000000000000000000000000000000000000007F000000FFFFFF007F7F
      7F007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF007F7F7F007F7F7F00FFFF
      FF007F0000000000000000000000000000000000000080000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F0000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F0000007F0000007F00
      00007F0000007F0000007F0000007F0000007F0000007F0000007F0000007F00
      00007F0000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F000000BFBFBF007F00
      00007F000000BFBFBF007F0000007F000000BFBFBF007F0000007F000000BFBF
      BF007F0000000000000000000000000000000000000080000000C0C0C0008000
      000080000000C0C0C0008000000080000000C0C0C0008000000080000000C0C0
      C000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F0000007F0000007F00
      00007F0000007F0000007F0000007F0000007F0000007F0000007F0000007F00
      00007F0000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFF0F0FFFB0000FFFFF0F0FFFB0000
      FDFBF040FFE00000FCFBF000FFFB0000FC7B8000000B0000C03B8001000F0000
      C01B8001000F0000C00B8003000F0000C01B800300070000C03B800380070000
      FC7B800780070000FCFB800780070000FDFB800780070000FFFF800780070000
      FFFF800780070000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 160
    Top = 104
    object Act_Btn_Fechar: TAction
      Category = 'FormGeral'
      Caption = '&Fechar'
      Hint = 'Fechar'
      ImageIndex = 0
      OnExecute = Act_Btn_FecharExecute
    end
    object Act_Btn_Cadastrar: TAction
      Category = 'FormGeral'
      Caption = '&Cadastrar'
      Hint = 'Cadastrar novo produto'
      ImageIndex = 2
      OnExecute = Act_Btn_CadastrarExecute
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 192
    Top = 104
  end
end
