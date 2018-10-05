unit uFormBuscaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ImgList, ActnList, ExtCtrls,
  ToolWin, Grids, DBGrids, Menus, AppEvnts, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormBuscaPedido = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar2: TToolBar;
    Bevel1: TBevel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnSair: TSpeedButton;
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
    bt_Excluir: TAction;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Bevel2: TBevel;
    Label3: TLabel;
    ActionList2: TActionList;
    bt_Visualizar: TAction;
    bt_Desmarcar: TAction;
    ImageList2: TImageList;
    PopupMenu4: TPopupMenu;
    Desmarcar1: TMenuItem;
    Image2: TImage;
    Label4: TLabel;
    ApplicationEvents1: TApplicationEvents;
    Panel1: TPanel;
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    acaoPedido :string;
    procedure Fnc_AtualizaBuscaPedido(cliente:string;numeroPedido:string);

  end;

var
  FormBuscaPedido: TFormBuscaPedido;


implementation

uses UDMPedido, uFormPedido, uDMPrincipal, uDMOrcamentoPedido,
  uPrincipal, uBibliotecaFuncoes;

{$R *.dfm}

procedure TFormBuscaPedido.Act_Btn_LocalizarExecute(Sender: TObject);
begin
  Fnc_AtualizaBuscaPedido(Edit1.Text,Edit2.Text);
end;

procedure TFormBuscaPedido.Fnc_AtualizaBuscaPedido(cliente, numeroPedido: string);
var
    strSQL : string;
begin
  strSQL := 'SELECT * '+
            'FROM VIEW_PEDIDO '+
            'WHERE 1 = 1 ';

  if Edit1.Text <> '' then
  strSQL := strSQL +'AND VIEW_PEDIDO.PED_ID =:ID ';
  if Edit2.Text <> '' then
  strSQL := strSQL +'AND VIEW_PEDIDO.CLI_CLIENTE LIKE :CLIENTE ';

  DMPedido.cdsViewPedido_Busca.Close;
  with DMPedido.qryViewPedido_Busca do
  begin
    SQL.Clear;
    SQL.Add(strSQL);
    if Edit1.Text <> '' then
    ParamByName('ID').AsInteger := StrToInt(Edit1.Text);
    if Edit2.Text <> '' then
    ParamByName('CLIENTE').AsString := '%'+Edit2.Text+'%';
  end;
  DMPedido.cdsViewPedido_Busca.Open;
  Label3.Caption := IntToStr(DMPedido.cdsViewPedido_Busca.RecordCount)+' registro(s)';
end;

procedure TFormBuscaPedido.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Act_Btn_Localizar.Execute;
end;

procedure TFormBuscaPedido.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
Act_Btn_Localizar.Execute;
end;

procedure TFormBuscaPedido.Act_Btn_InserirExecute(Sender: TObject);
begin
  acaoPedido := 'NOVO';
  try
    Application.CreateForm(TFormPedido, FormPedido);
    FormPedido.ShowModal;
  Finally
    FormPedido.Free
  end;
  Act_Btn_Localizar.Execute;
end;

procedure TFormBuscaPedido.Act_Btn_AlterarExecute(Sender: TObject);
begin
  if DMPedido.cdsViewPedido_Busca.RecordCount > 0 then
  begin
    acaoPedido := 'ALTERAR';
    try
      Application.CreateForm(TFormPedido, FormPedido);
      FormPedido.ShowModal;
    Finally
      FormPedido.Free
    end;
    Act_Btn_Localizar.Execute;
  end
  else
  begin
    MessageBox(Application.Handle,'É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TFormBuscaPedido.Act_Btn_ExcluirExecute(Sender: TObject);
begin
    if DMPedido.cdsViewPedido_Busca.RecordCount > 0 then
    begin

      if MessageBox(Application.Handle,'Deseja Excluir permanentemente este registro? ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        DMPedido.cdsDadosPedido.Close;
        DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := DMPedido.cdsViewPedido_Busca.FindField('PED_ID').AsInteger;
        DMPedido.cdsDadosPedido.Open;
        DMPedido.cdsDadosPedido.Delete;
        DMPedido.cdsDadosPedido.ApplyUpdates(-1);
        DMPedido.cdsDadosPedido.Close;
        Act_Btn_Localizar.Execute;
      end;

    end
    else
    begin
      MessageBox(Application.Handle,'É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    end;
end;

procedure TFormBuscaPedido.FormShow(Sender: TObject);
begin
  Act_Btn_Localizar.Execute;
end;

procedure TFormBuscaPedido.Act_Btn_SairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaPedido.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (GdSelected in State) then
  begin
    Dbgrid1.Canvas.Brush.Color := clGradientInactiveCaption;

    if (DMPedido.cdsViewPedido_BuscaPED_MANUT_EFETUADA.AsBoolean = false) and
       (DMPedido.cdsViewPedido_BuscaPED_DATA_MANUT.AsDateTime <= Date) then
    DBGrid1.Canvas.Font.Color:= clRed
    else
    DBGrid1.Canvas.Font.Color  := clBlack;//clHighlight;
    //DBGrid1.Canvas.Font.Style  := [fsBold];
  end
  else
  begin

    if (DMPedido.cdsViewPedido_BuscaPED_MANUT_EFETUADA.AsBoolean = false) and
       (DMPedido.cdsViewPedido_BuscaPED_DATA_MANUT.AsDateTime <= Date) then
    DBGrid1.Canvas.Font.Color:= clRed
    else
    DBGrid1.Canvas.Font.Color := clDefault;

  end;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormBuscaPedido.DBGrid1DblClick(Sender: TObject);
begin
Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaPedido.DBGrid1MouseMove(Sender: TObject;
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

procedure TFormBuscaPedido.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrids(Column);
end;

procedure TFormBuscaPedido.ApplicationEvents1Message(var Msg: tagMSG;
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

end.
