unit uCadOrcamentoPedido_Acessorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask, DBCtrls, DBGrids, DB,
  ExtCtrls;

type
  TFormCadOrcamentoPedido_Acessorios = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btFechar: TBitBtn;
    btGravar: TBitBtn;
    Panel2: TPanel;
    btLocalizar: TSpeedButton;
    edProduto: TEdit;
    lblEspessura: TLabel;
    lblAltura: TLabel;
    lblLargura: TLabel;
    lblMedida: TLabel;
    lblValot: TLabel;
    edEspessura: TEdit;
    edAltura: TEdit;
    edLargura: TEdit;
    edMedida: TEdit;
    edValor: TEdit;
    edQuantidade: TEdit;
    lblQuantidade: TLabel;
    edUnidadeMedida: TEdit;
    lblUnidadeMedida: TLabel;
    edValorTotal: TEdit;
    lblValorTotal: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edProdutoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function ValidaBotaoGravar:Boolean;
    procedure ValidaCampos;
  public
    { Public declarations }
    FProduto,
    FEspessura,
    FAltura,
    FLargura,
    FMedida,
    FValor,
    FValorTotal : String;
    procedure CalculaValorTotal;
  end;

var
  FormCadOrcamentoPedido_Acessorios: TFormCadOrcamentoPedido_Acessorios;

implementation

uses uDMOrcamentoPedido, uCadOrcamentoPedido,uBuscaProdutos_OrcPedido;

{$R *.dfm}



procedure TFormCadOrcamentoPedido_Acessorios.FormShow(Sender: TObject);
begin
//
end;

procedure TFormCadOrcamentoPedido_Acessorios.btLocalizarClick(
  Sender: TObject);
begin
  try
    Application.CreateForm(TFormBuscaProdutos_OrcPedido, FormBuscaProdutos_OrcPedido);
    FormBuscaProdutos_OrcPedido.FChamada := 'Acessorio';
    FormBuscaProdutos_OrcPedido.ShowModal;
  Finally
    FormBuscaProdutos_OrcPedido.Free
  end;
  edQuantidade.Text := '1';
  edValor.Text      := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_VALOR.AsString;
  edProduto.Text    := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_DESCRICAO.AsString;
  edUnidadeMedida.Text := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_UNIDMEDIDA.AsString;
  edEspessura.Text := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_ESPESSURA.AsString;
  edAltura.Text    := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_ALTURA.AsString;
  edLargura.Text   := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_LARGURA.AsString;
  CalculaValorTotal;
end;

procedure TFormCadOrcamentoPedido_Acessorios.btGravarClick(Sender: TObject);
begin
  ValidaCampos;
  FormCadOrcamentoPedido.InserirAcessorio(edProduto.Text,
                                        StrToFloat(edValor.Text),
                                        edUnidadeMedida.Text,
                                        StrToFloat(edEspessura.Text),
                                        StrToFloat(edLargura.Text),
                                        StrToFloat(edAltura.Text),
                                        StrToFloat(edMedida.Text),
                                        StrToFloat(edQuantidade.text),
                                        StrToFloat(edValorTotal.text)
                                        );
end;


procedure TFormCadOrcamentoPedido_Acessorios.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadOrcamentoPedido_Acessorios.DBEdit1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btLocalizar.Click;
end;

procedure TFormCadOrcamentoPedido_Acessorios.edProdutoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key=#13 then
    btLocalizar.Click;
end;

procedure TFormCadOrcamentoPedido_Acessorios.CalculaValorTotal;
var vQuantidade, vValor, vValorTotal : Extended;
begin
  if edQuantidade.Text='' then
    edQuantidade.Text:='1';
  vQuantidade := StrToFloat(edQuantidade.Text);
  if edValor.Text='' then
    edValor.Text:='1';
  vValor := StrToFloat(edValor.Text);
  vValorTotal := vQuantidade*vValor;
  edValorTotal.Text := FormatFloat('0.00',vValorTotal);
end;

function TFormCadOrcamentoPedido_Acessorios.ValidaBotaoGravar: Boolean;
begin
  Result := ((Length(edProduto.Text)>0) and (Length(edQuantidade.Text)>0) and (Length(edValor.Text)>0))
end;

procedure TFormCadOrcamentoPedido_Acessorios.ValidaCampos;
begin
  if edValor.Text='' then
    edValor.Text:='0';
  if edUnidadeMedida.Text='' then
    edUnidadeMedida.Text:='0';
  if edEspessura.Text='' then
    edEspessura.Text:='0';
  if edLargura.Text='' then
    edLargura.Text:='0';
  if edAltura.Text='' then
    edAltura.Text:='0';
  if edMedida.Text='' then
    edMedida.Text:='0';
  if edQuantidade.text='' then
    edQuantidade.text:='0';
  if edValorTotal.text='' then
    edValorTotal.text:='0';
end;

end.
