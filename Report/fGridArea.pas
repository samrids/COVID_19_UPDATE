unit fGridArea;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  cxLabel;

type
  TfrmGridArea = class(TfrmGridBaseRep)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1Date: TWideStringField;
    FDMemTable1Time: TWideStringField;
    FDMemTable1Detail: TWideStringField;
    FDMemTable1Location: TWideStringField;
    FDMemTable1Recommend: TWideStringField;
    FDMemTable1AnnounceBy: TWideStringField;
    FDMemTable1Province: TWideStringField;
    FDMemTable1ProvinceEn: TWideStringField;
    FDMemTable1Update: TWideStringField;
    cxDBTV1Date: TcxGridDBColumn;
    cxDBTV1Time: TcxGridDBColumn;
    cxDBTV1Detail: TcxGridDBColumn;
    cxDBTV1Location: TcxGridDBColumn;
    cxDBTV1Recommend: TcxGridDBColumn;
    cxDBTV1AnnounceBy: TcxGridDBColumn;
    cxDBTV1Province: TcxGridDBColumn;
    cxDBTV1ProvinceEn: TcxGridDBColumn;
    cxDBTV1Update: TcxGridDBColumn;
    dxBarButton6: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridArea: TfrmGridArea;

implementation

{$R *.dfm}


procedure TfrmGridArea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:= cafree;
  frmGridArea:= nil;
end;

end.
