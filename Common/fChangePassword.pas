unit fChangePassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmChangePassword = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdtOldPassword: TEdit;
    EdtNewPassword: TEdit;
    EdtConfirmNewPassword: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnChangedPassword: TButton;
    lblUserName: TLabel;
    Label6: TLabel;
    Button1: TButton;
    procedure btnChangedPasswordClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function ValidPassword: boolean;
  public
    { Public declarations }
  end;

var
  frmChangePassword: TfrmChangePassword;

implementation

{$R *.dfm}

uses dmCenterdb, ERSResStr;

procedure TfrmChangePassword.btnChangedPasswordClick(Sender: TObject);
var
  err: integer;
begin
  if ((trim(EdtOldPassword.Text) = '') or (trim(EdtNewPassword.Text) = '') or
    (trim(EdtConfirmNewPassword.Text) = '')) then
    Abort;

  if ValidPassword = false then
    Abort;

  CenterDB.FDConnection1.StartTransaction;
  try
    err := CenterDB.FDConnection1.ExecSQL
      (format('update hrm_auth_user set passwd = sha1(''%s'') where username = ''%s'' and passwd = sha1(''%s'');',
      [trim(EdtNewPassword.Text), lblUserName.Caption,
      trim(EdtOldPassword.Text)]));
    if (err = 1) then
    begin
      CenterDB.FDConnection1.Commit;
      MessageDlg(ChangedPwdSuccessStr, mtInformation, [mbOK], 0);
      EdtOldPassword.Enabled := false;
      EdtNewPassword.Enabled := false;
      EdtConfirmNewPassword.Enabled := false;
      btnChangedPassword.Enabled := false;
    end
    else
    begin
      MessageDlg(OldPwdIncorrectStr, mtWarning, [mbOK], 0);
    end;
  except
    CenterDB.FDConnection1.Rollback;
  end;
end;

procedure TfrmChangePassword.Button1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmChangePassword.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmChangePassword := nil;
  Action := cafree;
end;

function TfrmChangePassword.ValidPassword: boolean;
begin
  if (trim(EdtNewPassword.Text) <> trim(EdtConfirmNewPassword.Text)) then
  begin
    MessageDlg(PwdConfirmPwdNotMatchStr, mtWarning, [mbOK], 0);
    result := false;
  end
  else
    result := true;
end;

end.
