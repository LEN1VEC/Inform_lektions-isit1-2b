unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var x, y:Integer;
begin
  x:=StrToInt(Edit1.Text);
  y:=StrToInt(Edit2.Text);

  if(y < x + 1) and (y < x * x) then
      begin
          Label2.Caption:='T принадлежит 1 области';
      end
  else if(y < x + 1) and (y > x * x) then
      begin
          Label2.Caption:='Т принадлежит 2 области';
      end
  else if(y > x + 1) and (y < x * x) and (y > 0) then
      begin
          Label2.Caption:='Т принадлежит 3 области';
      end
  else if(y > x + 1) and (y > x * x) then
      begin
          Label2.Caption:='T принадлежит 4 области';
      end
  else if(y > x + 1) and (y < x * x) then
      begin
          Label2.Caption:='Т принадлежит 5 области';
      end
  else
      begin
          Label2.Caption:='T принадлежит границе';
      end
end;

end.

