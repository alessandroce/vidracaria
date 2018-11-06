unit uimprelat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,
  Variants, Buttons, ImgList, DB, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons;

type
  TModoRel = (mImpressao,mDesign);
  TFimprel = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    lblarq: TLabel;
    Memo1: TMemo;
    pnbotao: TPanel;
    BtnImprimir: TBitBtn;
    Btndesign: TBitBtn;
    pnAguarde: TPanel;
    lblnomerel: TLabel;
    Btnfechar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtndesignClick(Sender: TObject);
    procedure BtnfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ImprimirAlterarRelatorio(pModo: TModoRel);
  public
    { Public declarations }
    UsarImagemLogo : Boolean;
    FId : Integer;
    FCaminhoIni    : String;
    FArquivo       : String;
    FNomeRelatorio : String;
    FDescricaoRelatorio : String;
  end;

var
  Fimprel: TFimprel;

implementation
uses uferramentas, udmconexao, Udesign;

{$R *.DFM}

procedure TFimprel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFimprel.BtnfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFimprel.FormShow(Sender: TObject);
begin
  //FCaminhoIni := LerIni('SGPAR','DOCUMENTOS_FR3', sCaminhoIni,'S') + '\';
  lblarq.Caption     := FArquivo;
  lblnomerel.Caption := FNomeRelatorio;
  //Fdesign.frReport1.LoadFromFile(FCaminhoIni+FArquivo);
  //Memo1.Lines       := Fdesign.frReport1.ReportOptions.Description;
  Memo1.Lines.Text  := FDescricaoRelatorio;
end;

procedure TFimprel.BtnImprimirClick(Sender: TObject);
begin
  ImprimirAlterarRelatorio(mImpressao);
end;

procedure TFimprel.BtndesignClick(Sender: TObject);
begin
  ImprimirAlterarRelatorio(mDesign);
end;

procedure TFimprel.ImprimirAlterarRelatorio(pModo:TModoRel);
var sCaminhoImagem : String;
    sNomeImagem : String;
    sImagem : String;

begin
  pnAguarde.Visible := True;
  Application.ProcessMessages;

  //Fdesign.frReport1.PrepareReport;
  if pModo=mImpressao then
    //Fdesign.frReport1.ShowPreparedReport;
    Fdesign.frReport1.ShowReport;

  if pModo=mDesign then
    Fdesign.frReport1.DesignReport;

  Application.ProcessMessages;
  pnAguarde.Visible := False;

end;

end.
