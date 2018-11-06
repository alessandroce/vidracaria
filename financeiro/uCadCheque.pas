unit uCadCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, frxClass, frxIBXComponents,
  ActnList, ImgList, IBQuery, IBCustomDataSet, ExtCtrls, ComCtrls,
  StdCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, Mask, DBCtrls, wwdbdatetimepicker, frxDBSet;

type
  TFCadCheque = class(TFCadPadrao)
    ibCadastroCHQ_ID: TIntegerField;
    ibCadastroCHQ_DATA: TDateField;
    ibCadastroCHQ_CMC7: TIBStringField;
    ibCadastroCHQ_COMP: TIBStringField;
    ibCadastroCHQ_SERIE: TIBStringField;
    ibCadastroCHQ_BANCO: TIBStringField;
    ibCadastroCHQ_CONTA: TIBStringField;
    ibCadastroCHQ_AGENCIA: TIBStringField;
    ibCadastroCHQ_NUMERO: TIBStringField;
    ibCadastroCHQ_DATA_DEPOSITO: TDateField;
    ibCadastroCHQ_DATA_VENCIMENTO: TDateField;
    ibCadastroCHQ_EMISSOR_ID: TIntegerField;
    ibCadastroCHQ_EMISSOR: TIBStringField;
    ibCadastroCHQ_CLIENTE_ID: TIntegerField;
    ibCadastroCHQ_HISTORICO: TIBStringField;
    ibCadastroCHQ_VALOR: TIBBCDField;
    ibCadastroCHQ_SITUACAO: TIntegerField;
    ibCadastroCHQ_DATACORRENTISTA: TDateField;
    ibCadastroCHQ_DH_CA: TDateTimeField;
    qConsultaID: TIntegerField;
    qConsultaCHQ_ID: TIntegerField;
    qConsultaCHQ_DATA: TDateField;
    qConsultaCHQ_CMC7: TIBStringField;
    qConsultaCHQ_COMP: TIBStringField;
    qConsultaCHQ_SERIE: TIBStringField;
    qConsultaCHQ_BANCO: TIBStringField;
    qConsultaCHQ_CONTA: TIBStringField;
    qConsultaCHQ_AGENCIA: TIBStringField;
    qConsultaCHQ_NUMERO: TIBStringField;
    qConsultaCHQ_DATA_DEPOSITO: TDateField;
    qConsultaCHQ_DATA_VENCIMENTO: TDateField;
    qConsultaCHQ_EMISSOR_ID: TIntegerField;
    qConsultaCHQ_EMISSOR: TIBStringField;
    qConsultaCHQ_CLIENTE_ID: TIntegerField;
    qConsultaCHQ_HISTORICO: TIBStringField;
    qConsultaCHQ_VALOR: TIBBCDField;
    qConsultaCHQ_SITUACAO: TIntegerField;
    qConsultaCHQ_DATACORRENTISTA: TDateField;
    qConsultaCHQ_DH_CA: TDateTimeField;
    qConsultaCLI_CLIENTE: TIBStringField;
    qConsultaCHQ_EMISSOR1: TIBStringField;
    qConsultaCLI_CLIENTE1: TIBStringField;
    grConsultaDBTableView1CHQ_ID: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_DATA: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_CMC7: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_COMP: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_SERIE: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_BANCO: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_CONTA: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_AGENCIA: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_NUMERO: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_DATA_DEPOSITO: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_DATA_VENCIMENTO: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_EMISSOR: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_HISTORICO: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_VALOR: TcxGridDBColumn;
    grConsultaDBTableView1CHQ_DATACORRENTISTA: TcxGridDBColumn;
    grConsultaDBTableView1CLI_CLIENTE: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    ComboBox1: TComboBox;
    Label10: TLabel;
    ibCadastroCHQ_PAR_ID: TIntegerField;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    Label13: TLabel;
    btCACliente: TBitBtn;
    Edit2: TEdit;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    frxCheques: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure btCAClienteClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Act_Btn_ImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCheque: TFCadCheque;

implementation

uses uSelecionarCliente, uFerramentas;

{$R *.dfm}

procedure TFCadCheque.FormShow(Sender: TObject);
begin
  inherited;
  qConsulta.Open;
end;

procedure TFCadCheque.btCAClienteClick(Sender: TObject);
begin
  inherited;
  FSelecionarCli := TFSelecionarCli.Create(nil);
  FSelecionarCli.FTipoCli := 1;
  FSelecionarCli.ShowModal;
  if FSelecionarCli.FId>0 then
  begin
    ibCadastroCHQ_CLIENTE_ID.Value := FSelecionarCli.FCodigo;
    Edit2.Text := FSelecionarCli.FDescricao;
  end;
  FSelecionarCli.Free;
end;

procedure TFCadCheque.ComboBox1Change(Sender: TObject);
begin
  inherited;
  //ShowMessage(ComboBox1.Text);

end;

procedure TFCadCheque.Act_Btn_ImprimirExecute(Sender: TObject);
begin
  inherited;
  sRelatorio := 'CAD004_CAD_CHEQUE';
  if ImprimirModoDesign then
  begin
    if ChamaRelatorioDesign(frxReport1,'SISTEMA',sRelatorio) then
      ImprimirAlterarRelatorio(0,sRelatorio,pnBarraForm.Caption);
  end
  else
    ChamaRelatorio(frxReport1,sRelatorio);
end;

end.
