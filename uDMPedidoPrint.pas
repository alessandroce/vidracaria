unit uDMPedidoPrint;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMPedidoPrint = class(TDataModule)
    qryViewPedidoPrint: TSQLQuery;
    dspViewPedidoPrint: TDataSetProvider;
    dsViewPedidoPrint: TDataSource;
    cdsViewPedidoPrint: TMyClientDataSet;
    qryViewPedido_AdiantamentoPedPrint: TSQLQuery;
    dspViewPedido_AdiantamentoPedPrint: TDataSetProvider;
    dsViewPedido_AdiantamentoPedPrint: TDataSource;
    cdsViewPedido_AdiantamentoPedPrint: TMyClientDataSet;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_PED_ID: TIntegerField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_ID: TIntegerField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_SEQUE: TIntegerField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_PARCELA_DESCRICAO: TStringField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_VALOR: TFMTBCDField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_NUM_CHEQUE: TStringField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_DATA_APRESENTACAO: TDateField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_ATIVO: TStringField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_AGENCIA: TIntegerField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_ESPECIE: TStringField;
    qryViewPedido_AdiantamentoPedPrintADIANTPED_CONDICAO: TStringField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_PED_ID: TIntegerField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_ID: TIntegerField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_SEQUE: TIntegerField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_PARCELA_DESCRICAO: TStringField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_VALOR: TFMTBCDField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_NUM_CHEQUE: TStringField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_DATA_APRESENTACAO: TDateField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_ATIVO: TStringField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_BANCO_AGENCIA: TIntegerField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_ESPECIE: TStringField;
    cdsViewPedido_AdiantamentoPedPrintADIANTPED_CONDICAO: TStringField;
    qryViewPedidoPrintSoma: TSQLQuery;
    dspViewPedidoPrintSoma: TDataSetProvider;
    dsViewPedidoPrintSoma: TDataSource;
    cdsViewPedidoPrintSoma: TMyClientDataSet;
    cdsViewPedidoPrintSomaSOMA: TFMTBCDField;
    qryViewPedidoPrintSomaSOMA: TFMTBCDField;
    qryViewPedidoPrintCLI_ID: TIntegerField;
    qryViewPedidoPrintCLI_CLIENTE: TStringField;
    qryViewPedidoPrintCLI_ENDERECO: TStringField;
    qryViewPedidoPrintCLI_COMPLEMENTO: TStringField;
    qryViewPedidoPrintCLI_BAIRRO: TStringField;
    qryViewPedidoPrintCLI_CEP: TStringField;
    qryViewPedidoPrintCLI_MUNICIPIO: TStringField;
    qryViewPedidoPrintCLI_FONE: TStringField;
    qryViewPedidoPrintCLI_FAX: TStringField;
    qryViewPedidoPrintCLI_CNPJ: TStringField;
    qryViewPedidoPrintCLI_CELULAR: TStringField;
    qryViewPedidoPrintTIPO: TStringField;
    qryViewPedidoPrintITPED_PROD__VALOR: TStringField;
    qryViewPedidoPrintITPED_QUANT__DATA_APRES: TStringField;
    qryViewPedidoPrintITENSPED_VALOR_UNIT: TStringField;
    qryViewPedidoPrintITENSPED_VALOR_TOTAL: TStringField;
    qryViewPedidoPrintITENSPED_SEQUE: TStringField;
    qryViewPedidoPrintPED_ID: TIntegerField;
    qryViewPedidoPrintPED_CLI_ID: TIntegerField;
    qryViewPedidoPrintPED_USU_ID: TIntegerField;
    qryViewPedidoPrintPED_DATA_PEDIDO: TDateField;
    qryViewPedidoPrintPED_DATA_ENTREGA: TDateField;
    qryViewPedidoPrintPED_DETALHES: TBlobField;
    qryViewPedidoPrintPED_PERIODO_MANUT: TIntegerField;
    qryViewPedidoPrintPED_DATA_MANUT: TDateField;
    qryViewPedidoPrintPED_MANUT_EFETUADA: TStringField;
    qryViewPedidoPrintPED_VALOR_TOTAL: TFMTBCDField;
    qryViewPedidoPrintUSU_NOME: TStringField;
    cdsViewPedidoPrintCLI_ID: TIntegerField;
    cdsViewPedidoPrintCLI_CLIENTE: TStringField;
    cdsViewPedidoPrintCLI_ENDERECO: TStringField;
    cdsViewPedidoPrintCLI_COMPLEMENTO: TStringField;
    cdsViewPedidoPrintCLI_BAIRRO: TStringField;
    cdsViewPedidoPrintCLI_CEP: TStringField;
    cdsViewPedidoPrintCLI_MUNICIPIO: TStringField;
    cdsViewPedidoPrintCLI_FONE: TStringField;
    cdsViewPedidoPrintCLI_FAX: TStringField;
    cdsViewPedidoPrintCLI_CNPJ: TStringField;
    cdsViewPedidoPrintCLI_CELULAR: TStringField;
    cdsViewPedidoPrintTIPO: TStringField;
    cdsViewPedidoPrintITPED_PROD__VALOR: TStringField;
    cdsViewPedidoPrintITPED_QUANT__DATA_APRES: TStringField;
    cdsViewPedidoPrintITENSPED_VALOR_UNIT: TStringField;
    cdsViewPedidoPrintITENSPED_VALOR_TOTAL: TStringField;
    cdsViewPedidoPrintITENSPED_SEQUE: TStringField;
    cdsViewPedidoPrintPED_ID: TIntegerField;
    cdsViewPedidoPrintPED_CLI_ID: TIntegerField;
    cdsViewPedidoPrintPED_USU_ID: TIntegerField;
    cdsViewPedidoPrintPED_DATA_PEDIDO: TDateField;
    cdsViewPedidoPrintPED_DATA_ENTREGA: TDateField;
    cdsViewPedidoPrintPED_DETALHES: TBlobField;
    cdsViewPedidoPrintPED_PERIODO_MANUT: TIntegerField;
    cdsViewPedidoPrintPED_DATA_MANUT: TDateField;
    cdsViewPedidoPrintPED_MANUT_EFETUADA: TStringField;
    cdsViewPedidoPrintPED_VALOR_TOTAL: TFMTBCDField;
    cdsViewPedidoPrintUSU_NOME: TStringField;
    qryViewPedidoPrintITPED_ID__PARC_DESC: TStringField;
    cdsViewPedidoPrintITPED_ID__PARC_DESC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPedidoPrint: TDMPedidoPrint;

implementation

uses uDMConnection;

{$R *.dfm}

end.
