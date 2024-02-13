unit Command.SubCommandTest;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TSubCommandTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    [TestCase('TestSubtract_10_5', '10,5,5')]
    [TestCase('TestSubtract_0_5', '0,5,-4')]
    procedure TestSub(const AValueOne, AValueTwo, AResponse: Integer);
  end;

implementation

uses
  Command.SubCommand,
  Command.BaseCommand;

procedure TSubCommandTest.Setup;
begin
end;

procedure TSubCommandTest.TearDown;
begin
end;

procedure TSubCommandTest.TestSub(const AValueOne, AValueTwo, AResponse: Integer);
var
  lBaseCommand: IBaseCommand<Integer>;
begin
  lBaseCommand := TSubCommand.Create();
  var lResponse := lBaseCommand.Executar(AValueOne, AValueTwo).Response;
  Assert.AreEqual(lResponse, AResponse)
end;

initialization

TDUnitX.RegisterTestFixture(TSubCommandTest);

end.
