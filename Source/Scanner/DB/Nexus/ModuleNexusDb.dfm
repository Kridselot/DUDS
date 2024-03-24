object NexusDbModule: TNexusDbModule
  Height = 480
  Width = 640
  object nxDatabase1: TnxDatabase
    EventLog = nxEventLog1
    ActiveRuntime = True
    Session = nxSession1
    TransContext = nxTransContext1
    CacheDatabase = nxCacheDatabase1
    Left = 168
    Top = 24
  end
  object nxCacheDatabase1: TnxCacheDatabase
    EventLog = nxEventLog1
    EventLogEnabled = True
    ActiveRuntime = True
    Session = nxSession1
    Left = 40
    Top = 24
  end
  object nxEventLog1: TnxEventLog
    EventDispatcher = nxEventLogDispatcher1
    Enabled = True
    NumRotations = 0
    RotationSize = 32
    MaxSize = 0
    Left = 48
    Top = 96
  end
  object nxDatabaseMapper1: TnxDatabaseMapper
    EventLog = nxEventLog1
    ActiveRuntime = True
    DefaultSession = nxSession1
    Mappings = <
      item
        Name = 'Mapping1'
        Database = nxDatabase1
      end>
    Left = 544
    Top = 216
  end
  object nxSessionPool1: TnxSessionPool
    EventLog = nxEventLog1
    ActiveRuntime = True
    ServerEngine = nxServerEngine1
    Left = 128
    Top = 336
  end
  object nxSession1: TnxSession
    EventLog = nxEventLog1
    ActiveRuntime = True
    ServerEngine = nxServerEngine1
    Left = 32
    Top = 328
  end
  object nxServerEngine1: TnxServerEngine
    EventLog = nxEventLog1
    ActiveRuntime = True
    SqlEngine = nxSqlEngine1
    ServerName = ''
    Options = []
    TableExtension = 'nx1'
    Left = 32
    Top = 408
  end
  object nxEventLogDispatcher1: TnxEventLogDispatcher
    Enabled = True
    Left = 136
    Top = 112
  end
  object nxSqlEngine1: TnxSqlEngine
    EventLog = nxEventLog1
    ActiveRuntime = True
    StmtLogging = False
    StmtLogTableName = 'QueryLog'
    UseFieldCache = False
    Left = 128
    Top = 408
  end
  object nxTransContext1: TnxTransContext
    EventLog = nxEventLog1
    ActiveRuntime = True
    Session = nxSession1
    Default = True
    Left = 288
    Top = 32
  end
end
