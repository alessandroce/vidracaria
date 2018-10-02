unit uCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormPadraoCad2, Grids, DBGrids, Mask, DBCtrls, StdCtrls,
  ActnList, ImgList, ToolWin, ComCtrls, Buttons, ExtCtrls, DB, Menus,
  AppEvnts, FMTBcd, DBClient, MyClientDataSet, Provider, SqlExpr, ExtDlgs;

type
  TFormCadProduto = class(TFormPadraoCad2)
    Label5: TLabel;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBCheckBox1: TDBCheckBox;
    PopupMenu1: TPopupMenu;
    bt_Alterar: TAction;
    bt_Excluir: TAction;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    ApplicationEvents1: TApplicationEvents;
    ComboBox1: TComboBox;
    cdsCadastroPROD_ID: TIntegerField;
    cdsCadastroPROD_PRODTP_ID: TIntegerField;
    cdsCadastroPROD_DESCRICAO: TStringField;
    cdsCadastroPROD_ATIVO: TStringField;
    cdsCadastroPROD_VALOR: TFMTBCDField;
    cdsCadastroPROD_UNIDMEDIDA: TStringField;
    cdsConsultaPROD_ID: TIntegerField;
    cdsConsultaPROD_PRODTP_ID: TIntegerField;
    cdsConsultaPROD_DESCRICAO: TStringField;
    cdsConsultaPROD_ATIVO: TStringField;
    cdsConsultaPROD_VALOR: TFMTBCDField;
    cdsConsultaPROD_UNIDMEDIDA: TStringField;
    cdsCadastroPROD_ESPESSURA: TFMTBCDField;
    cdsCadastroPROD_LARGURA: TFMTBCDField;
    cdsCadastroPROD_ALTURA: TFMTBCDField;
    cdsCadastroPROD_MEDIDA_METRO: TFMTBCDField;
    lblEspessura: TLabel;
    edEspessura: TDBEdit;
    lblAltura: TLabel;
    edAltura: TDBEdit;
    edLargura: TDBEdit;
    lblLargura: TLabel;
    lblMedida: TLabel;
    edMedida: TDBEdit;
    cdsConsultaPROD_ESPESSURA: TFMTBCDField;
    cdsConsultaPROD_LARGURA: TFMTBCDField;
    cdsConsultaPROD_ALTURA: TFMTBCDField;
    cdsConsultaPROD_MEDIDA_METRO: TFMTBCDField;
    qryConsultaPROD_ID: TIntegerField;
    qryConsultaPROD_PRODTP_ID: TIntegerField;
    qryConsultaPROD_DESCRICAO: TStringField;
    qryConsultaPROD_ATIVO: TStringField;
    qryConsultaPROD_VALOR: TFMTBCDField;
    qryConsultaPROD_UNIDMEDIDA: TStringField;
    qryConsultaPROD_ESPESSURA: TFMTBCDField;
    qryConsultaPROD_LARGURA: TFMTBCDField;
    qryConsultaPROD_ALTURA: TFMTBCDField;
    qryConsultaPROD_MEDIDA_METRO: TFMTBCDField;
    qryCadastroPROD_ID: TIntegerField;
    qryCadastroPROD_PRODTP_ID: TIntegerField;
    qryCadastroPROD_DESCRICAO: TStringField;
    qryCadastroPROD_ATIVO: TStringField;
    qryCadastroPROD_VALOR: TFMTBCDField;
    qryCadastroPROD_UNIDMEDIDA: TStringField;
    qryCadastroPROD_ESPESSURA: TFMTBCDField;
    qryCadastroPROD_LARGURA: TFMTBCDField;
    qryCadastroPROD_ALTURA: TFMTBCDField;
    qryCadastroPROD_MEDIDA_METRO: TFMTBCDField;
    qryCadastroPROD_SIGLA: TStringField;
    qryCadastroPROD_DESCRICAO_LONGA: TStringField;
    qryCadastroPROD_CAMINHOIMAGEM: TStringField;
    cdsCadastroPROD_SIGLA: TStringField;
    cdsCadastroPROD_DESCRICAO_LONGA: TStringField;
    cdsCadastroPROD_CAMINHOIMAGEM: TStringField;
    qryConsultaPROD_SIGLA: TStringField;
    qryConsultaPROD_DESCRICAO_LONGA: TStringField;
    qryConsultaPROD_CAMINHOIMAGEM: TStringField;
    cdsConsultaPROD_SIGLA: TStringField;
    cdsConsultaPROD_DESCRICAO_LONGA: TStringField;
    cdsConsultaPROD_CAMINHOIMAGEM: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    qryCadastroPROD_PRL_ID: TIntegerField;
    cdsCadastroPROD_PRL_ID: TIntegerField;
    qryConsultaPROD_PRL_ID: TIntegerField;
    cdsConsultaPROD_PRL_ID: TIntegerField;
    qryConsultaPRODTP_DESCRICAO: TStringField;
    qryConsultaPRL_DESCRICAO: TStringField;
    cdsConsultaPRODTP_DESCRICAO: TStringField;
    cdsConsultaPRL_DESCRICAO: TStringField;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    shFoto: TShape;
    imgFoto: TImage;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_GravarExecute(Sender: TObject);
    procedure Act_Btn_InserirExecute(Sender: TObject);
    procedure Act_Btn_ExcluirExecute(Sender: TObject);
    procedure Act_Btn_SairExecute(Sender: TObject);
    procedure Act_Btn_NovoExecute(Sender: TObject);
    procedure Act_Btn_CancelarExecute(Sender: TObject);
    procedure Act_Btn_LocalizarExecute(Sender: TObject);
    procedure bt_AlterarExecute(Sender: TObject);
    procedure bt_ExcluirExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Act_Btn_AlterarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
  private
    { Private declarations }
    FotoSelecionada : String;
  public
    { Public declarations }
    procedure Fnc_BarraTarefasBotaoAtivo(botao:string);
    procedure Fnc_LocalizarPorNome_Produto();
    procedure Fnc_AtualizaGrid();
    procedure Fnc_CancelaOperacao();
    procedure Fnc_MostraDadosGrid();
    procedure Fnc_FechaDataSource();
  end;

