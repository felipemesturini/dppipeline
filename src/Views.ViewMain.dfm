object ViewMain: TViewMain
  Left = 0
  Top = 0
  Caption = 'View Main'
  ClientHeight = 269
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnExecute: TButton
    Left = 435
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = btnExecuteClick
  end
  object edtValueOne: TSpinEdit
    Left = 8
    Top = 46
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object edtValueTwo: TSpinEdit
    Left = 158
    Top = 46
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object edtResult: TSpinEdit
    Left = 300
    Top = 46
    Width = 114
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
end
