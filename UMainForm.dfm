object Form1: TForm1
  Left = 338
  Top = 207
  Width = 825
  Height = 404
  AutoSize = True
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 336
    Top = 0
    Width = 87
    Height = 31
    Caption = #1044#1077#1088#1077#1074#1086
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 616
    Top = 0
    Width = 116
    Height = 31
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 0
    Width = 195
    Height = 31
    Caption = #1057#1083#1086#1074#1072' '#1080#1079' '#1092#1072#1081#1083#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 32
    Width = 233
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 560
    Top = 32
    Width = 249
    Height = 257
    Lines.Strings = (
      'Memo2')
    TabOrder = 1
  end
  object BBuildTrie: TButton
    Left = 328
    Top = 304
    Width = 129
    Height = 41
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1076#1077#1088#1077#1074#1086
    TabOrder = 2
    OnClick = BBuildTrieClick
  end
  object treeView: TTreeView
    Left = 256
    Top = 32
    Width = 281
    Height = 257
    Indent = 19
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 32
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 80
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #1042#1074#1077#1089#1090#1080' '#1086#1082#1086#1085#1095#1072#1085#1080#1077
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N6Click
    end
  end
end
