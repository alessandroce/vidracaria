inherited FExibirFinanceiroVendaComissionada: TFExibirFinanceiroVendaComissionada
  Caption = 'FExibirFinanceiroVendaComissionada'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        object grConsultaDBTableView1PAR_DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 200
        end
        object grConsultaDBTableView1CATEGORIA: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'CATEGORIA'
          Width = 200
        end
        object grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'PAR_VALOR'
          Width = 80
        end
        object grConsultaDBTableView1CLIENTE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLIENTE'
          Width = 200
        end
        object grConsultaDBTableView1PAR_NUMDOC: TcxGridDBColumn
          Caption = 'Numero Doc.'
          DataBinding.FieldName = 'PAR_NUMDOC'
        end
        object grConsultaDBTableView1BAIXADO: TcxGridDBColumn
          Caption = 'Baixado'
          DataBinding.FieldName = 'BAIXADO'
          Width = 50
        end
      end
    end
  end
  inherited Panel2: TPanel
    inherited BitBtn1: TBitBtn
      Left = 98
      Visible = False
    end
    inherited BitBtn2: TBitBtn
      Left = 255
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select '
      '       PAR_ID,'
      '       PAR_DESCRICAO,'
      '       PAR_ID ID,'
      '       PAR_ID CODIGO,'
      '       PAR_DESCRICAO DESCRICAO,'
      '       (select pl_categoria.pca_descricao'
      '          from pl_categoria'
      '         where pl_categoria.pca_id = PAR_CAT_ID) categoria,'
      '       PAR_VALOR,'
      '       (select clientes.cli_cliente'
      '          from clientes'
      '         where clientes.cli_id = PAR_CLI_ID) cliente,'
      '       PAR_NUMDOC,'
      '       case'
      '       when(coalesce(PAR_BAIXADO,'#39'N'#39')='#39'S'#39') then '#39'SIM'#39
      '       when(coalesce(PAR_BAIXADO,'#39'N'#39')='#39'N'#39') then '#39'NAO'#39
      '       end BAIXADO,'
      '       case'
      '       when(PAR_TIPOBAIXA='#39'T'#39') then '#39'TOTAL'#39
      '       when(PAR_TIPOBAIXA='#39'P'#39') then '#39'PARCIAL'#39
      '       end TIPO_BAIXA'
      '  from pagarreceber'
      ' where pagarreceber.par_vendacomissionada_id = :vendac_id')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vendac_id'
        ParamType = ptUnknown
      end>
    object qConsultaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PAGARRECEBER.PAR_ID'
      Required = True
    end
    object qConsultaPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAGARRECEBER.PAR_DESCRICAO'
      Size = 100
    end
    object qConsultaCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object qConsultaPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = 'PAGARRECEBER.PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object qConsultaCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object qConsultaPAR_NUMDOC: TIBStringField
      FieldName = 'PAR_NUMDOC'
      Origin = 'PAGARRECEBER.PAR_NUMDOC'
      Size = 15
    end
    object qConsultaBAIXADO: TIBStringField
      FieldName = 'BAIXADO'
      FixedChar = True
      Size = 3
    end
    object qConsultaTIPO_BAIXA: TIBStringField
      FieldName = 'TIPO_BAIXA'
      FixedChar = True
      Size = 7
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      Required = True
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      Required = True
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Required = True
    end
    object cdsConsultaPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 100
    end
    object cdsConsultaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
    object cdsConsultaPAR_VALOR: TBCDField
      FieldName = 'PAR_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsConsultaPAR_NUMDOC: TStringField
      FieldName = 'PAR_NUMDOC'
      Size = 15
    end
    object cdsConsultaBAIXADO: TStringField
      FieldName = 'BAIXADO'
      FixedChar = True
      Size = 3
    end
    object cdsConsultaTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      FixedChar = True
      Size = 7
    end
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
