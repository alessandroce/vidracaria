unit uCadEmitente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery, IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Mask, DBCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, frxClass,
  frxIBXComponents;

type
  TFCadEmitente = class(TFCadPadrao)
    ibCadastroEMIT_ID: TIntegerField;
    ibCadastroEMIT_RAZAOSOCIAL: TIBStringField;
    ibCadastroEMIT_RESPONSAVEL: TIBStringField;
    ibCadastroEMIT_ENDERECO: TIBStringField;
    ibCadastroEMIT_BAIRRO: TIBStringField;
    ibCadastroEMIT_MUNICIPIO: TIBStringField;
    ibCadastroEMIT_CEP: TIBStringField;
    ibCadastroEMIT_ESTADO: TIBStringField;
    ibCadastroEMIT_CNPJ: TIBStringField;
    ibCadastroEMIT_IE: TIBStringField;
    ibCadastroEMIT_TELEFONE: TIBStringField;
    ibCadastroEDIT_EMAIL: TIBStringField;
    qConsultaID: TIntegerField;
    qConsultaEMIT_ID: TIntegerField;
    qConsultaEMIT_RAZAOSOCIAL: TIBStringField;
    qConsultaEMIT_RESPONSAVEL: TIBStringField;
    qConsultaEMIT_ENDERECO: TIBStringField;
    qConsultaEMIT_BAIRRO: TIBStringField;
    qConsultaEMIT_MUNICIPIO: TIBStringField;
    qConsultaEMIT_CEP: TIBStringField;
    qConsultaEMIT_ESTADO: TIBStringField;
    qConsultaEMIT_CNPJ: TIBStringField;
    qConsultaEMIT_IE: TIBStringField;
    qConsultaEMIT_TELEFONE: TIBStringField;
    qConsultaEDIT_EMAIL: TIBStringField;
    grConsultaDBTableView1EMIT_ID: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_RAZAOSOCIAL: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_RESPONSAVEL: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_ENDERECO: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_BAIRRO: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_MUNICIPIO: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_CEP: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_ESTADO: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_CNPJ: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_IE: TcxGridDBColumn;
    grConsultaDBTableView1EMIT_TELEFONE: TcxGridDBColumn;
    grConsultaDBTableView1EDIT_EMAIL: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEmitente: TFCadEmitente;

implementation

{$R *.dfm}

procedure TFCadEmitente.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

end.
