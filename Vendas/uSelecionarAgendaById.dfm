inherited FSelecionarAgendaById: TFSelecionarAgendaById
  Caption = 'FSelecionarAgendaById'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grConsulta: TcxGrid
      inherited grConsultaDBTableView1: TcxGridDBTableView
        object grConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 570
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
      'select a.*,'
      '       a.id codigo'
      '  from sp_agenda_descricao_byid(:pId) a'
      ' where a.tipoagenda_id=2'
      '   and a.status=1  ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pId'
        ParamType = ptUnknown
      end>
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.ID'
    end
    object qConsultaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.DESCRICAO'
      Size = 255
    end
    object qConsultaTIPOAGENDA_ID: TIntegerField
      FieldName = 'TIPOAGENDA_ID'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.TIPOAGENDA_ID'
    end
    object qConsultaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.STATUS'
    end
    object qConsultaDATA_INI: TDateField
      FieldName = 'DATA_INI'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.DATA_INI'
    end
    object qConsultaHORA_INI: TTimeField
      FieldName = 'HORA_INI'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.HORA_INI'
    end
    object qConsultaDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.DATA_FIM'
    end
    object qConsultaHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.HORA_FIM'
    end
    object qConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'SP_AGENDA_DESCRICAO_BYID.ID'
    end
  end
  inherited cdsConsulta: TClientDataSet
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object cdsConsultaTIPOAGENDA_ID: TIntegerField
      FieldName = 'TIPOAGENDA_ID'
    end
    object cdsConsultaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsConsultaDATA_INI: TDateField
      FieldName = 'DATA_INI'
    end
    object cdsConsultaHORA_INI: TTimeField
      FieldName = 'HORA_INI'
    end
    object cdsConsultaDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
    end
    object cdsConsultaHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
    end
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
end
