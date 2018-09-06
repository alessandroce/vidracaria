inherited FormCadOrcamentoTipo: TFormCadOrcamentoTipo
  Left = 265
  Top = 189
  Caption = 'Cadastro de Tipo de Or'#231'amento'
  ClientHeight = 371
  ClientWidth = 568
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Width = 568
    Height = 7
  end
  object Label2: TLabel [4]
    Left = 104
    Top = 63
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  inherited StatusBar1: TStatusBar
    Top = 352
    Width = 568
  end
  inherited GroupBox1: TGroupBox
    Width = 553
    Height = 105
    inherited PageControl1: TPageControl
      Width = 533
      Height = 70
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais'
        object Label3: TLabel
          Left = 16
          Top = 8
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object DBEdit1: TDBEdit
          Left = 81
          Top = 4
          Width = 424
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ORCTP_DESCRICAO'
          DataSource = DMOrcamentoTipo.dsDadosOrcamentoTipo
          TabOrder = 0
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 208
    Width = 553
    Height = 137
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 537
      Height = 113
      DataSource = DMOrcamentoTipo.dsViewOrcamentoTipo
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ORCTP_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 502
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 568
    inherited Bevel1: TBevel
      Width = 65
    end
    inherited BtnInserir: TSpeedButton
      Left = 65
    end
    inherited BtnEditar: TSpeedButton
      Left = 137
    end
    inherited BtnExcluir: TSpeedButton
      Left = 209
    end
    inherited BtnGravar: TSpeedButton
      Left = 281
    end
    inherited BtnCancela: TSpeedButton
      Left = 353
    end
    inherited BtnSair: TSpeedButton
      Left = 425
    end
  end
  object Edit1: TEdit [9]
    Left = 160
    Top = 59
    Width = 289
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  inherited ImageList1: TImageList
    Left = 234
    Top = 280
  end
  inherited ActionList1: TActionList
    Left = 269
    Top = 280
    inherited Act_Btn_Gravar: TAction
      OnExecute = Act_Btn_GravarExecute
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
    Left = 304
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
    Left = 200
    Top = 280
  end
end
