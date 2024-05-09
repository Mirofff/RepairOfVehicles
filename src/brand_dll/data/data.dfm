object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object DataSourceModels: TDataSource
    DataSet = FDQueryModels
    Left = 320
    Top = 300
  end
  object FDQueryMarks: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from marks;')
    Left = 176
    Top = 184
  end
  object DataSourceMarks: TDataSource
    DataSet = FDQueryMarks
    Left = 72
    Top = 188
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=CarWorkshop')
    Connected = True
    LoginPrompt = False
    Left = 424
    Top = 104
  end
  object FDQueryModels: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select mo.id, mo.name, `type`, `year`, ma.name as mark from mode' +
        'ls as mo join marks as ma on mo.mark_id = ma.id')
    Left = 432
    Top = 304
  end
end
