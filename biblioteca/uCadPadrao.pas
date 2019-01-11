unit uCadPadrao;

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
  TFCadPadrao = class(TForm)
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
    pgCadastro: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaLevel1: TcxGridLevel;
    grConsulta: TcxGrid;
    pnBarraPg: TPanel;
    btNovo: TSpeedButton;
    btAlterar: TSpeedButton;
    btExcluir: TSpeedButton;
    btSair: TSpeedButton;
    btImprimir: TSpeedButton;
    sbBarraStatus: TStatusBar;
    rgAtivo: TRadioGroup;
    Panel1: TPanel;
    btSalvar: TSpeedButton;
    btCancelar: TSpeedButton;
    pnBarraForm: TPanel;
    frxReport1: TfrxReport;
    frxIBXComponents1: TfrxIBXComponents;
    Bevel1: TBevel;
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
    procedure pgCadastroChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    FMudaAba : Boolean;
    FPnBarraForm: String;
    procedure setFPnBarraForm(const Value: String);
  public
    { Public declarations }
    FId : Integer;
    FIdConsulta : Integer;
    FTabela : String;
    FCarregarConsultaCDSParametro : Boolean;
    procedure MudaAba(pNovaAba:Integer);
    procedure AntesMudaAba(var pContinuaAcao : Boolean);Virtual;
    procedure DepoisMudaAba;Virtual;
    procedure EntrouAbaCadastro;Virtual;
    procedure EntrouAbaConsulta;Virtual;
    procedure EntrouAbaRelatorio;Virtual;
    property PnBarraFormCaption : String read FPnBarraForm write setFPnBarraForm;
    function getIdConsulta:Integer;Virtual;
    procedure CarregarConsulta;Virtual;
    procedure CarregarConsultaCDSParametro;Virtual;
    function IbCadastroAtivo(pCadastro:TIBDataSet):Boolean;
  end;

var
  FCadPadrao: TFCadPadrao;

const
  cAbaConsulta  = 0;
  cAbaCadastro  = 1;
  cAbaRelatorio = 2;

implementation

uses uClassAvisos, uFerramentas;


{$R *.dfm}

procedure TFCadPadrao.Act_Btn_NovoExecute(Sender: TObject);
begin
  //if not(DMConexao.IBTransacao.InTransaction) then
  if DMConexao.IBTransacao.InTransaction then
    DMConexao.IBTransacao.CommitRetaining;

    //DMConexao.IBTransacao.StartTransaction;
  ibCadastro.Close;
  ibCadastro.Open;
  ibCadastro.Insert;
  MudaAba(1);
end;

procedure TFCadPadrao.Act_Btn_AlterarExecute(Sender: TObject);
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
  MudaAba(1);
end;

procedure TFCadPadrao.ibCadastroDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Aviso('Erro ao apagar. '+ DataSet.Name + e.Message);
  Action := daAbort;
end;

procedure TFCadPadrao.ibCadastroEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Aviso('Erro ao Editar. '+ DataSet.Name + e.Message);
  Action := daAbort;
end;

procedure TFCadPadrao.ibCadastroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  Aviso('Erro ao Gravar. '+ DataSet.Name + e.Message);
  Action := daAbort;
end;

procedure TFCadPadrao.Act_Btn_ExcluirExecute(Sender: TObject);
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

procedure TFCadPadrao.Act_Btn_SairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFCadPadrao.Act_Btn_GravarExecute(Sender: TObject);
begin
  if (ibCadastro.State in [dsInsert,dsEdit]) then
    ibCadastro.Post;
  DMConexao.IBTransacao.CommitRetaining;
  MudaAba(0);
  if FCarregarConsultaCDSParametro then
    CarregarConsultaCDSParametro
  else
    CarregarConsulta;
end;

procedure TFCadPadrao.Act_Btn_InserirExecute(Sender: TObject);
begin
//
end;

procedure TFCadPadrao.Act_Btn_CancelarExecute(Sender: TObject);
begin
  ibCadastro.Cancel;
  MudaAba(0);
end;

procedure TFCadPadrao.grConsultaDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Act_Btn_Alterar.Execute
end;

procedure TFCadPadrao.MudaAba(pNovaAba: Integer);
begin
  AntesMudaAba(FMudaAba);
  if FMudaAba then
  begin
    pgCadastro.ActivePageIndex := pNovaAba;
    if pNovaAba=0 then
      if FId>0 then
        FId := 0;
    case pNovaAba of
      cAbaConsulta  : begin
                        EntrouAbaConsulta;
                      end;
      cAbaCadastro  : begin
                        EntrouAbaCadastro;
                      end;
      cAbaRelatorio  : begin
                        EntrouAbaRelatorio;
                      end;
    end;
    FMudaAba := False;
    DepoisMudaAba;
  end;
end;

procedure TFCadPadrao.AntesMudaAba(var pContinuaAcao: Boolean);
begin
  pContinuaAcao := true;
end;

procedure TFCadPadrao.DepoisMudaAba;
begin
//
end;

procedure TFCadPadrao.pgCadastroChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := FMudaAba;
end;

procedure TFCadPadrao.EntrouAbaCadastro;
begin
//
end;

procedure TFCadPadrao.EntrouAbaConsulta;
begin
//
end;

procedure TFCadPadrao.FormShow(Sender: TObject);
begin
  if FId=0 then
    MudaAba(0);
  Caption := ':: sistema de gestão comercial ::';
end;

procedure TFCadPadrao.setFPnBarraForm(const Value: String);
begin
  FPnBarraForm := Value;
  //PnBarraForm.Caption := ':: '+FPnBarraForm+' ::';
  PnBarraForm.Caption := FPnBarraForm;
end;

procedure TFCadPadrao.EntrouAbaRelatorio;
begin
//
end;


function TFCadPadrao.getIdConsulta: Integer;
begin
  if FId>0 then
    Result := FId
  else
  if not(qConsulta.FieldByName('Id').IsNull) then
    Result := qConsulta.FieldByName('Id').Value
  else
    Result := 0;
end;

procedure TFCadPadrao.CarregarConsulta;
begin
    qConsulta.Close;
    qConsulta.Open;
end;

procedure TFCadPadrao.CarregarConsultaCDSParametro;
begin
//
end;

procedure TFCadPadrao.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  if not(Continua(FIdConsulta>0,['I','Sem registros pra exibir.','Aviso'])) then
    Abort;
end;

function TFCadPadrao.IbCadastroAtivo(pCadastro:TIBDataSet): Boolean;
begin
  Result := (pCadastro.State in [dsEdit,dsInsert]);
end;

end.
