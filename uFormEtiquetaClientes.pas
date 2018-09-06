unit uFormEtiquetaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, Buttons, ComCtrls, Grids, DBGrids, StdCtrls, AppEvnts,
  ImgList, ActnList;

type
  TFormEtiquetaClientes = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    ActionList1: TActionList;
    Btn_Visualizar: TAction;
    Btn_Fechar: TAction;
    Btn_Localizar: TAction;
    ImageList1: TImageList;
    ApplicationEvents1: TApplicationEvents;
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure Btn_LocalizarExecute(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Btn_VisualizarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ComecaCom(pLetra:TSpeedButton);
  end;

var
  FormEtiquetaClientes: TFormEtiquetaClientes;

implementation

uses uDMClientes, uFormEtiquetaClientePrint;

{$R *.dfm}

{ TFormEtiquetaClientes }

procedure TFormEtiquetaClientes.ComecaCom(pLetra: TSpeedButton);
begin

end;

procedure TFormEtiquetaClientes.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
      var i: SmallInt;
begin
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

procedure TFormEtiquetaClientes.Btn_LocalizarExecute(Sender: TObject);
begin
  DMCadClientes.cdsViewBuscaClientes.Close;
  DMCadClientes.qryViewBuscaClientes.ParamByName('CLI_CLIENTE').AsString := '%'+Edit1.Text+'%';
  DMCadClientes.cdsViewBuscaClientes.Open;
end;

procedure TFormEtiquetaClientes.Edit1Change(Sender: TObject);
begin
  Btn_Localizar.Execute;
end;

procedure TFormEtiquetaClientes.Btn_VisualizarExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormEtiquetaClientesPrint, FormEtiquetaClientesPrint);
    FormEtiquetaClientesPrint.RLReport1.Preview;
  Finally
    FormEtiquetaClientesPrint.Free;
  End;
end;

procedure TFormEtiquetaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMCadClientes.cdsViewBuscaClientes.Close;
end;

end.
