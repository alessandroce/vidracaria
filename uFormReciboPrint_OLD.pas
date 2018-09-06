unit uFormReciboPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormReciboPrint = class(TForm)
    Recibo: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel22: TRLLabel;
    procedure ReciboBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReciboPrint: TFormReciboPrint;

implementation

uses uFormRecibo_ContasReceber, StdCtrls;

{$R *.dfm}

procedure TFormReciboPrint.ReciboBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel3.Caption := FormRecibo_ContasReceber.Edit1.Text;
  RLLabel5.Caption := FormRecibo_ContasReceber.Edit2.Text;
  RLLabel8.Caption := FormRecibo_ContasReceber.Edit3.Text;
  RLLabel9.Caption := FormRecibo_ContasReceber.Edit4.Text;
  RLLabel11.Caption := FormRecibo_ContasReceber.Label7.Caption;
end;

end.
