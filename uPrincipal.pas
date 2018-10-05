unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, AppEvnts, ExtCtrls, ImgList, ComCtrls, StdCtrls,
  ToolWin, Buttons, XPMan, Grids, DBGrids, jpeg, cxStyles, cxGraphics,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxEdit, cxScheduler, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerWeekView, cxControls, cxContainer, cxDateNavigator,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, WinSkinData, WinSkinStore,
  cxLookAndFeelPainters, dxSkinsdxNavBar2Painter, dxNavBarCollns,
  dxNavBarBase, dxNavBar, dxNavBarStyles;

type
  TFormPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Bevel1: TBevel;
    APanel: TPanel;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    ImageList1: TImageList;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    ActionList1: TActionList;
    Sobre: TAction;
    Logoff: TAction;
    Sair: TAction;
    Sis_Config: TAction;
    Act_Cad_Produto: TAction;
    Act_Cad_ProdutoTipo: TAction;
    Lanc_Orcamento: TAction;
    Act_Cad_Bancos: TAction;
    Cons_Produto: TAction;
    Cons_TipoProduto: TAction;
    Cons_Clientes: TAction;
    Act_Cad_Clientes: TAction;
    Act_Cad_Usuario: TAction;
    Lanc_Pedido: TAction;
    Cons_Pedido: TAction;
    Act_Cad_OrcTipo: TAction;
    Cons_Orcamento: TAction;
    Finc_Duplicatas: TAction;
    Finc_Recibo: TAction;
    Rel_Pedido: TAction;
    Rel_Orcamento: TAction;
    Rel_ItensPedido: TAction;
    Lanc_OrdemServico: TAction;
    Cons_OrdemServico: TAction;
    Sis_Emitente: TAction;
    Rel_EtiquetaClientes: TAction;
    menu: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Produto1: TMenuItem;
    ipodeProduto1: TMenuItem;
    Usurio1: TMenuItem;
    Usurio2: TMenuItem;
    Consulta1: TMenuItem;
    Cliente1: TMenuItem;
    N4: TMenuItem;
    BuscaOramentopedido1: TMenuItem;
    Pedido2: TMenuItem;
    ItensPedido1: TMenuItem;
    N7: TMenuItem;
    OrdemdeServico1: TMenuItem;
    Vendas1: TMenuItem;
    Oramentopedido1: TMenuItem;
    Pedido1: TMenuItem;
    N3: TMenuItem;
    OrdemServio1: TMenuItem;
    Relatrios1: TMenuItem;
    Oramentos1: TMenuItem;
    Pedido3: TMenuItem;
    N8: TMenuItem;
    EtiquetaClientes1: TMenuItem;
    Ajuda1: TMenuItem;
    Duplicatas1: TMenuItem;
    Recibo1: TMenuItem;
    Sistema1: TMenuItem;
    Configuraes2: TMenuItem;
    Sobre2: TMenuItem;
    N5: TMenuItem;
    Sair1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Produto2: TMenuItem;
    ipodeProduto3: TMenuItem;
    Bancos2: TMenuItem;
    Bancos3: TMenuItem;
    PopupMenu2: TPopupMenu;
    Produto3: TMenuItem;
    ipodeProduto4: TMenuItem;
    Cliente2: TMenuItem;
    Banco2: TMenuItem;
    PopupMenu3: TPopupMenu;
    Oramentopedido2: TMenuItem;
    XPManifest1: TXPManifest;
    PopupMenu4: TPopupMenu;
    Desmarcar1: TMenuItem;
    ApplicationEvents2: TApplicationEvents;
    ImageList2: TImageList;
    ActionList2: TActionList;
    bt_Visualizar: TAction;
    bt_ManutEfetuada: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    DBGrid1: TDBGrid;
    N9: TMenuItem;
    ComissoVendas1: TMenuItem;
    Act_Cad_ProdutoLinha: TAction;
    LinhaProduto1: TMenuItem;
    Act_Cad_Obras: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    SkinData1: TSkinData;
    SkinStore1: TSkinStore;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Act_Cad_ProdutoExecute(Sender: TObject);
    procedure Act_Cad_ProdutoTipoExecute(Sender: TObject);
    procedure ApplicationEvents1Activate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Lanc_OrcamentoExecute(Sender: TObject);
    procedure Cons_ProdutoExecute(Sender: TObject);
    procedure Cons_TipoProdutoExecute(Sender: TObject);
    procedure Cons_ClientesExecute(Sender: TObject);
    procedure Cons_BancoExecute(Sender: TObject);
    procedure Act_Cad_ClientesExecute(Sender: TObject);
    procedure LogoffExecute(Sender: TObject);
    procedure Act_Cad_UsuarioExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Lanc_PedidoExecute(Sender: TObject);
    procedure Cons_PedidoExecute(Sender: TObject);
    procedure Act_Cad_OrcTipoExecute(Sender: TObject);
    procedure ApplicationEvents2Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure bt_ManutEfetuadaExecute(Sender: TObject);
    procedure Cons_OrcamentoExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Finc_DuplicatasExecute(Sender: TObject);
    procedure Finc_ReciboExecute(Sender: TObject);
    procedure Sis_ConfigExecute(Sender: TObject);
    procedure Rel_PedidoExecute(Sender: TObject);
    procedure Rel_OrcamentoExecute(Sender: TObject);
    procedure Rel_ItensPedidoExecute(Sender: TObject);
    procedure Lanc_OrdemServicoExecute(Sender: TObject);
    procedure Cons_OrdemServicoExecute(Sender: TObject);
    procedure Sis_EmitenteExecute(Sender: TObject);
    procedure Act_Cad_ProdutoUpdate(Sender: TObject);
    procedure Act_Cad_ProdutoTipoUpdate(Sender: TObject);
    procedure Act_Cad_BancosUpdate(Sender: TObject);
    procedure Act_Cad_ClientesUpdate(Sender: TObject);
    procedure Act_Cad_UsuarioUpdate(Sender: TObject);
    procedure Act_Cad_OrcTipoUpdate(Sender: TObject);
    procedure Cons_ProdutoUpdate(Sender: TObject);
    procedure Cons_TipoProdutoUpdate(Sender: TObject);
    procedure Cons_ClientesUpdate(Sender: TObject);
    procedure Cons_BancoUpdate(Sender: TObject);
    procedure Cons_PedidoUpdate(Sender: TObject);
    procedure Cons_OrcamentoUpdate(Sender: TObject);
    procedure Cons_OrdemServicoUpdate(Sender: TObject);
    procedure Finc_DuplicatasUpdate(Sender: TObject);
    procedure Finc_ReciboUpdate(Sender: TObject);
    procedure Lanc_OrcamentoUpdate(Sender: TObject);
    procedure Lanc_PedidoUpdate(Sender: TObject);
    procedure Lanc_OrdemServicoUpdate(Sender: TObject);
    procedure Rel_PedidoUpdate(Sender: TObject);
    procedure Rel_OrcamentoUpdate(Sender: TObject);
    procedure Rel_ItensPedidoUpdate(Sender: TObject);
    procedure SairExecute(Sender: TObject);
    procedure Sis_ConfigUpdate(Sender: TObject);
    procedure Sis_EmitenteUpdate(Sender: TObject);
    procedure Rel_EtiquetaClientesExecute(Sender: TObject);
    procedure Act_Cad_ProdutoLinhaExecute(Sender: TObject);
    procedure Act_Cad_ObrasExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PanelCenter;
  public
    { Public declarations }
    var_principal : string;
    procedure Fnc_AtualizaGrid_Manutencao;

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses uCadProduto, uCadProdutoTipo, uCadClientes, uCadOrcamentoPedido,
  uCadBancos, uRelatorioProduto, uRelatorioTipoProduto, uRelatorioCliente,
  uRelatorioBanco, uFormBuscaOrcPed, uFormLogin, uFormCadUsuario, uDMLogin,
  uFormOrcamentoPedidoPrint, uFormBuscaClientes, uFormPedido,
  uFormBuscaPedido, uFormCadOrcamentoTipo, uDMOrcamentoPedido,
  uDMPrincipal, UDMPedido, uFormDuplicata, uFormRecibo_ContasReceber,
  uFormConfiguracoes, uFormRelatorioPedidos, uFormRelatorioOrcamentos,
  uFormRelatorioItensPedido, uFormOrdemServico, uFormBuscaOrdemServico,
  uCadEmitente, uDmMenuPermissao, uFormEtiquetaClientes,
  uFormEtiquetaClientePrint, uBibliotecaFuncoes, uCadLinhaProduto,
  uCadObras;

