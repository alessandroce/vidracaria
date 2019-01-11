unit uSelecionarCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, ImgList, ActnList, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  IBCustomDataSet, IBQuery, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, StdCtrls, Buttons, StrUtils, frxClass, frxIBXComponents,
  cxCheckBox, Provider, DBClient;

type
  TFSelecionarCheque = class(TFPadrao)
    Panel1: TPanel;
    Panel2: TPanel;
    btCancelar: TBitBtn;
    btOK: TBitBtn;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaLevel1: TcxGridLevel;
    qConsulta: TIBQuery;
    dsConsulta: TDataSource;
    qConsultaSELECIONAR: TIBStringField;
    qConsultaCHQ_ID: TIntegerField;
    qConsultaCHQ_BANCO: TIBStringField;
    qConsultaCHQ_CONTA: TIBStringField;
    qConsultaCHQ_AGENCIA: TIBStringField;
    qConsultaCHQ_NUMERO: TIBStringField;
    qConsultaCHQ_VALOR: TIBBCDField;
    cdsConsulta: TClientDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsultaSELECIONAR: TStringField;
    cdsConsultaCHQ_ID: TIntegerField;
    cdsConsultaCHQ_BANCO: TStringField;
    cdsConsultaCHQ_CONTA: TStringField;
    cdsConsultaCHQ_AGENCIA: TStringField;
    cdsConsultaCHQ_NUMERO: TStringField;
    cdsConsultaCHQ_VALOR: TBCDField;
    grConsultaDBTableView1SELECIONAR: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_ID: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_BANCO: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_CONTA: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_AGENCIA: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_NUMERO: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_VALOR: TcxGridDBColumn;
    Panel3: TPanel;
    lblVezes: TLabel;
    lblOcorrencia: TLabel;
    edOcorrencia: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure grConsultaDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FId : Integer;
    FCodigo : Integer;
    FDescricao : String;
    FQtdadeSel : Integer;
    FOcorrencia : Integer;
    FCancelado : Boolean;
    function getSelecionado:Boolean;
  end;

var
  FSelecionarCheque: TFSelecionarCheque;

implementation

uses uDMConexao, uClassAvisos;

{$R *.dfm}

procedure TFSelecionarCheque.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.Open;
  cdsConsulta.Open;
  pnBarraForm.Caption := 'Selecionar Cheques';
end;

procedure TFSelecionarCheque.btCancelarClick(Sender: TObject);
begin
  inherited;
  FCancelado := true;
  Close;
end;

procedure TFSelecionarCheque.btOKClick(Sender: TObject);
begin
  inherited;
  if getSelecionado then
  begin
    FCancelado := false;
    Close;
  end;
end;

function TFSelecionarCheque.getSelecionado:Boolean;
var i : Integer;
begin
  i := 0;
  cdsConsulta.First;
  while not cdsConsulta.Eof do
  begin
    if cdsConsultaSELECIONAR.Value='S' then
      Inc(FQtdadeSel);
    cdsConsulta.Next;
  end;
  Result := (FQtdadeSel=FOcorrencia);
  if not(Result) then
  begin
    FCancelado := true;
    Aviso('Quantidade selecionada e quantidade de ocorrenia divergem.');
  end
  else
  begin
    Result := (FQtdadeSel>0);
    if not(Result) then
    begin
      FCancelado := true;
      Aviso('Registro não selecionado.');
    end;
  end;
end;

procedure TFSelecionarCheque.BitBtn3Click(Sender: TObject);
begin
  inherited;
  cdsConsulta.First;
  cdsConsulta.DisableControls;
  while not(cdsConsulta.Eof) do
  begin
    if not(cdsConsulta.State=dsEdit) then
      cdsConsulta.Edit;
    if cdsConsultaSELECIONAR.asString='N' then
      cdsConsultaSELECIONAR.asString := 'S';
    cdsConsulta.Post;
    cdsConsulta.Next;
  end;
  cdsConsulta.EnableControls;
end;

procedure TFSelecionarCheque.BitBtn4Click(Sender: TObject);
begin
  inherited;
  cdsConsulta.First;
  cdsConsulta.DisableControls;
  while not(cdsConsulta.Eof) do
  begin
    if not(cdsConsulta.State=dsEdit) then
      cdsConsulta.Edit;
    if cdsConsultaSELECIONAR.asString='N' then
      cdsConsultaSELECIONAR.asString := 'S'
    else
    if cdsConsultaSELECIONAR.asString='S' then
      cdsConsultaSELECIONAR.asString := 'N';
    cdsConsulta.Post;
    cdsConsulta.Next;
  end;
  cdsConsulta.EnableControls;
end;

procedure TFSelecionarCheque.grConsultaDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  btOK.Click;
end;

end.
