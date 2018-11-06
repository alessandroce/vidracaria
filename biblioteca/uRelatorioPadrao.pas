unit uRelatorioPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadrao, frxClass, frxIBXComponents, ImgList, ActnList, ExtCtrls,
  StdCtrls, Buttons;

type
  TFRelatorioPadrao = class(TFPadrao)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    bt_Cancelar: TAction;
    bt_Limpar: TAction;
    bt_ok: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioPadrao: TFRelatorioPadrao;

implementation



{$R *.dfm}

end.
