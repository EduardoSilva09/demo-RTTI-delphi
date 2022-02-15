program DemoRTTI;

uses
  Vcl.Forms,
  FormDemoEdit in 'C:\Repositorios\demo-RTTI-delphi\FormDemoEdit.pas' {DemoEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDemoEdit, DemoEdit);
  Application.Run;
end.
