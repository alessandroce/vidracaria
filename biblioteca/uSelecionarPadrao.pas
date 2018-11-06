unit uSelecionarPadrao;

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
  DBClient, Provider;

type
  TFSelecionarPadrao = class(TFPadrao)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaLevel1: TcxGridLevel;
    qConsulta: TIBQuery;
    dsConsulta: TDataSource;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTipoCli : Integer;
    FId : Integer;
    FCodigo : Integer;
    FDescricao : String;
    procedure CarregarConsulta;Virtual;
  end;

var
  FSelecionarPadrao: TFSelecionarPadrao;

implementation

uses uDMConexao, uClassAvisos;

{$R *.dfm}

procedure TFSelecionarPadrao.FormShow(Sender: TObject);
begin
  inherited;
  CarregarConsulta;
end;

procedure TFSelecionarPadrao.dsConsultaDataChange(Sender: TObject;
  Field: TField);
var i : Integer;
begin
  inherited;
(*
  for i := 0 to qConsulta.FieldCount-1 do
  begin
    if qConsulta.Fields.Fields[i].FieldName='ID' then
      FId := qConsulta.Fields.Fields[i].Value;
    if qConsulta.Fields.Fields[i].FieldName='CODIGO' then
      FCodigo := qConsulta.Fields.Fields[i].Value;
    if qConsulta.Fields.Fields[i].FieldName='DESCRICAO' then
      FDescricao := qConsulta.Fields.Fields[i].Value;
  end;
*)
  if cdsConsulta.FieldByName('ID').Value>0 then
  begin
    FId := cdsConsulta.FieldByName('ID').Value;
    FCodigo := cdsConsulta.FieldByName('CODIGO').Value;
    FDescricao := cdsConsulta.FieldByName('DESCRICAO').Value;
  end;
end;

procedure TFSelecionarPadrao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FId := 0;
  Close;
end;

procedure TFSelecionarPadrao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if cdsConsulta.RecordCount>0 then
    Close
  else
    Aviso('Registro não selecionado.');
end;

procedure TFSelecionarPadrao.CarregarConsulta;
begin
  qConsulta.Close;
  //qConsulta.ParamByName('TipoCli').Value := FTipoCli;
  qConsulta.Open;
  //pnBarraForm.Caption := ifthen(FTipoCli=1,'Selecionar Cliente','Selecionar Fornecedor');
  cdsConsulta.Open;
end;

end.
