unit uDMAdiantamentos;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, MyClientDataSet, Provider,
  SqlExpr;

type
  TDMAdiantamentos = class(TDataModule)
    qryDadosAdiantamentos: TSQLQuery;
    dspDadosAdiantamentos: TDataSetProvider;
    cdsDadosAdiantamentos: TMyClientDataSet;
    dsDadosAdiantamentos: TDataSource;
    qryViewAdiantamentos: TSQLQuery;
    dspViewAdiantamentos: TDataSetProvider;
    cdsViewAdiantamentos: TMyClientDataSet;
    dsViewAdiantamentos: TDataSource;
    qryViewAdiantamentos_Bancos: TSQLQuery;
    dspViewAdiantamentos_Bancos: TDataSetProvider;
    cdsViewAdiantamentos_Bancos: TMyClientDataSet;
    dsViewAdiantamentos_Bancos: TDataSource;
    qryViewAdiantamentos_BancosBANC_ID: TIntegerField;
    qryViewAdiantamentos_BancosBANC_DESCRICAO: TStringField;
    cdsViewAdiantamentos_BancosBANC_ID: TIntegerField;
    cdsViewAdiantamentos_BancosBANC_DESCRICAO: TStringField;
    cdsDadosAdiantamentosADIANT_ORCPED_ID: TIntegerField;
    cdsDadosAdiantamentosADIANT_BANCO_ID: TIntegerField;
    cdsDadosAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField;
    cdsDadosAdiantamentosADIANT_VALOR: TFMTBCDField;
    cdsDadosAdiantamentosADIANT_NUM_CHEQUE: TStringField;
    cdsDadosAdiantamentosADIANT_DATA_APRESENTACAO: TDateField;
    cdsDadosAdiantamentosADIANT_ATIVO: TStringField;
    cdsDadosAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField;
    cdsDadosAdiantamentosADIANT_ESPECIE: TStringField;
    cdsDadosAdiantamentosADIANT_CONDICAO: TStringField;
    qryDadosAdiantamentosADIANT_ORCPED_ID: TIntegerField;
    qryDadosAdiantamentosADIANT_BANCO_ID: TIntegerField;
    qryDadosAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField;
    qryDadosAdiantamentosADIANT_VALOR: TFMTBCDField;
    qryDadosAdiantamentosADIANT_NUM_CHEQUE: TStringField;
    qryDadosAdiantamentosADIANT_DATA_APRESENTACAO: TDateField;
    qryDadosAdiantamentosADIANT_ATIVO: TStringField;
    qryDadosAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField;
    qryDadosAdiantamentosADIANT_ESPECIE: TStringField;
    qryDadosAdiantamentosADIANT_CONDICAO: TStringField;
    cdsViewAdiantamentosORCPED_ID: TIntegerField;
    cdsViewAdiantamentosADIANT_SEQUE: TIntegerField;
    cdsViewAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField;
    cdsViewAdiantamentosADIANT_VALOR: TFMTBCDField;
    cdsViewAdiantamentosADIANT_NUM_CHEQUE: TStringField;
    cdsViewAdiantamentosADIANT_DATA_APRESENTACAO: TDateField;
    cdsViewAdiantamentosADIANT_ESPECIE: TStringField;
    cdsViewAdiantamentosADIANT_CONDICAO: TStringField;
    cdsViewAdiantamentosBANC_ID: TIntegerField;
    cdsViewAdiantamentosBANC_DESCRICAO: TStringField;
    cdsViewAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField;
    qryViewAdiantamentosORCPED_ID: TIntegerField;
    qryViewAdiantamentosADIANT_SEQUE: TIntegerField;
    qryViewAdiantamentosADIANT_PARCELA_DESCRICAO: TStringField;
    qryViewAdiantamentosADIANT_VALOR: TFMTBCDField;
    qryViewAdiantamentosADIANT_NUM_CHEQUE: TStringField;
    qryViewAdiantamentosADIANT_DATA_APRESENTACAO: TDateField;
    qryViewAdiantamentosADIANT_ESPECIE: TStringField;
    qryViewAdiantamentosADIANT_CONDICAO: TStringField;
    qryViewAdiantamentosBANC_ID: TIntegerField;
    qryViewAdiantamentosBANC_DESCRICAO: TStringField;
    qryViewAdiantamentosADIANT_BANCO_AGENCIA: TIntegerField;
    qryDadosAdiantamentosADIANT_SEQUE: TIntegerField;
    cdsDadosAdiantamentosADIANT_SEQUE: TIntegerField;
    qryViewAdiantamentosADIANT_ATIVO: TStringField;
    cdsViewAdiantamentosADIANT_ATIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAdiantamentos: TDMAdiantamentos;

implementation

uses uDMConnection;

{$R *.dfm}

end.
