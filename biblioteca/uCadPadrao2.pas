unit uCadPadrao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDMConexao, DB, IBQuery, IBCustomDataSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, StdCtrls, ExtCtrls,
  ComCtrls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Buttons, ToolWin,
  ActnList, ImgList, DBCtrls, frxClass, frxIBXComponents;

type
  TModoCarregarConsulta = (cSemParametro,cComParametro);
  TFCadPadrao2 = class(TForm)
    dsCadastro: TDataSource;
    ibCadastro: TIBDataSet;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Gravar: TAction;
    Act_Btn_Inserir: TAction;
    Act_Btn_Alterar: TAction;
    Act_Btn_Excluir: TAction;
    Act_Btn_Imprimir: TAction;
    Act_Btn_Sair: TAction;
    Act_Btn_Novo: TAction;
    Act_Btn_Cancelar: TAction;
    Act_Btn_Localizar: TAction;
    pnBarraForm: TPanel;
    frxReport1: TfrxReport;
    frxIBXComponents1: TfrxIBXComponents;
    sbBarraStatus: TStatusBar;
    Panel2: TPanel;
    pnBarraPg: TPanel;
    btNovo: TSpeedButton;
    btAlterar: TSpeedButton;
    btExcluir: TSpeedButton;
    btSair: TSpeedButton;
    btImprimir: TSpeedButton;
    btCancelar: TSpeedButton;
    btSalvar: TSpeedButton;
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure ibCadastroDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ibCadastroEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ibCadastroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure grConsultaDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    FPnBarraForm: String;
    procedure setFPnBarraForm(const Value: String);
  public
    { Public declarations }
    FId : Integer;
    FIdConsulta : Integer;
    FTabela : String;
    FCarregarConsultaCDSParametro : Boolean;
    procedure EntrouAbaCadastro;Virtual;
    procedure EntrouAbaConsulta;Virtual;
    procedure EntrouAbaRelatorio;Virtual;
    property PnBarraFormCaption : String read FPnBarraForm write setFPnBarraForm;
    procedure barra_botao(pBotao:TAction);
  end;

var
  FCadPadrao2: TFCadPadrao2;

const
  cAbaConsulta  = 0;
  cAbaCadastro  = 1;
  cAbaRelatorio = 2;

implementation

uses uClassAvisos, uFerramentas;


{$R *.dfm}

procedure TFCadPadrao2.Act_Btn_NovoExecute(Sender: TObject);
begin
  barra_botao(Act_Btn_Novo);
  //if not(DMConexao.IBTransacao.InTransaction) then
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;

    //DMConexao.IBTransacao.StartTransaction;
  ibCadastro.Close;
  ibCadastro.Open;
  ibCadastro.Insert;
end;

procedure TFCadPadrao2.Act_Btn_AlterarExecute(Sender: TObject);
begin
  barra_botao(Act_Btn_Alterar);
  if not(Continua(FIdConsulta>0,['I','Sem registros pra exibir.','Aviso'])) then
    Exit;
  if not(DMConexao.IBTransacao.InTransaction) then
    DMConexao.IBTransacao.StartTransaction;
  ibCadastro.Close;
  ibCadastro.ParamByName('FId').Value := FIdConsulta;//qConsulta.FieldByName('Id').Value;
  ibCadastro.Open;
  ibCadastro.Edit;
end;

procedure TFCadPadrao2.ibCadastroDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Aviso('Erro ao apagar. '+ DataSet.Name + e.Message);
  Action := daAbort;
end;

procedure TFCadPadrao2.ibCadastroEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Aviso('Erro ao Editar. '+ DataSet.Name + e.Message);
  Action := daAbort;
end;

procedure TFCadPadrao2.ibCadastroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Aviso('Erro ao Gravar. '+ DataSet.Name + e.Message);
  Action := daAbort;
end;

procedure TFCadPadrao2.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  barra_botao(Act_Btn_Excluir);
  if Duvida('Excluir registro.') then
  begin
    if not(Continua(FIdConsulta>0,['I','Sem registros pra exibir.','Informação'])) then
      Exit;
    ibCadastro.Close;
    //ibCadastro.ParamByName('FId').Value := FIdConsulta;//qConsulta.FieldByName('Id').Value;
    ibCadastro.Open;
    ibCadastro.Delete;

    DMConexao.IBTransacao.Commit;

    Aviso('Registro apagado com sucesso.');
  end;
end;

procedure TFCadPadrao2.Act_Btn_SairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFCadPadrao2.Act_Btn_GravarExecute(Sender: TObject);
begin
  barra_botao(Act_Btn_Gravar);
  ibCadastro.Post;
  DMConexao.IBTransacao.CommitRetaining;
end;

procedure TFCadPadrao2.Act_Btn_InserirExecute(Sender: TObject);
begin
//
end;

procedure TFCadPadrao2.Act_Btn_CancelarExecute(Sender: TObject);
begin
  barra_botao(Act_Btn_Cancelar);
  ibCadastro.Cancel;
end;

procedure TFCadPadrao2.grConsultaDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Act_Btn_Alterar.Execute
end;

procedure TFCadPadrao2.EntrouAbaCadastro;
begin
//
end;

procedure TFCadPadrao2.EntrouAbaConsulta;
begin
//
end;

procedure TFCadPadrao2.FormShow(Sender: TObject);
begin
  Caption := ':: sistema de gestão comercial ::';
end;

procedure TFCadPadrao2.setFPnBarraForm(const Value: String);
begin
  FPnBarraForm := Value;
  PnBarraForm.Caption := ':: '+FPnBarraForm+' ::';
end;

procedure TFCadPadrao2.EntrouAbaRelatorio;
begin
//
end;


procedure TFCadPadrao2.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  barra_botao(Act_Btn_Imprimir);
  if not(Continua(FIdConsulta>0,['I','Sem registros pra exibir.','Aviso'])) then
    Abort;
end;

procedure TFCadPadrao2.barra_botao(pBotao: TAction);
  procedure bInserindoEditando;
  begin
    Act_Btn_Novo.Enabled     := false;
    Act_Btn_Alterar.Enabled  := false;
    Act_Btn_Excluir.Enabled  := false;
    Act_Btn_Imprimir.Enabled := true;
    Act_Btn_Cancelar.Enabled := true;
    Act_Btn_Gravar.Enabled   := true;
  end;

  procedure bGravando;
  begin
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

end.
