unit uSelecionarPagarReceber;

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
  TFSelecionarPagarReceber = class(TFSelecionarPadrao)
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    qConsultaITEM: TIBStringField;
    qConsultaPAR_VALOR: TIBBCDField;
    qConsultaPAR_DATAVENCTO: TDateField;
    qConsultaPAR_CLI_ID: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaITEM: TStringField;
    cdsConsultaPAR_VALOR: TBCDField;
    cdsConsultaPAR_DATAVENCTO: TDateField;
    cdsConsultaPAR_CLI_ID: TIntegerField;
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1ITEM: TcxGridDBColumn;
    grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DATAVENCTO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_CLI_ID: TcxGridDBColumn;
    qConsultaPAR_CAT_ID: TIntegerField;
    cdsConsultaPAR_CAT_ID: TIntegerField;
    qConsultaPAR_NUMDOC: TIBStringField;
    cdsConsultaPAR_NUMDOC: TStringField;
    grConsultaDBTableView1PAR_CAT_ID: TcxGridDBColumn;
    grConsultaDBTableView1PAR_NUMDOC: TcxGridDBColumn;
    qConsultaTIPO: TIBStringField;
    cdsConsultaTIPO: TStringField;
    grConsultaDBTableView1TIPO: TcxGridDBColumn;
    qConsultaVALOR_ORIGINAL: TIBBCDField;
    qConsultaVALOR_QUITADO: TIBBCDField;
    cdsConsultaVALOR_ORIGINAL: TBCDField;
    cdsConsultaVALOR_QUITADO: TBCDField;
    grConsultaDBTableView1VALOR_ORIGINAL: TcxGridDBColumn;
    grConsultaDBTableView1VALOR_QUITADO: TcxGridDBColumn;
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure CarregarConsulta;override;
  public
    { Public declarations }
    FCliId : Integer;
    FCatId : Integer;
    FNumDoc : String;
    FValor : Extended;
    FValorOriginal : Extended;
    FValorQuitado : Extended;
    FDescricao : String;
  end;

var
  FSelecionarPagarReceber: TFSelecionarPagarReceber;

implementation

{$R *.dfm}

procedure TFSelecionarPagarReceber.CarregarConsulta;
begin
  inherited;
  qConsulta.Close;
  qConsulta.ParamByName('Cli_id').Value := 0;
  qConsulta.Open;
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TFSelecionarPagarReceber.dsConsultaDataChange(Sender: TObject;Field: TField);
begin
  inherited;
  FCliId  := cdsConsultaPAR_CLI_ID.AsInteger;
  FCatId  := cdsConsultaPAR_CAT_ID.AsInteger;
  FNumDoc := cdsConsultaPAR_NUMDOC.AsString;
  FValor  := cdsConsultaPAR_VALOR.AsFloat;
  FValorOriginal := cdsConsultaVALOR_ORIGINAL.AsFloat;
  FValorQuitado := cdsConsultaVALOR_QUITADO.AsFloat;
  FDescricao := cdsConsultaDESCRICAO.AsString;
end;

end.
