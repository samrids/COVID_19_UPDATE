unit fGridCaseSum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  fGridBaseRep, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, frxClass, frxDBSet, System.ImageList, Vcl.ImgList,
  cxImageList, System.Actions, Vcl.ActnList, dxBar, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.ExtCtrls, cxContainer, cxTextEdit, cxDBEdit,
  cxCalc, dxBarBuiltInMenu, cxPC, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxGridChartView, cxGridDBChartView, cxLabel;

type
  TfrmGridCaseSum = class(TfrmGridBaseRep)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    Ds_Province: TDataSource;
    FDMemTable_Province: TFDMemTable;
    FDMemTable_Provinceprovince_name: TStringField;
    FDMemTable_Provinceavalue: TIntegerField;
    Ds_Nation: TDataSource;
    FDMemTable_Nation: TFDMemTable;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    Ds_Gender: TDataSource;
    FDMemTable_Gender: TFDMemTable;
    FDMemTable_Gendergender: TStringField;
    FDMemTable_Genderavalue: TIntegerField;
    cxDBTV1gender: TcxGridDBColumn;
    cxDBTV1avalue: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxDBTV2: TcxGridDBTableView;
    cxDBTV2province_name: TcxGridDBColumn;
    cxDBTV2avalue: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    Splitter1: TSplitter;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1province_name: TcxGridDBColumn;
    cxGrid3DBTableView1avalue: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure GenData(const isRoot: boolean; const RootStr: string;
      ADataset: TFDMemTable = nil);
  public
    { Public declarations }
  end;

var
  frmGridCaseSum: TfrmGridCaseSum;

implementation

{$R *.dfm}

procedure TfrmGridCaseSum.dxBarButton6Click(Sender: TObject);
begin
  FDMemTable_Province.DisableControls;
  try
    GenData(false, 'Province', FDMemTable_Province);
  finally
    FDMemTable_Province.First;
    FDMemTable_Province.EnableControls;
  end;
end;

procedure TfrmGridCaseSum.dxBarButton7Click(Sender: TObject);
begin
  FDMemTable_Nation.DisableControls;
  try
    GenData(false, 'Nation', FDMemTable_Nation);
  finally
    FDMemTable_Nation.First;
    FDMemTable_Nation.EnableControls;
  end;
end;

procedure TfrmGridCaseSum.dxBarButton8Click(Sender: TObject);
begin
  FDMemTable_Gender.DisableControls;
  try
    GenData(false, 'Gender', FDMemTable_Gender);
  finally
    FDMemTable_Gender.First;
    FDMemTable_Gender.EnableControls;
  end;
end;

procedure TfrmGridCaseSum.dxBarButton9Click(Sender: TObject);
begin
  GenData(true, '');
end;

procedure TfrmGridCaseSum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := cafree;
  frmGridCaseSum := nil;
end;

procedure TfrmGridCaseSum.GenData(const isRoot: boolean; const RootStr: string;
  ADataset: TFDMemTable = nil);
var
  i: integer;
begin
  if isRoot then
    RESTResponse1.RootElement := ''
  else
    RESTResponse1.RootElement := RootStr;
  RESTRequest1.Execute;
  if not isRoot then
    ADataset.Active := true
  else
    lbDescription.Caption := format('  %s',
      ['ข้อมูลสรุปจากเคส', FDMemTable1.FieldByName('UpdateDate').AsWideString]);

  if not isRoot then
  begin
    ADataset.EmptyDataSet;
    for i := 0 to pred(FDMemTable1.FieldCount) do
    begin
      ADataset.Append;
      ADataset.Fields.Fields[0].Value := FDMemTable1.Fields[i].FieldName;
      ADataset.Fields.Fields[1].Value := FDMemTable1.Fields[i].Value;
      ADataset.Post;
    end;
  end;

  { if FDMemTable1.RecordCount >= 1 then
    try
    cxDBTV1.BeginUpdate();
    cxDBTV1.ClearItems;
    for i := 0 to pred(FDMemTable1.FieldCount) do
    begin
    AColumn := cxDBTV1.CreateColumn;
    AColumn.Width := 150;
    AColumn.DataBinding.FieldName := FDMemTable1.Fields[i].FieldName;
    end;
    finally
    cxDBTV1.EndUpdate();
    end; }
end;

end.
