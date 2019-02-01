unit uSelecionarTipoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSelecionarPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, DB, cxDBData, DBClient, Provider, IBCustomDataSet,
  IBQuery, frxClass, frxIBXComponents, ImgList, ActnList, StdCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxCheckBox;

type
  TFSelecionarTipoCliente = class(TFSelecionarPadrao)
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    qConsultaSELECAO: TIBStringField;
    cdsConsultaSELECAO: TStringField;
    grConsultaDBTableView1SELECAO: TcxGridDBColumn;
    procedure btOKClick(Sender: TObject);
  private
    function Selecionado: Boolean;
    { Private declarations }
  public
    { Public declarations }
    FSelecionado : Boolean;
  end;

var
  FSelecionarTipoCliente: TFSelecionarTipoCliente;

implementation

uses uClassAvisos;

{$R *.dfm}

function TFSelecionarTipoCliente.Selecionado:Boolean;
var iCount : Integer;
begin
  //inherited;
  iCount := 0;
  cdsConsulta.First;
  while not cdsConsulta.Eof do
  begin
    if cdsConsultaSELECAO.AsString='S' then
      Inc(iCount);
    cdsConsulta.Next;
  end;
  FSelecionado := (iCount>0);
  Result := FSelecionado;
  if iCount=0 then
    Aviso('Registro não selecionado.');
end;

procedure TFSelecionarTipoCliente.btOKClick(Sender: TObject);
begin
  if Selecionado then
    inherited;
end;

end.
