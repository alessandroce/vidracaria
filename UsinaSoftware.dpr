program UsinaSoftware;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {FormPrincipal},
  uFormPadraoBusca2 in 'uFormPadraoBusca2.pas' {FormPadraoBusca2},
  uFormPadraoCad in 'uFormPadraoCad.pas' {Form1},
  uFormPadraoCad2 in 'uFormPadraoCad2.pas' {FormPadraoCad2},
  uFormPadraoCad3 in 'uFormPadraoCad3.pas' {FormPadraoCad3},
  uFormPadraoRel in 'uFormPadraoRel.pas' {FormPadraoRel},
  Extens in 'Extens.pas',
  uBibliotecaFuncoes in 'uBibliotecaFuncoes.pas' {FormBibliotecaFuncoes},
  uBuscaCliente_OrcPedido in 'uBuscaCliente_OrcPedido.pas' {FormBuscaCliente_OrcPedido},
  uBuscaProdutos_OrcPedido in 'uBuscaProdutos_OrcPedido.pas' {FormBuscaProdutos_OrcPedido},
  uCadAdiantamentos in 'uCadAdiantamentos.pas' {FormCadAdiantamentos},
  uCadBancos in 'uCadBancos.pas' {FormCadBancos},
  uCadClientes in 'uCadClientes.pas' {FormCadCliente},
  uCadEmitente in 'uCadEmitente.pas' {FormCadEmitente},
  uCadOrcamentoPedido in 'uCadOrcamentoPedido.pas' {FormCadOrcamentoPedido},
  uCadOrcamentoPedido_Acessorios in 'uCadOrcamentoPedido_Acessorios.pas' {FormCadOrcamentoPedido_Acessorios},
  uCadOrcamentoPedido_Produtos in 'uCadOrcamentoPedido_Produtos.pas' {FormCadOrcamentoPedido_Produtos},
  uCadProduto in 'uCadProduto.pas' {FormCadProduto},
  uCadProdutoTipo in 'uCadProdutoTipo.pas' {FormCadProdutoTipo},
  uDMAdiantamentos in 'uDMAdiantamentos.pas' {DMAdiantamentos: TDataModule},
  uDMAdiantamentosOrcPedido in 'uDMAdiantamentosOrcPedido.pas' {DMAdiantamentoOrcPedido: TDataModule},
  uDMAdiantamentosPedido in 'uDMAdiantamentosPedido.pas' {DMAdiantamentosPedido: TDataModule},
  uDMBancos in 'uDMBancos.pas' {DMBancos: TDataModule},
  uDMClientes in 'uDMClientes.pas' {DMCadClientes: TDataModule},
  uDMConfig in 'uDMConfig.pas' {DMConfig: TDataModule},
  uDMConfiguracoes in 'uDMConfiguracoes.pas' {DMConfiguracoes: TDataModule},
  uDMConnection in 'uDMConnection.pas' {DMConnection: TDataModule},
  UDMDuplicata in 'UDMDuplicata.pas' {DMDuplicata: TDataModule},
  uDMEmitente in 'uDMEmitente.pas' {DMEmitente: TDataModule},
  uDMLogin in 'uDMLogin.pas' {DMLogin: TDataModule},
  uDmMenuPermissao in 'uDmMenuPermissao.pas' {DMMenuPermissao: TDataModule},
  uDMOrcamentoPedido in 'uDMOrcamentoPedido.pas' {DMOrcamentoPedido: TDataModule},
  uDMOrcamentoPedidoPrint in 'uDMOrcamentoPedidoPrint.pas' {DMOrcamentoPedidoPrint: TDataModule},
  uDMOrcamentoPedidoRevisao in 'uDMOrcamentoPedidoRevisao.pas' {DMOrcamentoPedidoRevisao: TDataModule},
  uDMOrcamentoTipo in 'uDMOrcamentoTipo.pas' {DMOrcamentoTipo: TDataModule},
  uDMOrdemServico in 'uDMOrdemServico.pas' {DMOrdemServico: TDataModule},
  UDMPedido in 'UDMPedido.pas' {DMPedido: TDataModule},
  uDMPedidoPrint in 'uDMPedidoPrint.pas' {DMPedidoPrint: TDataModule},
  uDMPrincipal in 'uDMPrincipal.pas' {DMPrincipal: TDataModule},
  uDMProduto in 'uDMProduto.pas' {DMProduto: TDataModule},
  uDMProdutoTipo in 'uDMProdutoTipo.pas' {DMProdutoTipo: TDataModule},
  uDMRelatorioBanco in 'uDMRelatorioBanco.pas' {DMRelatorioBanco: TDataModule},
  uDMRelatorioClientes in 'uDMRelatorioClientes.pas' {DMRelatorioClientes: TDataModule},
  uDMRelatorioItensPedido in 'uDMRelatorioItensPedido.pas' {DMRelatorioItensPedido: TDataModule},
  uDMRelatorioOrcamento in 'uDMRelatorioOrcamento.pas' {DMRelatorioOrcamento: TDataModule},
  udmRelatorioOrdemServico in 'udmRelatorioOrdemServico.pas' {DMRelatorioOrdemServico: TDataModule},
  uDMRelatorioPedido in 'uDMRelatorioPedido.pas' {DMRelatorioPedido: TDataModule},
  uDMRelatorioProduto in 'uDMRelatorioProduto.pas' {DMRelatorioProduto: TDataModule},
  uDMRelatorioTipoProduto in 'uDMRelatorioTipoProduto.pas' {DMRelatorioTipoProduto: TDataModule},
  uDMUsuario in 'uDMUsuario.pas' {DMUsuario: TDataModule},
  uFormAdiantamentos in 'uFormAdiantamentos.pas' {FormAdiantamentos},
  uFormAdiantamentos_Edit in 'uFormAdiantamentos_Edit.pas' {FormAdiantamento_Edit},
  uFormadiantamentosPedido in 'uFormadiantamentosPedido.pas' {FormAdiantamentosPedido},
  uFormBuscaClienteOS in 'uFormBuscaClienteOS.pas' {FormBuscaClienteOS},
  uFormBuscaClientes in 'uFormBuscaClientes.pas' {FormBuscaClientes},
  uFormBuscaOrcPed in 'uFormBuscaOrcPed.pas' {FormBuscaOrcPed},
  uFormBuscaOrdemServico in 'uFormBuscaOrdemServico.pas' {FormBuscaOrdemServico},
  uFormBuscaOrdemServicoFiltro in 'uFormBuscaOrdemServicoFiltro.pas' {FormBuscaOrdemServico_Filtro},
  uFormBuscaPedido in 'uFormBuscaPedido.pas' {FormBuscaPedido},
  uFormBuscaPedidoOS in 'uFormBuscaPedidoOS.pas' {FormBuscaPedidoOS},
  uFormBuscaTipo_OrcPed in 'uFormBuscaTipo_OrcPed.pas' {FormBuscaTipo_OrcPed},
  uFormCadOrcamentoTipo in 'uFormCadOrcamentoTipo.pas' {FormCadOrcamentoTipo},
  uFormCadUsuario in 'uFormCadUsuario.pas' {FormCadUsuario},
  uFormConfiguracoes in 'uFormConfiguracoes.pas' {FormConfiguracoes},
  uFormDuplicata in 'uFormDuplicata.pas' {FormDuplicata};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDMAdiantamentos, DMAdiantamentos);
  Application.CreateForm(TDMAdiantamentoOrcPedido, DMAdiantamentoOrcPedido);
  Application.CreateForm(TDMAdiantamentosPedido, DMAdiantamentosPedido);
  Application.CreateForm(TDMBancos, DMBancos);
  Application.CreateForm(TDMCadClientes, DMCadClientes);
  Application.CreateForm(TDMConfig, DMConfig);
  Application.CreateForm(TDMConfiguracoes, DMConfiguracoes);
  Application.CreateForm(TDMConnection, DMConnection);
  Application.CreateForm(TDMDuplicata, DMDuplicata);
  Application.CreateForm(TDMEmitente, DMEmitente);
  Application.CreateForm(TDMLogin, DMLogin);
  Application.CreateForm(TDMMenuPermissao, DMMenuPermissao);
  Application.CreateForm(TDMOrcamentoPedido, DMOrcamentoPedido);
  Application.CreateForm(TDMOrcamentoPedidoPrint, DMOrcamentoPedidoPrint);
  Application.CreateForm(TDMOrcamentoPedidoRevisao, DMOrcamentoPedidoRevisao);
  Application.CreateForm(TDMOrcamentoTipo, DMOrcamentoTipo);
  Application.CreateForm(TDMOrdemServico, DMOrdemServico);
  Application.CreateForm(TDMPedido, DMPedido);
  Application.CreateForm(TDMPedidoPrint, DMPedidoPrint);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TDMProduto, DMProduto);
  Application.CreateForm(TDMProdutoTipo, DMProdutoTipo);
  Application.CreateForm(TDMRelatorioBanco, DMRelatorioBanco);
  Application.CreateForm(TDMRelatorioClientes, DMRelatorioClientes);
  Application.CreateForm(TDMRelatorioItensPedido, DMRelatorioItensPedido);
  Application.CreateForm(TDMRelatorioOrcamento, DMRelatorioOrcamento);
  Application.CreateForm(TDMRelatorioOrdemServico, DMRelatorioOrdemServico);
  Application.CreateForm(TDMRelatorioPedido, DMRelatorioPedido);
  Application.CreateForm(TDMRelatorioProduto, DMRelatorioProduto);
  Application.CreateForm(TDMRelatorioTipoProduto, DMRelatorioTipoProduto);
  Application.CreateForm(TDMUsuario, DMUsuario);
  Application.CreateForm(TFormPadraoBusca2, FormPadraoBusca2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormPadraoCad2, FormPadraoCad2);
  Application.CreateForm(TFormPadraoCad3, FormPadraoCad3);
  Application.CreateForm(TFormPadraoRel, FormPadraoRel);
  Application.CreateForm(TFormBibliotecaFuncoes, FormBibliotecaFuncoes);
  Application.CreateForm(TFormBuscaCliente_OrcPedido, FormBuscaCliente_OrcPedido);
  Application.CreateForm(TFormBuscaProdutos_OrcPedido, FormBuscaProdutos_OrcPedido);
  Application.CreateForm(TFormCadAdiantamentos, FormCadAdiantamentos);
  Application.CreateForm(TFormCadBancos, FormCadBancos);
  Application.CreateForm(TFormCadCliente, FormCadCliente);
  Application.CreateForm(TFormCadEmitente, FormCadEmitente);
  Application.CreateForm(TFormCadOrcamentoPedido, FormCadOrcamentoPedido);
  Application.CreateForm(TFormCadOrcamentoPedido_Acessorios, FormCadOrcamentoPedido_Acessorios);
  Application.CreateForm(TFormCadOrcamentoPedido_Produtos, FormCadOrcamentoPedido_Produtos);
  Application.CreateForm(TFormCadProduto, FormCadProduto);
  Application.CreateForm(TFormCadProdutoTipo, FormCadProdutoTipo);
  Application.CreateForm(TFormAdiantamentos, FormAdiantamentos);
  Application.CreateForm(TFormAdiantamento_Edit, FormAdiantamento_Edit);
  Application.CreateForm(TFormAdiantamentosPedido, FormAdiantamentosPedido);
  Application.CreateForm(TFormBuscaClienteOS, FormBuscaClienteOS);
  Application.CreateForm(TFormBuscaClientes, FormBuscaClientes);
  Application.CreateForm(TFormBuscaOrcPed, FormBuscaOrcPed);
  Application.CreateForm(TFormBuscaOrdemServico, FormBuscaOrdemServico);
  Application.CreateForm(TFormBuscaOrdemServico_Filtro, FormBuscaOrdemServico_Filtro);
  Application.CreateForm(TFormBuscaPedido, FormBuscaPedido);
  Application.CreateForm(TFormBuscaPedidoOS, FormBuscaPedidoOS);
  Application.CreateForm(TFormBuscaTipo_OrcPed, FormBuscaTipo_OrcPed);
  Application.CreateForm(TFormCadOrcamentoTipo, FormCadOrcamentoTipo);
  Application.CreateForm(TFormCadUsuario, FormCadUsuario);
  Application.CreateForm(TFormConfiguracoes, FormConfiguracoes);
  Application.CreateForm(TFormDuplicata, FormDuplicata);
  Application.Run;
end.
