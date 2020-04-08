object frmChangePassword: TfrmChangePassword
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #3648#3611#3621#3637#3656#3618#3609#3619#3627#3633#3626#3612#3656#3634#3609
  ClientHeight = 309
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 122
    Height = 19
    Caption = 'Password change'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 33
    Width = 652
    Height = 13
    Caption = 
      'Please enter your old password, for security'#8217's sake, and then en' +
      'ter your new password twice so we can verify you typed it in cor' +
      'rectly.'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 69
    Height = 13
    Caption = 'Old password:'
  end
  object Label4: TLabel
    Left = 8
    Top = 107
    Width = 74
    Height = 13
    Caption = 'New password:'
  end
  object Label5: TLabel
    Left = 8
    Top = 134
    Width = 136
    Height = 13
    Caption = 'New password confirmation:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 96
    Width = 724
    Height = 2
  end
  object Bevel2: TBevel
    Left = 8
    Top = 258
    Width = 724
    Height = 2
  end
  object lblUserName: TLabel
    Left = 108
    Top = 266
    Width = 72
    Height = 13
    Caption = 'curr_username'
  end
  object Label6: TLabel
    Left = 8
    Top = 266
    Width = 94
    Height = 13
    Caption = 'Current username :'
  end
  object EdtOldPassword: TEdit
    Left = 182
    Top = 69
    Width = 121
    Height = 21
    MaxLength = 64
    PasswordChar = '*'
    TabOrder = 0
  end
  object EdtNewPassword: TEdit
    Left = 182
    Top = 104
    Width = 121
    Height = 21
    MaxLength = 64
    PasswordChar = '*'
    TabOrder = 1
  end
  object EdtConfirmNewPassword: TEdit
    Left = 182
    Top = 131
    Width = 121
    Height = 21
    MaxLength = 64
    PasswordChar = '*'
    TabOrder = 2
  end
  object btnChangedPassword: TButton
    Left = 600
    Top = 266
    Width = 132
    Height = 25
    Caption = 'Change My Password'
    TabOrder = 3
    OnClick = btnChangedPasswordClick
  end
  object Button1: TButton
    Left = 519
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 4
    OnClick = Button1Click
  end
end
