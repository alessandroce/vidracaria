object DMConnection: TDMConnection
  OldCreateOrder = False
  Left = 392
  Top = 241
  Height = 134
  Width = 154
  object SQLConnection: TSQLConnection
    ConnectionName = 'Conn_MovelariaDMarco'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoadParamsOnConnect = True
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=D:\Projetos\Vidracaria\trunk\db\DBUSINASOFTWARE.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 56
    Top = 24
  end
end
