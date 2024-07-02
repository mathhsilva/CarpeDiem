object DM: TDM
  OldCreateOrder = False
  Height = 353
  Width = 666
  object Connection: TFDConnection
    Params.Strings = (
      'Database=base_matheus'
      'User_Name=erp'
      'Password=erp94587361'
      'Server=192.168.2.1'
      'DriverID=PG')
    Left = 96
    Top = 48
  end
  object qryUsu: TFDQuery
    Connection = Connection
    Left = 168
    Top = 48
  end
end
