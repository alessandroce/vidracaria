inherited FCadPagarReceber: TFCadPagarReceber
  Left = 295
  Top = 167
  Height = 600
  Caption = 'FCadPagarReceber'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 531
    inherited tsConsulta: TTabSheet
      ImageIndex = 8
      inherited grConsulta: TcxGrid
        Height = 433
        inherited grConsultaDBTableView1: TcxGridDBTableView
          OnCustomDrawCell = grConsultaDBTableView1CustomDrawCell
          DataController.DataSource = dsConsulta
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skSum
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
          object grConsultaDBTableView1PAR_NUMDOC: TcxGridDBColumn
            Caption = 'Num. Doc.'
            DataBinding.FieldName = 'PAR_NUMDOC'
          end
          object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_CLIENTE'
            Width = 250
          end
          object grConsultaDBTableView1PAR_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PAR_DESCRICAO'
            Width = 250
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
          object grConsultaDBTableView1PAR_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'PAR_OBSERVACAO'
            Width = 300
          end
          object grConsultaDBTableView1BAIXADO: TcxGridDBColumn
            DataBinding.FieldName = 'BAIXADO'
            Visible = False
          end
          object grConsultaDBTableView1PAR_TIPOBAIXA: TcxGridDBColumn
            DataBinding.FieldName = 'PAR_TIPOBAIXA'
            Width = 50
          end
        end
      end
      inherited pnBarraPg: TPanel
        object Bevel6: TBevel [0]
          Left = 272
          Top = 5
          Width = 249
          Height = 40
        end
        inherited btSair: TSpeedButton
          Left = 715
        end
        object Label9: TLabel [6]
          Left = 296
          Top = 19
          Width = 22
          Height = 13
          Caption = 'Filtro'
        end
        inherited rgAtivo: TRadioGroup
          Left = 648
          Width = 57
          Visible = False
        end
        object cxImageComboBox2: TcxImageComboBox
          Left = 328
          Top = 14
          EditValue = 0
          Properties.ButtonGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFF09FFFFFFFFFFFFFFFFFFFFFFFFFFF609F4FFFFFFFFFFFFFFFFFFFFFFFF
            F6090909FFFFFFFFFFFFFFFFFFFFFFFF09090909FFFFFFFFFFFFFFFFFFFFFFFF
            09090909FFFFFFFFFFFFFFFFFFFFFFFF09090909FFFFFFFFFFFFFFFFFFFFFFFF
            09090909FFFFFFFFFFFFFFFFFFFFFFFF09090909FFFFFFFFFFFFFFFFFFFFFFF6
            0909090909FFFFFFFFFFFFFFFFFF0909090909090909FFFFFFFFFFFFFF090909
            09090909090909FFFFFFFFFF090909090909090909090909FFFFFF0909090909
            090909090909090909FF09090909090909090909090909090909090909090909
            0909090909090909090909090909090909090909090909090909}
          Properties.Images = cxImageList1
          Properties.Items = <
            item
              Description = 'Vencendo hoje'
              ImageIndex = 3
              Value = 1
            end
            item
              Description = 'Vencidas'
              ImageIndex = 2
              Value = 2
            end
            item
              Description = 'Quitadas'
              ImageIndex = 1
              Value = 3
            end
            item
              Description = 'A vencer'
              ImageIndex = 0
              Value = 4
            end
            item
              Description = 'Todas'
              Value = 0
            end>
          Properties.OnChange = cxImageComboBox2PropertiesChange
          TabOrder = 1
          Width = 169
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 483
      end
    end
    inherited tsCadastro: TTabSheet
      object Bevel5: TBevel [0]
        Left = 0
        Top = 362
        Width = 776
        Height = 22
        Align = alBottom
        Shape = bsTopLine
      end
      object Label2: TLabel [2]
        Left = 9
        Top = 66
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label1: TLabel [3]
        Left = 10
        Top = 114
        Width = 45
        Height = 13
        Caption = 'Categoria'
      end
      object Label3: TLabel [4]
        Left = 257
        Top = 114
        Width = 28
        Height = 13
        Caption = 'Conta'
      end
      object Label4: TLabel [5]
        Left = 117
        Top = 162
        Width = 88
        Height = 13
        Caption = 'Data Compet'#234'ncia'
      end
      object Label5: TLabel [6]
        Left = 221
        Top = 162
        Width = 82
        Height = 13
        Caption = 'Data Vencimento'
      end
      object Label6: TLabel [7]
        Left = 325
        Top = 162
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit1
      end
      object Label13: TLabel [8]
        Left = 500
        Top = 66
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label14: TLabel [9]
        Left = 499
        Top = 114
        Width = 61
        Height = 13
        Caption = 'Centro Custo'
      end
      object Label15: TLabel [10]
        Left = 500
        Top = 162
        Width = 63
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object Label7: TLabel [11]
        Left = 10
        Top = 162
        Width = 83
        Height = 13
        Caption = 'Num. Documento'
        FocusControl = DBEdit3
      end
      object Bevel3: TBevel [12]
        Left = 490
        Top = 66
        Width = 5
        Height = 287
        Shape = bsLeftLine
        Visible = False
      end
      object Label8: TLabel [13]
        Left = 4
        Top = 368
        Width = 74
        Height = 13
        Caption = 'Dados da baixa'
      end
      inherited Panel1: TPanel
        TabOrder = 20
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
        Width = 471
        Height = 21
        DataField = 'PAR_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 10
        Top = 130
        Width = 191
        Height = 21
        DataField = 'PAR_CAT_ID'
        DataSource = dsCadastro
        KeyField = 'PIT_ID'
        ListField = 'PIT_DESCRICAO'
        ListSource = dsCategoria
        TabOrder = 4
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 256
        Top = 130
        Width = 183
        Height = 21
        DataField = 'PAR_CONTA_ID'
        DataSource = dsCadastro
        KeyField = 'FOP_ID'
        ListField = 'FOP_DESCRICAO'
        ListSource = dsConta
        TabOrder = 7
      end
      object DBEdit1: TDBEdit
        Left = 325
        Top = 178
        Width = 100
        Height = 21
        DataField = 'PAR_VALOR'
        DataSource = dsCadastro
        TabOrder = 16
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 117
        Top = 178
        DataBinding.DataField = 'PAR_DATACOMPETENCIA'
        DataBinding.DataSource = dsCadastro
        TabOrder = 14
        Width = 97
      end
      object cbDataVencto: TcxDBDateEdit
        Left = 221
        Top = 178
        DataBinding.DataField = 'PAR_DATAVENCTO'
        DataBinding.DataSource = dsCadastro
        TabOrder = 15
        Width = 97
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 500
        Top = 82
        Width = 216
        Height = 21
        DataField = 'PAR_CLI_ID'
        DataSource = dsCadastro
        KeyField = 'CLI_ID'
        ListField = 'CLI_CLIENTE'
        ListSource = dsCliente
        TabOrder = 1
      end
      object btCACliente: TBitBtn
        Left = 716
        Top = 82
        Width = 22
        Height = 20
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btCAClienteClick
      end
      object btEXCliente: TBitBtn
        Left = 738
        Top = 82
        Width = 22
        Height = 20
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btEXClienteClick
      end
      object btCACentroCusto: TBitBtn
        Left = 716
        Top = 130
        Width = 22
        Height = 20
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = btCACentroCustoClick
      end
      object btEXCentroCusto: TBitBtn
        Left = 738
        Top = 130
        Width = 22
        Height = 20
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = btEXCentroCustoClick
      end
      object DBMemo1: TDBMemo
        Left = 500
        Top = 179
        Width = 269
        Height = 110
        DataField = 'PAR_OBSERVACAO'
        DataSource = dsCadastro
        TabOrder = 17
      end
      object pnPago: TPanel
        Left = 0
        Top = 284
        Width = 481
        Height = 38
        BevelOuter = bvNone
        TabOrder = 19
        Visible = False
        object Bevel2: TBevel
          Left = 9
          Top = 2
          Width = 462
          Height = 5
          Shape = bsTopLine
          Visible = False
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
        TabOrder = 18
        object Bevel4: TBevel
          Left = 9
          Top = 1
          Width = 462
          Height = 5
          Shape = bsTopLine
          Visible = False
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
        object btCheque: TBitBtn
          Left = 344
          Top = 33
          Width = 93
          Height = 24
          Action = bt_Cheque
          Caption = 'Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object DBEdit3: TDBEdit
        Left = 10
        Top = 178
        Width = 97
        Height = 21
        DataField = 'PAR_NUMDOC'
        DataSource = dsCadastro
        TabOrder = 13
      end
      object btCACategorai: TBitBtn
        Left = 201
        Top = 130
        Width = 22
        Height = 20
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btCACategoraiClick
      end
      object btEXCategorai: TBitBtn
        Left = 223
        Top = 130
        Width = 22
        Height = 20
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btEXCategoraiClick
      end
      object btEXConta: TBitBtn
        Left = 461
        Top = 130
        Width = 22
        Height = 20
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object btCAConta: TBitBtn
        Left = 439
        Top = 130
        Width = 22
        Height = 20
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = btCAContaClick
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 500
        Top = 130
        Width = 216
        Height = 21
        DataField = 'PAR_CCO_ID'
        DataSource = dsCadastro
        KeyField = 'CCO_ID'
        ListField = 'CCO_DESCRICAO'
        ListSource = dsCentroCusto
        TabOrder = 10
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 384
        Width = 776
        Height = 118
        Align = alBottom
        TabOrder = 21
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsBaixado
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1BXP_VALOR
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1TIPOBAIXA: TcxGridDBColumn
            Caption = 'Tipo baixa'
            DataBinding.FieldName = 'TIPOBAIXA'
            Width = 71
          end
          object cxGrid1DBTableView1BXP_DATAPAGTO: TcxGridDBColumn
            Caption = 'Data pagamento'
            DataBinding.FieldName = 'BXP_DATAPAGTO'
            Width = 102
          end
          object cxGrid1DBTableView1BXP_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'BXP_VALOR'
            Width = 116
          end
          object cxGrid1DBTableView1BXP_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'BXP_OBSERVACAO'
            Width = 300
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 696
    Top = 256
  end
  inherited ibCadastro: TIBDataSet
    AfterInsert = ibCadastroAfterInsert
    AfterOpen = ibCadastroAfterOpen
    AfterPost = ibCadastroAfterPost
    BeforeClose = ibCadastroBeforeClose
    BeforePost = ibCadastroBeforePost
    DeleteSQL.Strings = (
      'delete from pagarreceber'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into pagarreceber'
      
        '  (PAR_ANEXO, PAR_BAIXADO, PAR_CAT_ID, PAR_CCO_ID, PAR_CETROCUST' +
        'O, PAR_CLI_ID, '
      
        '   PAR_CONTA_ID, PAR_DATACOMPETENCIA, PAR_DATAPGTO, PAR_DATAVENC' +
        'TO, PAR_DESCONTOTAXA, '
      
        '   PAR_DESCRICAO, PAR_DH_CA, PAR_ID, PAR_JUROMULTA, PAR_NUMDOC, ' +
        'PAR_OBSERVACAO, '
      
        '   PAR_PAGO, PAR_PAGREC, PAR_PARCELAMAX, PAR_PARCELANUM, PAR_PAR' +
        'CELAPAI, '
      
        '   PAR_TIPOBAIXA, PAR_VALOR, PAR_VALORPAGO, PAR_VENDACOMISSIONAD' +
        'A_ID, PAR_VENDEDOR_ID)'
      'values'
      
        '  (:PAR_ANEXO, :PAR_BAIXADO, :PAR_CAT_ID, :PAR_CCO_ID, :PAR_CETR' +
        'OCUSTO, '
      
        '   :PAR_CLI_ID, :PAR_CONTA_ID, :PAR_DATACOMPETENCIA, :PAR_DATAPG' +
        'TO, :PAR_DATAVENCTO, '
      
        '   :PAR_DESCONTOTAXA, :PAR_DESCRICAO, :PAR_DH_CA, :PAR_ID, :PAR_' +
        'JUROMULTA, '
      
        '   :PAR_NUMDOC, :PAR_OBSERVACAO, :PAR_PAGO, :PAR_PAGREC, :PAR_PA' +
        'RCELAMAX, '
      
        '   :PAR_PARCELANUM, :PAR_PARCELAPAI, :PAR_TIPOBAIXA, :PAR_VALOR,' +
        ' :PAR_VALORPAGO, '
      '   :PAR_VENDACOMISSIONADA_ID, :PAR_VENDEDOR_ID)')
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
      '  PAR_PARCELAPAI,'
      '  PAR_NUMDOC,'
      '  PAR_CCO_ID,'
      '  PAR_BAIXADO,'
      '  PAR_TIPOBAIXA,'
      '  PAR_VENDEDOR_ID,'
      '  PAR_VENDACOMISSIONADA_ID'
      'from pagarreceber '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select pagarreceber.*,'
      '       (select pl_item.pit_descricao'
      '          from pl_item'
      
        '         where pl_item.pit_id = pagarreceber.par_cat_id) categor' +
        'ia'
      '  from pagarreceber'
      ' where PAR_ID = :FId')
    ModifySQL.Strings = (
      'update pagarreceber'
      'set'
      '  PAR_ANEXO = :PAR_ANEXO,'
      '  PAR_BAIXADO = :PAR_BAIXADO,'
      '  PAR_CAT_ID = :PAR_CAT_ID,'
      '  PAR_CCO_ID = :PAR_CCO_ID,'
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
      '  PAR_NUMDOC = :PAR_NUMDOC,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_PAGREC = :PAR_PAGREC,'
      '  PAR_PARCELAMAX = :PAR_PARCELAMAX,'
      '  PAR_PARCELANUM = :PAR_PARCELANUM,'
      '  PAR_PARCELAPAI = :PAR_PARCELAPAI,'
      '  PAR_TIPOBAIXA = :PAR_TIPOBAIXA,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALORPAGO = :PAR_VALORPAGO,'
      '  PAR_VENDACOMISSIONADA_ID = :PAR_VENDACOMISSIONADA_ID,'
      '  PAR_VENDEDOR_ID = :PAR_VENDEDOR_ID'
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
    object ibCadastroPAR_NUMDOC: TIBStringField
      FieldName = 'PAR_NUMDOC'
      Origin = 'PAGARRECEBER.PAR_NUMDOC'
      Size = 15
    end
    object ibCadastroPAR_BAIXADO: TIBStringField
      FieldName = 'PAR_BAIXADO'
      Origin = '"PAGARRECEBER"."PAR_BAIXADO"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroPAR_CCO_ID: TIntegerField
      FieldName = 'PAR_CCO_ID'
      Origin = 'PAGARRECEBER.PAR_CCO_ID'
    end
    object ibCadastroPAR_TIPOBAIXA: TIBStringField
      FieldName = 'PAR_TIPOBAIXA'
      Origin = '"PAGARRECEBER"."PAR_TIPOBAIXA"'
      FixedChar = True
      Size = 1
    end
    object ibCadastroPAR_VENDACOMISSIONADA_ID: TIntegerField
      FieldName = 'PAR_VENDACOMISSIONADA_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDACOMISSIONADA_ID"'
    end
    object ibCadastroPAR_VENDEDOR_ID: TIntegerField
      FieldName = 'PAR_VENDEDOR_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDEDOR_ID"'
    end
    object ibCadastroCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select 0 flag, pagarreceber.par_id ID,'
      '       pagarreceber.* ,'
      '       coalesce(pagarreceber.par_baixado,'#39'N'#39') baixado,'
      '       clientes.cli_cliente'
      'from pagarreceber'
      ' left join clientes on (clientes.cli_id=pagarreceber.par_cli_id)'
      'where pagarreceber.PAR_PAGREC = :pagrec'
      'order by par_id')
    Left = 528
    Top = 256
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
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_JUROMULTA: TIBBCDField
      FieldName = 'PAR_JUROMULTA'
      Origin = '"PAGARRECEBER"."PAR_JUROMULTA"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_VALORPAGO: TIBBCDField
      FieldName = 'PAR_VALORPAGO'
      Origin = '"PAGARRECEBER"."PAR_VALORPAGO"'
      DisplayFormat = '0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = '"PAGARRECEBER"."PAR_DH_CA"'
    end
    object qConsultaPAR_BAIXADO: TIBStringField
      FieldName = 'PAR_BAIXADO'
      Origin = 'PAGARRECEBER.PAR_BAIXADO'
      FixedChar = True
      Size = 1
    end
    object qConsultaPAR_TIPOBAIXA: TIBStringField
      FieldName = 'PAR_TIPOBAIXA'
      Origin = 'PAGARRECEBER.PAR_TIPOBAIXA'
      FixedChar = True
      Size = 1
    end
    object qConsultaPAR_PARCELANUM: TIntegerField
      FieldName = 'PAR_PARCELANUM'
      Origin = '"PAGARRECEBER"."PAR_PARCELANUM"'
    end
    object qConsultaPAR_PARCELAMAX: TIntegerField
      FieldName = 'PAR_PARCELAMAX'
      Origin = '"PAGARRECEBER"."PAR_PARCELAMAX"'
    end
    object qConsultaPAR_PARCELAPAI: TIntegerField
      FieldName = 'PAR_PARCELAPAI'
      Origin = '"PAGARRECEBER"."PAR_PARCELAPAI"'
    end
    object qConsultaPAR_NUMDOC: TIBStringField
      FieldName = 'PAR_NUMDOC'
      Origin = '"PAGARRECEBER"."PAR_NUMDOC"'
      Size = 15
    end
    object qConsultaPAR_CCO_ID: TIntegerField
      FieldName = 'PAR_CCO_ID'
      Origin = '"PAGARRECEBER"."PAR_CCO_ID"'
    end
    object qConsultaPAR_VENDEDOR_ID: TIntegerField
      FieldName = 'PAR_VENDEDOR_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDEDOR_ID"'
    end
    object qConsultaPAR_VENDACOMISSIONADA_ID: TIntegerField
      FieldName = 'PAR_VENDACOMISSIONADA_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDACOMISSIONADA_ID"'
    end
    object qConsultaBAIXADO: TIBStringField
      FieldName = 'BAIXADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaFLAG: TIntegerField
      FieldName = 'FLAG'
      ProviderFlags = []
    end
  end
  inherited ActionList1: TActionList
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
    object bt_Cheque: TAction
      Category = 'Botao'
      Caption = 'Cheque'
      OnExecute = bt_ChequeExecute
    end
    object btCA1: TAction
      Category = 'Botao'
      Caption = '+'
    end
    object btCA2: TAction
      Category = 'Botao'
      Caption = '...'
    end
    object btEX1: TAction
      Category = 'Botao'
      Caption = 'x'
    end
    object btEX2: TAction
      Category = 'Botao'
      Caption = '...'
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
  inherited dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 592
    Top = 248
  end
  inherited cdsConsulta: TClientDataSet
    ProviderName = 'dspConsulta'
    Left = 632
    Top = 248
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
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_JUROMULTA: TBCDField
      FieldName = 'PAR_JUROMULTA'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_VALORPAGO: TBCDField
      FieldName = 'PAR_VALORPAGO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
    end
    object cdsConsultaPAR_BAIXADO: TStringField
      FieldName = 'PAR_BAIXADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPAR_TIPOBAIXA: TStringField
      FieldName = 'PAR_TIPOBAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPAR_PARCELANUM: TIntegerField
      FieldName = 'PAR_PARCELANUM'
    end
    object cdsConsultaPAR_PARCELAMAX: TIntegerField
      FieldName = 'PAR_PARCELAMAX'
    end
    object cdsConsultaPAR_PARCELAPAI: TIntegerField
      FieldName = 'PAR_PARCELAPAI'
    end
    object cdsConsultaPAR_NUMDOC: TStringField
      FieldName = 'PAR_NUMDOC'
      Size = 15
    end
    object cdsConsultaPAR_CCO_ID: TIntegerField
      FieldName = 'PAR_CCO_ID'
    end
    object cdsConsultaPAR_VENDEDOR_ID: TIntegerField
      FieldName = 'PAR_VENDEDOR_ID'
    end
    object cdsConsultaPAR_VENDACOMISSIONADA_ID: TIntegerField
      FieldName = 'PAR_VENDACOMISSIONADA_ID'
    end
    object cdsConsultaBAIXADO: TStringField
      FieldName = 'BAIXADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsConsultaFLAG: TIntegerField
      FieldName = 'FLAG'
    end
  end
  object qCategoria: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
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
    Left = 448
    Top = 176
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
    Left = 496
    Top = 176
  end
  object qConta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from forma_pgto')
    Left = 344
    Top = 176
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
    object qContaFOP_TIPO: TIntegerField
      FieldName = 'FOP_TIPO'
      Origin = '"FORMA_PGTO"."FOP_TIPO"'
    end
    object qContaFOP_BANCO_ID: TIntegerField
      FieldName = 'FOP_BANCO_ID'
      Origin = '"FORMA_PGTO"."FOP_BANCO_ID"'
    end
    object qContaFOP_DH_CA: TDateTimeField
      FieldName = 'FOP_DH_CA'
      Origin = '"FORMA_PGTO"."FOP_DH_CA"'
    end
    object qContaFOP_FLAG: TIntegerField
      FieldName = 'FOP_FLAG'
      Origin = '"FORMA_PGTO"."FOP_FLAG"'
    end
  end
  object dsConta: TDataSource
    DataSet = qConta
    OnDataChange = dsContaDataChange
    Left = 392
    Top = 176
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select id cli_id, nome cli_cliente'
      '  from sp_cliente_portipo(:TipoCli)')
    Left = 592
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
    Left = 624
    Top = 104
  end
  object qCentroCusto: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select *'
      '  from centrocusto'
      ' order by cco_descricao')
    Left = 688
    Top = 176
    object qCentroCustoCCO_ID: TIntegerField
      FieldName = 'CCO_ID'
      Origin = 'CENTROCUSTO.CCO_ID'
      Required = True
    end
    object qCentroCustoCCO_CODIGO: TIntegerField
      FieldName = 'CCO_CODIGO'
      Origin = 'CENTROCUSTO.CCO_CODIGO'
    end
    object qCentroCustoCCO_DESCRICAO: TIBStringField
      FieldName = 'CCO_DESCRICAO'
      Origin = 'CENTROCUSTO.CCO_DESCRICAO'
      Size = 100
    end
    object qCentroCustoCCO_DH_CA: TDateTimeField
      FieldName = 'CCO_DH_CA'
      Origin = 'CENTROCUSTO.CCO_DH_CA'
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = qCentroCusto
    Left = 720
    Top = 176
  end
  object ibParcela: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    OnDeleteError = ibCadastroDeleteError
    OnEditError = ibCadastroEditError
    OnPostError = ibCadastroPostError
    DeleteSQL.Strings = (
      'delete from pagarreceber'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    InsertSQL.Strings = (
      'insert into pagarreceber'
      
        '  (PAR_ANEXO, PAR_BAIXADO, PAR_CAT_ID, PAR_CCO_ID, PAR_CETROCUST' +
        'O, PAR_CLI_ID, '
      
        '   PAR_CONTA_ID, PAR_DATACOMPETENCIA, PAR_DATAPGTO, PAR_DATAVENC' +
        'TO, PAR_DESCONTOTAXA, '
      
        '   PAR_DESCRICAO, PAR_DH_CA, PAR_ID, PAR_JUROMULTA, PAR_NUMDOC, ' +
        'PAR_OBSERVACAO, '
      
        '   PAR_PAGO, PAR_PAGREC, PAR_PARCELAMAX, PAR_PARCELANUM, PAR_PAR' +
        'CELAPAI, '
      
        '   PAR_TIPOBAIXA, PAR_VALOR, PAR_VALORPAGO, PAR_VENDACOMISSIONAD' +
        'A_ID, PAR_VENDEDOR_ID)'
      'values'
      
        '  (:PAR_ANEXO, :PAR_BAIXADO, :PAR_CAT_ID, :PAR_CCO_ID, :PAR_CETR' +
        'OCUSTO, '
      
        '   :PAR_CLI_ID, :PAR_CONTA_ID, :PAR_DATACOMPETENCIA, :PAR_DATAPG' +
        'TO, :PAR_DATAVENCTO, '
      
        '   :PAR_DESCONTOTAXA, :PAR_DESCRICAO, :PAR_DH_CA, :PAR_ID, :PAR_' +
        'JUROMULTA, '
      
        '   :PAR_NUMDOC, :PAR_OBSERVACAO, :PAR_PAGO, :PAR_PAGREC, :PAR_PA' +
        'RCELAMAX, '
      
        '   :PAR_PARCELANUM, :PAR_PARCELAPAI, :PAR_TIPOBAIXA, :PAR_VALOR,' +
        ' :PAR_VALORPAGO, '
      '   :PAR_VENDACOMISSIONADA_ID, :PAR_VENDEDOR_ID)')
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
      '  PAR_PARCELAPAI,'
      '  PAR_NUMDOC,'
      '  PAR_CCO_ID,'
      '  PAR_BAIXADO,'
      '  PAR_TIPOBAIXA,'
      '  PAR_VENDEDOR_ID,'
      '  PAR_VENDACOMISSIONADA_ID'
      'from pagarreceber '
      'where'
      '  PAR_ID = :PAR_ID')
    SelectSQL.Strings = (
      'select * from pagarreceber where PAR_ID = :FId')
    ModifySQL.Strings = (
      'update pagarreceber'
      'set'
      '  PAR_ANEXO = :PAR_ANEXO,'
      '  PAR_BAIXADO = :PAR_BAIXADO,'
      '  PAR_CAT_ID = :PAR_CAT_ID,'
      '  PAR_CCO_ID = :PAR_CCO_ID,'
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
      '  PAR_NUMDOC = :PAR_NUMDOC,'
      '  PAR_OBSERVACAO = :PAR_OBSERVACAO,'
      '  PAR_PAGO = :PAR_PAGO,'
      '  PAR_PAGREC = :PAR_PAGREC,'
      '  PAR_PARCELAMAX = :PAR_PARCELAMAX,'
      '  PAR_PARCELANUM = :PAR_PARCELANUM,'
      '  PAR_PARCELAPAI = :PAR_PARCELAPAI,'
      '  PAR_TIPOBAIXA = :PAR_TIPOBAIXA,'
      '  PAR_VALOR = :PAR_VALOR,'
      '  PAR_VALORPAGO = :PAR_VALORPAGO,'
      '  PAR_VENDACOMISSIONADA_ID = :PAR_VENDACOMISSIONADA_ID,'
      '  PAR_VENDEDOR_ID = :PAR_VENDEDOR_ID'
      'where'
      '  PAR_ID = :OLD_PAR_ID')
    GeneratorField.Field = 'PAR_ID'
    GeneratorField.Generator = 'GEN_PAGARRECEBER'
    Left = 240
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
    object ibParcelaPAR_NUMDOC: TIBStringField
      FieldName = 'PAR_NUMDOC'
      Origin = 'PAGARRECEBER.PAR_NUMDOC'
      Size = 15
    end
    object ibParcelaPAR_BAIXADO: TIBStringField
      FieldName = 'PAR_BAIXADO'
      Origin = 'PAGARRECEBER.PAR_BAIXADO'
      FixedChar = True
      Size = 1
    end
    object ibParcelaPAR_CCO_ID: TIntegerField
      FieldName = 'PAR_CCO_ID'
      Origin = 'PAGARRECEBER.PAR_CCO_ID'
    end
    object ibParcelaPAR_TIPOBAIXA: TIBStringField
      FieldName = 'PAR_TIPOBAIXA'
      Origin = 'PAGARRECEBER.PAR_TIPOBAIXA'
      FixedChar = True
      Size = 1
    end
    object ibParcelaPAR_VENDACOMISSIONADA_ID: TIntegerField
      FieldName = 'PAR_VENDACOMISSIONADA_ID'
      Origin = 'PAGARRECEBER.PAR_VENDACOMISSIONADA_ID'
    end
    object ibParcelaPAR_VENDEDOR_ID: TIntegerField
      FieldName = 'PAR_VENDEDOR_ID'
      Origin = '"PAGARRECEBER"."PAR_VENDEDOR_ID"'
    end
  end
  object qGerador: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select gen_id(GEN_PAGARRECEBER,1) ID from rdb$database')
    Left = 640
    Top = 176
    object qGeradorID: TLargeintField
      FieldName = 'ID'
      ProviderFlags = []
    end
  end
  object qRelatorio: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from relatorio')
    Left = 552
    Top = 152
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
    Left = 584
    Top = 152
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
    Left = 532
    Top = 319
  end
  object cdsCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 264
    Top = 176
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
  object ibPagarreceberCheque: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    DeleteSQL.Strings = (
      'delete from pagarreceber_cheque'
      'where'
      '  PAC_ID = :OLD_PAC_ID')
    InsertSQL.Strings = (
      'insert into pagarreceber_cheque'
      '  (PAC_CHQ_ID, PAC_DH_CA, PAC_ID, PAC_PAR_ID)'
      'values'
      '  (:PAC_CHQ_ID, :PAC_DH_CA, :PAC_ID, :PAC_PAR_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  PAC_ID,'
      '  PAC_PAR_ID,'
      '  PAC_CHQ_ID,'
      '  PAC_DH_CA'
      'from pagarreceber_cheque '
      'where'
      '  PAC_ID = :PAC_ID')
    SelectSQL.Strings = (
      'select * from pagarreceber_cheque')
    ModifySQL.Strings = (
      'update pagarreceber_cheque'
      'set'
      '  PAC_CHQ_ID = :PAC_CHQ_ID,'
      '  PAC_DH_CA = :PAC_DH_CA,'
      '  PAC_ID = :PAC_ID,'
      '  PAC_PAR_ID = :PAC_PAR_ID'
      'where'
      '  PAC_ID = :OLD_PAC_ID')
    GeneratorField.Field = 'PAC_ID'
    GeneratorField.Generator = 'GEN_PAGARRECEBER_CHEQUE'
    Left = 112
    Top = 56
    object ibPagarreceberChequePAC_ID: TIntegerField
      FieldName = 'PAC_ID'
      Origin = '"PAGARRECEBER_CHEQUE"."PAC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibPagarreceberChequePAC_PAR_ID: TIntegerField
      FieldName = 'PAC_PAR_ID'
      Origin = '"PAGARRECEBER_CHEQUE"."PAC_PAR_ID"'
    end
    object ibPagarreceberChequePAC_CHQ_ID: TIntegerField
      FieldName = 'PAC_CHQ_ID'
      Origin = '"PAGARRECEBER_CHEQUE"."PAC_CHQ_ID"'
    end
    object ibPagarreceberChequePAC_DH_CA: TDateTimeField
      FieldName = 'PAC_DH_CA'
      Origin = '"PAGARRECEBER_CHEQUE"."PAC_DH_CA"'
    end
  end
  object dspPagarreceberCheque: TDataSetProvider
    DataSet = ibPagarreceberCheque
    Left = 152
    Top = 8
  end
  object cdsPagarreceberCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagarreceberCheque'
    Left = 192
    Top = 8
    object cdsPagarreceberChequePAC_ID: TIntegerField
      FieldName = 'PAC_ID'
    end
    object cdsPagarreceberChequePAC_PAR_ID: TIntegerField
      FieldName = 'PAC_PAR_ID'
    end
    object cdsPagarreceberChequePAC_CHQ_ID: TIntegerField
      FieldName = 'PAC_CHQ_ID'
    end
    object cdsPagarreceberChequePAC_DH_CA: TDateTimeField
      FieldName = 'PAC_DH_CA'
    end
  end
  object ibBaixado: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    DataSource = dsCadastro
    SQL.Strings = (
      'select case'
      '       when(pagarreceber_baixa.bxp_tipobaixa='#39'P'#39') then '#39'Parcial'#39
      '       when(pagarreceber_baixa.bxp_tipobaixa='#39'T'#39') then '#39'Total'#39
      '       end tipobaixa,'
      '       pagarreceber_baixa.bxp_datapagto,'
      '       pagarreceber_baixa.bxp_valor,'
      '       pagarreceber_baixa.bxp_observacao'
      '  from pagarreceber_baixa'
      ' where pagarreceber_baixa.bxp_par_id = :PAR_ID')
    Left = 160
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object ibBaixadoBXP_DATAPAGTO: TDateField
      FieldName = 'BXP_DATAPAGTO'
      Origin = 'PAGARRECEBER_BAIXA.BXP_DATAPAGTO'
    end
    object ibBaixadoBXP_VALOR: TIBBCDField
      FieldName = 'BXP_VALOR'
      Origin = 'PAGARRECEBER_BAIXA.BXP_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibBaixadoBXP_OBSERVACAO: TIBStringField
      FieldName = 'BXP_OBSERVACAO'
      Origin = 'PAGARRECEBER_BAIXA.BXP_OBSERVACAO'
      Size = 255
    end
    object ibBaixadoTIPOBAIXA: TIBStringField
      FieldName = 'TIPOBAIXA'
      FixedChar = True
      Size = 7
    end
  end
  object dsBaixado: TDataSource
    DataSet = ibBaixado
    Left = 192
    Top = 448
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 524760
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000020A302FF20A302FF20A302FF20A302FF20A302FF20A3
          02FF20A302FF20A302FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          000000000000000000000000EDFF0000EDFF0000EDFF0000EDFF0000EDFF0000
          EDFF0000EDFF0000EDFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          00000000000000000000FF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E00FFFF1E
          00FFFF1E00FFFF1E00FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000060402083A28
          144B000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C120924AC8156C99970
          46B9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002D1E1039D8AB7BF2FFE5C2FF926D
          48AB000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005C432870FFE2BEFFFFE0BBFF916D
          46AB000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005840276BFFDEB9FFFFE0BBFF916D
          46AB000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005840276BFFDEB9FFFFE0BBFF916D
          46AB000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000573F276AFFDFBAFFFFE1BCFF906B
          47AA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005944226BF9D4AFFFFAD7B1FF916F
          3FAC000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002E1F0F3BCFA771E6F5CFA6FFF5CEA5FFE2BB
          88F44B351A5F0000000000000000000000000000000000000000000000000000
          000000000000000000003F291652D6AC7FECFFE1BDFFFFDEB9FFFFDEB9FFFFE1
          BEFFECC499FB583D217000000000000000000000000000000000000000000000
          0000000000004A37165BE7BC92FBFFE1BDFFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
          B6FFFFE1BDFFF3CAA1FF664A267F000000000000000000000000000000000000
          0000432E1856EEC498FFFFE2BDFFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
          B6FFFEDCB6FFFFE1BCFFF6D1A8FF6647297F0000000000000000000000005339
          1F69F1CA9DFFFFE1BDFFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
          B6FFFEDCB6FFFEDCB6FFFFDFBAFFF9D5ACFF76543192030201046143257AF4CD
          A2FFFFE1BCFFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
          B6FFFEDCB6FFFEDCB6FFFEDCB6FFFFDFBBFFFAD7AFFF6F5031878E663CADFFE0
          BBFFFEDCB6FFFEDDB7FFFEDDB7FFFEDDB7FFFEDDB7FFFEDDB7FFFEDDB7FFFEDD
          B7FFFEDDB7FFFEDDB7FFFEDDB7FFFEDCB6FFFFE3C0FF95734EAC4E361D63825D
          379F825D379F825D379F825D379F825D379F825D379F825D379F825D379F825D
          379F825D379F825D379F825D379F825D379F825E379F4E371E63}
      end>
  end
end
