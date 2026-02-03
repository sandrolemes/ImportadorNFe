unit uDocumentoNfeItemDTO;

interface

uses
  System.SysUtils;

type
  TDocumentoNfeItemDTO = class
  private
    FID_ITEM: Integer;
    FID_DOCUMENTO: Integer;
    FITEM: Integer;
    FDESCRICAO: string;
    FNCM: string;
    FQUANTIDADE: Double;
    FVL_UNITARIO: Currency;
    FVL_TOTAL: Currency;
  public
    property ID_ITEM: Integer read FID_ITEM write FID_ITEM;
    property ID_DOCUMENTO: Integer read FID_DOCUMENTO write FID_DOCUMENTO;
    property ITEM: Integer read FITEM write FITEM;
    property DESCRICAO: string read FDESCRICAO write FDESCRICAO;
    property NCM: string read FNCM write FNCM;
    property QUANTIDADE: Double read FQUANTIDADE write FQUANTIDADE;
    property VL_UNITARIO: Currency read FVL_UNITARIO write FVL_UNITARIO;
    property VL_TOTAL: Currency read FVL_TOTAL write FVL_TOTAL;
  end;

implementation

end.
