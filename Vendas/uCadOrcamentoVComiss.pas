unit uCadOrcamentoVComiss;

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
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, DBCtrls, Mask,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  IBCustomDataSet, frxClass, frxIBXComponents, ActnList, ImgList, IBQuery,
  ExtCtrls, ComCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, frxDBSet, Provider, DBClient, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TFCadOrcamentoVComiss = class(TFCadPadrao)
    qConsultaVCOR_ID: TIntegerField;
    qConsultaVCOR_CODIGO: TIntegerField;
    qConsultaVCOR_DATAEMISSAO: TDateField;
    qConsultaVCOR_CLIENTE_ID: TIntegerField;
    qConsultaVCOR_VALORTOTAL: TIBBCDField;
    qConsultaVCOR_CONDICAOPAGTO: TIBStringField;
    qConsultaVCOR_DH_CA: TDateTimeField;
    grConsultaDBTableView1VCOR_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_DATAEMISSAO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CLIENTE_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_VALORTOTAL: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CONDICAOPAGTO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_DH_CA: TcxGridDBColumn;
    qConsultaCLI_CLIENTE: TIBStringField;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    ibCadastroVCOR_ID: TIntegerField;
    ibCadastroVCOR_CODIGO: TIntegerField;
    ibCadastroVCOR_DATAEMISSAO: TDateField;
    ibCadastroVCOR_CLIENTE_ID: TIntegerField;
    ibCadastroVCOR_VALORTOTAL: TIBBCDField;
    ibCadastroVCOR_CONDICAOPAGTO: TIBStringField;
    ibCadastroVCOR_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ibCadastroItem: TIBDataSet;
    dsCadastroItem: TDataSource;
    ibCadastroItemVCORI_ID: TIntegerField;
    ibCadastroItemVCORI_VCOR_ID: TIntegerField;
    ibCadastroItemVCORI_AMBIENTE: TIBStringField;
    ibCadastroItemVCORI_DISCRIMINACAO: TIBStringField;
    ibCadastroItemVCORI_VALORUNIT: TIBBCDField;
    ibCadastroItemVCORI_QTDADE: TIntegerField;
    ibCadastroItemVCORI_DH_CA: TDateTimeField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btCACliente: TBitBtn;
    btEXCliente: TBitBtn;
    qCliente: TIBQuery;
    qClienteCLI_ID: TIntegerField;
    qClienteCLI_CLIENTE: TIBStringField;
    dsCliente: TDataSource;
    btCAItens: TBitBtn;
    btEXItens: TBitBtn;
    cxGrid1DBTableView1VCORI_ID: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_VCOR_ID: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_AMBIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_DISCRIMINACAO: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_VALORUNIT: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_QTDADE: TcxGridDBColumn;
    cxGrid1DBTableView1VCORI_DH_CA: TcxGridDBColumn;
    qConsultaID: TIntegerField;
    ibCadastroVCOR_SITUACAO: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    edAmbiente: TEdit;
    edDiscriminacao: TEdit;
    edValorUnit: TEdit;
    qConsultaVCOR_SITUACAO: TIntegerField;
    qConsultaSITUACAO: TIBStringField;
    grConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_SITUACAO: TcxGridDBColumn;
    qExisteVenda: TIBQuery;
    qExisteVendaENCONTROU: TIntegerField;
    frxLista: TfrxDBDataset;
    SpeedButton1: TSpeedButton;
    Act_Btn_ImprimirOrcamento: TAction;
    cxImageList1: TcxImageList;
    Bevel6: TBevel;
    Label9: TLabel;
    cxImageComboBox2: TcxImageComboBox;
    cdsConsultaVCOR_ID: TIntegerField;
    cdsConsultaVCOR_CODIGO: TIntegerField;
    cdsConsultaVCOR_DATAEMISSAO: TDateField;
    cdsConsultaVCOR_CLIENTE_ID: TIntegerField;
    cdsConsultaVCOR_VALORTOTAL: TBCDField;
    cdsConsultaVCOR_CONDICAOPAGTO: TStringField;
    cdsConsultaVCOR_DH_CA: TDateTimeField;
    cdsConsultaCLI_CLIENTE: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaVCOR_SITUACAO: TIntegerField;
    cdsConsultaSITUACAO: TStringField;
    qConsultaFLAG: TIntegerField;
    cdsConsultaFLAG: TIntegerField;
    procedure btCAItensClick(Sender: TObject);
    procedure btEXItensClick(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure btEXClienteClick(Sender: TObject);
    procedure ibCadastroAfterOpen(DataSet: TDataSet);
    procedure ibCadastroAfterClose(DataSet: TDataSet);
    procedure ibCadastroItemAfterInsert(DataSet: TDataSet);
    procedure ibCadastroItemBeforeInsert(DataSet: TDataSet);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsCadastroItemDataChange(Sender: TObject; Field: TField);
    procedure edValorUnitKeyPress(Sender: TObject; var Key: Char);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure Act_Btn_ImprimirOrcamentoExecute(Sender: TObject);
    procedure cxImageComboBox2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarConsultaCDSParametro;override;
    procedure CarregarConsultaParam(AParam : String);
  public
    { Public declarations }
  end;

var
  FCadOrcamentoVComiss: TFCadOrcamentoVComiss;

const
  SQL_CONSULTA =
' select *                                                                                  '#13+
'   from (select vcomiss_orcamento.vcor_id ID,                                              '#13+
'                vcomiss_orcamento.*,                                                       '#13+
'                clientes.cli_cliente,                                                      '#13+
'                case                                                                       '#13+
'                  when(coalesce(vcomiss_orcamento.vcor_situacao,0)=0) then ''ABERTO''      '#13+
'                  when(coalesce(vcomiss_orcamento.vcor_situacao,0)=1) then ''FECHADO''     '#13+
'                  when(coalesce(vcomiss_orcamento.vcor_situacao,0)=2) then ''CANCELADO''   '#13+
'                end situacao,                                                              '#13+
'                case                                                                       '#13+
'                  when(coalesce(vcomiss_orcamento.vcor_situacao,0)=0) then 1               '#13+
'                  when(coalesce(vcomiss_orcamento.vcor_situacao,0)=1) then 2               '#13+
'                  when(coalesce(vcomiss_orcamento.vcor_situacao,0)=2) then 3               '#13+
'                end flag                                                                   '#13+
'           from vcomiss_orcamento                                                          '#13+
'          left join clientes on (clientes.cli_id=vcomiss_orcamento.vcor_cliente_id)        '#13+
'          where vcor_id > -1 )                                                             '#13+
'  where 1=1                                                                                '#13+
'    and ((flag = %s) or (0 = %s))                                                          '#13+
' order by vcor_id                                                                          ';


implementation

uses uSelecionarCliente, uDMConexao, uClassAvisos, uFerramentas;

{$R *.dfm}

procedure TFCadOrcamentoVComiss.btCAItensClick(Sender: TObject);
begin
  inherited;
  if ((edAmbiente.Text<>'') and (edDiscriminacao.Text<>'') and (edValorUnit.Text<>'')) then
  begin
    if not(ibCadastroItem.State=dsInsert) then
      ibCadastroItem.Append;
    ibCadastroItemVCORI_AMBIENTE.Value      := edAmbiente.Text;
    ibCadastroItemVCORI_DISCRIMINACAO.Value := edDiscriminacao.Text;
    ibCadastroItemVCORI_VALORUNIT.Value     := StrToFloatDef(edValorUnit.Text,0);
    ibCadastroItem.Post;
    edAmbiente.Clear;
    edDiscriminacao.Clear;
    edValorUnit.Clear;
    edAmbiente.SetFocus;
  end
  else
    Aviso('Informe os dados para inserir.');
end;

procedure TFCadOrcamentoVComiss.btEXItensClick(Sender: TObject);
begin
  inherited;
  ibCadastroItem.Delete;
end;

procedure TFCadOrcamentoVComiss.btCAClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo(ibCadastro)) then
    Exit;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
    ibCadastroVCOR_CLIENTE_ID.Value := FSelecionarCli.FId;
  FSelecionarCli.Free;
