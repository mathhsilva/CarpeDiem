object Form1: TForm1
  Left = 754
  Top = 386
  Caption = 'FLogin'
  ClientHeight = 446
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pCenter: TPanel
    Left = 0
    Top = 0
    Width = 566
    Height = 446
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -56
    ExplicitTop = -80
    object bEntrar: TSQLBtn
      Left = 224
      Top = 232
      Width = 57
      Height = 22
      Caption = 'Entrar'
      Operation = fbNone
      Processing = False
      AutoAction = True
      GlyphSqlEnv = True
      IntervalRepeat = 0
      DownUp = False
    end
    object bSair: TSQLBtn
      Left = 287
      Top = 232
      Width = 58
      Height = 22
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Operation = fbNone
      Processing = False
      AutoAction = True
      GlyphSqlEnv = True
      IntervalRepeat = 0
      DownUp = False
    end
  end
  object edLogin: TSQLEd
    Left = 224
    Top = 96
    Width = 121
    Height = 21
    TabStop = False
    Alignment = taLeftJustify
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = ''
    Visible = True
    Empty = True
    CloseForm = False
    CloseFormEsc = False
    ColorFocus = clBlack
    ColorTextFocus = clWhite
    ColorNotEnabled = clGray
    ColorTextNotEnabled = clWhite
    Title = 'Login'
    TitlePos = tppTop
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitlePixels = 0
    TypeValue = tvString
    ValueNegative = False
    Decimals = 0
    CharUpperLower = False
    ItemsMultiples = False
    ItemsValid = True
    ItemsWidth = 0
    ItemsHeight = 0
    ItemsLength = 0
    Duplicity = 0
    MinLength = 0
    Group = 0
  end
  object edSenha: TSQLEd
    Left = 224
    Top = 152
    Width = 121
    Height = 21
    TabStop = False
    Alignment = taLeftJustify
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
    Visible = True
    Empty = True
    CloseForm = False
    CloseFormEsc = False
    ColorFocus = clBlack
    ColorTextFocus = clWhite
    ColorNotEnabled = clGray
    ColorTextNotEnabled = clWhite
    Title = 'Senha'
    TitlePos = tppTop
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitlePixels = 0
    TypeValue = tvString
    ValueNegative = False
    Decimals = 0
    CharUpperLower = False
    ItemsMultiples = False
    ItemsValid = True
    ItemsWidth = 0
    ItemsHeight = 0
    ItemsLength = 0
    Duplicity = 0
    MinLength = 0
    Group = 0
  end
end