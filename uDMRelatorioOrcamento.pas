unit uDMRelatorioOrcamento;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, MyClientDataSet, Provider,
  SqlExpr;

type
  TDMRelatorioOrcamento = class(TDataModule)
    qryViewRelatorioOrcamento: TSQLQuery;
    dspViewRelatorioOrcamento: TDataSetProvider;
    dsViewRelatorioOrcamento: TDataSource;
    cdsViewRelatorioOrcamento: TMyClientDataSet;
    qryViewRelatorioOrcamento_QtdPedido: TSQLQuery;
    dspViewRelatorioOrcamento_QtdPedido: TDataSetProvider;
    dsViewRelatorioOrcamento_QtdPedido: TDataSource;
    cdsViewRelatorioOrcamento_QtdPedido: TMyClientDataSet;
    qryViewRelatorioOrcamento_QtdPedidoQTPEDIDO: TIntegerField;
    cdsViewRelatorioOrcamento_QtdPedidoQTPEDIDO: TIntegerField;
    qryViewRelatorioOrcamentoORC_ID: TIntegerField;
    qryViewRelatorioOrcamentoPED_ID: TIntegerField;
    qryViewRelatorioOrcamentoCLI_NOME: TStringField;
    qryViewRelatorioOrcamentoORC_TIPO: TStringField;
    qryViewRelatorioOrcamentoSTATUS: TStringField;
    qryViewRelatorioOrcamentoDATA_PED: TDateField;
    qryViewRelatorioOrcamentoDATA_ORC: TDateField;
    qryViewRelatorioOrcamentoDATA_REVISAO: TDateField;
    qryViewRelatorioOrcamentoORC_VALOR: TFMTBCDField;
    cdsViewRelatorioOrcamentoORC_ID: TIntegerField;
    cdsViewRelatorioOrcamentoPED_ID: TIntegerField;
    cdsViewRelatorioOrcamentoCLI_NOME: TStringField;
    cdsViewRelatorioOrcamentoORC_TIPO: TStringField;
    cdsViewRelatorioOrcamentoSTATUS: TStringField;
    cdsViewRelatorioOrcamentoDATA_PED: TDateField;
    cdsViewRelatorioOrcamentoDATA_ORC: TDateField;
    cdsViewRelatorioOrcamentoDATA_REVISAO: TDateField;
    cdsViewRelatorioOrcamentoORC_VALOR: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioOrcamento: TDMRelatorioOrcamento;

implementation

{$R *.dfm}

end.
