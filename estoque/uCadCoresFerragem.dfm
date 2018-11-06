inherited FCadCoresFerragem: TFCadCoresFerragem
  Left = 297
  Caption = 'FCadCoresFerragem'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsConsulta
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1COR_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'COR_ID'
          end
          object grConsultaDBTableView1COR_CODIGOINTERNO: TcxGridDBColumn
            Caption = 'Cod Interno'
            DataBinding.FieldName = 'COR_CODIGOINTERNO'
            Width = 90
          end
          object grConsultaDBTableView1COR_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'COR_DESCRICAO'
            Width = 305
          end
          object grConsultaDBTableView1DESC_COR_ACESSORIO: TcxGridDBColumn
            Caption = 'Acess'#243'rio'
            DataBinding.FieldName = 'DESC_COR_ACESSORIO'
            Width = 102
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited btImprimir: TSpeedButton
          Visible = False
        end
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
    end
    inherited tsCadastro: TTabSheet
      object Label1: TLabel [1]
        Left = 64
        Top = 88
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 64
        Top = 128
        Width = 58
        Height = 13
        Caption = 'Cod. Interno'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [3]
        Left = 64
        Top = 168
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 104
        Width = 134
        Height = 21
        DataField = 'COR_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 144
        Width = 134
        Height = 21
        DataField = 'COR_CODIGOINTERNO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 64
        Top = 184
        Width = 400
        Height = 21
        DataField = 'COR_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 216
        Top = 81
        Width = 185
        Height = 44
        Caption = '  Acess'#243'rio  '
        Columns = 2
        DataField = 'COR_ACESSORIO'
        DataSource = dsCadastro
        Items.Strings = (
          'Ferragem'
          'Alum'#237'nio')
        TabOrder = 4
        Values.Strings = (
          '1'
          '2')
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from cores_ferragem'
      'where'
      '  COR_ID = :OLD_COR_ID')
    InsertSQL.Strings = (
      'insert into cores_ferragem'
      
        '  (COR_ACESSORIO, COR_CODIGOINTERNO, COR_DESCRICAO, COR_DH_CA, C' +
        'OR_ID)'
      'values'
      
        '  (:COR_ACESSORIO, :COR_CODIGOINTERNO, :COR_DESCRICAO, :COR_DH_C' +
        'A, :COR_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  COR_ID,'
      '  COR_CODIGOINTERNO,'
      '  COR_DESCRICAO,'
      '  COR_ACESSORIO,'
      '  COR_DH_CA'
      'from cores_ferragem '
      'where'
      '  COR_ID = :COR_ID')
    SelectSQL.Strings = (
      'select * from cores_ferragem where cor_id = :FId')
    ModifySQL.Strings = (
      'update cores_ferragem'
      'set'
      '  COR_ACESSORIO = :COR_ACESSORIO,'
      '  COR_CODIGOINTERNO = :COR_CODIGOINTERNO,'
      '  COR_DESCRICAO = :COR_DESCRICAO,'
      '  COR_DH_CA = :COR_DH_CA,'
      '  COR_ID = :COR_ID'
      'where'
      '  COR_ID = :OLD_COR_ID')
    GeneratorField.Field = 'COR_ID'
    GeneratorField.Generator = 'GEN_CORES_FERRAGEM'
    object ibCadastroCOR_ID: TIntegerField
      FieldName = 'COR_ID'
      Origin = '"CORES_FERRAGEM"."COR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibCadastroCOR_CODIGOINTERNO: TIBStringField
      FieldName = 'COR_CODIGOINTERNO'
      Origin = '"CORES_FERRAGEM"."COR_CODIGOINTERNO"'
      Size = 30
    end
    object ibCadastroCOR_DESCRICAO: TIBStringField
      FieldName = 'COR_DESCRICAO'
      Origin = '"CORES_FERRAGEM"."COR_DESCRICAO"'
      Size = 100
    end
    object ibCadastroCOR_DH_CA: TDateTimeField
      FieldName = 'COR_DH_CA'
      Origin = '"CORES_FERRAGEM"."COR_DH_CA"'
    end
    object ibCadastroCOR_ACESSORIO: TIntegerField
      FieldName = 'COR_ACESSORIO'
      Origin = '"CORES_FERRAGEM"."COR_ACESSORIO"'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select cores_ferragem.COR_ID ID,'
      '       cores_ferragem.*,'
      '       case when(CORES_FERRAGEM.COR_ACESSORIO=1) THEN '#39'Ferragem'#39
      '            when(CORES_FERRAGEM.COR_ACESSORIO=2) THEN '#39'Alum'#237'nio'#39
      '       end desc_cor_acessorio'
      '  from cores_ferragem')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = '"CORES_FERRAGEM"."COR_ID"'
      Required = True
    end
    object qConsultaCOR_ID: TIntegerField
      FieldName = 'COR_ID'
      Origin = '"CORES_FERRAGEM"."COR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qConsultaCOR_CODIGOINTERNO: TIBStringField
      FieldName = 'COR_CODIGOINTERNO'
      Origin = '"CORES_FERRAGEM"."COR_CODIGOINTERNO"'
      Size = 30
    end
    object qConsultaCOR_DESCRICAO: TIBStringField
      FieldName = 'COR_DESCRICAO'
      Origin = '"CORES_FERRAGEM"."COR_DESCRICAO"'
      Size = 100
    end
    object qConsultaCOR_DH_CA: TDateTimeField
      FieldName = 'COR_DH_CA'
      Origin = '"CORES_FERRAGEM"."COR_DH_CA"'
    end
    object qConsultaCOR_ACESSORIO: TIntegerField
      FieldName = 'COR_ACESSORIO'
      Origin = '"CORES_FERRAGEM"."COR_ACESSORIO"'
    end
    object qConsultaDESC_COR_ACESSORIO: TIBStringField
      FieldName = 'DESC_COR_ACESSORIO'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
  end
end
