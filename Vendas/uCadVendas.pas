unit uCadVendas;

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
  cxDataStorage, cxEdit, DB, cxDBData, frxClass, frxIBXComponents,
  ActnList, ImgList, IBQuery, IBCustomDataSet, ExtCtrls, ComCtrls,
  StdCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, DBCtrls, Mask, DBClient, Provider, cxImageComboBox, frxDBSet;

type
  TFCadVendas = class(TFCadPadrao)
    qConsultaID: TIntegerField;
    qConsultaVEC_ID: TIntegerField;
    qConsultaVEC_VENDEDOR_ID: TIntegerField;
    qConsultaVEC_CLIENTE_ID: TIntegerField;
    qConsultaVEC_NUMDOCUMENTO: TIntegerField;
    qConsultaVEC_DATA: TDateField;
    qConsultaVEC_VALOR: TIBBCDField;
    qConsultaVEC_DH_CA: TDateTimeField;
    qConsultaVENDEDOR: TIBStringField;
    qConsultaCLIENTE: TIBStringField;
    grConsultaDBTableView1VEC_NUMDOCUMENTO: TcxGridDBColumn;
    grConsultaDBTableView1VEC_DATA: TcxGridDBColumn;
    grConsultaDBTableView1VEC_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1VENDEDOR: TcxGridDBColumn;
    grConsultaDBTableView1CLIENTE: TcxGridDBColumn;
    qConsultaVEC_OBSERVACAO: TIBStringField;
    grConsultaDBTableView1VEC_OBSERVACAO: TcxGridDBColumn;
    ibCadastroVEC_ID: TIntegerField;
    ibCadastroVEC_VENDEDOR_ID: TIntegerField;
    ibCadastroVEC_CLIENTE_ID: TIntegerField;
    ibCadastroVEC_NUMDOCUMENTO: TIntegerField;
    ibCadastroVEC_DATA: TDateField;
    ibCadastroVEC_VALOR: TIBBCDField;
    ibCadastroVEC_OBSERVACAO: TIBStringField;
    ibCadastroVEC_DH_CA: TDateTimeField;
    qCliente: TIBQuery;
    dsCliente: TDataSource;
    qClienteID: TIntegerField;
    qClienteNOME: TIBStringField;
    qVendedor: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    dsVendedor: TDataSource;
    qExisteFinanceiro: TIBQuery;
    dsExisteFinanceiro: TDataSource;
    qExisteFinanceiroENCONTROU: TIntegerField;
    PageControl1: TPageControl;
    tsVendaComissionada: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    cxDBDateEdit1: TcxDBDateEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    btCAVendedor: TBitBtn;
    btEXVendedor: TBitBtn;
    btGerarFinanceiro: TBitBtn;
    btEXFinanceiro: TBitBtn;
    btCAFinanceiro: TBitBtn;
    Bevel2: TBevel;
    cdsFinanceiro: TClientDataSet;
    cdsFinanceiroPAR_ID: TIntegerField;
    ibCadastroVEC_VCOR_ID: TIntegerField;
    Label6: TLabel;
    qOrcamento: TIBQuery;
    dsOrcamento: TDataSource;
    qOrcamentoVCOR_ID: TIntegerField;
    qOrcamentoVCOR_CODIGO: TIntegerField;
    qOrcamentoVCOR_DATAEMISSAO: TDateField;
    qOrcamentoVCOR_CLIENTE_ID: TIntegerField;
    qOrcamentoVCOR_VALORTOTAL: TIBBCDField;
    qOrcamentoVCOR_CONDICAOPAGTO: TIBStringField;
    qOrcamentoVCOR_DH_CA: TDateTimeField;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qConsultaORCAMENTO: TIntegerField;
    grConsultaDBTableView1ORCAMENTO: TcxGridDBColumn;
    DBRadioGroup1: TDBRadioGroup;
    ibCadastroVEC_SITUACAO: TIntegerField;
    qConsultaVEC_VCOR_ID: TIntegerField;
    qConsultaVEC_SITUACAO: TIntegerField;
    qConsultaSITUACAO: TIBStringField;
    grConsultaDBTableView1VEC_SITUACAO: TcxGridDBColumn;
    grConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    Bevel6: TBevel;
    Label9: TLabel;
    cxImageComboBox2: TcxImageComboBox;
    qConsultaFLAG: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaVEC_ID: TIntegerField;
    cdsConsultaVEC_VENDEDOR_ID: TIntegerField;
    cdsConsultaVEC_CLIENTE_ID: TIntegerField;
    cdsConsultaVEC_NUMDOCUMENTO: TIntegerField;
    cdsConsultaVEC_DATA: TDateField;
    cdsConsultaVEC_VALOR: TBCDField;
    cdsConsultaVEC_DH_CA: TDateTimeField;
    cdsConsultaVENDEDOR: TStringField;
    cdsConsultaCLIENTE: TStringField;
    cdsConsultaVEC_OBSERVACAO: TStringField;
    cdsConsultaORCAMENTO: TIntegerField;
    cdsConsultaVEC_VCOR_ID: TIntegerField;
    cdsConsultaVEC_SITUACAO: TIntegerField;
    cdsConsultaSITUACAO: TStringField;
    cdsConsultaFLAG: TIntegerField;
    cxImageList1: TcxImageList;
    Act_Btn_ImprimirVenda: TAction;
    frxListaVendas: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure btGerarFinanceiroClick(Sender: TObject);
    procedure btEXFinanceiroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCAFinanceiroClick(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btCAVendedorClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure btEXVendedorClick(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure cxImageComboBox2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    ListaFinancerioId : TStringList;
    function ExisteFinanceiro(pId:Integer):Boolean;
    procedure EntrouAbaCadastro;override;
    procedure CarregarConsultaCDSParametro;override;
    procedure CarregarConsultaParam(AParam : String);
  public
    { Public declarations }
  end;

var
  FCadVendas: TFCadVendas;

const
  cPagar = 2;
  cReceber = 1;
  cCliente = 1;
  cFornecedor = 2;
  cFuncionario = 3;
  cVendedor = 4;

  SQL_CONSULTA =
' select *                                                                                                                          '#13+
'   from (select venda_comissionada.vec_id ID,                                                                                      '#13+
'                (select clientes.cli_cliente from clientes where clientes.cli_id = venda_comissionada.vec_vendedor_id) vendedor,   '#13+
'                (select clientes.cli_cliente from clientes where clientes.cli_id = venda_comissionada.vec_cliente_id) cliente,     '#13+
'                venda_comissionada.*,                                                                                              '#13+
'                vcomiss_orcamento.vcor_codigo orcamento,                                                                           '#13+
'                case                                                                                                               '#13+
'                  when(coalesce(venda_comissionada.vec_situacao,0)=0) then ''ABERTO''                                              '#13+
'                  when(coalesce(venda_comissionada.vec_situacao,0)=1) then ''FECHADO''                                             '#13+
'                  when(coalesce(venda_comissionada.vec_situacao,0)=2) then ''CANCELADO''                                           '#13+
'                end situacao,                                                                                                      '#13+
'                case                                                                                                               '#13+
'                  when(coalesce(venda_comissionada.vec_situacao,0)=0) then 1                                                       '#13+
'                  when(coalesce(venda_comissionada.vec_situacao,0)=1) then 2                                                       '#13+
'                  when(coalesce(venda_comissionada.vec_situacao,0)=2) then 3                                                       '#13+
'                end flag                                                                                                           '#13+
'           from venda_comissionada                                                                                                 '#13+
'          left join vcomiss_orcamento on (vcomiss_orcamento.vcor_id=venda_comissionada.vec_vcor_id)                                '#13+
'          order by venda_comissionada.vec_id)                                                                                      '#13+
'  where 1=1                                                                                                                        '#13+
'    and ((flag = %s) or (0 = %s))                                                                                                  ';




implementation

uses uSelecionarCliente, uCadPagarReceber, uClassAvisos, uDMConexao,
  uExibirFinanceiroVendaComissionada,
  uSelecionarFinanceiroVendaComissionada, uPagamentosDiversos,
  uFerramentas, uSelecionarOrcamentoVComiss, uSelecionarPadrao;

{$R *.dfm}

procedure TFCadVendas.FormShow(Sender: TObject);
begin
  inherited;
  FCarregarConsultaCDSParametro := true;
  CarregarConsultaParam('0');

  qCliente.Close;
  qCliente.ParamByName('TipoCli').Value := cCliente;
  qCliente.Open;
  qCliente.Last;
  qCliente.First;

  qVendedor.Close;
  qVendedor.ParamByName('TipoCli').Value := cVendedor;
  qVendedor.Open;
  qVendedor.Last;
  qVendedor.First;

  PageControl1.ActivePageIndex := 0;

end;

procedure TFCadVendas.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  ibCadastroVEC_DATA.Value := Now;
  ibCadastroVEC_SITUACAO.Value := 0;
end;

procedure TFCadVendas.btGerarFinanceiroClick(Sender: TObject);
begin
  inherited;
  //if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;
  FPagamentosDiversos               := TFPagamentosDiversos.Create(nil);
  FPagamentosDiversos.FVendedorId   := ibCadastroVEC_VENDEDOR_ID.Value;
  FPagamentosDiversos.FClienteId    := ibCadastroVEC_CLIENTE_ID.Value;
  FPagamentosDiversos.FValor        := ibCadastroVEC_VALOR.Value;
  FPagamentosDiversos.FNumDocumento := ibCadastroVEC_NUMDOCUMENTO.Value;
  FPagamentosDiversos.FObservacao   := ibCadastroVEC_OBSERVACAO.Value;
  FPagamentosDiversos.FCategoriaId  := 3;
  FPagamentosDiversos.FData         := cxDBDateEdit1.Date;
  FPagamentosDiversos.FVendaComissionadaId := ibCadastroVEC_ID.Value;
  FPagamentosDiversos.ShowModal;
  if not(FPagamentosDiversos.FCancelar) then
  begin
    btGerarFinanceiro.Enabled := false;
    btCAFinanceiro.Enabled := true;
    btEXFinanceiro.Enabled := true;
    ibCadastroVEC_SITUACAO.Value := 1;
  end;
  FPagamentosDiversos.Free;
end;

procedure TFCadVendas.btEXFinanceiroClick(Sender: TObject);
begin
  inherited;
  if Duvida('Apagar todas as parcelas geradas?') then
  begin
    try
      DMConexao.qGeral.Close;
      DMConexao.qGeral.SQL.Clear;
      DMConexao.qGeral.SQL.Text :=' select count(*) existe      '#13+
                                  '   from pagarreceber_baixa   '#13+
                                  '  where exists(              '#13+
                                  '         select null         '#13+
                                  '           from pagarreceber '#13+
                                  '          where pagarreceber.par_id = pagarreceber_baixa.bxp_par_id '#13+
                                  '            and pagarreceber.par_vendacomissionada_id = '+IntToStr(ibCadastroVEC_ID.Value)+')';
      DMConexao.qGeral.Open;
      if DMConexao.qGeral.Fields.Fields[0].Value>0 then
      begin
        Aviso('Existe parcela já baixada. Verifique.');
        Exit;
      end;

      DMConexao.qGeral.Close;
      DMConexao.qGeral.SQL.Clear;
      DMConexao.qGeral.SQL.Text := 'delete from pagarreceber where pagarreceber.par_vendacomissionada_id = '+IntToStr(ibCadastroVEC_ID.Value);
      DMConexao.qGeral.ExecSQL;
      DMConexao.IBTransacao.CommitRetaining;
      btGerarFinanceiro.Enabled := true;
      btCAFinanceiro.Enabled := false;
      btEXFinanceiro.Enabled := false;
      Aviso('parcelas apagadas com sucesso.');
    except
      on e : Exception do
      begin
        DMConexao.IBTransacao.RollbackRetaining;
        Aviso('Erro. '+e.Message);
      end;
    end;
  end;
end;

function TFCadVendas.ExisteFinanceiro(pId:Integer):Boolean;
begin
  qExisteFinanceiro.Close;
  qExisteFinanceiro.ParamByName('vendac_id').Value := pId;
  qExisteFinanceiro.Open;
  Result := (qExisteFinanceiroENCONTROU.Value>0);
end;

procedure TFCadVendas.EntrouAbaCadastro;
var vId : Integer;
    bExiste : Boolean;
begin
  inherited;
  if (ibCadastro.State=dsEdit) then
    vId := qConsultaID.Value
  else
    vId := 0;
  bExiste := ExisteFinanceiro(vId);
  btCAFinanceiro.Enabled    := bExiste;
  btEXFinanceiro.Enabled    := bExiste;
  btGerarFinanceiro.Enabled := not(bExiste);

end;

procedure TFCadVendas.FormCreate(Sender: TObject);
begin
  inherited;
  ListaFinancerioId := TStringList.Create;
end;

procedure TFCadVendas.btCAFinanceiroClick(Sender: TObject);
begin
  inherited;
  FExibirFinanceiroVendaComissionada := TFExibirFinanceiroVendaComissionada.Create(nil);
  FExibirFinanceiroVendaComissionada.pnBarraForm.Caption := 'Financeiro gerado';
  FExibirFinanceiroVendaComissionada.FVendaId := ibCadastroVEC_ID.Value;
  FExibirFinanceiroVendaComissionada.ShowModal;
  FExibirFinanceiroVendaComissionada.Free;
end;

procedure TFCadVendas.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cCliente;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroVEC_CLIENTE_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadVendas.btCAVendedorClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cVendedor;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroVEC_VENDEDOR_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadVendas.btEXClienteClick(Sender: TObject);
begin
  inherited;
  ibCadastroVEC_CLIENTE_ID.Clear;
end;

procedure TFCadVendas.btEXVendedorClick(Sender: TObject);
begin
  inherited;
  ibCadastroVEC_VENDEDOR_ID.Clear;
end;

procedure TFCadVendas.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'VEN003_LISTA_VENDA_COMISSIONADA';
  sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
    begin
      getVariavelDesign('FILTORUSADO', QuotedStr('Situação: '+cxImageComboBox2.Text));
      ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
    end;
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

procedure TFCadVendas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FSelecionarOrcamentoVComiss := TFSelecionarOrcamentoVComiss.Create(nil);
  FSelecionarOrcamentoVComiss.pnBarraForm.Caption := 'Selecionar Orçamento';
  FSelecionarOrcamentoVComiss.vIdCliente := ibCadastroVEC_CLIENTE_ID.Value;
  FSelecionarOrcamentoVComiss.ShowModal;
  if FSelecionarOrcamentoVComiss.FId>0 then
  begin
    ibCadastroVEC_CLIENTE_ID.Value := FSelecionarOrcamentoVComiss.FIdCliente;
    ibCadastroVEC_VALOR.Value := FSelecionarOrcamentoVComiss.FValor;
    ibCadastroVEC_VCOR_ID.Value := FSelecionarOrcamentoVComiss.FId;
  end;
  FSelecionarOrcamentoVComiss.Free;
end;

procedure TFCadVendas.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  qOrcamento.Close;
  qOrcamento.Open;
end;

procedure TFCadVendas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ibCadastroVEC_VCOR_ID.Clear;
end;

procedure TFCadVendas.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if (AViewInfo.GridRecord.Values[grConsultaDBTableView1VEC_SITUACAO.Index] = 1) then
  begin
    //ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clGreen;
  end
  else
  if (AViewInfo.GridRecord.Values[grConsultaDBTableView1VEC_SITUACAO.Index] = 2) then
  begin
    //ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end
  else
  begin
    //ACanvas.Font.Style := [];
    ACanvas.Font.Color := clBlack;
  end;
end;

procedure TFCadVendas.ibCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (ibCadastroVEC_SITUACAO.Value in [0,2]) then
  begin
    if ExisteFinanceiro(ibCadastroVEC_ID.Value) then
    begin
      Aviso('Existe Venda gerada para este Orçamento. Verifique.');
      Abort;
    end;
  end;
end;

procedure TFCadVendas.CarregarConsultaParam(AParam: String);
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Text := Format(SQL_CONSULTA,[AParam,AParam]);
  qConsulta.Open;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TFCadVendas.cxImageComboBox2PropertiesChange(Sender: TObject);
begin
  inherited;
  CarregarConsultaParam(VarToStr(cxImageComboBox2.EditValue));
end;

procedure TFCadVendas.CarregarConsultaCDSParametro;
begin
  inherited;
  CarregarConsultaParam(VarToStr(cxImageComboBox2.EditValue));
end;

end.
