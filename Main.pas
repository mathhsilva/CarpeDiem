unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, DMDados, Login, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Async, Usuarios, SqlSis;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    bCadastros: TMenuItem;
    bUsuarios: TMenuItem;
    bAtualizarTabelas: TMenuItem;
    Sair1: TMenuItem;
    bAttEstr: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure bUsuariosClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure bAttEstrClick(Sender: TObject);
  private
    { Private declarations }
    FInst: TSQLInstall; // Declara��o da inst�ncia de TSQLInstall
  public
    { Public declarations }
    property Inst: TSQLInstall read FInst; // Propriedade para acessar a inst�ncia de TSQLInstall
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

Uses AttEstr;

procedure TFMain.bAttEstrClick(Sender: TObject);
begin
  if not Assigned(FAttEstr) then
    FAttEstr := TFAttEstr.Create(Self);
  try
    FAttEstr.Show;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao abrir o formul�rio de atualiza��o: ' + E.Message);
      FreeAndNil(FAttEstr); // Libera a mem�ria se ocorrer um erro
    end;
  end;
end;


procedure TFMain.bUsuariosClick(Sender: TObject);
begin
  FUsuarios:= TFUsuarios.Create(Self);
  FUsuarios.Show;
end;

procedure TFMain.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDM, DM);
  FLogin := TFLogin.Create(Self);
  FLogin.ShowModal;
  // Cria��o da inst�ncia de TSQLInstall
  FInst := TSQLInstall.Create(Self);
  FInst.TypeServer := tsOracle; // Defina o tipo de servidor, se necess�rio
end;

procedure TFMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
