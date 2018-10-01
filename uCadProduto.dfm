inherited FormCadProduto: TFormCadProduto
  Top = 169
  Caption = 'Cadastro de Produto'
  ClientHeight = 561
  ClientWidth = 784
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Width = 784
    Height = 5
  end
  inherited Bevel3: TBevel
    Width = 759
    Height = 5
  end
  inherited Label1: TLabel
    Left = 8
    Top = 62
  end
  inherited btn_Localizar: TSpeedButton
    Left = 449
    Top = 56
  end
  object Label5: TLabel [4]
    Left = 76
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  inherited StatusBar1: TStatusBar
    Top = 542
    Width = 784
  end
  inherited GroupBox1: TGroupBox
    Width = 770
    Height = 154
    inherited PageControl1: TPageControl
      Left = 6
      Top = 18
      Width = 755
      Height = 129
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais '
        object Label2: TLabel
          Left = 19
          Top = 43
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 19
          Top = 12
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label6: TLabel
          Left = 423
          Top = 73
          Width = 30
          Height = 13
          Caption = 'Valor: '
        end
        object lblEspessura: TLabel
          Left = 4
          Top = 73
          Width = 52
          Height = 13
          Caption = 'Espessura:'
        end
        object lblAltura: TLabel
          Left = 120
          Top = 73
          Width = 30
          Height = 13
          Caption = 'Altura:'
        end
        object lblLargura: TLabel
          Left = 216
          Top = 73
          Width = 39
          Height = 13
          Caption = 'Largura:'
        end
        object lblMedida: TLabel
          Left = 320
          Top = 73
          Width = 38
          Height = 13
          Caption = 'Medida:'
        end
        object DBEdit1: TDBEdit
          Left = 59
          Top = 39
          Width = 358
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_DESCRICAO'
          DataSource = dsCadastro
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object DBCheckBox1: TDBCheckBox
          Left = 495
          Top = 10
          Width = 50
          Height = 17
          Caption = 'Ativo'
          DataField = 'PROD_ATIVO'
          DataSource = dsCadastro
          TabOrder = 4
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 59
          Top = 8
          Width = 430
          Height = 21
          DataField = 'PROD_PRODTP_ID'
          DataSource = dsCadastro
          KeyField = 'PRODTP_ID'
          ListField = 'PRODTP_DESCRICAO'
          ListSource = DMProduto.dsViewLookup_TipoProduto
          TabOrder = 0
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 455
          Top = 69
          Width = 55
          Height = 21
          DataField = 'PROD_VALOR'
          DataSource = dsCadastro
          TabOrder = 3
          OnKeyPress = DBEdit2KeyPress
        end
        object ComboBox1: TComboBox
          Left = 426
          Top = 37
          Width = 84
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ItemIndex = 2
          TabOrder = 2
          Text = 'M Linear'
          Items.Strings = (
            'M'#178
            'M Corrido'
            'M Linear')
        end
        object edEspessura: TDBEdit
          Left = 59
          Top = 69
          Width = 55
          Height = 21
          DataField = 'PROD_ESPESSURA'
          DataSource = dsCadastro
          TabOrder = 5
          OnKeyPress = DBEdit2KeyPress
        end
        object edAltura: TDBEdit
          Left = 154
          Top = 69
          Width = 55
          Height = 21
          DataField = 'PROD_ALTURA'
          DataSource = dsCadastro
          TabOrder = 6
          OnKeyPress = DBEdit2KeyPress
        end
        object edLargura: TDBEdit
          Left = 260
          Top = 69
          Width = 55
          Height = 21
          DataField = 'PROD_LARGURA'
          DataSource = dsCadastro
          TabOrder = 7
          OnKeyPress = DBEdit2KeyPress
        end
        object edMedida: TDBEdit
          Left = 364
          Top = 69
          Width = 55
          Height = 21
          DataField = 'PROD_MEDIDA_METRO'
          DataSource = dsCadastro
          TabOrder = 8
          OnKeyPress = DBEdit2KeyPress
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 256
    Width = 770
    Height = 181
    Caption = '  Lista de Produto  '
    object Label4: TLabel
      Left = 9
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 30
      Width = 755
      Height = 126
      DataSource = dsConsulta
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'PROD_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PROD_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 339
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_VALOR'
          Title.Caption = 'Valor'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_UNIDMEDIDA'
          Title.Caption = 'Unid Medida'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_UNIDMEDIDA'
          Title.Caption = 'Unid. Medida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_ESPESSURA'
          Title.Caption = 'Espessura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_LARGURA'
          Title.Caption = 'Largura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_ALTURA'
          Title.Caption = 'Altura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_MEDIDA_METRO'
          Title.Caption = 'Meidida'
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 784
    TabOrder = 4
    inherited Bevel1: TBevel
      Width = 184
    end
    inherited BtnInserir: TSpeedButton
      Left = 184
    end
    inherited BtnEditar: TSpeedButton
      Left = 256
    end
    inherited BtnExcluir: TSpeedButton
      Left = 328
    end
    inherited BtnGravar: TSpeedButton
      Left = 400
    end
    inherited BtnCancela: TSpeedButton
      Left = 472
    end
    inherited BtnSair: TSpeedButton
      Left = 544
    end
  end
  object Edit1: TEdit [9]
    Left = 112
    Top = 58
    Width = 337
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  inherited ImageList1: TImageList
    Left = 265
    Top = 296
  end
  inherited ActionList1: TActionList
    Left = 297
    Top = 296
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
  object PopupMenu1: TPopupMenu [12]
    Left = 328
    Top = 296
    object Alterar1: TMenuItem
      Action = bt_Alterar
    end
    object Excluir1: TMenuItem
      Action = bt_Excluir
    end
  end
  object ApplicationEvents1: TApplicationEvents [13]
    OnMessage = ApplicationEvents1Message
    Left = 232
    Top = 296
  end
  inherited qryCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO WHERE PROD_ID = :PROD')
    Top = 393
    object qryCadastroPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadastroPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Required = True
    end
    object qryCadastroPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryCadastroPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryCadastroPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryCadastroPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
  end
  inherited dspCadastro: TDataSetProvider
    Top = 393
  end
  inherited dsCadastro: TDataSource
    Top = 393
  end
  inherited cdsCadastro: TMyClientDataSet
    Top = 393
    object cdsCadastroPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Required = True
    end
    object cdsCadastroPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsCadastroPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsCadastroPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
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
      'SELECT * FROM PRODUTO'
      'WHERE PROD_DESCRICAO LIKE :NOME'
      'ORDER BY PROD_DESCRICAO')
    Top = 424
    object qryConsultaPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object qryConsultaPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Required = True
    end
    object qryConsultaPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryConsultaPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryConsultaPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryConsultaPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
  end
  inherited dspConsulta: TDataSetProvider
    Top = 424
  end
  inherited cdsConsulta: TMyClientDataSet
    Top = 424
    object cdsConsultaPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object cdsConsultaPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object cdsConsultaPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsConsultaPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
  end
  inherited dsConsulta: TDataSource
    Top = 424
  end
end
