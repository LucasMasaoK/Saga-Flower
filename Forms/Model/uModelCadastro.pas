unit uModelCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  TfrmModelCadastro = class(TForm)
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnDeletar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    bancoQueryCadastro: TFDQuery;
    dataSourceCadastro: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelCadastro: TfrmModelCadastro;

implementation

{$R *.dfm}

uses uModelConsulta;

procedure TfrmModelCadastro.btnCancelarClick(Sender: TObject);
begin
  bancoQueryCadastro.Cancel;
end;

procedure TfrmModelCadastro.btnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja deletar esse registro?', TMsgDlgType.mtInformation,
    [mbOk, mbNo], 0) = mrOk then
  begin
    try
      bancoQueryCadastro.Delete;
    finally
      ShowMessage('Registro deletado com Sucesso');
    end;

  end
  else
    abort;
end;

procedure TfrmModelCadastro.btnNovoClick(Sender: TObject);
begin
  bancoQueryCadastro.Append;
end;

procedure TfrmModelCadastro.btnSalvarClick(Sender: TObject);
begin
  if MessageDlg('Deseja salvar as alterações?', TMsgDlgType.mtInformation,
    [mbOk, mbNo], 0) = mrOk then
  begin
    try
      bancoQueryCadastro.Post;
    finally
      ShowMessage('Registro salvo com sucesso!');
    end;

  end;
end;

procedure TfrmModelCadastro.FormActivate(Sender: TObject);
begin
  if frmModelConsulta.btnNovoClicado > 0 then
  begin
    btnNovo.Click;
  end;
end;

end.
