object frmModelCadastro: TfrmModelCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de '
  ClientHeight = 443
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 705
    Height = 75
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 359
    ExplicitWidth = 699
    object btnNovo: TBitBtn
      Left = 16
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnDeletar: TBitBtn
      Left = 112
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Deletar'
      TabOrder = 1
      OnClick = btnDeletarClick
    end
    object btnSalvar: TBitBtn
      Left = 208
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnCancelar: TBitBtn
      Left = 304
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnPesquisar: TBitBtn
      Left = 400
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Pesquisar'
      TabOrder = 4
    end
  end
  object bancoQueryCadastro: TFDQuery
    Connection = frmDataModule.conectaBanco
    Left = 544
    Top = 256
  end
  object dataSourceCadastro: TDataSource
    DataSet = bancoQueryCadastro
    Left = 632
    Top = 272
  end
end
