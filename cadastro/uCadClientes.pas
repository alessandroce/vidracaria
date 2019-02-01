unit uCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery, IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, Mask, frxClass, frxIBXComponents,
  frxDBSet, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, uFerramentas, uClassAvisos,
  DBClient, Provider;

type
  TFCadClientes = class(TFCadPadrao)
    ibCadastroCLI_ID: TIntegerField;
    ibCadastroCLI_CLIENTE: TIBStringField;
    ibCadastroCLI_ENDERECO: TIBStringField;
    ibCadastroCLI_BAIRRO: TIBStringField;
    ibCadastroCLI_CEP: TIBStringField;
    ibCadastroCLI_MUNICIPIO: TIBStringField;
    ibCadastroCLI_FONE: TIBStringField;
    ibCadastroCLI_FAX: TIBStringField;
    ibCadastroCLI_CNPJ: TIBStringField;
    ibCadastroCLI_INSC_EST: TIBStringField;
    ibCadastroCLI_CPF: TIBStringField;
    ibCadastroCLI_RG: TIBStringField;
    ibCadastroCLI_ATIVIDADE: TIBStringField;
    ibCadastroCLI_EMAIL: TIBStringField;
    ibCadastroCLI_CONTATO: TIBStringField;
    ibCadastroCLI_CELULAR: TIBStringField;
    ibCadastroCLI_INFO_ADICIONAL: TBlobField;
    ibCadastroCLI_ATIVO: TIBStringField;
    ibCadastroCLI_COMPLEMENTO: TIBStringField;
    qConsultaID: TIntegerField;
    qConsultaCLI_ID: TIntegerField;
    qConsultaCLI_CLIENTE: TIBStringField;
    qConsultaCLI_ENDERECO: TIBStringField;
    qConsultaCLI_BAIRRO: TIBStringField;
    qConsultaCLI_CEP: TIBStringField;
    qConsultaCLI_MUNICIPIO: TIBStringField;
    qConsultaCLI_FONE: TIBStringField;
    qConsultaCLI_FAX: TIBStringField;
    qConsultaCLI_CNPJ: TIBStringField;
    qConsultaCLI_INSC_EST: TIBStringField;
    qConsultaCLI_CPF: TIBStringField;
    qConsultaCLI_RG: TIBStringField;
    qConsultaCLI_ATIVIDADE: TIBStringField;
    qConsultaCLI_EMAIL: TIBStringField;
    qConsultaCLI_CONTATO: TIBStringField;
    qConsultaCLI_CELULAR: TIBStringField;
    qConsultaCLI_INFO_ADICIONAL: TBlobField;
    qConsultaCLI_ATIVO: TIBStringField;
    qConsultaCLI_COMPLEMENTO: TIBStringField;
    grConsultaDBTableView1CLI_ID: TcxGridDBColumn;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    grConsultaDBTableView1CLI_ENDERECO: TcxGridDBColumn;
    grConsultaDBTableView1CLI_BAIRRO: TcxGridDBColumn;
    grConsultaDBTableView1CLI_CEP: TcxGridDBColumn;
    grConsultaDBTableView1CLI_MUNICIPIO: TcxGridDBColumn;
    grConsultaDBTableView1CLI_FONE: TcxGridDBColumn;
    grConsultaDBTableView1CLI_FAX: TcxGridDBColumn;
    grConsultaDBTableView1CLI_EMAIL: TcxGridDBColumn;
    grConsultaDBTableView1CLI_CONTATO: TcxGridDBColumn;
    grConsultaDBTableView1CLI_CELULAR: TcxGridDBColumn;
    grConsultaDBTableView1CLI_INFO_ADICIONAL: TcxGridDBColumn;
    grConsultaDBTableView1CLI_COMPLEMENTO: TcxGridDBColumn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    ibCadastroCLI_TIPOCLI: TIntegerField;
    frxDBDataset1: TfrxDBDataset;
    qConsultaCLI_TIPOCLI: TIntegerField;
    Label1: TLabel;
    DBEdit11: TDBEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label6: TLabel;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    qTipoCliente: TIBQuery;
    dsTipoCliente: TDataSource;
    dspTipoCliente: TDataSetProvider;
    cdsTipoCliente: TClientDataSet;
    qTipoClienteCTP_ID: TIntegerField;
    qTipoClienteCTP_DESCRICAO: TIBStringField;
    cdsTipoClienteCTP_ID: TIntegerField;
    cdsTipoClienteCTP_DESCRICAO: TStringField;
    cxGrid1DBTableView1CTP_DESCRICAO: TcxGridDBColumn;
    ibClienteTipoCliente: TIBDataSet;
    ibClienteTipoClienteCTC_ID: TIntegerField;
    ibClienteTipoClienteCTC_CLI_ID: TIntegerField;
    ibClienteTipoClienteCTC_CTP_ID: TIntegerField;
    ibClienteTipoClienteCTC_DH_CA: TDateTimeField;
    DBRadioGroup1: TDBRadioGroup;
    ibCadastroCLI_DH_CA: TDateTimeField;
    ibCadastroCLI_TIPOPESSOA: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure ibCadastroAfterInsert(DataSet: TDataSet);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure ibCadastroAfterPost(DataSet: TDataSet);
    procedure ibClienteTipoClientePostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ibClienteTipoClienteDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ibClienteTipoClienteEditError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
  private
    { Private declarations }
    procedure EntrouAbaCadastro;override;
  public
    { Public declarations }
    FTipoCli : Integer;
    FId : Integer;
  end;

