program projImportadorNFe;

uses
  Vcl.Forms,
  uImportacaoNfeController in 'controller\uImportacaoNfeController.pas',
  uDocumentoEventoDAO in 'dao\uDocumentoEventoDAO.pas',
  uDocumentoNfeDAO in 'dao\uDocumentoNfeDAO.pas',
  uDocumentoNfeItemDAO in 'dao\uDocumentoNfeItemDAO.pas',
  uDocumentoEventoDTO in 'dto\uDocumentoEventoDTO.pas',
  uDocumentoNfeDTO in 'dto\uDocumentoNfeDTO.pas',
  uDocumentoNfeItemDTO in 'dto\uDocumentoNfeItemDTO.pas',
  uNfeXmlParser in 'service\uNfeXmlParser.pas',
  uStatusProcessamento in 'util\uStatusProcessamento.pas',
  fImportacaoNfe in 'view\fImportacaoNfe.pas' {frmImportacaoNfe},
  uUtils in 'util\uUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmImportacaoNfe, frmImportacaoNfe);
  Application.Run;
end.
