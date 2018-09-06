unit uFormOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, Mask,
  ComCtrls, ActnList, ImgList, ToolWin,DB, Menus;

type
  TFormOrdemServico = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    StatusBar1: TStatusBar;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
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
    Act_Btn_Imprimir: TAction;
    Act_Btn_Sair: TAction;
    Act_Btn_Novo: TAction;
    Act_Btn_Cancelar: TAction;
    Act_Btn_Localizar: TAction;
    Bevel3: TBevel;
    BitBtn7: TBitBtn;
    Bevel2: TBevel;
    GroupBox7: TGroupBox;
    btBuscaCliente: TSpeedButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    Edit3: TEdit;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    bt_LocalizarItensPedido: TAction;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox3: TGroupBox;
    DBMemo2: TDBMemo;
    DBEdit5: TDBEdit;
    PopupMenu1: TPopupMenu;
    bt_VisualizarPedido: TAction;
    AbrirPedido1: TMenuItem;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ped_Inserir: TAction;
    ped_Excluir: TAction;
    BitBtn3: TBitBtn;
    bt_VerPedido: TAction;
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Serv_InserirExecute(Sender: TObject);
    procedure Serv_AlterarExecute(Sender: TObject);
    procedure Pecas_InserirExecute(Sender: TObject);
    procedure Pecas_AlterarExecute(Sender: TObject);
    procedure Pecas_ExcluirExecute(Sender: TObject);
    procedure Serv_ExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_ReciboEntradaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure btBuscaClienteClick(Sender: TObject);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure bt_FinanceiroExecute(Sender: TObject);
    procedure ped_InserirExecute(Sender: TObject);
    procedure bt_VisualizarPedidoExecute(Sender: TObject);
    procedure bt_VerPedidoExecute(Sender: TObject);
    procedure ped_ExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    clienteValido:Boolean;
    var_IDCLIENTE : integer;
    var_selecionado : String;
    procedure Fnc_AcaoOS(acao:String);
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
    procedure Fnc_SomaTotal();
    procedure Fnc_BuscaOrdemServicoAlterar(num:integer);
    Procedure Fnc_RecuperaCodigoCliente();
    Procedure Fnc_AtualizaGrid(id:Integer);
    Procedure Fnc_VisualizarPedido(id:Integer);
  end;

var
  FormOrdemServico: TFormOrdemServico;

implementation

uses uDMOrdemServico, uFormBuscaOrdemServico,
  udmRelatorioOrdemServico, uFormRelatorioOrdemServicoPrint,
  uBibliotecaFuncoes, uFormBuscaClienteOS, uPrincipal, DateUtils,
  uFormBuscaPedidoOS, uFormPedido;

{$R *.dfm}

procedure TFormOrdemServico.Act_Btn_GravarExecute(Sender: TObject);
var
    var_msglookup,var_msglookup1,var_msglookup2,var_msglookup3 : string;
