program Project2;

// 1.2

var a, b, c, result, denominator, rad:real;
begin
writeln('������� a');
readln(a);
writeln('������� b');
readln(b);
writeln('������� c');
readln(c);
denominator:= 1+ln(2+cos(rad)); // ����������� � ��������� ����������, ����������

if denominator <> 0 then
begin
  rad:=c*(2*pi)/360; // ��������� � �������
  result:=((abs(a)+abs(b))/2*(2+sin(rad)))+((a+b)/(abs(a+b))/denominator);
end
else
begin
  writeln('����������� ����� ����'); // ��� ����������� ������ ����
end;
writeln(result); // ����� ����������
readln;
end.
