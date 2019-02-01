inherited FCadVendas: TFCadVendas
  Left = 298
  Top = 167
  Height = 600
  Caption = 'FCadVendas'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 531
    ActivePage = tsConsulta
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Height = 433
        inherited grConsultaDBTableView1: TcxGridDBTableView
          OnCustomDrawCell = grConsultaDBTableView1CustomDrawCell
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1CLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLIENTE'
            Width = 250
          end
          object grConsultaDBTableView1VENDEDOR: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'VENDEDOR'
            Width = 250
          end
          object grConsultaDBTableView1VEC_NUMDOCUMENTO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'VEC_NUMDOCUMENTO'
          end
          object grConsultaDBTableView1VEC_DATA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'VEC_DATA'
          end
          object grConsultaDBTableView1VEC_VALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VEC_VALOR'
          end
          object grConsultaDBTableView1VEC_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'VEC_OBSERVACAO'
            Width = 300
          end
          object grConsultaDBTableView1ORCAMENTO: TcxGridDBColumn
            Caption = 'Or'#231'amento'
            DataBinding.FieldName = 'ORCAMENTO'
            Width = 100
          end
          object grConsultaDBTableView1VEC_SITUACAO: TcxGridDBColumn
            DataBinding.FieldName = 'VEC_SITUACAO'
            Visible = False
          end
          object grConsultaDBTableView1SITUACAO: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'SITUACAO'
            Width = 100
          end
        end
      end
      inherited pnBarraPg: TPanel
        object Bevel6: TBevel [5]
          Left = 312
          Top = 5
          Width = 263
          Height = 40
        end
        object Label9: TLabel [6]
          Left = 326
          Top = 19
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        inherited rgAtivo: TRadioGroup
          Left = 640
          Width = 65
          Visible = False
        end
        object cxImageComboBox2: TcxImageComboBox
          Left = 376
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
              Description = 'Aberto'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Cancelado'
              ImageIndex = 2
              Value = 3
            end
            item
              Description = 'Fechado'
              ImageIndex = 1
              Value = 2
            end
            item
              Description = 'Todos'
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
      object PageControl1: TPageControl
        Left = 0
        Top = 52
        Width = 776
        Height = 450
        ActivePage = tsVendaComissionada
        Align = alClient
        Images = ImageList1
        TabOrder = 1
        object tsVendaComissionada: TTabSheet
          Caption = 'Venda Comissionada com Financeiro'
          ImageIndex = 7
          object Label1: TLabel
            Left = 136
            Top = 152
            Width = 63
            Height = 13
            Caption = 'Numero Doc.'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 24
            Top = 152
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label3: TLabel
            Left = 280
            Top = 152
            Width = 24
            Height = 13
            Caption = 'Valor'
            FocusControl = DBEdit3
          end
          object Label4: TLabel
            Left = 24
            Top = 200
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
          end
          object Label13: TLabel
            Left = 202
            Top = 59
            Width = 32
            Height = 13
            Caption = 'Cliente'
          end
          object Label5: TLabel
            Left = 24
            Top = 106
            Width = 46
            Height = 13
            Caption = 'Vendedor'
          end
          object Bevel2: TBevel
            Left = 24
            Top = 320
            Width = 600
            Height = 54
          end
          object Label6: TLabel
            Left = 24
            Top = 59
            Width = 52
            Height = 13
            Caption = 'Or'#231'amento'
          end
          object DBEdit1: TDBEdit
            Left = 136
            Top = 170
            Width = 134
            Height = 21
            DataField = 'VEC_NUMDOCUMENTO'
            DataSource = dsCadastro
            TabOrder = 10
          end
          object DBEdit3: TDBEdit
            Left = 280
            Top = 170
            Width = 134
            Height = 21
            DataField = 'VEC_VALOR'
            DataSource = dsCadastro
            TabOrder = 11
          end
          object DBMemo1: TDBMemo
            Left = 24
            Top = 216
            Width = 600
            Height = 89
            DataField = 'VEC_OBSERVACAO'
            DataSource = dsCadastro
            TabOrder = 12
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 24
            Top = 170
            DataBinding.DataField = 'VEC_DATA'
            DataBinding.DataSource = dsCadastro
            TabOrder = 9
            Width = 97
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 202
            Top = 75
            Width = 400
            Height = 21
            DataField = 'VEC_CLIENTE_ID'
            DataSource = dsCadastro
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsCliente
            TabOrder = 3
          end
          object btCACliente: TBitBtn
            Left = 601
            Top = 75
            Width = 22
            Height = 20
            Hint = 'Selecionar'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = btCAClienteClick
          end
          object btEXCliente: TBitBtn
            Left = 623
            Top = 75
            Width = 22
            Height = 20
            Hint = 'Apagar'
            Caption = 'x'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnClick = btEXClienteClick
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 24
            Top = 122
            Width = 400
            Height = 21
            DataField = 'VEC_VENDEDOR_ID'
            DataSource = dsCadastro
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsVendedor
            TabOrder = 6
          end
          object btCAVendedor: TBitBtn
            Left = 423
            Top = 122
            Width = 22
            Height = 20
            Hint = 'Selecionar'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = btCAVendedorClick
          end
          object btEXVendedor: TBitBtn
            Left = 445
            Top = 122
            Width = 22
            Height = 20
            Hint = 'Apagar'
            Caption = 'x'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnClick = btEXVendedorClick
          end
          object btGerarFinanceiro: TBitBtn
            Left = 32
            Top = 335
            Width = 112
            Height = 25
            Caption = 'Gerar Financeiro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            OnClick = btGerarFinanceiroClick
          end
          object btEXFinanceiro: TBitBtn
            Left = 166
            Top = 335
            Width = 22
            Height = 25
            Hint = 'Apagar'
            Caption = 'x'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
            OnClick = btEXFinanceiroClick
          end
          object btCAFinanceiro: TBitBtn
            Left = 144
            Top = 335
            Width = 22
            Height = 25
            Hint = 'Exibir'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
            OnClick = btCAFinanceiroClick
          end
          object DBEdit2: TDBEdit
            Left = 24
            Top = 75
            Width = 121
            Height = 21
            DataField = 'VCOR_CODIGO'
            DataSource = dsOrcamento
            TabOrder = 0
          end
          object BitBtn1: TBitBtn
            Left = 144
            Top = 75
            Width = 22
            Height = 20
            Hint = 'Selecionar'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn1Click
          end
          object BitBtn2: TBitBtn
            Left = 168
            Top = 75
            Width = 22
            Height = 20
            Hint = 'Apagar'
            Caption = 'x'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn2Click
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 24
            Top = 10
            Width = 257
            Height = 41
            Caption = '  Situa'#231#227'o  '
            Columns = 3
            DataField = 'VEC_SITUACAO'
            DataSource = dsCadastro
            Items.Strings = (
              'Aberto'
              'Fechado'
              'Cancelado')
            TabOrder = 16
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
      end
    end
  end
  inherited dsCadastro: TDataSource
    OnDataChange = dsCadastroDataChange
  end
  inherited dsConsulta: TDataSource
    DataSet = cdsConsulta
  end
  inherited ibCadastro: TIBDataSet
    BeforePost = ibCadastroBeforePost
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from venda_comissionada'
      'where'
      '  VEC_ID = :OLD_VEC_ID')
    InsertSQL.Strings = (
      'insert into venda_comissionada'
      
        '  (VEC_CLIENTE_ID, VEC_DATA, VEC_DH_CA, VEC_ID, VEC_NUMDOCUMENTO' +
        ', VEC_OBSERVACAO, '
      '   VEC_SITUACAO, VEC_VALOR, VEC_VCOR_ID, VEC_VENDEDOR_ID)'
      'values'
      
        '  (:VEC_CLIENTE_ID, :VEC_DATA, :VEC_DH_CA, :VEC_ID, :VEC_NUMDOCU' +
        'MENTO, '
      
        '   :VEC_OBSERVACAO, :VEC_SITUACAO, :VEC_VALOR, :VEC_VCOR_ID, :VE' +
        'C_VENDEDOR_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  VEC_ID,'
      '  VEC_VENDEDOR_ID,'
      '  VEC_CLIENTE_ID,'
      '  VEC_NUMDOCUMENTO,'
      '  VEC_DATA,'
      '  VEC_VALOR,'
      '  VEC_OBSERVACAO,'
      '  VEC_DH_CA,'
      '  VEC_VCOR_ID,'
      '  VEC_SITUACAO'
      'from venda_comissionada '
      'where'
      '  VEC_ID = :VEC_ID')
    SelectSQL.Strings = (
      'select venda_comissionada.*'
      '  from venda_comissionada'
      ' where venda_comissionada.vec_id = :FId')
    ModifySQL.Strings = (
      'update venda_comissionada'
      'set'
      '  VEC_CLIENTE_ID = :VEC_CLIENTE_ID,'
      '  VEC_DATA = :VEC_DATA,'
      '  VEC_DH_CA = :VEC_DH_CA,'
      '  VEC_ID = :VEC_ID,'
      '  VEC_NUMDOCUMENTO = :VEC_NUMDOCUMENTO,'
      '  VEC_OBSERVACAO = :VEC_OBSERVACAO,'
      '  VEC_SITUACAO = :VEC_SITUACAO,'
      '  VEC_VALOR = :VEC_VALOR,'
      '  VEC_VCOR_ID = :VEC_VCOR_ID,'
      '  VEC_VENDEDOR_ID = :VEC_VENDEDOR_ID'
      'where'
      '  VEC_ID = :OLD_VEC_ID')
    GeneratorField.Field = 'VEC_ID'
    GeneratorField.Generator = 'GEN_VENDA_COMISSIONADA'
    object ibCadastroVEC_ID: TIntegerField
      FieldName = 'VEC_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroVEC_VENDEDOR_ID: TIntegerField
      FieldName = 'VEC_VENDEDOR_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_VENDEDOR_ID"'
      Required = True
    end
    object ibCadastroVEC_CLIENTE_ID: TIntegerField
      FieldName = 'VEC_CLIENTE_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_CLIENTE_ID"'
      Required = True
    end
    object ibCadastroVEC_NUMDOCUMENTO: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
      Origin = '"VENDA_COMISSIONADA"."VEC_NUMDOCUMENTO"'
    end
    object ibCadastroVEC_DATA: TDateField
      FieldName = 'VEC_DATA'
      Origin = '"VENDA_COMISSIONADA"."VEC_DATA"'
    end
    object ibCadastroVEC_VALOR: TIBBCDField
      FieldName = 'VEC_VALOR'
      Origin = '"VENDA_COMISSIONADA"."VEC_VALOR"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroVEC_OBSERVACAO: TIBStringField
      FieldName = 'VEC_OBSERVACAO'
      Origin = '"VENDA_COMISSIONADA"."VEC_OBSERVACAO"'
      Size = 255
    end
    object ibCadastroVEC_DH_CA: TDateTimeField
      FieldName = 'VEC_DH_CA'
      Origin = '"VENDA_COMISSIONADA"."VEC_DH_CA"'
    end
    object ibCadastroVEC_VCOR_ID: TIntegerField
      FieldName = 'VEC_VCOR_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_VCOR_ID"'
    end
    object ibCadastroVEC_SITUACAO: TIntegerField
      FieldName = 'VEC_SITUACAO'
      Origin = '"VENDA_COMISSIONADA"."VEC_SITUACAO"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      ' select *'
      
        '   from (select venda_comissionada.vec_id ID,                   ' +
        '                                                                ' +
        '   '
      
        '                (select clientes.cli_cliente from clientes where' +
        ' clientes.cli_id = venda_comissionada.vec_vendedor_id) vendedor,' +
        '   '
      
        '                (select clientes.cli_cliente from clientes where' +
        ' clientes.cli_id = venda_comissionada.vec_cliente_id) cliente,  ' +
        '   '
      
        '                venda_comissionada.*,                           ' +
        '                                                                ' +
        '   '
      
        '                vcomiss_orcamento.vcor_codigo orcamento,        ' +
        '                                                                ' +
        '   '
      
        '                case                                            ' +
        '                                                                ' +
        '   '
      
        '                  when(coalesce(venda_comissionada.vec_situacao,' +
        '0)=0) then '#39'ABERTO'#39'                                             ' +
        ' '
      
        '                  when(coalesce(venda_comissionada.vec_situacao,' +
        '0)=1) then '#39'FECHADO'#39'                                            ' +
        ' '
      
        '                  when(coalesce(venda_comissionada.vec_situacao,' +
        '0)=2) then '#39'CANCELADO'#39'                                          ' +
        ' '
      
        '                end situacao,                                   ' +
        '                                                                ' +
        '   '
      
        '                case                                            ' +
        '                                                                ' +
        '   '
      
        '                  when(coalesce(venda_comissionada.vec_situacao,' +
        '0)=0) then 1                                                    ' +
        '   '
      
        '                  when(coalesce(venda_comissionada.vec_situacao,' +
        '0)=1) then 2                                                    ' +
        '   '
      
        '                  when(coalesce(venda_comissionada.vec_situacao,' +
        '0)=2) then 3                                                    ' +
        '   '
      
        '                end flag                                        ' +
        '                                                                ' +
        '   '
      
        '           from venda_comissionada                              ' +
        '                                                                ' +
        '   '
      
        '          left join vcomiss_orcamento on (vcomiss_orcamento.vcor' +
        '_id=venda_comissionada.vec_vcor_id)                             ' +
        '   '
      
        '          order by venda_comissionada.vec_id)                   ' +
        '                                                                ' +
        '   '
      
        '  where 1=1                                                     ' +
        '                                                                ' +
        '   ')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_ID"'
      Required = True
    end
    object qConsultaVEC_ID: TIntegerField
      FieldName = 'VEC_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaVEC_VENDEDOR_ID: TIntegerField
      FieldName = 'VEC_VENDEDOR_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_VENDEDOR_ID"'
      Required = True
    end
    object qConsultaVEC_CLIENTE_ID: TIntegerField
      FieldName = 'VEC_CLIENTE_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_CLIENTE_ID"'
      Required = True
    end
    object qConsultaVEC_NUMDOCUMENTO: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
      Origin = '"VENDA_COMISSIONADA"."VEC_NUMDOCUMENTO"'
    end
    object qConsultaVEC_DATA: TDateField
      FieldName = 'VEC_DATA'
      Origin = '"VENDA_COMISSIONADA"."VEC_DATA"'
    end
    object qConsultaVEC_VALOR: TIBBCDField
      FieldName = 'VEC_VALOR'
      Origin = '"VENDA_COMISSIONADA"."VEC_VALOR"'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qConsultaVEC_DH_CA: TDateTimeField
      FieldName = 'VEC_DH_CA'
      Origin = '"VENDA_COMISSIONADA"."VEC_DH_CA"'
    end
    object qConsultaVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object qConsultaCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object qConsultaVEC_OBSERVACAO: TIBStringField
      FieldName = 'VEC_OBSERVACAO'
      Origin = '"VENDA_COMISSIONADA"."VEC_OBSERVACAO"'
      Size = 255
    end
    object qConsultaORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
    end
    object qConsultaVEC_VCOR_ID: TIntegerField
      FieldName = 'VEC_VCOR_ID'
      Origin = '"VENDA_COMISSIONADA"."VEC_VCOR_ID"'
    end
    object qConsultaVEC_SITUACAO: TIntegerField
      FieldName = 'VEC_SITUACAO'
      Origin = '"VENDA_COMISSIONADA"."VEC_SITUACAO"'
    end
    object qConsultaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object qConsultaFLAG: TIntegerField
      FieldName = 'FLAG'
      ProviderFlags = []
    end
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Imprimir: TAction
      Caption = 'Lista'
    end
    object Act_Btn_ImprimirVenda: TAction
      Category = 'FormCadastros'
      Caption = 'Vendas'
      Hint = 'Imprimir Vendas'
      ImageIndex = 4
      ShortCut = 117
      OnExecute = Act_Btn_ImprimirExecute
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited dspConsulta: TDataSetProvider
    DataSet = qConsulta
  end
  inherited cdsConsulta: TClientDataSet
    ProviderName = 'dspConsulta'
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaVEC_ID: TIntegerField
      FieldName = 'VEC_ID'
      Required = True
    end
    object cdsConsultaVEC_VENDEDOR_ID: TIntegerField
      FieldName = 'VEC_VENDEDOR_ID'
      Required = True
    end
    object cdsConsultaVEC_CLIENTE_ID: TIntegerField
      FieldName = 'VEC_CLIENTE_ID'
      Required = True
    end
    object cdsConsultaVEC_NUMDOCUMENTO: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
    end
    object cdsConsultaVEC_DATA: TDateField
      FieldName = 'VEC_DATA'
    end
    object cdsConsultaVEC_VALOR: TBCDField
      FieldName = 'VEC_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVEC_DH_CA: TDateTimeField
      FieldName = 'VEC_DH_CA'
    end
    object cdsConsultaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object cdsConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsConsultaVEC_OBSERVACAO: TStringField
      FieldName = 'VEC_OBSERVACAO'
      Size = 255
    end
    object cdsConsultaORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
    end
    object cdsConsultaVEC_VCOR_ID: TIntegerField
      FieldName = 'VEC_VCOR_ID'
    end
    object cdsConsultaVEC_SITUACAO: TIntegerField
      FieldName = 'VEC_SITUACAO'
    end
    object cdsConsultaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 9
    end
    object cdsConsultaFLAG: TIntegerField
      FieldName = 'FLAG'
    end
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from sp_cliente_portipo(:TipoCli)')
    Left = 680
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoCli'
        ParamType = ptUnknown
      end>
    object qClienteID: TIntegerField
      FieldName = 'ID'
      Origin = '"SP_CLIENTE_PORTIPO"."ID"'
    end
    object qClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SP_CLIENTE_PORTIPO"."NOME"'
      Size = 100
    end
  end
  object dsCliente: TDataSource
    DataSet = qCliente
    Left = 712
    Top = 136
  end
  object qVendedor: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from sp_cliente_portipo(:TipoCli)')
    Left = 680
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoCli'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = '"SP_CLIENTE_PORTIPO"."ID"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME'
      Origin = '"SP_CLIENTE_PORTIPO"."NOME"'
      Size = 100
    end
  end
  object dsVendedor: TDataSource
    DataSet = qVendedor
    Left = 712
    Top = 192
  end
  object qExisteFinanceiro: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select count(*) encontrou'
      '  from pagarreceber'
      ' where pagarreceber.par_vendacomissionada_id = :vendac_id')
    Left = 680
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vendac_id'
        ParamType = ptUnknown
      end>
    object qExisteFinanceiroENCONTROU: TIntegerField
      FieldName = 'ENCONTROU'
      Required = True
    end
  end
  object dsExisteFinanceiro: TDataSource
    DataSet = qExisteFinanceiro
    Left = 712
    Top = 248
  end
  object cdsFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 680
    Top = 312
    object cdsFinanceiroPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
    end
  end
  object qOrcamento: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    DataSource = dsCadastro
    SQL.Strings = (
      'select *'
      '  from vcomiss_orcamento'
      ' where vcomiss_orcamento.vcor_id = :VEC_VCOR_ID')
    Left = 680
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VEC_VCOR_ID'
        ParamType = ptUnknown
      end>
    object qOrcamentoVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrcamentoVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object qOrcamentoVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DATAEMISSAO"'
    end
    object qOrcamentoVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CLIENTE_ID"'
    end
    object qOrcamentoVCOR_VALORTOTAL: TIBBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_VALORTOTAL"'
      Precision = 18
      Size = 2
    end
    object qOrcamentoVCOR_CONDICAOPAGTO: TIBStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CONDICAOPAGTO"'
      Size = 100
    end
    object qOrcamentoVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DH_CA"'
    end
  end
  object dsOrcamento: TDataSource
    DataSet = qOrcamento
    Left = 712
    Top = 360
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 524920
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
  object frxListaVendas: TfrxDBDataset
    UserName = 'frxListaVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'VEC_ID=VEC_ID'
      'VEC_VENDEDOR_ID=VEC_VENDEDOR_ID'
      'VEC_CLIENTE_ID=VEC_CLIENTE_ID'
      'VEC_NUMDOCUMENTO=VEC_NUMDOCUMENTO'
      'VEC_DATA=VEC_DATA'
      'VEC_VALOR=VEC_VALOR'
      'VEC_DH_CA=VEC_DH_CA'
      'VENDEDOR=VENDEDOR'
      'CLIENTE=CLIENTE'
      'VEC_OBSERVACAO=VEC_OBSERVACAO'
      'ORCAMENTO=ORCAMENTO'
      'VEC_VCOR_ID=VEC_VCOR_ID'
      'VEC_SITUACAO=VEC_SITUACAO'
      'SITUACAO=SITUACAO'
      'FLAG=FLAG')
    DataSet = cdsConsulta
    BCDToCurrency = False
    Left = 460
    Top = 183
  end
end
