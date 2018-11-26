inherited FCadCheque: TFCadCheque
  Left = 180
  Top = 156
  Height = 496
  Caption = 'FCadCheque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 428
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Height = 330
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1CHQ_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'CHQ_ID'
            Visible = False
          end
          object grConsultaDBTableView1CHQ_DATA: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'CHQ_DATA'
          end
          object grConsultaDBTableView1CHQ_CMC7: TcxGridDBColumn
            Caption = 'CMC7'
            DataBinding.FieldName = 'CHQ_CMC7'
            Visible = False
          end
          object grConsultaDBTableView1CHQ_COMP: TcxGridDBColumn
            Caption = 'Comp'
            DataBinding.FieldName = 'CHQ_COMP'
            Visible = False
          end
          object grConsultaDBTableView1CHQ_SERIE: TcxGridDBColumn
            Caption = 'Serie'
            DataBinding.FieldName = 'CHQ_SERIE'
            Visible = False
            Width = 42
          end
          object grConsultaDBTableView1CHQ_BANCO: TcxGridDBColumn
            Caption = 'Banco'
            DataBinding.FieldName = 'CHQ_BANCO'
            Width = 74
          end
          object grConsultaDBTableView1CHQ_AGENCIA: TcxGridDBColumn
            Caption = 'Agencia'
            DataBinding.FieldName = 'CHQ_AGENCIA'
            Width = 60
          end
          object grConsultaDBTableView1CHQ_CONTA: TcxGridDBColumn
            Caption = 'Conta'
            DataBinding.FieldName = 'CHQ_CONTA'
            Width = 81
          end
          object grConsultaDBTableView1CHQ_NUMERO: TcxGridDBColumn
            Caption = 'Numero'
            DataBinding.FieldName = 'CHQ_NUMERO'
            Width = 102
          end
          object grConsultaDBTableView1CHQ_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'CHQ_VALOR'
          end
          object grConsultaDBTableView1CHQ_EMISSOR: TcxGridDBColumn
            Caption = 'Emissor'
            DataBinding.FieldName = 'CHQ_EMISSOR'
            Width = 300
          end
          object grConsultaDBTableView1CHQ_DATA_VENCIMENTO: TcxGridDBColumn
            Caption = 'Data Vencimento'
            DataBinding.FieldName = 'CHQ_DATA_VENCIMENTO'
            Width = 91
          end
          object grConsultaDBTableView1CHQ_HISTORICO: TcxGridDBColumn
            Caption = 'Historico'
            DataBinding.FieldName = 'CHQ_HISTORICO'
            Width = 300
          end
          object grConsultaDBTableView1CHQ_DATACORRENTISTA: TcxGridDBColumn
            Caption = 'Data Correntista'
            DataBinding.FieldName = 'CHQ_DATACORRENTISTA'
          end
          object grConsultaDBTableView1CHQ_DATA_DEPOSITO: TcxGridDBColumn
            Caption = 'Data Deposito'
            DataBinding.FieldName = 'CHQ_DATA_DEPOSITO'
            Width = 91
          end
          object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_CLIENTE'
            Width = 300
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited rgAtivo: TRadioGroup
          Left = 250
          Top = 32
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 380
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [1]
        Left = 64
        Top = 166
        Width = 39
        Height = 13
        Caption = 'Emiss'#227'o'
      end
      object Label2: TLabel [2]
        Left = 64
        Top = 72
        Width = 31
        Height = 13
        Caption = 'Banco'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [3]
        Left = 288
        Top = 72
        Width = 28
        Height = 13
        Caption = 'Conta'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [4]
        Left = 176
        Top = 72
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [5]
        Left = 400
        Top = 72
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [6]
        Left = 528
        Top = 72
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [7]
        Left = 200
        Top = 166
        Width = 78
        Height = 13
        Caption = 'Pr'#233'-Datado para'
      end
      object Label8: TLabel [8]
        Left = 331
        Top = 166
        Width = 64
        Height = 13
        Caption = 'Cliente desde'
      end
      object Label9: TLabel [9]
        Left = 64
        Top = 207
        Width = 36
        Height = 13
        Caption = 'Emissor'
        FocusControl = DBEdit9
      end
      object Label11: TLabel [10]
        Left = 64
        Top = 247
        Width = 41
        Height = 13
        Caption = 'Hist'#243'rico'
      end
      object Label13: TLabel [11]
        Left = 137
        Top = 120
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label12: TLabel [12]
        Left = 64
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      inherited Panel1: TPanel
        TabOrder = 10
        inherited btCancelar: TSpeedButton
          Left = 655
        end
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 88
        Width = 90
        Height = 21
        DataField = 'CHQ_BANCO'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 288
        Top = 88
        Width = 90
        Height = 21
        DataField = 'CHQ_CONTA'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 176
        Top = 88
        Width = 90
        Height = 21
        DataField = 'CHQ_AGENCIA'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 400
        Top = 88
        Width = 110
        Height = 21
        DataField = 'CHQ_NUMERO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 528
        Top = 88
        Width = 90
        Height = 21
        DataField = 'CHQ_VALOR'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 64
        Top = 223
        Width = 401
        Height = 21
        DataField = 'CHQ_EMISSOR'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 64
        Top = 182
        Width = 107
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'CHQ_DATA'
        DataSource = dsCadastro
        Epoch = 1950
        ShowButton = True
        TabOrder = 5
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 200
        Top = 182
        Width = 107
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'CHQ_DATA_VENCIMENTO'
        DataSource = dsCadastro
        Epoch = 1950
        ShowButton = True
        TabOrder = 6
      end
      object wwDBDateTimePicker3: TwwDBDateTimePicker
        Left = 331
        Top = 182
        Width = 107
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'CHQ_DATACORRENTISTA'
        DataSource = dsCadastro
        Epoch = 1950
        ShowButton = True
        TabOrder = 7
      end
      object DBMemo1: TDBMemo
        Left = 64
        Top = 263
        Width = 401
        Height = 66
        DataField = 'CHQ_HISTORICO'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object btCACliente: TBitBtn
        Left = 114
        Top = 135
        Width = 22
        Height = 22
        Action = bt_SelCli
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 136
        Width = 50
        Height = 21
        DataField = 'CHQ_CLIENTE_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 12
      end
      object rgSituacao: TDBRadioGroup
        Left = 486
        Top = 131
        Width = 145
        Height = 182
        Caption = '  Situa'#231#227'o  '
        DataField = 'CHQ_SITUACAO'
        DataSource = dsCadastro
        Items.Strings = (
          'Normal'
          'Depositado'
          'Devolvido'
          'Cancelado'
          'Custodiado'
          'Recebido antecipado'
          'Contas Pagar/Receber')
        TabOrder = 13
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        OnClick = rgSituacaoClick
      end
      object pnCliCustodia: TPanel
        Left = 58
        Top = 326
        Width = 575
        Height = 49
        BevelOuter = bvNone
        TabOrder = 14
        Visible = False
        object Label14: TLabel
          Left = 8
          Top = 7
          Width = 33
          Height = 13
          Caption = 'Codigo'
        end
        object Label15: TLabel
          Left = 81
          Top = 7
          Width = 76
          Height = 13
          Caption = 'Cliente Cust'#243'dia'
        end
        object DBEdit7: TDBEdit
          Left = 8
          Top = 23
          Width = 50
          Height = 21
          DataField = 'CHQ_CLI_CUSTODIA'
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 58
          Top = 22
          Width = 22
          Height = 22
          Action = bt_SelCliCustodia
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Edit1: TDBEdit
          Left = 81
          Top = 23
          Width = 325
          Height = 21
          DataField = 'CLIENTE_CUSTODIA'
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 2
        end
      end
      object Edit2: TDBEdit
        Left = 137
        Top = 136
        Width = 325
        Height = 21
        DataField = 'CLIENTE'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 15
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from cheque'
      'where'
      '  CHQ_ID = :OLD_CHQ_ID')
    InsertSQL.Strings = (
      'insert into cheque'
      '  (CHQ_ID, CHQ_DATA, CHQ_CMC7, CHQ_COMP, CHQ_SERIE, CHQ_BANCO, '
      'CHQ_CONTA, '
      '   CHQ_AGENCIA, CHQ_NUMERO, CHQ_DATA_DEPOSITO, '
      'CHQ_DATA_VENCIMENTO, CHQ_EMISSOR_ID, '
      '   CHQ_EMISSOR, CHQ_CLIENTE_ID, CHQ_HISTORICO, CHQ_VALOR, '
      'CHQ_SITUACAO, '
      '   CHQ_DATACORRENTISTA, CHQ_DH_CA, CHQ_PAR_ID, CHQ_CLI_CUSTODIA)'
      'values'
      
        '  (:CHQ_ID, :CHQ_DATA, :CHQ_CMC7, :CHQ_COMP, :CHQ_SERIE, :CHQ_BA' +
        'NCO, '
      ':CHQ_CONTA, '
      '   :CHQ_AGENCIA, :CHQ_NUMERO, :CHQ_DATA_DEPOSITO, '
      ':CHQ_DATA_VENCIMENTO, '
      
        '   :CHQ_EMISSOR_ID, :CHQ_EMISSOR, :CHQ_CLIENTE_ID, :CHQ_HISTORIC' +
        'O, '
      ':CHQ_VALOR, '
      
        '   :CHQ_SITUACAO, :CHQ_DATACORRENTISTA, :CHQ_DH_CA, :CHQ_PAR_ID,' +
        ' '
      ':CHQ_CLI_CUSTODIA)')
    RefreshSQL.Strings = (
      'Select *'
      'from cheque '
      'where'
      '  CHQ_ID = :CHQ_ID')
    SelectSQL.Strings = (
      'select cheque.*,'
      '       cl.cli_cliente cliente,'
      '       clc.cli_cliente cliente_custodia'
      '  from cheque'
      ' left join clientes cl on (cl.cli_id=cheque.chq_cliente_id)'
      ' left join clientes clc on (clc.cli_id=cheque.chq_cli_custodia)'
      ' where chq_id = :FId')
    ModifySQL.Strings = (
      'update cheque'
      'set'
      '  CHQ_ID = :CHQ_ID,'
      '  CHQ_DATA = :CHQ_DATA,'
      '  CHQ_CMC7 = :CHQ_CMC7,'
      '  CHQ_COMP = :CHQ_COMP,'
      '  CHQ_SERIE = :CHQ_SERIE,'
      '  CHQ_BANCO = :CHQ_BANCO,'
      '  CHQ_CONTA = :CHQ_CONTA,'
      '  CHQ_AGENCIA = :CHQ_AGENCIA,'
      '  CHQ_NUMERO = :CHQ_NUMERO,'
      '  CHQ_DATA_DEPOSITO = :CHQ_DATA_DEPOSITO,'
      '  CHQ_DATA_VENCIMENTO = :CHQ_DATA_VENCIMENTO,'
      '  CHQ_EMISSOR_ID = :CHQ_EMISSOR_ID,'
      '  CHQ_EMISSOR = :CHQ_EMISSOR,'
      '  CHQ_CLIENTE_ID = :CHQ_CLIENTE_ID,'
      '  CHQ_HISTORICO = :CHQ_HISTORICO,'
      '  CHQ_VALOR = :CHQ_VALOR,'
      '  CHQ_SITUACAO = :CHQ_SITUACAO,'
      '  CHQ_DATACORRENTISTA = :CHQ_DATACORRENTISTA,'
      '  CHQ_DH_CA = :CHQ_DH_CA,'
      '  CHQ_PAR_ID = :CHQ_PAR_ID,'
      '  CHQ_CLI_CUSTODIA = :CHQ_CLI_CUSTODIA'
      'where'
      '  CHQ_ID = :OLD_CHQ_ID')
    GeneratorField.Field = 'CHQ_ID'
    GeneratorField.Generator = 'GEN_CHEQUE'
    object ibCadastroCHQ_ID: TIntegerField
      FieldName = 'CHQ_ID'
      Origin = '"CHEQUE"."CHQ_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroCHQ_DATA: TDateField
      FieldName = 'CHQ_DATA'
      Origin = '"CHEQUE"."CHQ_DATA"'
    end
    object ibCadastroCHQ_CMC7: TIBStringField
      FieldName = 'CHQ_CMC7'
      Origin = '"CHEQUE"."CHQ_CMC7"'
      Size = 30
    end
    object ibCadastroCHQ_COMP: TIBStringField
      FieldName = 'CHQ_COMP'
      Origin = '"CHEQUE"."CHQ_COMP"'
      Size = 6
    end
    object ibCadastroCHQ_SERIE: TIBStringField
      FieldName = 'CHQ_SERIE'
      Origin = '"CHEQUE"."CHQ_SERIE"'
      FixedChar = True
      Size = 3
    end
    object ibCadastroCHQ_BANCO: TIBStringField
      FieldName = 'CHQ_BANCO'
      Origin = '"CHEQUE"."CHQ_BANCO"'
      Size = 15
    end
    object ibCadastroCHQ_CONTA: TIBStringField
      FieldName = 'CHQ_CONTA'
      Origin = '"CHEQUE"."CHQ_CONTA"'
      Size = 15
    end
    object ibCadastroCHQ_AGENCIA: TIBStringField
      FieldName = 'CHQ_AGENCIA'
      Origin = '"CHEQUE"."CHQ_AGENCIA"'
      Size = 6
    end
    object ibCadastroCHQ_NUMERO: TIBStringField
      FieldName = 'CHQ_NUMERO'
      Origin = '"CHEQUE"."CHQ_NUMERO"'
      Size = 15
    end
    object ibCadastroCHQ_DATA_DEPOSITO: TDateField
      FieldName = 'CHQ_DATA_DEPOSITO'
      Origin = '"CHEQUE"."CHQ_DATA_DEPOSITO"'
    end
    object ibCadastroCHQ_DATA_VENCIMENTO: TDateField
      FieldName = 'CHQ_DATA_VENCIMENTO'
      Origin = '"CHEQUE"."CHQ_DATA_VENCIMENTO"'
    end
    object ibCadastroCHQ_EMISSOR_ID: TIntegerField
      FieldName = 'CHQ_EMISSOR_ID'
      Origin = '"CHEQUE"."CHQ_EMISSOR_ID"'
    end
    object ibCadastroCHQ_EMISSOR: TIBStringField
      FieldName = 'CHQ_EMISSOR'
      Origin = '"CHEQUE"."CHQ_EMISSOR"'
      Size = 100
    end
    object ibCadastroCHQ_CLIENTE_ID: TIntegerField
      FieldName = 'CHQ_CLIENTE_ID'
      Origin = '"CHEQUE"."CHQ_CLIENTE_ID"'
    end
    object ibCadastroCHQ_HISTORICO: TIBStringField
      FieldName = 'CHQ_HISTORICO'
      Origin = '"CHEQUE"."CHQ_HISTORICO"'
      Size = 100
    end
    object ibCadastroCHQ_VALOR: TIBBCDField
      FieldName = 'CHQ_VALOR'
      Origin = '"CHEQUE"."CHQ_VALOR"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroCHQ_SITUACAO: TIntegerField
      FieldName = 'CHQ_SITUACAO'
      Origin = '"CHEQUE"."CHQ_SITUACAO"'
    end
    object ibCadastroCHQ_DATACORRENTISTA: TDateField
      FieldName = 'CHQ_DATACORRENTISTA'
      Origin = '"CHEQUE"."CHQ_DATACORRENTISTA"'
    end
    object ibCadastroCHQ_DH_CA: TDateTimeField
      FieldName = 'CHQ_DH_CA'
      Origin = '"CHEQUE"."CHQ_DH_CA"'
    end
    object ibCadastroCHQ_PAR_ID: TIntegerField
      FieldName = 'CHQ_PAR_ID'
      Origin = 'CHEQUE.CHQ_PAR_ID'
    end
    object ibCadastroCHQ_CLI_CUSTODIA: TIntegerField
      FieldName = 'CHQ_CLI_CUSTODIA'
      Origin = 'CHEQUE.CHQ_CLI_CUSTODIA'
    end
    object ibCadastroCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
    end
    object ibCadastroCLIENTE_CUSTODIA: TIBStringField
      FieldName = 'CLIENTE_CUSTODIA'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select cheque.chq_id ID,'
      '       cheque.*,'
      '       emi.cli_cliente,'
      '       cheque.chq_emissor,'
      '       cli.cli_cliente'
      '  from cheque'
      ' left join clientes emi on (emi.cli_id=cheque.chq_emissor_id)'
      ' left join clientes cli on (cli.cli_id=cheque.chq_cliente_id)'
      '')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"CHEQUE"."CHQ_ID"'
      Required = True
    end
    object qConsultaCHQ_ID: TIntegerField
      FieldName = 'CHQ_ID'
      Origin = '"CHEQUE"."CHQ_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaCHQ_DATA: TDateField
      FieldName = 'CHQ_DATA'
      Origin = '"CHEQUE"."CHQ_DATA"'
    end
    object qConsultaCHQ_CMC7: TIBStringField
      FieldName = 'CHQ_CMC7'
      Origin = '"CHEQUE"."CHQ_CMC7"'
      Size = 30
    end
    object qConsultaCHQ_COMP: TIBStringField
      FieldName = 'CHQ_COMP'
      Origin = '"CHEQUE"."CHQ_COMP"'
      Size = 6
    end
    object qConsultaCHQ_SERIE: TIBStringField
      FieldName = 'CHQ_SERIE'
      Origin = '"CHEQUE"."CHQ_SERIE"'
      FixedChar = True
      Size = 3
    end
    object qConsultaCHQ_BANCO: TIBStringField
      FieldName = 'CHQ_BANCO'
      Origin = '"CHEQUE"."CHQ_BANCO"'
      Size = 15
    end
    object qConsultaCHQ_CONTA: TIBStringField
      FieldName = 'CHQ_CONTA'
      Origin = '"CHEQUE"."CHQ_CONTA"'
      Size = 15
    end
    object qConsultaCHQ_AGENCIA: TIBStringField
      FieldName = 'CHQ_AGENCIA'
      Origin = '"CHEQUE"."CHQ_AGENCIA"'
      Size = 6
    end
    object qConsultaCHQ_NUMERO: TIBStringField
      FieldName = 'CHQ_NUMERO'
      Origin = '"CHEQUE"."CHQ_NUMERO"'
      Size = 15
    end
    object qConsultaCHQ_DATA_DEPOSITO: TDateField
      FieldName = 'CHQ_DATA_DEPOSITO'
      Origin = '"CHEQUE"."CHQ_DATA_DEPOSITO"'
    end
    object qConsultaCHQ_DATA_VENCIMENTO: TDateField
      FieldName = 'CHQ_DATA_VENCIMENTO'
      Origin = '"CHEQUE"."CHQ_DATA_VENCIMENTO"'
    end
    object qConsultaCHQ_EMISSOR_ID: TIntegerField
      FieldName = 'CHQ_EMISSOR_ID'
      Origin = '"CHEQUE"."CHQ_EMISSOR_ID"'
    end
    object qConsultaCHQ_EMISSOR: TIBStringField
      FieldName = 'CHQ_EMISSOR'
      Origin = '"CHEQUE"."CHQ_EMISSOR"'
      Size = 100
    end
    object qConsultaCHQ_CLIENTE_ID: TIntegerField
      FieldName = 'CHQ_CLIENTE_ID'
      Origin = '"CHEQUE"."CHQ_CLIENTE_ID"'
    end
    object qConsultaCHQ_HISTORICO: TIBStringField
      FieldName = 'CHQ_HISTORICO'
      Origin = '"CHEQUE"."CHQ_HISTORICO"'
      Size = 100
    end
    object qConsultaCHQ_VALOR: TIBBCDField
      FieldName = 'CHQ_VALOR'
      Origin = '"CHEQUE"."CHQ_VALOR"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaCHQ_SITUACAO: TIntegerField
      FieldName = 'CHQ_SITUACAO'
      Origin = '"CHEQUE"."CHQ_SITUACAO"'
    end
    object qConsultaCHQ_DATACORRENTISTA: TDateField
      FieldName = 'CHQ_DATACORRENTISTA'
      Origin = '"CHEQUE"."CHQ_DATACORRENTISTA"'
    end
    object qConsultaCHQ_DH_CA: TDateTimeField
      FieldName = 'CHQ_DH_CA'
      Origin = '"CHEQUE"."CHQ_DH_CA"'
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaCHQ_EMISSOR1: TIBStringField
      FieldName = 'CHQ_EMISSOR1'
      Origin = '"CHEQUE"."CHQ_EMISSOR"'
      Size = 100
    end
    object qConsultaCLI_CLIENTE1: TIBStringField
      FieldName = 'CLI_CLIENTE1'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Imprimir: TAction
      OnExecute = Act_Btn_ImprimirExecute
    end
    object bt_SelCli: TAction
      Category = 'Botao'
      Caption = '...'
      OnExecute = bt_SelCliExecute
    end
    object bt_SelCliCustodia: TAction
      Category = 'Botao'
      Caption = '...'
      OnExecute = bt_SelCliCustodiaExecute
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxCheques: TfrxDBDataset
    UserName = 'frxCheques'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CHQ_ID=CHQ_ID'
      'CHQ_DATA=CHQ_DATA'
      'CHQ_CMC7=CHQ_CMC7'
      'CHQ_COMP=CHQ_COMP'
      'CHQ_SERIE=CHQ_SERIE'
      'CHQ_BANCO=CHQ_BANCO'
      'CHQ_CONTA=CHQ_CONTA'
      'CHQ_AGENCIA=CHQ_AGENCIA'
      'CHQ_NUMERO=CHQ_NUMERO'
      'CHQ_DATA_DEPOSITO=CHQ_DATA_DEPOSITO'
      'CHQ_DATA_VENCIMENTO=CHQ_DATA_VENCIMENTO'
      'CHQ_EMISSOR_ID=CHQ_EMISSOR_ID'
      'CHQ_EMISSOR=CHQ_EMISSOR'
      'CHQ_CLIENTE_ID=CHQ_CLIENTE_ID'
      'CHQ_HISTORICO=CHQ_HISTORICO'
      'CHQ_VALOR=CHQ_VALOR'
      'CHQ_SITUACAO=CHQ_SITUACAO'
      'CHQ_DATACORRENTISTA=CHQ_DATACORRENTISTA'
      'CHQ_DH_CA=CHQ_DH_CA'
      'CLI_CLIENTE=CLI_CLIENTE'
      'CHQ_EMISSOR1=CHQ_EMISSOR1'
      'CLI_CLIENTE1=CLI_CLIENTE1')
    DataSet = qConsulta
    BCDToCurrency = False
    Left = 180
    Top = 167
  end
end
