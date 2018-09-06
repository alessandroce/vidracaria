unit uFormPedidoClientePrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormPedidoClientePrint = class(TForm)
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    PedidoCliente: TRLReport;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidoClientePrint: TFormPedidoClientePrint;

implementation

uses uDMPedidoPrint, uFormPedido, StdCtrls;

{$R *.dfm}

end.
