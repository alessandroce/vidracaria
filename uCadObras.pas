unit uCadObras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, ActnList, ImgList, ToolWin, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Mask, DBCtrls, Grids, DBGrids, Menus, AppEvnts,
  FMTBcd, DBClient, MyClientDataSet, DB, Provider, SqlExpr;

type
  TFormCadObras = class(TFormPadraoCad2)
    dbgClientes: TDBGrid;
    TabSheet1: TTabSheet;
    Label13: TLabel;
    Label6: TLabel;
    DBEdit11: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    edNomeCliente: TEdit;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    PopupMenu1: TPopupMenu;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    DBCheckBox1: TDBCheckBox;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure dbgClientesDblClick(Sender: TObject);
    procedure dbgClientesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_AtualizaGrid();
  end;

var
  FormCadObras: TFormCadObras;

implementation

uses uDMClientes, uDMProduto, uFormBuscaClientes, uCadClientes;

{$R *.dfm}



procedure TFormCadObras.Fnc_AtualizaGrid;
begin
  DMCadClientes.cdsViewCadClientesObras.Close;
  DMCadClientes.qryViewCadClientesObras.ParamByName('NOME').AsString := '%'+edNomeCliente.Text+'%';
  DMCadClientes.cdsViewCadClientesObras.Open;
  Label16.Caption := IntToStr(DMCadClientes.cdsViewCadClientesObras.RecordCount)+' registro(s)';
end;


procedure TFormCadObras.FormActivate(Sender: TObject);
begin
//  inherited;
  DMCadClientes.cdsViewCadClientesObras.Open;
  if Label16.Caption = '0 registro(s)' then
  Fnc_BarraTarefasBotaoAtivo('Novo')
  else
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  Fnc_AtualizaGrid();
    //se for inserir apartir do formclientebusca

  if FormBuscaClientes.var_FormOrigemVendas = 'FORMBUSCA' then
    begin
      if FormBuscaClientes.var_acao = 'inserir' then
      Act_Btn_Novo.Execute;
      if FormBuscaClientes.var_acao = 'alterar' then
      begin
      DMCadClientes.cdsDadosCadClientesObras.Close;
      DMCadClientes.qryDadosCadClientesObras.ParamByName('ID').AsInteger := DMCadClientes.cdsViewBuscaClientes.FindField('OBR_ID').AsInteger;
      DMCadClientes.cdsDadosCadClientesObras.Open;
      DMCadClientes.cdsDadosCadClientesObras.Edit;
      Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
      end;
    end;

end;


