program Project1;

//1.4
var a,b,ra, rb, result,denominator:real;
begin
  writeln('������� a');
  readln(a);
  writeln('������� b');
  readln(b);
  ra:=a*(2*pi)/360; // a � �������
  rb:= b*(2*pi)/360; // b � ������
denominator:=ln((a-b)*exp(a-b)+1);
if denominator <> 0 then
begin
  result:=((a-b)*((sin(ra)/(2+cos(rb))))+((a+b)/(a+abs(b))))/denominator;
end
else
begin
  writeln('���� � �����������');
end;
writeln(result);
readln;
end.



