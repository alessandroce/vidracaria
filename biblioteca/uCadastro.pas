unit uCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, IBQuery, IBCustomDataSet, StdCtrls,
  wwdbdatetimepicker, Buttons, Mask, DBCtrls, wwdblook, Spin, Menus,
  cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFCadastro = class(TForm)
    StatusBar1: TStatusBar;
    pgCadastro: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    qCadastro: TIBDataSet;
    qConsulta: TIBQuery;
    dsCadastro: TDataSource;
    dsConsulta: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    btNovo: TBitBtn;
    btAlterar: TBitBtn;
    btApagar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btSair: TBitBtn;
    Panel4: TPanel;
    rgAtivo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure pgCadastroChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure btApagarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    FMudaAba : Boolean;
    function DefinirVariaveis:Boolean;
  public
    { Public declarations }
    FCampoCa : String;
    FCampoCo : String;
    FTabelaCa : String;
    FId : Integer;
    function Continua(pContinua:Boolean;pTexto:String=''):Boolean;
    procedure MudaAba(pNovaAba:Integer);
    procedure EntrouAbaCadastro;Virtual;
    procedure EntrouAbaConsulta;Virtual;
    procedure AntesMudaAba(var pContinuaAcao : Boolean);Virtual;
    procedure DepoisMudaAba;Virtual;
    procedure GravaRegistrosFilhos(var pGravouSucesso:Boolean); virtual;
    procedure AntesBotaoEditar(var pContinuaAcao:Boolean); virtual;
    procedure DepoisBotaoEditar; virtual;
    
  end;

var
  FCadastro: TFCadastro;
const
  cAbaConsulta = 0;
  cAbaCadastro = 1;

implementation

uses uDMConexao, DateUtils, uTitulosPeriodo, uTitulosAPagar;

{$R *.dfm}

procedure TFCadastro.FormShow(Sender: TObject);
begin
  pgCadastro.ActivePageIndex := 0;
  qConsulta.Open;
end;

procedure TFCadastro.btNovoClick(Sender: TObject);
begin
  if not(Continua(DefinirVariaveis,'Definir variaveis')) then
    Abort;

    if not(DMConexao.IBTransacao.InTransaction) then
      DMConexao.IBTransacao.StartTransaction;

  qCadastro.Open;
  qCadastro.Insert;
  pgCadastro.ActivePageIndex := 1;
end;


procedure TFCadastro.btAlterarClick(Sender: TObject);
var vContinua : Boolean;
begin
  if not(Continua(DefinirVariaveis,'Definir variaveis')) then
    Abort;

  AntesBotaoEditar(vContinua);
  if vContinua then
  begin
    if not(DMConexao.IBTransacao.InTransaction) then
      DMConexao.IBTransacao.StartTransaction;

    qCadastro.Close;
    qCadastro.ParamByName('FId').value := FId;
    qCadastro.Open;
    qCadastro.Edit;
    pgCadastro.ActivePageIndex := 1;
    DepoisBotaoEditar;
  end;
end;

procedure TFCadastro.btCancelarClick(Sender: TObject);
begin
  qCadastro.Cancel;
  pgCadastro.ActivePageIndex := 0;
end;

procedure TFCadastro.btGravarClick(Sender: TObject);
var vContinua : Boolean;
begin
  try
    qCadastro.Post;
    GravaRegistrosFilhos(vContinua);
    if vContinua then
    begin
      DMConexao.IBTransacao.Commit;
      pgCadastro.ActivePageIndex := 0;
      ShowMessage('Finalizado com sucesso.');
    end;
  except
    on e : exception do
    begin
      DMConexao.IBTransacao.Rollback;
      ShowMessage('Erro: '+e.Message);
    end;
  end;
end;

function TFCadastro.Continua(pContinua: Boolean; pTexto: String): Boolean;
begin
  Result := pContinua;
  if not(Result) then
    if pTexto<>'' then
      ShowMessage(pTexto);
end;

procedure TFCadastro.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadastro.AntesMudaAba(var pContinuaAcao: Boolean);
begin
  pContinuaAcao := true;
end;

procedure TFCadastro.DepoisMudaAba;
begin
//
end;

procedure TFCadastro.MudaAba(pNovaAba: Integer);
begin
  AntesMudaAba(FMudaAba);
  if FMudaAba then
  begin
    pgCadastro.ActivePageIndex := pNovaAba;
    case pNovaAba of
      cAbaConsulta : begin
                       EntrouAbaConsulta;
                     end;
      cAbaCadastro : begin
                       EntrouAbaCadastro;
                     end;
    end;
    FMudaAba := False;
    DepoisMudaAba;
  end;
end;

procedure TFCadastro.EntrouAbaCadastro;
begin

end;

procedure TFCadastro.EntrouAbaConsulta;
begin

end;

procedure TFCadastro.pgCadastroChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := FMudaAba;
end;

procedure TFCadastro.GravaRegistrosFilhos(var pGravouSucesso: Boolean);
begin
  pGravouSucesso := true;
end;

function TFCadastro.DefinirVariaveis: Boolean;
begin
  Result := not( ((FCampoCa=EmptyStr) or (FCampoCo=EmptyStr) or (FTabelaCa=EmptyStr)) );
end;

procedure TFCadastro.btApagarClick(Sender: TObject);
begin
  if not(Continua(DefinirVariaveis,'Definir variaveis')) then
    Abort;

end;

procedure TFCadastro.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  btAlterar.Click;
end;

procedure TFCadastro.AntesBotaoEditar(var pContinuaAcao: Boolean);
begin
  pContinuaAcao := True;
end;

procedure TFCadastro.DepoisBotaoEditar;
begin
//
end;

end.
