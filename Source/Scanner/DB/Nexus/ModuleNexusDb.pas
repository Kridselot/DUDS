unit ModuleNexusDb;

interface

uses
  System.SysUtils, System.Classes, nxdb, nxsrSqlEngineBase, nxsqlEngine,
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

end.
