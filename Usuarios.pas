unit Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, SQLEd, Vcl.Grids, Vcl.DBGrids, SQLGrid, System.RegularExpressions, Vcl.Buttons, SQLBtn, DMDados;

type
  TFUsuarios = class(TForm)
    pFundo: TPanel;
    pDireita: TPanel;
    pBottom: TPanel;
    Grid: TSQLGrid;
    edLogin: TSQLEd;
    edSenha: TSQLEd;
    edEmail: TSQLEd;
    edStatus: TSQLEd;
    edDataCad: TSQLEd;
    edConfirmSenha: TSQLEd;
    bIncluir: TSQLBtn;
    bGravar: TSQLBtn;
    dsUsuarios: TDataSource;
    bExcluir: TSQLBtn;
    bAtualizar: TSQLBtn;
    procedure edConfirmSenhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edEmailExit(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure edStatusExitEdit(Sender: TObject);
  private
    function IsValidEmail(Email: string): Boolean;
    procedure RefreshGrid;
  public
    procedure validaSenha;
    procedure popularGrid;
    procedure validaEdits; //para n�o permitir cadastro de usu�rios vazios
  end;

var
  FUsuarios: TFUsuarios;

implementation

{$R *.dfm}

procedure TFUsuarios.bAtualizarClick(Sender: TObject);
begin
  RefreshGrid;
end;

procedure TFUsuarios.bExcluirClick(Sender: TObject);
var
  UsuarioID: Integer;
begin
  if not DM.qryUsu.IsEmpty then
  begin
    UsuarioID := DM.qryUsu.FieldByName('usu_id').AsInteger;

    if MessageDlg('Tem certeza que deseja excluir este usu�rio?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DM.qryUsu.Delete;
      DM.qryUsu.ApplyUpdates;
      DM.qryUsu.Refresh;
    end;
  end
  else
  begin
    ShowMessage('Nenhum usu�rio selecionado.');
  end;
end;

procedure TFUsuarios.bGravarClick(Sender: TObject);
var
  SQL: string;
begin
  if DM.LoginExists(edLogin.Text) then
  begin
    ShowMessage('Este login j� est� em uso. Por favor, escolha outro.');
    popularGrid;
    edLogin.SetFocus;
    Exit;
  end;

  if DM.EmailExists(edEmail.Text) then
  begin
    ShowMessage('Este email j� est� em uso. Por favor, escolha outro.');
    popularGrid;
    edEmail.SetFocus;
    Exit;
  end;

  SQL := 'INSERT INTO usuarios (usu_login, usu_senha, usu_email, usu_status, usu_cad_data) ' +
         'VALUES (' + QuotedStr(edLogin.Text) + ', ' +
                      QuotedStr(edSenha.Text) + ', ' +
                      QuotedStr(edEmail.Text) + ', ' +
                      QuotedStr(edStatus.Text) + ', ' +
                      QuotedStr(edDataCad.Text) + ')';

  try
    DM.SaveData(SQL);
    ShowMessage('Dados gravados com sucesso!');
    edLogin.Text := '';
    edSenha.Text := '';
    edEmail.Text := '';
    edStatus.Text := '';
    edConfirmSenha.Text := '';
    RefreshGrid;
    popularGrid;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao gravar dados: ' + E.Message);
    end;
  end;
end;

procedure TFUsuarios.bIncluirClick(Sender: TObject);
begin
  pBottom.Visible := True;
  edLogin.SetFocus;
end;

procedure TFUsuarios.edConfirmSenhaExit(Sender: TObject);
begin
  validaSenha;
end;

procedure TFUsuarios.edEmailExit(Sender: TObject);
begin
  IsValidEmail(edEmail.Text);
end;

procedure TFUsuarios.edStatusExitEdit(Sender: TObject);
begin
  validaEdits;
end;

procedure TFUsuarios.FormCreate(Sender: TObject);
begin
  edDataCad.Text := FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
  popularGrid;
end;

function TFUsuarios.IsValidEmail(Email: string): Boolean;
var
  AtPos, DotPos: Integer;
begin
  Result := False;
  AtPos := Pos('@', Email);
  DotPos := LastDelimiter('.', Email);
  if (AtPos > 1) and (DotPos > AtPos + 1) then
  begin
    if DotPos > AtPos then
    begin
      Result := True;
      edSenha.SetFocus;
    end;
  end;
  if not Result then
  begin
    ShowMessage('Por favor, insira um email v�lido.');
    edEmail.SetFocus;
  end;
end;

procedure TFUsuarios.popularGrid;
begin
  DM.qryUsu.CachedUpdates := True;
  DM.qryUsu.UpdateOptions.AutoCommitUpdates := True;
  DM.Connection.Connected := True;

  DM.qryUsu.SQL.Text := 'SELECT usu_id, usu_login, usu_email, usu_status FROM usuarios';
  DM.qryUsu.Open;

  dsUsuarios.DataSet := DM.qryUsu;

  Grid.Columns.Clear;

  with Grid.Columns.Add do
  begin
    FieldName := 'usu_id';
    Title.Caption := 'ID';
    Width := 50;
  end;

  with Grid.Columns.Add do
  begin
    FieldName := 'usu_login';
    Title.Caption := 'Login';
    Width := 100;
  end;

  with Grid.Columns.Add do
  begin
    FieldName := 'usu_email';
    Title.Caption := 'E-mail';
    Width := 150;
  end;

  with Grid.Columns.Add do
  begin
    FieldName := 'usu_status';
    Title.Caption := 'Status';
    Width := 80;
  end;
end;

procedure TFUsuarios.validaEdits;
begin
  if edLogin.Text = '' then
  begin
    ShowMessage('O campo Login n�o pode estar vazio.');
    edLogin.SetFocus;
    Exit;
  end;

  if edSenha.Text = '' then
  begin
    ShowMessage('O campo Senha n�o pode estar vazio.');
    edSenha.SetFocus;
    Exit;
  end;

  if edEmail.Text = '' then
  begin
    ShowMessage('O campo E-mail n�o pode estar vazio.');
    edEmail.SetFocus;
    Exit;
  end;

  if edStatus.Text = '' then
  begin
    ShowMessage('O campo Status n�o pode estar vazio.');
    edStatus.SetFocus;
    Exit;
  end;
  // Se todos os campos forem v�lidos, chama o clique do bot�o Gravar
  bGravar.ToClick;
end;


procedure TFUsuarios.validaSenha;
begin
  if edSenha.Text = edConfirmSenha.Text then
  begin
    edStatus.SetFocus;
  end
  else
  begin
    ShowMessage('As senhas n�o s�o iguais, favor validar!');
    edSenha.SetFocus;
  end;
end;

procedure TFUsuarios.RefreshGrid;
begin
  DM.qryUsu.DisableControls;
  try
    DM.qryUsu.Close;
    DM.qryUsu.Open;
  finally
    DM.qryUsu.EnableControls;
  end;
end;

end.
