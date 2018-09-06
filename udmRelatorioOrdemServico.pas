unit udmRelatorioOrdemServico;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, SqlExpr, Provider;

type
  TDMRelatorioOrdemServico = class(TDataModule)
    dsViewRelatorioOrdemServico: TDataSource;
    dspViewRelatorioOrdemServico: TDataSetProvider;
    qryViewRelatorioOrdemServico: TSQLQuery;
    cdsViewRelatorioOrdemServico: TClientDataSet;
    qryViewRelatorioOrdemServicoOS_ID: TIntegerField;
    qryViewRelatorioOrdemServicoCLI_NOME: TStringField;
    qryViewRelatorioOrdemServicoCLI_CONTATO: TStringField;
    qryViewRelatorioOrdemServicoCLI_FONE: TStringField;
    qryViewRelatorioOrdemServicoCLI_CELULAR: TStringField;
    qryViewRelatorioOrdemServicoCLI_ENDERECO: TStringField;
    qryViewRelatorioOrdemServicoCLI_BAIRRO: TStringField;
    qryViewRelatorioOrdemServicoCLI_CIDADE: TStringField;
    qryViewRelatorioOrdemServicoEQUIPAMENTO: TStringField;
    qryViewRelatorioOrdemServicoPROB_RECLAMADO: TStringField;
    qryViewRelatorioOrdemServicoDATA_ENTRADA: TSQLTimeStampField;
    qryViewRelatorioOrdemServicoDATA_SAIDA: TSQLTimeStampField;
    qryViewRelatorioOrdemServicoOBSERVACAO: TBlobField;
    qryViewRelatorioOrdemServicoATENDIMENTO: TStringField;
    qryViewRelatorioOrdemServicoSITUACAO: TStringField;
    qryViewRelatorioOrdemServicoTECNICO: TStringField;
    cdsViewRelatorioOrdemServicoOS_ID: TIntegerField;
    cdsViewRelatorioOrdemServicoCLI_NOME: TStringField;
    cdsViewRelatorioOrdemServicoCLI_CONTATO: TStringField;
    cdsViewRelatorioOrdemServicoCLI_FONE: TStringField;
    cdsViewRelatorioOrdemServicoCLI_CELULAR: TStringField;
    cdsViewRelatorioOrdemServicoCLI_ENDERECO: TStringField;
    cdsViewRelatorioOrdemServicoCLI_BAIRRO: TStringField;
    cdsViewRelatorioOrdemServicoCLI_CIDADE: TStringField;
    cdsViewRelatorioOrdemServicoEQUIPAMENTO: TStringField;
    cdsViewRelatorioOrdemServicoPROB_RECLAMADO: TStringField;
    cdsViewRelatorioOrdemServicoDATA_ENTRADA: TSQLTimeStampField;
    cdsViewRelatorioOrdemServicoDATA_SAIDA: TSQLTimeStampField;
    cdsViewRelatorioOrdemServicoOBSERVACAO: TBlobField;
    cdsViewRelatorioOrdemServicoATENDIMENTO: TStringField;
    cdsViewRelatorioOrdemServicoSITUACAO: TStringField;
    cdsViewRelatorioOrdemServicoTECNICO: TStringField;
    qryViewRelatorioOrdemServicoITENS: TStringField;
    cdsViewRelatorioOrdemServicoITENS: TStringField;
    qryViewRelatorioOrdemServicoOBS_GERAL: TBlobField;
    qryViewRelatorioOrdemServicoOBS_SERVICO: TBlobField;
    cdsViewRelatorioOrdemServicoOBS_GERAL: TBlobField;
    cdsViewRelatorioOrdemServicoOBS_SERVICO: TBlobField;
    qryViewRelatorioOrdemServicoPED_ID: TIntegerField;
    cdsViewRelatorioOrdemServicoPED_ID: TIntegerField;
    qryViewRelatorioOrdemServicoOS_VALOR: TFMTBCDField;
    cdsViewRelatorioOrdemServicoOS_VALOR: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioOrdemServico: TDMRelatorioOrdemServico;

implementation

uses uDMConnection;

{$R *.dfm}

end.
