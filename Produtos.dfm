object FProdutos: TFProdutos
  Left = 0
  Top = 0
  Caption = 'FProdutos'
  ClientHeight = 504
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pBottom: TPanel
    Left = 0
    Top = 416
    Width = 988
    Height = 88
    Align = alBottom
    TabOrder = 0
    Visible = False
    object edProdNome: TSQLEd
      Left = 87
      Top = 32
      Width = 185
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
      Title = 'Nome do Produto'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
    object edPrecoUnit: TSQLEd
      Left = 390
      Top = 32
      Width = 98
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
      PasswordChar = '*'
      TabOrder = 3
      Text = ''
      Visible = True
      Empty = True
      CloseForm = False
      CloseFormEsc = False
      ColorFocus = clBlack
      ColorTextFocus = clWhite
      ColorNotEnabled = clGray
      ColorTextNotEnabled = clWhite
      Title = 'Pre'#231'o Unit'#225'rio'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
    object edCategoria: TSQLEd
      Left = 278
      Top = 32
      Width = 106
      Height = 21
      Hint = 'text@text.com'
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
      Title = 'Categoria'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
    object edEstMin: TSQLEd
      Left = 630
      Top = 32
      Width = 75
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
      TabOrder = 5
      Text = ''
      Visible = True
      Empty = True
      CloseForm = False
      CloseFormEsc = False
      ColorFocus = clBlack
      ColorTextFocus = clWhite
      ColorNotEnabled = clGray
      ColorTextNotEnabled = clWhite
      Title = 'Estoque M'#237'n.'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      TitlePixels = 0
      TypeValue = tvString
      ValueNegative = False
      Decimals = 0
      CharUpperLower = False
      Items.Strings = (
        'A - Ativo'
        'I - Inativo')
      ItemsMultiples = False
      ItemsValid = True
      ItemsWidth = 0
      ItemsHeight = 0
      ItemsLength = 1
      Duplicity = 0
      MinLength = 0
      Group = 0
    end
    object edDataCad: TSQLEd
      Left = 792
      Top = 32
      Width = 125
      Height = 21
      TabStop = False
      Alignment = taLeftJustify
      Color = clGray
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = ''
      Visible = True
      Empty = True
      CloseForm = False
      CloseFormEsc = False
      ColorFocus = clBlack
      ColorTextFocus = clWhite
      ColorNotEnabled = clGray
      ColorTextNotEnabled = clWhite
      Title = 'Data de Cadastro'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
    object edFornecedor: TSQLEd
      Left = 494
      Top = 32
      Width = 130
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
      PasswordChar = '*'
      TabOrder = 4
      Text = ''
      Visible = True
      Empty = True
      CloseForm = False
      CloseFormEsc = False
      ColorFocus = clBlack
      ColorTextFocus = clWhite
      ColorNotEnabled = clGray
      ColorTextNotEnabled = clWhite
      Title = 'Fornecedor'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
    object edCodProd: TSQLEd
      Left = 8
      Top = 32
      Width = 73
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
      TabOrder = 0
      Text = ''
      Visible = True
      Empty = True
      CloseForm = False
      CloseFormEsc = False
      ColorFocus = clBlack
      ColorTextFocus = clWhite
      ColorNotEnabled = clGray
      ColorTextNotEnabled = clWhite
      Title = 'Cod. Produto'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      TitlePixels = 0
      TypeValue = tvString
      ValueNegative = False
      Decimals = 0
      CharUpperLower = False
      Items.Strings = (
        'A - Ativo'
        'I - Inativo')
      ItemsMultiples = False
      ItemsValid = True
      ItemsWidth = 0
      ItemsHeight = 0
      ItemsLength = 1
      Duplicity = 0
      MinLength = 0
      Group = 0
    end
    object edEstMax: TSQLEd
      Left = 711
      Top = 32
      Width = 75
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
      TabOrder = 7
      Text = ''
      Visible = True
      Empty = True
      CloseForm = False
      CloseFormEsc = False
      ColorFocus = clBlack
      ColorTextFocus = clWhite
      ColorNotEnabled = clGray
      ColorTextNotEnabled = clWhite
      Title = 'Estoque M'#225'x.'
      TitlePos = tppTop
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      TitlePixels = 0
      TypeValue = tvString
      ValueNegative = False
      Decimals = 0
      CharUpperLower = False
      Items.Strings = (
        'A - Ativo'
        'I - Inativo')
      ItemsMultiples = False
      ItemsValid = True
      ItemsWidth = 0
      ItemsHeight = 0
      ItemsLength = 1
      Duplicity = 0
      MinLength = 0
      Group = 0
    end
  end
  object pDireita: TPanel
    Left = 871
    Top = 0
    Width = 117
    Height = 416
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 840
    ExplicitTop = 1
    ExplicitHeight = 471
    object bIncluir: TSQLBtn
      Left = 16
      Top = 16
      Width = 89
      Height = 22
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Operation = fbNone
      Processing = False
      AutoAction = True
      GlyphSqlEnv = True
      IntervalRepeat = 0
      DownUp = False
    end
    object bGravar: TSQLBtn
      Left = 16
      Top = 44
      Width = 89
      Height = 22
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Operation = fbNone
      Processing = False
      AutoAction = True
      GlyphSqlEnv = True
      IntervalRepeat = 0
      DownUp = False
    end
    object bExcluir: TSQLBtn
      Left = 16
      Top = 72
      Width = 89
      Height = 22
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Operation = fbNone
      Processing = False
      AutoAction = True
      GlyphSqlEnv = True
      IntervalRepeat = 0
      DownUp = False
    end
    object bAtualizar: TSQLBtn
      Left = 16
      Top = 100
      Width = 89
      Height = 22
      Caption = 'Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Operation = fbNone
      Processing = False
      AutoAction = True
      GlyphSqlEnv = True
      IntervalRepeat = 0
      DownUp = False
    end
  end
  object Grid: TSQLGrid
    Left = 0
    Top = 0
    Width = 871
    Height = 416
    Hint = 'text@text.com'
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Visible = False
    ColumnInitial = 0
    Reduce = 0
  end
end
