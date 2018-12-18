inherited FCadAgenda: TFCadAgenda
  Left = 320
  Top = 190
  Height = 700
  Caption = 'FCadAgenda'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Height = 631
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Top = 272
        Height = 311
        Align = alBottom
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1PERIODO: TcxGridDBColumn
            Caption = 'Per'#237'odo'
            DataBinding.FieldName = 'PERIODO'
            Width = 195
          end
          object grConsultaDBTableView1CONM_ASSUNTO: TcxGridDBColumn
            Caption = 'Assunto'
            DataBinding.FieldName = 'CONM_ASSUNTO'
            Width = 250
          end
          object grConsultaDBTableView1CONM_LOCAL: TcxGridDBColumn
            Caption = 'Local'
            DataBinding.FieldName = 'CONM_LOCAL'
            Width = 250
          end
          object grConsultaDBTableView1CONM_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'CONM_OBSERVACAO'
            Width = 250
          end
          object grConsultaDBTableView1TIPOAGENDA: TcxGridDBColumn
            Caption = 'Tipo Agenda'
            DataBinding.FieldName = 'TIPOAGENDA'
            Width = 150
          end
          object grConsultaDBTableView1STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
            Width = 150
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited rgAtivo: TRadioGroup
          Left = 650
          Width = 55
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 583
      end
      object Panel3: TPanel
        Left = 0
        Top = 50
        Width = 776
        Height = 223
        Align = alTop
        TabOrder = 3
        object Bevel3: TBevel
          Left = 1
          Top = 7
          Width = 774
          Height = 25
          Shape = bsFrame
        end
        object Bevel2: TBevel
          Left = 1
          Top = 202
          Width = 774
          Height = 25
          Shape = bsFrame
        end
        object Label1: TLabel
          Left = 316
          Top = 12
          Width = 144
          Height = 13
          Caption = 'Filtros para exibir agenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 366
          Top = 207
          Width = 44
          Height = 13
          Caption = 'Agenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDateNavigator1: TcxDateNavigator
          Left = 11
          Top = 33
          Width = 193
          Height = 165
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          SelectPeriod = False
          Storage = cxSchedulerDBStorage1
          TabOrder = 0
          OnSelectionChanged = cxDateNavigator1SelectionChanged
        end
        object rgTipoAgenda: TRadioGroup
          Left = 224
          Top = 49
          Width = 257
          Height = 134
          Caption = '  Tipo Agenda  '
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Agenda de Compromissos'
            'Agenda de confer'#234'ncia de medidas'
            'Agenda de solicita'#231#227'o de materiais'
            'Agenda de entregas')
          TabOrder = 1
          OnClick = rgTipoAgendaClick
        end
        object rgStatus: TRadioGroup
          Left = 504
          Top = 49
          Width = 185
          Height = 134
          Caption = '  Status  '
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Agendado'
            'Aguardando'
            'Conclu'#237'do'
            'Cancelado')
          TabOrder = 2
          OnClick = rgStatusClick
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label5: TLabel [1]
        Left = 16
        Top = 128
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit3
      end
      object Label6: TLabel [2]
        Left = 112
        Top = 128
        Width = 53
        Height = 13
        Caption = 'Hora Inicial'
        FocusControl = DBEdit4
      end
      object Label7: TLabel [3]
        Left = 180
        Top = 128
        Width = 48
        Height = 13
        Caption = 'Hora Final'
        FocusControl = DBEdit5
      end
      object Label8: TLabel [4]
        Left = 16
        Top = 176
        Width = 38
        Height = 13
        Caption = 'Assunto'
        FocusControl = DBEdit6
      end
      object Label9: TLabel [5]
        Left = 16
        Top = 216
        Width = 26
        Height = 13
        Caption = 'Local'
        FocusControl = DBEdit7
      end
      object Label10: TLabel [6]
        Left = 16
        Top = 264
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 144
        Width = 89
        Height = 21
        DataField = 'CONM_DATA_INI'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 144
        Width = 61
        Height = 21
        DataField = 'CONM_HORA_INI'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 180
        Top = 144
        Width = 61
        Height = 21
        DataField = 'CONM_HORA_FIM'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 192
        Width = 649
        Height = 21
        DataField = 'CONM_ASSUNTO'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 232
        Width = 649
        Height = 21
        DataField = 'CONM_LOCAL'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBMemo3: TDBMemo
        Left = 16
        Top = 280
        Width = 649
        Height = 88
        DataField = 'CONM_OBSERVACAO'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 16
        Top = 69
        Width = 369
        Height = 43
        Caption = '  Tipo  '
        Columns = 4
        DataField = 'CONM_TIPOAGENDA_ID'
        DataSource = dsCadastro
        Items.Strings = (
          'Compromisso'
          'Confer'#234'ncia'
          'Solicita'#231#227'o'
          'Entrega')
        TabOrder = 7
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 392
        Top = 68
        Width = 355
        Height = 43
        Caption = '  Status  '
        Columns = 3
        DataField = 'CONM_STATUS'
        DataSource = dsCadastro
        Items.Strings = (
          'Agendado'
          'Conclu'#237'do'
          'Cancelado')
        TabOrder = 8
        Values.Strings = (
          '1'
          '2'
          '3')
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    AfterPost = ibCadastroAfterPost
    BeforePost = ibCadastroBeforePost
    OnNewRecord = ibCadastroNewRecord
    DeleteSQL.Strings = (
      'delete from agenda'
      'where'
      '  CONM_ID = :OLD_CONM_ID')
    InsertSQL.Strings = (
      'insert into agenda'
      '  (CONM_ID, CONM_DATA_INI, CONM_HORA_INI, CONM_DATA_FIM, '
      'CONM_HORA_FIM, '
      '   CONM_ASSUNTO, CONM_LOCAL, CONM_OBSERVACAO, '
      'CONM_TIPOAGENDA_ID, CONM_STATUS, '
      '   CONM_DH_CA)'
      'values'
      '  (:CONM_ID, :CONM_DATA_INI, :CONM_HORA_INI, :CONM_DATA_FIM, '
      ':CONM_HORA_FIM, '
      '   :CONM_ASSUNTO, :CONM_LOCAL, :CONM_OBSERVACAO, '
      ':CONM_TIPOAGENDA_ID, :CONM_STATUS, '
      '   :CONM_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from agenda '
      'where'
      '  CONM_ID = :CONM_ID')
    SelectSQL.Strings = (
      'select * from agenda where conm_id = :FId')
    ModifySQL.Strings = (
      'update agenda'
      'set'
      '  CONM_ID = :CONM_ID,'
      '  CONM_DATA_INI = :CONM_DATA_INI,'
      '  CONM_HORA_INI = :CONM_HORA_INI,'
      '  CONM_DATA_FIM = :CONM_DATA_FIM,'
      '  CONM_HORA_FIM = :CONM_HORA_FIM,'
      '  CONM_ASSUNTO = :CONM_ASSUNTO,'
      '  CONM_LOCAL = :CONM_LOCAL,'
      '  CONM_OBSERVACAO = :CONM_OBSERVACAO,'
      '  CONM_TIPOAGENDA_ID = :CONM_TIPOAGENDA_ID,'
      '  CONM_STATUS = :CONM_STATUS,'
      '  CONM_DH_CA = :CONM_DH_CA'
      'where'
      '  CONM_ID = :OLD_CONM_ID')
    GeneratorField.Field = 'CONM_ID'
    GeneratorField.Generator = 'GEN_AGENDA'
    object ibCadastroCONM_ID: TIntegerField
      FieldName = 'CONM_ID'
      Origin = 'AGENDA.CONM_ID'
      Required = True
    end
    object ibCadastroCONM_DATA_INI: TDateField
      FieldName = 'CONM_DATA_INI'
      Origin = 'AGENDA.CONM_DATA_INI'
    end
    object ibCadastroCONM_HORA_INI: TTimeField
      FieldName = 'CONM_HORA_INI'
      Origin = 'AGENDA.CONM_HORA_INI'
    end
    object ibCadastroCONM_DATA_FIM: TDateField
      FieldName = 'CONM_DATA_FIM'
      Origin = 'AGENDA.CONM_DATA_FIM'
    end
    object ibCadastroCONM_HORA_FIM: TTimeField
      FieldName = 'CONM_HORA_FIM'
      Origin = 'AGENDA.CONM_HORA_FIM'
    end
    object ibCadastroCONM_ASSUNTO: TIBStringField
      FieldName = 'CONM_ASSUNTO'
      Origin = 'AGENDA.CONM_ASSUNTO'
      Size = 100
    end
    object ibCadastroCONM_LOCAL: TIBStringField
      FieldName = 'CONM_LOCAL'
      Origin = 'AGENDA.CONM_LOCAL'
      Size = 100
    end
    object ibCadastroCONM_OBSERVACAO: TIBStringField
      FieldName = 'CONM_OBSERVACAO'
      Origin = 'AGENDA.CONM_OBSERVACAO'
      Size = 255
    end
    object ibCadastroCONM_TIPOAGENDA_ID: TIntegerField
      FieldName = 'CONM_TIPOAGENDA_ID'
      Origin = 'AGENDA.CONM_TIPOAGENDA_ID'
    end
    object ibCadastroCONM_STATUS: TIntegerField
      FieldName = 'CONM_STATUS'
      Origin = 'AGENDA.CONM_STATUS'
    end
    object ibCadastroCONM_DH_CA: TDateTimeField
      FieldName = 'CONM_DH_CA'
      Origin = 'AGENDA.CONM_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select agenda.conm_id ID,'
      '       agenda.*,'
      
        '       CAST(agenda.conm_data_ini  || '#39' 08:00:00'#39'  AS TIMESTAMP) ' +
        'DATAINICIAL,'
      
        '       CAST(agenda.conm_data_fim  || '#39' 18:00:00'#39'  AS TIMESTAMP) ' +
        'DATAFINAL,'
      '       lpad(extract(day from agenda.conm_data_ini),2,'#39'0'#39')||'#39'/'#39'||'
      
        '       lpad(extract(month from agenda.conm_data_ini),2,'#39'0'#39')||'#39'/'#39 +
        '||'
      
        '       lpad(extract(year from agenda.conm_data_ini),2,'#39'0'#39')||'#39' '#39'|' +
        '|'
      '       '#39' das '#39'||'
      
        '       lpad(extract(hour from agenda.conm_hora_ini),2,'#39'0'#39')||'#39':'#39'|' +
        '|'
      '       lpad(extract(minute from agenda.conm_hora_ini),2,'#39'0'#39')||'
      '       '#39' at'#233' '#39'||'
      
        '       lpad(extract(hour from agenda.conm_hora_fim),2,'#39'0'#39')||'#39':'#39'|' +
        '|'
      
        '       lpad(extract(minute from agenda.conm_hora_fim),2,'#39'0'#39') per' +
        'iodo,'
      '       case'
      '       when(agenda.conm_tipoagenda_id=1) then '#39'COMPROMISSO'#39
      '       when(agenda.conm_tipoagenda_id=2) then '#39'CONFER'#202'NCIA'#39
      '       when(agenda.conm_tipoagenda_id=3) then '#39'SOLICITA'#199#195'O'#39
      '       when(agenda.conm_tipoagenda_id=4) then '#39'ENTREGA'#39
      '       end tipoagenda,'
      '       case'
      '       when(agenda.conm_status=1) then '#39'AGENDADO'#39
      '       when(agenda.conm_status=2) then '#39'AGUARDANDO'#39
      '       when(agenda.conm_status=3) then '#39'CONCU'#205'DO'#39
      '       when(agenda.conm_status=4) then '#39'CANCELADO'#39
      '       end status'
      '  from agenda'
      ' where agenda.conm_data_ini = :data'
      
        '   and ((agenda.conm_tipoagenda_id = :tipoagenda_id) or (0 = :ti' +
        'poagenda_id))'
      '   and ((agenda.conm_status = :status) or (0 = :status))'
      ' order by agenda.conm_data_ini, agenda.conm_hora_ini')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoagenda_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoagenda_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'AGENDA.CONM_ID'
      Required = True
    end
    object qConsultaCONM_ID: TIntegerField
      FieldName = 'CONM_ID'
      Origin = 'AGENDA.CONM_ID'
      Required = True
    end
    object qConsultaCONM_DATA_INI: TDateField
      FieldName = 'CONM_DATA_INI'
      Origin = 'AGENDA.CONM_DATA_INI'
    end
    object qConsultaCONM_HORA_INI: TTimeField
      FieldName = 'CONM_HORA_INI'
      Origin = 'AGENDA.CONM_HORA_INI'
    end
    object qConsultaCONM_DATA_FIM: TDateField
      FieldName = 'CONM_DATA_FIM'
      Origin = 'AGENDA.CONM_DATA_FIM'
    end
    object qConsultaCONM_HORA_FIM: TTimeField
      FieldName = 'CONM_HORA_FIM'
      Origin = 'AGENDA.CONM_HORA_FIM'
    end
    object qConsultaCONM_ASSUNTO: TIBStringField
      FieldName = 'CONM_ASSUNTO'
      Origin = 'AGENDA.CONM_ASSUNTO'
      Size = 100
    end
    object qConsultaCONM_LOCAL: TIBStringField
      FieldName = 'CONM_LOCAL'
      Origin = 'AGENDA.CONM_LOCAL'
      Size = 100
    end
    object qConsultaCONM_OBSERVACAO: TIBStringField
      FieldName = 'CONM_OBSERVACAO'
      Origin = 'AGENDA.CONM_OBSERVACAO'
      Size = 255
    end
    object qConsultaCONM_TIPOAGENDA_ID: TIntegerField
      FieldName = 'CONM_TIPOAGENDA_ID'
      Origin = 'AGENDA.CONM_TIPOAGENDA_ID'
    end
    object qConsultaCONM_STATUS: TIntegerField
      FieldName = 'CONM_STATUS'
      Origin = 'AGENDA.CONM_STATUS'
    end
    object qConsultaCONM_DH_CA: TDateTimeField
      FieldName = 'CONM_DH_CA'
      Origin = 'AGENDA.CONM_DH_CA'
    end
    object qConsultaTIPOAGENDA: TIBStringField
      FieldName = 'TIPOAGENDA'
      FixedChar = True
      Size = 11
    end
    object qConsultaPERIODO: TIBStringField
      FieldName = 'PERIODO'
      Size = 29
    end
    object qConsultaT: TStringField
      FieldKind = fkCalculated
      FieldName = 'T'
      Size = 10
      Calculated = True
    end
    object qConsultaVAZIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VAZIO'
      Size = 10
      Calculated = True
    end
    object qConsultaDATAINICIAL: TDateTimeField
      FieldName = 'DATAINICIAL'
      ProviderFlags = []
    end
    object qConsultaDATAFINAL: TDateTimeField
      FieldName = 'DATAFINAL'
      ProviderFlags = []
    end
    object qConsultaSTATUS: TIBStringField
      FieldName = 'STATUS'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object cxSchedulerDBStorage1: TcxSchedulerDBStorage
    Resources.Items = <>
    CustomFields = <>
    DataSource = dsTmp
    FieldNames.ActualFinish = 'DATAFINAL'
    FieldNames.ActualStart = 'DATAINICIAL'
    FieldNames.Caption = 'CONM_ASSUNTO'
    FieldNames.EventType = 'VAZIO'
    FieldNames.Finish = 'CONM_DATA_FIM'
    FieldNames.ID = 'CONM_ID'
    FieldNames.Options = 'T'
    FieldNames.ParentID = 'CONM_ID'
    FieldNames.Start = 'DATAINICIAL'
    Left = 380
    Top = 47
  end
  object qTmp: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacaoLeitura
    SQL.Strings = (
      'select agenda.conm_id ID,'
      '       agenda.*,'
      
        '       CAST(agenda.conm_data_ini  || '#39' 08:00:00'#39'  AS TIMESTAMP) ' +
        'DATAINICIAL,'
      
        '       CAST(agenda.conm_data_fim  || '#39' 18:00:00'#39'  AS TIMESTAMP) ' +
        'DATAFINAL,'
      '       lpad(extract(day from agenda.conm_data_ini),2,'#39'0'#39')||'#39'/'#39'||'
      
        '       lpad(extract(month from agenda.conm_data_ini),2,'#39'0'#39')||'#39'/'#39 +
        '||'
      
        '       lpad(extract(year from agenda.conm_data_ini),2,'#39'0'#39')||'#39' '#39'|' +
        '|'
      '       '#39' das '#39'||'
      
        '       lpad(extract(hour from agenda.conm_hora_ini),2,'#39'0'#39')||'#39':'#39'|' +
        '|'
      '       lpad(extract(minute from agenda.conm_hora_ini),2,'#39'0'#39')||'
      '       '#39' at'#233' '#39'||'
      
        '       lpad(extract(hour from agenda.conm_hora_fim),2,'#39'0'#39')||'#39':'#39'|' +
        '|'
      
        '       lpad(extract(minute from agenda.conm_hora_fim),2,'#39'0'#39') per' +
        'iodo,'
      '       case'
      '       when(agenda.conm_tipoagenda_id=1) then '#39'COMPROMISSO'#39
      '       when(agenda.conm_tipoagenda_id=2) then '#39'CONFER'#202'NCIA'#39
      '       when(agenda.conm_tipoagenda_id=3) then '#39'SOLICITA'#199#195'O'#39
      '       when(agenda.conm_tipoagenda_id=4) then '#39'ENTREGA'#39
      '       end tipoagenda,'
      '       case'
      '       when(agenda.conm_status=1) then '#39'AGENDADO'#39
      '       when(agenda.conm_status=2) then '#39'AGUARDANDO'#39
      '       when(agenda.conm_status=3) then '#39'CONCU'#205'DO'#39
      '       when(agenda.conm_status=4) then '#39'CANCELADO'#39
      '       end status'
      '  from agenda'
      ' order by agenda.conm_data_ini desc, agenda.conm_hora_ini')
    Left = 480
    Top = 56
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'AGENDA.CONM_ID'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CONM_ID'
      Origin = 'AGENDA.CONM_ID'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'CONM_DATA_INI'
      Origin = 'AGENDA.CONM_DATA_INI'
    end
    object TimeField1: TTimeField
      FieldName = 'CONM_HORA_INI'
      Origin = 'AGENDA.CONM_HORA_INI'
    end
    object DateField2: TDateField
      FieldName = 'CONM_DATA_FIM'
      Origin = 'AGENDA.CONM_DATA_FIM'
    end
    object TimeField2: TTimeField
      FieldName = 'CONM_HORA_FIM'
      Origin = 'AGENDA.CONM_HORA_FIM'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CONM_ASSUNTO'
      Origin = 'AGENDA.CONM_ASSUNTO'
      Size = 100
    end
    object IBStringField2: TIBStringField
      FieldName = 'CONM_LOCAL'
      Origin = 'AGENDA.CONM_LOCAL'
      Size = 100
    end
    object IBStringField3: TIBStringField
      FieldName = 'CONM_OBSERVACAO'
      Origin = 'AGENDA.CONM_OBSERVACAO'
      Size = 255
    end
    object IntegerField3: TIntegerField
      FieldName = 'CONM_TIPOAGENDA_ID'
      Origin = 'AGENDA.CONM_TIPOAGENDA_ID'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CONM_STATUS'
      Origin = 'AGENDA.CONM_STATUS'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CONM_DH_CA'
      Origin = 'AGENDA.CONM_DH_CA'
    end
    object IBStringField4: TIBStringField
      FieldName = 'TIPOAGENDA'
      FixedChar = True
      Size = 11
    end
    object IBStringField6: TIBStringField
      FieldName = 'PERIODO'
      Size = 29
    end
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'T'
      Size = 10
      Calculated = True
    end
    object StringField2: TStringField
      FieldKind = fkCalculated
      FieldName = 'VAZIO'
      Size = 10
      Calculated = True
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATAINICIAL'
      ProviderFlags = []
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DATAFINAL'
      ProviderFlags = []
    end
    object qTmpSTATUS: TIBStringField
      FieldName = 'STATUS'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
  end
  object dsTmp: TDataSource
    DataSet = qTmp
    Left = 528
    Top = 56
  end
end
