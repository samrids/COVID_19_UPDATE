unit fGridDiaryUpdate;

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
  TfrmGridDiaryUpdate = class(TfrmGridBaseRep)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1Confirmed: TWideStringField;
    FDMemTable1Recovered: TWideStringField;
    FDMemTable1Hospitalized: TWideStringField;
    FDMemTable1Deaths: TWideStringField;
    FDMemTable1NewConfirmed: TWideStringField;
    FDMemTable1NewRecovered: TWideStringField;
    FDMemTable1NewHospitalized: TWideStringField;
    FDMemTable1NewDeaths: TWideStringField;
    FDMemTable1UpdateDate: TWideStringField;
    FDMemTable1Source: TWideStringField;
    FDMemTable1DevBy: TWideStringField;
    FDMemTable1SeverBy: TWideStringField;
    cxDBTV1Confirmed: TcxGridDBColumn;
    cxDBTV1Recovered: TcxGridDBColumn;
    cxDBTV1Hospitalized: TcxGridDBColumn;
    cxDBTV1Deaths: TcxGridDBColumn;
    cxDBTV1NewConfirmed: TcxGridDBColumn;
    cxDBTV1NewRecovered: TcxGridDBColumn;
    cxDBTV1NewHospitalized: TcxGridDBColumn;
    cxDBTV1NewDeaths: TcxGridDBColumn;
    cxDBTV1UpdateDate: TcxGridDBColumn;
    cxDBTV1Source: TcxGridDBColumn;
    cxDBTV1DevBy: TcxGridDBColumn;
    cxDBTV1SeverBy: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridDiaryUpdate: TfrmGridDiaryUpdate;

implementation

{$R *.dfm}

procedure TfrmGridDiaryUpdate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action:= cafree;
  frmGridDiaryUpdate:= nil;
end;

end.
