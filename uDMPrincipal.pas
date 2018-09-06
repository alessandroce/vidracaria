unit uDMPrincipal;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, SqlExpr, Provider;

type
  TDMPrincipal = class(TDataModule)
    dsViewManutencaoProduto: TDataSource;
    dspViewManutencaoProduto: TDataSetProvider;
    qryViewManutencaoProduto: TSQLQuery;
    cdsViewManutencaoProduto: TClientDataSet;
    qryViewManutencaoProdutoID: TIntegerField;
    qryViewManutencaoProdutoTIPO: TStringField;
    qryViewManutencaoProdutoDATA: TDateField;
    qryViewManutencaoProdutoDATA_MANUT: TDateField;
    qryViewManutencaoProdutoCLIENTE: TStringField;
    cdsViewManutencaoProdutoID: TIntegerField;
    cdsViewManutencaoProdutoTIPO: TStringField;
    cdsViewManutencaoProdutoDATA: TDateField;
    cdsViewManutencaoProdutoDATA_MANUT: TDateField;
    cdsViewManutencaoProdutoCLIENTE: TStringField;
    qryViewManutencaoProdutoMANUT_EFETUADA: TStringField;
    cdsViewManutencaoProdutoMANUT_EFETUADA: TStringField;
    dsViewPedidoManutencao: TDataSource;
    dspViewPedidoManutencao: TDataSetProvider;
    qryViewPedidoManutencao: TSQLQuery;
    cdsViewPedidoManutencao: TClientDataSet;
    qryViewPedidoManutencaoID: TIntegerField;
    qryViewPedidoManutencaoDATA: TDateField;
    qryViewPedidoManutencaoDATA_MANUT: TDateField;
    qryViewPedidoManutencaoMANUT_EFETUADA: TStringField;
    qryViewPedidoManutencaoCLIENTE: TStringField;
    cdsViewPedidoManutencaoID: TIntegerField;
    cdsViewPedidoManutencaoDATA: TDateField;
    cdsViewPedidoManutencaoDATA_MANUT: TDateField;
    cdsViewPedidoManutencaoMANUT_EFETUADA: TStringField;
    cdsViewPedidoManutencaoCLIENTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

uses uDMConnection;

{$R *.dfm}

end.
