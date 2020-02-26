unit Classe.Pessoa;

interface

uses
  System.SysUtils, Classe.SQL;

type
  TPessoa = class
  private

  public
    Nome: String;
    DataNasc: String;
    Sexo: String;
    Etnia: String;
    SQL: TConSQL;
    function Idate: Integer;

  end;

implementation

function TPessoa.Idate: Integer;
begin
  Result := Trunc((Now - StrToDate(DataNasc)) / 365.25);
end;

end.
