unit uDMRelatorioClientes;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, SqlExpr, DB, DBClient;

type
  TDMRelatorioClientes = class(TDataModule)
    dsViewRelatorioClientes: TDataSource;
    cdsViewRelatorioClientes: TClientDataSet;
    cdsViewRelatorioClientesCLI_ID: TIntegerField;
    cdsViewRelatorioClientesCLI_CLIENTE: TStringField;
    cdsViewRelatorioClientesCLI_FONE: TStringField;
    cdsViewRelatorioClientesCLI_CONTATO: TStringField;
    cdsViewRelatorioClientesCLI_CELULAR: TStringField;
    qryViewRelatorioClientes: TSQLQuery;
    qryViewRelatorioClientesCLI_ID: TIntegerField;
    qryViewRelatorioClientesCLI_CLIENTE: TStringField;
    qryViewRelatorioClientesCLI_FONE: TStringField;
    qryViewRelatorioClientesCLI_CONTATO: TStringField;
    qryViewRelatorioClientesCLI_CELULAR: TStringField;
    dspViewRelatorioClientes: TDataSetProvider;
    qryViewRelatorioClientesCLI_ENDERECO: TStringField;
    qryViewRelatorioClientesCLI_BAIRRO: TStringField;
    qryViewRelatorioClientesCLI_CEP: TStringField;
    qryViewRelatorioClientesCLI_MUNICIPIO: TStringField;
    qryViewRelatorioClientesCLI_FAX: TStringField;
    qryViewRelatorioClientesCLI_CNPJ: TStringField;
    qryViewRelatorioClientesCLI_INSC_EST: TStringField;
    qryViewRelatorioClientesCLI_ATIVIDADE: TStringField;
    qryViewRelatorioClientesCLI_EMAIL: TStringField;
    qryViewRelatorioClientesCLI_INFO_ADICIONAL: TBlobField;
    cdsViewRelatorioClientesCLI_ENDERECO: TStringField;
    cdsViewRelatorioClientesCLI_BAIRRO: TStringField;
    cdsViewRelatorioClientesCLI_CEP: TStringField;
    cdsViewRelatorioClientesCLI_MUNICIPIO: TStringField;
    cdsViewRelatorioClientesCLI_FAX: TStringField;
    cdsViewRelatorioClientesCLI_CNPJ: TStringField;
    cdsViewRelatorioClientesCLI_INSC_EST: TStringField;
    cdsViewRelatorioClientesCLI_ATIVIDADE: TStringField;
    cdsViewRelatorioClientesCLI_EMAIL: TStringField;
    cdsViewRelatorioClientesCLI_INFO_ADICIONAL: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioClientes: TDMRelatorioClientes;

implementation

uses uDMConnection;

{$R *.dfm}

end.
