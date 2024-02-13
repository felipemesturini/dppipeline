unit Command.SubCommand;

interface

uses
  Command.BaseCommand;

type
  TSubCommand = class(TInterfacedObject, IBaseCommand<Integer>)
  private
    FResponse: Integer;
  private
    function GetResponse: Integer;
    procedure SetResponse(const AValue: Integer);
  public
    function Executar(AValueOne, AValueTwo: Integer):  IBaseCommand<Integer>;
    property Response: Integer read GetResponse write SetResponse;
  end;

implementation

{ TSubCommand }

function TSubCommand.Executar(AValueOne, AValueTwo: Integer): IBaseCommand<Integer>;
begin
  Result := Self;
  FResponse := AValueOne - AValueTwo;
end;

function TSubCommand.GetResponse: Integer;
begin
  Result := FResponse;
end;

procedure TSubCommand.SetResponse(const AValue: Integer);
begin
  FResponse := AValue;
end;

end.
