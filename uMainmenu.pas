unit uMainmenu;
{$DEFINE DEBUGMODE}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC,
  dxNavBarCollns, dxNavBarBase, dxBar, cxClasses, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdActns, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  System.ImageList, Vcl.ImgList, cxImageList, dxSkinsForm, dxNavBar,
  dxRibbonForm,
  dxDockPanel, dxDockControl, dxStatusBar, dxRibbonStatusBar, dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TfrmMainMenu = class(TdxRibbonForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    Small_cxImageList: TcxImageList;
    ActionManager1: TActionManager;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel1: TdxDockPanel;
    dxNavBar1: TdxNavBar;
    Large_cxImageList: TcxImageList;
    Disable_cxImageList: TcxImageList;
    MainMenu1: TMainMenu;
    View1: TMenuItem;
    DefaultToolbar1: TMenuItem;
    ShowHideMenupanel1: TMenuItem;
    ListWindowsToolbar1: TMenuItem;
    Windows1: TMenuItem;
    User1: TMenuItem;
    Logoff1: TMenuItem;
    mnuHelp: TMenuItem;
    About1: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarMainToolbars: TdxBar;
    dxBarWindowsForm: TdxBar;
    WindowClose1: TWindowClose;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    dxNavBar1Group1: TdxNavBarGroup;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Image1: TImage;
    dxBarButton5: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure dxDockPanel1Close(Sender: TdxCustomDockControl);
    procedure dxDockPanel1Docking(Sender: TdxCustomDockControl; Zone: TdxZone;
      X, Y: Integer; var Accept: Boolean);
    procedure dxDockPanel1EndDocking(Sender: TdxCustomDockControl;
      Zone: TdxZone; X, Y: Integer);
    procedure dxDockPanel1StartDocking(Sender: TdxCustomDockControl;
      X, Y: Integer);
    procedure DefaultToolbar1Click(Sender: TObject);
    procedure ShowHideMenupanel1Click(Sender: TObject);
    procedure ListWindowsToolbar1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    fSpeedButtonCount: Integer;
    FUserName: string;
    FLevel: Byte; // 0=Geust, 1=Normal, 2=Power User, 3=Admin, 99 SuperAdmin
    FLoginPass: Boolean;
    FLoginId: Integer;

    procedure CreateSpeedButton(const fAction: TAction; var Reference);
    procedure doDecreaseSpeedButtonCount;

  public
    { Public declarations }
    procedure RemoveSpeedButton(fFormTagNo: Integer);
    procedure BuildLookAndFeelMenu; virtual;

    property UserName: string read FUserName write FUserName;
    property Level: Byte read FLevel write FLevel;
    property LoginPass: Boolean read FLoginPass write FLoginPass;
    property LoginId: Integer read FLoginId write FLoginId;

    procedure AfterConstruction; override;
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}

uses
  AwSkinUtils, fGridDiaryUpdate, fGridCases,
  fGridSummary, fGridCaseSum,
  fGridArea;

{ frmMainMenu }

procedure TfrmMainMenu.Action1Execute(Sender: TObject);
begin
  if frmGridDiaryUpdate = nil then
  begin
    frmGridDiaryUpdate := tfrmGridDiaryUpdate.create(application);
    frmGridDiaryUpdate.RESTRequest1.Execute;
  end
  else
    frmGridDiaryUpdate.Show;
end;

procedure TfrmMainMenu.Action2Execute(Sender: TObject);
begin
  if frmGridSummary = nil then
  begin
    frmGridSummary := TfrmGridSummary.create(application);
    frmGridSummary.RESTRequest1.Execute;
  end
  else
    frmGridSummary.Show;
end;

procedure TfrmMainMenu.Action3Execute(Sender: TObject);
begin
  if frmGridCases = nil then
  begin
    frmGridCases := TfrmGridCases.create(application);
    frmGridCases.RESTRequest1.Execute;
  end
  else
    frmGridCases.Show;
end;

procedure TfrmMainMenu.Action4Execute(Sender: TObject);
begin
  if frmGridCaseSum = nil then
  begin
    frmGridCaseSum := TfrmGridCaseSum.create(application);

    frmGridCaseSum.dxBarButton9.Click;
    frmGridCaseSum.dxBarButton6.Click;
    frmGridCaseSum.dxBarButton7.Click;
    frmGridCaseSum.dxBarButton8.Click;
  end
  else
    frmGridCaseSum.Show;
end;

procedure TfrmMainMenu.Action5Execute(Sender: TObject);
begin
  if frmGridArea = nil then
  begin
    frmGridArea := TfrmGridArea.create(application);
    frmGridArea.RESTRequest1.Execute;
  end
  else
    frmGridArea.Show;
end;

