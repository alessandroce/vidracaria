unit uDMAdiantamentosOrcPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, MyClientDataSet, Provider,
  SqlExpr;

type
  TDMAdiantamentoOrcPedido = class(TDataModule)
    qryDadosAdiantamentosOrcPedido: TSQLQuery;
    qryDadosAdiantamentosOrcPedidoADIANTPED_BANCO_ID: TIntegerField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_SEQUE: TIntegerField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_PARCELA_DESCRICAO: TStringField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_VALOR: TFMTBCDField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_NUM_CHEQUE: TStringField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_DATA_APRESENTACAO: TDateField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_ATIVO: TStringField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_BANCO_AGENCIA: TIntegerField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_ESPECIE: TStringField;
    qryDadosAdiantamentosOrcPedidoADIANTPED_CONDICAO: TStringField;
    dspDadosAdiantamentosOrcPedido: TDataSetProvider;
    cdsDadosAdiantamentosOrcPedido: TMyClientDataSet;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_BANCO_ID: TIntegerField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_SEQUE: TIntegerField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_PARCELA_DESCRICAO: TStringField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_VALOR: TFMTBCDField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_NUM_CHEQUE: TStringField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_DATA_APRESENTACAO: TDateField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_ATIVO: TStringField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_BANCO_AGENCIA: TIntegerField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_ESPECIE: TStringField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_CONDICAO: TStringField;
    dsDadosAdiantamentosOrcPedido: TDataSource;
    qryDadosAdiantamentosOrcPedidoADIANTPED_ORCPED_ID: TIntegerField;
    cdsDadosAdiantamentosOrcPedidoADIANTPED_ORCPED_ID: TIntegerField;
    qryViewAdiantamentosOrcPedido: TSQLQuery;
    dspViewAdiantamentosOrcPedido: TDataSetProvider;
    cdsViewAdiantamentosOrcPedido: TMyClientDataSet;
    dsViewAdiantamentosOrcPedido: TDataSource;
    qryViewAdiantamentosOrcPedido_Bancos: TSQLQuery;
    qryViewAdiantamentosOrcPedido_BancosBANC_ID: TIntegerField;
    qryViewAdiantamentosOrcPedido_BancosBANC_DESCRICAO: TStringField;
    qryViewAdiantamentosOrcPedido_BancosBANC_ATIVO: TStringField;
    dspViewAdiantamentosOrcPedido_Bancos: TDataSetProvider;
    cdsViewAdiantamentosOrcPedido_Bancos: TMyClientDataSet;
    cdsViewAdiantamentosOrcPedido_BancosBANC_ID: TIntegerField;
    cdsViewAdiantamentosOrcPedido_BancosBANC_DESCRICAO: TStringField;
    cdsViewAdiantamentosOrcPedido_BancosBANC_ATIVO: TStringField;
    dsViewAdiantamentosOrcPedido_Bancos: TDataSource;
    qryViewAdiantamentosOrcPedido_Soma: TSQLQuery;
    qryViewAdiantamentosOrcPedido_SomaSOMA: TFMTBCDField;
    dspViewAdiantamentosOrcPedido_Soma: TDataSetProvider;
    cdsViewAdiantamentosOrcPedido_Soma: TMyClientDataSet;
    cdsViewAdiantamentosOrcPedido_SomaSOMA: TFMTBCDField;
    dsViewAdiantamentosOrcPedido_Soma: TDataSource;
    qryViewAdiantamentosOrcPedidoORCPED_ID: TIntegerField;
    qryViewAdiantamentosOrcPedidoADIANT_SEQUE: TIntegerField;
    qryViewAdiantamentosOrcPedidoADIANT_PARCELA_DESCRICAO: TStringField;
    qryViewAdiantamentosOrcPedidoADIANT_VALOR: TFMTBCDField;
    qryViewAdiantamentosOrcPedidoADIANT_NUM_CHEQUE: TStringField;
    qryViewAdiantamentosOrcPedidoADIANT_DATA_APRESENTACAO: TDateField;
    qryViewAdiantamentosOrcPedidoADIANT_ESPECIE: TStringField;
    qryViewAdiantamentosOrcPedidoADIANT_CONDICAO: TStringField;
    qryViewAdiantamentosOrcPedidoADIANT_ATIVO: TStringField;
    qryViewAdiantamentosOrcPedidoBANC_ID: TIntegerField;
    qryViewAdiantamentosOrcPedidoBANC_DESCRICAO: TStringField;
    qryViewAdiantamentosOrcPedidoADIANT_BANCO_AGENCIA: TIntegerField;
    cdsViewAdiantamentosOrcPedidoORCPED_ID: TIntegerField;
    cdsViewAdiantamentosOrcPedidoADIANT_SEQUE: TIntegerField;
    cdsViewAdiantamentosOrcPedidoADIANT_PARCELA_DESCRICAO: TStringField;
    cdsViewAdiantamentosOrcPedidoADIANT_VALOR: TFMTBCDField;
    cdsViewAdiantamentosOrcPedidoADIANT_NUM_CHEQUE: TStringField;
    cdsViewAdiantamentosOrcPedidoADIANT_DATA_APRESENTACAO: TDateField;
    cdsViewAdiantamentosOrcPedidoADIANT_ESPECIE: TStringField;
    cdsViewAdiantamentosOrcPedidoADIANT_CONDICAO: TStringField;
    cdsViewAdiantamentosOrcPedidoADIANT_ATIVO: TStringField;
    cdsViewAdiantamentosOrcPedidoBANC_ID: TIntegerField;
    cdsViewAdiantamentosOrcPedidoBANC_DESCRICAO: TStringField;
    cdsViewAdiantamentosOrcPedidoADIANT_BANCO_AGENCIA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAdiantamentoOrcPedido: TDMAdiantamentoOrcPedido;

implementation

{$R *.dfm}

end.
