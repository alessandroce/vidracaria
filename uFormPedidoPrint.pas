unit uFormPedidoPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormPedidoPrint = class(TForm)
    Pedido: TRLReport;
    RLBand8: TRLBand;
    RLBand6: TRLBand;
    RLLabel19: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText19: TRLDBText;
    RLLabel22: TRLLabel;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText21: TRLDBText;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLGroup2: TRLGroup;
    RLBand7: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand5: TRLBand;
    RLLabel23: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLLabel24: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText22: TRLDBText;
    procedure PedidoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4AfterPrint(Sender: TObject);
    procedure RLGroup2AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidoPrint: TFormPedidoPrint;

implementation

uses UDMPedido, uDMPedidoPrint, uFormPedido;

{$R *.dfm}

procedure TFormPedidoPrint.PedidoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DMPedido.cdsViewPedidoItens_Soma.Close;
  DMPedido.cdsViewPedidoItens_Soma.Open;
end;

procedure TFormPedidoPrint.RLBand4AfterPrint(Sender: TObject);
begin
DMPedidoPrint.cdsViewPedidoPrint.First;
end;

procedure TFormPedidoPrint.RLGroup2AfterPrint(Sender: TObject);
begin
DMPedidoPrint.cdsViewPedidoPrint.First;
end;

end.
