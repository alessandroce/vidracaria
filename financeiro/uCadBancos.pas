unit uCadBancos;

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
  cxDataStorage, cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery,
  IBCustomDataSet, ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Mask, DBCtrls, frxClass, frxIBXComponents;

type
  TFCadBancos = class(TFCadPadrao)
    ibCadastroBANC_ID: TIntegerField;
    ibCadastroBANC_DESCRICAO: TIBStringField;
    ibCadastroBANC_AGENCIA_CODIGO: TIBStringField;
    ibCadastroBANC_AGENCIA_NOME: TIBStringField;
    ibCadastroBANC_CONTA_CODIGO: TIBStringField;
    ibCadastroBANC_CONTA_TITULAR: TIBStringField;
    ibCadastroBANC_CONTA_TIPO: TIntegerField;
    ibCadastroBANC_ATIVO: TIBStringField;
    ibCadastroBANC_DH_CA: TDateTimeField;
    grConsultaDBTableView1BANC_ID: TcxGridDBColumn;
    grConsultaDBTableView1BANC_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1BANC_AGENCIA_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1BANC_AGENCIA_NOME: TcxGridDBColumn;
    grConsultaDBTableView1BANC_CONTA_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1BANC_CONTA_TITULAR: TcxGridDBColumn;
    grConsultaDBTableView1BANC_CONTA_TIPO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    qConsultaID: TIntegerField;
    qConsultaBANC_ID: TIntegerField;
    qConsultaBANC_DESCRICAO: TIBStringField;
    qConsultaBANC_AGENCIA_CODIGO: TIBStringField;
    qConsultaBANC_AGENCIA_NOME: TIBStringField;
    qConsultaBANC_CONTA_CODIGO: TIBStringField;
    qConsultaBANC_CONTA_TITULAR: TIBStringField;
    qConsultaBANC_CONTA_TIPO: TIntegerField;
    qConsultaBANC_ATIVO: TIBStringField;
    qConsultaBANC_DH_CA: TDateTimeField;
    Label13: TLabel;
    btCACliente: TBitBtn;
    Label12: TLabel;
    ibCadastroBANC_BANCO_ID: TIntegerField;
    qBanco: TIBQuery;
    dsBanco: TDataSource;
    qBancoBFEB_ID: TIntegerField;
    qBancoBFEB_CODIGO: TIBStringField;
    qBancoBFEB_DESCRICAO: TIBStringField;
    qBancoBFEB_DH_CA: TDateTimeField;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    qConsultaBANC_BANCO_ID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure ibCadastroAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CarregarBanco(pID : Integer);
  public
    { Public declarations }
  end;

var
  FCadBancos: TFCadBancos;

implementation

uses uSelecionarBanco;

{$R *.dfm}

procedure TFCadBancos.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

procedure TFCadBancos.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarBanco := TFSelecionarBanco.Create(nil);
  FSelecionarBanco.pnBarraForm.Caption := 'Selecionar Banco';
  FSelecionarBanco.ShowModal;
  if FSelecionarBanco.FId>0 then
  begin
    ibCadastroBANC_BANCO_ID.Value := FSelecionarBanco.FId;
    CarregarBanco(FSelecionarBanco.FId);
  end;
  FSelecionarBanco.Free;
end;

procedure TFCadBancos.CarregarBanco(pID : Integer);
begin
  qBanco.Close;
  qBanco.ParamByName('id').Value := pID;
  qBanco.Open;
end;

procedure TFCadBancos.ibCadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  CarregarBanco(qConsultaBANC_BANCO_ID.Value);
end;

end.
