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
  cxDBEdit, DBCtrls, Mask, DBClient;

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
  private
    { Private declarations }
    ListaFinancerioId : TStringList;
    procedure ExisteFinanceiro(pId:Integer);
    procedure EntrouAbaCadastro;override;
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

implementation

uses uSelecionarCliente, uCadPagarReceber, uClassAvisos, uDMConexao,
  uExibirFinanceiroVendaComissionada,
  uSelecionarFinanceiroVendaComissionada;

{$R *.dfm}

procedure TFCadVendas.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.Open;

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
  ibCadastroVEC_DATA.AsDateTime := Now;
end;

procedure TFCadVendas.btGerarFinanceiroClick(Sender: TObject);
begin
  inherited;
  //if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;

  FCadPagarReceber := TFCadPagarReceber.Create(nil);
  FCadPagarReceber.FTipoPagRec := cReceber;

  FCadPagarReceber.FVendedorId   := ibCadastroVEC_VENDEDOR_ID.Value;
  FCadPagarReceber.FClienteId    := ibCadastroVEC_CLIENTE_ID.Value;
  FCadPagarReceber.FValor        := ibCadastroVEC_VALOR.Value;
  FCadPagarReceber.FNumDocumento := ibCadastroVEC_NUMDOCUMENTO.Value;
  FCadPagarReceber.FObservacao   := ibCadastroVEC_OBSERVACAO.Value;
  FCadPagarReceber.FCategoriaId  := 3;
  FCadPagarReceber.FVendaComissionadaId := ibCadastroVEC_ID.Value;

  FCadPagarReceber.ShowModal;
  FCadPagarReceber.Free;
end;

procedure TFCadVendas.btEXFinanceiroClick(Sender: TObject);
begin
  inherited;
  if Duvida('Apagar todas as parcelas geradas?') then
  begin
    try
    DMConexao.qGeral.Close;
    DMConexao.qGeral.SQL.Text := 'delete from pagarreceber where pagarreceber.par_vendacomissionada_id = '+IntToStr(ibCadastroVEC_ID.Value);
    DMConexao.qGeral.ExecSQL;
    DMConexao.IBTransacao.CommitRetaining;
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

procedure TFCadVendas.ExisteFinanceiro(pId:Integer);
var bExiste : Boolean;
begin
  qExisteFinanceiro.Close;
  qExisteFinanceiro.ParamByName('vendac_id').Value := pId;
  qExisteFinanceiro.Open;
  bExiste := (qExisteFinanceiroENCONTROU.Value>0);
  btCAFinanceiro.Enabled  := bExiste;
  btEXFinanceiro.Enabled  := bExiste;
  btGerarFinanceiro.Enabled := not(bExiste);
end;

procedure TFCadVendas.EntrouAbaCadastro;
begin
  inherited;
  ExisteFinanceiro(qConsultaID.Value);
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
//
end;

end.