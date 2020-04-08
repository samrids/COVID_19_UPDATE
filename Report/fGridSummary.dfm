inherited frmGridSummary: TfrmGridSummary
  Caption = #3586#3657#3629#3617#3641#3621#3626#3619#3640#3611#3605#3634#3617#3594#3656#3623#3591#3648#3623#3621#3634' ('#3648#3619#3636#3656#3617#3605#3633#3657#3591#3649#3605#3656#3623#3633#3609#3607#3637#3656' 01/01/20)'
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
    ExplicitWidth = 915
    ExplicitHeight = 562
    inherited cxDBTV1: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
        end>
      object cxDBTV1Date: TcxGridDBColumn
        DataBinding.FieldName = 'Date'
        Width = 150
      end
      object cxDBTV1NewConfirmed: TcxGridDBColumn
        DataBinding.FieldName = 'NewConfirmed'
        Width = 150
      end
      object cxDBTV1NewRecovered: TcxGridDBColumn
        DataBinding.FieldName = 'NewRecovered'
        Width = 150
      end
      object cxDBTV1NewHospitalized: TcxGridDBColumn
        DataBinding.FieldName = 'NewHospitalized'
        Width = 150
      end
      object cxDBTV1NewDeaths: TcxGridDBColumn
        DataBinding.FieldName = 'NewDeaths'
        Width = 150
      end
      object cxDBTV1Confirmed: TcxGridDBColumn
        DataBinding.FieldName = 'Confirmed'
        Width = 150
      end
      object cxDBTV1Recovered: TcxGridDBColumn
        DataBinding.FieldName = 'Recovered'
        Width = 150
      end
      object cxDBTV1Hospitalized: TcxGridDBColumn
        DataBinding.FieldName = 'Hospitalized'
        Width = 150
      end
      object cxDBTV1Deaths: TcxGridDBColumn
        DataBinding.FieldName = 'Deaths'
        Width = 150
      end
    end
  end
  inherited lbDescription: TcxLabel
    Caption = '  '#3586#3657#3629#3617#3641#3621#3626#3619#3640#3611#3605#3634#3617#3594#3656#3623#3591#3648#3623#3621#3634' ('#3648#3619#3636#3656#3617#3605#3633#3657#3591#3649#3605#3656#3623#3633#3609#3607#3637#3656' 01/01/20)'
    ExplicitWidth = 915
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
    BaseURL = 'https://covid19.th-stat.com/api/open/timeline'
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
    RootElement = 'Data'
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
        Name = 'Date'
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
    object FDMemTable1Date: TWideStringField
      FieldName = 'Date'
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
  end
end
