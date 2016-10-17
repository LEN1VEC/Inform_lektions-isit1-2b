unit Unit2;

interface

procedure mMain(s, t: Real);
function mComputeV(s, t: Real): Real;

implementation

uses System.SysUtils, Vcl.Dialogs;

function mComputeV(s, t: Real): Real;
begin
    Result := s / t;
end;

procedure mMain(s, t: Real);
var
    v: Real;
begin
    if (t > 0) then
    begin
        v := mComputeV(s, t);
        ShowMessage('v: ' + FloatToStr(v));
    end
    else
    begin
        ShowMessage('t is incorrect');
    end;
end;

end.
