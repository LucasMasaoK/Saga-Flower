unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelCadastro, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroProduto = class(TfrmModelCadastro)
    bancoQueryCadastroID_PRODUTO: TIntegerField;
    bancoQueryCadastroPRODUTO_DESCRICAO: TStringField;
    bancoQueryCadastroID_FORNECEDOR: TIntegerField;
    bancoQueryCadastroVL_CUSTO: TFMTBCDField;
    bancoQueryCadastroVL_VENDA: TFMTBCDField;
    bancoQueryCadastroESTOQUE: TFMTBCDField;
    bancoQueryCadastroESTOQUE_MIN: TFMTBCDField;
    bancoQueryCadastroUNIDADE: TStringField;
    bancoQueryCadastroCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    editNome: TDBEdit;
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
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses UConsultaProduto, uModelConsulta;

procedure TfrmCadastroProduto.btnPesquisarClick(Sender: TObject);
begin
  inherited;
frmCadastroProduto.Visible:=False;
frmConsultaProduto.Show;
end;

procedure TfrmCadastroProduto.FormActivate(Sender: TObject);
begin
  inherited;
if  frmModelConsulta.sqlID >0 then
begin
bancoQueryCadastro.Open;
bancoQueryCadastro.Locate('ID_PRODUTO',frmModelConsulta.sqlID,[]);
end;

if  frmModelConsulta.btnNovoClicado >0 then
begin
btnNovo.Click;
editNome.SetFocus;
end;
end;
end.
