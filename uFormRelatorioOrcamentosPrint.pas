unit uFormRelatorioOrcamentosPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFormRelatorioOrcamentoPrint = class(TForm)
    RLReport1: TRLReport;
    RLBand8: TRLBand;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLGroup2: TRLGroup;
    RLBand7: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel5: TRLLabel;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrcamentoPrint: TFormRelatorioOrcamentoPrint;

implementation

uses uDMRelatorioOrcamento, uFormRelatorioOrcamentos, StdCtrls;

{$R *.dfm}

procedure TFormRelatorioOrcamentoPrint.RLReport1BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
  var
      tipoOrc : String;
begin
  DMRelatorioOrcamento.cdsViewRelatorioOrcamento.First;
  RLLabel1.Caption := 'TOTAL R$ '+FormRelatorioOrcamentos.Label10.Caption;
  //fechado
  if FormRelatorioOrcamentos.RadioButton1.Checked = true then
  begin
    tipoOrc := 'Fechado';
    RLLabel7.Caption := 'Data Pedido';
    RLDBText4.DataField := 'DATA_PED';



  end;
  //aberto
  if FormRelatorioOrcamentos.RadioButton2.Checked = true then
  begin
    tipoOrc := 'Aberto';
    RLLabel7.Caption := 'Data Orçamento';
    RLDBText4.DataField := 'DATA_ORC';
    //1º campo
    RLLabel12.Caption := 'Nº Orc.';
    RLDBText13.DataField := 'ORC_ID';
    //2º campo
    RLLabel4.Caption := 'Cliente';
    RLDBText1.DataField := 'CLI_NOME';

    RLLabel17.Visible := false;
    RLDBText14.Visible := false;



  end;
  RLLabel3.Caption := tipoOrc+'   |   Período de '+DateToStr(FormRelatorioOrcamentos.DateTimePicker1.DateTime)+' até '+DateToStr(FormRelatorioOrcamentos.DateTimePicker2.DateTime);
end;

end.
