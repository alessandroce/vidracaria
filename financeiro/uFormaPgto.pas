unit uFormaPgto;

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
  cxDataStorage, cxEdit, DB, cxDBData, IBCustomDataSet, ActnList, ImgList,
  IBQuery, ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, Mask, frxClass, frxIBXComponents;

type
  TFCadFormaPgto = class(TFCadPadrao)
    ibCadastroFOP_ID: TIntegerField;
    ibCadastroFOP_TIPO: TIntegerField;
    ibCadastroFOP_DESCRICAO: TIBStringField;
    ibCadastroFOP_BANCO_ID: TIntegerField;
    ibCadastroFOP_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaFOP_ID: TIntegerField;
    qConsultaFOP_TIPO: TIntegerField;
    qConsultaFOP_DESCRICAO: TIBStringField;
    qConsultaFOP_BANCO_ID: TIntegerField;
    qConsultaFOP_DH_CA: TDateTimeField;
    DBRadioGroup1: TDBRadioGroup;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    qBanco: TIBQuery;
    dsBanco: TDataSource;
    qBancoBANC_ID: TIntegerField;
    qBancoBANC_DESCRICAO: TIBStringField;
    qBancoBANC_AGENCIA_CODIGO: TIBStringField;
    qBancoBANC_AGENCIA_NOME: TIBStringField;
    qBancoBANC_CONTA_CODIGO: TIBStringField;
    qBancoBANC_CONTA_TITULAR: TIBStringField;
    qBancoBANC_CONTA_TIPO: TIntegerField;
    qBancoBANC_ATIVO: TIBStringField;
    qBancoBANC_DH_CA: TDateTimeField;
    Label2: TLabel;
    qConsultaDESC_TIPO: TIBStringField;
    qConsultaDESC_BANCO: TIBStringField;
    grConsultaDBTableView1FOP_ID: TcxGridDBColumn;
    grConsultaDBTableView1FOP_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1DESC_TIPO: TcxGridDBColumn;
    grConsultaDBTableView1DESC_BANCO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_GravarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadFormaPgto: TFCadFormaPgto;

implementation

{$R *.dfm}

procedure TFCadFormaPgto.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
  qBanco.Open;
end;

procedure TFCadFormaPgto.Act_Btn_GravarExecute(Sender: TObject);
begin
  inherited;
  qBanco.Close;
  qBanco.Open;
end;

end.
