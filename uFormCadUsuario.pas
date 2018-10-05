unit uFormCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  ActnList, ImgList, ToolWin, ComCtrls, Buttons, ExtCtrls, SqlExpr, DB,
  AppEvnts, FMTBcd, DBClient, MyClientDataSet, Provider;

type
  TFormCadUsuario = class(TFormPadraoCad2)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Nome: TLabel;
    Edit1: TEdit;
    TabSheet1: TTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ApplicationEvents1: TApplicationEvents;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Bevel4: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_LocalizarPor_Funcionarios();
    procedure Fnc_AtualizaGrid();
    procedure Fnc_CancelaOperacao();
    procedure Fnc_MostraDadosGrid();
    procedure Fnc_FechaDataSource();
  end;

var
  FormCadUsuario: TFormCadUsuario;

implementation

uses uDMUsuario, uBibliotecaFuncoes, uFormMenuPermissao, uDMConnection;

{$R *.dfm}

procedure TFormCadUsuario.Act_Btn_GravarExecute(Sender: TObject);
var
   msg, msg1,msg2,msg3,msg4,msg5 : string;
   var_novasPermissoes : String;
    qryDadosFuncionarioMaxID : TSQLQuery;
    var_FuncionarioMaxID : Integer;
    var_count_reg, var_count_reg_i : Integer;
    var_msgPermissoes : String;
