unit Command.BaseCommand;

interface

type
  IBaseCommand<T: record> = interface
    ['{0173867C-2822-4C13-A04B-C2459DE601A1}']

    function GetResponse: T;
    procedure SetResponse(const AValue: T);


    procedure Executar(AValueOne, AValueTwo: T);
    property Response: T read GetResponse write SetResponse;
  end;

implementation

end.
