program AppCM;

uses
  Vcl.Forms,
  uPrincipal in '..\View\uPrincipal.pas' {FrmPrincipal},
  uUsuarioDAO in '..\DAO\uUsuarioDAO.pas',
  uUsuario in '..\Modelo\uUsuario.pas',
  uEndereco in '..\Modelo\uEndereco.pas',
  uCompanhia in '..\Modelo\uCompanhia.pas',
  uDM in '..\Conexao\uDM.pas' {Dm: TDataModule},
  uParseJson in '..\Parse\uParseJson.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
