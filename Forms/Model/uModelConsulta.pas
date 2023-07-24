unit uModelConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmModelConsulta = class(TForm)
    Panel1: TPanel;
    radioTermo: TRadioGroup;
    btnPesquisa: TBitBtn;
    btnSelecionar: TBitBtn;
    bancoConsulta: TFDQuery;
    bancoConsultaSource: TDataSource;
    bancoGrid: TDBGrid;
    editPesquisa: TEdit;
    labelTermo: TLabel;
    Label1: TLabel;
    btnCadastrar: TBitBtn;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bancoGridDblClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    sqlTabela, sqlTermo: String;
    sqlID,btnNovoClicado: Integer;
  end;

var
  frmModelConsulta: TfrmModelConsulta;

implementation

{$R *.dfm}

uses uDataModule;

procedure TfrmModelConsulta.bancoGridDblClick(Sender: TObject);
begin
btnSelecionar.Click;
end;

procedure TfrmModelConsulta.btnCadastrarClick(Sender: TObject);
begin
 frmModelConsulta.btnNovoClicado:=1;
end;

procedure TfrmModelConsulta.btnPesquisaClick(Sender: TObject);
begin
  bancoConsulta.SQL.Clear;
  bancoConsulta.Params.Clear;
  bancoConsulta.SQL.Add('SELECT * FROM ' + sqlTabela);
  case radioTermo.ItemIndex of
    0:
      begin
        bancoConsulta.SQL.Add('WHERE NOME LIKE  :pTermo');
      end;
    1:
      begin
             bancoConsulta.SQL.Add('WHERE ID_CLIENTE LIKE  :pTermo');
      end;
      2:
      begin
          bancoConsulta.SQL.Add('WHERE CPF LIKE  :pTermo');
      end;
       3:
      begin

      end;
  end;

  bancoConsulta.ParamByName('pTermo').AsString := editPesquisa.Text+'%';
  bancoConsulta.Open;

  if bancoConsulta.IsEmpty then
    ShowMessage('Nenhum Registro Encontrado');

end;

procedure TfrmModelConsulta.FormShow(Sender: TObject);
begin
  bancoConsulta.Active := True;
end;

end.
