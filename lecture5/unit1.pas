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
    Edit3: TEdit;
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
var x, y, z:Integer;
begin
x:=StrToInt(Edit1.Text);
y:=StrToInt(Edit2.Text);
z:=StrToInt(Edit3.Text);

if(y = 1) then
    begin
        Label2.Caption:=IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рублей';
    end
else if(z = 1) then
    begin
        Label2.Caption:=IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рубль';
    end
else if(2 <= z) and (z <= 4) then
    begin
        Label2.Caption:=IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рубля';
    end
else
    begin
        Label2.Caption:=IntToStr(x) + IntToStr(y) + IntToStr(z) + ' рублей';
    end
end;

end.
