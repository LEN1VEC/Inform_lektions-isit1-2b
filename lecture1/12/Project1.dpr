program Project2;

// 1.2

var a, b, c, result, denominator, rad:real;
begin
writeln('Введите a');
readln(a);
writeln('Введите b');
readln(b);
writeln('Введите c');
readln(c);
denominator:= 1+ln(2+cos(rad)); // Знаменатель в отдельную переменную, пригодится

if denominator <> 0 then
begin
  rad:=c*(2*pi)/360; // Переводим в радианы
  result:=((abs(a)+abs(b))/2*(2+sin(rad)))+((a+b)/(abs(a+b))/denominator);
end
else
begin
  writeln('Знаменатель равен нулю'); // При знаменателе равном нулю
end;
writeln(result); // вывод результата
readln;
end.
