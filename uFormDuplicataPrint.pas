unit uFormDuplicataPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, RLReport, StdCtrls, ExtCtrls;

type
  TFormDuplicataPrint = class(TForm)
    DuplicataPrint: TRLReport;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel17: TRLLabel;
    lblDataPrint: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    procedure DuplicataPrintBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDuplicataPrint: TFormDuplicataPrint;

implementation

uses uFormDuplicata, UDMDuplicata;

{$R *.dfm}

procedure TFormDuplicataPrint.DuplicataPrintBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var strReplace:String;
begin
  //DMDuplicata.cdsViewDuplicata_Emitente.Close;
  //DMDuplicata.qryViewDuplicata_Emitente.ParamByName('ID').AsInteger := 1;
  //DMDuplicata.cdsViewDuplicata_Emitente.Open;
  RLLabel22.Caption := DMDuplicata.cdsViewDuplicata_EmitenteEMIT_CEP.AsString + ' - ' +
                       DMDuplicata.cdsViewDuplicata_EmitenteEMIT_MUNICIPIO.AsString + '-' +
                       DMDuplicata.cdsViewDuplicata_EmitenteEMIT_ESTADO.AsString;
  RLLabel18.Caption := 'RECONHE�O(EMOS) A EXATID�O DESTA DUPLICATA DE VENDA MERCANTIL/PRESTA��O DE SERVI�OS, NA IMPORT�NCIA ACIMA';
  {strReplace}RLLabel19.Caption := 'QUE PAGAMOS(REMOS) � '+DMDuplicata.cdsViewDuplicata_EmitenteEMIT_RAZAOSOCIAL.AsString+
                     ', OU � SUA ORDEM NA PRA�A E VENCIMENTOS INDICADOS.';
  //RLLabel19.Caption := StringReplace(strReplace, '&', '&&', [rfReplaceAll]);

  lblDataPrint.Caption := FormDuplicata.lblData.Caption;
  RLLabel1.Caption  := FormDuplicata.Edit10.Text;
  RLLabel2.Caption  := FormDuplicata.Edit11.Text;
  RLLabel3.Caption  := FormDuplicata.Edit12.Text;
  RLLabel4.Caption  := FormDuplicata.Edit13.Text;
  //RLLabel5.Caption  := FormDuplicata.Edit14.Text;
  RLLabel6.Caption  := FormDuplicata.Edit15.Text;
  RLLabel7.Caption  := FormDuplicata.Edit16.Text;

  RLLabel8.Caption  := FormDuplicata.Edit1.Text;
  RLLabel9.Caption  := FormDuplicata.Edit2.Text;
  RLLabel10.Caption := FormDuplicata.Edit3.Text;
  RLLabel11.Caption := FormDuplicata.Edit7.Text;
  RLLabel12.Caption := FormDuplicata.Edit8.Text;

  RLLabel13.Caption := FormDuplicata.Edit4.Text;
  RLLabel14.Caption := FormDuplicata.Edit5.Text;
  RLLabel15.Caption := FormDuplicata.Edit6.Text;
  RLLabel16.Caption := FormDuplicata.Edit9.Text;
  RLLabel51.Caption := FormDuplicata.Edit17.Text;
end;

end.
