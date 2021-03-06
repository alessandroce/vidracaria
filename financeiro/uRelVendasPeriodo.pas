unit uRelVendasPeriodo;

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
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFRelVendasPeriodo = class(TFRelatorioPadrao)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    bt_SelCli: TAction;
    ComboBox1: TComboBox;
    Label6: TLabel;
    qRelatorio: TIBQuery;
    dsRelatorio: TDataSource;
    cxDBDateEdit1: TcxDateEdit;
    cxDBDateEdit2: TcxDateEdit;
    frxRelatorio: TfrxDBDataset;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    qRelatorioDESC_CLIENTE: TIBStringField;
    qRelatorioPAR_ID: TIntegerField;
    qRelatorioPAR_DESCRICAO: TIBStringField;
    qRelatorioPAR_DATACOMPETENCIA: TDateField;
    qRelatorioPAR_DATAVENCTO: TDateField;
    qRelatorioPAR_VALOR: TIBBCDField;
    qRelatorioPAR_CETROCUSTO: TIBStringField;
    qRelatorioPIT_DESCRICAO: TIBStringField;
    procedure bt_CancelarExecute(Sender: TObject);
    procedure bt_LimparExecute(Sender: TObject);
    procedure bt_okExecute(Sender: TObject);
    procedure bt_SelCliExecute(Sender: TObject);
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
  FRelVendasPeriodo: TFRelVendasPeriodo;

const
  cCliente = 1;
  cFornecedor = 2;

implementation

uses uSelecionarCliente, uClassAvisos, DateUtils;


{$R *.dfm}

procedure TFRelVendasPeriodo.bt_CancelarExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFRelVendasPeriodo.bt_LimparExecute(Sender: TObject);
begin
  inherited;
  IdCli := 0;
  Edit1.Clear;
  Edit2.Clear;
  cxDBDateEdit1.Date := StartOfTheMonth(Now);
  cxDBDateEdit2.Date := Now;
end;

procedure TFRelVendasPeriodo.bt_okExecute(Sender: TObject);
var Filtro, FiltroUsado : String;
    sDataIni, sDataFim : String;
    sOrdenar : String;
    sPagina : String;
begin
  inherited;
  Filtro := '';
  sDataIni := QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit1.Date));
  sDataFim := QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit2.Date));

  if RadioButton1.Checked then
  begin
    Filtro := Filtro + 'and (par_datavencto between '+sDataIni+' and '+sdataFim+')'+#13;
    FiltroUsado := FiltroUsado + RadioButton1.caption+' '+StringReplace(sDataIni,'''','',[rfReplaceAll])+' at� '+StringReplace(sDataFim,'''','',[rfReplaceAll])+' | ';
  end;
  if RadioButton2.Checked then
  begin
    Filtro := Filtro + 'and (par_datacompetencia between '+sDataIni+' and '+sdataFim+')'+#13;
    FiltroUsado := FiltroUsado + RadioButton2.caption+' '+StringReplace(sDataIni,'''','',[rfReplaceAll])+' at� '+StringReplace(sDataFim,'''','',[rfReplaceAll])+' | ';
  end;

  if IdCli>0 then
  begin
    Filtro := Filtro + 'and par_cli_id = '+IntToStr(IdCli)+#13;
    FiltroUsado := FiltroUsado + 'Cliente: '+Edit2.Text+' | ';
  end;

  case ComboBox1.ItemIndex of
    0 : sOrdenar := 'par_datavencto';
    1 : sOrdenar := 'par_datacompetencia';
    2 : sOrdenar := 'desc_cliente';
  end;
  FiltroUsado := FiltroUsado + 'Ordenado por: '+ComboBox1.Text;

  Filtro := Filtro + 'order by '+sOrdenar;

  qRelatorio.Close;
  qRelatorio.SQL.Clear;
  qRelatorio.SQL.Text := FSQL + Filtro;

  qRelatorio.Open;
  if qRelatorio.RecordCount>0 then
  begin
    {pagar}sRelatorio := 'FIN010_VENDAS';
    sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
    if ImprimirModoDesign then
    begin
      if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      begin
        getVariavelDesign('FILTROUSADO',QuotedStr(FiltroUsado));
        ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
      end;
    end
    else
    begin
      ChamaRelatorio(frxReport1,sRelatorio, false);
      frxReport1.Variables['FILTROUSADO'] := QuotedStr(FiltroUsado);
      frxReport1.ShowReport;
    end;
  end
  else
    Aviso('Registro n�o encontrado.');
end;

procedure TFRelVendasPeriodo.bt_SelCliExecute(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := cCliente;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
  begin
    IdCli := FSelecionarCli.FId;
    Edit1.Text := IntToStr(FSelecionarCli.FCodigo);
    Edit2.Text := FSelecionarCli.FDescricao;
  end;
  FSelecionarCli.Free;
end;

procedure TFRelVendasPeriodo.FormShow(Sender: TObject);
begin
  inherited;
  FSQL := qRelatorio.SQL.Text;
  cxDBDateEdit1.Date := StartOfTheMonth(Now);
  cxDBDateEdit2.Date := Now;
  cxDBDateEdit1.SetFocus;
end;

end.
