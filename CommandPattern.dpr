program CommandPattern;

uses
  Vcl.Forms,
  Views.ViewMain in 'src\Views.ViewMain.pas' {ViewMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