{$R *.dfm}

procedure TFormPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
  ShowMessage('F2 pressionada');
end;

procedure TFormPrincipal.Act_Cad_ProdutoExecute(Sender: TObject);
begin
  try
    FormCadProduto := TFormCadProduto.Create(Self);
    FormCadProduto.ShowModal;
  Finally
    FormCadProduto.Free
  end;
end;

procedure TFormPrincipal.Act_Cad_ProdutoTipoExecute(Sender: TObject);
begin
//
  try
    FormCadProdutoTipo := TFormCadProdutoTipo.Create(Self);
    FormCadProdutoTipo.ShowModal;
  Finally
    FormCadProdutoTipo.Free
  end;
end;

procedure TFormPrincipal.ApplicationEvents1Activate(Sender: TObject);
begin
  StatusBar1.Panels[3].Text := ' '+Application.Hint;
end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := ' '+FormatDateTime('  hh:nn:ss',Now);
end;

procedure TFormPrincipal.Sair2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFormLogin, FormLogin);
    FormLogin.ShowModal;
  Finally
    FormLogin.Free;
  end;
end;

procedure TFormPrincipal.Lanc_OrcamentoExecute(Sender: TObject);
begin
  try
    FormCadOrcamentoPedido := TFormCadOrcamentoPedido.Create(Self);
    FormCadOrcamentoPedido.FTipoOrcPedido := 'O';
    FormCadOrcamentoPedido.ShowModal;
  Finally
    FormCadOrcamentoPedido.Free
  end;
