unit uCadCoresFerragem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery,
  IBCustomDataSet, ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Mask, DBCtrls;

type
  TFCadCoresFerragem = class(TFCadPadrao)
    ibCadastroCOR_ID: TIntegerField;
    ibCadastroCOR_CODIGOINTERNO: TIBStringField;
    ibCadastroCOR_DESCRICAO: TIBStringField;
    ibCadastroCOR_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaCOR_ID: TIntegerField;
    qConsultaCOR_CODIGOINTERNO: TIBStringField;
    qConsultaCOR_DESCRICAO: TIBStringField;
    qConsultaCOR_DH_CA: TDateTimeField;
    grConsultaDBTableView1COR_ID: TcxGridDBColumn;
    grConsultaDBTableView1COR_CODIGOINTERNO: TcxGridDBColumn;
    grConsultaDBTableView1COR_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ibCadastroCOR_ACESSORIO: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    qConsultaCOR_ACESSORIO: TIntegerField;
    qConsultaDESC_COR_ACESSORIO: TIBStringField;
    grConsultaDBTableView1DESC_COR_ACESSORIO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCoresFerragem: TFCadCoresFerragem;

implementation

{$R *.dfm}

procedure TFCadCoresFerragem.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

end.




