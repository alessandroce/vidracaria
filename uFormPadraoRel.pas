unit uFormPadraoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ActnList, ImgList, ExtCtrls;

type
  TFormPadraoRel = class(TForm)
    Label4: TLabel;
    btLocalizar: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Btn_Imprimir: TAction;
    Act_Btn_Fechar: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    act_Btn_Localizar: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPadraoRel: TFormPadraoRel;

implementation

{$R *.dfm}

end.
