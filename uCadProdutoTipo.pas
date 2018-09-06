unit uCadProdutoTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  ActnList, ImgList, ToolWin, ComCtrls, Buttons, ExtCtrls, DB, Menus,
  AppEvnts, FMTBcd, DBClient, MyClientDataSet, Provider, SqlExpr;

type
  TFormCadProdutoTipo = class(TFormPadraoCad2)
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    cdsCadastroPRODTP_ID: TIntegerField;
    cdsCadastroPRODTP_DESCRICAO: TStringField;
    cdsCadastroPRODTP_ESPESSURA: TFMTBCDField;
    cdsCadastroPRODTP_LARGURA: TFMTBCDField;
    cdsCadastroPRODTP_ALTURA: TFMTBCDField;
    cdsCadastroPRODTP_MEDIDA_METRO: TFMTBCDField;
    qryCadastroPRODTP_ID: TIntegerField;
    qryCadastroPRODTP_DESCRICAO: TStringField;
    qryCadastroPRODTP_ESPESSURA: TFMTBCDField;
    qryCadastroPRODTP_LARGURA: TFMTBCDField;
    qryCadastroPRODTP_ALTURA: TFMTBCDField;
    qryCadastroPRODTP_MEDIDA_METRO: TFMTBCDField;
    qryConsultaPRODTP_ID: TIntegerField;
    qryConsultaPRODTP_DESCRICAO: TStringField;
    qryConsultaPRODTP_ESPESSURA: TFMTBCDField;
    qryConsultaPRODTP_LARGURA: TFMTBCDField;
    qryConsultaPRODTP_ALTURA: TFMTBCDField;
    qryConsultaPRODTP_MEDIDA_METRO: TFMTBCDField;
    cdsConsultaPRODTP_ID: TIntegerField;
    cdsConsultaPRODTP_DESCRICAO: TStringField;
    cdsConsultaPRODTP_ESPESSURA: TFMTBCDField;
    cdsConsultaPRODTP_LARGURA: TFMTBCDField;
    cdsConsultaPRODTP_ALTURA: TFMTBCDField;
    cdsConsultaPRODTP_MEDIDA_METRO: TFMTBCDField;
    Label6: TLabel;
    lblEspessura: TLabel;
    lblAltura: TLabel;
    lblLargura: TLabel;
    lblMedida: TLabel;
    DBEdit2: TDBEdit;
    edEspessura: TDBEdit;
    edAltura: TDBEdit;
    edLargura: TDBEdit;
    edMedida: TDBEdit;
    qryCadastroPRODTP_VALOR: TFMTBCDField;
    cdsCadastroPRODTP_VALOR: TFMTBCDField;
    qryConsultaPRODTP_VALOR: TFMTBCDField;
    cdsConsultaPRODTP_VALOR: TFMTBCDField;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
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
    procedure Fnc_LocalizarPorNome_ProdutoTipo();
    procedure Fnc_AtualizaGrid();
    procedure Fnc_CancelaOperacao();
    procedure Fnc_MostraDadosGrid();
    procedure Fnc_FechaDataSource();
  end;

var
  FormCadProdutoTipo: TFormCadProdutoTipo;

implementation

uses uDMProdutoTipo, uBibliotecaFuncoes;

{$R *.dfm}

{ TFormCadProdutoTipo }

procedure TFormCadProdutoTipo.Fnc_AtualizaGrid;
begin
  cdsConsulta.Close;
  qryConsulta.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  cdsConsulta.Open;
end;

procedure TFormCadProdutoTipo.Fnc_BarraTarefasBotaoAtivo(botao: string);
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

procedure TFormCadProdutoTipo.Fnc_CancelaOperacao;
begin
    cdsCadastro.Close;
  //cdsConsulta.Close;
end;

procedure TFormCadProdutoTipo.Fnc_FechaDataSource;
begin
  cdsConsulta.Close;
  cdsCadastro.Close;
end;

