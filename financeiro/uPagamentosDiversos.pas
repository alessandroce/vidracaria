unit uPagamentosDiversos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, frxClass, frxIBXComponents, ImgList, ActnList, ExtCtrls,
  StdCtrls, Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxGroupBox, DBCtrls, IBCustomDataSet, IBQuery, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, DBClient, DateUtils,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxDBLookupComboBox;

type
  TFPagamentosDiversos = class(TFPadrao)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaLevel1: TcxGridLevel;
    Bevel1: TBevel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    lblOcorrencia: TLabel;
    edOcorrencia: TEdit;
    lblVezes: TLabel;
    qConta: TIBQuery;
    qContaFOP_ID: TIntegerField;
    qContaFOP_DESCRICAO: TIBStringField;
    qContaFOP_TIPO: TIntegerField;
    qContaFOP_BANCO_ID: TIntegerField;
    qContaFOP_DH_CA: TDateTimeField;
    qContaFOP_FLAG: TIntegerField;
    dsConta: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    cbMensalmente: TComboBox;
    Label2: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    cdsItem: TClientDataSet;
    dsItem: TDataSource;
    cdsItemDESCRICAO: TStringField;
    cdsItemFORMAP: TStringField;
    cdsItemFORMAP_ID: TIntegerField;
    cdsItemVALOR: TFloatField;
    grConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    grConsultaDBTableView1FORMAP: TcxGridDBColumn;
    grConsultaDBTableView1FORMAP_ID: TcxGridDBColumn;
    grConsultaDBTableView1VALOR: TcxGridDBColumn;
    cxDateEdit1: TcxDateEdit;
    ibCadastro: TIBDataSet;
    ibCadastroPAR_ID: TIntegerField;
    ibCadastroPAR_PAGREC: TIntegerField;
    ibCadastroPAR_DESCRICAO: TIBStringField;
    ibCadastroPAR_CAT_ID: TIntegerField;
    ibCadastroPAR_CONTA_ID: TIntegerField;
    ibCadastroPAR_DATACOMPETENCIA: TDateField;
    ibCadastroPAR_DATAVENCTO: TDateField;
    ibCadastroPAR_VALOR: TIBBCDField;
    ibCadastroPAR_CLI_ID: TIntegerField;
    ibCadastroPAR_CETROCUSTO: TIBStringField;
    ibCadastroPAR_OBSERVACAO: TIBStringField;
    ibCadastroPAR_ANEXO: TMemoField;
    ibCadastroPAR_PAGO: TIBStringField;
    ibCadastroPAR_DATAPGTO: TDateField;
    ibCadastroPAR_DESCONTOTAXA: TIBBCDField;
    ibCadastroPAR_JUROMULTA: TIBBCDField;
    ibCadastroPAR_VALORPAGO: TIBBCDField;
    ibCadastroPAR_DH_CA: TDateTimeField;
    ibCadastroPAR_PARCELANUM: TIntegerField;
    ibCadastroPAR_PARCELAMAX: TIntegerField;
    ibCadastroPAR_PARCELAPAI: TIntegerField;
    ibCadastroPAR_NUMDOC: TIBStringField;
    ibCadastroPAR_BAIXADO: TIBStringField;
    ibCadastroPAR_CCO_ID: TIntegerField;
    ibCadastroPAR_TIPOBAIXA: TIBStringField;
    ibCadastroPAR_VENDACOMISSIONADA_ID: TIntegerField;
    ibCadastroPAR_VENDEDOR_ID: TIntegerField;
    dsCadastro: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qContaCombo: TIBQuery;
    dsContaCombo: TDataSource;
    qContaComboFOP_ID: TIntegerField;
    qContaComboFOP_TIPO: TIntegerField;
    qContaComboFOP_DESCRICAO: TIBStringField;
    qContaComboFOP_BANCO_ID: TIntegerField;
    qContaComboFOP_DH_CA: TDateTimeField;
    qContaComboFOP_FLAG: TIntegerField;
    Edit5: TEdit;
    Label5: TLabel;
    ibCadastro2: TIBDataSet;
    ibCadastro2MOV_ID: TIntegerField;
    ibCadastro2MOV_CLI_ID: TIntegerField;
    ibCadastro2MOV_CAT_ID: TIntegerField;
    ibCadastro2MOV_CCO_ID: TIntegerField;
    ibCadastro2MOV_PAR_ID: TIntegerField;
    ibCadastro2MOV_DATAMOV: TDateField;
    ibCadastro2MOV_MESANOREF: TIBStringField;
    ibCadastro2MOV_VALOR: TIBBCDField;
    ibCadastro2MOV_OBSERVACAO: TIBStringField;
    ibCadastro2MOV_NUMDOC: TIBStringField;
    ibCadastro2MOV_DH_CA: TDateTimeField;
    ibCadastro2MOV_TIPOBAIXA: TIBStringField;
    ibCadastro2MOV_DESCRICAO: TIBStringField;
    ibCadastro2MOV_ANO: TIntegerField;
    ibCadastro2MOV_BAN_ID_CC: TIntegerField;
    ibCadastro2MOV_BAN_ID_AP: TIntegerField;
    dsCadastro2: TDataSource;
    cdsItemDATA_VENCTO: TDateField;
    grConsultaDBTableView1DATA_VENCTO: TcxGridDBColumn;
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure edOcorrenciaChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    FValorParcelado: Extended;
    FValorEntrada: Extended;
    procedure setFValorEntrada(const Value: Extended);
    procedure setFValorParcelado(const Value: Extended);
    procedure Repetir(pDataVencto:TDate; pPeriodo, pQtdade: Integer);
  private
    { Private declarations }
    function validarcampos:Boolean;
    property ValorEntrada : Extended read FValorEntrada write setFValorEntrada;
    property ValorParcelado : Extended read FValorParcelado write setFValorParcelado;
  public
    { Public declarations }
    FVendaComissionadaId : Integer;
    FVendedorId : Integer;
    FClienteId : Integer;
    FValor : Extended;
    FNumDocumento : Integer;
    FObservacao : WideString;
    FCategoriaId : Integer;
    FData : Tdate;
    FOcorrencia : Integer;
    FParcela : Extended;
    FCancelar : Boolean;
  end;

