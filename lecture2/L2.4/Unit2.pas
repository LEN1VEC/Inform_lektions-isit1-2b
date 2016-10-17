unit Unit2;

interface

procedure mMain(x: Real);
function mCompare(x: Real): Real;

implementation

uses SysUtils, System.Math, Vcl.Dialogs;

procedure mMain(x: Real);
var
    y: Real;
begin
    y := mCompare(x);

    ShowMessage('y = ' + floattostr(y));
end;

function mCompare(x: Real): Real;
begin
    if ((0 < x) and (x <= 2)) then
    begin
        Result := x;
    end
    else if ((5 <= x) and (x < 6)) then
    begin
        Result := Power(x, 2);
    end
    else if ((8 < x) and (x < 10)) then
    begin
        Result := Power(x, 3);
    end
    else
    begin
        Result := 0;
    end;
end;

end.
