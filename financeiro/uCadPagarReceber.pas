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
  DBClient, Provider, wwdblook, Wwdbdlg;

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
    Label15: TLabel;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    btCACentroCusto: TBitBtn;
    btEXCentroCusto: TBitBtn;
    DBMemo1: TDBMemo;
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
    cdsCheque: TClientDataSet;
    cdsConsultaSELECIONAR: TStringField;
    cdsConsultaCHQ_ID: TIntegerField;
    cdsConsultaCHQ_BANCO: TStringField;
    cdsConsultaCHQ_CONTA: TStringField;
    cdsConsultaCHQ_AGENCIA: TStringField;
    cdsConsultaCHQ_NUMERO: TStringField;
    cdsConsultaCHQ_VALOR: TBCDField;
    btCheque: TBitBtn;
    qContaFOP_TIPO: TIntegerField;
    qContaFOP_BANCO_ID: TIntegerField;
    qContaFOP_DH_CA: TDateTimeField;
    qContaFOP_FLAG: TIntegerField;
    bt_Cheque: TAction;
    ibPagarreceberCheque: TIBDataSet;
    ibPagarreceberChequePAC_ID: TIntegerField;
    ibPagarreceberChequePAC_PAR_ID: TIntegerField;
    ibPagarreceberChequePAC_CHQ_ID: TIntegerField;
    ibPagarreceberChequePAC_DH_CA: TDateTimeField;
    dspPagarreceberCheque: TDataSetProvider;
    cdsPagarreceberCheque: TClientDataSet;
    cdsPagarreceberChequePAC_ID: TIntegerField;
    cdsPagarreceberChequePAC_PAR_ID: TIntegerField;
    cdsPagarreceberChequePAC_CHQ_ID: TIntegerField;
    cdsPagarreceberChequePAC_DH_CA: TDateTimeField;
    ibCadastroPAR_NUMDOC: TIBStringField;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    btCACategorai: TBitBtn;
    ibCadastroCATEGORIA: TIBStringField;
    btEXCategorai: TBitBtn;
    btEXConta: TBitBtn;
    btCAConta: TBitBtn;
    btCA1: TAction;
    btCA2: TAction;
    btEX1: TAction;
    btEX2: TAction;
    ibCadastroPAR_CCO_ID: TIntegerField;
    DBLookupComboBox4: TDBLookupComboBox;
    qCentroCustoCCO_ID: TIntegerField;
    qCentroCustoCCO_CODIGO: TIntegerField;
    qCentroCustoCCO_DESCRICAO: TIBStringField;
    qCentroCustoCCO_DH_CA: TDateTimeField;
    Bevel3: TBevel;
    ibCadastroPAR_BAIXADO: TIBStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ibBaixado: TIBQuery;
    dsBaixado: TDataSource;
    ibBaixadoTIPOBAIXA: TIBStringField;
    ibBaixadoBXP_DATAPAGTO: TDateField;
    ibBaixadoBXP_VALOR: TIBBCDField;
    ibBaixadoBXP_OBSERVACAO: TIBStringField;
    cxGrid1DBTableView1TIPOBAIXA: TcxGridDBColumn;
    cxGrid1DBTableView1BXP_DATAPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1BXP_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1BXP_OBSERVACAO: TcxGridDBColumn;
    ibCadastroPAR_TIPOBAIXA: TIBStringField;
    qConsultaPAR_BAIXADO: TIBStringField;
    qConsultaPAR_TIPOBAIXA: TIBStringField;
    cdsConsultaPAR_BAIXADO: TStringField;
    cdsConsultaPAR_TIPOBAIXA: TStringField;
    grConsultaDBTableView1PAR_BAIXADO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_TIPOBAIXA: TcxGridDBColumn;
    Label8: TLabel;
    Bevel5: TBevel;
    procedure FormShow(Sender: TObject);
    procedure chRepetirClick(Sender: TObject);
    procedure chPagoClick(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure btCACentroCustoClick(Sender: TObject);
    procedure btEXCentroCustoClick(Sender: TObject);
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure ibCadastroAfterInsert(DataSet: TDataSet);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure dsContaDataChange(Sender: TObject; Field: TField);
    procedure bt_ChequeExecute(Sender: TObject);
    procedure ibCadastroAfterPost(DataSet: TDataSet);
    procedure btCACategoraiClick(Sender: TObject);
    procedure btEXCategoraiClick(Sender: TObject);
    procedure btCAContaClick(Sender: TObject);
    procedure ibCadastroAfterOpen(DataSet: TDataSet);
    procedure ibCadastroBeforeClose(DataSet: TDataSet);
    procedure grConsultaDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    GeradorID : Integer;
    procedure EntrouAbaCadastro;override;
    procedure EntrouAbaConsulta;override;
    procedure ExibeRepetir(pVisivel:Boolean);
    procedure RetiraRepetir(pRetirar:Boolean);
    procedure ExibePagar(pEnabled:Boolean);
    procedure MovePagar(pMover:Boolean);
    procedure Repetir(pDataVencto:TDate; pPeriodo:Integer;pQtdade:Integer;pPai:Integer; pDescricao : String);
    function getGeradorID:Integer;
  public
    { Public declarations }
    FTipoPagRec : Integer;
    function getIdConsulta:Integer;override;
    Procedure CarregarConsultaCDSParametro;override;
  end;

var
  FCadPagarReceber: TFCadPagarReceber;

implementation

uses uSelecionarCliente, uCadClientes, uSelecionarCheque,
  uSelecionarPlanoContas, uSelecionarFormaPgto, uCadCentroCusto,
  uSelecionarCentroCusto;

{$R *.dfm}

procedure TFCadPagarReceber.FormShow(Sender: TObject);
begin
  FCarregarConsultaCDSParametro := true;
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

  cdsPagarreceberCheque.Close;
  cdsPagarreceberCheque.CreateDataSet;
  cdsPagarreceberCheque.Open;

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

    qCentroCusto.Close;
    qCentroCusto.Open;
    qCentroCusto.Last;
    qCentroCusto.First;


    DBEdit2.SetFocus;
    //RetiraRepetir(not(ibCadastro.State=dsInsert));
    //MovePagar(not(ibCadastro.State=dsInsert));

    if FTipoPagRec=2 then
      Label13.Caption :='Fornecedor';

    if chRepetir.Checked then
      chRepetir.Checked := false;
end;

procedure TFCadPagarReceber.EntrouAbaConsulta;
begin
  inherited;
  if FCarregarConsultaCDSParametro then
    CarregarConsultaCDSParametro;
end;

procedure TFCadPagarReceber.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := FTipoPagRec;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroPAR_CLI_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadPagarReceber.btEXClienteClick(Sender: TObject);
begin
  inherited;
  ibCadastroPAR_CLI_ID.Clear;
end;

procedure TFCadPagarReceber.btCACentroCustoClick(Sender: TObject);
begin
  inherited;
(*
  FCadCentroCusto := TFCadCentroCusto.Create(nil);
  FCadCentroCusto.ShowModal;
  if FCadCentroCusto.FId>0 then
    ibCadastroPAR_CCO_ID.Value := FCadCentroCusto.FId;
  FCadCentroCusto.Free;
*)
  FSelecionarCentroCusto := TFSelecionarCentroCusto.Create(nil);
  FSelecionarCentroCusto.ShowModal;
  if FSelecionarCentroCusto.FId>0 then
    ibCadastroPAR_CCO_ID.Value := FSelecionarCentroCusto.FId;
  FSelecionarCentroCusto.Free;
end;

procedure TFCadPagarReceber.btEXCentroCustoClick(Sender: TObject);
begin
  inherited;
  ibCadastroPAR_CCO_ID.Clear;
end;

procedure TFCadPagarReceber.ibCadastroBeforePost(DataSet: TDataSet);
var vDescricao : String;
begin
  inherited;
  if not(Continua(ibCadastroPAR_NUMDOC.asString<>'','Informe Num. Documento')) then
    Abort;

  if not(Continua(ibCadastroPAR_VALOR.AsFloat>0,'Informe Valor Documento')) then
    Abort;

  ibCadastroPAR_PAGREC.Value := FTipoPagRec;
  if not(chPago.Checked) then
  begin
    ibCadastroPAR_DATAPGTO.Clear;
    ibCadastroPAR_DESCONTOTAXA.Clear;
    ibCadastroPAR_JUROMULTA.Clear;
    ibCadastroPAR_VALORPAGO.Clear;
  end;
  //if (GeradorID=0) then
  //  GeradorID := getGeradorID;

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
    if pDataVencto > 0 then
      vData := pDataVencto
    else
      vData := Now;
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
          if (ibParcela.Fields.Fields[j].FieldName='PAR_NUMDOC') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value+'-'+IntToStr(i+1)+'/'+IntToStr(pQtdade+1)
          else
          if (ibParcela.Fields.Fields[j].FieldName='PAR_PARCELANUM') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := i+1
          else
          if (ibParcela.Fields.Fields[j].FieldName='PAR_PARCELAMAX') then
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := pQtdade+1
          else
          if (ibParcela.Fields.Fields[j].FieldName='PAR_DATAVENCTO') then
          begin
            ibParcela.FieldByName(ibParcela.Fields.Fields[j].FieldName).Value := vData
          end
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

procedure TFCadPagarReceber.dsContaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  btCheque.Visible := (qContaFOP_FLAG.asInteger=2);

end;

procedure TFCadPagarReceber.bt_ChequeExecute(Sender: TObject);
var j : Integer;
begin
  inherited;
  //if (StrToIntDef(edOcorrencia.Text,0)=1) then
  //begin
  if not(Continua( edOcorrencia.Text<>'','Informe a ocorrência.')) then
    Exit;
    FSelecionarCheque := TFSelecionarCheque.Create(nil);
    FSelecionarCheque.FOcorrencia := StrToInt(edOcorrencia.Text);
    FSelecionarCheque.ShowModal;
    if not(FSelecionarCheque.FCancelado) then
    begin
      FSelecionarCheque.cdsConsulta.First;
      ibPagarreceberCheque.Close;
      ibPagarreceberCheque.Open;

      while not FSelecionarCheque.cdsConsulta.Eof do
      begin

        if (FSelecionarCheque.cdsConsultaSELECIONAR.asString='S') then
        begin
          if not(cdsPagarreceberCheque.State=dsInsert) then
            cdsPagarreceberCheque.Insert;
          //cdsPagarreceberChequePAC_ID.asInteger     := GeradorID;
          cdsPagarreceberChequePAC_PAR_ID.asInteger := ibCadastroPAR_ID.asInteger;
          cdsPagarreceberChequePAC_CHQ_ID.asInteger := FSelecionarCheque.cdsConsultaCHQ_ID.asInteger;
          cdsPagarreceberCheque.Post;
          //cdsPagarreceberChequePAC_DH_CA.asInteger  :=
        end;

        FSelecionarCheque.cdsConsulta.Next;
      end;
    end;
    FSelecionarCheque.Free;
  //end
  //else
  //begin
  //end;
end;

procedure TFCadPagarReceber.ibCadastroAfterPost(DataSet: TDataSet);
var i : Integer;
begin
  inherited;
    if cdsPagarreceberCheque.RecordCount>0 then
    begin
      while not(cdsPagarreceberCheque.Eof) do
      begin
        if not(ibPagarreceberCheque.State=dsInsert) then
          ibPagarreceberCheque.Insert;
        for i := 0 to cdsPagarreceberCheque.FieldCount-1 do
        begin
          if ibPagarreceberCheque.Fields.Fields[i].FieldName='PAC_PAR_ID' then
            ibPagarreceberCheque.FieldByName(ibPagarreceberCheque.Fields.Fields[i].FieldName).Value := cdsPagarreceberCheque.FieldByName(cdsPagarreceberCheque.Fields.Fields[i].FieldName).Value
          else
          if ibPagarreceberCheque.Fields.Fields[i].FieldName='PAC_CHQ_ID' then
            ibPagarreceberCheque.FieldByName(ibPagarreceberCheque.Fields.Fields[i].FieldName).Value := cdsPagarreceberCheque.FieldByName(cdsPagarreceberCheque.Fields.Fields[i].FieldName).Value;
        end;
        ibPagarreceberCheque.Post;
        cdsPagarreceberCheque.Next;
      end;
    end;
end;

procedure TFCadPagarReceber.CarregarConsultaCDSParametro;
begin
  inherited;
  qConsulta.Close;
  qConsulta.ParamByName('pagrec').AsInteger := FTipoPagRec;
  qConsulta.Open;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TFCadPagarReceber.btCACategoraiClick(Sender: TObject);
begin
  inherited;
  FSelecionarPlanoContas := TFSelecionarPlanoContas.Create(nil);
  FSelecionarPlanoContas.FPGR_ID := FTipoPagRec;
  FSelecionarPlanoContas.ShowModal;
  if FSelecionarPlanoContas.FId>0 then
    ibCadastroPAR_CAT_ID.Value := FSelecionarPlanoContas.FId;
  FSelecionarPlanoContas.Free;
end;

procedure TFCadPagarReceber.btEXCategoraiClick(Sender: TObject);
begin
  inherited;
  ibCadastroPAR_CAT_ID.Clear;
end;

procedure TFCadPagarReceber.btCAContaClick(Sender: TObject);
begin
  inherited;
  FSelecionarFormaPgto := TFSelecionarFormaPgto.Create(nil);
  FSelecionarFormaPgto.ShowModal;
  if FSelecionarFormaPgto.FId>0 then
    ibCadastroPAR_CONTA_ID.Value := FSelecionarFormaPgto.FId;
  FSelecionarFormaPgto.Free;
end;

procedure TFCadPagarReceber.ibCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ibBaixado.Open;
end;

procedure TFCadPagarReceber.ibCadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  ibBaixado.Close;
end;

procedure TFCadPagarReceber.grConsultaDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
//
end;

procedure TFCadPagarReceber.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if (AViewInfo.GridRecord.Values[grConsultaDBTableView1PAR_TIPOBAIXA.Index] = 'P') then
  begin
    //ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clBlue;
  end
  else
  if(AViewInfo.GridRecord.Values[grConsultaDBTableView1PAR_TIPOBAIXA.Index] = 'T') then
  begin
    //ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clGreen;
  end
  else
  begin
    //ACanvas.Font.Style := [];
    ACanvas.Font.Color := clBlack;
  end;

end;

end.


