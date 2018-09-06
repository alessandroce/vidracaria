unit uFormRelatorioPedidosPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormRelatorioPedidosPrint = class(TForm)
    RLReport1: TRLReport;
    RLBand8: TRLBand;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand7: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPedidosPrint: TFormRelatorioPedidosPrint;

implementation

uses uDMRelatorioPedido, uFormRelatorioPedidos, StdCtrls;

{$R *.dfm}

procedure TFormRelatorioPedidosPrint.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DMRelatorioPedido.cdsViewRelatorioPedido_Busca.First;
  RLLabel3.Caption := 'Período de '+DateToStr(FormRelatorioPedidos.DateTimePicker1.Date)+' até '+DateToStr(FormRelatorioPedidos.DateTimePicker2.Date);
  RLLabel1.Caption := 'Total R$ '+FormRelatorioPedidos.Label6.Caption;

end;

end.
