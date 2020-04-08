unit fGridCases;

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
  cxLabel;

type
  TfrmGridCases = class(TfrmGridBaseRep)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1ConfirmDate: TWideStringField;
    FDMemTable1No: TWideStringField;
    FDMemTable1Age: TWideStringField;
    FDMemTable1Gender: TWideStringField;
    FDMemTable1GenderEn: TWideStringField;
    FDMemTable1Nation: TWideStringField;
    FDMemTable1NationEn: TWideStringField;
    FDMemTable1Province: TWideStringField;
    FDMemTable1ProvinceId: TWideStringField;
    FDMemTable1District: TWideStringField;
    FDMemTable1ProvinceEn: TWideStringField;
    cxDBTV1ConfirmDate: TcxGridDBColumn;
    cxDBTV1No: TcxGridDBColumn;
    cxDBTV1Age: TcxGridDBColumn;
    cxDBTV1Gender: TcxGridDBColumn;
    cxDBTV1GenderEn: TcxGridDBColumn;
    cxDBTV1Nation: TcxGridDBColumn;
    cxDBTV1NationEn: TcxGridDBColumn;
    cxDBTV1Province: TcxGridDBColumn;
    cxDBTV1ProvinceId: TcxGridDBColumn;
    cxDBTV1District: TcxGridDBColumn;
    cxDBTV1ProvinceEn: TcxGridDBColumn;
    dxBarButton6: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridCases: TfrmGridCases;

implementation

uses
  dxSkinsLookAndFeelPainter,
  dxSkinsCore;
{$R *.dfm}

procedure TfrmGridCases.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := cafree;
  frmGridCases := nil;
end;

end.
