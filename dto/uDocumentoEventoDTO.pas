unit uDocumentoEventoDTO;

interface

uses
  System.SysUtils;

type
  TDocumentoEventoDTO = class
  private
    FID_EVENTO: Integer;
    FID_DOCUMENTO: Integer;
    FDT_EVENTO: TDateTime;
    FTIPO_EVENTO: string;
    FSTATUS_ANTES: string;
    FSTATUS_DEPOIS: string;
    FMENSAGEM: string;
    FDETALHE: string;
    FUSUARIO: string;
  public
    property ID_EVENTO: Integer read FID_EVENTO write FID_EVENTO;
    property ID_DOCUMENTO: Integer read FID_DOCUMENTO write FID_DOCUMENTO;
    property DT_EVENTO: TDateTime read FDT_EVENTO write FDT_EVENTO;
    property TIPO_EVENTO: string read FTIPO_EVENTO write FTIPO_EVENTO;
    property STATUS_ANTES: string read FSTATUS_ANTES write FSTATUS_ANTES;
    property STATUS_DEPOIS: string read FSTATUS_DEPOIS write FSTATUS_DEPOIS;
    property MENSAGEM: string read FMENSAGEM write FMENSAGEM;
    property DETALHE: string read FDETALHE write FDETALHE;
    property USUARIO: string read FUSUARIO write FUSUARIO;
  end;

implementation

end.


