unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, SQLBtn, Vcl.StdCtrls, Vcl.Mask, SQLEd, Vcl.ExtCtrls;

type
  TFLogin = class(TForm)
    pCenter: TPanel;
    edLogin: TSQLEd;
    edSenha: TSQLEd;
    bEntrar: TSQLBtn;
    bSair: TSQLBtn;
    procedure bEntrarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure edSenhaExitEdit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses Main, DMDados;

procedure TFLogin.bEntrarClick(Sender: TObject);
var
  LoginResult: TLoginResult;
begin
  if DM.ValidateUser(edLogin.Text, edSenha.Text, LoginResult) then
  begin
    FMain.Show;
    Self.Hide;
  end
  else
  begin
    case LoginResult of
      lrInvalid:
        ShowMessage('Usu�rio ou senha inv�lidos!');
      lrInactive:
        ShowMessage('Usu�rio inativo. N�o � poss�vel realizar o login.');
    end;
  end;
end;


procedure TFLogin.bSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.edSenhaExitEdit(Sender: TObject);
begin
  bEntrar.ToClick;
end;

end.
