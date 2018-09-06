unit uDMRelatorioPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMRelatorioPedido = class(TDataModule)
    qryViewRelatorioPedido_Busca: TSQLQuery;
    dspViewRelatorioPedido_Busca: TDataSetProvider;
    dsViewRelatorioPedido_Busca: TDataSource;
    cdsViewRelatorioPedido_Busca: TMyClientDataSet;
    qryViewRelatorioPedido_BuscaPED_ID: TIntegerField;
    qryViewRelatorioPedido_BuscaPED_USU_ID: TIntegerField;
    qryViewRelatorioPedido_BuscaPED_DATA_PEDIDO: TDateField;
    qryViewRelatorioPedido_BuscaPED_DATA_ENTREGA: TDateField;
    qryViewRelatorioPedido_BuscaPED_DETALHES: TBlobField;
    qryViewRelatorioPedido_BuscaPED_PERIODO_MANUT: TIntegerField;
    qryViewRelatorioPedido_BuscaPED_DATA_MANUT: TDateField;
    qryViewRelatorioPedido_BuscaPED_MANUT_EFETUADA: TStringField;
    qryViewRelatorioPedido_BuscaPED_VALOR_TOTAL: TFMTBCDField;
    qryViewRelatorioPedido_BuscaCLI_ID: TIntegerField;
    qryViewRelatorioPedido_BuscaCLI_CLIENTE: TStringField;
    cdsViewRelatorioPedido_BuscaPED_ID: TIntegerField;
    cdsViewRelatorioPedido_BuscaPED_USU_ID: TIntegerField;
    cdsViewRelatorioPedido_BuscaPED_DATA_PEDIDO: TDateField;
    cdsViewRelatorioPedido_BuscaPED_DATA_ENTREGA: TDateField;
    cdsViewRelatorioPedido_BuscaPED_DETALHES: TBlobField;
    cdsViewRelatorioPedido_BuscaPED_PERIODO_MANUT: TIntegerField;
    cdsViewRelatorioPedido_BuscaPED_DATA_MANUT: TDateField;
    cdsViewRelatorioPedido_BuscaPED_MANUT_EFETUADA: TStringField;
    cdsViewRelatorioPedido_BuscaPED_VALOR_TOTAL: TFMTBCDField;
    cdsViewRelatorioPedido_BuscaCLI_ID: TIntegerField;
    cdsViewRelatorioPedido_BuscaCLI_CLIENTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioPedido: TDMRelatorioPedido;

implementation

uses uDMConnection;

{$R *.dfm}

end.
