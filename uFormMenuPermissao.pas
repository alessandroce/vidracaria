unit uFormMenuPermissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons, ActnList, ImgList, StdCtrls,
  DBCtrls, Menus;

type
  TFormMenuPermissao = class(TForm)
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Gravar: TAction;
    Act_Btn_Fechar: TAction;
    Act_Btn_Novo: TAction;
    btFechar: TSpeedButton;
    pgPermissoes: TPageControl;
    TabSheet1: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    btGravar: TSpeedButton;
    Panel1: TPanel;
    DBLKusuario: TDBLookupComboBox;
    Funcionario: TLabel;
    btNovoFuncionario: TSpeedButton;
    StatusBar1: TStatusBar;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    TabSheet6: TTabSheet;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    procedure Act_Btn_FecharExecute(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Fnc_AtualizaDadosPermissoes();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLKusuarioCloseUp(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBCheckBox22Click(Sender: TObject);
    procedure DBCheckBox23Click(Sender: TObject);
    procedure DBCheckBox24Click(Sender: TObject);
    procedure DBCheckBox25Click(Sender: TObject);
    procedure DBCheckBox26Click(Sender: TObject);
    procedure DBCheckBox27Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var_origemForm_Permissao : String;
  end;

var
  FormMenuPermissao: TFormMenuPermissao;

implementation

uses DB, uDmMenuPermissao, uFormCadUsuario, uDMLogin;

{$R *.dfm}

procedure TFormMenuPermissao.Act_Btn_FecharExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormMenuPermissao.Act_Btn_GravarExecute(Sender: TObject);
var
    var_msg_alteracao : string;
begin
  {var_msg_alteracao := 'Alteração efetuada com sucesso!'+#13+#13+
  'É necessário reiniciar o Programa'+#13+
  'para que as aterações tenham efeito ';
  MessageBox(Application.Handle,PAnsiChar(var_msg_alteracao), 'Informação', MB_ICONINFORMATION + MB_OK);
  }
  DMMenuPermissao.cdsDados3Permissoes.ApplyUpdates(-1);
  MessageBox(Application.Handle,'Alteração efetuada!', 'Informação', MB_ICONINFORMATION + MB_OK);
  pgPermissoes.ActivePage := pgPermissoes.Pages[0];
  Fnc_AtualizaDadosPermissoes();
end;

procedure TFormMenuPermissao.Act_Btn_NovoExecute(Sender: TObject);
begin
  var_origemForm_Permissao := 'FormMenuPermissao';
 try
    Application.CreateForm(TFormCadUsuario, FormCadUsuario);
    FormCadUsuario.ShowModal;
  Finally
    FormCadUsuario.Free
  end;
  DMLogin.cdsViewLogin_Lookup.Refresh;
end;

procedure TFormMenuPermissao.Fnc_AtualizaDadosPermissoes;
begin
 //DMLogin.cdsViewLogin_Lookup.;
  DMMenuPermissao.cdsDados3Permissoes.Close;
  DMMenuPermissao.qryDados3Permissoes.ParamByName('USUARIO').AsInteger := DMLogin.cdsViewLogin_LookupUSU_ID.AsInteger;
  DMMenuPermissao.cdsDados3Permissoes.Open;
end;

procedure TFormMenuPermissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //DmView.cdsUsuarios.Close;
  //DMMenuPermissao.cdsDados3Permissoes.Close;
end;

procedure TFormMenuPermissao.DBLKusuarioCloseUp(Sender: TObject);
begin
  Fnc_AtualizaDadosPermissoes();
  DMMenuPermissao.cdsDados3Permissoes.Edit;
end;

procedure TFormMenuPermissao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then begin
    Self.Close;
  end;

  if key = vk_F2 then begin
    btNovoFuncionario.Click();
  end;

  if key = vk_F3 then begin
    btGravar.Click();
  end;

  if key = vk_F10 then begin
    Self.Close;
  end;
end;

procedure TFormMenuPermissao.FormShow(Sender: TObject);
begin
  Fnc_AtualizaDadosPermissoes();
  DMMenuPermissao.cdsDados3Permissoes.Edit;
end;

procedure TFormMenuPermissao.DBCheckBox22Click(Sender: TObject);
var acao : Boolean;
begin
  if DBCheckBox22.Checked then
    acao := true
  else
    acao := false;
  DBCheckBox1.Checked := acao;
  DBCheckBox2.Checked := acao;
  DBCheckBox3.Checked := acao;
  DBCheckBox4.Checked := acao;
  DBCheckBox5.Checked := acao;
  DBCheckBox6.Checked := acao;
  acao := false;
end;

procedure TFormMenuPermissao.DBCheckBox23Click(Sender: TObject);
var acao : Boolean;
begin
  if DBCheckBox23.Checked then
    acao := true
  else
    acao := false;
  DBCheckBox7.Checked := acao;
  DBCheckBox8.Checked := acao;
  DBCheckBox9.Checked := acao;
  DBCheckBox10.Checked := acao;
  DBCheckBox11.Checked := acao;
  acao := false;
end;

procedure TFormMenuPermissao.DBCheckBox24Click(Sender: TObject);
var acao : Boolean;
begin
  if DBCheckBox24.Checked then
    acao := true
  else
    acao := false;
  DBCheckBox12.Checked := acao;
  DBCheckBox13.Checked := acao;
  DBCheckBox14.Checked := acao;
  acao := false;
end;

procedure TFormMenuPermissao.DBCheckBox25Click(Sender: TObject);
var acao : Boolean;
begin
  if DBCheckBox25.Checked then
    acao := true
  else
    acao := false;
  DBCheckBox15.Checked := acao;
  DBCheckBox16.Checked := acao;
  DBCheckBox28.Checked := acao;
  acao := false;
end;

procedure TFormMenuPermissao.DBCheckBox26Click(Sender: TObject);
var acao : Boolean;
begin
  if DBCheckBox26.Checked then
    acao := true
  else
    acao := false;
  DBCheckBox17.Checked := acao;
  DBCheckBox18.Checked := acao;
  acao := false;
end;

procedure TFormMenuPermissao.DBCheckBox27Click(Sender: TObject);
var acao : Boolean;
begin
  if DBCheckBox27.Checked then
    acao := true
  else
    acao := false;
  DBCheckBox19.Checked := acao;
  DBCheckBox20.Checked := acao;
  DBCheckBox21.Checked := acao;
  acao := false;
end;

end.
