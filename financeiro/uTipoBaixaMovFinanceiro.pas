unit uTipoBaixaMovFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFTipoBaixaMovFinanceiro = class(TForm)
    GroupBox1: TGroupBox;
    rbParcial: TRadioButton;
    rbTotal: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure rbParcialClick(Sender: TObject);
    procedure rbTotalClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTipoBaixa : String;
    FCancelado : Boolean;
  end;

var
  FTipoBaixaMovFinanceiro: TFTipoBaixaMovFinanceiro;

implementation

uses UFerramentas, uClassAvisos;

{$R *.dfm}

procedure TFTipoBaixaMovFinanceiro.BitBtn2Click(Sender: TObject);
begin
  if not(rbParcial.Checked or rbTotal.Checked) then
    Aviso('Selecione o Tipo de Baixa.')
  else
    Close;
end;

procedure TFTipoBaixaMovFinanceiro.rbParcialClick(Sender: TObject);
begin
  FTipoBaixa := 'P';
end;

procedure TFTipoBaixaMovFinanceiro.rbTotalClick(Sender: TObject);
begin
  FTipoBaixa := 'T';
end;

procedure TFTipoBaixaMovFinanceiro.BitBtn1Click(Sender: TObject);
begin
  FTipoBaixa := '';
  Close;
end;

end.
