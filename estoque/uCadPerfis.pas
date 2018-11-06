unit uCadPerfis;

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
  TFCadPerfis = class(TFCadPadrao)
    ibCadastroPER_ID: TIntegerField;
    ibCadastroPER_IMAGEM: TMemoField;
    ibCadastroPER_CODIGOINTERNO: TIBStringField;
    ibCadastroPER_DESCRICAO: TIBStringField;
    ibCadastroPER_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaPER_ID: TIntegerField;
    qConsultaPER_IMAGEM: TMemoField;
    qConsultaPER_CODIGOINTERNO: TIBStringField;
    qConsultaPER_DESCRICAO: TIBStringField;
    qConsultaPER_DH_CA: TDateTimeField;
    grConsultaDBTableView1PER_ID: TcxGridDBColumn;
    grConsultaDBTableView1PER_IMAGEM: TcxGridDBColumn;
    grConsultaDBTableView1PER_CODIGOINTERNO: TcxGridDBColumn;
    grConsultaDBTableView1PER_DESCRICAO: TcxGridDBColumn;
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
  FCadPerfis: TFCadPerfis;
Const
  tpJpeg          = 0;
  tpBmp           = 1;
  FImageFieldName = 'PER_IMAGEM';
implementation

{$R *.dfm}

procedure TFCadPerfis.sbBuscaImagemClick(Sender: TObject);
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

procedure TFCadPerfis.sbExcluirImagemClick(Sender: TObject);
begin
  inherited;
  pImage.Picture := nil;
  TBlobField(ibCadastro.FieldByName(FImageFieldName)).Clear;
end;

procedure TFCadPerfis.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

procedure TFCadPerfis.EntrouAbaConsulta;
begin
  inherited;
  pImage.Picture := nil;
end;

procedure TFCadPerfis.Act_Btn_AlterarExecute(Sender: TObject);
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
