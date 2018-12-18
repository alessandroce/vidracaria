unit uAgendaConferenciaMedidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, frxClass, frxIBXComponents, ActnList, ImgList,
  IBQuery, IBCustomDataSet, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxContainer,
  cxDateNavigator, DBCtrls, Mask, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxSchedulerDBStorage, Menus, cxScheduler, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, dxSkinscxScheduler3Painter;

type
  TFCadAgendaConferenciaMedidas = class(TFCadPadrao)
    Panel3: TPanel;
    cxDateNavigator1: TcxDateNavigator;
    qConsultaID: TIntegerField;
    qConsultaCONM_ID: TIntegerField;
    qConsultaCONM_DATA_INI: TDateField;
    qConsultaCONM_HORA_INI: TTimeField;
    qConsultaCONM_DATA_FIM: TDateField;
    qConsultaCONM_HORA_FIM: TTimeField;
    qConsultaCONM_ASSUNTO: TIBStringField;
    qConsultaCONM_LOCAL: TIBStringField;
    qConsultaCONM_OBSERVACAO: TIBStringField;
    qConsultaCONM_TIPOAGENDA_ID: TIntegerField;
    qConsultaCONM_STATUS: TIntegerField;
    qConsultaCONM_DH_CA: TDateTimeField;
    grConsultaDBTableView1CONM_ASSUNTO: TcxGridDBColumn;
    qConsultaTIPOAGENDA: TIBStringField;
    qConsultaSTATUS: TIBStringField;
    qConsultaPERIODO: TIBStringField;
    grConsultaDBTableView1PERIODO: TcxGridDBColumn;
    ibCadastroCONM_ID: TIntegerField;
    ibCadastroCONM_DATA_INI: TDateField;
    ibCadastroCONM_HORA_INI: TTimeField;
    ibCadastroCONM_DATA_FIM: TDateField;
    ibCadastroCONM_HORA_FIM: TTimeField;
    ibCadastroCONM_ASSUNTO: TIBStringField;
    ibCadastroCONM_LOCAL: TIBStringField;
    ibCadastroCONM_OBSERVACAO: TIBStringField;
    ibCadastroCONM_TIPOAGENDA_ID: TIntegerField;
    ibCadastroCONM_STATUS: TIntegerField;
    ibCadastroCONM_DH_CA: TDateTimeField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBMemo3: TDBMemo;
    Label10: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    qConsultaT: TStringField;
    qConsultaVAZIO: TStringField;
    qConsultaDATAINICIAL: TDateTimeField;
    qConsultaDATAFINAL: TDateTimeField;
    qTmp: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    DateField2: TDateField;
    TimeField2: TTimeField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateTimeField1: TDateTimeField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    dsTmp: TDataSource;
    grConsultaDBTableView1CONM_LOCAL: TcxGridDBColumn;
    grConsultaDBTableView1CONM_OBSERVACAO: TcxGridDBColumn;
    grConsultaDBTableView1TIPOAGENDA: TcxGridDBColumn;
    grConsultaDBTableView1STATUS: TcxGridDBColumn;
    rgTipoAgenda: TRadioGroup;
    rgStatus: TRadioGroup;
    Bevel2: TBevel;
    Label1: TLabel;
    Bevel3: TBevel;
    Label2: TLabel;
    procedure ibCadastroBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ibCadastroNewRecord(DataSet: TDataSet);
    procedure cxDateNavigator1SelectionChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure ibCadastroAfterPost(DataSet: TDataSet);
    procedure rgTipoAgendaClick(Sender: TObject);
    procedure rgStatusClick(Sender: TObject);
  private
    { Private declarations }
    FTipoAgenda : Integer;
    FStatus : Integer;
    procedure CarregarConsulta;override;
    procedure CarregarDados;
  public
    { Public declarations }
  end;

var
  FCadAgendaConferenciaMedidas: TFCadAgendaConferenciaMedidas;

implementation

{$R *.dfm}

procedure TFCadAgendaConferenciaMedidas.CarregarConsulta;
begin
  inherited;
  //qConsulta.Close;
  //qConsulta.ParamByName('data').Value := Now;
  //qConsulta.Open;
end;

procedure TFCadAgendaConferenciaMedidas.ibCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  ibCadastroCONM_DATA_FIM.Value := ibCadastroCONM_DATA_INI.Value;
end;

procedure TFCadAgendaConferenciaMedidas.FormShow(Sender: TObject);
begin
  inherited;
  qTmp.Close;
  qTmp.Open;
  FTipoAgenda := 0;
  FStatus := 0;
  qConsulta.Close;
  qConsulta.ParamByName('data').Value := Now;
  qConsulta.ParamByName('tipoagenda_id').Value := FTipoAgenda;
  qConsulta.ParamByName('status').Value := FStatus;
  qConsulta.Open;
  cxDateNavigator1.Date := Now;
end;

procedure TFCadAgendaConferenciaMedidas.ibCadastroNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  ibCadastroCONM_DATA_INI.Value := cxDateNavigator1.Date;
  ibCadastroCONM_TIPOAGENDA_ID.Value := 1;
  ibCadastroCONM_STATUS.Value := 1;
end;

procedure TFCadAgendaConferenciaMedidas.cxDateNavigator1SelectionChanged(
  Sender: TObject; const AStart, AFinish: TDateTime);
begin
  inherited;
  CarregarDados;
end;

procedure TFCadAgendaConferenciaMedidas.ibCadastroAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qTmp.Close;
  qTmp.Open;
end;

procedure TFCadAgendaConferenciaMedidas.CarregarDados;
begin
  FTipoAgenda := rgTipoAgenda.ItemIndex;
  FStatus := rgStatus.ItemIndex;
  qConsulta.Close;
  qConsulta.ParamByName('data').Value := cxDateNavigator1.Date;
  qConsulta.ParamByName('tipoagenda_id').Value := FTipoAgenda;
  qConsulta.ParamByName('status').Value := FStatus;
  qConsulta.Open;
end;

procedure TFCadAgendaConferenciaMedidas.rgTipoAgendaClick(Sender: TObject);
begin
  inherited;
  CarregarDados;
end;

procedure TFCadAgendaConferenciaMedidas.rgStatusClick(Sender: TObject);
begin
  inherited;
  CarregarDados;
end;

end.
