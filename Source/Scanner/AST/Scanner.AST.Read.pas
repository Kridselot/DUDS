unit Scanner.AST.Read;

interface

uses
  System.Diagnostics
  , DelphiAST
  ;

type

  TScannerHandler = class(Tobject)
  public type
    TScannerEvents = (ParseStart, ParseEnd);
    TScannerNotify = procedure (aEvent: TScannerEvents);
  protected
    FScannerEvent: TScannerNotify;
    procedure FireEvent(aEvent: TScannerEvents);
  public
    procedure Parse(aFilename: string; const aStopWatch: Boolean = false);
    property ScannerEvent: TScannerNotify write FScannerEvent;
  end;

implementation

{ TScannerHandler }

procedure TScannerHandler.FireEvent(aEvent: TScannerEvents);
begin
  if assigned(FScannerEvent) then
    FScannerEvent(aEvent);
end;


procedure TScannerHandler.Parse(aFilename: string; const aStopWatch: Boolean);
begin
  FireEvent(ParseStart);
  try

    var SyntaxNode := TPasSyntaxTreeBuilder.Run(aFilename);

  finally
    FireEvent(ParseEnd);
  end;
end;

end.
