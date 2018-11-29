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
  dxNavBarBase, dxNavBar, dxNavBarStyles, dxSkinscxPCPainter, frxClass;

type
  TFormPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Bevel1: TBevel;
    APanel: TPanel;
    ImageList1: TImageList;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    ActionList1: TActionList;
    Sobre: TAction;
    Logoff: TAction;
    Sair: TAction;
    Sis_Config: TAction;
    Est_Produto: TAction;
    Est_TipoProduto: TAction;
    Lanc_Orcamento: TAction;
    Cons_Produto: TAction;
    Cons_TipoProduto: TAction;
    Cons_Clientes: TAction;
    Cad_Clientes: TAction;
    Cad_Usuario: TAction;
    Lanc_Pedido: TAction;
    Cons_Pedido: TAction;
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
    Sistema1: TMenuItem;
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
    SkinStore1: TSkinStore;
    Est_TipoVidro: TAction;
    Est_Vidro: TAction;
    mn_Estoque: TAction;
    Estoque1: TMenuItem;
    mn_Consulta: TAction;
    mn_Lancamento: TAction;
    mn_Relatorio: TAction;
    mn_Financeiro: TAction;
    mn_Sistema: TAction;
    smn_Auxiliares: TAction;
    Produtos1: TMenuItem;
    Vidros1: TMenuItem;
    Auxiliares1: TMenuItem;
    ipoVidros1: TMenuItem;
    Est_Perfis: TAction;
    Perfis1: TMenuItem;
    Est_Componente: TAction;
    Componentes1: TMenuItem;
    mn_Cadastro: TAction;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Est_VariaveisVidro: TAction;
    Est_GrupoPerfil: TAction;
    GrupoPerfil1: TMenuItem;
    Est_GrauPerfil: TAction;
    GrauPerfil1: TMenuItem;
    VariveisVidro1: TMenuItem;
    N1: TMenuItem;
    Usurio1: TMenuItem;
    Financeiro1: TMenuItem;
    Auxiliares2: TMenuItem;
    Recibo1: TMenuItem;
    N2: TMenuItem;
    CadastrodeEmitente1: TMenuItem;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    ListBox1: TListBox;
    BitBtn2: TBitBtn;
    Est_CoresFerragem: TAction;
    N3: TMenuItem;
    CoresFerragem1: TMenuItem;
    Est_LinhaProduto: TAction;
    LinhadeProduto1: TMenuItem;
    SkinData1: TSkinData;
    ImageList3: TImageList;
    ActionList3: TActionList;
    ata_Estoque: TAction;
    ata_Financeiro: TAction;
    ata_Cadastro: TAction;
    Fin_ContasPagar: TAction;
    Fin_ContasReceber: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    Cad_Fornecedores: TAction;
    Fornecedores1: TMenuItem;
    Duplicatas1: TMenuItem;
    N6: TMenuItem;
    Fin_FormaPgto: TAction;
    Fin_Bancos: TAction;
    Bancos1: TMenuItem;
    FormadePagamento1: TMenuItem;
    Cont_PlanoContas: TAction;
    mn_Contabilidade: TAction;
    Contabilidade1: TMenuItem;
    PlanodeContas1: TMenuItem;
    Fin_ControleCheque: TAction;
    Fin_Cheque: TAction;
    Rel_Fin_ExtratoContasPagar: TAction;
    smn_RelatorioFinanceiro: TAction;
    RelatorioFinanceiro1: TMenuItem;
    ContasaPagar2: TMenuItem;
    frxReport1: TfrxReport;
    Rel_Fin_Pagar_Pagamento: TAction;
    ContasaPagarPagamentos1: TMenuItem;
    Rel_Fin_Receber_Pagamento: TAction;
    ContasaReceberPagamentos2: TMenuItem;
    Rel_Fin_Vendas: TAction;
    N7: TMenuItem;
    Vendasnoperodo1: TMenuItem;
    Fin_ComissaoVenda: TAction;
    ComissodeVenda1: TMenuItem;
    mns_Fin_Auxiliares: TAction;
    mns_Est_Auxiliares: TAction;
    mns_Fin_Relatorios: TAction;
    mns_Fin_CaixasBancos: TAction;
    mns_Fin_PagarReceber: TAction;
    PagarReceber1: TMenuItem;
    ContasaPagar3: TMenuItem;
    ContasaReceber1: TMenuItem;
    CaixaseBancos1: TMenuItem;
    ControleCheque1: TMenuItem;
    Fin_MovtoFinanceiro: TAction;
    Fin_MovtoBancario: TAction;
    MovimentoFinanceiro1: TMenuItem;
    MovimentoBancrio1: TMenuItem;
    Fin_ComprasDespesas: TAction;
    Fin_VendasReceitas: TAction;
    VendasOutrasReceitas1: TMenuItem;
    ComissodeVenda2: TMenuItem;
    Fin_CentroCusto: TAction;
    CentrodeCustos1: TMenuItem;
    Cad_Pessoas: TAction;
    Pessoas1: TMenuItem;
    N8: TMenuItem;
    Rel_Fin_CaixaDiario: TAction;
    Caixadirio1: TMenuItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Activate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure LogoffExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents2Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure SairExecute(Sender: TObject);
    procedure Est_ProdutoExecute(Sender: TObject);
    procedure Est_TipoVidroExecute(Sender: TObject);
    procedure Est_VidroExecute(Sender: TObject);
    procedure mn_EstoqueExecute(Sender: TObject);
    procedure smn_AuxiliaresExecute(Sender: TObject);
    procedure Est_PerfisExecute(Sender: TObject);
    procedure Est_ComponenteExecute(Sender: TObject);
    procedure mn_CadastroExecute(Sender: TObject);
    procedure Cad_ClientesExecute(Sender: TObject);
    procedure Est_VariaveisVidroExecute(Sender: TObject);
    procedure Est_GrupoPerfilExecute(Sender: TObject);
    procedure Est_GrauPerfilExecute(Sender: TObject);
    procedure Cad_UsuarioExecute(Sender: TObject);
    procedure Sis_EmitenteExecute(Sender: TObject);
    procedure mn_FinanceiroExecute(Sender: TObject);
    procedure Finc_DuplicatasExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Est_CoresFerragemExecute(Sender: TObject);
    procedure Est_LinhaProdutoExecute(Sender: TObject);
    procedure ata_EstoqueExecute(Sender: TObject);
    procedure ata_FinanceiroExecute(Sender: TObject);
    procedure ata_CadastroExecute(Sender: TObject);
    procedure Fin_BancosExecute(Sender: TObject);
    procedure Fin_FormaPgtoExecute(Sender: TObject);
    procedure Fin_ContasPagarExecute(Sender: TObject);
    procedure Fin_ContasReceberExecute(Sender: TObject);
    procedure Cad_FornecedoresExecute(Sender: TObject);
    procedure mn_ContabilidadeExecute(Sender: TObject);
    procedure Cont_PlanoContasExecute(Sender: TObject);
    procedure Fin_ControleChequeExecute(Sender: TObject);
    procedure Fin_ChequeExecute(Sender: TObject);
    procedure smn_RelatorioFinanceiroExecute(Sender: TObject);
    procedure Rel_Fin_ExtratoContasPagarExecute(Sender: TObject);
    procedure Rel_Fin_Pagar_PagamentoExecute(Sender: TObject);
    procedure Rel_Fin_Receber_PagamentoExecute(Sender: TObject);
    procedure Rel_Fin_VendasExecute(Sender: TObject);
    procedure Fin_ComissaoVendaExecute(Sender: TObject);
    procedure Fin_ComprasDespesasExecute(Sender: TObject);
    procedure Fin_VendasReceitasExecute(Sender: TObject);
    procedure Fin_CentroCustoExecute(Sender: TObject);
    procedure Fin_MovtoFinanceiroExecute(Sender: TObject);
    procedure Cad_PessoasExecute(Sender: TObject);
    procedure Rel_Fin_CaixaDiarioExecute(Sender: TObject);
  private
    { Private declarations }
    CaminhoDasSkins : String;
    ss : String;
    procedure PanelCenter;
    procedure getContaPagarReceber(pConta: Integer);
    procedure getCliente(pTipo: Integer);
    procedure ProcessaMsg(var Msg: TMsg; var Handler: Boolean);

  public
    { Public declarations }
    var_principal : string;
    procedure Fnc_AtualizaGrid_Manutencao;

  end;

