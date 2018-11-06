unit uCadTipoVidro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery, IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Mask, DBCtrls;

type
  TFCadTipoVidro = class(TFCadPadrao)
    ibCadastroTVID_ID: TIntegerField;
    ibCadastroTVID_DESCRICAO: TIBStringField;
    ibCadastroTVID_DH_CA: TDateTimeField;
    qConsultaTVID_ID: TIntegerField;
    qConsultaTVID_DESCRICAO: TIBStringField;
    qConsultaTVID_DH_CA: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    grConsultaDBTableView1TVID_ID: TcxGridDBColumn;
    grConsultaDBTableView1TVID_DESCRICAO: TcxGridDBColumn;
    qConsultaID: TIntegerField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadTipoVidro: TFCadTipoVidro;

implementation

{$R *.dfm}

procedure TFCadTipoVidro.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Close;
  qConsulta.Open;
end;

end.
