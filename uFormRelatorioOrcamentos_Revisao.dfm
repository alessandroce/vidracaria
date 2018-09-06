object FormRelatorioOrcamentos_Revisao: TFormRelatorioOrcamentos_Revisao
  Left = 333
  Top = 232
  BorderStyle = bsDialog
  Caption = 'Data de Revis'#227'o'
  ClientHeight = 166
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 5
    Width = 377
    Height = 45
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Cliente: '
    end
    object Label2: TLabel
      Left = 51
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 54
    Width = 377
    Height = 69
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Data Or'#231'.'
    end
    object Label4: TLabel
      Left = 84
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object Label5: TLabel
      Left = 188
      Top = 38
      Width = 91
      Height = 13
      Caption = 'Pr'#243'xima revis'#227'o em'
    end
    object Label6: TLabel
      Left = 8
      Top = 38
      Width = 72
      Height = 13
      Caption = #218'ltima revis'#227'o: '
    end
    object Label7: TLabel
      Left = 84
      Top = 38
      Width = 32
      Height = 13
      Caption = 'Label7'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 188
      Top = 14
      Width = 97
      Height = 17
      Caption = 'Marcar revis'#227'o'
      DataField = 'ORCPEDREV_MARCA_REVISAO'
      DataSource = DMOrcamentoPedidoRevisao.dsDadosOrcPedidoRevisao
      TabOrder = 0
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 285
      Top = 34
      Width = 84
      Height = 21
      Date = 39910.688829930560000000
      Time = 39910.688829930560000000
      TabOrder = 1
      OnChange = DateTimePicker1Change
    end
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 132
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 216
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
