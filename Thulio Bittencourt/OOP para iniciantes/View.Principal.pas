unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Classe.Cliente;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa1,
  Pessoa2: TPessoa;
begin
  Pessoa1:= TPessoa.Create;
  Pessoa2:= TPessoa.Create;
  try
    Pessoa1.Nome := 'Thulio';
    Pessoa1.DataNasc := '12/09/1987';

    Pessoa2.Nome := 'Eber';
    Pessoa2.DataNasc := '30/01/1988';

    ShowMessage(Pessoa1.Nome + ' - ' + IntToStr(Pessoa1.Idate));
    ShowMessage(Pessoa2.Nome + ' - ' + IntToStr(Pessoa2.Idate));
  finally
    Pessoa1.Free;
    Pessoa2.Free;
  end;
end;

end.
