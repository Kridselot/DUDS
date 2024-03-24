program ScannerGroup;

uses
  Vcl.Forms,
  MainFrm in 'MainFrm.pas' {Form2},
  Scanner.AST.Read in 'AST\Scanner.AST.Read.pas',
  ModuleNexusDb in 'DB\Nexus\ModuleNexusDb.pas' {NexusDbModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TNexusDbModule, NexusDbModule);
  Application.Run;
end.
