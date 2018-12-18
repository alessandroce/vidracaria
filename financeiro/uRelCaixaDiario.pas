unit uRelCaixaDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRelatorioPadrao, frxClass, frxIBXComponents, ImgList, ActnList,
  StdCtrls, Buttons, ExtCtrls, uFerramentas, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, DB, frxDBSet, IBCustomDataSet, IBQuery,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  Spin;

type
  TFRelCaixaDiario = class(TFRelatorioPadrao)
    Label1: TLabel;
    Label2: TLabel;
    bt_SelCli: TAction;
    cxDBDateEdit1: TcxDateEdit;
    cxDBDateEdit2: TcxDateEdit;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    procedure bt_CancelarExecute(Sender: TObject);
    procedure bt_LimparExecute(Sender: TObject);
    procedure bt_okExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FSQL : String;
  public
    { Public declarations }
    FTipoCli : Integer;
    IdCli : Integer;
  end;

var
  FRelCaixaDiario: TFRelCaixaDiario;

implementation

uses uSelecionarCliente, uClassAvisos, DateUtils;


{$R *.dfm}

procedure TFRelCaixaDiario.bt_CancelarExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFRelCaixaDiario.bt_LimparExecute(Sender: TObject);
begin
  inherited;
  IdCli := 0;
  cxDBDateEdit1.Date := StartOfTheMonth(Now);
  cxDBDateEdit2.Date := Now;
end;

procedure TFRelCaixaDiario.bt_okExecute(Sender: TObject);
var Filtro, FiltroUsado : String;
    sDataIni, sDataFim : String;
    sOrdenar : String;
begin
  inherited;
  FiltroUsado := '';
  sDataIni := FormatDateTime('dd/mm/yyyy',cxDBDateEdit1.Date);
  sDataFim := FormatDateTime('dd/mm/yyyy',cxDBDateEdit2.Date);

  FiltroUsado := FiltroUsado + 'Período '+sDataIni+' até '+sDataFim;
  {pagar}sRelatorio := 'FIN012_CAIXA_DIARIO';
  sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
    begin
      getVariavelDesign('ANO',IntToStr(SpinEdit1.Value));
      getVariavelDesign('DATAINICIO',QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit1.Date)));
      getVariavelDesign('DATAFINAL',QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit2.Date)));
      getVariavelDesign('FILTROUSADO',QuotedStr(FiltroUsado));
      ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
    end;
  end
  else
  begin
    ChamaRelatorio(frxReport1,sRelatorio, false);
    frxReport1.Variables['ANO'] := IntToStr(SpinEdit1.Value);
    frxReport1.Variables['DATAINICIO'] := QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit1.Date));
    frxReport1.Variables['DATAFINAL'] := QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit2.Date));
    frxReport1.Variables['FILTROUSADO'] := QuotedStr(FiltroUsado);
    frxReport1.ShowReport;
  end;
end;

procedure TFRelCaixaDiario.FormShow(Sender: TObject);
begin
  inherited;
  cxDBDateEdit1.Date := StartOfTheMonth(Now);
  cxDBDateEdit2.Date := Now;
  cxDBDateEdit1.SetFocus;
end;

end.