procedure TFormCadObras.Act_Btn_GravarExecute(Sender: TObject);
begin
  //inherited;
  {--- verifica se os campos foram preenchidos ---}
  if (DBEdit1.Text = '') then
  begin
    MessageBox(Application.Handle,' Informe a Razão Social! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    DBEdit1.SetFocus;
    exit;
  end;


  if (DBEdit12.Text = '') then
  begin
    MessageBox(Application.Handle,' Informe um Nome para Contato! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    DBEdit12.SetFocus;
    exit;
  end;

  if (DBEdit13.Text = '') and (DBEdit6.Text = '') and (DBEdit7.Text = '') then
  begin
    MessageBox(Application.Handle,' Informe ao menos um Telefone! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    DBEdit6.SetFocus;
    exit;
  end;
 {--- end ---}

  DMCadClientes.cdsDadosCadClientesObras.ApplyUpdates(-1);
  DMCadClientes.cdsDadosCadClientesObras.Close;

  //atualiza grid
  FormCadCliente.btn_Localizar.Click;
  edNomeCliente.SetFocus;

  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  Fnc_AtualizaGrid();
end;

procedure TFormCadObras.Act_Btn_AlterarExecute(Sender: TObject);
begin
 //inherited;
  DBEdit1.Clear;
  DMCadClientes.cdsDadosCadClientesObras.Close;
  {--- antes de Modificar verifica se há registro na grid ---}
  if DMCadClientes.cdsViewCadClientesObras.RecordCount > 0 then
   begin
    //informa dados do cliente para editar
    DMCadClientes.qryDadosCadClientesObras.ParamByName('ID').AsInteger := DMCadClientes.cdsViewCadClientesObras.FindField('OBR_ID').AsInteger;
    DMCadClientes.cdsDadosCadClientesObras.Open;
    // verifica se o registro está ativo
    if DMCadClientes.cdsDadosCadClientesObrasOBR_ATIVO.AsBoolean = false then
    begin
      if MessageBox(Application.Handle, ' É necessário ativar este registro. Deseja ativá-lo agora? ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        DMCadClientes.cdsDadosCadClientesObras.Edit;
        DMCadClientes.cdsDadosCadClientesObrasOBR_ATIVO.AsBoolean := true;
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
    DMCadClientes.cdsDadosCadClientesObras.Edit;
    DMCadClientes.cdsDadosCadClientesObrasOBR_ATIVO.AsBoolean := true;
    Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  end;
end;
end;

procedure TFormCadObras.Act_Btn_ExcluirExecute(Sender: TObject);
begin
//inherited;
//    if MessageBox(Application.Handle, '  Deseja Excluir este item?  ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DMCadClientes.cdsDadosCadClientesObras.Close;
    DMCadClientes.qryDadosCadClientesObras.ParamByName('ID').AsInteger := DMCadClientes.cdsViewCadClientesObras.FindField('OBR_ID').AsInteger;
    DMCadClientes.cdsDadosCadClientesObras.Open;
    DMCadClientes.cdsDadosCadClientesObras.edit;
    DMCadClientes.cdsDadosCadClientesObrasOBR_ATIVO.AsBoolean := false;
    DMCadClientes.cdsDadosCadClientesObras.ApplyUpdates(-1);
  end;
  DMCadClientes.cdsDadosCadClientesObras.Close;
  Fnc_AtualizaGrid();
  edNomeCliente.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadObras.Act_Btn_SairExecute(Sender: TObject);
begin
  //inherited;
Self.Close;

end;

procedure TFormCadObras.Act_Btn_NovoExecute(Sender: TObject);
begin
//  inherited;
   //dados de inserção
  DMCadClientes.cdsDadosCadClientesObras.Close;
  DMCadClientes.qryDadosCadClientesObras.ParamByName('ID').AsInteger := 0;
  DMCadClientes.cdsDadosCadClientesObras.Open;
  DMCadClientes.cdsDadosCadClientesObras.Insert;
  DMCadClientes.cdsDadosCadClientesObrasOBR_ID.AsInteger := 0;
  DMCadClientes.cdsDadosCadClientesObrasOBR_ATIVO.AsBoolean := true;

  DMCadClientes.cdsViewLookup_Clientes.Close;
  DMCadClientes.cdsViewLookup_Clientes.Open;

  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadObras.Act_Btn_CancelarExecute(Sender: TObject);
begin
  //inherited;
   //limpa os dados da tela
  DMCadClientes.cdsDadosCadClientesObras.Close;
  
  //atualiza grid
  FormCadCliente.btn_Localizar.Click;
  //edNomeCliente.SetFocus;

  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormCadObras.Act_Btn_LocalizarExecute(Sender: TObject);
begin
 // inherited;
  DMCadClientes.cdsViewCadClientesObras.Close;
  DMCadClientes.qryViewCadClientesObras.ParamByName('NOME').AsString := edNomeCliente.Text + '%';
  DMCadClientes.cdsViewCadClientesObras.Open;
end;

procedure TFormCadObras.Act_Btn_InserirExecute(Sender: TObject);
begin
  //inherited;

end;

procedure TFormCadObras.bt_AlterarExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadObras.bt_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Excluir.Execute;
end;

procedure TFormCadObras.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormCadObras.dbgClientesDblClick(Sender: TObject);
begin
//  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadObras.dbgClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  inherited;
  if (GdSelected in State) then
  begin
    dbgClientes.Canvas.Brush.Color := clGradientInactiveCaption;
    If DMCadClientes.cdsViewCadClientesObrasOBR_ATIVO.AsBoolean = false then
    dbgClientes.Canvas.Font.Color:= clMedGray
    else
    dbgClientes.Canvas.Font.Color  := clHighlight;
    dbgClientes.Canvas.Font.Style  := [fsBold];
  end
  else
  begin
    If DMCadClientes.cdsViewCadClientesObrasOBR_ATIVO.AsBoolean = false then
    dbgClientes.Canvas.Font.Color:= clMedGray
    else
    dbgClientes.Canvas.Font.Color:= clBlack;
  end;
  dbgClientes.DefaultDrawDataCell(Rect, dbgClientes.columns[datacol].field, State);
end;

end.
