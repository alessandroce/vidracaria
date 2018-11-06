unit uDMConexao;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IniFiles, Dialogs, frxClass, frxDBSet,
  frxIBXComponents, frxExportTXT, frxExportText, frxExportCSV,
  frxExportRTF, frxExportXLS, frxExportHTML, frxExportPDF;

type
  TDMConexao = class(TDataModule)
    IBConexao: TIBDatabase;
    IBTransacao: TIBTransaction;
    IBTransacaoLeitura: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{$R *.dfm}

procedure TDMConexao.DataModuleCreate(Sender: TObject);
var
  ListaParms: TStringList;
  sBanco, sbancolog : String;
  senha, login : String;
  sErro : String;
  sPathServidorIni,
  ServerNameEventos : String;
  ArqIni : TIniFile;
begin
  IBConexao.Connected := False;
  sPathServidorIni := ExtractFilePath(ParamStr(0))+ 'Servidor.ini';
  ArqIni := TIniFile.Create(sPathServidorIni);
  ServerNameEventos:= ArqIni.ReadString('Conn_Vidracaria', 'Database', '');
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
           ShowMessage('base dados não conectada.  '+e.Message);
         end;
    end;
  finally
    ListaParms.Free;
  end;
end;

end.
