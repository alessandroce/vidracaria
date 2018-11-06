inherited FCadVidros: TFCadVidros
  Left = 222
  Top = 173
  Caption = 'FCadVidros'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1VID_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'VID_ID'
          end
          object grConsultaDBTableView1VID_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'VID_DESCRICAO'
            Width = 342
          end
          object grConsultaDBTableView1TVID_DESCRICAO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TVID_DESCRICAO'
            Width = 150
          end
        end
      end
      inherited pnBarraPg: TPanel
        inherited btImprimir: TSpeedButton
          Visible = False
        end
        inherited rgAtivo: TRadioGroup
          Width = 197
          Visible = False
        end
      end
    end
    inherited tsCadastro: TTabSheet
      inherited Bevel1: TBevel
        Width = 576
      end
      object Label1: TLabel [1]
        Left = 48
        Top = 96
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label2: TLabel [2]
        Left = 48
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Tipo Vidro'
      end
      object Label3: TLabel [3]
        Left = 48
        Top = 176
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      inherited Panel1: TPanel
        Width = 576
        TabOrder = 3
        inherited btSalvar: TSpeedButton
          Left = 516
        end
        inherited btCancelar: TSpeedButton
          Left = 457
        end
      end
      object DBEdit1: TDBEdit
        Left = 48
        Top = 112
        Width = 134
        Height = 21
        DataField = 'VID_ID'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 48
        Top = 192
        Width = 400
        Height = 21
        DataField = 'VID_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 48
        Top = 152
        Width = 257
        Height = 21
        DataField = 'VID_TVID_ID'
        DataSource = dsCadastro
        KeyField = 'TVID_ID'
        ListField = 'TVID_DESCRICAO'
        ListSource = dsTipoVidro
        TabOrder = 1
      end
    end
  end
  inherited pnBarraForm: TPanel
    Caption = 'Cadastro de vidros'
  end
  inherited dsCadastro: TDataSource
    Left = 440
  end
  inherited dsConsulta: TDataSource
    Left = 536
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from vidros'
      'where'
      '  VID_ID = :OLD_VID_ID')
    InsertSQL.Strings = (
      'insert into vidros'
      '  (VID_ID, VID_TVID_ID, VID_DESCRICAO, VID_DH_CA)'
      'values'
      '  (:VID_ID, :VID_TVID_ID, :VID_DESCRICAO, :VID_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from vidros '
      'where'
      '  VID_ID = :VID_ID')
    SelectSQL.Strings = (
      'select * from vidros where vid_id = :FId')
    ModifySQL.Strings = (
      'update vidros'
      'set'
      '  VID_ID = :VID_ID,'
      '  VID_TVID_ID = :VID_TVID_ID,'
      '  VID_DESCRICAO = :VID_DESCRICAO,'
      '  VID_DH_CA = :VID_DH_CA'
      'where'
      '  VID_ID = :OLD_VID_ID')
    GeneratorField.Field = 'VID_ID'
    GeneratorField.Generator = 'GEN_VIDROS'
    Left = 392
    object ibCadastroVID_ID: TIntegerField
      FieldName = 'VID_ID'
      Origin = 'VIDROS.VID_ID'
      Required = True
    end
    object ibCadastroVID_TVID_ID: TIntegerField
      FieldName = 'VID_TVID_ID'
      Origin = 'VIDROS.VID_TVID_ID'
    end
    object ibCadastroVID_DESCRICAO: TIBStringField
      FieldName = 'VID_DESCRICAO'
      Origin = 'VIDROS.VID_DESCRICAO'
      Size = 100
    end
    object ibCadastroVID_DH_CA: TDateTimeField
      FieldName = 'VID_DH_CA'
      Origin = 'VIDROS.VID_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    AfterOpen = qConsultaAfterOpen
    SQL.Strings = (
      
        'select vidros.vid_id ID, vidros.*, tipo_vidros.tvid_descricao fr' +
        'om vidros'
      
        'left join tipo_vidros on (tipo_vidros.tvid_id=vidros.vid_tvid_id' +
        ')')
    Left = 488
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'VIDROS.VID_ID'
      Required = True
    end
    object qConsultaVID_ID: TIntegerField
      FieldName = 'VID_ID'
      Origin = 'VIDROS.VID_ID'
      Required = True
    end
    object qConsultaVID_TVID_ID: TIntegerField
      FieldName = 'VID_TVID_ID'
      Origin = 'VIDROS.VID_TVID_ID'
    end
    object qConsultaVID_DESCRICAO: TIBStringField
      FieldName = 'VID_DESCRICAO'
      Origin = 'VIDROS.VID_DESCRICAO'
      Size = 100
    end
    object qConsultaVID_DH_CA: TDateTimeField
      FieldName = 'VID_DH_CA'
      Origin = 'VIDROS.VID_DH_CA'
    end
    object qConsultaTVID_DESCRICAO: TIBStringField
      FieldName = 'TVID_DESCRICAO'
      Origin = 'TIPO_VIDROS.TVID_DESCRICAO'
      Size = 100
    end
  end
  inherited ImageList1: TImageList
    Left = 312
  end
  inherited ActionList1: TActionList
    Left = 360
  end
  object qTipoVidro: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tipo_vidros order by tvid_descricao')
    Left = 376
    Top = 160
    object qTipoVidroTVID_ID: TIntegerField
      FieldName = 'TVID_ID'
      Origin = 'TIPO_VIDROS.TVID_ID'
      Required = True
    end
    object qTipoVidroTVID_DESCRICAO: TIBStringField
      FieldName = 'TVID_DESCRICAO'
      Origin = 'TIPO_VIDROS.TVID_DESCRICAO'
      Size = 100
    end
    object qTipoVidroTVID_DH_CA: TDateTimeField
      FieldName = 'TVID_DH_CA'
      Origin = 'TIPO_VIDROS.TVID_DH_CA'
    end
  end
  object dsTipoVidro: TDataSource
    DataSet = qTipoVidro
    Left = 424
    Top = 160
  end
end
