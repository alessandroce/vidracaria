unit uSelecionarPagarReceber;

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
  TFSelecionarPagarReceber = class(TFSelecionarPadrao)
    qConsultaID: TIntegerField;
    qConsultaCODIGO: TIntegerField;
    qConsultaDESCRICAO: TIBStringField;
    qConsultaITEM: TIBStringField;
    qConsultaPAR_VALOR: TIBBCDField;
    qConsultaPAR_DATAVENCTO: TDateField;
    qConsultaPAR_CLI_ID: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaITEM: TStringField;
    cdsConsultaPAR_VALOR: TBCDField;
    cdsConsultaPAR_DATAVENCTO: TDateField;
    cdsConsultaPAR_CLI_ID: TIntegerField;
    grConsultaDBTableView1ID: TcxGridDBColumn;
    grConsultaDBTableView1CODIGO: TcxGridDBColumn;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1ITEM: TcxGridDBColumn;
    grConsultaDBTableView1PAR_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1PAR_DATAVENCTO: TcxGridDBColumn;
    grConsultaDBTableView1PAR_CLI_ID: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelecionarPagarReceber: TFSelecionarPagarReceber;

implementation

{$R *.dfm}

end.
