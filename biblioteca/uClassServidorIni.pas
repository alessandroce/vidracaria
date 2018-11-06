{ *********************************************************************** }
{ Classe TServidorIni                                                     }
{                                                                         }
{   Classe de utilizacao de arquivo INI para configuracao de diversos     }
{   parametros que serao utiluzados dentro do projeto.                    }
{                                                                         }
{ Variavel Const do projeto (opcional)                                    }
{   SERVIDORINI      = Nome do arquivo Servidor.ini                       }
{   PATH_SERVIDORINI = Caminho do arquivo Servidor.ini                    }
{   PATH_IMAGEM      = Caminho da imagem de tela                          }
{   PATH_SKIN        = Caminho da Skin usada no projeto                   }
{                                                                         }
{ Variavel da classe                                                      }
{   ArquivoPontoIni  = Armazena o nome do arquivo Servidor.ini            }
{   Path_ServidorIni = Armazena o caminho do arquivo Servidor.ini         }
{   Path_Imagem_Tela = Armazena o caminho da imagem de tela               }
{   Path_Skin        = Armazena o caminho da Skin usada no projeto        }
{                                                                         }
{ Procedure e Funcoes                                                     }
{   CarregarSkin        = Carrega o Skin no projeto                       }
{   CarregarImagemTela  = Carrega a imagem na tela                        }
{   Ler_ArquivoIni      = Ler arquivo apartir da tag e pega seu conteudo  }
{                                                                         }
{ Modo de utilizacao:                                                     }
{   Inserir a unit uClassServidorIni no projeto                           }
{   Declarar uma variavel do tipo TServidorIni                            }
{     Ini : TServidorIni;                                                 }
{                                                                         }
{   Usando a classe                                                       }
{                                                                         }
{       try                                                               }
{            Ini :=  TServidorIni.create(SkinData1,cxImage1);             }
{            Ini.ArquivoPontoIni  := SERVIDORINI;                         }
{            Ini.Path_ServidorIni := PATH_SERVIDORINI;                    }
{            Ini.Path_Imagem_Tela := PATH_IMAGEM;                         }
{            Ini.Path_Skin        := PATH_SKIN;                           }
{            Ini.CarregarSkin('IMAGEM','SKIN');                           }
{            Ini.CarregarImagemTela('IMAGEM','TELA');                     }
{       except on e:Exception do                                          }
{       begin                                                             }
{            ShowMessage('Erro Arq Ini:   '+e.Message);                   }
{       end;                                                              }
{       end;                                                              }
{                                                                         }
{ *********************************************************************** }


unit uClassServidorIni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  WinSkinData, cxImage, IniFiles;
type
  TServidorIni = Class
    private
      FSkin   : TSkinData;
      FImagem : TcxImage;
      ArqIni  : TIniFile;
      FPath_ServidorIni: String;
      FPath_Imagem_Tela: String;
      FPath_Skin : String;
    procedure setFPath_ServidorIni(const Value: String);
    function IniLoad:Boolean;
    public
      TagMenu : String;
      TagMenuItem : String;
      ArquivoPontoIni : String;
      constructor create(Skn:TSkinData;Imagem:TcxImage);overload;
      constructor create(Imagem:TcxImage);overload;
      constructor create(Skn:TSkinData);overload;
      constructor create;overload;
      destructor Destroy;
      property Path_ServidorIni : String read FPath_ServidorIni write setFPath_ServidorIni;
      property Path_Imagem_Tela : String read FPath_Imagem_Tela write FPath_Imagem_Tela;
      property Path_Skin : String read FPath_Skin write FPath_Skin;

      procedure CarregarImagemTela(sArquivoImagem:String='');overload;
      procedure CarregarImagemTela(Tag,TagItem:String);overload;

      procedure CarregarSkin(sArquivoskin:String='');overload;
      procedure CarregarSkin(Tag,TagItem:String);overload;

      function Ler_ArquivoIni(Tag,TagItem:String):String;
  end;


var
  _SERVIDORINI      : String;
  _PATH_SERVIDORINI : String;
  _PATH_IMAGEM      : String;
  _PATH_SKIN        : String;
  _SERVER_NAME      : String;



