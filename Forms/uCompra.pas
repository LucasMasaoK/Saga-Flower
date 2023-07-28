unit uCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelVenda, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmCompra = class(TfrmModelVenda)
    bancoQueryCompra: TFDQuery;
    bancoQueryCompraID_COMPRA: TIntegerField;
    bancoQueryCompraID_FORNECEDOR: TIntegerField;
    bancoQueryCompraID_FORMA_PGTO: TIntegerField;
    bancoQueryCompraUSUARIO: TStringField;
    bancoQueryCompraVALOR: TFMTBCDField;
    bancoQueryCompraCADASTRO: TDateField;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    DataSourceCompra: TDataSource;
    Label8: TLabel;
    editFornecedor: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    editUsuario: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    bancoQueryPagamento: TFDQuery;
    bancoQueryFornecedor: TFDQuery;
    bancoQueryCompraNOMEFORNECEDOR: TStringField;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    bancoQueryCompraFORMAPAGAMENTO: TStringField;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    dataSourcePagamento: TDataSource;
    bancoQueryPagamentoID_FORMA_PGTO: TIntegerField;
    bancoQueryPagamentoDESCRICAO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

uses uDataModule;

procedure TfrmCompra.btnInserirProdutoClick(Sender: TObject);
begin
  if bancoQueryItens.RecordCount > 0 then
  begin
    bancoQueryItensID_COMPRA.AsInteger := bancoQueryCompraID_COMPRA.AsInteger;
    bancoQueryItens.Post;
    bancoQueryItens.Append;
  end
  else
  begin
    try
      bancoQueryCompra.Post;
    except
      ShowMessage('PREENCHA OS DADOS DA VENDA');
      ABORT;
    end;
    bancoQueryItensID_COMPRA.AsInteger := bancoQueryCompraID_COMPRA.AsInteger;
    bancoQueryItens.Post;
    bancoQueryItens.Append;
  end;

end;

procedure TfrmCompra.btnNovoClick(Sender: TObject);
begin
  inherited;
  bancoQueryCompra.Append;
end;

procedure TfrmCompra.FormActivate(Sender: TObject);
begin
  inherited;
  bancoQueryCompra.Active := True;
end;

procedure TfrmCompra.FormShow(Sender: TObject);
begin
  inherited;
  bancoQueryCompra.Open;
  bancoQueryCompra.Append;
  bancoQueryCompraUSUARIO.AsString := 'Lucas';
  bancoQueryCompraID_FORMA_PGTO.AsInteger := 1;
  bancoQueryCompraCADASTRO.AsDateTime := Date;
  bancoQueryItens.ParamByName('pCompra').AsInteger :=
    bancoQueryCompraID_COMPRA.AsInteger;

  bancoQueryItens.Open;
  bancoQueryItens.Edit;

end;

end.