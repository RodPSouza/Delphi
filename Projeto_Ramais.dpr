program Projeto_Ramais;

uses
  Forms,
  Form_Principal in 'Form_Principal.pas' {Form1},
  Unit_Teste in 'Unit_Teste.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
