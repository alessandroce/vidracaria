unit uFormOrcamentoPedidoPrint_Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormOrcamentoPedidoPrint_Cliente = class(TForm)
    OrcamentoPedido: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
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
    RLBand4: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLLabel24: TRLLabel;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLGroup1: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    RLBand9: TRLBand;
    RLLabel12: TRLLabel;
    RLDBText20: TRLDBText;
    RLGroup2: TRLGroup;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText18: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLBand10: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLBand11: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel44: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLDBText21: TRLDBText;
    procedure OrcamentoPedidoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrcamentoPedidoPrint_Cliente: TFormOrcamentoPedidoPrint_Cliente;

implementation

uses uDMLogin, uDMOrcamentoPedidoPrint, uCadOrcamentoPedido;

{$R *.dfm}

procedure TFormOrcamentoPedidoPrint_Cliente.OrcamentoPedidoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DMOrcamentoPedidoPrint.cdsViewOrcPedido_SomaPrint.Close;
  DMOrcamentoPedidoPrint.qryViewOrcPedido_SomaPrint.ParamByName('VE_ORCPED_ID').AsInteger := StrToInt(FormCadOrcamentoPedido.lblNumeroOrcPedido.Caption);
  DMOrcamentoPedidoPrint.cdsViewOrcPedido_SomaPrint.Open;

  DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.Close;
  DMOrcamentoPedidoPrint.qryViewOrcamentoPedidoPrint.ParamByName('VE_ORCPED_ID').AsInteger := StrToInt(FormCadOrcamentoPedido.lblNumeroOrcPedido.Caption);
  DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.Open;

//  RLLabel13.Caption := FormCadOrcamentoPedido.Label27.Caption;

  RLLabel38.Caption := FormCadOrcamentoPedido.lblTotalPedido.Caption;
  RLLabel39.Caption := FormCadOrcamentoPedido.lblTotalAcessorio.Caption;
  RLLabel40.Caption := IntToStr(DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrintVS_ORCPED_DESCONTO.AsInteger);
  RLLabel43.Caption := DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrintVS_ORCPED_PORCENTAGEM.AsString;
  RLLabel45.Caption := DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.FindField('VS_USU_NOME').AsString;
  RLLabel49.Caption := 'Parcelado em '+IntToStr(DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.FindField('VS_ORCPED_PARCELADOEM').AsInteger)+'x no valor de ';
  RLLabel48.Caption := FloatToStr(DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.FindField('VS_ORCPED_VALORPARCELA').AsFloat);
end;

procedure TFormOrcamentoPedidoPrint_Cliente.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.First;
end;

end.
