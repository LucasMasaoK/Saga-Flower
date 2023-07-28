unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastro1: TMenuItem;
    Sair1: TMenuItem;
    Usuario1: TMenuItem;
    Fornecedor1: TMenuItem;
    Cliente1: TMenuItem;
    Produtos1: TMenuItem;
    Compra1: TMenuItem;
    procedure Cliente1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Compra1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadastroCliente, uConsultaCliente, uConsultaFornecedor,
  uCadastroFornecedor, uCadastroProduto, UConsultaProduto,
  uCompra;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
frmCadastroCliente.Show;
frmCadastroCliente.Visible:=False;
frmConsultaCliente.Show;
end;

procedure TfrmPrincipal.Compra1Click(Sender: TObject);
begin
frmCompra.ShowModal;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
frmCadastroFornecedor.Show;
frmCadastroFornecedor.Visible:=False;
frmConsultaFornecedor.Show;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
frmCadastroProduto.Show;
frmCadastroProduto.Visible:=False;
frmConsultaProduto.Show;
end;

end.
