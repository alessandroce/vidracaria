unit uFormPadraoCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin, StdCtrls,
  Buttons;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheetFicha: TTabSheet;
    PanelEntrada: TPanel;
    PanelFicha: TPanel;
    StatusBar1: TStatusBar;
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
    BtnSair: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    ToolButton6: TToolButton;
    ToolButton1: TToolButton;
    procedure BtnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;


var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.BtnSairClick(Sender: TObject);
begin
  Self.Close;
end;

end.
