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
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 17
    Width = 100
    Height = 25
    Caption = 'Send'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 120
    Top = 19
    Width = 598
    Height = 422
    TabStop = False
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Button2: TButton
    Left = 8
    Top = 48
    Width = 100
    Height = 25
    Caption = 'Select'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 80
    Width = 100
    Height = 25
    Caption = 'Get Status'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 112
    Width = 100
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 144
    Width = 100
    Height = 25
    Caption = 'Unread Message'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 176
    Width = 100
    Height = 25
    Caption = 'Read Message'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 208
    Width = 100
    Height = 25
    Caption = 'Account Info'
    TabOrder = 7
    OnClick = Button7Click
  end
  object KaveNegar1: TKaveNegar
    APIKey = '344357746B47346573476E566862464A435A4C784C773D3D'
    SenderNo = 30006703323323
    Receptor.Strings = (
      '09123813376')
    KMessage.Strings = (
      #1578#1587#1578)
    Left = 144
    Top = 32
  end
end
