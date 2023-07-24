program SagaFlower;

uses
  Vcl.Forms,
  uPrincipal in 'Forms\uPrincipal.pas' {frmPrincipal},
  uDataModule in 'Forms\uDataModule.pas' {frmDataModule: TDataModule},
  uModelCadastro in 'Forms\Model\uModelCadastro.pas' {frmModelCadastro},
  uCadastroCliente in 'Forms\uCadastroCliente.pas' {frmCadastroCliente},
  uModelConsulta in 'Forms\Model\uModelConsulta.pas' {frmModelConsulta},
  uConsultaCliente in 'Forms\uConsultaCliente.pas' {frmConsultaCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDataModule, frmDataModule);
  Application.CreateForm(TfrmModelCadastro, frmModelCadastro);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmModelConsulta, frmModelConsulta);
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  Application.Run;
end.
