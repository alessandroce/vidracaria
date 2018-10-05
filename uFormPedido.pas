unit uFormPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, Menus, Buttons, Mask, ActnList,
  ImgList, ToolWin, ExtCtrls, DB, AppEvnts, Grids, DBGrids;

type
  TFormPedido = class(TForm)
    Bevel2: TBevel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ToolBar2: TToolBar;
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
    bt_BuscaCliente: TAction;
    bt_NovoPedido: TAction;
    bt_Concluir: TAction;
    bt_Excluir: TAction;
    GroupBox2: TGroupBox;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    btnBuscaCli: TSpeedButton;
    ComboBox1: TComboBox;
    StatusBar1: TStatusBar;
    dbgItensSaida: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    GroupBox8: TGroupBox;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    GroupBox9: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    btnImprimir: TBitBtn;
    btnConcluir: TBitBtn;
    btn_NovoOrcPedido: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    Label18: TLabel;
    Edit3: TDBText;
    bt_ImprimirPedido: TAction;
    bt_ImprimirDadosCliente: TAction;
    btnImprimirDadosCliente: TBitBtn;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    Panel1: TPanel;
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure bt_BuscaClienteExecute(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_NovoPedidoExecute(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure bt_ConcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dbgItensSaidaDblClick(Sender: TObject);
    procedure bt_ImprimirDadosClienteExecute(Sender: TObject);
    procedure bt_ImprimirPedidoExecute(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
  private
    { Private declarations }
    var_IDCLIENTE : Integer;
  public
    { Public declarations }
  acaoPedido : string;
  numeroPedido : Integer;  
  var_FormasParcelamentoCancelada : Boolean;
  procedure fnc_RecuperaCodigoCliente();
  procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
  procedure Fnc_AtualizaComboClientes(nome:String);
  procedure Fnc_AtualizaDadosGridItens();
  end;

var
  FormPedido: TFormPedido;
  quant, v_unit, v_total, total : Double;

implementation

uses UDMPedido, uBuscaCliente_OrcPedido, uFormBuscaPedido, uDMOrcamentoPedido, uCadOrcamentoPedido,
  uFormBuscaOrcPed, uFormAdiantamentos,
  uDMAdiantamentosPedido, uFormadiantamentosPedido, uDMPedidoPrint,
  uFormPedidoPrint, uBibliotecaFuncoes, uDMPrincipal, uFormPedidoSelecao,
  uFormPedidoClientePrint, uPrincipal, uFormRelatorioItensPedido,
  uDMRelatorioItensPedido, uDMOrdemServico;

{$R *.dfm}

procedure TFormPedido.fnc_RecuperaCodigoCliente;
begin
  if ComboBox1.Text <> '' then
  begin
    {---- recupera o ccodigo (id) do cliente ---}
    DMPedido.cdsViewClienteCodigo.Close;
    DMPedido.qryViewClienteCodigo.ParamByName('CLIENTE').AsString := ComboBox1.Text;
    DMPedido.cdsViewClienteCodigo.Open;
    {--- end ---}
    {--- verifica se a seleção do nome do cliente é valida para recuprar o id ---}
    if DMPedido.cdsViewClienteCodigoCLI_ID.AsInteger > 0 then
    begin
      //ShowMessage(inttostr(DMView.cdsViewClientesCodigoIDCLIENTE.AsInteger));
      var_IDCLIENTE := DMPedido.cdsViewClienteCodigoCLI_ID.AsInteger;
      ComboBox1.Text := DMPedido.cdsViewClienteCodigoCLI_CLIENTE.AsString;//DMView2.cdsView2VendasListaRAZAO_SOCIAL.AsString;
      DMPedido.cdsViewClienteCodigo.Close;
    end
    else
    begin
      MessageBox(Application.Handle,' Selecione um Cliente válido! ', 'Informação', MB_ICONINFORMATION + MB_OK);
      ComboBox1.SetFocus;
    end;
    {--- end ---}
  end;
end;

procedure TFormPedido.ComboBox1Exit(Sender: TObject);
begin
  fnc_RecuperaCodigoCliente();
end;

procedure TFormPedido.ComboBox1Enter(Sender: TObject);
begin
   SendMessage(ComboBox1.handle, CB_SHOWDROPDOWN, Integer(True), 0);
end;

procedure TFormPedido.ComboBox1Change(Sender: TObject);
begin
   SendMessage(ComboBox1.handle, CB_SHOWDROPDOWN, Integer(True), 0);
end;

procedure TFormPedido.Act_Btn_InserirExecute(Sender: TObject);
begin
  if not(DMPedido.cdsDadosPedido.State in [DsInsert,DsEdit]) then
  begin
    bt_NovoPedido.Execute;
  end
  else
  begin
    DMPedido.cdsDadosPedidoItens.Close;
    DMPedido.qryDadosPedidoItens.ParamByName('ID').AsInteger    := 0;
    DMPedido.qryDadosPedidoItens.ParamByName('SEQUE').AsInteger := 0;
    DMPedido.cdsDadosPedidoItens.Open;
    DMPedido.cdsDadosPedidoItens.Insert;
    DBEdit3.SetFocus;
    Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  end;
end;

procedure TFormPedido.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
//na entrada do formulario
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;

    btn_NovoOrcPedido.Enabled := true;
    btnConcluir.Enabled       := false;
    btnImprimir.Enabled       := false;
    btnImprimirDadosCliente.Enabled       := false;
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
  //
  //
  if botao = 'NovoPedido' then
  begin
    btn_NovoOrcPedido.Enabled := false;
    btnConcluir.Enabled       := true;
    btnImprimir.Enabled       := false;
    btnImprimirDadosCliente.Enabled       := false;
  end;
  //qdo clicar em concluir
  if botao = 'Concluir' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
      
    btn_NovoOrcPedido.Enabled := true;
    btnConcluir.Enabled       := false;
    btnImprimir.Enabled       := true;
    btnImprimirDadosCliente.Enabled       := true;
  end;
  if botao = 'Alterar' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;

    btn_NovoOrcPedido.Enabled := true;
    btnConcluir.Enabled       := true;
    btnImprimir.Enabled       := true;
    btnImprimirDadosCliente.Enabled       := true;

  end;
  // qdo clicar em Imprimir
  if botao = 'Imprimir' then
  begin
    btn_NovoOrcPedido.Enabled := true;
    btnConcluir.Enabled       := true;
    btnImprimir.Enabled       := false;
    btnImprimirDadosCliente.Enabled       := false;
  end;
end;

procedure TFormPedido.Act_Btn_SairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormPedido.bt_BuscaClienteExecute(Sender: TObject);
begin
  acaoPedido := 'PEDIDO';
  if (DMPedido.cdsDadosPedido.State in [DsInsert]) then
  begin
    try
      Application.CreateForm(TFormBuscaCliente_OrcPedido, FormBuscaCliente_OrcPedido);
      FormBuscaCliente_OrcPedido.ShowModal;
    Finally
      FormBuscaCliente_OrcPedido.Free
    end;
    {--- recupera o nome do cliente para atualização da combo na função Fnc_PreencheComboClientes ---}
    //var_NomeCliCBox := DMOrcamentoPedido.cdsViewOrcPedido_BuscaClienteCLI_CLIENTE.AsString;
    //var_Cliente_Id := DMOrcamentoPedido.cdsViewOrcPedido_BuscaClienteCLI_ID.AsInteger;

    // atualiza combo cliente
    ComboBox1.Clear;
    DMPedido.cdsViewPedido_Cliente.Close;
    DMPedido.qryViewPedido_Cliente.ParamByName('CLI_CLIENTE').AsString := '%' + ComboBox1.Text + '%';
    DMPedido.cdsViewPedido_Cliente.Open;
    while not DMPedido.cdsViewPedido_Cliente.Eof do
    begin
      ComboBox1.Items.Add(DMPedido.cdsViewPedido_Cliente.FindField('CLI_CLIENTE').AsString);
      DMPedido.cdsViewPedido_Cliente.Next;
    end;
    ComboBox1.Text := DMOrcamentoPedido.cdsViewOrcPedido_BuscaClienteCLI_CLIENTE.AsString;
  end;
end;

procedure TFormPedido.Act_Btn_GravarExecute(Sender: TObject);
var
    msg_verifica, msg_1,msg_2,msg_3, msg_4, msg_5, msg_6, msg_7 : String;
    var_dataManu, var_mesManu : string;
begin
//  inherited;
//  if (Edit5.Text = '') or (Edit4.Text = '') then
  msg_1 := '';
  msg_2 := '';
  msg_3 := '';
  msg_4 := '';
  msg_5 := '';

  if ComboBox1.Text = '' then
  msg_1 := ' - Cliente'+#13
  else
  msg_1 := '';

  if (FormBuscaPedido.acaoPedido = 'NOVO') or (FormBuscaPedido.acaoPedido = '') then
  begin
    if DBEdit1.Text = '' then
    msg_2 := ' - Produto'+#13
    else
    msg_2 := '';

    if (DBEdit3.Text = '') then
    msg_3 := ' - Quantidade'+#13
    else
    msg_3 := '';

    if (DBEdit2.Text = '') then
    msg_6 := ' - Valor unit.'+#13
    else
    msg_6 := '';

    if (DBEdit4.Text = '') then
    msg_7 := ' - Valor Total'+#13
    else
    msg_7 := '';
  end;

  if (DBLookupComboBox1.Text = '') then
  msg_4 := ' - Vendedor'+#13
  else
  msg_4 := '';

  {if (DBEdit5.Text = '') then
  msg_5 := ' - Manutenção'+#13
  else
  msg_5 := '';}

  msg_verifica := msg_1+msg_2+msg_3+msg_4+msg_5+msg_6+msg_7;
  if msg_verifica <> '' then
  begin
    MessageBox(Application.Handle,PAnsiChar(' Verifique os dados de preenchimento obrigatório:  '+#13+msg_verifica+''), 'Informação', MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
      // se ainda não foi gravado pedido
      if Label8.Caption = '0' then
      begin
        {--- insert para novo Pedido ---}
        //ob.: já tem n botao NOVO
        //DMPedido.cdsDadosPedido.Close;
        //DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := 0;//valor inicial para insert
        //DMPedido.cdsDadosPedido.Open;
        //DMPedido.cdsDadosPedido.Insert;

        {--- insert Pedidos - ajuste de dados para inserir ---}
        fnc_RecuperaCodigoCliente();
        DMPedido.cdsDadosPedidoPED_ID.AsInteger             := 0;
        DMPedido.cdsDadosPedidoPED_CLI_ID.AsInteger         := var_IDCLIENTE;
        DMPedido.cdsDadosPedidoPED_USU_ID.AsInteger         := DMPedido.cdsViewPedido_Usuario.FindField('USU_ID').AsInteger;
        DMPedido.cdsDadosPedidoPED_DATA_ENTREGA.AsDateTime  := DateTimePicker1.DateTime;
        DMPedido.cdsDadosPedidoPED_DATA_PEDIDO.AsDateTime   := StrToDate(Label6.Caption);
        DMPedido.cdsDadosPedidoPED_DATA_MANUT.AsDateTime    := StrToDate(Label17.Caption);
        //DMPedido.cdsDadosPedidoPED_PERIODO_MANUT.AsInteger :=
        DMPedido.cdsDadosPedidoPED_VALOR_TOTAL.AsFloat      := DMPedido.cdsViewPedidoItens_Soma.FindField('SOMA').AsFloat;
        DMPedido.cdsDadosPedidoPED_MANUT_EFETUADA.AsBoolean := False;
        DMPedido.cdsDadosPedido.ApplyUpdates(-1);

        {--- recupera o ultimo registro gravado para o numero do PEDIDO ---}
        DMPedido.cdsViewPedidoMax.Close;
        DMPedido.cdsViewPedidoMax.Open;
        Label8.Caption := IntToStr(DMPedido.cdsViewPedidoMaxMAX_ID.AsInteger);

        {--- Edit para o Pedido gravado anteriormente ---}
        DMPedido.cdsDadosPedido.Close;
        DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
        DMPedido.cdsDadosPedido.Open;
        DMPedido.cdsDadosPedido.Edit;
      end//end of label8 = '0'
      else//=================================
      begin//label8 <> '0' | vindo da tela de busca de pedido está em modo Edit
        //por estar em modo de Edit ajusto somente o necessário
        DMPedido.cdsDadosPedidoPED_USU_ID.AsInteger         := DMPedido.cdsViewPedido_Usuario.FindField('USU_ID').AsInteger;
        DMPedido.cdsDadosPedidoPED_DATA_ENTREGA.AsDateTime  := DateTimePicker1.DateTime;
        DMPedido.cdsDadosPedidoPED_DATA_PEDIDO.AsDateTime   := StrToDate(Label6.Caption);
        DMPedido.cdsDadosPedidoPED_DATA_MANUT.AsDateTime    := StrToDate(Label17.Caption);
        DMPedido.cdsDadosPedidoPED_VALOR_TOTAL.AsFloat      := DMPedido.cdsViewPedidoItens_Soma.FindField('SOMA').AsFloat;
        DMPedido.cdsDadosPedido.ApplyUpdates(-1);

        DMPedido.cdsDadosPedido.Close;
        DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
        DMPedido.cdsDadosPedido.Open;
        DMPedido.cdsDadosPedido.Edit;
      end;
      //OBS.: para gravar os dados do pedido é necessário CONCLUIR no botao adequado.

      {--- grava dados dos itens do Pedido ---}
      if DMPedido.cdsDadosPedidoItens.State in [DsInsert,DsEdit] then
      begin
        if DMPedido.cdsDadosPedidoItens.State in [DsInsert] then
        begin
          DMPedido.cdsDadosPedidoItensITENSPED_SEQUE.AsInteger := 0;//sequencia trigger
          DMPedido.cdsDadosPedidoItensITENSPED_PED_ID.AsInteger := StrToInt(Label8.Caption);
        end;
        DMPedido.cdsDadosPedidoItens.ApplyUpdates(-1);
        DMPedido.cdsDadosPedidoItens.Close;
      end;

      Fnc_AtualizaDadosGridItens();

      {--- Inserir novo item ---}
      Act_Btn_Inserir.Execute;

      //btnConcluir.Enabled := true;
      //btn_NovoOrcPedido.Enabled := True;
      Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  end;//end of msg_verifica
end;

procedure TFormPedido.Act_Btn_CancelarExecute(Sender: TObject);
begin
  DMPedido.cdsDadosPedidoItens.Close;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormPedido.FormShow(Sender: TObject);
var
    acaoPedido, FormularioOrigem : String;
begin
  acaoPedido := '';
  Fnc_VerificaSeFormularioAtivo('Busca Pedido',FormPrincipal);
  if janelaAberta = true then
  begin
    if (FormBuscaPedido.acaoPedido = 'NOVO') or (FormBuscaPedido.acaoPedido = '') then
    acaoPedido := 'NOVO';
    if FormBuscaPedido.acaoPedido = 'ALTERAR' then
    begin
      acaoPedido := 'ALTERAR';
      numeroPedido := DMPedido.cdsViewPedido_Busca.FindField('PED_ID').AsInteger;
      FormularioOrigem := 'FormBuscaPedido';
    end;
  end;


  Fnc_VerificaSeFormularioAtivo('Relatório de Itens de Pedido',FormPrincipal);
  if janelaAberta = true then
  if FormRelatorioItensPedido.acaoPedido = 'ALTERAR' then
  begin
    acaoPedido := 'ALTERAR';
    numeroPedido := DMRelatorioItensPedido.cdsViewRelatorioItensPedido.FindField('PED_ID').AsInteger;
    FormularioOrigem := 'FormRelatorioItensPedido';
  end;

  Fnc_VerificaSeFormularioAtivo('Ordem de Serviço',FormPrincipal);
  if janelaAberta = true then
  begin
    acaoPedido := 'ALTERAR';
    numeroPedido := DMOrdemServico.cdsViewOS_ItensPedido.FindField('ITENSPED_ID').AsInteger;
    FormularioOrigem := 'FormOrdemServico';
  end;

  Fnc_VerificaSeFormularioAtivo('Busca Pedidos Ordem de Serviço',FormPrincipal);
  if janelaAberta = true then
  begin
    acaoPedido := 'ALTERAR';
    numeroPedido := DMOrdemServico.cdsViewOS_BuscaPedido.FindField('PED_ID').AsInteger;
    FormularioOrigem := 'FormBuscaPedidoOS';
  end;



  if (acaoPedido = 'NOVO') or (acaoPedido = '') then
  begin
    Label6.Caption := DateToStr(Date);
    Label17.Caption := DateToStr(Date);
    DateTimePicker1.Date := Date;
    ComboBox1.Enabled := true;
    Fnc_BarraTarefasBotaoAtivo('Novo');
    //Act_Btn_Novo.Execute;
    bt_NovoPedido.Execute;
  end;

  if acaoPedido = 'ALTERAR' then
  begin
    //altera o pedido
    if (FormularioOrigem = 'FormOrdemServico') or (FormularioOrigem = 'FormBuscaPedidoOS') then
    begin
      Label8.Caption := IntToStr(DMOrdemServico.cdsViewOS_VisualizarPedido.FindField('PED_ID').AsInteger);
      Label6.Caption := DateToStr(DMOrdemServico.cdsViewOS_VisualizarPedido.FindField('PED_DATA').AsDateTime);
      Label17.Caption := DateToStr(DMOrdemServico.cdsViewOS_VisualizarPedido.FindField('PED_DATA_MANUT').AsDateTime);
      DateTimePicker1.Date := DMOrdemServico.cdsViewOS_VisualizarPedido.FindField('PED_DATA_ENTREGA').AsDateTime;
      ComboBox1.Text := DMOrdemServico.cdsViewOS_VisualizarPedido.FindField('CLI_NOME').AsString;
      DBLookupComboBox1.KeyValue := DMOrdemServico.cdsViewOS_VisualizarPedido.FindField('USU_ID').AsInteger;
    end;
    if FormularioOrigem = 'FormBuscaPedido' then
    begin
      Label8.Caption := IntToStr(DMPedido.cdsViewPedido_Busca.FindField('PED_ID').AsInteger);
      Label6.Caption := DateToStr(DMPedido.cdsViewPedido_Busca.FindField('PED_DATA_PEDIDO').AsDateTime);
      Label17.Caption := DateToStr(DMPedido.cdsViewPedido_Busca.FindField('PED_DATA_MANUT').AsDateTime);
      DateTimePicker1.Date := DMPedido.cdsViewPedido_Busca.FindField('PED_DATA_ENTREGA').AsDateTime;
      ComboBox1.Text := DMPedido.cdsViewPedido_Busca.FindField('CLI_CLIENTE').AsString;
      DBLookupComboBox1.KeyValue := DMPedido.cdsViewPedido_BuscaPED_USU_ID.AsInteger;
    end;
    if FormularioOrigem = 'FormRelatorioItensPedido' then
    begin
      Label8.Caption := IntToStr(numeroPedido);
      Label6.Caption := DateToStr(DMRelatorioItensPedido.cdsViewRelatorioItensPedido.FindField('PED_DATA').AsDateTime);
      Label17.Caption := DateToStr(DMRelatorioItensPedido.cdsViewRelatorioItensPedido.FindField('PED_MANUT').AsInteger);
      DateTimePicker1.Date := DMRelatorioItensPedido.cdsViewRelatorioItensPedido.FindField('PED_DATA_ENTREGA').AsDateTime;
      ComboBox1.Text := DMRelatorioItensPedido.cdsViewRelatorioItensPedido.FindField('CLI_NOME').AsString;
      DBLookupComboBox1.KeyValue := DMRelatorioItensPedido.cdsViewRelatorioItensPedido.FindField('USU_ID').AsInteger;
    end;

    DMPedido.cdsViewPedido_Usuario.Open;
    Fnc_AtualizaDadosGridItens();
    ComboBox1.Enabled := false;
    DMPedido.cdsDadosPedido.Close;
    DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := numeroPedido;
    DMPedido.cdsDadosPedido.Open;
    DMPedido.cdsDadosPedido.Edit;
    Act_Btn_Inserir.Execute;
    //NovoModificarExcluir
    Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  end;

end;

procedure TFormPedido.bt_NovoPedidoExecute(Sender: TObject);
begin
  DMPedido.cdsViewPedidoItens.Close;
  Label8.Caption := '0';
  Edit3.Caption := '0,00';
  DateTimePicker1.Date := Date;
  ComboBox1.Enabled := true;
  Fnc_AtualizaComboClientes(ComboBox1.Text);
  DMPedido.cdsViewPedido_Usuario.Open;
  DMPedido.cdsViewClienteCodigo.Open;
  DMPedido.cdsViewPedido_Cliente.Open;
  //modo de insert para pedidos
  DMPedido.cdsDadosPedido.Close;
  DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := 0;
  DMPedido.cdsDadosPedido.Open;
  DMPedido.cdsDadosPedido.Insert;
  //inserir itens pedido
  Act_Btn_Inserir.Execute;
  DBLookupComboBox1.SetFocus;
  DBEdit5.Field.Value := 24;
  Fnc_BarraTarefasBotaoAtivo('NovoPedido');
end;

procedure TFormPedido.Fnc_AtualizaComboClientes(nome: String);
begin
  DMPedido.cdsViewPedido_Cliente.Close;
  DMPedido.qryViewPedido_Cliente.ParamByName('CLI_CLIENTE').AsString := '%' + nome + '%';
  DMPedido.cdsViewPedido_Cliente.Open;
  while not DMPedido.cdsViewPedido_Cliente.Eof do
  begin
    ComboBox1.Items.Add(DMPedido.cdsViewPedido_Cliente.FindField('CLI_CLIENTE').AsString);
    DMPedido.cdsViewPedido_Cliente.Next;
  end;
  ComboBox1.ItemIndex := -1;
end;


procedure TFormPedido.Fnc_AtualizaDadosGridItens;
var soma_itens : Double;
begin
  DMPedido.cdsViewPedidoItens.Close;
  DMPedido.qryViewPedidoItens.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
  DMPedido.cdsViewPedidoItens.Open;
  {--- recupera soma do itens da grid ---}
  DMPedido.cdsViewPedidoItens_Soma.Close;
  DMPedido.qryViewPedidoItens_Soma.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
  DMPedido.cdsViewPedidoItens_Soma.Open;

end;


procedure TFormPedido.DBEdit5Change(Sender: TObject);
begin
  if DBEdit5.Text = '' then
  DBEdit5.Text := '0';
  Label17.Caption := DateToStr(IncMonth(DateTimePicker1.Date, StrToInt(DBEdit5.Text)));
end;

procedure TFormPedido.Act_Btn_AlterarExecute(Sender: TObject);
begin
    if (Label8.Caption <> '0') and (DMPedido.cdsViewPedidoItens.RecordCount > 0) then
    begin

      //if MessageBox(Application.Handle,PAnsiChar('Deseja Alterar este registro? '+#13+DMPedido.cdsViewPedidoItensITENSPED_PRODUTO.AsString),'Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      //begin
        DMPedido.cdsDadosPedidoItens.Close;
        DMPedido.qryDadosPedidoItens.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
        DMPedido.qryDadosPedidoItens.ParamByName('SEQUE').AsInteger := DMPedido.cdsViewPedidoItensITENSPED_SEQUE.AsInteger;
        DMPedido.cdsDadosPedidoItens.Open;
        DMPedido.cdsDadosPedidoItens.Edit;
        Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
      //end;

    end
    else
    begin
      MessageBox(Application.Handle,'É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    end;
end;

procedure TFormPedido.Act_Btn_ExcluirExecute(Sender: TObject);
begin
    if (Label8.Caption <> '0') and (DMPedido.cdsViewPedidoItens.RecordCount > 0) then
    begin

      if MessageBox(Application.Handle,PAnsiChar('Deseja Excluir este registro? '+#13+DMPedido.cdsViewPedidoItensITENSPED_PRODUTO.AsString),'Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        DMPedido.cdsDadosPedidoItens.Close;
        DMPedido.qryDadosPedidoItens.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
        DMPedido.qryDadosPedidoItens.ParamByName('SEQUE').AsInteger := DMPedido.cdsViewPedidoItensITENSPED_SEQUE.AsInteger;
        DMPedido.cdsDadosPedidoItens.Open;
        DMPedido.cdsDadosPedidoItens.Delete;
        DMPedido.cdsDadosPedidoItens.ApplyUpdates(-1);
        DMPedido.cdsDadosPedidoItens.Close;
        Fnc_AtualizaDadosGridItens();
      end;

    end
    else
    begin
      MessageBox(Application.Handle,'É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    end;
end;

procedure TFormPedido.bt_ConcluirExecute(Sender: TObject);
begin
//  inherited;
  if Label8.Caption = '0' then
  begin
    MessageBox(Application.Handle,PAnsiChar('É necessário gravar um pedido para concluir! '), 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;

  //grava o PEDIDO
  //if FormBuscaPedido.acaoPedido = 'NOVO' then
  //begin
    //DMPedido.cdsDadosPedidoPED_PERIODO_MANUT.AsDateTime := StrToDate(Label17.Caption);
    DMPedido.cdsDadosPedidoPED_DATA_ENTREGA.AsDateTime := DateTimePicker1.Date;
    //DMPedido.cdsDadosPedidoPED_USU_ID.AsInteger        := DMPedido.cdsViewPedido_UsuarioUSU_ID.AsInteger;
    DMPedido.cdsDadosPedidoPED_VALOR_TOTAL.AsFloat     := DMPedido.cdsViewPedidoItens_Soma.FindField('SOMA').AsFloat;
    DMPedido.cdsDadosPedidoPED_DATA_MANUT.AsDateTime   := StrToDate(Label17.Caption);
    DMPedido.cdsDadosPedido.ApplyUpdates(-1);
    {--- recupera o ultimo registro gravado para o numero do PEDIDO ---}
    //DMPedido.cdsViewPedidoMax.Close;
    //DMPedido.cdsViewPedidoMax.Open;
    //Label8.Caption := IntToStr(DMPedido.cdsViewPedidoMaxMAX_ID.AsInteger);
  //end;

  {//Edit para o Pedido gravado anteriormente ---
  DMPedido.cdsDadosPedido.Close;
  DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
  DMPedido.cdsDadosPedido.Open;
  DMPedido.cdsDadosPedido.Edit;}

  if MessageBox(Application.Handle,'Deseja concluir este Pedido ?','Informação', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    if (Label8.Caption = '0')  or (DMPedido.cdsViewPedidoItens_SomaSOMA.AsFloat = StrToFloat('0,00')) then
    begin
      MessageBox(Application.Handle,PAnsiChar('Selecione um item para este Pedido para continuar! '), 'Informação', MB_ICONINFORMATION + MB_OK);
    end
    else
    begin
      //grava os dados do pedido
      //DMPedido.cdsDadosPedidoPED_DATA_ENTREGA.AsDateTime := DateTimePicker1.Date;
      //DMPedido.cdsDadosPedidoPED_DATA_MANUT.AsDateTime := StrToDate(Label17.Caption);
      //DMPedido.cdsDadosPedido.ApplyUpdates(-1);

      //define formas de parcelamento
(*
      Try
      Application.CreateForm(TFormParcelamentoPedido, FormParcelamentoPedido);
      FormParcelamentoPedido.ShowModal;
      Finally
      FormParcelamentoPedido.Free;
      End;

*)      //verifica se a operação foi cancelada para continuar
      if var_FormasParcelamentoCancelada = false then
      begin
        //grava formas de pagamento definidas anteriormente
        try
          Application.CreateForm(TFormAdiantamentosPedido, FormAdiantamentosPedido);
          FormAdiantamentosPedido.ShowModal;
        Finally
          FormAdiantamentosPedido.Free
        end;

        {if DMAdiantamentosPedido.cdsViewAdiantamentosPedido.RecordCount = 0 then
        begin
          // Edit - ajusta dados para gravar
          DMPedido.cdsDadosPedidoPED_VALOR_TOTAL.AsFloat := StrToFloat(Edit3.Caption);
          DMPedido.cdsDadosPedidoPED_DATA_ENTREGA.AsDateTime := DateTimePicker1.Date;
          // Edit - grava efetivamento os dados de Orçamento/Pedido
          DMPedido.cdsDadosPedido.ApplyUpdates(-1);
        end;//end of recordCount}

        //RadioButton3.Checked := true;
        //RadioButton4.Checked := false;
        Fnc_AtualizaDadosGridItens();
        Edit3.Caption := '0,00';
        DBEdit1.Clear;
        DBMemo1.Clear;
        Fnc_BarraTarefasBotaoAtivo('Concluir');
      end;//end of formasParceamentoCancelada
    end;//end of selecione um item
  end;//end of deseja concluir
  // atualiza grid do menu principal
  DMPrincipal.cdsViewManutencaoProduto.Close;
  DMPrincipal.cdsViewManutencaoProduto.Open;

  //limpar tela
  DMPedido.cdsViewPedido_Usuario.Close;
  ComboBox1.Clear;
  DMPedido.cdsViewPedidoItens.Close;
  DMPedido.cdsDadosPedidoItens.Close;
  DMPedido.cdsDadosPedido.Close;
  DMPedido.cdsViewPedidoItens_Soma.Close;

  Fnc_BarraTarefasBotaoAtivo('Concluir');

end;

procedure TFormPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{
DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Soma.Close;
  DMAdiantamentosPedido.qryViewAdiantamentosPedido_Soma.ParamByName('ID').AsInteger := StrToInt(Label8.Caption);
  DMAdiantamentosPedido.cdsViewAdiantamentosPedido_Soma.Open;
  if (Label8.Caption <> '0') and (DMPedido.cdsViewPedidoItens_SomaSOMA.AsFloat = DMAdiantamentosPedido.cdsViewAdiantamentosPedido_SomaSOMA.AsFloat) then
  begin }
    DMPedido.cdsViewPedidoItens.Close;
    DMPedido.cdsViewPedidoItens_Soma.Close;
    DMPedido.cdsViewPedido_Usuario.Close;
    DMPedido.cdsViewClienteCodigo.Close;
    DMPedido.cdsViewPedido_Cliente.Close;
    DMPedido.cdsDadosPedido.Close;
  {end
  else
  begin
    ShowMessage('gravar formas de pagamento!');
  end; }
end;

procedure TFormPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
  Act_Btn_Inserir.Execute;
  if key = vk_F3 then
  Act_Btn_Alterar.Execute;
  if key = vk_F4 then
  Act_Btn_Excluir.Execute;
  if key = vk_F5 then
  Act_Btn_Gravar.Execute;
  if key = vk_F6 then
  Act_Btn_Cancelar.Execute;
  if key = vk_F7 then
  Act_Btn_Sair.Execute;
end;

procedure TFormPedido.DateTimePicker1Change(Sender: TObject);
begin
if DateTimePicker1.DroppedDown = false then
keybd_event(39,0,0,0);
end;

procedure TFormPedido.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ComboBox1.Enabled = false then
    DBEdit3.SetFocus
    else
    ComboBox1.SetFocus;
  end;
end;

procedure TFormPedido.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DBEdit3.SetFocus;
end;

procedure TFormPedido.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DBEdit6.SetFocus;
end;

procedure TFormPedido.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DBEdit4.SetFocus;
end;

procedure TFormPedido.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  Act_Btn_Gravar.Execute;
end;

procedure TFormPedido.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DateTimePicker1.SetFocus;
end;

procedure TFormPedido.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  DBMemo1.SetFocus;
end;

procedure TFormPedido.DBEdit2Exit(Sender: TObject);
begin
  if DMPedido.cdsDadosPedidoItens.State in [DsInsert, DsEdit] then
  begin
    if DBEdit3.Text = '' then
    DBEdit3.Field.Value := 1;
    if DBEdit2.Text = '' then
    DBEdit2.Field.Value := 1;
    quant  := StrToFloat(DBEdit3.Text);
    v_unit := StrToFloat(DBEdit2.Text);
    //v_total:= StrToFloat(DBEdit4.Text);
    total := quant*v_unit;
    DBEdit4.Field.Value := FloatToStr(total);
  end;
end;

procedure TFormPedido.DBEdit3Exit(Sender: TObject);
begin
  //faça somente se estiver em modo de Inserção e Edição
  if DMPedido.cdsDadosPedidoItens.State in [DsInsert, DsEdit] then
  begin
    if DBEdit2.Text = '' then
    DBEdit2.Field.Value := 0;
    if DBEdit3.Text = '' then
    DBEdit3.Field.Value := 0;
    quant  := StrToFloat(DBEdit3.Text);
    v_unit := StrToFloat(DBEdit2.Text);
    //v_total:= StrToFloat(DBEdit4.Text);
    total := quant*v_unit;
    DBEdit4.Field.Value := FloatToStr(total);
  end;
end;

procedure TFormPedido.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DBEdit1.SetFocus;
end;

procedure TFormPedido.dbgItensSaidaDblClick(Sender: TObject);
begin
  Act_Btn_Alterar.Execute;
end;

procedure TFormPedido.bt_ImprimirDadosClienteExecute(Sender: TObject);
begin
  DMPedidoPrint.cdsViewPedidoPrint.Close;
  DMPedidoPrint.qryViewPedidoPrint.ParamByName('ID').AsInteger := StrToInt(FormPedido.Label8.Caption);
  DMPedidoPrint.cdsViewPedidoPrint.Open;
  try
    Application.CreateForm(TFormPedidoClientePrint, FormPedidoClientePrint);
    FormPedidoClientePrint.PedidoCliente.Preview;
  Finally
    FormPedidoClientePrint.Free
  end;
end;

procedure TFormPedido.bt_ImprimirPedidoExecute(Sender: TObject);
begin
  DMPedidoPrint.cdsViewPedidoPrint.Close;
  DMPedidoPrint.qryViewPedidoPrint.ParamByName('ID').AsInteger := StrToInt(FormPedido.Label8.Caption);
  DMPedidoPrint.cdsViewPedidoPrint.Open;
  try
    Application.CreateForm(TFormPedidoPrint, FormPedidoPrint);
    FormPedidoPrint.Pedido.Preview;
  Finally
    FormPedidoPrint.Free
  end;
end;

procedure TFormPedido.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DBEdit2.SetFocus;
end;

procedure TFormPedido.DBEdit6Exit(Sender: TObject);
var
    idOrc : Integer;
begin
  if DBEdit6.Text = '' then
  idOrc := 0 else idOrc := StrToInt(DBEdit6.Text);
  DMPedido.cdsViewPedido_VerificaOrcamento.Close;
  DMPedido.qryViewPedido_VerificaOrcamento.ParamByName('ID').AsInteger := idOrc;
  DMPedido.cdsViewPedido_VerificaOrcamento.Open;
  if (DMPedido.cdsViewPedido_VerificaOrcamento.RecordCount = 0) and (idOrc > 0) then
  begin
  MessageBox(Application.Handle,'Número de Orçamento não encontrado! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  DBEdit6.SetFocus;
  end
  else
  begin
    DBEdit2.Field.Text := FloatToStr(DMPedido.cdsViewPedido_VerificaOrcamentoORCPED_VALORPARCELADO.AsFloat);
  end;
end;

end.
