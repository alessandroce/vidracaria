unit uSelecionarAgendaById;

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
  TFSelecionarAgendaById = class(TFSelecionarPadrao)
    qConsultaID: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    qConsultaTIPOAGENDA_ID: TIntegerField;
    qConsultaSTATUS: TIntegerField;
    qConsultaDATA_INI: TDateField;
    qConsultaHORA_INI: TTimeField;
    qConsultaDATA_FIM: TDateField;
    qConsultaHORA_FIM: TTimeField;
    cdsConsultaID: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaTIPOAGENDA_ID: TIntegerField;
    cdsConsultaSTATUS: TIntegerField;
    cdsConsultaDATA_INI: TDateField;
    cdsConsultaHORA_INI: TTimeField;
    cdsConsultaDATA_FIM: TDateField;
    cdsConsultaHORA_FIM: TTimeField;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    qConsultaCODIGO: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelecionarAgendaById: TFSelecionarAgendaById;

implementation

{$R *.dfm}

end.
