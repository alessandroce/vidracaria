unit uFormAdiantamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ToolWin, ComCtrls, ActnList, ImgList, Grids,
  DBGrids, StdCtrls, Menus, AppEvnts, DBCtrls, Mask, DB;

type
  TFormAdiantamentos = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label13: TLabel;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
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
    ToolBar1: TToolBar;
    Bevel1: TBevel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnSair: TSpeedButton;
    PopupMenu2: TPopupMenu;
    PopupMenu1: TPopupMenu;
    ApplicationEvents1: TApplicationEvents;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
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
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
    procedure Fnc_MostraDadosGrid();
    procedure AjustarColunasDoGrid(Grid : TDBGrid; PopMenu : TPopupMenu);
    procedure MenuClick(Sender : TObject);
  end;

var
  FormAdiantamentos: TFormAdiantamentos;

implementation

uses uDMAdiantamentos, uCadOrcamentoPedido, uDMOrcamentoPedido,
  uFormAdiantamentos_Edit;

{$R *.dfm}

procedure TFormAdiantamentos.AjustarColunasDoGrid(Grid: TDBGrid;
  PopMenu: TPopupMenu);
var
  vItemMenu : TMenuItem;
  vCont : Integer;
begin
  { Faz um loop nas colunas do menu }
  for vCont := 1 to DMAdiantamentos.cdsViewAdiantamentos_Bancos.RecordCount do //Grid.Columns.Count-1 do
  begin
  { Cria um item de menu e define algumas propriedades }
    vItemMenu := TMenuItem.Create(Self);
    vItemMenu.Caption := DMAdiantamentos.cdsViewAdiantamentos_BancosBANC_DESCRICAO.AsString; //Grid.Columns[ vCont].DisplayName; { Caption }
    vItemMenu.Checked := True; { Marcado }
    vItemMenu.Name := Grid.Name + '_' + IntToStr(vCont); { Nome }
    vItemMenu.OnClick := MenuClick; { Associa o evento do clique }
    PopMenu.Items.Add( vItemMenu); { Adiciona o mesmo ao menu }
    DMAdiantamentos.cdsViewAdiantamentos_Bancos.Next;
  end;
  { Associa o grid ao menu }
  Grid.PopupMenu := PopMenu;

end;

procedure TFormAdiantamentos.Fnc_MostraDadosGrid;
begin
  DMAdiantamentos.cdsViewAdiantamentos.Close;
  DMAdiantamentos.qryViewAdiantamentos.ParamByName('ID').AsInteger := StrToInt(Label3.Caption);//StrToInt(FormCadOrcamentoPedido.Label8.Caption);
  DMAdiantamentos.cdsViewAdiantamentos.Open;
end;

procedure TFormAdiantamentos.MenuClick(Sender: TObject);
var
  vNomeMenu : String;
  vNomeGrid : String;
  vNroColum : Integer;
  vGrid : TDBGrid;
begin
    { Aqui pega o nome do item de menu }
  vNomeMenu := (Sender as TMenuItem).Name;
  { Pega o nome do grid }
  vNomeGrid := Copy(vNomeMenu, 3, Pos('_', vNomeMenu) - 3);
  { Pega o numero da coluna - aumente o 3 no final se tiver mais que 999 colunas... }
  vNroColum := StrToInt( Copy( vNomeMenu, Pos('_', vNomeMenu) + 1 , 3) );
  { Pega uma referência o componente grid associado }
  vGrid := (Self.FindComponent(vNomeGrid) as TDBGrid);
  { Ajusta o check do item de menu...
  marca se estiver desmarcado ou vice versa }
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  { enfim, mostra ou oculta a coluna de acordo com o menu }
  //vGrid.Columns[ vNroColum ].Visible := (Sender as TMenuItem).Checked;

end;

procedure TFormAdiantamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
end;

procedure TFormAdiantamentos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (GdSelected in State) then
  begin
    DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
    DBGrid1.Canvas.Font.Color  := clHighlight;
    DBGrid1.Canvas.Font.Style  := [fsBold];
  end
  else
  begin
    DBGrid1.Canvas.Font.Color:= clBlack;
  end;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormAdiantamentos.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    Act_Btn_Alterar.Execute;
  end;
end;

