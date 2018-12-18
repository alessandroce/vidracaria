inherited FSelecionarVendedor: TFSelecionarVendedor
  Caption = 'FSelecionarVendedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        object grConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
        end
        object grConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 500
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
      'select clientes.cli_id ID,'
      '       clientes.cli_id CODIGO,'
      '       clientes.cli_cliente DESCRICAO'
      '  from clientes'
      
        ' join cliente_tipo_cliente on (cliente_tipo_cliente.ctc_cli_id=c' +
        'lientes.cli_id)'
      
        ' join cliente_tipo on (cliente_tipo.ctp_id=cliente_tipo_cliente.' +
        'ctc_ctp_id)'
      ' where cliente_tipo.ctp_id=4--VENDEDOR')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'CLIENTES.CLI_ID'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CLIENTES.CLI_ID'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CLIENTES.CLI_CLIENTE'
      Size = 100
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
  end
end
