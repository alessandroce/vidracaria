unit uCadBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, ActnList, ImgList, ToolWin, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, Mask, Grids, DBGrids, DB, Menus, AppEvnts,
  FMTBcd, DBClient, MyClientDataSet, Provider, SqlExpr;

type
  TFormCadBancos = class(TFormPadraoCad2)
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    DBGrid1: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
    procedure Fnc_LocalizarPorNome_Bancos();
    procedure Fnc_AtualizaGrid();
    procedure Fnc_CancelaOperacao();
    procedure Fnc_MostraDadosGrid();
    procedure Fnc_FechaDataSource();
  end;

var
  FormCadBancos: TFormCadBancos;

implementation

uses uDMBancos, uBibliotecaFuncoes;

{$R *.dfm}

procedure TFormCadBancos.Fnc_AtualizaGrid;
begin
  DMBancos.cdsViewBancos.Close;
  DMBancos.qryViewBancos.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  DMBancos.cdsViewBancos.Open;
end;

procedure TFormCadBancos.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
//na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := true;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
    Btn_Localizar.Enabled := true;
    Edit1.ReadOnly        := not(true);
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := true;
    BtnCancela.Enabled := true;
    Btn_Localizar.Enabled := false;
    Edit1.ReadOnly        := not(false);
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
    Btn_Localizar.Enabled := true;
    Edit1.ReadOnly        := not(true);
  end;

end;

procedure TFormCadBancos.Fnc_CancelaOperacao;
begin
  DMBancos.cdsDadosBancos.Close;
  //DMBancos.cdsViewBancos.Close;
end;

procedure TFormCadBancos.Fnc_FechaDataSource;
begin
  DMBancos.cdsViewBancos.Close;
  DMBancos.cdsDadosBancos.Close;
end;

procedure TFormCadBancos.Fnc_LocalizarPorNome_Bancos;
begin
  Fnc_MostraDadosGrid();
end;

procedure TFormCadBancos.Fnc_MostraDadosGrid;
begin
  DMBancos.cdsViewBancos.Close;
  DMBancos.qryViewBancos.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  DMBancos.cdsViewBancos.Open;
  Label4.Caption := IntToStr(DMBancos.cdsViewBancos.RecordCount)+' registro(s)';
end;

procedure TFormCadBancos.Edit1Change(Sender: TObject);
begin
//  inherited;
   Fnc_LocalizarPorNome_Bancos();
end;

procedure TFormCadBancos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
  if key = #13 then
  DBGrid1.SetFocus;
end;

procedure TFormCadBancos.DBGrid1DblClick(Sender: TObject);
begin
//  inherited;
    BtnEditar.Click;
end;

procedure TFormCadBancos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  inherited;
  If DMBancos.cdsViewBancosBANC_ATIVO.AsBoolean = false then
    DBGrid1.Canvas.Font.Color:= clMedGray;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormCadBancos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
    if key = #13 then
  BtnEditar.Click;
end;

procedure TFormCadBancos.Act_Btn_GravarExecute(Sender: TObject);
begin
//  inherited;
    DMBancos.cdsDadosBancos.ApplyUpdates(-1);
  DMBancos.cdsDadosBancos.Close;
  Edit1.SetFocus;
  Fnc_AtualizaGrid();
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadBancos.Act_Btn_InserirExecute(Sender: TObject);
begin
//  inherited;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadBancos.Act_Btn_AlterarExecute(Sender: TObject);
begin
//  inherited;
  //Edit1.Clear;
  DMBancos.cdsDadosBancos.Close;
  {--- antes de Modificar verifica se há registro na grid ---}
  if DMBancos.cdsViewBancos.RecordCount > 0 then
  begin
    // informa dados do Cliente para editar
    DMBancos.qryDadosBancos.ParamByName('ID').AsInteger := DMBancos.cdsViewBancos.FindField('BANC_ID').AsInteger;
    DMBancos.cdsDadosBancos.Open;
    // verifica se o registro está ativo
    if DMBancos.cdsDadosBancosBANC_ATIVO.AsBoolean = false then
    begin
      if MessageBox(Application.Handle, ' É necessário ativar este registro. Deseja ativá-lo agora? ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        DMBancos.cdsDadosBancos.Edit;
        DMBancos.cdsDadosBancosBANC_ATIVO.AsBoolean := true;
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
      DMBancos.cdsDadosBancos.Edit;
      DMBancos.cdsDadosBancosBANC_ATIVO.AsBoolean := true;
      Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
    end;

  end
  else
  begin
    MessageBox(Application.Handle,' É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
  {--- end ---}
  GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';

end;

procedure TFormCadBancos.Act_Btn_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  if MessageBox(Application.Handle, '  Deseja Excluir este item?  ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DMBancos.cdsDadosBancos.Close;
    DMBancos.qryDadosBancos.ParamByName('ID').AsInteger := DMBancos.cdsViewBancos.FindField('BANC_ID').AsInteger;
    DMBancos.cdsDadosBancos.Open;
    DMBancos.cdsDadosBancos.Delete;
    DMBancos.cdsDadosBancos.ApplyUpdates(-1);
  end;
  DMBancos.cdsDadosBancos.Close;
  Fnc_MostraDadosGrid();
  Fnc_AtualizaGrid();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadBancos.Act_Btn_SairExecute(Sender: TObject);
begin
//  inherited;
  Self.Close;
end;

procedure TFormCadBancos.Act_Btn_NovoExecute(Sender: TObject);
begin
//  inherited;
    DMBancos.cdsDadosBancos.Close;
  DMBancos.qryDadosBancos.ParamByName('ID').AsInteger := 0;
  DMBancos.cdsDadosBancos.Open;
  DMBancos.cdsDadosBancos.Insert;
  DMBancos.cdsDadosBancosBANC_ID.AsInteger := 0;
  DMBancos.cdsDadosBancosBANC_ATIVO.AsBoolean := true;
  DBEdit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Novo.Hint+'  ';
end;

procedure TFormCadBancos.Act_Btn_CancelarExecute(Sender: TObject);
begin
//  inherited;
  if (DMBancos.cdsDadosBancos.State in [DsInsert,DsEdit,dsBrowse]) then
  begin
    if Fnc_MsgSalvar(DBEdit1.Text,'','','')= 'salvar' then
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    Act_Btn_Gravar.Execute;
  end;
  //limpa os dados da tela
  DMBancos.cdsDadosBancos.Close;
  Fnc_CancelaOperacao();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadBancos.Act_Btn_LocalizarExecute(Sender: TObject);
begin
//  inherited;
  Fnc_LocalizarPorNome_Bancos();
end;

procedure TFormCadBancos.bt_AlterarExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadBancos.bt_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Excluir.Execute;
end;

procedure TFormCadBancos.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormCadBancos.FormShow(Sender: TObject);
begin
  Act_Btn_Novo.Execute;
  Fnc_MostraDadosGrid();
end;

end.
