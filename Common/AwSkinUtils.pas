unit AwSkinUtils;

{$I cxVer.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, {$IFDEF DELPHI17} Actions, {$ENDIF}
  dxNavBar,
  Inifiles,
  Dialogs, ActnList, Menus, cxLookAndFeels;

type
  TdxWebPageType = (wpMain, wpClienCenter, wpDownloads, wpProducts, wpSupport);

const
//  sdxDefaultSkinName = 'Office2013White';
  sdxDefaultSkinName = 'Seven';

type
  TcxLookAndFeelClickController = class
  private
    procedure LookAndFeelHandler(Sender: TObject);
  end;

procedure dxCheckedItemByTag(AParent: TObject; ATag: Integer); overload;
procedure dxCheckedItemByTag(AMenu: TMainMenu; const AMenuItemName: string; ATag: Integer); overload;
function dxIsMenuChecked(Sender: TObject): Boolean;
function dxFindMenuItem(AMenu: TMainMenu; const AMenuItemName: string): TObject;
procedure dxMenuItemSetChecked(Sender: TObject; AChecked: Boolean);
procedure dxMenuItemSetEnabled(Sender: TObject; AEnabled: Boolean);
procedure dxMenuItemSetVisible(Sender: TObject; AVisible: Boolean); overload;
procedure dxMenuItemSetVisible(AMenu: TMainMenu; const AMenuItemName: string; AVisible: Boolean); overload;

procedure SetdxNavbar(AdxNavBar: TdxNavBar);
procedure HandleNavbar;
function CreateLookAndFeelMenuItems(AOwner: TComponent; AActionList: TActionList = nil; AGroupIndex: Integer = 1): TMenuItem;
procedure dxBarConvertMainMenu(AMenu: TMainMenu);
function dxLookAndFeelController: TcxLookAndFeelController;
procedure HandleLookAndFeelChangeCommand(ASender: TObject; ALookAndFeelController: TcxLookAndFeelController);

implementation

uses
{$IFDEF EXPRESSSKINS}
  {$I dxSkins.inc}
  dxSkinsStrs, dxSkinsForm, dxSkinInfo,
  {$IFDEF EXPRESSPAGECONTROL}
    dxSkinscxPCPainter,
  {$ENDIF}
  {$IFDEF EXPRESSBARS}
    dxSkinsdxBarPainter,
    dxSkinsdxStatusBarPainter,
    {$IFDEF EXPRESSPAGECONTROL}
      dxBarSkinnedCustForm,
    {$ENDIF}
  {$ENDIF}
{$ENDIF}
{$IFDEF EXPRESSBARS}
  dxBar,
{$ENDIF}
  cxLookAndFeelPainters, dxGDIPlusAPI, cxClasses, dxCore;

var
  FLookAndFeelClickController: TcxLookAndFeelClickController;
  FLookAndFeelController: TcxLookAndFeelController;
  FdxNavBar: TdxNavBar; //samrids
  FSkinNames: TStringList;
  FSkinResources: TStringList;
{$IFDEF EXPRESSBARS}
  FBarManager: TdxBarManager;
{$ENDIF}
  FLevelGroupIndex: Integer = 200;

procedure PopulateSkinNames;
{$IFDEF EXPRESSSKINS}

  procedure PopulateSkinNamesByResources;
  var
    I: Integer;
  begin
    FSkinResources := TStringList.Create;
    dxSkinsPopulateSkinResources(HInstance, FSkinResources, FSkinNames);
    for I := 0 to FSkinNames.Count - 1 do
      if SameText(FSkinNames[I], sdxDefaultUserSkinData) then
      begin
        FSkinNames.Delete(I);
        Break;
      end;
  end;

  procedure PopulateSkinNamesByExtendedPainters;
  var
    I: Integer;
  begin
    for I := 0 to cxLookAndFeelPaintersManager.Count - 1 do
    begin
      if cxLookAndFeelPaintersManager[I].LookAndFeelStyle = lfsSkin then
	  begin
	    if not cxLookAndFeelPaintersManager[I].IsInternalPainter then
          FSkinNames.Add(cxLookAndFeelPaintersManager[I].LookAndFeelName);
      end;
    end;
  end;

{$ENDIF}
begin
  if FSkinNames = nil then
  begin
    FSkinNames := TStringList.Create;
{$IFDEF EXPRESSSKINS}
  {$IFDEF DXSKINDYNAMICLOADING}
    PopulateSkinNamesByResources;
  {$ELSE}
    PopulateSkinNamesByExtendedPainters;
  {$ENDIF}
{$ENDIF}
  end;
end;

procedure SetdxNavbar(AdxNavBar: TdxNavBar);
begin
  FdxNavBar := AdxNavBar;
end;

procedure HandleNavbar;
begin
  with FdxNavBar.DefaultStyles do
  begin
    // GroupHeader.Font.Name := 'Kanit';
    GroupHeader.Font.Style := [fsBold];
    GroupHeader.Font.Size := 12;
    //GroupHeader.Font.Color := clBlack;

    // Item.Font.Name := 'Kanit';
    Item.Font.Style := [];
    Item.Font.Size := 11;
    //Item.Font.Color := clBlack;

   // ItemHotTracked.Font.Color := clBlue;
    ItemHotTracked.Font.Style := [fsBold]; // fsUnderline

    //ItemPressed.Font.Color := clBlue; // ClBlue;
    ItemPressed.Font.Style := [fsUnderline];
  end;
end;

procedure HandleLookAndFeelChangeCommand(ASender: TObject; ALookAndFeelController: TcxLookAndFeelController);
var
  Aw1: TIniFile;
begin
  Aw1:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'AppConf.ini');
  try
    case TComponent(ASender).Tag of
      0..3:
        begin
          ALookAndFeelController.SkinName := '';
          ALookAndFeelController.Kind := TcxLookAndFeelKind(TComponent(ASender).Tag);
          ALookAndFeelController.NativeStyle := False;
        end;
      4:
        begin
          ALookAndFeelController.SkinName := '';
          ALookAndFeelController.NativeStyle := True;
        end;
    else
    {$IFNDEF EXPRESSBARS}
      TMenuItem(ASender).Parent.Checked := True;
    {$ENDIF}
      ALookAndFeelController.NativeStyle := False;
      ALookAndFeelController.SkinName := FSkinNames[TComponent(ASender).Tag - 5];
    end;
    Aw1.WriteInteger('AppData', 'DefaultSkinIdx',TComponent(ASender).tag);
  finally
    Aw1.Free;
  end;
