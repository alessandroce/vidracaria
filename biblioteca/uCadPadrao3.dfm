inherited FCadPadrao3: TFCadPadrao3
  Left = 298
  Top = 168
  Width = 800
  Height = 600
  Caption = 'FCadPadrao3'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBarraForm: TPanel
    Width = 784
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 80
    Width = 784
    Height = 481
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 479
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  object pnBarraPg: TPanel [2]
    Left = 0
    Top = 30
    Width = 784
    Height = 50
    Align = alTop
    TabOrder = 2
    object nbBarraBotao: TNotebook
      Left = 1
      Top = 1
      Width = 782
      Height = 48
      Align = alClient
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'pgCadastro'
        DesignSize = (
          782
          48)
        object btImprimir: TSpeedButton
          Left = 183
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_Imprimir
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
            CC00CCCCCC0000000000CCCCCC0000000000FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000CCCCCC0000000000FF00FF0000000000CCCC
            CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000FFFF0000FFFF0000FF
            FF00CCCCCC00CCCCCC00000000000000000000000000FF00FF0000000000CCCC
            CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0084848400848484008484
            8400CCCCCC00CCCCCC0000000000CCCCCC0000000000FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000CCCCCC00CCCCCC000000000000000000CCCC
            CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
            CC00CCCCCC0000000000CCCCCC0000000000CCCCCC0000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000CCCCCC0000000000CCCCCC000000000000000000FF00FF00FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000CCCCCC0000000000CCCCCC0000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
            0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
            000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
          Visible = False
        end
        object btExcluir: TSpeedButton
          Left = 123
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_Excluir
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000007000000FFFFFF0000FF
            FF00C0C0C0008000800000008000800000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010101010101
            0101010401010101010101010101010101010404010101010104010101010101
            0101040404010101040101010101010101010104040101040401060606060606
            0606060606040403010106020202020202020202030404010101060206060206
            0602060204030404010106020202020202020204040202040403060505050505
            0503040505050501030401050000000000040300000005010101010500060600
            0606000606000501010101050000000000000000000005010101010505050505
            0505050505050501010101050205050205050205050205010101010505050505
            0505050505050501010101010101010101010101010101010101}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
        end
        object btAlterar: TSpeedButton
          Left = 63
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_Alterar
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF003F000000FF00FF003F000000FF00FF003F000000FF00FF003F00
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
            00003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
            00003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
            00003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F00
            000000FFFF003F3F3F003F000000FF00FF00FF00FF00FF00FF00FF00FF003F00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F00
            000000FFFF00BFBFBF003F000000FF00FF00FF00FF00FF00FF00FF00FF003F00
            0000FFFFFF003F0000003F0000003F0000003F000000FFFFFF00FFFFFF003F3F
            3F003F00000000FFFF003F3F3F003F000000FF00FF00FF00FF00FF00FF003F00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF003F00000000FFFF00BFBFBF003F000000FF00FF00FF00FF00FF00FF003F00
            0000FFFFFF003F0000003F0000003F0000003F0000003F000000FFFFFF00FFFF
            FF00FFFFFF003F00000000FFFF003F3F3F003F000000FF00FF00FF00FF003F00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF003F00000000FFFF003F0000003F0000003F3F3F00FF00FF003F00
            0000FFFFFF003F0000003F0000003F000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF003F0000003F00000000003F00666666003F000000FF00FF003F00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF003F0000003F0000003F0000003F000000FF00FF00FF00FF003F00
            00003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F00
            00003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
            00003F000000FFFFFF003F000000FFFFFF003F000000FFFFFF003F000000FFFF
            FF003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003F00
            00003F0000003F0000003F0000003F0000003F0000003F0000003F0000003F00
            00003F0000003F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
        end
        object btNovo: TSpeedButton
          Left = 3
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_Novo
          BiDiMode = bdLeftToRight
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C30E0000C30E00000001000005000000FFFFFF0000FF
            FF00C0C0C0008000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010101010101
            0101010101010104010101010101010101010101010101040101010101010101
            0101010101040404040401010101010101010101010101040101040404040404
            0404040404040104010104000000000000000000000401010101040004040004
            0400040400040101010104000000000000000000000401010101040303030303
            0303030303030301010101030000000000000000000003010101010300040400
            0404000404000301010101030000000000000000000003010101010303030303
            0303030303030301010101030203030203030203030203010101010303030303
            0303030303030301010101010101010101010101010101010101}
          Layout = blGlyphTop
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
        end
        object btSair: TSpeedButton
          Left = 722
          Top = 1
          Width = 60
          Height = 45
          Action = Act_Btn_Sair
          Anchors = [akLeft]
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B000000010000030000000000FF00CC99
            9900000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0200000000000002000000000000000002020000000000020000000000000000
            0201020000000002000000000202020202010102000000020000000002010101
            0101010102000002000000000201010101010101010200020000000002010101
            0101010102000002000000000202020202010102000000020000000000000000
            0201020000000002000000000000000002020000000000020000000000000000
            0200000000000002000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'pgConsulta'
        object btCancelar: TSpeedButton
          Left = 663
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_Cancelar
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B000000010000030000007F00000000FF
            FF007F7F7F000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101020001010101010000000000010101010100020101010100000000
            0101010101010100010101010000000101010101010101000101010100000100
            0101010101010100010101010001010100000101010100020101010101010101
            0101000000000201010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
        end
        object btSalvar: TSpeedButton
          Left = 722
          Top = 2
          Width = 60
          Height = 45
          Action = Act_Btn_Gravar
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B00000001000004000000D3D3D3004DA6
            A6004D4D4D000000FF0000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000030303030303
            0303030303030303030303030202020202020202020202020203030201010202
            0202020200000201020303020101020202020202000002010203030201010202
            0202020200000201020303020101020202020202020202010203030201010101
            0101010101010101020303020101020202020202020201010203030201020000
            0000000000000201020303020102000000000000000002010203030201020000
            0000000000000201020303020102000000000000000002010203030201020000
            0000000000000202020303020102000000000000000002000203030202020202
            0202020202020202020303030303030303030303030303030303}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited Act_Btn_Gravar: TAction
      Tag = 5
      OnExecute = Act_Btn_GravarExecute
    end
    inherited Act_Btn_Alterar: TAction
      Tag = 1
      OnExecute = Act_Btn_AlterarExecute
    end
    inherited Act_Btn_Excluir: TAction
      Tag = 2
      OnExecute = Act_Btn_ExcluirExecute
    end
    inherited Act_Btn_Imprimir: TAction
      Tag = 3
      OnExecute = Act_Btn_ImprimirExecute
    end
    inherited Act_Btn_Sair: TAction
      OnExecute = Act_Btn_SairExecute
    end
    inherited Act_Btn_Novo: TAction
      OnExecute = Act_Btn_NovoExecute
    end
    inherited Act_Btn_Cancelar: TAction
      Tag = 4
      OnExecute = Act_Btn_CancelarExecute
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ibCadastro: TIBDataSet
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    OnNewRecord = ibCadastroNewRecord
    Left = 384
    Top = 8
  end
  object dsCadastro: TDataSource
    DataSet = ibCadastro
    Left = 432
    Top = 8
  end
end
