unit Form_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }

    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

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
  Form2.Show;

End;

end.
