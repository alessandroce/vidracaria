unit uCadOrcamentoVComiss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, DBCtrls, Mask,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  IBCustomDataSet, frxClass, frxIBXComponents, ActnList, ImgList, IBQuery,
  ExtCtrls, ComCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFCadOrcamentoVComiss = class(TFCadPadrao)
    qConsultaVCOR_ID: TIntegerField;
    qConsultaVCOR_CODIGO: TIntegerField;
    qConsultaVCOR_DATAEMISSAO: TDateField;
    qConsultaVCOR_CLIENTE_ID: TIntegerField;
    qConsultaVCOR_VALORTOTAL: TIBBCDField;
    qConsultaVCOR_CONDICAOPAGTO: TIBStringField;
    qConsultaVCOR_DH_CA: TDateTimeField;
    grConsultaDBTableView1VCOR_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_DATAEMISSAO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CLIENTE_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_VALORTOTAL: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CONDICAOPAGTO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_DH_CA: TcxGridDBColumn;
    qConsultaCLI_CLIENTE: TIBStringField;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    ibCadastroVCOR_ID: TIntegerField;
    ibCadastroVCOR_CODIGO: TIntegerField;
    ibCadastroVCOR_DATAEMISSAO: TDateField;
    ibCadastroVCOR_CLIENTE_ID: TIntegerField;
    ibCadastroVCOR_VALORTOTAL: TIBBCDField;
    ibCadastroVCOR_CONDICAOPAGTO: TIBStringField;
    ibCadastroVCOR_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ibCadastroItem: TIBDataSet;
    dsCadastroItem: TDataSource;
    ibCadastroItemVCORI_ID: TIntegerField;
    ibCadastroItemVCORI_VCOR_ID: TIntegerField;
    ibCadastroItemVCORI_AMBIENTE: TIBStringField;
    ibCadastroItemVCORI_DISCRIMINACAO: TIBStringField;
    ibCadastroItemVCORI_VALORUNIT: TIBBCDField;
    ibCadastroItemVCORI_QTDADE: TIntegerField;
    ibCadastroItemVCORI_DH_CA: TDateTimeField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    qCliente: TIBQuery;
    qClienteCLI_ID: TIntegerField;
    qClienteCLI_CLIENTE: TIBStringField;
    dsCliente: TDataSource;
    btCAItens: TBitBtn;
    btEXItens: TBitBtn;
    cxGrid1DBTableView1VCORI_ID: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_VCOR_ID: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_AMBIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_DISCRIMINACAO: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_VALORUNIT: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_QTDADE: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_DH_CA: TcxGridDBColumn;
    qConsultaID: TIntegerField;
    ibCadastroVCOR_SITUACAO: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    edAmbiente: TEdit;
    edDiscriminacao: TEdit;
    edValorUnit: TEdit;
    procedure btCAItensClick(Sender: TObject);
    procedure btEXItensClick(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure ibCadastroAfterOpen(DataSet: TDataSet);
    procedure ibCadastroAfterClose(DataSet: TDataSet);
    procedure ibCadastroItemAfterInsert(DataSet: TDataSet);
    procedure ibCadastroItemBeforeInsert(DataSet: TDataSet);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsCadastroItemDataChange(Sender: TObject; Field: TField);
    procedure edValorUnitKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadOrcamentoVComiss: TFCadOrcamentoVComiss;

implementation

uses uSelecionarCliente, uDMConexao;

{$R *.dfm}

procedure TFCadOrcamentoVComiss.btCAItensClick(Sender: TObject);
begin
  inherited;
  if not(ibCadastroItem.State=dsInsert) then
    ibCadastroItem.Append;
  ibCadastroItemVCORI_AMBIENTE.Value      := edAmbiente.Text;
  ibCadastroItemVCORI_DISCRIMINACAO.Value := edDiscriminacao.Text;
  ibCadastroItemVCORI_VALORUNIT.Value     := StrToFloatDef(edValorUnit.Text,0);
  ibCadastroItem.Post;
  edAmbiente.SetFocus;
end;

procedure TFCadOrcamentoVComiss.btEXItensClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo(ibCadastroItem)) then
    Exit;
  ibCadastroItem.Delete;
end;

procedure TFCadOrcamentoVComiss.btCAClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo(ibCadastro)) then
    Exit;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroVCOR_CLIENTE_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadOrcamentoVComiss.btEXClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo(ibCadastro)) then
    Exit;
  ibCadastroVCOR_CLIENTE_ID.Clear;
end;

procedure TFCadOrcamentoVComiss.ibCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ibCadastroItem.Open;
  qCliente.Close;
  qCliente.Open;
  qCliente.Last;
  qCliente.First;
end;

procedure TFCadOrcamentoVComiss.ibCadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  ibCadastroItem.Close;
end;

procedure TFCadOrcamentoVComiss.ibCadastroItemAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  ibCadastroItemVCORI_VCOR_ID.Value := ibCadastroVCOR_ID.Value;
end;

procedure TFCadOrcamentoVComiss.ibCadastroItemBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  ibCadastro.Post;
  ibCadastro.Edit;
end;

procedure TFCadOrcamentoVComiss.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  DMConexao.qGeral.Close;
  DMConexao.qGeral.SQL.Clear;
  DMConexao.qGeral.SQL.Text := 'select codigo from sp_getcodigoorcamento';
  DMConexao.qGeral.Open;
  ibCadastroVCOR_CODIGO.Value := DMConexao.qGeral.Fields.Fields[0].Value;
  ibCadastroVCOR_SITUACAO.Value := 0;
end;

procedure TFCadOrcamentoVComiss.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.Open;
end;

procedure TFCadOrcamentoVComiss.dsCadastroItemDataChange(Sender: TObject;
  Field: TField);
var
  AIndex: integer;
  AValue: variant;
begin
  inherited;
  if (IbCadastroAtivo(ibCadastro)) then
  begin
    with cxGrid1DBTableView1.DataController.Summary do
      begin
        AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGrid1DBTableView1VCORI_VALORUNIT);
        AValue :=  FooterSummaryValues[AIndex]
      end;
    ibCadastroVCOR_VALORTOTAL.Value := StrToFloatDef(VarToStr(AValue),0);
  end;
end;

procedure TFCadOrcamentoVComiss.edValorUnitKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in ['0'..'9',#8,#44]) then
    key := #0;
end;

end.
