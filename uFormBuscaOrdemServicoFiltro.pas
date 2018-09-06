unit uFormBuscaOrdemServicoFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TFormBuscaOrdemServico_Filtro = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker2Exit(Sender: TObject);
    procedure DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }

  public
    { Public declarations }
    texto : string;
    con_filtro : String;
    datade, dataate : string;
  end;

var
  FormBuscaOrdemServico_Filtro: TFormBuscaOrdemServico_Filtro;
implementation

uses uFormBuscaOrdemServico, uBibliotecaFuncoes, DB;

{$R *.dfm}

procedure TFormBuscaOrdemServico_Filtro.FormShow(Sender: TObject);
begin
  FormBuscaOrdemServico := FormBuscaOrdemServico;
  if FormBuscaOrdemServico.con_numero <> '' then
  con_filtro := con_filtro+'Número com '+FormBuscaOrdemServico.con_numero+#13;

  if FormBuscaOrdemServico.con_equipamento <> '' then
  con_filtro := con_filtro+'Descrição Serviço com '+FormBuscaOrdemServico.con_equipamento+#13;

  if FormBuscaOrdemServico.con_problemareclamado <> '' then
  con_filtro := con_filtro+'Problema reclamado com '+FormBuscaOrdemServico.con_problemareclamado+#13;

  //valores R$
  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 4) then
  begin
    //ajusta componentes na tela
    Edit2.Visible := true;
    Edit3.Visible := true;
    Label3.Visible := true;
    Edit2.Top := 39;
    Edit3.Top := 39;
    Label3.Top := 45;
    //textos
    Edit1.Visible := false;
    //datas
    DateTimePicker1.Visible := false;
    DateTimePicker2.Visible := false;
    Label2.Visible := false;
    //recupera dados para componentes na tela
    Edit2.Text := FormatFloat('0.00',FormBuscaOrdemServico.DBGrid1.SelectedField.AsFloat);
    Edit3.Text := FormatFloat('0.00',FormBuscaOrdemServico.DBGrid1.SelectedField.AsFloat);
    if FormBuscaOrdemServico.DBGrid1.SelectedField.AsFloat = 0 then
    begin
      Edit2.Text := '0';
      Edit3.Text := '0';
    end;
  end;


  //datas
  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 5) or
     (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 6) then
  begin
    //ajusta componentes na tela
    //datas
    DateTimePicker1.Visible := true;
    DateTimePicker2.Visible := true;
    Label2.Visible := true;
    DateTimePicker1.Top := 39;
    DateTimePicker2.Top := 39;
    Label2.Top := 45;
    //textos
    Edit1.Visible := false;
    //valores
    Edit2.Visible   := false;
    Edit3.Visible   := false;
    Label3.Visible := false;

    //recupera dados para componentes na tela
    DateTimePicker1.Date := FormBuscaOrdemServico.DBGrid1.SelectedField.AsDateTime;
    DateTimePicker2.Date := FormBuscaOrdemServico.DBGrid1.SelectedField.AsDateTime;
    if FormBuscaOrdemServico.DBGrid1.SelectedField.AsString = '' then
    begin
      DateTimePicker1.Date := date;
      DateTimePicker2.Date := date;
    end;
  end;



  if FormBuscaOrdemServico.con_cliente <> '' then
  con_filtro := con_filtro+'Cliente com '+FormBuscaOrdemServico.con_cliente+#13;

  if FormBuscaOrdemServico.con_atendimento <> '' then
  con_filtro := con_filtro+'Atendimento com '+FormBuscaOrdemServico.con_atendimento+#13;

  if FormBuscaOrdemServico.con_situacao <> '' then
  con_filtro := con_filtro+'Situação com '+FormBuscaOrdemServico.con_situacao+#13;

  if FormBuscaOrdemServico.con_tecnico <> '' then
  con_filtro := con_filtro+'Vendedor com '+FormBuscaOrdemServico.con_tecnico+#13;


  Memo1.Lines.Text := 'Filtros:'+#13+con_filtro;
  Edit1.Text := FormBuscaOrdemServico.DBGrid1.SelectedField.AsString;
  Label1.Caption := 'Filtrar '+ FormBuscaOrdemServico.var_tituloColuna + ' com :';

end;

