unit uFormRelatorioOrdemServicoPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLPDFFilter;

type
  TFormRelatorioOrdemServicoPrint = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand3: TRLBand;
    RLDBText7: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand9: TRLBand;
    RLLabel25: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText13: TRLDBText;
    RLBand10: TRLBand;
    RLLabel33: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLBand12: TRLBand;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText25: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLBand4: TRLBand;
    RLDBMemo2: TRLDBMemo;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    procedure FormActivate(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    relatorioId : integer;
  end;

var
  FormRelatorioOrdemServicoPrint: TFormRelatorioOrdemServicoPrint;

  implementation

uses udmRelatorioOrdemServico, uDMOrdemServico, DB, uBibliotecaFuncoes,
  UDMDuplicata;

{$R *.dfm}


procedure TFormRelatorioOrdemServicoPrint.FormActivate(Sender: TObject);
begin
  //DMRelatorioOrdemServico.cdsViewRelatorioOrdemServico.Open;
end;

procedure TFormRelatorioOrdemServicoPrint.RLReport1BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
var
    var_totalservico,
    var_totalestoque,
    var_total : Double;
begin
  Fnc_configImpressao(RLReport1);
  DMDuplicata.cdsViewDuplicata_Emitente.Close;
  DMDuplicata.qryViewDuplicata_Emitente.ParamByName('ID').AsInteger := 1;
  DMDuplicata.cdsViewDuplicata_Emitente.Open;

  //recupera dados do relatorio
  DMRelatorioOrdemServico.cdsViewRelatorioOrdemServico.Close;
  DMRelatorioOrdemServico.qryViewRelatorioOrdemServico.ParamByName('OS_ID').AsInteger := relatorioId;
  DMRelatorioOrdemServico.cdsViewRelatorioOrdemServico.Open;
  //se a SITUAÇÂO da ordem de serviço não estã ENCERRADA o campo datasaida é NULL
  //por isso label de 'Entregue em' fica em branco
  if DMRelatorioOrdemServico.cdsViewRelatorioOrdemServicoDATA_SAIDA.AsDateTime = 0 then
  RLLabel41.Caption := ''
  else
  RLLabel41.Caption := FormatDateTime('dd/mm/yyyy',DMRelatorioOrdemServico.cdsViewRelatorioOrdemServicoDATA_SAIDA.AsDateTime);

  if DMRelatorioOrdemServico.cdsViewRelatorioOrdemServicoDATA_SAIDA.AsDateTime = 0 then
  RLLabel42.Caption := ''
  else
  RLLabel42.Caption := FormatDateTime(' hh:nn:ss',DMRelatorioOrdemServico.cdsViewRelatorioOrdemServicoDATA_SAIDA.AsDateTime);

end;

procedure TFormRelatorioOrdemServicoPrint.RLBand9BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
DMRelatorioOrdemServico.cdsViewRelatorioOrdemServico.First;
end;

end.
