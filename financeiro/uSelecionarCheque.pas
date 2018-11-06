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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qConsultaAfterOpen(DataSet: TDataSet);
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
  pnBarraForm.Caption := 'Selecionar Cheques';
end;

procedure TFSelecionarCheque.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FCancelado := true;
  Close;
end;

procedure TFSelecionarCheque.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if getSelecionado then
  begin
    FCancelado := false;
  Close;
  end;
end;

procedure TFSelecionarCheque.qConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsConsulta.Open;
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
  Result := (i<=FOcorrencia);
  if not Result then
    Aviso('Quantidade selecionada e quantidade de ocorrenia divergem.');
  Result := (i>0);
  if not Result then
    Aviso('Registro não selecionado.');
end;

end.
