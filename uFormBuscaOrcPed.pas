unit uFormBuscaOrcPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ActnList, ImgList, Buttons, ExtCtrls, ToolWin,
  StdCtrls, Grids, DBGrids, DB, AppEvnts;

type
  TFormBuscaOrcPed = class(TForm)
    ToolBar1: TToolBar;
    Bevel1: TBevel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnSair: TSpeedButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Gravar: TAction;
    Act_Btn_Inserir: TAction;
    Act_Btn_Alterar: TAction;
    Act_Btn_Excluir: TAction;
    Act_Btn_Imprimir: TAction;
    Act_Btn_Sair: TAction;
    Act_Btn_Novo: TAction;
    Act_Btn_Cancelar: TAction;
    Act_Btn_Localizar: TAction;
    Serv_Inserir: TAction;
    Serv_Alterar: TAction;
    Serv_Excluir: TAction;
    Pecas_Inserir: TAction;
    Pecas_Alterar: TAction;
    Pecas_Excluir: TAction;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    PopupMenu1: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    StatusBar1: TStatusBar;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    ApplicationEvents1: TApplicationEvents;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Image2: TImage;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;

      var Handled: Boolean);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    FCancelou : Boolean;
    FFormOrigem : String;
    FHandle : Integer;
    acaoOS : String;
    var_FormOrigem : string;
    procedure Fnc_AtualizaBuscaOrcPed(cliente:string;numeroOrcPed:string);
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
    procedure Fnc_OrdenaDbgridporColuna(grid:TDBGrid;coluna:Integer);
  end;

var
  FormBuscaOrcPed: TFormBuscaOrcPed;

implementation

uses uDMOrcamentoPedido, uCadOrcamentoPedido, uBibliotecaFuncoes;

{$R *.dfm}

{ TFormBuscaOrcPed }

procedure TFormBuscaOrcPed.Fnc_AtualizaBuscaOrcPed(cliente, numeroOrcPed: string);
var
    strSQL_OS : string;
begin
  strSQL_OS := 'SELECT * '+
  'FROM VIEW_ORCAMENTOPEDIDO '+
  'WHERE 1 = 1 ';

  if Edit1.Text <> '' then
  strSQL_OS := strSQL_OS +'AND VIEW_ORCAMENTOPEDIDO.cliente LIKE :CLIENTE ';

  if Edit2.Text <> '' then
  strSQL_OS := strSQL_OS +'AND VIEW_ORCAMENTOPEDIDO.numero = :NUMERO ';

  if (ComboBox1.Text = 'Revisão em atraso') then
  strSQL_OS := strSQL_OS + 'AND VIEW_ORCAMENTOPEDIDO.prox_revisao <= :REV '+
                           'AND VIEW_ORCAMENTOPEDIDO.marca_revisao = ''T'' ';

  if numeroOrcPed = '' then
  numeroOrcPed := '0';
  strSQL_OS := strSQL_OS + 'ORDER BY VIEW_ORCAMENTOPEDIDO.numero';

  DMOrcamentoPedido.cdsViewOrcpedido_Busca.Close;
  with DMOrcamentoPedido.qryViewOrcPedido_Busca do
  begin
    SQL.Clear;
    SQL.Add(strSQL_OS);
    if Edit1.Text <> '' then
    ParamByName('CLIENTE').AsString := '%' + cliente + '%';
    if Edit2.Text <> '' then
    ParamByName('NUMERO').AsInteger := StrToInt(numeroOrcPed);
    if (ComboBox1.Text = 'Revisão em atraso') then
    ParamByName('REV').AsDate := Date;
  end;
  DMOrcamentoPedido.cdsViewOrcPedido_Busca.Open;
  Label4.Caption := IntToStr(DMOrcamentoPedido.cdsViewOrcPedido_Busca.RecordCount)+' registro(s)';
end;

procedure TFormBuscaOrcPed.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
//na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := true;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
    //Btn_Localizar.Enabled := true;
    //Edit1.ReadOnly        := not(true);
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := true;
    BtnCancela.Enabled := true;
    //Btn_Localizar.Enabled := false;
    //Edit1.ReadOnly        := not(false);
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
    //Btn_Localizar.Enabled := true;
    //Edit1.ReadOnly        := not(true);
  end;
end;

procedure TFormBuscaOrcPed.Edit2Change(Sender: TObject);
begin
  Fnc_AtualizaBuscaOrcPed(Edit1.Text,Edit2.Text);
end;

procedure TFormBuscaOrcPed.Edit1Change(Sender: TObject);
begin
  Fnc_AtualizaBuscaOrcPed(Edit1.Text,Edit2.Text);
end;

procedure TFormBuscaOrcPed.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  DBGrid1.SetFocus;
end;

procedure TFormBuscaOrcPed.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  DBGrid1.SetFocus;
end;

procedure TFormBuscaOrcPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    Self.Close;
  end;
end;

procedure TFormBuscaOrcPed.DBGrid1DblClick(Sender: TObject);
begin
  Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaOrcPed.Act_Btn_AlterarExecute(Sender: TObject);
