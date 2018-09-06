unit uFormRecibo_ContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFormRecibo_ContasReceber = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibo_ContasReceber: TFormRecibo_ContasReceber;

implementation

uses {uFormBuscaContasReceber, uDMContasReceber,} DB, Extens,
  uFormReciboPrint;

{$R *.dfm}

function NomedoMes(dData:TDatetime):string;
{Retorna o nome do mea, em extenso, de uma determinada data}
var
  nAno,nMes,nDia:word;
  cMes:array[1..12] of string;
begin
cMes[01] := 'Janeiro';
cMes[02] := 'Fevereiro';
cMes[03] := 'Março';
cMes[04] := 'Abril';
cMes[05] := 'Maio';
cMes[06] := 'Junho';
cMes[07] := 'Julho';
cMes[08] := 'Agosto';
cMes[09] := 'Setembro';
cMes[10] := 'Outubro';
cMes[11] := 'Novembro';
cMes[12] := 'Dezembro';
decodedate(dData,nAno,nMes,nDia);
if (nMes>=1) and (nMes<=13)then
    begin
    Result:=cMes[nMes];
    end
else
    begin
    Result:='';
    end;
end;

procedure TFormRecibo_ContasReceber.FormShow(Sender: TObject);
var
var_NomeMes, var_diaAtual, var_anoAtual : string;
begin
//dia atual
var_diaAtual := DateToStr(Date);
Delete(var_diaAtual, 3,10);
// no do mes atual
var_NomeMes := NomedoMes(Date);
// ano atual
var_anoAtual := DateToStr(Date);
Delete(var_anoAtual, 1,6);
Label7.Caption := 'Londrina, ' + var_diaAtual + ' de ' + var_NomeMes + ' de ' + var_anoAtual;

{  if FormBuscaContasReceber.acao = 'RECIBO' then
  begin
  Edit1.Text := FormatFloat('0.00',DMContasReceber.cdsViewContasReceber_BuscaCTR_VALOR.AsFloat);
  Edit2.Text := DMContasReceber.cdsViewContasReceber_BuscaRAZAO_SOCIAL.AsString;
  Edit4.Text := DMContasReceber.cdsViewContasReceber_BuscaCTR_HISTORICO.AsString + ' - doc ' + DMContasReceber.cdsViewContasReceber_BuscaCTR_DOC.AsString;
  //coloca o valor em extenso
  Edit3.text := Extens.Extenso(strtofloat(Edit1.Text));
  Edit1.Text:= format('%n', [strtofloat(Edit1.Text)]);
  end;}

end;

procedure TFormRecibo_ContasReceber.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
  Edit3.text := Extens.Extenso(strtofloat(Edit1.Text));
  Edit1.Text:= Format('%n', [strtofloat(Edit1.Text)]);
  end;
end;

procedure TFormRecibo_ContasReceber.SpeedButton2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFormRecibo_ContasReceber.SpeedButton1Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') then
  begin
    MessageBox(Application.Handle,'O preenchimento de todos os dados é obrigatório! ', 'Informação', MB_ICONINFORMATION + MB_OK + MB_SYSTEMMODAL );
    Edit2.SetFocus;
    Exit;
  end;
  try
    Application.CreateForm(TFormReciboPrint, FormReciboPrint);
    FormReciboPrint.Recibo.Preview;
  Finally
    FormReciboPrint.Free
  end;
end;

procedure TFormRecibo_ContasReceber.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in ['0'..'9', #8,#13,  #44  ])  then
    key := #0;
end;

end.
