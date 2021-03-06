program UsinaSoftware;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {FormPrincipal},
  uDMConnection in 'uDMConnection.pas' {DMConnection: TDataModule},
  uDMPrincipal in 'uDMPrincipal.pas' {DMPrincipal: TDataModule},
  uDMConexao in 'database\uDMConexao.pas' {DMConexao: TDataModule},
  uClassAvisos in 'biblioteca\uClassAvisos.pas',
  uClassServidorIni in 'biblioteca\uClassServidorIni.pas',
  uBibliotecaFuncoes in 'biblioteca\uBibliotecaFuncoes.pas' {FormBibliotecaFuncoes},
  Extens in 'biblioteca\Extens.pas',
  uFerramentas in 'biblioteca\uFerramentas.pas',
  Udesign in 'biblioteca\Udesign.pas' {Fdesign},
  uimprelat in 'biblioteca\uimprelat.pas' {Fimprel},
  uRelatorio in 'biblioteca\uRelatorio.pas' {FRelatorio},
  uCadTipoVidro in 'cadastro\uCadTipoVidro.pas' {FCadTipoVidro},
  uCadVidros in 'cadastro\uCadVidros.pas' {FCadVidros},
  uCadProduto in 'estoque\uCadProduto.pas' {FCadProduto},
  uCadPerfis in 'estoque\uCadPerfis.pas' {FCadPerfis},
  uCadComponente in 'estoque\uCadComponente.pas' {FCadComponente},
  uCadVariavelVidro in 'estoque\uCadVariavelVidro.pas' {FCadVariavelVidro},
  uCadGrupoPerfil in 'estoque\uCadGrupoPerfil.pas' {FCadGrupoPerfil},
  uCadGrauPerfil in 'estoque\uCadGrauPerfil.pas' {FCadGrauPerfil},
  uPadrao in 'biblioteca\uPadrao.pas' {FPadrao},
  uCadUsuario in 'cadastro\uCadUsuario.pas' {FCadUsuario},
  uCadEmitente in 'cadastro\uCadEmitente.pas' {FCadEmitente},
  uDuplicata in 'financeiro\uDuplicata.pas' {FDuplicata},
  uCadClientes in 'cadastro\uCadClientes.pas' {FCadClientes},
  uFormLogin in 'biblioteca\uFormLogin.pas' {FormLogin},
  uCadCoresFerragem in 'estoque\uCadCoresFerragem.pas' {FCadCoresFerragem},
  uCadLinhaProduto in 'estoque\uCadLinhaProduto.pas' {FCadLinhaProduto},
  uCadBancos in 'financeiro\uCadBancos.pas' {FCadBancos},
  uFormaPgto in 'financeiro\uFormaPgto.pas' {FCadFormaPgto},
  uCadPagarReceber in 'financeiro\uCadPagarReceber.pas' {FCadPagarReceber},
  uSelecionarCheque in 'financeiro\uSelecionarCheque.pas' {FSelecionarCheque},
  uCadPlanoContas in 'contabilidade\uCadPlanoContas.pas' {FCadPlanoContas},
  uCadPlGrupo in 'contabilidade\uCadPlGrupo.pas' {FCadPlGrupo},
  uCadPlSubgrupo in 'contabilidade\uCadPlSubgrupo.pas' {FCadPlSubgrupo},
  uCadPlItem in 'contabilidade\uCadPlItem.pas' {FCadPlItem},
  uCadPlCategoria in 'contabilidade\uCadPlCategoria.pas' {FCadPlCategoria},
  uCadCheque in 'financeiro\uCadCheque.pas' {FCadCheque},
  uSelecionarPadrao in 'biblioteca\uSelecionarPadrao.pas' {FSelecionarPadrao},
  uSelecionarCliente in 'cadastro\uSelecionarCliente.pas' {FSelecionarCli},
  uSelecionarBanco in 'financeiro\uSelecionarBanco.pas' {FSelecionarBanco},
  uRelatorioPadrao in 'biblioteca\uRelatorioPadrao.pas' {FRelatorioPadrao},
  uRelCaixaDiario in 'financeiro\uRelCaixaDiario.pas' {FRelCaixaDiario},
  uRelVencimentoContasPagar in 'financeiro\uRelVencimentoContasPagar.pas' {FRelVencimentoContasPagar},
  uRelVendasPeriodo in 'financeiro\uRelVendasPeriodo.pas' {FRelVendasPeriodo},
  uRelVencimentoContasReceber in 'financeiro\uRelVencimentoContasReceber.pas' {FRelVencimentoContasReceber},
  uRelPagamentoContasPagar in 'financeiro\uRelPagamentoContasPagar.pas' {FRelPagamentoContasPagar},
  uSelecionarPlanoContas in 'financeiro\uSelecionarPlanoContas.pas' {FSelecionarPlanoContas},
  uSelecionarFormaPgto in 'financeiro\uSelecionarFormaPgto.pas' {FSelecionarFormaPgto},
  uCadCentroCusto in 'financeiro\uCadCentroCusto.pas' {FCadCentroCusto},
  uSelecionarCentroCusto in 'financeiro\uSelecionarCentroCusto.pas' {FSelecionarCentroCusto},
  uCadPadrao in 'biblioteca\uCadPadrao.pas' {FCadPadrao},
  uSelecionarPagarReceber in 'financeiro\uSelecionarPagarReceber.pas' {FSelecionarPagarReceber},
  uSelecionarTipoCliente in 'cadastro\uSelecionarTipoCliente.pas' {FSelecionarTipoCliente},
  uTipoBaixaMovFinanceiro in 'financeiro\uTipoBaixaMovFinanceiro.pas' {FTipoBaixaMovFinanceiro},
  uRelExtratoContasPagar in 'financeiro\uRelExtratoContasPagar.pas' {FRelExtratoContasPagar},
  uSelecionarVendedor in 'Caixa\uSelecionarVendedor.pas' {FSelecionarVendedor},
  uMovFinanceiro in 'financeiro\uMovFinanceiro.pas' {FMovFinanceiro},
  uVendaProjetos in 'Caixa\uVendaProjetos.pas' {FVendaProjeto},
  uCadVendas in 'Vendas\uCadVendas.pas' {FCadVendas},
  uExibirFinanceiroVendaComissionada in 'financeiro\uExibirFinanceiroVendaComissionada.pas' {FExibirFinanceiroVendaComissionada},
  uSelecionarFinanceiroVendaComissionada in 'financeiro\uSelecionarFinanceiroVendaComissionada.pas' {FSelecionarFinanceiroVendaComissionada},
  uCadAgenda in 'Vendas\uCadAgenda.pas' {FCadAgenda},
  uAgendaConferenciaMedidas in 'Vendas\uAgendaConferenciaMedidas.pas' {FCadAgendaConferenciaMedidas},
  uCadConferenciaMedida in 'Vendas\uCadConferenciaMedida.pas' {FCadConferenciaMedida},
  uVincularVendaFinanceiro in 'Vendas\uVincularVendaFinanceiro.pas' {FCadVincularVendaFinanceiro},
  uSelecionarVendas in 'Vendas\uSelecionarVendas.pas' {FSelecionarVenda},
  uSelecionarAgendaById in 'Vendas\uSelecionarAgendaById.pas' {FSelecionarAgendaById},
  uCadVendaComissionada in 'Caixa\uCadVendaComissionada.pas' {FCadVendaComissionada},
  uPagamentosDiversos in 'financeiro\uPagamentosDiversos.pas' {FPagamentosDiversos},
  uCadOrcamentoVComiss in 'Vendas\uCadOrcamentoVComiss.pas' {FCadOrcamentoVComiss},
  uSelecionarOrcamentoVComiss in 'Vendas\uSelecionarOrcamentoVComiss.pas' {FSelecionarOrcamentoVComiss},
  uCadContratoVComiss in 'Vendas\uCadContratoVComiss.pas' {FCadContratoVComiss},
  uRelPagamentoContasReceber in 'financeiro\uRelPagamentoContasReceber.pas' {FRelPagamentoContasReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TDMConnection, DMConnection);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFdesign, Fdesign);
  Application.CreateForm(TFimprel, Fimprel);
  Application.Run;
end.
