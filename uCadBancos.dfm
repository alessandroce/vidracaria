inherited FormCadBancos: TFormCadBancos
  Left = 212
  Top = 178
  Caption = 'Cadastro de Bancos'
  ClientHeight = 359
  ClientWidth = 499
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Width = 499
    Height = 5
  end
  inherited btn_Localizar: TSpeedButton
    Left = 384
  end
  object Label5: TLabel [4]
    Left = 100
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  inherited StatusBar1: TStatusBar
    Top = 340
    Width = 499
  end
  inherited GroupBox1: TGroupBox
    Width = 486
    Height = 108
    inherited PageControl1: TPageControl
      Left = 8
      Width = 471
      Height = 82
      inherited TabSheetFicha: TTabSheet
        object Label2: TLabel
          Left = 8
          Top = 17
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object DBEdit1: TDBEdit
          Left = 48
          Top = 14
          Width = 321
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BANC_DESCRICAO'
          DataSource = DMBancos.dsDadosBancos
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 383
          Top = 16
          Width = 67
          Height = 17
          Caption = 'Ativo'
          DataField = 'BANC_ATIVO'
          DataSource = DMBancos.dsDadosBancos
          TabOrder = 1
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 205
    Width = 486
    Height = 127
    object Label4: TLabel
      Left = 9
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 470
      Height = 86
      DataSource = DMBancos.dsViewBancos
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
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
          FieldName = 'BANC_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 438
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 499
    inherited Bevel1: TBevel
      Width = 33
    end
    inherited BtnInserir: TSpeedButton
      Left = 33
    end
    inherited BtnEditar: TSpeedButton
      Left = 105
    end
    inherited BtnExcluir: TSpeedButton
      Left = 177
    end
    inherited BtnGravar: TSpeedButton
      Left = 249
    end
    inherited BtnCancela: TSpeedButton
      Left = 321
    end
    inherited BtnSair: TSpeedButton
      Left = 393
    end
  end
  object Edit1: TEdit [9]
    Left = 136
    Top = 58
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  inherited ImageList1: TImageList
    Left = 240
    Top = 280
  end
  inherited ActionList1: TActionList
    Left = 272
    Top = 280
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
    Left = 208
    Top = 280
    object Alterar1: TMenuItem
      Action = bt_Alterar
    end
    object Excluir1: TMenuItem
      Action = bt_Excluir
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 176
    Top = 280
  end
end
