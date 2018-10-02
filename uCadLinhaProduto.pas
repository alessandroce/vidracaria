unit uCadLinhaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, FMTBcd, DB, DBClient, MyClientDataSet,
  Provider, SqlExpr, ActnList, ImgList, ToolWin, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, AppEvnts;

type
  TFCadLinhaProd = class(TFormPadraoCad2)
    qryCadastroPRL_ID: TIntegerField;
    qryCadastroPRL_DESCRICAO: TStringField;
    qryCadastroPRL_DH_CA: TSQLTimeStampField;
    cdsCadastroPRL_ID: TIntegerField;
    cdsCadastroPRL_DESCRICAO: TStringField;
    cdsCadastroPRL_DH_CA: TSQLTimeStampField;
    qryConsultaPRL_ID: TIntegerField;
    qryConsultaPRL_DESCRICAO: TStringField;
    qryConsultaPRL_DH_CA: TSQLTimeStampField;
    cdsConsultaPRL_ID: TIntegerField;
    cdsConsultaPRL_DESCRICAO: TStringField;
    cdsConsultaPRL_DH_CA: TSQLTimeStampField;
    Label5: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ApplicationEvents1: TApplicationEvents;
    qryCadastroPRL_ATIVO: TStringField;
    cdsCadastroPRL_ATIVO: TStringField;
    DBCheckBox1: TDBCheckBox;
    qryConsultaPRL_ATIVO: TStringField;
    cdsConsultaPRL_ATIVO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
    procedure Fnc_AtualizaGrid();
    procedure Fnc_LocalizarPorNome_Produto();
    procedure Fnc_MostraDadosGrid();
    procedure Fnc_CancelaOperacao();
    procedure Fnc_FechaDataSource();
  end;

var
  FCadLinhaProd: TFCadLinhaProd;

implementation

uses uDMProduto, uBibliotecaFuncoes;

{$R *.dfm}

procedure TFCadLinhaProd.Fnc_AtualizaGrid;
begin
  cdsConsulta.Close;
  qryConsulta.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  cdsConsulta.Open;
end;

procedure TFCadLinhaProd.Fnc_LocalizarPorNome_Produto;
begin
  Fnc_MostraDadosGrid;
end;

procedure TFCadLinhaProd.Fnc_MostraDadosGrid;
begin
  cdsConsulta.Close;
  qryConsulta.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  cdsConsulta.Open;
end;

procedure TFCadLinhaProd.FormShow(Sender: TObject);
begin
  inherited;
  HandleCadastro := 0;
  Act_Btn_Novo.Execute;
  Fnc_AtualizaGrid();
end;

procedure TFCadLinhaProd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  DBGrid1.SetFocus;
end;

procedure TFCadLinhaProd.Edit1Change(Sender: TObject);
begin
  inherited;
  Fnc_LocalizarPorNome_Produto();
end;

procedure TFCadLinhaProd.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
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

procedure TFCadLinhaProd.Fnc_CancelaOperacao;
begin
    cdsCadastro.Close;
end;

procedure TFCadLinhaProd.Fnc_FechaDataSource;
begin
  DMProduto.cdsViewProduto.Close;
  DMProduto.cdsDadosProduto.Close;
end;

procedure TFCadLinhaProd.Act_Btn_NovoExecute(Sender: TObject);
begin
//  inherited;
  cdsCadastro.Close;
  qryCadastro.ParamByName('ID').AsInteger := 0;
  cdsCadastro.Open;
  cdsCadastro.Insert;
  cdsCadastroPRL_ID.AsInteger := HandleCadastro;

  Fnc_MostraDadosGrid;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Novo.Hint+'  ';
end;

procedure TFCadLinhaProd.Act_Btn_AlterarExecute(Sender: TObject);
begin
//  inherited;
  if not (cdsConsulta.RecordCount>0) then
  begin
    MessageBox(Application.Handle,' É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  HandleCadastro := cdsConsulta.FindField('PRL_ID').AsInteger;
  cdsCadastro.Close;
  qryCadastro.ParamByName('ID').AsInteger := HandleCadastro;
  cdsCadastro.Open;
  cdsCadastro.Edit;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
end;

procedure TFCadLinhaProd.Act_Btn_InserirExecute(Sender: TObject);
begin
  inherited;
      Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFCadLinhaProd.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  inherited;
//  inherited;
  if MessageBox(Application.Handle,PAnsiChar('Deseja Excluir este item?'+#13+cdsConsulta.FindField('PRL_DESCRICAO').AsString),'Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    cdsCadastro.Close;
    qryCadastro.ParamByName('ID').AsInteger := cdsConsulta.FindField('PRL_ID').AsInteger;
    cdsCadastro.Open;
    cdsCadastro.Edit;
    cdsCadastroPRL_ATIVO.AsBoolean := false;
    cdsCadastro.ApplyUpdates(-1);
  end;
  cdsCadastro.Close;
  Fnc_AtualizaGrid;
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  HandleCadastro := 0;
  GroupBox1.Caption := '';
end;

procedure TFCadLinhaProd.Act_Btn_GravarExecute(Sender: TObject);
var var_combo:string;
begin
  inherited;
  cdsCadastro.ApplyUpdates(-1);
  cdsCadastro.Close;
  Edit1.SetFocus;
  Fnc_AtualizaGrid();
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  HandleCadastro := 0;
  GroupBox1.Caption := '';
end;

procedure TFCadLinhaProd.Act_Btn_CancelarExecute(Sender: TObject);
begin
  inherited;
  if (cdsCadastro.State in [DsInsert,DsEdit,dsBrowse]) then
    if Fnc_MsgSalvar(DBEdit1.Text,'','','')= 'salvar' then
     if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
       Act_Btn_Gravar.Execute;
  Fnc_CancelaOperacao();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  HandleCadastro := 0;
  GroupBox1.Caption := '';
end;

procedure TFCadLinhaProd.Act_Btn_SairExecute(Sender: TObject);
begin
  inherited;
  HandleCadastro := 0;
  Self.Close;
end;

procedure TFCadLinhaProd.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
    BtnEditar.Click;
end;

procedure TFCadLinhaProd.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
    var i: SmallInt;
begin
  inherited;
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

procedure TFCadLinhaProd.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  inherited;
  if (GdSelected in State) then
  begin
    DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
    If cdsConsultaPRL_ATIVO.AsBoolean = false then
    DBGrid1.Canvas.Font.Color:= clMedGray
    else
    DBGrid1.Canvas.Font.Color  := clHighlight;
    DBGrid1.Canvas.Font.Style  := [fsBold];
  end
  else
  begin
    If cdsConsultaPRL_ATIVO.AsBoolean = false then
    DBGrid1.Canvas.Font.Color:= clMedGray
    else
    DBGrid1.Canvas.Font.Color:= clBlack;
  end;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

end.
