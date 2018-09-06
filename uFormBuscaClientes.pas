unit uFormBuscaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ImgList, ActnList, ExtCtrls,
  ToolWin, ComCtrls, Menus, AppEvnts;

type
  TFormBuscaClientes = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
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
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    bt_Bancos: TAction;
    bt_Incremento: TAction;
    bt_Decremento: TAction;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    btn_Alterar: TAction;
    btn_Excluir: TAction;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    BitBtn2: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_AlterarExecute(Sender: TObject);
    procedure btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  var_FormOrigemVendas : String;
  var_acao : String;
  end;

var
  FormBuscaClientes: TFormBuscaClientes;

implementation

uses uDMClientes, uCadClientes, DB, uRelatorioClientesPrint,
  uBibliotecaFuncoes;

{$R *.dfm}

procedure TFormBuscaClientes.Act_Btn_LocalizarExecute(Sender: TObject);
begin
DMCadClientes.cdsViewBuscaClientes.Close;
DMCadClientes.qryViewBuscaClientes.ParamByName('CLI_CLIENTE').AsString := '%'+Edit1.Text+'%';
DMCadClientes.cdsViewBuscaClientes.Open;
end;

procedure TFormBuscaClientes.Act_Btn_NovoExecute(Sender: TObject);
begin
  var_FormOrigemVendas := 'FORMBUSCA';
  var_acao := 'inserir';
  try
    Application.CreateForm(TFormCadCliente, FormCadCliente);

    FormCadCliente.ShowModal;
  Finally
    FormCadCliente.Free
  end;
  Act_Btn_Localizar.Execute;
end;

procedure TFormBuscaClientes.Act_Btn_AlterarExecute(Sender: TObject);
begin
  if DMCadClientes.cdsViewBuscaClientes.RecordCount = 0 then
  begin
  MessageBox(Application.Handle,' Selecione um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  Exit;
  end;

  var_FormOrigemVendas := 'FORMBUSCA';
  var_acao := 'alterar';
  try
    Application.CreateForm(TFormCadCliente, FormCadCliente);

    FormCadCliente.ShowModal;
  Finally
    FormCadCliente.Free
  end;
  Act_Btn_Localizar.Execute;
end;

procedure TFormBuscaClientes.Act_Btn_SairExecute(Sender: TObject);
begin
Self.Close;
end;

procedure TFormBuscaClientes.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  if DMCadClientes.cdsViewBuscaClientes.RecordCount = 0 then
  begin
  MessageBox(Application.Handle,' Selecione um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  Exit;
  end;
//  if MessageBox(Application.Handle, '  Deseja Excluir este item?  ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  DMCadClientes.cdsDadosCadClientes.Close;
  DMCadClientes.qryDadosCadClientes.ParamByName('ID').AsInteger := DMCadClientes.cdsViewBuscaClientes.FindField('CLI_ID').AsInteger;
  DMCadClientes.cdsDadosCadClientes.Open;
  DMCadClientes.cdsDadosCadClientes.edit;
  DMCadClientes.cdsDadosCadClientesCLI_ATIVO.AsBoolean := false;
  DMCadClientes.cdsDadosCadClientes.ApplyUpdates(-1);
  Act_Btn_Localizar.Execute;
  
end;

procedure TFormBuscaClientes.DBGrid1DblClick(Sender: TObject);
begin
  Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaClientes.btn_AlterarExecute(Sender: TObject);
begin
Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaClientes.btn_ExcluirExecute(Sender: TObject);
begin
Act_Btn_Excluir.Execute;
end;

procedure TFormBuscaClientes.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormRelatorioClientesPrint, FormRelatorioClientesPrint);
    FormRelatorioClientesPrint.RelatorioClientes.Preview;
  Finally
    FormRelatorioClientesPrint.Free;
  End;
end;

procedure TFormBuscaClientes.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormBuscaClientes.DBGrid1MouseMove(Sender: TObject;
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

procedure TFormBuscaClientes.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrids(Column);
end;

procedure TFormBuscaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMCadClientes.cdsViewBuscaClientes.Close;
end;

procedure TFormBuscaClientes.Edit1Change(Sender: TObject);
begin
  Act_Btn_Localizar.Execute;
end;

end.
