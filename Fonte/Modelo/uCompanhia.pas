unit uCompanhia;

interface

type

ICompanhia = interface
  ['{AC81CE4C-8933-4013-89C1-D540FE4AA9DD}']
  function  GetId         :Integer;
  function  GetBs         :string;
  function  GetCatchPhrase:string;
  function  GetNome       :string;
  procedure SetId(Value: Integer);
  procedure SetBs(Value: string);
  procedure SetCatchPhrase(Value: string);
  procedure SetNome(Value: string);

  property Id         :Integer read GetId          write SetId;
  property Bs         :string  read GetBs          write SetBs;
  property CatchPhrase:string  read GetCatchPhrase write SetCatchPhrase;
  property Nome       :string  read GetNome        write SetNome;
end;

TCompanhia = class(TInterfacedObject, ICompanhia)
  private
    FId         :Integer;
    FBs         :string;
    FCatchPhrase:string;
    FNome       :string;
  protected
    function  GetId         :Integer;
    function  GetBs         :string;
    function  GetCatchPhrase:string;
    function  GetNome       :string;
    procedure SetId(Value: Integer);
    procedure SetBs(Value: string);
    procedure SetCatchPhrase(Value: string);
    procedure SetNome(Value: string);
  end;

implementation

{ TCompanhia }

function TCompanhia.GetBs: string;
begin
  Result := FBs;
end;

function TCompanhia.GetCatchPhrase: string;
begin
  Result := FCatchPhrase;
end;

function TCompanhia.GetId: Integer;
begin
  Result := FId;
end;

function TCompanhia.GetNome: string;
begin
  Result := FNome;
end;

procedure TCompanhia.SetBs(Value: string);
begin
  FBs := Value;
end;

procedure TCompanhia.SetCatchPhrase(Value: string);
begin
  FCatchPhrase := Value;
end;

procedure TCompanhia.SetId(Value: Integer);
begin
  FId := Value;
end;

procedure TCompanhia.SetNome(Value: string);
begin
  FNome := Value;
end;

end.