//  Fnc_AtualizaGrid_Manutencao;
end;

procedure TFormPrincipal.Cons_ProdutoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRelatorioProduto, FormRelatorioProduto);
    FormRelatorioProduto.ShowModal;
  Finally
    FormRelatorioProduto.Free
  end;
end;

procedure TFormPrincipal.Cons_TipoProdutoExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormRelatorioTipoProduto, FormRelatorioTipoProduto);
    FormRelatorioTipoProduto.ShowModal;
  Finally
    FormRelatorioTipoProduto.Free;
  End;
end;

procedure TFormPrincipal.Cons_ClientesExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormBuscaClientes, FormBuscaClientes);
    FormBuscaClientes.ShowModal;
  Finally
    FormBuscaClientes.Free
  end;
end;

procedure TFormPrincipal.Cons_BancoExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormRelatorioBanco, FormRelatorioBanco);
    FormRelatorioBanco.ShowModal;
  Finally
    FormRelatorioBanco.Free;
  End;
end;

procedure TFormPrincipal.Act_Cad_ClientesExecute(Sender: TObject);
begin
 try
    Application.CreateForm(TFormCadCliente, FormCadCliente);
    FormCadCliente.ShowModal;
  Finally
    FormCadCliente.Free
  end;
end;

procedure TFormPrincipal.LogoffExecute(Sender: TObject);
begin
  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.ShowModal;
  FormLogin.Destroy;
end;

procedure TFormPrincipal.Act_Cad_UsuarioExecute(Sender: TObject);
begin
 try
    Application.CreateForm(TFormCadUsuario, FormCadUsuario);
    FormCadUsuario.ShowModal;
  Finally
    FormCadUsuario.Free
  end;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  Caption := ':: Sistema de Gestão Comercial - VERSÃO '+AppVersion(Application.ExeName);
  PanelCenter;
  try
    Application.CreateForm(TFormLogin, FormLogin);
    FormLogin.ShowModal;
  Finally
    FormLogin.Free
  end;

  DMLogin.cdsDadosPrin.Open;
  StatusBar1.Panels[0].Text := FormatDateTime('  hh:nn:ss',Now);
  StatusBar1.Panels[1].Text := FormatDateTime('  dddd" , "dd" de "mmmmm" de "yyyyy',Now);
