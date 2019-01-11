object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 352
  Top = 168
  Height = 323
  Width = 362
  object IBConexao: TIBDatabase
    DatabaseName = 'D:\Projetos\Vidracaria\trunk\db\DBUSINASOFTWARE.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransacao
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 40
    Top = 16
  end
  object IBTransacao: TIBTransaction
    Active = False
    DefaultDatabase = IBConexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 96
    Top = 16
  end
  object IBTransacaoLeitura: TIBTransaction
    Active = False
    DefaultDatabase = IBConexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 152
    Top = 16
  end
  object qGeral: TIBQuery
    Database = IBConexao
    Transaction = IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    Left = 160
    Top = 128
  end
  object qGenId: TIBQuery
    Database = IBConexao
    Transaction = IBTransacao
    BufferChunks = 1000
    CachedUpdates = False
    Left = 160
    Top = 192
  end
end
