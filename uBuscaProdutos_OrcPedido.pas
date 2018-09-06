unit uBuscaProdutos_OrcPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, ImgList, ActnList, Grids, DBGrids,
  Mask, DBCtrls;

type
  TFormBuscaProdutos_OrcPedido = class(TForm)
    ActionList1: TActionList;
    Act_Btn_Selecionar: TAction;
    Act_Btn_Cadastrar: TAction;
    ImageList1: TImageList;
    lbMensagem: TLabel;
    btnCadastro: TSpeedButton;
    btnFechar: TSpeedButton;
    sbBuscaMensalista: TStatusBar;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    Act_Btn_Cancelar: TAction;
    Edit1: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_CadastrarExecute(Sender: TObject);
    procedure Act_Btn_SelecionarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     FChamada : String;
     FNomeProduto : String;
     var_FormOrigem      : String;
     var_FormOrigemItens : String;
     procedure Fnc_AtualizaBuscaProduto();
  end;

var
  FormBuscaProdutos_OrcPedido: TFormBuscaProdutos_OrcPedido;

implementation

uses uCadProduto, uDMOrcamentoPedido, uCadOrcamentoPedido_Produtos,
  uCadOrcamentoPedido_Acessorios, uPrincipal, uBibliotecaFuncoes;

{$R *.dfm}

procedure TFormBuscaProdutos_OrcPedido.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    Self.Close;
  end;
end;

procedure TFormBuscaProdutos_OrcPedido.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  Self.Close;
end;

procedure TFormBuscaProdutos_OrcPedido.Act_Btn_CadastrarExecute(
  Sender: TObject);
begin
  var_FormOrigem := 'CADASTROCOMPLETO';
  try
    Application.CreateForm(TFormCadProduto, FormCadProduto);
    FormCadProduto.ShowModal;
  Finally
    FormCadProduto.Free
  end;
  Fnc_AtualizaBuscaProduto();
end;
procedure TFormBuscaProdutos_OrcPedido.Fnc_AtualizaBuscaProduto;
var bVisible : Boolean;
begin
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaProduto.Close;
  DMOrcamentoPedido.qryViewOrcPedido_BuscaProduto.ParamByName('DESCRICAO').AsString := '%'+Edit1.Text+'%';
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaProduto.Open;
  bVisible := not(DMOrcamentoPedido.cdsViewOrcPedido_BuscaProduto.RecordCount>0);
  lbMensagem.Visible  := bVisible;
  btnCadastro.Visible := bVisible;
end;

procedure TFormBuscaProdutos_OrcPedido.Act_Btn_SelecionarExecute(
  Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaProdutos_OrcPedido.DBGrid1DblClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaProdutos_OrcPedido.Act_Btn_CancelarExecute(
  Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaProdutos_OrcPedido.Edit1Change(Sender: TObject);
begin
  Fnc_AtualizaBuscaProduto();
end;

procedure TFormBuscaProdutos_OrcPedido.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
    DBGrid1.SetFocus;
end;

procedure TFormBuscaProdutos_OrcPedido.FormShow(Sender: TObject);
var strProduto, strSql : String;
    bVisible : Boolean;
begin
  if (FChamada='Produto') then
  begin
    if var_FormOrigemItens = 'PRODUTOS' then
    strProduto := FNomeProduto;
    strSql := ' SELECT *                               '#13+
              '   FROM PRODUTO                         '#13+
              '  WHERE PROD_DESCRICAO LIKE :DESCRICAO  '#13+
              '    AND PRODUTO.PROD_PRODTP_ID <> 25    '#13+
              '  ORDER BY PRODUTO.PROD_DESCRICAO       ';

    Edit1.Text := FNomeProduto;
  end;

  if (FChamada='Acessorio') then
  begin
    if var_FormOrigemItens = 'ACESSORIOS' then
    strProduto := FNomeProduto;
    strSql := ' SELECT *                              '#13+
              '   FROM PRODUTO                        '#13+
              '  WHERE PROD_DESCRICAO LIKE :DESCRICAO '#13+
              '    AND PRODUTO.PROD_PRODTP_ID = 25    '#13+
              '  ORDER BY PRODUTO.PROD_DESCRICAO      ';

    Edit1.Text := FNomeProduto;
  end;
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaProduto.Close;
  with DMOrcamentoPedido.qryViewOrcPedido_BuscaProduto do
  begin
    SQL.Clear;
    SQL.Add(strSQL);
    ParamByName('DESCRICAO').AsString := '%'+strProduto+'%';
  end;
  DMOrcamentoPedido.cdsViewOrcPedido_Busca.Open;
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaProduto.Open;
  bVisible := not(DMOrcamentoPedido.cdsViewOrcPedido_BuscaProduto.RecordCount>0);
  lbMensagem.Visible  := bVisible;
  btnCadastro.Visible := bVisible;
  Edit1.SetFocus;
  //Fnc_AtualizaBuscaProduto();
end;



end.