end;

function dxGetMenuItemAction(AItem: TMenuItem): TAction;
begin
  Result := TAction(AItem.Action);
end;

procedure dxMenuItemSetChecked(Sender: TObject; AChecked: Boolean);
{$IFNDEF EXPRESSBARS}
var
  AMenuItem: TMenuItem;
{$ENDIF}
begin
{$IFDEF EXPRESSBARS}
  (Sender as TdxBarButton).Down := AChecked;
{$ELSE}
  AMenuItem := Sender as TMenuItem;
  if AMenuItem.Action = nil then
    AMenuItem.Checked := AChecked
  else
    dxGetMenuItemAction(AMenuItem).Checked := AChecked;
{$ENDIF}
end;

procedure dxCheckedItemByTag(AMenu: TMainMenu; const AMenuItemName: string; ATag: Integer);
var
  AMenuItem: TObject;
begin
  AMenuItem := dxFindMenuItem(AMenu, AMenuItemName);
  if AMenuItem <> nil then
    dxCheckedItemByTag(AMenuItem, ATag);
end;

procedure dxMenuItemSetEnabled(Sender: TObject; AEnabled: Boolean);
{$IFNDEF EXPRESSBARS}
var
  AMenuItem: TMenuItem;
{$ENDIF}
begin
{$IFDEF EXPRESSBARS}
  (Sender as TdxBarButton).Enabled := AEnabled;
{$ELSE}
  AMenuItem := Sender as TMenuItem;
  if AMenuItem.Action = nil then
    AMenuItem.Enabled := AEnabled
  else
    dxGetMenuItemAction(AMenuItem).Enabled := AEnabled;
{$ENDIF}
end;

