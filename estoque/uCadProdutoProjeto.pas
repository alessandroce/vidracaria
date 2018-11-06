unit uCadProdutoProjeto;

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
  IBCustomDataSet, ToolWin, ComCtrls, StdCtrls, ExtCtrls, Buttons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  TFCadProdutoProjeto = class(TFCadPadrao)
    ibCadastroPROD_ID: TIntegerField;
    ibCadastroPROD_PRODTP_ID: TIntegerField;
    ibCadastroPROD_SIGLA: TIBStringField;
    ibCadastroPROD_DESCRICAO: TIBStringField;
    ibCadastroPROD_DESCRICAO_LONGA: TIBStringField;
    ibCadastroPROD_ATIVO: TIBStringField;
    ibCadastroPROD_VALOR: TIBBCDField;
    ibCadastroPROD_UNIDMEDIDA: TIBStringField;
    ibCadastroPROD_ESPESSURA: TIBBCDField;
    ibCadastroPROD_LARGURA: TIBBCDField;
    ibCadastroPROD_ALTURA: TIBBCDField;
    ibCadastroPROD_MEDIDA_METRO: TIBBCDField;
    ibCadastroPROD_CAMINHOIMAGEM: TIBStringField;
    ibCadastroPROD_PRL_ID: TIntegerField;
    qConsultaPROD_ID: TIntegerField;
    qConsultaPROD_PRODTP_ID: TIntegerField;
    qConsultaPROD_SIGLA: TIBStringField;
    qConsultaPROD_DESCRICAO: TIBStringField;
    qConsultaPROD_DESCRICAO_LONGA: TIBStringField;
    qConsultaPROD_ATIVO: TIBStringField;
    qConsultaPROD_VALOR: TIBBCDField;
    qConsultaPROD_UNIDMEDIDA: TIBStringField;
    qConsultaPROD_ESPESSURA: TIBBCDField;
    qConsultaPROD_LARGURA: TIBBCDField;
    qConsultaPROD_ALTURA: TIBBCDField;
    qConsultaPROD_MEDIDA_METRO: TIBBCDField;
    qConsultaPROD_CAMINHOIMAGEM: TIBStringField;
    qConsultaPROD_PRL_ID: TIntegerField;
    qConsultaPROD_DH_CA: TDateTimeField;
    grConsultaDBTableView1PROD_ID: TcxGridDBColumn;
    grConsultaDBTableView1PROD_PRODTP_ID: TcxGridDBColumn;
    grConsultaDBTableView1PROD_SIGLA: TcxGridDBColumn;
    grConsultaDBTableView1PROD_DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1PROD_DESCRICAO_LONGA: TcxGridDBColumn;
    grConsultaDBTableView1PROD_ATIVO: TcxGridDBColumn;
    grConsultaDBTableView1PROD_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1PROD_UNIDMEDIDA: TcxGridDBColumn;
    grConsultaDBTableView1PROD_ESPESSURA: TcxGridDBColumn;
    grConsultaDBTableView1PROD_LARGURA: TcxGridDBColumn;
    grConsultaDBTableView1PROD_ALTURA: TcxGridDBColumn;
    grConsultaDBTableView1PROD_MEDIDA_METRO: TcxGridDBColumn;
    grConsultaDBTableView1PROD_CAMINHOIMAGEM: TcxGridDBColumn;
    grConsultaDBTableView1PROD_PRL_ID: TcxGridDBColumn;
    grConsultaDBTableView1PROD_DH_CA: TcxGridDBColumn;
    qConsultaID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProdutoProjeto: TFCadProdutoProjeto;

implementation

{$R *.dfm}

end.
