program CommandPattern;

uses
  Vcl.Forms,
  Views.ViewMain in 'src\Views.ViewMain.pas' {ViewMain},
  Command.BaseCommand in 'src\Command\Command.BaseCommand.pas',
  Command.SumCommand in 'src\Command\Command.SumCommand.pas',
  Controller.Calculadora in 'src\Controller.Calculadora.pas',
  Command.SubCommand in 'src\Command\Command.SubCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
