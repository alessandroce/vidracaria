unit uFormDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, jpeg, RLReport;

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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Image1: TImage;
    lblData: TLabel;
    btnImprimir: TBitBtn;
    Memo1: TMemo;
    Label1: TLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    Edit17: TEdit;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDuplicata: TFormDuplicata;

implementation

uses uFormDuplicataPrint;

{$R *.dfm}

procedure TFormDuplicata.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    self.close;
  end;
end;

procedure TFormDuplicata.FormActivate(Sender: TObject);
begin
  lblData.Caption := DateToStr(Date);
end;

procedure TFormDuplicata.btnImprimirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja imprimir?','Informação',MB_YESNO+MB_ICONQUESTION)=ID_YES then
  begin
    try
      Application.CreateForm(TFormDuplicataPrint, FormDuplicataPrint);
      FormDuplicataPrint.DuplicataPrint.Preview;
    Finally
      FormDuplicataPrint.Free
    end;
  end;
end;

end.
