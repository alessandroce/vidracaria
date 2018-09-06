unit uDMConfiguracoes;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMConfiguracoes = class(TDataModule)
    qryDadosConfiguracoes: TSQLQuery;
    dspDadosConfiguracoes: TDataSetProvider;
    cdsDadosConfiguracoes: TMyClientDataSet;
    dsDadosConfiguracoes: TDataSource;
    cdsDadosConfiguracoesCONFIG_ID: TIntegerField;
    qryDadosConfiguracoesCONFIG_ID: TIntegerField;
    qryDadosConfiguracoesCONFIG_JUROSMES: TFMTBCDField;
    cdsDadosConfiguracoesCONFIG_JUROSMES: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConfiguracoes: TDMConfiguracoes;

implementation

uses uDMConnection;

{$R *.dfm}

end.
