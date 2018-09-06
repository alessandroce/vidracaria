unit uDmMenuPermissao;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TDMMenuPermissao = class(TDataModule)
    dsDados3Permissoes: TDataSource;
    cdsDados3Permissoes: TClientDataSet;
    dspDados3Permissoes: TDataSetProvider;
    qryDados3Permissoes: TSQLQuery;
    Qusuarios: TSQLQuery;
    dspusuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    DSusuarios: TDataSource;
    QusuariosUSUARIOID: TIntegerField;
    QusuariosLOGIN: TStringField;
    QusuariosSENHA: TStringField;
    QusuariosEXCLUIR: TStringField;
    cdsUsuariosUSUARIOID: TIntegerField;
    cdsUsuariosLOGIN: TStringField;
    cdsUsuariosSENHA: TStringField;
    cdsUsuariosEXCLUIR: TStringField;
    qryDados3PermissoesMENUPERM_USUARIO_ID: TIntegerField;
    qryDados3PermissoesMENUPERM_CAD_CLIENTES: TStringField;
    qryDados3PermissoesMENUPERM_CAD_PRODUTOS: TStringField;
    qryDados3PermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField;
    qryDados3PermissoesMENUPERM_CAD_BANCOS: TStringField;
    qryDados3PermissoesMENUPERM_CAD_USUARIOS: TStringField;
    qryDados3PermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField;
    qryDados3PermissoesMENUPERM_CONS_CLIENTES: TStringField;
    qryDados3PermissoesMENUPERM_CONS_ORCAMENTOS: TStringField;
    qryDados3PermissoesMENUPERM_CONS_PEDIDO: TStringField;
    qryDados3PermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField;
    qryDados3PermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField;
    qryDados3PermissoesMENUPERM_LAN_ORCAMENTO: TStringField;
    qryDados3PermissoesMENUPERM_LAN_PEDIDO: TStringField;
    qryDados3PermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField;
    qryDados3PermissoesMENUPERM_REL_ORCAMENTO: TStringField;
    qryDados3PermissoesMENUPERM_REL_PEDIDO: TStringField;
    qryDados3PermissoesMENUPERM_FIN_DUPLICATA: TStringField;
    qryDados3PermissoesMENUPERM_FIN_RECIBO: TStringField;
    qryDados3PermissoesMENUPERM_SIS_CONFIGURACOES: TStringField;
    qryDados3PermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField;
    qryDados3PermissoesMENUPERM_SIS_SAIR: TStringField;
    cdsDados3PermissoesMENUPERM_USUARIO_ID: TIntegerField;
    cdsDados3PermissoesMENUPERM_CAD_CLIENTES: TStringField;
    cdsDados3PermissoesMENUPERM_CAD_PRODUTOS: TStringField;
    cdsDados3PermissoesMENUPERM_CAD_TIPOPRODUTO: TStringField;
    cdsDados3PermissoesMENUPERM_CAD_BANCOS: TStringField;
    cdsDados3PermissoesMENUPERM_CAD_USUARIOS: TStringField;
    cdsDados3PermissoesMENUPERM_CAD_TIPOORCAMENTO: TStringField;
    cdsDados3PermissoesMENUPERM_CONS_CLIENTES: TStringField;
    cdsDados3PermissoesMENUPERM_CONS_ORCAMENTOS: TStringField;
    cdsDados3PermissoesMENUPERM_CONS_PEDIDO: TStringField;
    cdsDados3PermissoesMENUPERM_CONS_ITENSPEDIDO: TStringField;
    cdsDados3PermissoesMENUPERM_CONS_ORDEMSERVICO: TStringField;
    cdsDados3PermissoesMENUPERM_LAN_ORCAMENTO: TStringField;
    cdsDados3PermissoesMENUPERM_LAN_PEDIDO: TStringField;
    cdsDados3PermissoesMENUPERM_LAN_PRDEMSERVICO: TStringField;
    cdsDados3PermissoesMENUPERM_REL_ORCAMENTO: TStringField;
    cdsDados3PermissoesMENUPERM_REL_PEDIDO: TStringField;
    cdsDados3PermissoesMENUPERM_FIN_DUPLICATA: TStringField;
    cdsDados3PermissoesMENUPERM_FIN_RECIBO: TStringField;
    cdsDados3PermissoesMENUPERM_SIS_CONFIGURACOES: TStringField;
    cdsDados3PermissoesMENUPERM_SIS_CADASTROEMITENTE: TStringField;
    cdsDados3PermissoesMENUPERM_SIS_SAIR: TStringField;
    qryDados3PermissoesMENUPERM_MN_CADASTRO: TStringField;
    qryDados3PermissoesMENUPERM_MN_CONSULTA: TStringField;
    qryDados3PermissoesMENUPERM_MN_LANCAMENTO: TStringField;
    qryDados3PermissoesMENUPERM_MN_RELATORIO: TStringField;
    qryDados3PermissoesMENUPERM_MN_FINANCEIRO: TStringField;
    qryDados3PermissoesMENUPERM_MN_SISTEMA: TStringField;
    cdsDados3PermissoesMENUPERM_MN_CADASTRO: TStringField;
    cdsDados3PermissoesMENUPERM_MN_CONSULTA: TStringField;
    cdsDados3PermissoesMENUPERM_MN_LANCAMENTO: TStringField;
    cdsDados3PermissoesMENUPERM_MN_RELATORIO: TStringField;
    cdsDados3PermissoesMENUPERM_MN_FINANCEIRO: TStringField;
    cdsDados3PermissoesMENUPERM_MN_SISTEMA: TStringField;
    qryDados3PermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField;
    cdsDados3PermissoesMENUPERM_REL_ETIQUETACLIENTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMenuPermissao: TDMMenuPermissao;

implementation

uses uDMConnection;

{$R *.dfm}

end.
