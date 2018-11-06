unit uCadPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, IBCustomDataSet, IBQuery, ImgList, ActnList,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus, frxClass, frxIBXComponents,
  frxDBSet;

type
  TFCadPlanoContas = class(TFPadrao)
    qGrupo: TIBQuery;
    qSubGrupo: TIBQuery;
    qItem: TIBQuery;
    qGrupoPGR_ID: TIntegerField;
    qGrupoPGR_CODIGO: TIntegerField;
    qGrupoPGR_DESCRICAO: TIBStringField;
    qGrupoPGR_DH_CA: TDateTimeField;
    qSubGrupoPSG_ID: TIntegerField;
    qSubGrupoPSG_PGR_ID: TIntegerField;
    qSubGrupoPSG_CODIGO: TIntegerField;
    qSubGrupoPSG_DESCRICAO: TIBStringField;
    qSubGrupoPSG_DH_CA: TDateTimeField;
    dsGrupo: TDataSource;
    dsSubGrupo: TDataSource;
    dsItem: TDataSource;
    qItemPIT_ID: TIntegerField;
    qItemPIT_PSG_ID: TIntegerField;
    qItemPIT_PCA_ID: TIntegerField;
    qItemPIT_CODIGO: TIntegerField;
    qItemPIT_CODIGOREDUZIDO: TIntegerField;
    qItemPIT_DESCRICAO: TIBStringField;
    qItemPIT_DH_CA: TDateTimeField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PGR_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PGR_DESCRICAO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2PSG_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2PSG_DESCRICAO: TcxGridDBColumn;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView3PIT_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView3PIT_CODIGOREDUZIDO: TcxGridDBColumn;
    cxGrid1DBTableView3PIT_DESCRICAO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    StatusBar1: TStatusBar;
    cxSt_Grupo: TcxStyle;
    cxSt_Subgrupo: TcxStyle;
    cxSt_Item: TcxStyle;
    pnBarraPg: TPanel;
    btNovo: TSpeedButton;
    btAlterar: TSpeedButton;
    btExcluir: TSpeedButton;
    btSair: TSpeedButton;
    rgAtivo: TRadioGroup;
    btImprimir: TSpeedButton;
    qGrupoCONTA: TIntegerField;
    qSubGrupoCONTA: TIntegerField;
    qItemCONTA: TIntegerField;
    MainMenu1: TMainMenu;
    Btn_PlGrupo: TAction;
    Btn_PlSubgrupo: TAction;
    Btn_PlItem: TAction;
    Cadastro1: TMenuItem;
    Grupo1: TMenuItem;
    BtnPlSubgrupo1: TMenuItem;
    Item1: TMenuItem;
    Btn_Categoria: TAction;
    Categoria1: TMenuItem;
    qPlanoContas: TIBQuery;
    dsPlanoContas: TDataSource;
    qPlanoContasCOD_CONTABIL: TIBStringField;
    qPlanoContasPGR_CODIGO: TIntegerField;
    qPlanoContasPGR_DESCRICAO: TIBStringField;
    qPlanoContasPSG_CODIGO: TIntegerField;
    qPlanoContasPSG_DESCRICAO: TIBStringField;
    qPlanoContasPIT_CODIGO: TIntegerField;
    qPlanoContasPIT_CODIGOREDUZIDO: TIntegerField;
    qPlanoContasPIT_DESCRICAO: TIBStringField;
    qPlanoContasPCA_DESCRICAO: TIBStringField;
    frxDBPlanoContas: TfrxDBDataset;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qConsulta: TIBQuery;
    dsConsulta: TDataSource;
    qConsultaNIVEL: TIntegerField;
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIBStringField;
    qConsultaDESCRICAO: TIBStringField;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1NIVEL: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure qGrupoAfterOpen(DataSet: TDataSet);
    procedure qSubGrupoAfterOpen(DataSet: TDataSet);
    procedure qItemAfterOpen(DataSet: TDataSet);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Btn_PlGrupoExecute(Sender: TObject);
    procedure Btn_PlSubgrupoExecute(Sender: TObject);
    procedure Btn_PlItemExecute(Sender: TObject);
    procedure Btn_CategoriaExecute(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    FieldTableView : String;
    procedure Abrir_Grupo(pID:Integer;pAcao:String);
    procedure Abrir_Subgrupo(pID:Integer;pAcao:String);
    procedure Abrir_Item(pID:Integer;pAcao:String);
    procedure AbrirNivel(pNivel:Integer;pID:Integer;pAcao:String);
  public
    { Public declarations }
  end;

var
  FCadPlanoContas: TFCadPlanoContas;

implementation

uses uDMConexao, uCadPlGrupo, uCadPlSubgrupo, uCadPlItem, uCadPlCategoria,
  uFerramentas, uClassAvisos;

{$R *.dfm}

procedure TFCadPlanoContas.FormShow(Sender: TObject);
begin
  inherited;
  qGrupo.Open;
  qSubGrupo.Open;
  qItem.Open;
  qConsulta.Open;
end;

procedure TFCadPlanoContas.qGrupoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(true);
end;

procedure TFCadPlanoContas.qSubGrupoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cxGrid1DBTableView2.ViewData.Expand(true);
end;

procedure TFCadPlanoContas.qItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cxGrid1DBTableView3.ViewData.Expand(true);
end;

procedure TFCadPlanoContas.Act_Btn_NovoExecute(Sender: TObject);
begin
  inherited;
  AbrirNivel(qConsultaNIVEL.Value+1,qConsultaID.Value,'N');
  qConsulta.Close;
  qConsulta.Open;
end;

procedure TFCadPlanoContas.Act_Btn_AlterarExecute(Sender: TObject);
begin
  inherited;
  AbrirNivel(qConsultaNIVEL.Value,qConsultaID.Value,'A');
  qConsulta.Close;
  qConsulta.Open;
end;

procedure TFCadPlanoContas.Act_Btn_ExcluirExecute(Sender: TObject);
begin
  inherited;
  AbrirNivel(qConsultaNIVEL.Value,qConsultaID.Value,'E');
end;

procedure TFCadPlanoContas.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'CTB001_CAD_PLANO_CONTAS';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;


procedure TFCadPlanoContas.Act_Btn_SairExecute(Sender: TObject);
begin
  Close;
end;

procedure TFCadPlanoContas.Btn_PlGrupoExecute(Sender: TObject);
begin
  inherited;
  Abrir_Grupo(0,'');
end;

procedure TFCadPlanoContas.Btn_PlSubgrupoExecute(Sender: TObject);
begin
  inherited;
  Abrir_Subgrupo(0,'');
end;

procedure TFCadPlanoContas.Btn_PlItemExecute(Sender: TObject);
begin
  inherited;
  Abrir_Item(0,'');
end;

procedure TFCadPlanoContas.Btn_CategoriaExecute(Sender: TObject);
begin
  inherited;
  FCadPlCategoria := TFCadPlCategoria.Create(nil);
  FCadPlCategoria.PnBarraFormCaption := Btn_Categoria.Hint;
  FCadPlCategoria.ShowModal;
  FCadPlCategoria.Free;
end;

procedure TFCadPlanoContas.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Selected then
    ACanvas.Brush.Color := clActiveCaption;

  if(AViewInfo.GridRecord.Values[cxGridDBTableView1NIVEL.Index] = 1) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clBlue;
  end
  else
  if(AViewInfo.GridRecord.Values[cxGridDBTableView1NIVEL.Index] = 2) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clBlack;
  end
  else
  begin
    ACanvas.Font.Style := [];
    ACanvas.Font.Color := clBlack;
  end;
end;

procedure TFCadPlanoContas.AbrirNivel(pNivel, pID: Integer;pAcao: String);
begin
  case pNivel of
  1 : Abrir_Grupo(pID,pAcao);
  2 : Abrir_Subgrupo(pID,pAcao);
  3 : Abrir_Item(pID,pAcao);
  else
    Aviso('Não é possivel inserir neste nivel.');
  end;
end;

procedure TFCadPlanoContas.Abrir_Grupo(pID:Integer;pAcao:String);
begin
  FCadPlGrupo := TFCadPlGrupo.Create(nil);
  if ((pAcao<>'N') and (pID>0)) then
  begin
    FCadPlGrupo.FId := pID;
    if pAcao='N' then
      FCadPlGrupo.Act_Btn_Novo.Execute
    else
      FCadPlGrupo.Act_Btn_Alterar.Execute;
  end;
  FCadPlGrupo.PnBarraFormCaption := Btn_PlGrupo.Hint;
  FCadPlGrupo.ShowModal;
  FCadPlGrupo.Free;
end;

procedure TFCadPlanoContas.Abrir_Subgrupo(pID:Integer;pAcao:String);
begin
  FCadPlSubgrupo := TFCadPlSubgrupo.Create(nil);
  if ((pAcao<>'N') and (pID>0)) then
  begin
    FCadPlSubgrupo.FId := pID;
    if pAcao='N' then
      FCadPlSubgrupo.Act_Btn_Novo.Execute
    else
      FCadPlSubgrupo.Act_Btn_Alterar.Execute;
  end;
  FCadPlSubgrupo.PnBarraFormCaption := Btn_PlSubgrupo.Hint;
  FCadPlSubgrupo.ShowModal;
  FCadPlSubgrupo.Free;
end;

procedure TFCadPlanoContas.Abrir_Item(pID:Integer;pAcao:String);
begin
  FCadPlItem := TFCadPlItem.Create(nil);
  if ((pAcao<>'N') or (pID>0)) then
  begin
    FCadPlItem.FId := pID;
    if pAcao='N' then
      FCadPlItem.Act_Btn_Novo.Execute
    else
      FCadPlItem.Act_Btn_Alterar.Execute;
  end;
  FCadPlItem.PnBarraFormCaption := Btn_PlItem.Hint;
  FCadPlItem.ShowModal;
  FCadPlItem.Free;
end;

end.
