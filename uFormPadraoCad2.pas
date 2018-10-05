unit uFormPadraoCad2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, ActnList, ImgList,
  Buttons, ToolWin, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TFormPadraoCad2 = class(TForm)
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
    StatusBar1: TStatusBar;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    PageControl1: TPageControl;
    TabSheetFicha: TTabSheet;
    Act_Btn_Localizar: TAction;
    btn_Localizar: TSpeedButton;
    ToolBar1: TToolBar;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnSair: TSpeedButton;
    qryCadastro: TSQLQuery;
    dspCadastro: TDataSetProvider;
    dsCadastro: TDataSource;
    cdsCadastro: TMyClientDataSet;
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TMyClientDataSet;
    dsConsulta: TDataSource;
    Bevel1: TBevel;
    pnBevel: TPanel;
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
  private
    FHandleCadastro: Integer;
    procedure SetHandleCadastro(const Value: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AntesActBotaoNovo(var pContinua:Boolean);virtual;
    procedure AntesActBotaoInserir;virtual;
    procedure AntesActBotaoAlterar(var pContinua:Boolean);virtual;
    procedure AntesActBotaoExcluir;virtual;
    procedure AntesActBotaoCancelar;virtual;
    procedure AntesActBotaoImprimir;virtual;
    procedure AntesActBotaoSair;virtual;
    procedure AntesActBotaoLocalizar;virtual;

    procedure DepoisActBotaoNovo;virtual;
    procedure DepoisActBotaoInserir;virtual;
    procedure DepoisActBotaoAlterar;virtual;
    procedure DepoisActBotaoExcluir;virtual;
    procedure DepoisActBotaoCancelar;virtual;
    procedure DepoisActBotaoImprimir;virtual;
    procedure DepoisActBotaoSair;virtual;
    procedure DepoisActBotaoLocalizar;virtual;
    property HandleCadastro:Integer read FHandleCadastro write SetHandleCadastro;
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
  end;

var
  FormPadraoCad2: TFormPadraoCad2;

implementation

uses uDMProduto;

{$R *.dfm}

{ TFormPadraoCad2 }

procedure TFormPadraoCad2.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
  //na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := true;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := true;
    BtnCancela.Enabled := true;
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
  end;
end;


procedure TFormPadraoCad2.Act_Btn_NovoExecute(Sender: TObject);
var vContinua:Boolean;
begin
  AntesActBotaoNovo(vContinua);
  if not vContinua then
    Exit;
  cdsCadastro.Close;
  qryCadastro.ParamByName('ID').AsInteger := FHandleCadastro;
  cdsCadastro.Open;
  cdsCadastro.Insert;
  DepoisActBotaoNovo;
end;



procedure TFormPadraoCad2.AntesActBotaoAlterar(var pContinua:Boolean);
begin
  pContinua := True;
end;

procedure TFormPadraoCad2.AntesActBotaoCancelar;
begin

end;

procedure TFormPadraoCad2.AntesActBotaoExcluir;
begin

end;

procedure TFormPadraoCad2.AntesActBotaoImprimir;
begin

end;

procedure TFormPadraoCad2.AntesActBotaoInserir;
begin

end;

procedure TFormPadraoCad2.AntesActBotaoLocalizar;
begin

end;

procedure TFormPadraoCad2.AntesActBotaoNovo(var pContinua:Boolean);
begin
  pContinua := True;
end;

procedure TFormPadraoCad2.AntesActBotaoSair;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoAlterar;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoCancelar;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoExcluir;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoImprimir;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoInserir;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoLocalizar;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoNovo;
begin

end;

procedure TFormPadraoCad2.DepoisActBotaoSair;
begin

end;

procedure TFormPadraoCad2.SetHandleCadastro(const Value: Integer);
begin
  FHandleCadastro := Value;
end;

procedure TFormPadraoCad2.Act_Btn_AlterarExecute(Sender: TObject);
var vContinua : Boolean;
begin
  AntesActBotaoAlterar(vContinua);
  if not vContinua then
    Exit;
  cdsCadastro.Close;
  qryCadastro.ParamByName('ID').AsInteger := FHandleCadastro;
  cdsCadastro.Open;
  DepoisActBotaoAlterar;
end;

end.
