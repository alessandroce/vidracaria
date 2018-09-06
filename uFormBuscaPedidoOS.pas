unit uFormBuscaPedidoOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, AppEvnts, ActnList, ImgList, Grids,
  DBGrids, ComCtrls;

type
  TFormBuscaPedidoOS = class(TForm)
    lbMensagem: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    sbBuscaMensalista: TStatusBar;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ImageList1: TImageList;
    ActionList1: TActionList;
    ApplicationEvents1: TApplicationEvents;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    bt_VerPedido: TAction;
    BitBtn2: TBitBtn;
    bt_Fechar: TAction;
    bt_Selecionar: TAction;
    VerPedido1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_FecharExecute(Sender: TObject);
    procedure bt_SelecionarExecute(Sender: TObject);
    procedure bt_VerPedidoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Fnc_AtualizaBuscaPedidoOS(nome,id:String);
  end;

var
  FormBuscaPedidoOS: TFormBuscaPedidoOS;

implementation

uses uDMOrdemServico, uFormOrdemServico;

{$R *.dfm}

{ TFormBuscaPedidoOS }

procedure TFormBuscaPedidoOS.Fnc_AtualizaBuscaPedidoOS(nome,id:String);
begin
  if id = '' then
  id := '0';
  DMOrdemServico.cdsViewOS_BuscaPedido.Close;
  DMOrdemServico.qryViewOS_BuscaPedido.ParamByName('ID').AsInteger := StrToInt(id);
  DMOrdemServico.qryViewOS_BuscaPedido.ParamByName('ITEM').AsString := '%'+nome+'%';
  DMOrdemServico.cdsViewOS_BuscaPedido.Open;
  if DMOrdemServico.cdsViewOS_BuscaPedido.RecordCount > 0 then
    lbMensagem.Visible := false
  else
    lbMensagem.Visible := true;
end;

procedure TFormBuscaPedidoOS.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  Fnc_AtualizaBuscaPedidoOS(Edit1.Text,FormOrdemServico.Edit3.Text);
end;

procedure TFormBuscaPedidoOS.Edit1Change(Sender: TObject);
begin
Fnc_AtualizaBuscaPedidoOS(Edit1.Text,FormOrdemServico.Edit3.Text);
end;

procedure TFormBuscaPedidoOS.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (GdSelected in State) then
  begin
    Dbgrid1.Canvas.Brush.Color := clGradientInactiveCaption;

    if (DMOrdemServico.cdsViewOS_BuscaPedidoMANUT_EFETUADA.AsBoolean = false) and
       (DMOrdemServico.cdsViewOS_BuscaPedidoPED_DATA_MANUT.AsDateTime <= Date) then
    DBGrid1.Canvas.Font.Color:= clRed
    else
    DBGrid1.Canvas.Font.Color  := clBlack;
  end
  else
  begin

    if (DMOrdemServico.cdsViewOS_BuscaPedidoMANUT_EFETUADA.AsBoolean = false) and
       (DMOrdemServico.cdsViewOS_BuscaPedidoPED_DATA_MANUT.AsDateTime <= Date) then
    DBGrid1.Canvas.Font.Color:= clRed
    else
    DBGrid1.Canvas.Font.Color := clDefault;

  end;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormBuscaPedidoOS.bt_FecharExecute(Sender: TObject);
begin
  FormOrdemServico.var_selecionado := '';
  Self.Close;
end;

procedure TFormBuscaPedidoOS.bt_SelecionarExecute(Sender: TObject);
begin
  if DMOrdemServico.cdsViewOS_BuscaPedido.RecordCount > 0 then
  FormOrdemServico.var_selecionado := 'ok';
  Self.Close;
end;

procedure TFormBuscaPedidoOS.bt_VerPedidoExecute(Sender: TObject);
begin
  FormOrdemServico.Fnc_VisualizarPedido(DMOrdemServico.cdsViewOS_BuscaPedido.FindField('PED_ID').AsInteger);
end;

end.
