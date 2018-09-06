unit uDMUsuario;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMUsuario = class(TDataModule)
    qryDadosUsuario: TSQLQuery;
    dspDadosUsuario: TDataSetProvider;
    cdsDadosUsuario: TClientDataSet;
    dsDadosUsuario: TDataSource;
    qryViewUsuario: TSQLQuery;
    qryViewUsuarioUSU_ID: TIntegerField;
    qryViewUsuarioUSU_NOME: TStringField;
    qryViewUsuarioUSU_FONE_RES: TStringField;
    qryViewUsuarioUSU_FONE_CEL: TStringField;
    qryViewUsuarioUSU_ATIVO: TStringField;
    dspViewUsuario: TDataSetProvider;
    cdsViewUsuario: TClientDataSet;
    cdsViewUsuarioUSU_ID: TIntegerField;
    cdsViewUsuarioUSU_NOME: TStringField;
    cdsViewUsuarioUSU_FONE_RES: TStringField;
    cdsViewUsuarioUSU_FONE_CEL: TStringField;
    cdsViewUsuarioUSU_ATIVO: TStringField;
    dsViewUsuario: TDataSource;
    dsViewEstado: TDataSource;
    dspViewEstado: TDataSetProvider;
    qryViewEstado: TSQLQuery;
    qryViewEstadoEST_INDEX: TIntegerField;
    qryViewEstadoEST_SIGLA: TStringField;
    qryViewEstadoEST_ESTADO: TStringField;
    cdsViewEstado: TClientDataSet;
    cdsViewEstadoEST_INDEX: TIntegerField;
    cdsViewEstadoEST_SIGLA: TStringField;
    cdsViewEstadoEST_ESTADO: TStringField;
    qryDadosUsuarioUSU_ID: TIntegerField;
    qryDadosUsuarioUSU_LOGIN: TStringField;
    qryDadosUsuarioUSU_SENHA: TStringField;
    qryDadosUsuarioUSU_SENHA_CONF: TStringField;
    qryDadosUsuarioUSU_NOME: TStringField;
    qryDadosUsuarioUSU_ENDERECO: TStringField;
    qryDadosUsuarioUSU_BAIRRO: TStringField;
    qryDadosUsuarioUSU_CIDADE: TStringField;
    qryDadosUsuarioUSU_ESTADO: TStringField;
    qryDadosUsuarioUSU_FONE_RES: TStringField;
    qryDadosUsuarioUSU_FONE_CEL: TStringField;
    qryDadosUsuarioUSU_EMAIL: TStringField;
    qryDadosUsuarioUSU_RG: TStringField;
    qryDadosUsuarioUSU_CPF: TStringField;
    qryDadosUsuarioUSU_ATIVO: TStringField;
    qryDadosUsuarioUSU_LOGIN_TIPO: TStringField;
    qryDadosUsuarioUSU_EXCLUIR: TStringField;
    cdsDadosUsuarioUSU_ID: TIntegerField;
    cdsDadosUsuarioUSU_LOGIN: TStringField;
    cdsDadosUsuarioUSU_SENHA: TStringField;
    cdsDadosUsuarioUSU_SENHA_CONF: TStringField;
    cdsDadosUsuarioUSU_NOME: TStringField;
    cdsDadosUsuarioUSU_ENDERECO: TStringField;
    cdsDadosUsuarioUSU_BAIRRO: TStringField;
    cdsDadosUsuarioUSU_CIDADE: TStringField;
    cdsDadosUsuarioUSU_ESTADO: TStringField;
    cdsDadosUsuarioUSU_FONE_RES: TStringField;
    cdsDadosUsuarioUSU_FONE_CEL: TStringField;
    cdsDadosUsuarioUSU_EMAIL: TStringField;
    cdsDadosUsuarioUSU_RG: TStringField;
    cdsDadosUsuarioUSU_CPF: TStringField;
    cdsDadosUsuarioUSU_ATIVO: TStringField;
    cdsDadosUsuarioUSU_LOGIN_TIPO: TStringField;
    cdsDadosUsuarioUSU_EXCLUIR: TStringField;
    dsDadosNovasPermissoes: TDataSource;
    cdsDadosNovasPermissoes: TClientDataSet;
    dspDadosNovasPermissoes: TDataSetProvider;
    qryDadosNovasPermissoes: TSQLQuery;
    qryDadosNovasPermissoesMENUPERM_USUARIO_ID: TIntegerField;
    qryDadosNovasPermissoesMENUPERM_CAD_CLIENTES: TStringField;
    qryDadosNovasPermissoesMENUPERM_CAD_PRODUTOS: TStringField;
    qryDadosNovasPermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField;
    qryDadosNovasPermissoesMENUPERM_CAD_BANCOS: TStringField;
    qryDadosNovasPermissoesMENUPERM_CAD_USUARIOS: TStringField;
    qryDadosNovasPermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField;
    qryDadosNovasPermissoesMENUPERM_CONS_CLIENTES: TStringField;
    qryDadosNovasPermissoesMENUPERM_CONS_ORCAMENTOS: TStringField;
    qryDadosNovasPermissoesMENUPERM_CONS_PEDIDO: TStringField;
    qryDadosNovasPermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField;
    qryDadosNovasPermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField;
    qryDadosNovasPermissoesMENUPERM_LAN_ORCAMENTO: TStringField;
    qryDadosNovasPermissoesMENUPERM_LAN_PEDIDO: TStringField;
    qryDadosNovasPermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField;
    qryDadosNovasPermissoesMENUPERM_REL_ORCAMENTO: TStringField;
    qryDadosNovasPermissoesMENUPERM_REL_PEDIDO: TStringField;
    qryDadosNovasPermissoesMENUPERM_FIN_DUPLICATA: TStringField;
    qryDadosNovasPermissoesMENUPERM_FIN_RECIBO: TStringField;
    qryDadosNovasPermissoesMENUPERM_SIS_CONFIGURACOES: TStringField;
    qryDadosNovasPermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField;
    qryDadosNovasPermissoesMENUPERM_SIS_SAIR: TStringField;
    qryDadosNovasPermissoesMENUPERM_MN_CADASTRO: TStringField;
    qryDadosNovasPermissoesMENUPERM_MN_CONSULTA: TStringField;
    qryDadosNovasPermissoesMENUPERM_MN_LANCAMENTO: TStringField;
    qryDadosNovasPermissoesMENUPERM_MN_RELATORIO: TStringField;
    qryDadosNovasPermissoesMENUPERM_MN_FINANCEIRO: TStringField;
    qryDadosNovasPermissoesMENUPERM_MN_SISTEMA: TStringField;
    qryDadosNovasPermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField;
    cdsDadosNovasPermissoesMENUPERM_USUARIO_ID: TIntegerField;
    cdsDadosNovasPermissoesMENUPERM_CAD_CLIENTES: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CAD_PRODUTOS: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CAD_BANCOS: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CAD_USUARIOS: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CONS_CLIENTES: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CONS_ORCAMENTOS: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CONS_PEDIDO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_LAN_ORCAMENTO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_LAN_PEDIDO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_REL_ORCAMENTO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_REL_PEDIDO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_FIN_DUPLICATA: TStringField;
    cdsDadosNovasPermissoesMENUPERM_FIN_RECIBO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_SIS_CONFIGURACOES: TStringField;
    cdsDadosNovasPermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField;
    cdsDadosNovasPermissoesMENUPERM_SIS_SAIR: TStringField;
    cdsDadosNovasPermissoesMENUPERM_MN_CADASTRO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_MN_CONSULTA: TStringField;
    cdsDadosNovasPermissoesMENUPERM_MN_LANCAMENTO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_MN_RELATORIO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_MN_FINANCEIRO: TStringField;
    cdsDadosNovasPermissoesMENUPERM_MN_SISTEMA: TStringField;
    cdsDadosNovasPermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField;
    qryDadosUsuarioUSU_FUNCAO: TIntegerField;
    cdsDadosUsuarioUSU_FUNCAO: TIntegerField;
    qryViewUsuarioFuncao: TSQLQuery;
    dspViewUsuarioFuncao: TDataSetProvider;
    cdsViewUsuarioFuncao: TClientDataSet;
    dsViewUsuarioFuncao: TDataSource;
    cdsViewUsuarioFuncaoUSUF_ID: TIntegerField;
    cdsViewUsuarioFuncaoUSUF_DESCRICAO: TStringField;
    qryViewUsuarioFuncaoUSUF_ID: TIntegerField;
    qryViewUsuarioFuncaoUSUF_DESCRICAO: TStringField;
    qryDadosUsuarioUSU_COMISSAO_PEDIDO: TFMTBCDField;
    qryDadosUsuarioUSU_DESCONTO_PEDIDO: TFMTBCDField;
    cdsDadosUsuarioUSU_COMISSAO_PEDIDO: TFMTBCDField;
    cdsDadosUsuarioUSU_DESCONTO_PEDIDO: TFMTBCDField;
    qryDadosUsuarioUSU_DESCONTO_ORCAMENTO: TFMTBCDField;
    cdsDadosUsuarioUSU_DESCONTO_ORCAMENTO: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUsuario: TDMUsuario;

implementation

uses uDMConnection;

{$R *.dfm}

end.
