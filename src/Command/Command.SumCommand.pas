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
    function Executar(AValueOne, AValueTwo: Integer): IBaseCommand<Integer>;
    property Response: Integer read GetResponse write SetResponse;
  end;

implementation

{ TSumCommand }

function TSumCommand.Executar(AValueOne, AValueTwo: Integer): IBaseCommand<Integer>;
begin
  Result := Self;
  FResponse := AValueOne + AValueTwo;
end;

function TSumCommand.GetResponse: Integer;
begin
  Result := FResponse;
end;

procedure TSumCommand.SetResponse(const AValue: Integer);
begin
  FResponse := AValue;
end;

end.
