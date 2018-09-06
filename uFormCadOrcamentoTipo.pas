unit uFormCadOrcamentoTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, ActnList, ImgList, ToolWin, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Menus, AppEvnts,
  FMTBcd, DBClient, MyClientDataSet, DB, Provider, SqlExpr;

type
  TFormCadOrcamentoTipo = class(TFormPadraoCad2)
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure Fnc_CancelaOperacao();
  end;

var
  FormCadOrcamentoTipo: TFormCadOrcamentoTipo;

implementation

uses uDMOrcamentoTipo, uBibliotecaFuncoes;

{$R *.dfm}

procedure TFormCadOrcamentoTipo.Act_Btn_GravarExecute(Sender: TObject);
begin
//  inherited;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.ApplyUpdates(-1);
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Close;
  GroupBox1.Caption := '';
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadOrcamentoTipo.Act_Btn_AlterarExecute(Sender: TObject);
begin
//  inherited;
  if DMOrcamentoTipo.cdsViewOrcamentoTipo.RecordCount = 0 then
  begin
    MessageBox(Application.Handle,' Selecione um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;

  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Close;
  DMOrcamentoTipo.qryDadosOrcamentoTipo.ParamByName('ID').AsInteger := DMOrcamentoTipo.cdsViewOrcamentoTipo.FindField('ORCTP_ID').AsInteger;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Open;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Edit;
  DBEdit1.SetFocus;
  GroupBox1.Caption := ' Alterar ';
  Act_Btn_Localizar.Execute;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadOrcamentoTipo.Act_Btn_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  if DMOrcamentoTipo.cdsViewOrcamentoTipo.RecordCount = 0 then
  begin
    MessageBox(Application.Handle,' Selecione um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Close;
  DMOrcamentoTipo.qryDadosOrcamentoTipo.ParamByName('ID').AsInteger := DMOrcamentoTipo.cdsViewOrcamentoTipo.FindField('ORCTP_ID').AsInteger;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Open;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Delete;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.ApplyUpdates(-1);
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Close;
  GroupBox1.Caption := '';
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadOrcamentoTipo.Act_Btn_SairExecute(Sender: TObject);
begin
//  inherited;
  Self.Close;
end;

procedure TFormCadOrcamentoTipo.Act_Btn_NovoExecute(Sender: TObject);
begin
//  inherited;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Close;
  DMOrcamentoTipo.qryDadosOrcamentoTipo.ParamByName('ID').AsInteger := 0;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Open;
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Insert;
  DMOrcamentoTipo.cdsDadosOrcamentoTipoORCTP_ID.AsInteger := 0;
  GroupBox1.Caption := ' Inserir ';
  DBEdit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadOrcamentoTipo.Act_Btn_CancelarExecute(Sender: TObject);
begin
//  inherited;
  if (DMOrcamentoTipo.cdsDadosOrcamentoTipo.State in [DsInsert,DsEdit,dsBrowse]) then
  begin
    if Fnc_MsgSalvar(DBEdit1.Text,'','','')= 'salvar' then
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    Act_Btn_Gravar.Execute;
  end;
  Fnc_CancelaOperacao();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadOrcamentoTipo.Act_Btn_LocalizarExecute(Sender: TObject);
begin
//  inherited;
  DMOrcamentoTipo.cdsViewOrcamentoTipo.Close;
  DMOrcamentoTipo.qryViewOrcamentoTipo.ParamByName('DESCRICAO').AsString := '%'+Edit1.Text+'%';
  DMOrcamentoTipo.cdsViewOrcamentoTipo.Open;
end;

procedure TFormCadOrcamentoTipo.DBGrid1DblClick(Sender: TObject);
begin
//  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadOrcamentoTipo.Edit1Change(Sender: TObject);
begin
//  inherited;
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadOrcamentoTipo.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
  if Key = #13 then
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadOrcamentoTipo.bt_AlterarExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadOrcamentoTipo.bt_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Excluir.Execute;
end;

procedure TFormCadOrcamentoTipo.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormCadOrcamentoTipo.FormShow(Sender: TObject);
begin
  Act_Btn_Novo.Execute;
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadOrcamentoTipo.Fnc_CancelaOperacao;
begin
  DMOrcamentoTipo.cdsDadosOrcamentoTipo.Close;
end;

end.
