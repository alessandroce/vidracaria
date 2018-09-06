unit uFormRelatorioItensPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, ActnList, ImgList, Grids, DBGrids, ComCtrls, StdCtrls,
  Buttons, Menus;

type
  TFormRelatorioItensPedido = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    ImageList2: TImageList;
    ActionList2: TActionList;
    bt_Visualizar: TAction;
    bt_Fechar: TAction;
    bt_Localizar: TAction;
    ApplicationEvents1: TApplicationEvents;
    PopupMenu1: TPopupMenu;
    bt_VerPedido: TAction;
    Label1: TLabel;
    Edit1: TEdit;
    VerPedido1: TMenuItem;
    Edit2: TEdit;
    Label2: TLabel;
    procedure bt_LocalizarExecute(Sender: TObject);
    procedure bt_FecharExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
    procedure bt_VerPedidoExecute(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    acaoPedido : String;
    procedure DataInicialDataFinal();
  end;

var
  FormRelatorioItensPedido: TFormRelatorioItensPedido;

implementation

uses uDMRelatorioItensPedido, uFormPedido, uBibliotecaFuncoes;



{$R *.dfm}


procedure TFormRelatorioItensPedido.bt_LocalizarExecute(Sender: TObject);
begin
  DMRelatorioItensPedido.cdsViewRelatorioItensPedido.Close;
  DMRelatorioItensPedido.qryViewRelatorioItensPedido.ParamByName('DATADE').AsDate := DateTimePicker1.Date;
  DMRelatorioItensPedido.qryViewRelatorioItensPedido.ParamByName('DATAATE').AsDate := DateTimePicker2.Date;
  DMRelatorioItensPedido.qryViewRelatorioItensPedido.ParamByName('ITEM').AsString := '%'+Edit1.Text+'%';
  DMRelatorioItensPedido.qryViewRelatorioItensPedido.ParamByName('CLIENTE').AsString := '%'+Edit2.Text+'%';
  DMRelatorioItensPedido.cdsViewRelatorioItensPedido.Open;
end;

procedure TFormRelatorioItensPedido.bt_FecharExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormRelatorioItensPedido.ApplicationEvents1Message(
  var Msg: tagMSG; var Handled: Boolean);
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

procedure TFormRelatorioItensPedido.FormShow(Sender: TObject);
begin
  DataInicialDataFinal();
end;

procedure TFormRelatorioItensPedido.DataInicialDataFinal;
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

  DateTimePicker1.Date:= date1;
  DateTimePicker2.Date:= date2;
end;

procedure TFormRelatorioItensPedido.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFormRelatorioItensPedido.DateTimePicker2Change(Sender: TObject);
begin
  if DateTimePicker2.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFormRelatorioItensPedido.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  DateTimePicker1.SetFocus;
end;

procedure TFormRelatorioItensPedido.DateTimePicker1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DateTimePicker2.SetFocus;
end;

procedure TFormRelatorioItensPedido.DateTimePicker2KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  BitBtn1.SetFocus;
end;

procedure TFormRelatorioItensPedido.bt_VerPedidoExecute(Sender: TObject);
begin
  acaoPedido := 'ALTERAR';
  try
    Application.CreateForm(TFormPedido, FormPedido);
    FormPedido.ShowModal;
  Finally
    FormPedido.Free
  end;
end;

procedure TFormRelatorioItensPedido.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  pt: TGridcoord;
begin
  pt:= DBGrid1.MouseCoord(x, y);
  if pt.y = 0 then
    DBGrid1.Cursor := crHandPoint
  else
    DBGrid1.Cursor := crDefault;
end;

procedure TFormRelatorioItensPedido.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrids(Column);
end;

procedure TFormRelatorioItensPedido.DBGrid1DblClick(Sender: TObject);
begin
  bt_VerPedido.Execute;
end;

end.
