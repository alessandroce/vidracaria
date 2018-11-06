inherited FCadTipoVidro: TFCadTipoVidro
  Left = 229
  Top = 188
  Width = 600
  Height = 500
  Caption = 'FCadTipoVidro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    Width = 584
    Height = 432
    ActivePage = tsConsulta
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        Width = 576
        Height = 334
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1TVID_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'TVID_ID'
          end
          object grConsultaDBTableView1TVID_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'TVID_DESCRICAO'
            Width = 500
          end
        end
      end
      inherited pnBarraPg: TPanel
        Width = 576
        inherited btImprimir: TSpeedButton
          Visible = False
        end
        inherited rgAtivo: TRadioGroup
          Visible = False
        end
      end
      inherited sbBarraStatus: TStatusBar
        Top = 384
        Width = 576
      end
    end
    inherited tsCadastro: TTabSheet
      inherited Bevel1: TBevel
        Width = 576
      end
      object Label1: TLabel [1]
        Left = 48
        Top = 80
        Width = 42
        Height = 13
        Caption = 'TVID_ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 48
        Top = 120
        Width = 93
        Height = 13
        Caption = 'TVID_DESCRICAO'
        FocusControl = DBEdit2
      end
      inherited Panel1: TPanel
        Width = 576
        inherited btSalvar: TSpeedButton
          Left = 453
        end
        inherited btCancelar: TSpeedButton
          Left = 516
        end
      end
      object DBEdit1: TDBEdit
        Left = 48
        Top = 96
        Width = 134
        Height = 21
        DataField = 'TVID_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 48
        Top = 136
        Width = 300
        Height = 21
        DataField = 'TVID_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited pnBarraForm: TPanel
    Width = 584
    Caption = 'Cadastro de tipo de vidros'
  end
  inherited dsCadastro: TDataSource
    Left = 488
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from tipo_vidros'
      'where'
      '  TVID_ID = :OLD_TVID_ID')
    InsertSQL.Strings = (
      'insert into tipo_vidros'
      '  (TVID_ID, TVID_DESCRICAO, TVID_DH_CA)'
      'values'
      '  (:TVID_ID, :TVID_DESCRICAO, :TVID_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from tipo_vidros '
      'where'
      '  TVID_ID = :TVID_ID')
    SelectSQL.Strings = (
      'select * from tipo_vidros where tvid_id = :FId')
    ModifySQL.Strings = (
      'update tipo_vidros'
      'set'
      '  TVID_ID = :TVID_ID,'
      '  TVID_DESCRICAO = :TVID_DESCRICAO,'
      '  TVID_DH_CA = :TVID_DH_CA'
      'where'
      '  TVID_ID = :OLD_TVID_ID')
    GeneratorField.Field = 'TVID_ID'
    GeneratorField.Generator = 'GEN_TIPO_VIDROS'
    Left = 440
    object ibCadastroTVID_ID: TIntegerField
      FieldName = 'TVID_ID'
      Origin = 'TIPO_VIDROS.TVID_ID'
      Required = True
    end
    object ibCadastroTVID_DESCRICAO: TIBStringField
      FieldName = 'TVID_DESCRICAO'
      Origin = 'TIPO_VIDROS.TVID_DESCRICAO'
      Size = 100
    end
    object ibCadastroTVID_DH_CA: TDateTimeField
      FieldName = 'TVID_DH_CA'
      Origin = 'TIPO_VIDROS.TVID_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select tipo_vidros.tvid_id id, tipo_vidros.* from tipo_vidros')
    Left = 536
    object qConsultaTVID_ID: TIntegerField
      FieldName = 'TVID_ID'
      Origin = 'TIPO_VIDROS.TVID_ID'
      Required = True
    end
    object qConsultaTVID_DESCRICAO: TIBStringField
      FieldName = 'TVID_DESCRICAO'
      Origin = 'TIPO_VIDROS.TVID_DESCRICAO'
      Size = 100
    end
    object qConsultaTVID_DH_CA: TDateTimeField
      FieldName = 'TVID_DH_CA'
      Origin = 'TIPO_VIDROS.TVID_DH_CA'
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'TIPO_VIDROS.TVID_ID'
      Required = True
    end
  end
  inherited ImageList1: TImageList
    Left = 360
  end
  inherited ActionList1: TActionList
    Left = 392
  end
end
