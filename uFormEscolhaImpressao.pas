unit uFormEscolhaImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls;

type
  TFormEscolhaImpressao = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    origemForm : String;
  end;

var
  FormEscolhaImpressao: TFormEscolhaImpressao;

implementation

uses uDMLogin, uFormOrcamentoPedidoPrint_Cliente,
  uFormOrcamentoPedidoPrint, uFormOrcamentoPedidoPrint_Fabrica;


{$R *.dfm}

procedure TFormEscolhaImpressao.SpeedButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormEscolhaImpressao.SpeedButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
  begin
    Try
      Application.CreateForm(TFormOrcamentoPedidoPrint_Cliente, FormOrcamentoPedidoPrint_Cliente);
      FormOrcamentoPedidoPrint_Cliente.OrcamentoPedido.Preview;
    Finally
      FormOrcamentoPedidoPrint_Cliente.Free;
    End;
  end;

  if RadioButton2.Checked = true then
  begin
    Try
      Application.CreateForm(TFormOrcamentoPedidoPrint_Fabrica, FormOrcamentoPedidoPrint_Fabrica);
      FormOrcamentoPedidoPrint_Fabrica.OrcamentoPedido.Preview;
    Finally
      FormOrcamentoPedidoPrint_Fabrica.Free;
    End;
  end;

  if RadioButton3.Checked = true then
  begin
    Try
      Application.CreateForm(TFormOrcamentoPedidoPrint, FormOrcamentoPedidoPrint);
      FormOrcamentoPedidoPrint.OrcamentoPedido.Preview;
    Finally
      FormOrcamentoPedidoPrint.Free;
    End;
  end;
  
end;

procedure TFormEscolhaImpressao.FormShow(Sender: TObject);
begin
  RadioButton1.SetFocus;
  if DMLogin.cdsDadosLoginUSU_LOGIN_TIPO.AsString = 'MASTER' then
  begin
    RadioButton3.Visible := true;
    RadioButton1.Left := 12;
    RadioButton2.Left := 88;
    RadioButton3.Left := 180;
  end
  else
  begin
    RadioButton1.Left := 52;
    RadioButton2.Left := 144;
    RadioButton3.Visible := false;
  end;
end;

end.