procedure dxMenuItemSetVisible(Sender: TObject; AVisible: Boolean);
{$IFDEF EXPRESSBARS}
const
  BarVisibility: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
{$ELSE}
var
  AMenuItem: TMenuItem;
{$ENDIF}
begin
{$IFDEF EXPRESSBARS}
  (Sender as TdxBarItem).Visible := BarVisibility[AVisible];
{$ELSE}
  AMenuItem := Sender as TMenuItem;
  if AMenuItem.Action = nil then
    AMenuItem.Visible := AVisible
  else
    dxGetMenuItemAction(AMenuItem).Visible := AVisible;
{$ENDIF}
end;

procedure dxMenuItemSetVisible(AMenu: TMainMenu; const AMenuItemName: string; AVisible: Boolean);
var
  AMenuItem: TObject;
begin
  AMenuItem := dxFindMenuItem(AMenu, AMenuItemName);
  if AMenuItem <> nil then
    dxMenuItemSetVisible(AMenuItem, AVisible);
end;

procedure dxCheckedItemByTag(AParent: TObject; ATag: Integer);
var
  I: Integer;
  AComponent: TComponent;
begin
{$IFDEF EXPRESSBARS}
  for I := 0 to TdxBarSubItem(AParent).ItemLinks.Count - 1 do
  begin
    AComponent := TdxBarSubItem(AParent).ItemLinks[I].Item;
{$ELSE}
  for I := 0 to TMenuItem(AParent).Count - 1 do
  begin
    AComponent := TMenuItem(AParent).Items[I];
{$ENDIF}
    dxMenuItemSetChecked(AComponent, AComponent.Tag = ATag);
  end;
end;

function dxIsMenuChecked(Sender: TObject): Boolean;
{$IFNDEF EXPRESSBARS}
var
  AMenuItem: TMenuItem;
{$ENDIF}
begin
{$IFDEF EXPRESSBARS}
  Result := (Sender as TdxBarButton).Down;
{$ELSE}
  AMenuItem := Sender as TMenuItem;
  if AMenuItem.Action = nil then
    Result := AMenuItem.Checked
  else
    Result := dxGetMenuItemAction(AMenuItem).Checked;
{$ENDIF}
end;

function dxFindMenuItem(AMenu: TMainMenu; const AMenuItemName: string): TObject;
{$IFNDEF EXPRESSBARS}

  function FindMenuItem(AParent: TMenuItem): TObject;
  var
    I: Integer;
  begin
    Result := nil;
    if SameText(AParent.Name, AMenuItemName) then
      Result := AParent
    else
      for I := 0 to AParent.Count - 1 do
      begin
        Result := FindMenuItem(AParent[I]);
        if Result <> nil then
          Break;
      end;
  end;

begin
  Result := FindMenuItem(AMenu.Items);
end;

{$ELSE}

var
  I: Integer;
begin
  Result := nil;
  if FBarManager <> nil then
  begin
    for I := 0 to FBarManager.ItemCount - 1 do
      if SameText(FBarManager.Items[I].Name, AMenuItemName) then
      begin
        Result := FBarManager.Items[I];
        Break;
      end;
  end;
end;
{$ENDIF}

function CreateLookAndFeelMenuItems(AOwner: TComponent; AActionList: TActionList = nil; AGroupIndex: Integer = 1): TMenuItem;
var
  AParent: TMenuItem;
  I: Integer;
  ADefaultSkinIdx,
   BDefaultSkinIdx: Integer;
  function AddMenuItem(AParent: TMenuItem; ACaption: string; ATag: Integer): TMenuItem;

    function IsChecked: Boolean;
    begin
      Result := FLookAndFeelController.NativeStyle and (ATag = 4) or
          not FLookAndFeelController.NativeStyle and (Ord(FLookAndFeelController.Kind) = ATag)
    end;

  var
    AAction: TAction;
  begin
    Result := TMenuItem.Create(AParent);
    if (AActionList = nil) or (ATag < 0) then
    begin
      Result.Caption := ACaption;
      Result.RadioItem := True;
      Result.GroupIndex := AGroupIndex;
      Result.Tag := ATag;
      Result.Checked := IsChecked;
      if ATag >= 0 then
      begin
        Result.AutoCheck := True;
        Result.OnClick := FLookAndFeelClickController.LookAndFeelHandler;
      end;
    end
    else
    begin
      AAction := TAction.Create(AActionList.Owner);
      AAction.ActionList := AActionList;
      AAction.Caption := ACaption;
      AAction.GroupIndex := AGroupIndex;
      AAction.Tag := ATag;
      AAction.Checked := IsChecked;
      AAction.AutoCheck := True;
      AAction.OnExecute := FLookAndFeelClickController.LookAndFeelHandler;
      Result.Action := AAction;
    end;
    AParent.Add(Result);
  end;

