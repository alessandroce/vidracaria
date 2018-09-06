unit uFormRelatorioOrdemServicoPrint_Geral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormRelatorioOrdemServicoPrintGeral = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrdemServicoPrintGeral: TFormRelatorioOrdemServicoPrintGeral;

implementation

uses uFormBuscaOrdemServico, uDMEmitente;

{$R *.dfm}

procedure TFormRelatorioOrdemServicoPrintGeral.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DMEmitente.cdsViewEmitente.Close;
  DMEmitente.qryViewEmitente.ParamByName('ID').AsInteger := 1;
  DMEmitente.cdsViewEmitente.Open;
  RLLabel22.Caption := DMEmitente.cdsViewEmitenteEMIT_CEP.AsString + ' - ' +
                       DMEmitente.cdsViewEmitenteEMIT_MUNICIPIO.AsString + '-' +
                       DMEmitente.cdsViewEmitenteEMIT_ESTADO.AsString;
  RLLabel17.Caption := FormBuscaOrdemServico.Label7.Caption;
  RLLabel11.Caption := 'Filtros usados: '+FormBuscaOrdemServico.Label9.Caption;
end;

end.
