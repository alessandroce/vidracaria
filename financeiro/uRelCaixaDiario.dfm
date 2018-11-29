inherited FRelCaixaDiario: TFRelCaixaDiario
  Left = 319
  Top = 169
  Width = 453
  Height = 351
  Caption = 'FRelCaixaDiario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBarraForm: TPanel
    Width = 437
  end
  inherited BitBtn1: TBitBtn
    Left = 101
    Top = 276
    Action = bt_Cancelar
  end
  inherited BitBtn2: TBitBtn
    Left = 261
    Top = 276
    Action = bt_ok
  end
  inherited BitBtn3: TBitBtn
    Left = 181
    Top = 276
    Action = bt_Limpar
    Caption = 'Limpar'
  end
  inherited GroupBox1: TGroupBox
    Left = 11
    Top = 30
    Width = 415
    Height = 230
    object Label1: TLabel
      Left = 48
      Top = 101
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo '
    end
    object Label2: TLabel
      Left = 200
      Top = 101
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label3: TLabel
      Left = 48
      Top = 53
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object cxDBDateEdit1: TcxDateEdit
      Left = 96
      Top = 96
      TabOrder = 0
      Width = 97
    end
    object cxDBDateEdit2: TcxDateEdit
      Left = 224
      Top = 96
      TabOrder = 1
      Width = 97
    end
    object SpinEdit1: TSpinEdit
      Left = 96
      Top = 48
      Width = 97
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 2018
    end
  end
  inherited ActionList1: TActionList
    inherited bt_Cancelar: TAction
      OnExecute = bt_CancelarExecute
    end
    inherited bt_Limpar: TAction
      OnExecute = bt_LimparExecute
    end
    inherited bt_ok: TAction
      OnExecute = bt_okExecute
    end
    object bt_SelCli: TAction
      Category = 'Botao'
      Caption = '...'
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
