unit uFormLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DBCtrls;

type
  TFormLogin = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  var_usuarioLogado   : String;
  var_usuarioLogadoID : Integer;
  function Fnc_VerificaLoginUsuario(login:String; senha:String):String;
  procedure CadastraUsusariosPermissaoAcesso();
  end;

var
  FormLogin: TFormLogin;

implementation

uses uPrincipal, uDMUsuario, uDMLogin, DB, uFormMenuPermissao,
  uDmMenuPermissao;

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
begin
  DMLogin.cdsDadosLogin.Close;
  DMLogin.qryDadosLogin.ParamByName('LOGIN').AsString := login;
  DMLogin.qryDadosLogin.ParamByName('SENHA').AsString := senha;
  DMLogin.cdsDadosLogin.Open;

  var_usuarioLogado := DMLogin.cdsDadosLogin.FindField('USU_LOGIN').AsString;
  var_usuarioLogadoID := DMLogin.cdsDadosLogin.FindField('USU_ID').AsInteger;
  if DMLogin.cdsDadosLogin.RecordCount < 1 then
  begin
    Result := 'Nome ou senha do usuário inválidos.'+#13+#13
    +'Se você esqueceu a senha consulte '+#13
    +'o administrador do sistema.'
  end
  else
  begin
    Result := '';
  end;

  end;

procedure TFormLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  BitBtn1.SetFocus;
end;

procedure TFormLogin.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Edit2.SetFocus;
end;

procedure TFormLogin.BitBtn1Click(Sender: TObject);
var
  mensagem : string;
  vVisible : Boolean;
begin
  if DBLookupComboBox1.KeyValue = null then
  begin
    MessageBox(Application.Handle,'Informe o nome do usuário! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    DBLookupComboBox1.SetFocus;
    Exit;
  end;

  if Edit2.Text = '' then
  begin
    MessageBox(Application.Handle,'Informe a senha! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Edit2.SetFocus;
    Exit;
  end;

  if Fnc_VerificaLoginUsuario(DBLookupComboBox1.Text, Edit2.Text) <> '' then
  begin
    Application.MessageBox(PAnsiChar(Fnc_VerificaLoginUsuario(DBLookupComboBox1.Text, Edit2.Text)), 'Login não autorizado', MB_OK+mb_IconError);
    Edit2.Clear;
    ModalResult := mrNone;
  end
  else
  begin
    FormPrincipal.Label1.Caption := DBLookupComboBox1.Text;
    FormPrincipal.Fnc_AtualizaGrid_Manutencao();
    vVisible := True;
    //FormPrincipal.menu.Items[0].Visible := vVisible;
    //FormPrincipal.menu.Items[1].Visible := vVisible;
    //FormPrincipal.menu.Items[2].Visible := vVisible;
    //FormPrincipal.menu.Items[3].Visible := vVisible;
    //FormPrincipal.menu.Items[4].Visible := vVisible;
    //FormPrincipal.menu.Items[5].Visible := vVisible;
    Self.Close;
  end;
(*  else
  begin
    if DBLookupComboBox1.Text = 'MASTER' then
    begin
      CadastraUsusariosPermissaoAcesso;
    end
    else
    begin
      FormPrincipal.Label1.Caption := DBLookupComboBox1.Text;
      FormPrincipal.Fnc_AtualizaGrid_Manutencao();
      Self.Close;
    end;
    DMMenuPermissao.cdsDados3Permissoes.Close;
    DMMenuPermissao.qryDados3Permissoes.ParamByName('USUARIO').AsInteger := DMLogin.cdsViewLogin_LookupUSU_ID.AsInteger;
    DMMenuPermissao.cdsDados3Permissoes.Open;
    //HABILITA MENUSPERMITIDOS
    FormPrincipal.menu.Items[0].Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_MN_CADASTRO.AsBoolean);
    FormPrincipal.menu.Items[1].Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_MN_CONSULTA.AsBoolean);
    FormPrincipal.menu.Items[2].Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_MN_LANCAMENTO.AsBoolean);
    FormPrincipal.menu.Items[3].Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_MN_RELATORIO.AsBoolean);
    FormPrincipal.menu.Items[4].Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_MN_FINANCEIRO.AsBoolean);
    FormPrincipal.menu.Items[5].Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_MN_SISTEMA.AsBoolean);
  end;
*)
end;

procedure TFormLogin.BitBtn2Click(Sender: TObject);
begin
  Self.Close;
  FormPrincipal.Close;
end;

procedure TFormLogin.BitBtn1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  BitBtn1.Click;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  DMLogin.cdsViewLogin_Lookup.Close;
  DMLogin.cdsViewLogin_Lookup.Open;
  DBLookupComboBox1.SetFocus;
end;

procedure TFormLogin.CadastraUsusariosPermissaoAcesso;
begin
  Try
    Application.CreateForm(TFormMenuPermissao, FormMenuPermissao);
    FormMenuPermissao.ShowModal;
  Finally
    FormMenuPermissao.Free;
  End;
end;

end.
