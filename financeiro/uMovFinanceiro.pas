unit uMovFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao2, frxClass, frxIBXComponents, ActnList, ImgList,
  IBQuery, DB, IBCustomDataSet, Buttons, ComCtrls, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Mask, DBCtrls, StdCtrls, Spin;

type
  TFMovFinanceiro = class(TFCadPadrao2)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btCACategorai: TBitBtn;
    btEXCategorai: TBitBtn;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    ibCadastroMOV_ID: TIntegerField;
    ibCadastroMOV_CLI_ID: TIntegerField;
    ibCadastroMOV_CAT_ID: TIntegerField;
    ibCadastroMOV_CCO_ID: TIntegerField;
    ibCadastroMOV_DATAMOV: TDateField;
    ibCadastroMOV_MESANOREF: TIBStringField;
    ibCadastroMOV_VALOR: TIBBCDField;
    ibCadastroMOV_OBSERVACAO: TIBStringField;
    ibCadastroMOV_NUMDOC: TIBStringField;
    ibCadastroMOV_DH_CA: TDateTimeField;
    cxGrid1DBTableView1MOV_DATAMOV: TcxGridDBColumn;
    cxGrid1DBTableView1MOV_MESANOREF: TcxGridDBColumn;
    cxGrid1DBTableView1MOV_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1MOV_NUMDOC: TcxGridDBColumn;
    Bevel1: TBevel;
    ibCadastroMOV_PAR_ID: TIntegerField;
    DBText1: TDBText;
    qCliente: TIBQuery;
    qClienteCLI_ID: TIntegerField;
    qClienteCLI_CLIENTE: TIBStringField;
    dsCliente: TDataSource;
    qCategoria: TIBQuery;
    qCategoriaPIT_ID: TIntegerField;
    qCategoriaPIT_DESCRICAO: TIBStringField;
    qCategoriaPIT_CODIGO: TIntegerField;
    qCategoriaPIT_CODIGOREDUZIDO: TIntegerField;
    dsCategoria: TDataSource;
    qCentroCusto: TIBQuery;
    qCentroCustoCCO_ID: TIntegerField;
    qCentroCustoCCO_CODIGO: TIntegerField;
    qCentroCustoCCO_DESCRICAO: TIBStringField;
    qCentroCustoCCO_DH_CA: TDateTimeField;
    dsCentroCusto: TDataSource;
    procedure ComboBox1Change(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure btCACategoraiClick(Sender: TObject);
    procedure btEXCategoraiClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function IbCadastroAtivo:Boolean;
  public
    { Public declarations }
  end;

var
  FMovFinanceiro: TFMovFinanceiro;

implementation

uses uSelecionarCliente, uSelecionarPlanoContas, uSelecionarPagarReceber;

{$R *.dfm}

procedure TFMovFinanceiro.ComboBox1Change(Sender: TObject);
begin
  inherited;
  ibCadastro.Close;
  ibCadastro.ParamByName('mes').Value := (ComboBox1.ItemIndex+1);
  ibCadastro.Open;
end;

procedure TFMovFinanceiro.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  //FSelecionarCli.FTipoCli := FTipoPagRec;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroMOV_CLI_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFMovFinanceiro.btEXClienteClick(Sender: TObject);
begin
  inherited;
  if IbCadastroAtivo then
    ibCadastroMOV_CLI_ID.Clear;
end;

procedure TFMovFinanceiro.btCACategoraiClick(Sender: TObject);
begin
  inherited;
  FSelecionarPlanoContas := TFSelecionarPlanoContas.Create(nil);
  //FSelecionarPlanoContas.FPGR_ID := FTipoPagRec;
  FSelecionarPlanoContas.ShowModal;
  if FSelecionarPlanoContas.FId>0 then
    ibCadastroMOV_CAT_ID.Value := FSelecionarPlanoContas.FId;
  FSelecionarPlanoContas.Free;
end;

procedure TFMovFinanceiro.btEXCategoraiClick(Sender: TObject);
begin
  inherited;
  if IbCadastroAtivo then
    ibCadastroMOV_CAT_ID.Clear;
end;

function TFMovFinanceiro.IbCadastroAtivo: Boolean;
begin
  Result := (ibCadastro.State in [dsEdit,dsInsert]);
end;

procedure TFMovFinanceiro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FSelecionarPagarReceber := TFSelecionarPagarReceber.Create(nil);
  //FSelecionarPagarReceber.FPGR_ID := FTipoPagRec;
  FSelecionarPagarReceber.ShowModal;
  if FSelecionarPagarReceber.FId>0 then
    ibCadastroMOV_PAR_ID.Value := FSelecionarPagarReceber.FId;
  FSelecionarPagarReceber.Free;
end;

procedure TFMovFinanceiro.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DBText1.Visible := (ibCadastroMOV_PAR_ID.Value>0);
end;

procedure TFMovFinanceiro.FormShow(Sender: TObject);
begin
  inherited;
    qCategoria.Close;
    qCategoria.Open;
    qCategoria.Last;
    qCategoria.First;

    qCliente.Close;
    qCliente.Open;
    qCliente.Last;
    qCliente.First;

    qCentroCusto.Close;
    qCentroCusto.Open;
    qCentroCusto.Last;
    qCentroCusto.First;

end;

end.
