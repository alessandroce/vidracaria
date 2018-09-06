unit uFormadiantamentosPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, Menus, ActnList, ImgList, ComCtrls, DBCtrls, StdCtrls,
  Mask, ExtCtrls, Grids, DBGrids, Buttons, DB, DateUtils;

type
  TFormAdiantamentosPedido = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StatusBar1: TStatusBar;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label13: TLabel;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Gravar: TAction;
    Act_Btn_Inserir: TAction;
    Act_Btn_Alterar: TAction;
    Act_Btn_Excluir: TAction;
    Act_Btn_Imprimir: TAction;
    Act_Btn_Sair: TAction;
    Act_Btn_Novo: TAction;
    Act_Btn_Cancelar: TAction;
    Act_Btn_Localizar: TAction;
    bt_BuscaBanco: TAction;
    PopupMenu2: TPopupMenu;
    PopupMenu1: TPopupMenu;
    ApplicationEvents1: TApplicationEvents;
    DBLookupComboBox1: TDBLookupComboBox;
    bt_Alterar: TAction;
    Alterar1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_MostraDadosGrid();
  end;

var
  FormAdiantamentosPedido: TFormAdiantamentosPedido;

implementation

uses uDMAdiantamentosPedido, uFormPedido, UDMPedido;

{$R *.dfm}

procedure TFormAdiantamentosPedido.Fnc_MostraDadosGrid;
begin
  DMAdiantamentosPedido.cdsViewAdiantamentosPedido.Close;
  DMAdiantamentosPedido.qryViewAdiantamentosPedido.ParamByName('ID').AsInteger := StrToInt(Label3.Caption);
  DMAdiantamentosPedido.cdsViewAdiantamentosPedido.Open;
end;

procedure TFormAdiantamentosPedido.FormShow(Sender: TObject);
var
    item: TPopupMenu;
    i, i_parcelas : integer;
    var_ValorTotal, var_Parcelas : Double;
begin
//  inherited;
  DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.Close;
  {--- numero do orçamento/pedido ---}
  Label3.Caption := FormPedido.Label8.Caption;
  Label4.Caption := FormPedido.ComboBox1.Text;
  Label14.Caption := '0 dias';
  {--- grava pagamentos ---}
  Label13.Caption := FormatFloat('0.00',DMPedido.cdsViewPedidoItens_SomaSOMA.AsFloat);
  var_ValorTotal := StrToFloat(Label13.Caption);
  {--- ---}
  Fnc_MostraDadosGrid();
  DateTimePicker1.Date := DMAdiantamentosPedido.cdsViewAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO.AsDateTime;
  Label2.Caption := 'Pedido';
end;

procedure TFormAdiantamentosPedido.Act_Btn_AlterarExecute(Sender: TObject);
begin
  Label14.Caption := '0 dias';
  DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Bancos.Open;
  DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.Close;
  DMAdiantamentosPedido.qryDadosAdiantamentosPedido.ParamByName('ID').AsInteger    := DMAdiantamentosPedido.cdsViewAdiantamentosPedido.FindField('PED_ID').AsInteger;
  DMAdiantamentosPedido.qryDadosAdiantamentosPedido.ParamByName('SEQUE').AsInteger := DMAdiantamentosPedido.cdsViewAdiantamentosPedido.FindField('ADIANTPED_SEQUE').AsInteger;
  DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.Open;
  if DMAdiantamentosPedido.cdsViewAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO.AsDateTime = 0 then
    DateTimePicker1.Date := Date
  else
    DateTimePicker1.Date := DMAdiantamentosPedido.cdsViewAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO.AsDateTime;
  {--- atualiza RadioGroup de Condição e Espécie ---}
  if DMAdiantamentosPedido.cdsViewAdiantamentosPedidoADIANTPED_ESPECIE.AsString = 'Dinheiro' then
  begin
    RadioGroup2.ItemIndex := 0;
    DBLookupComboBox1.Enabled := false;
    DBEdit6.ReadOnly := true;  //Enabled := false;
    DBEdit3.ReadOnly := true;  //Enabled := false;
    //DateTimePicker1.Enabled := false;
  end
  else if DMAdiantamentosPedido.cdsViewAdiantamentosPedidoADIANTPED_ESPECIE.AsString = 'Cheque' then
  begin
    RadioGroup2.ItemIndex := 1;
    DBLookupComboBox1.Enabled := true;
    DBEdit3.ReadOnly := false;  //  DBEdit6.Enabled := true;
     DBEdit6.ReadOnly := false;  //  DBEdit3.Enabled := true;
    //DateTimePicker1.Enabled := true;
  end;

  if DMAdiantamentosPedido.cdsViewAdiantamentosPedidoADIANTPED_CONDICAO.AsString = 'À Vista' then
  RadioGroup1.ItemIndex := 0
  else if DMAdiantamentosPedido.cdsViewAdiantamentosPedidoADIANTPED_CONDICAO.AsString = 'À Prazo' then
  RadioGroup1.ItemIndex := 1;
  {--- end / atualiza RadioGroup ---}
  DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.Edit;
  GroupBox2.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
  //DateTimePicker1.Date := Date;
