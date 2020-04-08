inherited frmGridArea: TfrmGridArea
  Caption = #3649#3592#3657#3591#3648#3605#3639#3629#3609#3614#3639#3657#3609#3607#3637#3656#3605#3634#3617#3588#3635#3611#3619#3632#3585#3634#3624
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
        Width = 160
      end
      object cxDBTV1Time: TcxGridDBColumn
        DataBinding.FieldName = 'Time'
        Width = 160
      end
      object cxDBTV1Detail: TcxGridDBColumn
        DataBinding.FieldName = 'Detail'
        Width = 160
      end
      object cxDBTV1Location: TcxGridDBColumn
        DataBinding.FieldName = 'Location'
        Width = 160
      end
      object cxDBTV1Recommend: TcxGridDBColumn
        DataBinding.FieldName = 'Recommend'
        Width = 160
      end
      object cxDBTV1AnnounceBy: TcxGridDBColumn
        DataBinding.FieldName = 'AnnounceBy'
        Width = 160
      end
      object cxDBTV1Province: TcxGridDBColumn
        DataBinding.FieldName = 'Province'
        Width = 160
      end
      object cxDBTV1ProvinceEn: TcxGridDBColumn
        DataBinding.FieldName = 'ProvinceEn'
        Width = 160
      end
      object cxDBTV1Update: TcxGridDBColumn
        DataBinding.FieldName = 'Update'
        Width = 160
      end
    end
  end
  inherited lbDescription: TcxLabel
    Caption = '  '#3649#3592#3657#3591#3648#3605#3639#3629#3609#3614#3639#3657#3609#3607#3637#3656#3605#3634#3617#3588#3635#3611#3619#3632#3585#3634#3624
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
    BaseURL = 'https://covid19.th-stat.com/api/open/area'
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
        Name = 'Time'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Detail'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Location'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Recommend'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'AnnounceBy'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Province'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ProvinceEn'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Update'
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
    object FDMemTable1Time: TWideStringField
      FieldName = 'Time'
      Size = 255
    end
    object FDMemTable1Detail: TWideStringField
      FieldName = 'Detail'
      Size = 255
    end
    object FDMemTable1Location: TWideStringField
      FieldName = 'Location'
      Size = 255
    end
    object FDMemTable1Recommend: TWideStringField
      FieldName = 'Recommend'
      Size = 255
    end
    object FDMemTable1AnnounceBy: TWideStringField
      FieldName = 'AnnounceBy'
      Size = 255
    end
    object FDMemTable1Province: TWideStringField
      FieldName = 'Province'
      Size = 255
    end
    object FDMemTable1ProvinceEn: TWideStringField
      FieldName = 'ProvinceEn'
      Size = 255
    end
    object FDMemTable1Update: TWideStringField
      FieldName = 'Update'
      Size = 255
    end
  end
end
