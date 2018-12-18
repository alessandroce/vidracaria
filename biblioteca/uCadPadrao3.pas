unit uCadPadrao3;

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
  TFCadPadrao3 = class(TFPadrao)
    ibCadastro: TIBDataSet;
    dsCadastro: TDataSource;
    Panel1: TPanel;
    pnBarraPg: TPanel;
    Panel2: TPanel;
    nbBarraBotao: TNotebook;
    btImprimir: TSpeedButton;
    btExcluir: TSpeedButton;
    btAlterar: TSpeedButton;
    btNovo: TSpeedButton;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    btSair: TSpeedButton;
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
  FCadPadrao3: TFCadPadrao3;

implementation

uses uDMConexao, uSelecionarCliente, uSelecionarPagarReceber,
  uSelecionarPlanoContas, uSelecionarCentroCusto, DateUtils,
  uTipoBaixaMovFinanceiro, uClassAvisos, uFerramentas;

{$R *.dfm}

{ TFMovFinanceiro }

procedure TFCadPadrao3.barra_botao(pBotao: TAction);
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

procedure TFCadPadrao3.Act_Btn_NovoExecute(Sender: TObject);
begin
  inherited;
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;
  ibCadastro.Close;
  ibCadastro.Open;
  ibCadastro.Insert;
  barra_botao(Act_Btn_Novo);
  nbBarraBotao.ActivePage := 'pgConsulta';
end;

procedure TFCadPadrao3.Act_Btn_AlterarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Edit;
  barra_botao(Act_Btn_Alterar);
  nbBarraBotao.ActivePage := 'pgConsulta';
end;

procedure TFCadPadrao3.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  inherited;
  //barra_botao(Act_Btn_Excluir);
  if Duvida('Excluir registro.') then
  begin
    if not(Continua(NOT(ibCadastro.IsEmpty),['I','Sem registros pra exibir.','Informação'])) then
      Exit;
    ibCadastro.Delete;
    DMConexao.IBTransacao.Commit;

    ibCadastro.Close;
    ibCadastro.Open;

    Aviso('Registro apagado com sucesso.');
  end;
end;

procedure TFCadPadrao3.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  barra_botao(Act_Btn_Imprimir);
end;

procedure TFCadPadrao3.Act_Btn_CancelarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Cancel;
  barra_botao(Act_Btn_Cancelar);
  nbBarraBotao.ActivePage := 'pgCadastro';
end;

procedure TFCadPadrao3.Act_Btn_GravarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Post;
  DMConexao.IBTransacao.CommitRetaining;
  barra_botao(Act_Btn_Gravar);
  nbBarraBotao.ActivePage := 'pgCadastro';
end;

procedure TFCadPadrao3.Act_Btn_SairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFCadPadrao3.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;
  //ibCadastro.Close;
  //ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
  //ibCadastro.Open;
  barra_botao(Act_Btn_Cancelar);
end;

procedure TFCadPadrao3.FormShow(Sender: TObject);
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

procedure TFCadPadrao3.btCAClienteClick(Sender: TObject);
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

procedure TFCadPadrao3.btEXClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo) then
    Exit;
  ibCadastroMOV_CLI_ID.Clear;
end;

function TFCadPadrao3.IbCadastroAtivo: Boolean;
begin
  Result := (ibCadastro.State in [dsEdit,dsInsert]);
end;

function TFCadPadrao3.getMesAnoMovimento(pMes, pAno: Integer): String;
var sMes, sAno, sMesAno : String;
begin
  if pMes<10 then
    sMes := '0'+IntToStr(pMes)
  else
    sMes := IntToStr(pMes);
  sMesAno := sMes+'/'+IntToStr(pAno);
  Result := sMesAno;
end;

procedure TFCadPadrao3.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  ibCadastroMOV_DATAMOV.Value := Now;
end;

end.
