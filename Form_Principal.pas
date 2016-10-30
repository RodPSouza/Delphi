unit Form_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, TrayIcon;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    TrayIcon1: TTrayIcon;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TrayIcon1Click(Sender: TObject);
  private
    { Private declarations }

    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit_Teste;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Registrando a HotKey
    RegisterHotKey(Handle,0, MOD_ALT , VK_NUMPAD0);

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  //Desresgistrando a HotKey
  UnregisterHotKey(Handle,0);

end;

procedure TForm1.WMHotKey(var Msg: TWMHotKey);
begin
  //Teste Simples
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();




End;




procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Hide();
  Self.WindowState := wsMinimized;
  TrayIcon1.Visible := True;
  Action := caNone;
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();

end;

end.
