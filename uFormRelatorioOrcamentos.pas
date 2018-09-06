unit uFormRelatorioOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, ActnList, ImgList, Grids, DBGrids, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Menus, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TFormRelatorioOrcamentos = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ImageList2: TImageList;
    ActionList2: TActionList;
    bt_Visualizar: TAction;
    bt_Fechar: TAction;
    bt_Gerar: TAction;
    ApplicationEvents1: TApplicationEvents;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    procedure bt_GerarExecute(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_VisualizarExecute(Sender: TObject);
    procedure bt_FecharExecute(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DataInicialDataFinal();    
  end;

var
  FormRelatorioOrcamentos: TFormRelatorioOrcamentos;

implementation

uses uDMRelatorioOrcamento, uFormRelatorioOrcamentosPrint, DateUtils,
  uFormRelatorioOrcamentos_Revisao;

{$R *.dfm}

procedure TFormRelatorioOrcamentos.bt_GerarExecute(Sender: TObject);
var
    strSQL_relOrc : string;
    soma : Double;
begin
  strSQL_relOrc := 'SELECT '+
                   '    ORC_ID, '+
                   '    PED_ID, '+
                   '    CLI_NOME, '+
                   '    ORC_TIPO, '+
                   '    STATUS, '+
                   '    DATA_PED, '+
                   '    DATA_ORC, '+
                   '    DATA_REVISAO, '+
                   '    ORC_VALOR ';
  if RadioButton1.Checked = true then
  begin
    strSQL_relOrc := strSQL_relOrc + 'FROM VIEW_REL_ORCAMENTO_FECHADO ';
    strSQL_relOrc := strSQL_relOrc + 'WHERE DATA_PED BETWEEN :DATADE AND :DATAATE ';
  end;
  if RadioButton2.Checked = true then
  begin
    strSQL_relOrc := strSQL_relOrc + 'FROM VIEW_REL_ORCAMENTO_ABERTO ';
    strSQL_relOrc := strSQL_relOrc + 'WHERE DATA_PED BETWEEN :DATADE AND :DATAATE ';
  end;

  DMRelatorioOrcamento.cdsViewRelatorioOrcamento.Close;
  with DMRelatorioOrcamento.qryViewRelatorioOrcamento do
  begin
    SQL.Clear;
    SQL.Add(strSQL_relOrc);
    //if RadioButton1.Checked = true then
    //begin
      ParamByName('DATADE').AsDate := DateTimePicker1.Date;
      ParamByName('DATAATE').AsDate := DateTimePicker2.Date;
    //end;
  end;
  DMRelatorioOrcamento.cdsViewRelatorioOrcamento.Open;

  soma := 0;
  while not DMRelatorioOrcamento.cdsViewRelatorioOrcamento.Eof do
  begin
    soma := soma + DMRelatorioOrcamento.cdsViewRelatorioOrcamentoORC_VALOR.AsFloat;
    DMRelatorioOrcamento.cdsViewRelatorioOrcamento.Next;
  end;
  Label10.Caption := FloatToStr(soma);
  DMRelatorioOrcamento.cdsViewRelatorioOrcamento.First;
end;



procedure TFormRelatorioOrcamentos.DataInicialDataFinal;
var
    dia,mes,ano,dia1,mes1,ano1: string;
    date1,date2: Tdatetime;
begin
  dia:= formatdatetime('1',date);
  mes:= formatdatetime('mm',date);
  ano:= formatdatetime('yyyy',date);
  dia1:= formatdatetime('dd',date);
  mes1:= formatdatetime('mm',date);
  ano1:= formatdatetime('yyyy',date);

  date1:= strtodate(dia+'/'+mes+'/'+ano);
  date2:= strtodate(dia1+'/'+mes1+'/'+ano1);

  DateTimePicker1.Date:= date1;
  DateTimePicker2.Date:= date2;
end;

procedure TFormRelatorioOrcamentos.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker1.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFormRelatorioOrcamentos.DateTimePicker2Change(Sender: TObject);
begin
  if DateTimePicker2.DroppedDown = false then
  keybd_event(39,0,0,0);
end;

procedure TFormRelatorioOrcamentos.FormShow(Sender: TObject);
begin
  RadioButton1.Checked := true;
  DataInicialDataFinal();
  bt_Gerar.Execute;
end;

procedure TFormRelatorioOrcamentos.bt_VisualizarExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormRelatorioOrcamentoPrint, FormRelatorioOrcamentoPrint);
    FormRelatorioOrcamentoPrint.RLReport1.Preview;
  Finally
    FormRelatorioOrcamentoPrint.Free
  end;
end;

procedure TFormRelatorioOrcamentos.bt_FecharExecute(Sender: TObject);
begin
Self.Close;
end;

procedure TFormRelatorioOrcamentos.RadioButton2Click(Sender: TObject);
begin
  bt_Gerar.Execute;
end;

procedure TFormRelatorioOrcamentos.RadioButton1Click(Sender: TObject);
begin
  bt_Gerar.Execute;
end;

procedure TFormRelatorioOrcamentos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (GdSelected in State) then
  begin
    Dbgrid1.Canvas.Brush.Color := clInactiveCaptionText;
    DBGrid1.Canvas.Font.Color  := clBlack;
  end;


    if (DMRelatorioOrcamento.cdsViewRelatorioOrcamentoDATA_REVISAO.AsVariant <> null) and
       (DMRelatorioOrcamento.cdsViewRelatorioOrcamentoDATA_REVISAO.AsDateTime < Date) then
    DBGrid1.Canvas.Font.Color  := clRed;


  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

end.
