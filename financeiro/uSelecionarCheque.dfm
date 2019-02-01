inherited FSelecionarCheque: TFSelecionarCheque
  Left = 299
  Top = 165
  Height = 400
  Caption = 'FSelecionarCheque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 71
    Width = 584
    Height = 249
    Align = alClient
    TabOrder = 1
    object grConsulta: TcxGrid
      Left = 1
      Top = 1
      Width = 582
      Height = 247
      Align = alClient
      TabOrder = 0
      object grConsultaDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = grConsultaDBTableView1CellDblClick
        DataController.DataSource = dsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Clique aqui para definir um filtro'
        FilterRow.SeparatorWidth = 5
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsView.NoDataToDisplayInfoText = 'Sem registros para exibir'
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grConsultaDBTableView1SELECIONAR: TcxGridDBColumn
          DataBinding.FieldName = 'SELECIONAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 40
          IsCaptionAssigned = True
        end
        object grConsultaDBTableView1CHQ_ID: TcxGridDBColumn
          DataBinding.FieldName = 'CHQ_ID'
          Visible = False
        end
        object grConsultaDBTableView1CHQ_BANCO: TcxGridDBColumn
          Caption = 'Banco'
          DataBinding.FieldName = 'CHQ_BANCO'
          Options.Editing = False
        end
        object grConsultaDBTableView1CHQ_CONTA: TcxGridDBColumn
          Caption = 'Conta'
          DataBinding.FieldName = 'CHQ_CONTA'
          Options.Editing = False
        end
        object grConsultaDBTableView1CHQ_AGENCIA: TcxGridDBColumn
          Caption = 'Ag'#234'ncia'
          DataBinding.FieldName = 'CHQ_AGENCIA'
          Options.Editing = False
          Width = 94
        end
        object grConsultaDBTableView1CHQ_NUMERO: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'CHQ_NUMERO'
          Options.Editing = False
        end
        object grConsultaDBTableView1CHQ_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'CHQ_VALOR'
          Options.Editing = False
          Width = 94
        end
      end
      object grConsultaLevel1: TcxGridLevel
        GridView = grConsultaDBTableView1
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 320
    Width = 584
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btCancelar: TBitBtn
      Left = 210
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      OnClick = btCancelarClick
      Glyph.Data = {
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FF
        FFFFFFFFFFF6F6FFFFFFFFFFF6A7A7FFFFFFFFFFFFA7A7F6FFFFFFFFF6A757A7
        FFFFFFFFA757A7F6FFFFFFFFFFFFA757A7FFFFA757A7FFFFFFFFFFFFFFFFFFA7
        57A7A757A7FFFFFFFFFFFFFFFFFFFFFFA75757A7FFFFFFFFFFFFFFFFFFFFFFFF
        A75757A7FFFFFFFFFFFFFFFFFFFFFFA757A7A757A7FFFFFFFFFFFFFFFFFFA757
        A7FFFFA757A7FFFFFFFFFFFFF6A757A7FFFFFFFFA757A7F6FFFFFFFFF6A7A7FF
        FFFFFFFFFFA7A7F6FFFFFFFFFFF6F6FFFFFFFFFFFFF6F6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btOK: TBitBtn
      Left = 298
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
      OnClick = btOKClick
      Glyph.Data = {
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5
        F6FFFFFFFFFFFFFFFFFFFFFFFFFFB56AB3F6FFFFFFFFFFFFFFFFFFFFFFB46A08
        B3ABF6FFFFFFFFFFFFFFFFFFB46A08FFF6ABABF6FFFFFFFFFFFFFF086A08FFFF
        FFF6ABABF6FFFFFFFFFFFFFFF6FFFFFFFFFFF6ABABF6FFFFFFFFFFFFFFFFFFFF
        FFFFFFF6ABABF6FFFFFFFFFFFFFFFFFFFFFFFFFFF6ABABF6FFFFFFFFFFFFFFFF
        FFFFFFFFFFF6AB6BF6FFFFFFFFFFFFFFFFFFFFFFFFFFF6B4F6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 30
    Width = 584
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object lblVezes: TLabel
      Left = 295
      Top = 14
      Width = 28
      Height = 13
      Caption = 'vezes'
      Visible = False
    end
    object lblOcorrencia: TLabel
      Left = 189
      Top = 14
      Width = 52
      Height = 13
      Caption = 'Ocorr'#234'ncia'
      Visible = False
    end
    object edOcorrencia: TEdit
      Left = 249
      Top = 10
      Width = 40
      Height = 21
      Enabled = False
      TabOrder = 0
      Visible = False
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Todos'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inverter'
      TabOrder = 2
      OnClick = BitBtn4Click
    end
  end
  inherited ActionList1: TActionList
    Top = 120
  end
  inherited ImageList1: TImageList
    Top = 120
  end
  inherited frxReport1: TfrxReport
    Top = 120
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxIBXComponents1: TfrxIBXComponents
    Top = 120
  end
  object qConsulta: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    SQL.Strings = (
      'select '#39'N'#39' selecionar,'
      '    CHQ_ID,'
      '    CHQ_BANCO,'
      '    CHQ_CONTA,'
      '    CHQ_AGENCIA,'
      '    CHQ_NUMERO,'
      '    CHQ_VALOR'
      '  from cheque'
      ' where not exists ('
      '                 select null'
      '                   from pagarreceber_cheque'
      
        '                  where pagarreceber_cheque.pac_chq_id=cheque.ch' +
        'q_id'
      '                   )'
      '   and coalesce(cheque.chq_situacao,0)=0')
    Left = 392
    Top = 112
    object qConsultaSELECIONAR: TIBStringField
      FieldName = 'SELECIONAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qConsultaCHQ_ID: TIntegerField
      FieldName = 'CHQ_ID'
      Origin = 'CHEQUE.CHQ_ID'
      Required = True
    end
    object qConsultaCHQ_BANCO: TIBStringField
      FieldName = 'CHQ_BANCO'
      Origin = 'CHEQUE.CHQ_BANCO'
      Size = 15
    end
    object qConsultaCHQ_CONTA: TIBStringField
      FieldName = 'CHQ_CONTA'
      Origin = 'CHEQUE.CHQ_CONTA'
      Size = 15
    end
    object qConsultaCHQ_AGENCIA: TIBStringField
      FieldName = 'CHQ_AGENCIA'
      Origin = 'CHEQUE.CHQ_AGENCIA'
      Size = 6
    end
    object qConsultaCHQ_NUMERO: TIBStringField
      FieldName = 'CHQ_NUMERO'
      Origin = 'CHEQUE.CHQ_NUMERO'
      Size = 15
    end
    object qConsultaCHQ_VALOR: TIBBCDField
      FieldName = 'CHQ_VALOR'
      Origin = 'CHEQUE.CHQ_VALOR'
      Precision = 18
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 520
    Top = 112
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 480
    Top = 112
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
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qConsulta
    Left = 432
    Top = 112
  end
end
