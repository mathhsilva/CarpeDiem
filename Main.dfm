object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'FMain'
  ClientHeight = 640
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 208
    Top = 104
    object bCadastros: TMenuItem
      Caption = 'Cadastros'
      object bUsuarios: TMenuItem
        Caption = 'Usuarios'
        OnClick = bUsuariosClick
      end
    end
    object bAtualizarTabelas: TMenuItem
      Caption = 'Atualizar Tabelas'
      object bAttEstr: TMenuItem
        Caption = 'Atualizar Estrutura'
        OnClick = bAttEstrClick
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
