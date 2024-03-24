unit MainFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls

  , Scanner.AST.Read
  ;

type
  TForm2 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  OpenDialog1.FileName := '"D:\Development\SourceParser\Source\OmniThreadLibrary\src\DSiWin32.pas"'; // debug

  if not OpenDialog1.Execute(self.Handle) then
    exit;

  var Handler := TScannerHandler.Create;
  Handler. Parse(OpenDialog1.FileName);
end;

end.
