unit uFormConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  TFormConfiguracoes = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfiguracoes: TFormConfiguracoes;

implementation

uses uDMConfiguracoes;

{$R *.dfm}

procedure TFormConfiguracoes.FormShow(Sender: TObject);
begin
  DMConfiguracoes.cdsDadosConfiguracoes.Close;
  DMConfiguracoes.qryDadosConfiguracoes.ParamByName('ID').AsInteger := 1;
  DMConfiguracoes.cdsDadosConfiguracoes.Open;
  DMConfiguracoes.cdsDadosConfiguracoes.Edit;
  DBEdit1.SetFocus;
end;

procedure TFormConfiguracoes.BitBtn2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFormConfiguracoes.BitBtn1Click(Sender: TObject);
begin
  DMConfiguracoes.cdsDadosConfiguracoes.ApplyUpdates(-1);
  DMConfiguracoes.cdsDadosConfiguracoes.Close;
  DMConfiguracoes.qryDadosConfiguracoes.ParamByName('ID').AsInteger := 1;
  DMConfiguracoes.cdsDadosConfiguracoes.Open;
  DMConfiguracoes.cdsDadosConfiguracoes.Edit;
  MessageBox(Application.Handle,' Gravado com sucesso! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  DBEdit1.SetFocus;
end;

procedure TFormConfiguracoes.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
BitBtn1.SetFocus;
end;
end.
