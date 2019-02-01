inherited FCadOrcamentoVComiss: TFCadOrcamentoVComiss
  Left = 301
  Top = 167
  Height = 600
  Caption = 'FCadOrcamentoVComiss'
  OldCreateOrder = True
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
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Column = grConsultaDBTableView1VCOR_CODIGO
            end>
          FilterRow.SeparatorWidth = 6
          OptionsData.Editing = False
          object grConsultaDBTableView1VCOR_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCOR_ID'
            Visible = False
          end
          object grConsultaDBTableView1VCOR_CODIGO: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'VCOR_CODIGO'
          end
          object grConsultaDBTableView1VCOR_DATAEMISSAO: TcxGridDBColumn
            Caption = 'Data Emiss'#227'o'
            DataBinding.FieldName = 'VCOR_DATAEMISSAO'
            Width = 100
          end
          object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_CLIENTE'
            Width = 300
          end
          object grConsultaDBTableView1VCOR_CLIENTE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCOR_CLIENTE_ID'
            Visible = False
          end
          object grConsultaDBTableView1VCOR_CONDICAOPAGTO: TcxGridDBColumn
            Caption = 'Condi'#231#227'o Pagamento'
            DataBinding.FieldName = 'VCOR_CONDICAOPAGTO'
            Width = 300
          end
          object grConsultaDBTableView1VCOR_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'VCOR_DH_CA'
            Visible = False
          end
          object grConsultaDBTableView1VCOR_VALORTOTAL: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VCOR_VALORTOTAL'
          end
          object grConsultaDBTableView1SITUACAO: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'SITUACAO'
            Width = 100
          end
          object grConsultaDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object grConsultaDBTableView1VCOR_SITUACAO: TcxGridDBColumn
            DataBinding.FieldName = 'VCOR_SITUACAO'
            Visible = False
          end
        end
      end
      inherited pnBarraPg: TPanel
        object SpeedButton1: TSpeedButton [5]
          Left = 244
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_ImprimirOrcamento
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
        object Bevel6: TBevel [6]
          Left = 312
          Top = 5
          Width = 249
          Height = 40
        end
        object Label9: TLabel [7]
          Left = 326
          Top = 19
          Width = 48
          Height = 13
          Caption = 'Situa'#231#227'o: '
        end
        inherited rgAtivo: TRadioGroup
          Left = 656
          Width = 49
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
      object Bevel2: TBevel [0]
        Left = 0
        Top = 283
        Width = 776
        Height = 56
        Align = alBottom
      end
      object Label1: TLabel [2]
        Left = 40
        Top = 108
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [3]
        Left = 160
        Top = 108
        Width = 65
        Height = 13
        Caption = 'Data Emiss'#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [4]
        Left = 280
        Top = 108
        Width = 51
        Height = 13
        Caption = 'Valor Total'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [5]
        Left = 40
        Top = 193
        Width = 101
        Height = 13
        Caption = 'Condi'#231#227'o pagamento'
      end
      object Label5: TLabel [6]
        Left = 10
        Top = 290
        Width = 44
        Height = 13
        Caption = 'Ambiente'
      end
      object Label6: TLabel [7]
        Left = 295
        Top = 290
        Width = 66
        Height = 13
        Caption = 'Discrimina'#231#227'o'
      end
      object Label7: TLabel [8]
        Left = 580
        Top = 290
        Width = 49
        Height = 13
        Caption = 'Valor Unit.'
      end
      object Label13: TLabel [9]
        Left = 40
        Top = 151
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      inherited Panel1: TPanel
        TabOrder = 13
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 124
        Width = 110
        Height = 21
        DataField = 'VCOR_CODIGO'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 124
        Width = 110
        Height = 21
        DataField = 'VCOR_DATAEMISSAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 280
        Top = 124
        Width = 65
        Height = 21
        DataField = 'VCOR_VALORTOTAL'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 40
        Top = 209
        Width = 497
        Height = 66
        DataField = 'VCOR_CONDICAOPAGTO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 339
        Width = 776
        Height = 163
        Align = alBottom
        TabOrder = 14
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsCadastroItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1VCORI_VALORUNIT
            end
            item
              Kind = skCount
              Column = cxGrid1DBTableView1VCORI_AMBIENTE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = 'Sem registro para exibir'
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGrid1DBTableView1VCORI_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_ID'
            Visible = False
          end
          object cxGrid1DBTableView1VCORI_VCOR_ID: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_VCOR_ID'
            Visible = False
          end
          object cxGrid1DBTableView1VCORI_AMBIENTE: TcxGridDBColumn
            Caption = 'Ambiente'
            DataBinding.FieldName = 'VCORI_AMBIENTE'
            Width = 293
          end
          object cxGrid1DBTableView1VCORI_DISCRIMINACAO: TcxGridDBColumn
            Caption = 'Discrimina'#231#227'o'
            DataBinding.FieldName = 'VCORI_DISCRIMINACAO'
            Width = 286
          end
          object cxGrid1DBTableView1VCORI_VALORUNIT: TcxGridDBColumn
            Caption = 'Valor Unit.'
            DataBinding.FieldName = 'VCORI_VALORUNIT'
            Width = 103
          end
          object cxGrid1DBTableView1VCORI_QTDADE: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_QTDADE'
            Visible = False
          end
          object cxGrid1DBTableView1VCORI_DH_CA: TcxGridDBColumn
            DataBinding.FieldName = 'VCORI_DH_CA'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 40
        Top = 167
        Width = 373
        Height = 21
        DataField = 'VCOR_CLIENTE_ID'
        DataSource = dsCadastro
        KeyField = 'CLI_ID'
        ListField = 'CLI_CLIENTE'
        ListSource = dsCliente
        TabOrder = 4
      end
      object btCACliente: TBitBtn
        Left = 413
        Top = 166
        Width = 22
        Height = 20
        Hint = 'Adicionar'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btCAClienteClick
      end
      object btEXCliente: TBitBtn
        Left = 435
        Top = 166
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = btEXClienteClick
      end
      object btCAItens: TBitBtn
        Left = 691
        Top = 292
        Width = 35
        Height = 30
        Hint = 'Adicionar Item'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = btCAItensClick
      end
      object btEXItens: TBitBtn
        Left = 733
        Top = 292
        Width = 35
        Height = 30
        Hint = 'Apagar Item'
        Caption = 'x'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = btEXItensClick
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 40
        Top = 58
        Width = 257
        Height = 41
        Caption = '  Situa'#231#227'o  '
        Columns = 3
        DataField = 'VCOR_SITUACAO'
        DataSource = dsCadastro
        Items.Strings = (
          'Aberto'
          'Fechado'
          'Cancelado')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object edAmbiente: TEdit
        Left = 10
        Top = 306
        Width = 280
        Height = 21
        TabOrder = 8
      end
      object edDiscriminacao: TEdit
        Left = 295
        Top = 306
        Width = 280
        Height = 21
        TabOrder = 9
      end
      object edValorUnit: TEdit
        Left = 580
        Top = 306
        Width = 100
        Height = 21
        TabOrder = 10
        OnKeyPress = edValorUnitKeyPress
      end
    end
  end
  inherited dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 600
  end
  inherited ibCadastro: TIBDataSet
    AfterClose = ibCadastroAfterClose
    AfterOpen = ibCadastroAfterOpen
    BeforePost = ibCadastroBeforePost
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from vcomiss_orcamento'
      'where'
      '  VCOR_ID = :OLD_VCOR_ID')
    InsertSQL.Strings = (
      'insert into vcomiss_orcamento'
      '  (VCOR_ID, VCOR_CODIGO, VCOR_DATAEMISSAO, VCOR_CLIENTE_ID, '
      'VCOR_VALORTOTAL, '
      '   VCOR_CONDICAOPAGTO, VCOR_DH_CA, VCOR_SITUACAO)'
      'values'
      '  (:VCOR_ID, :VCOR_CODIGO, :VCOR_DATAEMISSAO, :VCOR_CLIENTE_ID, '
      ':VCOR_VALORTOTAL, '
      '   :VCOR_CONDICAOPAGTO, :VCOR_DH_CA, :VCOR_SITUACAO)')
    RefreshSQL.Strings = (
      'Select *'
      'from vcomiss_orcamento '
      'where'
      '  VCOR_ID = :VCOR_ID')
    SelectSQL.Strings = (
      'select *'
      '  from vcomiss_orcamento'
      ' where vcor_id = :FId')
    ModifySQL.Strings = (
      'update vcomiss_orcamento'
      'set'
      '  VCOR_ID = :VCOR_ID,'
      '  VCOR_CODIGO = :VCOR_CODIGO,'
      '  VCOR_DATAEMISSAO = :VCOR_DATAEMISSAO,'
      '  VCOR_CLIENTE_ID = :VCOR_CLIENTE_ID,'
      '  VCOR_VALORTOTAL = :VCOR_VALORTOTAL,'
      '  VCOR_CONDICAOPAGTO = :VCOR_CONDICAOPAGTO,'
      '  VCOR_DH_CA = :VCOR_DH_CA,'
      '  VCOR_SITUACAO = :VCOR_SITUACAO'
      'where'
      '  VCOR_ID = :OLD_VCOR_ID')
    GeneratorField.Field = 'VCOR_ID'
    GeneratorField.Generator = 'GEN_VCOMISS_ORCAMENTO'
    Top = 16
    object ibCadastroVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object ibCadastroVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DATAEMISSAO"'
      EditMask = '!99/99/0000;1;_'
    end
    object ibCadastroVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CLIENTE_ID"'
    end
    object ibCadastroVCOR_VALORTOTAL: TIBBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_VALORTOTAL"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroVCOR_CONDICAOPAGTO: TIBStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CONDICAOPAGTO"'
      Size = 100
    end
    object ibCadastroVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DH_CA"'
    end
    object ibCadastroVCOR_SITUACAO: TIntegerField
      FieldName = 'VCOR_SITUACAO'
      Origin = 'VCOMISS_ORCAMENTO.VCOR_SITUACAO'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select 0 flag, vcomiss_orcamento.vcor_id ID,'
      '       vcomiss_orcamento.*,'
      '       clientes.cli_cliente,'
      '       case'
      
        '         when(coalesce(vcomiss_orcamento.vcor_situacao,0)=0) the' +
        'n '#39'ABERTO'#39
      
        '         when(coalesce(vcomiss_orcamento.vcor_situacao,0)=1) the' +
        'n '#39'FECHADO'#39
      
        '         when(coalesce(vcomiss_orcamento.vcor_situacao,0)=2) the' +
        'n '#39'CANCELADO'#39
      '       end situacao'
      '  from vcomiss_orcamento'
      
        ' left join clientes on (clientes.cli_id=vcomiss_orcamento.vcor_c' +
        'liente_id)'
      ' where vcor_id > -1'
      'order by vcomiss_orcamento.vcor_id')
    Left = 488
    object qConsultaVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CODIGO"'
      Required = True
    end
    object qConsultaVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DATAEMISSAO"'
    end
    object qConsultaVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CLIENTE_ID"'
    end
    object qConsultaVCOR_VALORTOTAL: TIBBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_VALORTOTAL"'
      Precision = 18
      Size = 2
    end
    object qConsultaVCOR_CONDICAOPAGTO: TIBStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_CONDICAOPAGTO"'
      Size = 100
    end
    object qConsultaVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_DH_CA"'
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_ID"'
      Required = True
    end
    object qConsultaVCOR_SITUACAO: TIntegerField
      FieldName = 'VCOR_SITUACAO'
      Origin = '"VCOMISS_ORCAMENTO"."VCOR_SITUACAO"'
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
    object Act_Btn_ImprimirOrcamento: TAction
      Category = 'FormCadastros'
      Caption = 'Or'#231'amento'
      Hint = 'Imprimir Or'#231'amento'
      ImageIndex = 4
      ShortCut = 117
      OnExecute = Act_Btn_ImprimirOrcamentoExecute
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ibCadastroItem: TIBDataSet [10]
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterInsert = ibCadastroItemAfterInsert
    BeforeInsert = ibCadastroItemBeforeInsert
    DeleteSQL.Strings = (
      'delete from vcomiss_orcamento_item'
      'where'
      '  VCORI_ID = :OLD_VCORI_ID')
    InsertSQL.Strings = (
      'insert into vcomiss_orcamento_item'
      
        '  (VCORI_AMBIENTE, VCORI_DH_CA, VCORI_DISCRIMINACAO, VCORI_ID, V' +
        'CORI_QTDADE, '
      '   VCORI_VALORUNIT, VCORI_VCOR_ID)'
      'values'
      
        '  (:VCORI_AMBIENTE, :VCORI_DH_CA, :VCORI_DISCRIMINACAO, :VCORI_I' +
        'D, :VCORI_QTDADE, '
      '   :VCORI_VALORUNIT, :VCORI_VCOR_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  VCORI_ID,'
      '  VCORI_VCOR_ID,'
      '  VCORI_AMBIENTE,'
      '  VCORI_DISCRIMINACAO,'
      '  VCORI_VALORUNIT,'
      '  VCORI_QTDADE,'
      '  VCORI_DH_CA'
      'from vcomiss_orcamento_item '
      'where'
      '  VCORI_ID = :VCORI_ID')
    SelectSQL.Strings = (
      'select *'
      '  from vcomiss_orcamento_item'
      ' where vcori_vcor_id = :VCOR_ID'
      ' order by vcori_ambiente'
      '')
    ModifySQL.Strings = (
      'update vcomiss_orcamento_item'
      'set'
      '  VCORI_AMBIENTE = :VCORI_AMBIENTE,'
      '  VCORI_DH_CA = :VCORI_DH_CA,'
      '  VCORI_DISCRIMINACAO = :VCORI_DISCRIMINACAO,'
      '  VCORI_ID = :VCORI_ID,'
      '  VCORI_QTDADE = :VCORI_QTDADE,'
      '  VCORI_VALORUNIT = :VCORI_VALORUNIT,'
      '  VCORI_VCOR_ID = :VCORI_VCOR_ID'
      'where'
      '  VCORI_ID = :OLD_VCORI_ID')
    GeneratorField.Field = 'VCORI_ID'
    GeneratorField.Generator = 'GEN_VCOMISS_ORCAMENTO_ITEM'
    DataSource = dsCadastro
    Left = 88
    Top = 8
    object ibCadastroItemVCORI_ID: TIntegerField
      FieldName = 'VCORI_ID'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroItemVCORI_VCOR_ID: TIntegerField
      FieldName = 'VCORI_VCOR_ID'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_VCOR_ID"'
      Required = True
    end
    object ibCadastroItemVCORI_AMBIENTE: TIBStringField
      FieldName = 'VCORI_AMBIENTE'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_AMBIENTE"'
      Size = 100
    end
    object ibCadastroItemVCORI_DISCRIMINACAO: TIBStringField
      FieldName = 'VCORI_DISCRIMINACAO'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_DISCRIMINACAO"'
      Size = 100
    end
    object ibCadastroItemVCORI_VALORUNIT: TIBBCDField
      FieldName = 'VCORI_VALORUNIT'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_VALORUNIT"'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ibCadastroItemVCORI_QTDADE: TIntegerField
      FieldName = 'VCORI_QTDADE'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_QTDADE"'
    end
    object ibCadastroItemVCORI_DH_CA: TDateTimeField
      FieldName = 'VCORI_DH_CA'
      Origin = '"VCOMISS_ORCAMENTO_ITEM"."VCORI_DH_CA"'
    end
  end
  object dsCadastroItem: TDataSource [11]
    DataSet = ibCadastroItem
    OnDataChange = dsCadastroItemDataChange
    Left = 136
    Top = 8
  end
  object qCliente: TIBQuery [12]
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    SQL.Strings = (
      'select cli_id, cli_cliente'
      '  from clientes'
      'order by cli_cliente')
    Left = 480
    Top = 160
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
  object dsCliente: TDataSource [13]
    DataSet = qCliente
    Left = 528
    Top = 160
  end
  object qExisteVenda: TIBQuery [14]
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    DataSource = dsCadastro
    SQL.Strings = (
      'select count(*) encontrou'
      '  from vcomiss_orcamento'
      
        ' join venda_comissionada on (venda_comissionada.vec_vcor_id=vcom' +
        'iss_orcamento.vcor_id)'
      ' where venda_comissionada.vec_situacao = 1'
      '   and vcomiss_orcamento.vcor_id = :VCOR_ID')
    Left = 480
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vcor_id'
        ParamType = ptUnknown
      end>
    object qExisteVendaENCONTROU: TIntegerField
      FieldName = 'ENCONTROU'
      ProviderFlags = []
    end
  end
  object frxLista: TfrxDBDataset [15]
    UserName = 'frxLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VCOR_ID=VCOR_ID'
      'VCOR_CODIGO=VCOR_CODIGO'
      'VCOR_DATAEMISSAO=VCOR_DATAEMISSAO'
      'VCOR_CLIENTE_ID=VCOR_CLIENTE_ID'
      'VCOR_VALORTOTAL=VCOR_VALORTOTAL'
      'VCOR_CONDICAOPAGTO=VCOR_CONDICAOPAGTO'
      'VCOR_DH_CA=VCOR_DH_CA'
      'CLI_CLIENTE=CLI_CLIENTE'
      'ID=ID'
      'VCOR_SITUACAO=VCOR_SITUACAO'
      'SITUACAO=SITUACAO')
    DataSet = cdsConsulta
    BCDToCurrency = False
    Left = 240
    Top = 288
  end
  inherited dspConsulta: TDataSetProvider
    DataSet = qConsulta
  end
  inherited cdsConsulta: TClientDataSet
    ProviderName = 'dspConsulta'
    object cdsConsultaVCOR_ID: TIntegerField
      FieldName = 'VCOR_ID'
      Required = True
    end
    object cdsConsultaVCOR_CODIGO: TIntegerField
      FieldName = 'VCOR_CODIGO'
      Required = True
    end
    object cdsConsultaVCOR_DATAEMISSAO: TDateField
      FieldName = 'VCOR_DATAEMISSAO'
    end
    object cdsConsultaVCOR_CLIENTE_ID: TIntegerField
      FieldName = 'VCOR_CLIENTE_ID'
    end
    object cdsConsultaVCOR_VALORTOTAL: TBCDField
      FieldName = 'VCOR_VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVCOR_CONDICAOPAGTO: TStringField
      FieldName = 'VCOR_CONDICAOPAGTO'
      Size = 100
    end
    object cdsConsultaVCOR_DH_CA: TDateTimeField
      FieldName = 'VCOR_DH_CA'
    end
    object cdsConsultaCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Size = 100
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaVCOR_SITUACAO: TIntegerField
      FieldName = 'VCOR_SITUACAO'
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
end
