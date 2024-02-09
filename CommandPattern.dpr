program CommandPattern;

uses
  Vcl.Forms,
  Views.ViewMain in 'src\Views.ViewMain.pas' {ViewMain},
  Command.BaseCommand in 'src\Command\Command.BaseCommand.pas',
  Command.SumCommand in 'src\Command\Command.SumCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
