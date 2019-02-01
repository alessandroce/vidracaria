unit uRelPagamentoContasReceber;

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
  TFRelPagamentoContasReceber = class(TFRelatorioPadrao)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    bt_SelCli: TAction;
    ComboBox1: TComboBox;
    Label6: TLabel;
    qRelatorio: TIBQuery;
    qRelatorioPAR_ID: TIntegerField;
    qRelatorioPAR_PAGREC: TIntegerField;
    qRelatorioPAR_DESCRICAO: TIBStringField;
    qRelatorioPAR_CAT_ID: TIntegerField;
    qRelatorioPAR_CONTA_ID: TIntegerField;
    qRelatorioPAR_DATACOMPETENCIA: TDateField;
    qRelatorioPAR_DATAVENCTO: TDateField;
    qRelatorioPAR_VALOR: TIBBCDField;
    qRelatorioPAR_CLI_ID: TIntegerField;
    qRelatorioPAR_CETROCUSTO: TIBStringField;
    qRelatorioPAR_OBSERVACAO: TIBStringField;
    qRelatorioPAR_ANEXO: TMemoField;
    qRelatorioPAR_PAGO: TIBStringField;
    qRelatorioPAR_DATAPGTO: TDateField;
    qRelatorioPAR_DESCONTOTAXA: TIBBCDField;
    qRelatorioPAR_JUROMULTA: TIBBCDField;
    qRelatorioPAR_VALORPAGO: TIBBCDField;
    qRelatorioPAR_DH_CA: TDateTimeField;
    qRelatorioPAR_PARCELANUM: TIntegerField;
    qRelatorioPAR_PARCELAMAX: TIntegerField;
    qRelatorioPAR_PARCELAPAI: TIntegerField;
    qRelatorioDESC_CLIENTE: TIBStringField;
    dsRelatorio: TDataSource;
    cxDBDateEdit1: TcxDateEdit;
    cxDBDateEdit2: TcxDateEdit;
    frxRelatorio: TfrxDBDataset;
    qRelatorioPAR_NUMDOC: TIBStringField;
    qRelatorioPAR_CCO_ID: TIntegerField;
    qRelatorioPAR_BAIXADO: TIBStringField;
    qRelatorioPAR_TIPOBAIXA: TIBStringField;
    qRelatorioPAR_VENDEDOR_ID: TIntegerField;
    qRelatorioPAR_VENDACOMISSIONADA_ID: TIntegerField;
    qRelatorioVEC_NUMDOCUMENTO: TIntegerField;
    qRelatorioVALOR_ORIGINAL: TIBBCDField;
    qRelatorioPAR_VALOR_RESTANTE: TIBBCDField;
    qRelatorioVALOR_QUITADO: TIBBCDField;
    qRelatorioDATA_PAGTO: TDateField;
    procedure bt_CancelarExecute(Sender: TObject);
    procedure bt_LimparExecute(Sender: TObject);
    procedure bt_okExecute(Sender: TObject);
    procedure bt_SelCliExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FSQL : String;
    function getDescricaoCliForn(pTipoCli: Integer;pComplemento: String=''): String;
  public
    { Public declarations }
    FTipoCli : Integer;
    IdCli : Integer;
  end;

var
  FRelPagamentoContasReceber: TFRelPagamentoContasReceber;

implementation

uses uSelecionarCliente, uClassAvisos, DateUtils;


{$R *.dfm}

procedure TFRelPagamentoContasReceber.bt_CancelarExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFRelPagamentoContasReceber.bt_LimparExecute(Sender: TObject);
begin
  inherited;
  IdCli := 0;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  cxDBDateEdit1.Date := StartOfTheMonth(Now);
  cxDBDateEdit2.Date := Date;
end;

procedure TFRelPagamentoContasReceber.bt_okExecute(Sender: TObject);
var Filtro, FiltroUsado : String;
    sDataIni, sDataFim : String;
    sOrdenar : String;
    sPagina : String;
