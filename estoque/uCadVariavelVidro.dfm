inherited FCadVariavelVidro: TFCadVariavelVidro
  Caption = 'FCadVariavelVidro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    ActivePage = tsConsulta
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1VAVI_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'VAVI_ID'
          end
          object grConsultaDBTableView1VAVI_VARIAVEL: TcxGridDBColumn
            Caption = 'Vari'#225'vel'
            DataBinding.FieldName = 'VAVI_VARIAVEL'
            Width = 70
          end
          object grConsultaDBTableView1VAVI_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'VAVI_DESCRICAO'
            Width = 250
          end
          object grConsultaDBTableView1VAVI_FORMULA: TcxGridDBColumn
            Caption = 'F'#243'rmula'
            DataBinding.FieldName = 'VAVI_FORMULA'
            Width = 250
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
        Left = 56
        Top = 88
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 56
        Top = 128
        Width = 38
        Height = 13
        Caption = 'Vari'#225'vel'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [3]
        Left = 56
        Top = 168
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [4]
        Left = 56
        Top = 208
        Width = 37
        Height = 13
        Caption = 'F'#243'rmula'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 104
        Width = 134
        Height = 21
        DataField = 'VAVI_ID'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 56
        Top = 144
        Width = 400
        Height = 21
        DataField = 'VAVI_VARIAVEL'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 56
        Top = 184
        Width = 400
        Height = 21
        DataField = 'VAVI_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 56
        Top = 224
        Width = 400
        Height = 21
        DataField = 'VAVI_FORMULA'
        DataSource = dsCadastro
        TabOrder = 4
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from variaveis_vidro'
      'where'
      '  VAVI_ID = :OLD_VAVI_ID')
    InsertSQL.Strings = (
      'insert into variaveis_vidro'
      
        '  (VAVI_ID, VAVI_VARIAVEL, VAVI_DESCRICAO, VAVI_FORMULA, VAVI_DH' +
        '_CA)'
      'values'
      '  (:VAVI_ID, :VAVI_VARIAVEL, :VAVI_DESCRICAO, :VAVI_FORMULA, '
      ':VAVI_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from variaveis_vidro '
      'where'
      '  VAVI_ID = :VAVI_ID')
    SelectSQL.Strings = (
      'select * from variaveis_vidro where vavi_id = :FId')
    ModifySQL.Strings = (
      'update variaveis_vidro'
      'set'
      '  VAVI_ID = :VAVI_ID,'
      '  VAVI_VARIAVEL = :VAVI_VARIAVEL,'
      '  VAVI_DESCRICAO = :VAVI_DESCRICAO,'
      '  VAVI_FORMULA = :VAVI_FORMULA,'
      '  VAVI_DH_CA = :VAVI_DH_CA'
      'where'
      '  VAVI_ID = :OLD_VAVI_ID')
    GeneratorField.Field = 'VAVI_ID'
    GeneratorField.Generator = 'GEN_VARIAVEIS_VIDRO'
    object ibCadastroVAVI_ID: TIntegerField
      FieldName = 'VAVI_ID'
      Origin = 'VARIAVEIS_VIDRO.VAVI_ID'
      Required = True
    end
    object ibCadastroVAVI_VARIAVEL: TIBStringField
      FieldName = 'VAVI_VARIAVEL'
      Origin = 'VARIAVEIS_VIDRO.VAVI_VARIAVEL'
      Size = 100
    end
    object ibCadastroVAVI_DESCRICAO: TIBStringField
      FieldName = 'VAVI_DESCRICAO'
      Origin = 'VARIAVEIS_VIDRO.VAVI_DESCRICAO'
      Size = 100
    end
    object ibCadastroVAVI_FORMULA: TIBStringField
      FieldName = 'VAVI_FORMULA'
      Origin = 'VARIAVEIS_VIDRO.VAVI_FORMULA'
      Size = 100
    end
    object ibCadastroVAVI_DH_CA: TDateTimeField
      FieldName = 'VAVI_DH_CA'
      Origin = 'VARIAVEIS_VIDRO.VAVI_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      
        'select variaveis_vidro.vavi_id ID, variaveis_vidro.* from variav' +
        'eis_vidro')
    object qConsultaVAVI_ID: TIntegerField
      FieldName = 'VAVI_ID'
      Origin = 'VARIAVEIS_VIDRO.VAVI_ID'
      Required = True
    end
    object qConsultaVAVI_VARIAVEL: TIBStringField
      FieldName = 'VAVI_VARIAVEL'
      Origin = 'VARIAVEIS_VIDRO.VAVI_VARIAVEL'
      Size = 100
    end
    object qConsultaVAVI_DESCRICAO: TIBStringField
      FieldName = 'VAVI_DESCRICAO'
      Origin = 'VARIAVEIS_VIDRO.VAVI_DESCRICAO'
      Size = 100
    end
    object qConsultaVAVI_FORMULA: TIBStringField
      FieldName = 'VAVI_FORMULA'
      Origin = 'VARIAVEIS_VIDRO.VAVI_FORMULA'
      Size = 100
    end
    object qConsultaVAVI_DH_CA: TDateTimeField
      FieldName = 'VAVI_DH_CA'
      Origin = 'VARIAVEIS_VIDRO.VAVI_DH_CA'
    end
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'VARIAVEIS_VIDRO.VAVI_ID'
      Required = True
    end
  end
end
