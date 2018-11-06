unit uSelecionarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, ImgList, ActnList, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  IBCustomDataSet, IBQuery, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, StdCtrls, Buttons, StrUtils, frxClass, frxIBXComponents;

type
  TFSelecionarCli = class(TFPadrao)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaLevel1: TcxGridLevel;
    qConsulta: TIBQuery;
    dsConsulta: TDataSource;
    qConsultaCLI_ID: TIntegerField;
    qConsultaCLI_CLIENTE: TIBStringField;
    grConsultaDBTableView1CLI_ID: TcxGridDBColumn;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTipoCli : Integer;
    FId : Integer;
    FCodigo : Integer;
    FDescricao : String;
  end;

var
  FSelecionarCli: TFSelecionarCli;

implementation

uses uDMConexao, uClassAvisos;

{$R *.dfm}

procedure TFSelecionarCli.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.ParamByName('TipoCli').Value := FTipoCli;
  qConsulta.Open;
  pnBarraForm.Caption := ifthen(FTipoCli=1,'Selecionar Cliente','Selecionar Fornecedor');
end;

procedure TFSelecionarCli.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FId        := qConsultaCLI_ID.Value;
  FCodigo    := qConsultaCLI_ID.Value;
  FDescricao := qConsultaCLI_CLIENTE.Value;
end;

procedure TFSelecionarCli.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FId := 0;
  Close;
end;

procedure TFSelecionarCli.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if qConsulta.RecordCount>0 then
    Close
  else
    Aviso('Registro não selecionado.');
end;

end.
