unit uDMRelatorioProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, DB, SqlExpr, Provider;

type
  TDMRelatorioProduto = class(TDataModule)
    dsViewRelatorioProduto: TDataSource;
    dspViewRelatorioProduto: TDataSetProvider;
    qryViewRelatorioProduto: TSQLQuery;
    cdsViewRelatorioProduto: TClientDataSet;
    qryViewRelatorioProdutoPROD_ID: TIntegerField;
    qryViewRelatorioProdutoPROD_PRODTP_ID: TIntegerField;
    qryViewRelatorioProdutoPROD_DESCRICAO: TStringField;
    qryViewRelatorioProdutoPROD_ATIVO: TStringField;
    cdsViewRelatorioProdutoPROD_ID: TIntegerField;
    cdsViewRelatorioProdutoPROD_PRODTP_ID: TIntegerField;
    cdsViewRelatorioProdutoPROD_DESCRICAO: TStringField;
    cdsViewRelatorioProdutoPROD_ATIVO: TStringField;
    qryViewRelatorioProdutoPROD_VALOR: TFMTBCDField;
    cdsViewRelatorioProdutoPROD_VALOR: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioProduto: TDMRelatorioProduto;

implementation

uses uDMConnection;

{$R *.dfm}

end.
