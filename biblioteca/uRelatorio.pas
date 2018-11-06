unit uRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, frxClass, frxExportXLS,
  frxExportPDF, frxDBSet, Spin, DateUtils, DB, IBCustomDataSet, IBQuery;

type
  TFRelatorio = class(TForm)
    Panel1: TPanel;
    btSair: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorio: TFRelatorio;

implementation

uses uDMConexao, uFerramentas;

{$R *.dfm}

procedure TFRelatorio.btSairClick(Sender: TObject);
begin
  Close;
end;

end.
