unit uFormPadraoBusca2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ActnList, ImgList, Buttons, ExtCtrls,
  ToolWin;

type
  TFormPadraoBusca2 = class(TForm)
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
    Bevel2: TBevel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    Bevel3: TBevel;
    ToolBar2: TToolBar;
    Bevel1: TBevel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnSair: TSpeedButton;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_BarraTarefasBotaoAtivo(botao: string);
  end;

var
  FormPadraoBusca2: TFormPadraoBusca2;

implementation

{$R *.dfm}

{ TFormPadraoBusca2 }

procedure TFormPadraoBusca2.Fnc_BarraTarefasBotaoAtivo(botao: string);
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

end.
