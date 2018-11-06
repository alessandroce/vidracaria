unit uSelecionarBanco;

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
  TFSelecionarBanco = class(TFSelecionarPadrao)
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIBStringField;
    qConsultaDESCRICAO: TIBStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TStringField;
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
  FSelecionarBanco: TFSelecionarBanco;

implementation

{$R *.dfm}

end.
