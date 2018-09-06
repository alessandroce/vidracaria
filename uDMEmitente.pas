unit uDMEmitente;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TDMEmitente = class(TDataModule)
    dsDadosEmitente: TDataSource;
    cdsDadosEmitente: TClientDataSet;
    dspDadosEmitente: TDataSetProvider;
    qryDadosEmitente: TSQLQuery;
    qryDadosEmitenteEMIT_ID: TIntegerField;
    qryDadosEmitenteEMIT_RAZAOSOCIAL: TStringField;
    qryDadosEmitenteEMIT_RESPONSAVEL: TStringField;
    qryDadosEmitenteEMIT_ENDERECO: TStringField;
    qryDadosEmitenteEMIT_BAIRRO: TStringField;
    qryDadosEmitenteEMIT_MUNICIPIO: TStringField;
    qryDadosEmitenteEMIT_CEP: TStringField;
    qryDadosEmitenteEMIT_ESTADO: TStringField;
    qryDadosEmitenteEMIT_CNPJ: TStringField;
    qryDadosEmitenteEMIT_IE: TStringField;
    qryDadosEmitenteEMIT_TELEFONE: TStringField;
    qryDadosEmitenteEDIT_EMAIL: TStringField;
    cdsDadosEmitenteEMIT_ID: TIntegerField;
    cdsDadosEmitenteEMIT_RAZAOSOCIAL: TStringField;
    cdsDadosEmitenteEMIT_RESPONSAVEL: TStringField;
    cdsDadosEmitenteEMIT_ENDERECO: TStringField;
    cdsDadosEmitenteEMIT_BAIRRO: TStringField;
    cdsDadosEmitenteEMIT_MUNICIPIO: TStringField;
    cdsDadosEmitenteEMIT_CEP: TStringField;
    cdsDadosEmitenteEMIT_ESTADO: TStringField;
    cdsDadosEmitenteEMIT_CNPJ: TStringField;
    cdsDadosEmitenteEMIT_IE: TStringField;
    cdsDadosEmitenteEMIT_TELEFONE: TStringField;
    cdsDadosEmitenteEDIT_EMAIL: TStringField;
    dsViewEmitente: TDataSource;
    cdsViewEmitente: TClientDataSet;
    dspViewEmitente: TDataSetProvider;
    qryViewEmitente: TSQLQuery;
    qryViewEmitenteEMIT_ID: TIntegerField;
    qryViewEmitenteEMIT_RAZAOSOCIAL: TStringField;
    qryViewEmitenteEMIT_RESPONSAVEL: TStringField;
    qryViewEmitenteEMIT_ENDERECO: TStringField;
    qryViewEmitenteEMIT_BAIRRO: TStringField;
    qryViewEmitenteEMIT_MUNICIPIO: TStringField;
    qryViewEmitenteEMIT_CEP: TStringField;
    qryViewEmitenteEMIT_ESTADO: TStringField;
    qryViewEmitenteEMIT_CNPJ: TStringField;
    qryViewEmitenteEMIT_IE: TStringField;
    qryViewEmitenteEMIT_TELEFONE: TStringField;
    qryViewEmitenteEDIT_EMAIL: TStringField;
    cdsViewEmitenteEMIT_ID: TIntegerField;
    cdsViewEmitenteEMIT_RAZAOSOCIAL: TStringField;
    cdsViewEmitenteEMIT_RESPONSAVEL: TStringField;
    cdsViewEmitenteEMIT_ENDERECO: TStringField;
    cdsViewEmitenteEMIT_BAIRRO: TStringField;
    cdsViewEmitenteEMIT_MUNICIPIO: TStringField;
    cdsViewEmitenteEMIT_CEP: TStringField;
    cdsViewEmitenteEMIT_ESTADO: TStringField;
    cdsViewEmitenteEMIT_CNPJ: TStringField;
    cdsViewEmitenteEMIT_IE: TStringField;
    cdsViewEmitenteEMIT_TELEFONE: TStringField;
    cdsViewEmitenteEDIT_EMAIL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEmitente: TDMEmitente;

implementation

uses uDMConnection;

{$R *.dfm}

end.
