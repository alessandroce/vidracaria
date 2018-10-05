unit uFormBuscaOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ActnList, ImgList,
  ExtCtrls, ToolWin, DB, Menus, AppEvnts;

type
  TFormBuscaOrdemServico = class(TForm)
    StatusBar1: TStatusBar;
    lbMensagem: TLabel;
    ToolBar1: TToolBar;
    Bevel1: TBevel;
    BtnInserir: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancela: TSpeedButton;
    BtnSair: TSpeedButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Gravar: TAction;
    Act_Btn_Inserir: TAction;
    Act_Btn_Alterar: TAction;
    Act_Btn_Excluir: TAction;
    bt_Imprimir: TAction;
    Act_Btn_Sair: TAction;
    Act_Btn_Novo: TAction;
    Act_Btn_Cancelar: TAction;
    Act_Btn_Localizar: TAction;
    Serv_Inserir: TAction;
    Serv_Alterar: TAction;
    Serv_Excluir: TAction;
    Pecas_Inserir: TAction;
    Pecas_Alterar: TAction;
    Pecas_Excluir: TAction;
    PopupMenu1: TPopupMenu;
    bt_Novo: TAction;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    Novo1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    BitBtn2: TBitBtn;
    bt_Fechar: TAction;
    Bevel2: TBevel;
    ApplicationEvents1: TApplicationEvents;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    bt_filtro: TAction;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    bt_VisualizarRelatorio: TAction;
    N1: TMenuItem;
    Visualizar1: TMenuItem;
    bt_VizualizarOS: TAction;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure bt_NovoExecute(Sender: TObject);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_FecharExecute(Sender: TObject);
    procedure bt_ImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bt_filtroExecute(Sender: TObject);
    procedure bt_VisualizarRelatorioExecute(Sender: TObject);
    procedure bt_VizualizarOSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var_tituloColuna : string;
    acaoOS : String;
    var_FormOrigem : string;
    con_numero,
    con_equipamento,
    con_problemareclamado,
    con_totalservicos,
    con_totalservicosde,
    con_totalservicosate,
    con_totalpecas,
    con_totalpecasde,
    con_totalpecasate,
    con_totalos,
    con_totalosde,
    con_totalosate,
    con_dataent,
    con_dataentde,
    con_dataentate,
    con_datasaida,
    con_datasaidade,
    con_datasaidaate,
    con_cliente,
    con_atendimento,
    con_situacao,
    con_tecnico : String;

    cancela_filtro : String;
    filtrosUsados : String;
    procedure Fnc_FiltroCombo();
    procedure Fnc_AtualizaBuscaOS(cliente:string;numeroOS:string);
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
  end;

var
  FormBuscaOrdemServico: TFormBuscaOrdemServico;

implementation

uses uDMOrdemServico, uFormOrdemServico, SqlExpr, udmRelatorioOrdemServico,
  uFormRelatorioOrdemServicoPrint, uPrincipal, uBibliotecaFuncoes,
  uFormBuscaOrdemServicoFiltro, uFormRelatorioOrdemServicoPrint_Geral;

{$R *.dfm}

{ TFormBuscaOrdemServico }

procedure TFormBuscaOrdemServico.Fnc_AtualizaBuscaOS(cliente:string;numeroOS:string);
{var
    strSQL_OS : string;}
begin
  {
  strSQL_OS := 'SELECT * '+
  'FROM VIEW_ORDEM_SERVICOS '+
  'WHERE 1 = 1 ';
  if Edit1.Text <> '' then
  strSQL_OS := strSQL_OS +'AND VIEW_ORDEM_SERVICOS.cliente LIKE :CLIENTE ';
  if Edit2.Text <> '' then
  strSQL_OS := strSQL_OS +'AND VIEW_ORDEM_SERVICOS.numero = :NUMERO ';
  strSQL_OS := strSQL_OS + 'ORDER BY CLIENTE ';
  if numeroOS = '' then
  numeroOS := '0';
  DMOrdemServico.cdsViewOSBusca.IndexName := '';
  DMOrdemServico.cdsViewOSBusca.Close;
  with DMOrdemServico.qryViewOSBusca do
  begin
    SQL.Clear;
    SQL.Add(strSQL_OS);
    if Edit1.Text <> '' then
    ParamByName('CLIENTE').AsString := '%' + cliente + '%';
    if Edit2.Text <> '' then
    ParamByName('NUMERO').AsInteger := StrToInt(numeroOS);
  end;
  DMOrdemServico.cdsViewOSBusca.Open;
  }
  DBGrid1.DataSource.DataSet.Refresh;
  //Fnc_FiltroCombo();
  if DMOrdemServico.cdsViewOSBusca.RecordCount > 0 then
    lbMensagem.Visible  := false
  else
    lbMensagem.Visible  := true;
