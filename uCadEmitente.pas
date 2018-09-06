unit uCadEmitente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ActnList, ImgList, Buttons, ComCtrls;

type
  TFormCadEmitente = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Gravar: TAction;
    Act_Btn_Inserir: TAction;
    Act_Btn_Alterar: TAction;
    Act_Btn_Excluir: TAction;
    Act_Btn_Imprimir: TAction;
    Act_Btn_Sair: TAction;
    Act_Btn_Novo: TAction;
    Act_Btn_Cancelar: TAction;
    Act_Btn_Localizar: TAction;
    Btn_Salvar: TAction;
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Btn_SalvarExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadEmitente: TFormCadEmitente;

implementation

uses uDMEmitente;

{$R *.dfm}

procedure TFormCadEmitente.Btn_SalvarExecute(Sender: TObject);
begin
//
//DMEmitente.cdsDadosEmitenteEMIT_ID.AsInteger := 0;
DMEmitente.cdsDadosEmitente.ApplyUpdates(-1);

MessageBox(Application.Handle,' Registro gravado. ', 'Informação', MB_ICONINFORMATION + MB_OK);

DMEmitente.cdsDadosEmitente.Close;
DMEmitente.qryDadosEmitente.ParamByName('ID').AsInteger := 1;
DMEmitente.cdsDadosEmitente.Open;

DMEmitente.cdsDadosEmitente.Edit;
end;

procedure TFormCadEmitente.Act_Btn_SairExecute(Sender: TObject);
begin
DMEmitente.cdsDadosEmitente.Close;
Self.Close;
end;

procedure TFormCadEmitente.FormShow(Sender: TObject);
begin
  DMEmitente.cdsDadosEmitente.Close;
  DMEmitente.qryDadosEmitente.ParamByName('ID').AsInteger := 1;
  DMEmitente.cdsDadosEmitente.Open;
  if DMEmitente.cdsDadosEmitente.RecordCount = 1 then
  begin
    DMEmitente.cdsDadosEmitente.Edit;
  end
  else
  begin
    DMEmitente.cdsDadosEmitente.Insert;
    DMEmitente.cdsDadosEmitenteEMIT_ID.AsInteger := 0;
  end;
end;

end.
