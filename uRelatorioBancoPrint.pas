unit uRelatorioBancoPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormRelatorioBancoPrint = class(TForm)
    RelatorioBanco: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel11: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBancoPrint: TFormRelatorioBancoPrint;

implementation

uses uDMRelatorioBanco;

{$R *.dfm}

end.