begin
  {--- grava dados ---}
  //mensagem para a(s) lookup(s)
  if DBLookupComboBox3.Text = '' then
  var_msglookup1 := '- Atendimento'+#13;
  if DBLookupComboBox1.Text = '' then
  var_msglookup2 := '- Situação'+#13;
  if ComboBox1.Text = '' then
  var_msglookup3 := '- Cliente'+#13;
  var_msglookup := var_msglookup1+var_msglookup2+var_msglookup3;
  if var_msglookup <> '' then
  begin
    MessageBox(Application.Handle,PAnsiChar('Verifique os dados       '+#13+var_msglookup), 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;

  if (Label2.Caption = '0') and (DMOrdemServico.cdsDadosOS.State in [DsInsert]) then
  begin
    //atribui valores para gravar o número...
    DMOrdemServico.cdsDadosOSOSERV_ID.AsInteger             := 0;
    DMOrdemServico.cdsDadosOSOSERV_ATENDENTE.AsInteger      := 1;
    DMOrdemServico.cdsDadosOSOSERV_CLI_ID.AsInteger         := DMOrdemServico.cdsViewOS_ClienteCodigoCLI_ID.AsInteger;
    DMOrdemServico.cdsDadosOSOSERV_OSIT_ID.AsInteger        := DMOrdemServico.cdsViewOS_SituacaoOSSIT_ID.AsInteger;
    DMOrdemServico.cdsDadosOSOSERV_OSATENDTIPO_ID.AsInteger := DMOrdemServico.cdsViewOS_AtendOSATENDTIPO_ID.AsInteger;
    DMOrdemServico.cdsDadosOSOSERV_USU_TECNICO.AsInteger := DMOrdemServico.cdsViewOS_Tecnico.FindField('USU_ID').AsInteger;
    DMOrdemServico.cdsDadosOSOSERV_DATAEHORA_ENT.AsDateTime := Now;

    if DMOrdemServico.cdsViewOS_SituacaoOSSIT_DESCRICAO.AsString = 'ENCERRADA' then
      DMOrdemServico.cdsDadosOSOSERV_DATAEHORA_SAIDA.AsDateTime := Now;

    DMOrdemServico.cdsDadosOS.ApplyUpdates(-1);
    DMOrdemServico.cdsDadosOS.Close;
    {--- ---}
    {--- recupera ultimo registro gravado ---}
    DMOrdemServico.cdsViewOSMaxID.Close;
    DMOrdemServico.cdsViewOSMaxID.Open;
    Label2.Caption:= IntToStr(DMOrdemServico.cdsViewOSMaxIDOSERV_ID.AsInteger);
    {-- --}
    {--- modo de edição ---}
    DMOrdemServico.cdsDadosOS.Close;
    DMOrdemServico.qryDadosOS.ParamByName('ID').AsInteger := StrToInt(Label2.Caption);
    DMOrdemServico.cdsDadosOS.Open;
    DMOrdemServico.cdsDadosOS.Edit;
    Exit;
  end;

  if DMOrdemServico.cdsViewOS_SituacaoOSSIT_DESCRICAO.AsString = 'ENCERRADA' then
  DMOrdemServico.cdsDadosOSOSERV_DATAEHORA_SAIDA.AsDateTime := Now;

  DMOrdemServico.cdsDadosOS.ApplyUpdates(-1);
  DMOrdemServico.cdsDadosOS.Close;

  Fnc_BuscaOrdemServicoAlterar(StrToInt(Label2.Caption));

  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');

end;

procedure TFormOrdemServico.Act_Btn_InserirExecute(Sender: TObject);
begin
//
end;

procedure TFormOrdemServico.Act_Btn_AlterarExecute(Sender: TObject);
begin
    if Label2.Caption = '0' then
    begin
      if MessageBox(Application.Handle,'Deseja selecionar a Ordem de serviço para alterar ?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        try
        Application.CreateForm(TFormBuscaOrdemServico, FormBuscaOrdemServico);
        FormBuscaOrdemServico.ShowModal;
        Finally
        FormBuscaOrdemServico.Free
        end;
      end
      else
      begin
        Exit;
      end;
    end;

    if FormBuscaOrdemServico.acaoOS = 'ALTERAR' then
    Fnc_BuscaOrdemServicoAlterar(DMOrdemServico.cdsViewOSBuscaNUMERO.AsInteger);
    Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormOrdemServico.Act_Btn_SairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormOrdemServico.Act_Btn_NovoExecute(Sender: TObject);
begin
  {--- atribui valores ---}
  Label6.Caption := FormatDateTime('dd/mm/yyyy',Date);
  Label2.Caption := '0';
  Fnc_AtualizaGrid(StrToInt(Label2.Caption));
  //modo de edição da Ordem de Serviços
  DMOrdemServico.cdsDadosOS.Close;
  DMOrdemServico.qryDadosOS.ParamByName('ID').AsInteger := 0;
  DMOrdemServico.cdsDadosOS.Open;
  DMOrdemServico.cdsDadosOS.Insert;

  {--- preenche lookup's de Atendimento, Situação e Cliente---}
  DMOrdemServico.cdsViewOS_Atend.Open;
  DMOrdemServico.cdsViewOS_Situacao.Open;
  DMOrdemServico.cdsViewOS_ClienteCodigo.Open;
  DMOrdemServico.cdsViewOS_Tecnico.Open;
  {--- ---}
  {---recupera clientes para combobox ---}
  ComboBox1.Enabled := true;
  btBuscaCliente.Visible := true;
  DMOrdemServico.cdsViewOS_ClienteOS.Close;
  DMOrdemServico.qryViewOS_ClienteOS.ParamByName('NOME').AsString := '%' + ComboBox1.Text + '%';
  DMOrdemServico.cdsViewOS_ClienteOS.Open;
  while not DMOrdemServico.cdsViewOS_ClienteOS.Eof do
  begin
    ComboBox1.Items.Add(DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_CLIENTE').AsString);
    DMOrdemServico.cdsViewOS_ClienteOS.Next;
  end;
  ComboBox1.ItemIndex := -1;
  {--- ---}
  // atribui os dados
  DBLookupComboBox1.KeyValue := DMOrdemServico.cdsViewOS_Situacao.FindField('OSSIT_ID').AsString;
  DBLookupComboBox3.KeyValue := DMOrdemServico.cdsViewOS_Atend.FindField('OSATENDTIPO_ID').AsString;
  DBLookupComboBox2.KeyValue := DMOrdemServico.cdsViewOS_Tecnico.FindField('USU_ID').AsInteger;
  DBLookupComboBox3.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  {--- ---}

end;

procedure TFormOrdemServico.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
//na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := true;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := true;
    BtnCancela.Enabled := true;
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
  end;
end;

procedure TFormOrdemServico.Fnc_SomaTotal;
var
    ValorServico, ValorPeca, ValorTotal :double;
begin
  ValorTotal := ValorServico + ValorPeca;
end;

procedure TFormOrdemServico.Act_Btn_CancelarExecute(Sender: TObject);
begin
  if (DMOrdemServico.cdsDadosOS.State in [DsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [DsEdit]) then
  begin
    if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Act_Btn_Gravar.Execute;
  end;
    //limpa os dados da tela
    DMOrdemServico.cdsDadosOS.Close;
    Label2.Caption  := '0';      //numero OS
    ComboBox1.Clear;
    Edit1.Clear;//fone cliente
    Edit2.Clear;//fax celular
    Edit3.Clear;//id cliente

    Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;


procedure TFormOrdemServico.Serv_InserirExecute(Sender: TObject);
begin

// verifica se está em modo de insert ou edit...
  if not((DMOrdemServico.cdsDadosOS.State in [DsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [DsEdit])) then
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  
  //grava para gerar numero da ordem de serviços
  if Label2.Caption = '0' then
  Act_Btn_Gravar.Execute;
  Fnc_SomaTotal();

end;

procedure TFormOrdemServico.Serv_AlterarExecute(Sender: TObject);
begin
// verifica se está em modo insert ou edit...
  if not((DMOrdemServico.cdsDadosOS.State in [DsInsert,DsEdit])) then
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
// mensagem caso Número for 0...
  if Label2.Caption = '0' then
  begin
    MessageBox(Application.Handle,'Selecione o botão "Gravar" para gravar um número antes de continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    exit;
  end;
  Fnc_SomaTotal();
end;

procedure TFormOrdemServico.Pecas_InserirExecute(Sender: TObject);
begin
// verifica se está em modo insert ou edit...
  if not((DMOrdemServico.cdsDadosOS.State in [DsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [DsEdit])) then
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  //grava para gerar numero da ordem de serviços
  if Label2.Caption = '0' then
  Act_Btn_Gravar.Execute;




  Fnc_SomaTotal();
end;

procedure TFormOrdemServico.Pecas_AlterarExecute(Sender: TObject);
begin
// verifica se está em modo insert ou edit...
  if not((DMOrdemServico.cdsDadosOS.State in [DsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [DsEdit])) then
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
// mensagem caso Número for 0...
    if Label2.Caption = '0' then
  begin
    MessageBox(Application.Handle,'Selecione o botão "Gravar" para gravar um número antes de continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    exit;
  end;


  Fnc_SomaTotal();


end;

procedure TFormOrdemServico.Pecas_ExcluirExecute(Sender: TObject);
begin
// verifica se está em modo insert ou edit...
  if not((DMOrdemServico.cdsDadosOS.State in [DsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [DsEdit])) then
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
// mensagem caso nùmero for 0...
    if Label2.Caption = '0' then
  begin
    MessageBox(Application.Handle,'Selecione o botão "Gravar" para gravar um número antes de continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    exit;
  end;

  Fnc_SomaTotal();

end;

procedure TFormOrdemServico.Serv_ExcluirExecute(Sender: TObject);
begin
// verifica se está em modo insert ou edit...
  if not((DMOrdemServico.cdsDadosOS.State in [DsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [DsEdit])) then
  begin
    MessageBox(Application.Handle,'Selecione o botão Novo/Alterar para continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
// mensagem caso Número for 0...
    if Label2.Caption = '0' then
  begin
    MessageBox(Application.Handle,'Selecione o botão "Gravar" para gravar um número antes de continuar! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    exit;
  end;
  Fnc_SomaTotal();
end;

procedure TFormOrdemServico.Fnc_AcaoOS(acao: String);
begin
  if (acao = 'NOVO') or (acao = '') then
  Act_Btn_Novo.Execute();

  if acao = 'ALTERAR' then
  begin
    label2.Caption := IntToStr(DMOrdemServico.cdsViewOSBusca.FindField('NUMERO').AsInteger);
    Act_Btn_Alterar.Execute();
  end;


end;

procedure TFormOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//
  if (DMOrdemServico.cdsDadosOS.State in [dsInsert]) or
     (DMOrdemServico.cdsDadosOS.State in [dsEdit]) then
  begin
    if MessageBox(Application.Handle, 'Deseja salvar as alterações?    ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      //desativado >> BitBtn8.Click;
      //o codigo deste botão está sendo utilizado abaixo
      //DMOrdemServico.cdsDadosOSOSERV_TOTAL_SERVICOS.AsFloat := StrToFloat(Label21.Caption);
      //DMOrdemServico.cdsDadosOSOSERV_TOTAL_ESTOQUE.AsFloat  := StrToFloat(Label12.Caption);
      //DMOrdemServico.cdsDadosOSOSERV_TOTAL_OS.AsFloat       := StrToFloat(Label14.Caption);
      DMOrdemServico.cdsDadosOS.ApplyUpdates(-1);
      DMOrdemServico.cdsDadosOS.Close;
      BtnInserir.Enabled := true;
      DMOrdemServico.cdsDadosOS.Close;
      DMOrdemServico.cdsViewOS_Atend.Close;
      DMOrdemServico.cdsViewOS_Situacao.Close;
      DMOrdemServico.cdsViewOS_Cliente.Close;
      DMOrdemServico.cdsViewOS_Tecnico.Close;
    end;
  end;
end;

procedure TFormOrdemServico.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  if Label2.Caption = '0' then
  begin
    MessageBox(Application.Handle,'Selecione a Ordem de serviço para imprimir! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
    //antes de vizualizar impressão grava possiveis alterações
    Act_Btn_Gravar.Execute;
    //Fnc_BuscaOrdemServicoAlterar(StrToInt(Label2.Caption));
    Try
      Application.CreateForm(TFormRelatorioOrdemServicoPrint, FormRelatorioOrdemServicoPrint);
      //para atribuir valores a variavel de outro formulario é necessário que o mesmo tenha sido ccriado ou aberto
      FormRelatorioOrdemServicoPrint.relatorioId := StrToInt(Label2.Caption);
      FormRelatorioOrdemServicoPrint.RLReport1.Preview;
    Finally
      FormRelatorioOrdemServicoPrint.Free;
    End;

  end;
end;

procedure TFormOrdemServico.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  MessageBox(Application.Handle,'Selecione o menu Consulta > Ordem de Serviço para esta operação! ', 'Informação', MB_ICONINFORMATION + MB_OK);
end;

procedure TFormOrdemServico.Act_Btn_ReciboEntradaExecute(Sender: TObject);
begin
  if Label2.Caption = '0' then
  begin
    MessageBox(Application.Handle,'Selecione a Ordem de serviço para imprimir! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
    //antes de vizualizar impressão grava possiveis alterações
    Act_Btn_Gravar.Execute;

  end;
end;

procedure TFormOrdemServico.FormShow(Sender: TObject);
begin
  BtnExcluir.Enabled := false;
  Label6.Caption := FormatDateTime('dd/mm/yyyy',Date);
  Fnc_VerificaSeFormularioAtivo('Busca Ordem de Serviço',FormPrincipal);
  if janelaAberta = true then
  Fnc_AcaoOS(FormBuscaOrdemServico.acaoOS)
  else
  Fnc_AcaoOS('NOVO');
  

end;

procedure TFormOrdemServico.Fnc_BuscaOrdemServicoAlterar(num: integer);
begin
    DMOrdemServico.cdsViewOS_Atend.Open;
    DMOrdemServico.cdsViewOS_Situacao.Open;
    DMOrdemServico.cdsViewOS_Tecnico.Open;

    DMOrdemServico.cdsDadosOS.Close;
    DMOrdemServico.qryDadosOS.ParamByName('ID').AsInteger := num;
    DMOrdemServico.cdsDadosOS.Open;

    {---recupera todos os clientes para combobox ---}
    //obs.: alterando a ordem de serviço, o cliente pode também ser alterado,
    //por um possivel 'erro' de cadastro

    //ComboBox1.Enabled := true;
    //btBuscaCliente.Visible := true;
    DMOrdemServico.cdsViewOS_ClienteOS.Close;
    DMOrdemServico.qryViewOS_ClienteOS.ParamByName('NOME').AsString := '%%';//recupera todos
    DMOrdemServico.cdsViewOS_ClienteOS.Open;
    while not DMOrdemServico.cdsViewOS_ClienteOS.Eof do
    begin
      ComboBox1.Items.Add(DMOrdemServico.cdsViewOS_ClienteOS.FindField('CLI_CLIENTE').AsString);
      DMOrdemServico.cdsViewOS_ClienteOS.Next;
    end;
    //recupera o cliente
    DMOrdemServico.cdsViewOS_ClienteNome.Close;
    DMOrdemServico.qryViewOS_ClienteNome.ParamByName('ID').AsInteger := DMOrdemServico.cdsDadosOS.FindField('OSERV_CLI_ID').AsInteger;
    DMOrdemServico.cdsViewOS_ClienteNome.Open;
    ComboBox1.Text := DMOrdemServico.cdsViewOS_ClienteNome.FindField('CLI_CLIENTE').AsString;
    Edit3.Text := IntToStr(DMOrdemServico.cdsViewOS_ClienteNome.FindField('CLI_ID').AsInteger);
    Edit1.Text := DMOrdemServico.cdsViewOS_ClienteNome.FindField('CLI_FONE').AsString;
    Edit2.Text := DMOrdemServico.cdsViewOS_ClienteNome.FindField('CLI_CELULAR').AsString;
    DMOrdemServico.cdsViewOS_ClienteNome.Close;
    Fnc_AtualizaGrid(StrToInt(Label2.Caption));
    //ComboBox1.Enabled := false;
    //btBuscaCliente.Visible := false;
    {--- end / recupera cliente ---}
    Label6.Caption := FormatDateTime('dd/mm/yyyy',DMOrdemServico.cdsDadosOSOSERV_DATAEHORA_ENT.AsDateTime);
    DMOrdemServico.cdsDadosOS.Edit;
end;


procedure TFormOrdemServico.Fnc_RecuperaCodigoCliente;
begin
  if ComboBox1.Text <> '' then
  begin
    {---- recupera o ccodigo (id) do cliente ---}
    DMOrdemServico.cdsViewOS_ClienteCodigo.Close;
    DMOrdemServico.qryViewOS_ClienteCodigo.ParamByName('NOME').AsString := ComboBox1.Text;
    DMOrdemServico.cdsViewOS_ClienteCodigo.Open;
    {--- end ---}
    {--- verifica se a seleção do nome do cliente é valida para recuprar o id ---}
    if DMOrdemServico.cdsViewOS_ClienteCodigoCLI_ID.AsInteger > 0 then
    begin
      //ShowMessage(inttostr(DMView.cdsViewClientesCodigoIDCLIENTE.AsInteger));
      var_IDCLIENTE := DMOrdemServico.cdsViewOS_ClienteCodigoCLI_ID.AsInteger;
      ComboBox1.Text := DMOrdemServico.cdsViewOS_ClienteCodigoCLI_CLIENTE.AsString;
      Edit1.Text := DMOrdemServico.cdsViewOS_ClienteCodigo.FindField('CLI_FONE').AsString;
      Edit2.Text := DMOrdemServico.cdsViewOS_ClienteCodigo.FindField('CLI_CELULAR').AsString;
      Edit3.Text := IntToStr(DMOrdemServico.cdsViewOS_ClienteCodigo.FindField('CLI_ID').AsInteger);
      //DMOrdemServico.cdsViewOS_ClienteCodigo.Close;
      clienteValido := true;
    end
    else
    begin
      MessageBox(Application.Handle,' Selecione um Cliente válido! ', 'Informação', MB_ICONINFORMATION + MB_OK);
      clienteValido := false;
      ComboBox1.SetFocus;
    end;
    {--- end ---}
  end;
end;

procedure TFormOrdemServico.ComboBox1Exit(Sender: TObject);
begin
  Fnc_RecuperaCodigoCliente();
  if clienteValido = true then
  Act_Btn_Gravar.Execute;
end;

procedure TFormOrdemServico.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ComboBox1.Text = '' then
    begin
      MessageBox(Application.Handle,' Selecione um Cliente válido! ', 'Informação', MB_ICONINFORMATION + MB_OK);
      clienteValido := false;
      ComboBox1.SetFocus;
    end;
  end;
end;

procedure TFormOrdemServico.btBuscaClienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormBuscaClienteOS, FormBuscaClienteOS);
    FormBuscaClienteOS.ShowModal;
  Finally
    FormBuscaClienteOS.Free
  end;

end;

procedure TFormOrdemServico.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  DBLookupComboBox1.SetFocus;
end;

procedure TFormOrdemServico.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  ComboBox1.SetFocus;
end;

procedure TFormOrdemServico.bt_FinanceiroExecute(Sender: TObject);
begin
  if Label2.Caption = '0' then
  begin
    MessageBox(Application.Handle,'Selecione a Ordem de Serviço! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  //verifica se há lançamento desta OS em Contas Receber
  

end;

procedure TFormOrdemServico.Fnc_AtualizaGrid(id:Integer);
begin
  DMOrdemServico.cdsViewOS_ItensPedido.Close;
  DMOrdemServico.qryViewOS_ItensPedido.ParamByName('ID').AsInteger := id;
  DMOrdemServico.cdsViewOS_ItensPedido.Open;
end;

procedure TFormOrdemServico.ped_InserirExecute(Sender: TObject);
begin
  if Edit3.Text = '' then
  begin
    MessageBox(Application.Handle,'É necessário selecionar um Cliente! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;

  DMOrdemServico.cdsDadosOS_ItensPedido.Close;
  DMOrdemServico.qryDadosOS_ItensPedido.ParamByName('ID').AsInteger     := 0;
  DMOrdemServico.cdsDadosOS_ItensPedido.Open;
  DMOrdemServico.cdsDadosOS_ItensPedido.Insert;
 try
    Application.CreateForm(TFormBuscaPedidoOS, FormBuscaPedidoOS);
    FormBuscaPedidoOS.ShowModal;
  Finally
    FormBuscaPedidoOS.Free
  end;
  if var_selecionado = 'ok' then
  begin
    DMOrdemServico.cdsDadosOS_ItensPedidoOSITENS_ID.AsInteger := 0;
    DMOrdemServico.cdsDadosOS_ItensPedidoOSITENS_OSERV_ID.AsInteger        := StrToInt(Label2.Caption);
    DMOrdemServico.cdsDadosOS_ItensPedidoOSITENS_ITENSPED_PED_ID.AsInteger := DMOrdemServico.cdsViewOS_BuscaPedido.FindField('PED_ID').AsInteger;
    DMOrdemServico.cdsDadosOS_ItensPedidoOSITENS_SEQUE.AsInteger           := DMOrdemServico.cdsViewOS_BuscaPedido.FindField('SEQUE').AsInteger;
    DMOrdemServico.cdsDadosOS_ItensPedidoOSITENS_PRODUTO.AsString          := DMOrdemServico.cdsViewOS_BuscaPedido.FindField('ITENS_PRODUTO').AsString;
    DMOrdemServico.cdsDadosOS_ItensPedidoOSITENS_VALOR.AsFloat             := DMOrdemServico.cdsViewOS_BuscaPedido.FindField('ITENS_VALOR').AsFloat;
    DMOrdemServico.cdsDadosOS_ItensPedidoOSITENS_DATA_PEDIDO.AsDateTime    := DMOrdemServico.cdsViewOS_BuscaPedido.FindField('PED_DATA').AsDateTime;
    DMOrdemServico.cdsDadosOS_ItensPedido.ApplyUpdates(-1);
    DBGrid1.DataSource.DataSet.Refresh;
    var_selecionado := '';
  end
  else
  begin
    DMOrdemServico.cdsDadosOS_ItensPedido.Close;
    var_selecionado := '';
  end;
end;

procedure TFormOrdemServico.bt_VisualizarPedidoExecute(Sender: TObject);
begin
  Fnc_VisualizarPedido(DMOrdemServico.cdsViewOS_ItensPedido.FindField('ITENSPED_ID').AsInteger);
end;

procedure TFormOrdemServico.Fnc_VisualizarPedido(id: Integer);
begin
  DMOrdemServico.cdsViewOS_VisualizarPedido.Close;
  DMOrdemServico.qryViewOS_VisualizarPedido.ParamByName('ID').AsInteger := id;
  DMOrdemServico.cdsViewOS_VisualizarPedido.Open;
  DMOrdemServico.cdsViewOS_VisualizarPedido.RecordCount;
  try
    Application.CreateForm(TFormPedido, FormPedido);
    FormPedido.ShowModal;
  Finally
    FormPedido.Free
  end;
end;

procedure TFormOrdemServico.bt_VerPedidoExecute(Sender: TObject);
begin
  if DMOrdemServico.cdsViewOS_ItensPedido.RecordCount > 0 then
    bt_VisualizarPedido.Execute
  else
    MessageBox(Application.Handle,'É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);

end;

procedure TFormOrdemServico.ped_ExcluirExecute(Sender: TObject);
begin
  if DMOrdemServico.cdsViewOS_ItensPedido.RecordCount = 0 then
  begin
    MessageBox(Application.Handle,'É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  if MessageBox(Application.Handle,PAnsiChar('Deseja Excluir este item?'+#13+DMOrdemServico.cdsViewOS_ItensPedido.FindField('ITEM').AsString),  'Confirmar exclusão',MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    DMOrdemServico.cdsDadosOS_ItensPedido.Close;
    DMOrdemServico.qryDadosOS_ItensPedido.ParamByName('ID').AsInteger     := DMOrdemServico.cdsViewOS_ItensPedido.FindField('OSERVITENS_ID').AsInteger;
    DMOrdemServico.cdsDadosOS_ItensPedido.Open;
    DMOrdemServico.cdsDadosOS_ItensPedido.Delete;
    DMOrdemServico.cdsDadosOS_ItensPedido.ApplyUpdates(-1);
    DBGrid1.DataSource.DataSet.Refresh;
  end;
end;

end.
