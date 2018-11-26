unit uSelecionarFormaPgto;

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
  TFSelecionarFormaPgto = class(TFSelecionarPadrao)
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    qConsultaID: TIntegerField;
    cdsConsultaID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelecionarFormaPgto: TFSelecionarFormaPgto;

implementation

{$R *.dfm}

end.
