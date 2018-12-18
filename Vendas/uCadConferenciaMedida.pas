unit uCadConferenciaMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, DB, cxDBData, frxClass, frxIBXComponents,
  ActnList, ImgList, IBQuery, IBCustomDataSet, ExtCtrls, ComCtrls,
  StdCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBCtrls, Mask;

type
  TFCadConferenciaMedida = class(TFCadPadrao)
    ibItens: TIBDataSet;
    dsItens: TDataSource;
    ibCadastroCMED_ID: TIntegerField;
    ibCadastroCMED_AGENDA_ID: TIntegerField;
    ibCadastroCMED_VENDA_ID: TIntegerField;
    ibCadastroCMED_NUMDOCUMENTO: TIntegerField;
    ibCadastroCMED_RESPONSAVEL_ID: TIntegerField;
    ibCadastroCMED_DH_CA: TDateTimeField;
    ibCadastroCMED_DATAEMISSAO: TDateField;
    ibCadastroCMED_DATACONCLUSAO: TDateField;
    qConsultaCMED_ID: TIntegerField;
    qConsultaCMED_AGENDA_ID: TIntegerField;
    qConsultaCMED_VENDA_ID: TIntegerField;
    qConsultaCMED_NUMDOCUMENTO: TIntegerField;
    qConsultaCMED_RESPONSAVEL_ID: TIntegerField;
    qConsultaCMED_DH_CA: TDateTimeField;
    qConsultaCMED_DATAEMISSAO: TDateField;
    qConsultaCMED_DATACONCLUSAO: TDateField;
    qConsultaDESC_AGENDA: TIBStringField;
    qConsultaNUM_VENDA: TIntegerField;
    grConsultaDBTableView1CMED_DATAEMISSAO: TcxGridDBColumn;
    grConsultaDBTableView1CMED_DATACONCLUSAO: TcxGridDBColumn;
    grConsultaDBTableView1DESC_AGENDA: TcxGridDBColumn;
    grConsultaDBTableView1NUM_VENDA: TcxGridDBColumn;
    qConsultaCLI_CLIENTE: TIBStringField;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    ibItensCMIT_ID: TIntegerField;
    ibItensCMIT_CMED_ID: TIntegerField;
    ibItensCMIT_DESCRICAO: TIBStringField;
    ibItensCMIT_MEDIDAS: TIBStringField;
    ibItensCMIT_DH_CA: TDateTimeField;
    qCliente: TIBQuery;
    qClienteID: TIntegerField;
    qClienteNOME: TIBStringField;
    dsCliente: TDataSource;
    qResponsavel: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    dsResponsavel: TDataSource;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btCAResponsavel: TBitBtn;
    btEXResponsavel: TBitBtn;
    btCAPedido: TBitBtn;
    btEXPedido: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Bevel2: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CMIT_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CMIT_MEDIDAS: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    ibCadastroCMED_CLIENTE_ID: TIntegerField;
    Label8: TLabel;
    btCAAgenda: TBitBtn;
    btEXAgenda: TBitBtn;
    qAgenda: TIBQuery;
    IntegerField2: TIntegerField;
    dsAgeda: TDataSource;
    qAgendaDESCRICAO: TIBStringField;
    DBEdit6: TDBEdit;
    qConsultaID: TIntegerField;
    qConsultaCMED_CLIENTE_ID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure ibCadastroAfterClose(DataSet: TDataSet);
    procedure btCAResponsavelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btCAPedidoClick(Sender: TObject);
    procedure ibCadastroAfterInsert(DataSet: TDataSet);
    procedure btCAClienteClick(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure ibCadastroCMED_AGENDA_IDChange(Sender: TField);
    procedure btEXResponsavelClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure btEXPedidoClick(Sender: TObject);
    procedure btCAAgendaClick(Sender: TObject);
    procedure btEXAgendaClick(Sender: TObject);
    procedure ibCadastroAfterOpen(DataSet: TDataSet);
    procedure ibCadastroBeforeCancel(DataSet: TDataSet);
    procedure ibCadastroBeforeClose(DataSet: TDataSet);
    procedure ibItensAfterInsert(DataSet: TDataSet);
    procedure ibItensBeforeInsert(DataSet: TDataSet);
    procedure ibCadastroBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FGetGenId : Integer;
  public
    { Public declarations }
  end;

var
  FCadConferenciaMedida: TFCadConferenciaMedida;

const
  cCliente = 1;
  cFornecedor = 2;
  cFuncionario = 3;
  cVendedor = 4;

implementation

uses uSelecionarVendas, uSelecionarCliente, uDMConexao,
  uSelecionarAgendaById;

{$R *.dfm}

procedure TFCadConferenciaMedida.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.Open;

  qCliente.Close;
  qCliente.ParamByName('TipoCli').Value := cCliente;
  qCliente.Open;
  qCliente.Last;
  qCliente.First;

  qResponsavel.Close;
  qResponsavel.ParamByName('TipoCli').Value := cFuncionario;
  qResponsavel.Open;
  qResponsavel.Last;
  qResponsavel.First;

end;

procedure TFCadConferenciaMedida.ibCadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  ibItens.Close;
end;

procedure TFCadConferenciaMedida.btCAResponsavelClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cFuncionario;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroCMED_RESPONSAVEL_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadConferenciaMedida.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ibItens.Insert;
end;

procedure TFCadConferenciaMedida.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  ibItens.Delete;
end;

procedure TFCadConferenciaMedida.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ibItens.Post;
end;

procedure TFCadConferenciaMedida.btCAPedidoClick(Sender: TObject);
begin
  inherited;
  FSelecionarVenda := TFSelecionarVenda.Create(nil);
  FSelecionarVenda.pnBarraForm.Caption := 'Selecionar Vendas';
  FSelecionarVenda.ShowModal;
  if FSelecionarVenda.FId>0 then
  begin
    ibCadastroCMED_VENDA_ID.Value := FSelecionarVenda.FId;
    ibCadastroCMED_CLIENTE_ID.Value := FSelecionarVenda.FIdCliente;
    ibCadastroCMED_NUMDOCUMENTO.Value := FSelecionarVenda.FNumDocumento;
  end;
  FSelecionarVenda.Free;
end;

procedure TFCadConferenciaMedida.ibCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //FGetGenId := DMConexao.GetGenId('conferencia_medida');
  //ibCadastroCMED_ID.Value := FGetGenId;
end;

procedure TFCadConferenciaMedida.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cCliente;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroCMED_CLIENTE_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadConferenciaMedida.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  ibCadastroCMED_DATAEMISSAO.Value := Now;
end;

procedure TFCadConferenciaMedida.ibCadastroCMED_AGENDA_IDChange(
  Sender: TField);
begin
  inherited;
  qAgenda.Close;
  qAgenda.ParamByName('pId').Value := ibCadastroCMED_AGENDA_ID.Value;
  qAgenda.Open;
end;

procedure TFCadConferenciaMedida.btEXResponsavelClick(Sender: TObject);
begin
  inherited;
  ibCadastroCMED_RESPONSAVEL_ID.Clear;
end;

procedure TFCadConferenciaMedida.btEXClienteClick(Sender: TObject);
begin
  inherited;
  ibCadastroCMED_CLIENTE_ID.Clear;
end;

procedure TFCadConferenciaMedida.btEXPedidoClick(Sender: TObject);
begin
  inherited;
  ibCadastroCMED_VENDA_ID.Clear;
  //ibCadastroCMED_CLIENTE_ID.Clear;
  ibCadastroCMED_NUMDOCUMENTO.Clear;
end;

procedure TFCadConferenciaMedida.btCAAgendaClick(Sender: TObject);
begin
  inherited;
  FSelecionarAgendaById := TFSelecionarAgendaById.Create(nil);
  FSelecionarAgendaById.pnBarraForm.Caption := 'Selecionar Agenda';
  FSelecionarAgendaById.ShowModal;
  if FSelecionarAgendaById.FId>0 then
    ibCadastroCMED_AGENDA_ID.Value := FSelecionarAgendaById.FId;
  FSelecionarAgendaById.Free;
end;

procedure TFCadConferenciaMedida.btEXAgendaClick(Sender: TObject);
begin
  inherited;
  ibCadastroCMED_AGENDA_ID.Clear;
end;

procedure TFCadConferenciaMedida.ibCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ibItens.Open;
end;

procedure TFCadConferenciaMedida.ibCadastroBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  ibItens.Cancel;
end;

procedure TFCadConferenciaMedida.ibCadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  ibItens.Close;
end;

procedure TFCadConferenciaMedida.ibItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  ibItensCMIT_CMED_ID.Value := ibCadastroCMED_ID.Value;
end;

procedure TFCadConferenciaMedida.ibItensBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  ibCadastro.Post;
  ibCadastro.Edit;
  //if ibCadastro.State=dsInsert then
  //  ibCadastro.Post;
end;

procedure TFCadConferenciaMedida.ibCadastroBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  while ibItens.RecordCount>0 do
    ibItens.Delete;
end;

end.
