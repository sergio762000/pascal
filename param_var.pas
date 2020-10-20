program param_var;

procedure Powers(x: integer; var quad, cube, fourth, fifth: integer);
begin
    quad := x * x;
    cube := quad * x;
    fourth := cube * x;
    fifth := fourth * x;
end;

var
    p, q, r, t: integer;
begin
    Powers(5, p, q, r, t);
    writeln('p = ', p);
    writeln('q = ', q);
    writeln('r = ', r);
    writeln('t = ', t);
end.