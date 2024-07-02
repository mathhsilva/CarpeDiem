unit DMDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TLoginResult = (lrInvalid, lrInactive, lrSuccess);

  TDM = class(TDataModule)
    Connection: TFDConnection;
    qryUsu: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateUser(const AUsername, APassword: string; out LoginResult: TLoginResult): Boolean;
    function TabelasExistentes: Boolean;
    procedure SaveData(SQL: string);
    function LoginExists(const ALogin: string): Boolean;
    function EmailExists(const AEmail: string): Boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.ValidateUser(const AUsername, APassword: string; out LoginResult: TLoginResult): Boolean;
begin
  Result := False;
  LoginResult := lrInvalid; // Default value

  qryUsu.SQL.Text := 'SELECT usu_status FROM usuarios WHERE usu_login = :login AND usu_senha = :senha';
  qryUsu.ParamByName('login').AsString := AUsername;
  qryUsu.ParamByName('senha').AsString := APassword;
  qryUsu.Open;

  if not qryUsu.IsEmpty then
  begin
    if qryUsu.FieldByName('usu_status').AsString = 'A' then
    begin
      Result := True;
      LoginResult := lrSuccess;
    end
    else
    begin
      LoginResult := lrInactive;
    end;
  end;

  qryUsu.Close;
end;

function TDM.EmailExists(const AEmail: string): Boolean;
begin
  Result := False;
  qryUsu.SQL.Text := 'SELECT COUNT(*) FROM usuarios WHERE usu_email = :email';
  qryUsu.ParamByName('email').AsString := AEmail;

  qryUsu.Open;
  try
    Result := qryUsu.Fields[0].AsInteger > 0;
  finally
    qryUsu.Close;
  end;
end;

function TDM.LoginExists(const ALogin: string): Boolean;
begin
  Result := False;
  qryUsu.SQL.Text := 'SELECT COUNT(*) FROM usuarios WHERE usu_login = :login';
  qryUsu.ParamByName('login').AsString := ALogin;

  qryUsu.Open;
  try
    Result := qryUsu.Fields[0].AsInteger > 0;
  finally
    qryUsu.Close;
  end;
end;

procedure TDM.SaveData(SQL: string);
begin
  Connection.ExecSQL(SQL);
end;

function TDM.TabelasExistentes: Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := Connection;
    Query.SQL.Text := 'SELECT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = ''public'' AND table_name IN (''usuarios''))';
    Query.Open;
    Result := Query.Fields[0].AsBoolean;
  finally
    Query.Free;
  end;
end;

end.
