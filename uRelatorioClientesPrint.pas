unit uRelatorioClientesPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, AppEvnts;

type
  TFormRelatorioClientesPrint = class(TForm)
    RelatorioClientes: TRLReport;
    RLBand1: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel11: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel15: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClientesPrint: TFormRelatorioClientesPrint;

implementation

uses uDMRelatorioClientes, uDMClientes;

{$R *.dfm}

end.