implementation

{ TServidorIni }

procedure TServidorIni.CarregarImagemTela(Tag, TagItem: String);
var sArquivoImagem : String;
begin
  IniLoad;
  sArquivoImagem := ArqIni.ReadString(Tag,TagItem,'1');
  sArquivoImagem := Path_Imagem_Tela + sArquivoImagem;
  if sArquivoImagem<>EmptyStr then
    if FileExists(sArquivoImagem) then
      FImagem.Picture.LoadFromFile(sArquivoImagem);
end;

procedure TServidorIni.CarregarImagemTela(sArquivoImagem: String='');
begin
  IniLoad;
  if sArquivoImagem <> EmptyStr then
  begin
    sArquivoImagem := Path_Imagem_Tela + sArquivoImagem;
    if sArquivoImagem<>EmptyStr then
      if FileExists(sArquivoImagem) then
        FImagem.Picture.LoadFromFile(sArquivoImagem);
  end
  else
    FImagem.Picture := nil;
end;

procedure TServidorIni.CarregarSkin(Tag, TagItem: String);
var sArquivoskin : String;
begin
  IniLoad;
  sArquivoskin := ArqIni.ReadString(Tag,TagItem,'1');
  sArquivoskin := FPath_Skin + sArquivoskin;
  if FileExists(sArquivoSkin) then
  begin
     FSkin.SkinFile := sArquivoSkin;
     FSkin.Active   := True;
  end;
end;

procedure TServidorIni.CarregarSkin(sArquivoskin:String='');
begin
  if sArquivoskin<>EmptyStr then
  begin
    IniLoad;
    sArquivoskin := FPath_Skin + sArquivoskin;
    if FileExists(sArquivoSkin) then
    begin
       FSkin.SkinFile := sArquivoSkin;
       FSkin.Active   := True;
    end;
  end
  else
    FSkin.Active := false;
end;

constructor TServidorIni.create;
begin
  ArquivoPontoIni  := _SERVIDORINI;
  Path_ServidorIni := _PATH_SERVIDORINI;
  Path_Imagem_Tela := _PATH_IMAGEM;
  Path_Skin        := _PATH_SKIN;
end;

constructor TServidorIni.create(Skn: TSkinData; Imagem: TcxImage);
begin
  FSkin   := Skn;
  FImagem := Imagem;
  ArquivoPontoIni  := _SERVIDORINI;
  Path_ServidorIni := _PATH_SERVIDORINI;
  Path_Imagem_Tela := _PATH_IMAGEM;
  Path_Skin        := _PATH_SKIN;
end;

constructor TServidorIni.create(Skn: TSkinData);
begin
  FSkin   := Skn;
end;

constructor TServidorIni.create(Imagem: TcxImage);
begin
  FImagem := Imagem;
  ArquivoPontoIni  := _SERVIDORINI;
  Path_ServidorIni := _PATH_SERVIDORINI;
  Path_Imagem_Tela := _PATH_IMAGEM;
  Path_Skin        := _PATH_SKIN;
end;

destructor TServidorIni.Destroy;
begin
  //FSkin;
  //FImagem.Picture := nil;
  //ArqIni.Destroy;
end;

function TServidorIni.IniLoad: Boolean;
begin
  Result := Assigned(ArqIni);
  if not Result then
  begin
    if ArquivoPontoIni = EmptyStr then
      ArquivoPontoIni := 'Servidor.ini';
    if FPath_ServidorIni = EmptyStr then
      Path_ServidorIni := ExtractFilePath(Application.ExeName);
    ArqIni := TIniFile.Create(FPath_ServidorIni);
  end;
end;

function TServidorIni.Ler_ArquivoIni(Tag, TagItem: String): String;
begin
  IniLoad;
  Result := ArqIni.ReadString(Tag,TagItem,'');
end;

procedure TServidorIni.setFPath_ServidorIni(const Value: String);
begin
  if Value<>EmptyStr then
  begin
    FPath_ServidorIni := Value;
    FPath_ServidorIni := FPath_ServidorIni+ArquivoPontoIni;
  end;
end;

end.
 