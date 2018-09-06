inherited FormRelatorioTipoProduto: TFormRelatorioTipoProduto
  Caption = 'Relat'#243'rio de Tipo de Produto'
  OldCreateOrder = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [4]
    Left = 96
    Top = 11
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      object lblRegistros: TLabel
        Left = 8
        Top = 13
        Width = 10
        Height = 13
        Caption = 'R'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgRelatorioProdutos: TDBGrid
        Left = 7
        Top = 28
        Width = 725
        Height = 301
        DataSource = DMRelatorioTipoProduto.dsViewRelatorioProdutoTipo
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODTP_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 692
            Visible = True
          end>
      end
    end
  end
  object Edit1: TEdit [9]
    Left = 128
    Top = 7
    Width = 321
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Imprimir: TAction
      OnExecute = Act_Btn_ImprimirExecute
    end
    inherited Act_Btn_Fechar: TAction
      OnExecute = Act_Btn_FecharExecute
    end
    inherited act_Btn_Localizar: TAction
      OnExecute = act_Btn_LocalizarExecute
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 720
  end
end
