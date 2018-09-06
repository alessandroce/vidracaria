unit uDMConfig;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, DB, SqlExpr, Provider;

type
  TDMConfig = class(TDataModule)
    dsDadosConfig: TDataSource;
    dspDadosConfig: TDataSetProvider;
    qryDadosConfig: TSQLQuery;
    qryDadosConfigCONFIG_ID: TIntegerField;
    qryDadosConfigCONFIG_TEXTO: TBlobField;
    cdsDadosConfig: TClientDataSet;
    cdsDadosConfigCONFIG_ID: TIntegerField;
    cdsDadosConfigCONFIG_TEXTO: TBlobField;
    dsDadosConfigImpressao: TDataSource;
    dspDadosConfigImpressao: TDataSetProvider;
    qryDadosConfigImpressao: TSQLQuery;
    cdsDadosConfigImpressao: TClientDataSet;
    qryDadosConfigImpressaoID: TIntegerField;
    qryDadosConfigImpressaoPAPERHEIGHT: TIntegerField;
    qryDadosConfigImpressaoPAPERWIDTH: TIntegerField;
    qryDadosConfigImpressaoORIENTATION: TStringField;
    qryDadosConfigImpressaoBOTTOMMARGIN: TIntegerField;
    qryDadosConfigImpressaoLEFTMARGIN: TIntegerField;
    qryDadosConfigImpressaoRIGHTMARGIN: TIntegerField;
    qryDadosConfigImpressaoTOPMARGIN: TIntegerField;
    cdsDadosConfigImpressaoID: TIntegerField;
    cdsDadosConfigImpressaoPAPERHEIGHT: TIntegerField;
    cdsDadosConfigImpressaoPAPERWIDTH: TIntegerField;
    cdsDadosConfigImpressaoORIENTATION: TStringField;
    cdsDadosConfigImpressaoBOTTOMMARGIN: TIntegerField;
    cdsDadosConfigImpressaoLEFTMARGIN: TIntegerField;
    cdsDadosConfigImpressaoRIGHTMARGIN: TIntegerField;
    cdsDadosConfigImpressaoTOPMARGIN: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConfig: TDMConfig;

implementation

uses uDMConnection;



{$R *.dfm}

end.
