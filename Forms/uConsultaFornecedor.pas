unit uConsultaFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmConsultaFornecedor = class(TfrmModelConsulta)
    bancoConsultaID_FORNECEDOR: TIntegerField;
    bancoConsultaNOME: TStringField;
    bancoConsultaENDERECO: TStringField;
    bancoConsultaNUMERO: TIntegerField;
    bancoConsultaBAIRRO: TStringField;
    bancoConsultaCIDADE: TStringField;
    bancoConsultaUF: TStringField;
    bancoConsultaCEP: TStringField;
    bancoConsultaTELEFONE: TStringField;
    bancoConsultaCNPJ: TStringField;
    bancoConsultaEMAIL: TStringField;
    bancoConsultaCADASTRO: TDateField;
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaFornecedor: TfrmConsultaFornecedor;

implementation

{$R *.dfm}

uses uCadastroFornecedor, uModelCadastro;

procedure TfrmConsultaFornecedor.btnCadastrarClick(Sender: TObject);
begin
  inherited;
frmConsultaFornecedor.Visible:=False;
frmCadastroFornecedor.Show;
end;

procedure TfrmConsultaFornecedor.btnPesquisaClick(Sender: TObject);
begin
sqlTabela:='FORNECEDOR';

  inherited;

end;

procedure TfrmConsultaFornecedor.btnSelecionarClick(Sender: TObject);
begin
  inherited;
 if bancoConsulta.RecordCount>0 then
 begin
 frmModelConsulta.sqlID:=bancoConsultaID_FORNECEDOR.AsInteger;
 frmConsultaFornecedor.Visible:=False;
 frmCadastroFornecedor.Show;
 end;



end;

end.
