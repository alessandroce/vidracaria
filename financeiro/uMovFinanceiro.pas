unit uMovFinanceiro;

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
  Spin, StrUtils, frxDBSet;

type
  TFMovFinanceiro = class(TFPadrao)
    ibCadastro: TIBDataSet;
    dsCadastro: TDataSource;
    Panel1: TPanel;
    qCliente: TIBQuery;
    qClienteCLI_ID: TIntegerField;
    qClienteCLI_CLIENTE: TIBStringField;
    dsCliente: TDataSource;
    qCategoria: TIBQuery;
    qCategoriaPIT_ID: TIntegerField;
    qCategoriaPIT_DESCRICAO: TIBStringField;
    qCategoriaPIT_CODIGO: TIntegerField;
    qCategoriaPIT_CODIGOREDUZIDO: TIntegerField;
    dsCategoria: TDataSource;
    qCentroCusto: TIBQuery;
    qCentroCustoCCO_ID: TIntegerField;
    qCentroCustoCCO_CODIGO: TIntegerField;
    qCentroCustoCCO_DESCRICAO: TIBStringField;
    qCentroCustoCCO_DH_CA: TDateTimeField;
    dsCentroCusto: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1MOV_DATAMOV: TcxGridDBColumn;
    cxGrid1DBTableView1MOV_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1MOV_NUMDOC: TcxGridDBColumn;
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
    Label13: TLabel;
    Label1: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    DBLookupComboBox3: TDBLookupComboBox;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    btCACategorai: TBitBtn;
    btEXCategorai: TBitBtn;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    SpinEdit1: TSpinEdit;
    nbBarraBotao: TNotebook;
    btImprimir: TSpeedButton;
    btExcluir: TSpeedButton;
    btAlterar: TSpeedButton;
    btNovo: TSpeedButton;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    btSair: TSpeedButton;
    Label14: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    btCACentroCusto: TBitBtn;
    btEXCentroCusto: TBitBtn;
    ibCadastroMOV_TIPOBAIXA: TIBStringField;
    Label3: TLabel;
    qPagarReceber: TIBQuery;
    dsPagarReceber: TDataSource;
    qPagarReceberPAR_DESCRICAO: TIBStringField;
    qPagarReceberTIPOCONTA: TIBStringField;
    DBEdit2: TDBEdit;
    ibCadastroMOV_DESCRICAO: TIBStringField;
    Label5: TLabel;
    DBMemo2: TDBMemo;
    ibCadastroMOV_ANO: TIntegerField;
    ibCadastroMOV_BAN_ID_CC: TIntegerField;
    ibCadastroMOV_BAN_ID_AP: TIntegerField;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure btCACategoraiClick(Sender: TObject);
    procedure btEXCategoraiClick(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure btCACentroCustoClick(Sender: TObject);
    procedure btEXCentroCustoClick(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
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
  FMovFinanceiro: TFMovFinanceiro;

implementation

uses uDMConexao, uSelecionarCliente, uSelecionarPagarReceber,
  uSelecionarPlanoContas, uSelecionarCentroCusto, DateUtils,
  uTipoBaixaMovFinanceiro, uClassAvisos, uFerramentas;

{$R *.dfm}

{ TFMovFinanceiro }

procedure TFMovFinanceiro.barra_botao(pBotao: TAction);
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

procedure TFMovFinanceiro.Act_Btn_NovoExecute(Sender: TObject);
begin
  inherited;
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;
  ibCadastro.Close;
  ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
  ibCadastro.Open;
  ibCadastro.Insert;
  barra_botao(Act_Btn_Novo);
  nbBarraBotao.ActivePage := 'pgConsulta';
end;

procedure TFMovFinanceiro.Act_Btn_AlterarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Edit;
  barra_botao(Act_Btn_Alterar);
  nbBarraBotao.ActivePage := 'pgConsulta';
end;

procedure TFMovFinanceiro.Act_Btn_ExcluirExecute(Sender: TObject);
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
    ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
    ibCadastro.Open;

    Aviso('Registro apagado com sucesso.');
  end;
end;

procedure TFMovFinanceiro.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  barra_botao(Act_Btn_Imprimir);
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA','FIN013_MOVOMENTO_FINANCEIRO') then
    begin
      getVariavelDesign('MESANOREF',QuotedStr(getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value)));
      ImprimirAlterarRelatorio(0,'FIN013_MOVOMENTO_FINANCEIRO','Relatório de Movimento Financeiro');
    end;
  end
  else
  begin
    ChamaRelatorio(frxReport1,'FIN013_MOVOMENTO_FINANCEIRO',false);
    frxReport1.Variables['MESANOREF'] := QuotedStr(getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value));
    frxReport1.PrepareReport();
    frxReport1.ShowPreparedReport;
  end;
end;

procedure TFMovFinanceiro.Act_Btn_CancelarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Cancel;
  barra_botao(Act_Btn_Cancelar);
  nbBarraBotao.ActivePage := 'pgCadastro';
end;

procedure TFMovFinanceiro.Act_Btn_GravarExecute(Sender: TObject);
begin
  inherited;
  ibCadastro.Post;
  DMConexao.IBTransacao.CommitRetaining;
  barra_botao(Act_Btn_Gravar);
  nbBarraBotao.ActivePage := 'pgCadastro';
end;

procedure TFMovFinanceiro.Act_Btn_SairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFMovFinanceiro.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;
  ibCadastro.Close;
  ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
  ibCadastro.Open;
  barra_botao(Act_Btn_Cancelar);
end;

