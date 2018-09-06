unit uDMRelatorioItensPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, MyClientDataSet, Provider,
  SqlExpr;

type
  TDMRelatorioItensPedido = class(TDataModule)
    qryViewRelatorioItensPedido: TSQLQuery;
    dspViewRelatorioItensPedido: TDataSetProvider;
    dsViewRelatorioItensPedido: TDataSource;
    cdsViewRelatorioItensPedido: TMyClientDataSet;
    qryViewRelatorioItensPedidoPED_ID: TIntegerField;
    qryViewRelatorioItensPedidoITENS_PRODUTO: TStringField;
    qryViewRelatorioItensPedidoPED_DATA: TDateField;
    qryViewRelatorioItensPedidoPED_MANUT: TIntegerField;
    qryViewRelatorioItensPedidoPED_DATA_ENTREGA: TDateField;
    qryViewRelatorioItensPedidoCLI_NOME: TStringField;
    qryViewRelatorioItensPedidoUSU_ID: TIntegerField;
    cdsViewRelatorioItensPedidoPED_ID: TIntegerField;
    cdsViewRelatorioItensPedidoITENS_PRODUTO: TStringField;
    cdsViewRelatorioItensPedidoPED_DATA: TDateField;
    cdsViewRelatorioItensPedidoPED_MANUT: TIntegerField;
    cdsViewRelatorioItensPedidoPED_DATA_ENTREGA: TDateField;
    cdsViewRelatorioItensPedidoCLI_NOME: TStringField;
    cdsViewRelatorioItensPedidoUSU_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioItensPedido: TDMRelatorioItensPedido;

implementation

{$R *.dfm}

end.
