unit uFormPadraoCad3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ActnList, ImgList, Buttons, ExtCtrls,
  ToolWin;

type
  TFormPadraoCad3 = class(TForm)
    ToolBar1: TToolBar;
    Bevel1: TBevel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnSair: TSpeedButton;
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
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    Bevel3: TBevel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPadraoCad3: TFormPadraoCad3;

implementation

{$R *.dfm}

end.
