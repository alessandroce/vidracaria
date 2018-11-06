unit uCadGrupoPerfil;

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
  TFCadGrupoPerfil = class(TFCadPadrao)
    ibCadastroGRPE_ID: TIntegerField;
    ibCadastroGRPE_DESCRICAO: TIBStringField;
    ibCadastroGRPE_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaGRPE_ID: TIntegerField;
    qConsultaGRPE_DESCRICAO: TIBStringField;
    qConsultaGRPE_DH_CA: TDateTimeField;
    grConsultaDBTableView1GRPE_ID: TcxGridDBColumn;
    grConsultaDBTableView1GRPE_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadGrupoPerfil: TFCadGrupoPerfil;

implementation

{$R *.dfm}

procedure TFCadGrupoPerfil.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

end.
