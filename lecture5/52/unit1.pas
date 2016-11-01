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
    Label1: TLabel;
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
var a,x,y,z,b:Integer;
begin
a:=StrToInt(Edit1.Text);

b:=(a mod 100) div 10;

x:=a div 100;
z:=a mod 10;
y:=(a div 10) mod 10;

if(y = 1) then
    begin
        Label1.Caption:=IntToStr(b) + IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рублей';
    end
else if(z = 1) then
    begin
        Label1.Caption:=IntToStr(b) + IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рубль';
    end
else if(2 <= z) and (z <= 4) then
    begin
        Label1.Caption:=IntToStr(b) + IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рубля';
    end
else
    begin
        Label1.Caption:=IntToStr(b) + IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рублей';
    end
end;

end.