procedure TFMovFinanceiro.FormShow(Sender: TObject);
begin
  inherited;
  FValorOriginal := 0;
  FValorQuitado := 0;
  FDescricaoMovto := EmptyStr;

  qCategoria.Close;
  qCategoria.Open;
  qCategoria.Last;
  qCategoria.First;

  qCliente.Close;
  qCliente.Open;
  qCliente.Last;
  qCliente.First;

  qCentroCusto.Close;
  qCentroCusto.Open;
  qCentroCusto.Last;
  qCentroCusto.First;

  ComboBox1.ItemIndex := ( MonthOf(Now) - 1);
  ComboBox1.SetFocus;

  ibCadastro.Close;
  ibCadastro.ParamByName('mesano').Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
  ibCadastro.Open;
end;

procedure TFMovFinanceiro.btCAClienteClick(Sender: TObject);
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

procedure TFMovFinanceiro.btEXClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo) then
    Exit;
  ibCadastroMOV_CLI_ID.Clear;
end;

function TFMovFinanceiro.IbCadastroAtivo: Boolean;
begin
  Result := (ibCadastro.State in [dsEdit,dsInsert]);
end;

procedure TFMovFinanceiro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo) then
    Exit;
  FSelecionarPagarReceber := TFSelecionarPagarReceber.Create(nil);
  //FSelecionarPagarReceber.FPGR_ID := FTipoPagRec;
  FSelecionarPagarReceber.ShowModal;
  if FSelecionarPagarReceber.FId>0 then
  begin
    ibCadastroMOV_PAR_ID.Value := FSelecionarPagarReceber.FId;
    ibCadastroMOV_CLI_ID.Value := FSelecionarPagarReceber.FCliId;
    ibCadastroMOV_CAT_ID.Value := FSelecionarPagarReceber.FCatId;
    ibCadastroMOV_NUMDOC.Value := FSelecionarPagarReceber.FNumDoc;
    ibCadastroMOV_VALOR.Value  := FSelecionarPagarReceber.FValor;
    FValorOriginal             := FSelecionarPagarReceber.FValorOriginal;
    FVAlorQuitado              := FSelecionarPagarReceber.FValorQuitado;
    FDescricaoMovto            := FSelecionarPagarReceber.FDescricao;
    ibCadastroMOV_DESCRICAO.AsString := ibCadastroMOV_DESCRICAO.AsString + #13 + FDescricaoMovto;
  end;
  FSelecionarPagarReceber.Free;
end;

procedure TFMovFinanceiro.btCACategoraiClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo) then
    Exit;
  FSelecionarPlanoContas := TFSelecionarPlanoContas.Create(nil);
  FSelecionarPlanoContas.FPGR_ID := 0;//FTipoPagRec;
  FSelecionarPlanoContas.ShowModal;
  if FSelecionarPlanoContas.FId>0 then
    ibCadastroMOV_CAT_ID.Value := FSelecionarPlanoContas.FId;
  FSelecionarPlanoContas.Free;
end;

procedure TFMovFinanceiro.btEXCategoraiClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo) then
    Exit;
  ibCadastroMOV_CAT_ID.Clear;
end;

function TFMovFinanceiro.getMesAnoMovimento(pMes, pAno: Integer): String;
var sMes, sAno, sMesAno : String;
begin
  if pMes<10 then
    sMes := '0'+IntToStr(pMes)
  else
    sMes := IntToStr(pMes);
  sMesAno := sMes+'/'+IntToStr(pAno);
  Result := sMesAno;
end;

procedure TFMovFinanceiro.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  ibCadastroMOV_DATAMOV.Value := Now;
  ibCadastroMOV_ANO.Value := SpinEdit1.Value;
end;

procedure TFMovFinanceiro.ibCadastroBeforePost(DataSet: TDataSet);
var bCancelado : Boolean;
begin
  inherited;
  //tipo baixa
  if ((ibCadastroMOV_VALOR.Value>=FValorOriginal) or ((FVAlorQuitado+ibCadastroMOV_VALOR.Value) >= FValorOriginal)) then
  begin
    ibCadastroMOV_TIPOBAIXA.Value := 'T'
  end
  else
  begin
    if ((FValorOriginal - (FVAlorQuitado + ibCadastroMOV_VALOR.Value))>0) then
    begin
      FTipoBaixaMovFinanceiro := TFTipoBaixaMovFinanceiro.Create(nil);
      FTipoBaixaMovFinanceiro.ShowModal;
      ibCadastroMOV_TIPOBAIXA.Value := FTipoBaixaMovFinanceiro.FTipoBaixa;
      bCancelado := FTipoBaixaMovFinanceiro.FCancelado;
      FTipoBaixaMovFinanceiro.Free;
      if bCancelado then
        Abort;
    end
    else
      ibCadastroMOV_TIPOBAIXA.Value := 'T';
  end;
  //
  ibCadastroMOV_MESANOREF.Value := getMesAnoMovimento(ComboBox1.ItemIndex+1,SpinEdit1.Value);
end;

procedure TFMovFinanceiro.btCACentroCustoClick(Sender: TObject);
begin
  inherited;
  FSelecionarCentroCusto := TFSelecionarCentroCusto.Create(nil);
  FSelecionarCentroCusto.ShowModal;
  if FSelecionarCentroCusto.FId>0 then
    ibCadastroMOV_CCO_ID.Value := FSelecionarCentroCusto.FId;
  FSelecionarCentroCusto.Free;
end;

procedure TFMovFinanceiro.btEXCentroCustoClick(Sender: TObject);
begin
  inherited;
  ibCadastroMOV_CCO_ID.Clear;
end;

procedure TFMovFinanceiro.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  qPagarReceber.Close;
  qPagarReceber.ParamByName('par_id').Value := ibCadastroMOV_PAR_ID.Value;
  qPagarReceber.Open;
end;

end.