var
  FormPrincipal: TFormPrincipal;

const
  cContasReceber = 1;
  cContasPagar   = 2;
  cCliente       = 1;
  cFornecedor    = 2;



implementation

uses
  uDMPrincipal, uCadEmitente,
  uCadProduto, uFerramentas, uCadTipoVidro, uCadVidros, uCadPerfis,
  uCadComponente, uClassServidorIni, uCadVariavelVidro,
  uCadGrupoPerfil, uCadGrauPerfil, uCadUsuario, uDuplicata, uFormLogin,
  uCadClientes, uCadCoresFerragem, uCadLinhaProduto, uCadBancos,
  uFormaPgto, uCadPagarReceber, uCadPlanoContas, uCadCheque,
  uRelExtratoContasPagar, uRelVencimentoContasPagar,
  uRelPagamentoContasPagar, uRelPagamentoContasReceber,
  uRelVencimentoContasReceber, uRelVendasPeriodo, uCadCentroCusto,
  uMovFinanceiro, uRelCaixaDiario;

{$R *.dfm}

function VersaoExe(ArquivoExe : string): String;
type
  PFFI = ^vs_FixedFileInfo;
var
  F: PFFI;
  Handle: Dword;
  Len: Longint;
  Data: Pchar;
  Buffer: Pointer;
  Tamanho: Dword;
  Parquivo: Pchar;
  Arquivo: String;
