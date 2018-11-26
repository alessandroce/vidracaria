unit uCadCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, frxClass, frxIBXComponents, ActnList, ImgList,
  IBQuery, IBCustomDataSet, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Mask, DBCtrls, frxDBSet;

type
  TFCadCentroCusto = class(TFCadPadrao)
    ibCadastroCCO_ID: TIntegerField;
    ibCadastroCCO_CODIGO: TIntegerField;
    ibCadastroCCO_DESCRICAO: TIBStringField;
    ibCadastroCCO_DH_CA: TDateTimeField;
    qConsultaCCO_ID: TIntegerField;
    qConsultaCCO_CODIGO: TIntegerField;
    qConsultaCCO_DESCRICAO: TIBStringField;
    qConsultaCCO_DH_CA: TDateTimeField;
    grConsultaDBTableView1CCO_CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1CCO_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    frxCentroCusto: TfrxDBDataset;
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCentroCusto: TFCadCentroCusto;

implementation

uses uFerramentas;

{$R *.dfm}

procedure TFCadCentroCusto.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'FIN011_CENTROCUSTO';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

procedure TFCadCentroCusto.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

end.
