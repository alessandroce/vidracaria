inherited FSelecionarBanco: TFSelecionarBanco
  Left = 249
  Top = 173
  Caption = 'FSelecionarBanco'
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
          Width = 470
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
      'select bfeb_id id,bfeb_codigo codigo,bfeb_descricao descricao'
      '  from bancos_febraban'
      'order by bfeb_descricao')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'BANCOS_FEBRABAN.BFEB_ID'
      Required = True
    end
    object qConsultaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'BANCOS_FEBRABAN.BFEB_CODIGO'
      Size = 15
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BANCOS_FEBRABAN.BFEB_DESCRICAO'
      Size = 100
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