end;

procedure TFormPrincipal.Lanc_PedidoExecute(Sender: TObject);
begin
  try
    FormCadOrcamentoPedido := TFormCadOrcamentoPedido.Create(Self);
    FormCadOrcamentoPedido.FTipoOrcPedido := 'P';
    FormCadOrcamentoPedido.ShowModal;
  Finally
    FormCadOrcamentoPedido.Free
  end;
(*  try
    Application.CreateForm(TFormPedido, FormPedido);
    FormPedido.ShowModal;
  Finally
    FormPedido.Free
  end; *)
end;

procedure TFormPrincipal.Cons_PedidoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormBuscaPedido, FormBuscaPedido);
    FormBuscaPedido.ShowModal;
  Finally
    FormBuscaPedido.Free
  end;
end;

procedure TFormPrincipal.Act_Cad_OrcTipoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadOrcamentoTipo, FormCadOrcamentoTipo);
    FormCadOrcamentoTipo.ShowModal;
  Finally
    FormCadOrcamentoTipo.Free
  end;
end;

procedure TFormPrincipal.ApplicationEvents2Message(var Msg: tagMSG;
  var Handled: Boolean);
      var i: SmallInt;
begin
//  inherited;
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

procedure TFormPrincipal.bt_ManutEfetuadaExecute(Sender: TObject);
var
tipo : string;
begin
  if DMPrincipal.cdsViewPedidoManutencao.RecordCount > 0 then
  begin
      DMPedido.cdsDadosPedido.Close;
      DMPedido.qryDadosPedido.ParamByName('ID').AsInteger := DMPrincipal.cdsViewPedidoManutencao.FindField('ID').AsInteger;
      DMPedido.cdsDadosPedido.Open;
      DMPedido.cdsDadosPedido.Edit;
      DMPedido.cdsDadosPedidoPED_MANUT_EFETUADA.AsBoolean := True;
      DMPedido.cdsDadosPedido.ApplyUpdates(-1);
      Fnc_AtualizaGrid_Manutencao;
  end
  else
  begin
    MessageBox(Application.Handle,'É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TFormPrincipal.Fnc_AtualizaGrid_Manutencao;
begin
  DMPrincipal.cdsViewPedidoManutencao.Close;
  DMPrincipal.cdsViewPedidoManutencao.Open;
end;

procedure TFormPrincipal.Cons_OrcamentoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormBuscaOrcPed, FormBuscaOrcPed);
    FormBuscaOrcPed.ShowModal;
  Finally
    FormBuscaOrcPed.Free
  end;
  Fnc_AtualizaGrid_Manutencao;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
  Fnc_AtualizaGrid_Manutencao;
end;

procedure TFormPrincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (GdSelected in State) then
  begin
    Dbgrid1.Canvas.Brush.Color := clGradientInactiveCaption;

    if (DMPrincipal.cdsViewManutencaoProdutoMANUT_EFETUADA.AsBoolean = false) and
       (DMPrincipal.cdsViewManutencaoProdutoDATA_MANUT.AsDateTime <= Date) then
    DBGrid1.Canvas.Font.Color:= clRed
    else
    DBGrid1.Canvas.Font.Color  := clBlack;//clHighlight;
    //DBGrid1.Canvas.Font.Style  := [fsBold];
  end
  else
  begin

    if (DMPrincipal.cdsViewManutencaoProdutoMANUT_EFETUADA.AsBoolean = false) and
       (DMPrincipal.cdsViewManutencaoProdutoDATA_MANUT.AsDateTime <= Date) then
    DBGrid1.Canvas.Font.Color:= clRed
    else
    DBGrid1.Canvas.Font.Color := clDefault;

  end;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormPrincipal.Finc_DuplicatasExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormDuplicata, FormDuplicata);
    FormDuplicata.ShowModal;
  Finally
    FormDuplicata.Free
  end;
end;

