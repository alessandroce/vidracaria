unit uFormBuscaTipo_OrcPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, ComCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TFormBuscaTipo_OrcPed = class(TForm)
    btnCadastro: TSpeedButton;
    btnFechar: TSpeedButton;
    lbMensagem: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    sbBuscaMensalista: TStatusBar;
    ActionList1: TActionList;
    Act_Btn_Selecionar: TAction;
    Act_Btn_Cadastrar: TAction;
    Act_Btn_Cancelar: TAction;
    ImageList1: TImageList;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_SelecionarExecute(Sender: TObject);
    procedure Act_Btn_CadastrarExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_AtualizaBuscaTipo();
  end;

var
  FormBuscaTipo_OrcPed: TFormBuscaTipo_OrcPed;

implementation

uses uDMOrcamentoPedido, uFormCadOrcamentoTipo, uCadOrcamentoPedido;

{$R *.dfm}

{ TFormBuscaTipo_OrcPed }

procedure TFormBuscaTipo_OrcPed.Fnc_AtualizaBuscaTipo();
begin
  DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.Close;
  DMOrcamentoPedido.qryViewOrcPedido_tipoBusca.ParamByName('TIPO').AsString := '%' + Edit1.Text + '%';
  DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.Open;
  if DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.RecordCount > 0 then
  begin
    lbMensagem.Visible  := false;
    btnCadastro.Visible := false;
  end
  else
  begin
    lbMensagem.Visible  := true;
    btnCadastro.Visible := true;
  end;
end;

procedure TFormBuscaTipo_OrcPed.DBGrid1DblClick(Sender: TObject);
begin
Act_Btn_Selecionar.Execute;
end;

procedure TFormBuscaTipo_OrcPed.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  Self.Close;
end;

procedure TFormBuscaTipo_OrcPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    Self.Close;
  end;
end;

procedure TFormBuscaTipo_OrcPed.FormShow(Sender: TObject);
begin
  DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.Close;
  DMOrcamentoPedido.qryViewOrcPedido_tipoBusca.ParamByName('TIPO').AsString := '%'+Edit1.Text+'%';
  DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.Open;

  //Edit1.Text := FormCadOrcamentoPedido.ComboBox2.Text;
  Edit1.SetFocus;

  DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.Close;
  //DMOrcamentoPedido.qryViewOrcPedido_tipoBusca.ParamByName('TIPO').AsString := '%' + FormCadOrcamentoPedido.ComboBox2.Text + '%';
  DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.Open;
  if DMOrcamentoPedido.cdsViewOrcPedido_tipoBusca.RecordCount > 0 then
  begin
    lbMensagem.Visible  := false;
    btnCadastro.Visible := false;
  end
  else
  begin
    lbMensagem.Visible  := true;
    btnCadastro.Visible := true;
  end;
end;

procedure TFormBuscaTipo_OrcPed.Act_Btn_SelecionarExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaTipo_OrcPed.Act_Btn_CadastrarExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadOrcamentoTipo, FormCadOrcamentoTipo);
    FormCadOrcamentoTipo.ShowModal;
  Finally
    FormCadOrcamentoTipo.Free
  end;
  Fnc_AtualizaBuscaTipo();
end;

procedure TFormBuscaTipo_OrcPed.Act_Btn_CancelarExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaTipo_OrcPed.Edit1Change(Sender: TObject);
begin
  Fnc_AtualizaBuscaTipo();
end;

procedure TFormBuscaTipo_OrcPed.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  DBGrid1.SetFocus;
end;

end.