var
  FormCadProduto: TFormCadProduto;

implementation

uses uDMProduto, uBibliotecaFuncoes;

{$R *.dfm}

{ TFormCadProduto }

procedure TFormCadProduto.Fnc_AtualizaGrid;
begin
  cdsConsulta.Close;
  qryConsulta.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  cdsConsulta.Open;
end;

procedure TFormCadProduto.Fnc_BarraTarefasBotaoAtivo(botao: string);
begin
  if botao = 'Novo' then
  begin
    BtnInserir.Enabled := true;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := false;
    BtnCancela.Enabled := false;
    Btn_Localizar.Enabled := true;
    Edit1.ReadOnly        := not(true);
  end;
  //qdo clicar em novo/modificar
  if botao = 'GravarCancelar' then
  begin
    BtnInserir.Enabled := false;
    BtnEditar.Enabled  := false;
    BtnExcluir.Enabled := false;
    BtnGravar.Enabled  := true;
    BtnCancela.Enabled := true;
    Btn_Localizar.Enabled := false;
    Edit1.ReadOnly        := not(false);
  end;
  // qdo clicar em excluir/gravar/cancelar
  if botao = 'NovoModificarExcluir' then
  begin
    BtnInserir.enabled := true;
    BtnEditar.enabled  := true;
    BtnExcluir.enabled := true;
    BtnGravar.Enabled  := false;
    BtnCancela.enabled := false;
    Btn_Localizar.Enabled := true;
    Edit1.ReadOnly        := not(true);
  end;

end;

procedure TFormCadProduto.Fnc_CancelaOperacao;
begin
    cdsCadastro.Close;
end;

procedure TFormCadProduto.Fnc_FechaDataSource;
begin
  DMProduto.cdsViewProduto.Close;
  DMProduto.cdsDadosProduto.Close;
  DMProduto.cdsViewLookup_LinhaProduto.Close;
end;

procedure TFormCadProduto.Fnc_LocalizarPorNome_Produto;
begin
  Fnc_MostraDadosGrid;
end;

procedure TFormCadProduto.Fnc_MostraDadosGrid;
begin
  cdsConsulta.Close;
  qryConsulta.ParamByName('NOME').AsString := '%'+Edit1.Text+'%';
  cdsConsulta.Open;
  Label4.Caption := IntToStr(cdsConsulta.RecordCount)+' registro(s)';
