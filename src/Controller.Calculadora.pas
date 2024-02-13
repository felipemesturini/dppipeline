unit Controller.Calculadora;

interface

type
  TCalculadora = class
  public
    class function Sum(AValueOne, AValueTwo: Integer): Integer;
    class function Subtract(AValueOne, AValueTwo: Integer): Integer;
  end;

implementation

{ TCalculadora }

uses
  Command.BaseCommand,
  Command.SubCommand, Command.SumCommand;

class function TCalculadora.Subtract(AValueOne, AValueTwo: Integer): Integer;
var
  lBaseCommand: IBaseCommand<Integer>;
begin
  lBaseCommand := TSubCommand.Create();
  Result := lBaseCommand.Executar(AValueOne, AValueTwo).Response;
end;

class function TCalculadora.Sum(AValueOne, AValueTwo: Integer): Integer;
var
  lBaseCommand: IBaseCommand<Integer>;
begin
  lBaseCommand := TSumCommand.Create();
  Result := lBaseCommand.Executar(AValueOne, AValueTwo).Response;
end;

end.
