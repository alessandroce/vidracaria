unit uDMOrcamentoPedidoRevisao;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, DB, SqlExpr, Provider,
  MyClientDataSet;

type
  TDMOrcamentoPedidoRevisao = class(TDataModule)
    dsViewOrcPedidoRevisao_VerificaRevisao: TDataSource;
    dspViewOrcPedidoRevisao_VerificaRevisao: TDataSetProvider;
    qryViewOrcPedidoRevisao_VerificaRevisao: TSQLQuery;
    cdsViewOrcPedidoRevisao_VerificaRevisao: TMyClientDataSet;
    qryViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_ORCPED_ID: TIntegerField;
    qryViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_MARCA_REVISAO: TStringField;
    qryViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_PROX_REVISAO: TDateField;
    cdsViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_ORCPED_ID: TIntegerField;
    cdsViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_MARCA_REVISAO: TStringField;
    cdsViewOrcPedidoRevisao_VerificaRevisaoORCPEDREV_PROX_REVISAO: TDateField;
    dsDadosOrcPedidoRevisao: TDataSource;
    dspDadosOrcPedidoRevisao: TDataSetProvider;
    qryDadosOrcPedidoRevisao: TSQLQuery;
    cdsDadosOrcPedidoRevisao: TMyClientDataSet;
    qryDadosOrcPedidoRevisaoORCPEDREV_ORCPED_ID: TIntegerField;
    qryDadosOrcPedidoRevisaoORCPEDREV_MARCA_REVISAO: TStringField;
    qryDadosOrcPedidoRevisaoORCPEDREV_PROX_REVISAO: TDateField;
    cdsDadosOrcPedidoRevisaoORCPEDREV_ORCPED_ID: TIntegerField;
    cdsDadosOrcPedidoRevisaoORCPEDREV_MARCA_REVISAO: TStringField;
    cdsDadosOrcPedidoRevisaoORCPEDREV_PROX_REVISAO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOrcamentoPedidoRevisao: TDMOrcamentoPedidoRevisao;

implementation

uses uDMConnection;

{$R *.dfm}

end.
