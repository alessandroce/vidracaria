unit uFormPedidoSelecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TFormPedidoSelecao = class(TForm)
    GroupBox1: TGroupBox;
    StatusBar1: TStatusBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidoSelecao: TFormPedidoSelecao;

implementation

uses uDMPedidoPrint, uFormPedido, uFormPedidoPrint,
  uFormPedidoClientePrint;

{$R *.dfm}

procedure TFormPedidoSelecao.BitBtn1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormPedidoSelecao.BitBtn2Click(Sender: TObject);
begin
  DMPedidoPrint.cdsViewPedidoPrint.Close;
  DMPedidoPrint.qryViewPedidoPrint.ParamByName('ID').AsInteger := StrToInt(FormPedido.Label8.Caption);
  DMPedidoPrint.cdsViewPedidoPrint.Open;
  if RadioButton1.Checked = true then
  begin
    try
      Application.CreateForm(TFormPedidoClientePrint, FormPedidoClientePrint);
      FormPedidoClientePrint.PedidoCliente.Preview;
    Finally
      FormPedidoClientePrint.Free
    end;
  end;
  if RadioButton2.Checked = true then
  begin
    try
      Application.CreateForm(TFormPedidoPrint, FormPedidoPrint);
      FormPedidoPrint.Pedido.Preview;
    Finally
      FormPedidoPrint.Free
    end;
  end;
end;

procedure TFormPedidoSelecao.RadioButton2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  BitBtn2.Click;
end;

procedure TFormPedidoSelecao.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  BitBtn2.Click;
end;

end.
