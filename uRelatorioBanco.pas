unit uRelatorioBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoRel, StdCtrls, Grids, DBGrids, ActnList, ImgList,
  ComCtrls, Buttons, ExtCtrls, AppEvnts;

type
  TFormRelatorioBanco = class(TFormPadraoRel)
    dbgRelatorioProdutos: TDBGrid;
    lblRegistros: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure Act_Btn_FecharExecute(Sender: TObject);
    procedure act_Btn_LocalizarExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBanco: TFormRelatorioBanco;

implementation

uses uDMRelatorioBanco, uRelatorioBancoPrint;

{$R *.dfm}

procedure TFormRelatorioBanco.Edit1Change(Sender: TObject);
begin
//  inherited;
     btLocalizar.Click();
end;

procedure TFormRelatorioBanco.FormActivate(Sender: TObject);
begin
//  inherited;
    btLocalizar.Click();
end;

procedure TFormRelatorioBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
    DMRelatorioBanco.cdsViewRelatorioBancos.Close;
end;

procedure TFormRelatorioBanco.Act_Btn_ImprimirExecute(Sender: TObject);
begin
//  inherited;
  Try
    Application.CreateForm(TFormRelatorioBancoPrint, FormRelatorioBancoPrint);
    FormRelatorioBancoPrint.RelatorioBanco.Preview;
  Finally
    FormRelatorioBancoPrint.Free;
  End;
end;

procedure TFormRelatorioBanco.Act_Btn_FecharExecute(Sender: TObject);
begin
//  inherited;
  Self.Close;
end;

procedure TFormRelatorioBanco.act_Btn_LocalizarExecute(Sender: TObject);
begin
//  inherited;
  DMRelatorioBanco.cdsViewRelatorioBancos.Close;
  DMRelatorioBanco.qryViewRelatorioBancos.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  DMRelatorioBanco.cdsViewRelatorioBancos.Open;
  lblRegistros.Caption := inttostr(DMRelatorioBanco.cdsViewRelatorioBancos.RecordCount) + ' registro(s) encontrado(s)';

end;

procedure TFormRelatorioBanco.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
    var i: SmallInt;
begin
//  inherited;
  if (ActiveControl is TDBGrid) then
  begin
    with TDBGrid(ActiveControl) do
    begin
      if Msg.message = WM_MOUSEWHEEL then
      begin
        Msg.message := WM_KEYDOWN;
        Msg.lParam := 0;
        i := HiWord(Msg.wParam);
        if i > 0 then
          Msg.wParam := VK_UP
        else
          Msg.wParam := VK_DOWN;
        Handled := False;
      end;
    end;
  end;
end;

end.