var
  FCadClientes: TFCadClientes;

implementation

uses uSelecionarTipoCliente, uDMConexao;


{$R *.dfm}

procedure TFCadClientes.FormShow(Sender: TObject);
begin
  inherited;
  if FTipoCli>0 then
  begin
    case FTipoCli of
      {receber} 1 : pnBarraForm.Caption := 'Cadastro de Cliente';
      {pagar  } 2 : pnBarraForm.Caption := 'Cadastro de Fornecedor';
    end;
  end;
  qConsulta.Close;
  qConsulta.Open;
end;

procedure TFCadClientes.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  case FTipoCli of
    1 : sRelatorio := 'CAD001_CAD_CLIENTE';
    2 : sRelatorio := 'CAD003_CAD_FORNECEDOR';
    else
      sRelatorio := 'CAD001_CAD_CLIENTE';
  end;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
    begin
      getVariavelDesign('TIPOCLI',IntToStr(FTipoCli));
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
    end;
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

procedure TFCadClientes.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FId := qConsultaCLI_ID.Value;
end;

procedure TFCadClientes.ibCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  ibCadastroCLI_TIPOCLI.Value := FTipoCli;
  ibCadastroCLI_ATIVO.Value := 'T';
end;

procedure TFCadClientes.btCAClienteClick(Sender: TObject);
begin
  inherited;

  FSelecionarTipoCliente := TFSelecionarTipoCliente.Create(nil);
  FSelecionarTipoCliente.ShowModal;
  FSelecionarTipoCliente.cdsConsulta.First;
  if FSelecionarTipoCliente.FSelecionado then
  begin
    cdsTipoCliente.EmptyDataSet;
    while not FSelecionarTipoCliente.cdsConsulta.Eof do
    begin
      if FSelecionarTipoCliente.cdsConsultaSELECAO.AsString='S' then
      begin
        if not(cdsTipoCliente.State=dsInsert) then
          cdsTipoCliente.Append;
        cdsTipoClienteCTP_ID.asInteger       := FSelecionarTipoCliente.cdsConsultaID.Value;
        cdsTipoClienteCTP_DESCRICAO.asString := FSelecionarTipoCliente.cdsConsultaDESCRICAO.Value;
        cdsTipoCliente.Post;
      end;
      FSelecionarTipoCliente.cdsConsulta.Next;
    end;
  end;
  FSelecionarTipoCliente.Free;
end;

procedure TFCadClientes.EntrouAbaCadastro;
begin
  inherited;
  qTipoCliente.Close;
  qTipoCliente.ParamByName('cli_id').Value := ibCadastroCLI_ID.Value;
  qTipoCliente.Open;
  qTipoCliente.Last;
  qTipoCliente.First;
  cdsTipoCliente.Close;
  cdsTipoCliente.Open;
end;

procedure TFCadClientes.btEXClienteClick(Sender: TObject);
begin
  inherited;
  cdsTipoCliente.Delete;
end;

procedure TFCadClientes.ibCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  ibClienteTipoCliente.Open;

  while ibClienteTipoCliente.RecordCount > 0 do
    ibClienteTipoCliente.delete;

  cdsTipoCliente.First;
  while not(cdsTipoCliente.Eof) do
  begin

    if not(ibClienteTipoCliente.State=dsInsert) then
      ibClienteTipoCliente.Insert;
    ibClienteTipoClienteCTC_CLI_ID.asInteger := ibCadastroCLI_ID.Value;
    ibClienteTipoClienteCTC_CTP_ID.asInteger := cdsTipoClienteCTP_ID.Value;
    ibClienteTipoClienteCTC_DH_CA.asDateTime := Now;
    ibClienteTipoCliente.Post;

    cdsTipoCliente.Next;
  end;

end;

procedure TFCadClientes.ibClienteTipoClientePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ibCadastroPostError(DataSet,E,Action);
end;

procedure TFCadClientes.ibClienteTipoClienteDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ibCadastroDeleteError(Dataset,E,Action);
end;

procedure TFCadClientes.ibClienteTipoClienteEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ibCadastroEditError(Dataset,E,Action);
end;

end.
