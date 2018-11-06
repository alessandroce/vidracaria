inherited FCadEmitente: TFCadEmitente
  Caption = 'FCadEmitente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1EMIT_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'EMIT_ID'
          end
          object grConsultaDBTableView1EMIT_RAZAOSOCIAL: TcxGridDBColumn
            Caption = 'Raz'#227'o Social'
            DataBinding.FieldName = 'EMIT_RAZAOSOCIAL'
          end
          object grConsultaDBTableView1EMIT_RESPONSAVEL: TcxGridDBColumn
            Caption = 'Respos'#225'vel'
            DataBinding.FieldName = 'EMIT_RESPONSAVEL'
          end
          object grConsultaDBTableView1EMIT_ENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'EMIT_ENDERECO'
          end
          object grConsultaDBTableView1EMIT_BAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'EMIT_BAIRRO'
          end
          object grConsultaDBTableView1EMIT_MUNICIPIO: TcxGridDBColumn
            Caption = 'Munic'#237'pio'
            DataBinding.FieldName = 'EMIT_MUNICIPIO'
          end
          object grConsultaDBTableView1EMIT_ESTADO: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'EMIT_ESTADO'
          end
          object grConsultaDBTableView1EMIT_CEP: TcxGridDBColumn
            Caption = 'CEP'
            DataBinding.FieldName = 'EMIT_CEP'
          end
          object grConsultaDBTableView1EMIT_CNPJ: TcxGridDBColumn
            Caption = 'CNPJ'
            DataBinding.FieldName = 'EMIT_CNPJ'
          end
          object grConsultaDBTableView1EMIT_IE: TcxGridDBColumn
            Caption = 'Inscri'#231#227'o Estadual'
            DataBinding.FieldName = 'EMIT_IE'
          end
          object grConsultaDBTableView1EMIT_TELEFONE: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'EMIT_TELEFONE'
          end
          object grConsultaDBTableView1EDIT_EMAIL: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'EDIT_EMAIL'
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
        Left = 16
        Top = 99
        Width = 66
        Height = 13
        Caption = 'Raz'#227'o Social:'
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 123
        Width = 65
        Height = 13
        Caption = 'Respons'#225'vel:'
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 147
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label4: TLabel [4]
        Left = 16
        Top = 171
        Width = 30
        Height = 13
        Caption = 'Bairro:'
      end
      object Label5: TLabel [5]
        Left = 16
        Top = 195
        Width = 50
        Height = 13
        Caption = 'Munic'#237'pio:'
      end
      object Label6: TLabel [6]
        Left = 392
        Top = 195
        Width = 24
        Height = 13
        Caption = 'CEP:'
      end
      object Label7: TLabel [7]
        Left = 272
        Top = 195
        Width = 36
        Height = 13
        Caption = 'Estado:'
      end
      object Label8: TLabel [8]
        Left = 16
        Top = 220
        Width = 30
        Height = 13
        Caption = 'CNPJ:'
      end
      object Label9: TLabel [9]
        Left = 216
        Top = 220
        Width = 13
        Height = 13
        Caption = 'IE:'
      end
      object Label10: TLabel [10]
        Left = 376
        Top = 220
        Width = 45
        Height = 13
        Caption = 'Telefone:'
      end
      object Label11: TLabel [11]
        Left = 16
        Top = 244
        Width = 31
        Height = 13
        Caption = 'E-mail:'
      end
      object Label12: TLabel [12]
        Left = 16
        Top = 76
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit12
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 95
        Width = 459
        Height = 21
        DataField = 'EMIT_RAZAOSOCIAL'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 119
        Width = 459
        Height = 21
        DataField = 'EMIT_RESPONSAVEL'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 143
        Width = 459
        Height = 21
        DataField = 'EMIT_ENDERECO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 167
        Width = 459
        Height = 21
        DataField = 'EMIT_BAIRRO'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 191
        Width = 169
        Height = 21
        DataField = 'EMIT_MUNICIPIO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 424
        Top = 191
        Width = 122
        Height = 21
        DataField = 'EMIT_CEP'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 321
        Top = 191
        Width = 57
        Height = 21
        DataField = 'EMIT_ESTADO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 216
        Width = 121
        Height = 21
        DataField = 'EMIT_CNPJ'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 240
        Top = 216
        Width = 122
        Height = 21
        DataField = 'EMIT_IE'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 424
        Top = 216
        Width = 121
        Height = 21
        DataField = 'EMIT_TELEFONE'
        DataSource = dsCadastro
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 88
        Top = 240
        Width = 290
        Height = 21
        DataField = 'EDIT_EMAIL'
        DataSource = dsCadastro
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 88
        Top = 72
        Width = 134
        Height = 21
        DataField = 'EMIT_ID'
        DataSource = dsCadastro
        TabOrder = 12
      end
    end
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from emitente'
      'where'
      '  EMIT_ID = :OLD_EMIT_ID')
    InsertSQL.Strings = (
      'insert into emitente'
      '  (EMIT_ID, EMIT_RAZAOSOCIAL, EMIT_RESPONSAVEL, EMIT_ENDERECO, '
      'EMIT_BAIRRO, '
      '   EMIT_MUNICIPIO, EMIT_CEP, EMIT_ESTADO, EMIT_CNPJ, EMIT_IE, '
      'EMIT_TELEFONE, '
      '   EDIT_EMAIL)'
      'values'
      
        '  (:EMIT_ID, :EMIT_RAZAOSOCIAL, :EMIT_RESPONSAVEL, :EMIT_ENDEREC' +
        'O, '
      ':EMIT_BAIRRO, '
      
        '   :EMIT_MUNICIPIO, :EMIT_CEP, :EMIT_ESTADO, :EMIT_CNPJ, :EMIT_I' +
        'E, '
      ':EMIT_TELEFONE, '
      '   :EDIT_EMAIL)')
    RefreshSQL.Strings = (
      'Select *'
      'from emitente '
      'where'
      '  EMIT_ID = :EMIT_ID')
    SelectSQL.Strings = (
      'select * from emitente where emit_id = :FId')
    ModifySQL.Strings = (
      'update emitente'
      'set'
      '  EMIT_ID = :EMIT_ID,'
      '  EMIT_RAZAOSOCIAL = :EMIT_RAZAOSOCIAL,'
      '  EMIT_RESPONSAVEL = :EMIT_RESPONSAVEL,'
      '  EMIT_ENDERECO = :EMIT_ENDERECO,'
      '  EMIT_BAIRRO = :EMIT_BAIRRO,'
      '  EMIT_MUNICIPIO = :EMIT_MUNICIPIO,'
      '  EMIT_CEP = :EMIT_CEP,'
      '  EMIT_ESTADO = :EMIT_ESTADO,'
      '  EMIT_CNPJ = :EMIT_CNPJ,'
      '  EMIT_IE = :EMIT_IE,'
      '  EMIT_TELEFONE = :EMIT_TELEFONE,'
      '  EDIT_EMAIL = :EDIT_EMAIL'
      'where'
      '  EMIT_ID = :OLD_EMIT_ID')
    object ibCadastroEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      Origin = 'EMITENTE.EMIT_ID'
      Required = True
    end
    object ibCadastroEMIT_RAZAOSOCIAL: TIBStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Origin = 'EMITENTE.EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object ibCadastroEMIT_RESPONSAVEL: TIBStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Origin = 'EMITENTE.EMIT_RESPONSAVEL'
      Size = 50
    end
    object ibCadastroEMIT_ENDERECO: TIBStringField
      FieldName = 'EMIT_ENDERECO'
      Origin = 'EMITENTE.EMIT_ENDERECO'
      Size = 100
    end
    object ibCadastroEMIT_BAIRRO: TIBStringField
      FieldName = 'EMIT_BAIRRO'
      Origin = 'EMITENTE.EMIT_BAIRRO'
      Size = 50
    end
    object ibCadastroEMIT_MUNICIPIO: TIBStringField
      FieldName = 'EMIT_MUNICIPIO'
      Origin = 'EMITENTE.EMIT_MUNICIPIO'
      Size = 50
    end
    object ibCadastroEMIT_CEP: TIBStringField
      FieldName = 'EMIT_CEP'
      Origin = 'EMITENTE.EMIT_CEP'
      Size = 50
    end
    object ibCadastroEMIT_ESTADO: TIBStringField
      FieldName = 'EMIT_ESTADO'
      Origin = 'EMITENTE.EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object ibCadastroEMIT_CNPJ: TIBStringField
      FieldName = 'EMIT_CNPJ'
      Origin = 'EMITENTE.EMIT_CNPJ'
      Size = 30
    end
    object ibCadastroEMIT_IE: TIBStringField
      FieldName = 'EMIT_IE'
      Origin = 'EMITENTE.EMIT_IE'
      Size = 30
    end
    object ibCadastroEMIT_TELEFONE: TIBStringField
      FieldName = 'EMIT_TELEFONE'
      Origin = 'EMITENTE.EMIT_TELEFONE'
      Size = 15
    end
    object ibCadastroEDIT_EMAIL: TIBStringField
      FieldName = 'EDIT_EMAIL'
      Origin = 'EMITENTE.EDIT_EMAIL'
      Size = 50
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select emitente.emit_id ID, emitente.* from emitente')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'EMITENTE.EMIT_ID'
      Required = True
    end
    object qConsultaEMIT_ID: TIntegerField
      FieldName = 'EMIT_ID'
      Origin = 'EMITENTE.EMIT_ID'
      Required = True
    end
    object qConsultaEMIT_RAZAOSOCIAL: TIBStringField
      FieldName = 'EMIT_RAZAOSOCIAL'
      Origin = 'EMITENTE.EMIT_RAZAOSOCIAL'
      Size = 50
    end
    object qConsultaEMIT_RESPONSAVEL: TIBStringField
      FieldName = 'EMIT_RESPONSAVEL'
      Origin = 'EMITENTE.EMIT_RESPONSAVEL'
      Size = 50
    end
    object qConsultaEMIT_ENDERECO: TIBStringField
      FieldName = 'EMIT_ENDERECO'
      Origin = 'EMITENTE.EMIT_ENDERECO'
      Size = 100
    end
    object qConsultaEMIT_BAIRRO: TIBStringField
      FieldName = 'EMIT_BAIRRO'
      Origin = 'EMITENTE.EMIT_BAIRRO'
      Size = 50
    end
    object qConsultaEMIT_MUNICIPIO: TIBStringField
      FieldName = 'EMIT_MUNICIPIO'
      Origin = 'EMITENTE.EMIT_MUNICIPIO'
      Size = 50
    end
    object qConsultaEMIT_CEP: TIBStringField
      FieldName = 'EMIT_CEP'
      Origin = 'EMITENTE.EMIT_CEP'
      Size = 50
    end
    object qConsultaEMIT_ESTADO: TIBStringField
      FieldName = 'EMIT_ESTADO'
      Origin = 'EMITENTE.EMIT_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qConsultaEMIT_CNPJ: TIBStringField
      FieldName = 'EMIT_CNPJ'
      Origin = 'EMITENTE.EMIT_CNPJ'
      Size = 30
    end
    object qConsultaEMIT_IE: TIBStringField
      FieldName = 'EMIT_IE'
      Origin = 'EMITENTE.EMIT_IE'
      Size = 30
    end
    object qConsultaEMIT_TELEFONE: TIBStringField
      FieldName = 'EMIT_TELEFONE'
      Origin = 'EMITENTE.EMIT_TELEFONE'
      Size = 15
    end
    object qConsultaEDIT_EMAIL: TIBStringField
      FieldName = 'EDIT_EMAIL'
      Origin = 'EMITENTE.EDIT_EMAIL'
      Size = 50
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
