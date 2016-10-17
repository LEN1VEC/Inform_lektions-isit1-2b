program Project1;

//1.5

var a,b, angle, s,rad:real;

begin
writeln('¬ведите a');
readln(a);
writeln('¬ведите b');
readln(b);
writeln('¬ведите угол');
readln(angle);
rad:=angle*(2*pi)/360;
s:=a*b*sin(rad);
writeln(s);
readln;
end.
