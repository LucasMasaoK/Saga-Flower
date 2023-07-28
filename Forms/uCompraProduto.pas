unit uCompraProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModelVenda, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCompraProduto = class(TfrmModelVenda)
    bancoQueryCadastroID_COMPRA: TFDAutoIncField;
    bancoQueryCadastroID_FORNECEDOR: TIntegerField;
    bancoQueryCadastroID_FORMA_PGTO: TIntegerField;
    bancoQueryCadastroUSUARIO: TStringField;
    bancoQueryCadastroVALOR: TFMTBCDField;
    bancoQueryCadastroCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    dbEditSolicitante: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    bancoQueryFornecedor: TFDQuery;
    bancoQueryPagamento: TFDQuery;
    dataSourceFornecedor: TDataSource;
    dataSourcePagamento: TDataSource;
    bancoQueryFornecedorID_FORNECEDOR: TIntegerField;
    bancoQueryFornecedorNOME: TStringField;
    bancoQueryFornecedorENDERECO: TStringField;
    bancoQueryFornecedorNUMERO: TIntegerField;
    bancoQueryFornecedorBAIRRO: TStringField;
    bancoQueryFornecedorCIDADE: TStringField;
    bancoQueryFornecedorUF: TStringField;
    bancoQueryFornecedorCEP: TStringField;
    bancoQueryFornecedorTELEFONE: TStringField;
    bancoQueryFornecedorCNPJ: TStringField;
    bancoQueryFornecedorEMAIL: TStringField;
    bancoQueryFornecedorCADASTRO: TDateField;
    bancoQueryPagamentoID_FORMA_PGTO: TIntegerField;
    bancoQueryPagamentoDESCRICAO: TStringField;
    bancoQueryPagamentoCADASTRO: TDateField;
    bancoQueryCadastroNomeFornecedor: TStringField;
    Label7: TLabel;
    dbNomeFornecedor: TDBLookupComboBox;
    bancoQueryCadastroDescricaoPagamento: TStringField;
    dbDescricaoPagamento: TDBLookupComboBox;
    Label8: TLabel;
    bancoQueryProdutos: TFDQuery;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    dbEditQtdProduto: TDBEdit;
    Label11: TLabel;
    dbEditValorCusto: TDBEdit;
    Label12: TLabel;
    dbEditDesconto: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    bancoQueryItensNomeProduto: TStringField;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    queryItens: TFDQuery;
    bancoQueryProdutosID_PRODUTO: TIntegerField;
    bancoQueryProdutosPRODUTO_DESCRICAO: TStringField;
    bancoQueryProdutosID_FORNECEDOR: TIntegerField;
    bancoQueryProdutosVL_CUSTO: TFMTBCDField;
    bancoQueryProdutosVL_VENDA: TFMTBCDField;
    bancoQueryProdutosESTOQUE: TFMTBCDField;
    bancoQueryProdutosESTOQUE_MIN: TFMTBCDField;
    bancoQueryProdutosUNIDADE: TStringField;
    bancoQueryProdutosCADASTRO: TDateField;
    queryItensID_SEQUENCIA: TIntegerField;
    queryItensID_COMPRA: TIntegerField;
    queryItensID_PRODUTO: TIntegerField;
    queryItensQTDE: TFMTBCDField;
    queryItensVL_CUSTO: TFMTBCDField;
    queryItensDESCONTO: TFMTBCDField;
    queryItensTOTAL_ITEM: TFMTBCDField;
    queryItensNOMEPRODUTO: TStringField;
    queryItensVLCUSTOPRODUTO: TFloatField;
    DBEdit7: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure dbEditQtdProdutoExit(Sender: TObject);
    procedure dbEditDescontoExit(Sender: TObject);
    procedure btnInserirProdutoClick(Sender: TObject);
  private
    itemSequencia:integer;
  public

  end;

var
  frmCompraProduto: TfrmCompraProduto;

implementation

{$R *.dfm}

uses uDataModule;

procedure TfrmCompraProduto.btnInserirProdutoClick(Sender: TObject);
begin
  inherited;
if queryItensID_PRODUTO.AsInteger>0 then
begin
queryItens.Last;
itemSequencia:=itemSequencia+1;
 queryItensID_SEQUENCIA.AsInteger:=itemSequencia;
 queryItensID_COMPRA.AsInteger:=bancoQueryCadastroID_COMPRA.AsInteger;
 queryItens.Append;

end;

end;

procedure TfrmCompraProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
bancoQueryCadastro.Append;

queryItens.SQL.Add('');
queryItens.SQL.Add('SELECT * FROM ITEM_COMPRA WHERE ID_COMPRA :pIDCOMPRA');
queryItens.ParamByName('pIDCOMPRA').AsString:=bancoQueryCadastroID_COMPRA.AsString;
queryItens.open;

bancoQueryCadastroCADASTRO.AsDateTime:=Date;
dbEditSolicitante.SetFocus;
end;



procedure TfrmCompraProduto.DBEdit4Exit(Sender: TObject);
begin
  inherited;
if bancoQueryProdutosID_PRODUTO.AsInteger>0 then
begin
queryItensQTDE.AsFloat:=1;
queryItensDESCONTO.AsFloat:=0;
queryItensVL_CUSTO.AsFloat:=  queryItensVLCUSTOPRODUTO.AsFloat;

end;
end;

procedure TfrmCompraProduto.dbEditDescontoExit(Sender: TObject);
begin
  inherited;
queryItensTOTAL_ITEM.AsFloat:=(queryItensVL_CUSTO.AsFloat * queryItensQTDE.AsFloat) - queryItensDESCONTO.AsFloat;
end;

procedure TfrmCompraProduto.dbEditQtdProdutoExit(Sender: TObject);
begin
  inherited;
queryItensTOTAL_ITEM.AsFloat:=(queryItensVL_CUSTO.AsFloat * queryItensQTDE.AsFloat);
end;

end.
