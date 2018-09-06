unit uDMOrcamentoPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, MyClientDataSet, Provider,
  SqlExpr;

type
  TDMOrcamentoPedido = class(TDataModule)
    qryViewOrcPedido_BuscaProduto: TSQLQuery;
    dspViewOrcPedido_BuscaProduto: TDataSetProvider;
    dsViewOrcPedido_BuscaProduto: TDataSource;
    cdsViewOrcPedido_BuscaProduto: TMyClientDataSet;
    qryViewOrcPedido_BuscaCliente: TSQLQuery;
    dspViewOrcPedido_BuscaCliente: TDataSetProvider;
    dsViewOrcPedido_BuscaCliente: TDataSource;
    cdsViewOrcPedido_BuscaCliente: TMyClientDataSet;
    qryDadosOrcPedido: TSQLQuery;
    dspDadosOrcPedido: TDataSetProvider;
    dsDadosOrcPedido: TDataSource;
    cdsDadosOrcPedido: TMyClientDataSet;
    qryDadosOrcPedido_Itens: TSQLQuery;
    dspDadosOrcPedido_Itens: TDataSetProvider;
    dsDadosOrcPedido_Itens: TDataSource;
    cdsDadosOrcPedido_Itens: TMyClientDataSet;
    qryViewOrcPedido_VerificaCadastroCli: TSQLQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    dspViewOrcPedido_VerificaCadastroCli: TDataSetProvider;
    dsViewOrcPedido_VerificaCadastroCli: TDataSource;
    cdsViewOrcPedido_VerificaCadastroCli: TMyClientDataSet;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    qryViewOrcPedido_Numero: TSQLQuery;
    dspViewOrcPedido_Numero: TDataSetProvider;
    dsViewOrcPedido_Numero: TDataSource;
    cdsViewOrcPedido_Numero: TMyClientDataSet;
    cdsViewOrcPedido_NumeroORCPEDIDO_ULTGRAV: TIntegerField;
    qryViewOrcPedido_Itens: TSQLQuery;
    dspViewOrcPedido_Itens: TDataSetProvider;
    dsViewOrcPedido_Itens: TDataSource;
    cdsViewOrcPedido_Itens: TMyClientDataSet;
    qryViewOrcPedido_ItensSoma: TSQLQuery;
    dspViewOrcPedido_ItensSoma: TDataSetProvider;
    dsViewOrcPedido_ItensSoma: TDataSource;
    cdsViewOrcPedido_ItensSoma: TMyClientDataSet;
    qryViewOrcPedido_ItensSomaSOMA: TFMTBCDField;
    cdsViewOrcPedido_ItensSomaSOMA: TFMTBCDField;
    qryViewOrcPedido_BuscaClienteCLI_ID: TIntegerField;
    qryViewOrcPedido_BuscaClienteCLI_CLIENTE: TStringField;
    cdsViewOrcPedido_BuscaClienteCLI_ID: TIntegerField;
    cdsViewOrcPedido_BuscaClienteCLI_CLIENTE: TStringField;
    qryViewOrcPedido_BuscaProdutoPROD_ID: TIntegerField;
    qryViewOrcPedido_BuscaProdutoPROD_PRODTP_ID: TIntegerField;
    qryViewOrcPedido_BuscaProdutoPROD_DESCRICAO: TStringField;
    qryViewOrcPedido_BuscaProdutoPROD_ATIVO: TStringField;
    cdsViewOrcPedido_BuscaProdutoPROD_ID: TIntegerField;
    cdsViewOrcPedido_BuscaProdutoPROD_PRODTP_ID: TIntegerField;
    cdsViewOrcPedido_BuscaProdutoPROD_DESCRICAO: TStringField;
    cdsViewOrcPedido_BuscaProdutoPROD_ATIVO: TStringField;
    qryViewOrcPedido_NumeroORCPEDIDO_ULTGRAV: TIntegerField;
    qryViewOrcPedido_BuscaProdutoPROD_VALOR: TFMTBCDField;
    cdsViewOrcPedido_BuscaProdutoPROD_VALOR: TFMTBCDField;
    qryViewOrcPedido_ItensPagMax: TSQLQuery;
    dspViewOrcPedido_ItensPagMax: TDataSetProvider;
    dsViewOrcPedido_ItensPagMax: TDataSource;
    cdsViewOrcPedido_ItensPagMax: TMyClientDataSet;
    dsViewOrcPedido_Busca: TDataSource;
    dspViewOrcPedido_Busca: TDataSetProvider;
    qryViewOrcPedido_Busca: TSQLQuery;
    cdsViewOrcPedido_Busca: TClientDataSet;
    dsViewClienteCodigo: TDataSource;
    dspViewClienteCodigo: TDataSetProvider;
    qryViewClienteCodigo: TSQLQuery;
    cdsViewClienteCodigo: TClientDataSet;
    qryViewClienteCodigoCLI_ID: TIntegerField;
    qryViewClienteCodigoCLI_CLIENTE: TStringField;
    qryViewClienteCodigoCLI_ENDERECO: TStringField;
    qryViewClienteCodigoCLI_BAIRRO: TStringField;
    qryViewClienteCodigoCLI_CEP: TStringField;
    qryViewClienteCodigoCLI_MUNICIPIO: TStringField;
    qryViewClienteCodigoCLI_FONE: TStringField;
    qryViewClienteCodigoCLI_FAX: TStringField;
    qryViewClienteCodigoCLI_CNPJ: TStringField;
    qryViewClienteCodigoCLI_INSC_EST: TStringField;
    qryViewClienteCodigoCLI_ATIVIDADE: TStringField;
    qryViewClienteCodigoCLI_EMAIL: TStringField;
    qryViewClienteCodigoCLI_CONTATO: TStringField;
    qryViewClienteCodigoCLI_CELULAR: TStringField;
    qryViewClienteCodigoCLI_INFO_ADICIONAL: TBlobField;
    cdsViewClienteCodigoCLI_ID: TIntegerField;
    cdsViewClienteCodigoCLI_CLIENTE: TStringField;
    cdsViewClienteCodigoCLI_ENDERECO: TStringField;
    cdsViewClienteCodigoCLI_BAIRRO: TStringField;
    cdsViewClienteCodigoCLI_CEP: TStringField;
    cdsViewClienteCodigoCLI_MUNICIPIO: TStringField;
    cdsViewClienteCodigoCLI_FONE: TStringField;
    cdsViewClienteCodigoCLI_FAX: TStringField;
    cdsViewClienteCodigoCLI_CNPJ: TStringField;
    cdsViewClienteCodigoCLI_INSC_EST: TStringField;
    cdsViewClienteCodigoCLI_ATIVIDADE: TStringField;
    cdsViewClienteCodigoCLI_EMAIL: TStringField;
    cdsViewClienteCodigoCLI_CONTATO: TStringField;
    cdsViewClienteCodigoCLI_CELULAR: TStringField;
    cdsViewClienteCodigoCLI_INFO_ADICIONAL: TBlobField;
    dsViewOrcPedido_Cliente: TDataSource;
    dspViewOrcPedido_Cliente: TDataSetProvider;
    qryViewOrcPedido_Cliente: TSQLQuery;
    cdsViewOrcPedido_Cliente: TClientDataSet;
    cdsViewOrcPedido_ClienteCLI_ID: TIntegerField;
    cdsViewOrcPedido_ClienteCLI_CLIENTE: TStringField;
    cdsViewOrcPedido_ClienteCLI_ENDERECO: TStringField;
    cdsViewOrcPedido_ClienteCLI_BAIRRO: TStringField;
    cdsViewOrcPedido_ClienteCLI_CEP: TStringField;
    cdsViewOrcPedido_ClienteCLI_MUNICIPIO: TStringField;
    cdsViewOrcPedido_ClienteCLI_FONE: TStringField;
    cdsViewOrcPedido_ClienteCLI_FAX: TStringField;
    cdsViewOrcPedido_ClienteCLI_CNPJ: TStringField;
    cdsViewOrcPedido_ClienteCLI_INSC_EST: TStringField;
    cdsViewOrcPedido_ClienteCLI_ATIVIDADE: TStringField;
    cdsViewOrcPedido_ClienteCLI_EMAIL: TStringField;
    cdsViewOrcPedido_ClienteCLI_CONTATO: TStringField;
    cdsViewOrcPedido_ClienteCLI_CELULAR: TStringField;
    cdsViewOrcPedido_ClienteCLI_INFO_ADICIONAL: TBlobField;
    qryViewOrcPedido_ClienteCLI_ID: TIntegerField;
    qryViewOrcPedido_ClienteCLI_CLIENTE: TStringField;
    qryViewOrcPedido_ClienteCLI_ENDERECO: TStringField;
    qryViewOrcPedido_ClienteCLI_BAIRRO: TStringField;
    qryViewOrcPedido_ClienteCLI_CEP: TStringField;
    qryViewOrcPedido_ClienteCLI_MUNICIPIO: TStringField;
    qryViewOrcPedido_ClienteCLI_FONE: TStringField;
    qryViewOrcPedido_ClienteCLI_FAX: TStringField;
    qryViewOrcPedido_ClienteCLI_CNPJ: TStringField;
    qryViewOrcPedido_ClienteCLI_INSC_EST: TStringField;
    qryViewOrcPedido_ClienteCLI_ATIVIDADE: TStringField;
    qryViewOrcPedido_ClienteCLI_EMAIL: TStringField;
    qryViewOrcPedido_ClienteCLI_CONTATO: TStringField;
    qryViewOrcPedido_ClienteCLI_CELULAR: TStringField;
    qryViewOrcPedido_ClienteCLI_INFO_ADICIONAL: TBlobField;
    cdsViewOrcPedido_ItensPagMaxPAGMAX: TFMTBCDField;
    qryViewOrcPedido_ItensPagMaxPAGMAX: TFMTBCDField;
    dsViewOrcPedido_Usuario: TDataSource;
    dspViewOrcPedido_Usuario: TDataSetProvider;
    qryViewOrcPedido_Usuario: TSQLQuery;
    cdsViewOrcPedido_Usuario: TClientDataSet;
    cdsViewOrcPedido_UsuarioUSU_ID: TIntegerField;
    cdsViewOrcPedido_UsuarioUSU_LOGIN: TStringField;
    cdsViewOrcPedido_UsuarioUSU_SENHA: TStringField;
    cdsViewOrcPedido_UsuarioUSU_SENHA_CONF: TStringField;
    cdsViewOrcPedido_UsuarioUSU_NOME: TStringField;
    cdsViewOrcPedido_UsuarioUSU_ENDERECO: TStringField;
    cdsViewOrcPedido_UsuarioUSU_BAIRRO: TStringField;
    cdsViewOrcPedido_UsuarioUSU_CIDADE: TStringField;
    cdsViewOrcPedido_UsuarioUSU_ESTADO: TStringField;
    cdsViewOrcPedido_UsuarioUSU_FONE_RES: TStringField;
    cdsViewOrcPedido_UsuarioUSU_FONE_CEL: TStringField;
    cdsViewOrcPedido_UsuarioUSU_EMAIL: TStringField;
    cdsViewOrcPedido_UsuarioUSU_RG: TStringField;
    cdsViewOrcPedido_UsuarioUSU_CPF: TStringField;
    cdsViewOrcPedido_UsuarioUSU_ATIVO: TStringField;
    cdsViewOrcPedido_UsuarioUSU_LOGIN_TIPO: TStringField;
    qryViewOrcPedido_UsuarioUSU_ID: TIntegerField;
    qryViewOrcPedido_UsuarioUSU_LOGIN: TStringField;
    qryViewOrcPedido_UsuarioUSU_SENHA: TStringField;
    qryViewOrcPedido_UsuarioUSU_SENHA_CONF: TStringField;
    qryViewOrcPedido_UsuarioUSU_NOME: TStringField;
    qryViewOrcPedido_UsuarioUSU_ENDERECO: TStringField;
    qryViewOrcPedido_UsuarioUSU_BAIRRO: TStringField;
    qryViewOrcPedido_UsuarioUSU_CIDADE: TStringField;
    qryViewOrcPedido_UsuarioUSU_ESTADO: TStringField;
    qryViewOrcPedido_UsuarioUSU_FONE_RES: TStringField;
    qryViewOrcPedido_UsuarioUSU_FONE_CEL: TStringField;
    qryViewOrcPedido_UsuarioUSU_EMAIL: TStringField;
    qryViewOrcPedido_UsuarioUSU_RG: TStringField;
    qryViewOrcPedido_UsuarioUSU_CPF: TStringField;
    qryViewOrcPedido_UsuarioUSU_ATIVO: TStringField;
    qryViewOrcPedido_UsuarioUSU_LOGIN_TIPO: TStringField;
    dsViewOrcPedido_Tipo: TDataSource;
    dspViewOrcPedido_Tipo: TDataSetProvider;
    qryViewOrcPedido_Tipo: TSQLQuery;
    cdsViewOrcPedido_Tipo: TClientDataSet;
    qryViewClienteCodigoCLI_ATIVO: TStringField;
    qryViewOrcPedido_ClienteCLI_ATIVO: TStringField;
    qryViewOrcPedido_TipoORCTP_ID: TIntegerField;
    qryViewOrcPedido_TipoORCTP_DESCRICAO: TStringField;
    cdsViewOrcPedido_TipoORCTP_ID: TIntegerField;
    cdsViewOrcPedido_TipoORCTP_DESCRICAO: TStringField;
    cdsDadosOrcPedidoORCPED_ID: TIntegerField;
    cdsDadosOrcPedidoORCPED_CLI_ID: TIntegerField;
    cdsDadosOrcPedidoORCPED_USU_ID: TIntegerField;
    cdsDadosOrcPedidoORCPED_ORCTP_ID: TIntegerField;
    cdsDadosOrcPedidoORCPED_DATA: TDateField;
    cdsDadosOrcPedidoORCPED_TIPO: TStringField;
    cdsDadosOrcPedidoORCPED_OBSERVACAO: TBlobField;
    cdsDadosOrcPedidoORCPED_MENSAGENS: TBlobField;
    cdsDadosOrcPedidoORCPED_VALOR_TOTAL: TFMTBCDField;
    cdsDadosOrcPedidoORCPED_TIPO_PAGTO: TStringField;
    cdsDadosOrcPedidoORCPED_PERIODO_MANUT: TIntegerField;
    cdsDadosOrcPedidoORCPED_DATA_MANUT: TDateField;
    cdsDadosOrcPedidoORCPED_MANUT_EFETUADA: TStringField;
    qryDadosOrcPedidoORCPED_ID: TIntegerField;
    qryDadosOrcPedidoORCPED_CLI_ID: TIntegerField;
    qryDadosOrcPedidoORCPED_USU_ID: TIntegerField;
    qryDadosOrcPedidoORCPED_ORCTP_ID: TIntegerField;
    qryDadosOrcPedidoORCPED_DATA: TDateField;
    qryDadosOrcPedidoORCPED_TIPO: TStringField;
    qryDadosOrcPedidoORCPED_OBSERVACAO: TBlobField;
    qryDadosOrcPedidoORCPED_MENSAGENS: TBlobField;
    qryDadosOrcPedidoORCPED_VALOR_TOTAL: TFMTBCDField;
    qryDadosOrcPedidoORCPED_TIPO_PAGTO: TStringField;
    qryDadosOrcPedidoORCPED_PERIODO_MANUT: TIntegerField;
    qryDadosOrcPedidoORCPED_DATA_MANUT: TDateField;
    qryDadosOrcPedidoORCPED_MANUT_EFETUADA: TStringField;
    dsViewOrcPedido_Manutencao: TDataSource;
    dspViewOrcPedido_Manutencao: TDataSetProvider;
    qryViewOrcPedido_Manutencao: TSQLQuery;
    cdsViewOrcPedido_Manutencao: TClientDataSet;
    qryViewOrcPedido_ManutencaoORCPED_ID: TIntegerField;
    qryViewOrcPedido_ManutencaoORCPED_DATA_MANUT: TDateField;
    qryViewOrcPedido_ManutencaoCLI_CLIENTE: TStringField;
    cdsViewOrcPedido_ManutencaoORCPED_ID: TIntegerField;
    cdsViewOrcPedido_ManutencaoORCPED_DATA_MANUT: TDateField;
    cdsViewOrcPedido_ManutencaoCLI_CLIENTE: TStringField;
    qryViewOrcPedido_ManutencaoORCPED_DATA: TDateField;
    cdsViewOrcPedido_ManutencaoORCPED_DATA: TDateField;
    qryDadosOrcPedidoORCPED_PORCENTAGEM: TStringField;
    cdsDadosOrcPedidoORCPED_PORCENTAGEM: TStringField;
    dsViewOrcPedido_tipoBusca: TDataSource;
    dspViewOrcPedido_tipoBusca: TDataSetProvider;
    qryViewOrcPedido_tipoBusca: TSQLQuery;
    cdsViewOrcPedido_tipoBusca: TClientDataSet;
    qryViewOrcPedido_tipoBuscaORCTP_ID: TIntegerField;
    qryViewOrcPedido_tipoBuscaORCTP_DESCRICAO: TStringField;
    cdsViewOrcPedido_tipoBuscaORCTP_ID: TIntegerField;
    cdsViewOrcPedido_tipoBuscaORCTP_DESCRICAO: TStringField;
    dsViewTipoCodigo: TDataSource;
    dspViewTipoCodigo: TDataSetProvider;
    qryViewTipoCodigo: TSQLQuery;
    cdsViewTipoCodigo: TClientDataSet;
    cdsViewTipoCodigoORCTP_ID: TIntegerField;
    cdsViewTipoCodigoORCTP_DESCRICAO: TStringField;
    qryViewTipoCodigoORCTP_ID: TIntegerField;
    qryViewTipoCodigoORCTP_DESCRICAO: TStringField;
    qryDadosOrcPedidoORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField;
    cdsDadosOrcPedidoORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField;
    cdsViewClienteCodigoCLI_ATIVO: TStringField;
    cdsViewOrcPedido_ClienteCLI_ATIVO: TStringField;
    qryDadosOrcPedidoORCPED_DESCONTO: TFMTBCDField;
    cdsDadosOrcPedidoORCPED_DESCONTO: TFMTBCDField;
    qryDadosOrcPedidoORCPED_VALORVENDA: TFMTBCDField;
    cdsDadosOrcPedidoORCPED_VALORVENDA: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorio: TSQLQuery;
    dspViewOrcPedido_ItensAcessorio: TDataSetProvider;
    cdsViewOrcPedido_ItensAcessorio: TMyClientDataSet;
    dsViewOrcPedido_ItensAcessorio: TDataSource;
    qryDadosOrcPedido_ItensAcessorio: TSQLQuery;
    dspDadosOrcPedido_ItensAcessorio: TDataSetProvider;
    dsDadosOrcPedido_ItensAcessorio: TDataSource;
    cdsDadosOrcPedido_ItensAcessorio: TMyClientDataSet;
    qryViewOrcPedido_BuscaProdutoPROD_UNIDMEDIDA: TStringField;
    cdsViewOrcPedido_BuscaProdutoPROD_UNIDMEDIDA: TStringField;
    qryDadosOrcPedidoORCPED_VALORPARCELADO: TFMTBCDField;
    cdsDadosOrcPedidoORCPED_VALORPARCELADO: TFMTBCDField;
    qryDadosOrcPedidoORCPED_PARCELADOEM: TIntegerField;
    cdsDadosOrcPedidoORCPED_PARCELADOEM: TIntegerField;
    qryDadosOrcPedidoORCPED_VALORPARCELA: TFMTBCDField;
    cdsDadosOrcPedidoORCPED_VALORPARCELA: TFMTBCDField;
    qryDadosOrcPedidoORCPED_DATAREVISAO: TDateField;
    cdsDadosOrcPedidoORCPED_DATAREVISAO: TDateField;
    qryDadosOrcPedidoORCPED_TEMREVISAO: TStringField;
    cdsDadosOrcPedidoORCPED_TEMREVISAO: TStringField;
    cdsViewOrcPedido_ItensORCPED_VALOR_TOTAL: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_ORCPED_ID: TIntegerField;
    cdsViewOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField;
    cdsViewOrcPedido_ItensITENS_TAMANHO: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_LARGURA: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField;
    cdsViewOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_ALTURA: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_DESCRICAO: TStringField;
    cdsViewOrcPedido_ItensITENS_SEQUE: TIntegerField;
    cdsViewOrcPedido_ItensITENS_UNIDMEDIDA: TStringField;
    qryViewOrcPedido_ItensORCPED_VALOR_TOTAL: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_ORCPED_ID: TIntegerField;
    qryViewOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField;
    qryViewOrcPedido_ItensITENS_TAMANHO: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_LARGURA: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField;
    qryViewOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_ALTURA: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_DESCRICAO: TStringField;
    qryViewOrcPedido_ItensITENS_SEQUE: TIntegerField;
    qryViewOrcPedido_ItensITENS_UNIDMEDIDA: TStringField;
    qryViewOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioORCPED_VALOR_TOTAL: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField;
    qryViewOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField;
    qryViewOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField;
    qryViewOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField;
    qryViewOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField;
    qryViewOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioORCPED_VALOR_TOTAL: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField;
    cdsViewOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField;
    cdsViewOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField;
    cdsViewOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField;
    cdsViewOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField;
    cdsViewOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField;
    cdsViewOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField;
    qryViewOrcPedido_BuscaNUMERO: TIntegerField;
    qryViewOrcPedido_BuscaCLIENTE_ID: TIntegerField;
    qryViewOrcPedido_BuscaCLIENTE2: TStringField;
    qryViewOrcPedido_BuscaTIPODOC: TStringField;
    qryViewOrcPedido_BuscaORCPED_DATA: TDateField;
    qryViewOrcPedido_BuscaORCPED_TIPO: TStringField;
    qryViewOrcPedido_BuscaORCPED_OBSERVACAO: TBlobField;
    qryViewOrcPedido_BuscaORCPED_MENSAGENS: TBlobField;
    qryViewOrcPedido_BuscaORCPED_VALOR_TOTAL: TFMTBCDField;
    qryViewOrcPedido_BuscaORCPED_TIPO_PAGTO: TStringField;
    qryViewOrcPedido_BuscaORCPED_PERIODO_MANUT: TIntegerField;
    qryViewOrcPedido_BuscaORCPED_DATA_MANUT: TDateField;
    qryViewOrcPedido_BuscaORCPED_MANUT_EFETUADA: TStringField;
    qryViewOrcPedido_BuscaORCPED_PORCENTAGEM: TStringField;
    qryViewOrcPedido_BuscaORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField;
    qryViewOrcPedido_BuscaORCPED_DESCONTO: TFMTBCDField;
    qryViewOrcPedido_BuscaORCPED_VALORVENDA: TFMTBCDField;
    qryViewOrcPedido_BuscaORCPED_VALORPARCELADO: TFMTBCDField;
    qryViewOrcPedido_BuscaORCPED_PARCELADOEM: TIntegerField;
    qryViewOrcPedido_BuscaORCPED_VALORPARCELA: TFMTBCDField;
    qryViewOrcPedido_BuscaORCPED_DATAREVISAO: TDateField;
    qryViewOrcPedido_BuscaORCPED_TEMREVISAO: TStringField;
    cdsViewOrcPedido_BuscaNUMERO: TIntegerField;
    cdsViewOrcPedido_BuscaCLIENTE_ID: TIntegerField;
    cdsViewOrcPedido_BuscaCLIENTE2: TStringField;
    cdsViewOrcPedido_BuscaTIPODOC: TStringField;
    cdsViewOrcPedido_BuscaORCPED_DATA: TDateField;
    cdsViewOrcPedido_BuscaORCPED_TIPO: TStringField;
    cdsViewOrcPedido_BuscaORCPED_OBSERVACAO: TBlobField;
    cdsViewOrcPedido_BuscaORCPED_MENSAGENS: TBlobField;
    cdsViewOrcPedido_BuscaORCPED_VALOR_TOTAL: TFMTBCDField;
    cdsViewOrcPedido_BuscaORCPED_TIPO_PAGTO: TStringField;
    cdsViewOrcPedido_BuscaORCPED_PERIODO_MANUT: TIntegerField;
    cdsViewOrcPedido_BuscaORCPED_DATA_MANUT: TDateField;
    cdsViewOrcPedido_BuscaORCPED_MANUT_EFETUADA: TStringField;
    cdsViewOrcPedido_BuscaORCPED_PORCENTAGEM: TStringField;
    cdsViewOrcPedido_BuscaORCPED_VALOR_TOTAL_PORCENT: TFMTBCDField;
    cdsViewOrcPedido_BuscaORCPED_DESCONTO: TFMTBCDField;
    cdsViewOrcPedido_BuscaORCPED_VALORVENDA: TFMTBCDField;
    cdsViewOrcPedido_BuscaORCPED_VALORPARCELADO: TFMTBCDField;
    cdsViewOrcPedido_BuscaORCPED_PARCELADOEM: TIntegerField;
    cdsViewOrcPedido_BuscaORCPED_VALORPARCELA: TFMTBCDField;
    cdsViewOrcPedido_BuscaORCPED_DATAREVISAO: TDateField;
    cdsViewOrcPedido_BuscaORCPED_TEMREVISAO: TStringField;
    qryGetNewHandle: TSQLQuery;
    dspGetNewHandle: TDataSetProvider;
    cdsGetNewHandle: TMyClientDataSet;
    dsGetNewHandle: TDataSource;
    qryGetNewHandleGEN_ID: TFMTBCDField;
    cdsGetNewHandleGEN_ID: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField;
    qryDadosOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField;
    qryDadosOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField;
    qryDadosOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField;
    qryDadosOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField;
    qryDadosOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField;
    qryDadosOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_ORCPED_ID: TIntegerField;
    cdsDadosOrcPedido_ItensAcessorioITENS_QTDADE_PECA: TIntegerField;
    cdsDadosOrcPedido_ItensAcessorioITENS_TAMANHO: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_VALOR_TOTAL: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_LARGURA: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_COMPRIMENTO: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_QTDADE_GAVETA: TIntegerField;
    cdsDadosOrcPedido_ItensAcessorioITENS_VALOR_UNIT: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_ALTURA: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_DESCRICAO: TStringField;
    cdsDadosOrcPedido_ItensAcessorioITENS_SEQUE: TIntegerField;
    cdsDadosOrcPedido_ItensAcessorioITENS_ESPESSURA: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_QUANTIDADE: TFMTBCDField;
    cdsDadosOrcPedido_ItensAcessorioITENS_MEDIDA_METRO: TFMTBCDField;
    qryViewOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField;
    cdsViewOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField;
    qryDadosOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField;
    cdsDadosOrcPedido_ItensAcessorioITENS_UNIDMEDIDA: TStringField;
    qryViewOrcPedido_BuscaProdutoPROD_ESPESSURA: TFMTBCDField;
    qryViewOrcPedido_BuscaProdutoPROD_LARGURA: TFMTBCDField;
    qryViewOrcPedido_BuscaProdutoPROD_ALTURA: TFMTBCDField;
    qryViewOrcPedido_BuscaProdutoPROD_MEDIDA_METRO: TFMTBCDField;
    cdsViewOrcPedido_BuscaProdutoPROD_ESPESSURA: TFMTBCDField;
    cdsViewOrcPedido_BuscaProdutoPROD_LARGURA: TFMTBCDField;
    cdsViewOrcPedido_BuscaProdutoPROD_ALTURA: TFMTBCDField;
    cdsViewOrcPedido_BuscaProdutoPROD_MEDIDA_METRO: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_ACABAMENTO: TStringField;
    qryViewOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField;
    qryViewOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField;
    cdsViewOrcPedido_ItensITENS_ACABAMENTO: TStringField;
    cdsViewOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField;
    cdsViewOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField;
    qryAcabamentoItens: TSQLQuery;
    dspAcabamentoItens: TDataSetProvider;
    cdsAcabamentoItens: TMyClientDataSet;
    dsAcabamentoItens: TDataSource;
    qryAcabamentoItensITEM_PRODUTO: TIntegerField;
    qryAcabamentoItensTIPO_PRODUTO: TStringField;
    qryAcabamentoItensDESCRICAO: TStringField;
    qryAcabamentoItensQUANTIDADE: TFMTBCDField;
    qryAcabamentoItensCOR: TStringField;
    cdsAcabamentoItensITEM_PRODUTO: TIntegerField;
    cdsAcabamentoItensTIPO_PRODUTO: TStringField;
    cdsAcabamentoItensDESCRICAO: TStringField;
    cdsAcabamentoItensQUANTIDADE: TFMTBCDField;
    cdsAcabamentoItensCOR: TStringField;
    qryDadosOrcPedido_AcabamentoItens: TSQLQuery;
    dspDadosOrcPedido_AcabamentoItens: TDataSetProvider;
    dsDadosOrcPedido_AcabamentoItens: TDataSource;
    cdsDadosOrcPedido_AcabamentoItens: TMyClientDataSet;
    qryDadosOrcPedido_AcabamentoItensITEM_ID: TIntegerField;
    qryDadosOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField;
    qryDadosOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField;
    qryDadosOrcPedido_AcabamentoItensDESCRICAO: TStringField;
    qryDadosOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField;
    qryDadosOrcPedido_AcabamentoItensCOR: TStringField;
    cdsDadosOrcPedido_AcabamentoItensITEM_ID: TIntegerField;
    cdsDadosOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField;
    cdsDadosOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField;
    cdsDadosOrcPedido_AcabamentoItensDESCRICAO: TStringField;
    cdsDadosOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField;
    cdsDadosOrcPedido_AcabamentoItensCOR: TStringField;
    qryViewOrcPedido_AcabamentoItens: TSQLQuery;
    dspViewOrcPedido_AcabamentoItens: TDataSetProvider;
    dsViewOrcPedido_AcabamentoItens: TDataSource;
    cdsViewOrcPedido_AcabamentoItens: TMyClientDataSet;
    qryViewOrcPedido_AcabamentoItensITEM_ID: TIntegerField;
    qryViewOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField;
    qryViewOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField;
    qryViewOrcPedido_AcabamentoItensDESCRICAO: TStringField;
    qryViewOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField;
    qryViewOrcPedido_AcabamentoItensCOR: TStringField;
    cdsViewOrcPedido_AcabamentoItensITEM_ID: TIntegerField;
    cdsViewOrcPedido_AcabamentoItensITEM_PRODUTO: TIntegerField;
    cdsViewOrcPedido_AcabamentoItensTIPO_PRODUTO: TStringField;
    cdsViewOrcPedido_AcabamentoItensDESCRICAO: TStringField;
    cdsViewOrcPedido_AcabamentoItensQUANTIDADE: TFMTBCDField;
    cdsViewOrcPedido_AcabamentoItensCOR: TStringField;
    qryDadosOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField;
    cdsDadosOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField;
    qryViewOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField;
    cdsViewOrcPedido_AcabamentoItensITENS_ORCPED_ID: TIntegerField;
    qryDadosDeleteProdutoItens: TSQLQuery;
    dspDadosDeleteProdutoItens: TDataSetProvider;
    dsDadosDeleteProdutoItens: TDataSource;
    cdsDadosDeleteProdutoItens: TMyClientDataSet;
    qryDadosDeleteAcabamentoItens: TSQLQuery;
    dspDadosDeleteAcabamentoItens: TDataSetProvider;
    dsDadosDeleteAcabamentoItens: TDataSource;
    cdsDadosDeleteAcabamentoItens: TMyClientDataSet;
    qryDadosDeleteAcessorioItens: TSQLQuery;
    dspDadosDeleteAcessorioItens: TDataSetProvider;
    dsDadosDeleteAcessorioItens: TDataSource;
    cdsDadosDeleteAcessorioItens: TMyClientDataSet;
    qryDadosOrcPedido_ItensITENS_ID: TIntegerField;
    qryDadosOrcPedido_ItensITENS_ORCPED_ID: TIntegerField;
    qryDadosOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField;
    qryDadosOrcPedido_ItensITENS_TAMANHO: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_LARGURA: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField;
    qryDadosOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_ALTURA: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_DESCRICAO: TStringField;
    qryDadosOrcPedido_ItensITENS_SEQUE: TIntegerField;
    qryDadosOrcPedido_ItensITENS_UNIDMEDIDA: TStringField;
    qryDadosOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_ACABAMENTO: TStringField;
    qryDadosOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField;
    qryDadosOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField;
    cdsDadosOrcPedido_ItensITENS_ID: TIntegerField;
    cdsDadosOrcPedido_ItensITENS_ORCPED_ID: TIntegerField;
    cdsDadosOrcPedido_ItensITENS_QTDADE_PECA: TIntegerField;
    cdsDadosOrcPedido_ItensITENS_TAMANHO: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_VALOR_TOTAL: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_LARGURA: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_COMPRIMENTO: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_QTDADE_GAVETA: TIntegerField;
    cdsDadosOrcPedido_ItensITENS_VALOR_UNIT: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_ALTURA: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_DESCRICAO: TStringField;
    cdsDadosOrcPedido_ItensITENS_SEQUE: TIntegerField;
    cdsDadosOrcPedido_ItensITENS_UNIDMEDIDA: TStringField;
    cdsDadosOrcPedido_ItensITENS_ESPESSURA: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_MEDIDA_METRO: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_QUANTIDADE: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_ACABAMENTO: TStringField;
    cdsDadosOrcPedido_ItensITENS_QTDE_ACABAMENTO: TFMTBCDField;
    cdsDadosOrcPedido_ItensITENS_COR_ACABAMENTO: TStringField;
    qryDadosOrcPedido_ItensAcessorioITENS_ID: TIntegerField;
    cdsDadosOrcPedido_ItensAcessorioITENS_ID: TIntegerField;
    qryAcabamentoItensITEM_ID: TIntegerField;
    qryAcabamentoItensITENS_ORCPED_ID: TIntegerField;
    cdsAcabamentoItensITEM_ID: TIntegerField;
    cdsAcabamentoItensITENS_ORCPED_ID: TIntegerField;
    qryDadosOrcPedido_ItensITENS_PRODUTO: TIntegerField;
    cdsDadosOrcPedido_ItensITENS_PRODUTO: TIntegerField;
    qryViewOrcPedido_ItensITENS_ID: TIntegerField;
    qryViewOrcPedido_ItensITENS_PRODUTO: TIntegerField;
    cdsViewOrcPedido_ItensITENS_ID: TIntegerField;
    cdsViewOrcPedido_ItensITENS_PRODUTO: TIntegerField;
    qryDadosOrcPedidoORCPED_ACRESCIMO: TFMTBCDField;
    cdsDadosOrcPedidoORCPED_ACRESCIMO: TFMTBCDField;
    qryViewOrcPedido_BuscaORCPED_ACRESCIMO: TFMTBCDField;
    cdsViewOrcPedido_BuscaORCPED_ACRESCIMO: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOrcamentoPedido: TDMOrcamentoPedido;

implementation

uses uDMConnection;

{$R *.dfm}

end.
