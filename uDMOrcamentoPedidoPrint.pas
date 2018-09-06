unit uDMOrcamentoPedidoPrint;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, MyClientDataSet, Provider,
  SqlExpr;

type
  TDMOrcamentoPedidoPrint = class(TDataModule)
    qryViewOrcamentoPedidoPrint: TSQLQuery;
    dspViewOrcamentoPedidoPrint: TDataSetProvider;
    cdsViewOrcamentoPedidoPrint: TMyClientDataSet;
    dsViewOrcamentoPedidoPrint: TDataSource;
    qryViewOrcPedido_SomaPrint: TSQLQuery;
    dspViewOrcPedido_SomaPrint: TDataSetProvider;
    dsViewOrcPedido_SomaPrint: TDataSource;
    cdsViewOrcPedido_SomaPrint: TMyClientDataSet;
    cdsViewOrcPedido_SomaPrintVALOR_TOTAL: TFMTBCDField;
    cdsViewOrcPedido_SomaPrintMQUADRADO: TFMTBCDField;
    cdsViewOrcPedido_SomaPrintMCORRIDO: TFMTBCDField;
    qryViewOrcPedido_SomaPrintVALOR_TOTAL: TFMTBCDField;
    qryViewOrcPedido_SomaPrintMQUADRADO: TFMTBCDField;
    qryViewOrcPedido_SomaPrintMCORRIDO: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_ID: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_CLI_ID: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_USU_ID: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_ORCTP_ID: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_DATA: TDateField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_TIPO: TStringField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_OBSERVACAO: TBlobField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_MENSAGENS: TBlobField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_TIPO_PAGTO: TStringField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_PERIODO_MANUT: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_DATA_MANUT: TDateField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_MANUT_EFETUADA: TStringField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_PORCENTAGEM: TStringField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_DESCONTO: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_VALORVENDA: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELADO: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELA: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCPED_PARCELADOEM: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_USU_NOME: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_ID: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_CLI_CLIENTE: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_ENDERECO: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_BAIRRO: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_CEP: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_MUNICIPIO: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_FONE: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_FAX: TStringField;
    qryViewOrcamentoPedidoPrintVS_CLI_CELULAR: TStringField;
    qryViewOrcamentoPedidoPrintVS_TIPO: TStringField;
    qryViewOrcamentoPedidoPrintVS_ITENS_QTDADE_PECA: TIntegerField;
    qryViewOrcamentoPedidoPrintVS_ITENS_VALOR_TOTAL: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ITENS_LARGURA: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ITENS_COMPRIMENTO: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ITENS_VALOR_UNIT: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ITENS_ALTURA: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ITENS_DESCRICAO: TStringField;
    qryViewOrcamentoPedidoPrintVS_ITENS_UNIDMEDIDA: TStringField;
    qryViewOrcamentoPedidoPrintVS_ITENS_ESPESSURA: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ITENS_MEDIDA_METRO: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ITENS_QUANTIDADE: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_ORCTP_DESCRICAO: TStringField;
    qryViewOrcamentoPedidoPrintVS_MQUADRADO: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_MCORRIDO: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_ID: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_CLI_ID: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_USU_ID: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_ORCTP_ID: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_DATA: TDateField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_TIPO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_OBSERVACAO: TBlobField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_MENSAGENS: TBlobField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_TIPO_PAGTO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_PERIODO_MANUT: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_DATA_MANUT: TDateField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_MANUT_EFETUADA: TStringField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_PORCENTAGEM: TStringField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_DESCONTO: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_VALORVENDA: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELADO: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_VALORPARCELA: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCPED_PARCELADOEM: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_USU_NOME: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_ID: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_CLI_CLIENTE: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_ENDERECO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_BAIRRO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_CEP: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_MUNICIPIO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_FONE: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_FAX: TStringField;
    cdsViewOrcamentoPedidoPrintVS_CLI_CELULAR: TStringField;
    cdsViewOrcamentoPedidoPrintVS_TIPO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_QTDADE_PECA: TIntegerField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_VALOR_TOTAL: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_LARGURA: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_COMPRIMENTO: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_VALOR_UNIT: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_ALTURA: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_DESCRICAO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_UNIDMEDIDA: TStringField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_ESPESSURA: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_MEDIDA_METRO: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ITENS_QUANTIDADE: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_ORCTP_DESCRICAO: TStringField;
    cdsViewOrcamentoPedidoPrintVS_MQUADRADO: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_MCORRIDO: TFMTBCDField;
    qryViewOrcamentoPedidoPrintVS_MLINEAR: TFMTBCDField;
    cdsViewOrcamentoPedidoPrintVS_MLINEAR: TFMTBCDField;
    qryAcabamento: TSQLQuery;
    dspAcabamento: TDataSetProvider;
    cdsAcabamento: TMyClientDataSet;
    dsAcabamento: TDataSource;
    qryAcabamentoITEM_ID: TIntegerField;
    qryAcabamentoITENS_ORCPED_ID: TIntegerField;
    qryAcabamentoITEM_PRODUTO: TIntegerField;
    qryAcabamentoTIPO_PRODUTO: TStringField;
    qryAcabamentoDESCRICAO: TStringField;
    qryAcabamentoQUANTIDADE: TFMTBCDField;
    qryAcabamentoCOR: TStringField;
    cdsAcabamentoITEM_ID: TIntegerField;
    cdsAcabamentoITENS_ORCPED_ID: TIntegerField;
    cdsAcabamentoITEM_PRODUTO: TIntegerField;
    cdsAcabamentoTIPO_PRODUTO: TStringField;
    cdsAcabamentoDESCRICAO: TStringField;
    cdsAcabamentoQUANTIDADE: TFMTBCDField;
    cdsAcabamentoCOR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOrcamentoPedidoPrint: TDMOrcamentoPedidoPrint;

implementation

uses uDMConnection;

{$R *.dfm}

end.