procedure TFormPrincipal.Finc_ReciboExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRecibo_ContasReceber, FormRecibo_ContasReceber);
    FormRecibo_ContasReceber.ShowModal;
  Finally
    FormRecibo_ContasReceber.Free
  end;
end;

procedure TFormPrincipal.Sis_ConfigExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormConfiguracoes, FormConfiguracoes);
    FormConfiguracoes.ShowModal;
  Finally
    FormConfiguracoes.Free;
  end;
end;

procedure TFormPrincipal.Rel_PedidoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRelatorioPedidos, FormRelatorioPedidos);
    FormRelatorioPedidos.ShowModal;
  Finally
    FormRelatorioPedidos.Free;
  end;
end;

procedure TFormPrincipal.Rel_OrcamentoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRelatorioOrcamentos, FormRelatorioOrcamentos);
    FormRelatorioOrcamentos.ShowModal;
  Finally
    FormRelatorioOrcamentos.Free;
  end;
end;

procedure TFormPrincipal.Rel_ItensPedidoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRelatorioItensPedido, FormRelatorioItensPedido);
    FormRelatorioItensPedido.ShowModal;
  Finally
    FormRelatorioItensPedido.Free;
  end;
end;

procedure TFormPrincipal.Lanc_OrdemServicoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormOrdemServico, FormOrdemServico);
    FormOrdemServico.ShowModal;
  Finally
    FormOrdemServico.Free
  end;
end;

procedure TFormPrincipal.Cons_OrdemServicoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormBuscaOrdemServico, FormBuscaOrdemServico);
    FormBuscaOrdemServico.ShowModal;
  Finally
    FormBuscaOrdemServico.Free
  end;
end;

procedure TFormPrincipal.Sis_EmitenteExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCadEmitente, FormCadEmitente);
    FormCadEmitente.ShowModal;
  Finally
    FormCadEmitente.Free
  end;
end;

procedure TFormPrincipal.Act_Cad_ProdutoUpdate(Sender: TObject);
begin
  //Act_Cad_Produto.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CAD_PRODUTOS.AsBoolean);
end;

procedure TFormPrincipal.Act_Cad_ProdutoTipoUpdate(Sender: TObject);
begin
  //Act_Cad_ProdutoTipo.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CAD_TIPOPRODUTO.AsBoolean);
end;

procedure TFormPrincipal.Act_Cad_BancosUpdate(Sender: TObject);
begin
  //Act_Cad_Bancos.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CAD_BANCOS.AsBoolean);
end;

procedure TFormPrincipal.Act_Cad_ClientesUpdate(Sender: TObject);
begin
  //Act_Cad_Clientes.Visible := (DMMenuPermissao.cdsDados3Permissoes.FindField('MENUPERM_CAD_CLIENTES').AsBoolean);
end;

procedure TFormPrincipal.Act_Cad_UsuarioUpdate(Sender: TObject);
begin
  //Act_Cad_Usuario.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CAD_USUARIOS.AsBoolean);
end;

procedure TFormPrincipal.Act_Cad_OrcTipoUpdate(Sender: TObject);
begin
  Act_Cad_OrcTipo.Visible := false;//(DMMenuPermissao.cdsDados3PermissoesMENUPERM_CAD_TIPOORCAMENTO.AsBoolean);
end;

procedure TFormPrincipal.Cons_ProdutoUpdate(Sender: TObject);
begin
  //Cons_Produto.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CONS_PEDIDO.AsBoolean);
end;

procedure TFormPrincipal.Cons_TipoProdutoUpdate(Sender: TObject);
begin
  Cons_TipoProduto.Visible := false;//(DMMenuPermissao.cdsDados3PermissoesMENUPERM_CONS_PEDIDO.AsBoolean );
end;

procedure TFormPrincipal.Cons_ClientesUpdate(Sender: TObject);
begin
  //Cons_Clientes.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CONS_CLIENTES.AsBoolean);
end;

procedure TFormPrincipal.Cons_BancoUpdate(Sender: TObject);
begin
//  Cons_Banco.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CONS_CLIENTES.AsBoolean);
end;

