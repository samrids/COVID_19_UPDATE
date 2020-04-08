program COVID19;

uses
  Vcl.Forms,
  uMainmenu in 'uMainmenu.pas' {frmMainMenu},
  AwSkinUtils in 'Common\AwSkinUtils.pas',
  fGridArea in 'Report\fGridArea.pas' {frmGridArea},
  fGridBaseRep in 'Report\fGridBaseRep.pas' {frmGridBaseRep},
  fGridCases in 'Report\fGridCases.pas' {frmGridCases},
  fGridCaseSum in 'Report\fGridCaseSum.pas' {frmGridCaseSum},
  fGridDiaryUpdate in 'Report\fGridDiaryUpdate.pas' {frmGridDiaryUpdate},
  fGridSummary in 'Report\fGridSummary.pas' {frmGridSummary};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.Run;
end.

