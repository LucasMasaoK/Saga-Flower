unit uModelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmModelVenda = class(TForm)
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnDeletar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    bancoQueryCadastro: TFDQuery;
    dataSourceCadastro: TDataSource;
    btnImprimir: TBitBtn;
    Panel2: TPanel;
    bancoQueryItens: TFDQuery;
    dataSourceItens: TDataSource;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelVenda: TfrmModelVenda;

implementation

{$R *.dfm}

uses uDataModule;

end.