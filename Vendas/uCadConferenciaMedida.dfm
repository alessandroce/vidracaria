inherited FCadConferenciaMedida: TFCadConferenciaMedida
  Left = 301
  Top = 170
  Caption = 'FCadConferenciaMedida'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1CMED_DATAEMISSAO: TcxGridDBColumn
            Caption = 'Data Emiss'#227'o'
            DataBinding.FieldName = 'CMED_DATAEMISSAO'
            Width = 120
          end
          object grConsultaDBTableView1CMED_DATACONCLUSAO: TcxGridDBColumn
            Caption = 'Data Conclus'#227'o'
            DataBinding.FieldName = 'CMED_DATACONCLUSAO'
            Width = 120
          end
          object grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn
            Caption = 'Respons'#225'vel'
            DataBinding.FieldName = 'CLI_CLIENTE'
            Width = 250
          end
          object grConsultaDBTableView1NUM_VENDA: TcxGridDBColumn
            Caption = 'Numero Venda'
            DataBinding.FieldName = 'NUM_VENDA'
            Width = 100
          end
          object grConsultaDBTableView1DESC_AGENDA: TcxGridDBColumn
            Caption = 'Agenda'
            DataBinding.FieldName = 'DESC_AGENDA'
            Width = 250
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited rgAtivo: TRadioGroup
          Left = 656
          Width = 57
          Visible = False
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label13: TLabel [1]
        Left = 8
        Top = 97
        Width = 62
        Height = 13
        Caption = 'Respons'#225'vel'
      end
      object Label1: TLabel [2]
        Left = 408
        Top = 139
        Width = 67
        Height = 13
        Caption = 'Pedido Venda'
      end
      object Label2: TLabel [3]
        Left = 8
        Top = 57
        Width = 65
        Height = 13
        Caption = 'Data Emiss'#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [4]
        Left = 99
        Top = 57
        Width = 76
        Height = 13
        Caption = 'Data Conclus'#227'o'
        FocusControl = DBEdit3
      end
      object Bevel2: TBevel [5]
        Left = 0
        Top = 187
        Width = 776
        Height = 22
      end
      object SpeedButton1: TSpeedButton [6]
        Left = 659
        Top = 214
        Width = 30
        Height = 30
        Hint = 'Novo registro'
        BiDiMode = bdLeftToRight
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000C30E0000C30E00000001000005000000FFFFFF0000FF
          FF00C0C0C0008000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010101
          0101010101010104010101010101010101010101010101040101010101010101
          0101010101040404040401010101010101010101010101040101040404040404
          0404040404040104010104000000000000000000000401010101040004040004
          0400040400040101010104000000000000000000000401010101040303030303
          0303030303030301010101030000000000000000000003010101010300040400
          0404000404000301010101030000000000000000000003010101010303030303
          0303030303030301010101030203030203030203030203010101010303030303
          0303030303030301010101010101010101010101010101010101}
        Layout = blGlyphTop
        ParentShowHint = False
        ParentBiDiMode = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton3: TSpeedButton [7]
        Left = 689
        Top = 214
        Width = 30
        Height = 30
        Hint = 'Excluir registro'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B00000001000007000000FFFFFF0000FF
          FF00C0C0C0008000800000008000800000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010101
          0101010401010101010101010101010101010404010101010104010101010101
          0101040404010101040101010101010101010104040101040401060606060606
          0606060606040403010106020202020202020202030404010101060206060206
          0602060204030404010106020202020202020204040202040403060505050505
          0503040505050501030401050000000000040300000005010101010500060600
          0606000606000501010101050000000000000000000005010101010505050505
          0505050505050501010101050205050205050205050205010101010505050505
          0505050505050501010101010101010101010101010101010101}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
      object Label4: TLabel [8]
        Left = 314
        Top = 190
        Width = 148
        Height = 13
        Caption = 'Medidas para confer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton [9]
        Left = 721
        Top = 214
        Width = 30
        Height = 30
        Hint = 'Gravar registro'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B00000001000004000000D3D3D3004DA6
          A6004D4D4D000000FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030303030303
          0303030303030303030303030202020202020202020202020203030201010202
          0202020200000201020303020101020202020202000002010203030201010202
          0202020200000201020303020101020202020202020202010203030201010101
          0101010101010101020303020101020202020202020201010203030201020000
          0000000000000201020303020102000000000000000002010203030201020000
          0000000000000201020303020102000000000000000002010203030201020000
          0000000000000202020303020102000000000000000002000203030202020202
          0202020202020202020303030303030303030303030303030303}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object Label5: TLabel [10]
        Left = 8
        Top = 211
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit4
      end
      object Label6: TLabel [11]
        Left = 312
        Top = 211
        Width = 40
        Height = 13
        Caption = 'Medidas'
        FocusControl = DBEdit5
      end
      object Label7: TLabel [12]
        Left = 8
        Top = 140
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label8: TLabel [13]
        Left = 192
        Top = 56
        Width = 37
        Height = 13
        Caption = 'Agenda'
      end
      inherited Panel1: TPanel
        inherited btCancelar: TSpeedButton
          Left = 656
        end
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 8
        Top = 113
        Width = 344
        Height = 21
        DataField = 'CMED_RESPONSAVEL_ID'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dsResponsavel
        TabOrder = 1
      end
      object btCAResponsavel: TBitBtn
        Left = 352
        Top = 113
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
        TabOrder = 2
        OnClick = btCAResponsavelClick
      end
      object btEXResponsavel: TBitBtn
        Left = 374
        Top = 113
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
        TabOrder = 3
        OnClick = btEXResponsavelClick
      end
      object btCAPedido: TBitBtn
        Left = 520
        Top = 156
        Width = 22
        Height = 20
        Hint = 'Ver'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btCAPedidoClick
      end
      object btEXPedido: TBitBtn
        Left = 542
        Top = 156
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
        OnClick = btEXPedidoClick
      end
      object DBEdit1: TDBEdit
        Left = 408
        Top = 156
        Width = 113
        Height = 21
        DataField = 'CMED_NUMDOCUMENTO'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 73
        Width = 84
        Height = 21
        DataField = 'CMED_DATAEMISSAO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 99
        Top = 73
        Width = 84
        Height = 21
        DataField = 'CMED_DATACONCLUSAO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 227
        Width = 300
        Height = 21
        DataField = 'CMIT_DESCRICAO'
        DataSource = dsItens
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 312
        Top = 227
        Width = 337
        Height = 21
        DataField = 'CMIT_MEDIDAS'
        DataSource = dsItens
        TabOrder = 10
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 263
        Width = 776
        Height = 139
        Align = alBottom
        TabOrder = 11
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsItens
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Clique aqui para definir filtro'
          OptionsView.NoDataToDisplayInfoText = 'Sem registro para exibir'
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1CMIT_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'CMIT_DESCRICAO'
            Width = 377
          end
          object cxGrid1DBTableView1CMIT_MEDIDAS: TcxGridDBColumn
            Caption = 'Medidas'
            DataBinding.FieldName = 'CMIT_MEDIDAS'
            Width = 384
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 156
        Width = 344
        Height = 21
        DataField = 'CMED_CLIENTE_ID'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dsCliente
        TabOrder = 12
      end
      object btCACliente: TBitBtn
        Left = 352
        Top = 156
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
        OnClick = btCAClienteClick
      end
      object btEXCliente: TBitBtn
        Left = 374
        Top = 156
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
        OnClick = btEXClienteClick
      end
      object btCAAgenda: TBitBtn
        Left = 520
        Top = 72
        Width = 22
        Height = 20
        Hint = 'Ver'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = btCAAgendaClick
      end
      object btEXAgenda: TBitBtn
        Left = 542
        Top = 72
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
        TabOrder = 16
        OnClick = btEXAgendaClick
      end
      object DBEdit6: TDBEdit
        Left = 192
        Top = 72
        Width = 327
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = dsAgeda
        TabOrder = 17
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    AfterClose = ibCadastroAfterClose
    AfterInsert = ibCadastroAfterInsert
    AfterOpen = ibCadastroAfterOpen
    BeforeCancel = ibCadastroBeforeCancel
    BeforeClose = ibCadastroBeforeClose
    BeforeDelete = ibCadastroBeforeDelete
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from conferencia_medida'
      'where'
      '  CMED_ID = :OLD_CMED_ID')
    InsertSQL.Strings = (
      'insert into conferencia_medida'
      '  (CMED_ID, CMED_AGENDA_ID, CMED_VENDA_ID, CMED_NUMDOCUMENTO, '
      'CMED_RESPONSAVEL_ID, '
      '   CMED_DH_CA, CMED_DATAEMISSAO, CMED_DATACONCLUSAO, '
      'CMED_CLIENTE_ID)'
      'values'
      '  (:CMED_ID, :CMED_AGENDA_ID, :CMED_VENDA_ID, '
      ':CMED_NUMDOCUMENTO, :CMED_RESPONSAVEL_ID, '
      '   :CMED_DH_CA, :CMED_DATAEMISSAO, :CMED_DATACONCLUSAO, '
      ':CMED_CLIENTE_ID)')
    RefreshSQL.Strings = (
      'Select *'
      'from conferencia_medida '
      'where'
      '  CMED_ID = :CMED_ID')
    SelectSQL.Strings = (
      
        'select * from conferencia_medida where conferencia_medida.cmed_i' +
        'd = :FId')
    ModifySQL.Strings = (
      'update conferencia_medida'
      'set'
      '  CMED_ID = :CMED_ID,'
      '  CMED_AGENDA_ID = :CMED_AGENDA_ID,'
      '  CMED_VENDA_ID = :CMED_VENDA_ID,'
      '  CMED_NUMDOCUMENTO = :CMED_NUMDOCUMENTO,'
      '  CMED_RESPONSAVEL_ID = :CMED_RESPONSAVEL_ID,'
      '  CMED_DH_CA = :CMED_DH_CA,'
      '  CMED_DATAEMISSAO = :CMED_DATAEMISSAO,'
      '  CMED_DATACONCLUSAO = :CMED_DATACONCLUSAO,'
      '  CMED_CLIENTE_ID = :CMED_CLIENTE_ID'
      'where'
      '  CMED_ID = :OLD_CMED_ID')
    GeneratorField.Field = 'CMED_ID'
    GeneratorField.Generator = 'GEN_CONFERENCIA_MEDIDA'
    object ibCadastroCMED_ID: TIntegerField
      FieldName = 'CMED_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroCMED_AGENDA_ID: TIntegerField
      FieldName = 'CMED_AGENDA_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_AGENDA_ID"'
      OnChange = ibCadastroCMED_AGENDA_IDChange
    end
    object ibCadastroCMED_VENDA_ID: TIntegerField
      FieldName = 'CMED_VENDA_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_VENDA_ID"'
    end
    object ibCadastroCMED_NUMDOCUMENTO: TIntegerField
      FieldName = 'CMED_NUMDOCUMENTO'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_NUMDOCUMENTO"'
    end
    object ibCadastroCMED_RESPONSAVEL_ID: TIntegerField
      FieldName = 'CMED_RESPONSAVEL_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_RESPONSAVEL_ID"'
    end
    object ibCadastroCMED_DH_CA: TDateTimeField
      FieldName = 'CMED_DH_CA'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_DH_CA"'
    end
    object ibCadastroCMED_DATAEMISSAO: TDateField
      FieldName = 'CMED_DATAEMISSAO'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_DATAEMISSAO"'
    end
    object ibCadastroCMED_DATACONCLUSAO: TDateField
      FieldName = 'CMED_DATACONCLUSAO'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_DATACONCLUSAO"'
    end
    object ibCadastroCMED_CLIENTE_ID: TIntegerField
      FieldName = 'CMED_CLIENTE_ID'
      Origin = 'CONFERENCIA_MEDIDA.CMED_CLIENTE_ID'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select conferencia_medida.cmed_id ID,'
      '       conferencia_medida.*,'
      '       agenda.conm_assunto desc_agenda,'
      '       venda_comissionada.vec_numdocumento num_venda,'
      '       clientes.cli_cliente'
      '  from conferencia_medida'
      
        ' left join agenda on (agenda.conm_id=conferencia_medida.cmed_age' +
        'nda_id)'
      
        ' left join venda_comissionada on (venda_comissionada.vec_id=conf' +
        'erencia_medida.cmed_venda_id)'
      
        ' left join clientes on (clientes.cli_id=conferencia_medida.cmed_' +
        'responsavel_id)'
      '  where conferencia_medida.cmed_id>-1')
    object qConsultaCMED_ID: TIntegerField
      FieldName = 'CMED_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaCMED_AGENDA_ID: TIntegerField
      FieldName = 'CMED_AGENDA_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_AGENDA_ID"'
    end
    object qConsultaCMED_VENDA_ID: TIntegerField
      FieldName = 'CMED_VENDA_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_VENDA_ID"'
    end
    object qConsultaCMED_NUMDOCUMENTO: TIntegerField
      FieldName = 'CMED_NUMDOCUMENTO'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_NUMDOCUMENTO"'
    end
    object qConsultaCMED_RESPONSAVEL_ID: TIntegerField
      FieldName = 'CMED_RESPONSAVEL_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_RESPONSAVEL_ID"'
    end
    object qConsultaCMED_DH_CA: TDateTimeField
      FieldName = 'CMED_DH_CA'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_DH_CA"'
    end
    object qConsultaCMED_DATAEMISSAO: TDateField
      FieldName = 'CMED_DATAEMISSAO'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_DATAEMISSAO"'
    end
    object qConsultaCMED_DATACONCLUSAO: TDateField
      FieldName = 'CMED_DATACONCLUSAO'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_DATACONCLUSAO"'
    end
    object qConsultaDESC_AGENDA: TIBStringField
      FieldName = 'DESC_AGENDA'
      Origin = '"AGENDA"."CONM_ASSUNTO"'
      Size = 100
    end
    object qConsultaNUM_VENDA: TIntegerField
      FieldName = 'NUM_VENDA'
      Origin = '"VENDA_COMISSIONADA"."VEC_NUMDOCUMENTO"'
    end
    object qConsultaCLI_CLIENTE: TIBStringField
      FieldName = 'CLI_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_ID"'
      Required = True
    end
    object qConsultaCMED_CLIENTE_ID: TIntegerField
      FieldName = 'CMED_CLIENTE_ID'
      Origin = '"CONFERENCIA_MEDIDA"."CMED_CLIENTE_ID"'
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ibItens: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    AfterInsert = ibItensAfterInsert
    BeforeInsert = ibItensBeforeInsert
    OnDeleteError = ibCadastroDeleteError
    OnEditError = ibCadastroEditError
    OnPostError = ibCadastroPostError
    DeleteSQL.Strings = (
      'delete from conferencia_medida_itens'
      'where'
      '  CMIT_ID = :OLD_CMIT_ID')
    InsertSQL.Strings = (
      'insert into conferencia_medida_itens'
      
        '  (CMIT_CMED_ID, CMIT_DESCRICAO, CMIT_DH_CA, CMIT_ID, CMIT_MEDID' +
        'AS)'
      'values'
      
        '  (:CMIT_CMED_ID, :CMIT_DESCRICAO, :CMIT_DH_CA, :CMIT_ID, :CMIT_' +
        'MEDIDAS)')
    RefreshSQL.Strings = (
      'Select '
      '  CMIT_ID,'
      '  CMIT_CMED_ID,'
      '  CMIT_DESCRICAO,'
      '  CMIT_MEDIDAS,'
      '  CMIT_DH_CA'
      'from conferencia_medida_itens '
      'where'
      '  CMIT_ID = :CMIT_ID')
    SelectSQL.Strings = (
      
        'select * from conferencia_medida_itens where conferencia_medida_' +
        'itens.cmit_cmed_id = :CMED_ID')
    ModifySQL.Strings = (
      'update conferencia_medida_itens'
      'set'
      '  CMIT_CMED_ID = :CMIT_CMED_ID,'
      '  CMIT_DESCRICAO = :CMIT_DESCRICAO,'
      '  CMIT_DH_CA = :CMIT_DH_CA,'
      '  CMIT_ID = :CMIT_ID,'
      '  CMIT_MEDIDAS = :CMIT_MEDIDAS'
      'where'
      '  CMIT_ID = :OLD_CMIT_ID')
    GeneratorField.Field = 'CMIT_ID'
    GeneratorField.Generator = 'GEN_CONFERENCIA_MEDIDA_ITENS'
    DataSource = dsCadastro
    Left = 384
    Top = 48
    object ibItensCMIT_ID: TIntegerField
      FieldName = 'CMIT_ID'
      Origin = '"CONFERENCIA_MEDIDA_ITENS"."CMIT_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibItensCMIT_CMED_ID: TIntegerField
      FieldName = 'CMIT_CMED_ID'
      Origin = '"CONFERENCIA_MEDIDA_ITENS"."CMIT_CMED_ID"'
      Required = True
    end
    object ibItensCMIT_DESCRICAO: TIBStringField
      FieldName = 'CMIT_DESCRICAO'
      Origin = '"CONFERENCIA_MEDIDA_ITENS"."CMIT_DESCRICAO"'
      Size = 100
    end
    object ibItensCMIT_MEDIDAS: TIBStringField
      FieldName = 'CMIT_MEDIDAS'
      Origin = '"CONFERENCIA_MEDIDA_ITENS"."CMIT_MEDIDAS"'
      Size = 100
    end
    object ibItensCMIT_DH_CA: TDateTimeField
      FieldName = 'CMIT_DH_CA'
      Origin = '"CONFERENCIA_MEDIDA_ITENS"."CMIT_DH_CA"'
    end
  end
  object dsItens: TDataSource
    DataSet = ibItens
    Left = 432
    Top = 48
  end
  object qCliente: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from sp_cliente_portipo(:TipoCli)')
    Left = 576
    Top = 16
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
    Left = 608
    Top = 16
  end
  object qResponsavel: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select * from sp_cliente_portipo(:TipoCli)')
    Left = 576
    Top = 64
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
  object dsResponsavel: TDataSource
    DataSet = qResponsavel
    Left = 608
    Top = 64
  end
  object qAgenda: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select ID, DESCRICAO from  sp_agenda_descricao_byId(:pId)')
    Left = 504
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pId'
        ParamType = ptUnknown
      end>
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Origin = '"SP_CLIENTE_PORTIPO"."ID"'
    end
    object qAgendaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SP_AGENDA_DESCRICAO.DESCRICAO'
      Size = 255
    end
  end
  object dsAgeda: TDataSource
    DataSet = qAgenda
    Left = 536
    Top = 64
  end
end
