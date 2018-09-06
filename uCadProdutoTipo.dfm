inherited FormCadProdutoTipo: TFormCadProdutoTipo
  Left = 611
  Top = 100
  Caption = 'Cadastro de Tipo de Produto'
  ClientHeight = 462
  ClientWidth = 584
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Width = 584
    Height = 4
  end
  inherited Bevel3: TBevel
    Width = 568
  end
  inherited btn_Localizar: TSpeedButton
    Left = 448
  end
  object Label5: TLabel [4]
    Left = 100
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  inherited StatusBar1: TStatusBar
    Top = 443
    Width = 584
  end
  inherited GroupBox1: TGroupBox
    Width = 570
    Height = 154
    inherited PageControl1: TPageControl
      Left = 9
      Top = 17
      Width = 554
      Height = 131
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais '
        object Label2: TLabel
          Left = 8
          Top = 25
          Width = 79
          Height = 13
          Caption = 'Tipo de Produto:'
        end
        object Label6: TLabel
          Left = 423
          Top = 65
          Width = 30
          Height = 13
          Caption = 'Valor: '
        end
        object lblEspessura: TLabel
          Left = 4
          Top = 65
          Width = 52
          Height = 13
          Caption = 'Espessura:'
        end
        object lblAltura: TLabel
          Left = 120
          Top = 65
          Width = 30
          Height = 13
          Caption = 'Altura:'
        end
        object lblLargura: TLabel
          Left = 216
          Top = 65
          Width = 39
          Height = 13
          Caption = 'Largura:'
        end
        object lblMedida: TLabel
          Left = 320
          Top = 65
          Width = 38
          Height = 13
          Caption = 'Medida:'
        end
        object DBEdit1: TDBEdit
          Left = 95
          Top = 22
          Width = 336
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRODTP_DESCRICAO'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 455
          Top = 61
          Width = 55
          Height = 21
          DataField = 'PRODTP_VALOR'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object edEspessura: TDBEdit
          Left = 59
          Top = 61
          Width = 55
          Height = 21
          DataField = 'PRODTP_ESPESSURA'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object edAltura: TDBEdit
          Left = 154
          Top = 61
          Width = 55
          Height = 21
          DataField = 'PRODTP_ALTURA'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object edLargura: TDBEdit
          Left = 260
          Top = 61
          Width = 55
          Height = 21
          DataField = 'PRODTP_LARGURA'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object edMedida: TDBEdit
          Left = 364
          Top = 61
          Width = 55
          Height = 21
          DataField = 'PRODTP_MEDIDA_METRO'
          DataSource = dsCadastro
          TabOrder = 5
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 256
    Width = 570
    Height = 181
    Caption = '  Lista de Tipo de Produto    '
    object Label4: TLabel
      Left = 9
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 30
      Width = 555
      Height = 145
      DataSource = dsConsulta
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODTP_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODTP_ESPESSURA'
          Title.Caption = 'Espessura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODTP_LARGURA'
          Title.Caption = 'Largura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODTP_ALTURA'
          Title.Caption = 'Altura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODTP_MEDIDA_METRO'
          Title.Caption = 'Unid. Medida'
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 584
    inherited Bevel1: TBevel
      Width = 81
    end
    inherited BtnInserir: TSpeedButton
      Left = 81
    end
    inherited BtnEditar: TSpeedButton
      Left = 153
    end
    inherited BtnExcluir: TSpeedButton
      Left = 225
    end
    inherited BtnGravar: TSpeedButton
      Left = 297
    end
    inherited BtnCancela: TSpeedButton
      Left = 369
    end
    inherited BtnSair: TSpeedButton
      Left = 441
    end
  end
  object Edit1: TEdit [9]
    Left = 136
    Top = 58
    Width = 305
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  inherited ImageList1: TImageList
    Left = 215
    Top = 328
  end
  inherited ActionList1: TActionList
    Left = 247
    Top = 328
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
  inherited qryCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_TIPO WHERE PRODUTO_TIPO.PRODTP_ID = :ID')
    object qryCadastroPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadastroPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
    object qryCadastroPRODTP_ESPESSURA: TFMTBCDField
      FieldName = 'PRODTP_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPRODTP_LARGURA: TFMTBCDField
      FieldName = 'PRODTP_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPRODTP_ALTURA: TFMTBCDField
      FieldName = 'PRODTP_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPRODTP_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PRODTP_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryCadastroPRODTP_VALOR: TFMTBCDField
      FieldName = 'PRODTP_VALOR'
      Precision = 15
      Size = 2
    end
  end
  inherited cdsCadastro: TMyClientDataSet
    object cdsCadastroPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
    object cdsCadastroPRODTP_ESPESSURA: TFMTBCDField
      FieldName = 'PRODTP_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPRODTP_LARGURA: TFMTBCDField
      FieldName = 'PRODTP_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPRODTP_ALTURA: TFMTBCDField
      FieldName = 'PRODTP_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPRODTP_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PRODTP_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPRODTP_VALOR: TFMTBCDField
      FieldName = 'PRODTP_VALOR'
      Precision = 15
      Size = 2
    end
  end
  inherited qryConsulta: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_TIPO'
      'WHERE PRODUTO_TIPO.PRODTP_DESCRICAO LIKE :NOME'
      'ORDER BY PRODUTO_TIPO.PRODTP_DESCRICAO')
    object qryConsultaPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object qryConsultaPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
    object qryConsultaPRODTP_ESPESSURA: TFMTBCDField
      FieldName = 'PRODTP_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPRODTP_LARGURA: TFMTBCDField
      FieldName = 'PRODTP_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPRODTP_ALTURA: TFMTBCDField
      FieldName = 'PRODTP_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPRODTP_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PRODTP_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryConsultaPRODTP_VALOR: TFMTBCDField
      FieldName = 'PRODTP_VALOR'
      Precision = 15
      Size = 2
    end
  end
  inherited cdsConsulta: TMyClientDataSet
    object cdsConsultaPRODTP_ID: TIntegerField
      FieldName = 'PRODTP_ID'
      Required = True
    end
    object cdsConsultaPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
    object cdsConsultaPRODTP_ESPESSURA: TFMTBCDField
      FieldName = 'PRODTP_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPRODTP_LARGURA: TFMTBCDField
      FieldName = 'PRODTP_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPRODTP_ALTURA: TFMTBCDField
      FieldName = 'PRODTP_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPRODTP_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PRODTP_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPRODTP_VALOR: TFMTBCDField
      FieldName = 'PRODTP_VALOR'
      Precision = 15
      Size = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 328
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
    Top = 326
  end
end
