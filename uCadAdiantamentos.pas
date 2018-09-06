unit uCadAdiantamentos;

interface                                       

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, DBCtrls, StdCtrls, Mask, Grids, DBGrids,
  ActnList, ImgList, ToolWin, ComCtrls, Buttons, ExtCtrls, Menus, DB, DateUtils,
  FMTBcd, DBClient, MyClientDataSet, Provider, SqlExpr;

type
  TFormCadAdiantamentos = class(TFormPadraoCad2)
    Label7: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    Edit1: TEdit;
    Label12: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    bt_Bancos: TAction;
    Bevel4: TBevel;
    bt_Incremento: TAction;
    bt_Decremento: TAction;
    DateTimePicker1: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label13: TLabel;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_IncrementoExecute(Sender: TObject);
    procedure bt_DecrementoExecute(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
    procedure Fnc_LocalizarPorNome_Adiantamentos();
    procedure Fnc_AtualizaGrid();
    procedure Fnc_CancelaOperacao();
    procedure Fnc_MostraDadosGrid();
    procedure Fnc_FechaDataSource();
    procedure Fnc_Habilita_ChequeDinheiro(acao:Boolean);
    procedure Fnc_AtualizarData();
  end;

var
  FormCadAdiantamentos: TFormCadAdiantamentos;
  var_SomaParcelas : Double;

implementation

uses uDMAdiantamentos, uCadOrcamentoPedido, uDMOrcamentoPedido;

{$R *.dfm}

{ TFormCadAdiantamentos }

procedure TFormCadAdiantamentos.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
//na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := true;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
    Btn_Localizar.Enabled := true;
    Edit1.ReadOnly        := not(true);
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := true;
    BtnCancela.Enabled := true;
    Btn_Localizar.Enabled := false;
    Edit1.ReadOnly        := not(false);
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
    Btn_Localizar.Enabled := true;
    Edit1.ReadOnly        := not(true);
  end;


end;

procedure TFormCadAdiantamentos.Act_Btn_GravarExecute(Sender: TObject);
var
    var_ESPECIE, var_CONDICAO : string;
begin
//  inherited;
  Fnc_AtualizaGrid();
  if var_SomaParcelas > StrToFloat(Label13.Caption) then
  begin
    MessageBox(Application.Handle,'Soma das parcelas maior que valor total!', 'Informação', MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
    //condição
    if RadioGroup1.ItemIndex = 0 then
    var_CONDICAO := 'V'
    else if RadioGroup1.ItemIndex = 1 then
    var_CONDICAO := 'P';
    //espécie
    if RadioGroup2.ItemIndex = 0 then
    var_ESPECIE := 'D'
    else if RadioGroup2.ItemIndex = 1 then
    var_ESPECIE := 'C';

    DMAdiantamentos.cdsDadosAdiantamentosADIANT_CONDICAO.AsString := var_CONDICAO;
    DMAdiantamentos.cdsDadosAdiantamentosADIANT_ESPECIE.AsString := var_ESPECIE;
    DMAdiantamentos.cdsDadosAdiantamentosADIANT_ORCPED_ID.AsInteger := StrToInt(Label3.Caption);
    DMAdiantamentos.cdsDadosAdiantamentosADIANT_DATA_APRESENTACAO.AsDateTime := DateTimePicker1.Date;
    // grava alteração ou inclusão de registro
    DMAdiantamentos.cdsDadosAdiantamentos.ApplyUpdates(-1);
    DMAdiantamentos.cdsDadosAdiantamentos.Close;
    Edit1.SetFocus;
    Fnc_AtualizaGrid();
    Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
    GroupBox1.Caption := '';
  end;
end;

procedure TFormCadAdiantamentos.Act_Btn_InserirExecute(Sender: TObject);
begin
//  inherited;
   Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadAdiantamentos.Act_Btn_AlterarExecute(Sender: TObject);
begin
//  inherited;
//  Edit1.Clear;
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  {--- antes de Modificar verifica se há registro na grid ---}
  if DMAdiantamentos.cdsViewAdiantamentos.RecordCount > 0 then
  begin
    // informa dados do Cliente para editar
    DMAdiantamentos.qryDadosAdiantamentos.ParamByName('ID').AsInteger := DMAdiantamentos.cdsViewAdiantamentos.FindField('ORCPED_ID').AsInteger;
    DMAdiantamentos.cdsDadosAdiantamentos.Open;
    // verifica se o registro está ativo
    if DMAdiantamentos.cdsDadosAdiantamentosADIANT_ATIVO.AsBoolean = false then
    begin
      if MessageBox(Application.Handle, ' É necessário ativar este registro. Deseja ativá-lo agora? ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        DMAdiantamentos.cdsDadosAdiantamentos.Edit;
        DMAdiantamentos.cdsDadosAdiantamentosADIANT_ATIVO.AsBoolean:= true;
        Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
      end
      else
      begin
        Act_Btn_Cancelar.Execute;
        Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
      end;

    end
    else
    begin
      DMAdiantamentos.cdsDadosAdiantamentos.Edit;
      DMAdiantamentos.cdsViewAdiantamentos_Bancos.Open;
      DateTimePicker1.Date := DMAdiantamentos.cdsViewAdiantamentosADIANT_DATA_APRESENTACAO.AsDateTime;
      DBLookupComboBox1.KeyValue := DMAdiantamentos.cdsViewAdiantamentos_BancosBANC_ID.AsInteger;

      Fnc_AtualizarData();
      if DMAdiantamentos.cdsViewAdiantamentosADIANT_ESPECIE.AsString = 'D' then
      RadioGroup2.ItemIndex := 0
      else
      RadioGroup2.ItemIndex := 1;
      if DMAdiantamentos.cdsViewAdiantamentosADIANT_CONDICAO.AsString = 'V' then
      RadioGroup1.ItemIndex := 0
      else
      RadioGroup1.ItemIndex := 1;
      Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
    end;

  end
  else
  begin
    MessageBox(Application.Handle,' É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
  {--- end ---}
  GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';

end;

procedure TFormCadAdiantamentos.Act_Btn_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  if MessageBox(Application.Handle, '  Deseja Excluir este item?  ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DMAdiantamentos.cdsDadosAdiantamentos.Close;
    DMAdiantamentos.qryDadosAdiantamentos.ParamByName('ID').AsInteger := DMAdiantamentos.cdsViewAdiantamentos.FindField('ORCPED_ID').AsInteger;
    DMAdiantamentos.cdsDadosAdiantamentos.Open;
    DMAdiantamentos.cdsDadosAdiantamentos.Delete;
    DMAdiantamentos.cdsDadosAdiantamentos.ApplyUpdates(-1);
  end;
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  Fnc_AtualizaGrid();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadAdiantamentos.Act_Btn_SairExecute(Sender: TObject);
begin
//  inherited;
  Self.Close;
end;

procedure TFormCadAdiantamentos.Act_Btn_NovoExecute(Sender: TObject);
begin
//  inherited;
  {--- dados de inserção ---}
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  DMAdiantamentos.qryDadosAdiantamentos.ParamByName('ID').AsInteger := 0;
  DMAdiantamentos.cdsDadosAdiantamentos.Open;
  DMAdiantamentos.cdsDadosAdiantamentos.Insert;
  DMAdiantamentos.cdsDadosAdiantamentosADIANT_ORCPED_ID.AsInteger := 0;
  DBEdit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Novo.Hint+'  ';
end;

procedure TFormCadAdiantamentos.Act_Btn_CancelarExecute(Sender: TObject);
begin
//  inherited;
  if (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsInsert]) or
     (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsEdit]) then
  begin
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Act_Btn_Gravar.Execute;
  end;
    Fnc_CancelaOperacao();
    Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
    GroupBox1.Caption := '';
end;

procedure TFormCadAdiantamentos.Fnc_AtualizaGrid;
begin
  DMAdiantamentos.cdsViewAdiantamentos.Close;
  DMAdiantamentos.qryViewAdiantamentos.ParamByName('ID').AsInteger := StrToInt(Label3.Caption);
  DMAdiantamentos.qryViewAdiantamentos.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  DMAdiantamentos.cdsViewAdiantamentos.Open;
  var_SomaParcelas := 0;
  if DMAdiantamentos.cdsViewAdiantamentos.RecordCount > 0 then
  begin
    while not DMAdiantamentos.cdsViewAdiantamentos.Eof do
    begin
      var_SomaParcelas := var_SomaParcelas + DMAdiantamentos.cdsViewAdiantamentos.FindField('ADIANT_VALOR').AsFloat;
      DMAdiantamentos.cdsViewAdiantamentos.Next;
    end;
    if DBEdit2.Text = '' then
    var_SomaParcelas := var_SomaParcelas
    else
    var_SomaParcelas := StrToFloat(DBEdit2.Text) + var_SomaParcelas;
  end;
end;

procedure TFormCadAdiantamentos.Fnc_CancelaOperacao;
begin
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  DMAdiantamentos.cdsViewAdiantamentos_Bancos.Close;
end;

procedure TFormCadAdiantamentos.Fnc_FechaDataSource;
begin
  //DMAdiantamentos.cdsViewAdiantamentos.Close;
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
end;

procedure TFormCadAdiantamentos.Fnc_LocalizarPorNome_Adiantamentos;
begin
  Fnc_MostraDadosGrid();
end;

procedure TFormCadAdiantamentos.Fnc_MostraDadosGrid;
begin
  DMAdiantamentos.cdsViewAdiantamentos.Close;
  DMAdiantamentos.qryViewAdiantamentos.ParamByName('ID').AsInteger := StrToInt(FormCadOrcamentoPedido.lblNumeroOrcPedido.Caption);
  DMAdiantamentos.qryViewAdiantamentos.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  DMAdiantamentos.cdsViewAdiantamentos.Open;
  Label7.Caption := IntToStr(DMAdiantamentos.cdsViewAdiantamentos.RecordCount)+' registro(s)';
end;

procedure TFormCadAdiantamentos.Act_Btn_LocalizarExecute(Sender: TObject);
begin
//  inherited;
    Fnc_LocalizarPorNome_Adiantamentos;
end;

procedure TFormCadAdiantamentos.FormActivate(Sender: TObject);
begin
//  inherited;
  Fnc_MostraDadosGrid();
  DateTimePicker1.Date := Date;
  Fnc_AtualizarData();
  Label13.Caption := FormatFloat('0.00',DMOrcamentoPedido.cdsViewOrcPedido_ItensSomaSOMA.AsFloat);
  DMAdiantamentos.cdsViewAdiantamentos_Bancos.Close;
  DMAdiantamentos.qryViewAdiantamentos_Bancos.ParamByName('NOME').AsString:= '%'+Edit1.Text+'%';
  DMAdiantamentos.cdsViewAdiantamentos_Bancos.Open;
  Fnc_Habilita_ChequeDinheiro(true);

  Fnc_MostraDadosGrid();
  {-- se não encontrar dados para este Orçamento/Pedido inicia com botão Novo ---}
  if DMAdiantamentos.cdsViewAdiantamentos.RecordCount = 0 then
  Act_Btn_Novo.Execute;
  DBEdit1.SetFocus;
  Label3.Caption := FormCadOrcamentoPedido.lblNumeroOrcPedido.Caption;
  DMAdiantamentos.cdsViewAdiantamentos_Bancos.Open;
  if Label7.Caption = '0 registro(s)' then
  Fnc_BarraTarefasBotaoAtivo('Novo')
  else
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;


procedure TFormCadAdiantamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
  if (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsInsert]) or
     (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsEdit]) then
  begin
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Act_Btn_Gravar.Execute;
  end;
  Fnc_FechaDataSource();
end;

procedure TFormCadAdiantamentos.Edit1Change(Sender: TObject);
begin
//  inherited;
  Fnc_LocalizarPorNome_Adiantamentos();
end;

procedure TFormCadAdiantamentos.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
  if key = #13 then
  DBGrid1.SetFocus;
end;

procedure TFormCadAdiantamentos.DBGrid1DblClick(Sender: TObject);
begin
//  inherited;
  BtnEditar.Click;
end;

procedure TFormCadAdiantamentos.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
if key = #13 then
  begin
    FormCadAdiantamentos.BtnEditar.Click;
  end;
end;

procedure TFormCadAdiantamentos.bt_AlterarExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadAdiantamentos.bt_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  Act_Btn_Excluir.Execute;
end;

procedure TFormCadAdiantamentos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  inherited;
  If DMAdiantamentos.cdsViewAdiantamentosADIANT_ATIVO.AsBoolean= false then
    DBGrid1.Canvas.Font.Color:= clMedGray;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;


procedure TFormCadAdiantamentos.bt_IncrementoExecute(Sender: TObject);
var
    parcela_inc : integer;
begin
  if (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsInsert]) or
     (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsEdit]) then
  begin
    if DBEdit1.Text = '' then
    begin
      DBEdit1.Field.Value := 'Entrada';
    end
    else
    begin
      if DBEdit1.Text = 'Entrada' then
      parcela_inc := 0
      else
      parcela_inc := DBEdit1.Field.Value;
      parcela_inc := parcela_inc + 1;
      DBEdit1.Field.Value := parcela_inc;
    end;
  end
  else
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TFormCadAdiantamentos.bt_DecrementoExecute(Sender: TObject);
var
    parcela_dec : integer;
