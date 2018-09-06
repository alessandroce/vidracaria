unit uRelatorioProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoRel, StdCtrls, Grids, DBGrids, ActnList, ImgList,
  ComCtrls, Buttons, ExtCtrls, AppEvnts;

type
  TFormRelatorioProduto = class(TFormPadraoRel)
    dbgRelatorioProdutos: TDBGrid;
    lblRegistros: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    procedure Edit1Change(Sender: TObject);
    procedure Act_Btn_FecharExecute(Sender: TObject);
    procedure act_Btn_LocalizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProduto: TFormRelatorioProduto;

implementation

uses uDMRelatorioProduto, uRelatorioProdutoPrint;

{$R *.dfm}

procedure TFormRelatorioProduto.Edit1Change(Sender: TObject);
begin
//  inherited;
     btLocalizar.Click();
end;

procedure TFormRelatorioProduto.Act_Btn_FecharExecute(Sender: TObject);
begin
//  inherited;
  Self.Close;
end;

procedure TFormRelatorioProduto.act_Btn_LocalizarExecute(Sender: TObject);
begin
//  inherited;
  DMRelatorioProduto.cdsViewRelatorioProduto.Close;
  DMRelatorioProduto.qryViewRelatorioProduto.ParamByName('DESCRICAO').AsString := '%'+Edit1.Text+'%';
  DMRelatorioProduto.cdsViewRelatorioProduto.Open;
  lblRegistros.Caption := inttostr(DMRelatorioProduto.cdsViewRelatorioProduto.RecordCount) + ' registro(s) encontrado(s)';
end;

procedure TFormRelatorioProduto.FormActivate(Sender: TObject);
begin
//  inherited;
    btLocalizar.Click();
end;

procedure TFormRelatorioProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
  DMRelatorioProduto.cdsViewRelatorioProduto.Close;
end;

procedure TFormRelatorioProduto.Act_Btn_ImprimirExecute(Sender: TObject);
begin
//  inherited;
  Try
    Application.CreateForm(TFormRelatorioProdutoPrint, FormRelatorioProdutoPrint);
    FormRelatorioProdutoPrint.RelatorioProduto.Preview;
  Finally
    FormRelatorioProdutoPrint.Free;
  End;
end;

procedure TFormRelatorioProduto.ApplicationEvents1Message(var Msg: tagMSG;
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
