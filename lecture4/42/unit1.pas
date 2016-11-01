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
var x, y, y1, y2:real;
begin
  x:=StrToFloat(Edit1.Text);
  y:=StrToFloat(Edit2.Text);

  y1 := -x + 5;
  y2 := exp(ln(2) * x);

  if (y > y1) and (y < y2) then
      begin
          Label1.Caption:='1';
      end
  else if (y > y1) and (y > y2) then
      begin
          Label1.Caption:='2';;
      end
  else if (y < y1) and (y > y2) then
      begin
          Label1.Caption:='3';
      end
  else if (y < y1) and (y < y2) then
      begin
          Label1.Caption:='4';
      end
  else if  (y = y1) then
      begin
          Label1.Caption:='Пересекает y=-x+5';
      end
  else if (y = y2) then
      begin
          Label1.Caption:='Пересекает y=2^x';
      end;
end;

end.

