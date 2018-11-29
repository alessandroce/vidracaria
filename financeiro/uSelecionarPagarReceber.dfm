inherited FSelecionarPagarReceber: TFSelecionarPagarReceber
  Caption = 'FSelecionarPagarReceber'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        object grConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 79
        end
        object grConsultaDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object grConsultaDBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object grConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 190
        end
        object grConsultaDBTableView1ITEM: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'ITEM'
          Width = 190
        end
        object grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'PAR_VALOR'
          Width = 80
        end
        object grConsultaDBTableView1PAR_DATAVENCTO: TcxGridDBColumn
          Caption = 'Data Vencimento'
          DataBinding.FieldName = 'PAR_DATAVENCTO'
          Width = 100
        end
        object grConsultaDBTableView1PAR_CLI_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PAR_CLI_ID'
          Visible = False
        end
        object grConsultaDBTableView1PAR_CAT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PAR_CAT_ID'
          Visible = False
        end
        object grConsultaDBTableView1PAR_NUMDOC: TcxGridDBColumn
          DataBinding.FieldName = 'PAR_NUMDOC'
          Visible = False
        end
        object grConsultaDBTableView1VALOR_ORIGINAL: TcxGridDBColumn
          Caption = 'Valor Original'
          DataBinding.FieldName = 'VALOR_ORIGINAL'
        end
        object grConsultaDBTableView1VALOR_QUITADO: TcxGridDBColumn
          Caption = 'Valor quitado'
          DataBinding.FieldName = 'VALOR_QUITADO'
        end
      end
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select case'
      '       when (pagarreceber.par_pagrec=2) then '#39'Pagar'#39
      '       when (pagarreceber.par_pagrec=1) then '#39'Receber'#39
      '       end tipo,'
      '       pagarreceber.par_id ID,'
      '       pagarreceber.par_id CODIGO,'
      '       pagarreceber.par_descricao DESCRICAO,'
      
        '       (select pl_item.pit_descricao from pl_item where pl_item.' +
        'pit_id = pagarreceber.par_cat_id) ITEM,'
      '       pagarreceber.par_valor valor_original,'
      '       pagarreceber.par_valor -'
      '           coalesce((select sum(pagarreceber_baixa.bxp_valor)'
      '                       from pagarreceber_baixa'
      
        '                      where pagarreceber_baixa.bxp_par_id=pagarr' +
        'eceber.par_id),0) par_valor,'
      '       coalesce((select sum(pagarreceber_baixa.bxp_valor)'
      '                   from pagarreceber_baixa'
      
        '                  where pagarreceber_baixa.bxp_par_id=pagarreceb' +
        'er.par_id),0) valor_quitado,'
      '       pagarreceber.par_datavencto,'
      '       pagarreceber.par_cli_id,'
      '       pagarreceber.par_cat_id,'
      '       pagarreceber.par_numdoc'
      '  from pagarreceber'
      ' where ((pagarreceber.par_cli_id = :cli_id) or (0 = :cli_id))'
      '   and coalesce(pagarreceber.par_baixado,'#39'N'#39')='#39'N'#39
      ' order by pagarreceber.par_datavencto')
    Left = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_id'
        ParamType = ptUnknown
      end>
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'PAGARRECEBER.PAR_ID'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PAGARRECEBER.PAR_ID'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAGARRECEBER.PAR_DESCRICAO'
      Size = 100
    end
    object qConsultaITEM: TIBStringField
      FieldName = 'ITEM'
      Size = 100
    end
    object qConsultaPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PAGARRECEBER.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qConsultaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = 'PAGARRECEBER.PAR_DATAVENCTO'
    end
    object qConsultaPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
      Origin = 'PAGARRECEBER.PAR_CLI_ID'
    end
    object qConsultaPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
      Origin = '"PAGARRECEBER"."PAR_CAT_ID"'
    end
    object qConsultaPAR_NUMDOC: TIBStringField
      FieldName = 'PAR_NUMDOC'
      Origin = '"PAGARRECEBER"."PAR_NUMDOC"'
      Size = 15
    end
    object qConsultaTIPO: TIBStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object qConsultaVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"PAGARRECEBER"."PAR_VALOR"'
      Precision = 18
      Size = 2
    end
    object qConsultaVALOR_QUITADO: TIBBCDField
      FieldName = 'VALOR_QUITADO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsConsultaITEM: TStringField
      FieldName = 'ITEM'
      Size = 100
    end
    object cdsConsultaPAR_VALOR: TBCDField
      FieldName = 'PAR_VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
    end
    object cdsConsultaPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
    end
    object cdsConsultaPAR_CAT_ID: TIntegerField
      FieldName = 'PAR_CAT_ID'
    end
    object cdsConsultaPAR_NUMDOC: TStringField
      FieldName = 'PAR_NUMDOC'
      Size = 15
    end
    object cdsConsultaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 7
    end
    object cdsConsultaVALOR_ORIGINAL: TBCDField
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVALOR_QUITADO: TBCDField
      FieldName = 'VALOR_QUITADO'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
end
