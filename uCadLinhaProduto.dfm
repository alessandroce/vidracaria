inherited FCadLinhaProd: TFCadLinhaProd
  Caption = 'Linha de Produto'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [4]
    Left = 100
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  inherited GroupBox1: TGroupBox
    inherited PageControl1: TPageControl
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais'
        object Label2: TLabel
          Left = 40
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 40
          Top = 32
          Width = 500
          Height = 21
          DataField = 'PRL_DESCRICAO'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 557
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'PRL_ATIVO'
          DataSource = dsCadastro
          TabOrder = 1
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PRL_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 723
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRL_ID'
          Visible = False
        end>
    end
  end
  object Edit1: TEdit [9]
    Left = 136
    Top = 60
    Width = 553
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  inherited ActionList1: TActionList
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
  end
  inherited qryCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO_LINHA WHERE PRL_ID = :ID')
    object qryCadastroPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadastroPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
    object qryCadastroPRL_DH_CA: TSQLTimeStampField
      FieldName = 'PRL_DH_CA'
    end
    object qryCadastroPRL_ATIVO: TStringField
      FieldName = 'PRL_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  inherited cdsCadastro: TMyClientDataSet
    object cdsCadastroPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      Required = True
    end
    object cdsCadastroPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
    object cdsCadastroPRL_DH_CA: TSQLTimeStampField
      FieldName = 'PRL_DH_CA'
    end
    object cdsCadastroPRL_ATIVO: TStringField
      FieldName = 'PRL_ATIVO'
      FixedChar = True
      Size = 1
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
      'SELECT *'
      '  FROM PRODUTO_LINHA'
      ' WHERE PRODUTO_LINHA.PRL_DESCRICAO LIKE :NOME'
      ' ORDER BY PRODUTO_LINHA.PRL_DESCRICAO')
    object qryConsultaPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      Required = True
    end
    object qryConsultaPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
    object qryConsultaPRL_DH_CA: TSQLTimeStampField
      FieldName = 'PRL_DH_CA'
    end
    object qryConsultaPRL_ATIVO: TStringField
      FieldName = 'PRL_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  inherited cdsConsulta: TMyClientDataSet
    object cdsConsultaPRL_ID: TIntegerField
      FieldName = 'PRL_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConsultaPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
    object cdsConsultaPRL_DH_CA: TSQLTimeStampField
      FieldName = 'PRL_DH_CA'
    end
    object cdsConsultaPRL_ATIVO: TStringField
      FieldName = 'PRL_ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 232
    Top = 296
  end
end
