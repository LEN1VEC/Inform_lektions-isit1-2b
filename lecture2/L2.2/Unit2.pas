unit Unit2;

interface

procedure mMain(a, b, c: Real);
procedure mSearchRoots(a, b, c: Real; var discr, x1, x2: Real);
function mComputeDiscr(a, b, c: Real): Real;
procedure mComputeRoots(a, b, discr: Real; var x1, x2: Real);

implementation

uses System.SysUtils, Vcl.Dialogs, System.Math;

procedure mMain(a, b, c: Real);
var
    discr, x1, x2: Real;
begin
    mSearchRoots(a, b, c, discr, x1, x2);

    if (discr >= 0) then
    begin
        showmessage('Discr.: ' + FloatToStr(discr) + sLineBreak + 'x1: ' +
          FloatToStr(x1) + sLineBreak + 'x2: ' + FloatToStr(x2));
    end
    else
    begin
        showmessage('No roots, discr. < 0');
    end;
end;

procedure mSearchRoots(a, b, c: Real; var discr, x1, x2: Real);
begin
    discr := mComputeDiscr(a, b, c);

    if (discr >= 0) then
    begin
        mComputeRoots(a, b, discr, x1, x2);
    end;
end;

function mComputeDiscr(a, b, c: Real): Real;
begin
    Result := Power(b, 2) - (4 * a * c);
end;

procedure mComputeRoots(a, b, discr: Real; var x1, x2: Real);
begin
    x1 := ((-1 * b - sqrt(discr)) / (2 * a));
    x2 := ((-1 * b + sqrt(discr)) / (2 * a));
end;

end.
