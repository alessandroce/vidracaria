unit uFormRelatorioOrcamentos_Revisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TFormRelatorioOrcamentos_Revisao = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    DBCheckBox1: TDBCheckBox;
    DateTimePicker1: TDateTimePicker;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrcamentos_Revisao: TFormRelatorioOrcamentos_Revisao;

implementation

uses uFormRelatorioOrcamentos, uDMRelatorioOrcamento, DB,
  uDMOrcamentoPedido, DateUtils, uCadOrcamentoPedido,
  uDMOrcamentoPedidoRevisao;

{$R *.dfm}

procedure TFormRelatorioOrcamentos_Revisao.BitBtn2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormRelatorioOrcamentos_Revisao.BitBtn1Click(Sender: TObject);
var
    datarevisao : TDateTime;
    diasrevisao : Integer;
begin
  DMOrcamentoPedidoRevisao.cdsDadosOrcPedidoRevisaoORCPEDREV_PROX_REVISAO.AsDateTime := DateTimePicker1.Date;
  if DMOrcamentoPedidoRevisao.cdsDadosOrcPedidoRevisao.State in [DsInsert] then
  DMOrcamentoPedidoRevisao.cdsDadosOrcPedidoRevisaoORCPEDREV_ORCPED_ID.AsInteger := StrToInt(FormCadOrcamentoPedido.lblNumeroOrcPedido.Caption);
  DMOrcamentoPedidoRevisao.cdsDadosOrcPedidoRevisao.ApplyUpdates(-1);
  Self.Close;
end;

procedure TFormRelatorioOrcamentos_Revisao.FormShow(Sender: TObject);
var
    ultimarevisao : TDateTime;
begin
  Label2.Caption := FormCadOrcamentoPedido.cbNomeCliente.Text;
  Label4.Caption := FormCadOrcamentoPedido.lblDataOrcPeddido.Caption;

  if (DMOrcamentoPedidoRevisao.cdsViewOrcPedidoRevisao_VerificaRevisao.RecordCount = 0) then
  Label7.Caption := 'NÃO CONSTA'
  else
  Label7.Caption := DateTimeToStr(DMOrcamentoPedidoRevisao.cdsViewOrcPedidoRevisao_VerificaRevisao.FindField('ORCPEDREV_PROX_REVISAO').AsDateTime);

  //edit
  if DMOrcamentoPedidoRevisao.cdsDadosOrcPedidoRevisao.State in [DsEdit] then
  DateTimePicker1.Date := DMOrcamentoPedidoRevisao.cdsViewOrcPedidoRevisao_VerificaRevisao.FindField('ORCPEDREV_PROX_REVISAO').AsDateTime;
  //insert
  if DMOrcamentoPedidoRevisao.cdsDadosOrcPedidoRevisao.State in [DsInsert] then
  DateTimePicker1.Date := Date;



end;

procedure TFormRelatorioOrcamentos_Revisao.DateTimePicker1Change(
  Sender: TObject);
begin
if DateTimePicker1.DroppedDown = false then
keybd_event(39,0,0,0);
end;

end.
