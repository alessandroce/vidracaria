unit uFormBuscaClienteOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, ActnList, ImgList, Grids, DBGrids, ComCtrls, Buttons,
  StdCtrls;

type
  TFormBuscaClienteOS = class(TForm)
    lbMensagem: TLabel;
    btnFechar: TSpeedButton;
    btnCadastro: TSpeedButton;
    sbBuscaMensalista: TStatusBar;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Fechar: TAction;
    Act_Btn_Cadastrar: TAction;
    ApplicationEvents1: TApplicationEvents;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    Procedure Fnc_AtualizaBuscaClientes();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure Act_Btn_FecharExecute(Sender: TObject);
    procedure Act_Btn_CadastrarExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    var_NomeCliente : String;
    var_FormOrigemOS : String;
  end;

var
  FormBuscaClienteOS: TFormBuscaClienteOS;

implementation

uses uDMOrdemServico, uFormOrdemServico, uCadClientes, DB;

{$R *.dfm}

procedure TFormBuscaClienteOS.Fnc_AtualizaBuscaClientes;
var
    var_idcliente : integer;
begin
  DMOrdemServico.cdsViewOS_ClienteOS.Close;
  DMOrdemServico.qryViewOS_ClienteOS.ParamByName('NOME').AsString := '%' + Edit1.Text + '%';
  DMOrdemServico.cdsViewOS_ClienteOS.Open;

  if DMOrdemServico.cdsViewOS_ClienteOS.RecordCount > 0 then
  begin
    lbMensagem.Visible := false
  end
  else
  begin
    lbMensagem.Visible := true;
    btnCadastro.Visible := true;
  end;

end;

procedure TFormBuscaClienteOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then begin
    Self.Close;
  end;

  if (key = vk_F2) and (btnCadastro.Visible = true) then begin
    btnCadastro.Click();
  end;
end;

procedure TFormBuscaClienteOS.FormShow(Sender: TObject);
begin
  Edit1.Text := FormOrdemServico.ComboBox1.Text;
  Edit1.SetFocus;
  Fnc_AtualizaBuscaClientes();
end;

procedure TFormBuscaClienteOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //FormOrdemServico.cbCliente.Text := DMOrdemServico.cdsViewOS_ClienteOSRAZAO_SOCIAL.AsString;
end;

procedure TFormBuscaClienteOS.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormBuscaClienteOS.Act_Btn_FecharExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaClienteOS.Act_Btn_CadastrarExecute(Sender: TObject);
begin
    var_NomeCliente  := Edit1.Text; //FormOrdemServico.ComboBox1.Text;
    var_FormOrigemOS := 'FORMOS';
  try
    Application.CreateForm(TFormCadCliente, FormCadCliente);
    FormCadCliente.ShowModal;
  Finally
    FormCadCliente.Free;
  end;
  Fnc_AtualizaBuscaClientes();
end;

procedure TFormBuscaClienteOS.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    FormOrdemServico.ComboBox1.Text := DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_CLIENTE').AsString;
    FormOrdemServico.Edit1.Text := DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_FONE').AsString;
    FormOrdemServico.Edit2.Text := DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_CELULAR').AsString;
    FormOrdemServico.Edit3.Text := Inttostr(DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_ID').AsInteger);
    Self.Close;
  end;
end;

procedure TFormBuscaClienteOS.Edit1Change(Sender: TObject);
begin
  Fnc_AtualizaBuscaClientes();
end;

procedure TFormBuscaClienteOS.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    DBGrid1.SetFocus;
end;

procedure TFormBuscaClienteOS.DBGrid1DblClick(Sender: TObject);
begin
  FormOrdemServico.ComboBox1.Text := DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_CLIENTE').AsString;
  FormOrdemServico.Edit1.Text := DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_FONE').AsString;
  FormOrdemServico.Edit2.Text := DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_CELULAR').AsString;
  FormOrdemServico.Edit3.Text := Inttostr(DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_ID').AsInteger);
  Self.Close;
end;

procedure TFormBuscaClienteOS.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (GdSelected in State) then
  begin
    DBGrid1.Canvas.Brush.Color := clInactiveCaptionText;
    DBGrid1.Canvas.Font.Color  := clblack;
  end;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

end.
