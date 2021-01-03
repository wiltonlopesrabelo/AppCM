unit uUsuario;

interface

uses uEndereco, uCompanhia;

type

IUsuario = interface
  ['{C4211706-81EC-45AC-AC77-DE9CB164FD08}']
  function  GetEndereco :IEndereco;
  function  GetCompanhia:ICompanhia;
  function  GetEmail    :string;
  function  GetId       :Integer;
  function  GetNome     :string;
  function  GetFone     :string;
  function  GetApelido  :string;
  function  GetWebsite  :string;
  procedure SetEndereco(Value: IEndereco);
  procedure SetCompanhia(Value: ICompanhia);
  procedure SetEmail(Value: string);
  procedure SetId(Value: Integer);
  procedure SetNome(Value: string);
  procedure SetFone(Value: string);
  procedure SetApelido(Value: string);
  procedure SetWebSite(Value: string);

  property  Endereco :IEndereco  read GetEndereco  write SetEndereco;
  property  Companhia:ICompanhia read GetCompanhia write SetCompanhia;
  property  Email    :string     read GetEmail     write SetEmail;
  property  Id       :Integer    read GetId        write SetId;
  property  Nome     :string     read GetNome      write SetNome;
  property  Fone     :string     read GetFone      write SetFone;
  property  Apelido  :string     read GetApelido   write SetApelido;
  property  Website  :string     read GetWebsite   write SetWebsite;
end;

TUsuario = class(TInterfacedObject, IUsuario)
  private
    FEndereco :IEndereco;
    FCompanhia:ICompanhia;
    FEmail    :string;
    FId       :Integer;
    FNome     :string;
    FFone     :string;
    FApelido  :string;
    FWebsite  :string;
  protected
    function  GetEndereco :IEndereco;
    function  GetCompanhia:ICompanhia;
    function  GetEmail    :string;
    function  GetId       :Integer;
    function  GetNome     :string;
    function  GetFone    :string;
    function  GetApelido  :string;
    function  GetWebsite  :string;
    procedure SetEndereco(Value: IEndereco);
    procedure SetCompanhia(Value: ICompanhia);
    procedure SetEmail(Value: string);
    procedure SetId(Value: Integer);
    procedure SetNome(Value: string);
    procedure SetFone(Value: string);
    procedure SetApelido(Value: string);
    procedure SetWebSite(Value: string);
  public
    constructor Create;
  end;

implementation

{ TUsuario }

constructor TUsuario.Create;
begin
  inherited;
  FEndereco  := TEndereco.Create;
  FCompanhia := TCompanhia.Create;
end;

function TUsuario.GetApelido: string;
begin
  Result := FApelido;
end;

function TUsuario.GetCompanhia: ICompanhia;
begin
  Result := FCompanhia;
end;

function TUsuario.GetEmail: string;
begin
  Result := FEmail;
end;

function TUsuario.GetEndereco: IEndereco;
begin
  Result := FEndereco;
end;

function TUsuario.GetId: Integer;
begin
  Result := FId;
end;

function TUsuario.GetNome: string;
begin
  Result := FNome;
end;

function TUsuario.GetFone: string;
begin
  Result := FFone;
end;

function TUsuario.GetWebsite: string;
begin
  Result := FWebsite;
end;

procedure TUsuario.SetApelido(Value: string);
begin
  FApelido := Value;
end;

procedure TUsuario.SetCompanhia(Value: ICompanhia);
begin
  FCompanhia := Value;
end;

procedure TUsuario.SetEmail(Value: string);
begin
  FEmail := Value;
end;

procedure TUsuario.SetEndereco(Value: IEndereco);
begin
  FEndereco := Value;
end;

procedure TUsuario.SetId(Value: Integer);
begin
  FId := Value;
end;

procedure TUsuario.SetNome(Value: string);
begin
  FNome := Value;
end;

procedure TUsuario.SetFone(Value: string);
begin
  FFone := Value;
end;

procedure TUsuario.SetWebSite(Value: string);
begin
  FWebsite := Value;
end;

end.
