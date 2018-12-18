unit uVincularVendaFinanceiro;

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
  TFCadVincularVendaFinanceiro = class(TFCadPadrao)
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
    tsFinanceiro: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Bevel4: TBevel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo2: TDBMemo;
    cxDBDateEdit2: TcxDBDateEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    btCAVendedor2: TBitBtn;
    btEXVendedor2: TBitBtn;
    btSelecionarFinanceiro: TBitBtn;
    Label12: TLabel;
    Label14: TLabel;
    cdsFinanceiro: TClientDataSet;
    cdsFinanceiroPAR_ID: TIntegerField;
    btCAFinanceiro2: TBitBtn;
    btEXFinanceiro2: TBitBtn;
    Label18: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    btCACliente2: TBitBtn;
    btEXCliente2: TBitBtn;
    procedure btCAClienteClick(Sender: TObject);
    procedure btCAVendedorClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure btEXVendedorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure btGerarFinanceiroClick(Sender: TObject);
    procedure btEXFinanceiroClick(Sender: TObject);
    procedure btCAFinanceiroClick(Sender: TObject);
    procedure btSelecionarFinanceiroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibCadastroAfterPost(DataSet: TDataSet);
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure btEXFinanceiro2Click(Sender: TObject);
  private
    { Private declarations }
    ListaFinancerioId : TStringList;
    procedure ExisteFinanceiro(pId:Integer);
    procedure EntrouAbaCadastro;override;
  public
    { Public declarations }
  end;

var
  FCadVincularVendaFinanceiro: TFCadVincularVendaFinanceiro;

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

procedure TFCadVincularVendaFinanceiro.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cCliente;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroVEC_CLIENTE_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadVincularVendaFinanceiro.btCAVendedorClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cVendedor;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroVEC_VENDEDOR_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadVincularVendaFinanceiro.btEXClienteClick(Sender: TObject);
begin
  inherited;
  ibCadastroVEC_CLIENTE_ID.Clear;
end;

procedure TFCadVincularVendaFinanceiro.btEXVendedorClick(Sender: TObject);
begin
  inherited;
  ibCadastroVEC_VENDEDOR_ID.Clear;
end;

procedure TFCadVincularVendaFinanceiro.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.Open;

  qCliente.Close;
  qCliente.ParamByName('TipoCli').Value := cCliente;
  qCliente.Open;

  qVendedor.Close;
  qVendedor.ParamByName('TipoCli').Value := cVendedor;
  qVendedor.Open;

  //tsFinanceiro.Visible := false;
  PageControl1.ActivePageIndex := 0;

end;

procedure TFCadVincularVendaFinanceiro.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  ibCadastroVEC_DATA.AsDateTime := Now;
end;

procedure TFCadVincularVendaFinanceiro.btGerarFinanceiroClick(Sender: TObject);
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

procedure TFCadVincularVendaFinanceiro.btEXFinanceiroClick(Sender: TObject);
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

procedure TFCadVincularVendaFinanceiro.ExisteFinanceiro(pId:Integer);
var bExiste : Boolean;
begin
  qExisteFinanceiro.Close;
  qExisteFinanceiro.ParamByName('vendac_id').Value := pId;
  qExisteFinanceiro.Open;
  bExiste := (qExisteFinanceiroENCONTROU.Value>0);
  btCAFinanceiro2.Enabled := bExiste;
  btEXFinanceiro2.Enabled := bExiste;
  btSelecionarFinanceiro.Enabled := not(bExiste);
end;

procedure TFCadVincularVendaFinanceiro.EntrouAbaCadastro;
begin
  inherited;
  ExisteFinanceiro(qConsultaID.Value);
end;

procedure TFCadVincularVendaFinanceiro.btCAFinanceiroClick(Sender: TObject);
begin
  inherited;
  FExibirFinanceiroVendaComissionada := TFExibirFinanceiroVendaComissionada.Create(nil);
  FExibirFinanceiroVendaComissionada.pnBarraForm.Caption := 'Financeiro gerado';
  FExibirFinanceiroVendaComissionada.FVendaId := ibCadastroVEC_ID.Value;
  FExibirFinanceiroVendaComissionada.ShowModal;
  FExibirFinanceiroVendaComissionada.Free;
