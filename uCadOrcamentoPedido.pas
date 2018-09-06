unit uCadOrcamentoPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoBusca2, ActnList, ImgList, ToolWin, ComCtrls,
  Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, DB, DateUtils,
  Menus, AppEvnts, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, MyClientDataSet, DBXpress, SqlExpr,
  FMTBcd, Provider,Math, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TTipoCalculo = (tSoma,tSubtrai);

  TFormCadOrcamentoPedido = class(TFormPadraoBusca2)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    btnImprimir: TBitBtn;
    GroupBox1: TGroupBox;
    bt_BuscaCliente: TAction;
    GroupBox7: TGroupBox;
    Label9: TLabel;
    lblDataOrcPeddido: TLabel;
    bt_NovoOrcPedido: TAction;
    bt_Concluir_Parcelamento: TAction;
    PopupMenu1: TPopupMenu;
    bt_Excluir: TAction;
    Excluir1: TMenuItem;
    DBMemo1: TDBMemo;
    ApplicationEvents1: TApplicationEvents;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    btnBuscaCli: TSpeedButton;
    cbNomeCliente: TComboBox;
    lblValorTotalOrcPedido: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label19: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lblValorVenda: TLabel;
    Bevel4: TBevel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    prod_Inserir: TAction;
    prod_Alterar: TAction;
    prod_Excluir: TAction;
    Aces_Inserir: TAction;
    Aces_Alterar: TAction;
    Aces_Excluir: TAction;
    Inserir1: TMenuItem;
    Alterar1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    lblTotalPedido: TLabel;
    lblTotalAcessorio: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    bt_GerarPedido: TAction;
    bt_VerPedido: TAction;
    bt_Concluir: TAction;
    Label20: TLabel;
    Label21: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    dsTmpProduto: TDataSource;
    cxGrid1DBTableView1PROD_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PROD_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1PROD_UNIDMEDIDA: TcxGridDBColumn;
    cxGrid1DBTableView1PROD_ESPESSURA: TcxGridDBColumn;
    cxGrid1DBTableView1PROD_LARGURA: TcxGridDBColumn;
    cxGrid1DBTableView1PROD_ALTURA: TcxGridDBColumn;
    cxGrid1DBTableView1PROD_MEDIDA_METRO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsTmpAcessorio: TDataSource;
    edValorDesconto: TEdit;
    lblNumeroOrcPedido: TLabel;
    lblDescricaoOrcPedido: TLabel;
    Bevel5: TBevel;
    cdsTmpProduto: TMyClientDataSet;
    cdsTmpProdutoPROD_DESCRICAO: TStringField;
    cdsTmpProdutoPROD_VALOR: TFMTBCDField;
    cdsTmpProdutoPROD_UNIDMEDIDA: TStringField;
    cdsTmpProdutoPROD_ESPESSURA: TFMTBCDField;
    cdsTmpProdutoPROD_LARGURA: TFMTBCDField;
    cdsTmpProdutoPROD_ALTURA: TFMTBCDField;
    cdsTmpProdutoPROD_MEDIDA_METRO: TFMTBCDField;
    cdsTmpProdutoPROD_QUANTIDADE: TFloatField;
    cdsTmpProdutoPROD_VALOR_TOTAL: TFloatField;
    cdsTmpAcessorio: TMyClientDataSet;
    cdsTmpAcessorioPROD_DESCRICAO: TStringField;
    cdsTmpAcessorioPROD_VALOR: TFMTBCDField;
    cdsTmpAcessorioPROD_UNIDMEDIDA: TStringField;
    cdsTmpAcessorioPROD_ESPESSURA: TFMTBCDField;
    cdsTmpAcessorioPROD_LARGURA: TFMTBCDField;
    cdsTmpAcessorioPROD_ALTURA: TFMTBCDField;
    cdsTmpAcessorioPROD_MEDIDA_METRO: TFMTBCDField;
    cdsTmpAcessorioPROD_QUANTIDADE: TFloatField;
    cdsTmpAcessorioPROD_VALOR_TOTAL: TFloatField;
    btGerarPedido: TBitBtn;
    Label5: TLabel;
    edValorAcrescimo: TEdit;
    cdsTmpProdutoPROD_ACABAMENTO: TStringField;
    cdsTmpProdutoPROD_COR_ACABAMENTO: TStringField;
    cdsTmpProdutoPROD_QTDE_ACABAMENTO: TStringField;
    cxGrid1Level1: TcxGridLevel;
    dsAcabamento: TDataSource;
    cdsTmpProdutoPROD_HANDLE: TIntegerField;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2ITENS_ORCPED_ID: TcxGridDBColumn;
    cxGrid1DBTableView2TIPO_ACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView2ACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView2QTDE_ACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView2COR_ACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView2ITENS_PRODUTO: TcxGridDBColumn;
    cdsAcabamento: TClientDataSet;
    cdsAcabamentoITENS_ORCPED_ID: TIntegerField;
    cdsAcabamentoITENS_PRODUTO: TIntegerField;
    cdsAcabamentoTIPO_ACABAMENTO: TStringField;
    cdsAcabamentoACABAMENTO: TStringField;
    cdsAcabamentoQTDE_ACABAMENTO: TFloatField;
    cdsAcabamentoCOR_ACABAMENTO: TStringField;
    cxGrid1DBTableView1PROD_HANDLE: TcxGridDBColumn;
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure bt_BuscaClienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure dbgItensSaidaDblClick(Sender: TObject);
    procedure dbgItensSaidaKeyPress(Sender: TObject; var Key: Char);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure cbNomeClienteExit(Sender: TObject);
    procedure prod_InserirExecute(Sender: TObject);
    procedure prod_ExcluirExecute(Sender: TObject);
    procedure Aces_InserirExecute(Sender: TObject);
    procedure Aces_ExcluirExecute(Sender: TObject);
    procedure bt_VerPedidoExecute(Sender: TObject);
    procedure edValorDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edValorDescontoChange(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure bt_NovoOrcPedidoExecute(Sender: TObject);
    procedure bt_GerarPedidoExecute(Sender: TObject);
    procedure edValorAcrescimoChange(Sender: TObject);
    procedure edValorAcrescimoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FEditando : Boolean;
    FHandleOrcPedido: Integer;
    FHandleCliente : Integer;
    FValorTotalOrcPedido,
    FValorDesconto,
    FValorAcrescimo,
    FValorVenda : Extended;
    procedure CalcularDesconto;
    procedure CalcularAcrescimo;
    procedure getComboCliente;
    procedure LimparTela;
    function ValidaBotaoGravar:Boolean;
    function getNewHandle(TableName:String):Integer;
    procedure SetFHandleOrcPedido(const Value: Integer);
    property HandleOrcPedido : Integer read FHandleOrcPedido write SetFHandleOrcPedido;
    function ValidaBotaoInserirItens:Boolean;
    function ValidaBotaoExcluirItens(pCDS:TClientDataSet):Boolean;
    procedure Imprimir(pHandle:Integer);
    function getFTipoOrcPedido(Value:String):String;
    procedure ExcluirAcabamento(pHandle:Integer);
  public
    { Public declarations }
    FHandle : Integer;
    FTipoOrcPedido : String;
    FFormOrigem : String;
    FValorTotalProduto,
    FValorTotalAcessorio :Extended;

(*  ValorTotal := (FTotalProduto+FTotalAcessorio);
  ValorVenda := ((ValorTotal+FTotalAcrescimo)-FTotalDesconto);
    procedure CalcularValorVenda;

    FTotalDesconto: Extended;
    FTotalAcrescimo: Extended;
    FTotalProduto: Extended;
    FTotalAcessorio: Extended;
    ValorTotal : Extended;
    ValorVenda : Extended;
*)


    msg_verifica  : String;
    acaoPedido    : String;
    numeroPedido  : Integer;
    var_produto   : String;
    var_acessorio : String;
    var_somaValorTotalItens,var_somaValorTotalItensAcessorios : Double;
    var_FormasParcelamentoCancelada : Boolean;
    acaoOrcPed : string;
    var_porcentagem : string;
    var_acabamento : string;
    iItem : Integer;
    procedure Fnc_AtualizaDadosGridItens;
    function Fnc_RecuperaCodigoCliente:Boolean;
    procedure InserirProduto(pHandle:Integer;pDescricao: String;pValor:Extended; pUnidMedida:String;pEspessura, pLargura, pAltura, pMedida,pQuantidade,pValorTotal : Extended;pAcabamento,pQtdeAcabamento,pCorAcabamento:String);
    procedure InserirAcabamento(pCDS : TClientDataSet);overload;
    procedure InserirAcabamento(Value:String);overload;
    procedure InserirAcessorio(pDescricao: String;pValor:Extended; pUnidMedida:String; pEspessura, pLargura, pAltura, pMedida,pQuantidade,pValorTotal: Extended);
    procedure BuscaRegistros(pHandle:Integer=0);
    procedure GravarRegistros(pHandle:Integer;InfoTransacao:TTransactionDesc);
    procedure CalcularValorTotalOrcPedido(tipo:TTipoCalculo=tSoma;valor:Extended=0);
  end;

var
  FormCadOrcamentoPedido: TFormCadOrcamentoPedido;

implementation

uses uDMOrcamentoPedido,uBuscaCliente_OrcPedido, uBuscaProdutos_OrcPedido,
  uFormBuscaOrcPed, uFormOrcamentoPedidoPrint, uDMOrcamentoPedidoPrint,
  uCadOrcamentoPedido_Produtos, uCadOrcamentoPedido_Acessorios,
  uBibliotecaFuncoes, uDMConnection;

{$R *.dfm}

Function Fnc_OrcamentoPedidoMsg:String;
var
    msg_concluir : String;
begin
  Result := msg_concluir;
end;


procedure TFormCadOrcamentoPedido.Act_Btn_GravarExecute(Sender: TObject);
var Transacao: TTransactionDesc;
    FIdTransaction : Integer;
begin
  if not ValidaBotaoGravar then
    Exit;
  try

    if not Fnc_RecuperaCodigoCliente then
      Exit;
    FIdTransaction := 1;
    Transacao.TransactionID := FIdTransaction;
    Transacao.IsolationLevel:=  xilREADCOMMITTED;
    DMConnection.SQLConnection.StartTransaction(Transacao);

    GravarRegistros(FHandleOrcPedido,Transacao);

    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_ID.AsInteger       := FHandleOrcPedido;
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_CLI_ID.AsInteger   := FHandleCliente;
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_ORCTP_ID.AsInteger := 1;
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_USU_ID.AsInteger   := DMOrcamentoPedido.cdsViewOrcPedido_Usuario.FindField('USU_ID').AsInteger;
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_DATA.AsDateTime    := StrToDate(lblDataOrcPeddido.Caption);
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_MANUT_EFETUADA.AsBoolean := False;
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_PORCENTAGEM.AsString := 'Normal 0%';
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_TIPO.AsString := FTipoOrcPedido;

    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_VALOR_TOTAL.AsFloat  := StrToFloat(lblValorTotalOrcPedido.Caption);
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_DESCONTO.AsFloat     := StrToFloat(edValorDesconto.Text);
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_ACRESCIMO .AsFloat   := StrToFloat(edValorAcrescimo.Text);
    DMOrcamentoPedido.cdsDadosOrcPedidoORCPED_VALORVENDA.AsFloat   := StrToFloat(lblValorVenda.Caption);


    DMOrcamentoPedido.cdsDadosOrcPedido.ApplyUpdates(-1);

    if not DMOrcamentoPedido.cdsDadosOrcPedido_Itens.IsEmpty then
      DMOrcamentoPedido.cdsDadosOrcPedido_Itens.ApplyUpdates(-1);
    if not DMOrcamentoPedido.cdsDadosDeleteProdutoItens.IsEmpty then
      DMOrcamentoPedido.cdsDadosDeleteProdutoItens.ApplyUpdates(-1);

    if not DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItens.IsEmpty then
      DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItens.ApplyUpdates(-1);
    if not DMOrcamentoPedido.cdsDadosDeleteAcabamentoItens.IsEmpty then
      DMOrcamentoPedido.cdsDadosDeleteAcabamentoItens.ApplyUpdates(-1);

    if not DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorio.IsEmpty then
      DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorio.ApplyUpdates(-1);
    if not DMOrcamentoPedido.cdsDadosDeleteAcessorioItens.IsEmpty then
      DMOrcamentoPedido.cdsDadosDeleteAcessorioItens.ApplyUpdates(-1);

    DMConnection.SQLConnection.Commit(Transacao);
    ShowMessage('Dados gravados com sucesso.');
    Imprimir(HandleOrcPedido);
    Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
    LimparTela;
  except
    on E : Exception do
    begin
      DMConnection.SQLConnection.Rollback(Transacao);
      ShowMessage('Erro na operacao.'+#13+'Detalhe: '+E.Message);
    end;
  end;
end;




procedure TFormCadOrcamentoPedido.Act_Btn_InserirExecute(Sender: TObject);
begin
  FEditando := False;
  //orcpedido
  DMOrcamentoPedido.cdsDadosOrcPedido.Close;
  DMOrcamentoPedido.qryDadosOrcPedido.ParamByName('ORDPED_ID').AsInteger := 0;
  DMOrcamentoPedido.cdsDadosOrcPedido.Open;
  DMOrcamentoPedido.cdsDadosOrcPedido.Insert;
  HandleOrcPedido := getNewHandle('ORCAMENTOPEDIDOS');
  FHandleCliente := -1;
  DMOrcamentoPedido.cdsViewOrcPedido_Usuario.Open;
  DMOrcamentoPedido.cdsViewOrcPedido_Itens.Open;
  DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorio.Open;
  getComboCliente;
  GroupBox1.Caption := '  '+Act_Btn_Inserir.Hint+'  ';
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadOrcamentoPedido.Act_Btn_AlterarExecute(Sender: TObject);
begin
  if not(FFormOrigem='Consulta') then
  begin
    try
      FormBuscaOrcPed := TFormBuscaOrcPed.Create(Self);
      FormBuscaOrcPed.FFormOrigem:='OrcPedido';
      FormBuscaOrcPed.ShowModal;
      if not FOrmBuscaOrcPed.FCancelou then
      begin
        FEditando := True;
        BuscaRegistros(FormBuscaOrcPed.FHandle);
        GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
        Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
        btnImprimir.Enabled := true;
      end
      else
        FEditando := False;
    finally
      FormBuscaOrcPed.Free;
    end;
  end
  else
  begin
    FEditando := True;
    BuscaRegistros(FHandle);
    GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
    Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
    btnImprimir.Enabled := true;
  end;
end;

procedure TFormCadOrcamentoPedido.Act_Btn_SairExecute(Sender: TObject);
begin
  DMOrcamentoPedido.cdsDadosOrcPedido.Close;
  DMOrcamentoPedido.cdsViewOrcPedido_Itens.Close;
  Self.Close;
end;

procedure TFormCadOrcamentoPedido.Act_Btn_NovoExecute(Sender: TObject);
begin
  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Novo.Hint+'  ';
end;

procedure TFormCadOrcamentoPedido.Act_Btn_CancelarExecute(Sender: TObject);
begin
  LimparTela;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormCadOrcamentoPedido.bt_BuscaClienteExecute(Sender: TObject);
begin
  if not FEditando then
  begin
    if not(FHandleCliente=-1) then
      if not(FHandleCliente>0) then
        Exit;
  end
  else
    Exit;
  try
    FormBuscaCliente_OrcPedido := TFormBuscaCliente_OrcPedido.Create(Self);
    FormBuscaCliente_OrcPedido.FNomeCliente := cbNomeCliente.Text;
    FormBuscaCliente_OrcPedido.ShowModal;
  Finally
    FormBuscaCliente_OrcPedido.Free
  end;
  cbNomeCliente.Clear;
  DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Close;
  DMOrcamentoPedido.qryViewOrcPedido_Cliente.ParamByName('CLIENTE').AsString := '%' + cbNomeCliente.Text + '%';
  DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Open;
  while not DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Eof do
  begin
    cbNomeCliente.Items.Add(DMOrcamentoPedido.cdsViewOrcPedido_Cliente.FindField('CLI_CLIENTE').AsString);
    DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Next;
  end;
  cbNomeCliente.Text := DMOrcamentoPedido.cdsViewOrcPedido_BuscaClienteCLI_CLIENTE.AsString;
end;

procedure TFormCadOrcamentoPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaProduto.Close;
end;


procedure TFormCadOrcamentoPedido.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadOrcamentoPedido.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  Act_Btn_Localizar.Execute;
end;

procedure TFormCadOrcamentoPedido.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  Imprimir(HandleOrcPedido);
end;

procedure TFormCadOrcamentoPedido.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  {--- se pressionar enter executa busca cliente ---}
  if key = #13 then
  bt_BuscaCliente.Execute;
end;

procedure TFormCadOrcamentoPedido.Fnc_AtualizaDadosGridItens;
begin
  //acabamento
  DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.Close;
  DMOrcamentoPedido.qryViewOrcPedido_AcabamentoItens.ParamByName('ITENS_ID').AsInteger := FHandleOrcPedido;
  DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.Open;
  DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.First;
  while not DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.Eof do
  begin
    if not(cdsAcabamento.State=dsInsert) then
      cdsAcabamento.Insert;
    cdsAcabamentoITENS_ORCPED_ID.AsInteger := DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.FieldByName('ITENS_ORCPED_ID').AsInteger;
    cdsAcabamentoITENS_PRODUTO.AsInteger   := DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.FieldByName('ITEM_PRODUTO').AsInteger;
    cdsAcabamentoTIPO_ACABAMENTO.AsString  := DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.FieldByName('TIPO_PRODUTO').AsString;
    cdsAcabamentoACABAMENTO.AsString       := DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.FieldByName('DESCRICAO').AsString;
    cdsAcabamentoQTDE_ACABAMENTO.AsFloat   := DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.FieldByName('QUANTIDADE').AsFloat;
    cdsAcabamentoCOR_ACABAMENTO.AsString   := DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.FieldByName('COR').AsString;
    cdsAcabamento.Post;
    DMOrcamentoPedido.cdsViewOrcPedido_AcabamentoItens.Next;
  end;
// produto
  DMOrcamentoPedido.cdsViewOrcPedido_Itens.Close;
  DMOrcamentoPedido.qryViewOrcPedido_Itens.ParamByName('ORCPEDIDO_ID').AsInteger := FHandleOrcPedido;
  DMOrcamentoPedido.cdsViewOrcPedido_Itens.Open;
  DMOrcamentoPedido.cdsViewOrcPedido_Itens.First;
  while not DMOrcamentoPedido.cdsViewOrcPedido_Itens.Eof do
  begin
    InserirProduto(
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_PRODUTO.AsInteger,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_DESCRICAO.AsString,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_VALOR_UNIT.AsFloat,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_UNIDMEDIDA.AsString,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_ESPESSURA.AsFloat,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_LARGURA.AsFloat,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_ALTURA.AsFloat,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_MEDIDA_METRO.AsFloat,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_QUANTIDADE.AsFloat,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_VALOR_TOTAL.AsFloat,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_ACABAMENTO.AsString,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_QTDE_ACABAMENTO.AsString,
                   DMOrcamentoPedido.cdsViewOrcPedido_ItensITENS_COR_ACABAMENTO.AsString
                  );
    DMOrcamentoPedido.cdsViewOrcPedido_Itens.Next;
  end;
  //acessorio
  DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorio.Close;
  DMOrcamentoPedido.qryViewOrcPedido_ItensAcessorio.ParamByName('ORCPEDIDO_ID').AsInteger := FHandleOrcPedido;
  DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorio.Open;
  DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorio.First;
  while not DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorio.Eof do
  begin
    InserirAcessorio(
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_DESCRICAO.AsString,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_VALOR_UNIT.AsFloat,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_UNIDMEDIDA.AsString,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_ESPESSURA.AsFloat,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_LARGURA.AsFloat,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_ALTURA.AsFloat,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_MEDIDA_METRO.AsFloat,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_QUANTIDADE.AsFloat,
                     DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorioITENS_VALOR_TOTAL.AsFloat
                    );
    DMOrcamentoPedido.cdsViewOrcPedido_ItensAcessorio.Next;
  end;
end;

procedure TFormCadOrcamentoPedido.dbgItensSaidaDblClick(Sender: TObject);
begin
    BtnEditar.Click;
end;

procedure TFormCadOrcamentoPedido.dbgItensSaidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  BtnEditar.Click;
end;

procedure TFormCadOrcamentoPedido.bt_ExcluirExecute(Sender: TObject);
begin
  Act_Btn_Excluir.Execute;
end;

procedure TFormCadOrcamentoPedido.FormShow(Sender: TObject);
begin
  cdsAcabamento.Close;
  cdsAcabamento.CreateDataSet;
  cdsAcabamento.Open;
  FEditando := False;
  FHandleCliente := 0;
  cdsTmpProduto.Close;
  cdsTmpProduto.CreateDataSet;
  cdsTmpProduto.Open;
  cdsAcabamento.Close;
  cdsAcabamento.CreateDataSet;
  cdsAcabamento.Open;
  cdsTmpAcessorio.Close;
  cdsTmpAcessorio.CreateDataSet;
  cdsTmpAcessorio.Open;
  lblDataOrcPeddido.Caption := FormatDateTime('dd/mm/yyyy',Date);

  //lblValorTotalOrcPedido.Caption := '0,00';
  //lblValorVenda.Caption := '0,00';

  if ((FTipoOrcPedido='O') or (FTipoOrcPedido='ORCAMENTO')) then
    lblDescricaoOrcPedido.Caption:='ORÇAMENTO Nº'
  else
  if ((FTipoOrcPedido='P') or (FTipoOrcPedido='PEDIDO')) then
    lblDescricaoOrcPedido.Caption:='PEDIDO Nº';
  if FFormOrigem='Consulta' then
    Act_Btn_Alterar.Execute
  else
    Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

procedure TFormCadOrcamentoPedido.ApplicationEvents1Message(
  var Msg: tagMSG; var Handled: Boolean);
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

function TFormCadOrcamentoPedido.Fnc_RecuperaCodigoCliente:Boolean;
begin
  Result := (cbNomeCliente.Text<>'');
  if not Result then
    Exit;
  DMOrcamentoPedido.cdsViewClienteCodigo.Close;
  DMOrcamentoPedido.qryViewClienteCodigo.ParamByName('CLIENTE').AsString := cbNomeCliente.Text;
  DMOrcamentoPedido.cdsViewClienteCodigo.Open;
  Result := (DMOrcamentoPedido.cdsViewClienteCodigoCLI_ID.AsInteger > 0);
  if not Result then
  begin
    MessageBox(Application.Handle,'Selecione um Cliente válido! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    cbNomeCliente.SetFocus;
  end;
  FHandleCliente     := DMOrcamentoPedido.cdsViewClienteCodigoCLI_ID.AsInteger;
  cbNomeCliente.Text := DMOrcamentoPedido.cdsViewClienteCodigoCLI_CLIENTE.AsString;
  DMOrcamentoPedido.cdsViewClienteCodigo.Close;
end;



procedure TFormCadOrcamentoPedido.cbNomeClienteExit(Sender: TObject);
begin
  Fnc_RecuperaCodigoCliente;
end;


procedure TFormCadOrcamentoPedido.prod_InserirExecute(Sender: TObject);
begin
  if not ValidaBotaoInserirItens then
    Exit;
  try
    FormCadOrcamentoPedido_Produtos := TFormCadOrcamentoPedido_Produtos.Create(Self);
    FormCadOrcamentoPedido_Produtos.FHandleOrcPedido := FHandleOrcPedido;
    FormCadOrcamentoPedido_Produtos.ShowModal;
  Finally
    FormCadOrcamentoPedido_Produtos.Free
  end;
end;

procedure TFormCadOrcamentoPedido.prod_ExcluirExecute(Sender: TObject);
begin
  if not ValidaBotaoExcluirItens(cdsTmpProduto) then
    Exit;
  FValorTotalProduto := FValorTotalProduto-cdsTmpProdutoPROD_VALOR_TOTAL.AsFloat;
  lblTotalPedido.Caption := FormatFloat('0.00',FValorTotalProduto);
  CalcularValorTotalOrcPedido(tSubtrai,cdsTmpProdutoPROD_VALOR_TOTAL.AsFloat);
  ExcluirAcabamento(cdsTmpProdutoPROD_HANDLE.AsInteger);
  cdsTmpProduto.Delete;
end;

procedure TFormCadOrcamentoPedido.Aces_InserirExecute(Sender: TObject);
begin
  if not ValidaBotaoInserirItens then
    Exit;
  try
    FormCadOrcamentoPedido_Acessorios := TFormCadOrcamentoPedido_Acessorios.Create(Self);
    FormCadOrcamentoPedido_Acessorios.ShowModal;
  Finally
    FormCadOrcamentoPedido_Acessorios.Free
  end;
end;

procedure TFormCadOrcamentoPedido.Aces_ExcluirExecute(Sender: TObject);
begin
  if not ValidaBotaoExcluirItens(cdsTmpAcessorio) then
    Exit;
  FValorTotalAcessorio := FValorTotalAcessorio-cdsTmpAcessorioPROD_VALOR_TOTAL.AsFloat;
  lblTotalAcessorio.Caption := FormatFloat('0.00',FValorTotalAcessorio);
  CalcularValorTotalOrcPedido(tSubtrai,cdsTmpAcessorioPROD_VALOR_TOTAL.AsFloat);
  cdsTmpAcessorio.Delete;
end;


procedure TFormCadOrcamentoPedido.bt_VerPedidoExecute(Sender: TObject);
begin
  ShowMessage('Ver');
end;

procedure TFormCadOrcamentoPedido.InserirProduto(pHandle:Integer;pDescricao: String;pValor:Extended; pUnidMedida:String; pEspessura, pLargura, pAltura, pMedida,pQuantidade,pValorTotal: Extended;
                                                 pAcabamento,pQtdeAcabamento,pCorAcabamento:String);
begin
  if not(cdsTmpProduto.State=dsInsert) then
    cdsTmpProduto.Insert;
  cdsTmpProdutoPROD_HANDLE.AsInteger     := pHandle;
  cdsTmpProdutoPROD_DESCRICAO.AsString   := pDescricao;
  cdsTmpProdutoPROD_VALOR.AsFloat        := pValor;
  cdsTmpProdutoPROD_UNIDMEDIDA.AsString  := pUnidMedida;
  cdsTmpProdutoPROD_ESPESSURA.AsFloat    := pEspessura;
  cdsTmpProdutoPROD_LARGURA.AsFloat      := pLargura;
  cdsTmpProdutoPROD_ALTURA.AsFloat       := pAltura;
  cdsTmpProdutoPROD_MEDIDA_METRO.AsFloat := pMedida;
  cdsTmpProdutoPROD_QUANTIDADE.AsFloat   := pQuantidade;

  FValorTotalProduto := FValorTotalProduto+pValorTotal;

  cdsTmpProdutoPROD_VALOR_TOTAL.AsFloat  := pValorTotal;
  cdsTmpProdutoPROD_ACABAMENTO.AsString  := pAcabamento;
  If(pQtdeAcabamento='') then
    pQtdeAcabamento := '0';
  cdsTmpProdutoPROD_QTDE_ACABAMENTO.AsString := pQtdeAcabamento;
  cdsTmpProdutoPROD_COR_ACABAMENTO.AsString  := pCOrAcabamento;
  cdsTmpProduto.Post;
  lblTotalPedido.Caption := FormatFloat('0.00',FValorTotalProduto);
  CalcularValorTotalOrcPedido(tSoma,pValorTotal);
end;

procedure TFormCadOrcamentoPedido.InserirAcessorio(pDescricao: String;pValor: Extended; pUnidMedida: String; pEspessura, pLargura, pAltura,pMedida, pQuantidade, pValorTotal: Extended);
begin
  if not(cdsTmpAcessorio.State=dsInsert) then
    cdsTmpAcessorio.Insert;
  cdsTmpAcessorioPROD_DESCRICAO.AsString   := pDescricao;
  cdsTmpAcessorioPROD_VALOR.AsFloat        := pValor;
  cdsTmpAcessorioPROD_UNIDMEDIDA.AsString  := pUnidMedida;
  cdsTmpAcessorioPROD_ESPESSURA.AsFloat    := pEspessura;
  cdsTmpAcessorioPROD_LARGURA.AsFloat      := pLargura;
  cdsTmpAcessorioPROD_ALTURA.AsFloat       := pAltura;
  cdsTmpAcessorioPROD_MEDIDA_METRO.AsFloat := pMedida;
  cdsTmpAcessorioPROD_QUANTIDADE.AsFloat   := pQuantidade;

  FValorTotalAcessorio := FValorTotalAcessorio+pValorTotal;

  cdsTmpAcessorioPROD_VALOR_TOTAL.AsFloat  := pValorTotal;
  cdsTmpAcessorio.Post;
  lblTotalAcessorio.Caption := FormatFloat('0.00',FValorTotalAcessorio);
  CalcularValorTotalOrcPedido(tSoma,pValorTotal);
end;

procedure TFormCadOrcamentoPedido.BuscaRegistros(pHandle:Integer=0);
var NomeCliente : string;
begin
  if not(pHandle>0) then
  begin
    MessageBox(Application.Handle,'Seleciono um registro.', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  HandleOrcPedido := pHandle;
  //ORCPEDIDO
  DMOrcamentoPedido.cdsDadosOrcPedido.Close;
  DMOrcamentoPedido.qryDadosOrcPedido.ParamByName('ORDPED_ID').AsInteger := FHandleOrcPedido;
  DMOrcamentoPedido.cdsDadosOrcPedido.Open;
  DMOrcamentoPedido.cdsDadosOrcPedido.Edit;

  Fnc_AtualizaDadosGridItens;

  lblNumeroOrcPedido.Caption := IntToStr(FHandleOrcPedido);
  btGerarPedido.Enabled := (DMOrcamentoPedido.cdsViewOrcPedido_BuscaTIPODOC.AsString='ORCAMENTO');
  if (DMOrcamentoPedido.cdsViewOrcPedido_BuscaTIPODOC.AsString='ORCAMENTO') then
    lblDescricaoOrcPedido.Caption:='ORÇAMENTO Nº'
  else
    lblDescricaoOrcPedido.Caption:='PEDIDO Nº';

  edValorDesconto.Text           := FormatFloat('0.00', DMOrcamentoPedido.cdsViewOrcPedido_BuscaORCPED_DESCONTO.AsFloat);
  edValorAcrescimo.Text          := FormatFloat('0.00', DMOrcamentoPedido.cdsViewOrcPedido_BuscaORCPED_ACRESCIMO.AsFloat);
  lblValorTotalOrcPedido.Caption := FormatFloat('0.00', DMOrcamentoPedido.cdsViewOrcPedido_BuscaORCPED_VALOR_TOTAL.AsFloat);
  lblValorVenda.Caption          := FormatFloat('0.00', DMOrcamentoPedido.cdsViewOrcPedido_BuscaORCPED_VALORVENDA.AsFloat);

  lblDataOrcPeddido.Caption      := DateTimeToStr(DMOrcamentoPedido.cdsViewOrcPedido_BuscaORCPED_DATA.AsDateTime);
  FHandleCliente := DMOrcamentoPedido.cdsViewOrcPedido_Busca.FindField('CLIENTE_ID').AsInteger;
  NomeCliente    := DMOrcamentoPedido.cdsViewOrcPedido_Busca.FindField('CLIENTE').AsString;
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.Close;
  DMOrcamentoPedido.qryViewOrcPedido_BuscaCliente.ParamByName('NOME').AsString := NomeCliente;
  DMOrcamentoPedido.cdsViewOrcPedido_BuscaCliente.Open;
  cbNomeCliente.Text := NomeCliente;
  cbNomeCliente.Enabled := false;
  DMOrcamentoPedido.cdsViewOrcPedido_Usuario.Open;
end;

procedure TFormCadOrcamentoPedido.CalcularValorTotalOrcPedido(tipo:TTipoCalculo=tSoma;valor:Extended=0);
begin
  if tipo=tSoma then
  begin
    FValorTotalOrcPedido := ((FValorTotalProduto+FValorTotalAcessorio)+FValorAcrescimo)-FValorDesconto;
    CalcularDesconto;
    CalcularAcrescimo;
    lblValorTotalOrcPedido.Caption := FormatFloat('0.00',FValorTotalOrcPedido);
  end;
  if tipo=tSubtrai then
  begin
    FValorTotalOrcPedido := FValorTotalOrcPedido-valor;
    lblValorTotalOrcPedido.Caption := FormatFloat('0.00',FValorTotalOrcPedido);
    CalcularDesconto;
    CalcularAcrescimo;
  end;
end;

procedure TFormCadOrcamentoPedido.edValorDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  NumericalKey(key);
end;

procedure TFormCadOrcamentoPedido.CalcularDesconto;
begin
  if edValorDesconto.Text='' then
    edValorDesconto.Text :='0';
  FValorDesconto := StrToFloat(edValorDesconto.Text);
  FValorVenda := ((FValorTotalOrcPedido-FValorDesconto)+FValorAcrescimo);
  lblValorVenda.Caption := FormatFloat('0.00',FValorVenda);
end;

procedure TFormCadOrcamentoPedido.edValorDescontoChange(Sender: TObject);
begin
  if edValorDesconto.Text='' then
    FValorDesconto := 0
  else
    FValorDesconto := StrToFloat(edValorDesconto.Text);
  CalcularDesconto;
  CalcularAcrescimo;
end;

procedure TFormCadOrcamentoPedido.getComboCliente;
begin
  if not cbNomeCliente.Enabled then
    cbNomeCliente.Enabled := True;
  DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Close;
  DMOrcamentoPedido.qryViewOrcPedido_Cliente.ParamByName('CLIENTE').AsString := '%' + cbNomeCliente.Text + '%';
  DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Open;
  while not DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Eof do
  begin
    cbNomeCliente.Items.Add(DMOrcamentoPedido.cdsViewOrcPedido_Cliente.FindField('CLI_CLIENTE').AsString);
    DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Next;
  end;
end;

procedure TFormCadOrcamentoPedido.LimparTela;
begin
  FEditando := False;
  HandleOrcPedido := 0;
  FHandleCliente := 0;
  cbNomeCliente.Clear;
  //DMOrcamentoPedido.cdsViewOrcPedido_Cliente.Close;
  lblNumeroOrcPedido.Caption := '0';

  cdsTmpProduto.EmptyDataSet;
  cdsTmpAcessorio.EmptyDataSet;
  cdsAcabamento.EmptyDataSet;
  
  lblTotalPedido.Caption := '0,00';
  lblTotalAcessorio.Caption := '0,00';
  DMOrcamentoPedido.cdsDadosOrcPedido.Close;
  lblValorTotalOrcPedido.Caption := '0,00';
  edValorDesconto.Clear;
  lblValorVenda.Caption := '0,00';
  DMOrcamentoPedido.cdsViewOrcPedido_Usuario.Close;
  btnImprimir.Enabled := False;
end;

procedure TFormCadOrcamentoPedido.BtnExcluirClick(Sender: TObject);
begin
  try
    FormBuscaOrcPed := TFormBuscaOrcPed.Create(Self);
    FormBuscaOrcPed.FFormOrigem:='OrcPedido';
    FormBuscaOrcPed.ShowModal;
    if (pos(lblDescricaoOrcPedido.Caption,'PEDIDO')>0) then
    begin
      MessageBox(Application.Handle,'Não é possivel apagar um Pedido.', 'Informação', MB_ICONINFORMATION + MB_OK);
      Exit;
    end;
    if MessageBox(Application.Handle,PAnsiChar('Deseja Excluir o Orçamento Numero '+#13+IntToStr(FormBuscaOrcPed.FHandle)+'?'),'Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      MessageBox(Application.Handle,'Pedido excluído com sucesso.', 'Informação', MB_ICONINFORMATION + MB_OK);
    end;
  finally
    FormBuscaOrcPed.Free;
  end;
  GroupBox1.Caption := '  '+Act_Btn_Excluir.Hint+'  ';
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
end;

function TFormCadOrcamentoPedido.ValidaBotaoGravar: Boolean;
var
    msg_1,msg_2,msg_3 : string;
begin
  if cbNomeCliente.Text = '' then
    msg_1 := ' - Cliente'+#13
  else
    msg_1 := '';

  if ((StrToFloat(lblTotalPedido.Caption) = 0) and (StrToFloat(lblTotalAcessorio.Caption) = 0)) then
    msg_2 := ' - Itens'+#13
  else
    msg_2 := '';

  if (DBLookupComboBox1.Text = '') then
    msg_3 := ' - Funcionário'+#13
  else
    msg_3 := '';
  msg_verifica := msg_1+msg_2+msg_3;
  Result := (msg_verifica='');
  if not Result then
    MessageBox(Application.Handle,PAnsiChar(' Verifique os dados de preenchimento obrigatório:  '+#13+msg_verifica+''), 'Informação', MB_ICONINFORMATION + MB_OK);
end;


procedure TFormCadOrcamentoPedido.GravarRegistros(pHandle: Integer;InfoTransacao:TTransactionDesc);
var p1, p2 : Pointer;
begin
  if pHandle=0 then
    Exit;

  cdsTmpProduto.First;
  p1 := cdsTmpProduto.GetBookmark;
  cdsTmpProduto.DisableControls;
  //APAGA ITENS PRODUTO
  DMOrcamentoPedido.cdsDadosDeleteProdutoItens.Close;
  DMOrcamentoPedido.qryDadosDeleteProdutoItens.ParamByName('ID').AsInteger := pHandle;
  DMOrcamentoPedido.cdsDadosDeleteProdutoItens.Open;
  if not DMOrcamentoPedido.cdsDadosDeleteProdutoItens.IsEmpty then
    DMOrcamentoPedido.cdsDadosDeleteProdutoItens.Delete;

  DMOrcamentoPedido.cdsDadosOrcPedido_Itens.Close;
  DMOrcamentoPedido.qryDadosOrcPedido_Itens.ParamByName('ITENS_ID').AsInteger := 0;
  DMOrcamentoPedido.cdsDadosOrcPedido_Itens.Open;
  while not cdsTmpProduto.Eof do
  begin
    //GRAVA ITENS PRODUTO
    if not(DMOrcamentoPedido.cdsDadosOrcPedido_Itens.State=dsInsert) then
      DMOrcamentoPedido.cdsDadosOrcPedido_Itens.Insert;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_ID.AsInteger          := getNewHandle('PRODUTO_ITENS');
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_ORCPED_ID.AsInteger   := pHandle;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_PRODUTO.AsInteger     := cdsTmpProdutoPROD_HANDLE.AsInteger;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_SEQUE.AsInteger       := 0;//cdsTmpProduto.RecNo;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_DESCRICAO.AsString    := cdsTmpProdutoPROD_DESCRICAO.AsString;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_VALOR_UNIT.AsFloat    := cdsTmpProdutoPROD_VALOR.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_UNIDMEDIDA.AsString   := cdsTmpProdutoPROD_UNIDMEDIDA.AsString;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_ESPESSURA.AsFloat     := cdsTmpProdutoPROD_ESPESSURA.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_LARGURA.AsFloat       := cdsTmpProdutoPROD_LARGURA.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_ALTURA.AsFloat        := cdsTmpProdutoPROD_ALTURA.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_MEDIDA_METRO.AsFloat  := cdsTmpProdutoPROD_MEDIDA_METRO.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_QUANTIDADE.AsFloat    := cdsTmpProdutoPROD_QUANTIDADE.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensITENS_VALOR_TOTAL.AsFloat   := cdsTmpProdutoPROD_VALOR_TOTAL.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_Itens.Post;
    cdsTmpProduto.Next;
  end;
  cdsTmpProduto.GotoBookmark(p1);
  cdsTmpProduto.EnableControls;

  //APAGA ITENS ACABAMENTO
  DMOrcamentoPedido.cdsDadosDeleteAcabamentoItens.Close;
  DMOrcamentoPedido.qryDadosDeleteAcabamentoItens.ParamByName('ID').AsInteger := pHandle;
  DMOrcamentoPedido.cdsDadosDeleteAcabamentoItens.Open;
  if not DMOrcamentoPedido.cdsDadosDeleteAcabamentoItens.IsEmpty then
    DMOrcamentoPedido.cdsDadosDeleteAcabamentoItens.Delete;
  //GRAVA ITENS ACABAMENTO
  cdsAcabamento.First;
  while not cdsAcabamento.Eof do
  begin
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItens.Open;
    if not(DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItens.State=dsInsert) then
      DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItens.Insert;
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItensITEM_ID.AsInteger            := getNewHandle('ACABAMENTO_ITENS');
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItensITENS_ORCPED_ID.AsInteger    := pHandle;
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItensITEM_PRODUTO.AsInteger       := cdsAcabamentoITENS_PRODUTO.AsInteger;
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItensTIPO_PRODUTO.AsString        := cdsAcabamentoTIPO_ACABAMENTO.AsString;
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItensDESCRICAO.AsString           := cdsAcabamentoACABAMENTO.AsString;
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItensQUANTIDADE.AsFloat           := cdsAcabamentoQTDE_ACABAMENTO.AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItensCOR.AsString                 := cdsAcabamentoCOR_ACABAMENTO.AsString;
    DMOrcamentoPedido.cdsDadosOrcPedido_AcabamentoItens.Post;
    cdsAcabamento.Next;
  end;

  //APAGA ITENS ACESSORIO
  DMOrcamentoPedido.cdsDadosDeleteAcessorioItens.Close;
  DMOrcamentoPedido.qryDadosDeleteAcessorioItens.ParamByName('ID').AsInteger := pHandle;
  DMOrcamentoPedido.cdsDadosDeleteAcessorioItens.Open;
  if not DMOrcamentoPedido.cdsDadosDeleteAcessorioItens.IsEmpty then
    DMOrcamentoPedido.cdsDadosDeleteAcessorioItens.Delete;
  //GRAVA ACESSORIO
  cdsTmpAcessorio.First;
  p2 := cdsTmpAcessorio.GetBookmark;
  cdsTmpAcessorio.DisableControls;
  while not cdsTmpAcessorio.Eof do
  begin
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorio.Open;
    if not(DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorio.State=dsInsert) then
      DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorio.Insert;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_ID.AsInteger         := getNewHandle('ACESSORIOS_ITENS');
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_ORCPED_ID.AsInteger  := pHandle;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_SEQUE.AsInteger      := 0;//cdsTmpAcessorio.RecNo;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_DESCRICAO.AsString   := cdsTmpAcessorio.FieldByName('PROD_DESCRICAO').AsString;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_VALOR_UNIT.AsFloat   := cdsTmpAcessorio.FieldByName('PROD_VALOR').AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_UNIDMEDIDA.AsString  := cdsTmpAcessorio.FieldByName('PROD_UNIDMEDIDA').AsString;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_ESPESSURA.AsFloat    := cdsTmpAcessorio.FieldByName('PROD_ESPESSURA').AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_LARGURA.AsFloat      := cdsTmpAcessorio.FieldByName('PROD_LARGURA').AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_ALTURA.AsFloat       := cdsTmpAcessorio.FieldByName('PROD_ALTURA').AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_MEDIDA_METRO.AsFloat := cdsTmpAcessorio.FieldByName('PROD_MEDIDA_METRO').AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_QUANTIDADE.AsFloat   := cdsTmpAcessorio.FieldByName('PROD_QUANTIDADE').AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorioITENS_VALOR_TOTAL.AsFloat  := cdsTmpAcessorio.FieldByName('PROD_VALOR_TOTAL').AsFloat;
    DMOrcamentoPedido.cdsDadosOrcPedido_ItensAcessorio.Post;
    cdsTmpAcessorio.Next;
  end;
  cdsTmpAcessorio.GotoBookmark(p2);
  cdsTmpAcessorio.EnableControls;
end;

procedure TFormCadOrcamentoPedido.bt_NovoOrcPedidoExecute(Sender: TObject);
begin
//  inherited;
end;

function TFormCadOrcamentoPedido.getNewHandle(TableName:String): Integer;
begin
  try
    dmOrcamentoPedido.cdsGetNewHandle.Close;
    dmOrcamentoPedido.qryGetNewHandle.SQL.Clear;                 
    dmOrcamentoPedido.qryGetNewHandle.SQL.Text := 'SELECT GEN_ID(GEN_'+TableName+',1) FROM RDB$DATABASE';
    dmOrcamentoPedido.cdsGetNewHandle.Open;
    Result := dmOrcamentoPedido.cdsGetNewHandleGEN_ID.AsInteger;
  Except
    on E : Exception do
    begin
      ShowMessage('Erro na operacao.'+#13+'Detalhe:'+E.Message);
    end;
  end;
end;

procedure TFormCadOrcamentoPedido.SetFHandleOrcPedido(const Value: Integer);
begin
  FHandleOrcPedido := Value;
  lblNumeroOrcPedido.Caption := IntToStr(FHandleOrcPedido);
end;

function TFormCadOrcamentoPedido.ValidaBotaoInserirItens: Boolean;
begin
  Result := (FHandleCliente>0);
end;

function TFormCadOrcamentoPedido.ValidaBotaoExcluirItens(pCDS: TClientDataSet): Boolean;
begin
  Result := not(pCDS.IsEmpty);
end;

procedure TFormCadOrcamentoPedido.Imprimir(pHandle:Integer);
var i : Integer;
begin
  Try
    for i := 1 to 2 do
    begin
      FormOrcamentoPedidoPrint := TFormOrcamentoPedidoPrint.Create(Self);
      FormOrcamentoPedidoPrint.FBand1Titulo := getFTipoOrcPedido(FTipoOrcPedido);
      FormOrcamentoPedidoPrint.FNumeroOrcPedido := pHandle;
      FormOrcamentoPedidoPrint.FImprimeValores := (i=1);
      FormOrcamentoPedidoPrint.FTotalPedido    := lblTotalPedido.Caption;
      FormOrcamentoPedidoPrint.FTotalAcessorio := lblTotalAcessorio.Caption;
      FormOrcamentoPedidoPrint.FDesconto       := edValorDesconto.Text;
      FormOrcamentoPedidoPrint.FTotalVenda     := lblValorVenda.Caption;
      FormOrcamentoPedidoPrint.FTotal          := lblValorTotalOrcPedido.Caption;

      FormOrcamentoPedidoPrint.OrcamentoPedido.Preview;
      if (i=1) then
        FormOrcamentoPedidoPrint.Free;
    end;
  Finally
    FormOrcamentoPedidoPrint.Free;
  End;
end;

procedure TFormCadOrcamentoPedido.bt_GerarPedidoExecute(Sender: TObject);
begin
  inherited;
  FTipoOrcPedido := 'P';
  Act_Btn_Gravar.Execute;
end;

function TFormCadOrcamentoPedido.getFTipoOrcPedido(Value: String): String;
begin
  if (Value='O') or (Value='ORCAMENTO') then
    Result := 'ORÇAMENTO'
  else
  if (Value='P') or (Value='PEDIDO') then
    Result := 'PEDIDO';
end;

procedure TFormCadOrcamentoPedido.edValorAcrescimoChange(Sender: TObject);
begin
  inherited;
  if edValorAcrescimo.Text='' then
    FValorAcrescimo:= 0
  else
    FValorAcrescimo:= StrToFloat(edValorAcrescimo.Text);
  CalcularDesconto;
  CalcularAcrescimo;
end;

procedure TFormCadOrcamentoPedido.CalcularAcrescimo;
begin
  if edValorAcrescimo.Text='' then
    edValorAcrescimo.Text :='0';
  FValorAcrescimo := StrToFloat(edValorAcrescimo.Text);
  FValorVenda := ((FValorTotalOrcPedido-FValorDesconto)+FValorAcrescimo);
  lblValorVenda.Caption := FormatFloat('0.00',FValorVenda);
end;


//procedure TFormCadOrcamentoPedido.InserirAcabamento(pHandle: Integer;pAcabamento: String; pQtdeAcabamento: Integer; pCorAcabamento: String);
//begin
//  cdsAcabamento.EmptyDataSet;
//  if not(cdsAcabamento.State=dsInsert) then
//    cdsAcabamento.Insert;
//end;

procedure TFormCadOrcamentoPedido.InserirAcabamento(pCDS : TClientDataSet);
begin
  if not pCDS.IsEmpty then
  begin
    while not pCDS.Eof do
    begin
      if not(cdsAcabamento.State=dsInsert) then
        cdsAcabamento.Insert;
      cdsAcabamentoITENS_ORCPED_ID.AsInteger := pCDS.FieldByName('ITENS_ORCPED_ID').AsInteger;
      cdsAcabamentoITENS_PRODUTO.AsInteger   := pCDS.FieldByName('ITENS_PRODUTO').AsInteger;
      cdsAcabamentoTIPO_ACABAMENTO.AsString  := pCDS.FieldByName('TIPO_ACABAMENTO').AsString;
      cdsAcabamentoACABAMENTO.AsString       := pCDS.FieldByName('ACABAMENTO').AsString;
      cdsAcabamentoQTDE_ACABAMENTO.AsFloat   := pCDS.FieldByName('QTDE_ACABAMENTO').AsFloat;
      cdsAcabamentoCOR_ACABAMENTO.AsString   := pCDS.FieldByName('COR_ACABAMENTO').AsString;
      cdsAcabamento.Post;
      pCDS.Next;
    end;
  end;
end;

procedure TFormCadOrcamentoPedido.InserirAcabamento(Value: String);
begin
  ShowMessage(Value);
end;

procedure TFormCadOrcamentoPedido.edValorAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  NumericalKey(key);
end;

procedure TFormCadOrcamentoPedido.ExcluirAcabamento(pHandle: Integer);
begin
  cdsAcabamento.First;
  while not cdsAcabamento.Eof do
  begin
    if cdsAcabamentoITENS_PRODUTO.AsInteger=pHandle then
      cdsAcabamento.Delete
    else
      cdsAcabamento.Next;
  end;
end;

end.
