unit uCadPlCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, frxClass, frxIBXComponents, ActnList, ImgList,
  IBQuery, IBCustomDataSet, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Mask, DBCtrls, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, frxDBSet;

type
  TFCadPlCategoria = class(TFCadPadrao)
    ibCadastroPCA_ID: TIntegerField;
    ibCadastroPCA_CODIGO: TIntegerField;
    ibCadastroPCA_DESCRICAO: TIBStringField;
    ibCadastroPCA_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaPCA_ID: TIntegerField;
    qConsultaPCA_CODIGO: TIntegerField;
    qConsultaPCA_DESCRICAO: TIBStringField;
    qConsultaPCA_DH_CA: TDateTimeField;
    grConsultaDBTableView1PCA_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1PCA_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    frxDBCategoria: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPlCategoria: TFCadPlCategoria;

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFCadPlCategoria.FormShow(Sender: TObject);
begin
  inherited;
 qConsulta.Open;
end;

procedure TFCadPlCategoria.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'CTB005_CAD_PLANO_CONTAS_CATEGORIA';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

end.
