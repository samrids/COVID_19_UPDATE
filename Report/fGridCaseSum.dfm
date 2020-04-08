inherited frmGridCaseSum: TfrmGridCaseSum
  Caption = #3649#3592#3657#3591#3648#3605#3639#3629#3609#3614#3639#3657#3609#3607#3637#3656#3605#3634#3617#3588#3635#3611#3619#3632#3585#3634#3624
  ClientHeight = 611
  ClientWidth = 915
  WindowState = wsMaximized
  ExplicitWidth = 931
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 19
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 282
    Width = 915
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 329
  end
  inherited cxGrid1: TcxGrid
    Width = 915
    Height = 233
    Align = alTop
    TabOrder = 5
    ExplicitWidth = 562
    ExplicitHeight = 233
    inherited cxDBTV1: TcxGridDBTableView
      DataController.DataSource = Ds_Gender
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'avalue'
          Column = cxDBTV1avalue
        end>
      OptionsView.GroupByBox = False
      object cxDBTV1gender: TcxGridDBColumn
        Caption = #3648#3614#3624
        DataBinding.FieldName = 'gender'
        Width = 100
      end
      object cxDBTV1avalue: TcxGridDBColumn
        Caption = #3592#3635#3609#3623#3609
        DataBinding.FieldName = 'avalue'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
      end
    end
  end
  object cxPageControl1: TcxPageControl [2]
    Left = 0
    Top = 285
    Width = 915
    Height = 326
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 236
    ExplicitTop = 49
    ExplicitWidth = 679
    ExplicitHeight = 562
    ClientRectBottom = 325
    ClientRectLeft = 1
    ClientRectRight = 914
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'Nation'
      ImageIndex = 0
      ExplicitWidth = 677
      ExplicitHeight = 534
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 913
        Height = 298
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 677
        ExplicitHeight = 534
        object cxDBTV2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = Ds_Nation
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'avalue'
              Column = cxDBTV2avalue
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxDBTV2province_name: TcxGridDBColumn
            AlternateCaption = 'Nation'
            Caption = #3611#3619#3632#3648#3607#3624
            DataBinding.FieldName = 'province_name'
            Width = 100
          end
          object cxDBTV2avalue: TcxGridDBColumn
            Caption = #3592#3635#3609#3623#3609
            DataBinding.FieldName = 'avalue'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0'
            HeaderAlignmentHorz = taRightJustify
            Width = 100
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxDBTV2
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Province'
      ImageIndex = 1
      ExplicitWidth = 677
      ExplicitHeight = 534
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 913
        Height = 298
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 677
        ExplicitHeight = 534
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = Ds_Province
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'avalue'
              Column = cxGrid3DBTableView1avalue
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxGrid3DBTableView1province_name: TcxGridDBColumn
            Caption = #3592#3633#3591#3627#3623#3633#3604
            DataBinding.FieldName = 'province_name'
            Width = 200
          end
          object cxGrid3DBTableView1avalue: TcxGridDBColumn
            Caption = #3592#3635#3609#3623#3609
            DataBinding.FieldName = 'avalue'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0'
            HeaderAlignmentHorz = taRightJustify
            Width = 200
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
  end
  inherited lbDescription: TcxLabel
    Caption = '  '#3649#3592#3657#3591#3648#3605#3639#3629#3609#3614#3639#3657#3609#3607#3637#3656#3605#3634#3617#3588#3635#3611#3619#3632#3585#3634#3624
    ExplicitWidth = 915
  end
  inherited DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 632
    Top = 264
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonDesign'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonExport'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonClose'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Province'
      Category = 0
      Hint = 'Province'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Nation'
      Category = 0
      Hint = 'Nation'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Gender'
      Category = 0
      Hint = 'Gender'
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = 'All'
      Category = 0
      Hint = 'All'
      Visible = ivAlways
      OnClick = dxBarButton9Click
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
    BaseURL = 'https://covid19.th-stat.com/api/open/cases/sum'
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
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 352
    Top = 480
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <
      item
        Name = 'Province'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Nation'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Gender'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'LastData'
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
  end
  object Ds_Province: TDataSource
    DataSet = FDMemTable_Province
    Left = 776
    Top = 136
  end
  object FDMemTable_Province: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 776
    Top = 192
    object FDMemTable_Provinceprovince_name: TStringField
      DisplayLabel = 'province'
      FieldName = 'province_name'
      Size = 80
    end
    object FDMemTable_Provinceavalue: TIntegerField
      FieldName = 'avalue'
    end
  end
  object Ds_Nation: TDataSource
    DataSet = FDMemTable_Nation
    Left = 464
    Top = 160
  end
  object FDMemTable_Nation: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 464
    Top = 216
    object StringField1: TStringField
      DisplayLabel = 'province'
      FieldName = 'province_name'
      Size = 80
    end
    object IntegerField1: TIntegerField
      FieldName = 'avalue'
    end
  end
  object Ds_Gender: TDataSource
    DataSet = FDMemTable_Gender
    Left = 56
    Top = 216
  end
  object FDMemTable_Gender: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 56
    Top = 272
    object FDMemTable_Gendergender: TStringField
      FieldName = 'gender'
      Size = 30
    end
    object FDMemTable_Genderavalue: TIntegerField
      FieldName = 'avalue'
    end
  end
end
