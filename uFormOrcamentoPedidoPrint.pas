unit uFormOrcamentoPedidoPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLPDFFilter;

type
  TFormOrcamentoPedidoPrint = class(TForm)
    OrcamentoPedido: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
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
    RLBand5: TRLBand;
    RLLabel24: TRLLabel;
    RLGroup1: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    RLLabel13: TRLLabel;
    RLGroup2: TRLGroup;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText18: TRLDBText;
    RLDBText21: TRLDBText;
    RLBand10: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLBand11: TRLBand;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel42: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText27: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel30: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand9: TRLBand;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel33: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLLabel34: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel43: TRLLabel;
    procedure OrcamentoPedidoBeforePrint(Sender: TObject;var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    FPodeImprimirValores: Boolean;
    procedure SetFPodeImprimirValores(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    FTotalPedido    : String;
    FTotalAcessorio : String;
    FDesconto       : String;
    FTotal          : String;
    FTotalVenda     : String;
    FBand1Titulo : String;
    FNumeroOrcPedido : Integer;
    FImprimeValores : Boolean;
    property PodeImprimirValores : Boolean read FPodeImprimirValores write SetFPodeImprimirValores;
  end;

var
  FormOrcamentoPedidoPrint: TFormOrcamentoPedidoPrint;

implementation

uses uDMOrcamentoPedidoPrint, uCadOrcamentoPedido, uDMOrcamentoPedido,DB;

{$R *.dfm}

procedure TFormOrcamentoPedidoPrint.OrcamentoPedidoBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.Close;
  DMOrcamentoPedidoPrint.qryViewOrcamentoPedidoPrint.ParamByName('VE_ORCPED_ID').AsInteger := FNumeroOrcPedido;
  DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.Open;


  
  PodeImprimirValores := FImprimeValores;
  RLLabel1.Caption  := FBand1Titulo;
  RLLabel38.Caption := FTotalPedido;
  RLLabel39.Caption := FTotalAcessorio;
  RLLabel40.Caption := FDesconto;
  RLLabel13.Caption := FTotal;
  RLLabel30.Caption := FTotalVenda;
end;

procedure TFormOrcamentoPedidoPrint.RLBand4BeforePrint(Sender: TObject;var PrintIt: Boolean);
begin
  DMOrcamentoPedidoPrint.cdsViewOrcamentoPedidoPrint.First;
end;

procedure TFormOrcamentoPedidoPrint.SetFPodeImprimirValores(const Value: Boolean);
begin
  FPodeImprimirValores := Value;
  if not Value then
  begin
    RLLabel35.Visible := Value;
    RLLabel38.Visible := Value;
    RLLabel36.Visible := Value;
    RLLabel39.Visible := Value;
    RLLabel37.Visible := Value;
    RLLabel40.Visible := Value;
    RLLabel42.Visible := Value;
    RLLabel13.Visible := Value;
    RLLabel12.Visible := Value;
    RLLabel30.Visible := Value;
  end;
end;

end.