begin
  if DBEdit1.Text = '' then
    msg1 := '- Nome'+#13
  else
    msg1 := EmptyStr;

  if DBEdit10.Text = '' then
    msg2 := '- Matrícula'+#13
  else
    msg2 := EmptyStr;

  if DBEdit11.Text = '' then
    msg3 := '- Senha'+#13
  else
    msg3 := EmptyStr;

  if DBEdit12.Text = '' then
    msg4 := '- Confirma Senha'+#13
  else
    msg4 := EmptyStr;

  msg := msg1+msg2+msg3+msg4;
  if msg <> EmptyStr then
    MessageBox(Application.Handle,PChar('Preenchimento obrigatório:'+#13+msg), 'Informação', MB_ICONINFORMATION + MB_OK)
  else
  begin
  PageControl1.ActivePage := PageControl1.Pages[0];
  {}  if DMUsuario.cdsDadosUsuario.State in [dsInsert] then
  {}  begin
  {}      DMUsuario.cdsDadosUsuarioUSU_ID.AsInteger := 0;
  {}      //identifica se é um novo usuário para entao dar permissões de acessos ao sistema
  {}      var_novasPermissoes := 'ok';
  {}  end
  {}  else
  {}    var_novasPermissoes := '';
  {}  if DMUsuario.cdsDadosUsuarioUSU_FUNCAO.IsNull then
  {}    DMUsuario.cdsDadosUsuarioUSU_FUNCAO.Value := DMUsuario.cdsViewUsuarioFuncaoUSUF_ID.Value;

  {}  DMUsuario.cdsDadosUsuarioUSU_LOGIN_TIPO.AsString := ComboBox1.Text;
  {}  DMUsuario.cdsDadosUsuario.ApplyUpdates(-1);
  {}  DMUsuario.cdsDadosUsuario.Close;
  {}  Fnc_AtualizaGrid();
  {}  Fnc_MostraDadosGrid();
  {}  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  {}  PageControl1.ActivePage := PageControl1.Pages[0];
  {}  (*
  {}   {--- formulário de permissões de acesso ao sistema ---}
  {}    if (var_novasPermissoes = 'ok') then
  {}    begin
  {}
  {}    {--- recupera ultimo cadastro de funcionário ---}
  {}    //cria uma qry com conexao
  {}    qryDadosFuncionarioMaxID               := TSQLQuery.Create(Self);
  {}    qryDadosFuncionarioMaxID.SQLConnection := DMConnection.SQLConnection;
  {}    with qryDadosFuncionarioMaxID do
  {}    begin
  {}      Close;
  {}      SQL.Clear;
  {}      SQL.Add('SELECT MAX(USU_ID) AS USU_ID FROM USUARIOS');
  {}      Open;
  {}      var_FuncionarioMaxID := FieldByName('USU_ID').AsInteger;
  {}    end;
  {}    {--- end / ultimo funcionário ---}
  {}    {--- cria permissoes para novo usuário ---
  {}    OBS.: para insersão de dados nesta tabela é necessário informar somente o ID
  {}    pelo fato de os campos serem do tipo BOOLEAN são atribuidos False (F) como padrão}
  {}      inc(var_count_reg);
  {}      DMUsuario.cdsDadosNovasPermissoes.Close;
  {}      DMUsuario.qryDadosNovasPermissoes.ParamByName('USUARIO').AsInteger := 0;
  {}      DMUsuario.cdsDadosNovasPermissoes.Open;
  {}      DMUsuario.cdsDadosNovasPermissoes.Insert;
  {}      DMUsuario.cdsDadosNovasPermissoesMENUPERM_USUARIO_ID.AsInteger := var_FuncionarioMaxID;
  {}      DMUsuario.cdsDadosNovasPermissoes.ApplyUpdates(-1);
  {}    {--- end / cria permissoes ---}
  {}    {--- formulário de alteração de novas permissões ---}
  {}      DMUsuario.cdsViewUsuario.Close;
  {}      DMUsuario.cdsViewUsuario.Open;
  {}
  {}      var_msgPermissoes := ' Novo Funcionário cadastrado. '+#13+' Agora defina as permissões de acesso ao sistema! ';
  {}      MessageBox(Application.Handle,PAnsiChar(var_msgPermissoes), 'Informação', MB_ICONINFORMATION + MB_OK);
  {}
  {}      if FormMenuPermissao.var_origemForm_Permissao = 'FormMenuPermissao' then
  {}      begin
  {}        FormCadUsuario.Close;
  {}      end
  {}      else
  {}      begin
  {}        Try
  {}        Application.CreateForm(TFormMenuPermissao ,FormMenuPermissao );
  {}        FormMenuPermissao.ShowModal;
  {}        Finally
  {}        FormMenuPermissao.Free;
  {}        End;
  {}      end;
  {}    end;
  {}      *)
  end;
end;

procedure TFormCadUsuario.Act_Btn_InserirExecute(Sender: TObject);
begin
//  inherited;

end;

procedure TFormCadUsuario.Act_Btn_AlterarExecute(Sender: TObject);
begin
//  inherited;
  {---Altera dados de um Usuário---}
  PageControl1.ActivePage := PageControl1.Pages[0];
  DMUsuario.cdsViewEstado.Open;
  DMUsuario.cdsViewUsuarioFuncao.Close;
  DMUsuario.cdsViewUsuarioFuncao.Open;
  DBLookupComboBox1.Enabled := True;
  DBLookupComboBox2.Enabled := true;
  DMUsuario.cdsDadosUsuario.Close;
  {--- antes de Modificar verifica se há registro na grid ---}
  if DMUsuario.cdsViewUsuario.RecordCount > 0 then
  begin
    // informa dados do Cliente para editar
    DMUsuario.qryDadosUsuario.ParamByName('ID').AsInteger := DMUsuario.cdsViewUsuario.FindField('USU_ID').AsInteger;
    DMUsuario.cdsDadosUsuario.Open;
    // verifica se o registro está ativo
    if DMUsuario.cdsDadosUsuarioUSU_ATIVO.AsBoolean = false then
    begin
      if MessageBox(Application.Handle, ' É necessário ativar este registro. Deseja ativá-lo agora? ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        DMUsuario.cdsDadosUsuario.Edit;
        DMUsuario.cdsDadosUsuarioUSU_ATIVO.AsBoolean := true;
        Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
      end
      else
      begin
        Act_Btn_Cancelar.Execute;
        Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
      end;

    end
    else
    begin
      DMUsuario.cdsDadosUsuario.Edit;
      DMUsuario.cdsDadosUsuarioUSU_ATIVO.AsBoolean := true;
      Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
    end;

  end
  else
  begin
    MessageBox(Application.Handle,' É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
  {--- end ---}
  GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
  PageControl1.ActivePage := PageControl1.Pages[0];
end;

procedure TFormCadUsuario.Act_Btn_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  if MessageBox(Application.Handle, '  Deseja Excluir este item?  ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DMUsuario.cdsDadosUsuario.Close;
    DMUsuario.qryDadosUsuario.ParamByName('ID').AsInteger := DMUsuario.cdsViewUsuario.FindField('USU_ID').AsInteger;
    DMUsuario.cdsDadosUsuario.Open;
    DMUsuario.cdsDadosUsuario.Delete;
    DMUsuario.cdsDadosUsuario.ApplyUpdates(-1);
  end;
  DMUsuario.cdsDadosUsuario.Close;
  Fnc_MostraDadosGrid();
  Fnc_AtualizaGrid();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadUsuario.Act_Btn_SairExecute(Sender: TObject);
begin
//  inherited;
  Self.Close;
end;

procedure TFormCadUsuario.Act_Btn_NovoExecute(Sender: TObject);
begin
  //  inherited;
  {--- Insere um Usuario ---}
  PageControl1.ActivePage := PageControl1.Pages[0];
  DMUsuario.cdsDadosUsuario.Close;
  DMUsuario.qryDadosUsuario.ParamByName('ID').AsInteger := 0;
  DMUsuario.cdsDadosUsuario.Open;
  DMUsuario.cdsDadosUsuario.Insert;
  DMUsuario.cdsDadosUsuarioUSU_ATIVO.AsBoolean := true;

  DMUsuario.cdsViewUsuarioFuncao.Close;
  DMUsuario.cdsViewUsuarioFuncao.Open;
  ComboBox1.Enabled := true;
  ComboBox1.ItemIndex := 0;
  DBLookupComboBox1.Enabled := true;
  DBLookupComboBox2.Enabled := true;
  DBLookupComboBox2.KeyValue := 2;
  DMUsuario.cdsViewEstado.Open;

  //DMUsuario.cdsDadosUsuarioUSU_ID.AsInteger := 0;

  DBEdit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Novo.Hint+'  ';
end;

procedure TFormCadUsuario.Act_Btn_CancelarExecute(Sender: TObject);
begin
//  inherited;
  if (DMUsuario.cdsDadosUsuario.State in [DsInsert,DsEdit,dsBrowse]) then
  begin
    if Fnc_MsgSalvar(DBEdit1.Text,DBEdit10.Text,DBEdit11.Text,DBEdit12.Text)= 'salvar' then
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Act_Btn_Gravar.Execute;
  end;
  PageControl1.ActivePage := PageControl1.Pages[0];
  Fnc_CancelaOperacao();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadUsuario.Act_Btn_LocalizarExecute(Sender: TObject);
begin
//  inherited;
  Fnc_LocalizarPor_Funcionarios();
end;

procedure TFormCadUsuario.Fnc_AtualizaGrid;
begin
  DMUsuario.cdsViewUsuario.Close;
  DMUsuario.cdsViewUsuario.Open;
end;

procedure TFormCadUsuario.Fnc_CancelaOperacao;
begin
  DMUsuario.cdsDadosUsuario.Close;
end;

procedure TFormCadUsuario.Fnc_FechaDataSource;
begin
  DMUsuario.cdsViewUsuario.Close;
  DMUsuario.cdsDadosUsuario.Close;
  DMUsuario.cdsViewEstado.Close;
end;

procedure TFormCadUsuario.Fnc_LocalizarPor_Funcionarios;
begin
  Fnc_MostraDadosGrid();
end;

procedure TFormCadUsuario.Fnc_MostraDadosGrid;
begin
  DMUsuario.cdsViewUsuario.Close;
  DMUsuario.qryViewUsuario.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  DMUsuario.cdsViewUsuario.Open;
  Label4.Caption := IntToStr(DMUsuario.cdsViewUsuario.RecordCount)+' registro(s)';
end;

procedure TFormCadUsuario.DBGrid1DblClick(Sender: TObject);
begin
//  inherited;
Act_Btn_Alterar.Execute;
end;

procedure TFormCadUsuario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  inherited;
  If DMUsuario.cdsViewUsuarioUSU_ATIVO.AsBoolean = false then
    DBGrid1.Canvas.Font.Color:= clMedGray;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormCadUsuario.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
  if key = #13 then
  BtnEditar.Click;
end;

procedure TFormCadUsuario.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
  if  Key = #13 then
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadUsuario.Edit1Change(Sender: TObject);
begin
//  inherited;
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadUsuario.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
  if (not(Key = #08)) then //BACKSPACE
  begin
    If (Key in['a'..'z','A'..'Z',#8] ) then
    begin
    Key := #0;
    end;
  end;
end;

procedure TFormCadUsuario.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
  if (not(Key = #08)) then //BACKSPACE
  begin
    If (Key in['a'..'z','A'..'Z',#8] ) then
    begin
    Key := #0;
    end;
  end;
end;

procedure TFormCadUsuario.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
      var i: SmallInt;
begin
//  inherited;
  if (ActiveControl is TDBGrid) then
  begin
    with TDBGrid(ActiveControl) do
    begin
      if Msg.message = WM_MOUSEWHEEL then
      begin
        Msg.message := WM_KEYDOWN;
        Msg.lParam := 0;
        i := HiWord(Msg.wParam);
        if i > 0 then
          Msg.wParam := VK_UP
        else
          Msg.wParam := VK_DOWN;
        Handled := False;
      end;
    end;
  end;
end;

procedure TFormCadUsuario.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := PageControl1.Pages[0];
  Act_Btn_Novo.Execute;
  Fnc_MostraDadosGrid();
end;

procedure TFormCadUsuario.DBEdit13Change(Sender: TObject);
begin
  inherited;
  DBEdit13.Text:=PercentKey(DBEdit13.Text);
end;

procedure TFormCadUsuario.DBEdit14Change(Sender: TObject);
begin
  inherited;
  DBEdit14.Text:=PercentKey(DBEdit14.Text);
end;

procedure TFormCadUsuario.DBEdit15Change(Sender: TObject);
begin
  inherited;
  DBEdit15.Text:=PercentKey(DBEdit15.Text);
end;

end.