procedure TfrmMainMenu.AfterConstruction;
begin
  BuildLookAndFeelMenu;
  // dxBarConvertMainMenu(main);
  // InitdxNavBar;
  inherited AfterConstruction;
end;

procedure TfrmMainMenu.BuildLookAndFeelMenu;
begin
  AwSkinUtils.SetdxNavbar(dxNavBar1);
  MainMenu1.Items.Insert(MainMenu1.Items.IndexOf(mnuHelp),
    CreateLookAndFeelMenuItems(MainMenu1.Items
{$IFNDEF EXPRESSBARS}, TActionList.create(Self) {$ENDIF}));
end;

procedure TfrmMainMenu.doDecreaseSpeedButtonCount;
begin
  Dec(fSpeedButtonCount)
end;

procedure TfrmMainMenu.DefaultToolbar1Click(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not(Sender as TMenuItem).Checked;
  dxBarMainToolbars.Visible := (Sender as TMenuItem).Checked;
end;

procedure TfrmMainMenu.dxDockPanel1Close(Sender: TdxCustomDockControl);
begin
  dxDockSite1.Visible := False;
  dxDockPanel1.Visible := False;
  ShowHideMenupanel1.Checked := False;
end;

procedure TfrmMainMenu.dxDockPanel1Docking(Sender: TdxCustomDockControl;
  Zone: TdxZone; X, Y: Integer; var Accept: Boolean);
begin
  if (dxDockSite1.DockState = dsHidden) then
    dxDockSite1.Visible := true;
end;

procedure TfrmMainMenu.dxDockPanel1EndDocking(Sender: TdxCustomDockControl;
  Zone: TdxZone; X, Y: Integer);
begin
  case dxDockPanel1.DockState of
    dsDocked:
      dxDockSite1.Visible := true;
    dsUndocked:
      dxDockSite1.Close;
    dsHidden:
      dxDockSite1.Close;
    dsFloating:
      dxDockSite1.Close;
  end;
end;

procedure TfrmMainMenu.dxDockPanel1StartDocking(Sender: TdxCustomDockControl;
  X, Y: Integer);
begin
  if (dxDockSite1.DockState = dsHidden) then
    dxDockSite1.Visible := true;
end;

procedure TfrmMainMenu.CreateSpeedButton(const fAction: TAction; var Reference);
var
  ABarButton: TdxBarButton;
  AMenu: TMenuItem;
  TableStr: string;
begin
  TForm(Reference).Tag := fAction.Tag;
  Inc(fSpeedButtonCount);

  ABarButton := dxBarManager1.AddButton;
  ABarButton.Action := fAction;
  ABarButton.Visible := ivAlways;
  ABarButton.PaintStyle := psCaptionGlyph;
  dxBarWindowsForm.ItemLinks.Add(ABarButton);

  AMenu := TMenuItem.create(Self);

  Windows1.Add(AMenu);
  AMenu.Action := fAction;

end;

procedure TfrmMainMenu.FormCreate(Sender: TObject);
begin
  DisableAero := true;

  fSpeedButtonCount := 0;

end;

procedure TfrmMainMenu.FormResize(Sender: TObject);
begin
  if dxDockSite1.Visible then
    Image1.Left := ((Self.Width + dxDockPanel1.Width) div 2) - Image1.Width
  else
    Image1.Left := (Self.Width div 2) - Image1.Width;
  Image1.Top := (Self.Height div 2) - Image1.Height;
end;

procedure TfrmMainMenu.ListWindowsToolbar1Click(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not(Sender as TMenuItem).Checked;
  dxBarWindowsForm.Visible := (Sender as TMenuItem).Checked;
end;

procedure TfrmMainMenu.RemoveSpeedButton(fFormTagNo: Integer);
var
  i: Integer;
begin
  for i := Self.dxBarWindowsForm.ItemLinks.Count - 1 downto 0 do
  begin
    if fFormTagNo = Self.dxBarWindowsForm.ItemLinks[i].Item.Action.Tag then
    begin
      Self.dxBarWindowsForm.ItemLinks[i].Item.Free;
      Windows1.Items[i].Free;
      doDecreaseSpeedButtonCount;
      break;
    end;
  end;
end;

procedure TfrmMainMenu.ShowHideMenupanel1Click(Sender: TObject);
begin
  dxDockSite1.Visible := not dxDockSite1.Visible;

  case dxDockPanel1.DockState of
    dsHidden:
      begin
        dxDockSite1.Visible := true;
        dxDockPanel1.Visible := true;
        dxDockPanel1.DockTo(dxDockSite1, dtClient, 0);
      end;
    dsFloating:
      dxDockSite1.Visible := true;
  end;

  (Sender as TMenuItem).Checked := not(Sender as TMenuItem).Checked;
  dxDockSite1.Visible := (Sender as TMenuItem).Checked;
end;

end.
