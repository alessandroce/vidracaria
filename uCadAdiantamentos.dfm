inherited FormCadAdiantamentos: TFormCadAdiantamentos
  Caption = 'Adiantamentos'
  ClientHeight = 446
  ClientWidth = 662
  OldCreateOrder = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Width = 662
    Height = 8
  end
  inherited Bevel3: TBevel
    Top = 56
    Height = 5
    Visible = False
  end
  inherited Label1: TLabel
    Left = 64
    Top = 72
  end
  inherited btn_Localizar: TSpeedButton
    Left = 325
    Top = 66
  end
  object Label11: TLabel [4]
    Left = 136
    Top = 72
    Width = 39
    Height = 13
    Caption = 'Parcela:'
  end
  inherited StatusBar1: TStatusBar
    Top = 427
    Width = 662
  end
  inherited GroupBox1: TGroupBox
    Top = 108
    Width = 641
    Height = 166
    inherited PageControl1: TPageControl
      Left = 7
      Top = 16
      Width = 626
      Height = 144
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais '
        object SpeedButton1: TSpeedButton
          Left = 149
          Top = 17
          Width = 23
          Height = 22
          Action = bt_Incremento
        end
        object SpeedButton2: TSpeedButton
          Left = 173
          Top = 17
          Width = 23
          Height = 22
          Action = bt_Decremento
          Flat = True
        end
        object Label9: TLabel
          Left = 38
          Top = 68
          Width = 31
          Height = 13
          Caption = 'Banco'
        end
        object Label6: TLabel
          Left = 38
          Top = 96
          Width = 52
          Height = 13
          Caption = 'N'#186' Cheque'
        end
        object Label12: TLabel
          Left = 37
          Top = 22
          Width = 51
          Height = 13
          Caption = 'N'#186' Parcela'
        end
        object Label4: TLabel
          Left = 233
          Top = 22
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label5: TLabel
          Left = 455
          Top = 68
          Width = 39
          Height = 13
          Caption = 'Ag'#234'ncia'
        end
        object Label10: TLabel
          Left = 352
          Top = 96
          Width = 92
          Height = 13
          Caption = 'Data Apresenta'#231#227'o'
        end
        object Bevel4: TBevel
          Left = 34
          Top = 56
          Width = 538
          Height = 9
          Shape = bsTopLine
        end
        object Label14: TLabel
          Left = 536
          Top = 96
          Width = 38
          Height = 13
          Caption = 'Label14'
        end
        object DBEdit1: TDBEdit
          Left = 93
          Top = 18
          Width = 57
          Height = 21
          DataField = 'ADIANT_PARCELA_DESCRICAO'
          DataSource = DMAdiantamentos.dsDadosAdiantamentos
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 264
          Top = 18
          Width = 102
          Height = 21
          DataField = 'ADIANT_VALOR'
          DataSource = DMAdiantamentos.dsDadosAdiantamentos
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 504
          Top = 64
          Width = 66
          Height = 21
          DataField = 'ADIANT_BANCO_AGENCIA'
          DataSource = DMAdiantamentos.dsDadosAdiantamentos
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 93
          Top = 64
          Width = 345
          Height = 21
          DataField = 'ADIANT_BANCO_ID'
          DataSource = DMAdiantamentos.dsDadosAdiantamentos
          KeyField = 'BANC_ID'
          ListField = 'BANC_DESCRICAO'
          ListSource = DMAdiantamentos.dsViewAdiantamentos_Bancos
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 93
          Top = 92
          Width = 241
          Height = 21
          DataField = 'ADIANT_NUM_CHEQUE'
          DataSource = DMAdiantamentos.dsDadosAdiantamentos
          TabOrder = 4
        end
        object DateTimePicker1: TDateTimePicker
          Left = 445
          Top = 92
          Width = 84
          Height = 21
          Date = 39608.672458217590000000
          Time = 39608.672458217590000000
          TabOrder = 5
          OnCloseUp = DateTimePicker1CloseUp
        end
        object RadioGroup1: TRadioGroup
          Left = 474
          Top = 0
          Width = 97
          Height = 52
          Caption = '  Condi'#231#227'o  '
          ItemIndex = 0
          Items.Strings = (
            #192' Vista'
            #192' Prazo')
          TabOrder = 6
          OnClick = RadioGroup1Click
        end
        object RadioGroup2: TRadioGroup
          Left = 378
          Top = 0
          Width = 89
          Height = 52
          Caption = '  Esp'#233'cie  '
          ItemIndex = 0
          Items.Strings = (
            'Dinheiro'
            'Cheque')
          TabOrder = 7
          OnClick = RadioGroup2Click
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 278
    Width = 649
    Height = 145
    Caption = '  Lista  de Adiantamentos  '
    object Label7: TLabel
      Left = 10
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Label7'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 31
      Width = 633
      Height = 89
      DataSource = DMAdiantamentos.dsViewAdiantamentos
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect]
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
          FieldName = 'ADIANT_PARCELA_DESCRICAO'
          Title.Caption = 'Parcela'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADIANT_VALOR'
          Title.Caption = 'Valor'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADIANT_NUM_CHEQUE'
          Title.Caption = 'N.Cheque'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADIANT_DATA_APRESENTACAO'
          Title.Caption = 'Data'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANC_DESCRICAO'
          Title.Caption = 'Banco'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADIANT_BANCO_AGENCIA'
          Title.Caption = 'Ag'#234'ncia'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADIANT_ESPECIE'
          Title.Caption = 'Esp'#233'cie'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADIANT_CONDICAO'
          Title.Caption = 'Condi'#231#227'o'
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 662
    inherited Bevel1: TBevel
      Width = 137
    end
    inherited BtnInserir: TSpeedButton
      Left = 137
    end
    inherited BtnEditar: TSpeedButton
      Left = 209
    end
    inherited BtnExcluir: TSpeedButton
      Left = 281
    end
    inherited BtnGravar: TSpeedButton
      Left = 353
    end
    inherited BtnCancela: TSpeedButton
      Left = 425
    end
    inherited BtnSair: TSpeedButton
      Left = 497
    end
  end
  object Edit1: TEdit [9]
    Left = 184
    Top = 68
    Width = 137
    Height = 21
    TabOrder = 4
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object GroupBox3: TGroupBox [10]
    Left = 456
    Top = 56
    Width = 193
    Height = 54
    TabOrder = 5
    object Label8: TLabel
      Left = 14
      Top = 35
      Width = 71
      Height = 13
      Caption = 'Valor Total R$ '
    end
    object Label13: TLabel
      Left = 96
      Top = 35
      Width = 38
      Height = 13
      Caption = 'Label13'
    end
    object GroupBox4: TGroupBox
      Left = -6
      Top = -3
      Width = 205
      Height = 34
      TabOrder = 0
      object Label2: TLabel
        Left = 24
        Top = 14
        Width = 76
        Height = 16
        Caption = 'Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 144
        Top = 11
        Width = 11
        Height = 20
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 264
    Top = 113
  end
  inherited ActionList1: TActionList
    Left = 296
    Top = 113
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
      Category = 'Botao'
      Caption = 'Alterar'
      OnExecute = bt_AlterarExecute
    end
    object bt_Excluir: TAction
      Category = 'Botao'
      Caption = 'Excluir'
      OnExecute = bt_ExcluirExecute
    end
    object bt_Bancos: TAction
      Category = 'Botao'
      ImageIndex = 1
    end
    object bt_Incremento: TAction
      Category = 'Botao'
      Caption = '+'
      Hint = 'Aumenta parcela'
      OnExecute = bt_IncrementoExecute
    end
    object bt_Decremento: TAction
      Category = 'Botao'
      Caption = '-'
      Hint = 'Diminui parcela'
      OnExecute = bt_DecrementoExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 113
    object Alterar1: TMenuItem
      Action = bt_Alterar
    end
    object Excluir1: TMenuItem
      Action = bt_Excluir
    end
  end
end
