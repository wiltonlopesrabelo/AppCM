unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.DBClient, System.Generics.Collections, uUsuario, uUsuarioDAO, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmPrincipal = class(TForm)
    PctPrincipal: TPageControl;
    TsDados: TTabSheet;
    TsConexao: TTabSheet;
    GrbBanco: TGroupBox;
    EdtCaminhoBD: TEdit;
    BtnEscolherBD: TBitBtn;
    OpgCaminhoBD: TOpenDialog;
    LblCaminhoBD: TLabel;
    LblUsuario: TLabel;
    EdtUsuarioBD: TEdit;
    LblSenhaBD: TLabel;
    EdtSenhaBD: TEdit;
    BtnConectar: TBitBtn;
    PgcUsuarios: TPageControl;
    TsUsu: TTabSheet;
    TsEnd: TTabSheet;
    TsComp: TTabSheet;
    TsInteg: TTabSheet;
    GroupBox1: TGroupBox;
    EdtRotaUser: TEdit;
    LblRotaUser: TLabel;
    BtnImportar: TBitBtn;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    PnlStatusConexao: TPanel;
    pnlUsu: TPanel;
    GridUsuarios: TDBGrid;
    PnlEnd: TPanel;
    GridEndereco: TDBGrid;
    PnlComp: TPanel;
    GridCompanhia: TDBGrid;
    EdId: TDBEdit;
    PnlBotoes: TPanel;
    BtnExibir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSalvar: TBitBtn;
    LblId: TLabel;
    LblNome: TLabel;
    EdNome: TDBEdit;
    lblApelido: TLabel;
    EdApelido: TDBEdit;
    lblEmail: TLabel;
    EdEmail: TDBEdit;
    LblFone: TLabel;
    EdFone: TDBEdit;
    EdIdEnd: TDBEdit;
    lbIdEnd: TLabel;
    lblRua: TLabel;
    EdRua: TDBEdit;
    LblComplemento: TLabel;
    EdComplemento: TDBEdit;
    lblCidade: TLabel;
    EdCidade: TDBEdit;
    lblCep: TLabel;
    EdCep: TDBEdit;
    lblLatitude: TLabel;
    EdLatitude: TDBEdit;
    lblLongitude: TLabel;
    EdLongitude: TDBEdit;
    lblIdCo: TLabel;
    EdIdCo: TDBEdit;
    LblNomeCo: TLabel;
    EdNomeCo: TDBEdit;
    lblCatchPhrase: TLabel;
    EdCatchPhrase: TDBEdit;
    lblBs: TLabel;
    EdBs: TDBEdit;
    CdsUsu: TClientDataSet;
    CdsEnd: TClientDataSet;
    CdsComp: TClientDataSet;
    DsUsu: TDataSource;
    DsEnd: TDataSource;
    DsComp: TDataSource;
    CdsUsuid: TIntegerField;
    CdsUsuNome: TStringField;
    CdsUsuApelido: TStringField;
    CdsUsuEmail: TStringField;
    CdsUsuFone: TStringField;
    CdsUsuWebsite: TStringField;
    CdsEndRua: TStringField;
    CdsEndComplemento: TStringField;
    CdsEndCidade: TStringField;
    CdsEndCep: TStringField;
    CdsEndLat: TStringField;
    CdsEndLng: TStringField;
    CdsCompNome: TStringField;
    CdsCompCatchPhrase: TStringField;
    CdsCompBs: TStringField;
    CdsUsuIdEnd: TIntegerField;
    CdsUsuIdComp: TIntegerField;
    CdsCompIdComp: TIntegerField;
    CdsEndIdEnd: TIntegerField;
    BtnCancel: TBitBtn;
    TsLog: TTabSheet;
    PnlExcluidos: TPanel;
    GridExcluidos: TDBGrid;
    PnlEditados: TPanel;
    GridEditados: TDBGrid;
    QryEd: TFDQuery;
    QryEx: TFDQuery;
    DsEd: TDataSource;
    DsEx: TDataSource;
    QryEdOld_Id_Usu: TIntegerField;
    QryEdNew_Id_Usu: TIntegerField;
    QryEdOld_Id_Co: TIntegerField;
    QryEdNew_Id_Co: TIntegerField;
    QryEdOld_Id_End: TIntegerField;
    QryEdNew_Id_End: TIntegerField;
    QryEdOld_Nome: TStringField;
    QryEdNew_Nome: TStringField;
    QryEdOld_Apelido: TStringField;
    QryEdNew_Apelido: TStringField;
    QryEdOld_Email: TStringField;
    QryEdNew_Email: TStringField;
    QryEdOld_Fone: TStringField;
    QryEdNew_Fone: TStringField;
    QryEdOld_Website: TStringField;
    QryEdNew_Website: TStringField;
    QryExOld_Id_Usu: TIntegerField;
    QryExOld_Id_Co: TIntegerField;
    QryExOld_Id_End: TIntegerField;
    QryExOld_Nome: TStringField;
    QryExOld_Apelido: TStringField;
    QryExOld_Email: TStringField;
    QryExOld_Fone: TStringField;
    QryExOld_Website: TStringField;
    QryEdData_Log: TSQLTimeStampField;
    QryExData_Log: TSQLTimeStampField;
    procedure BtnEscolherBDClick(Sender: TObject);
    procedure BtnConectarClick(Sender: TObject);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnExibirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure GridUsuariosEnter(Sender: TObject);
  private
    { Private declarations }
    FUsuarioDao: IUsuarioDAO;
    procedure HabilitaControles;
    procedure PopulaDataSets(List: TList<IUsuario>);
    procedure ValidaConexao;
    procedure ValidaListaUsuario(List: TList<IUsuario>);
    procedure AtualizaLog;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uDM, uParseJson;

