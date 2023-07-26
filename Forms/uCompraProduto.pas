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
    bancoQueryProdutoID_SEQUENCIA: TIntegerField;
    bancoQueryProdutoID_COMPRA: TIntegerField;
    bancoQueryProdutoID_PRODUTO: TIntegerField;
    bancoQueryProdutoQTDE: TFMTBCDField;
    bancoQueryProdutoVL_CUSTO: TFMTBCDField;
    bancoQueryProdutoDESCONTO: TFMTBCDField;
    bancoQueryProdutoTOTAL_ITEM: TFMTBCDField;
    bancoQueryProdutos: TFDQuery;
    bancoQueryProdutosID_PRODUTO: TIntegerField;
    bancoQueryProdutosPRODUTO_DESCRICAO: TStringField;
    bancoQueryProdutosID_FORNECEDOR: TIntegerField;
    bancoQueryProdutosVL_CUSTO: TFMTBCDField;
    bancoQueryProdutosVL_VENDA: TFMTBCDField;
    bancoQueryProdutosESTOQUE: TFMTBCDField;
    bancoQueryProdutosESTOQUE_MIN: TFMTBCDField;
    bancoQueryProdutosUNIDADE: TStringField;
    bancoQueryProdutosCADASTRO: TDateField;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    bancoQueryItensNomeProduto: TStringField;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompraProduto: TfrmCompraProduto;

implementation

{$R *.dfm}

uses uDataModule;

procedure TfrmCompraProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
bancoQueryCadastroCADASTRO.AsDateTime:=Date;
dbEditSolicitante.SetFocus;
end;

end.
