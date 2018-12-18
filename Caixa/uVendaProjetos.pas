unit uVendaProjetos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, frxClass, frxIBXComponents, ImgList, ActnList, ExtCtrls,
  ComCtrls, DB, IBCustomDataSet, Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, StdCtrls, Mask,
  DBCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, IBQuery,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  Spin, StrUtils;

type
  TFVendaProjeto = class(TFPadrao)
    ibCadastro: TIBDataSet;
    dsCadastro: TDataSource;
    Panel1: TPanel;
    qCliente: TIBQuery;
    qClienteCLI_ID: TIntegerField;
    qClienteCLI_CLIENTE: TIBStringField;
    dsCliente: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ibCadastroMOV_ID: TIntegerField;
    ibCadastroMOV_CLI_ID: TIntegerField;
    ibCadastroMOV_CAT_ID: TIntegerField;
    ibCadastroMOV_CCO_ID: TIntegerField;
    ibCadastroMOV_PAR_ID: TIntegerField;
    ibCadastroMOV_DATAMOV: TDateField;
    ibCadastroMOV_MESANOREF: TIBStringField;
    ibCadastroMOV_VALOR: TIBBCDField;
    ibCadastroMOV_OBSERVACAO: TIBStringField;
    ibCadastroMOV_NUMDOC: TIBStringField;
    ibCadastroMOV_DH_CA: TDateTimeField;
    pnBarraPg: TPanel;
    Panel2: TPanel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    nbBarraBotao: TNotebook;
    btImprimir: TSpeedButton;
    btExcluir: TSpeedButton;
    btAlterar: TSpeedButton;
    btNovo: TSpeedButton;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    btSair: TSpeedButton;
    ibCadastroMOV_TIPOBAIXA: TIBStringField;
    ibCadastroMOV_DESCRICAO: TIBStringField;
    ibCadastroMOV_ANO: TIntegerField;
    ibCadastroMOV_BAN_ID_CC: TIntegerField;
    ibCadastroMOV_BAN_ID_AP: TIntegerField;
    Panel3: TPanel;
    Label13: TLabel;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    Panel6: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FVAlorQuitado : Extended;
    FValorOriginal : Extended;
    FDescricaoMovto : String;
    function IbCadastroAtivo:Boolean;
    procedure barra_botao(pBotao:TAction);
    function getMesAnoMovimento(pMes, pAno : Integer):String;

  public
    { Public declarations }
  end;

var
  FVendaProjeto: TFVendaProjeto;

implementation

uses uDMConexao, uSelecionarCliente, uSelecionarPagarReceber,
  uSelecionarPlanoContas, uSelecionarCentroCusto, DateUtils,
  uTipoBaixaMovFinanceiro, uClassAvisos, uFerramentas;

{$R *.dfm}

{ TFMovFinanceiro }

procedure TFVendaProjeto.barra_botao(pBotao: TAction);
  procedure bInserindoEditando;
  begin
    btNovo.Enabled      := false;
    btAlterar.Enabled   := false;
    btExcluir.Enabled   := false;
    btImprimir.Enabled  := true;
    btCancelar.Enabled  := true;
    btSalvar.Enabled    := true;

    Act_Btn_Novo.Enabled     := false;
    Act_Btn_Alterar.Enabled  := false;
    Act_Btn_Excluir.Enabled  := false;
    Act_Btn_Imprimir.Enabled := true;
    Act_Btn_Cancelar.Enabled := true;
    Act_Btn_Gravar.Enabled   := true;
  end;

  procedure bGravando;
  begin
    btNovo.Enabled      := true;
    btAlterar.Enabled   := true;
    btExcluir.Enabled   := true;
    btImprimir.Enabled  := true;
    btCancelar.Enabled  := false;
    btSalvar.Enabled    := false;

    Act_Btn_Novo.Enabled     := true;
    Act_Btn_Alterar.Enabled  := true;
    Act_Btn_Excluir.Enabled  := true;
    Act_Btn_Imprimir.Enabled := true;
    Act_Btn_Cancelar.Enabled := false;
    Act_Btn_Gravar.Enabled   := false;
  end;

begin
  case pBotao.Tag of
    {Novo}     0 : bInserindoEditando;
    {Alterar}  1 : bInserindoEditando;
    {Excluir}  2 : bInserindoEditando;
    {Imprimir} 3 : bInserindoEditando;
    {Cancelar} 4 : bGravando;
    {Gravar}   5 : bGravando;
    {Sair}     6 : bGravando;
  end;
end;

procedure TFVendaProjeto.Act_Btn_NovoExecute(Sender: TObject);
begin
  inherited;
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;
  //ibCadastro.Close;
  //ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
  //ibCadastro.Open;
  //ibCadastro.Insert;
  barra_botao(Act_Btn_Novo);
  nbBarraBotao.ActivePage := 'pgConsulta';
end;

procedure TFVendaProjeto.Act_Btn_AlterarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Edit;
  barra_botao(Act_Btn_Alterar);
  nbBarraBotao.ActivePage := 'pgConsulta';
end;

procedure TFVendaProjeto.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  inherited;
  //barra_botao(Act_Btn_Excluir);
  if Duvida('Excluir registro.') then
  begin
    if not(Continua(NOT(ibCadastro.IsEmpty),['I','Sem registros pra exibir.','Informação'])) then
      Exit;
    ibCadastro.Delete;
    DMConexao.IBTransacao.Commit;

    //ibCadastro.Close;
    //ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
    //ibCadastro.Open;

    Aviso('Registro apagado com sucesso.');
  end;
end;

procedure TFVendaProjeto.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  barra_botao(Act_Btn_Imprimir);
end;

procedure TFVendaProjeto.Act_Btn_CancelarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Cancel;
  barra_botao(Act_Btn_Cancelar);
  nbBarraBotao.ActivePage := 'pgCadastro';
end;

procedure TFVendaProjeto.Act_Btn_GravarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Post;
  DMConexao.IBTransacao.CommitRetaining;
  barra_botao(Act_Btn_Gravar);
  nbBarraBotao.ActivePage := 'pgCadastro';
end;

procedure TFVendaProjeto.Act_Btn_SairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFVendaProjeto.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;
  //ibCadastro.Close;
  //ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
  //ibCadastro.Open;
  barra_botao(Act_Btn_Cancelar);
end;

procedure TFVendaProjeto.FormShow(Sender: TObject);
begin
  inherited;
  FValorOriginal := 0;
  FValorQuitado := 0;
  FDescricaoMovto := EmptyStr;

  qCliente.Close;
  qCliente.Open;
  qCliente.Last;
  qCliente.First;

  //ibCadastro.Close;
  //ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
  //ibCadastro.Open;
end;

procedure TFVendaProjeto.btCAClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo) then
    Exit;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  //FSelecionarCli.FTipoCli := FTipoPagRec;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroMOV_CLI_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFVendaProjeto.btEXClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo) then
    Exit;
  ibCadastroMOV_CLI_ID.Clear;
end;

function TFVendaProjeto.IbCadastroAtivo: Boolean;
begin
  Result := (ibCadastro.State in [dsEdit,dsInsert]);
end;

function TFVendaProjeto.getMesAnoMovimento(pMes, pAno: Integer): String;
var sMes, sAno, sMesAno : String;
begin
  if pMes<10 then
    sMes := '0'+IntToStr(pMes)
  else
    sMes := IntToStr(pMes);
  sMesAno := sMes+'/'+IntToStr(pAno);
  Result := sMesAno;
end;

procedure TFVendaProjeto.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  ibCadastroMOV_DATAMOV.Value := Now;
end;

end.