end;

procedure TFormCadProduto.Edit1Change(Sender: TObject);
begin
  inherited;
  Fnc_LocalizarPorNome_Produto();
end;

procedure TFormCadProduto.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  DBGrid1.SetFocus;
end;

procedure TFormCadProduto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
    BtnEditar.Click;
end;

procedure TFormCadProduto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If cdsConsultaPROD_ATIVO.AsBoolean = false then
    DBGrid1.Canvas.Font.Color:= clMedGray;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFormCadProduto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  BtnEditar.Click;
end;

procedure TFormCadProduto.Act_Btn_GravarExecute(Sender: TObject);
var var_combo:string;
begin
  inherited;
  case ComboBox1.ItemIndex of
    0: var_combo := 'M2';
    1: var_combo := 'MC';
    2: var_combo := 'ML'
  end;
  cdsCadastroPROD_PRODTP_ID.AsInteger := DBLookupComboBox1.KeyValue;
  cdsCadastroPROD_UNIDMEDIDA.AsString := var_combo;

  if (trim(FotoSelecionada)<>'') then
    cdsCadastroPROD_CAMINHOIMAGEM.AsString := trim(FotoSelecionada);



  cdsCadastro.ApplyUpdates(-1);
  cdsCadastro.Close;
  Edit1.SetFocus;
  Fnc_AtualizaGrid();
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadProduto.Act_Btn_InserirExecute(Sender: TObject);
begin
  inherited;
      Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
end;

