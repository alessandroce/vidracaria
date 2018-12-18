unit uSelecionarFinanceiroVendaComissionada;

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
  TFSelecionarFinanceiroVendaComissionada = class(TFSelecionarPadrao)
    qConsultaSELECIONAR: TIBStringField;
    qConsultaPAR_ID: TIntegerField;
    qConsultaPAR_DESCRICAO: TIBStringField;
    qConsultaDESC_CLIENTE: TIBStringField;
    qConsultaPAR_DATACOMPETENCIA: TDateField;
    qConsultaPAR_DATAVENCTO: TDateField;
    qConsultaPAR_VALOR: TIBBCDField;
    qConsultaPAR_CETROCUSTO: TIBStringField;
    qConsultaPIT_DESCRICAO: TIBStringField;
    cdsConsultaSELECIONAR: TStringField;
    cdsConsultaPAR_ID: TIntegerField;
    cdsConsultaPAR_DESCRICAO: TStringField;
    cdsConsultaDESC_CLIENTE: TStringField;
    cdsConsultaPAR_DATACOMPETENCIA: TDateField;
    cdsConsultaPAR_DATAVENCTO: TDateField;
    cdsConsultaPAR_VALOR: TBCDField;
    cdsConsultaPAR_CETROCUSTO: TStringField;
    cdsConsultaPIT_DESCRICAO: TStringField;
    grConsultaDBTableView1SELECIONAR: TcxGridDBColumn;
    grConsultaDBTableView1PAR_ID: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1DESC_CLIENTE: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DATACOMPETENCIA: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DATAVENCTO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1PAR_CETROCUSTO: TcxGridDBColumn;
    grConsultaDBTableView1PIT_DESCRICAO: TcxGridDBColumn;
    qConsultaCLI_ID: TIntegerField;
    cdsConsultaCLI_ID: TIntegerField;
    qConsultaPAR_VENDEDOR_ID: TIntegerField;
    cdsConsultaPAR_VENDEDOR_ID: TIntegerField;
    qConsultaID: TIntegerField;
    cdsConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelecionarFinanceiroVendaComissionada: TFSelecionarFinanceiroVendaComissionada;

implementation

{$R *.dfm}

end.
