unit uSelecionarPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSelecionarPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, DBClient, Provider, IBCustomDataSet, IBQuery,
  frxClass, frxIBXComponents, ImgList, ActnList, StdCtrls, Buttons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFSelecionarPlanoContas = class(TFSelecionarPadrao)
    qConsultaNIVEL: TIntegerField;
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIBStringField;
    qConsultaDESCRICAO: TIBStringField;
    qConsultaPGR_ID: TIntegerField;
    cdsConsultaNIVEL: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaPGR_ID: TIntegerField;
    grConsultaDBTableView1CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1NIVEL: TcxGridDBColumn;
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1PGR_ID: TcxGridDBColumn;
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FPGR_ID : Integer;
    procedure CarregarConsulta;override;
  end;

var
  FSelecionarPlanoContas: TFSelecionarPlanoContas;

implementation

{$R *.dfm}

{ TFSelecionarPlanoContas }

procedure TFSelecionarPlanoContas.CarregarConsulta;
begin
  inherited;
  qConsulta.Close;
  qConsulta.ParamByName('pgr_id').Value := FPGR_ID;
  qConsulta.Open;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TFSelecionarPlanoContas.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if ((AViewInfo.GridRecord.Values[grConsultaDBTableView1NIVEL.Index] = 0) or
      (AViewInfo.GridRecord.Values[grConsultaDBTableView1NIVEL.Index] = 1)) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clBlue;
  end
  else
  if(AViewInfo.GridRecord.Values[grConsultaDBTableView1NIVEL.Index] = 2) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clBlack;
  end
  else
  begin
    ACanvas.Font.Style := [];
    ACanvas.Font.Color := clBlack;
  end;
end;

end.
