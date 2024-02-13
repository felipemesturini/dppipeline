unit Views.ViewMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TViewMain = class(TForm)
    btnExecute: TButton;
    edtValueOne: TSpinEdit;
    edtValueTwo: TSpinEdit;
    edtResult: TSpinEdit;
    procedure btnExecuteClick(Sender: TObject);
  private
  public
  end;

var
  ViewMain: TViewMain;

implementation

uses
  Controller.Calculadora;

{$R *.dfm}

procedure TViewMain.btnExecuteClick(Sender: TObject);
begin
  edtResult.Value := TCalculadora.Sum(edtValueOne.Value, edtValueTwo.Value);
end;

end.