procedure TFormAdiantamentos.Act_Btn_AlterarExecute(Sender: TObject);
begin
  Label14.Caption := '0 dias';
  DMAdiantamentos.cdsViewAdiantamentos_Bancos.Open;
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  DMAdiantamentos.qryDadosAdiantamentos.ParamByName('ID').AsInteger    := DMAdiantamentos.cdsViewAdiantamentos.FindField('ORCPED_ID').AsInteger;
  DMAdiantamentos.qryDadosAdiantamentos.ParamByName('SEQUE').AsInteger := DMAdiantamentos.cdsViewAdiantamentos.FindField('ADIANT_SEQUE').AsInteger;
  DMAdiantamentos.cdsDadosAdiantamentos.Open;
  if DMAdiantamentos.cdsViewAdiantamentosADIANT_DATA_APRESENTACAO.AsDateTime = 0 then
  DateTimePicker1.Date := Date
  else
  DateTimePicker1.Date := DMAdiantamentos.cdsViewAdiantamentosADIANT_DATA_APRESENTACAO.AsDateTime;
  {--- atualiza RadioGroup de Condição e Espécie ---}
  if DMAdiantamentos.cdsViewAdiantamentosADIANT_ESPECIE.AsString = 'Dinheiro' then
  begin
  RadioGroup2.ItemIndex := 0;
  DBLookupComboBox1.Enabled := false;
  DBEdit3.Enabled := false;
  DBEdit6.Enabled := false;
  end
  else if DMAdiantamentos.cdsViewAdiantamentosADIANT_ESPECIE.AsString = 'Cheque' then
  begin
  RadioGroup2.ItemIndex := 1;
  DBLookupComboBox1.Enabled := true;
  DBEdit3.Enabled := true;
  DBEdit6.Enabled := true;
  end;

  if DMAdiantamentos.cdsViewAdiantamentosADIANT_CONDICAO.AsString = 'À Vista' then
  RadioGroup1.ItemIndex := 0
  else if DMAdiantamentos.cdsViewAdiantamentosADIANT_CONDICAO.AsString = 'À Prazo' then
  RadioGroup1.ItemIndex := 1;
  {--- end / atualiza RadioGroup ---}

  DMAdiantamentos.cdsDadosAdiantamentos.Edit;

  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox2.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
  DateTimePicker1.Date := Date;
{    try
      Application.CreateForm(TFormAdiantamento_Edit, FormAdiantamento_Edit);
      FormAdiantamento_Edit.ShowModal;
    Finally
      FormAdiantamento_Edit.Free
    end;
    Fnc_MostraDadosGrid();
  //Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  //GroupBox2.Caption := '  '+Act_Btn_Alterar.Hint+'  '; }
end;

procedure TFormAdiantamentos.Act_Btn_CancelarExecute(Sender: TObject);
begin
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  Fnc_MostraDadosGrid;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox2.Caption := ' Lista de Adiantamentos ';
end;

procedure TFormAdiantamentos.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
//na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
//    Btn_Localizar.Enabled := true;
//    Edit1.ReadOnly        := not(true);
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := true;
//    Btn_Localizar.Enabled := false;
//    Edit1.ReadOnly        := not(false);
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := false;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
//    Btn_Localizar.Enabled := true;
//    Edit1.ReadOnly        := not(true);
  end;

end;

procedure TFormAdiantamentos.Act_Btn_SairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormAdiantamentos.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormAdiantamentos.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then
  RadioGroup1.ItemIndex := 0;

  if RadioGroup2.ItemIndex = 0 then
  begin
  DateTimePicker1.Enabled := false;
  DBLookupComboBox1.Enabled := false;
  DBEdit3.Enabled := false;
  DBEdit6.Enabled := false;
  end
  else if RadioGroup2.ItemIndex = 1 then
  begin
  DateTimePicker1.Enabled := true;
  DBLookupComboBox1.Enabled := true;
  DBEdit3.Enabled := true;
  DBEdit6.Enabled := true;
  end;
end;

procedure TFormAdiantamentos.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
  RadioGroup2.ItemIndex := 1;
end;

procedure TFormAdiantamentos.Act_Btn_GravarExecute(Sender: TObject);
var
      v_Especie, v_Condicao : String;
begin
  if DMAdiantamentos.cdsDadosAdiantamentos.State in [dsEdit] then
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
      DMAdiantamentos.cdsDadosAdiantamentosADIANT_DATA_APRESENTACAO.AsDateTime := DateTimePicker1.Date;
      DMAdiantamentos.cdsDadosAdiantamentosADIANT_ESPECIE.AsString  := v_Especie;
      DMAdiantamentos.cdsDadosAdiantamentosADIANT_CONDICAO.AsString := v_Condicao;
      DMAdiantamentos.cdsDadosAdiantamentos.ApplyUpdates(-1);
      DMAdiantamentos.cdsDadosAdiantamentos.Close;
    end;
  end
  else
  begin
    MessageBox(Application.Handle,'Selecione uma parcela para ser alterada! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
  Fnc_MostraDadosGrid();
end;

procedure TFormAdiantamentos.FormShow(Sender: TObject);
var
    item: TPopupMenu;
    i, i_parcelas : integer;
    var_ValorTotal, var_Parcelas : Double;
begin
//  inherited;
  DMAdiantamentos.cdsDadosAdiantamentos.Close;
  {--- numero do orçamento/pedido ---}
  Label3.Caption := FormCadOrcamentoPedido.lblNumeroOrcPedido.Caption;
  Label4.Caption := FormCadOrcamentoPedido.cbNomeCliente.Text;
  {--- recupera o pagamento máximo para este orçamento/pedido ---}
  //var_PagMax := FormParcelamento.ListView1.Items.Count;
  {--- grava pagamentos ---}
  Label13.Caption := FormCadOrcamentoPedido.lblValorTotalOrcPedido.Caption; //FormatFloat('0.00',DMOrcamentoPedido.cdsViewOrcPedido_ItensSomaSOMA.AsFloat);
  Label14.Caption := '0 dias';
  var_ValorTotal := StrToFloat(Label13.Caption);
  {--- ---}
  Fnc_MostraDadosGrid();

  { Chame a função passando apenas o nome do grid e do popup menu }
  //AjustarColunasDoGrid( DBGrid1, PopupMenu2);

  //DMAdiantamentos.cdsViewAdiantamentos_Bancos.Open;
end;

procedure TFormAdiantamentos.DBGrid1DblClick(Sender: TObject);
begin
Act_Btn_Alterar.Execute;
end;

end.
