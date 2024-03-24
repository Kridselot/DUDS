unit ModuleNexusDb;

interface

uses
  System.SysUtils, IOUtils.Path, System.Classes, System.IOUtils
  , Vcl.Forms
  , nxdb, nxsrSqlEngineBase, nxsqlEngine,
  nxlgEventLog, nxlgEventLogDispatcher, nxsdServerEngine, nxsrServerEngine,
  nxdbDatabaseMapper, nxllComponent;

type
  TNexusDbModule = class(TDataModule)
    nxDatabase1: TnxDatabase;
    nxCacheDatabase1: TnxCacheDatabase;
    nxEventLog1: TnxEventLog;
    nxDatabaseMapper1: TnxDatabaseMapper;
    nxSessionPool1: TnxSessionPool;
    nxSession1: TnxSession;
    nxServerEngine1: TnxServerEngine;
    nxEventLogDispatcher1: TnxEventLogDispatcher;
    nxSqlEngine1: TnxSqlEngine;
    nxTransContext1: TnxTransContext;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NexusDbModule: TNexusDbModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TNexusDbModule.DataModuleCreate(Sender: TObject);
begin
  nxDatabase1.AliasName := TPath.MakeValidFileName(Application.ExeName);
  nxDatabase1.AliasPath := TPath.Combine(TPath.GetHomePath, TPath.MakeValidFileName(Application.ExeName));
end;

end.