{$R *.dfm}

procedure TFrmPrincipal.AtualizaLog;
var FCon: TConexao;
begin
  FCon             := TConexao.Instance;
  QryEd.Connection := FCon;
  QryEx.Connection := FCon;

  if FCon.Connected then
    begin
      QryEd.Close;
      QryEd.Open;
      QryEx.Close;
      QryEx.Open;
    end;
end;

procedure TFrmPrincipal.BtnCancelClick(Sender: TObject);
begin
  CdsUsu.Cancel;
  CdsEnd.Cancel;
  CdsComp.Cancel;

  HabilitaControles;
end;

procedure TFrmPrincipal.BtnConectarClick(Sender: TObject);
var FCon: TConexao;
begin
  try
    //Recupera ou cria uma conexão com o BD
    FCon                  := TConexao.Instance;
    if BtnConectar.Caption = 'Conectar' then
    begin
      FCon.DriverName     := 'FB';
      FCon.LoginPrompt    := False;
      FCon.Params.Database:= EdtCaminhoBD.Text;
      FCon.Params.UserName:= EdtUsuarioBD.Text;
      FCon.Params.Password:= EdtSenhaBD.Text;      
      FCon.Open;                             
      
      GrbBanco.Enabled    := False;
      BtnConectar.Caption := 'Desconectar';

      PnlStatusConexao.Caption    := 'Banco Conectado';
      PnlStatusConexao.Font.Color := clWindowText;
      ShowMessage('Conectado.');

      AtualizaLog;
    end
    else
    begin
      GrbBanco.Enabled    := True;
      BtnConectar.Caption := 'Conectar';      

      if FCon.Connected then
        FCon.Close;

      PnlStatusConexao.Caption    := 'Sem Conexao com o Banco';
      PnlStatusConexao.Font.Color := clRed;
    end;
    
  except
    on E: Exception do
    begin
      ShowMessage('Falha ao conectar. Verique os dados de conexão com o banco.'+#13+#13+E.Message);
      Abort;
    end;
  end;
end;

procedure TFrmPrincipal.BtnEditarClick(Sender: TObject);
begin
  ValidaConexao;

  CdsUsu.Edit;
  CdsEnd.Edit;
  CdsComp.Edit;

  HabilitaControles;
  if EdNome.CanFocus then
    EdNome.SetFocus;
end;

procedure TFrmPrincipal.BtnEscolherBDClick(Sender: TObject);
begin
  if OpgCaminhoBD.Execute then
    if OpgCaminhoBD.FileName <> EmptyStr then
      EdtCaminhoBD.Text := OpgCaminhoBD.FileName;
end;

procedure TFrmPrincipal.BtnExcluirClick(Sender: TObject);
var usu: IUsuario;
begin
  ValidaConexao;

  if MessageDlg('Confirma exclusão?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    usu             := TUsuario.Create;
    usu.Id          := CdsUsuid.AsInteger;
    usu.Endereco.Id := CdsEndIdEnd.AsInteger;
    usu.Companhia.Id:= CdsCompIdComp.AsInteger;

    try
      FUsuarioDao.Excluir(usu);
      CdsUsu.Delete;
      AtualizaLog;
    except
      on E:Exception do
      begin
        ShowMessage(E.Message);
        Abort;
      end;
    end;
  end;
end;

procedure TFrmPrincipal.BtnExibirClick(Sender: TObject);
var List: TList<IUsuario>;
begin
  ValidaConexao;
  try
    List := FUsuarioDao.ListarUsuario;
    ValidaListaUsuario(List);

    PopulaDataSets(List);
    HabilitaControles;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
      Abort;
    end;
  end;
end;

procedure TFrmPrincipal.BtnImportarClick(Sender: TObject);
begin
  try
    RESTRequest.Execute;
    TParseJson.PersisteUsersJson(RESTResponse.Content);

    ShowMessage('Dados Importados');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
      Abort;
    end;
  end;
end;

procedure TFrmPrincipal.BtnSalvarClick(Sender: TObject);
var Usu: IUsuario;
begin
  try
    if MessageDlg('Confirma alteração?',mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      Usu := TUsuario.Create;

      Usu.Id                   := CdsUsuid.AsInteger;
      Usu.Email                := CdsUsuEmail.AsString;
      Usu.Nome                 := CdsUsuNome.AsString;
      Usu.Fone                 := CdsUsuFone.AsString;
      Usu.Apelido              := CdsUsuApelido.AsString;
      Usu.Website              := CdsUsuWebsite.AsString;
      Usu.Endereco.Id          := CdsEndIdEnd.AsInteger;
      Usu.Endereco.Cidade      := CdsEndCidade.AsString;
      Usu.Endereco.Lat         := CdsEndLat.AsString;
      Usu.Endereco.Lng         := CdsEndLng.AsString;
      Usu.Endereco.Rua         := CdsEndRua.AsString;
      Usu.Endereco.Complemento := CdsEndComplemento.AsString;
      Usu.Endereco.Cep         := CdsEndCep.AsString;
      Usu.Companhia.Id         := CdsCompIdComp.AsInteger;
      Usu.Companhia.Bs         := CdsCompBs.AsString;
      Usu.Companhia.CatchPhrase:= CdsCompCatchPhrase.AsString;
      Usu.Companhia.Nome       := CdsCompNome.AsString;

      FUsuarioDao.Alterar(Usu);

      CdsUsu.Post;
    end;
    HabilitaControles;
    AtualizaLog;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
      Abort;
    end;
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FUsuarioDao := TUsuarioDao.Create;
  //Informações do Usuário
  CdsUsu.Close;
  CdsUsu.CommandText := '';
  CdsUsu.CreateDataSet;
  CdsUsu.EmptyDataSet;
  //Informações do endereço do usuário
  CdsEnd.Close;
  CdsEnd.CommandText := '';
  CdsEnd.CreateDataSet;
  CdsEnd.EmptyDataSet;
  //Informações da Companhia do Usuário
  CdsComp.Close;
  CdsComp.CommandText := '';
  CdsComp.CreateDataSet;
  CdsComp.EmptyDataSet;
end;

procedure TFrmPrincipal.GridUsuariosEnter(Sender: TObject);
begin
  CdsUsu.Cancel;
  CdsEnd.Cancel;
  CdsComp.Cancel;
  HabilitaControles;
end;

procedure TFrmPrincipal.HabilitaControles;
begin
  BtnEditar.Enabled := (not CdsUsu.IsEmpty) and (not (CdsUsu.State = dsEdit));
  BtnExibir.Enabled := not (CdsUsu.State = dsEdit);
  BtnExcluir.Enabled:= (not (CdsUsu.State = dsEdit)) and (not CdsUsu.IsEmpty);
  BtnSalvar.Enabled := CdsUsu.State     = dsEdit;
  BtnCancel.Enabled := CdsUsu.State     = dsEdit;
  pnlUsu.Enabled    := CdsUsu.State = dsEdit;
  PnlEnd.Enabled    := CdsUsu.State = dsEdit;
  PnlComp.Enabled   := CdsUsu.State = dsEdit;
end;

procedure TFrmPrincipal.PopulaDataSets(List: TList<IUsuario>);
var I: Integer;
begin
  CdsUsu.EmptyDataSet;
  CdsEnd.EmptyDataSet;
  CdsComp.EmptyDataSet;

  for I := 0 to List.Count - 1 do
  begin
    //Endereço do Usuário
    CdsEnd.Append;
    CdsEndIdEnd.AsInteger     := List.Items[I].Endereco.Id;
    CdsEndRua.AsString        := List.Items[I].Endereco.Rua;
    CdsEndComplemento.AsString:= List.Items[I].Endereco.Complemento;
    CdsEndCidade.AsString     := List.Items[I].Endereco.Cidade;
    CdsEndCep.AsString        := List.Items[I].Endereco.Cep;
    CdsEndLat.AsString        := List.Items[I].Endereco.Lat;
    CdsEndLng.AsString        := List.Items[I].Endereco.Lng;
    CdsEnd.Post;

    //Companhia do Usuário
    CdsComp.Append;
    CdsCompIdComp.AsInteger    := List.Items[I].Companhia.Id;
    CdsCompNome.AsString       := List.Items[I].Companhia.Nome;
    CdsCompCatchPhrase.AsString:= List.Items[I].Companhia.CatchPhrase;
    CdsCompBs.AsString         := List.Items[I].Companhia.Bs;
    CdsComp.Post;

    //Dados do Usuário
    CdsUsu.Append;
    CdsUsuid.AsInteger    := List.Items[I].Id;
    CdsUsuNome.AsString   := List.Items[I].Nome;
    CdsUsuApelido.AsString:= List.Items[I].Apelido;
    CdsUsuEmail.AsString  := List.Items[I].Email;
    CdsUsuFone.AsString   := List.Items[I].Fone;
    CdsUsuWebsite.AsString:= List.Items[I].Website;
    CdsUsuIdEnd.AsInteger := List.Items[I].Endereco.Id;
    CdsUsuIdComp.AsInteger:= List.Items[I].Companhia.Id;
    CdsUsu.Post;
  end;
  CdsUsu.Open;
  CdsComp.Open;
  CdsEnd.Open;
end;

procedure TFrmPrincipal.ValidaConexao;
var FCon: TConexao;
begin
  try
    FCon := TConexao.Instance;
    if not FCon.Connected then
      FCon.Open;
  except
    on E:Exception do
    begin
      ShowMessage('Operação não realizada. Verifique sua conexão.');
      Abort;
    end;
  end;
end;

procedure TFrmPrincipal.ValidaListaUsuario(List: TList<IUsuario>);
begin
  if List.Count = 0 then
  begin
    ShowMessage('Importe dados na aba Integração.');
    Abort;
  end;
end;

end.
