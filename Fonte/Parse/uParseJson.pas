unit uParseJson;

interface

uses System.JSON, System.Generics.Collections;

type
  TParseJson = class
    class procedure PersisteUsersJson(JsonStr: String);
  end;

implementation

uses
  uUsuario, uCompanhia, System.SysUtils, uEndereco, uUsuarioDAO;

{ TParseJson }

class procedure TParseJson.PersisteUsersJson(JsonStr: string);
var JsonObj,
    JsonObjSub,
    JsonObjSubGeo: TJsonObject;
    JsonObjArr   : TJSONArray;
    JsonValue    : TJSonValue;
    UsuDao       : IUsuarioDAO;
    Usu          : IUsuario;
    I            : Integer;
begin
  UsuDao := TUsuarioDao.Create;

  JsonValue   := TJSonObject.ParseJSONValue(JsonStr);
  JsonObjArr := JsonValue as TJSONArray;
  try
    for I := 0 to JsonObjArr.Count - 1 do
    begin
      JsonObj := TJsonObject.ParseJSONValue(JsonObjArr.Items[I].ToJSON) as TJsonObject;
      //Dados Usuário
      Usu        := TUsuario.Create;
      Usu.Id     := StrToInt(JsonObj.GetValue('id').Value);
      Usu.Nome   := JsonObj.GetValue('name').Value;
      Usu.Email  := JsonObj.GetValue('email').Value;
      Usu.Fone   := JsonObj.GetValue('phone').Value;
      Usu.Apelido:= JsonObj.GetValue('username').Value;
      Usu.Website:= JsonObj.GetValue('website').Value;
      //Dados Companhia
      JsonObjSub := TJsonObject.ParseJSONValue(JsonObj.GetValue('company').ToJson) as TJsonObject;

      Usu.Companhia.Nome       := JsonObjSub.GetValue('name').Value;
      Usu.Companhia.Bs         := JsonObjSub.GetValue('bs').Value;
      Usu.Companhia.CatchPhrase:= JsonObjSub.GetValue('catchPhrase').Value;

      //Dados Endereço
      JsonObjSub := TJsonObject.ParseJSONValue(JsonObj.GetValue('address').ToJson) as TJsonObject;

      Usu.Endereco.Cidade     := JsonObjSub.GetValue('city').Value;
      Usu.Endereco.Rua        := JsonObjSub.GetValue('street').Value;
      Usu.Endereco.Complemento:= JsonObjSub.GetValue('suite').Value;
      Usu.Endereco.Cep        := JsonObjSub.GetValue('zipcode').Value;

      //Informação de Latidude e Longitude dentro de address
      JsonObjSubGeo    := TJsonObject.ParseJSONValue(JsonObjSub.GetValue('geo').ToJson) as TJsonObject;

      Usu.Endereco.Lat := JsonObjSubGeo.GetValue('lat').Value;
      Usu.Endereco.Lng := JsonObjSubGeo.GetValue('lng').Value;
      try
        UsuDao.Incluir(Usu);
      except
        on E:Exception do
        begin
          {Não estou capturando caso seja erro de chave, pois quero que importe novamente se o usuário
           clicar em importar. Poderia excluir antes de incluir o usuário, mas isso iria gravar na tabela de Log.}
          if AnsiPos('PRIMARY or UNIQUE KEY',E.Message) <> 0 then
            Continue
          else
            raise;
        end;
      end;
    end;
  except
    on E:Exception do
      begin
        raise Exception.Create('Falha ao importar dados. Verifique sua conexão.');
      end;
  end;

end;

end.