begin
  inherited;
  Filtro := '';
  sDataIni := QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit1.Date));
  sDataFim := QuotedStr(FormatDateTime('dd.mm.yyyy',cxDBDateEdit2.Date));

  Filtro := Filtro + 'and par_pagrec = '+IntToStr(FTipoCli)+#13;

  if RadioButton1.Checked then
  begin
    Filtro := Filtro + 'and (data_pagto between '+sDataIni+' and '+sdataFim+')'+#13;
    FiltroUsado := FiltroUsado + RadioButton1.caption+' '+StringReplace(sDataIni,'''','',[rfReplaceAll])+' até '+StringReplace(sDataFim,'''','',[rfReplaceAll])+' | ';
  end;
  if RadioButton2.Checked then
  begin
    Filtro := Filtro + 'and ((coalesce(par_baixado,''N'') = ''N'') and (par_datavencto between '+sDataIni+' and '+sdataFim+'))'+#13;
    FiltroUsado := FiltroUsado + RadioButton2.caption+' '+StringReplace(sDataIni,'''','',[rfReplaceAll])+' até '+StringReplace(sDataFim,'''','',[rfReplaceAll])+' | ';
  end;

  if IdCli>0 then
  begin
    Filtro := Filtro + 'and par_cli_id = '+IntToStr(IdCli)+#13;
    FiltroUsado := FiltroUsado + getDescricaoCliForn(FTipoCli,':')+Edit2.Text+' | ';
  end;

  if Edit3.Text<>'' then
  begin
    Filtro := Filtro + 'and par_descricao like ''%'+Edit3.Text+'%'''+#13;
    FiltroUsado := FiltroUsado + 'Descrição: '+Edit3.Text+' | ';
  end;

  case ComboBox1.ItemIndex of
    0 : begin
      if RadioButton1.Checked then
          sOrdenar := 'data_pagto'
      else
          sOrdenar := 'par_datavencto';
        end;
    1 : sOrdenar := 'desc_cliente';
    2 : sOrdenar := 'par_descricao';
  end;
  FiltroUsado := FiltroUsado + 'Ordenado por: '+ComboBox1.Text;


  Filtro := Filtro + 'order by '+sOrdenar;

  if RadioButton1.Checked then
    sPagina := 'Page2';
  if RadioButton2.Checked then
    sPagina := 'Page1';

  qRelatorio.Close;
  qRelatorio.SQL.Clear;
  qRelatorio.SQL.Text := FSQL + Filtro;

  qRelatorio.Open;
  if qRelatorio.RecordCount>0 then
  begin
    {pagar}sRelatorio := 'FIN009_PAGAMENTO_CONTAS_RECEBER';
    sDescricaoRelatorio := 'Relatorio de '+pnBarraForm.Caption;
    if ImprimirModoDesign then
    begin
      if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      begin
        getVariavelDesign('FILTROUSADO',QuotedStr(FiltroUsado));
        getVariavelDesign('PAGINA',QuotedStr(sPagina));
        ImprimirAlterarRelatorio(0,sRelatorio,sDescricaoRelatorio);
      end;
    end
    else
    begin
      ChamaRelatorio(frxReport1,sRelatorio, false);
      frxReport1.Variables['PAGINA'] := QuotedStr(sPagina);
      frxReport1.Variables['FILTROUSADO'] := QuotedStr(FiltroUsado);
      frxReport1.ShowReport;
    end;
  end
  else
    Aviso('Registro não encontrado.');
end;

procedure TFRelPagamentoContasReceber.bt_SelCliExecute(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := FTipoCli;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
  begin
    IdCli := FSelecionarCli.FId;
    Edit1.Text := IntToStr(FSelecionarCli.FCodigo);
    Edit2.Text := FSelecionarCli.FDescricao;
  end;
  FSelecionarCli.Free;
end;

procedure TFRelPagamentoContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  FSQL := qRelatorio.SQL.Text;
  cxDBDateEdit1.Date := StartOfTheMonth(Now);
  cxDBDateEdit2.Date := Now;
  cxDBDateEdit1.SetFocus;
  Label4.Caption := getDescricaoCliForn(FTipoCli);
end;

function TFRelPagamentoContasReceber.getDescricaoCliForn(pTipoCli:Integer;pComplemento:String=''):String;
begin
  case pTipoCli of
    1 : Result := 'Cliente'+pComplemento+' ';
    2 : Result := 'Fornecedor'+pComplemento+' ';
  end;
end;

end.
