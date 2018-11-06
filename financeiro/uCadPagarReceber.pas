unit uCadPagarReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, IBCustomDataSet, ActnList, ImgList,
  IBQuery, ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, Mask, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, StrUtils, frxClass,
  frxIBXComponents,uClassAvisos, DateUtils, uFerramentas, frxDBSet,
  DBClient, Provider;

type
  TFCadPagarReceber = class(TFCadPadrao)
    ibCadastroPAR_ID: TIntegerField;
    ibCadastroPAR_PAGREC: TIntegerField;
    ibCadastroPAR_DESCRICAO: TIBStringField;
    ibCadastroPAR_CAT_ID: TIntegerField;
    ibCadastroPAR_CONTA_ID: TIntegerField;
    ibCadastroPAR_DATACOMPETENCIA: TDateField;
    ibCadastroPAR_DATAVENCTO: TDateField;
    ibCadastroPAR_VALOR: TIBBCDField;
    ibCadastroPAR_CLI_ID: TIntegerField;
    ibCadastroPAR_CETROCUSTO: TIBStringField;
    ibCadastroPAR_OBSERVACAO: TIBStringField;
    ibCadastroPAR_ANEXO: TMemoField;
    ibCadastroPAR_PAGO: TIBStringField;
    ibCadastroPAR_DATAPGTO: TDateField;
    ibCadastroPAR_DESCONTOTAXA: TIBBCDField;
    ibCadastroPAR_JUROMULTA: TIBBCDField;
    ibCadastroPAR_VALORPAGO: TIBBCDField;
    ibCadastroPAR_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaPAR_ID: TIntegerField;
    qConsultaPAR_PAGREC: TIntegerField;
    qConsultaPAR_DESCRICAO: TIBStringField;
    qConsultaPAR_CAT_ID: TIntegerField;
    qConsultaPAR_CONTA_ID: TIntegerField;
    qConsultaPAR_DATACOMPETENCIA: TDateField;
    qConsultaPAR_DATAVENCTO: TDateField;
    qConsultaPAR_VALOR: TIBBCDField;
    qConsultaPAR_CLI_ID: TIntegerField;
    qConsultaPAR_CETROCUSTO: TIBStringField;
    qConsultaPAR_OBSERVACAO: TIBStringField;
    qConsultaPAR_ANEXO: TMemoField;
    qConsultaPAR_PAGO: TIBStringField;
    qConsultaPAR_DATAPGTO: TDateField;
    qConsultaPAR_DESCONTOTAXA: TIBBCDField;
    qConsultaPAR_JUROMULTA: TIBBCDField;
    qConsultaPAR_VALORPAGO: TIBBCDField;
    qConsultaPAR_DH_CA: TDateTimeField;
    grConsultaDBTableView1PAR_ID: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DATACOMPETENCIA: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DATAVENCTO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1PAR_CETROCUSTO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_OBSERVACAO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_PAGO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DATAPGTO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DESCONTOTAXA: TcxGridDBColumn;
    grConsultaDBTableView1PAR_JUROMULTA: TcxGridDBColumn;
    grConsultaDBTableView1PAR_VALORPAGO: TcxGridDBColumn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    qCategoria: TIBQuery;
    dsCategoria: TDataSource;
    qConta: TIBQuery;
    dsConta: TDataSource;
    qCategoriaPIT_ID: TIntegerField;
    qCategoriaPIT_DESCRICAO: TIBStringField;
    Label1: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    qContaFOP_ID: TIntegerField;
    qContaFOP_DESCRICAO: TIBStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Bevel3: TBevel;
    cxDBDateEdit1: TcxDBDateEdit;
    cbDataVencto: TcxDBDateEdit;
    qCliente: TIBQuery;
    dsCliente: TDataSource;
    qClienteCLI_ID: TIntegerField;
    qClienteCLI_CLIENTE: TIBStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    qCentroCusto: TIBQuery;
    dsCentroCusto: TDataSource;
    qCentroCustoPAR_CETROCUSTO: TIBStringField;
    cbCentroCusto: TComboBox;
    Label15: TLabel;
    btAnexar: TBitBtn;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    btCACentroCusto: TBitBtn;
    btEXCentroCusto: TBitBtn;
    DBMemo1: TDBMemo;
    OpenDialog1: TOpenDialog;
    ibParcela: TIBDataSet;
    ibParcelaPAR_ID: TIntegerField;
    ibParcelaPAR_PAGREC: TIntegerField;
    ibParcelaPAR_DESCRICAO: TIBStringField;
    ibParcelaPAR_CAT_ID: TIntegerField;
    ibParcelaPAR_CONTA_ID: TIntegerField;
    ibParcelaPAR_DATACOMPETENCIA: TDateField;
    ibParcelaPAR_DATAVENCTO: TDateField;
    ibParcelaPAR_VALOR: TIBBCDField;
    ibParcelaPAR_CLI_ID: TIntegerField;
    ibParcelaPAR_CETROCUSTO: TIBStringField;
    ibParcelaPAR_OBSERVACAO: TIBStringField;
    ibParcelaPAR_ANEXO: TMemoField;
    ibParcelaPAR_PAGO: TIBStringField;
    ibParcelaPAR_DATAPGTO: TDateField;
    ibParcelaPAR_DESCONTOTAXA: TIBBCDField;
    ibParcelaPAR_JUROMULTA: TIBBCDField;
    ibParcelaPAR_VALORPAGO: TIBBCDField;
    ibParcelaPAR_DH_CA: TDateTimeField;
    pnPago: TPanel;
    Bevel2: TBevel;
    chPago: TDBCheckBox;
    pnRepetir: TPanel;
    Bevel4: TBevel;
    chRepetir: TCheckBox;
    cbMensalmente: TComboBox;
    lblOcorrencia: TLabel;
    edOcorrencia: TEdit;
    lblVezes: TLabel;
    lblDataPagamento: TLabel;
    lblDescontoTaxa: TLabel;
    lblJuroMulta: TLabel;
    lblValorPago: TLabel;
    cbDataPagamento: TcxDBDateEdit;
    edDescontoTaxa: TDBEdit;
    edJuroMulta: TDBEdit;
    edValorPago: TDBEdit;
    ibCadastroPAR_PARCELANUM: TIntegerField;
    ibCadastroPAR_PARCELAMAX: TIntegerField;
    ibCadastroPAR_PARCELAPAI: TIntegerField;
    qGerador: TIBQuery;
    qGeradorID: TLargeintField;
    ibParcelaPAR_PARCELANUM: TIntegerField;
    ibParcelaPAR_PARCELAMAX: TIntegerField;
    ibParcelaPAR_PARCELAPAI: TIntegerField;
    qCategoriaPIT_CODIGO: TIntegerField;
    qCategoriaPIT_CODIGOREDUZIDO: TIntegerField;
    Act_Btn_Voltar: TAction;
    Act_Btn_Relatorios: TAction;
    qRelatorio: TIBQuery;
    dsRelatorio: TDataSource;
    qRelatorioREL_ID: TIntegerField;
    qRelatorioREL_IDPAI: TIntegerField;
    qRelatorioREL_MODULO: TIBStringField;
    qRelatorioREL_CODIGO_MODULO: TIBStringField;
    qRelatorioREL_CAMINHO: TIBStringField;
    qRelatorioREL_ARQUIVO_FR3: TIBStringField;
    qRelatorioREL_FR3: TMemoField;
    qRelatorioREL_DESCRICAO: TIBStringField;
    qRelatorioREL_DH_CA: TDateTimeField;
    frxDBDataset1: TfrxDBDataset;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaID: TIntegerField;
    cdsConsultaPAR_ID: TIntegerField;
    cdsConsultaPAR_PAGREC: TIntegerField;
    cdsConsultaPAR_DESCRICAO: TStringField;
    cdsConsultaPAR_CAT_ID: TIntegerField;
    cdsConsultaPAR_CONTA_ID: TIntegerField;
    cdsConsultaPAR_DATACOMPETENCIA: TDateField;
    cdsConsultaPAR_DATAVENCTO: TDateField;
    cdsConsultaPAR_VALOR: TBCDField;
    cdsConsultaPAR_CLI_ID: TIntegerField;
    cdsConsultaPAR_CETROCUSTO: TStringField;
    cdsConsultaPAR_OBSERVACAO: TStringField;
    cdsConsultaPAR_ANEXO: TMemoField;
    cdsConsultaPAR_PAGO: TStringField;
    cdsConsultaPAR_DATAPGTO: TDateField;
    cdsConsultaPAR_DESCONTOTAXA: TBCDField;
    cdsConsultaPAR_JUROMULTA: TBCDField;
    cdsConsultaPAR_VALORPAGO: TBCDField;
    cdsConsultaPAR_DH_CA: TDateTimeField;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    cdsCheque: TClientDataSet;
    cdsConsultaSELECIONAR: TStringField;
    cdsConsultaCHQ_ID: TIntegerField;
    cdsConsultaCHQ_BANCO: TStringField;
    cdsConsultaCHQ_CONTA: TStringField;
    cdsConsultaCHQ_AGENCIA: TStringField;
    cdsConsultaCHQ_NUMERO: TStringField;
    cdsConsultaCHQ_VALOR: TBCDField;
    ibCheque: TIBDataSet;
    procedure FormShow(Sender: TObject);
    procedure chRepetirClick(Sender: TObject);
    procedure chPagoClick(Sender: TObject);
    procedure btAnexarClick(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure btCACentroCustoClick(Sender: TObject);
    procedure btEXCentroCustoClick(Sender: TObject);
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure ibCadastroAfterInsert(DataSet: TDataSet);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure EntrouAbaCadastro;override;
    procedure EntrouAbaConsulta;override;
    procedure ExibeRepetir(pVisivel:Boolean);
    procedure RetiraRepetir(pRetirar:Boolean);
    procedure ExibePagar(pEnabled:Boolean);
    procedure MovePagar(pMover:Boolean);
    procedure Repetir(pDataVencto:TDate; pPeriodo:Integer;pQtdade:Integer;pPai:Integer; pDescricao : String);
    procedure getComboCentroCusto(pTexto:String='');
    function getGeradorID:Integer;
  public
    { Public declarations }
    FTipoPagRec : Integer;
    function getIdConsulta:Integer;override;
  end;

var
  FCadPagarReceber: TFCadPagarReceber;

implementation

uses uSelecionarCliente, uCadClientes, uSelecionarCheque;

{$R *.dfm}

procedure TFCadPagarReceber.FormShow(Sender: TObject);
begin
  inherited;
  if FTipoPagRec>0 then
  begin
    case FTipoPagRec of
    {receber} 1 : pnBarraForm.Caption := 'Contas a Receber';
    {pagar  } 2 : pnBarraForm.Caption := 'Contas a Pagar';
    end;
  end
  else
    Aviso('Selecione tipo Pagar/Receber.');

end;

procedure TFCadPagarReceber.ExibeRepetir(pVisivel: Boolean);
begin
  cbMensalmente.Enabled := pVisivel;
  lblOcorrencia.Enabled := pVisivel;
  edOcorrencia.Enabled := pVisivel;
  lblVezes.Enabled := pVisivel;
end;

procedure TFCadPagarReceber.ExibePagar(pEnabled: Boolean);
begin
  lblDataPagamento.Enabled := pEnabled;
  cbDataPagamento.Enabled  := pEnabled;
  lblDescontoTaxa.Enabled  := pEnabled;
  edDescontoTaxa.Enabled   := pEnabled;
  lblJuroMulta.Enabled     := pEnabled;
  edJuroMulta.Enabled      := pEnabled;
  lblValorPago.Enabled     := pEnabled;
  edValorPago.Enabled      := pEnabled;
end;

procedure TFCadPagarReceber.chRepetirClick(Sender: TObject);
begin
  inherited;
  ExibeRepetir(chRepetir.checked);
end;

procedure TFCadPagarReceber.chPagoClick(Sender: TObject);
begin
  inherited;
  ExibePagar(chPago.checked);
end;

procedure TFCadPagarReceber.getComboCentroCusto(pTexto:String='');
var i, iIndex : Integer;
begin
  qCentroCusto.Close;
  qCentroCusto.ParamByName('TipoPagRec').Value := FTipoPagRec;
  qCentroCusto.Open;
  qCentroCusto.First;
  cbCentroCusto.Items.Clear;
  i := -1;
  while not qCentroCusto.Eof do
  begin
    Inc(i);
    if (pTexto=qCentroCustoPAR_CETROCUSTO.asString) then
      iIndex := i;
    cbCentroCusto.Items.Add(qCentroCustoPAR_CETROCUSTO.asString);
    qCentroCusto.Next;
  end;
  cbCentroCusto.ItemIndex := iIndex;
end;


procedure TFCadPagarReceber.EntrouAbaCadastro;
begin
  inherited;
    qConta.Close;
    qConta.Open;
    qConta.Last;
    qConta.First;

    qCategoria.Close;
    qCategoria.ParamByName('TipoPagRec').Value := FTipoPagRec;
    qCategoria.Open;
    qCategoria.Last;
    qCategoria.First;

    qCliente.Close;
    qCliente.ParamByName('TipoCli').Value := FTipoPagRec;
    qCliente.Open;
    qCliente.Last;
    qCliente.First;

    getComboCentroCusto(qConsultaPAR_CETROCUSTO.asString);


    RetiraRepetir(not(ibCadastro.State=dsInsert));
    MovePagar(not(ibCadastro.State=dsInsert));

    if FTipoPagRec=2 then
      Label13.Caption :='Fornecedor';
end;

procedure TFCadPagarReceber.EntrouAbaConsulta;
begin
  inherited;
    qConsulta.Close;
    qConsulta.ParamByName('pagrec').AsInteger := FTipoPagRec;
    qConsulta.Open;
    cdsConsulta.Open;
end;

procedure TFCadPagarReceber.btAnexarClick(Sender: TObject);
var sCaminhoArquivo : String;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    sCaminhoArquivo := OpenDialog1.FileName;
    Aviso('Salvar em: '+sCaminhoArquivo+#13+'Não desenvolvido ainda.');
  end;
end;

procedure TFCadPagarReceber.btCAClienteClick(Sender: TObject);
begin
  inherited;
(*
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := FTipoPagRec;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroPAR_CLI_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
*)
  FCadClientes := TFCadClientes.Create(nil);
  FCadClientes.FTipoCli := FTipoPagRec;
  FCadClientes.ShowModal;

  qCliente.Active := false;
  qCliente.Active := true;
  //qCliente.ParamByName('TipoCli').Value := FTipoPagRec;
  //qCliente.Open;

  if FCadClientes.FId>0 then
    if (ibCadastro.State in [dsEdit,dsInsert]) then
      ibCadastroPAR_CLI_ID.Value := FCadClientes.FId;
  FCadClientes.Free;
end;

procedure TFCadPagarReceber.btEXClienteClick(Sender: TObject);
begin
  inherited;
  ibCadastroPAR_CLI_ID.Clear;
end;

procedure TFCadPagarReceber.btCACentroCustoClick(Sender: TObject);
begin
  inherited;
  cbCentroCusto.Text := InputBox('Novo Centro custo','Centro Custo:','');
end;

procedure TFCadPagarReceber.btEXCentroCustoClick(Sender: TObject);
begin
  inherited;
  cbCentroCusto.Clear;
end;

procedure TFCadPagarReceber.ibCadastroBeforePost(DataSet: TDataSet);
var vDescricao : String;
begin
  inherited;
  ibCadastroPAR_PAGREC.Value := FTipoPagRec;
  ibCadastroPAR_CETROCUSTO.Value := cbCentroCusto.Text;
  if not(chPago.Checked) then
  begin
    ibCadastroPAR_DATAPGTO.Clear;
    ibCadastroPAR_DESCONTOTAXA.Clear;
    ibCadastroPAR_JUROMULTA.Clear;
    ibCadastroPAR_VALORPAGO.Clear;
  end;

  ibCadastroPAR_ID.Value := getGeradorID;

  if (ibCadastro.State=dsInsert) then
  begin
    if chRepetir.Checked then
    begin
      vDescricao := ibCadastroPAR_DESCRICAO.Value;
      ibCadastroPAR_DESCRICAO.Value := vDescricao+' (1/'+edOcorrencia.Text+')';
      ibCadastroPAR_PARCELANUM.Value := 1;
      ibCadastroPAR_PARCELAMAX.Value := StrToIntDef(edOcorrencia.Text,1);
      ibCadastroPAR_PARCELAPAI.Value := ibCadastroPAR_ID.Value;
      Repetir(cbDataVencto.Date,cbMensalmente.ItemIndex,StrToIntDef(edOcorrencia.Text,1)-1,ibCadastroPAR_ID.Value,vDescricao);
    end;
  end;
end;

procedure TFCadPagarReceber.Repetir(pDataVencto:TDate; pPeriodo, pQtdade, pPai: Integer; pDescricao : String);
var vPeriodo : Integer;
    vData : TDate;
    i, j : Integer;
begin
  try
    if not(pQtdade>=1) then
      Exit;
    vData := pDataVencto;
    vPeriodo := 1;
    case pPeriodo of
    {Diariamente    }  0 : vPeriodo := vPeriodo * 1;
    {Semanalmente   }  1 : vPeriodo := vPeriodo * 7;
    {Mensalmente    }  2 : vPeriodo := vPeriodo * 30;
    {Bimestralmente }  3 : vPeriodo := vPeriodo * 60;
    {Trimestralmente}  4 : vPeriodo := vPeriodo * 90;
    {Semestralmente }  5 : vPeriodo := vPeriodo * 180;
    {Anualmente     }  6 : vPeriodo := vPeriodo * 365;
    end;
    ibParcela.Close;
    ibParcela.Open;
    for i := 1 to pQtdade do
    begin
      vData := IncDay(vData,vPeriodo);
      //inserir
      if not(ibParcela.State=dsInsert) then
        ibParcela.Insert;
      for j := 0 to ibParcela.FieldCount-1 do
      begin
        if not(ibParcela.Fields.Fields[j].FieldName='PAR_ID') then
        begin
          if (ibParcela.Fields.Fields[j].FieldName='PAR_PAI') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := pPai
          else
          if (ibParcela.Fields.Fields[j].FieldName='PAR_DESCRICAO') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := pDescricao+' ('+IntToStr(i+1)+'/'+IntToStr(pQtdade+1)+')'
          else
          if (ibParcela.Fields.Fields[j].FieldName='PAR_PARCELANUM') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := i+1
          else
          if (ibParcela.Fields.Fields[j].FieldName='PAR_PARCELAMAX') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := pQtdade+1
          else
          if (ibParcela.Fields.Fields[j].FieldName='PAR_DATAVENCTO') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := vData
          else
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := ibCadastro.FieldByName(ibCadastro.Fields.Fields[j].FieldName).Value;
        end;
      end;
      ibParcela.Post;
    end;
  except
    on e : Exception do
    begin
      Aviso('Erro ao Repetir parcelas. '+e.Message);
      Abort;
    end;
  end;
end;

procedure TFCadPagarReceber.ibCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  ibCadastroPAR_PAGO.Value := 'N';
end;

procedure TFCadPagarReceber.Act_Btn_NovoExecute(Sender: TObject);
begin
  inherited;
  cbCentroCusto.Text := '';
end;

procedure TFCadPagarReceber.RetiraRepetir(pRetirar: Boolean);
begin
  pnRepetir.Visible := not(pRetirar);
end;

procedure TFCadPagarReceber.MovePagar(pMover: Boolean);
begin
  if pMover then
    pnPago.Top := 159
  else
    pnPago.Top := 260;
end;

function TFCadPagarReceber.getGeradorID: Integer;
begin
  qGerador.Open;
  Result := qGeradorID.Value;
end;

procedure TFCadPagarReceber.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  case FTipoPagRec of
  {receber} 1 : sRelatorio := 'FIN004_CAD_CONTAS_RECEBER';
  {pagar}   2 : sRelatorio := 'FIN003_CAD_CONTAS_PAGAR';
  end;
  sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;


function TFCadPagarReceber.getIdConsulta: Integer;
begin
  Result := cdsConsultaID.Value;
end;

procedure TFCadPagarReceber.BitBtn1Click(Sender: TObject);
var j : Integer;
begin
  inherited;
  FSelecionarCheque := TFSelecionarCheque.Create(nil);
  FSelecionarCheque.ShowModal;
  if not(FSelecionarCheque.FCancelado) then
  begin
    FSelecionarCheque.cdsConsulta.First;
    while not FSelecionarCheque.cdsConsulta.Eof do
    begin
      if not(cdsCheque.State=dsInsert) then
        cdsCheque.Insert;
      for j := 0 to cdsCheque.FieldCount-1 do
        cdsCheque.FieldByName(cdsCheque.Fields.Fields[j].FieldName).Value := FSelecionarCheque.cdsConsulta.FieldByName(FSelecionarCheque.cdsConsulta.Fields.Fields[j].FieldName).Value;
      FSelecionarCheque.cdsConsulta.Next;
    end;
  end;
  FSelecionarCheque.Free;

end;

end.


