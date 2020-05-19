object Form1: TForm1
  Left = 338
  Top = 207
  Width = 969
  Height = 424
  AutoSize = True
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 336
    Top = 8
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
    Left = 776
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
  object Label2: TLabel
    Left = 536
    Top = 72
    Width = 167
    Height = 24
    Caption = #1042#1074#1077#1076#1080' '#1086#1082#1086#1085#1095#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BFind: TButton
    Left = 584
    Top = 152
    Width = 81
    Height = 41
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 0
    OnClick = BFindClick
  end
  object Edit1: TEdit
    Left = 560
    Top = 112
    Width = 121
    Height = 22
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 0
    Top = 40
    Width = 233
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 704
    Top = 32
    Width = 249
    Height = 257
    Lines.Strings = (
      'Memo2')
    TabOrder = 3
  end
  object BOpenFile: TButton
    Left = 56
    Top = 344
    Width = 129
    Height = 41
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
    TabOrder = 4
    OnClick = BOpenFileClick
  end
  object BSaveFile: TButton
    Left = 776
    Top = 336
    Width = 129
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083
    TabOrder = 5
    OnClick = BSaveFileClick
  end
  object BBuildTrie: TButton
    Left = 320
    Top = 344
    Width = 129
    Height = 41
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1076#1077#1088#1077#1074#1086
    TabOrder = 6
    OnClick = BBuildTrieClick
  end
  object treeView: TTreeView
    Left = 256
    Top = 40
    Width = 281
    Height = 257
    Indent = 19
    TabOrder = 7
  end
  object BExit: TButton
    Left = 584
    Top = 216
    Width = 81
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 8
    OnClick = BExitClick
  end
  object OpenDialog1: TOpenDialog
    Left = 32
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 80
    Top = 8
  end
end
