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
var a, x, y, z, A, B, C:Integer;
S:string;
begin
  a:=StrToInt(Edit1.Text);

  x:= a div 100;
  z:= a mod 10;
  y:= (a div 10) mod 10;

  case x of
  0: begin S:=''; end;
  1: begin S:='сто'; end;
  2: begin S:='двести'; end;
  3: begin S:='триста'; end;
  4: begin S:='четыреста'; end;
  5: begin S:='пятьсот'; end;
  6: begin S:='шестьсот'; end;
  7: begin S:='семьсот'; end;
  8: begin S:='восемьсот'; end;
  9: begin S:='девятьсот'; end;
  end;

  if(y = 1) then
      begin
        case z of
        0: begin S:=S + ' десять'; end;
        1: begin S:=S + ' одиннадцать'; end;
        2: begin S:=S + ' двенадцать'; end;
        3: begin S:=S + ' тринадцать'; end;
        4: begin S:=S + ' четырнадцать'; end;
        5: begin S:=S + ' пятнадцать'; end;
        6: begin S:=S + ' шестнадцать'; end;
        7: begin S:=S + ' семнадцать'; end;
        8: begin S:=S + ' восемнадцать'; end;
        9: begin S:=S + ' девятнадцать'; end;
        end;
        S:= S + ' рублей';
      end
  else
      begin
        case y of
        0: begin S:=S + ''; end;
        1: begin S:=S + ''; end;
        2: begin S:=S + ' двадцать'; end;
        3: begin S:=S + ' тридцать'; end;
        4: begin S:=S + ' сорок'; end;
        5: begin S:=S + ' пятьдесят'; end;
        6: begin S:=S + ' шестьдесят'; end;
        7: begin S:=S + ' семьдесят'; end;
        8: begin S:=S + ' восемьдесят'; end;
        9: begin S:=S + ' девяносто'; end;
        end;

        case z of
        1: begin S:=S + ' один' + ' рубль'; end;
        2: begin S:=S + ' два' + ' рубля'; end;
        3: begin S:=S + ' три' + ' рубля'; end;
        4: begin S:=S + ' четыре' + ' рубля'; end;
        5: begin S:=S + ' пять' + ' рублей'; end;
        6: begin S:=S + ' шесть' + ' рублей'; end;
        7: begin S:=S + ' семь' + ' рублей'; end;
        8: begin S:=S + ' восемь' + ' рублей'; end;
        9: begin S:=S + ' девять' + ' рублей'; end;
        0: begin S:=S + '' + ' рублей'; end;
        end;
      end;
  Label1.Caption:=S;
end;

end.

