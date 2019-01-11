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
    btCancelar: TBitBtn;
    btOK: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure btOKClick(Sender: TObject);
    procedure rbParcialClick(Sender: TObject);
    procedure rbTotalClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TFTipoBaixaMovFinanceiro.btOKClick(Sender: TObject);
begin
  if not(rbParcial.Checked or rbTotal.Checked) then
  begin
    Aviso('Selecione o Tipo de Baixa.');
  end
  else
  begin
    FCancelado := false;
    Close;
  end;
end;

procedure TFTipoBaixaMovFinanceiro.rbParcialClick(Sender: TObject);
begin
  FTipoBaixa := 'P';
end;

procedure TFTipoBaixaMovFinanceiro.rbTotalClick(Sender: TObject);
begin
  FTipoBaixa := 'T';
end;

procedure TFTipoBaixaMovFinanceiro.btCancelarClick(Sender: TObject);
begin
  FTipoBaixa := '';
  Close;
end;

procedure TFTipoBaixaMovFinanceiro.FormShow(Sender: TObject);
begin
  FCancelado := true;
end;

end.
