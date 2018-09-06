unit uDMClientes;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, SqlExpr, DBClient;

type
  TDMCadClientes = class(TDataModule)
    dsDadosCadClientes: TDataSource;
    cdsDadosCadClientes: TClientDataSet;
    qryDadosCadClientes: TSQLQuery;
    dspDadosCadClientes: TDataSetProvider;
    dsViewCadClientes: TDataSource;
    cdsViewCadClientes: TClientDataSet;
    qryViewCadClientes: TSQLQuery;
    dspViewCadClientes: TDataSetProvider;
    qryDadosCadClientesCLI_ID: TIntegerField;
    qryDadosCadClientesCLI_CLIENTE: TStringField;
    qryDadosCadClientesCLI_ENDERECO: TStringField;
    qryDadosCadClientesCLI_BAIRRO: TStringField;
    qryDadosCadClientesCLI_CEP: TStringField;
    qryDadosCadClientesCLI_MUNICIPIO: TStringField;
    qryDadosCadClientesCLI_FONE: TStringField;
    qryDadosCadClientesCLI_FAX: TStringField;
    qryDadosCadClientesCLI_CNPJ: TStringField;
    qryDadosCadClientesCLI_INSC_EST: TStringField;
    qryDadosCadClientesCLI_ATIVIDADE: TStringField;
    qryDadosCadClientesCLI_EMAIL: TStringField;
    qryDadosCadClientesCLI_CONTATO: TStringField;
    qryDadosCadClientesCLI_CELULAR: TStringField;
    qryDadosCadClientesCLI_INFO_ADICIONAL: TBlobField;
    cdsDadosCadClientesCLI_ID: TIntegerField;
    cdsDadosCadClientesCLI_CLIENTE: TStringField;
    cdsDadosCadClientesCLI_ENDERECO: TStringField;
    cdsDadosCadClientesCLI_BAIRRO: TStringField;
    cdsDadosCadClientesCLI_CEP: TStringField;
    cdsDadosCadClientesCLI_MUNICIPIO: TStringField;
    cdsDadosCadClientesCLI_FONE: TStringField;
    cdsDadosCadClientesCLI_FAX: TStringField;
    cdsDadosCadClientesCLI_CNPJ: TStringField;
    cdsDadosCadClientesCLI_INSC_EST: TStringField;
    cdsDadosCadClientesCLI_ATIVIDADE: TStringField;
    cdsDadosCadClientesCLI_EMAIL: TStringField;
    cdsDadosCadClientesCLI_CONTATO: TStringField;
    cdsDadosCadClientesCLI_CELULAR: TStringField;
    cdsDadosCadClientesCLI_INFO_ADICIONAL: TBlobField;
    qryViewCadClientesCLI_ID: TIntegerField;
    qryViewCadClientesCLI_CLIENTE: TStringField;
    qryViewCadClientesCLI_FONE: TStringField;
    qryViewCadClientesCLI_CONTATO: TStringField;
    qryViewCadClientesCLI_CELULAR: TStringField;
    cdsViewCadClientesCLI_ID: TIntegerField;
    cdsViewCadClientesCLI_CLIENTE: TStringField;
    cdsViewCadClientesCLI_FONE: TStringField;
    cdsViewCadClientesCLI_CONTATO: TStringField;
    cdsViewCadClientesCLI_CELULAR: TStringField;
    dsViewBuscaClientes: TDataSource;
    cdsViewBuscaClientes: TClientDataSet;
    qryViewBuscaClientes: TSQLQuery;
    dspViewBuscaClientes: TDataSetProvider;
    qryViewBuscaClientesCLI_ID: TIntegerField;
    qryViewBuscaClientesCLI_CLIENTE: TStringField;
    qryViewBuscaClientesCLI_ENDERECO: TStringField;
    qryViewBuscaClientesCLI_BAIRRO: TStringField;
    qryViewBuscaClientesCLI_CEP: TStringField;
    qryViewBuscaClientesCLI_MUNICIPIO: TStringField;
    qryViewBuscaClientesCLI_FONE: TStringField;
    qryViewBuscaClientesCLI_FAX: TStringField;
    qryViewBuscaClientesCLI_CNPJ: TStringField;
    qryViewBuscaClientesCLI_INSC_EST: TStringField;
    qryViewBuscaClientesCLI_ATIVIDADE: TStringField;
    qryViewBuscaClientesCLI_EMAIL: TStringField;
    qryViewBuscaClientesCLI_CONTATO: TStringField;
    qryViewBuscaClientesCLI_CELULAR: TStringField;
    qryViewBuscaClientesCLI_INFO_ADICIONAL: TBlobField;
    cdsViewBuscaClientesCLI_ID: TIntegerField;
    cdsViewBuscaClientesCLI_CLIENTE: TStringField;
    cdsViewBuscaClientesCLI_ENDERECO: TStringField;
    cdsViewBuscaClientesCLI_BAIRRO: TStringField;
    cdsViewBuscaClientesCLI_CEP: TStringField;
    cdsViewBuscaClientesCLI_MUNICIPIO: TStringField;
    cdsViewBuscaClientesCLI_FONE: TStringField;
    cdsViewBuscaClientesCLI_FAX: TStringField;
    cdsViewBuscaClientesCLI_CNPJ: TStringField;
    cdsViewBuscaClientesCLI_INSC_EST: TStringField;
    cdsViewBuscaClientesCLI_ATIVIDADE: TStringField;
    cdsViewBuscaClientesCLI_EMAIL: TStringField;
    cdsViewBuscaClientesCLI_CONTATO: TStringField;
    cdsViewBuscaClientesCLI_CELULAR: TStringField;
    cdsViewBuscaClientesCLI_INFO_ADICIONAL: TBlobField;
    qryDadosCadClientesCLI_ATIVO: TStringField;
    cdsDadosCadClientesCLI_ATIVO: TStringField;
    qryViewCadClientesCLI_ENDERECO: TStringField;
    qryViewCadClientesCLI_BAIRRO: TStringField;
    qryViewCadClientesCLI_CEP: TStringField;
    qryViewCadClientesCLI_MUNICIPIO: TStringField;
    qryViewCadClientesCLI_FAX: TStringField;
    qryViewCadClientesCLI_CNPJ: TStringField;
    qryViewCadClientesCLI_INSC_EST: TStringField;
    qryViewCadClientesCLI_ATIVIDADE: TStringField;
    qryViewCadClientesCLI_EMAIL: TStringField;
    qryViewCadClientesCLI_INFO_ADICIONAL: TBlobField;
    qryViewCadClientesCLI_ATIVO: TStringField;
    cdsViewCadClientesCLI_ENDERECO: TStringField;
    cdsViewCadClientesCLI_BAIRRO: TStringField;
    cdsViewCadClientesCLI_CEP: TStringField;
    cdsViewCadClientesCLI_MUNICIPIO: TStringField;
    cdsViewCadClientesCLI_FAX: TStringField;
    cdsViewCadClientesCLI_CNPJ: TStringField;
    cdsViewCadClientesCLI_INSC_EST: TStringField;
    cdsViewCadClientesCLI_ATIVIDADE: TStringField;
    cdsViewCadClientesCLI_EMAIL: TStringField;
    cdsViewCadClientesCLI_INFO_ADICIONAL: TBlobField;
    cdsViewCadClientesCLI_ATIVO: TStringField;
    qryViewBuscaClientesCLI_ATIVO: TStringField;
    cdsViewBuscaClientesCLI_ATIVO: TStringField;
    qryDadosCadClientesCLI_COMPLEMENTO: TStringField;
    cdsDadosCadClientesCLI_COMPLEMENTO: TStringField;
    qryViewCadClientesCLI_COMPLEMENTO: TStringField;
    cdsViewCadClientesCLI_COMPLEMENTO: TStringField;
    qryViewBuscaClientesCLI_COMPLEMENTO: TStringField;
    cdsViewBuscaClientesCLI_COMPLEMENTO: TStringField;
    procedure cdsViewBuscaClientesBeforeScroll(DataSet: TDataSet);
    procedure cdsViewBuscaClientesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadClientes: TDMCadClientes;

implementation

uses uDMConnection;

{$R *.dfm}

procedure TDMCadClientes.cdsViewBuscaClientesBeforeScroll(
  DataSet: TDataSet);
begin
  DMCadClientes.cdsViewBuscaClientes.DisableControls;
end;

procedure TDMCadClientes.cdsViewBuscaClientesAfterScroll(
  DataSet: TDataSet);
begin
  DMCadClientes.cdsViewBuscaClientes.EnableControls;
end;

end.
