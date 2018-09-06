unit uDMConnection;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, IBODataset;

type
  TDMConnection = class(TDataModule)
    SQLConnection: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConnection: TDMConnection;
implementation

{$R *.dfm}

{ TDMConnection }

end.
