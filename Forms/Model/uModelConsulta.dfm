object frmModelConsulta: TfrmModelConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta de '
  ClientHeight = 442
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 89
    Align = alTop
    TabOrder = 0
    object labelTermo: TLabel
      Left = 32
      Top = 16
      Width = 85
      Height = 15
      Caption = 'Termo Pesquisa:'
    end
    object Label1: TLabel
      Left = 208
      Top = 12
      Width = 79
      Height = 15
      Caption = 'Selecione Tipo:'
    end
    object radioTermo: TRadioGroup
      Left = 208
      Top = 12
      Width = 225
      Height = 65
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome/Fantasia'
        'C'#243'digo'
        'CPF/CNPJ'
        'Data')
      TabOrder = 0
    end
    object editPesquisa: TEdit
      Left = 32
      Top = 34
      Width = 137
      Height = 23
      TabOrder = 1
      TextHint = 'Digite sua pesquisa...'
    end
    object btnPesquisa: TBitBtn
      Left = 464
      Top = 25
      Width = 75
      Height = 41
      Caption = 'Pesquisa'
      TabOrder = 2
      OnClick = btnPesquisaClick
    end
    object btnSelecionar: TBitBtn
      Left = 576
      Top = 25
      Width = 75
      Height = 41
      Caption = 'Selecionar'
      ModalResult = 1
      TabOrder = 3
    end
  end
  object bancoGrid: TDBGrid
    Left = 0
    Top = 89
    Width = 717
    Height = 353
    Align = alClient
    DataSource = bancoConsultaSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object bancoConsulta: TFDQuery
    Connection = frmDataModule.conectaBanco
    Left = 536
    Top = 288
  end
  object bancoConsultaSource: TDataSource
    DataSet = bancoConsulta
    Left = 632
    Top = 280
  end
end