begin
  Arquivo := ArquivoExe;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  Result := '';
  if Len > 0 then
  begin
    Data := StrAlloc(Len + 1);
    if GetFileVersionInfo(Parquivo, Handle, Len, Data) then
    begin
      VerQueryValue(Data, '', Buffer, Tamanho);
      F := PFFI(Buffer);
      Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs), LoWord
          (F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs), LoWord
          (F^.dwFileVersionLs)]);
    end;
    StrDispose(Data);
  end;
  StrDispose(Parquivo);
end;


procedure TFormPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F2 then
  ShowMessage('F2 pressionada');
end;

procedure TFormPrincipal.ApplicationEvents1Activate(Sender: TObject);
begin
  StatusBar1.Panels[3].Text := ' '+Application.Hint;
  Application.OnMessage := ProcessaMsg;
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

procedure TFormPrincipal.LogoffExecute(Sender: TObject);
begin
  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.ShowModal;
  FormLogin.Destroy;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
var Ini : TServidorIni;
begin
  Ini               := TServidorIni.create(SkinData1);
  _SERVIDORINI      := Ini.Ler_ArquivoIni('SERVIDORINI','ARQUIVO');
  _PATH_SERVIDORINI := Ini.Ler_ArquivoIni('SERVIDORINI','CAMINHO');
  _PATH_IMAGEM      := Ini.Ler_ArquivoIni('SERVIDORINI','IMAGEM');
  _PATH_SKIN        := Ini.Ler_ArquivoIni('SERVIDORINI','SKIN');
  _SERVER_NAME      := Ini.Ler_ArquivoIni('SERVIDORINI','BASE');
  ServidorIni.Relatorios := Ini.Ler_ArquivoIni('SISTEMA','Relatorios')+'\';
  ServidorIni.Skin       := Ini.Ler_ArquivoIni('SISTEMA','Skin');

  Ini.Path_Skin := _PATH_SKIN;
  Ini.CarregarSkin(ServidorIni.Skin);
  Ini.Free;
  Sistema.LayoutRel := Ini.Ler_ArquivoIni('SISTEMA','LAYOUTREL');
  Sistema.Caption := ':: Sistema de Gestão Comercial :: Usina Software ::';
  Caption := sistema.Caption;
  PanelCenter;
  try
    Application.CreateForm(TFormLogin, FormLogin);
    FormLogin.ShowModal;
  Finally
    FormLogin.Free
  end;
  StatusBar1.Panels[0].Text := FormatDateTime('  hh:nn:ss',Now);
  StatusBar1.Panels[1].Text := FormatDateTime('  dddd" , "dd" de "mmmmm" de "yyyyy',Now);
  Caption := Caption+' [ Versão: '+VersaoExe( Application.ExeName )+' Atualização 14/11/2018]';
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

procedure TFormPrincipal.Fnc_AtualizaGrid_Manutencao;
begin
  DMPrincipal.cdsViewPedidoManutencao.Close;
  DMPrincipal.cdsViewPedidoManutencao.Open;
end;

procedure TFormPrincipal.SairExecute(Sender: TObject);
begin
    FormLogin := TFormLogin.Create(nil);
    FormLogin.ShowModal;
    FormLogin.Free;
end;

procedure TFormPrincipal.PanelCenter;
begin
  APanel.Left := (FormPrincipal.ClientWidth div 2) - (APanel.Width div 2);
  APanel.Top := (FormPrincipal.ClientHeight div 2) - (APanel.Height div 2);
