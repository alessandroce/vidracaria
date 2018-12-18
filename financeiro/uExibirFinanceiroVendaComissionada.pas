unit uExibirFinanceiroVendaComissionada;

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
  TFExibirFinanceiroVendaComissionada = class(TFSelecionarPadrao)
    qConsultaPAR_ID: TIntegerField;
    qConsultaPAR_DESCRICAO: TIBStringField;
    qConsultaCATEGORIA: TIBStringField;
    qConsultaPAR_VALOR: TIBBCDField;
    qConsultaCLIENTE: TIBStringField;
    qConsultaPAR_NUMDOC: TIBStringField;
    qConsultaBAIXADO: TIBStringField;
    qConsultaTIPO_BAIXA: TIBStringField;
    grConsultaDBTableView1PAR_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1CATEGORIA: TcxGridDBColumn;
    grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1CLIENTE: TcxGridDBColumn;
    grConsultaDBTableView1PAR_NUMDOC: TcxGridDBColumn;
    grConsultaDBTableView1BAIXADO: TcxGridDBColumn;
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    cdsConsultaPAR_ID: TIntegerField;
    cdsConsultaPAR_DESCRICAO: TStringField;
    cdsConsultaCATEGORIA: TStringField;
    cdsConsultaPAR_VALOR: TBCDField;
    cdsConsultaCLIENTE: TStringField;
    cdsConsultaPAR_NUMDOC: TStringField;
    cdsConsultaBAIXADO: TStringField;
    cdsConsultaTIPO_BAIXA: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
  private
    { Private declarations }
    procedure CarregarConsulta;Override;
  public
    { Public declarations }
    FVendaId : Integer;
  end;

var
  FExibirFinanceiroVendaComissionada: TFExibirFinanceiroVendaComissionada;

implementation

{$R *.dfm}

{ TFExibirFinanceiroVendaComissionada }

procedure TFExibirFinanceiroVendaComissionada.CarregarConsulta;
begin
  inherited;
  qConsulta.Close;
  qConsulta.ParamByName('vendac_id').Value := FVendaId;
  qConsulta.Open;
  cdsConsulta.Close;
  cdsConsulta.Open;

end;

end.
