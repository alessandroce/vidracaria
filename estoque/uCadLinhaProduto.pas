unit uCadLinhaProduto;

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
  TFCadLinhaProduto = class(TFCadPadrao)
    ibCadastroPRL_ID: TIntegerField;
    ibCadastroPRL_DESCRICAO: TIBStringField;
    ibCadastroPRL_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaPRL_ID: TIntegerField;
    qConsultaPRL_DESCRICAO: TIBStringField;
    qConsultaPRL_DH_CA: TDateTimeField;
    grConsultaDBTableView1PRL_ID: TcxGridDBColumn;
    grConsultaDBTableView1PRL_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadLinhaProduto: TFCadLinhaProduto;

implementation

{$R *.dfm}

procedure TFCadLinhaProduto.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

end.
