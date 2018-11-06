unit uCadPlSubgrupo;

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
  TFCadPlSubgrupo = class(TFCadPadrao)
    ibCadastroPSG_ID: TIntegerField;
    ibCadastroPSG_PGR_ID: TIntegerField;
    ibCadastroPSG_CODIGO: TIntegerField;
    ibCadastroPSG_DESCRICAO: TIBStringField;
    ibCadastroPSG_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaPSG_ID: TIntegerField;
    qConsultaPSG_PGR_ID: TIntegerField;
    qConsultaPSG_CODIGO: TIntegerField;
    qConsultaPSG_DESCRICAO: TIBStringField;
    qConsultaPSG_DH_CA: TDateTimeField;
    qConsultaGRUPO: TIBStringField;
    grConsultaDBTableView1PSG_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1PSG_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1GRUPO: TcxGridDBColumn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    qGrupo: TIBQuery;
    dsGrupo: TDataSource;
    qGrupoPGR_ID: TIntegerField;
    qGrupoPGR_CODIGO: TIntegerField;
    qGrupoPGR_DESCRICAO: TIBStringField;
    qGrupoPGR_DH_CA: TDateTimeField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    frxDBSubgrupo: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getIdConsulta:Integer;override;
  end;

var
  FCadPlSubgrupo: TFCadPlSubgrupo;

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFCadPlSubgrupo.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
  qGrupo.close;
  qGrupo.Open;
  qGrupo.Last;
  qGrupo.First;
end;

procedure TFCadPlSubgrupo.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'CTB003_CAD_PLANO_CONTAS_SUBGRUPO';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

function TFCadPlSubgrupo.getIdConsulta: Integer;
begin
  Result := FId;
end;

end.
