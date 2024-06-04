object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object TLabel
    Left = 136
    Top = 128
    Width = 3
    Height = 15
  end
  object NAME: TLabel
    Left = 128
    Top = 123
    Width = 34
    Height = 15
    Caption = 'NAME'
  end
  object Label1: TLabel
    Left = 136
    Top = 376
    Width = 101
    Height = 15
    Caption = 'MASUKKAN NAME'
  end
  object e1: TEdit
    Left = 200
    Top = 120
    Width = 305
    Height = 23
    TabOrder = 0
    Text = 'e1'
  end
  object UPDATE: TButton
    Left = 296
    Top = 160
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 1
    OnClick = UPDATEClick
  end
  object DELETE: TButton
    Left = 400
    Top = 160
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 2
    OnClick = DELETEClick
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 204
    Width = 456
    Height = 152
    DataSource = DataModule4.DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object e2: TEdit
    Left = 280
    Top = 373
    Width = 121
    Height = 23
    TabOrder = 4
    Text = 'e2'
  end
  object CARI: TButton
    Left = 440
    Top = 372
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object INSERT: TButton
    Left = 200
    Top = 160
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 6
    OnClick = INSERTClick
  end
end
