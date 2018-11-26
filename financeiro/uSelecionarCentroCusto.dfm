inherited FSelecionarCentroCusto: TFSelecionarCentroCusto
  Caption = 'FSelecionarCentroCusto'
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
      'select centrocusto.cco_id ID,'
      '       centrocusto.cco_codigo CODIGO,'
      '       centrocusto.cco_descricao DESCRICAO'
      '  from centrocusto'
      ' order by centrocusto.cco_descricao')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'CENTROCUSTO.CCO_ID'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CENTROCUSTO.CCO_CODIGO'
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CENTROCUSTO.CCO_DESCRICAO'
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
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
