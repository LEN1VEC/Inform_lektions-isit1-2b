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
var
  m, n, i, s:Integer;
begin
  m:=StrToInt(Edit1.Text);
  n:=StrToInt(Edit2.Text);

  s:= 0;
  i:=m;

  for i := 1 to n do
    begin
      s:= s + i;
    end;
  Label1.Caption:=IntToStr(s);
end;

end.

