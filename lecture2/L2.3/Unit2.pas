unit Unit2;

interface

procedure mMain(a: Real);

implementation

uses Vcl.Dialogs, System.Math;

procedure mMain(a: Real);
var
    b, c: Real;
begin
    if (a < 1) then
    begin
        b := Power(a, 2);
        c := Sqrt(b);

        if (c = a) then
        begin
            ShowMessage('a >= 0');
        end
        else
        begin
            ShowMessage('a < 0');
        end;

    end
    else
    begin
        ShowMessage('a >= 1');
    end;
end;

end.
