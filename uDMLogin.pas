unit uDMLogin;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, DB, SqlExpr, Provider;

type
  TDMLogin = class(TDataModule)
    dsDadosLogin: TDataSource;
    dspDadosLogin: TDataSetProvider;
    qryDadosLogin: TSQLQuery;
    cdsDadosLogin: TClientDataSet;
    dsDadosPrin: TDataSource;
    dspDadosPrin: TDataSetProvider;
    qryDadosPrin: TSQLQuery;
    qryDadosPrinUSU_ID: TIntegerField;
    qryDadosPrinUSU_LOGIN: TStringField;
    qryDadosPrinUSU_SENHA: TStringField;
    qryDadosPrinUSU_SENHA_CONF: TStringField;
    qryDadosPrinUSU_NOME: TStringField;
    qryDadosPrinUSU_ENDERECO: TStringField;
    qryDadosPrinUSU_BAIRRO: TStringField;
    qryDadosPrinUSU_CIDADE: TStringField;
    qryDadosPrinUSU_ESTADO: TStringField;
    qryDadosPrinUSU_FONE_RES: TStringField;
    qryDadosPrinUSU_FONE_CEL: TStringField;
    qryDadosPrinUSU_EMAIL: TStringField;
    qryDadosPrinUSU_RG: TStringField;
    qryDadosPrinUSU_CPF: TStringField;
    qryDadosPrinUSU_ATIVO: TStringField;
    cdsDadosPrin: TClientDataSet;
    cdsDadosPrinUSU_ID: TIntegerField;
    cdsDadosPrinUSU_LOGIN: TStringField;
    cdsDadosPrinUSU_SENHA: TStringField;
    cdsDadosPrinUSU_SENHA_CONF: TStringField;
    cdsDadosPrinUSU_NOME: TStringField;
    cdsDadosPrinUSU_ENDERECO: TStringField;
    cdsDadosPrinUSU_BAIRRO: TStringField;
    cdsDadosPrinUSU_CIDADE: TStringField;
    cdsDadosPrinUSU_ESTADO: TStringField;
    cdsDadosPrinUSU_FONE_RES: TStringField;
    cdsDadosPrinUSU_FONE_CEL: TStringField;
    cdsDadosPrinUSU_EMAIL: TStringField;
    cdsDadosPrinUSU_RG: TStringField;
    cdsDadosPrinUSU_CPF: TStringField;
    cdsDadosPrinUSU_ATIVO: TStringField;
    qryDadosPrinUSU_LOGIN_TIPO: TStringField;
    cdsDadosPrinUSU_LOGIN_TIPO: TStringField;
    cdsDadosLoginUSU_LOGIN: TStringField;
    cdsDadosLoginUSU_ID: TIntegerField;
    cdsDadosLoginUSU_SENHA: TStringField;
    cdsDadosLoginUSU_LOGIN_TIPO: TStringField;
    qryDadosLoginUSU_LOGIN: TStringField;
    qryDadosLoginUSU_ID: TIntegerField;
    qryDadosLoginUSU_SENHA: TStringField;
    qryDadosLoginUSU_LOGIN_TIPO: TStringField;
    dsViewLogin_Lookup: TDataSource;
    dspViewLogin_Lookup: TDataSetProvider;
    qryViewLogin_Lookup: TSQLQuery;
    cdsViewLogin_Lookup: TClientDataSet;
    qryViewLogin_LookupUSU_LOGIN: TStringField;
    qryViewLogin_LookupUSU_ID: TIntegerField;
    qryViewLogin_LookupUSU_SENHA: TStringField;
    qryViewLogin_LookupUSU_LOGIN_TIPO: TStringField;
    cdsViewLogin_LookupUSU_LOGIN: TStringField;
    cdsViewLogin_LookupUSU_ID: TIntegerField;
    cdsViewLogin_LookupUSU_SENHA: TStringField;
    cdsViewLogin_LookupUSU_LOGIN_TIPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLogin: TDMLogin;

implementation

uses uDMConnection;

{$R *.dfm}

end.
