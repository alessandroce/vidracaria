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
    Label1: TLabel;
    frxDBItem: TfrxDBDataset;
    qPlanoContas: TIBQuery;
    DBEdit5: TDBEdit;
    dsPlanoContas: TDataSource;
    DBEdit4: TDBEdit;
    qPlanoContasPSG_DESCRICAO: TIBStringField;
    qPlanoContasPGR_DESCRICAO: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    FAcao : String;
    FIdSubGrupo : Integer;
    //function getIdConsulta:Integer;override;
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

  qPlanoContas.Close;
  qPlanoContas.ParamByName('pit_id').asInteger := FId;
  qPlanoContas.Open;

  if ((FAcao<>'') or (FId>0)) then
  begin
    if FAcao='N' then
      Act_Btn_Novo.Execute
    else
    if FAcao='A' then
      Act_Btn_Alterar.Execute;
  end;
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

//function TFCadPlItem.getIdConsulta: Integer;
//begin
//  Result := FId;
//end;

procedure TFCadPlItem.ibCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  if FAcao='N' then
    ibCadastroPIT_PSG_ID.asInteger := FIdSubGrupo;
end;

end.
