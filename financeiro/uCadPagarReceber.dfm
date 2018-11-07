inherited FCadPagarReceber: TFCadPagarReceber
  Left = 227
  Top = 164
  Height = 600
  Caption = 'FCadPagarReceber'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 532
    inherited tsConsulta: TTabSheet
      ImageIndex = 8
      inherited grConsulta: TcxGrid
        Height = 434
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = grConsultaDBTableView1PAR_VALORPAGO
            end
            item
              Kind = skSum
              Column = grConsultaDBTableView1PAR_VALOR
            end
            item
              Kind = skCount
              Column = grConsultaDBTableView1PAR_ID
            end>
          object grConsultaDBTableView1PAR_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'PAR_ID'
          end
          object grConsultaDBTableView1PAR_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PAR_DESCRICAO'
            Width = 300
          end
          object grConsultaDBTableView1PAR_DATACOMPETENCIA: TcxGridDBColumn
            Caption = 'Data Compet'#234'ncia'
            DataBinding.FieldName = 'PAR_DATACOMPETENCIA'
            Width = 100
          end
          object grConsultaDBTableView1PAR_DATAVENCTO: TcxGridDBColumn
            Caption = 'Data Vencimento'
            DataBinding.FieldName = 'PAR_DATAVENCTO'
            Width = 100
          end
          object grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'PAR_VALOR'
            Width = 100
          end
          object grConsultaDBTableView1PAR_CETROCUSTO: TcxGridDBColumn
            Caption = 'Centro Custo'
            DataBinding.FieldName = 'PAR_CETROCUSTO'
            Width = 300
          end
          object grConsultaDBTableView1PAR_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'PAR_OBSERVACAO'
            Width = 300
          end
          object grConsultaDBTableView1PAR_PAGO: TcxGridDBColumn
            Caption = 'Pago'
            DataBinding.FieldName = 'PAR_PAGO'
            Width = 49
          end
          object grConsultaDBTableView1PAR_DATAPGTO: TcxGridDBColumn
            Caption = 'Data Pagamento'
            DataBinding.FieldName = 'PAR_DATAPGTO'
            Width = 100
          end
          object grConsultaDBTableView1PAR_DESCONTOTAXA: TcxGridDBColumn
            Caption = 'Desconto/Taxa'
            DataBinding.FieldName = 'PAR_DESCONTOTAXA'
            Width = 100
          end
          object grConsultaDBTableView1PAR_JUROMULTA: TcxGridDBColumn
            Caption = 'Juros/Multa'
            DataBinding.FieldName = 'PAR_JUROMULTA'
            Width = 100
          end
          object grConsultaDBTableView1PAR_VALORPAGO: TcxGridDBColumn
            Caption = 'Valor Pago'
            DataBinding.FieldName = 'PAR_VALORPAGO'
            Width = 100
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited btSair: TSpeedButton
          Left = 715
        end
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 484
      end
    end
    inherited tsCadastro: TTabSheet
      object Label2: TLabel [1]
        Left = 9
        Top = 66
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label1: TLabel [2]
        Left = 274
        Top = 66
        Width = 45
        Height = 13
        Caption = 'Categoria'
      end
      object Label3: TLabel [3]
        Left = 9
        Top = 114
        Width = 28
        Height = 13
        Caption = 'Conta'
      end
      object Label4: TLabel [4]
        Left = 185
        Top = 114
        Width = 88
        Height = 13
        Caption = 'Data Compet'#234'ncia'
      end
      object Label5: TLabel [5]
        Left = 289
        Top = 114
        Width = 82
        Height = 13
        Caption = 'Data Vencimento'
      end
      object Label6: TLabel [6]
        Left = 393
        Top = 114
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit1
      end
      object Bevel3: TBevel [7]
        Left = 482
        Top = 66
        Width = 5
        Height = 311
        Shape = bsLeftLine
      end
      object Label13: TLabel [8]
        Left = 492
        Top = 66
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label14: TLabel [9]
        Left = 491
        Top = 114
        Width = 61
        Height = 13
        Caption = 'Centro Custo'
      end
      object Label15: TLabel [10]
        Left = 492
        Top = 162
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      inherited Panel1: TPanel
        TabOrder = 10
        inherited btSalvar: TSpeedButton
          Left = 715
        end
        inherited btCancelar: TSpeedButton
          Left = 655
        end
      end
      object DBEdit2: TDBEdit
        Left = 9
        Top = 82
        Width = 260
        Height = 21
        DataField = 'PAR_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 274
        Top = 82
        Width = 200
        Height = 21
        DataField = 'PAR_CAT_ID'
        DataSource = dsCadastro
        KeyField = 'PIT_ID'
        ListField = 'PIT_DESCRICAO'
        ListSource = dsCategoria
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 9
        Top = 130
        Width = 172
        Height = 21
        DataField = 'PAR_CONTA_ID'
        DataSource = dsCadastro
        KeyField = 'FOP_ID'
        ListField = 'FOP_DESCRICAO'
        ListSource = dsConta
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 393
        Top = 130
        Width = 81
        Height = 21
        DataField = 'PAR_VALOR'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 185
        Top = 130
        DataBinding.DataField = 'PAR_DATACOMPETENCIA'
        DataBinding.DataSource = dsCadastro
        TabOrder = 3
        Width = 97
      end
      object cbDataVencto: TcxDBDateEdit
        Left = 289
        Top = 130
        DataBinding.DataField = 'PAR_DATAVENCTO'
        DataBinding.DataSource = dsCadastro
        TabOrder = 4
        Width = 97
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 492
        Top = 82
        Width = 220
        Height = 21
        DataField = 'PAR_CLI_ID'
        DataSource = dsCadastro
        KeyField = 'CLI_ID'
        ListField = 'CLI_CLIENTE'
        ListSource = dsCliente
        TabOrder = 6
      end
      object cbCentroCusto: TComboBox
        Left = 492
        Top = 130
        Width = 220
        Height = 21
        ItemHeight = 13
        TabOrder = 7
        Text = 'cbCentroCusto'
      end
      object btAnexar: TBitBtn
        Left = 566
        Top = 335
        Width = 121
        Height = 40
        Caption = 'Anexar um Arquivo'
        TabOrder = 9
        Visible = False
        OnClick = btAnexarClick
      end
      object btCACliente: TBitBtn
        Left = 715
        Top = 81
        Width = 22
        Height = 22
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = btCAClienteClick
      end
      object btEXCliente: TBitBtn
        Left = 739
        Top = 81
        Width = 22
        Height = 22
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = btEXClienteClick
      end
      object btCACentroCusto: TBitBtn
        Left = 715
        Top = 129
        Width = 22
        Height = 22
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = btCACentroCustoClick
      end
      object btEXCentroCusto: TBitBtn
        Left = 739
        Top = 129
        Width = 22
        Height = 22
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = btEXCentroCustoClick
      end
      object DBMemo1: TDBMemo
        Left = 492
        Top = 179
        Width = 269
        Height = 66
        DataField = 'PAR_OBSERVACAO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object pnPago: TPanel
        Left = 0
        Top = 284
        Width = 481
        Height = 71
        BevelOuter = bvNone
        TabOrder = 15
        object Bevel2: TBevel
          Left = 9
          Top = 2
          Width = 462
          Height = 5
          Shape = bsTopLine
        end
        object lblDataPagamento: TLabel
          Left = 9
          Top = 32
          Width = 80
          Height = 13
          Caption = 'Data Pagamento'
          Enabled = False
        end
        object lblDescontoTaxa: TLabel
          Left = 116
          Top = 32
          Width = 86
          Height = 13
          Caption = 'Desconto / Taxas'
          Enabled = False
          FocusControl = edDescontoTaxa
        end
        object lblJuroMulta: TLabel
          Left = 221
          Top = 32
          Width = 62
          Height = 13
          Caption = 'Juros / Multa'
          Enabled = False
          FocusControl = edJuroMulta
        end
        object lblValorPago: TLabel
          Left = 324
          Top = 32
          Width = 52
          Height = 13
          Caption = 'Valor Pago'
          Enabled = False
          FocusControl = edValorPago
        end
        object chPago: TDBCheckBox
          Left = 9
          Top = 10
          Width = 57
          Height = 17
          Caption = 'Pago'
          DataField = 'PAR_PAGO'
          DataSource = dsCadastro
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = chPagoClick
        end
        object cbDataPagamento: TcxDBDateEdit
          Left = 9
          Top = 48
          DataBinding.DataField = 'PAR_DATAPGTO'
          DataBinding.DataSource = dsCadastro
          Enabled = False
          TabOrder = 1
          Width = 97
        end
        object edDescontoTaxa: TDBEdit
          Left = 116
          Top = 48
          Width = 91
          Height = 21
          DataField = 'PAR_DESCONTOTAXA'
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 2
        end
        object edJuroMulta: TDBEdit
          Left = 221
          Top = 48
          Width = 91
          Height = 21
          DataField = 'PAR_JUROMULTA'
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 3
        end
        object edValorPago: TDBEdit
          Left = 324
          Top = 48
          Width = 91
          Height = 21
          DataField = 'PAR_VALORPAGO'
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 4
        end
      end
      object pnRepetir: TPanel
        Left = 0
        Top = 210
        Width = 481
        Height = 71
        BevelOuter = bvNone
        TabOrder = 16
        object Bevel4: TBevel
          Left = 9
          Top = 1
          Width = 462
          Height = 5
          Shape = bsTopLine
        end
        object lblOcorrencia: TLabel
          Left = 173
          Top = 39
          Width = 52
          Height = 13
          Caption = 'Ocorr'#234'ncia'
          Enabled = False
        end
        object lblVezes: TLabel
          Left = 279
          Top = 39
          Width = 28
          Height = 13
          Caption = 'vezes'
          Enabled = False
        end
        object Label7: TLabel
          Left = 352
          Top = 42
          Width = 37
          Height = 13
          Caption = 'Cheque'
          Visible = False
        end
        object Label8: TLabel
          Left = 344
          Top = 18
          Width = 48
          Height = 13
          Caption = 'Cheque(s)'
        end
        object chRepetir: TCheckBox
          Left = 9
          Top = 11
          Width = 65
          Height = 17
          Caption = 'Repetir'
          TabOrder = 0
          OnClick = chRepetirClick
        end
        object cbMensalmente: TComboBox
          Left = 9
          Top = 35
          Width = 145
          Height = 21
          Enabled = False
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 1
          Text = 'Mensalmente'
          Items.Strings = (
            'Diariamente'
            'Semanalmente'
            'Mensalmente'
            'Bimestralmente'
            'Trimestralmente'
            'Semestralmente'
            'Anualmente')
        end
        object edOcorrencia: TEdit
          Left = 233
          Top = 35
          Width = 40
          Height = 21
          Enabled = False
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 344
          Top = 34
          Width = 81
          Height = 21
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 3
          Visible = False
        end
        object BitBtn1: TBitBtn
          Left = 426
          Top = 33
          Width = 22
          Height = 22
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnClick = BitBtn1Click
        end
      end
    end
  end
  inherited dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 640
    Top = 232
  end
  inherited ibCadastro: TIBDataSet
    AfterInsert = ibCadastroAfterInsert
    BeforePost = ibCadastroBeforePost
    DeleteSQL.Strings = (
      'delete from pagarreceber'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into pagarreceber'
      
        '  (PAR_ANEXO, PAR_CAT_ID, PAR_CETROCUSTO, PAR_CLI_ID, PAR_CONTA_' +
        'ID, PAR_DATACOMPETENCIA, '
      
        '   PAR_DATAPGTO, PAR_DATAVENCTO, PAR_DESCONTOTAXA, PAR_DESCRICAO' +
        ', PAR_DH_CA, '
      
        '   PAR_ID, PAR_JUROMULTA, PAR_OBSERVACAO, PAR_PAGO, PAR_PAGREC, ' +
        'PAR_PARCELAMAX, '
      '   PAR_PARCELANUM, PAR_PARCELAPAI, PAR_VALOR, PAR_VALORPAGO)'
      'values'
      
        '  (:PAR_ANEXO, :PAR_CAT_ID, :PAR_CETROCUSTO, :PAR_CLI_ID, :PAR_C' +
        'ONTA_ID, '
      
        '   :PAR_DATACOMPETENCIA, :PAR_DATAPGTO, :PAR_DATAVENCTO, :PAR_DE' +
        'SCONTOTAXA, '
      
        '   :PAR_DESCRICAO, :PAR_DH_CA, :PAR_ID, :PAR_JUROMULTA, :PAR_OBS' +
        'ERVACAO, '
      
        '   :PAR_PAGO, :PAR_PAGREC, :PAR_PARCELAMAX, :PAR_PARCELANUM, :PA' +
        'R_PARCELAPAI, '
      '   :PAR_VALOR, :PAR_VALORPAGO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_ID,'
      '  PAR_PAGREC,'
      '  PAR_DESCRICAO,'
      '  PAR_CAT_ID,'
      '  PAR_CONTA_ID,'
      '  PAR_DATACOMPETENCIA,'
      '  PAR_DATAVENCTO,'
      '  PAR_VALOR,'
      '  PAR_CLI_ID,'
      '  PAR_CETROCUSTO,'
      '  PAR_OBSERVACAO,'
      '  PAR_ANEXO,'
      '  PAR_PAGO,'
      '  PAR_DATAPGTO,'
      '  PAR_DESCONTOTAXA,'
      '  PAR_JUROMULTA,'
      '  PAR_VALORPAGO,'
      '  PAR_DH_CA,'
      '  PAR_PARCELANUM,'
      '  PAR_PARCELAMAX,'
      '  PAR_PARCELAPAI'
      'from pagarreceber '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select * from pagarreceber where PAR_ID = :FId')
    ModifySQL.Strings = (
      'update pagarreceber'
      'set'
      '  PAR_ANEXO = :PAR_ANEXO,'
      '  PAR_CAT_ID = :PAR_CAT_ID,'
      '  PAR_CETROCUSTO = :PAR_CETROCUSTO,'
      '  PAR_CLI_ID = :PAR_CLI_ID,'
      '  PAR_CONTA_ID = :PAR_CONTA_ID,'
      '  PAR_DATACOMPETENCIA = :PAR_DATACOMPETENCIA,'
      '  PAR_DATAPGTO = :PAR_DATAPGTO,'
      '  PAR_DATAVENCTO = :PAR_DATAVENCTO,'
      '  PAR_DESCONTOTAXA = :PAR_DESCONTOTAXA,'
      '  PAR_DESCRICAO = :PAR_DESCRICAO,'
      '  PAR_DH_CA = :PAR_DH_CA,'
      '  PAR_ID = :PAR_ID,'
      '  PAR_JUROMULTA = :PAR_JUROMULTA,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_PAGREC = :PAR_PAGREC,'
      '  PAR_PARCELAMAX = :PAR_PARCELAMAX,'
      '  PAR_PARCELANUM = :PAR_PARCELANUM,'
      '  PAR_PARCELAPAI = :PAR_PARCELAPAI,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALORPAGO = :PAR_VALORPAGO'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PAGARRECEBER'
    object ibCadastroPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroPAR_PAGREC: TIntegerField
      FieldName = 'PAR_PAGREC'
      Origin = '"PAGARRECEBER"."PAR_PAGREC"'
    end
    object ibCadastroPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
    object ibCadastroPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
      Origin = '"PAGARRECEBER"."PAR_CAT_ID"'
    end
    object ibCadastroPAR_CONTA_ID: TIntegerField
      FieldName = 'PAR_CONTA_ID'
      Origin = '"PAGARRECEBER"."PAR_CONTA_ID"'
    end
    object ibCadastroPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
      Origin = '"PAGARRECEBER"."PAR_DATACOMPETENCIA"'
    end
    object ibCadastroPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = '"PAGARRECEBER"."PAR_DATAVENCTO"'
    end
    object ibCadastroPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = '"PAGARRECEBER"."PAR_VALOR"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
      Origin = '"PAGARRECEBER"."PAR_CLI_ID"'
    end
    object ibCadastroPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = '"PAGARRECEBER"."PAR_CETROCUSTO"'
      Size = 100
    end
    object ibCadastroPAR_OBSERVACAO: TIBStringField
      FieldName = 'PAR_OBSERVACAO'
      Origin = '"PAGARRECEBER"."PAR_OBSERVACAO"'
      Size = 255
    end
    object ibCadastroPAR_ANEXO: TMemoField
      FieldName = 'PAR_ANEXO'
      Origin = '"PAGARRECEBER"."PAR_ANEXO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ibCadastroPAR_PAGO: TIBStringField
      FieldName = 'PAR_PAGO'
      Origin = '"PAGARRECEBER"."PAR_PAGO"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroPAR_DATAPGTO: TDateField
      FieldName = 'PAR_DATAPGTO'
      Origin = '"PAGARRECEBER"."PAR_DATAPGTO"'
    end
    object ibCadastroPAR_DESCONTOTAXA: TIBBCDField
      FieldName = 'PAR_DESCONTOTAXA'
      Origin = '"PAGARRECEBER"."PAR_DESCONTOTAXA"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_JUROMULTA: TIBBCDField
      FieldName = 'PAR_JUROMULTA'
      Origin = '"PAGARRECEBER"."PAR_JUROMULTA"'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_VALORPAGO: TIBBCDField
      FieldName = 'PAR_VALORPAGO'
      Origin = '"PAGARRECEBER"."PAR_VALORPAGO"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = '"PAGARRECEBER"."PAR_DH_CA"'
    end
    object ibCadastroPAR_PARCELANUM: TIntegerField
      FieldName = 'PAR_PARCELANUM'
      Origin = '"PAGARRECEBER"."PAR_PARCELANUM"'
    end
    object ibCadastroPAR_PARCELAMAX: TIntegerField
      FieldName = 'PAR_PARCELAMAX'
      Origin = '"PAGARRECEBER"."PAR_PARCELAMAX"'
    end
    object ibCadastroPAR_PARCELAPAI: TIntegerField
      FieldName = 'PAR_PARCELAPAI'
      Origin = '"PAGARRECEBER"."PAR_PARCELAPAI"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      
        'select pagarreceber.par_id ID, pagarreceber.* from pagarreceber ' +
        'where pagarreceber.PAR_PAGREC = :pagrec')
    Left = 472
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pagrec'
        ParamType = ptUnknown
      end>
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      Required = True
    end
    object qConsultaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaPAR_PAGREC: TIntegerField
      FieldName = 'PAR_PAGREC'
      Origin = '"PAGARRECEBER"."PAR_PAGREC"'
    end
    object qConsultaPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
    object qConsultaPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
      Origin = '"PAGARRECEBER"."PAR_CAT_ID"'
    end
    object qConsultaPAR_CONTA_ID: TIntegerField
      FieldName = 'PAR_CONTA_ID'
      Origin = '"PAGARRECEBER"."PAR_CONTA_ID"'
    end
    object qConsultaPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
      Origin = '"PAGARRECEBER"."PAR_DATACOMPETENCIA"'
    end
    object qConsultaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = '"PAGARRECEBER"."PAR_DATAVENCTO"'
    end
    object qConsultaPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = '"PAGARRECEBER"."PAR_VALOR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
      Origin = '"PAGARRECEBER"."PAR_CLI_ID"'
    end
    object qConsultaPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = '"PAGARRECEBER"."PAR_CETROCUSTO"'
      Size = 100
    end
    object qConsultaPAR_OBSERVACAO: TIBStringField
      FieldName = 'PAR_OBSERVACAO'
      Origin = '"PAGARRECEBER"."PAR_OBSERVACAO"'
      Size = 255
    end
    object qConsultaPAR_ANEXO: TMemoField
      FieldName = 'PAR_ANEXO'
      Origin = '"PAGARRECEBER"."PAR_ANEXO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qConsultaPAR_PAGO: TIBStringField
      FieldName = 'PAR_PAGO'
      Origin = '"PAGARRECEBER"."PAR_PAGO"'
      FixedChar = True
      Size = 1
    end
    object qConsultaPAR_DATAPGTO: TDateField
      FieldName = 'PAR_DATAPGTO'
      Origin = '"PAGARRECEBER"."PAR_DATAPGTO"'
    end
    object qConsultaPAR_DESCONTOTAXA: TIBBCDField
      FieldName = 'PAR_DESCONTOTAXA'
      Origin = '"PAGARRECEBER"."PAR_DESCONTOTAXA"'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_JUROMULTA: TIBBCDField
      FieldName = 'PAR_JUROMULTA'
      Origin = '"PAGARRECEBER"."PAR_JUROMULTA"'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_VALORPAGO: TIBBCDField
      FieldName = 'PAR_VALORPAGO'
      Origin = '"PAGARRECEBER"."PAR_VALORPAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = '"PAGARRECEBER"."PAR_DH_CA"'
    end
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Imprimir: TAction
      OnExecute = Act_Btn_ImprimirExecute
    end
    object Act_Btn_Voltar: TAction
      Category = 'FormCadastros'
      Caption = 'Voltar'
      Hint = 'Cancelar'
      ImageIndex = 9
      ShortCut = 117
      OnExecute = Act_Btn_CancelarExecute
    end
    object Act_Btn_Relatorios: TAction
      Category = 'FormCadastros'
      Caption = 'Relat'#243'rios'
      Hint = 'Imprimir'
      ImageIndex = 4
      ShortCut = 117
    end
  end
  inherited frxReport1: TfrxReport
    Left = 564
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxIBXComponents1: TfrxIBXComponents
    Left = 604
  end
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pl_item.pit_id,'
      '       pl_item.pit_codigo,'
      '       pl_item.pit_codigoreduzido,'
      '       pl_item.pit_descricao'
      '  from pl_item'
      ' join pl_subgrupo on (pl_subgrupo.psg_id=pl_item.pit_psg_id)'
      ' join pl_grupo on (pl_grupo.pgr_id=pl_subgrupo.psg_pgr_id)'
      ' where pl_grupo.pgr_codigo = :tipopagrec'
      'order by pl_item.pit_descricao')
    Left = 480
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipopagrec'
        ParamType = ptUnknown
      end>
    object qCategoriaPIT_ID: TIntegerField
      FieldName = 'PIT_ID'
      Origin = 'PL_ITEM.PIT_ID'
      Required = True
    end
    object qCategoriaPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Size = 114
    end
    object qCategoriaPIT_CODIGO: TIntegerField
      FieldName = 'PIT_CODIGO'
      Origin = '"PL_ITEM"."PIT_CODIGO"'
    end
    object qCategoriaPIT_CODIGOREDUZIDO: TIntegerField
      FieldName = 'PIT_CODIGOREDUZIDO'
      Origin = '"PL_ITEM"."PIT_CODIGOREDUZIDO"'
    end
  end
  object dsCategoria: TDataSource
    DataSet = qCategoria
    Left = 528
    Top = 56
  end
  object qConta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select forma_pgto.fop_id,'
      '       forma_pgto.fop_descricao'
      '  from forma_pgto')
    Left = 376
    Top = 56
    object qContaFOP_ID: TIntegerField
      FieldName = 'FOP_ID'
      Origin = 'FORMA_PGTO.FOP_ID'
      Required = True
    end
    object qContaFOP_DESCRICAO: TIBStringField
      FieldName = 'FOP_DESCRICAO'
      Origin = 'FORMA_PGTO.FOP_DESCRICAO'
      Size = 100
    end
  end
  object dsConta: TDataSource
    DataSet = qConta
    Left = 424
    Top = 56
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cli_id, cli_cliente'
      '  from clientes'
      ' where coalesce(cli_tipocli,1) = :TipoCli')
    Left = 616
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoCli'
        ParamType = ptUnknown
      end>
    object qClienteCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Origin = 'CLIENTES.CLI_ID'
      Required = True
    end
    object qClienteCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
    end
  end
  object dsCliente: TDataSource
    DataSet = qCliente
    Left = 336
    Top = 56
  end
  object qCentroCusto: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct pagarreceber.par_cetrocusto'
      '  from pagarreceber'
      ' where pagarreceber.par_pagrec = :TipoPagRec'
      'order by pagarreceber.par_cetrocusto')
    Left = 632
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoPagRec'
        ParamType = ptUnknown
      end>
    object qCentroCustoPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = 'PAGARRECEBER.PAR_CETROCUSTO'
      Size = 100
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = qCentroCusto
    Left = 584
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Left = 616
    Top = 400
  end
  object ibParcela: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    OnDeleteError = ibCadastroDeleteError
    OnEditError = ibCadastroEditError
    OnPostError = ibCadastroPostError
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from pagarreceber'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into pagarreceber'
      
        '  (PAR_ANEXO, PAR_CAT_ID, PAR_CETROCUSTO, PAR_CLI_ID, PAR_CONTA_' +
        'ID, PAR_DATACOMPETENCIA, '
      
        '   PAR_DATAPGTO, PAR_DATAVENCTO, PAR_DESCONTOTAXA, PAR_DESCRICAO' +
        ', PAR_DH_CA, '
      
        '   PAR_ID, PAR_JUROMULTA, PAR_OBSERVACAO, PAR_PAGO, PAR_PAGREC, ' +
        'PAR_PARCELAMAX, '
      '   PAR_PARCELANUM, PAR_PARCELAPAI, PAR_VALOR, PAR_VALORPAGO)'
      'values'
      
        '  (:PAR_ANEXO, :PAR_CAT_ID, :PAR_CETROCUSTO, :PAR_CLI_ID, :PAR_C' +
        'ONTA_ID, '
      
        '   :PAR_DATACOMPETENCIA, :PAR_DATAPGTO, :PAR_DATAVENCTO, :PAR_DE' +
        'SCONTOTAXA, '
      
        '   :PAR_DESCRICAO, :PAR_DH_CA, :PAR_ID, :PAR_JUROMULTA, :PAR_OBS' +
        'ERVACAO, '
      
        '   :PAR_PAGO, :PAR_PAGREC, :PAR_PARCELAMAX, :PAR_PARCELANUM, :PA' +
        'R_PARCELAPAI, '
      '   :PAR_VALOR, :PAR_VALORPAGO)')
    RefreshSQL.Strings = (
      'Select '
      '  PAR_ID,'
      '  PAR_PAGREC,'
      '  PAR_DESCRICAO,'
      '  PAR_CAT_ID,'
      '  PAR_CONTA_ID,'
      '  PAR_DATACOMPETENCIA,'
      '  PAR_DATAVENCTO,'
      '  PAR_VALOR,'
      '  PAR_CLI_ID,'
      '  PAR_CETROCUSTO,'
      '  PAR_OBSERVACAO,'
      '  PAR_ANEXO,'
      '  PAR_PAGO,'
      '  PAR_DATAPGTO,'
      '  PAR_DESCONTOTAXA,'
      '  PAR_JUROMULTA,'
      '  PAR_VALORPAGO,'
      '  PAR_DH_CA,'
      '  PAR_PARCELANUM,'
      '  PAR_PARCELAMAX,'
      '  PAR_PARCELAPAI'
      'from pagarreceber '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select * from pagarreceber where PAR_ID = :FId')
    ModifySQL.Strings = (
      'update pagarreceber'
      'set'
      '  PAR_ANEXO = :PAR_ANEXO,'
      '  PAR_CAT_ID = :PAR_CAT_ID,'
      '  PAR_CETROCUSTO = :PAR_CETROCUSTO,'
      '  PAR_CLI_ID = :PAR_CLI_ID,'
      '  PAR_CONTA_ID = :PAR_CONTA_ID,'
      '  PAR_DATACOMPETENCIA = :PAR_DATACOMPETENCIA,'
      '  PAR_DATAPGTO = :PAR_DATAPGTO,'
      '  PAR_DATAVENCTO = :PAR_DATAVENCTO,'
      '  PAR_DESCONTOTAXA = :PAR_DESCONTOTAXA,'
      '  PAR_DESCRICAO = :PAR_DESCRICAO,'
      '  PAR_DH_CA = :PAR_DH_CA,'
      '  PAR_ID = :PAR_ID,'
      '  PAR_JUROMULTA = :PAR_JUROMULTA,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_PAGREC = :PAR_PAGREC,'
      '  PAR_PARCELAMAX = :PAR_PARCELAMAX,'
      '  PAR_PARCELANUM = :PAR_PARCELANUM,'
      '  PAR_PARCELAPAI = :PAR_PARCELAPAI,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALORPAGO = :PAR_VALORPAGO'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PAGARRECEBER'
    Left = 264
    Top = 8
    object ibParcelaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibParcelaPAR_PAGREC: TIntegerField
      FieldName = 'PAR_PAGREC'
      Origin = '"PAGARRECEBER"."PAR_PAGREC"'
    end
    object ibParcelaPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
    object ibParcelaPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
      Origin = '"PAGARRECEBER"."PAR_CAT_ID"'
    end
    object ibParcelaPAR_CONTA_ID: TIntegerField
      FieldName = 'PAR_CONTA_ID'
      Origin = '"PAGARRECEBER"."PAR_CONTA_ID"'
    end
    object ibParcelaPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
      Origin = '"PAGARRECEBER"."PAR_DATACOMPETENCIA"'
    end
    object ibParcelaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = '"PAGARRECEBER"."PAR_DATAVENCTO"'
    end
    object ibParcelaPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = '"PAGARRECEBER"."PAR_VALOR"'
      Precision = 18
      Size = 2
    end
    object ibParcelaPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
      Origin = '"PAGARRECEBER"."PAR_CLI_ID"'
    end
    object ibParcelaPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = '"PAGARRECEBER"."PAR_CETROCUSTO"'
      Size = 100
    end
    object ibParcelaPAR_OBSERVACAO: TIBStringField
      FieldName = 'PAR_OBSERVACAO'
      Origin = '"PAGARRECEBER"."PAR_OBSERVACAO"'
      Size = 255
    end
    object ibParcelaPAR_ANEXO: TMemoField
      FieldName = 'PAR_ANEXO'
      Origin = '"PAGARRECEBER"."PAR_ANEXO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ibParcelaPAR_PAGO: TIBStringField
      FieldName = 'PAR_PAGO'
      Origin = '"PAGARRECEBER"."PAR_PAGO"'
      FixedChar = True
      Size = 1
    end
    object ibParcelaPAR_DATAPGTO: TDateField
      FieldName = 'PAR_DATAPGTO'
      Origin = '"PAGARRECEBER"."PAR_DATAPGTO"'
    end
    object ibParcelaPAR_DESCONTOTAXA: TIBBCDField
      FieldName = 'PAR_DESCONTOTAXA'
      Origin = '"PAGARRECEBER"."PAR_DESCONTOTAXA"'
      Precision = 18
      Size = 2
    end
    object ibParcelaPAR_JUROMULTA: TIBBCDField
      FieldName = 'PAR_JUROMULTA'
      Origin = '"PAGARRECEBER"."PAR_JUROMULTA"'
      Precision = 18
      Size = 2
    end
    object ibParcelaPAR_VALORPAGO: TIBBCDField
      FieldName = 'PAR_VALORPAGO'
      Origin = '"PAGARRECEBER"."PAR_VALORPAGO"'
      Precision = 18
      Size = 2
    end
    object ibParcelaPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = '"PAGARRECEBER"."PAR_DH_CA"'
    end
    object ibParcelaPAR_PARCELANUM: TIntegerField
      FieldName = 'PAR_PARCELANUM'
      Origin = '"PAGARRECEBER"."PAR_PARCELANUM"'
    end
    object ibParcelaPAR_PARCELAMAX: TIntegerField
      FieldName = 'PAR_PARCELAMAX'
      Origin = '"PAGARRECEBER"."PAR_PARCELAMAX"'
    end
    object ibParcelaPAR_PARCELAPAI: TIntegerField
      FieldName = 'PAR_PARCELAPAI'
      Origin = '"PAGARRECEBER"."PAR_PARCELAPAI"'
    end
  end
  object qGerador: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select gen_id(GEN_PAGARRECEBER,1) ID from rdb$database')
    Left = 592
    Top = 56
    object qGeradorID: TLargeintField
      FieldName = 'ID'
      ProviderFlags = []
    end
  end
  object qRelatorio: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from relatorio')
    Left = 480
    Top = 120
    object qRelatorioREL_ID: TIntegerField
      FieldName = 'REL_ID'
      Origin = '"RELATORIO"."REL_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRelatorioREL_IDPAI: TIntegerField
      FieldName = 'REL_IDPAI'
      Origin = '"RELATORIO"."REL_IDPAI"'
    end
    object qRelatorioREL_MODULO: TIBStringField
      FieldName = 'REL_MODULO'
      Origin = '"RELATORIO"."REL_MODULO"'
      FixedChar = True
      Size = 3
    end
    object qRelatorioREL_CODIGO_MODULO: TIBStringField
      FieldName = 'REL_CODIGO_MODULO'
      Origin = '"RELATORIO"."REL_CODIGO_MODULO"'
      Size = 15
    end
    object qRelatorioREL_CAMINHO: TIBStringField
      FieldName = 'REL_CAMINHO'
      Origin = '"RELATORIO"."REL_CAMINHO"'
      Size = 100
    end
    object qRelatorioREL_ARQUIVO_FR3: TIBStringField
      FieldName = 'REL_ARQUIVO_FR3'
      Origin = '"RELATORIO"."REL_ARQUIVO_FR3"'
      Size = 100
    end
    object qRelatorioREL_FR3: TMemoField
      FieldName = 'REL_FR3'
      Origin = '"RELATORIO"."REL_FR3"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qRelatorioREL_DESCRICAO: TIBStringField
      FieldName = 'REL_DESCRICAO'
      Origin = '"RELATORIO"."REL_DESCRICAO"'
      Size = 255
    end
    object qRelatorioREL_DH_CA: TDateTimeField
      FieldName = 'REL_DH_CA'
      Origin = '"RELATORIO"."REL_DH_CA"'
    end
  end
  object dsRelatorio: TDataSource
    DataSet = qRelatorio
    Left = 528
    Top = 120
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'PAR_ID=PAR_ID'
      'PAR_PAGREC=PAR_PAGREC'
      'PAR_DESCRICAO=PAR_DESCRICAO'
      'PAR_CAT_ID=PAR_CAT_ID'
      'PAR_CONTA_ID=PAR_CONTA_ID'
      'PAR_DATACOMPETENCIA=PAR_DATACOMPETENCIA'
      'PAR_DATAVENCTO=PAR_DATAVENCTO'
      'PAR_VALOR=PAR_VALOR'
      'PAR_CLI_ID=PAR_CLI_ID'
      'PAR_CETROCUSTO=PAR_CETROCUSTO'
      'PAR_OBSERVACAO=PAR_OBSERVACAO'
      'PAR_ANEXO=PAR_ANEXO'
      'PAR_PAGO=PAR_PAGO'
      'PAR_DATAPGTO=PAR_DATAPGTO'
      'PAR_DESCONTOTAXA=PAR_DESCONTOTAXA'
      'PAR_JUROMULTA=PAR_JUROMULTA'
      'PAR_VALORPAGO=PAR_VALORPAGO'
      'PAR_DH_CA=PAR_DH_CA')
    DataSource = dsConsulta
    BCDToCurrency = False
    Left = 380
    Top = 175
  end
  object dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 520
    Top = 232
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 568
    Top = 232
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Required = True
    end
    object cdsConsultaPAR_PAGREC: TIntegerField
      FieldName = 'PAR_PAGREC'
    end
    object cdsConsultaPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 100
    end
    object cdsConsultaPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
    end
    object cdsConsultaPAR_CONTA_ID: TIntegerField
      FieldName = 'PAR_CONTA_ID'
    end
    object cdsConsultaPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
    end
    object cdsConsultaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
    end
    object cdsConsultaPAR_VALOR: TBCDField
      FieldName = 'PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
    end
    object cdsConsultaPAR_CETROCUSTO: TStringField
      FieldName = 'PAR_CETROCUSTO'
      Size = 100
    end
    object cdsConsultaPAR_OBSERVACAO: TStringField
      FieldName = 'PAR_OBSERVACAO'
      Size = 255
    end
    object cdsConsultaPAR_ANEXO: TMemoField
      FieldName = 'PAR_ANEXO'
      BlobType = ftMemo
      Size = 8
    end
    object cdsConsultaPAR_PAGO: TStringField
      FieldName = 'PAR_PAGO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPAR_DATAPGTO: TDateField
      FieldName = 'PAR_DATAPGTO'
    end
    object cdsConsultaPAR_DESCONTOTAXA: TBCDField
      FieldName = 'PAR_DESCONTOTAXA'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_JUROMULTA: TBCDField
      FieldName = 'PAR_JUROMULTA'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_VALORPAGO: TBCDField
      FieldName = 'PAR_VALORPAGO'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
    end
  end
  object cdsCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 400
    Top = 104
    object cdsConsultaSELECIONAR: TStringField
      FieldName = 'SELECIONAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCHQ_ID: TIntegerField
      FieldName = 'CHQ_ID'
      Required = True
    end
    object cdsConsultaCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 15
    end
    object cdsConsultaCHQ_CONTA: TStringField
      FieldName = 'CHQ_CONTA'
      Size = 15
    end
    object cdsConsultaCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 6
    end
    object cdsConsultaCHQ_NUMERO: TStringField
      FieldName = 'CHQ_NUMERO'
      Size = 15
    end
    object cdsConsultaCHQ_VALOR: TBCDField
      FieldName = 'CHQ_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object ibCheque: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    Left = 360
    Top = 104
  end
end
