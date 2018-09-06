unit uRelatorioProdutoPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormRelatorioProdutoPrint = class(TForm)
    RelatorioProduto: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel11: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutoPrint: TFormRelatorioProdutoPrint;

implementation

uses uDMRelatorioProduto;

{$R *.dfm}

end.
