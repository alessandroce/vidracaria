unit uPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDMConexao, DB, ExtCtrls, ImgList, ActnList, frxIBXComponents, frxClass,
  ComCtrls;

type
  TFPadrao = class(TForm)
    pnBarraForm: TPanel;
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
    ImageList1: TImageList;
    frxReport1: TfrxReport;
    frxIBXComponents1: TfrxIBXComponents;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FPnBarraForm: String;
    procedure setFPnBarraForm(const Value: String);
  public
    { Public declarations }
    property PnBarraFormCaption : String read FPnBarraForm write setFPnBarraForm;
  end;

var
  FPadrao: TFPadrao;

implementation

//uses uClassAvisos, Extens, uFerramentas;

{$R *.dfm}

procedure TFPadrao.FormShow(Sender: TObject);
begin
  Caption := ':: sistema de gestão comercial ::';
end;

procedure TFPadrao.setFPnBarraForm(const Value: String);
begin
  FPnBarraForm := Value;
  PnBarraForm.Caption := ':: '+FPnBarraForm+' ::';
end;

end.
