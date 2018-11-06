unit uCadComponente;

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
  TFCadComponente = class(TFCadPadrao)
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
    ibCadastroCOM_ID: TIntegerField;
    ibCadastroCOM_IMAGEM: TMemoField;
    ibCadastroCOM_CODIGOINTERNO: TIBStringField;
    ibCadastroCOM_DESCRICAO: TIBStringField;
    ibCadastroCOM_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaCOM_ID: TIntegerField;
    qConsultaCOM_IMAGEM: TMemoField;
    qConsultaCOM_CODIGOINTERNO: TIBStringField;
    qConsultaCOM_DESCRICAO: TIBStringField;
    qConsultaCOM_DH_CA: TDateTimeField;
    grConsultaDBTableView1COM_ID: TcxGridDBColumn;
    grConsultaDBTableView1COM_IMAGEM: TcxGridDBColumn;
    grConsultaDBTableView1COM_CODIGOINTERNO: TcxGridDBColumn;
    grConsultaDBTableView1COM_DESCRICAO: TcxGridDBColumn;
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
  FCadComponente: TFCadComponente;
Const
  tpJpeg          = 0;
  tpBmp           = 1;
  FImageFieldName = 'COM_IMAGEM';
implementation

{$R *.dfm}

procedure TFCadComponente.sbBuscaImagemClick(Sender: TObject);
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

procedure TFCadComponente.sbExcluirImagemClick(Sender: TObject);
begin
  inherited;
  pImage.Picture := nil;
  TBlobField(ibCadastro.FieldByName(FImageFieldName)).Clear;
end;

procedure TFCadComponente.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

procedure TFCadComponente.EntrouAbaConsulta;
begin
  inherited;
  pImage.Picture := nil;
end;

procedure TFCadComponente.Act_Btn_AlterarExecute(Sender: TObject);
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
