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
    Label3: TLabel;
    Label4: TLabel;
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
var X, A, B:Double;
begin
A:=StrToInt(Edit1.Text);
B:=StrToInt(Edit2.Text);

if(A = 0) then
   begin
      if(B = 0) then
         begin
            Label3.Caption:='Любое число х является решением ур-я';
         end
      else if(B <> 0) then
          begin
            Label3.Caption:='Уравнение не имеет решений';
          end;
   end
else if(A <> 0) then
   begin
      X:= -B / A;
      Label3.Caption:=FloatToStr(X);
   end;
end;

end.

