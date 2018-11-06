unit uCadVidros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, Mask, DBCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, IBCustomDataSet, ActnList, ImgList,
  IBQuery, ExtCtrls, ComCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFCadVidros = class(TFCadPadrao)
    ibCadastroVID_ID: TIntegerField;
    ibCadastroVID_TVID_ID: TIntegerField;
    ibCadastroVID_DESCRICAO: TIBStringField;
    ibCadastroVID_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaVID_ID: TIntegerField;
    qConsultaVID_TVID_ID: TIntegerField;
    qConsultaVID_DESCRICAO: TIBStringField;
    qConsultaVID_DH_CA: TDateTimeField;
    grConsultaDBTableView1VID_ID: TcxGridDBColumn;
    grConsultaDBTableView1VID_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    qTipoVidro: TIBQuery;
    qTipoVidroTVID_ID: TIntegerField;
    qTipoVidroTVID_DESCRICAO: TIBStringField;
    qTipoVidroTVID_DH_CA: TDateTimeField;
    dsTipoVidro: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    qConsultaTVID_DESCRICAO: TIBStringField;
    grConsultaDBTableView1TVID_DESCRICAO: TcxGridDBColumn;
    procedure qConsultaAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadVidros: TFCadVidros;

implementation

{$R *.dfm}

procedure TFCadVidros.qConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qTipoVidro.Close;
  qTipoVidro.Open;
  qConsulta.Last;
  qConsulta.First;
end;

procedure TFCadVidros.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

end.
