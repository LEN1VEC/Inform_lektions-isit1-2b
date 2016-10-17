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
var A, B, X, P:Double;
begin
A:=StrToFloat(Edit1.Text);
B:=StrToFloat(Edit2.Text);

if(A > 0) then
    begin
       P:=-B/A;
       Label2.Caption:='x > ' + FloatToStr(P);
    end
else if(A < 0) then
    begin
       P:=-B/A;
       Label2.Caption:='x < ' + FloatToStr(P);
    end
else if(A = 0) then
    begin
       if(B > 0) then
           begin
              Label2.Caption:='Решением н-ва является любое число';
           end
       else if(B < 0) then
           begin
              Label2.Caption:='Неравенсто не имеет решений';
           end
       else if(B = 0) then
           begin
              Label2.Caption:='Неравенсто не имеет решений';
           end
    end
end;

end.

