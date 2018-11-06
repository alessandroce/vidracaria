unit uClassAvisos;

Interface

uses Windows, Forms;

//type

//procedures/functions
    function  Mensagem(Mens, Titulo: String ; Tipo: byte ): byte;
    function  Duvida(Mens: String) : Boolean;
    procedure Aviso(Mens: String);
    procedure Erro(Mens: String);
    procedure Informacao(Mens: String);

//var
//const

implementation

function Duvida(Mens : String) : Boolean;
begin
  Result := Mensagem(Mens, 'Dúvida', 0) = IDYES;
end;

procedure Aviso(Mens : String);
begin
  Mensagem(Mens,'Aviso',1);
end;

procedure Erro(Mens : String);
begin
  Mensagem(Mens,'Erro',2);
end;

procedure Informacao(Mens : String);
begin
  Mensagem(Mens,'Informação',3);
end;

function  Mensagem (Mens, Titulo: String ; Tipo: byte ): byte;
var Botoes : Integer;
begin
  Botoes := mb_Ok;
  case Tipo of
    0 : Botoes   :=  Mb_YesNo+mb_IconQuestion;
    1 : Botoes   :=  Mb_Ok+mb_IconExclamation;
    2 : Botoes   :=  Mb_Ok+mb_IconStop;
    3 : Botoes   :=  Mb_Ok+mb_IconInformation;
    4 : Botoes   :=  Mb_YesNoCancel+mb_IconQuestion;
  end;
  Result := Application.MessageBox(PChar(Mens) , Pchar(Titulo) , Botoes);
end;


end.
