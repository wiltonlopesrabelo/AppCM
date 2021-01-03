unit uEndereco;

interface

type

IEndereco = interface
  ['{EFC6E414-98AA-45F8-B855-DD6023BD52A2}']
  function  GetId         :Integer;
  function  GetCidade     :string;
  function  GetLat        :string;
  function  GetLng        :string;
  function  GetRua        :string;
  function  GetComplemento:string;
  function  GetCep        :string;
  procedure SetId(Value: Integer);
  procedure SetCidade(Value: string);
  procedure SetLat(Value: string);
  procedure SetLng(Value: string);
  procedure SetRua(Value: string);
  procedure SetComplemento(Value: string);
  procedure SetCep(Value: string);

  property Id         :Integer read GetId          write SetId;
  property Cidade     :string  read GetCidade      write SetCidade;
  property Lat        :string  read GetLat         write SetLat;
  property Lng        :string  read GetLng         write SetLng;
  property Rua        :string  read GetRua         write SetRua;
  property Complemento:string  read GetComplemento write SetComplemento;
  property Cep        :string  read GetCep         write SetCep;
end;


TEndereco = class(TInterfacedObject, IEndereco)
  private
    FId         :Integer;
    FCidade     :string;
    FLat        :string;
    FLng        :string;
    FRua        :string;
    FComplemento:string;
    FCep        :string;
  protected
    function  GetId         :Integer;
    function  GetCidade     :string;
    function  GetLat        :string;
    function  GetLng        :string;
    function  GetRua        :string;
    function  GetComplemento:string;
    function  GetCep        :string;
    procedure SetId(Value: Integer);
    procedure SetCidade(Value: string);
    procedure SetLat(Value: string);
    procedure SetLng(Value: string);
    procedure SetRua(Value: string);
    procedure SetComplemento(Value: string);
    procedure SetCep(Value: string);
  end;

implementation

{ TEndereco }

function TEndereco.GetCep: string;
begin
  Result := FCep;
end;

function TEndereco.GetCidade: string;
begin
  Result := FCidade;
end;

function TEndereco.GetComplemento: string;
begin
  Result := FComplemento;
end;

function TEndereco.GetId: Integer;
begin
  Result := FId;
end;

function TEndereco.GetLat: string;
begin
  Result := FLat;
end;

function TEndereco.GetLng: string;
begin
  Result := FLng;
end;

function TEndereco.GetRua: string;
begin
  Result := FRua;
end;

procedure TEndereco.SetCep(Value: string);
begin
  FCep := Value;
end;

procedure TEndereco.SetCidade(Value: string);
begin
  FCidade := Value;
end;

procedure TEndereco.SetComplemento(Value: string);
begin
  FComplemento := Value;
end;

procedure TEndereco.SetId(Value: Integer);
begin
  FId := Value;
end;

procedure TEndereco.SetLat(Value: string);
begin
  FLat := Value;
end;

procedure TEndereco.SetLng(Value: string);
begin
  FLng := Value;
end;

procedure TEndereco.SetRua(Value: string);
begin
  FRua := Value;
end;

end.
