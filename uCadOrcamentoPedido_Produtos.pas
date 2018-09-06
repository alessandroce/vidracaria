unit uCadOrcamentoPedido_Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DB,
  ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBClient;

type
  TFormCadOrcamentoPedido_Produtos = class(TForm)
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
    cbAcabamento: TComboBox;
    Label1: TLabel;
    edQtdeAcabamento: TEdit;
    Label2: TLabel;
    cbCorAcabamento: TComboBox;
    Label3: TLabel;
    Bevel1: TBevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btIncluir: TBitBtn;
    btExcluir: TBitBtn;
    cdsAcabamentoProduto: TClientDataSet;
    dsAcabamentoProduto: TDataSource;
    cdsAcabamentoProdutoACABAMENTO: TStringField;
    cdsAcabamentoProdutoQTDE_ACABAMENTO: TFloatField;
    cdsAcabamentoProdutoCOR_ACABAMENTO: TStringField;
    cxGrid1DBTableView1ACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1QTDE_ACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1COR_ACABAMENTO: TcxGridDBColumn;
    cdsAcabamentoProdutoTIPO_ACABAMENTO: TStringField;
    cxGrid1DBTableView1TIPO_ACABAMENTO: TcxGridDBColumn;
    Label4: TLabel;
    cbTipoAcabamento: TComboBox;
    cdsAcabamentoProdutoITENS_ORCPED_ID: TIntegerField;
    cdsAcabamentoProdutoITENS_PRODUTO: TIntegerField;
    cxGrid1DBTableView1ITENS_ORCPED_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ITENS_PRODUTO: TcxGridDBColumn;
    procedure btLocalizarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edQuantidadeChange(Sender: TObject);
    procedure edValorChange(Sender: TObject);
    procedure edUnidadeMedidaChange(Sender: TObject);
    procedure edEspessuraChange(Sender: TObject);
    procedure edAlturaChange(Sender: TObject);
    procedure edLarguraChange(Sender: TObject);
    procedure edMedidaChange(Sender: TObject);
    procedure edValorTotalChange(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure edEspessuraKeyPress(Sender: TObject; var Key: Char);
    procedure edAlturaKeyPress(Sender: TObject; var Key: Char);
    procedure edLarguraKeyPress(Sender: TObject; var Key: Char);
    procedure edQuantidadeExit(Sender: TObject);
    procedure edValorExit(Sender: TObject);
    procedure edAlturaExit(Sender: TObject);
    procedure edLarguraExit(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FQuantidade : Extended;
    FValor      : Extended;
    FUnidMedida : Extended;
    FEspessura  : Extended;
    FAltura     : Extended;
    FLargura    : Extended;
    FMedida     : Extended;
    FValorTotal : Extended;
    function ValidaBotaoGravar:Boolean;
    procedure ValidaCampos;
    function getField(pEdit:TEdit;var pField:Extended):Extended;
    procedure LimpaCamposAcabamento;
  public
    { Public declarations }
    FHandleOrcPedido : Integer;
    FHandleProduto : Integer;
    procedure CalculaValorTotal;
  end;

var
  FormCadOrcamentoPedido_Produtos: TFormCadOrcamentoPedido_Produtos;

implementation

uses uDMOrcamentoPedido, uBuscaProdutos_OrcPedido, uCadOrcamentoPedido,
  uBibliotecaFuncoes;

{$R *.dfm}

procedure TFormCadOrcamentoPedido_Produtos.btLocalizarClick(Sender: TObject);
begin
  try
    FormBuscaProdutos_OrcPedido := TFormBuscaProdutos_OrcPedido.Create(Self);
    FormBuscaProdutos_OrcPedido.FNomeProduto := edProduto.text;
    FormBuscaProdutos_OrcPedido.FChamada := 'Produto';
    FormBuscaProdutos_OrcPedido.ShowModal;
    edQuantidade.Text := '1';
    FHandleProduto    := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_ID.AsInteger;
    edValor.Text      := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_VALOR.AsString;
    edProduto.Text    := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_DESCRICAO.AsString;
    edUnidadeMedida.Text := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_UNIDMEDIDA.AsString;
    edEspessura.Text := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_ESPESSURA.AsString;
    edAltura.Text    := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_ALTURA.AsString;
    edLargura.Text   := DMOrcamentoPedido.cdsViewOrcPedido_BuscaProdutoPROD_LARGURA.AsString;
    CalculaValorTotal;
  Finally
    FormBuscaProdutos_OrcPedido.Free
  end;
end;

procedure TFormCadOrcamentoPedido_Produtos.btGravarClick(Sender: TObject);
begin
  if not ValidaBotaoGravar then
    Exit;
  ValidaCampos;
  if Assigned(FormCadOrcamentoPedido) then
  begin
    FormCadOrcamentoPedido.InserirProduto(FHandleProduto,
                                          edProduto.Text,
                                          StrToFloat(edValor.Text),
                                          edUnidadeMedida.Text,
                                          StrToFloat(edEspessura.Text),
                                          StrToFloat(edLargura.Text),
                                          StrToFloat(edAltura.Text),
                                          StrToFloat(edMedida.Text),
                                          StrToFloat(edQuantidade.text),
                                          StrToFloat(edValorTotal.text),
                                          cbAcabamento.Text,
                                          edQtdeAcabamento.Text,
                                          cbCorAcabamento.Text
                                          );
    FormCadOrcamentoPedido.InserirAcabamento(cdsAcabamentoProduto);
  end;
  cdsAcabamentoProduto.EmptyDataSet;
end;

procedure TFormCadOrcamentoPedido_Produtos.btFecharClick(Sender: TObject);
begin
  cdsAcabamentoProduto.EmptyDataSet;
  Close;
end;

procedure TFormCadOrcamentoPedido_Produtos.edProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    btLocalizar.Click;
end;

procedure TFormCadOrcamentoPedido_Produtos.CalculaValorTotal;
var RAlturaxLargura : Extended;
begin
  if FQuantidade=0 then
    FQuantidade :=1;
  if FValor>0 then
  begin
    FValorTotal := FQuantidade*FValor;
    edValorTotal.Text := FormatFloat('0.00',FValorTotal);
  end;
  if ((FAltura>0) and (FLargura>0)) then
  begin
    RAlturaxLargura := FAltura*FLargura;
    FValorTotal:= FValorTotal*RAlturaxLargura;
    edValorTotal.Text := FormatFloat('0.00',FValorTotal);
  end;
end;

function TFormCadOrcamentoPedido_Produtos.ValidaBotaoGravar: Boolean;
begin
  Result := ((Length(edProduto.Text)>0) and (Length(edQuantidade.Text)>0) and (Length(edValor.Text)>0))
end;

procedure TFormCadOrcamentoPedido_Produtos.ValidaCampos;
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

function TFormCadOrcamentoPedido_Produtos.getField(pEdit: TEdit;var pField: Extended): Extended;
begin
  try
    if (pEdit.Text='') then
      pField := 0
    else
      pField := StrToFloat(pEdit.Text);
  except
  end;
end;

procedure TFormCadOrcamentoPedido_Produtos.edQuantidadeChange(Sender: TObject);
begin
  getField(edQuantidade,FQuantidade);
end;

procedure TFormCadOrcamentoPedido_Produtos.edValorChange(Sender: TObject);
begin
  getField(edValor,FValor);
end;

procedure TFormCadOrcamentoPedido_Produtos.edUnidadeMedidaChange(
  Sender: TObject);
begin
  //getField(edUnidadeMedida,FUnidMedida);
end;

procedure TFormCadOrcamentoPedido_Produtos.edEspessuraChange(
  Sender: TObject);
begin
  getField(edEspessura,FEspessura);
end;

procedure TFormCadOrcamentoPedido_Produtos.edAlturaChange(Sender: TObject);
begin
  getField(edAltura,FAltura);
end;

procedure TFormCadOrcamentoPedido_Produtos.edLarguraChange(
  Sender: TObject);
begin
  getField(edLargura,FLargura);
end;

procedure TFormCadOrcamentoPedido_Produtos.edMedidaChange(Sender: TObject);
begin
  getField(edMedida,FMedida);
end;

procedure TFormCadOrcamentoPedido_Produtos.edValorTotalChange(
  Sender: TObject);
begin
  getField(edValorTotal,FValorTotal);
end;

procedure TFormCadOrcamentoPedido_Produtos.edQuantidadeKeyPress(
  Sender: TObject; var Key: Char);
begin
  NumericalKey(Key);
end;

procedure TFormCadOrcamentoPedido_Produtos.edValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  NumericalKey(Key);
end;

procedure TFormCadOrcamentoPedido_Produtos.edEspessuraKeyPress(
  Sender: TObject; var Key: Char);
begin
  NumericalKey(Key);
end;

procedure TFormCadOrcamentoPedido_Produtos.edAlturaKeyPress(
  Sender: TObject; var Key: Char);
begin
  NumericalKey(Key);
end;

procedure TFormCadOrcamentoPedido_Produtos.edLarguraKeyPress(
  Sender: TObject; var Key: Char);
begin
  NumericalKey(Key);
end;

procedure TFormCadOrcamentoPedido_Produtos.edQuantidadeExit(
  Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TFormCadOrcamentoPedido_Produtos.edValorExit(Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TFormCadOrcamentoPedido_Produtos.edAlturaExit(Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TFormCadOrcamentoPedido_Produtos.edLarguraExit(Sender: TObject);
begin
  CalculaValorTotal;
end;

procedure TFormCadOrcamentoPedido_Produtos.btIncluirClick(Sender: TObject);
begin
  if (cbAcabamento.Text='') then
    Exit;
  if not(cdsAcabamentoProduto.State=dsInsert) then
    cdsAcabamentoProduto.Insert;
  cdsAcabamentoProdutoITENS_ORCPED_ID.AsInteger := FHandleOrcPedido;
  cdsAcabamentoProdutoITENS_PRODUTO.AsInteger    := FHandleProduto;
  cdsAcabamentoProdutoTIPO_ACABAMENTO.AsString  := cbTipoAcabamento.Text;
  cdsAcabamentoProdutoACABAMENTO.AsString       := cbAcabamento.Text;
  if not(edQtdeAcabamento.text='') then
    cdsAcabamentoProdutoQTDE_ACABAMENTO.AsFloat := StrToFloat(edQtdeAcabamento.text);
  cdsAcabamentoProdutoCOR_ACABAMENTO.AsString   := cbCorAcabamento.Text;
  cdsAcabamentoProduto.Post;
  //LimpaCamposAcabamento;
end;

procedure TFormCadOrcamentoPedido_Produtos.FormShow(Sender: TObject);
begin
  cdsAcabamentoProduto.Close;
  cdsAcabamentoProduto.CreateDataSet;
  cdsAcabamentoProduto.Open;
end;

procedure TFormCadOrcamentoPedido_Produtos.btExcluirClick(Sender: TObject);
begin
  if not cdsAcabamentoProduto.IsEmpty then
    cdsAcabamentoProduto.Delete;
end;

procedure TFormCadOrcamentoPedido_Produtos.LimpaCamposAcabamento;
begin
  cbTipoAcabamento.ItemIndex := 0;
  cbAcabamento.ItemIndex     := 0;
  edQtdeAcabamento.Clear;
  cbCorAcabamento.ItemIndex  := 0;
end;

end.
