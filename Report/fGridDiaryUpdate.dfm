inherited frmGridDiaryUpdate: TfrmGridDiaryUpdate
  Caption = #3586#3657#3629#3617#3641#3621#3629#3633#3614#3648#3604#3605#3611#3619#3632#3592#3635#3623#3633#3609
  ClientHeight = 611
  ClientWidth = 915
  WindowState = wsMaximized
  ExplicitWidth = 931
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 19
  inherited cxGrid1: TcxGrid
    Width = 915
    Height = 562
    Visible = False
    ExplicitTop = 482
    ExplicitWidth = 915
    ExplicitHeight = 129
    inherited cxDBTV1: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
        end>
      object cxDBTV1Confirmed: TcxGridDBColumn
        DataBinding.FieldName = 'Confirmed'
        Width = 100
      end
      object cxDBTV1Recovered: TcxGridDBColumn
        DataBinding.FieldName = 'Recovered'
        Width = 100
      end
      object cxDBTV1Hospitalized: TcxGridDBColumn
        DataBinding.FieldName = 'Hospitalized'
        Width = 100
      end
      object cxDBTV1Deaths: TcxGridDBColumn
        DataBinding.FieldName = 'Deaths'
        Width = 100
      end
      object cxDBTV1NewConfirmed: TcxGridDBColumn
        DataBinding.FieldName = 'NewConfirmed'
        Width = 100
      end
      object cxDBTV1NewRecovered: TcxGridDBColumn
        DataBinding.FieldName = 'NewRecovered'
        Width = 100
      end
      object cxDBTV1NewHospitalized: TcxGridDBColumn
        DataBinding.FieldName = 'NewHospitalized'
        Width = 100
      end
      object cxDBTV1NewDeaths: TcxGridDBColumn
        DataBinding.FieldName = 'NewDeaths'
        Width = 100
      end
      object cxDBTV1UpdateDate: TcxGridDBColumn
        DataBinding.FieldName = 'UpdateDate'
        Width = 100
      end
      object cxDBTV1Source: TcxGridDBColumn
        DataBinding.FieldName = 'Source'
        Width = 100
      end
      object cxDBTV1DevBy: TcxGridDBColumn
        DataBinding.FieldName = 'DevBy'
        Width = 100
      end
      object cxDBTV1SeverBy: TcxGridDBColumn
        DataBinding.FieldName = 'SeverBy'
        Width = 100
      end
    end
  end
  inherited lbDescription: TcxLabel
    Caption = '  '#3586#3657#3629#3617#3641#3621#3629#3633#3614#3648#3604#3605#3611#3619#3632#3592#3635#3623#3633#3609
    ParentColor = False
    ParentFont = False
    ExplicitTop = 26
    ExplicitWidth = 915
    Width = 915
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 49
    Width = 915
    Height = 562
    Align = alClient
    TabOrder = 5
    ExplicitLeft = 80
    ExplicitTop = 41
    object Label1: TLabel
      Left = 438
      Top = 54
      Width = 32
      Height = 25
      Caption = #3619#3623#3617
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 82
      Width = 59
      Height = 25
      Caption = #3605#3636#3604#3648#3594#3639#3657#3629
      FocusControl = cxDBTextEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 17
      Top = 115
      Width = 84
      Height = 25
      Caption = #3619#3633#3585#3625#3634#3627#3634#3618
      FocusControl = cxDBTextEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 17
      Top = 148
      Width = 94
      Height = 25
      Caption = #3585#3635#3621#3633#3591#3619#3633#3585#3625#3634
      FocusControl = cxDBTextEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 17
      Top = 181
      Width = 68
      Height = 25
      Caption = #3648#3626#3637#3618#3594#3637#3623#3636#3605
      FocusControl = cxDBTextEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 17
      Top = 441
      Width = 48
      Height = 19
      Caption = 'Source'
      FocusControl = cxDBTextEdit10
    end
    object Label11: TLabel
      Left = 17
      Top = 474
      Width = 44
      Height = 19
      Caption = 'DevBy'
      FocusControl = cxDBTextEdit11
    end
    object Label12: TLabel
      Left = 17
      Top = 507
      Width = 56
      Height = 19
      Caption = 'SeverBy'
      FocusControl = cxDBTextEdit12
    end
    object Label13: TLabel
      Left = 223
      Top = 54
      Width = 71
      Height = 25
      Caption = #3648#3614#3636#3656#3617#3623#3633#3609#3609#3637#3657
      FocusControl = cxDBTextEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 144
      Top = 6
      DataBinding.DataField = 'UpdateDate'
      DataBinding.DataSource = DataSource1
      TabOrder = 8
      Width = 326
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 144
      Top = 438
      DataBinding.DataField = 'Source'
      DataBinding.DataSource = DataSource1
      TabOrder = 9
      Width = 500
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 144
      Top = 471
      DataBinding.DataField = 'DevBy'
      DataBinding.DataSource = DataSource1
      TabOrder = 10
      Width = 500
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 144
      Top = 504
      DataBinding.DataField = 'SeverBy'
      DataBinding.DataSource = DataSource1
      TabOrder = 11
      Width = 500
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 320
      Top = 85
      DataBinding.DataField = 'Confirmed'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 0
      Width = 150
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 320
      Top = 118
      DataBinding.DataField = 'Recovered'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 1
      Width = 150
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 320
      Top = 151
      DataBinding.DataField = 'Hospitalized'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 2
      Width = 150
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 320
      Top = 184
      DataBinding.DataField = 'Deaths'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 3
      Width = 150
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 144
      Top = 85
      DataBinding.DataField = 'NewConfirmed'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 4
      Width = 150
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 144
      Top = 118
      DataBinding.DataField = 'NewRecovered'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 5
      Width = 150
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 144
      Top = 151
      DataBinding.DataField = 'NewHospitalized'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 6
      Width = 150
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 144
      Top = 184
      DataBinding.DataField = 'NewDeaths'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 7
      Width = 150
    end
  end
  inherited DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 576
    Top = 280
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://covid19.th-stat.com/api/open/today'
    Params = <>
    Left = 352
    Top = 352
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 520
    Top = 368
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 352
    Top = 408
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 352
    Top = 480
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Confirmed'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Recovered'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Hospitalized'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Deaths'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'NewConfirmed'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'NewRecovered'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'NewHospitalized'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'NewDeaths'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'UpdateDate'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Source'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'DevBy'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'SeverBy'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 704
    Top = 296
    object FDMemTable1Confirmed: TWideStringField
      FieldName = 'Confirmed'
      Size = 255
    end
    object FDMemTable1Recovered: TWideStringField
      FieldName = 'Recovered'
      Size = 255
    end
    object FDMemTable1Hospitalized: TWideStringField
      FieldName = 'Hospitalized'
      Size = 255
    end
    object FDMemTable1Deaths: TWideStringField
      FieldName = 'Deaths'
      Size = 255
    end
    object FDMemTable1NewConfirmed: TWideStringField
      FieldName = 'NewConfirmed'
      Size = 255
    end
    object FDMemTable1NewRecovered: TWideStringField
      FieldName = 'NewRecovered'
      Size = 255
    end
    object FDMemTable1NewHospitalized: TWideStringField
      FieldName = 'NewHospitalized'
      Size = 255
    end
    object FDMemTable1NewDeaths: TWideStringField
      FieldName = 'NewDeaths'
      Size = 255
    end
    object FDMemTable1UpdateDate: TWideStringField
      FieldName = 'UpdateDate'
      Size = 255
    end
    object FDMemTable1Source: TWideStringField
      FieldName = 'Source'
      Size = 255
    end
    object FDMemTable1DevBy: TWideStringField
      FieldName = 'DevBy'
      Size = 255
    end
    object FDMemTable1SeverBy: TWideStringField
      FieldName = 'SeverBy'
      Size = 255
    end
  end
end
