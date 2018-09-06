unit uDMProdutoTipo;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMProdutoTipo = class(TDataModule)
    qryDadosProdutoTipo: TSQLQuery;
    dspDadosProdutoTipo: TDataSetProvider;
    dsDadosProdutoTipo: TDataSource;
    cdsDadosProdutoTipo: TMyClientDataSet;
    qryViewProdutoTipo: TSQLQuery;
    dspViewProdutoTipo: TDataSetProvider;
    dsViewProdutoTipo: TDataSource;
    cdsViewProdutoTipo: TMyClientDataSet;
    qryDadosProdutoTipoPRODTP_ID: TIntegerField;
    qryDadosProdutoTipoPRODTP_DESCRICAO: TStringField;
    cdsDadosProdutoTipoPRODTP_ID: TIntegerField;
    cdsDadosProdutoTipoPRODTP_DESCRICAO: TStringField;
    qryViewProdutoTipoPRODTP_ID: TIntegerField;
    qryViewProdutoTipoPRODTP_DESCRICAO: TStringField;
    cdsViewProdutoTipoPRODTP_ID: TIntegerField;
    cdsViewProdutoTipoPRODTP_DESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProdutoTipo: TDMProdutoTipo;

implementation

uses uDMConnection;

{$R *.dfm}

end.
