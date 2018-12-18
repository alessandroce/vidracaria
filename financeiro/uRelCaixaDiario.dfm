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
    ReportOptions.CreateDate = 43386.673439814800000000
    ReportOptions.Description.Strings = (
      'Relat'#243'rio de Caixa di'#225'rio')
    ReportOptions.LastChange = 43438.553088807870000000
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  '
      '  IBXSaldoAnt.Close;'
      
        '  IBXSaldoAnt.ParamByName('#39'ano'#39').asInteger := <ANO>;            ' +
        '                                                                ' +
        '                          '
      
        '  IBXSaldoAnt.ParamByName('#39'dtinicio'#39').asInteger := <DATAINICIO>;' +
        '                                                                ' +
        '                                      '
      
        '  IBXSaldoAnt.Close;                                            ' +
        '            '
      '    '
      '  IBXSaldoAtual.Close;'
      
        '  IBXSaldoAtual.ParamByName('#39'ano'#39').asInteger := <ANO>;          ' +
        '                                                                ' +
        '                            '
      
        '  IBXSaldoAtual.ParamByName('#39'dtfinal'#39').asInteger := <DATAFINAL>;' +
        '                                                                ' +
        '                                      '
      
        '  IBXSaldoAtual.Close;                                          ' +
        '              '
      '    '
      '  IBXCaixa.Close;'
      
        '  IBXCaixa.ParamByName('#39'ano'#39').asInteger := <ANO>;               ' +
        '                                                                ' +
        '                       '
      
        '  IBXCaixa.Close;                                               ' +
        '         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Datasets = <
      item
        DataSet = frxReport1.IBXCaixa
        DataSetName = 'IBXCaixa'
      end
      item
        DataSet = frxReport1.IBXSaldoAnt
        DataSetName = 'IBXSaldoAnt'
      end
      item
        DataSet = frxReport1.IBXSaldoAtual
        DataSetName = 'IBXSaldoAtual'
      end>
    Variables = <
      item
        Name = 'FILTROUSADO'
        Value = #39#39
      end
      item
        Name = 'ANO'
        Value = '2018'
      end
      item
        Name = 'DATAINICIO'
        Value = #39'01.11.2018'#39
      end
      item
        Name = 'DATAFINAL'
        Value = #39'28.11.2018'#39
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
      object IBXCaixa: TfrxIBXQuery
        UserName = 'IBXCaixa'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'ano'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select movfinanceiro.mov_datamov,'
          '       view_pl_conta.pit_codigoreduzido,'
          '       movfinanceiro.mov_descricao,'
          '       movfinanceiro.mov_observacao,'
          '       movfinanceiro.mov_id,'
          '       view_pl_conta.pgr_codigo,'
          '       case'
          
            '           when(coalesce(view_pl_conta.pgr_codigo,0)=0) then nul' +
            'l'
          
            '           when(coalesce(view_pl_conta.pgr_codigo,0)=1) then mov' +
            'financeiro.mov_valor'
          '       else 0 end valor_credito,'
          '       case'
          
            '           when(coalesce(view_pl_conta.pgr_codigo,0)=0) then nul' +
            'l'
          
            '           when(coalesce(view_pl_conta.pgr_codigo,0)=2) then mov' +
            'financeiro.mov_valor'
          '       else 0 end valor_debito'
          '  from movfinanceiro'
          
            ' left join view_pl_conta on (view_pl_conta.pit_id=movfinanceiro.' +
            'mov_cat_id and view_pl_conta.ptc_ano=movfinanceiro.mov_ano)  whe' +
            're movfinanceiro.mov_ano = :ano               ')
        pLeft = 76
        pTop = 72
        Parameters = <
          item
            Name = 'ano'
            DataType = ftUnknown
          end>
      end
      object IBXSaldoAnt: TfrxIBXQuery
        UserName = 'IBXSaldoAnt'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtinicio'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtinicio'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'Select Saldo_Tot_Anterior,'
          '       Saldo_Tot_Caixa ,'
          
            '       case when(Saldo_Tot_Banco<0) then 0 else Saldo_Tot_Banco ' +
            'end Saldo_Tot_Banco'
          '  from ('
          'Select sum(B.Saldo_Tot_Anterior) Saldo_Tot_Anterior,'
          '       sum(Saldo_Tot_caixa) Saldo_Tot_Caixa ,'
          
            '       sum(B.Saldo_Tot_Anterior - Saldo_Tot_Caixa) Saldo_Tot_Ban' +
            'co'
          '  from ('
          '        --saldo banco'
          
            '        select sum(a.total_credito-a.total_debito) Saldo_Tot_Ant' +
            'erior, 0 Saldo_Tot_Caixa'
          '          from ('
          
            '            select case when(pc.ptc_sinal = '#39'C'#39') then sum(lc.mov' +
            '_valor) else 0 end total_credito,'
          
            '                   case when pc.ptc_sinal = '#39'D'#39' then sum(lc.mov_' +
            'valor) else 0 end total_debito'
          '              from movfinanceiro lc'
          
            '             Left Join view_pl_conta PC on (PC.ptc_ano = LC.mov_' +
            'ano and PC.pgr_codigo in (1,2) and PC.pit_id = lc.mov_cat_id)'
          '             Where LC.mov_id > 0'
          '               and LC.mov_ano = :ano'
          '               and LC.mov_datamov < :dtinicio'
          '             group by pc.ptc_sinal'
          '            '
          '            union all'
          '            '
          '            select coalesce(sum(si.psi_valor),0) total_credito,'
          '                   0 total_debito'
          '              from pl_saldoinicial si'
          '             where si.psi_id>-1'
          '               and si.psi_ano = :ano'
          '               and si.psi_ban_id is not null'
          '        ) a'
          '        '
          '        union all'
          '        --saldo caixa'
          
            '        Select 0 Saldo_Tot_Anterior, sum(a.total_credito-a.total' +
            '_debito) Saldo_Caixa'
          '          from ('
          
            '            select case when(pc.ptc_sinal = '#39'C'#39') then sum(lc.mov' +
            '_valor) else 0 end total_credito,'
          
            '                   case when pc.ptc_sinal = '#39'D'#39' then sum(lc.mov_' +
            'valor) else 0 end total_debito'
          '              from movfinanceiro lc'
          '             Left Join view_pl_conta PC on ('
          
            '               PC.ptc_ano = LC.mov_ano and PC.pgr_codigo in (1,2' +
            ') and PC.pit_id = lc.mov_cat_id and ((lc.mov_ban_id_cc is null) ' +
            'and (lc.mov_ban_id_ap is null)))'
          '             Where LC.mov_id > 0'
          '               and LC.mov_ano = :ano'
          '               and LC.mov_datamov < :dtinicio'
          '             group by pc.ptc_sinal'
          '            '
          '            union all'
          '            '
          '            select sum(si.psi_valor) total_credito,'
          '                   0 total_debito'
          '              from pl_saldoinicial si'
          '             where si.psi_id>-1'
          '               and si.psi_ano = :ano'
          '               and si.psi_ban_id is null'
          '        ) a'
          ') b'
          ')'
          '  ')
        pLeft = 76
        pTop = 136
        Parameters = <
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtinicio'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtinicio'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end>
      end
      object IBXSaldoAtual: TfrxIBXQuery
        UserName = 'IBXSaldoAtual'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtfinal'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtfinal'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'Select Saldo_Tot_Atual,'
          '       Saldo_Tot_Caixa ,'
          
            '       case when(Saldo_Tot_Banco<0) then 0 else Saldo_Tot_Banco ' +
            'end Saldo_Tot_Banco'
          '  from ('
          'Select sum(B.Saldo_Tot_Atual) Saldo_Tot_Atual,'
          '       sum(Saldo_Tot_caixa) Saldo_Tot_Caixa ,'
          '       sum(B.Saldo_Tot_Atual - Saldo_Tot_Caixa) Saldo_Tot_Banco'
          '  from ('
          '        --saldo banco'
          
            '        select sum(a.total_credito-a.total_debito) Saldo_Tot_Atu' +
            'al, 0 Saldo_Tot_Caixa'
          '          from ('
          
            '            select case when(pc.ptc_sinal = '#39'C'#39') then sum(lc.mov' +
            '_valor) else 0 end total_credito,'
          
            '                   case when pc.ptc_sinal = '#39'D'#39' then sum(lc.mov_' +
            'valor) else 0 end total_debito'
          '              from movfinanceiro lc'
          
            '             Left Join view_pl_conta PC on (PC.ptc_ano = LC.mov_' +
            'ano and PC.pgr_codigo in (1,2) and PC.pit_id = lc.mov_cat_id)'
          '             Where LC.mov_id > 0'
          '               and LC.mov_ano = :ano'
          '               and LC.mov_datamov <= :dtfinal'
          '             group by pc.ptc_sinal'
          '            '
          '            union all'
          '            '
          '            select coalesce(sum(si.psi_valor),0) total_credito,'
          '                   0 total_debito'
          '              from pl_saldoinicial si'
          '             where si.psi_id>-1'
          '               and si.psi_ano = :ano'
          '               and si.psi_ban_id is not null'
          '        ) a'
          '        '
          '        union all'
          '        --saldo caixa'
          
            '        Select 0 Saldo_Tot_Atual, sum(a.total_credito-a.total_de' +
            'bito) Saldo_Caixa'
          '          from ('
          
            '            select case when(pc.ptc_sinal = '#39'C'#39') then sum(lc.mov' +
            '_valor) else 0 end total_credito,'
          
            '                   case when pc.ptc_sinal = '#39'D'#39' then sum(lc.mov_' +
            'valor) else 0 end total_debito'
          '              from movfinanceiro lc'
          '             Left Join view_pl_conta PC on ('
          
            '               PC.ptc_ano = LC.mov_ano and PC.pgr_codigo in (1,2' +
            ') and PC.pit_id = lc.mov_cat_id and ((lc.mov_ban_id_cc is null) ' +
            'and (lc.mov_ban_id_ap is null)))'
          '             Where LC.mov_id > 0'
          '               and LC.mov_ano = :ano'
          '               and LC.mov_datamov <= :dtfinal'
          '             group by pc.ptc_sinal'
          '            '
          '            union all'
          '            '
          '            select sum(si.psi_valor) total_credito,'
          '                   0 total_debito'
          '              from pl_saldoinicial si'
          '             where si.psi_id>-1'
          '               and si.psi_ano = :ano'
          '               and si.psi_ban_id is null'
          '        ) a'
          ') b'
          ')'
          '  ')
        pLeft = 76
        pTop = 208
        Parameters = <
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtfinal'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end
          item
            Name = 'dtfinal'
            DataType = ftUnknown
          end
          item
            Name = 'ano'
            DataType = ftUnknown
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 94.488188980000000000
        Top = 16.000000000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child1
        object Picture1: TfrxPictureView
          Left = 1.889763779527560000
          Top = 1.889763779527560000
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
          Height = 22.677167800000000000
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
        object Memo3: TfrxMemoView
          Top = 56.692913390000000000
          Width = 755.906000000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Caixa di'#195#161'rio')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 52.913420000000000000
          Top = 38.795275590000000000
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
        object Memo4: TfrxMemoView
          Top = 75.590551180000000000
          Width = 755.905524020000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo5: TfrxMemoView
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
        object Memo7: TfrxMemoView
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
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 188.000000000000000000
        Width = 755.906000000000000000
        DataSet = frxReport1.IBXCaixa
        DataSetName = 'IBXCaixa'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 128.504020000000000000
          Width = 359.055350000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo3OnBeforePrint'
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxReport1.IBXCaixa
          DataSetName = 'IBXCaixa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[IBXCaixa."MOV_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 536.693260000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxReport1.IBXCaixa
          DataSetName = 'IBXCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXCaixa."VALOR_CREDITO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxReport1.IBXCaixa
          DataSetName = 'IBXCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IBXCaixa."VALOR_DEBITO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxReport1.IBXCaixa
          DataSetName = 'IBXCaixa'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[IBXCaixa."MOV_DATAMOV"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxReport1.IBXCaixa
          DataSetName = 'IBXCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[IBXCaixa."PIT_CODIGOREDUZIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 487.559370000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxReport1.IBXCaixa
          DataSetName = 'IBXCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[IBXCaixa."MOV_ID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 487.559370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 536.693260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 627.401980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 380.000000000000000000
        Width = 755.906000000000000000
      end
      object Child1: TfrxChild
        Height = 37.795275590000000000
        Top = 132.000000000000000000
        Width = 755.906000000000000000
        object Memo43: TfrxMemoView
          Width = 79.370130000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 128.504020000000000000
          Width = 359.055350000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Hist'#195#179'rico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 536.693260000000000000
          Width = 90.708661420000000000
          Height = 37.795275590000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Entradas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Sa'#195#173'das')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cod.'
            'Red.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 487.559370000000000000
          Width = 49.133890000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Num.'
            'Lcto.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 132.283464570000000000
        Top = 228.000000000000000000
        Width = 755.906000000000000000
        OnAfterCalcHeight = 'ReportSummary1OnAfterCalcHeight'
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object Memo15: TfrxMemoView
          Left = 287.244280000000000000
          Width = 226.771653540000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8 = (
            'Subtotal...........................................:')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 514.016080000000000000
          Width = 102.047244090000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<IBXCaixa."VALOR_CREDITO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 616.063390000000000000
          Width = 102.047244090000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<IBXCaixa."VALOR_DEBITO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 287.244280000000000000
          Top = 30.236240000000000000
          Width = 226.771653540000000000
          Height = 26.456692910000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8 = (
            'Saldo Anterior Caixa......................:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 287.244280000000000000
          Top = 56.692950000000000000
          Width = 226.771653540000000000
          Height = 26.456692910000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8 = (
            'Saldo Atual Caixa...........................:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 287.244280000000000000
          Top = 83.149660000000000000
          Width = 226.771653540000000000
          Height = 30.236220470000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8 = (
            'Conferencia.....................................:')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo6: TfrxSysMemoView
          Left = 616.063390000000000000
          Top = 30.236240000000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 514.016080000000000000
          Top = 30.236240000000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxReport1.IBXSaldoAnt
          DataSetName = 'IBXSaldoAnt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXSaldoAnt."SALDO_TOT_CAIXA"]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 514.016080000000000000
          Top = 56.692950000000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 616.063390000000000000
          Top = 56.692950000000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxReport1.IBXSaldoAtual
          DataSetName = 'IBXSaldoAtual'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[IBXSaldoAtual."SALDO_TOT_CAIXA"]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 514.016080000000000000
          Top = 83.149660000000000000
          Width = 102.047244090000000000
          Height = 30.236220470000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<ibxCaixa."VALOR_CRED">,MasterData1)+<IBXSaldoAnt."SALDO_TO' +
              'T_CAIXA">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo10: TfrxSysMemoView
          Left = 616.063390000000000000
          Top = 83.149660000000000000
          Width = 102.047244090000000000
          Height = 30.236220470000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<ibxCaixa."VALOR_DEB">,MasterData1)+<IBXSaldoAtual."SALDO_T' +
              'OT_CAIXA">]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