var
  FPagamentosDiversos: TFPagamentosDiversos;

implementation

uses uClassAvisos, uFerramentas, uDMConexao;

{$R *.dfm}

procedure TFPagamentosDiversos.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in ['0'..'9',#8,#44]) then
    key := #0;
end;

procedure TFPagamentosDiversos.Repetir(pDataVencto:TDate; pPeriodo, pQtdade: Integer);
var vPeriodo : Integer;
    vData : TDate;
    i, j, iParcela, iParcelaMax : Integer;
begin
  try
    if not(pQtdade>=1) then
      Exit;
    iParcela := 1;
    iParcelaMax := pQtdade;
    if pDataVencto > 0 then
      vData := pDataVencto
    else
      vData := Now;
    vPeriodo := 1;
    case pPeriodo of
    {Diariamente    }  0 : vPeriodo := vPeriodo * 1;
    {Semanalmente   }  1 : vPeriodo := vPeriodo * 7;
    {Mensalmente    }  2 : vPeriodo := vPeriodo * 30;
    {Bimestralmente }  3 : vPeriodo := vPeriodo * 60;
    {Trimestralmente}  4 : vPeriodo := vPeriodo * 90;
    {Semestralmente }  5 : vPeriodo := vPeriodo * 180;
    {Anualmente     }  6 : vPeriodo := vPeriodo * 365;
    end;

    if FValorEntrada>0 then
      FParcela := FValorParcelado / FOcorrencia
    else
      FParcela := FValor / FOcorrencia;

      //inserir

      if (FValorEntrada>0) then
      begin
        Inc(iParcela);
        Inc(iParcelaMax);
        if not(cdsItem.State=dsInsert) then
          cdsItem.Append;

        cdsItemDESCRICAO.asString := 'ENTRADA '+'1/'+IntToStr(iParcelaMax);;
        cdsItemFORMAP.asString := DBLookupComboBox2.Text;
        cdsItemFORMAP_ID.asInteger := qContaFOP_ID.Value;
        cdsItemVALOR.asFloat := FValorEntrada;
        cdsItemDATA_VENCTO.AsDateTime := vData;
        cdsItem.Post;

      end;



    for i := iParcela to iParcelaMax do
    begin
      vData := IncDay(vData,vPeriodo);
      //inserir

      if not(cdsItem.State=dsInsert) then
        cdsItem.Append;

      cdsItemDESCRICAO.asString := 'PARCELA '+IntToStr(i)+'/'+IntToStr(iParcelaMax);
      cdsItemFORMAP.asString := DBLookupComboBox2.Text;
      cdsItemFORMAP_ID.asInteger := qContaFOP_ID.Value;
      cdsItemVALOR.asFloat := FParcela;
      cdsItemDATA_VENCTO.AsDateTime := vData;
      cdsItem.Post;
    end;
  except
    on e : Exception do
    begin
      Aviso('Erro ao Repetir parcelas. '+e.Message);
      Abort;
    end;
  end;
end;

procedure TFPagamentosDiversos.BitBtn4Click(Sender: TObject);

begin
  inherited;
  if not(validarcampos) then
    Exit;
  cdsItem.EmptyDataSet;
  Repetir(cxDateEdit1.Date,cbMensalmente.ItemIndex,StrToIntDef(edOcorrencia.Text,1));
end;

function TFPagamentosDiversos.validarcampos: Boolean;
var sMsg : String;
    vContinua : Boolean;
begin
  sMsg := '';
  if ((Edit3.Text='') or (StrToFloatDef(Edit3.Text,0)=0)) then
    sMsg := '- Valor.'+#13;

  if (Edit5.Text='') then
    sMsg := '- Descrição.'+#13;

  //if ((Edit1.Text='') or (StrToIntDef(Edit1.Text,0)=0)) then
  // sMsg := '- Valor Entrada.'+#13;

  //if ((Edit4.Text='') or (StrToIntDef(Edit4.Text,0)=0)) then
  //  sMsg := '- Valor Parcelado.'+#13;

  Result := (sMsg='');

  if not(Result) then
  begin
    sMsg := 'Informe os dados: '+#13+sMsg;
    Aviso(sMsg);
  end;
end;

procedure TFPagamentosDiversos.FormShow(Sender: TObject);
begin
  inherited;
  FOcorrencia := 1;
  cxDateEdit1.Date := FData;
  Edit2.Text := IntToStr(FNumDocumento);
  Edit3.Text := FormatFloat('0.00',FValor);
  cdsItem.Close;
  cdsItem.CreateDataSet;
  cdsItem.Open;
  qConta.Close;
  qConta.Open;
  qConta.Last;
  qConta.First;

  qContaCombo.Close;
  qContaCombo.Open;
  qContaCombo.Last;
  qContaCombo.First;
end;

procedure TFPagamentosDiversos.setFValorEntrada(const Value: Extended);
var vValor : Extended;
begin
  FValorEntrada := Value;
  if FValorEntrada<=0 then
  begin
    Edit4.Text := '';
  end
  else
  begin
    vValor := (FValor-FValorEntrada);
    if (vValor>=0) then
      ValorParcelado := vValor
    else
      Edit4.Text := '';
  end;
end;

procedure TFPagamentosDiversos.setFValorParcelado(const Value: Extended);
begin
  FValorParcelado := Value;
  Edit4.Text := FormatFloat('0.00',FValorParcelado);
end;

procedure TFPagamentosDiversos.Edit1Change(Sender: TObject);
begin
  inherited;
  ValorEntrada := StrToFloatDef(Edit1.text,0);
end;

procedure TFPagamentosDiversos.edOcorrenciaChange(Sender: TObject);
begin
  inherited;
  if StrToIntDef(edOcorrencia.Text,1)=0 then
    FOcorrencia := 1
  else
    FOcorrencia := StrToIntDef(edOcorrencia.Text,1);
end;

procedure TFPagamentosDiversos.BitBtn2Click(Sender: TObject);
var iGen, iCount, iCountMax : Integer;
begin
  inherited;
  try
    cdsItem.First;
    iCount := 0;
    iCountMax := cdsItem.RecordCount;

    ibCadastro.Close;
    ibCadastro.Open;

    ibCadastro2.Close;
    ibCadastro2.Open;

    while not cdsItem.Eof do
    begin
      Inc(iCount);
      iGen := DMConexao.GetGenId('PAGARRECEBER');

      //------------------------------------------
      if not(ibCadastro.State=dsInsert) then
        ibCadastro.Insert;

      //if iCount=1 then
        ibCadastroPAR_ID.asInteger                    := iGen;
      //else
      //  ibCadastroPAR_ID.Clear;//automatico

      ibCadastroPAR_PAGREC.asInteger                  := 1;
      ibCadastroPAR_DESCRICAO.asString                := Edit5.Text + ' ' + cdsItemDESCRICAO.asString;
      ibCadastroPAR_CAT_ID.asInteger                  := 3;
      ibCadastroPAR_CONTA_ID.asInteger                := cdsItemFORMAP_ID.asInteger;
      ibCadastroPAR_DATACOMPETENCIA.AsDateTime        := Now;
      ibCadastroPAR_DATAVENCTO.AsDateTime             := cdsItemDATA_VENCTO.AsDateTime;
      ibCadastroPAR_VALOR.asFloat                     := cdsItemVALOR.asFloat;
      ibCadastroPAR_CLI_ID.asInteger                  := FClienteId;
      //ibCadastroPAR_CETROCUSTO.asString               :=
      ibCadastroPAR_OBSERVACAO.asString               := FObservacao;
      //ibCadastroPAR_ANEXO.asString                  :=
      //ibCadastroPAR_PAGO.asString                   :=
      //ibCadastroPAR_DATAPGTO.asDate                 :=
      //ibCadastroPAR_DESCONTOTAXA.asFloat            :=
      //ibCadastroPAR_JUROMULTA.asFloat               :=
      //ibCadastroPAR_VALORPAGO.asFloat               :=
      //ibCadastroPAR_DH_CA.asDateTime                :=
      ibCadastroPAR_PARCELANUM.asInteger              := iCount;
      ibCadastroPAR_PARCELAMAX.asInteger              := iCountMax;
      ibCadastroPAR_PARCELAPAI.asInteger              := iGen;
      ibCadastroPAR_NUMDOC.asString                   := IntToStr(FNumDocumento);
      if ((FValorEntrada>0) and (iCount=1)) then
        ibCadastroPAR_BAIXADO.asString                  := 'S'
      else
        ibCadastroPAR_BAIXADO.asString                  := 'N';
      //ibCadastroPAR_CCO_ID.asInteger                  :=
      //ibCadastroPAR_TIPOBAIXA.asString                :=
      ibCadastroPAR_VENDACOMISSIONADA_ID.asInteger    := FVendaComissionadaId;
      ibCadastroPAR_VENDEDOR_ID.asInteger             := FVendedorId;

      ibCadastro.Post;
      //------------------------------------------

      if ((FValorEntrada>0) and (iCount=1)) then
      begin

        if not(ibCadastro2.State=dsInsert) then
          ibCadastro2.Insert;

        //ibCadastro2MOV_ID.asInteger        :=
        ibCadastro2MOV_CLI_ID.asInteger    := FClienteId;
        ibCadastro2MOV_CAT_ID.asInteger    := 3;
        //ibCadastro2MOV_CCO_ID.asInteger    :=
        ibCadastro2MOV_PAR_ID.asInteger    := iGen;
        ibCadastro2MOV_DATAMOV.asDateTime  := Now;
        ibCadastro2MOV_MESANOREF.asString  := copy(DateToStr(Now),4,2)+'/'+copy(DateToStr(Now),7,10);
        ibCadastro2MOV_VALOR.asFloat       := cdsItemVALOR.asFloat;
        ibCadastro2MOV_OBSERVACAO.asString := FObservacao;
        ibCadastro2MOV_NUMDOC.asString     := IntToStr(FNumDocumento);
        //ibCadastro2MOV_DH_CA.asDateTime    :=
        ibCadastro2MOV_TIPOBAIXA.asString  := 'T';
        ibCadastro2MOV_DESCRICAO.asString  := Edit5.Text + ' ' + cdsItemDESCRICAO.asString;
        ibCadastro2MOV_ANO.asInteger       := YearOf(Now);
        //ibCadastro2MOV_BAN_ID_CC.asInteger :=
        //ibCadastro2MOV_BAN_ID_AP.asInteger :=

        ibCadastro2.Post;

      end;
      cdsItem.Next;

    end;
    DMConexao.IBTransacao.CommitRetaining;
    Close;
  except
    on e : Exception do
    begin
      DMConexao.IBTransacao.RollbackRetaining;
      Aviso('Erro. '+e.Message);
    end;
  end;

end;

procedure TFPagamentosDiversos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FCancelar := True;
  Close;
end;

procedure TFPagamentosDiversos.BitBtn3Click(Sender: TObject);
begin
  inherited;
  cdsItem.EmptyDataSet;
end;

end.
