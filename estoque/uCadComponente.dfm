inherited FCadComponente: TFCadComponente
  Caption = 'FCadComponente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgCadastro: TPageControl
    inherited tsConsulta: TTabSheet
      inherited grConsulta: TcxGrid
        inherited grConsultaDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsConsulta
          object grConsultaDBTableView1COM_ID: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'COM_ID'
          end
          object grConsultaDBTableView1COM_IMAGEM: TcxGridDBColumn
            Caption = 'Imagem'
            DataBinding.FieldName = 'COM_IMAGEM'
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.Stretch = True
          end
          object grConsultaDBTableView1COM_CODIGOINTERNO: TcxGridDBColumn
            Caption = 'Codigo Interno'
            DataBinding.FieldName = 'COM_CODIGOINTERNO'
            Width = 108
          end
          object grConsultaDBTableView1COM_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'COM_DESCRICAO'
            Width = 324
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
      inherited Bevel1: TBevel
        Width = 576
      end
      object Label1: TLabel [1]
        Left = 144
        Top = 72
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [2]
        Left = 144
        Top = 112
        Width = 69
        Height = 13
        Caption = 'Codigo Interno'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [3]
        Left = 144
        Top = 152
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Shape1: TShape [4]
        Left = 16
        Top = 80
        Width = 107
        Height = 107
      end
      object pImage: TImage [5]
        Left = 17
        Top = 81
        Width = 105
        Height = 105
        Center = True
      end
      object sbBuscaImagem: TSpeedButton [6]
        Left = 16
        Top = 188
        Width = 54
        Height = 25
        Flat = True
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          1800000000004003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00D8E9EC000000000000000000000000000000
          000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
          FF0000000000000000FFFFD8E9EC00FFFFD8E9EC00FFFFD8E9EC00FFFFD8E9EC
          00FFFFD8E9EC00FFFF000000FFFFFFFFFFFFFFFFFF0000000000FFFF00000000
          FFFFD8E9EC00FFFFD8E9EC00FFFFD8E9EC00FFFFD8E9EC00FFFFD8E9EC00FFFF
          00000000000000000000000000FFFFFF000000D8E9EC00FFFFD8E9EC00FFFFD8
          E9EC00FFFFD8E9EC00FFFFD8E9EC00FFFFD8E9EC000000FF0000000000000000
          0000FFFFFFFFFF000000D8E9EC00FFFFD8E9EC00FFFFD8E9EC00FFFFD8E9EC00
          FFFFD8E9EC00FFFFD8E9EC00000000000000000000FFFFFF00FFFFFFFFFF0000
          00000000000000000000000000D8E9EC00FFFFD8E9EC00FFFFD8E9EC00FFFF00
          00000000000000000000FFFFFFFFFF00FFFF99A8ACFFFFFFFFFF00FFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000FFFFFF
          00FFFFFFFFFF99A8ACFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
          FFFFFF000080000080000000000000000000FFFFFFFFFF00FFFF99A8ACFFFFFF
          FFFF00D8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000080000000
          0000000000FFFFFF00FFFFFFFFFF99A8ACFFFFFFD8E9EC00FFFFD8E9ECFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000000000000FFFFFFFFFF00
          FFFF99A8ACFFFFFFFFFF00D8E9ECFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF
          FFFF00FFFFFF00000000FFFFFF00000000000000000099A8ACFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF
          FFFFFFFFFFFFFFFFFFFF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
          A8AC99A8AC99A8AC99A8AC99A8AC99A8AC00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        Layout = blGlyphBottom
        OnClick = sbBuscaImagemClick
      end
      object sbExcluirImagem: TSpeedButton [7]
        Left = 70
        Top = 188
        Width = 53
        Height = 25
        Flat = True
        Glyph.Data = {
          5A010000424D5A01000000000000760000002800000014000000130000000100
          040000000000E4000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF111FFFFF11FFFFFF
          0000FFFF1111FFF1111FFFFF0000FFFFF1111F1111FFFFFF0000FFFFFF111111
          1FFFFFFF0000FFFFFFF11111FFFFFFFF0000FFFFFFF11111FFFFFFFF0000FFFF
          FF1111111FFFFFFF0000FFFFF1111F1111FFFFFF0000FFFFF111FFF1111FFFFF
          0000FFFFFFFFFFFF111FFFFF0000FFFFFFFFFFFFF11FFFFF0000FFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000}
        Layout = blGlyphBottom
        OnClick = sbExcluirImagemClick
      end
      inherited Panel1: TPanel
        Width = 576
        TabOrder = 3
        inherited btSalvar: TSpeedButton
          Left = 516
        end
        inherited btCancelar: TSpeedButton
          Left = 456
        end
      end
      object DBEdit1: TDBEdit
        Left = 144
        Top = 88
        Width = 134
        Height = 21
        DataField = 'COM_ID'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 144
        Top = 128
        Width = 134
        Height = 21
        DataField = 'COM_CODIGOINTERNO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 144
        Top = 168
        Width = 400
        Height = 21
        DataField = 'COM_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited pnBarraForm: TPanel
    Caption = 'Cadastro de Componentes'
  end
  inherited ibCadastro: TIBDataSet
    DeleteSQL.Strings = (
      'delete from componentes'
      'where'
      '  COM_ID = :OLD_COM_ID')
    InsertSQL.Strings = (
      'insert into componentes'
      '  (COM_ID, COM_IMAGEM, COM_CODIGOINTERNO, COM_DESCRICAO, '
      'COM_DH_CA)'
      'values'
      '  (:COM_ID, :COM_IMAGEM, :COM_CODIGOINTERNO, :COM_DESCRICAO, '
      ':COM_DH_CA)')
    RefreshSQL.Strings = (
      'Select *'
      'from componentes '
      'where'
      '  COM_ID = :COM_ID')
    SelectSQL.Strings = (
      'select * from componentes where com_id = :FId')
    ModifySQL.Strings = (
      'update componentes'
      'set'
      '  COM_ID = :COM_ID,'
      '  COM_IMAGEM = :COM_IMAGEM,'
      '  COM_CODIGOINTERNO = :COM_CODIGOINTERNO,'
      '  COM_DESCRICAO = :COM_DESCRICAO,'
      '  COM_DH_CA = :COM_DH_CA'
      'where'
      '  COM_ID = :OLD_COM_ID')
    GeneratorField.Field = 'COM_ID'
    GeneratorField.Generator = 'GEN_COMPONENTES'
    object ibCadastroCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COMPONENTES.COM_ID'
      Required = True
    end
    object ibCadastroCOM_IMAGEM: TMemoField
      FieldName = 'COM_IMAGEM'
      Origin = 'COMPONENTES.COM_IMAGEM'
      BlobType = ftMemo
      Size = 8
    end
    object ibCadastroCOM_CODIGOINTERNO: TIBStringField
      FieldName = 'COM_CODIGOINTERNO'
      Origin = 'COMPONENTES.COM_CODIGOINTERNO'
      Size = 30
    end
    object ibCadastroCOM_DESCRICAO: TIBStringField
      FieldName = 'COM_DESCRICAO'
      Origin = 'COMPONENTES.COM_DESCRICAO'
      Size = 100
    end
    object ibCadastroCOM_DH_CA: TDateTimeField
      FieldName = 'COM_DH_CA'
      Origin = 'COMPONENTES.COM_DH_CA'
    end
  end
  inherited qConsulta: TIBQuery
    SQL.Strings = (
      'select com_id ID, componentes.* from componentes')
    object qConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'COMPONENTES.COM_ID'
      Required = True
    end
    object qConsultaCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COMPONENTES.COM_ID'
      Required = True
    end
    object qConsultaCOM_IMAGEM: TMemoField
      FieldName = 'COM_IMAGEM'
      Origin = 'COMPONENTES.COM_IMAGEM'
      BlobType = ftMemo
      Size = 8
    end
    object qConsultaCOM_CODIGOINTERNO: TIBStringField
      FieldName = 'COM_CODIGOINTERNO'
      Origin = 'COMPONENTES.COM_CODIGOINTERNO'
      Size = 30
    end
    object qConsultaCOM_DESCRICAO: TIBStringField
      FieldName = 'COM_DESCRICAO'
      Origin = 'COMPONENTES.COM_DESCRICAO'
      Size = 100
    end
    object qConsultaCOM_DH_CA: TDateTimeField
      FieldName = 'COM_DH_CA'
      Origin = 'COMPONENTES.COM_DH_CA'
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    DefaultExt = 'Jpg'
    Filter = 'Jpg ou Bmp|*jpg;*bmp'
    Left = 269
    Top = 12
  end
end
