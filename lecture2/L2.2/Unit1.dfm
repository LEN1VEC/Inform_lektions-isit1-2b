object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 131
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 5
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object lbl2: TLabel
    Left = 8
    Top = 32
    Width = 6
    Height = 13
    Caption = 'b'
  end
  object lbl3: TLabel
    Left = 8
    Top = 59
    Width = 5
    Height = 13
    Caption = 'c'
  end
  object edt1: TEdit
    Left = 20
    Top = 5
    Width = 190
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 20
    Top = 86
    Width = 190
    Height = 25
    Caption = 'Run'
    Default = True
    TabOrder = 3
    OnClick = btn1Click
  end
  object edt2: TEdit
    Left = 19
    Top = 32
    Width = 190
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 19
    Top = 59
    Width = 190
    Height = 21
    TabOrder = 2
  end
end