procedure TFormPrincipal.Cons_PedidoUpdate(Sender: TObject);
begin
  Cons_Pedido.Visible := false;//(DMMenuPermissao.cdsDados3PermissoesMENUPERM_CONS_PEDIDO.AsBoolean);
end;

procedure TFormPrincipal.Cons_OrcamentoUpdate(Sender: TObject);
begin
  //Cons_Orcamento.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_CONS_ORCAMENTOS.AsBoolean);
end;

procedure TFormPrincipal.Cons_OrdemServicoUpdate(Sender: TObject);
begin
  Cons_OrdemServico.Visible := false;(DMMenuPermissao.cdsDados3PermissoesMENUPERM_CONS_ORDEMSERVICO.AsBoolean);
end;

procedure TFormPrincipal.Finc_DuplicatasUpdate(Sender: TObject);
begin
  //Finc_Duplicatas.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_FIN_DUPLICATA.AsBoolean);
end;

procedure TFormPrincipal.Finc_ReciboUpdate(Sender: TObject);
begin
  //Finc_Recibo.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_FIN_RECIBO.AsBoolean);
end;

procedure TFormPrincipal.Lanc_OrcamentoUpdate(Sender: TObject);
begin
  //Lanc_Orcamento.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_LAN_ORCAMENTO.AsBoolean);
end;

procedure TFormPrincipal.Lanc_PedidoUpdate(Sender: TObject);
begin
  Lanc_Pedido.Visible := true;//(DMMenuPermissao.cdsDados3PermissoesMENUPERM_LAN_PEDIDO.AsBoolean);
end;

procedure TFormPrincipal.Lanc_OrdemServicoUpdate(Sender: TObject);
begin
  Lanc_OrdemServico.Visible := false;//(DMMenuPermissao.cdsDados3PermissoesMENUPERM_LAN_PRDEMSERVICO.AsBoolean);
end;

procedure TFormPrincipal.Rel_PedidoUpdate(Sender: TObject);
begin
  //Rel_Pedido.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_REL_PEDIDO.AsBoolean);
end;

procedure TFormPrincipal.Rel_OrcamentoUpdate(Sender: TObject);
begin
  //Rel_Orcamento.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_REL_ORCAMENTO.AsBoolean);
end;

procedure TFormPrincipal.Rel_ItensPedidoUpdate(Sender: TObject);
begin
//  Rel_ItensPedido.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_REL_PEDIDO.AsBoolean);
end;

procedure TFormPrincipal.SairExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormLogin, FormLogin);
    FormLogin.ShowModal;
  Finally
    FormLogin.Free;
  end;
end;

procedure TFormPrincipal.Sis_ConfigUpdate(Sender: TObject);
begin
  Sis_Config.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_SIS_CONFIGURACOES.AsBoolean);
end;

procedure TFormPrincipal.Sis_EmitenteUpdate(Sender: TObject);
begin
  Sis_Emitente.Visible := (DMMenuPermissao.cdsDados3PermissoesMENUPERM_SIS_CADASTROEMITENTE.AsBoolean);
end;

procedure TFormPrincipal.Rel_EtiquetaClientesExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormEtiquetaClientes, FormEtiquetaClientes);
    FormEtiquetaClientes.ShowModal;
  Finally
    FormEtiquetaClientes.Free;
  End;
end;

procedure TFormPrincipal.PanelCenter;
begin
  APanel.Left := (FormPrincipal.ClientWidth div 2) - (APanel.Width div 2);
  APanel.Top := (FormPrincipal.ClientHeight div 2) - (APanel.Height div 2);
end;

procedure TFormPrincipal.Act_Cad_ProdutoLinhaExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFCadLinhaProd, FCadLinhaProd);
    FCadLinhaProd.ShowModal;
  Finally
    FCadLinhaProd.Free;
  End;
end;

procedure TFormPrincipal.Act_Cad_ObrasExecute(Sender: TObject);
begin
  Try
    Application.CreateForm(TFormCadObras, FormCadObras);
    FormCadObras.ShowModal;
  Finally
    FormCadObras.Free;
  End;
end;

end.