procedure TFormCadProduto.Act_Btn_ExcluirExecute(Sender: TObject);
begin
//  inherited;
  if MessageBox(Application.Handle,PAnsiChar('Deseja Excluir este item?'+#13+DMProduto.cdsViewProduto.FindField('PROD_DESCRICAO').AsString),'Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    cdsCadastro.Close;
    qryCadastro.ParamByName('ID').AsInteger := cdsConsulta.FindField('PROD_ID').AsInteger;
    cdsCadastro.Open;
    cdsCadastro.Delete;
    cdsCadastro.ApplyUpdates(-1);
  end;
  cdsCadastro.Close;
  Fnc_AtualizaGrid;
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadProduto.Act_Btn_SairExecute(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFormCadProduto.Act_Btn_NovoExecute(Sender: TObject);
begin
//  inherited;
  cdsCadastro.Close;
  qryCadastro.ParamByName('ID').AsInteger := 0;
  cdsCadastro.Open;
  cdsCadastro.Insert;
  cdsCadastroPROD_ID.AsInteger := HandleCadastro;
  cdsCadastroPROD_ATIVO.AsBoolean := true;
  DBLookupComboBox1.SetFocus;

  Fnc_MostraDadosGrid;
  DMProduto.cdsViewLookup_TipoProduto.Close;
  DMProduto.cdsViewLookup_TipoProduto.Open;

  DMProduto.cdsViewLookup_LinhaProduto.Close;
  DMProduto.cdsViewLookup_LinhaProduto.Open;

  Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  GroupBox1.Caption := '  '+Act_Btn_Novo.Hint+'  ';
end;

procedure TFormCadProduto.Act_Btn_CancelarExecute(Sender: TObject);
begin
  inherited;
  if (cdsCadastro.State in [DsInsert,DsEdit,dsBrowse]) then
    if Fnc_MsgSalvar(DBLookupComboBox1.Text,DBEdit1.Text,'','')= 'salvar' then
     if MessageBox(Application.Handle,'Deseja salvar as alterações?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
       Act_Btn_Gravar.Execute;
  Fnc_CancelaOperacao();
  Edit1.SetFocus;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  GroupBox1.Caption := '';
end;

procedure TFormCadProduto.Act_Btn_LocalizarExecute(Sender: TObject);
begin
  inherited;
      Fnc_LocalizarPorNome_Produto();
end;

procedure TFormCadProduto.bt_AlterarExecute(Sender: TObject);
begin
  inherited;
  Act_Btn_Alterar.Execute;
end;

procedure TFormCadProduto.bt_ExcluirExecute(Sender: TObject);
begin
  inherited;
  Act_Btn_Excluir.Execute;
end;

procedure TFormCadProduto.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
    var i: SmallInt;
begin
  inherited;
  if (ActiveControl is TDBGrid) then
  begin
    with TDBGrid(ActiveControl) do
    begin
      if Msg.message = WM_MOUSEWHEEL then
      begin
        Msg.message := WM_KEYDOWN;
        Msg.lParam := 0;
        i := HiWord(Msg.wParam);
        if i > 0 then
          Msg.wParam := VK_UP
        else
          Msg.wParam := VK_DOWN;
        Handled := False;
      end;
    end;
  end;
end;

procedure TFormCadProduto.FormShow(Sender: TObject);
begin
  HandleCadastro := 0;
  Act_Btn_Novo.Execute;
  Fnc_AtualizaGrid();
end;

procedure TFormCadProduto.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  DBEdit1.SetFocus;

end;

procedure TFormCadProduto.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if key = #13 then
  DBEdit2.SetFocus;
end;

procedure TFormCadProduto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
  Act_Btn_Gravar.Execute;
  Act_Btn_Novo.Execute;
  Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
  end;
end;




procedure TFormCadProduto.Act_Btn_AlterarExecute(Sender: TObject);
var vUnidade : String;
begin
//  inherited;
  if not (cdsConsulta.RecordCount>0) then
  begin
    MessageBox(Application.Handle,' É necessário selecionar um registro! ', 'Informação', MB_ICONINFORMATION + MB_OK);
    Exit;
  end;
  vUnidade := cdsConsultaPROD_UNIDMEDIDA.AsString;
  if vUnidade='M2' then
    ComboBox1.ItemIndex := 0
  else
  if vUnidade='MC' then
    ComboBox1.ItemIndex := 1
  else
  if vUnidade='ML' then
    ComboBox1.ItemIndex := 2;
  HandleCadastro := cdsConsulta.FindField('PROD_ID').AsInteger;
  cdsCadastro.Close;
  qryCadastro.ParamByName('ID').AsInteger := HandleCadastro;
  cdsCadastro.Open;
  cdsCadastro.Edit;
  if cdsCadastroPROD_ATIVO.AsBoolean = false then
  begin
    if MessageBox(Application.Handle, ' É necessário ativar este registro. Deseja ativá-lo agora? ','Confirmar exclusão', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      cdsCadastroPROD_ATIVO.AsBoolean := true;
      Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
    end
    else
    begin
      Act_Btn_Cancelar.Execute;
      Fnc_BarraTarefasBotaoAtivo('NovoModificarExcluir');
    end;
  end
  else
  begin
    cdsCadastroPROD_ATIVO.AsBoolean := true;
    Fnc_BarraTarefasBotaoAtivo('GravarCancelar');
  end;
  GroupBox1.Caption := '  '+Act_Btn_Alterar.Hint+'  ';
end;

procedure TFormCadProduto.BitBtn1Click(Sender: TObject);
var sDir : String;
begin
  inherited;
  sDir := '';//LerIni('IMAGEM','FOTOCADASTRO',sCaminhoIni,'S');
  if sDir<>'' then
    OpenPictureDialog1.InitialDir := sDir;
  if OpenPictureDialog1.Execute then
  begin
    try
         FotoSelecionada := trim(OpenPictureDialog1.FileName);
         imgFoto.Picture.LoadFromFile( FotoSelecionada );
    except
      on e : Exception do
      begin
        MessageBox(Application.Handle,PAnsiChar('Erro '+e.Message), 'Informação', MB_ICONINFORMATION + MB_OK);
      end;
    end;
  end;
end;

procedure TFormCadProduto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  FotoSelecionada := '';
  imgFoto.Picture := Nil;
  TBlobField(cdsCadastro.FieldByName('PROD_CAMINHOIMAGEM')).Clear;
end;

procedure TFormCadProduto.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  if (trim(cdsCadastroPROD_CAMINHOIMAGEM.AsString)<>'') then
  begin
    if FileExists(cdsCadastroPROD_CAMINHOIMAGEM.AsString) then
      imgFoto.Picture.LoadFromFile( trim(cdsCadastroPROD_CAMINHOIMAGEM.AsString) )
    else
      imgFoto.Picture := nil;
  end
  else
    imgFoto.Picture := nil;
end;

end.