procedure TFormCadProdutoTipo.Fnc_LocalizarPorNome_ProdutoTipo;
begin
   Fnc_MostraDadosGrid();
end;

procedure TFormCadProdutoTipo.Fnc_MostraDadosGrid;
begin
  cdsConsulta.Close;
  qryConsulta.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  cdsConsulta.Open;
  Label4.Caption := IntToStr(cdsConsulta.RecordCount)+' registro(s)';
end;

procedure TFormCadProdutoTipo.Edit1Change(Sender: TObject);
begin
//  inherited;
    Fnc_LocalizarPorNome_ProdutoTipo();
end;

procedure TFormCadProdutoTipo.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
  if key = #13 then
  DBGrid1.SetFocus;
end;

procedure TFormCadProdutoTipo.DBGrid1DblClick(Sender: TObject);
begin
//  inherited;
     BtnEditar.Click;
end;

procedure TFormCadProdutoTipo.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
    if key = #13 then
    BtnEditar.Click;
end;

procedure TFormCadProdutoTipo.Act_Btn_GravarExecute(Sender: TObject);
begin
//  inherited;
  cdsCadastro.ApplyUpdates(-1);
  cdsCadastro.Close;
  Edit1.SetFocus;
  Fnc_AtualizaGrid();
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadProdutoTipo.Act_Btn_InserirExecute(Sender: TObject);
begin
//  inherited;
    Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadProdutoTipo.Act_Btn_AlterarExecute(Sender: TObject);
begin
//  inherited;
  //Edit1.Clear;
  cdsCadastro.Close;
  {--- antes de Modificar verifica se há registro na grid ---}
  if cdsConsulta.RecordCount > 0 then
  begin
    // informa dados do Cliente para editar
    qryCadastro.ParamByName('ID').AsInteger := cdsConsulta.FindField('PRODTP_ID').AsInteger;
    cdsCadastro.Open;

  end
  else
  begin
    MessageBox(Application.Handle,' É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
  {--- end ---}
  GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadProdutoTipo.Act_Btn_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  if MessageBox(Application.Handle, '  Deseja Excluir este item?  ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    cdsCadastro.Close;
    qryCadastro.ParamByName('ID').AsInteger := cdsConsulta.FindField('PRODTP_ID').AsInteger;
    cdsCadastro.Open;
    cdsCadastro.Delete;
    cdsCadastro.ApplyUpdates(-1);
  end;
  cdsCadastro.Close;
  Fnc_AtualizaGrid();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadProdutoTipo.Act_Btn_SairExecute(Sender: TObject);
begin
//  inherited;
  Self.Close;
end;

procedure TFormCadProdutoTipo.Act_Btn_NovoExecute(Sender: TObject);
begin
//  inherited;
  cdsCadastro.Close;
  qryCadastro.ParamByName('ID').AsInteger := 0;
  cdsCadastro.Open;
  cdsCadastro.Insert;
  cdsCadastroPRODTP_ID.AsInteger := 0;
  DBEdit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Novo.Hint+'  ';
end;

procedure TFormCadProdutoTipo.Act_Btn_CancelarExecute(Sender: TObject);
begin
//  inherited;
  if (cdsCadastro.State in [DsInsert,DsEdit,dsBrowse]) then
  begin
    if Fnc_MsgSalvar(DBEdit1.Text,'','','')= 'salvar' then
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    Act_Btn_Gravar.Execute;
  end;
  //limpa os dados da tela
  cdsCadastro.Close;
  Fnc_CancelaOperacao();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadProdutoTipo.Act_Btn_LocalizarExecute(Sender: TObject);
begin
//  inherited;
      Fnc_LocalizarPorNome_ProdutoTipo();
end;

procedure TFormCadProdutoTipo.bt_AlterarExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadProdutoTipo.bt_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Excluir.Execute;
end;

procedure TFormCadProdutoTipo.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormCadProdutoTipo.FormShow(Sender: TObject);
begin
  Act_Btn_Novo.Execute;
  Fnc_AtualizaGrid();
end;

end.
