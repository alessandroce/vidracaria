inherited FormCadProduto: TFormCadProduto
  Top = 169
  Caption = 'Cadastro de Produto'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Height = 5
  end
  inherited Bevel3: TBevel
    Width = 759
    Height = 5
  end
  inherited Label1: TLabel
    Left = 8
    Top = 62
  end
  inherited btn_Localizar: TSpeedButton
    Left = 449
    Top = 56
  end
  object Label5: TLabel [4]
    Left = 76
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  inherited GroupBox1: TGroupBox
    Width = 770
    Height = 256
    inherited PageControl1: TPageControl
      Left = 6
      Top = 18
      Width = 755
      Height = 232
      inherited TabSheetFicha: TTabSheet
        Caption = 'Dados Cadastrais '
        object Label2: TLabel
          Left = 19
          Top = 80
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 26
          Top = 44
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label6: TLabel
          Left = 423
          Top = 113
          Width = 30
          Height = 13
          Caption = 'Valor: '
        end
        object lblEspessura: TLabel
          Left = 4
          Top = 113
          Width = 52
          Height = 13
          Caption = 'Espessura:'
        end
        object lblAltura: TLabel
          Left = 120
          Top = 113
          Width = 30
          Height = 13
          Caption = 'Altura:'
        end
        object lblLargura: TLabel
          Left = 216
          Top = 113
          Width = 39
          Height = 13
          Caption = 'Largura:'
        end
        object lblMedida: TLabel
          Left = 320
          Top = 113
          Width = 38
          Height = 13
          Caption = 'Medida:'
        end
        object Label7: TLabel
          Left = 371
          Top = 44
          Width = 26
          Height = 13
          Caption = 'Linha'
        end
        object Label11: TLabel
          Left = 26
          Top = 12
          Width = 23
          Height = 13
          Caption = 'Sigla'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 59
          Top = 76
          Width = 358
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_DESCRICAO'
          DataSource = dsCadastro
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object DBCheckBox1: TDBCheckBox
          Left = 295
          Top = 10
          Width = 50
          Height = 17
          Caption = 'Ativo'
          DataField = 'PROD_ATIVO'
          DataSource = dsCadastro
          TabOrder = 4
          ValueChecked = 'T'
          ValueUnchecked = 'F'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 59
          Top = 40
          Width = 294
          Height = 21
          DataField = 'PROD_PRODTP_ID'
          DataSource = dsCadastro
          KeyField = 'PRODTP_ID'
          ListField = 'PRODTP_DESCRICAO'
          ListSource = DMProduto.dsViewLookup_TipoProduto
          TabOrder = 0
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 455
          Top = 109
          Width = 55
          Height = 21
          DataField = 'PROD_VALOR'
          DataSource = dsCadastro
          TabOrder = 3
          OnKeyPress = DBEdit2KeyPress
        end
        object ComboBox1: TComboBox
          Left = 426
          Top = 74
          Width = 84
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ItemIndex = 2
          TabOrder = 2
          Text = 'M Linear'
          Items.Strings = (
            'M'#178
            'M Corrido'
            'M Linear')
        end
        object edEspessura: TDBEdit
          Left = 59
          Top = 109
          Width = 55
          Height = 21
          DataField = 'PROD_ESPESSURA'
          DataSource = dsCadastro
          TabOrder = 5
          OnKeyPress = DBEdit2KeyPress
        end
        object edAltura: TDBEdit
          Left = 154
          Top = 109
          Width = 55
          Height = 21
          DataField = 'PROD_ALTURA'
          DataSource = dsCadastro
          TabOrder = 6
          OnKeyPress = DBEdit2KeyPress
        end
        object edLargura: TDBEdit
          Left = 260
          Top = 109
          Width = 55
          Height = 21
          DataField = 'PROD_LARGURA'
          DataSource = dsCadastro
          TabOrder = 7
          OnKeyPress = DBEdit2KeyPress
        end
        object edMedida: TDBEdit
          Left = 364
          Top = 109
          Width = 55
          Height = 21
          DataField = 'PROD_MEDIDA_METRO'
          DataSource = dsCadastro
          TabOrder = 8
          OnKeyPress = DBEdit2KeyPress
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 410
          Top = 40
          Width = 295
          Height = 21
          DataField = 'PROD_PRL_ID'
          DataSource = dsCadastro
          KeyField = 'PRL_ID'
          ListField = 'PRL_DESCRICAO'
          ListSource = DMProduto.dsViewLookup_LinhaProduto
          TabOrder = 9
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 59
          Top = 8
          Width = 174
          Height = 21
          DataField = 'PROD_SIGLA'
          DataSource = dsCadastro
          TabOrder = 10
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Detalhes Produto'
        ImageIndex = 7
        object Label8: TLabel
          Left = 18
          Top = 182
          Width = 101
          Height = 13
          Caption = 'M'#225'x. ( 150 x 150 pxl )'
        end
        object Label9: TLabel
          Left = 21
          Top = 11
          Width = 37
          Height = 13
          Caption = 'Imagem'
        end
        object Label10: TLabel
          Left = 213
          Top = 11
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Panel1: TPanel
          Left = 18
          Top = 27
          Width = 168
          Height = 149
          TabOrder = 0
          object shFoto: TShape
            Left = 1
            Top = 1
            Width = 166
            Height = 147
          end
          object imgFoto: TImage
            Left = 3
            Top = 3
            Width = 162
            Height = 143
            Proportional = True
            Stretch = True
          end
        end
        object BitBtn2: TBitBtn
          Left = 135
          Top = 176
          Width = 25
          Height = 25
          TabOrder = 1
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000010000000100000000100
            08000000000000010000C30E0000C30E00001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000F0F0F0F0F0F
            0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F01010F
            0F0F0F0F0F01010F0F0F0F0F010909010F0F0F0F010909010F0F0F0F01090909
            010F0F01090909010F0F0F0F0F010909090101090909010F0F0F0F0F0F0F0109
            0909090909010F0F0F0F0F0F0F0F0F0109090909010F0F0F0F0F0F0F0F0F0F01
            09090909010F0F0F0F0F0F0F0F0F01090909090909010F0F0F0F0F0F0F010909
            090101090909010F0F0F0F0F01090909010F0F01090909010F0F0F0F01090901
            0F0F0F0F010909010F0F0F0F0F01010F0F0F0F0F0F01010F0F0F0F0F0F0F0F0F
            0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F}
        end
        object BitBtn1: TBitBtn
          Left = 161
          Top = 176
          Width = 25
          Height = 25
          TabOrder = 2
          OnClick = BitBtn1Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFF6FFFFFFFFFFFFFFFFFFF6FFFFFFFF086E6FF6FFFFFFFFFFFFA553ADF6FFB7
            B7BF2F6F08FFFFFFFFFF145D14A5BFB7BF7FB7BF2F77F6FFFFFFA5666F1466BF
            7F7FB7BF772F6FF6FFFFF6656E775DB7BF7FB7BF7F7F776FB7FFFFF6666F6F66
            B7B6ADB6777F7F7F2FB7FFFFB76E6665EDEDED09EDB67F7F7F2FFFFFFFB7AEED
            09F6F6F6FF07B7BFBF2FFFFFFFF6F70909FFFFFFFFFFF77FBF6FFFFFFF08ED09
            FFFFFFFFFFFF077FBF77FFFFFF07ED09FFFFFFFFFFFF07BFBF77FFFFFFF6ED09
            09FFFFFFFF09ADB7F677FFFFFFFF070709090909F5ED07BFB76FFFFFFFFFFF07
            EEEDEDEDED07FFFFF6F6FFFFFFFFFFFF0808F608F6FFFFFFFFFF}
        end
        object DBMemo1: TDBMemo
          Left = 211
          Top = 29
          Width = 478
          Height = 146
          DataField = 'PROD_DESCRICAO'
          DataSource = DMProduto.dsDadosProduto
          TabOrder = 3
        end
      end
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 356
    Width = 770
    Height = 181
    Caption = '  Lista de Produto  '
    object Label4: TLabel
      Left = 9
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 30
      Width = 755
      Height = 144
      DataSource = dsConsulta
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PROD_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PROD_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 339
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_VALOR'
          Title.Caption = 'Valor'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_UNIDMEDIDA'
          Title.Caption = 'Unid Medida'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_UNIDMEDIDA'
          Title.Caption = 'Unid. Medida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_ESPESSURA'
          Title.Caption = 'Espessura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_LARGURA'
          Title.Caption = 'Largura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_ALTURA'
          Title.Caption = 'Altura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_MEDIDA_METRO'
          Title.Caption = 'Meidida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODTP_DESCRICAO'
          Title.Caption = 'Tipo'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRL_DESCRICAO'
          Title.Caption = 'Linha'
          Width = 300
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    TabOrder = 4
  end
  object Edit1: TEdit [9]
    Left = 112
    Top = 58
    Width = 337
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  inherited ImageList1: TImageList
    Left = 257
    Top = 344
  end
  inherited ActionList1: TActionList
    Left = 289
    Top = 344
    inherited Act_Btn_Gravar: TAction
      OnExecute = Act_Btn_GravarExecute
    end
    inherited Act_Btn_Inserir: TAction
      OnExecute = Act_Btn_InserirExecute
    end
    inherited Act_Btn_Excluir: TAction
      OnExecute = Act_Btn_ExcluirExecute
    end
    inherited Act_Btn_Sair: TAction
      OnExecute = Act_Btn_SairExecute
    end
    inherited Act_Btn_Cancelar: TAction
      OnExecute = Act_Btn_CancelarExecute
    end
    inherited Act_Btn_Localizar: TAction
      OnExecute = Act_Btn_LocalizarExecute
    end
    object bt_Alterar: TAction
      Category = 'FormCadastros'
      Caption = 'Alterar'
      OnExecute = bt_AlterarExecute
    end
    object bt_Excluir: TAction
      Category = 'FormCadastros'
      Caption = 'Excluir'
      OnExecute = bt_ExcluirExecute
    end
  end
  object PopupMenu1: TPopupMenu [12]
    Left = 320
    Top = 344
    object Alterar1: TMenuItem
      Action = bt_Alterar
    end
    object Excluir1: TMenuItem
      Action = bt_Excluir
    end
  end
  object ApplicationEvents1: TApplicationEvents [13]
    OnMessage = ApplicationEvents1Message
    Left = 224
    Top = 344
  end
  inherited qryCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PRODUTO WHERE PROD_ID = :PROD')
    Top = 393
    object qryCadastroPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadastroPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Required = True
    end
    object qryCadastroPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryCadastroPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryCadastroPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryCadastroPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryCadastroPROD_SIGLA: TStringField
      FieldName = 'PROD_SIGLA'
    end
    object qryCadastroPROD_DESCRICAO_LONGA: TStringField
      FieldName = 'PROD_DESCRICAO_LONGA'
      Size = 255
    end
    object qryCadastroPROD_CAMINHOIMAGEM: TStringField
      FieldName = 'PROD_CAMINHOIMAGEM'
      Size = 100
    end
    object qryCadastroPROD_PRL_ID: TIntegerField
      FieldName = 'PROD_PRL_ID'
      Required = True
    end
  end
  inherited dspCadastro: TDataSetProvider
    Top = 393
  end
  inherited dsCadastro: TDataSource
    OnStateChange = dsCadastroStateChange
    Top = 393
  end
  inherited cdsCadastro: TMyClientDataSet
    Top = 393
    object cdsCadastroPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Required = True
    end
    object cdsCadastroPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsCadastroPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsCadastroPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsCadastroPROD_SIGLA: TStringField
      FieldName = 'PROD_SIGLA'
    end
    object cdsCadastroPROD_DESCRICAO_LONGA: TStringField
      FieldName = 'PROD_DESCRICAO_LONGA'
      Size = 255
    end
    object cdsCadastroPROD_CAMINHOIMAGEM: TStringField
      FieldName = 'PROD_CAMINHOIMAGEM'
      Size = 100
    end
    object cdsCadastroPROD_PRL_ID: TIntegerField
      FieldName = 'PROD_PRL_ID'
      Required = True
    end
  end
  inherited qryConsulta: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PRODUTO.*,'
      '       PRODUTO_TIPO.PRODTP_DESCRICAO,'
      '       PRODUTO_LINHA.PRL_DESCRICAO'
      '  FROM PRODUTO'
      
        ' LEFT JOIN PRODUTO_TIPO ON (PRODUTO_TIPO.PRODTP_ID=PRODUTO.PROD_' +
        'PRODTP_ID)'
      
        ' LEFT JOIN PRODUTO_LINHA ON (PRODUTO_LINHA.PRL_ID=PRODUTO.PROD_P' +
        'RL_ID)'
      'WHERE PROD_DESCRICAO LIKE :NOME'
      'ORDER BY PROD_DESCRICAO'
      '')
    Top = 424
    object qryConsultaPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object qryConsultaPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
      Required = True
    end
    object qryConsultaPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object qryConsultaPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object qryConsultaPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object qryConsultaPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object qryConsultaPROD_SIGLA: TStringField
      FieldName = 'PROD_SIGLA'
    end
    object qryConsultaPROD_DESCRICAO_LONGA: TStringField
      FieldName = 'PROD_DESCRICAO_LONGA'
      Size = 255
    end
    object qryConsultaPROD_CAMINHOIMAGEM: TStringField
      FieldName = 'PROD_CAMINHOIMAGEM'
      Size = 100
    end
    object qryConsultaPROD_PRL_ID: TIntegerField
      FieldName = 'PROD_PRL_ID'
      Required = True
    end
    object qryConsultaPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
    object qryConsultaPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
  end
  inherited dspConsulta: TDataSetProvider
    Top = 424
  end
  inherited cdsConsulta: TMyClientDataSet
    Top = 424
    object cdsConsultaPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object cdsConsultaPROD_PRODTP_ID: TIntegerField
      FieldName = 'PROD_PRODTP_ID'
    end
    object cdsConsultaPROD_DESCRICAO: TStringField
      FieldName = 'PROD_DESCRICAO'
      Size = 100
    end
    object cdsConsultaPROD_ATIVO: TStringField
      FieldName = 'PROD_ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPROD_VALOR: TFMTBCDField
      FieldName = 'PROD_VALOR'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_UNIDMEDIDA: TStringField
      FieldName = 'PROD_UNIDMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaPROD_ESPESSURA: TFMTBCDField
      FieldName = 'PROD_ESPESSURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_LARGURA: TFMTBCDField
      FieldName = 'PROD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_ALTURA: TFMTBCDField
      FieldName = 'PROD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_MEDIDA_METRO: TFMTBCDField
      FieldName = 'PROD_MEDIDA_METRO'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPROD_SIGLA: TStringField
      FieldName = 'PROD_SIGLA'
    end
    object cdsConsultaPROD_DESCRICAO_LONGA: TStringField
      FieldName = 'PROD_DESCRICAO_LONGA'
      Size = 255
    end
    object cdsConsultaPROD_CAMINHOIMAGEM: TStringField
      FieldName = 'PROD_CAMINHOIMAGEM'
      Size = 100
    end
    object cdsConsultaPROD_PRL_ID: TIntegerField
      FieldName = 'PROD_PRL_ID'
      Required = True
    end
    object cdsConsultaPRODTP_DESCRICAO: TStringField
      FieldName = 'PRODTP_DESCRICAO'
      Size = 100
    end
    object cdsConsultaPRL_DESCRICAO: TStringField
      FieldName = 'PRL_DESCRICAO'
      Size = 100
    end
  end
  inherited dsConsulta: TDataSource
    Top = 424
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = '*.jpg;*.bmp'
    Filter = 'Jpg ou Bmp|*.jpg;*.bmp'
    Left = 674
    Top = 239
  end
end
