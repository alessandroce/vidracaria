unit uFormDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, jpeg, RLReport, DBCtrls, ComCtrls;

type
  TFormDuplicata = class(TForm)
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Image1: TImage;
    lblData: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label35: TLabel;
    DBText3: TDBText;
    Label36: TLabel;
    DBText4: TDBText;
    Label37: TLabel;
    DBText5: TDBText;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit15: TEdit;
    Edit17: TEdit;
    Edit16: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    Edit9: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    btnImprimir: TBitBtn;
    SpeedButton2: TSpeedButton;
    Label40: TLabel;
    Label41: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_FaturaValor();
  end;

var
  FormDuplicata: TFormDuplicata;

implementation

uses uFormDuplicataPrint, UDMDuplicata, uDMClientes, Extens, uBibliotecaFuncoes, uPrincipal;

{$R *.dfm}

procedure TFormDuplicata.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
  self.close;
end;

procedure TFormDuplicata.btnImprimirClick(Sender: TObject);
begin
  //if Application.MessageBox('Deseja imprimir?','Informação',MB_YESNO+MB_ICONQUESTION)=ID_YES then
  //begin
    try
      Application.CreateForm(TFormDuplicataPrint, FormDuplicataPrint);
      FormDuplicataPrint.DuplicataPrint.Preview;
    Finally
      FormDuplicataPrint.Free
    end;
  //end;
end;

procedure TFormDuplicata.Edit10Exit(Sender: TObject);
begin
  Fnc_FaturaValor();
end;

procedure TFormDuplicata.Edit12Exit(Sender: TObject);
begin
  if Edit12.Text = '' then
  Edit12.Text := '0';
  //tira o ponto da string para validar float
  Edit12.Text := StringReplace(Edit12.Text, '.', '', [rfReplaceAll]);
  Edit9.text := Extens.Extenso(strtofloat(Edit12.Text));
  Edit12.Text:= Format('%n', [strtofloat(Edit12.Text)]);
end;

procedure TFormDuplicata.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFormDuplicata.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormDuplicata.FormShow(Sender: TObject);
var
    strReplace:String;
begin
  lblData.Caption := DateToStr(Date);
  DateTimePicker1.Date := Date;
  DMDuplicata.cdsViewDuplicata_Emitente.Close;
  DMDuplicata.qryViewDuplicata_Emitente.ParamByName('ID').AsInteger := 1;
  DMDuplicata.cdsViewDuplicata_Emitente.Open;
  Label35.Caption := DMDuplicata.cdsViewDuplicata_EmitenteEMIT_CEP.AsString + ' - ' +
                       DMDuplicata.cdsViewDuplicata_EmitenteEMIT_MUNICIPIO.AsString + '-' +
                       DMDuplicata.cdsViewDuplicata_EmitenteEMIT_ESTADO.AsString;
  Label38.Caption := 'RECONHEÇO(EMOS) A EXATIDÃO DESTA DUPLICATA DE VENDA MERCANTIL/PRESTAÇÃO DE SERVIÇOS, NA IMPORTÂNCIA ACIMA';
  strReplace := 'QUE PAGAMOS(REMOS) À '+DMDuplicata.cdsViewDuplicata_EmitenteEMIT_RAZAOSOCIAL.AsString+
                     ', OU À SUA ORDEM NA PRAÇA E VENCIMENTOS INDICADOS.';
  Label39.Caption := StringReplace(strReplace, '&', '&&', [rfReplaceAll])
end;

procedure TFormDuplicata.Fnc_FaturaValor;
begin
  if Edit10.Text = '' then
  Edit10.Text := '0';
  //tira o ponto da string para validar float
  Edit10.Text := StringReplace(Edit10.Text, '.', '', [rfReplaceAll]);
  Edit9.text := Extens.Extenso(strtofloat(Edit10.Text));
  Edit10.Text:= Format('%n', [strtofloat(Edit10.Text)]);
  Edit12.Text := Edit10.Text;
end;

procedure TFormDuplicata.SpeedButton2Click(Sender: TObject);
begin
Self.Close
end;

end.
