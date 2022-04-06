object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'http://www.kavenegar.com'
  ClientHeight = 458
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 16
    Width = 51
    Height = 13
    Caption = 'Receptor :'
  end
  object Label2: TLabel
    Left = 264
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Message :'
  end
  object Label3: TLabel
    Left = 128
    Top = 104
    Width = 57
    Height = 13
    Caption = 'Sender No :'
  end
  object Label4: TLabel
    Left = 264
    Top = 104
    Width = 45
    Height = 13
    Caption = 'API Key :'
  end
  object Button1: TButton
    Left = 8
    Top = 18
    Width = 100
    Height = 25
    Caption = 'Send'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 124
    Top = 144
    Width = 598
    Height = 294
    TabStop = False
    ScrollBars = ssVertical
    TabOrder = 11
  end
  object Button2: TButton
    Left = 8
    Top = 80
    Width = 100
    Height = 25
    Caption = 'Select'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 112
    Width = 100
    Height = 25
    Caption = 'Get Status'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 144
    Width = 100
    Height = 25
    Caption = 'Cancel'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 176
    Width = 100
    Height = 25
    Caption = 'Unread Message'
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 208
    Width = 100
    Height = 25
    Caption = 'Read Message'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 240
    Width = 100
    Height = 25
    Caption = 'Account Info'
    TabOrder = 10
    OnClick = Button7Click
  end
  object Edit3: TEdit
    Left = 124
    Top = 120
    Width = 121
    Height = 21
    MaxLength = 20
    TabOrder = 2
    OnExit = Edit3Exit
  end
  object Edit4: TEdit
    Left = 268
    Top = 120
    Width = 454
    Height = 21
    TabOrder = 3
    OnExit = Edit4Exit
  end
  object Button8: TButton
    Left = 8
    Top = 49
    Width = 100
    Height = 25
    Caption = 'Group Send'
    Enabled = False
    TabOrder = 12
    OnClick = Button8Click
  end
  object Edit1: TMemo
    Left = 128
    Top = 32
    Width = 121
    Height = 57
    ScrollBars = ssVertical
    TabOrder = 0
    OnExit = Edit1Exit
  end
  object Edit2: TMemo
    Left = 264
    Top = 32
    Width = 458
    Height = 57
    TabOrder = 1
    OnExit = Edit2Exit
  end
  object Button9: TButton
    Left = 8
    Top = 271
    Width = 100
    Height = 25
    Caption = 'Lookup'
    TabOrder = 13
    OnClick = Button9Click
  end
  object KaveNegar1: TKaveNegar
    Date = 44628.565647129630000000
    Timeout = 6000
    Left = 40
    Top = 400
  end
end
