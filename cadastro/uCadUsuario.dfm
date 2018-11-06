inherited FCadUsuario: TFCadUsuario
  Left = 295
  Top = 160
  Caption = 'FCadUsuario'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1USU_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'USU_ID'
          end
          object grConsultaDBTableView1USU_NOME: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'USU_NOME'
          end
          object grConsultaDBTableView1USU_ENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'USU_ENDERECO'
          end
          object grConsultaDBTableView1USU_BAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'USU_BAIRRO'
          end
          object grConsultaDBTableView1USU_CIDADE: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'USU_CIDADE'
          end
          object grConsultaDBTableView1USU_ESTADO: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'USU_ESTADO'
          end
          object grConsultaDBTableView1USU_FONE_RES: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'USU_FONE_RES'
          end
          object grConsultaDBTableView1USU_FONE_CEL: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'USU_FONE_CEL'
          end
          object grConsultaDBTableView1USU_EMAIL: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'USU_EMAIL'
          end
          object grConsultaDBTableView1USU_RG: TcxGridDBColumn
            Caption = 'RG'
            DataBinding.FieldName = 'USU_RG'
          end
          object grConsultaDBTableView1USU_CPF: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'USU_CPF'
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object PageControl1: TPageControl
        Left = 0
        Top = 52
        Width = 776
        Height = 350
        ActivePage = TabSheet1
        Align = alClient
        Images = ImageList1
        TabOrder = 1
        OnChange = PageControl1Change
        object TabSheetFicha: TTabSheet
          Caption = 'Dados Cadastrais'
          ImageIndex = 7
          object Label2: TLabel
            Left = 13
            Top = 44
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label3: TLabel
            Left = 13
            Top = 68
            Width = 22
            Height = 13
            Caption = 'RG: '
          end
          object Label5: TLabel
            Left = 189
            Top = 68
            Width = 23
            Height = 13
            Caption = 'CPF:'
          end
          object Label6: TLabel
            Left = 13
            Top = 93
            Width = 49
            Height = 13
            Caption = 'Endere'#231'o:'
          end
          object Label7: TLabel
            Left = 13
            Top = 118
            Width = 30
            Height = 13
            Caption = 'Bairro:'
          end
          object Label8: TLabel
            Left = 229
            Top = 118
            Width = 36
            Height = 13
            Caption = 'Cidade:'
          end
          object Label9: TLabel
            Left = 437
            Top = 118
            Width = 17
            Height = 13
            Caption = 'UF:'
          end
          object Label10: TLabel
            Left = 13
            Top = 143
            Width = 45
            Height = 13
            Caption = 'Telefone:'
          end
          object Label12: TLabel
            Left = 157
            Top = 143
            Width = 35
            Height = 13
            Caption = 'Celular:'
          end
          object Label13: TLabel
            Left = 293
            Top = 143
            Width = 31
            Height = 13
            Caption = 'E-mail:'
          end
          object Label1: TLabel
            Left = 13
            Top = 20
            Width = 33
            Height = 13
            Caption = 'Codigo'
            FocusControl = DBEdit16
          end
          object DBEdit1: TDBEdit
            Left = 69
            Top = 40
            Width = 397
            Height = 21
            CharCase = ecUpperCase
            DataField = 'USU_NOME'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 69
            Top = 64
            Width = 113
            Height = 21
            DataField = 'USU_RG'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 221
            Top = 64
            Width = 113
            Height = 21
            DataField = 'USU_CPF'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object DBEdit4: TDBEdit
            Left = 69
            Top = 89
            Width = 449
            Height = 21
            CharCase = ecUpperCase
            DataField = 'USU_ENDERECO'
            DataSource = dsCadastro
            TabOrder = 5
          end
          object DBEdit5: TDBEdit
            Left = 69
            Top = 114
            Width = 153
            Height = 21
            CharCase = ecUpperCase
            DataField = 'USU_BAIRRO'
            DataSource = dsCadastro
            TabOrder = 6
          end
          object DBEdit6: TDBEdit
            Left = 269
            Top = 114
            Width = 161
            Height = 21
            CharCase = ecUpperCase
            DataField = 'USU_CIDADE'
            DataSource = dsCadastro
            TabOrder = 7
          end
          object DBEdit7: TDBEdit
            Left = 69
            Top = 139
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'USU_FONE_RES'
            DataSource = dsCadastro
            TabOrder = 9
          end
          object DBEdit8: TDBEdit
            Left = 197
            Top = 139
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'USU_FONE_CEL'
            DataSource = dsCadastro
            TabOrder = 10
          end
          object DBEdit9: TDBEdit
            Left = 333
            Top = 139
            Width = 185
            Height = 21
            DataField = 'USU_EMAIL'
            DataSource = dsCadastro
            TabOrder = 11
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 461
            Top = 114
            Width = 57
            Height = 21
            DataField = 'USU_ESTADO'
            DataSource = dsCadastro
            KeyField = 'EST_SIGLA'
            ListField = 'EST_SIGLA'
            ListSource = dsEstado
            TabOrder = 8
          end
          object DBCheckBox1: TDBCheckBox
            Left = 473
            Top = 42
            Width = 49
            Height = 17
            Caption = 'Ativo'
            DataField = 'USU_ATIVO'
            DataSource = dsCadastro
            TabOrder = 2
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          object DBEdit16: TDBEdit
            Left = 69
            Top = 16
            Width = 113
            Height = 21
            DataField = 'USU_ID'
            DataSource = dsCadastro
            TabOrder = 0
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
            DataSource = dsCadastro
            KeyField = 'USUF_ID'
            ListField = 'USUF_DESCRICAO'
            ListSource = dsFuncao
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 138
            Top = 93
            Width = 39
            Height = 21
            DataField = 'USU_DESCONTO_PEDIDO'
            DataSource = dsCadastro
            MaxLength = 3
            TabOrder = 1
            Visible = False
          end
          object DBEdit14: TDBEdit
            Left = 138
            Top = 55
            Width = 39
            Height = 21
            DataField = 'USU_COMISSAO_PEDIDO'
            DataSource = dsCadastro
            MaxLength = 3
            TabOrder = 2
          end
          object DBEdit15: TDBEdit
            Left = 359
            Top = 53
            Width = 39
            Height = 21
            DataField = 'USU_DESCONTO_ORCAMENTO'
            DataSource = dsCadastro
            MaxLength = 3
            TabOrder = 3
            Visible = False
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
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit11: TDBEdit
            Left = 114
            Top = 72
            Width = 121
            Height = 21
            DataField = 'USU_SENHA'
            DataSource = dsCadastro
            PasswordChar = '*'
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 329
            Top = 72
            Width = 121
            Height = 21
            DataField = 'USU_SENHA_CONF'
            DataSource = dsCadastro
            PasswordChar = '*'
            TabOrder = 3
          end
          object ComboBox1: TComboBox
            Left = 329
            Top = 40
            Width = 121
            Height = 19
            Style = csOwnerDrawFixed
            ItemHeight = 13
            TabOrder = 1
            Items.Strings = (
              'MASTER'
              'GERENTE'
              'FUNCION'#193'RIO')
          end
        end
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    AfterInsert = ibCadastroAfterInsert
    BeforePost = ibCadastroBeforePost
    DeleteSQL.Strings = (
      'delete from usuarios'
      'where'
      '  USU_ID = :OLD_USU_ID')
    InsertSQL.Strings = (
      'insert into usuarios'
      '  (USU_ID, USU_LOGIN, USU_SENHA, USU_SENHA_CONF, USU_NOME, '
      'USU_ENDERECO, '
      '   USU_BAIRRO, USU_CIDADE, USU_ESTADO, USU_FONE_RES, '
      'USU_FONE_CEL, USU_EMAIL, '
      '   USU_RG, USU_CPF, USU_ATIVO, USU_LOGIN_TIPO, USU_EXCLUIR, '
      'USU_FUNCAO, '
      '   USU_COMISSAO_PEDIDO, USU_DESCONTO_ORCAMENTO, '
      'USU_DESCONTO_PEDIDO)'
      'values'
      '  (:USU_ID, :USU_LOGIN, :USU_SENHA, :USU_SENHA_CONF, :USU_NOME, '
      ':USU_ENDERECO, '
      '   :USU_BAIRRO, :USU_CIDADE, :USU_ESTADO, :USU_FONE_RES, '
      ':USU_FONE_CEL, '
      '   :USU_EMAIL, :USU_RG, :USU_CPF, :USU_ATIVO, :USU_LOGIN_TIPO, '
      ':USU_EXCLUIR, '
      '   :USU_FUNCAO, :USU_COMISSAO_PEDIDO, :USU_DESCONTO_ORCAMENTO, '
      ':USU_DESCONTO_PEDIDO)')
    RefreshSQL.Strings = (
      'Select *'
      'from usuarios '
      'where'
      '  USU_ID = :USU_ID')
    SelectSQL.Strings = (
      'select * from usuarios where usu_id = :FId')
    ModifySQL.Strings = (
      'update usuarios'
      'set'
      '  USU_ID = :USU_ID,'
      '  USU_LOGIN = :USU_LOGIN,'
      '  USU_SENHA = :USU_SENHA,'
      '  USU_SENHA_CONF = :USU_SENHA_CONF,'
      '  USU_NOME = :USU_NOME,'
      '  USU_ENDERECO = :USU_ENDERECO,'
      '  USU_BAIRRO = :USU_BAIRRO,'
      '  USU_CIDADE = :USU_CIDADE,'
      '  USU_ESTADO = :USU_ESTADO,'
      '  USU_FONE_RES = :USU_FONE_RES,'
      '  USU_FONE_CEL = :USU_FONE_CEL,'
      '  USU_EMAIL = :USU_EMAIL,'
      '  USU_RG = :USU_RG,'
      '  USU_CPF = :USU_CPF,'
      '  USU_ATIVO = :USU_ATIVO,'
      '  USU_LOGIN_TIPO = :USU_LOGIN_TIPO,'
      '  USU_EXCLUIR = :USU_EXCLUIR,'
      '  USU_FUNCAO = :USU_FUNCAO,'
      '  USU_COMISSAO_PEDIDO = :USU_COMISSAO_PEDIDO,'
      '  USU_DESCONTO_ORCAMENTO = :USU_DESCONTO_ORCAMENTO,'
      '  USU_DESCONTO_PEDIDO = :USU_DESCONTO_PEDIDO'
      'where'
      '  USU_ID = :OLD_USU_ID')
    GeneratorField.Field = 'USU_ID'
    GeneratorField.Generator = 'GEN_USUARIOS'
    object ibCadastroUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Origin = 'USUARIOS.USU_ID'
      Required = True
    end
    object ibCadastroUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USUARIOS.USU_LOGIN'
      Required = True
      Size = 30
    end
    object ibCadastroUSU_SENHA: TIBStringField
      FieldName = 'USU_SENHA'
      Origin = 'USUARIOS.USU_SENHA'
      Required = True
      Size = 15
    end
    object ibCadastroUSU_SENHA_CONF: TIBStringField
      FieldName = 'USU_SENHA_CONF'
      Origin = 'USUARIOS.USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object ibCadastroUSU_NOME: TIBStringField
      FieldName = 'USU_NOME'
      Origin = 'USUARIOS.USU_NOME'
      Required = True
      Size = 40
    end
    object ibCadastroUSU_ENDERECO: TIBStringField
      FieldName = 'USU_ENDERECO'
      Origin = 'USUARIOS.USU_ENDERECO'
      Size = 40
    end
    object ibCadastroUSU_BAIRRO: TIBStringField
      FieldName = 'USU_BAIRRO'
      Origin = 'USUARIOS.USU_BAIRRO'
      Size = 30
    end
    object ibCadastroUSU_CIDADE: TIBStringField
      FieldName = 'USU_CIDADE'
      Origin = 'USUARIOS.USU_CIDADE'
      Size = 30
    end
    object ibCadastroUSU_ESTADO: TIBStringField
      FieldName = 'USU_ESTADO'
      Origin = 'USUARIOS.USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object ibCadastroUSU_FONE_RES: TIBStringField
      FieldName = 'USU_FONE_RES'
      Origin = 'USUARIOS.USU_FONE_RES'
    end
    object ibCadastroUSU_FONE_CEL: TIBStringField
      FieldName = 'USU_FONE_CEL'
      Origin = 'USUARIOS.USU_FONE_CEL'
    end
    object ibCadastroUSU_EMAIL: TIBStringField
      FieldName = 'USU_EMAIL'
      Origin = 'USUARIOS.USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object ibCadastroUSU_RG: TIBStringField
      FieldName = 'USU_RG'
      Origin = 'USUARIOS.USU_RG'
    end
    object ibCadastroUSU_CPF: TIBStringField
      FieldName = 'USU_CPF'
      Origin = 'USUARIOS.USU_CPF'
    end
    object ibCadastroUSU_ATIVO: TIBStringField
      FieldName = 'USU_ATIVO'
      Origin = 'USUARIOS.USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object ibCadastroUSU_LOGIN_TIPO: TIBStringField
      FieldName = 'USU_LOGIN_TIPO'
      Origin = 'USUARIOS.USU_LOGIN_TIPO'
      Size = 30
    end
    object ibCadastroUSU_EXCLUIR: TIBStringField
      FieldName = 'USU_EXCLUIR'
      Origin = 'USUARIOS.USU_EXCLUIR'
      FixedChar = True
      Size = 1
    end
    object ibCadastroUSU_FUNCAO: TIntegerField
      FieldName = 'USU_FUNCAO'
      Origin = 'USUARIOS.USU_FUNCAO'
      Required = True
    end
    object ibCadastroUSU_COMISSAO_PEDIDO: TIBBCDField
      FieldName = 'USU_COMISSAO_PEDIDO'
      Origin = 'USUARIOS.USU_COMISSAO_PEDIDO'
      Precision = 18
      Size = 2
    end
    object ibCadastroUSU_DESCONTO_ORCAMENTO: TIBBCDField
      FieldName = 'USU_DESCONTO_ORCAMENTO'
      Origin = 'USUARIOS.USU_DESCONTO_ORCAMENTO'
      Precision = 18
      Size = 2
    end
    object ibCadastroUSU_DESCONTO_PEDIDO: TIBBCDField
      FieldName = 'USU_DESCONTO_PEDIDO'
      Origin = 'USUARIOS.USU_DESCONTO_PEDIDO'
      Precision = 18
      Size = 2
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select usuarios.usu_id ID, usuarios.* from usuarios')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'USUARIOS.USU_ID'
      Required = True
    end
    object qConsultaUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Origin = 'USUARIOS.USU_ID'
      Required = True
    end
    object qConsultaUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USUARIOS.USU_LOGIN'
      Required = True
      Size = 30
    end
    object qConsultaUSU_SENHA: TIBStringField
      FieldName = 'USU_SENHA'
      Origin = 'USUARIOS.USU_SENHA'
      Required = True
      Size = 15
    end
    object qConsultaUSU_SENHA_CONF: TIBStringField
      FieldName = 'USU_SENHA_CONF'
      Origin = 'USUARIOS.USU_SENHA_CONF'
      Required = True
      Size = 15
    end
    object qConsultaUSU_NOME: TIBStringField
      FieldName = 'USU_NOME'
      Origin = 'USUARIOS.USU_NOME'
      Required = True
      Size = 40
    end
    object qConsultaUSU_ENDERECO: TIBStringField
      FieldName = 'USU_ENDERECO'
      Origin = 'USUARIOS.USU_ENDERECO'
      Size = 40
    end
    object qConsultaUSU_BAIRRO: TIBStringField
      FieldName = 'USU_BAIRRO'
      Origin = 'USUARIOS.USU_BAIRRO'
      Size = 30
    end
    object qConsultaUSU_CIDADE: TIBStringField
      FieldName = 'USU_CIDADE'
      Origin = 'USUARIOS.USU_CIDADE'
      Size = 30
    end
    object qConsultaUSU_ESTADO: TIBStringField
      FieldName = 'USU_ESTADO'
      Origin = 'USUARIOS.USU_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qConsultaUSU_FONE_RES: TIBStringField
      FieldName = 'USU_FONE_RES'
      Origin = 'USUARIOS.USU_FONE_RES'
    end
    object qConsultaUSU_FONE_CEL: TIBStringField
      FieldName = 'USU_FONE_CEL'
      Origin = 'USUARIOS.USU_FONE_CEL'
    end
    object qConsultaUSU_EMAIL: TIBStringField
      FieldName = 'USU_EMAIL'
      Origin = 'USUARIOS.USU_EMAIL'
      FixedChar = True
      Size = 40
    end
    object qConsultaUSU_RG: TIBStringField
      FieldName = 'USU_RG'
      Origin = 'USUARIOS.USU_RG'
    end
    object qConsultaUSU_CPF: TIBStringField
      FieldName = 'USU_CPF'
      Origin = 'USUARIOS.USU_CPF'
    end
    object qConsultaUSU_ATIVO: TIBStringField
      FieldName = 'USU_ATIVO'
      Origin = 'USUARIOS.USU_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qConsultaUSU_LOGIN_TIPO: TIBStringField
      FieldName = 'USU_LOGIN_TIPO'
      Origin = 'USUARIOS.USU_LOGIN_TIPO'
      Size = 30
    end
    object qConsultaUSU_EXCLUIR: TIBStringField
      FieldName = 'USU_EXCLUIR'
      Origin = 'USUARIOS.USU_EXCLUIR'
      FixedChar = True
      Size = 1
    end
    object qConsultaUSU_FUNCAO: TIntegerField
      FieldName = 'USU_FUNCAO'
      Origin = 'USUARIOS.USU_FUNCAO'
      Required = True
    end
    object qConsultaUSU_COMISSAO_PEDIDO: TIBBCDField
      FieldName = 'USU_COMISSAO_PEDIDO'
      Origin = 'USUARIOS.USU_COMISSAO_PEDIDO'
      Precision = 18
      Size = 2
    end
    object qConsultaUSU_DESCONTO_ORCAMENTO: TIBBCDField
      FieldName = 'USU_DESCONTO_ORCAMENTO'
      Origin = 'USUARIOS.USU_DESCONTO_ORCAMENTO'
      Precision = 18
      Size = 2
    end
    object qConsultaUSU_DESCONTO_PEDIDO: TIBBCDField
      FieldName = 'USU_DESCONTO_PEDIDO'
      Origin = 'USUARIOS.USU_DESCONTO_PEDIDO'
      Precision = 18
      Size = 2
    end
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Imprimir: TAction
      OnExecute = Act_Btn_ImprimirExecute
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qEstado: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from estado')
    Left = 472
    Top = 272
    object qEstadoEST_INDEX: TIntegerField
      FieldName = 'EST_INDEX'
      Origin = '"ESTADO"."EST_INDEX"'
    end
    object qEstadoEST_SIGLA: TIBStringField
      FieldName = 'EST_SIGLA'
      Origin = '"ESTADO"."EST_SIGLA"'
      FixedChar = True
      Size = 2
    end
    object qEstadoEST_ESTADO: TIBStringField
      FieldName = 'EST_ESTADO'
      Origin = '"ESTADO"."EST_ESTADO"'
      Size = 50
    end
  end
  object dsEstado: TDataSource
    DataSet = qEstado
    Left = 520
    Top = 272
  end
  object qFuncao: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from usuarios_funcao order by usuf_descricao')
    Left = 472
    Top = 320
    object qFuncaoUSUF_ID: TIntegerField
      FieldName = 'USUF_ID'
      Origin = '"USUARIOS_FUNCAO"."USUF_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFuncaoUSUF_DESCRICAO: TIBStringField
      FieldName = 'USUF_DESCRICAO'
      Origin = '"USUARIOS_FUNCAO"."USUF_DESCRICAO"'
      Size = 60
    end
  end
  object dsFuncao: TDataSource
    DataSet = qFuncao
    Left = 520
    Top = 320
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 172
    Top = 175
  end
end
