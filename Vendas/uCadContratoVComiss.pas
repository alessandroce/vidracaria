unit uCadContratoVComiss;

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
  DBCtrls, Mask, DBClient, Provider, frxDBSet;

type
  TFCadContratoVComiss = class(TFCadPadrao)
    qConsultaID: TIntegerField;
    qConsultaVCCON_ID: TIntegerField;
    qConsultaVCCON_CODIGO: TIntegerField;
    qConsultaVCCON_DATAEMISSAO: TDateTimeField;
    qConsultaVCCON_CLIENTE_ID: TIntegerField;
    qConsultaVCCON_NOME: TIBStringField;
    qConsultaVCCON_CPF: TIBStringField;
    qConsultaVCCON_ENDERECO: TIBStringField;
    qConsultaVCCON_FONES: TIBStringField;
    qConsultaVCCON_VALORTOTAL: TIBBCDField;
    qConsultaVCCON_DESCONTO: TIBBCDField;
    qConsultaVCCON_VALORFINAL: TIBBCDField;
    qConsultaVCCON_FORMAPAGTO: TIBStringField;
    qConsultaVCCON_OBSERVACAO: TIBStringField;
    qConsultaVCCON_DH_CA: TDateTimeField;
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_DATAEMISSAO: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_CLIENTE_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_NOME: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_CPF: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_ENDERECO: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_FONES: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_VALORTOTAL: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_DESCONTO: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_VALORFINAL: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_FORMAPAGTO: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_OBSERVACAO: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_DH_CA: TcxGridDBColumn;
    ibCadastroVCCON_ID: TIntegerField;
    ibCadastroVCCON_CODIGO: TIntegerField;
    ibCadastroVCCON_DATAEMISSAO: TDateTimeField;
    ibCadastroVCCON_CLIENTE_ID: TIntegerField;
    ibCadastroVCCON_NOME: TIBStringField;
    ibCadastroVCCON_CPF: TIBStringField;
    ibCadastroVCCON_ENDERECO: TIBStringField;
    ibCadastroVCCON_FONES: TIBStringField;
    ibCadastroVCCON_VALORTOTAL: TIBBCDField;
    ibCadastroVCCON_DESCONTO: TIBBCDField;
    ibCadastroVCCON_VALORFINAL: TIBBCDField;
    ibCadastroVCCON_FORMAPAGTO: TIBStringField;
    ibCadastroVCCON_OBSERVACAO: TIBStringField;
    ibCadastroVCCON_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    Bevel3: TBevel;
    qCliente: TIBQuery;
    qClienteID: TIntegerField;
    qClienteNOME: TIBStringField;
    dsCliente: TDataSource;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ibCadastroVCCON_VEC_ID: TIntegerField;
    ibCadastroVCCON_NUMEROVENDA: TIntegerField;
    qClienteENDERECO: TIBStringField;
    qClienteFONES: TIBStringField;
    qClienteCPF: TIBStringField;
    qConsultaVCCON_VEC_ID: TIntegerField;
    qConsultaVCCON_NUMEROVENDA: TIntegerField;
    grConsultaDBTableView1VCCON_VEC_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCCON_NUMEROVENDA: TcxGridDBColumn;
    SpeedButton1: TSpeedButton;
    Act_Btn_ImprimirContrato: TAction;
    cxImageList1: TcxImageList;
    frxListaContrato: TfrxDBDataset;
    qConsultaCLI_CLIENTE: TIBStringField;
    qConsultaVEC_NUMDOCUMENTO: TIntegerField;
    qConsultaVEC_VALOR: TIBBCDField;
    cdsConsultaID: TIntegerField;
    cdsConsultaVCCON_ID: TIntegerField;
    cdsConsultaVCCON_CODIGO: TIntegerField;
    cdsConsultaVCCON_DATAEMISSAO: TDateTimeField;
    cdsConsultaVCCON_CLIENTE_ID: TIntegerField;
    cdsConsultaVCCON_NOME: TStringField;
    cdsConsultaVCCON_CPF: TStringField;
    cdsConsultaVCCON_ENDERECO: TStringField;
    cdsConsultaVCCON_FONES: TStringField;
    cdsConsultaVCCON_VALORTOTAL: TBCDField;
    cdsConsultaVCCON_DESCONTO: TBCDField;
    cdsConsultaVCCON_VALORFINAL: TBCDField;
    cdsConsultaVCCON_FORMAPAGTO: TStringField;
    cdsConsultaVCCON_OBSERVACAO: TStringField;
    cdsConsultaVCCON_DH_CA: TDateTimeField;
    cdsConsultaVCCON_VEC_ID: TIntegerField;
    cdsConsultaVCCON_NUMEROVENDA: TIntegerField;
    cdsConsultaCLI_CLIENTE: TStringField;
    cdsConsultaVEC_NUMDOCUMENTO: TIntegerField;
    cdsConsultaVEC_VALOR: TBCDField;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    grConsultaDBTableView1VEC_NUMDOCUMENTO: TcxGridDBColumn;
    grConsultaDBTableView1VEC_VALOR: TcxGridDBColumn;
    frxContrato: TfrxDBDataset;
    qRelContrato: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField4: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    DateTimeField2: TDateTimeField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField7: TIBStringField;
    IntegerField7: TIntegerField;
    IBBCDField4: TIBBCDField;
    procedure FormShow(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ibCadastroVCCON_DESCONTOChange(Sender: TField);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure Act_Btn_ImprimirContratoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadContratoVComiss: TFCadContratoVComiss;

const
  cCliente = 1;
  cFornecedor = 2;
  cFuncionario = 3;
  cVendedor = 4;

implementation

uses uSelecionarCliente, uDMConexao, uSelecionarVendas, uFerramentas;

{$R *.dfm}

procedure TFCadContratoVComiss.FormShow(Sender: TObject);
begin
  inherited;
  FCarregarConsultaCDSParametro := true;
  qConsulta.Close;
  qConsulta.Open;

  cdsConsulta.Close;
  cdsConsulta.Open;

  qCliente.Close;
  qCliente.Open;
end;

procedure TFCadContratoVComiss.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cCliente;
  FSelecionarCli.FPodeCadastrar := true;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
  begin
    ibCadastroVCCON_CLIENTE_ID.Value := FSelecionarCli.FId;
    ibCadastroVCCON_NOME.Value       := FSelecionarCli.FNome;
    ibCadastroVCCON_ENDERECO.Value   := FSelecionarCli.FEndereco;
    ibCadastroVCCON_FONES.Value      := FSelecionarCli.FFones;
    ibCadastroVCCON_CPF.Value        := FSelecionarCli.FCPF;
  end;
  FSelecionarCli.Free;
end;

procedure TFCadContratoVComiss.btEXClienteClick(Sender: TObject);
begin
  inherited;
  ibCadastroVCCON_CLIENTE_ID.Clear;
end;

procedure TFCadContratoVComiss.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  DMConexao.qGeral.Close;
  DMConexao.qGeral.SQL.Clear;
  DMConexao.qGeral.SQL.Text := 'select codigo from sp_getcodigocontrato';
  DMConexao.qGeral.Open;
  ibCadastroVCCON_CODIGO.Value := DMConexao.qGeral.Fields.Fields[0].Value;
  ibCadastroVCCON_DATAEMISSAO.Value := Date;

end;

procedure TFCadContratoVComiss.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FSelecionarVenda := TFSelecionarVenda.Create(nil);
  FSelecionarVenda.pnBarraForm.Caption := 'Selecionar Vendas';
  FSelecionarVenda.ShowModal;
  if FSelecionarVenda.FId>0 then
  begin
    ibCadastroVCCON_VEC_ID.Value := FSelecionarVenda.FId;
    ibCadastroVCCON_NUMEROVENDA.Value := FSelecionarVenda.FNumDocumento;
    ibCadastroVCCON_VALORTOTAL.Value := FSelecionarVenda.FValor;
    ibCadastroVCCON_CLIENTE_ID.Value := FSelecionarVenda.FIdCliente;
    ibCadastroVCCON_NOME.Value       := FSelecionarVenda.FNome;
    ibCadastroVCCON_ENDERECO.Value   := FSelecionarVenda.FEndereco;
    ibCadastroVCCON_FONES.Value      := FSelecionarVenda.FFones;
    ibCadastroVCCON_CPF.Value        := FSelecionarVenda.FCPF;
  end;
  FSelecionarVenda.Free;
end;

procedure TFCadContratoVComiss.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ibCadastroVCCON_VEC_ID.Clear;
end;

procedure TFCadContratoVComiss.ibCadastroVCCON_DESCONTOChange(
  Sender: TField);
begin
  inherited;
  if ibCadastroVCCON_DESCONTO.Value>0 then
    ibCadastroVCCON_VALORFINAL.Value := ibCadastroVCCON_VALORTOTAL.Value - ibCadastroVCCON_DESCONTO.Value;
end;

procedure TFCadContratoVComiss.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'VEN005_LISTA_CONTRATO_VENDA_COMISSIONADA';
  sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
    begin
      //getVariavelDesign('FILTORUSADO', QuotedStr('Situação: '+cxImageComboBox2.Text));
      ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
    end;
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

procedure TFCadContratoVComiss.Act_Btn_ImprimirContratoExecute(
  Sender: TObject);
begin
  inherited;
  qRelContrato.Close;
  qRelContrato.Open;
  sRelatorio := 'VEN006_CONTRATO_VENDA_COMISSIONADA';
  sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
    begin
      //getVariavelDesign('FILTORUSADO', QuotedStr('Situação: '+cxImageComboBox2.Text));
      ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
    end;
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;


end.
