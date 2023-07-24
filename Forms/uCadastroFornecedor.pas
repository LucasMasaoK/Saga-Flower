unit uCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelCadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroFornecedor = class(TfrmModelCadastro)
    bancoQueryCadastroID_FORNECEDOR: TIntegerField;
    bancoQueryCadastroNOME: TStringField;
    bancoQueryCadastroENDERECO: TStringField;
    bancoQueryCadastroNUMERO: TIntegerField;
    bancoQueryCadastroBAIRRO: TStringField;
    bancoQueryCadastroCIDADE: TStringField;
    bancoQueryCadastroUF: TStringField;
    bancoQueryCadastroCEP: TStringField;
    bancoQueryCadastroTELEFONE: TStringField;
    bancoQueryCadastroCNPJ: TStringField;
    bancoQueryCadastroEMAIL: TStringField;
    bancoQueryCadastroCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFornecedor: TfrmCadastroFornecedor;

implementation

{$R *.dfm}

uses uConsultaFornecedor, uModelConsulta;

procedure TfrmCadastroFornecedor.btnPesquisarClick(Sender: TObject);
begin
  inherited;
frmConsultaFornecedor.Show;
frmCadastroFornecedor.Visible:=False;
end;

procedure TfrmCadastroFornecedor.FormShow(Sender: TObject);
begin
  inherited;
if  frmModelConsulta.sqlID>0 then
begin
bancoQueryCadastro.Open;
bancoQueryCadastro.Locate('ID_FORNECEDOR', frmModelConsulta.sqlID,[]);
end;

end;

end.
