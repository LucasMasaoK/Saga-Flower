unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelCadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroCliente = class(TfrmModelCadastro)
    bancoQueryCadastroID_CLIENTE: TIntegerField;
    bancoQueryCadastroNOME: TStringField;
    bancoQueryCadastroENDERECO: TStringField;
    bancoQueryCadastroNUMERO: TIntegerField;
    bancoQueryCadastroBAIRRO: TStringField;
    bancoQueryCadastroCIDADE: TStringField;
    bancoQueryCadastroUF: TStringField;
    bancoQueryCadastroCEP: TStringField;
    bancoQueryCadastroTELEFONE: TStringField;
    bancoQueryCadastroCPF: TStringField;
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
    editTelefone: TDBEdit;
    Label10: TLabel;
    editCpf: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses uModelConsulta;





procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin

if frmModelConsulta.sqlID>0 then
begin
bancoQueryCadastro.Open;
bancoQueryCadastro.Locate('ID_CLIENTE',frmModelConsulta.sqlID,[]);
end;

end;
end.

