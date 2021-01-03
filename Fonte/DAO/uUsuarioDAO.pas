unit uUsuarioDAO;

interface

uses
  System.Generics.Collections, uUsuario, FireDAC.Stan.Param, System.SysUtils,
  Vcl.Dialogs, System.Classes, Vcl.Forms;

type

  IUsuarioDAO = Interface
  ['{B297B0E4-61AA-435D-AC11-AA69955C481A}']
    function  ListarUsuario: TList<IUsuario>;
    procedure Alterar(usu  : IUsuario);
    procedure Excluir(usu  : IUsuario);
    procedure Incluir(usu  : IUsuario);
  End;

  TUsuarioDAO = class(TInterfacedObject, IUsuarioDAO)
    function  ListarUsuario: TList<IUsuario>;
    procedure Alterar(usu  : IUsuario);
    procedure Excluir(usu  : IUsuario);
    procedure Incluir(usu  : IUsuario);
  End;

implementation

uses
  uDM, uCompanhia, uEndereco;

{ TUsuarioDAO }

{No Json, Companhia e Endereço estão dentro de Usuário.
Como Companhia e Endereço pertencem ao Usuário e sempre são persistidas
em virtude do Usuário, então a alteração das mesmas está sendo feita no método abaixo}
procedure TUsuarioDAO.Alterar(usu: IUsuario);
begin
  try
    Dm.FDQryUpd.Connection := TConexao.Instance;

    //Dados Companhia
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := ' Update Companhia                   '+
                            '    set Nome        = :Nome,        '+
                            '        CatchPhrase = :CatchPhrase, '+
                            '        Bs          = :Bs           '+
                            ' Where  Id          = :Id           ';

    Dm.FDQryUpd.ParamByName('Nome').AsString        := usu.Companhia.Nome;
    Dm.FDQryUpd.ParamByName('CatchPhrase').AsString := usu.Companhia.CatchPhrase;
    Dm.FDQryUpd.ParamByName('Bs').AsString          := usu.Companhia.Bs;
    Dm.FDQryUpd.ParamByName('Id').AsInteger         := usu.Companhia.Id;

    Dm.FDQryUpd.ExecSQL;

    //Dados Endereço
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := ' Update Endereco                    '+
                            '    set Rua         = :Rua,         '+
                            '        Complemento = :Complemento, '+
                            '        Cidade      = :Cidade,      '+
                            '        Cep         = :Cep,         '+
                            '        Lat         = :Lat,         '+
                            '        Lng         = :Lng          '+
                            ' Where  Id          = :Id           ';

    Dm.FDQryUpd.ParamByName('Rua').AsString        := usu.Endereco.Rua;
    Dm.FDQryUpd.ParamByName('Complemento').AsString:= usu.Endereco.Complemento;
    Dm.FDQryUpd.ParamByName('Cidade').AsString     := usu.Endereco.Cidade;
    Dm.FDQryUpd.ParamByName('Cep').AsString        := usu.Endereco.Cep;
    Dm.FDQryUpd.ParamByName('Lat').AsString        := usu.Endereco.Lat;
    Dm.FDQryUpd.ParamByName('Lng').AsString        := usu.Endereco.Lng;
    Dm.FDQryUpd.ParamByName('Id').AsInteger        := usu.Endereco.Id;

    Dm.FDQryUpd.ExecSQL;

    //Dados do Usuário
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := ' Update Usuario '+
                            '    set Id_Co  = :Id_Co,   '+
                            '        Id_End = :Id_End,  '+
                            '        Nome   = :Nome,    '+
                            '        Apelido= :Apelido, '+
                            '        Email  = :Email,   '+
                            '        Fone   = :Fone,    '+
                            '        Website= :Website  '+
                            ' Where  Id = :Id           ';

    Dm.FDQryUpd.ParamByName('Id_Co').AsInteger  := usu.Companhia.Id;
    Dm.FDQryUpd.ParamByName('Id_End').AsInteger := usu.Endereco.Id;
    Dm.FDQryUpd.ParamByName('Nome').AsString    := usu.Nome;
    Dm.FDQryUpd.ParamByName('Apelido').AsString := usu.Apelido;
    Dm.FDQryUpd.ParamByName('Email').AsString   := usu.Email;
    Dm.FDQryUpd.ParamByName('Fone').AsString    := usu.Fone;
    Dm.FDQryUpd.ParamByName('Website').AsString := usu.Website;
    Dm.FDQryUpd.ParamByName('Id').AsInteger     := usu.Id;

    Dm.FDQryUpd.ExecSQL;
  except
    on E:Exception do
    begin
      raise Exception.Create('Falha ao alterar Usuário. Verifique sua conexão.'+#13#13+E.Message);
    end;
  end;
end;

procedure TUsuarioDAO.Excluir(usu: IUsuario);
begin
  try
    //Deleta usuário
    Dm.FDQryUpd.Connection := TConexao.Instance;
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := 'Delete From Usuario Where Id = :Id';
    Dm.FDQryUpd.ParamByName('Id').AsInteger := usu.Id;
    Dm.FDQryUpd.ExecSQL;
    //Deleta Endereço
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := 'Delete From Endereco Where Id = :Id';
    Dm.FDQryUpd.ParamByName('Id').AsInteger := usu.Endereco.Id;
    Dm.FDQryUpd.ExecSQL;
    //Deleta Companhia
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := 'Delete From Companhia Where Id = :Id';
    Dm.FDQryUpd.ParamByName('Id').AsInteger := usu.Companhia.Id;
    Dm.FDQryUpd.ExecSQL;
  except
    on E:Exception do
    begin
      raise Exception.Create('Falha ao excluir Usuário. Verifique sua conexão.'+#13#13+E.Message);
    end;
  end;
end;

procedure TUsuarioDAO.Incluir(usu: IUsuario);
var IdCo : Integer;
    IdEnd: Integer;
begin
  try
    Dm.FDQryUpd.Connection := TConexao.Instance;
    Dm.FDQryAux.Connection := TConexao.Instance;

    Dm.FDQryUpd.Connection.StartTransaction;
    //Buscando ultimo Id de Companhia para gerar o próx. sequencial
    Dm.FDQryAux.Close;
    Dm.FDQryAux.SQL.Text := 'Select (Coalesce(Max(Id),0) + 1) as IdCo From Companhia ';
    Dm.FDQryAux.Open;
    IdCo := Dm.FDQryAux.FieldByName('IdCo').AsInteger;

    //Inserindo a Companhia
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := 'Insert into Companhia (Id, Nome, CatchPhrase, Bs) '+
                               ' values (:Id, :Nome, :CatchPhrase, :Bs) ';

    Dm.FDQryUpd.ParamByName('Id').AsInteger        := IdCo;
    Dm.FDQryUpd.ParamByName('Nome').AsString       := usu.Companhia.Nome;
    Dm.FDQryUpd.ParamByName('CatchPhrase').AsString:= usu.Companhia.CatchPhrase;
    Dm.FDQryUpd.ParamByName('Bs').AsString         := usu.Companhia.Bs;
    Dm.FDQryUpd.ExecSQL;

    //Buscando ultimo Id de Companhia para gerar o próx. sequencial
    Dm.FDQryAux.Close;
    Dm.FDQryAux.SQL.Text := 'Select (Coalesce(Max(Id),0) + 1) as IdEnd From Endereco ';
    Dm.FDQryAux.Open;
    IdEnd := Dm.FDQryAux.FieldByName('IdEnd').AsInteger;

    //Inserindo o Endereço
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := 'Insert into Endereco (Id, Rua, Complemento, Cidade, Cep, Lat, Lng) '+
                            '  Values (:Id, :Rua, :Complemento, :Cidade, :Cep, :Lat, :Lng) ';


    Dm.FDQryUpd.ParamByName('Id').AsInteger        := IdEnd;
    Dm.FDQryUpd.ParamByName('Rua').AsString        := usu.Endereco.Rua;
    Dm.FDQryUpd.ParamByName('Complemento').AsString:= usu.Endereco.Complemento;
    Dm.FDQryUpd.ParamByName('Cidade').AsString     := usu.Endereco.Cidade;
    Dm.FDQryUpd.ParamByName('Cep').AsString        := usu.Endereco.Cep;
    Dm.FDQryUpd.ParamByName('Lat').AsString        := usu.Endereco.Lat;
    Dm.FDQryUpd.ParamByName('Lng').AsString        := usu.Endereco.Lng;
    Dm.FDQryUpd.ExecSQL;

    //Inserindo o Usuário
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := 'Insert into Usuario (Id, Id_Co, Id_End, Nome, Apelido, Email, Fone, Website) '+
                            '  Values (:Id, :Id_Co, :Id_End, :Nome, :Apelido, :Email, :Fone, :Website) ';

    Dm.FDQryUpd.ParamByName('Id').AsInteger    := usu.Id;
    Dm.FDQryUpd.ParamByName('Id_Co').AsInteger := IdCo;
    Dm.FDQryUpd.ParamByName('Id_End').AsInteger:= IdEnd;
    Dm.FDQryUpd.ParamByName('Nome').AsString   := usu.Nome;
    Dm.FDQryUpd.ParamByName('Apelido').AsString:= usu.Apelido;
    Dm.FDQryUpd.ParamByName('Email').AsString  := usu.Email;
    Dm.FDQryUpd.ParamByName('Fone').AsString   := usu.Fone;
    Dm.FDQryUpd.ParamByName('Website').AsString:= usu.Website;
    Dm.FDQryUpd.ExecSQL;

    Dm.FDQryUpd.Connection.Commit;
  except
    on E:Exception do
    begin
      Dm.FDQryUpd.Connection.Rollback;
      raise Exception.Create('Falha ao incluir Usuário. Verifique sua conexão.'+#13#13+E.Message);
    end;
  end;
end;

function TUsuarioDAO.ListarUsuario: TList<IUsuario>;
var Indice: Integer;
begin
  try
    Dm.FDQryUpd.Connection := TConexao.Instance;
    Dm.FDQryUpd.Close;
    Dm.FDQryUpd.SQL.Text := ' Select u.id as Id_Usu,     '+
                            '        u.id_co,            '+
                            '        u.id_end,           '+
                            '        u.nome as Nome_Usu, '+
                            '        u.apelido,          '+
                            '        u.email,            '+
                            '        u.fone,             '+
                            '        u.website,          '+
                            '        e.rua,              '+
                            '        e.complemento,      '+
                            '        e.cidade,           '+
                            '        e.cep,              '+
                            '        e.lat,              '+
                            '        e.lng,              '+
                            '        c.nome as Nome_Co,  '+
                            '        c.catchphrase,      '+
                            '        c.bs                '+
                            ' From Usuario u             '+
                            ' Left Join Endereco e       '+
                            '   on (u.id_end = e.id)     '+
                            ' Left Join companhia c      '+
                            '   on (u.id_co = c.id)      ';
    Dm.FDQryUpd.Open;

    Result := TList<IUsuario>.Create;

    while not Dm.FDQryUpd.Eof do
    begin

      //Adiciona um novo usuário
      Indice := Result.Add(TUsuario.Create);
      //Dados Companhia
      Result.Items[Indice].Companhia.Id         := Dm.FDQryUpd.FieldByName('id_co').AsInteger;
      Result.Items[Indice].Companhia.Bs         := Dm.FDQryUpd.FieldByName('bs').AsString;
      Result.Items[Indice].Companhia.CatchPhrase:= Dm.FDQryUpd.FieldByName('catchphrase').AsString;
      Result.Items[Indice].Companhia.Nome       := Dm.FDQryUpd.FieldByName('Nome_Co').AsString;
      //Dados Endereço
      Result.Items[Indice].Endereco.Id          := Dm.FDQryUpd.FieldByName('id_end').AsInteger;
      Result.Items[Indice].Endereco.Cidade      := Dm.FDQryUpd.FieldByName('cidade').AsString;
      Result.Items[Indice].Endereco.Lat         := Dm.FDQryUpd.FieldByName('lat').AsString;
      Result.Items[Indice].Endereco.Lng         := Dm.FDQryUpd.FieldByName('lng').AsString;
      Result.Items[Indice].Endereco.Rua         := Dm.FDQryUpd.FieldByName('rua').AsString;
      Result.Items[Indice].Endereco.Complemento := Dm.FDQryUpd.FieldByName('complemento').AsString;
      Result.Items[Indice].Endereco.Cep         := Dm.FDQryUpd.FieldByName('cep').AsString;

      Result.Items[Indice].Id                   := Dm.FDQryUpd.FieldByName('Id_Usu').AsInteger;
      Result.Items[Indice].Email                := Dm.FDQryUpd.FieldByName('email').AsString;
      Result.Items[Indice].Nome                 := Dm.FDQryUpd.FieldByName('Nome_Usu').AsString;
      Result.Items[Indice].Fone                 := Dm.FDQryUpd.FieldByName('fone').AsString;
      Result.Items[Indice].Apelido              := Dm.FDQryUpd.FieldByName('apelido').AsString;
      Result.Items[Indice].Website              := Dm.FDQryUpd.FieldByName('website').AsString;

      Dm.FDQryUpd.Next;
    end;
  except
    on E:Exception do
    begin
      raise Exception.Create('Falha ao consultar Usuários. Verifique sua conexão.');
    end;
  end;
end;

end.
