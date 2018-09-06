unit uDMAdiantamentosPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, MyClientDataSet, Provider,
  SqlExpr;

type
  TDMAdiantamentosPedido = class(TDataModule)
    qryDadosAdiantamentosPedido: TSQLQuery;
    dspDadosAdiantamentosPedido: TDataSetProvider;
    cdsDadosAdiantamentosPedido: TMyClientDataSet;
    dsDadosAdiantamentosPedido: TDataSource;
    qryViewAdiantamentosPedido: TSQLQuery;
    dspViewAdiantamentosPedido: TDataSetProvider;
    cdsViewAdiantamentosPedido: TMyClientDataSet;
    dsViewAdiantamentosPedido: TDataSource;
    qryViewAdiantamentosPedido_Bancos: TSQLQuery;
    qryViewAdiantamentosPedido_BancosBANC_ID: TIntegerField;
    qryViewAdiantamentosPedido_BancosBANC_DESCRICAO: TStringField;
    dspViewAdiantamentosPedido_Bancos: TDataSetProvider;
    cdsViewAdiantamentosPedido_Bancos: TMyClientDataSet;
    cdsViewAdiantamentosPedido_BancosBANC_ID: TIntegerField;
    cdsViewAdiantamentosPedido_BancosBANC_DESCRICAO: TStringField;
    dsViewAdiantamentosPedido_Bancos: TDataSource;
    cdsDadosAdiantamentosPedidoADIANTPED_PED_ID: TIntegerField;
    cdsDadosAdiantamentosPedidoADIANTPED_BANCO_ID: TIntegerField;
    cdsDadosAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField;
    cdsDadosAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField;
    cdsDadosAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField;
    cdsDadosAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField;
    cdsDadosAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField;
    cdsDadosAdiantamentosPedidoADIANTPED_ATIVO: TStringField;
    cdsDadosAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField;
    cdsDadosAdiantamentosPedidoADIANTPED_ESPECIE: TStringField;
    cdsDadosAdiantamentosPedidoADIANTPED_CONDICAO: TStringField;
    qryDadosAdiantamentosPedidoADIANTPED_PED_ID: TIntegerField;
    qryDadosAdiantamentosPedidoADIANTPED_BANCO_ID: TIntegerField;
    qryDadosAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField;
    qryDadosAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField;
    qryDadosAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField;
    qryDadosAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField;
    qryDadosAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField;
    qryDadosAdiantamentosPedidoADIANTPED_ATIVO: TStringField;
    qryDadosAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField;
    qryDadosAdiantamentosPedidoADIANTPED_ESPECIE: TStringField;
    qryDadosAdiantamentosPedidoADIANTPED_CONDICAO: TStringField;
    qryViewAdiantamentosPedidoPED_ID: TIntegerField;
    qryViewAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField;
    qryViewAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField;
    qryViewAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField;
    qryViewAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField;
    qryViewAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField;
    qryViewAdiantamentosPedidoADIANTPED_ESPECIE: TStringField;
    qryViewAdiantamentosPedidoADIANTPED_CONDICAO: TStringField;
    qryViewAdiantamentosPedidoADIANTPED_ATIVO: TStringField;
    qryViewAdiantamentosPedidoBANC_ID: TIntegerField;
    qryViewAdiantamentosPedidoBANC_DESCRICAO: TStringField;
    qryViewAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField;
    cdsViewAdiantamentosPedidoPED_ID: TIntegerField;
    cdsViewAdiantamentosPedidoADIANTPED_SEQUE: TIntegerField;
    cdsViewAdiantamentosPedidoADIANTPED_PARCELA_DESCRICAO: TStringField;
    cdsViewAdiantamentosPedidoADIANTPED_VALOR: TFMTBCDField;
    cdsViewAdiantamentosPedidoADIANTPED_NUM_CHEQUE: TStringField;
    cdsViewAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO: TDateField;
    cdsViewAdiantamentosPedidoADIANTPED_ESPECIE: TStringField;
    cdsViewAdiantamentosPedidoADIANTPED_CONDICAO: TStringField;
    cdsViewAdiantamentosPedidoADIANTPED_ATIVO: TStringField;
    cdsViewAdiantamentosPedidoBANC_ID: TIntegerField;
    cdsViewAdiantamentosPedidoBANC_DESCRICAO: TStringField;
    cdsViewAdiantamentosPedidoADIANTPED_BANCO_AGENCIA: TIntegerField;
    qryViewAdiantamentosPedido_Soma: TSQLQuery;
    dspViewAdiantamentosPedido_Soma: TDataSetProvider;
    cdsViewAdiantamentosPedido_Soma: TMyClientDataSet;
    dsViewAdiantamentosPedido_Soma: TDataSource;
    qryViewAdiantamentosPedido_SomaSOMA: TFMTBCDField;
    cdsViewAdiantamentosPedido_SomaSOMA: TFMTBCDField;
    qryViewAdiantamentosPedido_BancosBANC_ATIVO: TStringField;
    cdsViewAdiantamentosPedido_BancosBANC_ATIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAdiantamentosPedido: TDMAdiantamentosPedido;

implementation

{$R *.dfm}

end.
