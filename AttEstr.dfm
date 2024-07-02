object FAttEstr: TFAttEstr
  Left = 0
  Top = 0
  Caption = 'FAttEstr'
  ClientHeight = 127
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bAtualizar: TSQLBtn
    Left = 96
    Top = 24
    Width = 185
    Height = 22
    Caption = 'Atualizar Estrutura de Tabelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = bAtualizarClick
    Operation = fbNone
    Processing = False
    AutoAction = True
    GlyphSqlEnv = True
    IntervalRepeat = 0
    DownUp = False
  end
  object bFechar: TSQLBtn
    Left = 144
    Top = 80
    Width = 81
    Height = 22
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = bFecharClick
    Operation = fbNone
    Processing = False
    AutoAction = True
    GlyphSqlEnv = True
    IntervalRepeat = 0
    DownUp = False
  end
  object Inst: TSQLInstall
    RPUserPrivilegesOracle = 'CONNECT, RESOURCE, CREATE VIEW, DROP ANY VIEW'
    TypeServer = tsOracle
    StrTables.Strings = (
      'USUARIOS^FIELD^usu_id^^0^0^N^0^^^^N^^^^'
      'USUARIOS^FIELD^usu_login^^0^0^S^0^usu_login^usu_login^^S^^^^'
      'USUARIOS^FIELD^usu_senha^^0^0^S^0^usu_senha^usu_senha^^S^^^^'
      'USUARIOS^FIELD^usu_email^^0^0^S^0^usu_email^usu_email^^S^^^^'
      
        'USUARIOS^FIELD^usu_cad_data^^0^0^S^0^usu_cad_data^usu_cad_data^^' +
        'S^^^^')
    OnCreateFields = InstCreateFields
    OnCreateSequences = InstCreateSequences
    Left = 325
    Top = 20
  end
end
