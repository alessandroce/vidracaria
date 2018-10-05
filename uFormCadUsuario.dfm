inherited FormCadUsuario: TFormCadUsuario
  Left = 302
  Top = 166
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 459
  ClientWidth = 577
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Width = 577
    Height = 6
  end
  inherited Label1: TLabel
    Left = 54
  end
  inherited btn_Localizar: TSpeedButton
    Left = 438
  end
  object Nome: TLabel [4]
    Left = 126
    Top = 63
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  inherited StatusBar1: TStatusBar
    Top = 440
    Width = 577
  end
  inherited GroupBox1: TGroupBox
    Top = 92
    Width = 561
    Height = 194
    inherited PageControl1: TPageControl
      Width = 533
      Height = 166
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais'
        object Label2: TLabel
          Left = 13
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 13
          Top = 36
          Width = 22
          Height = 13
          Caption = 'RG: '
        end
        object Label5: TLabel
          Left = 189
          Top = 36
          Width = 23
          Height = 13
          Caption = 'CPF:'
        end
        object Label6: TLabel
          Left = 13
          Top = 61
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label7: TLabel
          Left = 13
          Top = 86
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object Label8: TLabel
          Left = 229
          Top = 86
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object Label9: TLabel
          Left = 437
          Top = 86
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label10: TLabel
          Left = 13
          Top = 111
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object Label12: TLabel
          Left = 157
          Top = 111
          Width = 35
          Height = 13
          Caption = 'Celular:'
        end
        object Label13: TLabel
          Left = 293
          Top = 111
          Width = 31
          Height = 13
          Caption = 'E-mail:'
        end
        object DBEdit1: TDBEdit
          Left = 69
          Top = 8
          Width = 397
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_NOME'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 69
          Top = 32
          Width = 113
          Height = 21
          DataField = 'USU_RG'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 1
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 221
          Top = 32
          Width = 113
          Height = 21
          DataField = 'USU_CPF'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 69
          Top = 57
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_ENDERECO'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 69
          Top = 82
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_BAIRRO'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 269
          Top = 82
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_CIDADE'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 69
          Top = 107
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_FONE_RES'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 197
          Top = 107
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_FONE_CEL'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 333
          Top = 107
          Width = 185
          Height = 21
          DataField = 'USU_EMAIL'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 8
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 461
          Top = 82
          Width = 57
          Height = 21
          DataField = 'USU_ESTADO'
          DataSource = DMUsuario.dsDadosUsuario
          KeyField = 'EST_SIGLA'
          ListField = 'EST_SIGLA'
          ListSource = DMUsuario.dsViewEstado
          TabOrder = 9
        end
        object DBCheckBox1: TDBCheckBox
          Left = 473
          Top = 10
          Width = 49
          Height = 17
          Caption = 'Ativo'
          DataField = 'USU_ATIVO'
          TabOrder = 10
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Outros Dados  '
        ImageIndex = 7
        object Label11: TLabel
          Left = 11
          Top = 12
          Width = 39
          Height = 13
          Caption = 'Fun'#231#227'o:'
        end
        object Bevel4: TBevel
          Left = 13
          Top = 42
          Width = 501
          Height = 7
          Shape = bsTopLine
        end
        object Label14: TLabel
          Left = 15
          Top = 97
          Width = 175
          Height = 13
          Caption = 'Desconto Sobre Vendas:                %'
          Visible = False
        end
        object Label15: TLabel
          Left = 15
          Top = 59
          Width = 174
          Height = 13
          Caption = 'Comissao Sobre Vendas:                %'
        end
        object Label16: TLabel
          Left = 215
          Top = 57
          Width = 193
          Height = 13
          Caption = 'Desconto Sobre Or'#231'amentos:               %'
          Visible = False
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 55
          Top = 8
          Width = 197
          Height = 21
          DataField = 'USU_FUNCAO'
          DataSource = DMUsuario.dsDadosUsuario
          KeyField = 'USUF_ID'
          ListField = 'USUF_DESCRICAO'
          ListSource = DMUsuario.dsViewUsuarioFuncao
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 138
          Top = 93
          Width = 39
          Height = 21
          DataField = 'USU_DESCONTO_PEDIDO'
          DataSource = DMUsuario.dsDadosUsuario
          MaxLength = 3
          TabOrder = 1
          Visible = False
          OnChange = DBEdit13Change
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 138
          Top = 55
          Width = 39
          Height = 21
          DataField = 'USU_COMISSAO_PEDIDO'
          DataSource = DMUsuario.dsDadosUsuario
          MaxLength = 3
          TabOrder = 2
          OnChange = DBEdit14Change
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 359
          Top = 53
          Width = 39
          Height = 21
          DataField = 'USU_DESCONTO_ORCAMENTO'
          DataSource = DMUsuario.dsDadosUsuario
          MaxLength = 3
          TabOrder = 3
          Visible = False
          OnChange = DBEdit15Change
          OnKeyPress = DBEdit2KeyPress
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Dados de Acesso'
        ImageIndex = 7
        object Label28: TLabel
          Left = 58
          Top = 44
          Width = 46
          Height = 13
          Caption = 'Matricula:'
        end
        object Label29: TLabel
          Left = 58
          Top = 76
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Label30: TLabel
          Left = 242
          Top = 76
          Width = 81
          Height = 13
          Caption = 'Confirmar Senha:'
        end
        object DBEdit10: TDBEdit
          Left = 114
          Top = 40
          Width = 209
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_LOGIN'
          DataSource = DMUsuario.dsDadosUsuario
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 114
          Top = 72
          Width = 121
          Height = 21
          DataField = 'USU_SENHA'
          DataSource = DMUsuario.dsDadosUsuario
          PasswordChar = '*'
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 329
          Top = 72
          Width = 121
          Height = 21
          DataField = 'USU_SENHA_CONF'
          DataSource = DMUsuario.dsDadosUsuario
          PasswordChar = '*'
          TabOrder = 2
        end
        object ComboBox1: TComboBox
          Left = 329
          Top = 40
          Width = 121
          Height = 19
          Style = csOwnerDrawFixed
          ItemHeight = 13
          TabOrder = 3
          Items.Strings = (
            'MASTER'
            'GERENTE'
            'FUNCION'#193'RIO')
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 288
    Width = 561
    Height = 145
    Caption = '  Lista  de Usu'#225'rios  '
    object Label4: TLabel
      Left = 10
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 30
      Width = 545
      Height = 108
      DataSource = DMUsuario.dsViewUsuario
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
          FieldName = 'USU_NOME'
          Title.Caption = 'Nome'
          Width = 338
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USU_FONE_RES'
          Title.Caption = 'Telefone'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USU_FONE_CEL'
          Title.Caption = 'Celular'
          Width = 86
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 577
    inherited pnBevel: TPanel
      Width = 80
    end
    inherited BtnInserir: TSpeedButton
      Left = 80
    end
    inherited BtnEditar: TSpeedButton
      Left = 152
    end
    inherited BtnExcluir: TSpeedButton
      Left = 224
    end
    inherited BtnGravar: TSpeedButton
      Left = 296
      Width = 71
    end
    inherited BtnCancela: TSpeedButton
      Left = 367
    end
    inherited BtnSair: TSpeedButton
      Left = 439
    end
    inherited Bevel1: TBevel
      Left = 511
      Width = 71
    end
  end
  object Edit1: TEdit [9]
    Left = 158
    Top = 59
    Width = 273
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  inherited ImageList1: TImageList
    Left = 256
    Top = 376
  end
  inherited ActionList1: TActionList
    Left = 288
    Top = 376
    inherited Act_Btn_Gravar: TAction
      OnExecute = Act_Btn_GravarExecute
    end
    inherited Act_Btn_Inserir: TAction
      OnExecute = Act_Btn_InserirExecute
    end
    inherited Act_Btn_Excluir: TAction
      OnExecute = Act_Btn_ExcluirExecute
    end
    inherited Act_Btn_Sair: TAction
      OnExecute = Act_Btn_SairExecute
    end
    inherited Act_Btn_Cancelar: TAction
      OnExecute = Act_Btn_CancelarExecute
    end
    inherited Act_Btn_Localizar: TAction
      OnExecute = Act_Btn_LocalizarExecute
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 224
    Top = 376
  end
end
