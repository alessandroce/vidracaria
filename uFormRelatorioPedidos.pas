unit uFormRelatorioPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnList, ImgList, Grids, DBGrids, StdCtrls, Buttons,
  AppEvnts;

type
  TFormRelatorioPedidos = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    ImageList2: TImageList;
    ActionList2: TActionList;
    bt_Visualizar: TAction;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    bt_Fechar: TAction;
    bt_Localizar: TAction;
    ApplicationEvents1: TApplicationEvents;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_VisualizarExecute(Sender: TObject);
    procedure bt_FecharExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure bt_LocalizarExecute(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DataInicialDataFinal();
  end;

var
  FormRelatorioPedidos: TFormRelatorioPedidos;

implementation

uses uDMRelatorioPedido, uBibliotecaFuncoes, uFormPedidoPrint,
  uFormRelatorioPedidosPrint;

{$R *.dfm}

procedure TFormRelatorioPedidos.DataInicialDataFinal;
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

procedure TFormRelatorioPedidos.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFormRelatorioPedidos.DateTimePicker2Change(Sender: TObject);
begin
  if DateTimePicker2.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFormRelatorioPedidos.FormShow(Sender: TObject);
begin
  DataInicialDataFinal();
  bt_Localizar.Execute;
end;

procedure TFormRelatorioPedidos.bt_VisualizarExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRelatorioPedidosPrint, FormRelatorioPedidosPrint);
    FormRelatorioPedidosPrint.RLReport1.Preview;
  Finally
    FormRelatorioPedidosPrint.Free
  end;
end;

procedure TFormRelatorioPedidos.bt_FecharExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormRelatorioPedidos.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormRelatorioPedidos.bt_LocalizarExecute(Sender: TObject);
var
    strSQL : string;
    soma : Double;
begin
  strSQL := 'SELECT * '+
            'FROM VIEW_PEDIDO '+
            'WHERE 1 = 1 '+
            'AND VIEW_PEDIDO.ped_data_pedido BETWEEN :DATADE AND :DATAATE ';

  DMRelatorioPedido.cdsViewRelatorioPedido_Busca.Close;
  with DMRelatorioPedido.qryViewRelatorioPedido_Busca do
  begin
    SQL.Clear;
    SQL.Add(strSQL);
    ParamByName('DATADE').AsDate := DateTimePicker1.Date;
    ParamByName('DATAATE').AsDate := DateTimePicker2.Date;

  end;
  DMRelatorioPedido.cdsViewRelatorioPedido_Busca.Open;
  while not DMRelatorioPedido.cdsViewRelatorioPedido_Busca.Eof do
  begin
    soma := soma + DMRelatorioPedido.cdsViewRelatorioPedido_BuscaPED_VALOR_TOTAL.AsFloat;
    DMRelatorioPedido.cdsViewRelatorioPedido_Busca.Next;
  end;
  Label6.Caption := FormatFloat('0.00',soma);
  DMRelatorioPedido.cdsViewRelatorioPedido_Busca.First;
end;

procedure TFormRelatorioPedidos.DBGrid1MouseMove(Sender: TObject;
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

procedure TFormRelatorioPedidos.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGrids(Column);
end;

end.
