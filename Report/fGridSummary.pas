unit fGridSummary;

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
  TfrmGridSummary = class(TfrmGridBaseRep)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1Date: TWideStringField;
    FDMemTable1NewConfirmed: TWideStringField;
    FDMemTable1NewRecovered: TWideStringField;
    FDMemTable1NewHospitalized: TWideStringField;
    FDMemTable1NewDeaths: TWideStringField;
    FDMemTable1Confirmed: TWideStringField;
    FDMemTable1Recovered: TWideStringField;
    FDMemTable1Hospitalized: TWideStringField;
    FDMemTable1Deaths: TWideStringField;
    cxDBTV1Date: TcxGridDBColumn;
    cxDBTV1NewConfirmed: TcxGridDBColumn;
    cxDBTV1NewRecovered: TcxGridDBColumn;
    cxDBTV1NewHospitalized: TcxGridDBColumn;
    cxDBTV1NewDeaths: TcxGridDBColumn;
    cxDBTV1Confirmed: TcxGridDBColumn;
    cxDBTV1Recovered: TcxGridDBColumn;
    cxDBTV1Hospitalized: TcxGridDBColumn;
    cxDBTV1Deaths: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridSummary: TfrmGridSummary;

implementation

{$R *.dfm}

procedure TfrmGridSummary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action:= cafree;
  frmGridSummary:= nil;
end;

end.
