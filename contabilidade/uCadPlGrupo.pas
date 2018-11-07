unit uCadPlGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, frxClass, frxIBXComponents, ActnList, ImgList,
  IBQuery, IBCustomDataSet, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Mask, DBCtrls, Menus,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  frxDBSet;

type
  TFCadPlGrupo = class(TFCadPadrao)
    ibCadastroPGR_ID: TIntegerField;
    ibCadastroPGR_CODIGO: TIntegerField;
    ibCadastroPGR_DESCRICAO: TIBStringField;
    ibCadastroPGR_DH_CA: TDateTimeField;
    qConsultaPGR_ID: TIntegerField;
    qConsultaPGR_CODIGO: TIntegerField;
    qConsultaPGR_DESCRICAO: TIBStringField;
    qConsultaPGR_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    grConsultaDBTableView1PGR_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1PGR_DESCRICAO: TcxGridDBColumn;
    qConsultaID: TIntegerField;
    frxDBGrupo: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FAcao : String;
//    function getIdConsulta:Integer;override;
  end;

var
  FCadPlGrupo: TFCadPlGrupo;

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFCadPlGrupo.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;

  if ((FAcao<>'') or (FId>0)) then
  begin
    if FAcao='N' then
      Act_Btn_Novo.Execute
    else
    if FAcao='A' then
      Act_Btn_Alterar.Execute;
  end;
end;

procedure TFCadPlGrupo.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'CTB002_CAD_PLANO_CONTAS_GRUPO';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

//function TFCadPlGrupo.getIdConsulta: Integer;
//begin
//  Result := FId;
//end;

end.
