unit Classe.Endereco;

interface

uses
  System.SysUtils;

type TEndereco = class
  private
    FLogradouro: String;
    FNumero: Integer;
    procedure SetLogradouro(const Value: String);
    procedure SetNumero(const Value: Integer);
  public
    property Logradouro: String read FLogradouro write SetLogradouro;
    property Numero: Integer read FNumero write SetNumero;
    constructor Create;
end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  Logradouro := 'Sem endere�o';
  Numero     := 0;
end;

procedure TEndereco.SetLogradouro(const Value: String);
begin
  FLogradouro := Value;
end;

procedure TEndereco.SetNumero(const Value: Integer);
begin
  FNumero := Value;
end;

end.
