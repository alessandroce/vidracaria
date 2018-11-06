unit uCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ActnList, ImgList, IBQuery, IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtDlgs, Mask, DBCtrls, JPEG, uFerramentas,
  cxImage;

type
  TFCadProduto = class(TFCadPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Shape1: TShape;
    pImage: TImage;
    sbBuscaImagem: TSpeedButton;
    sbExcluirImagem: TSpeedButton;
    OpenPictureDialog: TOpenPictureDialog;
    grConsultaDBTableView1PROD_ID: TcxGridDBColumn;
    grConsultaDBTableView1PROD_IMAGEM: TcxGridDBColumn;
    grConsultaDBTableView1PROD_CODIGOINTERNO: TcxGridDBColumn;
    grConsultaDBTableView1PROD_DESCRICAO: TcxGridDBColumn;
    ibCadastroPROD_ID: TIntegerField;
    ibCadastroPROD_PRODTP_ID: TIntegerField;
    ibCadastroPROD_SIGLA: TIBStringField;
    ibCadastroPROD_DESCRICAO: TIBStringField;
    ibCadastroPROD_DESCRICAO_LONGA: TIBStringField;
    ibCadastroPROD_ATIVO: TIBStringField;
    ibCadastroPROD_VALOR: TIBBCDField;
    ibCadastroPROD_UNIDMEDIDA: TIBStringField;
    ibCadastroPROD_ESPESSURA: TIBBCDField;
    ibCadastroPROD_LARGURA: TIBBCDField;
    ibCadastroPROD_ALTURA: TIBBCDField;
    ibCadastroPROD_MEDIDA_METRO: TIBBCDField;
    ibCadastroPROD_CAMINHOIMAGEM: TIBStringField;
    ibCadastroPROD_PRL_ID: TIntegerField;
    ibCadastroPROD_DH_CA: TDateTimeField;
    ibCadastroPROD_CODIGOINTERNO: TIBStringField;
    ibCadastroPROD_IMAGEM: TMemoField;
    qConsultaID: TIntegerField;
    qConsultaPROD_ID: TIntegerField;
    qConsultaPROD_PRODTP_ID: TIntegerField;
    qConsultaPROD_SIGLA: TIBStringField;
    qConsultaPROD_DESCRICAO: TIBStringField;
    qConsultaPROD_DESCRICAO_LONGA: TIBStringField;
    qConsultaPROD_ATIVO: TIBStringField;
    qConsultaPROD_VALOR: TIBBCDField;
    qConsultaPROD_UNIDMEDIDA: TIBStringField;
    qConsultaPROD_ESPESSURA: TIBBCDField;
    qConsultaPROD_LARGURA: TIBBCDField;
    qConsultaPROD_ALTURA: TIBBCDField;
    qConsultaPROD_MEDIDA_METRO: TIBBCDField;
    qConsultaPROD_CAMINHOIMAGEM: TIBStringField;
    qConsultaPROD_PRL_ID: TIntegerField;
    qConsultaPROD_DH_CA: TDateTimeField;
    qConsultaPROD_CODIGOINTERNO: TIBStringField;
    qConsultaPROD_IMAGEM: TMemoField;
    procedure sbBuscaImagemClick(Sender: TObject);
    procedure sbExcluirImagemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EntrouAbaConsulta;override;
  end;

var
  FCadProduto: TFCadProduto;
Const
  tpJpeg          = 0;
  tpBmp           = 1;
  FImageFieldName = 'PROD_IMAGEM';
implementation

{$R *.dfm}

procedure TFCadProduto.sbBuscaImagemClick(Sender: TObject);
var
  ImgTmp : TJPEGImage;
  StmTmp : TMemoryStream;
begin
  inherited;
  if OpenPictureDialog.Execute then
  begin
    if UpperCase(ExtractFileExt( OpenPictureDialog.FileName ))='.JPG' then
      pImage.Tag := tpJpEg
    else
      pImage.Tag := tpBmp;

    pImage.Picture.LoadFromFile( OpenPictureDialog.FileName );
    StmTmp := TMemoryStream.Create;
    ImgTmp := TJPEGImage.Create;

    if (pImage.Tag = tpBmp) then
      ImgTmp := BmpToJpg( pImage.Picture.Bitmap )
    else
      ImgTmp.Assign( pImage.Picture );

    ImgTmp.SaveToStream( StmTmp );
    Sleep(200);
    TBlobField(ibCadastro.FieldByName(FImageFieldName)).LoadFromStream( StmTmp );
  end;
end;

procedure TFCadProduto.sbExcluirImagemClick(Sender: TObject);
begin
  inherited;
  pImage.Picture := nil;
  TBlobField(ibCadastro.FieldByName(FImageFieldName)).Clear;
end;

procedure TFCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

procedure TFCadProduto.EntrouAbaConsulta;
begin
  inherited;
  pImage.Picture := nil;
end;

procedure TFCadProduto.Act_Btn_AlterarExecute(Sender: TObject);
var
  Stm : TMemoryStream;
  Jpg : TJPEGImage;
  Tmp : TJpegImage;
  Tmp2 : TJpegImage;
  Dir : String;
begin
  inherited;
  Dir := BuscaDiretorio;
  pImage.Picture := nil;
  if not ibCadastro.FieldByName(FImageFieldName).IsNull  then
  Begin
     TBlobField(ibCadastro.FieldByName(FImageFieldName)).SaveToFile(Dir+'img.jpg');
     Sleep(300);
     Tmp := TJPEGImage.Create;
     Tmp.LoadFromFile(Dir+'img.jpg');
     Sleep(300);
     pImage.Visible := True;
    try
     pImage.Picture.Assign(Tmp);
     Tmp.Free;
    except
      showmessage(pImage.name);
    end;
  End;

end;

end.
