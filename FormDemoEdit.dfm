object DemoEdit: TDemoEdit
  Left = 0
  Top = 0
  Caption = 'DemoEdit'
  ClientHeight = 364
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 40
    Top = 48
    Width = 121
    Height = 21
    Hint = 'Obrigatorio'
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 40
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 40
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 152
    Top = 162
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
end
