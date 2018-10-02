unit uDMProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMProduto = class(TDataModule)
    qryDadosProduto: TSQLQuery;
    dspDadosProduto: TDataSetProvider;
    dsDadosProduto: TDataSource;
    cdsDadosProduto: TMyClientDataSet;
    cdsDadosProdutoPROD_ID: TIntegerField;
    cdsDadosProdutoPROD_PRODTP_ID: TIntegerField;
    cdsDadosProdutoPROD_DESCRICAO: TStringField;
    qryViewProduto: TSQLQuery;
    dspViewProduto: TDataSetProvider;
    dsViewProduto: TDataSource;
    cdsViewProduto: TMyClientDataSet;
    qryViewProdutoPROD_ID: TIntegerField;
    qryViewProdutoPROD_PRODTP_ID: TIntegerField;
    qryViewProdutoPROD_DESCRICAO: TStringField;
    cdsViewProdutoPROD_ID: TIntegerField;
    cdsViewProdutoPROD_PRODTP_ID: TIntegerField;
    cdsViewProdutoPROD_DESCRICAO: TStringField;
    qryDadosProdutoPROD_ID: TIntegerField;
    qryDadosProdutoPROD_PRODTP_ID: TIntegerField;
    qryDadosProdutoPROD_DESCRICAO: TStringField;
    qryDadosProdutoPROD_ATIVO: TStringField;
    cdsDadosProdutoPROD_ATIVO: TStringField;
    qryViewProdutoPROD_ATIVO: TStringField;
    cdsViewProdutoPROD_ATIVO: TStringField;
    qryViewLookup_TipoProduto: TSQLQuery;
    dspViewLookup_TipoProduto: TDataSetProvider;
    dsViewLookup_TipoProduto: TDataSource;
    cdsViewLookup_TipoProduto: TMyClientDataSet;
    qryViewLookup_TipoProdutoPRODTP_ID: TIntegerField;
    qryViewLookup_TipoProdutoPRODTP_DESCRICAO: TStringField;
    cdsViewLookup_TipoProdutoPRODTP_ID: TIntegerField;
    cdsViewLookup_TipoProdutoPRODTP_DESCRICAO: TStringField;
    qryDadosProdutoPROD_VALOR: TFMTBCDField;
    cdsDadosProdutoPROD_VALOR: TFMTBCDField;
    qryViewProdutoPROD_VALOR: TFMTBCDField;
    cdsViewProdutoPROD_VALOR: TFMTBCDField;
    qryViewProdutoPROD_UNIDMEDIDA: TStringField;
    cdsViewProdutoPROD_UNIDMEDIDA: TStringField;
    qryDadosProdutoPROD_UNIDMEDIDA: TStringField;
    cdsDadosProdutoPROD_UNIDMEDIDA: TStringField;
    qryViewLookup_LinhaProduto: TSQLQuery;
    dspViewLookup_LinhaProduto: TDataSetProvider;
    dsViewLookup_LinhaProduto: TDataSource;
    cdsViewLookup_LinhaProduto: TMyClientDataSet;
    qryViewLookup_LinhaProdutoPRL_ID: TIntegerField;
    qryViewLookup_LinhaProdutoPRL_DESCRICAO: TStringField;
    qryViewLookup_LinhaProdutoPRL_DH_CA: TSQLTimeStampField;
    cdsViewLookup_LinhaProdutoPRL_ID: TIntegerField;
    cdsViewLookup_LinhaProdutoPRL_DESCRICAO: TStringField;
    cdsViewLookup_LinhaProdutoPRL_DH_CA: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProduto: TDMProduto;

implementation

uses uDMConnection;

{$R *.dfm}

end.
