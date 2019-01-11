unit uSelecionarOrcamentoVComiss;

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
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls;

type
  TFSelecionarOrcamentoVComiss = class(TFSelecionarPadrao)
    qConsultaVCOR_ID: TIntegerField;
    qConsultaVCOR_CODIGO: TIntegerField;
    qConsultaVCOR_DATAEMISSAO: TDateField;
    qConsultaVCOR_CLIENTE_ID: TIntegerField;
    qConsultaVCOR_VALORTOTAL: TIBBCDField;
    qConsultaVCOR_CONDICAOPAGTO: TIBStringField;
    qConsultaVCOR_DH_CA: TDateTimeField;
    qConsultaCLI_CLIENTE: TIBStringField;
    cdsConsultaVCOR_ID: TIntegerField;
    cdsConsultaVCOR_CODIGO: TIntegerField;
    cdsConsultaVCOR_DATAEMISSAO: TDateField;
    cdsConsultaVCOR_CLIENTE_ID: TIntegerField;
    cdsConsultaVCOR_VALORTOTAL: TBCDField;
    cdsConsultaVCOR_CONDICAOPAGTO: TStringField;
    cdsConsultaVCOR_DH_CA: TDateTimeField;
    cdsConsultaCLI_CLIENTE: TStringField;
    grConsultaDBTableView1VCOR_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_DATAEMISSAO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CLIENTE_ID: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_VALORTOTAL: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_CONDICAOPAGTO: TcxGridDBColumn;
    grConsultaDBTableView1VCOR_DH_CA: TcxGridDBColumn;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    qConsultaID: TIntegerField;
    cdsConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vIdCliente : Integer;
  end;

var
  FSelecionarOrcamentoVComiss: TFSelecionarOrcamentoVComiss;

implementation

{$R *.dfm}

procedure TFSelecionarOrcamentoVComiss.dsConsultaDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  FIdCliente := cdsConsultaVCOR_CLIENTE_ID.Value;
  FValor := cdsConsultaVCOR_VALORTOTAL.Value;
end;

procedure TFSelecionarOrcamentoVComiss.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.ParamByName('cli_id').Value := vIdCliente;
  qConsulta.Open;

  cdsConsulta.Close;
  cdsConsulta.Open;
end;

end.
