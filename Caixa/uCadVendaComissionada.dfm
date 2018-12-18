inherited FCadVendaComissionada: TFCadVendaComissionada
  Left = 298
  Top = 167
  Height = 600
  Caption = 'FCadVendaComissionada'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 531
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Height = 433
        inherited grConsultaDBTableView1: TcxGridDBTableView
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
          object Bevel3: TBevel
            Left = 24
            Top = 336
            Width = 393
            Height = 54
            Visible = False
          end
          object Label1: TLabel
            Left = 136
            Top = 96
            Width = 63
            Height = 13
            Caption = 'Numero Doc.'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 24
            Top = 96
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label3: TLabel
            Left = 280
            Top = 96
            Width = 24
            Height = 13
            Caption = 'Valor'
            FocusControl = DBEdit3
          end
          object Label4: TLabel
            Left = 24
            Top = 152
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
          end
          object Label13: TLabel
            Left = 24
            Top = 5
            Width = 32
            Height = 13
            Caption = 'Cliente'
          end
          object Label5: TLabel
            Left = 24
            Top = 50
            Width = 46
            Height = 13
            Caption = 'Vendedor'
          end
          object Bevel2: TBevel
            Left = 24
            Top = 264
            Width = 393
            Height = 54
          end
          object Label10: TLabel
            Left = 32
            Top = 360
            Width = 353
            Height = 13
            Caption = 'Gera-se a Venda Comissionada para ent'#227'o gerar o Financeiro.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label17: TLabel
            Left = 32
            Top = 344
            Width = 31
            Height = 13
            Caption = 'Obs.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object DBEdit1: TDBEdit
            Left = 136
            Top = 114
            Width = 134
            Height = 21
            DataField = 'VEC_NUMDOCUMENTO'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 280
            Top = 114
            Width = 134
            Height = 21
            DataField = 'VEC_VALOR'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBMemo1: TDBMemo
            Left = 24
            Top = 168
            Width = 393
            Height = 89
            DataField = 'VEC_OBSERVACAO'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 24
            Top = 114
            DataBinding.DataField = 'VEC_DATA'
            DataBinding.DataSource = dsCadastro
            TabOrder = 3
            Width = 97
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 24
            Top = 21
            Width = 344
            Height = 21
            DataField = 'VEC_CLIENTE_ID'
            DataSource = dsCadastro
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsCliente
            TabOrder = 4
          end
          object btCACliente: TBitBtn
            Left = 368
            Top = 21
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
            TabOrder = 5
            OnClick = btCAClienteClick
          end
          object btEXCliente: TBitBtn
            Left = 390
            Top = 21
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
            TabOrder = 6
            OnClick = btEXClienteClick
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 24
            Top = 66
            Width = 344
            Height = 21
            DataField = 'VEC_VENDEDOR_ID'
            DataSource = dsCadastro
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsVendedor
            TabOrder = 7
          end
          object btCAVendedor: TBitBtn
            Left = 368
            Top = 66
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
            TabOrder = 8
            OnClick = btCAVendedorClick
          end
          object btEXVendedor: TBitBtn
            Left = 390
            Top = 66
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
            TabOrder = 9
            OnClick = btEXVendedorClick
          end
          object btGerarFinanceiro: TBitBtn
            Left = 32
            Top = 279
            Width = 112
            Height = 25
            Caption = 'Gerar Financeiro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            OnClick = btGerarFinanceiroClick
          end
          object btEXFinanceiro: TBitBtn
            Left = 166
            Top = 279
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
            TabOrder = 11
            OnClick = btEXFinanceiroClick
          end
          object btCAFinanceiro: TBitBtn
            Left = 144
            Top = 279
            Width = 22
            Height = 25
            Hint = 'Ver'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
            OnClick = btCAFinanceiroClick
          end
        end
        object tsFinanceiro: TTabSheet
          Caption = 'Financeiro sem Venda Comissionada'
          ImageIndex = 7
          object Bevel5: TBevel
            Left = 24
            Top = 336
            Width = 393
            Height = 54
          end
          object Label6: TLabel
            Left = 136
            Top = 163
            Width = 63
            Height = 13
            Caption = 'Numero Doc.'
            FocusControl = DBEdit2
          end
          object Label7: TLabel
            Left = 24
            Top = 163
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label8: TLabel
            Left = 280
            Top = 163
            Width = 24
            Height = 13
            Caption = 'Valor'
            FocusControl = DBEdit4
          end
          object Label9: TLabel
            Left = 24
            Top = 219
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
          end
          object Label11: TLabel
            Left = 24
            Top = 117
            Width = 46
            Height = 13
            Caption = 'Vendedor'
          end
          object Bevel4: TBevel
            Left = 24
            Top = 16
            Width = 393
            Height = 54
          end
          object Label12: TLabel
            Left = 232
            Top = 27
            Width = 172
            Height = 13
            Caption = 'Os registros selecionados devem ser'
          end
          object Label14: TLabel
            Left = 232
            Top = 43
            Width = 95
            Height = 13
            Caption = 'de um '#250'nico cliente.'
          end
          object Label15: TLabel
            Left = 32
            Top = 360
            Width = 376
            Height = 13
            Caption = 'Gera-se a Venda Comissionada depois de ter gerado o Financeiro.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 32
            Top = 344
            Width = 31
            Height = 13
            Caption = 'Obs.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 24
            Top = 75
            Width = 32
            Height = 13
            Caption = 'Cliente'
          end
          object Label19: TLabel
            Left = 464
            Top = 368
            Width = 220
            Height = 13
            Caption = 'PROPRIEDADE tsFinanceiro := FALSE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object DBEdit2: TDBEdit
            Left = 136
            Top = 181
            Width = 134
            Height = 21
            DataField = 'VEC_NUMDOCUMENTO'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 280
            Top = 181
            Width = 134
            Height = 21
            DataField = 'VEC_VALOR'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBMemo2: TDBMemo
            Left = 24
            Top = 235
            Width = 393
            Height = 89
            DataField = 'VEC_OBSERVACAO'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 24
            Top = 181
            DataBinding.DataField = 'VEC_DATA'
            DataBinding.DataSource = dsCadastro
            TabOrder = 3
            Width = 97
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 24
            Top = 133
            Width = 344
            Height = 21
            DataField = 'VEC_VENDEDOR_ID'
            DataSource = dsCadastro
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsVendedor
            TabOrder = 4
          end
          object btCAVendedor2: TBitBtn
            Left = 368
            Top = 133
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
            OnClick = btCAVendedorClick
          end
          object btEXVendedor2: TBitBtn
            Left = 390
            Top = 133
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
            OnClick = btEXVendedorClick
          end
          object btSelecionarFinanceiro: TBitBtn
            Left = 32
            Top = 31
            Width = 145
            Height = 25
            Caption = 'Vincular Financeiro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = btSelecionarFinanceiroClick
          end
          object btCAFinanceiro2: TBitBtn
            Left = 177
            Top = 31
            Width = 22
            Height = 25
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnClick = btCAFinanceiroClick
          end
          object btEXFinanceiro2: TBitBtn
            Left = 199
            Top = 31
            Width = 22
            Height = 25
            Caption = 'x'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            OnClick = btEXFinanceiro2Click
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 24
            Top = 91
            Width = 344
            Height = 21
            DataField = 'VEC_CLIENTE_ID'
            DataSource = dsCadastro
            KeyField = 'ID'
            ListField = 'NOME'
            ListSource = dsCliente
            TabOrder = 10
          end
          object btCACliente2: TBitBtn
            Left = 368
            Top = 91
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
            OnClick = btCAClienteClick
          end
          object btEXCliente2: TBitBtn
            Left = 390
            Top = 91
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
            OnClick = btEXClienteClick
          end
        end
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    AfterPost = ibCadastroAfterPost
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
      '   VEC_VALOR, VEC_VENDEDOR_ID)'
      'values'
      
        '  (:VEC_CLIENTE_ID, :VEC_DATA, :VEC_DH_CA, :VEC_ID, :VEC_NUMDOCU' +
        'MENTO, '
      '   :VEC_OBSERVACAO, :VEC_VALOR, :VEC_VENDEDOR_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  VEC_ID,'
      '  VEC_VENDEDOR_ID,'
      '  VEC_CLIENTE_ID,'
      '  VEC_NUMDOCUMENTO,'
      '  VEC_DATA,'
      '  VEC_VALOR,'
      '  VEC_OBSERVACAO,'
      '  VEC_DH_CA'
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
      '  VEC_VALOR = :VEC_VALOR,'
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
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select venda_comissionada.vec_id ID,'
      
        '       (select clientes.cli_cliente from clientes where clientes' +
        '.cli_id = venda_comissionada.vec_vendedor_id) vendedor,'
      
        '       (select clientes.cli_cliente from clientes where clientes' +
        '.cli_id = venda_comissionada.vec_cliente_id) cliente,'
      '       venda_comissionada.*'
      '  from venda_comissionada')
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
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from sp_cliente_portipo(:TipoCli)')
    Left = 592
    Top = 104
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
    Left = 624
    Top = 104
  end
  object qVendedor: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from sp_cliente_portipo(:TipoCli)')
    Left = 592
    Top = 160
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
    Left = 624
    Top = 160
  end
  object qExisteFinanceiro: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select count(*) encontrou'
      '  from pagarreceber'
      ' where pagarreceber.par_vendacomissionada_id = :vendac_id')
    Left = 592
    Top = 216
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
    Left = 624
    Top = 216
  end
  object cdsFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 280
    object cdsFinanceiroPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
    end
  end
end
