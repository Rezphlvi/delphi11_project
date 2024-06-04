object DataModule4: TDataModule4
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'D:\visual\libmysql.dll'
    Left = 248
    Top = 120
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 352
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 352
    Top = 216
  end
end
