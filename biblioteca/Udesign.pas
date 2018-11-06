unit Udesign;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Variants, frxClass, frxDesgn, frxExportDBF,
  frxExportTXT, frxExportMail, frxExportCSV, frxExportText, frxExportImage,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxExportPDF,
  frxIBXComponents, frxDBSet, frxDCtrl, frxGradient, frxChBox, frxCross,
  frxRich, frxOLE, frxBarcode, Buttons;

type
  TFdesign = class(TForm)
    lblmateria: TLabel;
    frReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxDialogControls1: TfrxDialogControls;
    frxDBDataset1: TfrxDBDataset;
    frxIBXComponents1: TfrxIBXComponents;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxTXTExport1: TfrxTXTExport;
    frxDBFExport1: TfrxDBFExport;
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
  private
    FNomeImagem: String;
    FCaminhoImagem: String;
    procedure setNomeImagem(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    NomeArquivoFR3 : String;
    CaminhoFR3 : String;
    DescricaoRelatorio : String;
    ImagemLogo : String;
    procedure getVariavel(pCampo: String; pConteudo: WideString;pCategoria:String='');
    procedure CarregarArquivo(pCaminhoFR3, pNomeArquivoFR3 : String);
    property CaminhoImagem : String read FCaminhoImagem write FCaminhoImagem;
    property NomeImagem : String read FNomeImagem write setNomeImagem;
  end;

var
  Fdesign: TFdesign;



implementation
uses uferramentas,udmconexao;
{$R *.DFM}

procedure TFdesign.CarregarArquivo(pCaminhoFR3, pNomeArquivoFR3: String);
begin
  if not(Continua( FileExists(pCaminhoFR3+pNomeArquivoFR3), ['I','Arquivo FR3 não encontrado.','Aviso'])) then
    Abort;
  CaminhoFR3     := pCaminhoFR3;
  NomeArquivoFR3 := pNomeArquivoFR3;
  frReport1.LoadFromFile(pCaminhoFR3+pNomeArquivoFR3);
  DescricaoRelatorio := Fdesign.frReport1.ReportOptions.Description.Text;
end;

procedure TFdesign.getVariavel(pCampo: String; pConteudo: WideString;pCategoria:String='');
begin
  if pCategoria<>'' then
    frReport1.Variables[ pCategoria ] := Null
  else
    frReport1.Variables[ pCampo ] := pConteudo;
end;

procedure TFdesign.setNomeImagem(const Value: String);
begin
  FNomeImagem := Value;
  if FileExists(FCaminhoImagem + FNomeImagem) then
    ImagemLogo := FCaminhoImagem + FNomeImagem
  else
    ImagemLogo := FCaminhoImagem + 'ImageNotFound.JPG';
end;

procedure TFdesign.frReport1GetValue(const ParName: String; var ParValue: Variant);
begin
(*
    if ParName = 'EMPRESA' then
       ParValue := func.empresa;
    if ParName = 'FILIAL' then
       Parvalue := func.filial;
    if ParName = 'ID' then
       Parvalue := FId;
    if ParName = 'DATAATUAL' then
       Parvalue := descdata(now);
*)
end;

end.