end;

procedure TFormPrincipal.Est_ProdutoExecute(Sender: TObject);
begin
  FCadProduto := TFCadProduto.Create(nil);
  FCadProduto.PnBarraFormCaption := Est_Produto.Hint;
  FCadProduto.ShowModal;
  FCadProduto.Free;
end;

procedure TFormPrincipal.Est_TipoVidroExecute(Sender: TObject);
begin
  FCadTipoVidro := TFCadTipoVidro.Create(nil);
  FCadTipoVidro.PnBarraFormCaption := Est_TipoVidro.Hint;
  FCadTipoVidro.ShowModal;
  FCadTipoVidro.Free;
end;

procedure TFormPrincipal.Est_VidroExecute(Sender: TObject);
begin
  FCadVidros := TFCadVidros.Create(nil);
  FCadVidros.PnBarraFormCaption := Est_Vidro.Hint;
  FCadVidros.ShowModal;
  FCadVidros.Free;
end;

procedure TFormPrincipal.mn_EstoqueExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.smn_AuxiliaresExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Est_PerfisExecute(Sender: TObject);
begin
  FCadPerfis := TFCadPerfis.Create(nil);
  FCadPerfis.PnBarraFormCaption := Est_Perfis.Hint;
  FCadPerfis.ShowModal;
  FCadPerfis.Free;
end;

procedure TFormPrincipal.Est_ComponenteExecute(Sender: TObject);
begin
  FCadComponente := TFCadComponente.Create(nil);
  FCadComponente.PnBarraFormCaption := Est_Componente.Hint;
  FCadComponente.ShowModal;
  FCadComponente.Free;
end;

procedure TFormPrincipal.mn_CadastroExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.getCliente(pTipo:Integer);
begin
  FCadClientes := TFCadClientes.Create(nil);
  FCadClientes.FTipoCli := pTipo;
  FCadClientes.ShowModal;
  FCadClientes.Free;
end;

procedure TFormPrincipal.Cad_ClientesExecute(Sender: TObject);
begin
  getCliente(cCliente);
end;

procedure TFormPrincipal.Est_VariaveisVidroExecute(Sender: TObject);
begin
  FCadVariavelVidro := TFCadVariavelVidro.Create(nil);
  FCadVariavelVidro.PnBarraFormCaption := Est_VariaveisVidro.Hint;
  FCadVariavelVidro.ShowModal;
  FCadVariavelVidro.Free;
end;

procedure TFormPrincipal.Est_GrupoPerfilExecute(Sender: TObject);
begin
  FCadGrupoPerfil := TFCadGrupoPerfil.Create(nil);
  FCadGrupoPerfil.PnBarraFormCaption := Est_GrupoPerfil.Hint;
  FCadGrupoPerfil.ShowModal;
  FCadGrupoPerfil.Free;
end;

procedure TFormPrincipal.Est_GrauPerfilExecute(Sender: TObject);
begin
  FCadGrauPerfil := TFCadGrauPerfil.Create(nil);
  FCadGrauPerfil.PnBarraFormCaption := Est_GrauPerfil.Hint;
  FCadGrauPerfil.ShowModal;
  FCadGrauPerfil.Free;
end;

procedure TFormPrincipal.Cad_UsuarioExecute(Sender: TObject);
begin
  FCadUsuario := TFCadUsuario.Create(nil);
  FCadUsuario.PnBarraFormCaption := Cad_Usuario.Hint;
  FCadUsuario.ShowModal;
  FCadUsuario.Free;
end;

procedure TFormPrincipal.Sis_EmitenteExecute(Sender: TObject);
begin
  FCadEmitente := TFCadEmitente.Create(nil);
  FCadEmitente.PnBarraFormCaption := Sis_Emitente.Hint;
  FCadEmitente.ShowModal;
  FCadEmitente.Free;
end;

procedure TFormPrincipal.mn_FinanceiroExecute(Sender: TObject);
begin
//habilitado
end;

procedure TFormPrincipal.Finc_DuplicatasExecute(Sender: TObject);
begin
  FDuplicata := TFDuplicata.Create(nil);
  FDuplicata.ShowModal;
  FDuplicata.Free;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit1.Text := OpenDialog1.FileName;
    SkinData1.SkinFile := Edit1.Text;
    SkinData1.Active := true;
  end;
end;

procedure TFormPrincipal.BitBtn2Click(Sender: TObject);
//Isto irá carregar as skins dentro do listbox
var
  Procurar : TSearchRec;
  Arquivos: Integer;
