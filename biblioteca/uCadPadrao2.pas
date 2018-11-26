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
    dsConsulta: TDataSource;
    ibCadastro: TIBDataSet;
    qConsulta: TIBQuery;
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
    function getIdConsulta:Integer;Virtual;
    procedure CarregarConsulta;Virtual;
    procedure CarregarConsultaCDSParametro;Virtual;
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
  FIdConsulta := getIdConsulta;
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
  if Duvida('Excluir registro.') then
  begin
    FIdConsulta := getIdConsulta;
    if not(Continua(FIdConsulta>0,['I','Sem registros pra exibir.','Informação'])) then
      Exit;
    ibCadastro.Close;
    ibCadastro.ParamByName('FId').Value := FIdConsulta;//qConsulta.FieldByName('Id').Value;
    ibCadastro.Open;
    ibCadastro.Delete;

    DMConexao.IBTransacao.Commit;

    if FCarregarConsultaCDSParametro then
      CarregarConsultaCDSParametro
    else
      CarregarConsulta;

    Aviso('Registro apagado com sucesso.');
  end;
end;

procedure TFCadPadrao2.Act_Btn_SairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFCadPadrao2.Act_Btn_GravarExecute(Sender: TObject);
begin
  ibCadastro.Post;
  DMConexao.IBTransacao.CommitRetaining;
  if FCarregarConsultaCDSParametro then
    CarregarConsultaCDSParametro
  else
    CarregarConsulta;
end;

procedure TFCadPadrao2.Act_Btn_InserirExecute(Sender: TObject);
begin
//
end;

procedure TFCadPadrao2.Act_Btn_CancelarExecute(Sender: TObject);
begin
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


function TFCadPadrao2.getIdConsulta: Integer;
begin
  if FId>0 then
    Result := FId
  else
  if not(qConsulta.FieldByName('Id').IsNull) then
    Result := qConsulta.FieldByName('Id').Value
  else
    Result := 0;
end;

procedure TFCadPadrao2.CarregarConsulta;
begin
    qConsulta.Close;
    qConsulta.Open;
end;

procedure TFCadPadrao2.CarregarConsultaCDSParametro;
begin
//
end;

procedure TFCadPadrao2.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  if not(Continua(FIdConsulta>0,['I','Sem registros pra exibir.','Aviso'])) then
    Abort;
end;

end.
