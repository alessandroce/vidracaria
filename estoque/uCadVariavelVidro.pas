unit uCadVariavelVidro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery, IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Mask, DBCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFCadVariavelVidro = class(TFCadPadrao)
    ibCadastroVAVI_ID: TIntegerField;
    ibCadastroVAVI_VARIAVEL: TIBStringField;
    ibCadastroVAVI_DESCRICAO: TIBStringField;
    ibCadastroVAVI_FORMULA: TIBStringField;
    ibCadastroVAVI_DH_CA: TDateTimeField;
    qConsultaVAVI_ID: TIntegerField;
    qConsultaVAVI_VARIAVEL: TIBStringField;
    qConsultaVAVI_DESCRICAO: TIBStringField;
    qConsultaVAVI_FORMULA: TIBStringField;
    qConsultaVAVI_DH_CA: TDateTimeField;
    grConsultaDBTableView1VAVI_ID: TcxGridDBColumn;
    grConsultaDBTableView1VAVI_VARIAVEL: TcxGridDBColumn;
    grConsultaDBTableView1VAVI_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1VAVI_FORMULA: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    qConsultaID: TIntegerField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadVariavelVidro: TFCadVariavelVidro;

implementation

{$R *.dfm}

procedure TFCadVariavelVidro.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

end.