begin
  ListBox1.Items.Clear;
  CaminhoDasSkins := ExtractFilePath(Application.ExeName) + '..\Skins\*.skn';
  Arquivos := 0;
  Arquivos := Arquivos + faDirectory;
  Arquivos := Arquivos + faArchive;
  Arquivos := Arquivos + faAnyFile;
  if FindFirst(CaminhoDasSkins, Arquivos, Procurar) = 0 then
  begin
    repeat
    if (Procurar.Attr and Arquivos) = Procurar.Attr then
      ListBox1.Items.Add(Procurar.Name);
    until FindNext(Procurar) <> 0;
    FindClose(Procurar);
  end;
end;

procedure TFormPrincipal.ListBox1Click(Sender: TObject);
var
 i: integer;
begin
  i := ListBox1.ItemIndex;
  ss := Copy(CaminhoDasSkins,1,Pos('*.skn',CaminhoDasSkins)-2)+'\'+ListBox1.items.strings[i];
  SkinData1.SkinFile := ss;
  if not SkinData1.Active then
    SkinData1.Active := True;end;
procedure TFormPrincipal.Est_CoresFerragemExecute(Sender: TObject);
begin
  FCadCoresFerragem := TFCadCoresFerragem.Create(nil);
  FCadCoresFerragem.PnBarraFormCaption := Est_CoresFerragem.Hint;
  FCadCoresFerragem.ShowModal;
  FCadCoresFerragem.Free;
end;

procedure TFormPrincipal.Est_LinhaProdutoExecute(Sender: TObject);
begin
  FCadLinhaProduto := TFCadLinhaProduto.Create(nil);
  FCadLinhaProduto.PnBarraFormCaption := Est_LinhaProduto.Hint;
  FCadLinhaProduto.ShowModal;
  FCadLinhaProduto.Free;
end;

procedure TFormPrincipal.ata_EstoqueExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.ata_FinanceiroExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.ata_CadastroExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Fin_BancosExecute(Sender: TObject);
begin
  FCadBancos := TFCadBancos.Create(nil);
  FCadBancos.PnBarraFormCaption := Fin_Bancos.Hint;
  FCadBancos.ShowModal;
  FCadBancos.Free;
end;

procedure TFormPrincipal.Fin_FormaPgtoExecute(Sender: TObject);
begin
  FCadFormaPgto := TFCadFormaPgto.Create(nil);
  FCadFormaPgto.PnBarraFormCaption := Fin_FormaPgto.Hint;
  FCadFormaPgto.ShowModal;
  FCadFormaPgto.Free;
end;

procedure TFormPrincipal.getContaPagarReceber(pConta:Integer);
begin
  FCadPagarReceber := TFCadPagarReceber.Create(nil);
  //FCadFormaPgto.PnBarraFormCaption := Fin_FormaPgto.Hint;
  FCadPagarReceber.FTipoPagRec := pConta;
  FCadPagarReceber.ShowModal;
  FCadPagarReceber.Free;
end;

procedure TFormPrincipal.Fin_ContasPagarExecute(Sender: TObject);
begin
  getContaPagarReceber(cContasPagar);
end;

procedure TFormPrincipal.Fin_ContasReceberExecute(Sender: TObject);
begin
  getContaPagarReceber(cContasReceber);
end;

procedure TFormPrincipal.Cad_FornecedoresExecute(Sender: TObject);
begin
  getCliente(cFornecedor);
end;

procedure TFormPrincipal.ProcessaMsg(var Msg: TMsg; var Handler: Boolean);
begin
     if (Msg.message = WM_KEYDOWN) then
        if not (Screen.ActiveControl is TCustomMemo) and
           not (Screen.ActiveControl is TButtonControl) then begin
             if not (Screen.ActiveControl is TCustomControl) then begin
                if (Msg.wParam = VK_Down) and
                   not(Screen.ActiveControl is TListBox) and
                   not(Screen.ActiveControl is TComboBox) then
                   Msg.wParam:= VK_Tab;
                if (Msg.wParam = VK_UP) and
                   not(Screen.ActiveControl is TListBox) and
                   not(Screen.ActiveControl is TComboBox) then begin
                   Msg.wParam:= VK_CLEAR;
                   Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
                end;
                //if (Msg.wParam = VK_Escape) and
                //  not (Screen.ActiveForm is TFormPrincipal) then
                //   Screen.ActiveForm.Close;
             end;
             if (Msg.wParam = VK_Return) then
                Msg.wParam:= VK_Tab;
        end;