procedure TFormBuscaOrdemServico_Filtro.BitBtn1Click(Sender: TObject);
begin
  texto := Edit1.Text;
  //recupera o conteudo do campo 'Filtro com' e que foi selecionado na grid
  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 0) then
  FormBuscaOrdemServico.con_numero := Edit1.Text;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 1) then
  FormBuscaOrdemServico.con_cliente := Edit1.Text;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 2) then
  FormBuscaOrdemServico.con_equipamento := Edit1.Text;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 3) then
  FormBuscaOrdemServico.con_problemareclamado := Edit1.Text;

  //valores
  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 4) then
  begin
    FormBuscaOrdemServico.con_totalos := Edit2.Text;
    FormBuscaOrdemServico.con_totalosde := Edit2.Text;
    FormBuscaOrdemServico.con_totalosate := Edit3.Text;
  end;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 5) then
  begin
      FormBuscaOrdemServico.con_dataent    := DateToStr(DateTimePicker1.Date);
      FormBuscaOrdemServico.con_dataentde  := DateToStr(DateTimePicker1.Date);
      FormBuscaOrdemServico.con_dataentate := DateToStr(DateTimePicker2.Date);
  end;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 6) then
  begin
      FormBuscaOrdemServico.con_datasaida    := DateToStr(DateTimePicker1.Date);
      FormBuscaOrdemServico.con_datasaidade  := DateToStr(DateTimePicker1.Date);
      FormBuscaOrdemServico.con_datasaidaate := DateToStr(DateTimePicker2.Date);
  end;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 7) then
  FormBuscaOrdemServico.con_atendimento := Edit1.Text;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 8) then
  FormBuscaOrdemServico.con_situacao := Edit1.Text;

  if (FormBuscaOrdemServico.DBGrid1.SelectedIndex = 9) then
  FormBuscaOrdemServico.con_tecnico := Edit1.Text;  
  Self.Close;
end;

procedure TFormBuscaOrdemServico_Filtro.BitBtn2Click(Sender: TObject);
begin
  BitBtn3.Click;
  FormBuscaOrdemServico.cancela_filtro := 'ok';
  Self.Close;
end;

procedure TFormBuscaOrdemServico_Filtro.BitBtn3Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Text := 'Filtros:';
  con_filtro := '';
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  FormBuscaOrdemServico.con_numero := '';
  FormBuscaOrdemServico.con_equipamento := '';
  FormBuscaOrdemServico.con_problemareclamado := '';
  FormBuscaOrdemServico.con_totalservicos := '';
  FormBuscaOrdemServico.con_totalservicosde := '';
  FormBuscaOrdemServico.con_totalservicosate := '';
  FormBuscaOrdemServico.con_totalpecas := '';
  FormBuscaOrdemServico.con_totalpecasde := '';
  FormBuscaOrdemServico.con_totalpecasate := '';
  FormBuscaOrdemServico.con_totalos := '';
  FormBuscaOrdemServico.con_totalosde := '';
  FormBuscaOrdemServico.con_totalosate := '';
  FormBuscaOrdemServico.con_dataent := '';
  FormBuscaOrdemServico.con_dataentde := '';
  FormBuscaOrdemServico.con_dataentate := '';
  FormBuscaOrdemServico.con_datasaida := '';
  FormBuscaOrdemServico.con_datasaidade := '';
  FormBuscaOrdemServico.con_datasaidaate := '';
  FormBuscaOrdemServico.con_cliente := '';
  FormBuscaOrdemServico.con_atendimento := '';
  FormBuscaOrdemServico.con_situacao := '';
  FormBuscaOrdemServico.con_tecnico := '';
  FormBuscaOrdemServico.Label9.Caption := '';
  FormBuscaOrdemServico.var_tituloColuna := '';
end;



procedure TFormBuscaOrdemServico_Filtro.DateTimePicker1Change(
  Sender: TObject);
begin
if DateTimePicker1.DroppedDown = false then
keybd_event(39,0,0,0);
end;

procedure TFormBuscaOrdemServico_Filtro.DateTimePicker1Exit(
  Sender: TObject);
begin
  if DateTimePicker2.Date < DateTimePicker1.Date then
  begin
    MessageBox(Application.Handle,' Data inicial maior que data final! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    DataInicialDataFinal(DateTimePicker1,DateTimePicker2);
  end;
end;

procedure TFormBuscaOrdemServico_Filtro.DateTimePicker1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DateTimePicker2.SetFocus;
end;

procedure TFormBuscaOrdemServico_Filtro.DateTimePicker2Change(
  Sender: TObject);
begin
if DateTimePicker2.DroppedDown = false then
keybd_event(39,0,0,0);
end;

procedure TFormBuscaOrdemServico_Filtro.DateTimePicker2Exit(
  Sender: TObject);
begin
  if DateTimePicker2.Date < DateTimePicker1.Date then
  begin
    MessageBox(Application.Handle,' Data inicial maior que data final! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    DataInicialDataFinal(DateTimePicker1,DateTimePicker2);
  end;
end;

procedure TFormBuscaOrdemServico_Filtro.DateTimePicker2KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  BitBtn1.SetFocus;
end;

procedure TFormBuscaOrdemServico_Filtro.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  BitBtn1.SetFocus;
end;

end.
