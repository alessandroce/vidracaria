unit uDMConnection;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, IBODataset, uClassServidorIni, Forms,
  IBDatabase, IniFiles;

type
  TDMConnection = class(TDataModule)
    SQLConnection: TSQLConnection;
    IBConexao: TIBDatabase;
    IBTransacao: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    Ini : TServidorIni;
  public
    { Public declarations }
  end;

var
  DMConnection: TDMConnection;
implementation

uses uClassAvisos;

{$R *.dfm}

{ TDMConnection }

procedure TDMConnection.DataModuleCreate(Sender: TObject);
var
  sArquivoIni : String;
  aPath : String;
  ListaParms : TStringList;
  sBanco, sbancolog : String;
  senha, login : String;
  sErro : String;
  sPathServidorIni,
  ServerNameEventos : String;
  ArqIni : TIniFile;
begin
{------------------------------------------------------------------------------}
  try
    Ini :=  TServidorIni.create;
    Ini.ArquivoPontoIni  := 'Servidor.ini';
    Ini.Path_ServidorIni := ExtractFilePath(Application.ExeName);
    SQLConnection.Close;
    SQLConnection.LoadParamsOnConnect := false;
    SQLConnection.Params.LoadFromFile( Ini.Path_ServidorIni );
    SQLConnection.LoginPrompt := false;
    SQLConnection.Open;
{------------------------------------------------------------------------------}
    IBConexao.Connected := False;
    ServerNameEventos:= ini.Ler_ArquivoIni('Conn_MovelariaDMarco','Database');
    ListaParms       := TStringList.Create;
    With ListaParms do
    begin
      add('user_name=SYSDBA');
      add('password=masterkey');
      add('lc_ctype=WIN1252');
    end;
    try
      try
        IBConexao.DatabaseName := ServerNameEventos;
        IBConexao.Params       := ListaParms;
      except on e : Exception do
           Begin
             Aviso('base dados não conectada.  '+e.Message);
           end;
      end;
    finally
      ListaParms.Free;
    end;
{------------------------------------------------------------------------------}
  except on e:Exception do
  begin
    Aviso('Erro Arq Ini:   '+e.Message);
  end;
  end;
end;

end.
