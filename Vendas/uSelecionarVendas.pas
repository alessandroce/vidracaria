unit uSelecionarVendas;

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
  TFSelecionarVenda = class(TFSelecionarPadrao)
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    qConsultaVENDEDOR: TIBStringField;
    qConsultaCLIENTE: TIBStringField;
    qConsultaVEC_NUMDOCUMENTO: TIntegerField;
    qConsultaVEC_DATA: TDateField;
    qConsultaVEC_VALOR: TIBBCDField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaVENDEDOR: TStringField;
    cdsConsultaCLIENTE: TStringField;
    cdsConsultaVEC_NUMDOCUMENTO: TIntegerField;
    cdsConsultaVEC_DATA: TDateField;
    cdsConsultaVEC_VALOR: TBCDField;
    grConsultaDBTableView1VENDEDOR: TcxGridDBColumn;
    grConsultaDBTableView1CLIENTE: TcxGridDBColumn;
    grConsultaDBTableView1VEC_NUMDOCUMENTO: TcxGridDBColumn;
    grConsultaDBTableView1VEC_VALOR: TcxGridDBColumn;
    qConsultaCLIENTE_ID: TIntegerField;
    cdsConsultaCLIENTE_ID: TIntegerField;
    qConsultaCLI_ENDERECO: TIBStringField;
    qConsultaFONES: TIBStringField;
    qConsultaCLI_CPF: TIBStringField;
    cdsConsultaCLI_ENDERECO: TStringField;
    cdsConsultaFONES: TStringField;
    cdsConsultaCLI_CPF: TStringField;
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    FNumDocumento : Integer;
    FIdCliente : Integer;
    FValor : Extended;
    FNome : String;
    FEndereco : String;
    FFones : String;
    FCPF : String;
end;

var
  FSelecionarVenda: TFSelecionarVenda;

implementation

{$R *.dfm}

procedure TFSelecionarVenda.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FNumDocumento := cdsConsultaVEC_NUMDOCUMENTO.Value;
  FIdCliente := cdsConsultaCLIENTE_ID.Value;
  FValor     := cdsConsultaVEC_VALOR.Value;
  FNome      := cdsConsultaCLIENTE.Value;
  FEndereco  := cdsConsultaCLI_ENDERECO.Value;
  FFones     := cdsConsultaFONES.Value;
  FCPF       := cdsConsultaCLI_CPF.Value;
end;

end.
