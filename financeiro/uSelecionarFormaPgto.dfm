inherited FSelecionarFormaPgto: TFSelecionarFormaPgto
  Caption = 'FSelecionarFormaPgto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        object grConsultaDBTableView1ID: TcxGridDBColumn
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
      'select forma_pgto.fop_id ID, forma_pgto.fop_id CODIGO,'
      '       forma_pgto.fop_descricao DESCRICAO'
      '  from forma_pgto'
      ' order by fop_descricao')
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'FORMA_PGTO.FOP_ID'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'FORMA_PGTO.FOP_DESCRICAO'
      Size = 100
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'FORMA_PGTO.FOP_ID'
      Required = True
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
end