var
  AMenuItem: TMenuItem;
  Aw1: TIniFile;
begin
  if FLookAndFeelClickController = nil then
    FLookAndFeelClickController := TcxLookAndFeelClickController.Create;
  Result := TMenuItem.Create(AOwner);
  Result.Caption := '&Look&&Feel';
  AddMenuItem(Result, '&Flat', 0);
  AddMenuItem(Result, '&Standard', 1);
  AddMenuItem(Result, '&UltraFlat', 2);
  AddMenuItem(Result, '&Office11', 3);
  AddMenuItem(Result, '&Native', 4);
  PopulateSkinNames;
  if FSkinNames.Count > 0 then
  begin
    AParent := AddMenuItem(Result, 'Skins', -1);
    for I := 0 to FSkinNames.Count - 1 do
      AddMenuItem(AParent, FSkinNames[I], I + 5);

    FSkinNames.Find(sdxDefaultSkinName, BDefaultSkinIdx);
    Aw1:= TIniFile.Create(ExtractFilePath(paramstr(0))+'AppConf.ini');
    try
      ADefaultSkinIdx := Aw1.ReadInteger('AppData', 'DefaultSkinIdx', BDefaultSkinIdx + 5);
    finally
      Aw1.Free;
    end;
    case  ADefaultSkinIdx of
       0: AMenuItem := Result.Find('Flat');
       1: AMenuItem := Result.Find('Standard');
       2: AMenuItem := Result.Find('UltraFlat');
       3: AMenuItem := Result.Find('Office11');
       4: AMenuItem := Result.Find('Native');
       else
          AMenuItem := AParent.Find(FSkinNames[ADefaultSkinIdx - 5]);
    end;
    if AMenuItem <> nil then
      AMenuItem.Click;
  end;
end;

function dxLookAndFeelController: TcxLookAndFeelController;
begin
  Result := FLookAndFeelController;
end;

procedure dxBarConvertMainMenu(AMenu: TMainMenu);
{$IFDEF EXPRESSBARS}

  function AddCategory(AName: string): Integer;
  var
    ACategoryName: string;
  begin
    with FBarManager.Categories do
    begin
      ACategoryName := AName;
      Result := IndexOf(ACategoryName);
      if Result < 0 then
        Result := Add(ACategoryName);
    end;
  end;

  function ConvertItem(AItemLinks: TdxBarItemLinks; AMenuItem: TMenuItem;
    ACategory: Integer; ANeedCreateCategory: Boolean): TdxBarItem;
  var
    ABarItem, AChildItem: TdxBarItem;
    AItemLink: TdxBarItemLink;
    ABeginGroup: Boolean;
    AMenuItemName: string;
  begin
    if AMenuItem.Parent = nil then
      ABarItem := nil
    else
    begin
      if AMenuItem.Count = 0 then
        ABarItem := TdxBarButton.Create(FBarManager.Owner)
      else
      begin
        ABarItem := TdxBarSubItem.Create(FBarManager.Owner);
        Inc(FLevelGroupIndex);
      end;
      ABarItem.Category := ACategory;
    end;

    with AMenuItem do
    begin
      if ABarItem <> nil then
      begin
        ABarItem.Action := Action;
        ABarItem.ImageIndex := ImageIndex;
        ABarItem.Caption := Caption;
        ABarItem.Enabled := Enabled;
        ABarItem.HelpContext := HelpContext;
        ABarItem.Hint := Hint;
        ABarItem.ShortCut := ShortCut;
        ABarItem.Tag := Tag;
        ABarItem.OnClick := OnClick;
        if ABarItem is TdxBarButton then
          with TdxBarButton(ABarItem) do
          begin
            if Checked or RadioItem or AutoCheck then
              ButtonStyle := bsChecked;
            if RadioItem then
            begin
              if AMenuItem.GroupIndex <> 0 then
                GroupIndex := AMenuItem.GroupIndex
              else
                GroupIndex := FLevelGroupIndex;
            end;
            Down := Checked;
          end;

        if (Count > 0) and ANeedCreateCategory then
          ACategory := AddCategory(GetTextOf(Caption));
      end;

      ABeginGroup := False;
      while Count > 0 do
        if Items[0].Caption = '-' then
        begin
          ABeginGroup := True;
          Items[0].Free;
        end
        else
        begin
          AChildItem := ConvertItem(AItemLinks, Items[0], ACategory, (Parent = nil) and (AMenu is TMainMenu));
          if Parent = nil then
            AItemLink := AItemLinks.Add
          else
            AItemLink := TdxBarSubItem(ABarItem).ItemLinks.Add;
          AItemLink.Item := AChildItem;
          if ABeginGroup then
          begin
            AItemLink.BeginGroup := True;
            ABeginGroup := False;
          end;
        end;
    end;

    AMenuItemName := AMenuItem.Name;
    if AMenuItem.Parent <> nil then
      AMenuItem.Free;
    if ABarItem <> nil then
      ABarItem.Name := AMenuItemName;

    Result := ABarItem;
  end;

