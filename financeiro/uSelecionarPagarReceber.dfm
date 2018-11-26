inherited FSelecionarPagarReceber: TFSelecionarPagarReceber
  Caption = 'FSelecionarPagarReceber'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
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
      'select pagarreceber.par_id ID,'
      '       pagarreceber.par_id CODIGO,'
      '       pagarreceber.par_descricao DESCRICAO,'
      
        '       (select pl_item.pit_descricao from pl_item where pl_item.' +
        'pit_id = pagarreceber.par_cat_id) ITEM,'
      '       pagarreceber.par_valor,'
      '       pagarreceber.par_datavencto,'
      '       pagarreceber.par_cli_id'
      '  from pagarreceber'
      ' where pagarreceber.par_cli_id = :cli_id'
      ' order by pagarreceber.par_datavencto')
    ParamData = <
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
      Precision = 18
      Size = 2
    end
    object cdsConsultaPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
    end
    object cdsConsultaPAR_CLI_ID: TIntegerField
      FieldName = 'PAR_CLI_ID'
    end
  end
end
