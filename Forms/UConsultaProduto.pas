unit UConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmConsultaProduto = class(TfrmModelConsulta)
    bancoConsultaID_PRODUTO: TIntegerField;
    bancoConsultaPRODUTO_DESCRICAO: TStringField;
    bancoConsultaID_FORNECEDOR: TIntegerField;
    bancoConsultaVL_CUSTO: TFMTBCDField;
    bancoConsultaVL_VENDA: TFMTBCDField;
    bancoConsultaESTOQUE: TFMTBCDField;
    bancoConsultaESTOQUE_MIN: TFMTBCDField;
    bancoConsultaUNIDADE: TStringField;
    bancoConsultaCADASTRO: TDateField;
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProduto: TfrmConsultaProduto;

implementation

{$R *.dfm}

uses uCadastroProduto;

procedure TfrmConsultaProduto.btnCadastrarClick(Sender: TObject);
begin
  inherited;
frmModelConsulta.btnNovoClicado:=1;
frmConsultaProduto.Visible:=False;
frmCadastroProduto.Show;
end;

procedure TfrmConsultaProduto.btnSelecionarClick(Sender: TObject);
begin
  inherited;
if bancoConsulta.RecordCount>0 then
begin
 frmModelConsulta.sqlID:=bancoConsultaID_PRODUTO.AsInteger;
 frmConsultaProduto.Visible:=False;
 frmCadastroProduto.Show;
end;

end;

end.