var
  ACategoryName, APopupMenuName: string;
  ACategory: Integer;
  ABarPopupMenu: TdxBarPopupMenu;
  AItemLinks: TdxBarItemLinks;
{$ENDIF}
begin
{$IFDEF EXPRESSBARS}
  Screen.Cursor := crHourGlass;
  try
    if FBarManager = nil then
    begin
      FBarManager := TdxBarManager.Create(AMenu.Owner);
      FBarManager.Style := bmsUseLookAndFeel;
    end;
    ACategoryName := 'Menus';
    ABarPopupMenu := nil;
    if FBarManager.MainMenuBar = nil then
      with FBarManager.Bars.Add do
      begin
        Caption := 'Main Menu';
        DockingStyle := dsTop;
        IsMainMenu := True;
        Visible := True;
      end;
    AItemLinks := FBarManager.MainMenuBar.ItemLinks;
    if FBarManager.Images = nil then
      FBarManager.Images := AMenu.Images;

    ACategory := AddCategory(ACategoryName);

    FBarManager.BeginUpdate;
    try
      ConvertItem(AItemLinks, AMenu.Items, ACategory, False);
    finally
      FBarManager.EndUpdate;
    end;

    AMenu.Free;
    FBarManager.Categories.Move(ACategory, FBarManager.Categories.Count - 1);
    if ABarPopupMenu <> nil then
      ABarPopupMenu.Name := APopupMenuName;
    Inc(FLevelGroupIndex);

    FBarManager.MainMenuControl.DockControl.Top := 0;
  finally
    Screen.Cursor := crDefault;
  end;
{$ENDIF}
end;

{ TcxLookAndFeelClickController }

procedure TcxLookAndFeelClickController.LookAndFeelHandler(Sender: TObject);
begin
  HandleLookAndFeelChangeCommand(Sender, FLookAndFeelController);
  HandleNavbar;
end;

procedure RegisterAssistants;
begin
{$IFDEF EXPRESSSKINS}
  FLookAndFeelController := TdxSkinController.Create(nil);
{$ELSE}
  FLookAndFeelController := TcxLookAndFeelController.Create(nil);
{$ENDIF}
end;

procedure UnregisterAssistants;
begin
  FreeAndNil(FLookAndFeelController);
  FreeAndNil(FSkinResources);
  FreeAndNil(FSkinNames);
end;

initialization
  dxUnitsLoader.AddUnit(@RegisterAssistants, @UnregisterAssistants);

finalization
  FreeAndNil(FLookAndFeelClickController);
  dxUnitsLoader.RemoveUnit(@UnregisterAssistants);

end.

