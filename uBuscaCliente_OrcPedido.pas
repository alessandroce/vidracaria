unit uBuscaCliente_OrcPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ImgList, ActnList, Grids, DBGrids;

type
  TFormBuscaCliente_OrcPedido = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Act_Btn_Selecionar: TAction;
    Act_Btn_Cadastrar: TAction;
    ImageList1: TImageList;
    btnCadastro: TSpeedButton;
    btnFechar: TSpeedButton;
    lbMensagem: TLabel;
    sbBuscaMensalista: TStatusBar;
    Act_Btn_Cancelar: TAction;
    SpeedButton1: TSpeedButton;
    procedure Act_Btn_SelecionarExecute(Sender: TObject);
    procedure Act_Btn_CadastrarExecute(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var_FormOrigem : string;
    FHandleCliente : Integer;
    FNomeCliente : String;
    procedure Fnc_AtualizaBuscaClientes();
  end;

var
  FormBuscaCliente_OrcPedido: TFormBuscaCliente_OrcPedido;

implementation

uses uDMOrcamentoPedido, uCadClientes, uCadOrcamentoPedido, uFormPedido;

{$R *.dfm}

procedure TFormBuscaCliente_OrcPedido.Act_Btn_SelecionarExecute(
  Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaCliente_OrcPedido.Act_Btn_CadastrarExecute(
  Sender: TObject);
begin
  var_FormOrigem := 'CADASTROCOMPLETO';
  try
    Application.CreateForm(TFormCadCliente, FormCadCliente);
    FormCadCliente.ShowModal;
  Finally
    FormCadCliente.Free
  end;
  Fnc_AtualizaBuscaClientes();
end;

procedure TFormBuscaCliente_OrcPedido.Edit1Change(Sender: TObject);
begin
  FNomeCliente := Edit1.Text;
  Fnc_AtualizaBuscaClientes();
end;

procedure TFormBuscaCliente_OrcPedido.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
    DBGrid1.SetFocus;
end;

procedure TFormBuscaCliente_OrcPedido.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_Escape then
    Self.Close;
end;

procedure TFormBuscaCliente_OrcPedido.Fnc_AtualizaBuscaClientes;
var bVisible: Boolean;
begin
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.Close;
  DMOrcamentoPedido.qryViewOrcPedido_BuscaCliente.ParamByName('NOME').AsString := '%' + FNomeCliente + '%';
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.Open;
  bVisible := not(DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.RecordCount>0);
  lbMensagem.Visible  := bVisible;
  btnCadastro.Visible := bVisible;
end;

procedure TFormBuscaCliente_OrcPedido.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Self.Close;
end;

procedure TFormBuscaCliente_OrcPedido.Act_Btn_CancelarExecute(
  Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaCliente_OrcPedido.DBGrid1DblClick(Sender: TObject);
begin
  Act_Btn_Selecionar.Execute;
end;

procedure TFormBuscaCliente_OrcPedido.FormShow(Sender: TObject);
var bVisible : Boolean;
begin
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.Close;
  DMOrcamentoPedido.qryViewOrcPedido_BuscaCliente.ParamByName('NOME').AsString := '%'+ FNomeCliente +'%';
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.Open;
  Edit1.Text := FNomeCliente;
  Edit1.SetFocus;
  bVisible := not(DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.RecordCount>0);
  lbMensagem.Visible  := bVisible;
  btnCadastro.Visible := bVisible;
end;

end.
