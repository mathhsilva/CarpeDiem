unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, SQLEd, Vcl.ExtCtrls, Vcl.Buttons, SQLBtn, Data.DB, Vcl.Grids, Vcl.DBGrids, SQLGrid;

type
  TFProdutos = class(TForm)
    pBottom: TPanel;
    edProdNome: TSQLEd;
    edPrecoUnit: TSQLEd;
    edCategoria: TSQLEd;
    edEstMin: TSQLEd;
    edDataCad: TSQLEd;
    edFornecedor: TSQLEd;
    pDireita: TPanel;
    bIncluir: TSQLBtn;
    bGravar: TSQLBtn;
    bExcluir: TSQLBtn;
    bAtualizar: TSQLBtn;
    Grid: TSQLGrid;
    edCodProd: TSQLEd;
    edEstMax: TSQLEd;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

{$R *.dfm}

end.
