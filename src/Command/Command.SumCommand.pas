unit Command.SumCommand;

interface

uses
  Command.BaseCommand;

type
  TSumCommand = class(TInterfacedObject, IBaseCommand<Integer>)
  private
    FResponse: Integer;
  private
    function GetResponse: Integer;
    procedure SetResponse(const AValue: Integer);
  public
    procedure Executar(AValueOne, AValueTwo: Integer);
    property Response: Integer read GetResponse write SetResponse;
  end;

implementation

{ TSumCommand }

procedure TSumCommand.Executar(AValueOne, AValueTwo: Integer);
begin
  Response := AValueOne + AValueTwo;
end;

function TSumCommand.GetResponse: Integer;
begin
  Result := FResponse;
end;

procedure TSumCommand.SetResponse(const AValue: Integer);
begin
  Response := AValue;
end;

end.
