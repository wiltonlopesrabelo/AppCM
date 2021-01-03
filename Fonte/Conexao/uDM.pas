unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param,
  FireDAC.Comp.DataSet;

type
  TDm = class(TDataModule)
    FDQryUpd: TFDQuery;
    FDQryAux: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TConexao = class(TFDConnection)
  strict private
    constructor Create(AOwner: TComponent); override;
    class var FInternalInstance: TConexao;
  public
    class function Instance: TConexao;
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TConexao }


constructor TConexao.Create(AOwner: TComponent);
begin
  inherited;
end;

class function TConexao.Instance: TConexao;
begin
  if not Assigned(FInternalInstance) then
    FInternalInstance := TConexao.Create(nil);
  result := FInternalInstance;
end;

end.
