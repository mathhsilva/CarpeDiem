program Project1;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FMain},
  Login in 'Login.pas' {FLogin},
  DMDados in 'DMDados.pas' {DM: TDataModule},
  Usuarios in 'Usuarios.pas' {FUsuarios},
  AttEstr in 'AttEstr.pas' {FAttEstr},
  Produtos in 'Produtos.pas' {FProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFUsuarios, FUsuarios);
  Application.CreateForm(TFAttEstr, FAttEstr);
  Application.CreateForm(TFProdutos, FProdutos);
  Application.Run;
end.
