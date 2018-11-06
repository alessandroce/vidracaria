unit uCadPlItem;

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
  TFCadPlItem = class(TFCadPadrao)
    ibCadastroPIT_ID: TIntegerField;
    ibCadastroPIT_PSG_ID: TIntegerField;
    ibCadastroPIT_PCA_ID: TIntegerField;
    ibCadastroPIT_CODIGO: TIntegerField;
    ibCadastroPIT_CODIGOREDUZIDO: TIntegerField;
    ibCadastroPIT_DESCRICAO: TIBStringField;
    ibCadastroPIT_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaPIT_ID: TIntegerField;
    qConsultaPIT_PSG_ID: TIntegerField;
    qConsultaPIT_PCA_ID: TIntegerField;
    qConsultaPIT_CODIGO: TIntegerField;
    qConsultaPIT_CODIGOREDUZIDO: TIntegerField;
    qConsultaPIT_DESCRICAO: TIBStringField;
    qConsultaPIT_DH_CA: TDateTimeField;
    qConsultaPSG_DESCRICAO: TIBStringField;
    qConsultaPGR_DESCRICAO: TIBStringField;
    grConsultaDBTableView1PIT_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1PIT_CODIGOREDUZIDO: TcxGridDBColumn;
    grConsultaDBTableView1PIT_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1PSG_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1PGR_DESCRICAO: TcxGridDBColumn;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    qSubgrupo: TIBQuery;
    dsSubgrupo: TDataSource;
    qSubgrupoPSG_ID: TIntegerField;
    qSubgrupoPSG_PGR_ID: TIntegerField;
    qSubgrupoPSG_CODIGO: TIntegerField;
    qSubgrupoPSG_DESCRICAO: TIBStringField;
    qSubgrupoPSG_DH_CA: TDateTimeField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    qCategoria: TIBQuery;
    dsCategoria: TDataSource;
    qCategoriaPCA_ID: TIntegerField;
    qCategoriaPCA_CODIGO: TIntegerField;
    qCategoriaPCA_DESCRICAO: TIBStringField;
    qCategoriaPCA_DH_CA: TDateTimeField;
    qGrupo: TIBQuery;
    dsGrupo: TDataSource;
    Label1: TLabel;
    qGrupoPGR_DESCRICAO: TIBStringField;
    DBEdit4: TDBEdit;
    frxDBItem: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getIdConsulta:Integer;override;
  end;

var
  FCadPlItem: TFCadPlItem;

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFCadPlItem.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;

  qCategoria.close;
  qCategoria.Open;
  qCategoria.Last;
  qCategoria.First;

  qSubgrupo.close;
  qSubgrupo.Open;
  qSubgrupo.Last;
  qSubgrupo.First;

  qGrupo.close;
  qGrupo.Open;

end;

procedure TFCadPlItem.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'CTB004_CAD_PLANO_CONTAS_ITEM';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

function TFCadPlItem.getIdConsulta: Integer;
begin
  Result := FId;
end;

end.
