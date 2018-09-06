unit uRelatorioTipoProdutoPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormRelatorioTipoProdutoPrint = class(TForm)
    RelatorioTipoProduto: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel11: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioTipoProdutoPrint: TFormRelatorioTipoProdutoPrint;

implementation

uses uDMRelatorioTipoProduto;

{$R *.dfm}

end.
