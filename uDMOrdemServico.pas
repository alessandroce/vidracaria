unit uDMOrdemServico;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, SqlExpr, Provider,
  MyClientDataSet;

type
  TDMOrdemServico = class(TDataModule)
    dsViewOS_Atend: TDataSource;
    dspViewOS_Atend: TDataSetProvider;
    qryViewOS_Atend: TSQLQuery;
    cdsViewOS_Atend: TClientDataSet;
    qryViewOS_AtendOSATENDTIPO_ID: TIntegerField;
    qryViewOS_AtendOSATENDTIPO_DESCRICAO: TStringField;
    cdsViewOS_AtendOSATENDTIPO_ID: TIntegerField;
    cdsViewOS_AtendOSATENDTIPO_DESCRICAO: TStringField;
    dsViewOS_Situacao: TDataSource;
    dspViewOS_Situacao: TDataSetProvider;
    qryViewOS_Situacao: TSQLQuery;
    cdsViewOS_Situacao: TClientDataSet;
    cdsViewOS_SituacaoOSSIT_ID: TIntegerField;
    cdsViewOS_SituacaoOSSIT_DESCRICAO: TStringField;
    qryViewOS_SituacaoOSSIT_ID: TIntegerField;
    qryViewOS_SituacaoOSSIT_DESCRICAO: TStringField;
    dsViewOS_ClienteCodigo: TDataSource;
    dspViewOS_ClienteCodigo: TDataSetProvider;
    qryViewOS_ClienteCodigo: TSQLQuery;
    cdsViewOS_ClienteCodigo: TClientDataSet;
    dsViewOSMaxID: TDataSource;
    dspViewOSMaxID: TDataSetProvider;
    qryViewOSMaxID: TSQLQuery;
    cdsViewOSMaxID: TClientDataSet;
    cdsViewOSMaxIDOSERV_ID: TIntegerField;
    qryViewOSMaxIDOSERV_ID: TIntegerField;
    dsViewOSBusca: TDataSource;
    dspViewOSBusca: TDataSetProvider;
    qryViewOSBusca: TSQLQuery;
    cdsViewOSBusca: TClientDataSet;
    dsViewOS_ClienteOS: TDataSource;
    dspViewOS_ClienteOS: TDataSetProvider;
    qryViewOS_ClienteOS: TSQLQuery;
    cdsViewOS_ClienteOS: TClientDataSet;
    dsViewOS_ClienteNome: TDataSource;
    dspViewOS_ClienteNome: TDataSetProvider;
    qryViewOS_ClienteNome: TSQLQuery;
    cdsViewOS_ClienteNome: TClientDataSet;
    dsViewOS_Cliente: TDataSource;
    dspViewOS_Cliente: TDataSetProvider;
    qryViewOS_Cliente: TSQLQuery;
    cdsViewOS_Cliente: TClientDataSet;
    dsDadosOS: TDataSource;
    dspDadosOS: TDataSetProvider;
    qryDadosOS: TSQLQuery;
    dsViewOS_Tecnico: TDataSource;
    dspViewOS_Tecnico: TDataSetProvider;
    qryViewOS_Tecnico: TSQLQuery;
    cdsViewOS_Tecnico: TMyClientDataSet;
    cdsDadosOS: TMyClientDataSet;
    qryViewOSBuscaNUMERO: TIntegerField;
    qryViewOSBuscaEQUIPAMENTO: TStringField;
    qryViewOSBuscaPROBLEMARECLAMADO: TStringField;
    qryViewOSBuscaTOTAL_SERVICOS: TFMTBCDField;
    qryViewOSBuscaTOTAL_PECAS: TFMTBCDField;
    qryViewOSBuscaTOTAL_OS: TFMTBCDField;
    qryViewOSBuscaDATA_ENTRADA: TDateField;
    qryViewOSBuscaDATA_SAIDA: TDateField;
    qryViewOSBuscaCLIENTE: TStringField;
    qryViewOSBuscaATENDIMENTO: TStringField;
    qryViewOSBuscaSITUACAO: TStringField;
    qryViewOSBuscaTECNICO: TStringField;
    cdsViewOSBuscaNUMERO: TIntegerField;
    cdsViewOSBuscaEQUIPAMENTO: TStringField;
    cdsViewOSBuscaPROBLEMARECLAMADO: TStringField;
    cdsViewOSBuscaTOTAL_SERVICOS: TFMTBCDField;
    cdsViewOSBuscaTOTAL_PECAS: TFMTBCDField;
    cdsViewOSBuscaTOTAL_OS: TFMTBCDField;
    cdsViewOSBuscaDATA_ENTRADA: TDateField;
    cdsViewOSBuscaDATA_SAIDA: TDateField;
    cdsViewOSBuscaCLIENTE: TStringField;
    cdsViewOSBuscaATENDIMENTO: TStringField;
    cdsViewOSBuscaSITUACAO: TStringField;
    cdsViewOSBuscaTECNICO: TStringField;
    qryViewOS_ClienteCodigoCLI_ID: TIntegerField;
    qryViewOS_ClienteCodigoCLI_CLIENTE: TStringField;
    qryViewOS_ClienteCodigoCLI_FONE: TStringField;
    qryViewOS_ClienteCodigoCLI_CELULAR: TStringField;
    cdsViewOS_ClienteCodigoCLI_ID: TIntegerField;
    cdsViewOS_ClienteCodigoCLI_CLIENTE: TStringField;
    cdsViewOS_ClienteCodigoCLI_FONE: TStringField;
    cdsViewOS_ClienteCodigoCLI_CELULAR: TStringField;
    qryViewOS_ClienteCLI_ID: TIntegerField;
    qryViewOS_ClienteCLI_CLIENTE: TStringField;
    qryViewOS_ClienteCLI_ENDERECO: TStringField;
    qryViewOS_ClienteCLI_BAIRRO: TStringField;
    qryViewOS_ClienteCLI_CEP: TStringField;
    qryViewOS_ClienteCLI_MUNICIPIO: TStringField;
    qryViewOS_ClienteCLI_FONE: TStringField;
    qryViewOS_ClienteCLI_FAX: TStringField;
    qryViewOS_ClienteCLI_CNPJ: TStringField;
    qryViewOS_ClienteCLI_INSC_EST: TStringField;
    qryViewOS_ClienteCLI_ATIVIDADE: TStringField;
    qryViewOS_ClienteCLI_EMAIL: TStringField;
    qryViewOS_ClienteCLI_CONTATO: TStringField;
    qryViewOS_ClienteCLI_CELULAR: TStringField;
    qryViewOS_ClienteCLI_INFO_ADICIONAL: TBlobField;
    qryViewOS_ClienteCLI_ATIVO: TStringField;
    qryViewOS_ClienteCLI_COMPLEMENTO: TStringField;
    cdsViewOS_ClienteCLI_ID: TIntegerField;
    cdsViewOS_ClienteCLI_CLIENTE: TStringField;
    cdsViewOS_ClienteCLI_ENDERECO: TStringField;
    cdsViewOS_ClienteCLI_BAIRRO: TStringField;
    cdsViewOS_ClienteCLI_CEP: TStringField;
    cdsViewOS_ClienteCLI_MUNICIPIO: TStringField;
    cdsViewOS_ClienteCLI_FONE: TStringField;
    cdsViewOS_ClienteCLI_FAX: TStringField;
    cdsViewOS_ClienteCLI_CNPJ: TStringField;
    cdsViewOS_ClienteCLI_INSC_EST: TStringField;
    cdsViewOS_ClienteCLI_ATIVIDADE: TStringField;
    cdsViewOS_ClienteCLI_EMAIL: TStringField;
    cdsViewOS_ClienteCLI_CONTATO: TStringField;
    cdsViewOS_ClienteCLI_CELULAR: TStringField;
    cdsViewOS_ClienteCLI_INFO_ADICIONAL: TBlobField;
    cdsViewOS_ClienteCLI_ATIVO: TStringField;
    cdsViewOS_ClienteCLI_COMPLEMENTO: TStringField;
    qryViewOS_ClienteOSCLI_ID: TIntegerField;
    qryViewOS_ClienteOSCLI_CLIENTE: TStringField;
    qryViewOS_ClienteOSCLI_FONE: TStringField;
    qryViewOS_ClienteOSCLI_FAX: TStringField;
    qryViewOS_ClienteOSCLI_CELULAR: TStringField;
    cdsViewOS_ClienteOSCLI_ID: TIntegerField;
    cdsViewOS_ClienteOSCLI_CLIENTE: TStringField;
    cdsViewOS_ClienteOSCLI_FONE: TStringField;
    cdsViewOS_ClienteOSCLI_FAX: TStringField;
    cdsViewOS_ClienteOSCLI_CELULAR: TStringField;
    qryViewOS_ClienteNomeCLI_ID: TIntegerField;
    qryViewOS_ClienteNomeCLI_CLIENTE: TStringField;
    qryViewOS_ClienteNomeCLI_FONE: TStringField;
    qryViewOS_ClienteNomeCLI_CELULAR: TStringField;
    cdsViewOS_ClienteNomeCLI_ID: TIntegerField;
    cdsViewOS_ClienteNomeCLI_CLIENTE: TStringField;
    cdsViewOS_ClienteNomeCLI_FONE: TStringField;
    cdsViewOS_ClienteNomeCLI_CELULAR: TStringField;
    qryViewOS_TecnicoUSU_ID: TIntegerField;
    qryViewOS_TecnicoUSU_LOGIN: TStringField;
    qryViewOS_TecnicoUSU_NOME: TStringField;
    cdsViewOS_TecnicoUSU_ID: TIntegerField;
    cdsViewOS_TecnicoUSU_LOGIN: TStringField;
    cdsViewOS_TecnicoUSU_NOME: TStringField;
    qryDadosOSOSERV_ID: TIntegerField;
    qryDadosOSOSERV_ATENDENTE: TIntegerField;
    qryDadosOSOSERV_CLI_ID: TIntegerField;
    qryDadosOSOSERV_OSIT_ID: TIntegerField;
    qryDadosOSOSERV_OSATENDTIPO_ID: TIntegerField;
    qryDadosOSOSERV_USU_TECNICO: TIntegerField;
    qryDadosOSOSERV_DATAEHORA_ENT: TSQLTimeStampField;
    qryDadosOSOSERV_DATAEHORA_SAIDA: TSQLTimeStampField;
    qryDadosOSOSERV_OBS: TBlobField;
    qryDadosOSOSERV_DESCRICAO: TStringField;
    qryDadosOSOSERV_TOTAL_OS: TFMTBCDField;
    qryDadosOSOSERV_TOTAL_SERVICOS: TFMTBCDField;
    qryDadosOSOSERV_TOTAL_ESTOQUE: TFMTBCDField;
    qryDadosOSOSERV_PROB_RECLAMADO: TStringField;
    qryDadosOSOSERV_OBSGERAIS: TBlobField;
    qryDadosOSOSERV_OBSSERVICO: TBlobField;
    qryDadosOSOSERV_ITENSPED_PED_ID: TIntegerField;
    qryDadosOSOSERV_ITENSPED_SEQUE: TIntegerField;
    cdsDadosOSOSERV_ID: TIntegerField;
    cdsDadosOSOSERV_ATENDENTE: TIntegerField;
    cdsDadosOSOSERV_CLI_ID: TIntegerField;
    cdsDadosOSOSERV_OSIT_ID: TIntegerField;
    cdsDadosOSOSERV_OSATENDTIPO_ID: TIntegerField;
    cdsDadosOSOSERV_USU_TECNICO: TIntegerField;
    cdsDadosOSOSERV_DATAEHORA_ENT: TSQLTimeStampField;
    cdsDadosOSOSERV_DATAEHORA_SAIDA: TSQLTimeStampField;
    cdsDadosOSOSERV_OBS: TBlobField;
    cdsDadosOSOSERV_DESCRICAO: TStringField;
    cdsDadosOSOSERV_TOTAL_OS: TFMTBCDField;
    cdsDadosOSOSERV_TOTAL_SERVICOS: TFMTBCDField;
    cdsDadosOSOSERV_TOTAL_ESTOQUE: TFMTBCDField;
    cdsDadosOSOSERV_PROB_RECLAMADO: TStringField;
    cdsDadosOSOSERV_OBSGERAIS: TBlobField;
    cdsDadosOSOSERV_OBSSERVICO: TBlobField;
    cdsDadosOSOSERV_ITENSPED_PED_ID: TIntegerField;
    cdsDadosOSOSERV_ITENSPED_SEQUE: TIntegerField;
    qryViewOS_ItensPedido: TSQLQuery;
    dspViewOS_ItensPedido: TDataSetProvider;
    dsViewOS_ItensPedido: TDataSource;
    cdsViewOS_ItensPedido: TMyClientDataSet;
    qryViewOS_BuscaPedido: TSQLQuery;
    dspViewOS_BuscaPedido: TDataSetProvider;
    dsViewOS_BuscaPedido: TDataSource;
    cdsViewOS_BuscaPedido: TMyClientDataSet;
    qryViewOS_ItensPedidoOSERV_ID: TIntegerField;
    qryViewOS_ItensPedidoITENSPED_ID: TIntegerField;
    qryViewOS_ItensPedidoSEQUE: TIntegerField;
    qryViewOS_ItensPedidoITEM: TStringField;
    qryViewOS_ItensPedidoVALOR: TFMTBCDField;
    cdsViewOS_ItensPedidoOSERV_ID: TIntegerField;
    cdsViewOS_ItensPedidoITENSPED_ID: TIntegerField;
    cdsViewOS_ItensPedidoSEQUE: TIntegerField;
    cdsViewOS_ItensPedidoITEM: TStringField;
    cdsViewOS_ItensPedidoVALOR: TFMTBCDField;
    qryViewOS_ItensPedidoDATA_PEDIDO: TDateField;
    cdsViewOS_ItensPedidoDATA_PEDIDO: TDateField;
    qryViewOS_BuscaPedidoPED_ID: TIntegerField;
    qryViewOS_BuscaPedidoITENS_ID: TIntegerField;
    qryViewOS_BuscaPedidoITENS_PRODUTO: TStringField;
    qryViewOS_BuscaPedidoPED_DATA: TDateField;
    qryViewOS_BuscaPedidoPED_DATA_MANUT: TDateField;
    qryViewOS_BuscaPedidoPED_DATA_ENTREGA: TDateField;
    qryViewOS_BuscaPedidoMANUT_EFETUADA: TStringField;
    qryViewOS_BuscaPedidoCLI_ID: TIntegerField;
    qryViewOS_BuscaPedidoCLI_NOME: TStringField;
    qryViewOS_BuscaPedidoUSU_ID: TIntegerField;
    cdsViewOS_BuscaPedidoPED_ID: TIntegerField;
    cdsViewOS_BuscaPedidoITENS_ID: TIntegerField;
    cdsViewOS_BuscaPedidoITENS_PRODUTO: TStringField;
    cdsViewOS_BuscaPedidoPED_DATA: TDateField;
    cdsViewOS_BuscaPedidoPED_DATA_MANUT: TDateField;
    cdsViewOS_BuscaPedidoPED_DATA_ENTREGA: TDateField;
    cdsViewOS_BuscaPedidoMANUT_EFETUADA: TStringField;
    cdsViewOS_BuscaPedidoCLI_ID: TIntegerField;
    cdsViewOS_BuscaPedidoCLI_NOME: TStringField;
    cdsViewOS_BuscaPedidoUSU_ID: TIntegerField;
    qryDadosOS_ItensPedido: TSQLQuery;
    dspDadosOS_ItensPedido: TDataSetProvider;
    dsDadosOS_ItensPedido: TDataSource;
    cdsDadosOS_ItensPedido: TMyClientDataSet;
    qryViewOS_BuscaPedidoSEQUE: TIntegerField;
    cdsViewOS_BuscaPedidoSEQUE: TIntegerField;
    qryViewOS_BuscaPedidoITENS_VALOR: TFMTBCDField;
    cdsViewOS_BuscaPedidoITENS_VALOR: TFMTBCDField;
    qryViewOS_VisualizarPedido: TSQLQuery;
    dspViewOS_VisualizarPedido: TDataSetProvider;
    dsViewOS_VisualizarPedido: TDataSource;
    cdsViewOS_VisualizarPedido: TMyClientDataSet;
    qryViewOS_VisualizarPedidoPED_ID: TIntegerField;
    qryViewOS_VisualizarPedidoITENS_ID: TIntegerField;
    qryViewOS_VisualizarPedidoITENS_PRODUTO: TStringField;
    qryViewOS_VisualizarPedidoPED_DATA: TDateField;
    qryViewOS_VisualizarPedidoPED_DATA_MANUT: TDateField;
    qryViewOS_VisualizarPedidoPED_DATA_ENTREGA: TDateField;
    qryViewOS_VisualizarPedidoMANUT_EFETUADA: TStringField;
    qryViewOS_VisualizarPedidoCLI_ID: TIntegerField;
    qryViewOS_VisualizarPedidoCLI_NOME: TStringField;
    qryViewOS_VisualizarPedidoUSU_ID: TIntegerField;
    qryViewOS_VisualizarPedidoSEQUE: TIntegerField;
    qryViewOS_VisualizarPedidoITENS_VALOR: TFMTBCDField;
    cdsViewOS_VisualizarPedidoPED_ID: TIntegerField;
    cdsViewOS_VisualizarPedidoITENS_ID: TIntegerField;
    cdsViewOS_VisualizarPedidoITENS_PRODUTO: TStringField;
    cdsViewOS_VisualizarPedidoPED_DATA: TDateField;
    cdsViewOS_VisualizarPedidoPED_DATA_MANUT: TDateField;
    cdsViewOS_VisualizarPedidoPED_DATA_ENTREGA: TDateField;
    cdsViewOS_VisualizarPedidoMANUT_EFETUADA: TStringField;
    cdsViewOS_VisualizarPedidoCLI_ID: TIntegerField;
    cdsViewOS_VisualizarPedidoCLI_NOME: TStringField;
    cdsViewOS_VisualizarPedidoUSU_ID: TIntegerField;
    cdsViewOS_VisualizarPedidoSEQUE: TIntegerField;
    cdsViewOS_VisualizarPedidoITENS_VALOR: TFMTBCDField;
    qryDadosOS_ItensPedidoOSITENS_ID: TIntegerField;
    qryDadosOS_ItensPedidoOSITENS_OSERV_ID: TIntegerField;
    qryDadosOS_ItensPedidoOSITENS_ITENSPED_PED_ID: TIntegerField;
    qryDadosOS_ItensPedidoOSITENS_SEQUE: TIntegerField;
    qryDadosOS_ItensPedidoOSITENS_PRODUTO: TStringField;
    qryDadosOS_ItensPedidoOSITENS_VALOR: TFMTBCDField;
    qryDadosOS_ItensPedidoOSITENS_DATA_PEDIDO: TDateField;
    cdsDadosOS_ItensPedidoOSITENS_ID: TIntegerField;
    cdsDadosOS_ItensPedidoOSITENS_OSERV_ID: TIntegerField;
    cdsDadosOS_ItensPedidoOSITENS_ITENSPED_PED_ID: TIntegerField;
    cdsDadosOS_ItensPedidoOSITENS_SEQUE: TIntegerField;
    cdsDadosOS_ItensPedidoOSITENS_PRODUTO: TStringField;
    cdsDadosOS_ItensPedidoOSITENS_VALOR: TFMTBCDField;
    cdsDadosOS_ItensPedidoOSITENS_DATA_PEDIDO: TDateField;
    qryViewOS_ItensPedidoOSERVITENS_ID: TIntegerField;
    cdsViewOS_ItensPedidoOSERVITENS_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOrdemServico: TDMOrdemServico;

implementation

uses uDMConnection;

{$R *.dfm}

end.
