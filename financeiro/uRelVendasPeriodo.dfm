inherited FRelVendasPeriodo: TFRelVendasPeriodo
  Left = 296
  Top = 165
  Width = 453
  Height = 351
  Caption = 'FRelVendasPeriodo'
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
    Top = 29
    Width = 415
    Height = 230
    object Bevel1: TBevel
      Left = 8
      Top = 83
      Width = 400
      Height = 10
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 16
      Top = 53
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo '
    end
    object Label2: TLabel
      Left = 168
      Top = 53
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label3: TLabel
      Left = 11
      Top = 96
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label4: TLabel
      Left = 87
      Top = 96
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label6: TLabel
      Left = 12
      Top = 147
      Width = 59
      Height = 13
      Caption = 'Ordernar por'
    end
    object BitBtn4: TBitBtn
      Left = 62
      Top = 111
      Width = 22
      Height = 22
      Action = bt_SelCli
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 11
      Top = 112
      Width = 50
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 87
      Top = 112
      Width = 314
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 11
      Top = 162
      Width = 326
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = 'Data Vencimento'
      Items.Strings = (
        'Data Vencimento'
        'Data Compet'#234'ncia'
        'Cliente')
    end
    object cxDBDateEdit1: TcxDateEdit
      Left = 64
      Top = 48
      TabOrder = 0
      Width = 97
    end
    object cxDBDateEdit2: TcxDateEdit
      Left = 192
      Top = 48
      TabOrder = 1
      Width = 97
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Data vencimento'
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 136
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Data compet'#234'ncia'
      TabOrder = 7
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
      OnExecute = bt_SelCliExecute
    end
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 43386.673439814800000000
    ReportOptions.LastChange = 43409.552060416670000000
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo16.Text := <FILTROUSADO>;'
      '  Page1.Visible := (<Pagina>='#39'Page1'#39');  '
      '  Page2.Visible := (<Pagina>='#39'Page2'#39');  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Datasets = <
      item
        DataSet = frxRelatorio
        DataSetName = 'frxRelatorio'
      end>
    Variables = <
      item
        Name = 'FILTROUSADO'
        Value = 
          #39'A pagar 01.10.2018 at'#233' 05.11.2018 | Ordenado por: Data Vencimen' +
          'to'#39
      end
      item
        Name = 'PAGINA'
        Value = ''
      end>
    Style = <
      item
        Name = 'Titulo'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = frxRelatorio
        DataSetName = 'frxRelatorio'
        RowCount = 0
        Stretched = True
        object frxExtratoPagarReceberPAR_DESCRICAO: TfrxMemoView
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_DESCRICAO"]')
          ParentFont = False
        end
        object frxExtratoPagarReceberPAR_DATAVENCTO: TfrxMemoView
          Left = 170.078850000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_DATAVENCTO"]')
          ParentFont = False
        end
        object frxExtratoPagarReceberPAR_VALOR: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxRelatorio."PAR_VALOR"]')
          ParentFont = False
        end
        object frxExtratoPagarReceberDESC_CLIENTE: TfrxMemoView
          Left = 294.803340000000000000
          Width = 154.960620160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."DESC_CLIENTE"]')
          ParentFont = False
        end
        object frxExtratoPagarReceberPAR_CETROCUSTO: TfrxMemoView
          Left = 449.764070000000000000
          Width = 154.960620160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_CETROCUSTO"]')
          ParentFont = False
        end
        object frxExtratoPagarReceberPAR_OBSERVACAO: TfrxMemoView
          Left = 604.724800000000000000
          Width = 151.181090160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_OBSERVACAO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
      end
      object Header1: TfrxHeader
        Height = 18.897637800000000000
        Top = 173.858380000000000000
        Width = 755.906000000000000000
        object Memo4: TfrxMemoView
          Width = 170.078740160000000000
          Height = 18.897637795275600000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 170.078850000000000000
          Width = 64.252010000000000000
          Height = 18.897637795275600000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Dt. Vencto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472480000000000000
          Height = 18.897637795275600000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 294.803340000000000000
          Width = 154.960620160000000000
          Height = 18.897637795275600000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Cliente/Fornecedor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 449.764070000000000000
          Width = 154.960620160000000000
          Height = 18.897637795275600000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Centro Custo')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 604.724800000000000000
          Width = 151.181090160000000000
          Height = 18.897637795275600000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Observa'#195#167#195#163'o')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 18.897637800000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        object Memo17: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxRelatorio."PAR_VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Width = 755.905511811024000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 94.488188980000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Picture1: TfrxPictureView
          Left = 1.889763780000000000
          Top = 1.889763780000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D616765B1040000FFD8FFE000104A46494600010200006400
            640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
            64C000000001FFDB0084000604040405040605050609060506090B080606080B
            0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
            1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1FFFC00011080036003203011100021101031101FF
            C400840000020301010000000000000000000000000703040506080101000203
            0100000000000000000000000001020304050610000103020305050508030000
            0000000001020304000511120621314151326181225213C142622333F07191A1
            B1D1340743142411000203000300020300000000000000000001110203213104
            5112712232FFDA000C03010002110311003F00F54D005018FAA754DAB4DDAD77
            0B82F674B2CA7EA38BF2A47EA78565C71B6968A98B6D6B452C92CFA8ADF737E4
            C569592644CA5F8EAEA0871399B707342C6E3DD58ECA199139526A5412140140
            14067DF2F70ACF0572E49C70D8DB43A96AE094D64CF377708A5EEAAA5885D553
            AEFA96E65E7C29D7578A23456C150424EE4A123F33C6BD079E95CABC1C7D9DB4
            65CBF4ABFD96F76F9C84AE0DEE14665480B1B1F8EA4243AD2F0D8A095A7770AE
            0ED0EEE3A93AF94AAA91C3A475642D456D4C9647A52500095149C54857B52781
            AC2CC86ED0050104D98CC48EA79D3E148D8399AB568ECE110DC0AEBACF7350DD
            C32D28CA7C9CADB4D6D4A13D8777DE6BAB4A2CAB2CD1B5BEEF83B9D33A52159D
            A0E142553163C6E018E1D809AD0DFD0EFF00836B3C9548B5CE8F8FA9AD0580A0
            CDC63E2E409587439E557342F72856BA328B2D22BB940985C4A0C4B94370B136
            39F7569EA4ABCC950DA0F2DB562072DAEE4DCF8C9752323807CC6CEF49FDAAA4
            9728050FF665CAF4CDE446B9445B96B73F84A4BEB430B03785250949CE38852A
            BAFE1A55D66AFF00639BE9B595B95C1B3FD6173B60F5A2888CC490EE0A6DC6F3
            78D3E52A5951D958BDD9DBB99466F2D9750316B9A6E0501CAEA7856266E2DDC1
            D74333DD406DC6D23317509E92A48E28E0AEEA02B59F53D9DCBB26D76A0E4EB8
            019A425AC036C37E67DCDA94F627A8F2A960ECEA014AEF68817682E429CD0758
            7077A5437292781157CF474728ADE8ACA18B17F4E4ED3D720CAC95B0A3FF0034
            91B330E4792871AEAD765A54D279BA33B6D27AA51705396D96ACB738A3120FF9
            5BE0B4FB6B47D187D795FCB3672D6787D94B56EBC5402E41B2B425DC0785D7D5
            FC760FC4AF7D7F027BEB592330B68D67D51A9AE8A8CDC95A9E78E69935588084
            F1248DC3924549038F4AE94B4699B5A6DF6D6B28C733EF9FA8EB877AD67ED855
            4936280280827418D363AA3C84676D5F883C083C0D5AB67572886A45AEABB04B
            B3DE6D17A6492DC794D3325C4ECC5A7559013872CD81AE963AABD1D5FC1A3B51
            D6CACBE4D97F4DBB2A4FFAED242402732B0F0A463B4D7324DE3AAB459E15AA20
            8F15180DEE2CF52D5CD46A092F5005005005014EF02DA6DAF8B91488597E7156
            EC3BB8E3BAAD499E0ADE2392C33E9607D320F9B9E3DB552C49401401407FFFD9}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Top = 18.897637800000000000
          Width = 544.252320000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vidra'#195#167'aria Vaz')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 56.692913390000000000
          Width = 755.906000000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Contas a pagar - Vencimentos')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 52.913420000000000000
          Top = 37.795275590000000000
          Width = 702.992580000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'E-mail: vidrosvaz@gmail.com Fone: (43) 9609-9774')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 75.590551180000000000
          Width = 755.905524020000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 597.165740000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Impresso: [DATE] [TIME]  ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina [Page] de [TotalPages]  ')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = frxRelatorio
        DataSetName = 'frxRelatorio'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 245.669340160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_DESCRICAO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 245.669450000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_DATAVENCTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 309.921460000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxRelatorio."PAR_VALOR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 370.393940000000000000
          Width = 192.755920160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."DESC_CLIENTE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 563.149970000000000000
          Width = 154.960620160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_CETROCUSTO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 718.110700000000000000
          Width = 151.181090160000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxRelatorio."PAR_OBSERVACAO"]')
          ParentFont = False
        end
        object frxRelatorioPAR_DESCONTOTAXA: TfrxMemoView
          Left = 869.291900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PAR_DESCONTOTAXA'
          DataSet = frxRelatorio
          DataSetName = 'frxRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxRelatorio."PAR_DESCONTOTAXA"]')
          ParentFont = False
        end
        object frxRelatorioPAR_JUROMULTA: TfrxMemoView
          Left = 948.662030000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PAR_JUROMULTA'
          DataSet = frxRelatorio
          DataSetName = 'frxRelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxRelatorio."PAR_JUROMULTA"]')
          ParentFont = False
        end
        object frxRelatorioPAR_VALORPAGO: TfrxMemoView
          Left = 1024.252630000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxRelatorio
          DataSetName = 'frxRelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxRelatorio."PAR_VALORPAGO"]')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
      end
      object Header2: TfrxHeader
        Height = 18.897637800000000000
        Top = 173.858380000000000000
        Width = 1084.725110000000000000
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Width = 241.889810160000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 245.669450000000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Dt. Vencto')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 309.921460000000000000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 370.393940000000000000
          Width = 192.755920160000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Cliente/Fornecedor')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 563.149970000000000000
          Width = 154.960620160000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Centro Custo')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 718.110700000000000000
          Width = 151.181090160000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Observa'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 1024.252630000000000000
          Width = 60.472440940000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Valor Pago')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 869.291900000000000000
          Width = 79.370090940000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Deconto / Taxa')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 948.662030000000000000
          Width = 75.590560940000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSetName = 'frxExtratoPagarReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Juro / Multa')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 18.897637800000000000
        Top = 257.008040000000000000
        Width = 1084.725110000000000000
        object Memo27: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[COUNT(MasterData2)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 309.921460000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxRelatorio."PAR_VALOR">,MasterData2)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Width = 1084.724409448820000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 1024.252630000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxRelatorio."PAR_VALORPAGO">,MasterData2)]')
          ParentFont = False
        end
      end
      object ReportTitle2: TfrxReportTitle
        Height = 94.488188980000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Picture2: TfrxPictureView
          Left = 1.889763780000000000
          Top = 1.889763780000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D616765B1040000FFD8FFE000104A46494600010200006400
            640000FFEC00114475636B79000100040000003C0000FFEE000E41646F626500
            64C000000001FFDB0084000604040405040605050609060506090B080606080B
            0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B
            1C1F1F1F1F1F1F1F1F1F1F010707070D0C0D181010181A1511151A1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1FFFC00011080036003203011100021101031101FF
            C400840000020301010000000000000000000000000703040506080101000203
            0100000000000000000000000001020304050610000103020305050508030000
            0000000001020304000511120621314151326181225213C142622333F07191A1
            B1D1340743142411000203000300020300000000000000000001110203213104
            5112712232FFDA000C03010002110311003F00F54D005018FAA754DAB4DDAD77
            0B82F674B2CA7EA38BF2A47EA78565C71B6968A98B6D6B452C92CFA8ADF737E4
            C569592644CA5F8EAEA0871399B707342C6E3DD58ECA199139526A5412140140
            14067DF2F70ACF0572E49C70D8DB43A96AE094D64CF377708A5EEAAA5885D553
            AEFA96E65E7C29D7578A23456C150424EE4A123F33C6BD079E95CABC1C7D9DB4
            65CBF4ABFD96F76F9C84AE0DEE14665480B1B1F8EA4243AD2F0D8A095A7770AE
            0ED0EEE3A93AF94AAA91C3A475642D456D4C9647A52500095149C54857B52781
            AC2CC86ED0050104D98CC48EA79D3E148D8399AB568ECE110DC0AEBACF7350DD
            C32D28CA7C9CADB4D6D4A13D8777DE6BAB4A2CAB2CD1B5BEEF83B9D33A52159D
            A0E142553163C6E018E1D809AD0DFD0EFF00836B3C9548B5CE8F8FA9AD0580A0
            CDC63E2E409587439E557342F72856BA328B2D22BB940985C4A0C4B94370B136
            39F7569EA4ABCC950DA0F2DB562072DAEE4DCF8C9752323807CC6CEF49FDAAA4
            9728050FF665CAF4CDE446B9445B96B73F84A4BEB430B03785250949CE38852A
            BAFE1A55D66AFF00639BE9B595B95C1B3FD6173B60F5A2888CC490EE0A6DC6F3
            78D3E52A5951D958BDD9DBB99466F2D9750316B9A6E0501CAEA7856266E2DDC1
            D74333DD406DC6D23317509E92A48E28E0AEEA02B59F53D9DCBB26D76A0E4EB8
            019A425AC036C37E67DCDA94F627A8F2A960ECEA014AEF68817682E429CD0758
            7077A5437292781157CF474728ADE8ACA18B17F4E4ED3D720CAC95B0A3FF0034
            91B330E4792871AEAD765A54D279BA33B6D27AA51705396D96ACB738A3120FF9
            5BE0B4FB6B47D187D795FCB3672D6787D94B56EBC5402E41B2B425DC0785D7D5
            FC760FC4AF7D7F027BEB592330B68D67D51A9AE8A8CDC95A9E78E69935588084
            F1248DC3924549038F4AE94B4699B5A6DF6D6B28C733EF9FA8EB877AD67ED855
            4936280280827418D363AA3C84676D5F883C083C0D5AB67572886A45AEABB04B
            B3DE6D17A6492DC794D3325C4ECC5A7559013872CD81AE963AABD1D5FC1A3B51
            D6CACBE4D97F4DBB2A4FFAED242402732B0F0A463B4D7324DE3AAB459E15AA20
            8F15180DEE2CF52D5CD46A092F5005005005014EF02DA6DAF8B91488597E7156
            EC3BB8E3BAAD499E0ADE2392C33E9607D320F9B9E3DB552C49401401407FFFD9}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo29: TfrxMemoView
          Left = 52.913420000000000000
          Top = 18.897637800000000000
          Width = 873.071430000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vidra'#195#167'aria Vaz')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 56.692913390000000000
          Width = 1084.725110000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Contas a pagar - Vencimentos')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 52.913420000000000000
          Top = 37.795275590000000000
          Width = 1031.811690000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'E-mail: vidrosvaz@gmail.com Fone: (43) 9609-9774')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 75.590551180000000000
          Width = 1084.724634020000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 925.984850000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Impresso: [DATE] [TIME]  ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 925.984850000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina [Page] de [TotalPages]  ')
          ParentFont = False
        end
      end
    end
  end
  object qRelatorio: TIBQuery
    Database = DMConexao.IBConexao
    Transaction = DMConexao.IBTransacao
    SQL.Strings = (
      'select clientes.cli_cliente desc_cliente,'
      '       pagarreceber.par_id,'
      '       pagarreceber.par_descricao,'
      '       pagarreceber.par_datacompetencia,'
      '       pagarreceber.par_datavencto,'
      '       pagarreceber.par_valor,'
      '       pagarreceber.par_cetrocusto,'
      '       pl_item.pit_descricao'
      '  from pagarreceber'
      ' left join clientes on (clientes.cli_id=pagarreceber.par_cli_id)'
      ' left join pl_item on (pl_item.pit_id=pagarreceber.par_cat_id)'
      ' where 1=1'
      '   and pagarreceber.par_pagrec=1'
      '   and pl_item.pit_id=3')
    Left = 216
    Top = 160
    object qRelatorioDESC_CLIENTE: TIBStringField
      FieldName = 'DESC_CLIENTE'
      Origin = '"CLIENTES"."CLI_CLIENTE"'
      Size = 100
    end
    object qRelatorioPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = '"PAGARRECEBER"."PAR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRelatorioPAR_DESCRICAO: TIBStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = '"PAGARRECEBER"."PAR_DESCRICAO"'
      Size = 100
    end
    object qRelatorioPAR_DATACOMPETENCIA: TDateField
      FieldName = 'PAR_DATACOMPETENCIA'
      Origin = '"PAGARRECEBER"."PAR_DATACOMPETENCIA"'
    end
    object qRelatorioPAR_DATAVENCTO: TDateField
      FieldName = 'PAR_DATAVENCTO'
      Origin = '"PAGARRECEBER"."PAR_DATAVENCTO"'
    end
    object qRelatorioPAR_VALOR: TIBBCDField
      FieldName = 'PAR_VALOR'
      Origin = '"PAGARRECEBER"."PAR_VALOR"'
      Precision = 18
      Size = 2
    end
    object qRelatorioPAR_CETROCUSTO: TIBStringField
      FieldName = 'PAR_CETROCUSTO'
      Origin = '"PAGARRECEBER"."PAR_CETROCUSTO"'
      Size = 100
    end
    object qRelatorioPIT_DESCRICAO: TIBStringField
      FieldName = 'PIT_DESCRICAO'
      Origin = '"PL_ITEM"."PIT_DESCRICAO"'
      Size = 100
    end
  end
  object dsRelatorio: TDataSource
    DataSet = qRelatorio
    Left = 256
    Top = 160
  end
  object frxRelatorio: TfrxDBDataset
    UserName = 'frxRelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DESC_CLIENTE=DESC_CLIENTE'
      'PAR_ID=PAR_ID'
      'PAR_DESCRICAO=PAR_DESCRICAO'
      'PAR_DATACOMPETENCIA=PAR_DATACOMPETENCIA'
      'PAR_DATAVENCTO=PAR_DATAVENCTO'
      'PAR_VALOR=PAR_VALOR'
      'PAR_CETROCUSTO=PAR_CETROCUSTO'
      'PIT_DESCRICAO=PIT_DESCRICAO')
    DataSource = dsRelatorio
    BCDToCurrency = False
    Left = 299
    Top = 157
  end
end
