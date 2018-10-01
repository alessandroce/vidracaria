inherited FormCadCliente: TFormCadCliente
  Top = 167
  Caption = 'Cadastro de Clientes'
  ClientHeight = 561
  ClientWidth = 784
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Width = 784
    Height = 7
  end
  inherited Bevel3: TBevel
    Top = 80
    Height = 6
  end
  inherited Label1: TLabel
    Left = 16
    Top = 61
  end
  inherited btn_Localizar: TSpeedButton
    Left = 440
    Top = 55
  end
  inherited StatusBar1: TStatusBar
    Top = 542
    Width = 784
  end
  inherited GroupBox1: TGroupBox
    Top = 88
    Height = 233
    inherited PageControl1: TPageControl
      Height = 206
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais'
        object Label2: TLabel
          Left = 15
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Nome: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 15
          Top = 36
          Width = 52
          Height = 13
          Caption = 'Endere'#231'o: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 15
          Top = 65
          Width = 33
          Height = 13
          Caption = 'Bairro: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 545
          Top = 65
          Width = 27
          Height = 13
          Caption = 'CEP: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 15
          Top = 94
          Width = 53
          Height = 13
          Caption = 'Munic'#237'pio: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 371
          Top = 94
          Width = 30
          Height = 13
          Caption = 'Fone: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 547
          Top = 94
          Width = 23
          Height = 13
          Caption = 'Fax: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 15
          Top = 122
          Width = 58
          Height = 13
          Caption = 'CNPJ/CPF: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 222
          Top = 122
          Width = 68
          Height = 13
          Caption = 'Insc. Est./RG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 422
          Top = 122
          Width = 50
          Height = 13
          Caption = 'Atividade: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 15
          Top = 151
          Width = 43
          Height = 13
          Caption = 'Contato: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 422
          Top = 151
          Width = 38
          Height = 13
          Caption = 'Celular: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 295
          Top = 67
          Width = 70
          Height = 13
          Caption = 'Complemento: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 88
          Top = 6
          Width = 537
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CLIENTE'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 88
          Top = 34
          Width = 609
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_ENDERECO'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 88
          Top = 63
          Width = 193
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_BAIRRO'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 574
          Top = 63
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CEP'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 88
          Top = 92
          Width = 277
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_MUNICIPIO'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 420
          Top = 92
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_FONE'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 574
          Top = 92
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_FAX'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 88
          Top = 120
          Width = 125
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CNPJ'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 295
          Top = 120
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_INSC_EST'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 486
          Top = 120
          Width = 209
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_ATIVIDADE'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 486
          Top = 149
          Width = 209
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CELULAR'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 88
          Top = 149
          Width = 328
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CONTATO'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 11
        end
        object DBCheckBox1: TDBCheckBox
          Left = 648
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'CLI_ATIVO'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 12
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
        object DBEdit14: TDBEdit
          Left = 368
          Top = 63
          Width = 174
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_COMPLEMENTO'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 13
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Info Adicional'
        ImageIndex = 7
        object Label13: TLabel
          Left = 7
          Top = 53
          Width = 31
          Height = 13
          Caption = 'Email: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 7
          Top = 117
          Width = 70
          Height = 13
          Caption = 'Info Adicional: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit11: TDBEdit
          Left = 84
          Top = 49
          Width = 605
          Height = 21
          DataField = 'CLI_EMAIL'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 86
          Top = 80
          Width = 603
          Height = 81
          DataField = 'CLI_INFO_ADICIONAL'
          DataSource = DMCadClientes.dsDadosCadClientes
          TabOrder = 1
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 327
    Height = 129
    object Label16: TLabel
      Left = 16
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Label16'
    end
    object dbgClientes: TDBGrid
      Left = 5
      Top = 30
      Width = 729
      Height = 91
      DataSource = DMCadClientes.dsViewCadClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgClientesDrawColumnCell
      OnDblClick = dbgClientesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CLI_ID'
          Title.Caption = 'C'#243'digo'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CLIENTE'
          Title.Caption = 'Raz'#227'o Social'
          Width = 317
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CONTATO'
          Title.Caption = 'Contato'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_FONE'
          Title.Caption = 'Telefone'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CELULAR'
          Title.Caption = 'Celular'
          Width = 74
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 784
    inherited BtnInserir: TSpeedButton
      Action = Act_Btn_Inserir
    end
  end
  object edNomeCliente: TEdit [8]
    Left = 83
    Top = 57
    Width = 350
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  inherited ImageList1: TImageList
    Left = 336
    Top = 400
  end
  inherited ActionList1: TActionList
    Left = 368
    Top = 400
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
    object bt_Alterar: TAction
      Category = 'FormCadastros'
      Caption = 'Alterar'
      OnExecute = bt_AlterarExecute
    end
    object bt_Excluir: TAction
      Category = 'FormCadastros'
      Caption = 'Excluir'
      OnExecute = bt_ExcluirExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 400
    object Alterar1: TMenuItem
      Action = bt_Alterar
    end
    object Excluir1: TMenuItem
      Action = bt_Excluir
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 302
    Top = 399
  end
end
