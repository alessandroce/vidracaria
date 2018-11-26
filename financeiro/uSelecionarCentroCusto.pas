unit uSelecionarCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSelecionarPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, DBClient, Provider, IBCustomDataSet, IBQuery,
  frxClass, frxIBXComponents, ImgList, ActnList, StdCtrls, Buttons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls;

type
  TFSelecionarCentroCusto = class(TFSelecionarPadrao)
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelecionarCentroCusto: TFSelecionarCentroCusto;

implementation

{$R *.dfm}

end.
