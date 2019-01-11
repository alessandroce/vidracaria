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
    Height = 532
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Height = 434
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
      inherited pnBarraPg: TPanel
        inherited rgAtivo: TRadioGroup
          Left = 640
          Width = 65
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 484
      end
    end
    inherited tsCadastro: TTabSheet
      object PageControl1: TPageControl
        Left = 0
        Top = 52
        Width = 776
        Height = 451
        ActivePage = tsVendaComissionada
        Align = alClient
        Images = ImageList1
        TabOrder = 1
        object tsVendaComissionada: TTabSheet
          Caption = 'Venda Comissionada com Financeiro'
          ImageIndex = 7
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
            Top = 144
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
          object Label6: TLabel
            Left = 432
            Top = 5
            Width = 52
            Height = 13
            Caption = 'Or'#231'amento'
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
            Top = 160
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
            Hint = 'Exibir'
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
          object DBEdit2: TDBEdit
            Left = 432
            Top = 21
            Width = 121
            Height = 21
            DataField = 'VCOR_CODIGO'
            DataSource = dsOrcamento
            TabOrder = 13
          end
          object BitBtn1: TBitBtn
            Left = 552
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
            TabOrder = 14
            OnClick = BitBtn1Click
          end
          object BitBtn2: TBitBtn
            Left = 576
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
            TabOrder = 15
            OnClick = BitBtn2Click
          end
        end
      end
    end
  end
  inherited dsCadastro: TDataSource
    OnDataChange = dsCadastroDataChange
  end
  inherited ibCadastro: TIBDataSet
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from venda_comissionada'
      'where'
      '  VEC_ID = :OLD_VEC_ID')
    InsertSQL.Strings = (
      'insert into venda_comissionada'
      
        '  (VEC_CLIENTE_ID, VEC_DATA, VEC_DH_CA, VEC_ID, VEC_NUMDOCUMENTO' +
        ', VEC_OBSERVACAO, '
      '   VEC_VALOR, VEC_VCOR_ID, VEC_VENDEDOR_ID)'
      'values'
      
        '  (:VEC_CLIENTE_ID, :VEC_DATA, :VEC_DH_CA, :VEC_ID, :VEC_NUMDOCU' +
        'MENTO, '
      '   :VEC_OBSERVACAO, :VEC_VALOR, :VEC_VCOR_ID, :VEC_VENDEDOR_ID)')
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
      '  VEC_VCOR_ID'
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
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select venda_comissionada.vec_id ID,'
      
        '       (select clientes.cli_cliente from clientes where clientes' +
        '.cli_id = venda_comissionada.vec_vendedor_id) vendedor,'
      
        '       (select clientes.cli_cliente from clientes where clientes' +
        '.cli_id = venda_comissionada.vec_cliente_id) cliente,'
      '       venda_comissionada.*'
      '  from venda_comissionada'
      ' order by venda_comissionada.vec_id')
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
    BufferChunks = 1000
    CachedUpdates = False
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
    BufferChunks = 1000
    CachedUpdates = False
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
    BufferChunks = 1000
    CachedUpdates = False
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
    BufferChunks = 1000
    CachedUpdates = False
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
end