end;

procedure TFCadOrcamentoVComiss.btEXClienteClick(Sender: TObject);
begin
  inherited;
  if not(IbCadastroAtivo(ibCadastro)) then
    Exit;
  ibCadastroVCOR_CLIENTE_ID.Clear;
end;

procedure TFCadOrcamentoVComiss.ibCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ibCadastroItem.Open;
  qCliente.Close;
  qCliente.Open;
  qCliente.Last;
  qCliente.First;
end;

procedure TFCadOrcamentoVComiss.ibCadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  ibCadastroItem.Close;
end;

procedure TFCadOrcamentoVComiss.ibCadastroItemAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  ibCadastroItemVCORI_VCOR_ID.Value := ibCadastroVCOR_ID.Value;
end;

procedure TFCadOrcamentoVComiss.ibCadastroItemBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  ibCadastro.Post;
  ibCadastro.Edit;
end;

procedure TFCadOrcamentoVComiss.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  DMConexao.qGeral.Close;
  DMConexao.qGeral.SQL.Clear;
  DMConexao.qGeral.SQL.Text := 'select codigo from sp_getcodigoorcamento';
  DMConexao.qGeral.Open;
  ibCadastroVCOR_CODIGO.Value := DMConexao.qGeral.Fields.Fields[0].Value;
  ibCadastroVCOR_SITUACAO.Value := 0;
  ibCadastroVCOR_DATAEMISSAO.Value := date;
