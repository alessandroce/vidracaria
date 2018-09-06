unit uDMBancos;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMBancos = class(TDataModule)
    qryDadosBancos: TSQLQuery;
    dspDadosBancos: TDataSetProvider;
    dsDadosBancos: TDataSource;
    qryViewBancos: TSQLQuery;
    dspViewBancos: TDataSetProvider;
    dsViewBancos: TDataSource;
    cdsViewBancos: TMyClientDataSet;
    cdsDadosBancos: TMyClientDataSet;
    qryDadosBancosBANC_ID: TIntegerField;
    qryDadosBancosBANC_DESCRICAO: TStringField;
    qryDadosBancosBANC_ATIVO: TStringField;
    cdsDadosBancosBANC_ID: TIntegerField;
    cdsDadosBancosBANC_DESCRICAO: TStringField;
    cdsDadosBancosBANC_ATIVO: TStringField;
    qryViewBancosBANC_ID: TIntegerField;
    qryViewBancosBANC_DESCRICAO: TStringField;
    qryViewBancosBANC_ATIVO: TStringField;
    cdsViewBancosBANC_ID: TIntegerField;
    cdsViewBancosBANC_DESCRICAO: TStringField;
    cdsViewBancosBANC_ATIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMBancos: TDMBancos;

implementation

uses uDMConnection;

{$R *.dfm}

end.