end;

procedure TFormAdiantamentosPedido.Act_Btn_GravarExecute(Sender: TObject);
var
      v_Especie, v_Condicao : String;
begin
  if DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.State in [dsEdit] then
  begin
    if MessageBox(Application.Handle,'Deseja salvar as alterações? ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      //espécie
      if RadioGroup2.ItemIndex = 0 then
      v_Especie := 'D'
      else if RadioGroup2.ItemIndex = 1 then
      v_Especie := 'C';
      //condicao
      if RadioGroup1.ItemIndex = 0 then
      v_Condicao := 'V'
      else if RadioGroup1.ItemIndex = 1 then
      v_Condicao := 'P';
      DMAdiantamentosPedido.cdsDadosAdiantamentosPedidoADIANTPED_DATA_APRESENTACAO.AsDateTime := DateTimePicker1.Date;
      DMAdiantamentosPedido.cdsDadosAdiantamentosPedidoADIANTPED_ESPECIE.AsString  := v_Especie;
      DMAdiantamentosPedido.cdsDadosAdiantamentosPedidoADIANTPED_CONDICAO.AsString := v_Condicao;
      DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.ApplyUpdates(-1);
      DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.Close;
    end;
  end
  else
  begin
    MessageBox(Application.Handle,'Selecione uma parcela para ser alterada! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
  Fnc_MostraDadosGrid();
end;

procedure TFormAdiantamentosPedido.Act_Btn_CancelarExecute(
  Sender: TObject);
begin
  DMAdiantamentosPedido.cdsDadosAdiantamentosPedido.Close;
  DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Bancos.Close;
  Fnc_MostraDadosGrid();
  GroupBox2.Caption := ' Lista de Adiantamentos ';
end;

procedure TFormAdiantamentosPedido.Act_Btn_SairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormAdiantamentosPedido.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then
  RadioGroup1.ItemIndex := 0;

  if RadioGroup2.ItemIndex = 0 then
  begin
    //DateTimePicker1.Enabled := false;
    DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Bancos.Close;
    DBLookupComboBox1.Enabled := false;
    DBEdit3.ReadOnly := true;
    DBEdit6.ReadOnly := true;
  end
  else
  begin
    if RadioGroup2.ItemIndex = 1 then
    begin
      //DateTimePicker1.Enabled := true;
      DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Bancos.Open;
      DBLookupComboBox1.Enabled := true;
      DBEdit3.ReadOnly := false;
      DBEdit6.ReadOnly := false;
    end;
  end;
end;

procedure TFormAdiantamentosPedido.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
  RadioGroup2.ItemIndex := 1;

  if RadioGroup2.ItemIndex = 1 then
  begin
    //DateTimePicker1.Enabled := true;
    DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Bancos.Open;
    DBEdit3.ReadOnly := false;
    DBEdit6.ReadOnly := false;
    RadioGroup2.ItemIndex := 1;
  end;


  if RadioGroup2.ItemIndex = 0 then
  begin
    //DateTimePicker1.Enabled := false;
    DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Bancos.Close;
    DBEdit3.ReadOnly := true;
    DBEdit6.ReadOnly := true;
  end;
end;

procedure TFormAdiantamentosPedido.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.DroppedDown = false then
    keybd_event(39,0,0,0);
end;

procedure TFormAdiantamentosPedido.bt_AlterarExecute(Sender: TObject);
begin
  Act_Btn_Alterar.Execute;
end;

procedure TFormAdiantamentosPedido.DateTimePicker1Exit(Sender: TObject);
begin
  if DateTimePicker1.Date < Date then
  begin
    MessageBox(Application.Handle,'Data informada é   menor que data atual!', 'Informação', MB_ICONINFORMATION + MB_OK);
    DateTimePicker1.SetFocus;
  end
  else
    Label14.Caption := inttostr(DaysBetween(Date, DateTimePicker1.date))+ ' dias';
end;

end.
