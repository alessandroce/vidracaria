unit uDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, ExtCtrls, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ComCtrls, DBCtrls, jpeg, ImgList, ActnList, Extens, uFerramentas,
  frxIBXComponents, frxDBSet;

type
  TFDuplicata = class(TFPadrao)
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
    Label38: TLabel;
    Label39: TLabel;
    SpeedButton2: TSpeedButton;
    Label40: TLabel;
    Label41: TLabel;
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
    btnImprimir: TBitBtn;
    qEmitente: TIBQuery;
    qEmitenteEMIT_ID: TIntegerField;
    qEmitenteEMIT_RAZAOSOCIAL: TIBStringField;
    qEmitenteEMIT_RESPONSAVEL: TIBStringField;
    qEmitenteEMIT_ENDERECO: TIBStringField;
    qEmitenteEMIT_BAIRRO: TIBStringField;
    qEmitenteEMIT_MUNICIPIO: TIBStringField;
    qEmitenteEMIT_CEP: TIBStringField;
    qEmitenteEMIT_ESTADO: TIBStringField;
    qEmitenteEMIT_CNPJ: TIBStringField;
    qEmitenteEMIT_IE: TIBStringField;
    qEmitenteEMIT_TELEFONE: TIBStringField;
    qEmitenteEDIT_EMAIL: TIBStringField;
    dsEmitente: TDataSource;
    Act_Btn_Visualizar: TAction;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_VisualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_FaturaValor();
  end;

var
  FDuplicata: TFDuplicata;

implementation

{$R *.dfm}

procedure TFDuplicata.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_Escape then
  self.close;
end;

procedure TFDuplicata.Edit10Exit(Sender: TObject);
begin
  inherited;
  Fnc_FaturaValor();
end;

procedure TFDuplicata.Edit12Exit(Sender: TObject);
begin
  inherited;
  if Edit12.Text = '' then
  Edit12.Text := '0';
  Edit12.Text := StringReplace(Edit12.Text, '.', '', [rfReplaceAll]);
  Edit9.text := Extens.Extenso(strtofloat(Edit12.Text));
  Edit12.Text:= Format('%n', [strtofloat(Edit12.Text)]);
end;

procedure TFDuplicata.DateTimePicker1Change(Sender: TObject);
begin
  inherited;
  if DateTimePicker1.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFDuplicata.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFDuplicata.FormShow(Sender: TObject);
var
    strReplace:String;
begin
  inherited;
  qEmitente.Open;
  lblData.Caption      := DateToStr(Date);
  DateTimePicker1.Date := Date;
  Label35.Caption      := qEmitenteEMIT_CEP.AsString + ' - ' + qEmitenteEMIT_MUNICIPIO.AsString + '-' + qEmitenteEMIT_ESTADO.AsString;
  Label38.Caption      := 'RECONHEÇO(EMOS) A EXATIDÃO DESTA DUPLICATA DE VENDA MERCANTIL/PRESTAÇÃO DE SERVIÇOS, NA IMPORTÂNCIA ACIMA';
  strReplace           := 'QUE PAGAMOS(REMOS) À '+qEmitenteEMIT_RAZAOSOCIAL.AsString+
                          ', OU À SUA ORDEM NA PRAÇA E VENCIMENTOS INDICADOS.';
  Label39.Caption := StringReplace(strReplace, '&', '&&', [rfReplaceAll])
end;

procedure TFDuplicata.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Self.Close
end;

procedure TFDuplicata.Fnc_FaturaValor;
begin
  if Edit10.Text = '' then
    Edit10.Text := '0';
  Edit10.Text := StringReplace(Edit10.Text, '.', '', [rfReplaceAll]);
  Edit9.text := Extens.Extenso(strtofloat(Edit10.Text));
  Edit10.Text:= Format('%n', [strtofloat(Edit10.Text)]);
  Edit12.Text := Edit10.Text;
end;

procedure TFDuplicata.Act_Btn_SairExecute(Sender: TObject);
begin
  inherited;
  Self.Close
end;

procedure TFDuplicata.Act_Btn_VisualizarExecute(Sender: TObject);
begin
  inherited;
(*
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA','FIN001 - Duplicata') then
      ImprimirAlterarRelatorio(0,'FIN001 - Duplicata','Duplicata');
  end
  else
  begin
  end;
*)  
end;

end.
