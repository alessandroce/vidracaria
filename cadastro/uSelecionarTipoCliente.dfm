inherited FSelecionarTipoCliente: TFSelecionarTipoCliente
  Caption = 'FSelecionarTipoCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        OptionsSelection.CellSelect = True
        object grConsultaDBTableView1SELECAO: TcxGridDBColumn
          DataBinding.FieldName = 'SELECAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 30
          IsCaptionAssigned = True
        end
        object grConsultaDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object grConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object grConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 535
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
      'select '#39'N'#39' selecao,'
      '       cliente_tipo.ctp_id ID,'
      '       cliente_tipo.ctp_id CODIGO,'
      '       cliente_tipo.ctp_descricao DESCRICAO'
      '  from cliente_tipo'
      ' order by cliente_tipo.ctp_descricao')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"CLIENTE_TIPO"."CTP_ID"'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CLIENTE_TIPO"."CTP_ID"'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CLIENTE_TIPO"."CTP_DESCRICAO"'
      Size = 100
    end
    object qConsultaSELECAO: TIBStringField
      FieldName = 'SELECAO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
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
    object cdsConsultaSELECAO: TStringField
      FieldName = 'SELECAO'
      FixedChar = True
      Size = 1
    end
  end
end
