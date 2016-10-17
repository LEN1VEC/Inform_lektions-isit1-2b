program Project1;

//1.3
var a,b,c,result,denominator:real;
begin
  writeln('Введите a');
  readln(a);
  writeln('Введите b');
  readln(b);
  writeln('Введите c');
  readln(c);
  denominator:=(a-b)*exp(a-b)+c+1;
if denominator <> 0 then
begin
  result:=((a+b)/(abs(a)+abs(b))+(a+a-b)/(1+abs(a)-abs(b)))/denominator;
end
else
begin
  writeln('Ноль в знаменателе');
end;
writeln(result);
readln;
end.



