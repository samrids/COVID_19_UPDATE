unit fGridBaseRep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Comp.Client,
  cxFindPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, frxClass, frxDBSet, System.ImageList, Vcl.ImgList,
  cxImageList, System.Actions, Vcl.ActnList, dxBar, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxContainer, cxLabel;

type
  TfrmGridBaseRep = class(TForm)
    cxGrid1: TcxGrid;
    cxDBTV1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarButtonNew: TdxBarButton;
    dxBarButtonDelete: TdxBarButton;
    dxBarButtonPrint: TdxBarButton;
    dxBarButtonClose: TdxBarButton;
    dxBarButtonDesign: TdxBarButton;
    dxBarButtonRefresh: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButtonExport: TdxBarButton;
    dxBarButton3: TdxBarButton;
    ActionList1: TActionList;
    Print_Action: TAction;
    Design_Action: TAction;
    Close_Action: TAction;
    Refresh_Action: TAction;
    Export_Action: TAction;
    ActionFind: TAction;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    FindPanel_cxStyle: TcxStyle;
    HilightRow_cxStyle: TcxStyle;
    SaveDialog1: TSaveDialog;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    lbDescription: TcxLabel;
    procedure ActionFindExecute(Sender: TObject);
    procedure Print_ActionExecute(Sender: TObject);
    procedure Design_ActionExecute(Sender: TObject);
    procedure Close_ActionExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FExportFileName: string;
    FReportFileName: string;
    procedure GetReportFileName(const Value: string);
  public
    { Public declarations }
    property ExportFileName: string read FExportFileName write FExportFileName;
    property ReportFileName: string read FReportFileName
      write GetReportFileName;
  end;

var
  frmGridBaseRep: TfrmGridBaseRep;

implementation

{$R *.dfm}

procedure TfrmGridBaseRep.ActionFindExecute(Sender: TObject);
begin
  if cxDBTV1.findPanel.DisplayMode = fpdmNever then
    cxDBTV1.findPanel.DisplayMode := fpdmAlways
  else
    cxDBTV1.findPanel.DisplayMode := fpdmNever;
end;

procedure TfrmGridBaseRep.Close_ActionExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmGridBaseRep.Design_ActionExecute(Sender: TObject);
var
  RepPath: string;
begin
  RepPath := ExtractFilePath(Paramstr(0)) + 'Reports\Base\' + ReportFileName;
  frxReport1.LoadFromFile(RepPath);
  frxReport1.DesignReport;
end;

procedure TfrmGridBaseRep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmGridBaseRep.FormCreate(Sender: TObject);
begin
  lbDescription.Style.TextColor := RootLookAndFeel.Painter.DefaultContentTextColor;
  lbDescription.Style.Color     := RootLookAndFeel.Painter.DefaultContentColor;
  lbDescription.Style.Font.Style :=  [fsBold];
  lbDescription.Style.Font.Size := 12;
  lbDescription.AutoSize := true;
end;

procedure TfrmGridBaseRep.GetReportFileName(const Value: string);
begin
  FReportFileName := Value;
end;

procedure TfrmGridBaseRep.Print_ActionExecute(Sender: TObject);
var
  RepPath: string;
begin
  RepPath := ExtractFilePath(Paramstr(0)) + 'Reports\Base\' + ReportFileName;
  if FileExists(RepPath) then
  begin
    Showmessage('Found');
  end;
end;

end.
