unit uDMOrcamentoTipo;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMOrcamentoTipo = class(TDataModule)
    qryDadosOrcamentoTipo: TSQLQuery;
    dspDadosOrcamentoTipo: TDataSetProvider;
    dsDadosOrcamentoTipo: TDataSource;
    cdsDadosOrcamentoTipo: TMyClientDataSet;
    qryDadosOrcamentoTipoORCTP_ID: TIntegerField;
    qryDadosOrcamentoTipoORCTP_DESCRICAO: TStringField;
    cdsDadosOrcamentoTipoORCTP_ID: TIntegerField;
    cdsDadosOrcamentoTipoORCTP_DESCRICAO: TStringField;
    qryViewOrcamentoTipo: TSQLQuery;
    dspViewOrcamentoTipo: TDataSetProvider;
    dsViewOrcamentoTipo: TDataSource;
    cdsViewOrcamentoTipo: TMyClientDataSet;
    qryViewOrcamentoTipoORCTP_ID: TIntegerField;
    qryViewOrcamentoTipoORCTP_DESCRICAO: TStringField;
    cdsViewOrcamentoTipoORCTP_ID: TIntegerField;
    cdsViewOrcamentoTipoORCTP_DESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOrcamentoTipo: TDMOrcamentoTipo;

implementation

uses uDMConnection;

{$R *.dfm}

end.