begin
  if (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsInsert]) or
     (DMAdiantamentos.cdsDadosAdiantamentos.State in [DsEdit]) then
  begin
    if DBEdit1.Text = '' then
    DBEdit1.Field.Value := 'Entrada'
    else if DBEdit1.Text = '0' then
    DBEdit1.Field.Value := 'Entrada'
    else if DBEdit1.Text = 'Entrada'then
    DBEdit1.Field.Value := 'Entrada'
    else
    begin
      parcela_dec := DBEdit1.Field.Value;
      parcela_dec := parcela_dec - 1;
      if parcela_dec < 1 then
      DBEdit1.Field.Value := 'Entrada'
      else
      DBEdit1.Field.Value := parcela_dec;
    end;
  end
  else
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TFormCadAdiantamentos.Fnc_Habilita_ChequeDinheiro(acao: Boolean);
begin
  DBLookupComboBox1.ReadOnly := acao;
  DBEdit6.ReadOnly := acao;
  DBEdit3.ReadOnly := acao;
  DateTimePicker1.Enabled := not(acao);
end;

procedure TFormCadAdiantamentos.RadioGroup2Click(Sender: TObject);
begin
//  inherited;
  if RadioGroup2.ItemIndex = 0 then
  RadioGroup1.ItemIndex := 0;

  if RadioGroup2.ItemIndex = 0 then
  Fnc_Habilita_ChequeDinheiro(true)
  else
  Fnc_Habilita_ChequeDinheiro(false);

  if RadioGroup2.ItemIndex = 0 then
  DateTimePicker1.Enabled := false
  else if RadioGroup2.ItemIndex = 1 then
  DateTimePicker1.Enabled := true;  
end;

procedure TFormCadAdiantamentos.RadioGroup1Click(Sender: TObject);
begin
//  inherited;
  if RadioGroup1.ItemIndex = 1 then
  RadioGroup2.ItemIndex := 1;
end;

procedure TFormCadAdiantamentos.DateTimePicker1CloseUp(Sender: TObject);
begin
//  inherited;
    Fnc_AtualizarData();
end;

procedure TFormCadAdiantamentos.Fnc_AtualizarData;
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

end.
