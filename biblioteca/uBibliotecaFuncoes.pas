unit uBibliotecaFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGrids, Grids, ComCtrls, DBCtrls, DBClient, RLReport, ExtCtrls;

  Function Fnc_Mod(divisor:Double;dividendo:double):Double;
  Function Fnc_DiadaSemana(Data : String) : string;
  function Fnc_Split(Valor, Delimitador: String; Item: integer): String;
  Function Fnc_DiasAtrazo(DataVenc:TDateTime; DataAtual:TDateTime): String;
  Function Fnc_OrdenaDbgridporColuna(grid:TDBGrid;coluna:Integer):TDBGrid;
  Function Fnc_MudaCursorColunaDbgrid(grid:TDBGrid):TDBGrid;
  Function Fnc_MesExtenso( Mes:Word ) : string;
  Function Fnc_GetFileList(const Path: string): TStringList;
  procedure Fnc_VerificaSeFormularioAtivo(formCaption: string ;formPrincipal:TForm);
  function Fnc_MsgSalvar(campo1:String;campo2:String;campo3:String;campo4:String):String;
  procedure OrdenarGrids(oldColumn:Tcolumn);
  procedure Fnc_ConfigImpressao(report:TRLReport);
  procedure DataInicialDataFinal(d1, d2:TDateTimePicker);
  procedure OrdenarGris(oldColumn:Tcolumn);
  function AppVersion(AplicationName:String):String;
  procedure NumericalKey(var Value:Char);
  function PercentKey(Value:String):String;



type
  TFormBibliotecaFuncoes = class(TForm)

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormBibliotecaFuncoes: TFormBibliotecaFuncoes;
  janelaAberta : Boolean;
  var_usuarioLogado   : String;

implementation



uses DateUtils, DB;

{$R *.dfm}

Function Fnc_Mod(divisor:Double;dividendo:double):Double;
//função retorna o resto de uma divisão
// se zero entao PAR senão IMPAR
var
    quociente : double;
    subtracao : double;
    resto     : double;
begin
  quociente := (divisor / dividendo);
  quociente := trunc(quociente);
  subtracao := (quociente * dividendo);
  resto := (divisor - subtracao);
  Result := resto;
end;


Function Fnc_DiadaSemana(Data : String) : string;
const
  semana : array[1..7] of string = ('DOM','SEG','TER','QUA','QUI','SEX', 'SAB');
begin
  Result := semana[DayOfWeek(strtodate(Data))]
end;

