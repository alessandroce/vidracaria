inherited FCadContratoVComiss: TFCadContratoVComiss
  Left = 301
  Top = 167
  Width = 797
  Height = 600
  Caption = 'FCadContratoVComiss'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Width = 781
    Height = 531
    ActivePage = tsConsulta
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Width = 773
        Height = 433
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Column = grConsultaDBTableView1VCCON_CODIGO
            end
            item
              Kind = skSum
              Column = grConsultaDBTableView1VEC_VALOR
            end
            item
              Kind = skSum
              Column = grConsultaDBTableView1VCCON_VALORTOTAL
            end
            item
              Kind = skSum
              Column = grConsultaDBTableView1VCCON_DESCONTO
            end
            item
              Kind = skSum
              Column = grConsultaDBTableView1VCCON_VALORFINAL
            end>
          object grConsultaDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object grConsultaDBTableView1VCCON_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCCON_ID'
            Visible = False
          end
          object grConsultaDBTableView1VCCON_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'VCCON_CODIGO'
          end
          object grConsultaDBTableView1VCCON_DATAEMISSAO: TcxGridDBColumn
            Caption = 'Data Emiss'#227'o'
            DataBinding.FieldName = 'VCCON_DATAEMISSAO'
          end
          object grConsultaDBTableView1VCCON_NUMEROVENDA: TcxGridDBColumn
            Caption = 'Numero Venda'
            DataBinding.FieldName = 'VCCON_NUMEROVENDA'
            Width = 100
          end
          object grConsultaDBTableView1VEC_NUMDOCUMENTO: TcxGridDBColumn
            Caption = 'Numero Venda'
            DataBinding.FieldName = 'VEC_NUMDOCUMENTO'
            Visible = False
          end
          object grConsultaDBTableView1VCCON_CLIENTE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCCON_CLIENTE_ID'
            Visible = False
          end
          object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_CLIENTE'
            Width = 300
          end
          object grConsultaDBTableView1VCCON_NOME: TcxGridDBColumn
            Caption = 'Nome Contrato'
            DataBinding.FieldName = 'VCCON_NOME'
            Width = 300
          end
          object grConsultaDBTableView1VCCON_CPF: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'VCCON_CPF'
          end
          object grConsultaDBTableView1VCCON_ENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'VCCON_ENDERECO'
            Width = 300
          end
          object grConsultaDBTableView1VCCON_FONES: TcxGridDBColumn
            Caption = 'Fones'
            DataBinding.FieldName = 'VCCON_FONES'
            Width = 200
          end
          object grConsultaDBTableView1VEC_VALOR: TcxGridDBColumn
            Caption = 'Valor Venda'
            DataBinding.FieldName = 'VEC_VALOR'
          end
          object grConsultaDBTableView1VCCON_VALORTOTAL: TcxGridDBColumn
            Caption = 'Valor Or'#231'amento'
            DataBinding.FieldName = 'VCCON_VALORTOTAL'
            Width = 100
          end
          object grConsultaDBTableView1VCCON_DESCONTO: TcxGridDBColumn
            Caption = 'Desconto Or'#231'.'
            DataBinding.FieldName = 'VCCON_DESCONTO'
            Width = 100
          end
          object grConsultaDBTableView1VCCON_VALORFINAL: TcxGridDBColumn
            Caption = 'Valor Final'
            DataBinding.FieldName = 'VCCON_VALORFINAL'
            Width = 100
          end
          object grConsultaDBTableView1VCCON_FORMAPAGTO: TcxGridDBColumn
            Caption = 'Forma Pagamento'
            DataBinding.FieldName = 'VCCON_FORMAPAGTO'
            Width = 300
          end
          object grConsultaDBTableView1VCCON_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'VCCON_OBSERVACAO'
            Width = 300
          end
          object grConsultaDBTableView1VCCON_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'VCCON_DH_CA'
            Visible = False
          end
          object grConsultaDBTableView1VCCON_VEC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCCON_VEC_ID'
            Visible = False
          end
        end
      end
      inherited pnBarraPg: TPanel
        Width = 773
        inherited btImprimir: TSpeedButton
          Caption = 'Lista'
        end
        object SpeedButton1: TSpeedButton [5]
          Left = 245
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_ImprimirContrato
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
            CC00CCCCCC0000000000CCCCCC0000000000FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000CCCCCC0000000000FF00FF0000000000CCCC
            CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000FFFF0000FFFF0000FF
            FF00CCCCCC00CCCCCC00000000000000000000000000FF00FF0000000000CCCC
            CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0084848400848484008484
            8400CCCCCC00CCCCCC0000000000CCCCCC0000000000FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000CCCCCC00CCCCCC000000000000000000CCCC
            CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
            CC00CCCCCC0000000000CCCCCC0000000000CCCCCC0000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000CCCCCC0000000000CCCCCC000000000000000000FF00FF00FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000CCCCCC0000000000CCCCCC0000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
            0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
            000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
        end
        inherited rgAtivo: TRadioGroup
          Left = 648
          Width = 58
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 483
        Width = 773
      end
    end
    inherited tsCadastro: TTabSheet
      object Bevel3: TBevel [0]
        Left = 28
        Top = 230
        Width = 649
        Height = 219
      end
      object Bevel2: TBevel [1]
        Left = 28
        Top = 113
        Width = 649
        Height = 108
      end
      inherited Bevel1: TBevel
        Width = 773
      end
      object Label1: TLabel [3]
        Left = 36
        Top = 64
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [4]
        Left = 130
        Top = 64
        Width = 65
        Height = 13
        Caption = 'Data Emiss'#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [5]
        Left = 36
        Top = 124
        Width = 77
        Height = 13
        Caption = 'Nome (Contrato)'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [6]
        Left = 490
        Top = 124
        Width = 20
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [7]
        Left = 36
        Top = 170
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [8]
        Left = 490
        Top = 170
        Width = 47
        Height = 13
        Caption = 'Telefones'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [9]
        Left = 39
        Top = 242
        Width = 51
        Height = 13
        Caption = 'Valor Total'
        FocusControl = DBEdit7
      end
      object Label8: TLabel [10]
        Left = 150
        Top = 242
        Width = 46
        Height = 13
        Caption = 'Desconto'
        FocusControl = DBEdit8
      end
      object Label9: TLabel [11]
        Left = 260
        Top = 242
        Width = 49
        Height = 13
        Caption = 'Valor Final'
        FocusControl = DBEdit9
      end
      object Label10: TLabel [12]
        Left = 36
        Top = 290
        Width = 86
        Height = 13
        Caption = 'Forma Pagamento'
      end
      object Label11: TLabel [13]
        Left = 36
        Top = 370
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
      end
      object Label13: TLabel [14]
        Left = 375
        Top = 65
        Width = 176
        Height = 13
        Caption = 'Cliente NAO USA, PEGA DA VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label12: TLabel [15]
        Left = 225
        Top = 63
        Width = 31
        Height = 13
        Caption = 'Venda'
      end
      inherited Panel1: TPanel
        Width = 773
      end
      object DBEdit1: TDBEdit
        Left = 36
        Top = 80
        Width = 90
        Height = 21
        DataField = 'VCCON_CODIGO'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 130
        Top = 80
        Width = 90
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'VCCON_DATAEMISSAO'
        DataSource = dsCadastro
        ParentBiDiMode = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 36
        Top = 140
        Width = 450
        Height = 21
        DataField = 'VCCON_NOME'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 490
        Top = 140
        Width = 130
        Height = 21
        DataField = 'VCCON_CPF'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 36
        Top = 186
        Width = 450
        Height = 21
        DataField = 'VCCON_ENDERECO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 490
        Top = 186
        Width = 169
        Height = 21
        DataField = 'VCCON_FONES'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 39
        Top = 258
        Width = 100
        Height = 21
        DataField = 'VCCON_VALORTOTAL'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 150
        Top = 258
        Width = 100
        Height = 21
        DataField = 'VCCON_DESCONTO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 260
        Top = 258
        Width = 100
        Height = 21
        DataField = 'VCCON_VALORFINAL'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object DBMemo1: TDBMemo
        Left = 36
        Top = 306
        Width = 500
        Height = 55
        DataField = 'VCCON_FORMAPAGTO'
        DataSource = dsCadastro
        TabOrder = 10
      end
      object DBMemo2: TDBMemo
        Left = 36
        Top = 386
        Width = 500
        Height = 55
        DataField = 'VCCON_OBSERVACAO'
        DataSource = dsCadastro
        TabOrder = 11
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 375
        Top = 81
        Width = 300
        Height = 21
        DataField = 'VCCON_CLIENTE_ID'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dsCliente
        TabOrder = 12
        Visible = False
      end
      object btCACliente: TBitBtn
        Left = 674
        Top = 81
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
        TabOrder = 13
        Visible = False
        OnClick = btCAClienteClick
      end
      object btEXCliente: TBitBtn
        Left = 696
        Top = 81
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
        TabOrder = 14
        Visible = False
        OnClick = btEXClienteClick
      end
      object DBEdit10: TDBEdit
        Left = 225
        Top = 79
        Width = 100
        Height = 21
        DataField = 'VCCON_NUMEROVENDA'
        DataSource = dsCadastro
        TabOrder = 15
      end
      object BitBtn1: TBitBtn
        Left = 322
        Top = 79
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
        TabOrder = 16
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 346
        Top = 79
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
        TabOrder = 17
        OnClick = BitBtn2Click
      end
    end
  end
  inherited pnBarraForm: TPanel
    Width = 781
  end
  inherited dsConsulta: TDataSource
    DataSet = cdsConsulta
  end
  inherited ibCadastro: TIBDataSet
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from vcomiss_contrato'
      'where'
      '  VCCON_ID = :OLD_VCCON_ID')
    InsertSQL.Strings = (
      'insert into vcomiss_contrato'
      
        '  (VCCON_CLIENTE_ID, VCCON_CODIGO, VCCON_CPF, VCCON_DATAEMISSAO,' +
        ' VCCON_DESCONTO, '
      
        '   VCCON_DH_CA, VCCON_ENDERECO, VCCON_FONES, VCCON_FORMAPAGTO, V' +
        'CCON_ID, '
      
        '   VCCON_NOME, VCCON_NUMEROVENDA, VCCON_OBSERVACAO, VCCON_VALORF' +
        'INAL, VCCON_VALORTOTAL, '
      '   VCCON_VEC_ID)'
      'values'
      
        '  (:VCCON_CLIENTE_ID, :VCCON_CODIGO, :VCCON_CPF, :VCCON_DATAEMIS' +
        'SAO, :VCCON_DESCONTO, '
      
        '   :VCCON_DH_CA, :VCCON_ENDERECO, :VCCON_FONES, :VCCON_FORMAPAGT' +
        'O, :VCCON_ID, '
      
        '   :VCCON_NOME, :VCCON_NUMEROVENDA, :VCCON_OBSERVACAO, :VCCON_VA' +
        'LORFINAL, '
      '   :VCCON_VALORTOTAL, :VCCON_VEC_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  VCCON_ID,'
      '  VCCON_CODIGO,'
      '  VCCON_DATAEMISSAO,'
      '  VCCON_CLIENTE_ID,'
      '  VCCON_NOME,'
      '  VCCON_CPF,'
      '  VCCON_ENDERECO,'
      '  VCCON_FONES,'
      '  VCCON_VALORTOTAL,'
      '  VCCON_DESCONTO,'
      '  VCCON_VALORFINAL,'
      '  VCCON_FORMAPAGTO,'
      '  VCCON_OBSERVACAO,'
      '  VCCON_DH_CA,'
      '  VCCON_VEC_ID,'
      '  VCCON_NUMEROVENDA'
      'from vcomiss_contrato '
      'where'
      '  VCCON_ID = :VCCON_ID')
    SelectSQL.Strings = (
      
        'select * from vcomiss_contrato where vcomiss_contrato.vccon_id =' +
        ' :FId')
    ModifySQL.Strings = (
      'update vcomiss_contrato'
      'set'
      '  VCCON_CLIENTE_ID = :VCCON_CLIENTE_ID,'
      '  VCCON_CODIGO = :VCCON_CODIGO,'
      '  VCCON_CPF = :VCCON_CPF,'
      '  VCCON_DATAEMISSAO = :VCCON_DATAEMISSAO,'
      '  VCCON_DESCONTO = :VCCON_DESCONTO,'
      '  VCCON_DH_CA = :VCCON_DH_CA,'
      '  VCCON_ENDERECO = :VCCON_ENDERECO,'
      '  VCCON_FONES = :VCCON_FONES,'
      '  VCCON_FORMAPAGTO = :VCCON_FORMAPAGTO,'
      '  VCCON_ID = :VCCON_ID,'
      '  VCCON_NOME = :VCCON_NOME,'
      '  VCCON_NUMEROVENDA = :VCCON_NUMEROVENDA,'
      '  VCCON_OBSERVACAO = :VCCON_OBSERVACAO,'
      '  VCCON_VALORFINAL = :VCCON_VALORFINAL,'
      '  VCCON_VALORTOTAL = :VCCON_VALORTOTAL,'
      '  VCCON_VEC_ID = :VCCON_VEC_ID'
      'where'
      '  VCCON_ID = :OLD_VCCON_ID')
    GeneratorField.Field = 'VCCON_ID'
    GeneratorField.Generator = 'GEN_VCOMISS_CONTRATO'
    Left = 392
    object ibCadastroVCCON_ID: TIntegerField
      FieldName = 'VCCON_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroVCCON_CODIGO: TIntegerField
      FieldName = 'VCCON_CODIGO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CODIGO"'
      Required = True
    end
    object ibCadastroVCCON_DATAEMISSAO: TDateTimeField
      FieldName = 'VCCON_DATAEMISSAO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DATAEMISSAO"'
      EditMask = '!99/99/0000;1;_'
    end
    object ibCadastroVCCON_CLIENTE_ID: TIntegerField
      FieldName = 'VCCON_CLIENTE_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CLIENTE_ID"'
    end
    object ibCadastroVCCON_NOME: TIBStringField
      FieldName = 'VCCON_NOME'
      Origin = '"VCOMISS_CONTRATO"."VCCON_NOME"'
      Size = 100
    end
    object ibCadastroVCCON_CPF: TIBStringField
      FieldName = 'VCCON_CPF'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CPF"'
      Size = 15
    end
    object ibCadastroVCCON_ENDERECO: TIBStringField
      FieldName = 'VCCON_ENDERECO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ENDERECO"'
      Size = 100
    end
    object ibCadastroVCCON_FONES: TIBStringField
      FieldName = 'VCCON_FONES'
      Origin = '"VCOMISS_CONTRATO"."VCCON_FONES"'
      Size = 50
    end
    object ibCadastroVCCON_VALORTOTAL: TIBBCDField
      FieldName = 'VCCON_VALORTOTAL'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VALORTOTAL"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroVCCON_DESCONTO: TIBBCDField
      FieldName = 'VCCON_DESCONTO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DESCONTO"'
      OnChange = ibCadastroVCCON_DESCONTOChange
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroVCCON_VALORFINAL: TIBBCDField
      FieldName = 'VCCON_VALORFINAL'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VALORFINAL"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroVCCON_FORMAPAGTO: TIBStringField
      FieldName = 'VCCON_FORMAPAGTO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_FORMAPAGTO"'
      Size = 255
    end
    object ibCadastroVCCON_OBSERVACAO: TIBStringField
      FieldName = 'VCCON_OBSERVACAO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_OBSERVACAO"'
      Size = 255
    end
    object ibCadastroVCCON_DH_CA: TDateTimeField
      FieldName = 'VCCON_DH_CA'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DH_CA"'
    end
    object ibCadastroVCCON_VEC_ID: TIntegerField
      FieldName = 'VCCON_VEC_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VEC_ID"'
    end
    object ibCadastroVCCON_NUMEROVENDA: TIntegerField
      FieldName = 'VCCON_NUMEROVENDA'
      Origin = '"VCOMISS_CONTRATO"."VCCON_NUMEROVENDA"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select vcomiss_contrato.vccon_id ID,'
      '       vcomiss_contrato.*,'
      '       clientes.cli_cliente,'
      '       venda_comissionada.vec_numdocumento,'
      '       venda_comissionada.vec_valor'
      '  from vcomiss_contrato'
      
        ' left join clientes on (clientes.cli_id=vcomiss_contrato.vccon_c' +
        'liente_id)'
      
        ' left join venda_comissionada on (venda_comissionada.vec_id=vcom' +
        'iss_contrato.vccon_vec_id)'
      ' where vcomiss_contrato.vccon_id>-1')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ID"'
      Required = True
    end
    object qConsultaVCCON_ID: TIntegerField
      FieldName = 'VCCON_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaVCCON_CODIGO: TIntegerField
      FieldName = 'VCCON_CODIGO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CODIGO"'
      Required = True
    end
    object qConsultaVCCON_DATAEMISSAO: TDateTimeField
      FieldName = 'VCCON_DATAEMISSAO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DATAEMISSAO"'
    end
    object qConsultaVCCON_CLIENTE_ID: TIntegerField
      FieldName = 'VCCON_CLIENTE_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CLIENTE_ID"'
    end
    object qConsultaVCCON_NOME: TIBStringField
      FieldName = 'VCCON_NOME'
      Origin = '"VCOMISS_CONTRATO"."VCCON_NOME"'
      Size = 100
    end
    object qConsultaVCCON_CPF: TIBStringField
      FieldName = 'VCCON_CPF'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CPF"'
      Size = 15
    end
    object qConsultaVCCON_ENDERECO: TIBStringField
      FieldName = 'VCCON_ENDERECO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ENDERECO"'
      Size = 100
    end
    object qConsultaVCCON_FONES: TIBStringField
      FieldName = 'VCCON_FONES'
      Origin = '"VCOMISS_CONTRATO"."VCCON_FONES"'
      Size = 50
    end
    object qConsultaVCCON_VALORTOTAL: TIBBCDField
      FieldName = 'VCCON_VALORTOTAL'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VALORTOTAL"'
      Precision = 18
      Size = 2
    end
    object qConsultaVCCON_DESCONTO: TIBBCDField
      FieldName = 'VCCON_DESCONTO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object qConsultaVCCON_VALORFINAL: TIBBCDField
      FieldName = 'VCCON_VALORFINAL'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VALORFINAL"'
      Precision = 18
      Size = 2
    end
    object qConsultaVCCON_FORMAPAGTO: TIBStringField
      FieldName = 'VCCON_FORMAPAGTO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_FORMAPAGTO"'
      Size = 255
    end
    object qConsultaVCCON_OBSERVACAO: TIBStringField
      FieldName = 'VCCON_OBSERVACAO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_OBSERVACAO"'
      Size = 255
    end
    object qConsultaVCCON_DH_CA: TDateTimeField
      FieldName = 'VCCON_DH_CA'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DH_CA"'
    end
    object qConsultaVCCON_VEC_ID: TIntegerField
      FieldName = 'VCCON_VEC_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VEC_ID"'
    end
    object qConsultaVCCON_NUMEROVENDA: TIntegerField
      FieldName = 'VCCON_NUMEROVENDA'
      Origin = '"VCOMISS_CONTRATO"."VCCON_NUMEROVENDA"'
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaVEC_NUMDOCUMENTO: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
      Origin = '"VENDA_COMISSIONADA"."VEC_NUMDOCUMENTO"'
    end
    object qConsultaVEC_VALOR: TIBBCDField
      FieldName = 'VEC_VALOR'
      Origin = '"VENDA_COMISSIONADA"."VEC_VALOR"'
      Precision = 18
      Size = 2
    end
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Imprimir: TAction
      Hint = 'Imprimir Lista'
    end
    object Act_Btn_ImprimirContrato: TAction
      Category = 'FormCadastros'
      Caption = 'Contrato'
      Hint = 'Imprimir Contrato'
      ImageIndex = 4
      ShortCut = 117
      OnExecute = Act_Btn_ImprimirContratoExecute
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
    object cdsConsultaVCCON_ID: TIntegerField
      FieldName = 'VCCON_ID'
      Required = True
    end
    object cdsConsultaVCCON_CODIGO: TIntegerField
      FieldName = 'VCCON_CODIGO'
      Required = True
    end
    object cdsConsultaVCCON_DATAEMISSAO: TDateTimeField
      FieldName = 'VCCON_DATAEMISSAO'
    end
    object cdsConsultaVCCON_CLIENTE_ID: TIntegerField
      FieldName = 'VCCON_CLIENTE_ID'
    end
    object cdsConsultaVCCON_NOME: TStringField
      FieldName = 'VCCON_NOME'
      Size = 100
    end
    object cdsConsultaVCCON_CPF: TStringField
      FieldName = 'VCCON_CPF'
      Size = 15
    end
    object cdsConsultaVCCON_ENDERECO: TStringField
      FieldName = 'VCCON_ENDERECO'
      Size = 100
    end
    object cdsConsultaVCCON_FONES: TStringField
      FieldName = 'VCCON_FONES'
      Size = 50
    end
    object cdsConsultaVCCON_VALORTOTAL: TBCDField
      FieldName = 'VCCON_VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVCCON_DESCONTO: TBCDField
      FieldName = 'VCCON_DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVCCON_VALORFINAL: TBCDField
      FieldName = 'VCCON_VALORFINAL'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVCCON_FORMAPAGTO: TStringField
      FieldName = 'VCCON_FORMAPAGTO'
      Size = 255
    end
    object cdsConsultaVCCON_OBSERVACAO: TStringField
      FieldName = 'VCCON_OBSERVACAO'
      Size = 255
    end
    object cdsConsultaVCCON_DH_CA: TDateTimeField
      FieldName = 'VCCON_DH_CA'
    end
    object cdsConsultaVCCON_VEC_ID: TIntegerField
      FieldName = 'VCCON_VEC_ID'
    end
    object cdsConsultaVCCON_NUMEROVENDA: TIntegerField
      FieldName = 'VCCON_NUMEROVENDA'
    end
    object cdsConsultaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsConsultaVEC_NUMDOCUMENTO: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
    end
    object cdsConsultaVEC_VALOR: TBCDField
      FieldName = 'VEC_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from sp_cliente_portipo(:TipoCli)')
    Left = 576
    Top = 120
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
    object qClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"SP_CLIENTE_PORTIPO"."ENDERECO"'
      Size = 100
    end
    object qClienteFONES: TIBStringField
      FieldName = 'FONES'
      Origin = '"SP_CLIENTE_PORTIPO"."FONES"'
      Size = 50
    end
    object qClienteCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"SP_CLIENTE_PORTIPO"."CPF"'
      Size = 30
    end
  end
  object dsCliente: TDataSource
    DataSet = qCliente
    Left = 616
    Top = 120
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
  object frxListaContrato: TfrxDBDataset
    UserName = 'frxListaContrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'VCCON_ID=VCCON_ID'
      'VCCON_CODIGO=VCCON_CODIGO'
      'VCCON_DATAEMISSAO=VCCON_DATAEMISSAO'
      'VCCON_CLIENTE_ID=VCCON_CLIENTE_ID'
      'VCCON_NOME=VCCON_NOME'
      'VCCON_CPF=VCCON_CPF'
      'VCCON_ENDERECO=VCCON_ENDERECO'
      'VCCON_FONES=VCCON_FONES'
      'VCCON_VALORTOTAL=VCCON_VALORTOTAL'
      'VCCON_DESCONTO=VCCON_DESCONTO'
      'VCCON_VALORFINAL=VCCON_VALORFINAL'
      'VCCON_FORMAPAGTO=VCCON_FORMAPAGTO'
      'VCCON_OBSERVACAO=VCCON_OBSERVACAO'
      'VCCON_DH_CA=VCCON_DH_CA'
      'VCCON_VEC_ID=VCCON_VEC_ID'
      'VCCON_NUMEROVENDA=VCCON_NUMEROVENDA'
      'CLI_CLIENTE=CLI_CLIENTE'
      'VEC_NUMDOCUMENTO=VEC_NUMDOCUMENTO'
      'VEC_VALOR=VEC_VALOR')
    DataSet = cdsConsulta
    BCDToCurrency = False
    Left = 372
    Top = 183
  end
  object frxContrato: TfrxDBDataset
    UserName = 'frxContrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'VCCON_ID=VCCON_ID'
      'VCCON_CODIGO=VCCON_CODIGO'
      'VCCON_DATAEMISSAO=VCCON_DATAEMISSAO'
      'VCCON_CLIENTE_ID=VCCON_CLIENTE_ID'
      'VCCON_NOME=VCCON_NOME'
      'VCCON_CPF=VCCON_CPF'
      'VCCON_ENDERECO=VCCON_ENDERECO'
      'VCCON_FONES=VCCON_FONES'
      'VCCON_VALORTOTAL=VCCON_VALORTOTAL'
      'VCCON_DESCONTO=VCCON_DESCONTO'
      'VCCON_VALORFINAL=VCCON_VALORFINAL'
      'VCCON_FORMAPAGTO=VCCON_FORMAPAGTO'
      'VCCON_OBSERVACAO=VCCON_OBSERVACAO'
      'VCCON_DH_CA=VCCON_DH_CA'
      'VCCON_VEC_ID=VCCON_VEC_ID'
      'VCCON_NUMEROVENDA=VCCON_NUMEROVENDA'
      'CLI_CLIENTE=CLI_CLIENTE'
      'VEC_NUMDOCUMENTO=VEC_NUMDOCUMENTO'
      'VEC_VALOR=VEC_VALOR')
    DataSet = qRelContrato
    BCDToCurrency = False
    Left = 372
    Top = 231
  end
  object qRelContrato: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    DataSource = dsConsulta
    SQL.Strings = (
      'select vcomiss_contrato.vccon_id ID,'
      '       vcomiss_contrato.*,'
      '       clientes.cli_cliente,'
      '       venda_comissionada.vec_numdocumento,'
      '       venda_comissionada.vec_valor'
      '  from vcomiss_contrato'
      
        ' left join clientes on (clientes.cli_id=vcomiss_contrato.vccon_c' +
        'liente_id)'
      
        ' left join venda_comissionada on (venda_comissionada.vec_id=vcom' +
        'iss_contrato.vccon_vec_id)'
      ' where vcomiss_contrato.vccon_id = :VCCON_ID')
    Left = 424
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VCCON_ID'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ID"'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'VCCON_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'VCCON_CODIGO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CODIGO"'
      Required = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'VCCON_DATAEMISSAO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DATAEMISSAO"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'VCCON_CLIENTE_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CLIENTE_ID"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'VCCON_NOME'
      Origin = '"VCOMISS_CONTRATO"."VCCON_NOME"'
      Size = 100
    end
    object IBStringField2: TIBStringField
      FieldName = 'VCCON_CPF'
      Origin = '"VCOMISS_CONTRATO"."VCCON_CPF"'
      Size = 15
    end
    object IBStringField3: TIBStringField
      FieldName = 'VCCON_ENDERECO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_ENDERECO"'
      Size = 100
    end
    object IBStringField4: TIBStringField
      FieldName = 'VCCON_FONES'
      Origin = '"VCOMISS_CONTRATO"."VCCON_FONES"'
      Size = 50
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'VCCON_VALORTOTAL'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VALORTOTAL"'
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'VCCON_DESCONTO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'VCCON_VALORFINAL'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VALORFINAL"'
      Precision = 18
      Size = 2
    end
    object IBStringField5: TIBStringField
      FieldName = 'VCCON_FORMAPAGTO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_FORMAPAGTO"'
      Size = 255
    end
    object IBStringField6: TIBStringField
      FieldName = 'VCCON_OBSERVACAO'
      Origin = '"VCOMISS_CONTRATO"."VCCON_OBSERVACAO"'
      Size = 255
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'VCCON_DH_CA'
      Origin = '"VCOMISS_CONTRATO"."VCCON_DH_CA"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'VCCON_VEC_ID'
      Origin = '"VCOMISS_CONTRATO"."VCCON_VEC_ID"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'VCCON_NUMEROVENDA'
      Origin = '"VCOMISS_CONTRATO"."VCCON_NUMEROVENDA"'
    end
    object IBStringField7: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object IntegerField7: TIntegerField
      FieldName = 'VEC_NUMDOCUMENTO'
      Origin = '"VENDA_COMISSIONADA"."VEC_NUMDOCUMENTO"'
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'VEC_VALOR'
      Origin = '"VENDA_COMISSIONADA"."VEC_VALOR"'
      Precision = 18
      Size = 2
    end
  end
end
