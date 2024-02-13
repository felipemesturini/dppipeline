unit Command.SumCommandTest;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TSumCommandTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    [TestCase('TestSum_10_5', '10,5,15')]
    [TestCase('TestSum_0_1', '0,1,1')]
    procedure TestSum(const AValueOne, AValueTwo, AResponse: Integer);
  end;

implementation

uses
  Command.SumCommand,
  Command.BaseCommand;

procedure TSumCommandTest.Setup;
begin
end;

procedure TSumCommandTest.TearDown;
begin
end;

procedure TSumCommandTest.TestSum(const AValueOne, AValueTwo, AResponse: Integer);
var
  lBaseCommand: IBaseCommand<Integer>;
begin
  lBaseCommand := TSumCommand.Create();
  var lResponse := lBaseCommand.Executar(AValueOne, AValueTwo).Response;
  Assert.AreEqual(lResponse, AResponse);
end;

initialization

TDUnitX.RegisterTestFixture(TSumCommandTest);

end.
