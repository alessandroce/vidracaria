unit uFormAdiantamentos_Edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ComCtrls, DBCtrls, StdCtrls, Mask, ExtCtrls,
  Buttons, DateUtils, DB;

type
  TFormAdiantamento_Edit = class(TForm)
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
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
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Act_Btn_SairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdiantamento_Edit: TFormAdiantamento_Edit;

implementation

uses uDMAdiantamentos, uFormAdiantamentos, DBGrids;

{$R *.dfm}

procedure TFormAdiantamento_Edit.FormActivate(Sender: TObject);
begin
  Label14.Caption := '0 dias';
  DMAdiantamentos.cdsViewAdiantamentos_Bancos.Open;
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  DMAdiantamentos.qryDadosAdiantamentos.ParamByName('ID').AsInteger:= DMAdiantamentos.cdsViewAdiantamentos.FindField('ORCPED_ID').AsInteger;
  DMAdiantamentos.qryDadosAdiantamentos.ParamByName('PARCELA').AsString:= DMAdiantamentos.cdsViewAdiantamentos.FindField('ADIANT_PARCELA_DESCRICAO').AsString;
  DMAdiantamentos.cdsDadosAdiantamentos.Open;

  DateTimePicker1.Date := Date;
  //DateTimePicker1.Date := DMAdiantamentos.cdsViewAdiantamentosADIANT_DATA_APRESENTACAO.AsDateTime;

  {--- atualiza RadioGroup de Condição e Espécie ---}
  if DMAdiantamentos.cdsViewAdiantamentosADIANT_ESPECIE.AsString = 'Dinheiro' then
  RadioGroup2.ItemIndex := 0
  else if DMAdiantamentos.cdsViewAdiantamentosADIANT_ESPECIE.AsString = 'Cheque' then
  RadioGroup2.ItemIndex := 1;

  if DMAdiantamentos.cdsViewAdiantamentosADIANT_CONDICAO.AsString = 'À Vista' then
  RadioGroup1.ItemIndex := 0
  else if DMAdiantamentos.cdsViewAdiantamentosADIANT_CONDICAO.AsString = 'À Prazo' then
  RadioGroup1.ItemIndex := 1;

  {--- end / atualiza RadioGroup ---}
  DMAdiantamentos.cdsDadosAdiantamentos.Edit;
end;

procedure TFormAdiantamento_Edit.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then
  RadioGroup1.ItemIndex := 0;

  if RadioGroup2.ItemIndex = 0 then
  DateTimePicker1.Enabled := false
  else if RadioGroup2.ItemIndex = 1 then
  DateTimePicker1.Enabled := true;
end;

procedure TFormAdiantamento_Edit.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
  RadioGroup2.ItemIndex := 1;
end;

procedure TFormAdiantamento_Edit.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.Date < Date then
  begin
    MessageBox(Application.Handle,'Data inválida!    ', 'Informação', MB_ICONINFORMATION + MB_OK)
  end
  else
  begin
    Label14.Caption := inttostr(DaysBetween(Date, DateTimePicker1.date))+ ' dias';
  end;
end;

procedure TFormAdiantamento_Edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var
      v_Especie, v_Condicao : String;
begin
  if  DMAdiantamentos.cdsDadosAdiantamentos.State in [dsEdit] then
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

    DMAdiantamentos.cdsDadosAdiantamentosADIANT_ORCPED_ID.AsInteger := StrToInt(FormAdiantamentos.Label3.Caption);
    DMAdiantamentos.cdsDadosAdiantamentosADIANT_PARCELA_DESCRICAO.AsString := DMAdiantamentos.cdsViewAdiantamentos.FindField('ADIANT_PARCELA_DESCRICAO').AsString;

    DMAdiantamentos.cdsDadosAdiantamentosADIANT_DATA_APRESENTACAO.AsDateTime := DateTimePicker1.Date;
    DMAdiantamentos.cdsDadosAdiantamentosADIANT_ESPECIE.AsString  := v_Especie;
    DMAdiantamentos.cdsDadosAdiantamentosADIANT_CONDICAO.AsString := v_Condicao;

    DMAdiantamentos.cdsDadosAdiantamentos.ApplyUpdates(-1);
    DMAdiantamentos.cdsDadosAdiantamentos.Close;
  end;
  end;
end;

procedure TFormAdiantamento_Edit.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_Escape then
  Self.Close;
end;

procedure TFormAdiantamento_Edit.Act_Btn_SairExecute(Sender: TObject);
begin
  Self.Close;
end;

end.
