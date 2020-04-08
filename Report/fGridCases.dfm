inherited frmGridCases: TfrmGridCases
  Caption = #3586#3657#3629#3617#3641#3621#3649#3605#3656#3621#3632#3648#3588#3626
  ClientHeight = 611
  ClientWidth = 915
  WindowState = wsMaximized
  ExplicitWidth = 931
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 19
  inherited cxGrid1: TcxGrid
    Top = 43
    Width = 915
    Height = 568
    ExplicitWidth = 915
    ExplicitHeight = 568
    inherited cxDBTV1: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
        end>
      object cxDBTV1ConfirmDate: TcxGridDBColumn
        DataBinding.FieldName = 'ConfirmDate'
        Width = 150
      end
      object cxDBTV1No: TcxGridDBColumn
        DataBinding.FieldName = 'No'
        Width = 150
      end
      object cxDBTV1Age: TcxGridDBColumn
        DataBinding.FieldName = 'Age'
        Width = 150
      end
      object cxDBTV1Gender: TcxGridDBColumn
        DataBinding.FieldName = 'Gender'
        Width = 150
      end
      object cxDBTV1GenderEn: TcxGridDBColumn
        DataBinding.FieldName = 'GenderEn'
        Width = 150
      end
      object cxDBTV1Nation: TcxGridDBColumn
        DataBinding.FieldName = 'Nation'
        Width = 150
      end
      object cxDBTV1NationEn: TcxGridDBColumn
        DataBinding.FieldName = 'NationEn'
        Width = 150
      end
      object cxDBTV1Province: TcxGridDBColumn
        DataBinding.FieldName = 'Province'
        Visible = False
        GroupIndex = 0
        Width = 150
      end
      object cxDBTV1ProvinceId: TcxGridDBColumn
        DataBinding.FieldName = 'ProvinceId'
        Width = 150
      end
      object cxDBTV1District: TcxGridDBColumn
        DataBinding.FieldName = 'District'
        Width = 150
      end
      object cxDBTV1ProvinceEn: TcxGridDBColumn
        DataBinding.FieldName = 'ProvinceEn'
        Width = 150
      end
    end
  end
  inherited lbDescription: TcxLabel
    Caption = '  '#3586#3657#3629#3617#3641#3621#3649#3605#3656#3621#3632#3648#3588#3626
    ParentColor = False
    ParentFont = False
    Style.Font.Height = -11
    Style.IsFontAssigned = True
    ExplicitWidth = 915
  end
  inherited DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 576
    Top = 280
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
    object dxBarButton6: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
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
    BaseURL = 'https://covid19.th-stat.com/api/open/cases'
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
        Name = 'ConfirmDate'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'No'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Age'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Gender'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'GenderEn'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Nation'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'NationEn'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Province'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ProvinceId'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'District'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ProvinceEn'
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
    object FDMemTable1ConfirmDate: TWideStringField
      FieldName = 'ConfirmDate'
      Size = 255
    end
    object FDMemTable1No: TWideStringField
      FieldName = 'No'
      Size = 255
    end
    object FDMemTable1Age: TWideStringField
      FieldName = 'Age'
      Size = 255
    end
    object FDMemTable1Gender: TWideStringField
      FieldName = 'Gender'
      Size = 255
    end
    object FDMemTable1GenderEn: TWideStringField
      FieldName = 'GenderEn'
      Size = 255
    end
    object FDMemTable1Nation: TWideStringField
      FieldName = 'Nation'
      Size = 255
    end
    object FDMemTable1NationEn: TWideStringField
      FieldName = 'NationEn'
      Size = 255
    end
    object FDMemTable1Province: TWideStringField
      FieldName = 'Province'
      Size = 255
    end
    object FDMemTable1ProvinceId: TWideStringField
      FieldName = 'ProvinceId'
      Size = 255
    end
    object FDMemTable1District: TWideStringField
      FieldName = 'District'
      Size = 255
    end
    object FDMemTable1ProvinceEn: TWideStringField
      FieldName = 'ProvinceEn'
      Size = 255
    end
  end
end
