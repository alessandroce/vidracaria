unit uFormLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DBCtrls, ExtCtrls, DB, uDMConexao,
  IBCustomDataSet, IBQuery, uClassServidorIni, uClassAvisos, uFerramentas;

type
  TFormLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    qLogin: TIBQuery;
    qLoginUSU_LOGIN: TIBStringField;
    qLoginUSU_ID: TIntegerField;
    qLoginUSU_SENHA: TIBStringField;
    qLoginUSU_LOGIN_TIPO: TIBStringField;
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  var_usuarioLogado   : String;
  var_usuarioLogadoID : Integer;
  function Fnc_VerificaLoginUsuario(login:String; senha:String):String;
  end;

var
  FormLogin: TFormLogin;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TFormLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    Self.Close;
    FormPrincipal.Close;
  end;
end;

procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    selectnext(activecontrol,True,True);
    key := #0;
  end;
end;

function TFormLogin.Fnc_VerificaLoginUsuario(login, senha: String): String;
var svi : TServidorIni;
begin
  svi := TServidorIni.create;
  Sistema.LayoutRel := svi.Ler_ArquivoIni('SISTEMA','Layoutrel');
  qLogin.Close;
  qLogin.ParamByName('LOGIN').AsString := login;
  qLogin.ParamByName('SENHA').AsString := senha;
  qLogin.Open;

  Sistema.Login       := qLogin.FindField('USU_LOGIN').AsString;
  var_usuarioLogado   := qLogin.FindField('USU_LOGIN').AsString;
  var_usuarioLogadoID := qLogin.FindField('USU_ID').AsInteger;
  if qLogin.RecordCount < 1 then
    Result := 'Nome ou senha do usuário inválidos.'+#13+#13+'Se você esqueceu a senha consulte '+#13+'o administrador do sistema.'
  else
    Result := EmptyStr;
  end;

procedure TFormLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
    BitBtn1.Click;
  end;
end;

procedure TFormLogin.BitBtn1Click(Sender: TObject);
var
  sMsg : String;
begin
  if not(Continua(Edit1.Text<>'','Informe o nome do usuário! ')) then
    Exit;
  if not(Continua(Edit2.Text<>'','Informe a senha! ')) then
    Exit;
  sMsg := Fnc_VerificaLoginUsuario(Edit1.Text, Edit2.Text);
  if not(Continua(sMsg=EmptyStr,['E',sMsg,'Login não autorizado'])) then
  begin
    Edit2.Clear;
    ModalResult := mrNone;
  end
  else
    Self.Close;
end;

procedure TFormLogin.BitBtn2Click(Sender: TObject);
begin
  Self.Close;
  FormPrincipal.Close;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  Caption := Sistema.Caption;
  Edit1.SetFocus;
end;

procedure TFormLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    key := #0;
    Edit2.SetFocus;
  end;
end;

end.