function Fnc_Split(Valor, Delimitador: String; Item: integer): String;
Var s : TStringList;
begin
  if Valor = '' then exit;
    s := TStringList.Create;
  Valor := StringReplace(Valor, #13, '$Quebra$', [rfReplaceAll]);
  s.Text := STringReplace(Valor, Delimitador, #13, [rfIgnoreCase, rfReplaceAll]);
  if (Item >= 0) and (Item <= s.Count) then
    Result := StringReplace(s.Strings[item - 1], '$Quebra$', #13, [rfReplaceAll])
  else
    Result := '';
  s.Free;
end;


Function Fnc_DiasAtrazo(DataVenc:TDateTime; DataAtual:TDateTime): String;
Var
    Data: TDateTime;
    dia, mes, ano: Word;
begin
  if DataAtual < DataVenc then
  begin
    Result := '0';
  end
  else
  begin
    Data := DataAtual - DataVenc;
    DecodeDate( Data, ano, mes, dia);
    Result := FloatToStr(Data);
  end;
end;

Function Fnc_OrdenaDbgridporColuna(grid:TDBGrid;coluna:Integer):TDBGrid;
var
    Column : TColumn;
begin
//para ordenar a coluna selecionada usar
//DataSource.IndexFieldNames := Column.FieldName;
  {--- restaurando o título ---}
  grid.Columns[grid.Tag].Title.Color      := clBtnFace;
  grid.Columns[grid.Tag].Title.Font.Color := clWindowText;
  grid.Columns[grid.Tag].Title.Font.Style := [];
  {--- end / restaur titulo ---}
  {--- guarda a coluna selecionada ---}
  grid.Tag := coluna;
  {--- end / guarda coluna ---}
  {--- alterando o estilo do titulo para negrito ---}
  grid.Columns[grid.Tag].Title.Font.Style := [fsBold];
  {--- end / alterando estilo ---}
end;


Function Fnc_MudaCursorColunaDbgrid(grid:TDBGrid):TDBGrid;
var
  pt: TGridcoord;
  X, Y: Integer;
begin
  pt:= grid.MouseCoord(x, y);
  if pt.y = 0 then
    grid.Cursor := crHandPoint
    else
    grid.Cursor := crDefault;
end;


Function Fnc_MesExtenso( Mes:Word ) : string;
  const meses : array[0..11] of PChar = ('Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro','Outubro', 'Novembro', 'Dezembro');
begin
  result := meses[mes-1];
End;


Function Fnc_GetFileList(const Path: string): TStringList;
var
    I: Integer;
    SearchRec: TSearchRec;
begin
 Result := TStringList.Create;
 try
   I := FindFirst(Path, 0, SearchRec);
   while I = 0 do
   begin
     Result.Add(SearchRec.Name);
     I := FindNext(SearchRec);
   end;
 except
   Result.Free;
   raise;
 end;
end;


procedure Fnc_VerificaSeFormularioAtivo(formCaption: string ;formPrincipal:TForm);
var
    x: integer;
begin
  janelaAberta := false;
  for x:=0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[x].Visible then
    begin
      if Screen.Forms[x].Name <> formPrincipal.Name then
      begin
        if (Screen.Forms[x].Caption = formCaption) then
        janelaAberta := true;
      end;
    end;
  end;
end;


procedure OrdenarGrids(oldColumn:Tcolumn);
var
    Indice: string;
    FlagDesc: Boolean;
begin

with (OldColumn.Field.DataSet as TclientDataSet) do 
  begin 
    //Random para mudar o nome do indice, se colocar o indice fixo não funciona 
    Indice := 'Indice' + IntToStr(Random(9999)); 
    // Verifica se o campo anterior estáva em modo Ascendente ou Descendente 
    FlagDesc := (IndexDefs.Count > 0) and (ixDescending in IndexDefs[0].Options); 
   // Se a coluna do dbgrid força a Ascendente 
    if (IndexDefs.Count > 0) and (IndexDefs[0].Fields <> OldColumn.FieldName) then 
      FlagDesc := True; 
    IndexDefs.Clear; // Limpa o indice anterior 
    case FlagDesc of 
      True: IndexDefs.Add(Indice,OldColumn.FieldName, []); 
      False: IndexDefs.Add(Indice,OldColumn.FieldName, [ixDescending]); 
    end; 
    IndexName := Indice; 
    end; //fim do with 
end;



function Fnc_MsgSalvar(campo1:String;campo2:String;campo3:String;campo4:String):String;
begin
  if (campo1 <> '') or (campo2 <> '') or (campo3 <> '') or (campo4 <> '') then
    Result := 'salvar'
  else
    Result := '';
end;


procedure Fnc_ConfigImpressao(report:TRLReport);
begin
(*
  DMConfig.cdsDadosConfigImpressao.Close;
  DMConfig.qryDadosConfigImpressao.ParamByName('ID').AsInteger := 1;
  DMConfig.cdsDadosConfigImpressao.Open;
  //Configuração do papel
  with report.PageSetup do
  begin
    PaperHeight := DMConfig.cdsDadosConfigImpressao.FindField('PAPERHEIGHT').AsInteger;
    PaperWidth  := DMConfig.cdsDadosConfigImpressao.FindField('PAPERWIDTH').AsInteger;
    //Orientation := poLandscape;//poPortrait
  end;
  //configuração de margem
  with report.Margins do
  begin
    BottomMargin := DMConfig.cdsDadosConfigImpressao.FindField('BOTTOMMARGIN').AsInteger;
    LeftMargin   := DMConfig.cdsDadosConfigImpressao.FindField('LEFTMARGIN').AsInteger;
    RightMargin  := DMConfig.cdsDadosConfigImpressao.FindField('RIGHTMARGIN').AsInteger;
    TopMargin    := DMConfig.cdsDadosConfigImpressao.FindField('TOPMARGIN').AsInteger;
  end;
  DMConfig.cdsDadosConfigImpressao.Close;
*)
end;



procedure DataInicialDataFinal(d1, d2:TDateTimePicker);
var
    dia,mes,ano,dia1,mes1,ano1: string;
    date1,date2: Tdatetime;
begin
  dia:= formatdatetime('1',date);
  mes:= formatdatetime('mm',date);
  ano:= formatdatetime('yyyy',date);

  dia1:= formatdatetime('dd',date);
  mes1:= formatdatetime('mm',date);
  ano1:= formatdatetime('yyyy',date);

  date1:= strtodate(dia+'/'+mes+'/'+ano);
  date2:= strtodate(dia1+'/'+mes1+'/'+ano1);

  d1.Date:= date1;
  d2.Date:= date2;
end;



procedure OrdenarGris(oldColumn:Tcolumn);
var
    Indice: string;
    FlagDesc: Boolean;
begin

with (OldColumn.Field.DataSet as TclientDataSet) do
  begin
    //Random para mudar o nome do indice, se colocar o indice fixo não funciona
    Indice := 'Indice' + IntToStr(Random(9999));
    // Verifica se o campo anterior estáva em modo Ascendente ou Descendente
    FlagDesc := (IndexDefs.Count > 0) and (ixDescending in IndexDefs[0].Options);
   // Se a coluna do dbgrid força a Ascendente
    if (IndexDefs.Count > 0) and (IndexDefs[0].Fields <> OldColumn.FieldName) then
      FlagDesc := True;
    IndexDefs.Clear; // Limpa o indice anterior
    case FlagDesc of
      True: IndexDefs.Add(Indice,OldColumn.FieldName, []);
      False: IndexDefs.Add(Indice,OldColumn.FieldName, [ixDescending]);
    end;
    IndexName := Indice;
    end; //fim do with
end;

function AppVersion(AplicationName:String):String;
var
  Hdl                   : THandle;
  BufferSize, Len       : Integer;
  Buffer                : PChar;
  LoCharSet, HiCharSet  : Word;
  Translate,  Retorno   : Pointer;
  StrAux                : PChar;
  StrFileInfo           : String;
begin
   StrAux := PChar('');
   BufferSize := GetFileVersionInfoSize(PChar(AplicationName), Hdl);
   if BufferSize <> 0 then
   begin
      GetMem(Buffer, Succ(BufferSize));
      if GetFileVersionInfo(PChar(AplicationName), 0, BufferSize,Buffer) then
        if VerQueryValue(Buffer, '\VarFileInfo\Translation', Translate, UINT(Len)) then
        begin
          LoCharSet := LoWord(Longint(Translate^));
          HiCharSet := HiWord(Longint(Translate^));
          StrFileInfo := Format('\StringFileInfo\0%x0%x\%s',[LoCharSet, HiCharSet, 'FileVersion']);
          if VerQueryValue(Buffer,PChar(StrFileInfo), Retorno,UINT(Len)) and (PChar(Retorno) <> EmptyStr) then
            StrAux := PChar(Retorno);
        end;
   end;
   Result := StrAux;
end;


procedure NumericalKey(var Value:Char);
begin
  if not(Value in ['0'..'9', //numeric,
                   #8,      //backspace
                   #13,     //enter
                   #44,     //virgula
                   #27,     //Escape
                   #3,      //crtl+c
                   #22,     //crtl+v
                   #24,     //ctrl+x
                   #26      //ctrl+z
                   ]) then
    Value := #0;
end;


function PercentKey(Value:String):String;
begin
  if not(Value=EmptyStr) then
    if StrToInt(Value)>100 then
      Value:='100';
  Result:=Value;
end;



end.
