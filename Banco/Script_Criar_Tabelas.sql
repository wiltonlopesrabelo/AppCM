Create Table Endereco(
 Id Integer not null,
 Rua varchar(100),
 Complemento varchar(30),
 Cidade varchar(30),
 Cep varchar(12),
 Lat varchar(12),
 Lng varchar(12),
 primary key(Id)
)

Create Table Companhia (
 Id Integer not null,
 Nome varchar(100),
 CatchPhrase varchar(100),
 Bs varchar(100),
 primary key(Id)   
)

Create Table Usuario (
 Id Integer not null,
 Id_Co Integer not null,
 Id_End Integer not null,
 Nome varchar(100),
 Apelido varchar(50),
 Email varchar(100),
 Fone varchar(30),
 Website varchar(100),
 primary key(Id),
 foreign key (Id_Co) references Companhia (Id) on delete cascade,
 foreign key (Id_End) references Endereco (Id) on delete cascade
);


Create Generator gen_Log_Usuario;

Create Trigger trg_gen_Log_Usuario_id for Log_Usuario
active before insert position 0
as
begin
  if (new.Id is null) then
    new.Id = gen_id(gen_Log_Usuario,1);
end;


Create Trigger trg_Log_Upt_Usu for Usuario
active before update position 0
as
begin
  insert into Log_Usuario (Old_Id_Usu, New_Id_Usu,
                           Old_Id_Co,  New_Id_Co,
                           Old_Id_End, New_Id_End,
                           Old_Nome, New_Nome,
                           Old_Apelido, New_Apelido,
                           Old_Email, New_Email,
                           Old_Fone, New_Fone,
                           Old_Website, New_Website,
                           Operacao,
                           Data_Log)
                    values(Old.Id, New.Id,
                           Old.Id_Co, New.Id_Co,
                           Old.Id_End, New.Id_End,
                           Old.Nome, New.Nome,
                           Old.Apelido, New.Apelido,
                           Old.Email, New.Email,
                           Old.Fone, New.Fone,
                           Old.WebSite, New.WebSite,
                           'Edicao', current_timestamp);

end;

Create Trigger trg_Log_Del_Usu for Usuario
active before Delete position 0
as
begin
insert into Log_Usuario (  Old_Id_Usu, New_Id_Usu,
                           Old_Id_Co,  New_Id_Co,
                           Old_Id_End, New_Id_End,
                           Old_Nome, New_Nome,
                           Old_Apelido, New_Apelido,
                           Old_Email, New_Email,
                           Old_Fone, New_Fone,
                           Old_Website, New_Website,
                           Operacao,
                           Data_Log)
                    values(Old.Id, Null,
                           Old.Id_Co, Null,
                           Old.Id_End, Null,
                           Old.Nome, Null,
                           Old.Apelido, Null,
                           Old.Email, Null,
                           Old.Fone, Null,
                           Old.WebSite, Null,
                           'Exclusao', current_timestamp);
end;

