inherited FCadClientes: TFCadClientes
  Left = 233
  Width = 740
  Height = 600
  Caption = 'FCadClientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Width = 724
    Height = 531
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Width = 716
        Height = 433
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1CLI_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CLI_ID'
          end
          object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_CLIENTE'
            Width = 250
          end
          object grConsultaDBTableView1CLI_ENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'CLI_ENDERECO'
            Width = 250
          end
          object grConsultaDBTableView1CLI_COMPLEMENTO: TcxGridDBColumn
            Caption = 'Complemento'
            DataBinding.FieldName = 'CLI_COMPLEMENTO'
            Width = 250
          end
          object grConsultaDBTableView1CLI_BAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'CLI_BAIRRO'
            Width = 250
          end
          object grConsultaDBTableView1CLI_CEP: TcxGridDBColumn
            Caption = 'CEP'
            DataBinding.FieldName = 'CLI_CEP'
            Width = 130
          end
          object grConsultaDBTableView1CLI_MUNICIPIO: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CLI_MUNICIPIO'
            Width = 100
          end
          object grConsultaDBTableView1CLI_FONE: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'CLI_FONE'
          end
          object grConsultaDBTableView1CLI_FAX: TcxGridDBColumn
            Caption = 'FAX'
            DataBinding.FieldName = 'CLI_FAX'
          end
          object grConsultaDBTableView1CLI_EMAIL: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'CLI_EMAIL'
            Width = 300
          end
          object grConsultaDBTableView1CLI_CONTATO: TcxGridDBColumn
            DataBinding.FieldName = 'Contato'
            Width = 100
          end
          object grConsultaDBTableView1CLI_CELULAR: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'CLI_CELULAR'
          end
          object grConsultaDBTableView1CLI_INFO_ADICIONAL: TcxGridDBColumn
            Caption = 'Info Adiional'
            DataBinding.FieldName = 'CLI_INFO_ADICIONAL'
            Width = 250
          end
        end
      end
      inherited pnBarraPg: TPanel
        Width = 716
        inherited btSair: TSpeedButton
          Left = 656
        end
        inherited rgAtivo: TRadioGroup
          Left = 415
          Top = -24
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 483
        Width = 716
      end
    end
    inherited tsCadastro: TTabSheet
      inherited Bevel1: TBevel
        Width = 716
      end
      object Label2: TLabel [1]
        Left = 15
        Top = 144
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
      object Label3: TLabel [2]
        Left = 15
        Top = 172
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
      object Label4: TLabel [3]
        Left = 15
        Top = 201
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
      object Label5: TLabel [4]
        Left = 545
        Top = 201
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
      object Label7: TLabel [5]
        Left = 15
        Top = 230
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
      object Label8: TLabel [6]
        Left = 371
        Top = 230
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
      object Label9: TLabel [7]
        Left = 547
        Top = 374
        Width = 23
        Height = 13
        Caption = 'Fax: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label10: TLabel [8]
        Left = 15
        Top = 258
        Width = 30
        Height = 13
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel [9]
        Left = 210
        Top = 258
        Width = 44
        Height = 13
        Caption = 'Insc. Est.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel [10]
        Left = 301
        Top = 290
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
      object Label14: TLabel [11]
        Left = 15
        Top = 290
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
      object Label15: TLabel [12]
        Left = 550
        Top = 232
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
      object Label17: TLabel [13]
        Left = 295
        Top = 203
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
      object Label18: TLabel [14]
        Left = 386
        Top = 258
        Width = 23
        Height = 13
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel [15]
        Left = 554
        Top = 258
        Width = 19
        Height = 13
        Caption = 'RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [16]
        Left = 15
        Top = 319
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit11
      end
      object Label6: TLabel [17]
        Left = 15
        Top = 93
        Width = 66
        Height = 13
        Caption = 'Tipo Cadastro'
      end
      inherited Panel1: TPanel
        Width = 716
        TabOrder = 20
        inherited btSalvar: TSpeedButton
          Left = 656
        end
        inherited btCancelar: TSpeedButton
          Left = 596
        end
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 142
        Width = 537
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_CLIENTE'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 170
        Width = 609
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_ENDERECO'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 199
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_BAIRRO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 574
        Top = 199
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_CEP'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 228
        Width = 277
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_MUNICIPIO'
        DataSource = dsCadastro
        TabOrder = 10
      end
      object DBEdit6: TDBEdit
        Left = 420
        Top = 228
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_FONE'
        DataSource = dsCadastro
        TabOrder = 11
      end
      object DBEdit7: TDBEdit
        Left = 574
        Top = 372
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_FAX'
        DataSource = dsCadastro
        TabOrder = 21
        Visible = False
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 256
        Width = 108
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_CNPJ'
        DataSource = dsCadastro
        TabOrder = 13
      end
      object DBEdit9: TDBEdit
        Left = 259
        Top = 256
        Width = 108
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_INSC_EST'
        DataSource = dsCadastro
        TabOrder = 14
      end
      object DBEdit10: TDBEdit
        Left = 350
        Top = 286
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_ATIVIDADE'
        DataSource = dsCadastro
        TabOrder = 18
      end
      object DBEdit13: TDBEdit
        Left = 592
        Top = 228
        Width = 101
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_CELULAR'
        DataSource = dsCadastro
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 88
        Top = 286
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_CONTATO'
        DataSource = dsCadastro
        TabOrder = 17
      end
      object DBCheckBox1: TDBCheckBox
        Left = 640
        Top = 144
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'CLI_ATIVO'
        DataSource = dsCadastro
        TabOrder = 5
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object DBEdit14: TDBEdit
        Left = 368
        Top = 199
        Width = 174
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_COMPLEMENTO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object DBEdit15: TDBEdit
        Left = 419
        Top = 256
        Width = 108
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_CPF'
        DataSource = dsCadastro
        TabOrder = 15
      end
      object DBEdit16: TDBEdit
        Left = 587
        Top = 256
        Width = 108
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_RG'
        DataSource = dsCadastro
        TabOrder = 16
      end
      object DBEdit11: TDBEdit
        Left = 88
        Top = 315
        Width = 461
        Height = 21
        CharCase = ecLowerCase
        DataField = 'CLI_EMAIL'
        DataSource = dsCadastro
        TabOrder = 19
      end
      object cxGrid1: TcxGrid
        Left = 88
        Top = 64
        Width = 202
        Height = 70
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsTipoCliente
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          object cxGrid1DBTableView1CTP_DESCRICAO: TcxGridDBColumn
            Caption = 'Descricao'
            DataBinding.FieldName = 'CTP_DESCRICAO'
            Width = 185
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object btCACliente: TBitBtn
        Left = 293
        Top = 64
        Width = 22
        Height = 21
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btCAClienteClick
      end
      object btEXCliente: TBitBtn
        Left = 293
        Top = 86
        Width = 22
        Height = 21
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btEXClienteClick
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 336
        Top = 75
        Width = 185
        Height = 49
        Caption = '  Tipo pessoa  '
        Columns = 2
        DataField = 'CLI_TIPOPESSOA'
        DataSource = dsCadastro
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        TabOrder = 3
        Values.Strings = (
          'F'
          'J')
      end
    end
  end
  inherited pnBarraForm: TPanel
    Width = 724
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
  end
  inherited ibCadastro: TIBDataSet
    AfterInsert = ibCadastroAfterInsert
    AfterPost = ibCadastroAfterPost
    DeleteSQL.Strings = (
      'delete from clientes'
      'where'
      '  CLI_ID = :OLD_CLI_ID')
    InsertSQL.Strings = (
      'insert into clientes'
      
        '  (CLI_ATIVIDADE, CLI_ATIVO, CLI_BAIRRO, CLI_CELULAR, CLI_CEP, C' +
        'LI_CLIENTE, '
      
        '   CLI_CNPJ, CLI_COMPLEMENTO, CLI_CONTATO, CLI_CPF, CLI_DH_CA, C' +
        'LI_EMAIL, '
      
        '   CLI_ENDERECO, CLI_FAX, CLI_FONE, CLI_ID, CLI_INFO_ADICIONAL, ' +
        'CLI_INSC_EST, '
      '   CLI_MUNICIPIO, CLI_RG, CLI_TIPOCLI, CLI_TIPOPESSOA)'
      'values'
      
        '  (:CLI_ATIVIDADE, :CLI_ATIVO, :CLI_BAIRRO, :CLI_CELULAR, :CLI_C' +
        'EP, :CLI_CLIENTE, '
      
        '   :CLI_CNPJ, :CLI_COMPLEMENTO, :CLI_CONTATO, :CLI_CPF, :CLI_DH_' +
        'CA, :CLI_EMAIL, '
      
        '   :CLI_ENDERECO, :CLI_FAX, :CLI_FONE, :CLI_ID, :CLI_INFO_ADICIO' +
        'NAL, :CLI_INSC_EST, '
      '   :CLI_MUNICIPIO, :CLI_RG, :CLI_TIPOCLI, :CLI_TIPOPESSOA)')
    RefreshSQL.Strings = (
      'Select '
      '  CLI_ID,'
      '  CLI_CLIENTE,'
      '  CLI_ENDERECO,'
      '  CLI_BAIRRO,'
      '  CLI_CEP,'
      '  CLI_MUNICIPIO,'
      '  CLI_FONE,'
      '  CLI_FAX,'
      '  CLI_CNPJ,'
      '  CLI_INSC_EST,'
      '  CLI_CPF,'
      '  CLI_RG,'
      '  CLI_ATIVIDADE,'
      '  CLI_EMAIL,'
      '  CLI_CONTATO,'
      '  CLI_CELULAR,'
      '  CLI_INFO_ADICIONAL,'
      '  CLI_ATIVO,'
      '  CLI_COMPLEMENTO,'
      '  CLI_TIPOCLI,'
      '  CLI_DH_CA,'
      '  CLI_TIPOPESSOA'
      'from clientes '
      'where'
      '  CLI_ID = :CLI_ID')
    SelectSQL.Strings = (
      'select * from clientes where cli_id = :FId')
    ModifySQL.Strings = (
      'update clientes'
      'set'
      '  CLI_ATIVIDADE = :CLI_ATIVIDADE,'
      '  CLI_ATIVO = :CLI_ATIVO,'
      '  CLI_BAIRRO = :CLI_BAIRRO,'
      '  CLI_CELULAR = :CLI_CELULAR,'
      '  CLI_CEP = :CLI_CEP,'
      '  CLI_CLIENTE = :CLI_CLIENTE,'
      '  CLI_CNPJ = :CLI_CNPJ,'
      '  CLI_COMPLEMENTO = :CLI_COMPLEMENTO,'
      '  CLI_CONTATO = :CLI_CONTATO,'
      '  CLI_CPF = :CLI_CPF,'
      '  CLI_DH_CA = :CLI_DH_CA,'
      '  CLI_EMAIL = :CLI_EMAIL,'
      '  CLI_ENDERECO = :CLI_ENDERECO,'
      '  CLI_FAX = :CLI_FAX,'
      '  CLI_FONE = :CLI_FONE,'
      '  CLI_ID = :CLI_ID,'
      '  CLI_INFO_ADICIONAL = :CLI_INFO_ADICIONAL,'
      '  CLI_INSC_EST = :CLI_INSC_EST,'
      '  CLI_MUNICIPIO = :CLI_MUNICIPIO,'
      '  CLI_RG = :CLI_RG,'
      '  CLI_TIPOCLI = :CLI_TIPOCLI,'
      '  CLI_TIPOPESSOA = :CLI_TIPOPESSOA'
      'where'
      '  CLI_ID = :OLD_CLI_ID')
    GeneratorField.Field = 'CLI_ID'
    GeneratorField.Generator = 'GEN_CLIENTES'
    object ibCadastroCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = 'CLIENTES.CLI_ID'
      Required = True
    end
    object ibCadastroCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
    end
    object ibCadastroCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLIENTES.CLI_ENDERECO'
      Size = 100
    end
    object ibCadastroCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLIENTES.CLI_BAIRRO'
      Size = 100
    end
    object ibCadastroCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLIENTES.CLI_CEP'
      Size = 30
    end
    object ibCadastroCLI_MUNICIPIO: TIBStringField
      FieldName = 'CLI_MUNICIPIO'
      Origin = 'CLIENTES.CLI_MUNICIPIO'
      Size = 100
    end
    object ibCadastroCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
      Origin = 'CLIENTES.CLI_FONE'
      Size = 30
    end
    object ibCadastroCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Origin = 'CLIENTES.CLI_FAX'
      Size = 30
    end
    object ibCadastroCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLIENTES.CLI_CNPJ'
      Size = 30
    end
    object ibCadastroCLI_INSC_EST: TIBStringField
      FieldName = 'CLI_INSC_EST'
      Origin = 'CLIENTES.CLI_INSC_EST'
      Size = 30
    end
    object ibCadastroCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLIENTES.CLI_CPF'
      Size = 30
    end
    object ibCadastroCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = 'CLIENTES.CLI_RG'
      Size = 30
    end
    object ibCadastroCLI_ATIVIDADE: TIBStringField
      FieldName = 'CLI_ATIVIDADE'
      Origin = 'CLIENTES.CLI_ATIVIDADE'
      Size = 100
    end
    object ibCadastroCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLIENTES.CLI_EMAIL'
      Size = 100
    end
    object ibCadastroCLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = 'CLIENTES.CLI_CONTATO'
      Size = 100
    end
    object ibCadastroCLI_CELULAR: TIBStringField
      FieldName = 'CLI_CELULAR'
      Origin = 'CLIENTES.CLI_CELULAR'
      Size = 30
    end
    object ibCadastroCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Origin = 'CLIENTES.CLI_INFO_ADICIONAL'
      Size = 8
    end
    object ibCadastroCLI_ATIVO: TIBStringField
      FieldName = 'CLI_ATIVO'
      Origin = 'CLIENTES.CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object ibCadastroCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLIENTES.CLI_COMPLEMENTO'
      Size = 100
    end
    object ibCadastroCLI_TIPOCLI: TIntegerField
      FieldName = 'CLI_TIPOCLI'
      Origin = '"CLIENTES"."CLI_TIPOCLI"'
    end
    object ibCadastroCLI_DH_CA: TDateTimeField
      FieldName = 'CLI_DH_CA'
      Origin = '"CLIENTES"."CLI_DH_CA"'
    end
    object ibCadastroCLI_TIPOPESSOA: TIBStringField
      FieldName = 'CLI_TIPOPESSOA'
      Origin = '"CLIENTES"."CLI_TIPOPESSOA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select clientes.cli_id ID,'
      '       clientes.*'
      '  from clientes'
      ' order by cli_cliente'
      '')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'CLIENTES.CLI_ID'
      Required = True
    end
    object qConsultaCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = 'CLIENTES.CLI_ID'
      Required = True
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
    end
    object qConsultaCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'CLIENTES.CLI_ENDERECO'
      Size = 100
    end
    object qConsultaCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLIENTES.CLI_BAIRRO'
      Size = 100
    end
    object qConsultaCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLIENTES.CLI_CEP'
      Size = 30
    end
    object qConsultaCLI_MUNICIPIO: TIBStringField
      FieldName = 'CLI_MUNICIPIO'
      Origin = 'CLIENTES.CLI_MUNICIPIO'
      Size = 100
    end
    object qConsultaCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
      Origin = 'CLIENTES.CLI_FONE'
      Size = 30
    end
    object qConsultaCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Origin = 'CLIENTES.CLI_FAX'
      Size = 30
    end
    object qConsultaCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = 'CLIENTES.CLI_CNPJ'
      Size = 30
    end
    object qConsultaCLI_INSC_EST: TIBStringField
      FieldName = 'CLI_INSC_EST'
      Origin = 'CLIENTES.CLI_INSC_EST'
      Size = 30
    end
    object qConsultaCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = 'CLIENTES.CLI_CPF'
      Size = 30
    end
    object qConsultaCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = 'CLIENTES.CLI_RG'
      Size = 30
    end
    object qConsultaCLI_ATIVIDADE: TIBStringField
      FieldName = 'CLI_ATIVIDADE'
      Origin = 'CLIENTES.CLI_ATIVIDADE'
      Size = 100
    end
    object qConsultaCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLIENTES.CLI_EMAIL'
      Size = 100
    end
    object qConsultaCLI_CONTATO: TIBStringField
      FieldName = 'CLI_CONTATO'
      Origin = 'CLIENTES.CLI_CONTATO'
      Size = 100
    end
    object qConsultaCLI_CELULAR: TIBStringField
      FieldName = 'CLI_CELULAR'
      Origin = 'CLIENTES.CLI_CELULAR'
      Size = 30
    end
    object qConsultaCLI_INFO_ADICIONAL: TBlobField
      FieldName = 'CLI_INFO_ADICIONAL'
      Origin = 'CLIENTES.CLI_INFO_ADICIONAL'
      Size = 8
    end
    object qConsultaCLI_ATIVO: TIBStringField
      FieldName = 'CLI_ATIVO'
      Origin = 'CLIENTES.CLI_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qConsultaCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = 'CLIENTES.CLI_COMPLEMENTO'
      Size = 100
    end
    object qConsultaCLI_TIPOCLI: TIntegerField
      FieldName = 'CLI_TIPOCLI'
      Origin = '"CLIENTES"."CLI_TIPOCLI"'
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 43386.673439814800000000
    ReportOptions.LastChange = 43409.702620081000000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Datasets = <>
    Variables = <
      item
        Name = 'TIPOCLI'
        Value = '1'
      end>
    Style = <
      item
        Name = 'Titulo'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 132.283464570000000000
        Top = 196.535560000000000000
        Width = 755.906000000000000000
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = -0.000000000000000419
          Top = 18.897637800000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = -0.000000000000000419
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bairro')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = -0.000000000000000419
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Munic'#195#173'pio')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = -0.000000000000000419
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contato')
          ParentFont = False
        end
        object frxDBDataset1CLI_CLIENTE: TfrxMemoView
          Left = 94.488250000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_CLIENTE"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_ENDERECO: TfrxMemoView
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_ENDERECO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_ENDERECO"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_BAIRRO: TfrxMemoView
          Left = 94.488250000000000000
          Top = 37.795300000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_BAIRRO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_BAIRRO"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_MUNICIPIO: TfrxMemoView
          Left = 94.488250000000000000
          Top = 56.692950000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_MUNICIPIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_MUNICIPIO"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_CNPJ: TfrxMemoView
          Left = 94.488250000000000000
          Top = 75.590600000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_CNPJ'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_CNPJ"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_CONTATO: TfrxMemoView
          Left = 94.488250000000000000
          Top = 94.488250000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_CONTATO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_CONTATO"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_ATIVIDADE: TfrxMemoView
          Left = 370.393940000000000000
          Top = 94.488250000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_ATIVIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_ATIVIDADE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 275.905690000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Atividade')
          ParentFont = False
        end
        object frxDBDataset1CLI_ATIVO: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          DataField = 'CLI_ATIVO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_ATIVO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 714.331170000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ativo')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 275.905690000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Complemento')
          ParentFont = False
        end
        object frxDBDataset1CLI_COMPLEMENTO: TfrxMemoView
          Left = 370.393940000000000000
          Top = 37.795300000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_COMPLEMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_COMPLEMENTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 604.724800000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CEP')
          ParentFont = False
        end
        object frxDBDataset1CLI_CEP: TfrxMemoView
          Left = 638.740570000000000000
          Top = 37.795300000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_CEP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_CEP"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 476.220780000000000000
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 631.181510000000000000
          Top = 56.692950000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fax')
          ParentFont = False
        end
        object frxDBDataset1CLI_FONE: TfrxMemoView
          Left = 536.693260000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_FONE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 661.417750000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_FAX"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 275.905690000000000000
          Top = 75.590600000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Insc. Est.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 476.220780000000000000
          Top = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CPF')
          ParentFont = False
        end
        object frxDBDataset1CLI_CPF: TfrxMemoView
          Left = 514.016080000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_CPF"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_INSC_EST: TfrxMemoView
          Left = 343.937230000000000000
          Top = 75.590600000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLI_INSC_EST'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_INSC_EST"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 619.842920000000000000
          Top = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'RG')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 657.638220000000000000
          Top = 75.590600000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_RG"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 600.945270000000000000
          Top = 94.488250000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Celular')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 661.417750000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset1."CLI_CELULAR"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897637795275600000
        Top = 430.866420000000000000
        Width = 755.906000000000000000
      end
      object Header1: TfrxHeader
        Top = 173.858380000000000000
        Width = 755.906000000000000000
      end
      object Footer1: TfrxFooter
        Height = 18.897637800000000000
        Top = 351.496290000000000000
        Width = 755.906000000000000000
      end
      object ReportTitle1: TfrxReportTitle
        Height = 94.488188980000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          Left = 1.889763780000000000
          Top = 1.889763780000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D616765B1040000FFD8FFE000104A46494600010200006400
            640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
            64C000000001FFDB0084000604040405040605050609060506090B080606080B
            0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
            1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1FFFC00011080036003203011100021101031101FF
            C400840000020301010000000000000000000000000703040506080101000203
            0100000000000000000000000001020304050610000103020305050508030000
            0000000001020304000511120621314151326181225213C142622333F07191A1
            B1D1340743142411000203000300020300000000000000000001110203213104
            5112712232FFDA000C03010002110311003F00F54D005018FAA754DAB4DDAD77
            0B82F674B2CA7EA38BF2A47EA78565C71B6968A98B6D6B452C92CFA8ADF737E4
            C569592644CA5F8EAEA0871399B707342C6E3DD58ECA199139526A5412140140
            14067DF2F70ACF0572E49C70D8DB43A96AE094D64CF377708A5EEAAA5885D553
            AEFA96E65E7C29D7578A23456C150424EE4A123F33C6BD079E95CABC1C7D9DB4
            65CBF4ABFD96F76F9C84AE0DEE14665480B1B1F8EA4243AD2F0D8A095A7770AE
            0ED0EEE3A93AF94AAA91C3A475642D456D4C9647A52500095149C54857B52781
            AC2CC86ED0050104D98CC48EA79D3E148D8399AB568ECE110DC0AEBACF7350DD
            C32D28CA7C9CADB4D6D4A13D8777DE6BAB4A2CAB2CD1B5BEEF83B9D33A52159D
            A0E142553163C6E018E1D809AD0DFD0EFF00836B3C9548B5CE8F8FA9AD0580A0
            CDC63E2E409587439E557342F72856BA328B2D22BB940985C4A0C4B94370B136
            39F7569EA4ABCC950DA0F2DB562072DAEE4DCF8C9752323807CC6CEF49FDAAA4
            9728050FF665CAF4CDE446B9445B96B73F84A4BEB430B03785250949CE38852A
            BAFE1A55D66AFF00639BE9B595B95C1B3FD6173B60F5A2888CC490EE0A6DC6F3
            78D3E52A5951D958BDD9DBB99466F2D9750316B9A6E0501CAEA7856266E2DDC1
            D74333DD406DC6D23317509E92A48E28E0AEEA02B59F53D9DCBB26D76A0E4EB8
            019A425AC036C37E67DCDA94F627A8F2A960ECEA014AEF68817682E429CD0758
            7077A5437292781157CF474728ADE8ACA18B17F4E4ED3D720CAC95B0A3FF0034
            91B330E4792871AEAD765A54D279BA33B6D27AA51705396D96ACB738A3120FF9
            5BE0B4FB6B47D187D795FCB3672D6787D94B56EBC5402E41B2B425DC0785D7D5
            FC760FC4AF7D7F027BEB592330B68D67D51A9AE8A8CDC95A9E78E69935588084
            F1248DC3924549038F4AE94B4699B5A6DF6D6B28C733EF9FA8EB877AD67ED855
            4936280280827418D363AA3C84676D5F883C083C0D5AB67572886A45AEABB04B
            B3DE6D17A6492DC794D3325C4ECC5A7559013872CD81AE963AABD1D5FC1A3B51
            D6CACBE4D97F4DBB2A4FFAED242402732B0F0A463B4D7324DE3AAB459E15AA20
            8F15180DEE2CF52D5CD46A092F5005005005014EF02DA6DAF8B91488597E7156
            EC3BB8E3BAAD499E0ADE2392C33E9607D320F9B9E3DB552C49401401407FFFD9}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Top = 18.897637800000000000
          Width = 544.252320000000000000
          Height = 22.677167800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vidra'#195#167'aria Vaz')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 56.692913390000000000
          Width = 755.906000000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Relt'#195#179'rio de Clientes')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 52.913420000000000000
          Top = 38.795275590000000000
          Width = 702.992580000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'E-mail: vidrosvaz@gmail.com Fone: (43) 9609-9774')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 75.590551180000000000
          Width = 755.905524020000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 597.165740000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Impresso: [DATE] [TIME]  ')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina [Page] de [TotalPages]  ')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CLI_ID=CLI_ID'
      'CLI_CLIENTE=CLI_CLIENTE'
      'CLI_ENDERECO=CLI_ENDERECO'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_MUNICIPIO=CLI_MUNICIPIO'
      'CLI_FONE=CLI_FONE'
      'CLI_FAX=CLI_FAX'
      'CLI_CNPJ=CLI_CNPJ'
      'CLI_INSC_EST=CLI_INSC_EST'
      'CLI_CPF=CLI_CPF'
      'CLI_RG=CLI_RG'
      'CLI_ATIVIDADE=CLI_ATIVIDADE'
      'CLI_EMAIL=CLI_EMAIL'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_CELULAR=CLI_CELULAR'
      'CLI_INFO_ADICIONAL=CLI_INFO_ADICIONAL'
      'CLI_ATIVO=CLI_ATIVO'
      'CLI_COMPLEMENTO=CLI_COMPLEMENTO')
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 252
    Top = 55
  end
  object qTipoCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select cliente_tipo.ctp_id,'
      '       cliente_tipo.ctp_descricao'
      '  from cliente_tipo'
      
        ' join cliente_tipo_cliente on (cliente_tipo_cliente.ctc_ctp_id=c' +
        'liente_tipo.ctp_id)'
      ' where cliente_tipo_cliente.ctc_cli_id = :cli_id'
      ' order by cliente_tipo.ctp_descricao')
    Left = 304
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_id'
        ParamType = ptUnknown
      end>
    object qTipoClienteCTP_ID: TIntegerField
      FieldName = 'CTP_ID'
      Origin = '"CLIENTE_TIPO"."CTP_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTipoClienteCTP_DESCRICAO: TIBStringField
      FieldName = 'CTP_DESCRICAO'
      Origin = '"CLIENTE_TIPO"."CTP_DESCRICAO"'
      Size = 100
    end
  end
  object dsTipoCliente: TDataSource
    DataSet = cdsTipoCliente
    OnDataChange = dsConsultaDataChange
    Left = 432
    Top = 48
  end
  object dspTipoCliente: TDataSetProvider
    DataSet = qTipoCliente
    Left = 344
    Top = 48
  end
  object cdsTipoCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoCliente'
    Left = 384
    Top = 48
    object cdsTipoClienteCTP_ID: TIntegerField
      FieldName = 'CTP_ID'
      Required = True
    end
    object cdsTipoClienteCTP_DESCRICAO: TStringField
      FieldName = 'CTP_DESCRICAO'
      Size = 100
    end
  end
  object ibClienteTipoCliente: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    OnDeleteError = ibClienteTipoClienteDeleteError
    OnEditError = ibClienteTipoClienteEditError
    OnPostError = ibClienteTipoClientePostError
    DeleteSQL.Strings = (
      'delete from cliente_tipo_cliente'
      'where'
      '  CTC_ID = :OLD_CTC_ID')
    InsertSQL.Strings = (
      'insert into cliente_tipo_cliente'
      '  (CTC_CLI_ID, CTC_CTP_ID, CTC_DH_CA, CTC_ID)'
      'values'
      '  (:CTC_CLI_ID, :CTC_CTP_ID, :CTC_DH_CA, :CTC_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  CTC_ID,'
      '  CTC_CLI_ID,'
      '  CTC_CTP_ID,'
      '  CTC_DH_CA'
      'from cliente_tipo_cliente '
      'where'
      '  CTC_ID = :CTC_ID')
    SelectSQL.Strings = (
      
        'select * from cliente_tipo_cliente where cliente_tipo_cliente.ct' +
        'c_cli_id = :CLI_ID')
    ModifySQL.Strings = (
      'update cliente_tipo_cliente'
      'set'
      '  CTC_CLI_ID = :CTC_CLI_ID,'
      '  CTC_CTP_ID = :CTC_CTP_ID,'
      '  CTC_DH_CA = :CTC_DH_CA,'
      '  CTC_ID = :CTC_ID'
      'where'
      '  CTC_ID = :OLD_CTC_ID')
    GeneratorField.Field = 'CTC_ID'
    GeneratorField.Generator = 'GEN_CLIENTE_TIPO_CLIENTE'
    DataSource = dsCadastro
    Left = 480
    Top = 56
    object ibClienteTipoClienteCTC_ID: TIntegerField
      FieldName = 'CTC_ID'
      Origin = '"CLIENTE_TIPO_CLIENTE"."CTC_ID"'
      Required = True
    end
    object ibClienteTipoClienteCTC_CLI_ID: TIntegerField
      FieldName = 'CTC_CLI_ID'
      Origin = '"CLIENTE_TIPO_CLIENTE"."CTC_CLI_ID"'
      Required = True
    end
    object ibClienteTipoClienteCTC_CTP_ID: TIntegerField
      FieldName = 'CTC_CTP_ID'
      Origin = '"CLIENTE_TIPO_CLIENTE"."CTC_CTP_ID"'
      Required = True
    end
    object ibClienteTipoClienteCTC_DH_CA: TDateTimeField
      FieldName = 'CTC_DH_CA'
      Origin = '"CLIENTE_TIPO_CLIENTE"."CTC_DH_CA"'
    end
  end
end