end;

procedure TFormBuscaOrdemServico.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaOrdemServico.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in ['0'..'9', #8,#13])  then
  begin
    key := #0;
    MessageBox(Application.Handle,'Caracteres inválidos! ', 'Informação', MB_ICONINFORMATION + MB_OK)
  end;
  if key = #13 then
  DBGrid1.SetFocus;
end;

procedure TFormBuscaOrdemServico.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  DBGrid1.SetFocus;
end;

procedure TFormBuscaOrdemServico.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    Self.Close;
  end;
end;

procedure TFormBuscaOrdemServico.Act_Btn_NovoExecute(Sender: TObject);
begin
  acaoOS := 'NOVO';
  try
   Application.CreateForm(TFormOrdemServico, FormOrdemServico);
   FormOrdemServico.ShowModal;
  Finally
    FormOrdemServico.Free
  end;
  DBGrid1.DataSource.DataSet.Refresh;
  //Fnc_FiltroCombo();
end;

procedure TFormBuscaOrdemServico.Act_Btn_AlterarExecute(Sender: TObject);
begin
  Fnc_VerificaSeFormularioAtivo('Ordem de Serviço',FormPrincipal);
  if janelaAberta = true then
  begin
    acaoOS := 'ALTERAR';
    FormOrdemServico.FormShow(Sender);
    Self.Close;
  end
  else
  begin
    acaoOS := 'ALTERAR';
    try
     Application.CreateForm(TFormOrdemServico, FormOrdemServico);
     FormOrdemServico.ShowModal;
    Finally
      FormOrdemServico.Free
    end;
    DBGrid1.DataSource.DataSet.Refresh;
  //Fnc_FiltroCombo();
  end;
end;

procedure TFormBuscaOrdemServico.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle, '  Deseja Excluir este item?  ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DMOrdemServico.cdsDadosOS.Close;
    DMOrdemServico.qryDadosOS.ParamByName('ID').AsInteger := DMOrdemServico.cdsViewOSBusca.FindField('NUMERO').AsInteger;
    DMOrdemServico.cdsDadosOS.Open;
    DMOrdemServico.cdsDadosOS.Delete;
    DMOrdemServico.cdsDadosOS.ApplyUpdates(-1);
  end;
  DMOrdemServico.cdsDadosOS.Close;
  DBGrid1.DataSource.DataSet.Refresh;
  //Fnc_FiltroCombo();
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormBuscaOrdemServico.Act_Btn_CancelarExecute(Sender: TObject);
begin
if   (DMOrdemServico.cdsDadosOS.State in [DsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [DsEdit]) then
  begin
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Act_Btn_Gravar.Execute;
  end;
    //limpa os dados da tela
    DMOrdemServico.cdsDadosOS.Close;
    Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormBuscaOrdemServico.Act_Btn_SairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormBuscaOrdemServico.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
//na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := true;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
    //Btn_Localizar.Enabled := true;
    //Edit1.ReadOnly        := not(true);
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := true;
    BtnCancela.Enabled := true;
    //Btn_Localizar.Enabled := false;
    //Edit1.ReadOnly        := not(false);
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
    //Btn_Localizar.Enabled := true;
    //Edit1.ReadOnly        := not(true);
  end;
end;

procedure TFormBuscaOrdemServico.bt_NovoExecute(Sender: TObject);
begin
  Act_Btn_Novo.Execute;
end;

procedure TFormBuscaOrdemServico.bt_AlterarExecute(Sender: TObject);
begin
  Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaOrdemServico.bt_ExcluirExecute(Sender: TObject);
begin
  Act_Btn_Excluir.Execute;
end;

procedure TFormBuscaOrdemServico.DBGrid1DblClick(Sender: TObject);
begin
  Act_Btn_Alterar.Execute;
end;

procedure TFormBuscaOrdemServico.bt_FecharExecute(Sender: TObject);
begin
 Self.Close;
end;

procedure TFormBuscaOrdemServico.bt_ImprimirExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormRelatorioOrdemServicoPrint, FormRelatorioOrdemServicoPrint);
    {para atribuir valores a variavel de outro formulario é necessário que o mesmo tenha
    sido criado ou aberto}
    FormRelatorioOrdemServicoPrint.relatorioId := DMOrdemServico.cdsViewOSBuscaNUMERO.AsInteger;
    FormRelatorioOrdemServicoPrint.RLReport1.Preview;
  Finally
    FormRelatorioOrdemServicoPrint.Free;
  End;
end;


procedure TFormBuscaOrdemServico.FormShow(Sender: TObject);
begin
  Label9.Caption := '';
  Fnc_FiltroCombo();
  if DMOrdemServico.cdsViewOSBusca.RecordCount > 0 then
    lbMensagem.Visible  := false
  else
    lbMensagem.Visible  := true;
    DBGrid1.SetFocus;
    Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormBuscaOrdemServico.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TFormBuscaOrdemServico.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (GdSelected in State) then
  begin
    DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
    DBGrid1.Canvas.Font.Color  := clblack;
  end;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormBuscaOrdemServico.DBGrid1TitleClick(Column: TColumn);
begin
  //OrdenaDataSetGrid(DMOrdemServico.cdsViewOSBusca ,Column ,DBGrid1);
  OrdenarGris(Column);
end;

procedure TFormBuscaOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMOrdemServico.cdsViewOSBusca.IndexName := '';
end;

procedure TFormBuscaOrdemServico.DBGrid1MouseMove(Sender: TObject;
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

procedure TFormBuscaOrdemServico.bt_filtroExecute(Sender: TObject);
begin
    var_tituloColuna := DBGrid1.Columns[DBGrid1.SelectedIndex].Title.Caption;
    try
     Application.CreateForm(TFormBuscaOrdemServico_Filtro, FormBuscaOrdemServico_Filtro);
     FormBuscaOrdemServico_Filtro.ShowModal;
    Finally
     FormBuscaOrdemServico_Filtro.Free
    end;
    //Label9.Caption := FormBuscaOrdemServico_Filtro.con_filtro;
  if cancela_filtro = '' then
  Fnc_FiltroCombo();
  cancela_filtro := '';

  Label9.Caption := Label9.Caption + var_tituloColuna + ' - ';


end;

procedure TFormBuscaOrdemServico.Fnc_FiltroCombo;
var
    strSQL_ordemserv : String;
    soma1, soma2, soma3 : Double;
begin
  strSQL_ordemserv := 'SELECT VIEW_ORDEM_SERVICOS.numero, '+
                      'VIEW_ORDEM_SERVICOS.equipamento, '+
                      'VIEW_ORDEM_SERVICOS.problemareclamado, '+
                      'VIEW_ORDEM_SERVICOS.total_servicos, '+
                      'VIEW_ORDEM_SERVICOS.total_pecas, '+
                      'VIEW_ORDEM_SERVICOS.total_os, '+
                      'CAST(VIEW_ORDEM_SERVICOS.datahora_ent AS DATE) AS DATA_ENTRADA, '+
                      'CAST(VIEW_ORDEM_SERVICOS.datahora_saida AS DATE) AS DATA_SAIDA, '+
                      'VIEW_ORDEM_SERVICOS.cliente, '+
                      'VIEW_ORDEM_SERVICOS.atendimento, '+
                      'VIEW_ORDEM_SERVICOS.situacao, '+
                      'VIEW_ORDEM_SERVICOS.tecnico '+
                      'FROM VIEW_ORDEM_SERVICOS '+
                      'WHERE 1 = 1 ';

  if (con_numero <> '') then
   strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.NUMERO = :NUMERO ';

  if (con_equipamento <> '') then
   strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.equipamento LIKE :EQUIPAMENTO ';

  if (con_problemareclamado <> '') then
   strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.problemareclamado LIKE :PROB_RECLAMADO ';




  if (con_totalservicos <> '') then
   if (con_totalservicosde <> '') and (con_totalservicosate <> '') then
    strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.total_servicos BETWEEN :TSERVDE AND :TSERVATE ';

  if (con_totalpecas <> '') then
   if (con_totalpecasde <> '') and (con_totalpecasate <> '') then
    strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.total_pecas BETWEEN :TPECADE AND :TPECAATE ';

  if (con_totalos <> '') then
   if (con_totalosde <> '') and (con_totalosate <> '') then
    strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.total_os BETWEEN :TOSDE AND :TOSATE ';

  if (con_dataent <> '') then
   if (con_dataentde <> '') and (con_dataentate <> '') then
    strSQL_ordemserv := strSQL_ordemserv + 'AND CAST(VIEW_ORDEM_SERVICOS.datahora_ent AS DATE) BETWEEN :DATAENTDE AND :DATAENTATE ';

  if (con_datasaida <> '') then
   if (con_datasaidade <> '') and (con_datasaidaate <> '') then
    strSQL_ordemserv := strSQL_ordemserv + 'AND CAST(VIEW_ORDEM_SERVICOS.datahora_saida AS DATE) BETWEEN :DATASAIDE AND :DATASAIATE ';







  if (con_cliente <> '') then
   strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.cliente LIKE :CLIENTE ';

  if (con_atendimento <> '') then
   strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.atendimento LIKE :ATENDIMENTO ';

  if (con_situacao <> '') then
   strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.situacao LIKE :SITUACAO ';

  if (con_tecnico <> '') then
   strSQL_ordemserv := strSQL_ordemserv + 'AND VIEW_ORDEM_SERVICOS.tecnico LIKE :TECNICO ';

  DMOrdemServico.cdsViewOSBusca.Close;
  with DMOrdemServico.qryViewOSBusca do
  begin
    SQL.Clear;
    SQL.Add(strSQL_ordemserv);

    if (con_numero <> '') then
     ParamByName('NUMERO').AsInteger := StrToInt(con_numero);

    if (con_equipamento <> '') then
     ParamByName('EQUIPAMENTO').AsString := '%'+con_equipamento+'%';

    if (con_problemareclamado <> '') then
     ParamByName('PROB_RECLAMADO').AsString := '%'+con_problemareclamado+'%';



    if (con_totalservicos <> '') then
     if (con_totalservicosde <> '') and (con_totalservicosate <> '') then
     begin
      ParamByName('TSERVDE').AsFloat := StrToFloat(con_totalservicosde);
      ParamByName('TSERVATE').AsFloat := StrToFloat(con_totalservicosate);
     end;

    if (con_totalpecas <> '') then
     if (con_totalpecasde <> '') and (con_totalpecasate <> '') then
     begin
      ParamByName('TPECADE').AsFloat  := StrToFloat(con_totalpecasde);
      ParamByName('TPECAATE').AsFloat := StrToFloat(con_totalpecasate);
     end;

    if (con_totalos <> '') then
     if (con_totalosde <> '') and (con_totalosate <> '') then
     begin
      ParamByName('TOSDE').AsFloat  := StrToFloat(con_totalosde);
      ParamByName('TOSATE').AsFloat := StrToFloat(con_totalosate);
     end;

    if (con_dataent <> '') then
     if (con_dataentde <> '') and (con_dataentate <> '') then
     begin
      ParamByName('DATAENTDE').AsDate  := StrToDate(con_dataentde);
      ParamByName('DATAENTATE').AsDate := StrToDate(con_dataentate);
     end;

    if (con_datasaida <> '') then
     if (con_datasaidade <> '') and (con_datasaidaate <> '') then
     begin
      ParamByName('DATASAIDE').AsDate  := StrToDate(con_datasaidade);
      ParamByName('DATASAIATE').AsDate := StrToDate(con_datasaidaate);
     end;


    if (con_cliente <> '') then
     ParamByName('CLIENTE').AsString := '%'+con_cliente+'%';

    if (con_atendimento <> '') then
     ParamByName('ATENDIMENTO').AsString := '%'+con_atendimento+'%';

    if (con_situacao <> '') then
     ParamByName('SITUACAO').AsString := '%'+con_situacao+'%';

    if (con_tecnico <> '') then
     ParamByName('TECNICO').AsString := '%'+con_tecnico+'%';

  end;
  DMOrdemServico.cdsViewOSBusca.Open;
  soma1 := 0;
  soma2 := 0;
  soma3 := 0;
  while not DMOrdemServico.cdsViewOSBusca.Eof do
  begin
    soma3 := soma3 + DMOrdemServico.cdsViewOSBusca.FindField('TOTAL_OS').AsFloat;
    DMOrdemServico.cdsViewOSBusca.Next;
  end;
  Label7.Caption := FormatFloat('0.00',soma3);
  DMOrdemServico.cdsViewOSBusca.First;


end;

procedure TFormBuscaOrdemServico.bt_VisualizarRelatorioExecute(
  Sender: TObject);
begin
  Try
    Application.CreateForm(TFormRelatorioOrdemServicoPrintGeral, FormRelatorioOrdemServicoPrintGeral);
    FormRelatorioOrdemServicoPrintGeral.RLReport1.Preview;
  Finally
    FormRelatorioOrdemServicoPrintGeral.Free;
  End;
end;

procedure TFormBuscaOrdemServico.bt_VizualizarOSExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormRelatorioOrdemServicoPrint, FormRelatorioOrdemServicoPrint);
    {para atribuir valores a variavel de outro formulario é necessário que o mesmo tenha
    sido criado ou aberto}
    FormRelatorioOrdemServicoPrint.relatorioId := DMOrdemServico.cdsViewOSBuscaNUMERO.AsInteger;
    FormRelatorioOrdemServicoPrint.RLReport1.Preview;
  Finally
    FormRelatorioOrdemServicoPrint.Free;
  End;
end;



end.
