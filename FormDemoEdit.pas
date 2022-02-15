unit FormDemoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TDemoEdit = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DemoEdit: TDemoEdit;

implementation

uses
  System.RTTI;
{$R *.dfm}

procedure TDemoEdit.Button1Click(Sender: TObject);
var
  context: TRTTIContext;
  Tipo: TRTTIType;
  campos : TRTTIField;
  Atrributo : TRTTIProperty;
  Componente: TComponent;
begin
  context := TRTTIContext.Create;
  try
    Tipo := context.GetType(self.ClassInfo);

    for Atrributo in Tipo.GetProperties do
      memo1.Lines.Add(Atrributo.Name);

    for campos in Tipo.GetFields do
    begin
      Componente := FindComponent(campos.Name);

      if Componente is TEdit and
         (Componente as TEdit).Hint.Equals('Obrigatorio')
      then
      begin
        (Componente as TEdit).Text := (Componente as TEdit).Hint;
      end;

      if Componente is TDBEdit and
         (Componente as TDBEdit).Hint.Equals('Obrigatorio')
      then
      begin
        (Componente as TDBEdit).TextHint := (Componente as TDBEdit).Hint;
        (Componente as TDBEdit).TextHint := (Componente as TDBEdit).Hint;
      end;

    end;

  finally
    context.Free;
  end;
end;

end.