end;

procedure TFCadVincularVendaFinanceiro.btSelecionarFinanceiroClick(Sender: TObject);
var vValor : Extended;
begin
  inherited;
  FSelecionarFinanceiroVendaComissionada := TFSelecionarFinanceiroVendaComissionada.Create(nil);
  FSelecionarFinanceiroVendaComissionada.ShowModal;
  //para cada financeiro
  FSelecionarFinanceiroVendaComissionada.cdsConsulta.First;
  ListaFinancerioId.Clear;
  vValor := 0;
  while not FSelecionarFinanceiroVendaComissionada.cdsConsulta.Eof do
  begin
    if FSelecionarFinanceiroVendaComissionada.cdsConsultaSELECIONAR.Value='S' then
    begin
      vValor := vValor + FSelecionarFinanceiroVendaComissionada.cdsConsultaPAR_VALOR.Value;
      ListaFinancerioId.Add(FSelecionarFinanceiroVendaComissionada.cdsConsultaPAR_ID.asString);
      //cdsFinanceiro.Post;
    end;
    FSelecionarFinanceiroVendaComissionada.cdsConsulta.Next;
  end;
  ibCadastroVEC_CLIENTE_ID.Value := FSelecionarFinanceiroVendaComissionada.cdsConsultaCLI_ID.Value;
  ibCadastroVEC_VENDEDOR_ID.Value := FSelecionarFinanceiroVendaComissionada.cdsConsultaPAR_VENDEDOR_ID.Value;
  ibCadastroVEC_DATA.Value := Now;
  ibCadastroVEC_VALOR.Value := vValor;
  FSelecionarFinanceiroVendaComissionada.Free;
end;

procedure TFCadVincularVendaFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  ListaFinancerioId := TStringList.Create;
end;

procedure TFCadVincularVendaFinanceiro.ibCadastroAfterPost(DataSet: TDataSet);
var i : Integer;
begin
  inherited;
  if (PageControl1.ActivePage = tsFinanceiro) then
  begin
    try
      for i := 0 to ListaFinancerioId.Count-1 do
      begin
        DMConexao.qGeral.Close;
        DMConexao.qGeral.SQL.Text := 'update pagarreceber set'+
                                     ' pagarreceber.par_vendacomissionada_id = ' + ibCadastroVEC_ID.asString+
                                     ' where pagarreceber.par_id = '+ListaFinancerioId[i];
        DMConexao.qGeral.ExecSQL;
      end;
    except
      on e : Exception do
      begin
        Aviso('Erro. '+e.Message);
        Abort;
      end;
    end;
  end;
end;

procedure TFCadVincularVendaFinanceiro.ibCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (PageControl1.ActivePage=tsFinanceiro) then
  begin
    if (ListaFinancerioId.Count=0) then
    begin
      Aviso('Selecione registro(s) Financeiro.');
      Abort;
    end;
  end;
end;

procedure TFCadVincularVendaFinanceiro.btEXFinanceiro2Click(Sender: TObject);
begin
  inherited;
  if Duvida('Desvincular todas as parcelas?') then
  begin
    try
    DMConexao.qGeral.Close;
    DMConexao.qGeral.SQL.Text := 'update pagarreceber set '+
                                 ' pagarreceber.par_vendacomissionada_id = null '+
                                 ' where pagarreceber.par_vendacomissionada_id = '+ibCadastroVEC_ID.asString;
    DMConexao.qGeral.ExecSQL;
    btCAFinanceiro2.Enabled := false;
    btEXFinanceiro2.Enabled := false;
    DMConexao.IBTransacao.CommitRetaining;
    Aviso('Venda Comissionada desvinculada do Financeiro.');
    except
      on e : Exception do
      begin
        DMConexao.IBTransacao.RollbackRetaining;
        Aviso('Erro. '+e.Message);
      end;
    end;
  end;
end;

end.