end;

procedure TFormPrincipal.mn_ContabilidadeExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Cont_PlanoContasExecute(Sender: TObject);
begin
  FCadPlanoContas := TFCadPlanoContas.Create(nil);
  FCadPlanoContas.PnBarraFormCaption := Cont_PlanoContas.Hint;
  FCadPlanoContas.ShowModal;
  FCadPlanoContas.Free;
end;

procedure TFormPrincipal.Fin_ControleChequeExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Fin_ChequeExecute(Sender: TObject);
begin
  FCadCheque := TFCadCheque.Create(nil);
  FCadCheque.PnBarraFormCaption := Fin_Cheque.Hint;
  FCadCheque.ShowModal;
  FCadCheque.Free;
end;

procedure TFormPrincipal.smn_RelatorioFinanceiroExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Rel_Fin_ExtratoContasPagarExecute(Sender: TObject);
begin
  FRelExtratoContasPagar := TFRelExtratoContasPagar.Create(nil);
  FRelExtratoContasPagar.FTipoCli := cContasPagar;
  FRelExtratoContasPagar.pnBarraForm.Caption := Rel_Fin_ExtratoContasPagar.Hint;
  FRelExtratoContasPagar.ShowModal;
  FRelExtratoContasPagar.Free;
end;

procedure TFormPrincipal.Rel_Fin_Pagar_PagamentoExecute(Sender: TObject);
begin
  FRelPagamentoContasPagar := TFRelPagamentoContasPagar.Create(nil);
  FRelPagamentoContasPagar.FTipoCli := cContasPagar;
  FRelPagamentoContasPagar.pnBarraForm.Caption := Rel_Fin_Pagar_Pagamento.Hint;
  FRelPagamentoContasPagar.ShowModal;
  FRelPagamentoContasPagar.Free;
end;

procedure TFormPrincipal.Rel_Fin_Receber_PagamentoExecute(Sender: TObject);
begin
  FRelPagamentoContasReceber := TFRelPagamentoContasReceber.Create(nil);
  FRelPagamentoContasReceber.FTipoCli := cContasReceber;
  FRelPagamentoContasReceber.pnBarraForm.Caption := Rel_Fin_Receber_Pagamento.Hint;
  FRelPagamentoContasReceber.ShowModal;
  FRelPagamentoContasReceber.Free;
end;

procedure TFormPrincipal.Rel_Fin_VendasExecute(Sender: TObject);
begin
  FRelVendasPeriodo := tFRelVendasPeriodo.Create(nil);
  FRelVendasPeriodo.pnBarraForm.Caption := Rel_Fin_Vendas.Hint;
  FRelVendasPeriodo.ShowModal;
  FRelVendasPeriodo.Free;
end;

procedure TFormPrincipal.Fin_ComissaoVendaExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Fin_ComprasDespesasExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Fin_VendasReceitasExecute(Sender: TObject);
begin
//
end;

procedure TFormPrincipal.Fin_CentroCustoExecute(Sender: TObject);
begin
  FCadCentroCusto := TFCadCentroCusto.Create(nil);
  FCadCentroCusto.PnBarraFormCaption := Fin_CentroCusto.Hint;
  FCadCentroCusto.ShowModal;
  FCadCentroCusto.Free;
end;

procedure TFormPrincipal.Fin_MovtoFinanceiroExecute(Sender: TObject);
begin
  FMovFinanceiro := TFMovFinanceiro.Create(nil);
  FMovFinanceiro.PnBarraFormCaption := Fin_MovtoFinanceiro.Hint;
  FMovFinanceiro.ShowModal;
  FMovFinanceiro.Free;
end;

procedure TFormPrincipal.Cad_PessoasExecute(Sender: TObject);
begin
  FCadClientes := TFCadClientes.Create(nil);
  //FCadClientes.FTipoCli := pTipo;
  FCadClientes.ShowModal;
  FCadClientes.Free;
end;

procedure TFormPrincipal.Rel_Fin_CaixaDiarioExecute(Sender: TObject);
begin
  FRelCaixaDiario := TFRelCaixaDiario.Create(nil);
  FRelCaixaDiario.pnBarraForm.Caption := Rel_Fin_CaixaDiario.Hint;
  FRelCaixaDiario.ShowModal;
  FRelCaixaDiario.Free;
end;

end.


