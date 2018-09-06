unit UDMDuplicata;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, DB, SqlExpr, Provider;

type
  TDMDuplicata = class(TDataModule)
    dsViewDuplicata_Emitente: TDataSource;
    dspViewDuplicata_Emitente: TDataSetProvider;
    qryViewDuplicata_Emitente: TSQLQuery;
    qryViewDuplicata_EmitenteEMIT_ID: TIntegerField;
    qryViewDuplicata_EmitenteEMIT_RAZAOSOCIAL: TStringField;
    qryViewDuplicata_EmitenteEMIT_RESPONSAVEL: TStringField;
    qryViewDuplicata_EmitenteEMIT_ENDERECO: TStringField;
    qryViewDuplicata_EmitenteEMIT_BAIRRO: TStringField;
    qryViewDuplicata_EmitenteEMIT_MUNICIPIO: TStringField;
    qryViewDuplicata_EmitenteEMIT_CEP: TStringField;
    qryViewDuplicata_EmitenteEMIT_ESTADO: TStringField;
    qryViewDuplicata_EmitenteEMIT_CNPJ: TStringField;
    qryViewDuplicata_EmitenteEMIT_IE: TStringField;
    qryViewDuplicata_EmitenteEMIT_TELEFONE: TStringField;
    qryViewDuplicata_EmitenteEDIT_EMAIL: TStringField;
    cdsViewDuplicata_Emitente: TClientDataSet;
    cdsViewDuplicata_EmitenteEMIT_ID: TIntegerField;
    cdsViewDuplicata_EmitenteEMIT_RAZAOSOCIAL: TStringField;
    cdsViewDuplicata_EmitenteEMIT_RESPONSAVEL: TStringField;
    cdsViewDuplicata_EmitenteEMIT_ENDERECO: TStringField;
    cdsViewDuplicata_EmitenteEMIT_BAIRRO: TStringField;
    cdsViewDuplicata_EmitenteEMIT_MUNICIPIO: TStringField;
    cdsViewDuplicata_EmitenteEMIT_CEP: TStringField;
    cdsViewDuplicata_EmitenteEMIT_ESTADO: TStringField;
    cdsViewDuplicata_EmitenteEMIT_CNPJ: TStringField;
    cdsViewDuplicata_EmitenteEMIT_IE: TStringField;
    cdsViewDuplicata_EmitenteEMIT_TELEFONE: TStringField;
    cdsViewDuplicata_EmitenteEDIT_EMAIL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDuplicata: TDMDuplicata;

implementation

uses uDMConnection;

{$R *.dfm}

end.