begin
  if FFormOrigem='OrcPedido' then
  begin
    FCancelou := False;
    Close;
  end
  else
  begin
    try
     Application.CreateForm(TFormCadOrcamentoPedido, FormCadOrcamentoPedido);
     acaoOS := 'ALTERAR';
     FormCadOrcamentoPedido.FFormOrigem := 'Consulta';
     FormCadOrcamentoPedido.FTipoOrcPedido := Trim(DMOrcamentoPedido.cdsViewOrcPedido_BuscaTIPODOC.AsString);
     FormCadOrcamentoPedido.FHandle := DMOrcamentoPedido.cdsViewOrcPedido_BuscaNUMERO.AsInteger;
     FormCadOrcamentoPedido.ShowModal;
    Finally
      FormCadOrcamentoPedido.Free
    end;
    Fnc_AtualizaBuscaOrcPed(Edit1.Text,Edit2.Text);
  end;
end;

procedure TFormBuscaOrcPed.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle,PAnsiChar('Deseja Excluir este item?'+#13+DMOrcamentoPedido.cdsViewOrcPedido_BuscaCLIENTE2.AsString),'Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DMOrcamentoPedido.cdsDadosOrcPedido.Close;
    DMOrcamentoPedido.qryDadosOrcPedido.ParamByName('ORDPED_ID').AsInteger := DMOrcamentoPedido.cdsViewOrcPedido_BuscaNUMERO.AsInteger;
    DMOrcamentoPedido.cdsDadosOrcPedido.Open;
    DMOrcamentoPedido.cdsDadosOrcPedido.Delete;
    DMOrcamentoPedido.cdsDadosOrcPedido.ApplyUpdates(-1);
  end;
  DMOrcamentoPedido.cdsDadosOrcPedido.Close;
  Fnc_AtualizaBuscaOrcPed(Edit2.Text, Edit1.Text);
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormBuscaOrcPed.Act_Btn_SairExecute(Sender: TObject);
begin
  FCancelou := true;
  Self.Close;
end;

procedure TFormBuscaOrcPed.Act_Btn_NovoExecute(Sender: TObject);
begin
  acaoOS := 'NOVO';
  try
   Application.CreateForm(TFormCadOrcamentoPedido, FormCadOrcamentoPedido);
   FormCadOrcamentoPedido.ShowModal;
  Finally
    FormCadOrcamentoPedido.Free
  end;
  Fnc_AtualizaBuscaOrcPed(Edit1.Text,Edit2.Text);
end;

procedure TFormBuscaOrcPed.Act_Btn_CancelarExecute(Sender: TObject);
begin
  if (DMOrcamentoPedido.cdsDadosOrcPedido.State in [DsInsert,DsEdit]) then
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Act_Btn_Gravar.Execute;
  //limpa os dados da tela
  FCancelou := True;
  DMOrcamentoPedido.cdsDadosOrcPedido.Close;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormBuscaOrcPed.bt_AlterarExecute(Sender: TObject);
begin
  Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaOrcPed.bt_ExcluirExecute(Sender: TObject);
begin
  Act_Btn_Excluir.Execute;
end;

procedure TFormBuscaOrcPed.Act_Btn_LocalizarExecute(Sender: TObject);
begin
  Fnc_AtualizaBuscaOrcPed(Edit1.Text,Edit2.Text);
end;

procedure TFormBuscaOrcPed.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var i: SmallInt;
begin
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

procedure TFormBuscaOrcPed.Fnc_OrdenaDbgridporColuna(grid: TDBGrid;
  coluna: Integer);
var
    Column : TColumn;
begin
//para ordenar a coluna selecionada usar
//DataSource.IndexFieldNames := Column.FieldName;
  {--- restaurando o título ---}
  grid.Columns[grid.Tag].Title.Color      := clBtnFace;
  grid.Columns[grid.Tag].Title.Font.Color := clWindowText;
  grid.Columns[grid.Tag].Title.Font.Style := [];
  {--- end / restaur titulo ---}
  {--- guarda a coluna selecionada ---}
  grid.Tag := coluna;
  {--- end / guarda coluna ---}
  {--- alterando o estilo do titulo para negrito ---}
  grid.Columns[grid.Tag].Title.Font.Style := [fsBold];
  {--- end / alterando estilo ---}

end;

procedure TFormBuscaOrcPed.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrids(Column);
end;

procedure TFormBuscaOrcPed.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (GdSelected in State) then
  begin
    Dbgrid1.Canvas.Brush.Color := clGradientInactiveCaption;
    DBGrid1.Canvas.Font.Color  := clBlack;
  end;
  {if (GdSelected in State) then
    Dbgrid1.Canvas.Brush.Color := clGradientInactiveCaption
  else
    DBGrid1.Canvas.Font.Color := clDefault;}

  DBGrid1.Canvas.Font.Color  := clBlack;//clHighlight;

  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormBuscaOrcPed.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  pt: TGridcoord;
begin
  pt:= DBGrid1.MouseCoord(x, y);
  if pt.y = 0 then
    DBGrid1.Cursor := crHandPoint
  else
    DBGrid1.Cursor := crDefault;
end;

procedure TFormBuscaOrcPed.FormShow(Sender: TObject);
begin
  FCancelou := True;
  Fnc_AtualizaBuscaOrcPed(Edit1.Text,Edit2.Text);
end;

procedure TFormBuscaOrcPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FHandle := DMOrcamentoPedido.cdsViewOrcPedido_BuscaNUMERO.AsInteger;
end;

end.
