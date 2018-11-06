object Fdesign: TFdesign
  Left = 344
  Top = 162
  Width = 478
  Height = 397
  Caption = 'Fdesign'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblmateria: TLabel
    Left = 104
    Top = 352
    Width = 3
    Height = 13
  end
  object frReport1: TfrxReport
    Version = '4.9.38'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39897.442653888900000000
    ReportOptions.Description.Strings = (
      'Requerimento de Retifica'#231#227'o')
    ReportOptions.LastChange = 42989.637794641200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var FId : Integer;'
      '  '
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      
        'var iEmpresa, iFilial : Integer;                                ' +
        '                                            '
      'begin'
      '  iEmpresa := strtoint(<EMPRESA>);    '
      '  iFilial  := strtoint(<FILIAL>);'
      '  FId      := strtoint(<FID>);                        '
      ''
      '  ibParoquia.Close;'
      '  ibParoquia.Parambyname('#39'empresa'#39').Value := iEmpresa;'
      '  ibParoquia.Parambyname('#39'filial'#39').Value := iFilial;'
      '  ibParoquia.Open;'
      'end;'
      ''
      'procedure PageHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  ibParoquia.Close;'
      'end;'
      ''
      'begin'
      '  if <IMAGEMLOGO><>'#39#39' then'
      
        '    Picture1.LoadFromFile(<IMAGEMLOGO>);                        ' +
        '                                       '
      'end.')
    OnGetValue = frReport1GetValue
    Left = 32
    Top = 16
    Datasets = <
      item
        DataSet = frReport1.ibParoquia
        DataSetName = 'ibParoquia'
      end>
    Variables = <
      item
        Name = ' GERAL'
        Value = Null
      end
      item
        Name = 'EMPRESA'
        Value = '1'
      end
      item
        Name = 'FILIAL'
        Value = '1'
      end
      item
        Name = 'DESCRICAO'
        Value = 'Relat'#243'rio de Batizandos em orderm alfab'#233'tica'
      end
      item
        Name = 'FID'
        Value = '5'
      end
      item
        Name = 'IMAGEMLOGO'
        Value = #39'E:\Financeiro\Curia\SGPAR\doc\Imagem\1_1.JPG'#39
      end
      item
        Name = ' HABILITA'
        Value = Null
      end
      item
        Name = 'HAB_DATAPROCLAMAS1'
        Value = Null
      end
      item
        Name = 'HAB_DATAPROCLAMAS2'
        Value = Null
      end
      item
        Name = 'DATAATUAL'
        Value = #39'11/09/2017'#39
      end
      item
        Name = 'DATADETALHADA'
        Value = #39'11 de Setembro de 2017'#39
      end
      item
        Name = 'ESTOUCASADO'
        Value = #39'Uni'#227'o Est'#225'vel'#39
      end
      item
        Name = 'DATA'
        Value = #39'01/01/2017'#39
      end
      item
        Name = 'HORARIO'
        Value = #39'09:30'#39
      end
      item
        Name = 'HOSPITAL'
        Value = #39'SANTA CASA DE MISERICORDIA DE MARING'#193#39
      end
      item
        Name = 'CIDADE'
        Value = #39'MARING'#193#39
      end
      item
        Name = 'CELEBRANTE'
        Value = #39'DI'#193'CONO MAURO BATISTA'#39
      end
      item
        Name = 'CRIANCA'
        Value = #39'CLAUDIO ROGERIO DE ASSIS'#39
      end
      item
        Name = 'PAI'
        Value = #39'EMERSON DE ASSIS RIBEIRO'#39
      end
      item
        Name = 'MAE'
        Value = #39'NATALIA DA SILVA RIBEIRO'#39
      end
      item
        Name = 'PADRINHO'
        Value = #39'CASSIO APARECIDO DALTO'#39
      end
      item
        Name = 'MADRINHA'
        Value = #39'MARIA DA CONCEI'#199#195'O GIACOMO'#39
      end
      item
        Name = 'DTDESC'
        Value = #39'28 de Julho de 2017'#39
      end
      item
        Name = 'REQUERENTE'
        Value = #39'ALESSANDRO'#39
      end
      item
        Name = 'RG'
        Value = #39'12122'#39
      end
      item
        Name = 'ENDERECO'
        Value = #39'RUA OTTO GAERTNER'#39
      end
      item
        Name = 'FONE'
        Value = #39'(43) 30622644'#39
      end
      item
        Name = 'GRAUPARENTESCO'
        Value = #39'PRIMO'#39
      end
      item
        Name = 'DOCRATIFICACAO'
        Value = #39'DOC RETIFI'#39
      end
      item
        Name = 'DOCDE'
        Value = #39'ALESSANDRO'#39
      end
      item
        Name = 'PARAFINS'
        Value = #39'MATRIM'#39
      end
      item
        Name = 'EMNOMEDE'
        Value = #39'CARLOS'#39
      end
      item
        Name = 'MOTIVO'
        Value = #39#39
      end
      item
        Name = 'DATADESC'
        Value = #39'28 de Julho de 2017'#39
      end
      item
        Name = 'LOCAL'
        Value = #39#39
      end
      item
        Name = '@REQUERENTE'
        Value = #39'TESTE'#39
      end
      item
        Name = '@RG'
        Value = #39#39
      end
      item
        Name = '@ENDERECO'
        Value = #39#39
      end
      item
        Name = '@FONE'
        Value = #39#39
      end
      item
        Name = '@GRAUPARENTESCO'
        Value = #39#39
      end
      item
        Name = '@DOCRATIFICACAO'
        Value = #39#39
      end
      item
        Name = '@DOCDE'
        Value = #39#39
      end
      item
        Name = '@PARAFINS'
        Value = #39#39
      end
      item
        Name = '@EMNOMEDE'
        Value = #39#39
      end
      item
        Name = '@MOTIVO'
        Value = #39#39
      end
      item
        Name = '@DATADESC'
        Value = #39'11 de Setembro de 2017'#39
      end
      item
        Name = '@LOCAL'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ibParoquia: TfrxIBXQuery
        UserName = 'ibParoquia'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'empresa'
            DataType = ftUnknown
          end
          item
            Name = 'filial'
            DataType = ftUnknown
          end>
        SQL.Strings = (
          'select e.emp_razao_social,'
          '       f.FIL_ID,'
          '       f.FIL_EMPRESA,'
          '       f.FIL_DESCRICAO,'
          '       f.FIL_ENDERECO,'
          '       f.FIL_BAIRRO,'
          '       f.FIL_CEP,'
          '       f.FIL_CNPJ,'
          '       f.FIL_FONE,'
          '       f.FIL_CELULAR,'
          '       f.FIL_FAX,'
          '       f.FIL_EMAIL,'
          '       f.FIL_CIDADE,'
          '       f.FIL_STATUS,'
          '       f.FIL_CHAVEPRI,'
          '       f.FIL_CHAVEPUB,'
          '       f.FIL_ULT_ENVIO,'
          '       f.FIL_ULT_RETORNO,'
          '       f.FIL_SITE,'
          '       f.FIL_ARQUIVO_EXPORTA,'
          '       f.FIL_COD_CONTABIL,'
          '       f.FIL_LOGODOCUMENTOS,'
          '       f.TELA,'
          '       f.FIL_ETIQUETAS,'
          '       f.FIL_CERTIDAO,'
          '       f.FIL_DECANATO,'
          '       f.FIL_LIB_DIZIMISTA,'
          '       f.FIL_PAROCO,'
          '       f.FIL_VIGARIO,'
          '       f.FIL_ASSINANTE,'
          '       f.FI_ASSINANTE_FINANCEIRO,'
          '       f.FIL_MENSAGEM_RECIBOCONTRIB,'
          '       f.FIL_COMPLEMENTO,'
          '       f.FIL_INSTRUCAOCARNE,'
          '       f.FIL_DDDFONE,'
          '       f.FIL_DDDCEL,'
          '       f.FIL_OPERADORA,'
          '       f.FIL_DDDFAX,'
          '       c.cid_descricao,'
          '       c.cid_uf,'
          
            '       (select uf_descricao from sp_ufdescricao(c.cid_uf)) UFDES' +
            'C,'
          '       e.emp_razao_social "$ARQUIDIOCESE_RAZAO",'
          '       e.emp_fantasia "$ARQUIDIOCESE_FANTASIA",'
          '       f.FIL_DESCRICAO "$PAROQUIA",'
          '       f.FIL_ENDERECO "$ENDERECO",'
          '       f.FIL_BAIRRO "$BAIRRO",'
          '       c.cid_descricao "$CIDADE",'
          '       f.FIL_FONE "$FONE",'
          '       f.FIL_DDDFAX "$FAX",'
          '       f.FIL_CEP "$CEP",'
          '       f.FIL_EMAIL "$EMAIL",'
          '       f.FIL_SITE "$SITE",'
          '       c.cid_uf "$UFR",'
          
            '       (select uf_descricao from sp_ufdescricao(c.cid_uf)) "$UFD' +
            'ESC",'
          '       f.FIL_PAROCO "$PAROCO",'
          '       f.FIL_VIGARIO "$VIGARIO",'
          '       f.FIL_ASSINANTE "$ASSINANTE"'
          '  from filial F'
          '  join empresa e on (e.emp_id=f.fil_empresa)'
          '  left join cidade c on f.fil_cidade = c.cid_id'
          ' where f.fil_empresa = :empresa'
          '   and f.fil_id = :filial'
          '  ')
        pLeft = 20
        pTop = 12
        Parameters = <
          item
            Name = 'empresa'
            DataType = ftUnknown
          end
          item
            Name = 'filial'
            DataType = ftUnknown
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 12.700000000000000000
      RightMargin = 12.700000000000000000
      TopMargin = 12.700000000000000000
      BottomMargin = 12.700000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 170.078740157480000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 697.701238000000000000
        OnAfterPrint = 'PageHeader1OnAfterPrint'
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 147.401670000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[ibParoquia."$ARQUIDIOCESE_FANTASIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          ShiftMode = smDontShift
          Left = 147.401670000000000000
          Top = 18.897650000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[ibParoquia."$PAROQUIA"]')
          ParentFont = False
          WordWrap = False
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 1.000000000000000000
          Width = 113.385826770000000000
          Height = 113.385836540000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          ShowHint = False
          Center = True
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ibParoquiaFIL_ENDERECO: TfrxMemoView
          Left = 147.401670000000000000
          Top = 37.795275590000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frReport1.ibParoquia
          DataSetName = 'ibParoquia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[ibParoquia."$ENDERECO"] - [ibParoquia."$BAIRRO"]')
          ParentFont = False
        end
        object ibParoquiaCID_DESCRICAO: TfrxMemoView
          Left = 147.401670000000000000
          Top = 56.692913390000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frReport1.ibParoquia
          DataSetName = 'ibParoquia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8 = (
            
              '[ibParoquia."$CIDADE"]-[ibParoquia."$UFR"]   Fone: [ibParoquia."' +
              '$FONE"]   CEP: [ibParoquia."$CEP"]')
          ParentFont = False
        end
        object ibParoquiaFIL_EMAIL: TfrxMemoView
          Left = 147.401670000000000000
          Top = 75.590551180000000000
          Width = 438.425480000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frReport1.ibParoquia
          DataSetName = 'ibParoquia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[ibParoquia."$EMAIL"]      [ibParoquia."$SITE"]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Top = 133.063080000000000000
          Width = 699.212671650000000000
          Height = 26.456710000000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302043616C696272693B7D7D0D0A7B5C63
            6F6C6F7274626C203B5C726564305C677265656E305C626C7565303B7D0D0A7B
            5C2A5C67656E657261746F7220526963686564323020362E332E393630307D5C
            766965776B696E64345C756331200D0A5C706172645C71635C625C66305C6673
            333220524551554552494D454E544F2044452052455449464943415C2763375C
            2763334F5C6366315C62305C7061720D0A7D0D0A00}
        end
      end
      object Rich1: TfrxRichView
        Top = 211.653680000000000000
        Width = 699.212683860000000000
        Height = 83.149660000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C6673776973735C66707271325C6663686172736574302043616C69627269
          3B7D7B5C66315C66726F6D616E5C66707271325C666368617273657430205469
          6D6573204E657720526F6D616E3B7D7D0D0A7B5C2A5C67656E657261746F7220
          526963686564323020362E332E393630307D5C766965776B696E64345C756331
          200D0A5C706172645C66305C667332345C2763305C6631202E5C7061720D0A5C
          6630204368616E63656C6172696120646120435C276661726961204D6574726F
          706F6C6974616E61206465204C6F6E6472696E615C7061720D0A0D0A5C706172
          645C736C3336305C736C6D756C74312020205C66315C7061720D0A0D0A5C7061
          72645C736C3336305C736C6D756C74315C716A5C625C7061720D0A5C7061720D
          0A5C7061720D0A5C62305C6C696E655C66305C7061720D0A7D0D0A00}
      end
      object Rich3: TfrxRichView
        Top = 744.567410000000000000
        Width = 699.212598430000000000
        Height = 173.858380000000000000
        ShowHint = False
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C6673776973735C66707271325C6663686172736574302043616C69627269
          3B7D7B5C66315C666E696C204D532053616E732053657269663B7D7D0D0A7B5C
          2A5C67656E657261746F7220526963686564323020362E332E393630307D5C76
          6965776B696E64345C756331200D0A5C706172645C73613230305C736C323736
          5C736C6D756C74315C71635C625C66305C667332342055534F20494E5445524E
          4F5C7061720D0A0D0A5C706172645C73613230305C736C3237365C736C6D756C
          74315C62302020202050726F746F636F6C6F206E5C2762613A205C7061720D0A
          0D0A5C7061726420202020446573706163686F3A205C66315C667331365C7061
          720D0A7D0D0A00}
      end
      object Memo1: TfrxMemoView
        Left = 11.338590000000000000
        Top = 831.496600000000000000
        Width = 680.315400000000000000
        Height = 75.590600000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LineSpacing = 10.000000000000000000
        ParentFont = False
        Underlines = True
      end
      object Rich4: TfrxRichView
        Left = 264.567100000000000000
        Top = 650.079160000000000000
        Width = 226.771800000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C666E696C5C6663686172736574302043616C696272693B7D7D0D0A7B5C63
          6F6C6F7274626C203B5C726564305C677265656E305C626C7565303B7D0D0A7B
          5C2A5C67656E657261746F7220526963686564323020362E332E393630307D5C
          766965776B696E64345C756331200D0A5C706172645C71635C66305C66733234
          20417373696E61747572615C6366315C7061720D0A7D0D0A00}
      end
      object Rich5: TfrxRichView
        Top = 714.331170000000000000
        Width = 699.213050000000000000
        Height = 18.897650000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C6673776973735C66707271325C6663686172736574302043616C69627269
          3B7D7B5C66315C666E696C205461686F6D613B7D7D0D0A7B5C636F6C6F727462
          6C203B5C726564305C677265656E305C626C7565303B7D0D0A7B5C2A5C67656E
          657261746F7220526963686564323020362E332E393630307D5C766965776B69
          6E64345C756331200D0A5C706172645C71725C66305C66733234205B404C4F43
          414C5D2C205B4044415441444553435D2E5C6366315C66315C667331365C7061
          720D0A7D0D0A00}
      end
      object Rich6: TfrxRichView
        Top = 302.362400000000000000
        Width = 680.315400000000000000
        Height = 151.181200000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C6673776973735C66707271325C6663686172736574302043616C69627269
          3B7D7B5C66315C666E696C204D532053616E732053657269663B7D7D0D0A7B5C
          2A5C67656E657261746F7220526963686564323020362E332E393630307D5C76
          6965776B696E64345C756331200D0A5C706172645C73613230305C736C333630
          5C736C6D756C74315C66305C667332342045752C5C6220205B40524551554552
          454E54455D5C62302020706F727461646F7220646F205247206E5C2762613A20
          5C62205B4052475D5C623020205265736964656E746520656D205C62205B4045
          4E44455245434F5D5C6230202C2054656C65666F6E65205C62205B40464F4E45
          5D5C6230202C206772617520646520706172656E746573636F205C62205B4047
          524155504152454E544553434F5D5C6230202C2076656E686F20706F72206D65
          696F206465206573746520736F6C69636974617220616265727475726120646F
          2050726F636573736F2041646D696E69737472617469766F2064652052657469
          666963615C2765375C2765336F20646F20726567697374726F206465205C6220
          5B40444F43524154494649434143414F5D5C623020206465205C62205B40444F
          4344455D5C6230202C20636F6E666F726D65206365727469645C2765336F2065
          6D20616E65786F2E5C667332325C7061720D0A0D0A5C706172645C66315C6673
          31365C7061720D0A7D0D0A00}
      end
      object Rich7: TfrxRichView
        Top = 445.984540000000000000
        Width = 680.315400000000000000
        Height = 109.606370000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C6673776973735C66707271325C6663686172736574302043616C69627269
          3B7D7B5C66315C66726F6D616E5C66707271325C666368617273657430205469
          6D6573204E657720526F6D616E3B7D7B5C66325C666E696C204D532053616E73
          2053657269663B7D7D0D0A7B5C2A5C67656E657261746F722052696368656432
          3020362E332E393630307D5C766965776B696E64345C756331200D0A5C706172
          645C736C3336305C736C6D756C74315C716A5C66305C66733234205061726120
          66696E732064653A205C62205B405041524146494E535D5C62305C66315C7061
          720D0A5C663020456D206E6F6D652064653A205C62205B40454D4E4F4D454445
          5D5C62302020202020205C66315C7061720D0A0D0A5C706172645C6630204D6F
          7469766F20646120736F6C69636974615C2765375C2765336F20646520526574
          69666963615C2765375C2765336F3A205C62205B404D4F5449564F5D5C62305C
          66325C667331365C7061720D0A7D0D0A00}
      end
    end
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Left = 32
    Top = 109
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 32
    Top = 155
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 128
    Top = 16
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 128
    Top = 62
  end
  object frxRichObject1: TfrxRichObject
    Left = 128
    Top = 109
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 128
    Top = 155
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 128
    Top = 209
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 128
    Top = 259
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 128
    Top = 312
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 32
    Top = 62
  end
  object frxIBXComponents1: TfrxIBXComponents
    DefaultDatabase = DMConexao.IBConexao
    Left = 224
    Top = 16
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 224
    Top = 62
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    Left = 224
    Top = 109
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 224
    Top = 155
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 224
    Top = 209
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 224
    Top = 259
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 312
    Top = 16
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 312
    Top = 62
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 312
    Top = 109
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 312
    Top = 155
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 312
    Top = 209
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 312
    Top = 259
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    Left = 224
    Top = 312
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 312
    Top = 312
  end
  object frxDBFExport1: TfrxDBFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    OEMCodepage = False
    Left = 32
    Top = 209
  end
end
