unit AttEstr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, SQLBtn, SqlSis, DmDados, FireDAC.Comp.Client;

type
  TFAttEstr = class(TForm)
    bAtualizar: TSQLBtn;
    Inst: TSQLInstall;
    bFechar: TSQLBtn;
    procedure bAtualizarClick(Sender: TObject);
    procedure InstCreateSequences(Sender: TObject);
    procedure InstCreateFields(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CriaTabelaUsuarios;
    procedure CriaSequenceUsuarios;
    function CampoExiste(const Tabela, Campo: string): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAttEstr: TFAttEstr;

implementation

{$R *.dfm}

uses Main;

procedure TFAttEstr.bAtualizarClick(Sender: TObject);
var
  resposta: Integer;
begin
  resposta := MessageDlg('Deseja atualizar a estrutura de dados?', mtConfirmation, [mbYes, mbNo], 0);
  if resposta = mrYes then
  begin
    try
      CriaSequenceUsuarios;
      CriaTabelaUsuarios;
    finally
      // N�o � necess�rio liberar o Inst aqui, pois ele � um componente do formul�rio.
    end;
  end
  else if resposta = mrNo then
  begin
    Close;
  end;
end;

procedure TFAttEstr.bFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFAttEstr.CriaSequenceUsuarios;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := DM.Connection;
    Query.SQL.Text := 'SELECT 1 FROM pg_class WHERE relkind = ''S'' AND relname = ''usu_cod_seq''';
    Query.Open;

    if Query.IsEmpty then
    begin
      DM.Connection.ExecSQL('CREATE SEQUENCE usu_cod_seq START WITH 1 INCREMENT BY 1');
      ShowMessage('Sequ�ncia criada com sucesso.');
    end
    else
    begin
      ShowMessage('Sequ�ncia j� existente.');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao verificar/criar sequ�ncia: ' + E.Message);
    end;
  end;
  Query.Free;
end;

procedure TFAttEstr.CriaTabelaUsuarios;
const
  // Lista de campos esperados na tabela Usuarios
  CamposEsperados: array of string = ['usu_id', 'usu_login', 'usu_email', 'usu_senha', 'usu_status', 'usu_cad_data'];
var
  Query: TFDQuery;
  I: Integer;
  TodosCamposPresentes: Boolean;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := DM.Connection;
    Query.SQL.Text :=
      'SELECT column_name ' +
      'FROM information_schema.columns ' +
      'WHERE table_name = ''usuarios'' AND table_schema = ''public'' ' +
      'ORDER BY ordinal_position';
    Query.Open;

    TodosCamposPresentes := True;

    // Verificar se todos os campos esperados est�o presentes na tabela
    for I := 0 to Length(CamposEsperados) - 1 do
    begin
      if not Query.Locate('column_name', CamposEsperados[I], []) then
      begin
        TodosCamposPresentes := False;
        Break;
      end;
    end;

    // Se todos os campos estiverem presentes, mostrar mensagem de estrutura atualizada
    if TodosCamposPresentes then
      ShowMessage('A estrutura j� est� atualizada!')
    else
    begin
      for I := 0 to Length(CamposEsperados) - 1 do
      begin
        if not Query.Locate('column_name', CamposEsperados[I], []) then
        begin
          // Adicionar o campo apenas se n�o existir
          if CamposEsperados[I] = 'usu_id' then
            DM.Connection.ExecSQL('ALTER TABLE Usuarios ADD COLUMN usu_id SERIAL PRIMARY KEY')
          else if CamposEsperados[I] = 'usu_login' then
            DM.Connection.ExecSQL('ALTER TABLE Usuarios ADD COLUMN usu_login VARCHAR(255) NOT NULL')
          else if CamposEsperados[I] = 'usu_email' then
            DM.Connection.ExecSQL('ALTER TABLE Usuarios ADD COLUMN usu_email VARCHAR(255) NOT NULL')
          else if CamposEsperados[I] = 'usu_senha' then
            DM.Connection.ExecSQL('ALTER TABLE Usuarios ADD COLUMN usu_senha VARCHAR(255) NOT NULL')
          else if CamposEsperados[I] = 'usu_status' then
            DM.Connection.ExecSQL('ALTER TABLE Usuarios ADD COLUMN usu_status VARCHAR(50) NOT NULL')
          else if CamposEsperados[I] = 'usu_cad_data' then
            DM.Connection.ExecSQL('ALTER TABLE Usuarios ADD COLUMN usu_cad_data DATE');

          // Adicionar mais IFs conforme necess�rio para outros campos futuros
        end;
      end;
      ShowMessage('Estrutura atualizada com sucesso!');
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao verificar/criar tabela: ' + E.Message);
    end;
  end;
  Query.Free;
end;

function TFAttEstr.CampoExiste(const Tabela, Campo: string): Boolean;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := DM.Connection;
    Query.SQL.Text := 'SELECT 1 FROM information_schema.columns WHERE table_name = :Tabela AND column_name = :Campo';
    Query.ParamByName('Tabela').AsString := Tabela;
    Query.ParamByName('Campo').AsString := Campo;
    Query.Open;
    Result := not Query.IsEmpty;
  finally
    Query.Free;
  end;
end;

procedure TFAttEstr.FormCreate(Sender: TObject);
begin
  Inst := TSQLInstall.Create(Self);
end;

procedure TFAttEstr.InstCreateFields(Sender: TObject);
begin
  CriaTabelaUsuarios;
end;

procedure TFAttEstr.InstCreateSequences(Sender: TObject);
begin
  CriaSequenceUsuarios;
end;

end.
