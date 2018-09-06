unit uDMRelatorioBanco;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, MyClientDataSet, DB, Provider,
  SqlExpr;

type
  TDMRelatorioBanco = class(TDataModule)
    qryViewRelatorioBancos: TSQLQuery;
    qryViewRelatorioBancosBANC_ID: TIntegerField;
    qryViewRelatorioBancosBANC_DESCRICAO: TStringField;
    qryViewRelatorioBancosBANC_ATIVO: TStringField;
    dspViewRelatorioBancos: TDataSetProvider;
    dsViewRelatorioBancos: TDataSource;
    cdsViewRelatorioBancos: TMyClientDataSet;
    cdsViewRelatorioBancosBANC_ID: TIntegerField;
    cdsViewRelatorioBancosBANC_DESCRICAO: TStringField;
    cdsViewRelatorioBancosBANC_ATIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorioBanco: TDMRelatorioBanco;

implementation

uses uDMConnection;

{$R *.dfm}

end.
