unit uDMRelatorioTipoProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMRelatorioTipoProduto = class(TDataModule)
    qryViewRelatorioProdutoTipo: TSQLQuery;
    qryViewRelatorioProdutoTipoPRODTP_ID: TIntegerField;
    qryViewRelatorioProdutoTipoPRODTP_DESCRICAO: TStringField;
    dspViewRelatorioProdutoTipo: TDataSetProvider;
    dsViewRelatorioProdutoTipo: TDataSource;
    cdsViewRelatorioProdutoTipo: TMyClientDataSet;
    cdsViewRelatorioProdutoTipoPRODTP_ID: TIntegerField;
    cdsViewRelatorioProdutoTipoPRODTP_DESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioTipoProduto: TDMRelatorioTipoProduto;

implementation

uses uDMConnection;

{$R *.dfm}

end.