end;

procedure TFCadOrcamentoVComiss.FormShow(Sender: TObject);
begin
  inherited;
  FCarregarConsultaCDSParametro := true;
  qConsulta.Close;
  qConsulta.Open;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TFCadOrcamentoVComiss.dsCadastroItemDataChange(Sender: TObject;
  Field: TField);
var
  AIndex: integer;
  AValue: variant;
begin
  inherited;
  if (IbCadastroAtivo(ibCadastro)) then
  begin
    with cxGrid1DBTableView1.DataController.Summary do
      begin
        AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGrid1DBTableView1VCORI_VALORUNIT);
        AValue :=  FooterSummaryValues[AIndex]
      end;
    ibCadastroVCOR_VALORTOTAL.Value := StrToFloatDef(VarToStr(AValue),0);
  end;
end;

procedure TFCadOrcamentoVComiss.edValorUnitKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in ['0'..'9',#8,#44]) then
    key := #0;
end;

procedure TFCadOrcamentoVComiss.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if (AViewInfo.GridRecord.Values[grConsultaDBTableView1VCOR_SITUACAO.Index] = 1) then
  begin
    //ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clGreen;
  end
  else
  if (AViewInfo.GridRecord.Values[grConsultaDBTableView1VCOR_SITUACAO.Index] = 2) then
  begin
    //ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end
  else
  begin
    //ACanvas.Font.Style := [];
    ACanvas.Font.Color := clBlack;
  end;

end;

procedure TFCadOrcamentoVComiss.ibCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (ibCadastroVCOR_SITUACAO.Value in [0,2]) then
  begin
    qExisteVenda.Close;
    qExisteVenda.Open;
    if qExisteVenda.Fields.Fields[0].Value>0 then
    begin
      Aviso('Existe Venda gerada para este Orçamento. Verifique.');
      Abort;
    end;
  end;
end;

procedure TFCadOrcamentoVComiss.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'VEN001_LISTA_ORCAMENTOS_VENDA_COMISSIONADA';
  sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
    begin
      getVariavelDesign('FILTORUSADO', QuotedStr('Situação: '+cxImageComboBox2.Text));
      ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
    end;
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);

end;

procedure TFCadOrcamentoVComiss.CarregarConsultaCDSParametro;
begin
  inherited;
  CarregarConsultaParam(VarToStr(cxImageComboBox2.EditValue));
end;

procedure TFCadOrcamentoVComiss.Act_Btn_ImprimirOrcamentoExecute(
  Sender: TObject);
begin
  inherited;
  sRelatorio := 'VEN002_ORCAMENTOS_VENDA_COMISSIONADA';
  sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

procedure TFCadOrcamentoVComiss.CarregarConsultaParam(AParam: String);
begin
  qConsulta.Close;
  qConsulta.SQL.Clear;
  qConsulta.SQL.Text := Format(SQL_CONSULTA,[AParam,AParam]);
  qConsulta.Open;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TFCadOrcamentoVComiss.cxImageComboBox2PropertiesChange(
  Sender: TObject);
begin
  inherited;
  CarregarConsultaParam(VarToStr(cxImageComboBox2.EditValue));
end;

end.
