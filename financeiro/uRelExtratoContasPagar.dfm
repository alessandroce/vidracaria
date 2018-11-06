inherited FRelExtratoContasPagar: TFRelExtratoContasPagar
  Width = 453
  Height = 351
  Caption = 'FRelExtratoContasPagar'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBarraForm: TPanel
    Width = 437
  end
  inherited BitBtn1: TBitBtn
    Left = 101
    Top = 276
    Action = bt_Cancelar
  end
  inherited BitBtn2: TBitBtn
    Left = 261
    Top = 276
    Action = bt_ok
  end
  inherited BitBtn3: TBitBtn
    Left = 181
    Top = 276
    Action = bt_Limpar
    Caption = 'Limpar'
  end
  inherited GroupBox1: TGroupBox
    Left = 11
    Top = 30
    Width = 415
    Height = 230
    object Bevel1: TBevel
      Left = 8
      Top = 74
      Width = 400
      Height = 10
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 16
      Top = 53
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo '
    end
    object Label2: TLabel
      Left = 168
      Top = 53
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label3: TLabel
      Left = 11
      Top = 83
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label4: TLabel
      Left = 87
      Top = 83
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label5: TLabel
      Left = 11
      Top = 127
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label6: TLabel
      Left = 12
      Top = 174
      Width = 59
      Height = 13
      Caption = 'Ordernar por'
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Data Compet'#234'nicia'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 144
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Data Vencimento'
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 62
      Top = 98
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
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 11
      Top = 99
      Width = 50
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 87
      Top = 99
      Width = 314
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 11
      Top = 143
      Width = 390
      Height = 21
      TabOrder = 7
    end
    object ComboBox1: TComboBox
      Left = 11
      Top = 189
      Width = 326
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 8
      Text = 'Data Compet'#234'ncia'
      Items.Strings = (
        'Data Compet'#234'ncia'
        'Data Vencimento'
        'Cliente/Fornecedor'
        'Descri'#231#227'o')
    end
    object cxDBDateEdit1: TcxDateEdit
      Left = 64
      Top = 48
      TabOrder = 2
      Width = 97
    end
    object cxDBDateEdit2: TcxDateEdit
      Left = 192
      Top = 48
      TabOrder = 3
      Width = 97
    end
  end
  inherited ActionList1: TActionList
    inherited bt_Cancelar: TAction
      OnExecute = bt_CancelarExecute
    end
    inherited bt_Limpar: TAction
      OnExecute = bt_LimparExecute
    end
    inherited bt_ok: TAction
      OnExecute = bt_okExecute
    end
    object bt_SelCli: TAction
      Category = 'Botao'
      Caption = '...'
      OnExecute = bt_SelCliExecute
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qExtrato: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select pagarreceber.*,'
      '       clientes.cli_cliente desc_cliente,'
      '       case when(pagarreceber.par_pagrec=1) then'
      '         pagarreceber.par_valor * -1'
      '       else'
      '         pagarreceber.par_valor'
      '       end valor,'
      '       case when(pagarreceber.par_pagrec=1) then'
      '         '#39'PAGAR'#39
      '       else'
      '         '#39'RECEBER'#39
      '       end tipoconta'
      '  from pagarreceber'
      ' left join clientes on (clientes.cli_id=pagarreceber.par_cli_id)'
      ' where 1=1')
    Left = 216
    Top = 160
    object qExtratoPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PAGARRECEBER.PAR_ID'
      Required = True
    end
    object qExtratoPAR_PAGREC: TIntegerField
      FieldName = 'PAR_PAGREC'
      Origin = 'PAGARRECEBER.PAR_PAGREC'
    end
    object qExtratoPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAGARRECEBER.PAR_DESCRICAO'
      Size = 100
    end
    object qExtratoPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
      Origin = 'PAGARRECEBER.PAR_CAT_ID'
    end
    object qExtratoPAR_CONTA_ID: TIntegerField
      FieldName = 'PAR_CONTA_ID'
      Origin = 'PAGARRECEBER.PAR_CONTA_ID'
    end
    object qExtratoPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
      Origin = 'PAGARRECEBER.PAR_DATACOMPETENCIA'
    end
    object qExtratoPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = 'PAGARRECEBER.PAR_DATAVENCTO'
    end
    object qExtratoPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PAGARRECEBER.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qExtratoPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
      Origin = 'PAGARRECEBER.PAR_CLI_ID'
    end
    object qExtratoPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = 'PAGARRECEBER.PAR_CETROCUSTO'
      Size = 100
    end
    object qExtratoPAR_OBSERVACAO: TIBStringField
      FieldName = 'PAR_OBSERVACAO'
      Origin = 'PAGARRECEBER.PAR_OBSERVACAO'
      Size = 255
    end
    object qExtratoPAR_ANEXO: TMemoField
      FieldName = 'PAR_ANEXO'
      Origin = 'PAGARRECEBER.PAR_ANEXO'
      BlobType = ftMemo
      Size = 8
    end
    object qExtratoPAR_PAGO: TIBStringField
      FieldName = 'PAR_PAGO'
      Origin = 'PAGARRECEBER.PAR_PAGO'
      FixedChar = True
      Size = 1
    end
    object qExtratoPAR_DATAPGTO: TDateField
      FieldName = 'PAR_DATAPGTO'
      Origin = 'PAGARRECEBER.PAR_DATAPGTO'
    end
    object qExtratoPAR_DESCONTOTAXA: TIBBCDField
      FieldName = 'PAR_DESCONTOTAXA'
      Origin = 'PAGARRECEBER.PAR_DESCONTOTAXA'
      Precision = 18
      Size = 2
    end
    object qExtratoPAR_JUROMULTA: TIBBCDField
      FieldName = 'PAR_JUROMULTA'
      Origin = 'PAGARRECEBER.PAR_JUROMULTA'
      Precision = 18
      Size = 2
    end
    object qExtratoPAR_VALORPAGO: TIBBCDField
      FieldName = 'PAR_VALORPAGO'
      Origin = 'PAGARRECEBER.PAR_VALORPAGO'
      Precision = 18
      Size = 2
    end
    object qExtratoPAR_DH_CA: TDateTimeField
      FieldName = 'PAR_DH_CA'
      Origin = 'PAGARRECEBER.PAR_DH_CA'
    end
    object qExtratoPAR_PARCELANUM: TIntegerField
      FieldName = 'PAR_PARCELANUM'
      Origin = 'PAGARRECEBER.PAR_PARCELANUM'
    end
    object qExtratoPAR_PARCELAMAX: TIntegerField
      FieldName = 'PAR_PARCELAMAX'
      Origin = 'PAGARRECEBER.PAR_PARCELAMAX'
    end
    object qExtratoPAR_PARCELAPAI: TIntegerField
      FieldName = 'PAR_PARCELAPAI'
      Origin = 'PAGARRECEBER.PAR_PARCELAPAI'
    end
    object qExtratoDESC_CLIENTE: TIBStringField
      FieldName = 'DESC_CLIENTE'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
    end
    object qExtratoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qExtratoTIPOCONTA: TIBStringField
      FieldName = 'TIPOCONTA'
      Required = True
      FixedChar = True
      Size = 7
    end
  end
  object frxExtratoPagarReceber: TfrxDBDataset
    UserName = 'frxExtratoPagarReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
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
      'PAR_DH_CA=PAR_DH_CA'
      'PAR_PARCELANUM=PAR_PARCELANUM'
      'PAR_PARCELAMAX=PAR_PARCELAMAX'
      'PAR_PARCELAPAI=PAR_PARCELAPAI'
      'DESC_CLIENTE=DESC_CLIENTE'
      'VALOR=VALOR'
      'TIPOCONTA=TIPOCONTA')
    DataSet = qExtrato
    BCDToCurrency = False
    Left = 299
    Top = 158
  end
  object dsExtrato: TDataSource
    DataSet = qExtrato
    Left = 256
    Top = 160
  end
end
