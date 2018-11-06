unit uCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery, IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, Mask, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, frxClass,
  frxDBSet, frxIBXComponents;

type
  TFCadUsuario = class(TFCadPadrao)
    PageControl1: TPageControl;
    TabSheetFicha: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    Bevel4: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    TabSheet1: TTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    ComboBox1: TComboBox;
    ibCadastroUSU_ID: TIntegerField;
    ibCadastroUSU_LOGIN: TIBStringField;
    ibCadastroUSU_SENHA: TIBStringField;
    ibCadastroUSU_SENHA_CONF: TIBStringField;
    ibCadastroUSU_NOME: TIBStringField;
    ibCadastroUSU_ENDERECO: TIBStringField;
    ibCadastroUSU_BAIRRO: TIBStringField;
    ibCadastroUSU_CIDADE: TIBStringField;
    ibCadastroUSU_ESTADO: TIBStringField;
    ibCadastroUSU_FONE_RES: TIBStringField;
    ibCadastroUSU_FONE_CEL: TIBStringField;
    ibCadastroUSU_EMAIL: TIBStringField;
    ibCadastroUSU_RG: TIBStringField;
    ibCadastroUSU_CPF: TIBStringField;
    ibCadastroUSU_ATIVO: TIBStringField;
    ibCadastroUSU_LOGIN_TIPO: TIBStringField;
    ibCadastroUSU_EXCLUIR: TIBStringField;
    ibCadastroUSU_FUNCAO: TIntegerField;
    ibCadastroUSU_COMISSAO_PEDIDO: TIBBCDField;
    ibCadastroUSU_DESCONTO_ORCAMENTO: TIBBCDField;
    ibCadastroUSU_DESCONTO_PEDIDO: TIBBCDField;
    qConsultaID: TIntegerField;
    qConsultaUSU_ID: TIntegerField;
    qConsultaUSU_LOGIN: TIBStringField;
    qConsultaUSU_SENHA: TIBStringField;
    qConsultaUSU_SENHA_CONF: TIBStringField;
    qConsultaUSU_NOME: TIBStringField;
    qConsultaUSU_ENDERECO: TIBStringField;
    qConsultaUSU_BAIRRO: TIBStringField;
    qConsultaUSU_CIDADE: TIBStringField;
    qConsultaUSU_ESTADO: TIBStringField;
    qConsultaUSU_FONE_RES: TIBStringField;
    qConsultaUSU_FONE_CEL: TIBStringField;
    qConsultaUSU_EMAIL: TIBStringField;
    qConsultaUSU_RG: TIBStringField;
    qConsultaUSU_CPF: TIBStringField;
    qConsultaUSU_ATIVO: TIBStringField;
    qConsultaUSU_LOGIN_TIPO: TIBStringField;
    qConsultaUSU_EXCLUIR: TIBStringField;
    qConsultaUSU_FUNCAO: TIntegerField;
    qConsultaUSU_COMISSAO_PEDIDO: TIBBCDField;
    qConsultaUSU_DESCONTO_ORCAMENTO: TIBBCDField;
    qConsultaUSU_DESCONTO_PEDIDO: TIBBCDField;
    grConsultaDBTableView1USU_ID: TcxGridDBColumn;
    grConsultaDBTableView1USU_NOME: TcxGridDBColumn;
    grConsultaDBTableView1USU_ENDERECO: TcxGridDBColumn;
    grConsultaDBTableView1USU_BAIRRO: TcxGridDBColumn;
    grConsultaDBTableView1USU_CIDADE: TcxGridDBColumn;
    grConsultaDBTableView1USU_ESTADO: TcxGridDBColumn;
    grConsultaDBTableView1USU_FONE_RES: TcxGridDBColumn;
    grConsultaDBTableView1USU_FONE_CEL: TcxGridDBColumn;
    grConsultaDBTableView1USU_EMAIL: TcxGridDBColumn;
    grConsultaDBTableView1USU_RG: TcxGridDBColumn;
    grConsultaDBTableView1USU_CPF: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit16: TDBEdit;
    qEstado: TIBQuery;
    qEstadoEST_INDEX: TIntegerField;
    qEstadoEST_SIGLA: TIBStringField;
    qEstadoEST_ESTADO: TIBStringField;
    dsEstado: TDataSource;
    qFuncao: TIBQuery;
    dsFuncao: TDataSource;
    qFuncaoUSUF_ID: TIntegerField;
    qFuncaoUSUF_DESCRICAO: TIBStringField;
    frxDBDataset1: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ibCadastroAfterInsert(DataSet: TDataSet);
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    procedure EntrouAbaCadastro;override;
  public
    { Public declarations }
  end;

var
  FCadUsuario: TFCadUsuario;

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFCadUsuario.EntrouAbaCadastro;
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  DBEdit1.SetFocus;
end;

procedure TFCadUsuario.FormShow(Sender: TObject);
  procedure getQuery(pQuery:TIBQuery);
  begin
  pQuery.Close;
  pQuery.Open;
  pQuery.Last;
  pQuery.First;
  end;
begin
  inherited;
  qConsulta.Open;
  getQuery(qEstado);
  getQuery(qFuncao);
end;

procedure TFCadUsuario.PageControl1Change(Sender: TObject);
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0 : DBEdit1.SetFocus;
    1 : DBLookupComboBox2.SetFocus;
    2 : DBEdit10.SetFocus;
  end;
end;

procedure TFCadUsuario.ibCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  ibCadastroUSU_ATIVO.Value := 'T';
end;

procedure TFCadUsuario.ibCadastroBeforePost(DataSet: TDataSet);
var bPermissao : Boolean;
begin
  inherited;
  if not(Continua(ibCadastroUSU_NOME.Value<>'',['I','Informe Nome','Atenção'])) then
  begin
    PageControl1.ActivePageIndex := 0;
    Abort;
  end;
  if not(Continua(ibCadastroUSU_FUNCAO.Value>0,['I','Informe Função','Atenção'])) then
  begin
    PageControl1.ActivePageIndex := 1;
    Abort;
  end;
  bPermissao := not(((DBEdit10.Text='') or (ComboBox1.Text='') or (DBEdit11.Text='') or (DBEdit12.Text='')));
  if not(Continua(bPermissao,['I','Dados Acesso incorreto','Atenção'])) then
  begin
    PageControl1.ActivePageIndex := 2;
    Abort;
  end;
end;

procedure TFCadUsuario.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'CAD002_CAD_USUARIO';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

end.
